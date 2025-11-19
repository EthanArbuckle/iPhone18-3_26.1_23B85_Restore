@interface DMCTestWebViewController
- (DMCCloudConfigWebAuthDelegate)delegate;
- (id)_getEncodedMachineInfo;
- (void)_evaluateAuthenticationChallenge:(id)a3 withCompletionHandler:(id)a4;
- (void)_showFailureAlertWithTitle:(id)a3 andMessage:(id)a4;
- (void)cancelButtonTapped;
- (void)download:(id)a3 decideDestinationUsingResponse:(id)a4 suggestedFilename:(id)a5 completionHandler:(id)a6;
- (void)download:(id)a3 didFailWithError:(id)a4 resumeData:(id)a5;
- (void)download:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)downloadDidFinish:(id)a3;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webView:(id)a3 navigationResponse:(id)a4 didBecomeDownload:(id)a5;
@end

@implementation DMCTestWebViewController

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = DMCTestWebViewController;
  [(DMCTestWebViewController *)&v20 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped];
  v4 = [(DMCTestWebViewController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_2859FB650 table:@"Localizable"];
  [(DMCTestWebViewController *)self setTitle:v6];

  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CE3868] nonPersistentDataStore];
  [v7 setWebsiteDataStore:v8];

  v9 = [v7 preferences];
  [v9 _setDiagnosticLoggingEnabled:1];

  v10 = objc_alloc(MEMORY[0x277CE3850]);
  v11 = [v10 initWithFrame:v7 configuration:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(DMCTestWebViewController *)self setView:v11];
  [(DMCTestWebViewController *)self setWebView:v11];
  v12 = [(DMCTestWebViewController *)self webView];
  [v12 setUIDelegate:self];

  v13 = [(DMCTestWebViewController *)self webView];
  [v13 setNavigationDelegate:self];

  v14 = objc_alloc(MEMORY[0x277CCAB70]);
  v15 = [(DMCTestWebViewController *)self webURL];
  v16 = [v14 initWithURL:v15];

  v17 = [(DMCTestWebViewController *)self _getEncodedMachineInfo];
  [v16 setValue:v17 forHTTPHeaderField:@"x-apple-aspen-deviceinfo"];

  v18 = [(DMCTestWebViewController *)self webView];
  v19 = [v18 loadRequest:v16];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = [v6 domain];
  if (![v7 isEqualToString:*MEMORY[0x277D7B820]])
  {

LABEL_6:
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"REMOTE_MANAGEMENT_FAILED_TO_LOAD_PAGE" value:&stru_2859FB650 table:@"Localizable"];

    v12 = [v6 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v13 = [v6 code];

      if (v13 == -1003)
      {
        v14 = [v6 userInfo];
        v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA748]];

        v16 = [v15 host];
        v17 = MEMORY[0x277CCACA8];
        v18 = [MEMORY[0x277CCA8D8] mainBundle];
        v19 = [v18 localizedStringForKey:@"REMOTE_MANAGEMENT_UNABLE_TO_RESOLVE_HOST" value:&stru_2859FB650 table:@"Localizable"];
        v20 = [v17 localizedStringWithFormat:v19, v16];

        [(DMCTestWebViewController *)self _showFailureAlertWithTitle:v11 andMessage:v20];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v15 = [v6 description];
    [(DMCTestWebViewController *)self _showFailureAlertWithTitle:v11 andMessage:v15];
    goto LABEL_11;
  }

  v8 = [v6 code];

  if (v8 != 102)
  {
    goto LABEL_6;
  }

  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_DEFAULT, "Suppressing web navigation error caused by policy change", buf, 2u);
  }

LABEL_12:
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v7 = a5;
  v8 = [a4 response];
  v9 = [v8 MIMEType];
  v10 = [v9 isEqualToString:@"application/x-apple-aspen-config"];

  if (v10)
  {
    v11 = [(DMCTestWebViewController *)self webURL];
    v12 = [v11 host];

    v13 = [v8 URL];
    v14 = [v13 host];

    if ([v12 caseInsensitiveCompare:v14])
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v15, OS_LOG_TYPE_ERROR, "domain of download does not match domain of initial URL from cloud config!", buf, 2u);
      }

      v7[2](v7, 0);
    }

    else
    {
      v7[2](v7, 2);
    }
  }

  else if ([v8 statusCode] == 403 && (objc_msgSend(v8, "MIMEType"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277D03338]), v16, v17))
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_impl(&dword_247E7D000, v18, OS_LOG_TYPE_ERROR, "received 403 response from website!", v23, 2u);
    }

    [(DMCTestWebViewController *)self setWillDownloadError:1];
    v7[2](v7, 2);
  }

  else if ([v8 statusCode] == 404)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&dword_247E7D000, v19, OS_LOG_TYPE_ERROR, "received 404 response from website!", v22, 2u);
    }

    v7[2](v7, 0);
  }

  else
  {
    v7[2](v7, 1);
    v20 = *DMCLogObjects();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_247E7D000, v20, OS_LOG_TYPE_ERROR, "did not receive download response!", v21, 2u);
    }
  }
}

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_DEFAULT, "webview didReceiveAuthenticationChallenge", v10, 2u);
  }

  [(DMCTestWebViewController *)self _evaluateAuthenticationChallenge:v8 withCompletionHandler:v7];
}

