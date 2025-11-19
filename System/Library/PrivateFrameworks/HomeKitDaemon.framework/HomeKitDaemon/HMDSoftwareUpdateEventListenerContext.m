@interface HMDSoftwareUpdateEventListenerContext
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDSoftwareUpdateEventListenerContext)initWithAccessory:(id)a3 subscriptionProvider:(id)a4 eventStoreReadHandle:(id)a5;
- (HMSoftwareUpdateDescriptor)softwareUpdateDescriptorForLastEvent;
- (NSString)topicForSoftwareUpdateDescriptor;
- (id)logIdentifier;
- (int64_t)softwareUpdateStatusForLastEvent;
- (void)handleSoftwareUpdateDidBecomeAvailableWithDescriptor:(id)a3;
- (void)registerConsumer:(id)a3 topicFilters:(id)a4 completion:(id)a5;
- (void)updateAppBadgeAndBulletinNotification;
@end

@implementation HMDSoftwareUpdateEventListenerContext

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDSoftwareUpdateEventListenerContext *)self accessory];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)handleSoftwareUpdateDidBecomeAvailableWithDescriptor:(id)a3
{
  v7 = a3;
  v4 = [(HMDSoftwareUpdateEventListenerContext *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 handleSoftwareUpdateDidBecomeAvailableWithDescriptor:v7];
}

- (HMSoftwareUpdateDescriptor)softwareUpdateDescriptorForLastEvent
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSoftwareUpdateEventListenerContext *)self topicForSoftwareUpdateDescriptor];
  if (v3)
  {
    v4 = [(HMDSoftwareUpdateEventListenerContext *)self eventStoreReadHandle];
    v5 = [v4 lastEventForTopic:v3];

    if (v5)
    {
      v6 = [MEMORY[0x277CD1E48] descriptorFromEvent:v5];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v16;
          v21 = 2112;
          v22 = v5;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse descriptor from event: %@", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v12;
        v21 = 2112;
        v22 = v3;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve last event for topic: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int64_t)softwareUpdateStatusForLastEvent
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSoftwareUpdateEventListenerContext *)self topicForSoftwareUpdateDescriptor];
  if (v3)
  {
    v4 = [(HMDSoftwareUpdateEventListenerContext *)self eventStoreReadHandle];
    v5 = [v4 lastEventForTopic:v3];

    if (v5)
    {
      v6 = [MEMORY[0x277CD1E48] descriptorFromEvent:v5];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 status];
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v16;
          v21 = 2112;
          v22 = v5;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse descriptor from event: %@", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        v8 = 0;
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v12;
        v21 = 2112;
        v22 = v3;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve last event for topic: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSString)topicForSoftwareUpdateDescriptor
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSoftwareUpdateEventListenerContext *)self accessory];
  v4 = [v3 uuid];
  v5 = [v3 home];
  v6 = [v5 uuid];

  if (v4 && v6)
  {
    v7 = *MEMORY[0x277CCEA98];
    v8 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA98] homeUUID:v6 accessoryUUID:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138544130;
        v22 = v18;
        v23 = 2048;
        v24 = v7;
        v25 = 2112;
        v26 = v6;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to get topic with suffix: %ld, homeUUID: %@, accessoryUUID: %@", &v21, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get topic with homeUUID: %@, accessoryUUID: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v9 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)updateAppBadgeAndBulletinNotification
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating app badge and bulletin", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDSoftwareUpdateEventListenerContext *)v4 accessory];
  v8 = [v7 home];

  if (v8)
  {
    [v8 reevaluateAccessoryInfo];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v4;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot update app badge and bulletin because home is nil", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerConsumer:(id)a3 topicFilters:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDSoftwareUpdateEventListenerContext *)self subscriptionProvider];
  [v11 registerConsumer:v10 topicFilters:v9 completion:v8];
}

- (HMDSoftwareUpdateEventListenerContext)initWithAccessory:(id)a3 subscriptionProvider:(id)a4 eventStoreReadHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDSoftwareUpdateEventListenerContext;
  v11 = [(HMDSoftwareUpdateEventListenerContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_accessory, v8);
    objc_storeStrong(&v12->_subscriptionProvider, a4);
    objc_storeStrong(&v12->_eventStoreReadHandle, a5);
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_138276 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_138276, &__block_literal_global_138277);
  }

  v3 = logCategory__hmf_once_v10_138278;

  return v3;
}

void __52__HMDSoftwareUpdateEventListenerContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_138278;
  logCategory__hmf_once_v10_138278 = v1;
}

@end