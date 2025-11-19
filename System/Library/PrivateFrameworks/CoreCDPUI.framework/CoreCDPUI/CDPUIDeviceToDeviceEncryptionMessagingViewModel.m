@interface CDPUIDeviceToDeviceEncryptionMessagingViewModel
- (CDPUIDeviceToDeviceEncryptionMessagingViewModel)initWithContext:(id)a3 is2FA:(BOOL)a4 hasLocalSecret:(BOOL)a5;
@end

@implementation CDPUIDeviceToDeviceEncryptionMessagingViewModel

- (CDPUIDeviceToDeviceEncryptionMessagingViewModel)initWithContext:(id)a3 is2FA:(BOOL)a4 hasLocalSecret:(BOOL)a5
{
  v9 = a3;
  v10 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModel *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_context, a3);
    v11->_is2FA = a4;
    v11->_hasLocalSecret = a5;
  }

  return v11;
}

@end