@interface DMCTestWebViewController
- (DMCCloudConfigWebAuthDelegate)delegate;
- (id)_getEncodedMachineInfo;
- (void)_evaluateAuthenticationChallenge:(id)challenge withCompletionHandler:(id)handler;
- (void)_showFailureAlertWithTitle:(id)title andMessage:(id)message;
- (void)cancelButtonTapped;
- (void)download:(id)download decideDestinationUsingResponse:(id)response suggestedFilename:(id)filename completionHandler:(id)handler;
- (void)download:(id)download didFailWithError:(id)error resumeData:(id)data;
- (void)download:(id)download didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)downloadDidFinish:(id)finish;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webView:(id)view navigationResponse:(id)response didBecomeDownload:(id)download;
@end

@implementation DMCTestWebViewController

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = DMCTestWebViewController;
  [(DMCTestWebViewController *)&v20 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped];
  navigationItem = [(DMCTestWebViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_2859FB650 table:@"Localizable"];
  [(DMCTestWebViewController *)self setTitle:v6];

  v7 = objc_opt_new();
  nonPersistentDataStore = [MEMORY[0x277CE3868] nonPersistentDataStore];
  [v7 setWebsiteDataStore:nonPersistentDataStore];

  preferences = [v7 preferences];
  [preferences _setDiagnosticLoggingEnabled:1];

  v10 = objc_alloc(MEMORY[0x277CE3850]);
  v11 = [v10 initWithFrame:v7 configuration:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(DMCTestWebViewController *)self setView:v11];
  [(DMCTestWebViewController *)self setWebView:v11];
  webView = [(DMCTestWebViewController *)self webView];
  [webView setUIDelegate:self];

  webView2 = [(DMCTestWebViewController *)self webView];
  [webView2 setNavigationDelegate:self];

  v14 = objc_alloc(MEMORY[0x277CCAB70]);
  webURL = [(DMCTestWebViewController *)self webURL];
  v16 = [v14 initWithURL:webURL];

  _getEncodedMachineInfo = [(DMCTestWebViewController *)self _getEncodedMachineInfo];
  [v16 setValue:_getEncodedMachineInfo forHTTPHeaderField:@"x-apple-aspen-deviceinfo"];

  webView3 = [(DMCTestWebViewController *)self webView];
  v19 = [webView3 loadRequest:v16];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277D7B820]])
  {

LABEL_6:
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"REMOTE_MANAGEMENT_FAILED_TO_LOAD_PAGE" value:&stru_2859FB650 table:@"Localizable"];

    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:*MEMORY[0x277CCA738]])
    {
      code = [errorCopy code];

      if (code == -1003)
      {
        userInfo = [errorCopy userInfo];
        v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA748]];

        host = [v15 host];
        v17 = MEMORY[0x277CCACA8];
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v19 = [mainBundle2 localizedStringForKey:@"REMOTE_MANAGEMENT_UNABLE_TO_RESOLVE_HOST" value:&stru_2859FB650 table:@"Localizable"];
        v20 = [v17 localizedStringWithFormat:v19, host];

        [(DMCTestWebViewController *)self _showFailureAlertWithTitle:v11 andMessage:v20];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v15 = [errorCopy description];
    [(DMCTestWebViewController *)self _showFailureAlertWithTitle:v11 andMessage:v15];
    goto LABEL_11;
  }

  code2 = [errorCopy code];

  if (code2 != 102)
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

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  handlerCopy = handler;
  response = [response response];
  mIMEType = [response MIMEType];
  v10 = [mIMEType isEqualToString:@"application/x-apple-aspen-config"];

  if (v10)
  {
    webURL = [(DMCTestWebViewController *)self webURL];
    host = [webURL host];

    v13 = [response URL];
    host2 = [v13 host];

    if ([host caseInsensitiveCompare:host2])
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v15, OS_LOG_TYPE_ERROR, "domain of download does not match domain of initial URL from cloud config!", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      handlerCopy[2](handlerCopy, 2);
    }
  }

  else if ([response statusCode] == 403 && (objc_msgSend(response, "MIMEType"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277D03338]), v16, v17))
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_impl(&dword_247E7D000, v18, OS_LOG_TYPE_ERROR, "received 403 response from website!", v23, 2u);
    }

    [(DMCTestWebViewController *)self setWillDownloadError:1];
    handlerCopy[2](handlerCopy, 2);
  }

  else if ([response statusCode] == 404)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&dword_247E7D000, v19, OS_LOG_TYPE_ERROR, "received 404 response from website!", v22, 2u);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
    v20 = *DMCLogObjects();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_247E7D000, v20, OS_LOG_TYPE_ERROR, "did not receive download response!", v21, 2u);
    }
  }
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_DEFAULT, "webview didReceiveAuthenticationChallenge", v10, 2u);
  }

  [(DMCTestWebViewController *)self _evaluateAuthenticationChallenge:challengeCopy withCompletionHandler:handlerCopy];
}

