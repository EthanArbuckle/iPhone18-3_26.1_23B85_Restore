@interface HMDSoftwareUpdateEventListenerContext
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDSoftwareUpdateEventListenerContext)initWithAccessory:(id)accessory subscriptionProvider:(id)provider eventStoreReadHandle:(id)handle;
- (HMSoftwareUpdateDescriptor)softwareUpdateDescriptorForLastEvent;
- (NSString)topicForSoftwareUpdateDescriptor;
- (id)logIdentifier;
- (int64_t)softwareUpdateStatusForLastEvent;
- (void)handleSoftwareUpdateDidBecomeAvailableWithDescriptor:(id)descriptor;
- (void)registerConsumer:(id)consumer topicFilters:(id)filters completion:(id)completion;
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
  accessory = [(HMDSoftwareUpdateEventListenerContext *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)handleSoftwareUpdateDidBecomeAvailableWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  accessory = [(HMDSoftwareUpdateEventListenerContext *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessory;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 handleSoftwareUpdateDidBecomeAvailableWithDescriptor:descriptorCopy];
}

- (HMSoftwareUpdateDescriptor)softwareUpdateDescriptorForLastEvent
{
  v23 = *MEMORY[0x277D85DE8];
  topicForSoftwareUpdateDescriptor = [(HMDSoftwareUpdateEventListenerContext *)self topicForSoftwareUpdateDescriptor];
  if (topicForSoftwareUpdateDescriptor)
  {
    eventStoreReadHandle = [(HMDSoftwareUpdateEventListenerContext *)self eventStoreReadHandle];
    v5 = [eventStoreReadHandle lastEventForTopic:topicForSoftwareUpdateDescriptor];

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
        selfCopy = self;
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
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v12;
        v21 = 2112;
        v22 = topicForSoftwareUpdateDescriptor;
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
  topicForSoftwareUpdateDescriptor = [(HMDSoftwareUpdateEventListenerContext *)self topicForSoftwareUpdateDescriptor];
  if (topicForSoftwareUpdateDescriptor)
  {
    eventStoreReadHandle = [(HMDSoftwareUpdateEventListenerContext *)self eventStoreReadHandle];
    v5 = [eventStoreReadHandle lastEventForTopic:topicForSoftwareUpdateDescriptor];

    if (v5)
    {
      v6 = [MEMORY[0x277CD1E48] descriptorFromEvent:v5];
      v7 = v6;
      if (v6)
      {
        status = [v6 status];
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        status = 0;
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v12;
        v21 = 2112;
        v22 = topicForSoftwareUpdateDescriptor;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve last event for topic: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      status = 0;
    }
  }

  else
  {
    status = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return status;
}

- (NSString)topicForSoftwareUpdateDescriptor
{
  v29 = *MEMORY[0x277D85DE8];
  accessory = [(HMDSoftwareUpdateEventListenerContext *)self accessory];
  uuid = [accessory uuid];
  home = [accessory home];
  uuid2 = [home uuid];

  if (uuid && uuid2)
  {
    v7 = *MEMORY[0x277CCEA98];
    v8 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA98] homeUUID:uuid2 accessoryUUID:uuid];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138544130;
        v22 = v18;
        v23 = 2048;
        v24 = v7;
        v25 = 2112;
        v26 = uuid2;
        v27 = 2112;
        v28 = uuid;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to get topic with suffix: %ld, homeUUID: %@, accessoryUUID: %@", &v21, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = uuid2;
      v25 = 2112;
      v26 = uuid;
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating app badge and bulletin", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  accessory = [(HMDSoftwareUpdateEventListenerContext *)selfCopy accessory];
  home = [accessory home];

  if (home)
  {
    [home reevaluateAccessoryInfo];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
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

- (void)registerConsumer:(id)consumer topicFilters:(id)filters completion:(id)completion
{
  completionCopy = completion;
  filtersCopy = filters;
  consumerCopy = consumer;
  subscriptionProvider = [(HMDSoftwareUpdateEventListenerContext *)self subscriptionProvider];
  [subscriptionProvider registerConsumer:consumerCopy topicFilters:filtersCopy completion:completionCopy];
}

- (HMDSoftwareUpdateEventListenerContext)initWithAccessory:(id)accessory subscriptionProvider:(id)provider eventStoreReadHandle:(id)handle
{
  accessoryCopy = accessory;
  providerCopy = provider;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = HMDSoftwareUpdateEventListenerContext;
  v11 = [(HMDSoftwareUpdateEventListenerContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_accessory, accessoryCopy);
    objc_storeStrong(&v12->_subscriptionProvider, provider);
    objc_storeStrong(&v12->_eventStoreReadHandle, handle);
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