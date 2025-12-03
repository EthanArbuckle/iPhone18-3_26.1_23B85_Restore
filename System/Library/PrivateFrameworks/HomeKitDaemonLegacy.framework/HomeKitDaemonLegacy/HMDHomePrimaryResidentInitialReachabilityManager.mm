@interface HMDHomePrimaryResidentInitialReachabilityManager
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomePrimaryResidentInitialReachabilityManager)initWithUUID:(id)d workQueue:(id)queue;
- (HMDHomePrimaryResidentInitialReachabilityManager)initWithUUID:(id)d workQueue:(id)queue notificationCenter:(id)center dataSource:(id)source;
- (HMDResidentReachabilityState)persistedState;
- (NSNumber)initialReachability;
- (id)logIdentifier;
- (void)clearPersistedState;
- (void)configureWithHome:(id)home;
- (void)handleHomeRemovedNotification:(id)notification;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)handlePrimaryResidentUpdated:(id)updated reason:(id)reason;
- (void)handleResidentDeviceEnabledStateChangeNotification:(id)notification;
- (void)handleResidentDeviceManagerUpdateResidentNotification:(id)notification;
- (void)persistState:(id)state;
@end

@implementation HMDHomePrimaryResidentInitialReachabilityManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)clearPersistedState
{
  workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDHomePrimaryResidentInitialReachabilityManager *)self dataSource];
  v4 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self key];
  [dataSource persistDataValueToNoBackupStore:0 withKey:v4];
}

- (void)persistState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:stateCopy requiringSecureCoding:1 error:&v15];
  v7 = v15;
  if (v6)
  {
    dataSource = [(HMDHomePrimaryResidentInitialReachabilityManager *)self dataSource];
    v9 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self key];
    [dataSource persistDataValueToNoBackupStore:v6 withKey:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to persist primary resident reachability state, encoding failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDResidentReachabilityState)persistedState
{
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDHomePrimaryResidentInitialReachabilityManager *)self dataSource];
  v5 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self key];
  v6 = [dataSource dataValueFromNoBackupStoreWithKey:v5];

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
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode primary resident reachability state: %@", buf, 0x16u);
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

