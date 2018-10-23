//
//  ViewController.swift
//  Jensen Algorithm
//
//  Created by Judkins, Jensen on 10/23/18.
//  Copyright © 2018 Judkins, Jensen. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
    //Mark: Data memnbers
    @IBOutlet weak var algorithmText: UILabel!
    
    private func formatAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        //mark: algorithm definitions
        let algorithm : String = "How to do some swift"
        
        let stepOne : String = "First you do the hokey pokey"
        let stepTwo : String = "this is sme more txt"
        let stepThree : String = "pretty neet stuff"
        //finish adding all steps
        let algorythm = [stepOne, stepTwo, stepThree]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet : String = "👻"
            
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
            
            
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

    
    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }

    
    private func createOutletStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

    
    public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
}