- (void)webView:(id)a3 navigationResponse:(id)a4 didBecomeDownload:(id)a5
{
  v6 = a5;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "webview navigationResponse didBecomeDownload", v8, 2u);
  }

  [v6 setDelegate:self];
}

- (void)download:(id)a3 decideDestinationUsingResponse:(id)a4 suggestedFilename:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v10, OS_LOG_TYPE_DEFAULT, "wkdownload decideDestinationUsingResponse", buf, 2u);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"/tmp/%@", v9];

  [(DMCTestWebViewController *)self setDownloadDestination:v11];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  v8[2](v8, v12);
}

- (void)download:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_DEFAULT, "wkdownload didReceiveAuthenticationChallenge", v10, 2u);
  }

  [(DMCTestWebViewController *)self _evaluateAuthenticationChallenge:v8 withCompletionHandler:v7];
}

- (void)downloadDidFinish:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_DEFAULT, "wkdownload downloadDidFinish", buf, 2u);
  }

  v5 = [(DMCTestWebViewController *)self webView];
  [v5 stopLoading];

  v6 = MEMORY[0x277CBEA90];
  v7 = [(DMCTestWebViewController *)self downloadDestination];
  v8 = [v6 dataWithContentsOfFile:v7];
  [(DMCTestWebViewController *)self setDownloadedResponseData:v8];

  LODWORD(v7) = [(DMCTestWebViewController *)self willDownloadError];
  v9 = *DMCLogObjects();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = v9;
      v13 = [(DMCTestWebViewController *)self downloadedResponseData];
      v14 = [v11 stringWithFormat:@"%lu", objc_msgSend(v13, "length")];
      *buf = 138543362;
      v30 = v14;
      _os_log_impl(&dword_247E7D000, v12, OS_LOG_TYPE_DEFAULT, "we downloaded an error with data length of %{public}@!", buf, 0xCu);
    }

    v15 = MEMORY[0x277D03508];
    v16 = [(DMCTestWebViewController *)self downloadedResponseData];
    v17 = [v15 jsonDictFromResponse:v16];

    v28 = 0;
    v18 = [MEMORY[0x277D03508] parsePredefined403ErrorWithResponseDictionary:v17 outError:&v28];
    v19 = v28;
    if (v18)
    {
      v20 = *DMCLogObjects();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = v19;
        _os_log_impl(&dword_247E7D000, v20, OS_LOG_TYPE_DEFAULT, "WebAuthView received 403 error %{public}@!", buf, 0xCu);
      }
    }

    v21 = [(DMCTestWebViewController *)self delegate];
    [v21 webAuthCanceled:v19];
  }

  else
  {
    if (v10)
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = v9;
      v24 = [(DMCTestWebViewController *)self downloadedResponseData];
      v25 = [v22 stringWithFormat:@"%lu", objc_msgSend(v24, "length")];
      *buf = 138543362;
      v30 = v25;
      _os_log_impl(&dword_247E7D000, v23, OS_LOG_TYPE_DEFAULT, "we downloaded a profile with data length of %{public}@!", buf, 0xCu);
    }

    v26 = [MEMORY[0x277CCAA00] defaultManager];
    v27 = [(DMCTestWebViewController *)self downloadDestination];
    [v26 removeItemAtPath:v27 error:0];

    v17 = [(DMCTestWebViewController *)self delegate];
    v19 = [(DMCTestWebViewController *)self downloadedResponseData];
    [v17 receivedProfile:v19];
  }
}

- (void)download:(id)a3 didFailWithError:(id)a4 resumeData:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "download failed with error from WKDownload!: %{public}@", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BYCloudConfigRetrieveProfileFromWebErrorDomain" code:-2 userInfo:0];
  v9 = [(DMCTestWebViewController *)self delegate];
  [v9 webAuthCanceled:v8];
}

