@interface HMDDeviceSetupManager
+ (id)sharedManager;
- (BOOL)isRunning;
- (HMDDeviceSetupManager)initWithNotificationCenter:(id)center followUpManager:(id)manager darwinNotificationProvider:(id)provider;
- (void)dealloc;
@end

@implementation HMDDeviceSetupManager

- (BOOL)isRunning
{
  os_unfair_lock_lock_with_options();
  running = self->_running;
  os_unfair_lock_unlock(&self->_lock);
  return running;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    darwinNotificationProvider = [(HMDDeviceSetupManager *)selfCopy darwinNotificationProvider];
    v5 = [darwinNotificationProvider notifyIsValidToken:v3[3]];

    if (v5)
    {
      darwinNotificationProvider2 = [v3 darwinNotificationProvider];
      v7 = [darwinNotificationProvider2 notifyCancel:v3[3]];

      if (v7)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = v3;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = HMFGetLogIdentifier();
          *buf = 138543362;
          v15 = v11;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unregister for ProxSetup notifications", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
      }

      else
      {
        v3[3] = -1;
      }
    }
  }

  v13.receiver = v3;
  v13.super_class = HMDDeviceSetupManager;
  [(HMDDeviceSetupManager *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (HMDDeviceSetupManager)initWithNotificationCenter:(id)center followUpManager:(id)manager darwinNotificationProvider:(id)provider
{
  v31 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  managerCopy = manager;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = HMDDeviceSetupManager;
  v12 = [(HMDDeviceSetupManager *)&v25 init];
  v13 = v12;
  if (v12)
  {
    v12->_proxSetupNotificationToken = -1;
    objc_storeStrong(&v12->_notificationCenter, center);
    objc_storeStrong(&v13->_followUpManager, manager);
    objc_storeStrong(&v13->_darwinNotificationProvider, provider);
    v14 = v13;
    v15 = v14;
    if (v13->_proxSetupNotificationToken == -1)
    {
      objc_initWeak(&location, v14);
      darwinNotificationProvider = [(HMDDeviceSetupManager *)v15 darwinNotificationProvider];
      uTF8String = [@"com.apple.sharing.wha-prox-setup" UTF8String];
      v18 = MEMORY[0x277D85CD0];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = ____HMDDeviceSetupManagerRegisterForProxSetupNotifications_block_invoke;
      v26[3] = &unk_27972FE68;
      objc_copyWeak(&v27, &location);
      LODWORD(uTF8String) = [darwinNotificationProvider notifyRegisterDispatch:uTF8String outToken:&v13->_proxSetupNotificationToken queue:MEMORY[0x277D85CD0] handler:v26];

      if (uTF8String)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = v15;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v22;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for ProxSetup notifications", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }

      else
      {
        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);

        v15->_running = __HMDDeviceSetupManagerIsProxSetupRunning(v15);
      }
    }

    else
    {
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_156897 != -1)
  {
    dispatch_once(&sharedManager_onceToken_156897, &__block_literal_global_156898);
  }

  v3 = sharedManager_sharedManager_156899;

  return v3;
}

void __38__HMDDeviceSetupManager_sharedManager__block_invoke()
{
  v5 = objc_alloc_init(HMDCoreFollowUpManager);
  v0 = [HMDDeviceSetupManager alloc];
  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = objc_alloc_init(MEMORY[0x277CD19C0]);
  v3 = [(HMDDeviceSetupManager *)v0 initWithNotificationCenter:v1 followUpManager:v5 darwinNotificationProvider:v2];
  v4 = sharedManager_sharedManager_156899;
  sharedManager_sharedManager_156899 = v3;
}

@end