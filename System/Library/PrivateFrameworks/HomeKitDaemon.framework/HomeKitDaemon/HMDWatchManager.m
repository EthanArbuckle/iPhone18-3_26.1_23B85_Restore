@interface HMDWatchManager
+ (BOOL)isCompatibleWatchDevice:(id)a3;
+ (id)logCategory;
+ (id)sharedManager;
- (BOOL)isPairedWithWatch;
- (HMDWatchManager)init;
- (NSArray)connectedWatches;
- (NSArray)watches;
- (id)attributeDescriptions;
- (id)connectedWatchFromDeviceID:(id)a3;
- (void)__initializeConnectedDevices;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation HMDWatchManager

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDWatchManager *)self service];

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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Connected devices changed: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    __HMDWatchManagerUpdateWithConnectedDevices(v10, v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDWatchManager *)self service];

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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Devices changed: %@", buf, 0x16u);
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

    __HMDWatchManagerUpdateWithConnectedDevices(v10, v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)connectedWatchFromDeviceID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_connectedWatches;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 remoteDestinationString];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSArray)connectedWatches
{
  os_unfair_lock_lock_with_options();
  v3 = self->_connectedWatches;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isPairedWithWatch
{
  os_unfair_lock_lock_with_options();
  pairedWithWatch = self->_pairedWithWatch;
  os_unfair_lock_unlock(&self->_lock);
  return pairedWithWatch;
}

- (NSArray)watches
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDWatchManager *)self service];
  v4 = [v3 devices];
  v5 = [v4 copy];

  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([HMDWatchManager isCompatibleWatchDevice:v11])
        {
          v12 = [HMDDevice alloc];
          v13 = [(HMDWatchManager *)self service];
          v14 = [(HMDDevice *)v12 initWithService:v13 device:v11];

          if (v14)
          {
            [v18 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = [v18 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)__initializeConnectedDevices
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDWatchManager *)self service];
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
        if (+[HMDWatchManager isCompatibleWatchDevice:](HMDWatchManager, "isCompatibleWatchDevice:", v11, v13) && [v11 isConnected])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  __HMDWatchManagerUpdateWithConnectedDevices(self, v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDWatchManager *)self connectedWatches];
  v5 = [v3 initWithName:@"Connected Watches" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDWatchManager)init
{
  v14.receiver = self;
  v14.super_class = HMDWatchManager;
  v2 = [(HMDWatchManager *)&v14 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [MEMORY[0x277CBEA60] array];
    connectedWatches = v2->_connectedWatches;
    v2->_connectedWatches = v8;

    v10 = +[HMDIDSServiceManager sharedManager];
    v11 = [v10 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
    service = v2->_service;
    v2->_service = v11;

    [(HMDIDSService *)v2->_service addDelegate:v2 queue:v2->_queue];
    [(HMDWatchManager *)v2 __initializeConnectedDevices];
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_228347 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_228347, &__block_literal_global_228348);
  }

  v3 = logCategory__hmf_once_v8_228349;

  return v3;
}

void __30__HMDWatchManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_228349;
  logCategory__hmf_once_v8_228349 = v1;
}

+ (BOOL)isCompatibleWatchDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 productName];
  v5 = [v3 productVersion];

  LODWORD(v3) = NRWatchOSVersion();
  return (v3 & 0xFFFE0000) != 0;
}

+ (id)sharedManager
{
  if (+[HMDDeviceCapabilities isCompanionCapable])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HMDWatchManager_sharedManager__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (sharedManager_onceToken_228358 != -1)
    {
      dispatch_once(&sharedManager_onceToken_228358, block);
    }

    v3 = sharedManager_watchManager;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __32__HMDWatchManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_watchManager;
  sharedManager_watchManager = v1;
}

@end