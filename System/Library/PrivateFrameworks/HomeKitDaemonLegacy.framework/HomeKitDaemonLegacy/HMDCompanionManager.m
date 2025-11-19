@interface HMDCompanionManager
+ (id)logCategory;
+ (id)sharedManager;
- (HMDCompanionManager)init;
- (HMDDevice)companion;
- (id)attributeDescriptions;
- (void)__initializeConnectedDevices;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation HMDCompanionManager

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCompanionManager *)self service];

  if (v8 == v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Connected devices changed: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    __HMDCompanionManagerUpdateWithConnectedDevices(v10, v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCompanionManager *)self service];

  if (v8 == v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v12;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Devices changed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          if ([v19 isConnected])
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    __HMDCompanionManagerUpdateWithConnectedDevices(v10, v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (HMDDevice)companion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_companion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)__initializeConnectedDevices
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCompanionManager *)self service];
  v4 = [v3 devices];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isConnected])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  __HMDCompanionManagerUpdateWithConnectedDevices(self, v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCompanionManager *)self companion];
  v5 = [v3 initWithName:@"Companion" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDCompanionManager)init
{
  v12.receiver = self;
  v12.super_class = HMDCompanionManager;
  v2 = [(HMDCompanionManager *)&v12 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = +[HMDIDSServiceManager sharedManager];
    v9 = [v8 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
    service = v2->_service;
    v2->_service = v9;

    [(HMDIDSService *)v2->_service addDelegate:v2 queue:v2->_queue];
    [(HMDCompanionManager *)v2 __initializeConnectedDevices];
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_68625 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_68625, &__block_literal_global_68626);
  }

  v3 = logCategory__hmf_once_v7_68627;

  return v3;
}

uint64_t __34__HMDCompanionManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_68627;
  logCategory__hmf_once_v7_68627 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)sharedManager
{
  v3 = [MEMORY[0x277D0F8E8] productInfo];
  v4 = [v3 productPlatform];

  if (v4 == 3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__HMDCompanionManager_sharedManager__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (sharedManager_onceToken_68636 != -1)
    {
      dispatch_once(&sharedManager_onceToken_68636, block);
    }

    v5 = sharedManager_companionManager;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __36__HMDCompanionManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_companionManager;
  sharedManager_companionManager = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end