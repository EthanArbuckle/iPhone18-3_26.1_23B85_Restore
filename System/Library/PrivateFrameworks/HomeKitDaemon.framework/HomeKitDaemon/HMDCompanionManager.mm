@interface HMDCompanionManager
+ (id)logCategory;
+ (id)sharedManager;
- (HMDCompanionManager)init;
- (HMDDevice)companion;
- (id)attributeDescriptions;
- (void)__initializeConnectedDevices;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation HMDCompanionManager

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  service = [(HMDCompanionManager *)self service];

  if (service == serviceCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = changedCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Connected devices changed: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    __HMDCompanionManagerUpdateWithConnectedDevices(selfCopy, changedCopy);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v30 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  service = [(HMDCompanionManager *)self service];

  if (service == serviceCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v12;
      v28 = 2112;
      v29 = changedCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Devices changed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(changedCopy, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = changedCopy;
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

    __HMDCompanionManagerUpdateWithConnectedDevices(selfCopy, v13);
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
  service = [(HMDCompanionManager *)self service];
  devices = [service devices];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(devices, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = devices;
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
  companion = [(HMDCompanionManager *)self companion];
  v5 = [v3 initWithName:@"Companion" value:companion];
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
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
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
  if (logCategory__hmf_once_t6_104940 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_104940, &__block_literal_global_104941);
  }

  v3 = logCategory__hmf_once_v7_104942;

  return v3;
}

void __34__HMDCompanionManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_104942;
  logCategory__hmf_once_v7_104942 = v1;
}

+ (id)sharedManager
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  if (productPlatform == 3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__HMDCompanionManager_sharedManager__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedManager_onceToken_104951 != -1)
    {
      dispatch_once(&sharedManager_onceToken_104951, block);
    }

    v5 = sharedManager_companionManager;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __36__HMDCompanionManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_companionManager;
  sharedManager_companionManager = v1;
}

@end