- (void)webView:(id)view navigationResponse:(id)response didBecomeDownload:(id)download
{
  downloadCopy = download;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "webview navigationResponse didBecomeDownload", v8, 2u);
  }

  [downloadCopy setDelegate:self];
}

- (void)download:(id)download decideDestinationUsingResponse:(id)response suggestedFilename:(id)filename completionHandler:(id)handler
{
  handlerCopy = handler;
  filenameCopy = filename;
  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v10, OS_LOG_TYPE_DEFAULT, "wkdownload decideDestinationUsingResponse", buf, 2u);
  }

  filenameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/tmp/%@", filenameCopy];

  [(DMCTestWebViewController *)self setDownloadDestination:filenameCopy];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:filenameCopy];
  handlerCopy[2](handlerCopy, v12);
}

- (void)download:(id)download didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_DEFAULT, "wkdownload didReceiveAuthenticationChallenge", v10, 2u);
  }

  [(DMCTestWebViewController *)self _evaluateAuthenticationChallenge:challengeCopy withCompletionHandler:handlerCopy];
}

- (void)downloadDidFinish:(id)finish
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_DEFAULT, "wkdownload downloadDidFinish", buf, 2u);
  }

  webView = [(DMCTestWebViewController *)self webView];
  [webView stopLoading];

  v6 = MEMORY[0x277CBEA90];
  downloadDestination = [(DMCTestWebViewController *)self downloadDestination];
  v8 = [v6 dataWithContentsOfFile:downloadDestination];
  [(DMCTestWebViewController *)self setDownloadedResponseData:v8];

  LODWORD(downloadDestination) = [(DMCTestWebViewController *)self willDownloadError];
  v9 = *DMCLogObjects();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (downloadDestination)
  {
    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = v9;
      downloadedResponseData = [(DMCTestWebViewController *)self downloadedResponseData];
      v14 = [v11 stringWithFormat:@"%lu", objc_msgSend(downloadedResponseData, "length")];
      *buf = 138543362;
      v30 = v14;
      _os_log_impl(&dword_247E7D000, v12, OS_LOG_TYPE_DEFAULT, "we downloaded an error with data length of %{public}@!", buf, 0xCu);
    }

    v15 = MEMORY[0x277D03508];
    downloadedResponseData2 = [(DMCTestWebViewController *)self downloadedResponseData];
    delegate2 = [v15 jsonDictFromResponse:downloadedResponseData2];

    v28 = 0;
    v18 = [MEMORY[0x277D03508] parsePredefined403ErrorWithResponseDictionary:delegate2 outError:&v28];
    downloadedResponseData4 = v28;
    if (v18)
    {
      v20 = *DMCLogObjects();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = downloadedResponseData4;
        _os_log_impl(&dword_247E7D000, v20, OS_LOG_TYPE_DEFAULT, "WebAuthView received 403 error %{public}@!", buf, 0xCu);
      }
    }

    delegate = [(DMCTestWebViewController *)self delegate];
    [delegate webAuthCanceled:downloadedResponseData4];
  }

  else
  {
    if (v10)
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = v9;
      downloadedResponseData3 = [(DMCTestWebViewController *)self downloadedResponseData];
      v25 = [v22 stringWithFormat:@"%lu", objc_msgSend(downloadedResponseData3, "length")];
      *buf = 138543362;
      v30 = v25;
      _os_log_impl(&dword_247E7D000, v23, OS_LOG_TYPE_DEFAULT, "we downloaded a profile with data length of %{public}@!", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    downloadDestination2 = [(DMCTestWebViewController *)self downloadDestination];
    [defaultManager removeItemAtPath:downloadDestination2 error:0];

    delegate2 = [(DMCTestWebViewController *)self delegate];
    downloadedResponseData4 = [(DMCTestWebViewController *)self downloadedResponseData];
    [delegate2 receivedProfile:downloadedResponseData4];
  }
}

