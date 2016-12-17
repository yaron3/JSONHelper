//
//  Copyright © 2016 Baris Sencan. All rights reserved.
//

import Foundation
import XCTest
import JSONHelper

class DoubleTests: XCTestCase {
  let testInt = 1
  let testFloat = Float(1.2)
  let testDouble = Double(1.2)
  let testNSNumber = NSNumber(value: 1.2 as Double)
  let testNSDecimalNumber = NSDecimalNumber(value: 1.2 as Double)
  let testString = "1.2"

  var value = 0.0

  override func setUp() {
    value = 0.0
  }

  func testIntConversion() {
    value <-- (testInt as Any)
    XCTAssert(Int(value) == testInt)
  }

  func testFloatConversion() {
    value <-- (testFloat as Any)
    XCTAssertEqualWithAccuracy(value, testDouble, accuracy: Double(FLT_EPSILON))
  }

  func testDoubleConversion() {
    value <-- (testDouble as Any)
    XCTAssertEqual(value, testDouble)
  }

  func testNSNumberConversion() {
    value <-- (testNSNumber as Any)
    XCTAssertEqual(value, testDouble)
  }

  func testNSDecimalNumberConversion() {
    value <-- (testNSDecimalNumber as Any)
    XCTAssertEqual(value, testDouble)
  }

  func testStringConversion() {
    value <-- (testString as Any)
    XCTAssertEqual(value, testDouble)
  }
}
