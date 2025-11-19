@interface MUWebViewFactoryItem
- (MUWebViewFactoryItem)initWithBridgeConfiguration:(id)a3 webView:(id)a4 messageHandlerProxy:(id)a5;
@end

@implementation MUWebViewFactoryItem

- (MUWebViewFactoryItem)initWithBridgeConfiguration:(id)a3 webView:(id)a4 messageHandlerProxy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MUWebViewFactoryItem;
  v11 = [(MUWebViewFactoryItem *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    bridgeConfiguration = v11->_bridgeConfiguration;
    v11->_bridgeConfiguration = v12;

    objc_storeStrong(&v11->_webView, a4);
    objc_storeStrong(&v11->_messageHandlerProxy, a5);
  }

  return v11;
}

@end