@interface MUWebViewFactoryItem
- (MUWebViewFactoryItem)initWithBridgeConfiguration:(id)configuration webView:(id)view messageHandlerProxy:(id)proxy;
@end

@implementation MUWebViewFactoryItem

- (MUWebViewFactoryItem)initWithBridgeConfiguration:(id)configuration webView:(id)view messageHandlerProxy:(id)proxy
{
  configurationCopy = configuration;
  viewCopy = view;
  proxyCopy = proxy;
  v15.receiver = self;
  v15.super_class = MUWebViewFactoryItem;
  v11 = [(MUWebViewFactoryItem *)&v15 init];
  if (v11)
  {
    v12 = [configurationCopy copy];
    bridgeConfiguration = v11->_bridgeConfiguration;
    v11->_bridgeConfiguration = v12;

    objc_storeStrong(&v11->_webView, view);
    objc_storeStrong(&v11->_messageHandlerProxy, proxy);
  }

  return v11;
}

@end