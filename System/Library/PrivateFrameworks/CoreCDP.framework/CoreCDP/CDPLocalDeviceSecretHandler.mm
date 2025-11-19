@interface CDPLocalDeviceSecretHandler
- (CDPLocalDeviceSecretHandler)initWithContext:(id)a3 handler:(id)a4;
@end

@implementation CDPLocalDeviceSecretHandler

- (CDPLocalDeviceSecretHandler)initWithContext:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CDPLocalDeviceSecretHandler *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_handlerProxy, a4);
  }

  return v10;
}

@end