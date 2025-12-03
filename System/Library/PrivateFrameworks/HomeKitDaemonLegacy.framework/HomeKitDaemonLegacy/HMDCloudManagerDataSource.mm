@interface HMDCloudManagerDataSource
- (BOOL)isControllerKeyAvailable;
- (BOOL)isKeychainSyncEnabled;
- (BOOL)supportsKeyTransferServer;
- (HMDCloudManagerDataSource)initWithHomeManager:(id)manager;
- (HMDHomeManager)homeManager;
- (id)keyTransferAgent;
@end

@implementation HMDCloudManagerDataSource

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (id)keyTransferAgent
{
  homeManager = [(HMDCloudManagerDataSource *)self homeManager];
  keyTransferAgent = [homeManager keyTransferAgent];

  return keyTransferAgent;
}

- (BOOL)supportsKeyTransferServer
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsKeyTransferServer = [v2 supportsKeyTransferServer];

  return supportsKeyTransferServer;
}

- (BOOL)isKeychainSyncEnabled
{
  v2 = +[HMDAppleAccountSettings sharedSettings];
  isKeychainSyncEnabled = [v2 isKeychainSyncEnabled];

  return isKeychainSyncEnabled;
}

- (BOOL)isControllerKeyAvailable
{
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v5 = 0;
  v3 = [systemStore getControllerPublicKey:&v5 secretKey:0 username:0 allowCreation:0 error:0];

  return v3;
}

- (HMDCloudManagerDataSource)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = HMDCloudManagerDataSource;
  v5 = [(HMDCloudManagerDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homeManager, managerCopy);
  }

  return v6;
}

@end