@interface CDPUIDeviceToDeviceEncryptionFlowContext
- (CDPUIDeviceToDeviceEncryptionFlowContext)initWithAltDSID:(id)d;
- (CDPUIDeviceToDeviceEncryptionFlowContext)initWithCDPContext:(id)context;
- (NSString)altDSID;
- (UIViewController)presentingViewController;
@end

@implementation CDPUIDeviceToDeviceEncryptionFlowContext

- (CDPUIDeviceToDeviceEncryptionFlowContext)initWithAltDSID:(id)d
{
  v4 = [MEMORY[0x277CFD4A8] contextForAccountWithAltDSID:d];
  v5 = [(CDPUIDeviceToDeviceEncryptionFlowContext *)self initWithCDPContext:v4];

  return v5;
}

- (CDPUIDeviceToDeviceEncryptionFlowContext)initWithCDPContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = CDPUIDeviceToDeviceEncryptionFlowContext;
  v6 = [(CDPUIDeviceToDeviceEncryptionFlowContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cdpContext, context);
    objc_storeStrong(&v7->_securityUpgradeContext, *MEMORY[0x277CF00A8]);
    v7->_isDemoDevice = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
  }

  return v7;
}

- (NSString)altDSID
{
  cdpContext = [(CDPUIDeviceToDeviceEncryptionFlowContext *)self cdpContext];
  altDSID = [cdpContext altDSID];

  return altDSID;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end