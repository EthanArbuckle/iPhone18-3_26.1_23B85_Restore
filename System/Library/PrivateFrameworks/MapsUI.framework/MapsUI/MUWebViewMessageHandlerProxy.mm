@interface MUWebViewMessageHandlerProxy
- (WKScriptMessageHandler)target;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation MUWebViewMessageHandlerProxy

- (WKScriptMessageHandler)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  controllerCopy = controller;
  target = [(MUWebViewMessageHandlerProxy *)self target];
  [target userContentController:controllerCopy didReceiveScriptMessage:messageCopy];
}

@end