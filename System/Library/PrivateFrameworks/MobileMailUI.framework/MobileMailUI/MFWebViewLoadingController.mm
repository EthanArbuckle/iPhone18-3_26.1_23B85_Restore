@interface MFWebViewLoadingController
- (MFMailWebProcessDelegate)webProcessDelegate;
- (MFWebViewLoadingController)init;
- (void)_doIssueLoadRequest;
- (void)_reconveneWebProcessBundle;
- (void)_registerWebProcessDelegate:(id)a3;
- (void)_unregisterWebProcessDelegate:(id)a3;
- (void)dealloc;
- (void)reload;
- (void)remoteContentURLSession:(id)a3 failedToProxyURL:(id)a4 failureReason:(int64_t)a5;
- (void)requestWebViewLoadWithContentRepresentation:(id)a3;
- (void)requestWebViewLoadWithError:(id)a3;
- (void)requestWebViewLoadWithoutShowingMessageWithRepresentation:(id)a3;
- (void)setContentRepresentation:(id)a3;
- (void)setLoadingURL:(id)a3;
- (void)setWebProcessDelegate:(id)a3;
- (void)slapWebView;
- (void)stopLoading;
@end

@implementation MFWebViewLoadingController

- (MFWebViewLoadingController)init
{
  v18.receiver = self;
  v18.super_class = MFWebViewLoadingController;
  v2 = [(MFWebViewLoadingController *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_webProcessPluginNeedsUpdate = 1;
    v4 = +[MFWKWebViewFactory sharedWebViewFactory];
    v5 = [v4 webView];
    webView = v3->_webView;
    v3->_webView = v5;

    v7 = objc_alloc_init(MFWebViewDictionary);
    webViewConstants = v3->_webViewConstants;
    v3->_webViewConstants = v7;

    v9 = [MEMORY[0x277CCAC68] ec_attributionExpression];
    v10 = [v9 pattern];
    [(MFWebViewDictionary *)v3->_webViewConstants setObject:v10 forKeyedSubscript:@"outdentedAttributionsPattern"];

    v11 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2826FEA60];
    remoteObjectInterface = v3->_remoteObjectInterface;
    v3->_remoteObjectInterface = v11;

    v13 = v3->_remoteObjectInterface;
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    [(_WKRemoteObjectInterface *)v13 setClasses:v16 forSelector:sel_webProcessDidFinishDocumentLoadForURL_andRequestedRemoteURLs_ argumentIndex:1 ofReply:0];

    [(MFWebViewLoadingController *)v3 _reconveneWebProcessBundle];
  }

  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_webProcessDelegate);
  [(MFWebViewLoadingController *)self _unregisterWebProcessDelegate:WeakRetained];

  v4.receiver = self;
  v4.super_class = MFWebViewLoadingController;
  [(MFWebViewLoadingController *)&v4 dealloc];
}

- (void)_unregisterWebProcessDelegate:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = [(MFWebViewLoadingController *)self webView];
    v5 = [v4 _remoteObjectRegistry];
    v6 = [MEMORY[0x277D28278] weakProxyForObject:v10];
    v7 = [(MFWebViewLoadingController *)self remoteObjectInterface];
    [v5 unregisterExportedObject:v6 interface:v7];

    v8 = +[MFWKWebViewFactory sharedWebViewFactory];
    v9 = [v8 urlSession];

    [v9 unregisterObserver:self];
  }
}

- (void)_registerWebProcessDelegate:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = [(MFWebViewLoadingController *)self webView];
    v5 = [v4 _remoteObjectRegistry];
    v6 = [MEMORY[0x277D28278] weakProxyForObject:v10];
    v7 = [(MFWebViewLoadingController *)self remoteObjectInterface];
    [v5 registerExportedObject:v6 interface:v7];

    v8 = +[MFWKWebViewFactory sharedWebViewFactory];
    v9 = [v8 urlSession];

    [v9 registerObserver:self];
  }
}

- (void)setWebProcessDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webProcessDelegate);
  if (WeakRetained != obj)
  {
    [(MFWebViewLoadingController *)self _unregisterWebProcessDelegate:WeakRetained];
    objc_storeWeak(&self->_webProcessDelegate, obj);
    [(MFWebViewLoadingController *)self _registerWebProcessDelegate:obj];
  }
}

- (void)setLoadingURL:(id)a3
{
  v4 = a3;
  contentRepresentation = self->_contentRepresentation;
  self->_contentRepresentation = 0;

  error = self->_error;
  self->_error = 0;

  loadingURL = self->_loadingURL;
  self->_loadingURL = v4;
}

- (void)setContentRepresentation:(id)a3
{
  v4 = a3;
  loadingURL = self->_loadingURL;
  self->_loadingURL = 0;

  error = self->_error;
  self->_error = 0;

  contentRepresentation = self->_contentRepresentation;
  self->_contentRepresentation = v4;
}

