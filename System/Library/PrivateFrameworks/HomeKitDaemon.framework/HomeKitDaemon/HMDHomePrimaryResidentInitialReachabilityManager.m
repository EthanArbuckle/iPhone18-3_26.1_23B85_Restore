@interface HMDHomePrimaryResidentInitialReachabilityManager
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomePrimaryResidentInitialReachabilityManager)initWithUUID:(id)a3 workQueue:(id)a4;
- (HMDHomePrimaryResidentInitialReachabilityManager)initWithUUID:(id)a3 workQueue:(id)a4 notificationCenter:(id)a5 dataSource:(id)a6;
- (HMDResidentReachabilityState)persistedState;
- (NSNumber)initialReachability;
- (id)logIdentifier;
- (void)clearPersistedState;
- (void)configureWithHome:(id)a3;
- (void)handleHomeRemovedNotification:(id)a3;
- (void)handlePrimaryResidentUpdateNotification:(id)a3;
- (void)handlePrimaryResidentUpdated:(id)a3 reason:(id)a4;
- (void)handleResidentDeviceEnabledStateChangeNotification:(id)a3;
- (void)handleResidentDeviceManagerUpdateResidentNotification:(id)a3;
- (void)persistState:(id)a3;
@end

@implementation HMDHomePrimaryResidentInitialReachabilityManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)clearPersistedState
{
  v3 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v5 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self dataSource];
  v4 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self key];
  [v5 persistDataValueToNoBackupStore:0 withKey:v4];
}

