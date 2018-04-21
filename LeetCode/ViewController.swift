//
//  ViewController.swift
//  LeetCode
//
//  Created by Utsha Guha on 20-4-18.
//  Copyright © 2018 Utsha Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var result:String = ""
    var result1:String = ""
    var resultArray:[String] = []
    var tmpValue:Int = 1
    var tmpString:String = ""
    var i = 0
    var j = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var str:String = ""
        str = self.intToRoman(1994)
        print(str)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func intToRoman(_ num: Int) -> String {
        self.intToRomanLogic(num: num)
        return result1
    }
    
    func intToRomanLogic(num:Int) {
        switch num {
        case 900...999:
            tmpValue = 900
            tmpString = "CM"
        //case 500...1000:
        case 500...899:
            tmpValue = 500
            tmpString = "D"
        case 400...499:
            tmpValue = 400
            tmpString = "CD"
        case 100...399:
            tmpValue = 100
            tmpString = "C"
        case 90...99:
            tmpValue = 90
            tmpString = "XC"
        case 50...89:
            tmpValue = 50
            tmpString = "L"
        case 40...49:
            tmpValue = 40
            tmpString = "XL"
        case 10...39:
            tmpValue = 10
            tmpString = "X"
        case 9:
            tmpValue = num
            tmpString = "IX"
        case 5...8:
            tmpValue = 5
            tmpString = "V"
        case 4:
            tmpValue = num
            tmpString = "IV"
        case 1...3:
            tmpValue = 1
            tmpString = "I"
        default:
            tmpValue = 1000
            tmpString = "M"
        }
        
        i = num/tmpValue
        j = num%tmpValue
        
        result = String(repeating: tmpString, count: i)
        resultArray.append(result)
        if tmpString != "I" && j>0 {
            intToRomanLogic(num: j)
        }
        result1 = resultArray.joined(separator: "")
    }
}

