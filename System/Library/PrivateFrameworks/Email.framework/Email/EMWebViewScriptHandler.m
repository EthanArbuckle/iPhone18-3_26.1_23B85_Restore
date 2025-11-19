@interface EMWebViewScriptHandler
+ (void)addScriptHandlerForWebView:(id)a3 key:(id)a4 handler:(id)a5;
- (WKWebView)webView;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation EMWebViewScriptHandler

+ (void)addScriptHandlerForWebView:(id)a3 key:(id)a4 handler:(id)a5
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  if (!v16)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"EMWebViewScriptHandler.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"webView"}];
  }

  v11 = objc_alloc_init(EMWebViewScriptHandler);
  [(EMWebViewScriptHandler *)v11 setName:v9];
  [(EMWebViewScriptHandler *)v11 setWebView:v16];
  [(EMWebViewScriptHandler *)v11 setHandler:v10];
  v12 = [v16 configuration];
  v13 = [v12 userContentController];
  v14 = [(EMWebViewScriptHandler *)v11 name];
  [v13 addScriptMessageHandler:v11 name:v14];
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v9 = a4;
  v5 = [(EMWebViewScriptHandler *)self webView];
  v6 = [v9 webView];
  if (v6 == v5)
  {
    v7 = [(EMWebViewScriptHandler *)self handler];

    if (!v7)
    {
      goto LABEL_5;
    }

    v6 = [(EMWebViewScriptHandler *)self handler];
    v8 = [v9 body];
    (v6)[2](v6, v8);
  }

LABEL_5:
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end