- (void)persistState:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v15 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];
  v7 = v15;
  if (v6)
  {
    v8 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self dataSource];
    v9 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self key];
    [v8 persistDataValueToNoBackupStore:v6 withKey:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to persist primary resident reachability state, encoding failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDResidentReachabilityState)persistedState
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self dataSource];
  v5 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self key];
  v6 = [v4 dataValueFromNoBackupStoreWithKey:v5];

  if (v6)
  {
    v16 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v16];
    v8 = v16;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode primary resident reachability state: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)handlePrimaryResidentUpdated:(id)a3 reason:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self persistedState];
  v10 = [(HMDResidentReachabilityState *)v9 residentDeviceIdentifier];
  v11 = [v6 identifier];
  v12 = HMFEqualObjects();

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v29 = 138543874;
      v30 = v16;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping primary resident update for reason: %@, because resident device identifier found in peristed state: %@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else if (v6)
  {
    v17 = [HMDResidentReachabilityState alloc];
    v18 = [v6 identifier];
    v19 = -[HMDResidentReachabilityState initWithResidentDeviceIdentifier:isReachable:](v17, "initWithResidentDeviceIdentifier:isReachable:", v18, [v6 isReachable]);

    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v29 = 138543874;
      v30 = v23;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Persisting primary resident reachability state for reason %@:%@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDHomePrimaryResidentInitialReachabilityManager *)v21 persistState:v19];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v27;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Clearing persisted reachability state for reason: %@ because primary resident is nil", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDHomePrimaryResidentInitialReachabilityManager *)v25 clearPersistedState];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedNotification:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self home];
  v6 = [v5 residentDeviceManager];
  v7 = [v6 isCurrentDeviceAvailableResident];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not handling home removed notification because current device is a resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = [v4 userInfo];
    v13 = [v12 objectForKey:@"HMDHomeNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Received notification home removed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [v5 uuid];
    v21 = [v15 uuid];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      v23 = [(HMDHomePrimaryResidentInitialReachabilityManager *)v17 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDHomePrimaryResidentInitialReachabilityManager_handleHomeRemovedNotification___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = v17;
      dispatch_async(v23, block);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __82__HMDHomePrimaryResidentInitialReachabilityManager_handleHomeRemovedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Clearing persisted reachability state because home was removed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) clearPersistedState];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleResidentDeviceEnabledStateChangeNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 isCurrentDevice])
  {
    if ([v7 isEnabled])
    {
      v8 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__HMDHomePrimaryResidentInitialReachabilityManager_handleResidentDeviceEnabledStateChangeNotification___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(v8, block);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Not handling resident enabled state change, because it is not for current device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __103__HMDHomePrimaryResidentInitialReachabilityManager_handleResidentDeviceEnabledStateChangeNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Clearing persisted reachability state because current device became resident", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) clearPersistedState];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleResidentDeviceManagerUpdateResidentNotification:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];
  if ([v6 conformsToProtocol:&unk_283F5BAF0])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if ([v8 isCurrentDeviceAvailableResident])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Not handling resident update notification because current device is a resident", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = [v4 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v8 primaryResidentDevice];
    v18 = [v17 isEqual:v16];

    if (v18)
    {
      v19 = [HMDResidentReachabilityState alloc];
      v20 = [(HMDResidentReachabilityState *)v16 identifier];
      v21 = [(HMDResidentReachabilityState *)v19 initWithResidentDeviceIdentifier:v20 isReachable:[(HMDResidentReachabilityState *)v16 isReachable]];

      v22 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self persistedState];
      v23 = [v22 isEqual:v21];

      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v23)
      {
        if (v27)
        {
          v28 = HMFGetLogIdentifier();
          v29 = [(HMDHomePrimaryResidentInitialReachabilityManager *)v25 persistedState];
          v36 = 138543874;
          v37 = v28;
          v38 = 2112;
          v39 = v29;
          v40 = 2112;
          v41 = v21;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Not handling resident update notification because peristed state: %@ is equal to state: %@", &v36, 0x20u);
        }

        objc_autoreleasePoolPop(v24);
      }

      else
      {
        if (v27)
        {
          v34 = HMFGetLogIdentifier();
          v36 = 138543618;
          v37 = v34;
          v38 = 2112;
          v39 = v21;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Persisting primary resident reachability state: %@", &v36, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        [(HMDHomePrimaryResidentInitialReachabilityManager *)v25 persistState:v21];
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        v36 = 138543618;
        v37 = v33;
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Not handling resident update notification because it is for non-primary resident device: %@", &v36, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentUpdateNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];
  if ([v6 conformsToProtocol:&unk_283F5BAF0])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if ([v8 isCurrentDeviceAvailableResident])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Not handling primary resident updated notification because current device is a resident", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = [v4 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [(HMDHomePrimaryResidentInitialReachabilityManager *)self handlePrimaryResidentUpdated:v16 reason:@"Notification"];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)configureWithHome:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDHomePrimaryResidentInitialReachabilityManager *)self setHome:v4];
  v6 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self notificationCenter];
  v7 = [v4 residentDeviceManager];
  [v6 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v7];

  v8 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self notificationCenter];
  v9 = [v4 residentDeviceManager];
  [v8 addObserver:self selector:sel_handleResidentDeviceManagerUpdateResidentNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v9];

  v10 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self notificationCenter];
  [v10 addObserver:self selector:sel_handleResidentDeviceEnabledStateChangeNotification_ name:@"HMDResidentDeviceEnabledStateChangedNotification" object:0];

  v11 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self notificationCenter];
  v12 = [v4 homeManager];
  [v11 addObserver:self selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:v12];

  v13 = [v4 residentDeviceManager];
  if ([v13 isCurrentDeviceAvailableResident])
  {
    v14 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self persistedState];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Clearing persisted state since current device this device is enabled as a resident", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDHomePrimaryResidentInitialReachabilityManager *)v16 clearPersistedState];
    }
  }

  else
  {
    v19 = [v13 primaryResidentDevice];
    [(HMDHomePrimaryResidentInitialReachabilityManager *)self handlePrimaryResidentUpdated:v19 reason:@"Configure"];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (NSNumber)initialReachability
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self persistedState];
  if (v4)
  {
    v5 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self home];
    v6 = [v5 residentDeviceManager];
    v7 = [v6 primaryResidentUUID];

    v8 = [v4 residentDeviceIdentifier];
    LOBYTE(v6) = [v7 isEqual:v8];

    if (v6)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isReachable")}];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v17;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Returning reachability as nil, primary resident UUID: %@ not found in persisted state: %@", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Returning reachability as nil, no persisted state", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDHomePrimaryResidentInitialReachabilityManager)initWithUUID:(id)a3 workQueue:(id)a4 notificationCenter:(id)a5 dataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = HMDHomePrimaryResidentInitialReachabilityManager;
  v15 = [(HMDHomePrimaryResidentInitialReachabilityManager *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataSource, a6);
    objc_storeStrong(&v16->_uuid, a3);
    v17 = [v11 UUIDString];
    v18 = [v17 stringByAppendingString:@"-primary-resident-reachability-state"];
    key = v16->_key;
    v16->_key = v18;

    objc_storeStrong(&v16->_notificationCenter, a5);
    objc_storeStrong(&v16->_workQueue, a4);
  }

  return v16;
}

- (HMDHomePrimaryResidentInitialReachabilityManager)initWithUUID:(id)a3 workQueue:(id)a4
{
  v6 = MEMORY[0x277CCAB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultCenter];
  v10 = objc_alloc_init(HMDHomePrimaryResidentInitialReachabilityManagerDataSource);
  v11 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self initWithUUID:v8 workQueue:v7 notificationCenter:v9 dataSource:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_257128 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_257128, &__block_literal_global_257129);
  }

  v3 = logCategory__hmf_once_v5_257130;

  return v3;
}

void __63__HMDHomePrimaryResidentInitialReachabilityManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_257130;
  logCategory__hmf_once_v5_257130 = v1;
}

@end