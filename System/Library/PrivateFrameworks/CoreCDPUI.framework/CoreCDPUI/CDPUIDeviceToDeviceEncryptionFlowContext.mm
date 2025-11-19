@interface CDPUIDeviceToDeviceEncryptionFlowContext
- (CDPUIDeviceToDeviceEncryptionFlowContext)initWithAltDSID:(id)a3;
- (CDPUIDeviceToDeviceEncryptionFlowContext)initWithCDPContext:(id)a3;
- (NSString)altDSID;
- (UIViewController)presentingViewController;
@end

@implementation CDPUIDeviceToDeviceEncryptionFlowContext

- (CDPUIDeviceToDeviceEncryptionFlowContext)initWithAltDSID:(id)a3
{
  v4 = [MEMORY[0x277CFD4A8] contextForAccountWithAltDSID:a3];
  v5 = [(CDPUIDeviceToDeviceEncryptionFlowContext *)self initWithCDPContext:v4];

  return v5;
}

- (CDPUIDeviceToDeviceEncryptionFlowContext)initWithCDPContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDPUIDeviceToDeviceEncryptionFlowContext;
  v6 = [(CDPUIDeviceToDeviceEncryptionFlowContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cdpContext, a3);
    objc_storeStrong(&v7->_securityUpgradeContext, *MEMORY[0x277CF00A8]);
    v7->_isDemoDevice = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
  }

  return v7;
}

- (NSString)altDSID
{
  v2 = [(CDPUIDeviceToDeviceEncryptionFlowContext *)self cdpContext];
  v3 = [v2 altDSID];

  return v3;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end