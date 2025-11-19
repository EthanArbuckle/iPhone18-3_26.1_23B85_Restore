@interface HMDLastSeenStatusManager
+ (id)logCategory;
- (BOOL)isSyncNeeded;
- (HMDHome)home;
- (HMDLastSeenStatusManager)initWithHome:(id)a3 queue:(id)a4;
- (id)logIdentifier;
- (void)_syncAllLastSeenData;
- (void)_updatePenaltyBox;
- (void)runTransactionsForHome:(id)a3;
- (void)start;
- (void)stop;
- (void)syncLastSeenStateForAccessory:(id)a3;
@end

@implementation HMDLastSeenStatusManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDLastSeenStatusManager *)self home];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 logIdentifier];
  v5 = [v3 stringWithFormat:@"%@", v4];

  return v5;
}

- (void)_syncAllLastSeenData
{
  v43 = *MEMORY[0x277D85DE8];
  [(HMDLastSeenStatusManager *)self setIsSyncScheduled:0];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Check if last seen data needs to be synced", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDLastSeenStatusManager *)v4 home];
  v8 = v7;
  if (!v7 || ([v7 isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v4;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@No longer primary, not syncing last seen data", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (![(HMDLastSeenStatusManager *)v4 isStarted])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v4;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Last seen status manager not started", buf, 0xCu);
    }

LABEL_12:

    objc_autoreleasePoolPop(v14);
    goto LABEL_13;
  }

  os_unfair_recursive_lock_lock_with_options();
  [(HMDLastSeenStatusManager *)v4 _updatePenaltyBox];
  v9 = objc_autoreleasePoolPush();
  v10 = v4;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMDLastSeenStatusManager *)v10 penaltyBoxAccessoryUUIDs];
    *buf = 138543618;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessories in penalty box: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if ([(HMDLastSeenStatusManager *)v10 isSyncNeeded])
  {
    os_unfair_recursive_lock_unlock();
    [(HMDLastSeenStatusManager *)v10 runTransactionsForHome:v8];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v10;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Sync not needed at this time", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [(HMDLastSeenStatusManager *)v21 penaltyBoxAccessoryUUIDs];
    if ([v24 count])
    {
      v25 = [(HMDLastSeenStatusManager *)v21 enableDelayedSync];

      if (v25)
      {
        [(HMDLastSeenStatusManager *)v21 setIsSyncScheduled:1];
        v26 = objc_autoreleasePoolPush();
        v27 = v21;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [(HMDLastSeenStatusManager *)v27 penaltyBoxAccessoryUUIDs];
          v31 = [(HMDLastSeenStatusManager *)v27 pendingSyncAccessoryUUIDs];
          *buf = 138544130;
          v36 = v29;
          v37 = 2048;
          v38 = 0x408C200000000000;
          v39 = 2112;
          v40 = v30;
          v41 = 2112;
          v42 = v31;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Scheduling next sync check after %0.2f secs, penalty box: %@, pending sync: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v26);
        v32 = dispatch_time(0, 900000000000);
        v33 = [(HMDLastSeenStatusManager *)v27 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__HMDLastSeenStatusManager__syncAllLastSeenData__block_invoke;
        block[3] = &unk_27868A728;
        block[4] = v27;
        dispatch_after(v32, v33, block);
      }
    }

    else
    {
    }

    os_unfair_recursive_lock_unlock();
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updatePenaltyBox
{
  v40 = *MEMORY[0x277D85DE8];
  HMFUptime();
  v4 = v3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(HMDLastSeenStatusManager *)self penaltyBoxAccessoryUUIDs];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v30;
    *&v8 = 138543874;
    v27 = v8;
    v28 = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        v13 = [(HMDLastSeenStatusManager *)self lastSeenRequestTime];
        v14 = [v13 objectForKeyedSubscript:v12];
        [v14 doubleValue];
        v16 = v4 - v15;

        if (v16 >= 900.0)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v20 = v9;
            v21 = v10;
            v22 = v6;
            v24 = v23 = v5;
            *buf = v27;
            v34 = v24;
            v35 = 2112;
            v36 = v12;
            v37 = 2048;
            v38 = v16;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing accessory with UUID: %@ from penalty box, %0.2f secs since last sync request", buf, 0x20u);

            v5 = v23;
            v6 = v22;
            v10 = v21;
            v9 = v20;
            self = v28;
          }

          objc_autoreleasePoolPop(v17);
          [v5 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v9);
  }

  v25 = [(HMDLastSeenStatusManager *)self penaltyBoxAccessoryUUIDs];
  [v25 minusSet:v5];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)runTransactionsForHome:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43 = self;
  os_unfair_recursive_lock_lock_with_options();
  v39 = v4;
  v5 = [v4 backingStore];
  v6 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
  v40 = [v5 transaction:@"LastSeenDataSync" options:v6];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = [v39 accessories];
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v9)
  {
    v42 = *v46;
    obj = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = [(HMDLastSeenStatusManager *)v43 pendingSyncAccessoryUUIDs];
        v13 = [v11 uuid];
        v14 = [v12 containsObject:v13];

        if (v14)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = v43;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v19 = [v11 shortDescription];
            v20 = [v11 lastSeenDate];
            v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "isLowBattery")}];
            *buf = 138544130;
            v50 = v18;
            v51 = 2112;
            v52 = v19;
            v53 = 2112;
            v54 = v20;
            v55 = 2112;
            v56 = v21;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Syncing last seen data for accessory: %@, last seen date: %@, low battery: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v15);
          v22 = [v11 transactionWithObjectChangeType:2];
          v23 = [v11 lastSeenDate];
          [v22 setLastSeenDate:v23];

          v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "isLowBattery")}];
          [v22 setLowBattery:v24];

          [v40 add:v22];
          v25 = [(HMDLastSeenStatusManager *)v16 pendingSyncAccessoryUUIDs];
          v26 = [v11 uuid];
          [v25 removeObject:v26];

          v8 = 1;
        }
      }

      v7 = obj;
      v9 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v9);
  }

  v27 = [(HMDLastSeenStatusManager *)v43 pendingSyncAccessoryUUIDs];
  [v27 removeAllObjects];

  if (v8)
  {
    [v40 run];
    [v39 saveToCurrentAccountWithReason:*MEMORY[0x277CD1FA8]];
  }

  os_unfair_recursive_lock_unlock();
  v28 = [(HMDLastSeenStatusManager *)v43 penaltyBoxAccessoryUUIDs];
  if ([v28 count])
  {
    v29 = [(HMDLastSeenStatusManager *)v43 enableDelayedSync];

    if (v29)
    {
      [(HMDLastSeenStatusManager *)v43 setIsSyncScheduled:1];
      v30 = objc_autoreleasePoolPush();
      v31 = v43;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [(HMDLastSeenStatusManager *)v31 penaltyBoxAccessoryUUIDs];
        v35 = [(HMDLastSeenStatusManager *)v31 pendingSyncAccessoryUUIDs];
        *buf = 138544130;
        v50 = v33;
        v51 = 2048;
        v52 = 0x408C200000000000;
        v53 = 2112;
        v54 = v34;
        v55 = 2112;
        v56 = v35;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Scheduling next sync check after %0.2f secs, penalty box: %@, pending sync: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v30);
      v36 = dispatch_time(0, 900000000000);
      v37 = [(HMDLastSeenStatusManager *)v31 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__HMDLastSeenStatusManager_runTransactionsForHome___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = v31;
      dispatch_after(v36, v37, block);
    }
  }

  else
  {
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSyncNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(HMDLastSeenStatusManager *)self pendingSyncAccessoryUUIDs];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(HMDLastSeenStatusManager *)self penaltyBoxAccessoryUUIDs];
        LODWORD(v8) = [v9 containsObject:v8];

        if (!v8)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)syncLastSeenStateForAccessory:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDLastSeenStatusManager *)self home];
  v6 = v5;
  if (v5 && [v5 isCurrentDeviceConfirmedPrimaryResident])
  {
    v7 = [(HMDLastSeenStatusManager *)self isStarted];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        v45 = [v4 shortDescription];
        v12 = [v4 lastSeenDate];
        v13 = [MEMORY[0x277CBEAA8] distantPast];
        v14 = [v12 isEqual:v13];
        if (v14)
        {
          v15 = @"distant past";
        }

        else
        {
          v15 = [v4 lastSeenDate];
        }

        [v4 isLowBattery];
        v17 = HMFBooleanToString();
        *buf = 138544130;
        v47 = v44;
        v48 = 2112;
        v49 = v45;
        v50 = 2112;
        v51 = *&v15;
        v52 = 2112;
        v53 = v17;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received request to sync last seen state for accessory: %@ with last seen date: %@, low battery: %@", buf, 0x2Au);
        if ((v14 & 1) == 0)
        {
        }
      }

      objc_autoreleasePoolPop(v8);
      os_unfair_recursive_lock_lock_with_options();
      v18 = [(HMDLastSeenStatusManager *)v9 pendingSyncAccessoryUUIDs];
      v19 = [v4 uuid];
      [v18 addObject:v19];

      v20 = [(HMDLastSeenStatusManager *)v9 lastSeenRequestTime];
      v21 = [v4 uuid];
      v22 = [v20 objectForKeyedSubscript:v21];

      if (v22)
      {
        HMFUptime();
        v24 = v23;
        v25 = [(HMDLastSeenStatusManager *)v9 lastSeenRequestTime];
        v26 = [v4 uuid];
        v27 = [v25 objectForKeyedSubscript:v26];
        [v27 doubleValue];
        v29 = v28;

        v30 = v24 - v29;
        if (v30 < 900.0)
        {
          v31 = objc_autoreleasePoolPush();
          v32 = v9;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            v35 = [v4 uuid];
            *buf = 138543874;
            v47 = v34;
            v48 = 2112;
            v49 = v35;
            v50 = 2048;
            v51 = v30;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Adding accessory with UUID: %@ to penalty box, last sync request %0.2f secs ago", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v31);
          v36 = [(HMDLastSeenStatusManager *)v32 penaltyBoxAccessoryUUIDs];
          v37 = [v4 uuid];
          [v36 addObject:v37];
        }
      }

      v38 = objc_alloc(MEMORY[0x277CCABB0]);
      HMFUptime();
      v39 = [v38 initWithDouble:?];
      v40 = [(HMDLastSeenStatusManager *)v9 lastSeenRequestTime];
      v41 = [v4 uuid];
      [v40 setObject:v39 forKeyedSubscript:v41];

      os_unfair_recursive_lock_unlock();
      if (![(HMDLastSeenStatusManager *)v9 isSyncScheduled])
      {
        [(HMDLastSeenStatusManager *)v9 _syncAllLastSeenData];
        goto LABEL_24;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = v9;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v42;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Sync already scheduled, added request to list", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v16;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Last seen status manager not started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

LABEL_24:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping last seen data sync manager", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(HMDLastSeenStatusManager *)v4 pendingSyncAccessoryUUIDs];
  [v7 removeAllObjects];

  v8 = [(HMDLastSeenStatusManager *)v4 penaltyBoxAccessoryUUIDs];
  [v8 removeAllObjects];

  v9 = [(HMDLastSeenStatusManager *)v4 lastSeenRequestTime];
  [v9 removeAllObjects];

  os_unfair_recursive_lock_unlock();
  [(HMDLastSeenStatusManager *)v4 setIsStarted:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting last seen data sync manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDLastSeenStatusManager *)v4 home];
  v8 = v7;
  if (v7 && ([v7 isCurrentDeviceConfirmedPrimaryResident] & 1) != 0)
  {
    [(HMDLastSeenStatusManager *)v4 setIsStarted:1];
    os_unfair_recursive_lock_lock_with_options();
    if ([(HMDLastSeenStatusManager *)v4 enableDelayedSync])
    {
      [(HMDLastSeenStatusManager *)v4 setIsSyncScheduled:1];
      v9 = objc_autoreleasePoolPush();
      v10 = v4;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v12;
        v23 = 2048;
        v24 = 0x4082C00000000000;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Scheduling first sync check after %0.2f secs on start of last seen status manager", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = dispatch_time(0, 600000000000);
      v14 = [(HMDLastSeenStatusManager *)v10 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__HMDLastSeenStatusManager_start__block_invoke;
      block[3] = &unk_27868A728;
      block[4] = v10;
      dispatch_after(v13, v14, block);
    }

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to start last seen data sync manager", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (HMDLastSeenStatusManager)initWithHome:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HMDLastSeenStatusManager;
  v8 = [(HMDLastSeenStatusManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_home, v6);
    objc_storeStrong(&v9->_workQueue, a4);
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingSyncAccessoryUUIDs = v9->_pendingSyncAccessoryUUIDs;
    v9->_pendingSyncAccessoryUUIDs = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    penaltyBoxAccessoryUUIDs = v9->_penaltyBoxAccessoryUUIDs;
    v9->_penaltyBoxAccessoryUUIDs = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastSeenRequestTime = v9->_lastSeenRequestTime;
    v9->_lastSeenRequestTime = v14;

    *&v9->_isSyncScheduled = 0;
    v9->_enableDelayedSync = 1;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22, &__block_literal_global_10015);
  }

  v3 = logCategory__hmf_once_v23;

  return v3;
}

void __39__HMDLastSeenStatusManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v23;
  logCategory__hmf_once_v23 = v1;
}

@end