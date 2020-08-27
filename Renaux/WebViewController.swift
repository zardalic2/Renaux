//
//  WebViewController.swift
//  Renaux
//
//  Created by Zardalic Consults on 27/08/2020.
//  Copyright © 2020 Zardalic Consults. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate  {
    
    

    @IBOutlet var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://renauxinvestments.com")
        let myRequest = URLRequest(url: url!)
        webview.load(myRequest)
    }
    
    override func loadView() {
        let webConfigration = WKWebViewConfiguration ()
        webview = WKWebView(frame: .zero, configuration: webConfigration)
        webview.uiDelegate = self
        view = webview
    }
    
  

    @IBAction func doneButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
