@interface HMDCloudManagerDataSource
- (BOOL)isControllerKeyAvailable;
- (BOOL)isKeychainSyncEnabled;
- (BOOL)supportsKeyTransferServer;
- (HMDCloudManagerDataSource)initWithHomeManager:(id)a3;
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
  v2 = [(HMDCloudManagerDataSource *)self homeManager];
  v3 = [v2 keyTransferAgent];

  return v3;
}

- (BOOL)supportsKeyTransferServer
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 supportsKeyTransferServer];

  return v3;
}

- (BOOL)isKeychainSyncEnabled
{
  v2 = +[HMDAppleAccountSettings sharedSettings];
  v3 = [v2 isKeychainSyncEnabled];

  return v3;
}

- (BOOL)isControllerKeyAvailable
{
  v2 = [MEMORY[0x277CFEC78] systemStore];
  v5 = 0;
  v3 = [v2 getControllerPublicKey:&v5 secretKey:0 username:0 allowCreation:0 error:0];

  return v3;
}

- (HMDCloudManagerDataSource)initWithHomeManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDCloudManagerDataSource;
  v5 = [(HMDCloudManagerDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homeManager, v4);
  }

  return v6;
}

@end