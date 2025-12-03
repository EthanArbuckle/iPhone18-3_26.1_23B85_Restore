@interface EMWebViewScriptHandler
+ (void)addScriptHandlerForWebView:(id)view key:(id)key handler:(id)handler;
- (WKWebView)webView;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation EMWebViewScriptHandler

+ (void)addScriptHandlerForWebView:(id)view key:(id)key handler:(id)handler
{
  viewCopy = view;
  keyCopy = key;
  handlerCopy = handler;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMWebViewScriptHandler.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"webView"}];
  }

  v11 = objc_alloc_init(EMWebViewScriptHandler);
  [(EMWebViewScriptHandler *)v11 setName:keyCopy];
  [(EMWebViewScriptHandler *)v11 setWebView:viewCopy];
  [(EMWebViewScriptHandler *)v11 setHandler:handlerCopy];
  configuration = [viewCopy configuration];
  userContentController = [configuration userContentController];
  name = [(EMWebViewScriptHandler *)v11 name];
  [userContentController addScriptMessageHandler:v11 name:name];
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  webView = [(EMWebViewScriptHandler *)self webView];
  webView2 = [messageCopy webView];
  if (webView2 == webView)
  {
    handler = [(EMWebViewScriptHandler *)self handler];

    if (!handler)
    {
      goto LABEL_5;
    }

    webView2 = [(EMWebViewScriptHandler *)self handler];
    body = [messageCopy body];
    (webView2)[2](webView2, body);
  }

LABEL_5:
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end