- (id)_getEncodedMachineInfo
{
  v2 = [(DMCTestWebViewController *)self machineInfo];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

- (void)cancelButtonTapped
{
  v3 = [(DMCTestWebViewController *)self delegate];

  if (v3)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BYCloudConfigRetrieveProfileFromWebErrorDomain" code:-1 userInfo:0];
    v4 = [(DMCTestWebViewController *)self delegate];
    [v4 webAuthCanceled:v6];
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v5, OS_LOG_TYPE_ERROR, "no delegate defined for buddy web auth!", buf, 2u);
    }
  }
}

- (void)_showFailureAlertWithTitle:(id)a3 andMessage:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_DEFAULT, "Showing failure alert title: %@, message: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_2859FB650 table:@"Localizable"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__DMCTestWebViewController__showFailureAlertWithTitle_andMessage___block_invoke;
  v14[3] = &unk_278EE8200;
  v14[4] = self;
  v13 = [v10 actionWithTitle:v12 style:1 handler:v14];
  [v9 addAction:v13];

  [(UIViewController *)self dmc_presentAlert:v9 completion:0];
}

void __66__DMCTestWebViewController__showFailureAlertWithTitle_andMessage___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BYCloudConfigRetrieveProfileFromWebErrorDomain" code:-5 userInfo:0];
  v2 = [*(a1 + 32) delegate];
  [v2 webAuthCanceled:v3];
}

- (void)_evaluateAuthenticationChallenge:(id)a3 withCompletionHandler:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 protectionSpace];
  v9 = [v8 authenticationMethod];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCA720]];

  if (!v10)
  {
    v24 = *DMCLogObjects();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v24, OS_LOG_TYPE_ERROR, "Received an Authentication method other than Server Trust!!", buf, 2u);
    }

    v25 = 0;
    v26 = 3;
    if (v7)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v11 = [v6 protectionSpace];
  v12 = [v11 host];
  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    anchorCerts = self->_anchorCerts;
    v15 = v13;
    *buf = 138412546;
    v34 = v12;
    v35 = 2048;
    v36 = [(NSArray *)anchorCerts count];
    _os_log_impl(&dword_247E7D000, v15, OS_LOG_TYPE_DEFAULT, "Evaluating trust for %@ using %lu anchor certs", buf, 0x16u);
  }

  if (self->_anchorCerts)
  {
    v16 = [v6 protectionSpace];
    v17 = SecTrustSetAnchorCertificates([v16 serverTrust], self->_anchorCerts);

    if (v17)
    {
      v18 = *DMCLogObjects();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v34) = v17;
        _os_log_impl(&dword_247E7D000, v18, OS_LOG_TYPE_ERROR, "Failed to set Anchor Certs on trust! With secError code: %d", buf, 8u);
      }
    }
  }

  error = 0;
  v19 = [v6 protectionSpace];
  v20 = SecTrustEvaluateWithError([v19 serverTrust], &error);

  if (!v20)
  {
    v27 = *DMCLogObjects();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = error;
      _os_log_impl(&dword_247E7D000, v27, OS_LOG_TYPE_ERROR, "Could not evaluate trust! Error: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      CFRelease(error);
    }

    goto LABEL_20;
  }

  result = kSecTrustResultInvalid;
  v21 = [v6 protectionSpace];
  TrustResult = SecTrustGetTrustResult([v21 serverTrust], &result);

  if (TrustResult || result != kSecTrustResultUnspecified && result != kSecTrustResultProceed)
  {
    v23 = *DMCLogObjects();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v34) = TrustResult;
      _os_log_impl(&dword_247E7D000, v23, OS_LOG_TYPE_ERROR, "Could not get trust result! Error Code:  %d", buf, 8u);
    }

LABEL_20:
    v25 = 0;
    v26 = 3;
    goto LABEL_21;
  }

  v28 = MEMORY[0x277CCACF0];
  v29 = [v6 protectionSpace];
  v25 = [v28 credentialForTrust:{objc_msgSend(v29, "serverTrust")}];

  v30 = *DMCLogObjects();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v30, OS_LOG_TYPE_DEFAULT, "Accepting server trust!", buf, 2u);
  }

  v26 = 0;
LABEL_21:

  if (v7)
  {
LABEL_22:
    v7[2](v7, v26, v25);
  }

LABEL_23:
}

- (DMCCloudConfigWebAuthDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end