- (void)slapWebView
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(MFWebViewLoadingController *)self webView];
    v12 = 138543874;
    v13 = v10;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v11;
    _os_log_error_impl(&dword_2149C9000, v3, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: Killing and resetting webview: %@", &v12, 0x20u);
  }

  v4 = [(MFWebViewLoadingController *)self webView];
  [v4 _killWebContentProcessAndResetState];

  v5 = [(MFWebViewLoadingController *)self contentRepresentation];
  if (v5)
  {
  }

  else
  {
    v6 = [(MFWebViewLoadingController *)self loadingURL];
    v7 = v6 == 0;

    if (v7)
    {
      [(MFWebViewLoadingController *)self reload];
      goto LABEL_7;
    }
  }

  [(MFWebViewLoadingController *)self _doIssueLoadRequest];
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)reload
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(MFWebViewLoadingController *)self webView];
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v9;
    _os_log_debug_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@: %p>: Sending request to reload webview: %@", &v10, 0x20u);
  }

  v4 = [(MFWebViewLoadingController *)self webView];
  v5 = [v4 reload];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopLoading
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(MFWebViewLoadingController *)self webView];
    v9 = 138543874;
    v10 = v7;
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@: %p>: Sending request to stop loading webview: %@", &v9, 0x20u);
  }

  v4 = [(MFWebViewLoadingController *)self webView];
  [v4 stopLoading];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_doIssueLoadRequest
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(MFWebViewLoadingController *)self contentRepresentation];
  v4 = [(MFWebViewLoadingController *)self error];
  v5 = v4;
  if (v3)
  {
    v6 = [v3 contentURL];
    v7 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v3 ef_publicDescription];
      v25 = 138543874;
      v26 = v9;
      v27 = 2048;
      v28 = self;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_2149C9000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: Sending request to load webview with content representation: %{public}@", &v25, 0x20u);
    }

    v11 = [(MFWebViewLoadingController *)self webView];
    v12 = [v11 loadFileURL:v6 allowingReadAccessToURL:v6];
LABEL_5:

    goto LABEL_10;
  }

  if (!v4)
  {
    v15 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [(MFWebViewLoadingController *)self loadingURL];
      v25 = 138543874;
      v26 = v17;
      v27 = 2048;
      v28 = self;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_2149C9000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: Sending request to load webview with loading URL: %@", &v25, 0x20u);
    }

    v6 = [(MFWebViewLoadingController *)self webView];
    v19 = MEMORY[0x277CCAD20];
    v11 = [(MFWebViewLoadingController *)self loadingURL];
    v20 = [v19 requestWithURL:v11 cachePolicy:0 timeoutInterval:60.0];
    v21 = [v6 loadRequest:v20];

    goto LABEL_5;
  }

  v13 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v5 ef_publicDescription];
    v25 = 138543874;
    v26 = v23;
    v27 = 2048;
    v28 = self;
    v29 = 2114;
    v30 = v24;
    _os_log_error_impl(&dword_2149C9000, v13, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: Sending request to load webview with error: %{public}@", &v25, 0x20u);
  }

  [(MFWebViewLoadingController *)self requestWebViewLoadWithError:v5];
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)requestWebViewLoadWithoutShowingMessageWithRepresentation:(id)a3
{
  v6 = [a3 contentURL];
  [(MFWebViewLoadingController *)self setLoadingURL:?];
  v4 = [(MFWebViewLoadingController *)self webView];
  v5 = [v4 loadHTMLString:&stru_2826D1AD8 baseURL:v6];
}

- (void)requestWebViewLoadWithError:(id)a3
{
  v7 = a3;
  [(MFWebViewLoadingController *)self setError:?];
  v4 = [(MFWebViewLoadingController *)self webView];
  v5 = [v7 mf_markupString];
  v6 = [v4 loadHTMLString:v5 baseURL:0];
}

- (void)requestWebViewLoadWithContentRepresentation:(id)a3
{
  v12 = a3;
  v4 = [MEMORY[0x277D07148] currentDevice];
  v5 = [v4 isInternal];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    [(WKWebView *)self->_webView _webProcessIdentifier];
    v7 = EFStringWithInt64();
    v8 = [v12 contentItem];
    v9 = [v8 displayName];
    v10 = [v6 stringWithFormat:@"(%@) %@", v7, v9];
    v11 = [(MFWebViewLoadingController *)self webView];
    [v11 _setRemoteInspectionNameOverride:v10];
  }

  [(MFWebViewLoadingController *)self setContentRepresentation:v12];
  [MEMORY[0x277CD6898] registerContentRepresentation:v12];
  [(MFWebViewLoadingController *)self _doIssueLoadRequest];
}

- (void)_reconveneWebProcessBundle
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_2149C9000, log, OS_LOG_TYPE_DEBUG, "<%{public}@: %p>: updatingWebProcessPlugin", buf, 0x16u);
}

- (void)remoteContentURLSession:(id)a3 failedToProxyURL:(id)a4 failureReason:(int64_t)a5
{
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__MFWebViewLoadingController_remoteContentURLSession_failedToProxyURL_failureReason___block_invoke;
  v10[3] = &unk_2781823E8;
  v10[4] = self;
  v8 = v7;
  v11 = v8;
  v12 = a5;
  v9 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v9 performSyncBlock:v10];
}

void __85__MFWebViewLoadingController_remoteContentURLSession_failedToProxyURL_failureReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webProcessDelegate];
  [v2 webProcessFailedToLoadResourceWithProxyForURL:*(a1 + 40) failureReason:*(a1 + 48)];
}

- (MFMailWebProcessDelegate)webProcessDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_webProcessDelegate);

  return WeakRetained;
}

@end