- (void)download:(id)download didFailWithError:(id)error resumeData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = errorCopy;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_DEFAULT, "download failed with error from WKDownload!: %{public}@", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BYCloudConfigRetrieveProfileFromWebErrorDomain" code:-2 userInfo:0];
  delegate = [(DMCTestWebViewController *)self delegate];
  [delegate webAuthCanceled:v8];
}

- (id)_getEncodedMachineInfo
{
  machineInfo = [(DMCTestWebViewController *)self machineInfo];
  v3 = [machineInfo base64EncodedStringWithOptions:0];

  return v3;
}

- (void)cancelButtonTapped
{
  delegate = [(DMCTestWebViewController *)self delegate];

  if (delegate)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BYCloudConfigRetrieveProfileFromWebErrorDomain" code:-1 userInfo:0];
    delegate2 = [(DMCTestWebViewController *)self delegate];
    [delegate2 webAuthCanceled:v6];
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

- (void)_showFailureAlertWithTitle:(id)title andMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  messageCopy = message;
  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = titleCopy;
    v17 = 2112;
    v18 = messageCopy;
    _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_DEFAULT, "Showing failure alert title: %@, message: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
  v10 = MEMORY[0x277D750F8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"OK" value:&stru_2859FB650 table:@"Localizable"];
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

- (void)_evaluateAuthenticationChallenge:(id)challenge withCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v10 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

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
    if (handlerCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  host = [protectionSpace2 host];
  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    anchorCerts = self->_anchorCerts;
    v15 = v13;
    *buf = 138412546;
    v34 = host;
    v35 = 2048;
    v36 = [(NSArray *)anchorCerts count];
    _os_log_impl(&dword_247E7D000, v15, OS_LOG_TYPE_DEFAULT, "Evaluating trust for %@ using %lu anchor certs", buf, 0x16u);
  }

  if (self->_anchorCerts)
  {
    protectionSpace3 = [challengeCopy protectionSpace];
    v17 = SecTrustSetAnchorCertificates([protectionSpace3 serverTrust], self->_anchorCerts);

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
  protectionSpace4 = [challengeCopy protectionSpace];
  v20 = SecTrustEvaluateWithError([protectionSpace4 serverTrust], &error);

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
  protectionSpace5 = [challengeCopy protectionSpace];
  TrustResult = SecTrustGetTrustResult([protectionSpace5 serverTrust], &result);

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
  protectionSpace6 = [challengeCopy protectionSpace];
  v25 = [v28 credentialForTrust:{objc_msgSend(protectionSpace6, "serverTrust")}];

  v30 = *DMCLogObjects();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v30, OS_LOG_TYPE_DEFAULT, "Accepting server trust!", buf, 2u);
  }

  v26 = 0;
LABEL_21:

  if (handlerCopy)
  {
LABEL_22:
    handlerCopy[2](handlerCopy, v26, v25);
  }

LABEL_23:
}

- (DMCCloudConfigWebAuthDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end