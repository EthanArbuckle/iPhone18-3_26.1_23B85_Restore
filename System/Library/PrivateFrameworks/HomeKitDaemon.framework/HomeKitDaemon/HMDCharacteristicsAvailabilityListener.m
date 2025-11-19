@interface HMDCharacteristicsAvailabilityListener
+ (id)logCategory;
- (HMDCharacteristicsAvailabilityListener)initWithAccessory:(id)a3 workQueue:(id)a4 interestedCharacteristicTypesByServiceType:(id)a5;
- (HMDCharacteristicsAvailabilityListenerDelegate)delegate;
- (HMDHAPAccessory)accessory;
- (id)_accessoryCharacteristicsToObserve;
- (void)_notifyDelegate;
- (void)_registerForNotifications;
- (void)handleCharacteristicsUpdated:(id)a3;
- (void)handleServicesUpdated:(id)a3;
- (void)start;
@end

@implementation HMDCharacteristicsAvailabilityListener

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDCharacteristicsAvailabilityListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleServicesUpdated:(id)a3
{
  v4 = [(HMDCharacteristicsAvailabilityListener *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDCharacteristicsAvailabilityListener_handleServicesUpdated___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __64__HMDCharacteristicsAvailabilityListener_handleServicesUpdated___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Services updated", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _notifyDelegate];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleCharacteristicsUpdated:(id)a3
{
  v4 = [(HMDCharacteristicsAvailabilityListener *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDCharacteristicsAvailabilityListener_handleCharacteristicsUpdated___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __71__HMDCharacteristicsAvailabilityListener_handleCharacteristicsUpdated___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Characteristics updated", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _notifyDelegate];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_notifyDelegate
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCharacteristicsAvailabilityListener *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCharacteristicsAvailabilityListener *)self _accessoryCharacteristicsToObserve];
  v5 = [(HMDCharacteristicsAvailabilityListener *)self availableCharacteristics];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    [(HMDCharacteristicsAvailabilityListener *)self setAvailableCharacteristics:v4];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of characteristics update: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDCharacteristicsAvailabilityListener *)v8 delegate];
    v12 = [(HMDCharacteristicsAvailabilityListener *)v8 availableCharacteristics];
    [v11 listener:v8 didUpdateAvailableCharacteristics:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_accessoryCharacteristicsToObserve
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCharacteristicsAvailabilityListener *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self;
  v5 = [(HMDCharacteristicsAvailabilityListener *)self accessory];
  v6 = [v5 services];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [(HMDCharacteristicsAvailabilityListener *)v25 interestedCharacteristicTypesByServiceType];
        v13 = [v11 serviceType];
        v14 = [v12 hmf_setForKey:v13];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [v11 findCharacteristicWithType:*(*(&v26 + 1) + 8 * j)];
              if (v20)
              {
                [v4 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v17);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v21 = [v4 copy];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_registerForNotifications
{
  v3 = [(HMDCharacteristicsAvailabilityListener *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v6 = [(HMDCharacteristicsAvailabilityListener *)self accessory];
  v4 = [(HMDCharacteristicsAvailabilityListener *)self notificationRegistration];
  [v4 addObserver:sel_handleServicesUpdated_ name:@"kHMDNotificationServicesUpdated" object:v6];

  v5 = [(HMDCharacteristicsAvailabilityListener *)self notificationRegistration];
  [v5 addObserver:sel_handleCharacteristicsUpdated_ name:@"kHMDNotificationCharacteristicsUpdated" object:v6];
}

- (void)start
{
  v3 = [(HMDCharacteristicsAvailabilityListener *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDCharacteristicsAvailabilityListener *)self _registerForNotifications];

  [(HMDCharacteristicsAvailabilityListener *)self _notifyDelegate];
}

- (HMDCharacteristicsAvailabilityListener)initWithAccessory:(id)a3 workQueue:(id)a4 interestedCharacteristicTypesByServiceType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = HMDCharacteristicsAvailabilityListener;
  v11 = [(HMDCharacteristicsAvailabilityListener *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_workQueue, a4);
    objc_storeWeak(&v12->_accessory, v8);
    v13 = [[HMDNotificationRegistration alloc] initWithRegisterer:v12];
    notificationRegistration = v12->_notificationRegistration;
    v12->_notificationRegistration = v13;

    objc_storeStrong(&v12->_interestedCharacteristicTypesByServiceType, a5);
    v15 = MEMORY[0x277CCACA8];
    v16 = [v8 home];
    v17 = [v16 name];
    v18 = [v8 name];
    v19 = [v8 uuid];
    v20 = [v15 stringWithFormat:@"%@/%@/%@", v17, v18, v19];
    v21 = [v20 copy];
    logIdentifier = v12->_logIdentifier;
    v12->_logIdentifier = v21;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_285477 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_285477, &__block_literal_global_285478);
  }

  v3 = logCategory__hmf_once_v4_285479;

  return v3;
}

void __53__HMDCharacteristicsAvailabilityListener_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_285479;
  logCategory__hmf_once_v4_285479 = v1;
}

@end