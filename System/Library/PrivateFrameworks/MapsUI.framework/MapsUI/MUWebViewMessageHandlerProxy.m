@interface MUWebViewMessageHandlerProxy
- (WKScriptMessageHandler)target;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation MUWebViewMessageHandlerProxy

- (WKScriptMessageHandler)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MUWebViewMessageHandlerProxy *)self target];
  [v8 userContentController:v7 didReceiveScriptMessage:v6];
}

@end