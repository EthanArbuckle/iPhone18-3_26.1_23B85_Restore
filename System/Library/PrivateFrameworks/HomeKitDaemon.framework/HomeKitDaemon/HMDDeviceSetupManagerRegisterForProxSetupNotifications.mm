@interface HMDDeviceSetupManagerRegisterForProxSetupNotifications
@end

@implementation HMDDeviceSetupManagerRegisterForProxSetupNotifications

void ____HMDDeviceSetupManagerRegisterForProxSetupNotifications_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock_with_options();
    IsProxSetupRunning = __HMDDeviceSetupManagerIsProxSetupRunning(v3);
    v5 = IsProxSetupRunning;
    if (LOBYTE(v3[4]._os_unfair_lock_opaque) == IsProxSetupRunning)
    {
      os_unfair_lock_unlock(v3 + 2);
    }

    else
    {
      LOBYTE(v3[4]._os_unfair_lock_opaque) = IsProxSetupRunning;
      os_unfair_lock_unlock(v3 + 2);
      v6 = objc_autoreleasePoolPush();
      v7 = v3;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = HMFBooleanToString();
        *buf = 138543618;
        *&buf[4] = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification ProxSetup is running: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = [(os_unfair_lock_s *)v7 notificationCenter];
      v15 = @"running";
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v5];
      *buf = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v15 count:1];
      [v11 postNotificationName:@"HMDDeviceSetupManagerUpdatedRunningNotification" object:v7 userInfo:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end