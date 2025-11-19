@interface HMDDoorbellPressTracker
+ (id)logCategory;
- (BOOL)doorbellPressInDateInterval:(id)a3 doorbellAccessory:(id)a4;
- (HMDDoorbellPressTracker)initWithWorkQueue:(id)a3 notificationCenter:(id)a4;
- (void)_handleCharacteristicsValueUpdatedNotification:(id)a3;
- (void)handleCharacteristicsValueUpdatedNotification:(id)a3;
- (void)startTrackingPressesForDoorbellAccessory:(id)a3 registration:(id)a4;
- (void)stopTrackingPressesForDoorbellAccessory:(id)a3 registration:(id)a4;
@end

@implementation HMDDoorbellPressTracker

- (void)handleCharacteristicsValueUpdatedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDDoorbellPressTracker *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDDoorbellPressTracker_handleCharacteristicsValueUpdatedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleCharacteristicsValueUpdatedNotification:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDoorbellPressTracker *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"HMDNotificationCharacteristicValueUpdatedChangedCharacteristicsKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 na_filter:&__block_literal_global_167642];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [v11 accessory];
    os_unfair_lock_lock_with_options();
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = [(HMDDoorbellPressTracker *)self dateOfLastDoorbellPressByAccessoryUUID];
    v15 = [v12 uuid];
    [v14 setObject:v13 forKeyedSubscript:v15];

    os_unfair_lock_unlock(&self->_lock);
    context = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMDDoorbellPressTracker *)v16 dateOfLastDoorbellPressByAccessoryUUID];
      v18 = [v12 uuid];
      v19 = [v24 objectForKeyedSubscript:v18];
      v20 = [v12 name];
      v21 = [v12 uuid];
      *buf = 138544130;
      v27 = v23;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updated date of last doorbell press to: %@ for doorbell: %@/%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(context);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HMDDoorbellPressTracker__handleCharacteristicsValueUpdatedNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if ([v3 isEqualToString:*MEMORY[0x277CCF910]])
  {
    v4 = [v2 service];
    v5 = [v4 type];
    v6 = [v5 isEqualToString:*MEMORY[0x277CD0E38]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)doorbellPressInDateInterval:(id)a3 doorbellAccessory:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDDoorbellPressTracker *)self dateOfLastDoorbellPressByAccessoryUUID];
  v9 = [v7 uuid];
  v10 = [v8 objectForKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_lock);
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v7 name];
    v16 = [v7 uuid];
    v20 = 138544130;
    v21 = v14;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Date of last doorbell press: %@ for doorbell accessory: %@/%@", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (v10)
  {
    v17 = [v6 containsDate:v10];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)stopTrackingPressesForDoorbellAccessory:(id)a3 registration:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDDoorbellPressTracker *)self registrationsByAccessoryUUID];
  v8 = [v6 uuid];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v19 = objc_autoreleasePoolPush();
    v25 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v6 name];
      v28 = [v6 uuid];
      *buf = 138544130;
      v32 = v26;
      v33 = 2112;
      v34 = v27;
      v35 = 2112;
      v36 = v28;
      v37 = 2112;
      v38 = v30;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@No existing registrations found for doorbell accessory: %@/%@ registration: %@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  [v9 removeObject:v30];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v6 name];
    v15 = [v6 uuid];
    *buf = 138544130;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = v30;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Stopped tracking presses for doorbell accessory: %@/%@ registration: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  if (![v9 count])
  {
    v16 = [(HMDDoorbellPressTracker *)v11 notificationCenter];
    [v16 removeObserver:v11 name:@"HMDNotificationCharacteristicValueUpdated" object:v6];

    v17 = [(HMDDoorbellPressTracker *)v11 registrationsByAccessoryUUID];
    v18 = [v6 uuid];
    [v17 removeObjectForKey:v18];

    v19 = objc_autoreleasePoolPush();
    v20 = v11;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v6 name];
      v24 = [v6 uuid];
      *buf = 138543874;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@No more registrations for doorbell accessory: %@/%@", buf, 0x20u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v19);
  }

  os_unfair_lock_unlock(&self->_lock);
  v29 = *MEMORY[0x277D85DE8];
}

- (void)startTrackingPressesForDoorbellAccessory:(id)a3 registration:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 findCharacteristicType:*MEMORY[0x277CCF910] forServiceType:*MEMORY[0x277CD0E38]];
  if (v8)
  {
    os_unfair_lock_lock_with_options();
    v9 = [(HMDDoorbellPressTracker *)self registrationsByAccessoryUUID];
    v10 = [v6 uuid];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v31 = v12;
        v15 = HMFGetLogIdentifier();
        v16 = [v6 name];
        v17 = [v6 uuid];
        *buf = 138544130;
        v33 = v15;
        v34 = 2112;
        v35 = v16;
        v36 = 2112;
        v37 = v17;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Already tracking presses for doorbell accessory: %@/%@ registration: %@", buf, 0x2Au);

        v12 = v31;
      }
    }

    else
    {
      v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v24 = [(HMDDoorbellPressTracker *)self registrationsByAccessoryUUID];
      v25 = [v6 uuid];
      [v24 setObject:v11 forKeyedSubscript:v25];

      v26 = [(HMDDoorbellPressTracker *)self notificationCenter];
      [v26 addObserver:self selector:sel_handleCharacteristicsValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:v6];

      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v31 = v12;
        v27 = HMFGetLogIdentifier();
        v28 = [v6 name];
        v29 = [v6 uuid];
        *buf = 138544130;
        v33 = v27;
        v34 = 2112;
        v35 = v28;
        v36 = 2112;
        v37 = v29;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Started tracking presses for doorbell accessory: %@/%@ registration: %@", buf, 0x2Au);

        v12 = v31;
      }
    }

    objc_autoreleasePoolPop(v12);
    [v11 addObject:{v7, v31}];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v6 name];
      v23 = [v6 uuid];
      *buf = 138543874;
      v33 = v21;
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory: %@/%@ is not a doorbell", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (HMDDoorbellPressTracker)initWithWorkQueue:(id)a3 notificationCenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HMDDoorbellPressTracker;
  v9 = [(HMDDoorbellPressTracker *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationCenter, a4);
    objc_storeStrong(&v10->_workQueue, a3);
    v10->_lock._os_unfair_lock_opaque = 0;
    v11 = [MEMORY[0x277CBEB38] dictionary];
    dateOfLastDoorbellPressByAccessoryUUID = v10->_dateOfLastDoorbellPressByAccessoryUUID;
    v10->_dateOfLastDoorbellPressByAccessoryUUID = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    registrationsByAccessoryUUID = v10->_registrationsByAccessoryUUID;
    v10->_registrationsByAccessoryUUID = v13;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_167662 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_167662, &__block_literal_global_8_167663);
  }

  v3 = logCategory__hmf_once_v14_167664;

  return v3;
}

void __38__HMDDoorbellPressTracker_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_167664;
  logCategory__hmf_once_v14_167664 = v1;
}

@end