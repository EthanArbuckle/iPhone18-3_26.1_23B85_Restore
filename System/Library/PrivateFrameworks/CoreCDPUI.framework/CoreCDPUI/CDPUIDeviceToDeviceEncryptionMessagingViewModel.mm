@interface CDPUIDeviceToDeviceEncryptionMessagingViewModel
- (CDPUIDeviceToDeviceEncryptionMessagingViewModel)initWithContext:(id)context is2FA:(BOOL)a hasLocalSecret:(BOOL)secret;
@end

@implementation CDPUIDeviceToDeviceEncryptionMessagingViewModel

- (CDPUIDeviceToDeviceEncryptionMessagingViewModel)initWithContext:(id)context is2FA:(BOOL)a hasLocalSecret:(BOOL)secret
{
  contextCopy = context;
  v10 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_context, context);
    v11->_is2FA = a;
    v11->_hasLocalSecret = secret;
  }

  return v11;
}

@end