@interface EDMailDropWebViewScriptHandler
- (WKWebView)webView;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation EDMailDropWebViewScriptHandler

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _ef_log_EDMailDropMetadataGenerator();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "MailDrop: Received Script message with %@", &v13, 0xCu);
  }

  v7 = [(EDMailDropWebViewScriptHandler *)self webView];
  v8 = [v5 webView];
  if (v8 != v7)
  {
    goto LABEL_6;
  }

  v9 = [(EDMailDropWebViewScriptHandler *)self handler];
  v10 = v9 == 0;

  if (!v10)
  {
    v8 = [(EDMailDropWebViewScriptHandler *)self handler];
    v11 = [v5 body];
    (v8)[2](v8, v11);

LABEL_6:
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end