- (void)handlePrimaryResidentUpdated:(id)updated reason:(id)reason
{
  v35 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  reasonCopy = reason;
  workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  persistedState = [(HMDHomePrimaryResidentInitialReachabilityManager *)self persistedState];
  residentDeviceIdentifier = [(HMDResidentReachabilityState *)persistedState residentDeviceIdentifier];
  identifier = [updatedCopy identifier];
  v12 = HMFEqualObjects();

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v29 = 138543874;
      v30 = v16;
      v31 = 2112;
      v32 = reasonCopy;
      v33 = 2112;
      v34 = persistedState;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping primary resident update for reason: %@, because resident device identifier found in peristed state: %@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else if (updatedCopy)
  {
    v17 = [HMDResidentReachabilityState alloc];
    identifier2 = [updatedCopy identifier];
    v19 = -[HMDResidentReachabilityState initWithResidentDeviceIdentifier:isReachable:](v17, "initWithResidentDeviceIdentifier:isReachable:", identifier2, [updatedCopy isReachable]);

    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v29 = 138543874;
      v30 = v23;
      v31 = 2112;
      v32 = reasonCopy;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Persisting primary resident reachability state for reason %@:%@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDHomePrimaryResidentInitialReachabilityManager *)selfCopy2 persistState:v19];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v27;
      v31 = 2112;
      v32 = reasonCopy;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Clearing persisted reachability state for reason: %@ because primary resident is nil", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDHomePrimaryResidentInitialReachabilityManager *)selfCopy3 clearPersistedState];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedNotification:(id)notification
{
  v30 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  home = [(HMDHomePrimaryResidentInitialReachabilityManager *)self home];
  residentDeviceManager = [home residentDeviceManager];
  isCurrentDeviceAvailableResident = [residentDeviceManager isCurrentDeviceAvailableResident];

  if (isCurrentDeviceAvailableResident)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Not handling home removed notification because current device is a resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    userInfo = [notificationCopy userInfo];
    v13 = [userInfo objectForKey:@"HMDHomeNotificationKey"];

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
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Received notification home removed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    uuid = [home uuid];
    uuid2 = [v15 uuid];
    v22 = [uuid isEqual:uuid2];

    if (v22)
    {
      workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)selfCopy2 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDHomePrimaryResidentInitialReachabilityManager_handleHomeRemovedNotification___block_invoke;
      block[3] = &unk_279735D00;
      block[4] = selfCopy2;
      dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Clearing persisted reachability state because home was removed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) clearPersistedState];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleResidentDeviceEnabledStateChangeNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
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
      workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__HMDHomePrimaryResidentInitialReachabilityManager_handleResidentDeviceEnabledStateChangeNotification___block_invoke;
      block[3] = &unk_279735D00;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Not handling resident enabled state change, because it is not for current device: %@", buf, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Clearing persisted reachability state because current device became resident", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) clearPersistedState];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleResidentDeviceManagerUpdateResidentNotification:(id)notification
{
  v42 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  object = [notificationCopy object];
  if ([object conformsToProtocol:&unk_2866B8940])
  {
    v7 = object;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if ([v8 isCurrentDeviceAvailableResident])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Not handling resident update notification because current device is a resident", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    userInfo = [notificationCopy userInfo];
    v14 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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

    primaryResidentDevice = [v8 primaryResidentDevice];
    v18 = [primaryResidentDevice isEqual:v16];

    if (v18)
    {
      v19 = [HMDResidentReachabilityState alloc];
      identifier = [(HMDResidentReachabilityState *)v16 identifier];
      v21 = [(HMDResidentReachabilityState *)v19 initWithResidentDeviceIdentifier:identifier isReachable:[(HMDResidentReachabilityState *)v16 isReachable]];

      persistedState = [(HMDHomePrimaryResidentInitialReachabilityManager *)self persistedState];
      v23 = [persistedState isEqual:v21];

      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v23)
      {
        if (v27)
        {
          v28 = HMFGetLogIdentifier();
          persistedState2 = [(HMDHomePrimaryResidentInitialReachabilityManager *)selfCopy2 persistedState];
          v36 = 138543874;
          v37 = v28;
          v38 = 2112;
          v39 = persistedState2;
          v40 = 2112;
          v41 = v21;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Not handling resident update notification because peristed state: %@ is equal to state: %@", &v36, 0x20u);
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
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Persisting primary resident reachability state: %@", &v36, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        [(HMDHomePrimaryResidentInitialReachabilityManager *)selfCopy2 persistState:v21];
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        v36 = 138543618;
        v37 = v33;
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Not handling resident update notification because it is for non-primary resident device: %@", &v36, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  object = [notificationCopy object];
  if ([object conformsToProtocol:&unk_2866B8940])
  {
    v7 = object;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if ([v8 isCurrentDeviceAvailableResident])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Not handling primary resident updated notification because current device is a resident", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    userInfo = [notificationCopy userInfo];
    v14 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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
  uuid = [(HMDHomePrimaryResidentInitialReachabilityManager *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)configureWithHome:(id)home
{
  v23 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDHomePrimaryResidentInitialReachabilityManager *)self setHome:homeCopy];
  notificationCenter = [(HMDHomePrimaryResidentInitialReachabilityManager *)self notificationCenter];
  residentDeviceManager = [homeCopy residentDeviceManager];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

  notificationCenter2 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self notificationCenter];
  residentDeviceManager2 = [homeCopy residentDeviceManager];
  [notificationCenter2 addObserver:self selector:sel_handleResidentDeviceManagerUpdateResidentNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:residentDeviceManager2];

  notificationCenter3 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self notificationCenter];
  [notificationCenter3 addObserver:self selector:sel_handleResidentDeviceEnabledStateChangeNotification_ name:@"HMDResidentDeviceEnabledStateChangedNotification" object:0];

  notificationCenter4 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self notificationCenter];
  homeManager = [homeCopy homeManager];
  [notificationCenter4 addObserver:self selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:homeManager];

  residentDeviceManager3 = [homeCopy residentDeviceManager];
  if ([residentDeviceManager3 isCurrentDeviceAvailableResident])
  {
    persistedState = [(HMDHomePrimaryResidentInitialReachabilityManager *)self persistedState];

    if (persistedState)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Clearing persisted state since current device this device is enabled as a resident", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDHomePrimaryResidentInitialReachabilityManager *)selfCopy clearPersistedState];
    }
  }

  else
  {
    primaryResidentDevice = [residentDeviceManager3 primaryResidentDevice];
    [(HMDHomePrimaryResidentInitialReachabilityManager *)self handlePrimaryResidentUpdated:primaryResidentDevice reason:@"Configure"];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (NSNumber)initialReachability
{
  v26 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomePrimaryResidentInitialReachabilityManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  persistedState = [(HMDHomePrimaryResidentInitialReachabilityManager *)self persistedState];
  if (persistedState)
  {
    home = [(HMDHomePrimaryResidentInitialReachabilityManager *)self home];
    residentDeviceManager = [home residentDeviceManager];
    primaryResidentUUID = [residentDeviceManager primaryResidentUUID];

    residentDeviceIdentifier = [persistedState residentDeviceIdentifier];
    LOBYTE(residentDeviceManager) = [primaryResidentUUID isEqual:residentDeviceIdentifier];

    if (residentDeviceManager)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(persistedState, "isReachable")}];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v17;
        v22 = 2112;
        v23 = primaryResidentUUID;
        v24 = 2112;
        v25 = persistedState;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Returning reachability as nil, primary resident UUID: %@ not found in persisted state: %@", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Returning reachability as nil, no persisted state", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDHomePrimaryResidentInitialReachabilityManager)initWithUUID:(id)d workQueue:(id)queue notificationCenter:(id)center dataSource:(id)source
{
  dCopy = d;
  queueCopy = queue;
  centerCopy = center;
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = HMDHomePrimaryResidentInitialReachabilityManager;
  v15 = [(HMDHomePrimaryResidentInitialReachabilityManager *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataSource, source);
    objc_storeStrong(&v16->_uuid, d);
    uUIDString = [dCopy UUIDString];
    v18 = [uUIDString stringByAppendingString:@"-primary-resident-reachability-state"];
    key = v16->_key;
    v16->_key = v18;

    objc_storeStrong(&v16->_notificationCenter, center);
    objc_storeStrong(&v16->_workQueue, queue);
  }

  return v16;
}

- (HMDHomePrimaryResidentInitialReachabilityManager)initWithUUID:(id)d workQueue:(id)queue
{
  v6 = MEMORY[0x277CCAB98];
  queueCopy = queue;
  dCopy = d;
  defaultCenter = [v6 defaultCenter];
  v10 = objc_alloc_init(HMDHomePrimaryResidentInitialReachabilityManagerDataSource);
  v11 = [(HMDHomePrimaryResidentInitialReachabilityManager *)self initWithUUID:dCopy workQueue:queueCopy notificationCenter:defaultCenter dataSource:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_155668 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_155668, &__block_literal_global_155669);
  }

  v3 = logCategory__hmf_once_v5_155670;

  return v3;
}

uint64_t __63__HMDHomePrimaryResidentInitialReachabilityManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_155670;
  logCategory__hmf_once_v5_155670 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end