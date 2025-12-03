@interface CDPLocalDeviceSecretHandler
- (CDPLocalDeviceSecretHandler)initWithContext:(id)context handler:(id)handler;
@end

@implementation CDPLocalDeviceSecretHandler

- (CDPLocalDeviceSecretHandler)initWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v9 = [(CDPLocalDeviceSecretHandler *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_handlerProxy, handler);
  }

  return v10;
}

@end