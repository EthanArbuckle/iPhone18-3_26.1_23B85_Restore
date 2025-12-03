@interface HMDHomeManagerHH2SharedUserLastSyncManager
+ (id)shortDescription;
- (BOOL)_shouldExpire;
- (BOOL)_shouldPushNow;
- (BOOL)isManagingUserWithMergeID:(id)d;
- (HMDHomeManagerHH2SharedUserLastSyncManager)initWithHomeManager:(id)manager archivePaths:(id)paths;
- (double)_expireInterval;
- (double)_interval;
- (double)_nextInterval;
- (double)_pushInterval;
- (id)shortDescription;
- (void)_pushAllUserSyncData;
- (void)_removeAllUserLastSyncData;
- (void)_scheduleNextPush;
- (void)configure;
- (void)removeUserLastSyncData:(id)data;
- (void)scheduleNextPush;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDHomeManagerHH2SharedUserLastSyncManager

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)timerDidFire:(id)fire
{
  v16 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    Property = objc_getProperty(self, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == fireCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Timer fired, pushing last sync to shared users", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    if (self)
    {
      workQueue = selfCopy->_workQueue;
    }

    else
    {
      workQueue = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HMDHomeManagerHH2SharedUserLastSyncManager_timerDidFire___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(workQueue, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_pushAllUserSyncData
{
  v40 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    homeToUserMap = self->_homeToUserMap;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    homeToUserMap = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
  }

  obj = homeToUserMap;
  v20 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v20)
  {
    v19 = *v31;
    do
    {
      v21 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v30 + 1) + 8 * v21);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        if (self)
        {
          v5 = self->_homeToUserMap;
        }

        else
        {
          v5 = 0;
        }

        v22 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:v4];
        v6 = [v22 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v6)
        {
          v23 = *v27;
          do
          {
            v7 = 0;
            do
            {
              if (*v27 != v23)
              {
                objc_enumerationMutation(v22);
              }

              v8 = *(*(&v26 + 1) + 8 * v7);
              v9 = objc_autoreleasePoolPush();
              selfCopy = self;
              v11 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = HMFGetLogIdentifier();
                user = [v8 user];
                *buf = 138543618;
                v35 = v12;
                v36 = 2112;
                v37 = user;
                _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Pushing last sync for %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v9);
              objc_initWeak(buf, selfCopy);
              if (self)
              {
                WeakRetained = objc_loadWeakRetained(&selfCopy->_homeManager);
              }

              else
              {
                WeakRetained = 0;
              }

              v24[0] = MEMORY[0x277D85DD0];
              v24[1] = 3221225472;
              v24[2] = __66__HMDHomeManagerHH2SharedUserLastSyncManager__pushAllUserSyncData__block_invoke;
              v24[3] = &unk_278681C30;
              objc_copyWeak(&v25, buf);
              v24[4] = v8;
              [WeakRetained pushChangesForHH2SharedUserLastSync:v8 completion:v24];

              objc_destroyWeak(&v25);
              objc_destroyWeak(buf);
              ++v7;
            }

            while (v6 != v7);
            v15 = [v22 countByEnumeratingWithState:&v26 objects:v38 count:16];
            v6 = v15;
          }

          while (v15);
        }

        ++v21;
      }

      while (v21 != v20);
      v16 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      v20 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __66__HMDHomeManagerHH2SharedUserLastSyncManager__pushAllUserSyncData__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained removeUserLastSyncData:*(a1 + 32)];
  }

  else
  {
    [WeakRetained scheduleNextPush];
  }
}

- (void)removeUserLastSyncData:(id)data
{
  dataCopy = data;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDHomeManagerHH2SharedUserLastSyncManager_removeUserLastSyncData___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(workQueue, v7);
}

void __69__HMDHomeManagerHH2SharedUserLastSyncManager_removeUserLastSyncData___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) user];
    v7 = [v6 uuid];
    v25 = 138543618;
    v26 = v5;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing user after sync %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) removeArchiveFromLocalDisk];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[5];
  }

  v9 = *(a1 + 40);
  v10 = v8;
  v11 = [v9 homeUUID];
  v12 = [v10 objectForKeyedSubscript:v11];

  [v12 removeObject:*(a1 + 40)];
  if (![v12 count])
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = v13[5];
    }

    v14 = *(a1 + 40);
    v15 = v13;
    v16 = [v14 homeUUID];
    [v15 setObject:0 forKeyedSubscript:v16];
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 40);
  }

  else
  {
    v18 = 0;
  }

  if (![v18 count])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Last user archive removed", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = *(a1 + 32);
    if (v23)
    {
      *(v23 + 12) = 0;
    }
  }

  [*(a1 + 32) _scheduleNextPush];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_removeAllUserLastSyncData
{
  v38 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    homeToUserMap = self->_homeToUserMap;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    homeToUserMap = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
  }

  obj = homeToUserMap;
  v21 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v21)
  {
    v20 = *v29;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * v4);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v22 = v4;
        if (self)
        {
          v6 = self->_homeToUserMap;
        }

        else
        {
          v6 = 0;
        }

        v23 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v5];
        v7 = [v23 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(v23);
              }

              v11 = *(*(&v24 + 1) + 8 * i);
              v12 = objc_autoreleasePoolPush();
              selfCopy = self;
              v14 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = HMFGetLogIdentifier();
                user = [v11 user];
                *buf = 138543618;
                v33 = v15;
                v34 = 2112;
                v35 = user;
                _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing last sync for %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v12);
              [v11 removeArchiveFromLocalDisk];
            }

            v8 = [v23 countByEnumeratingWithState:&v24 objects:v36 count:16];
          }

          while (v8);
        }

        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      v21 = v17;
    }

    while (v17);
  }

  if (self)
  {
    objc_storeStrong(&self->_homeToUserMap, 0);
    self->_valid = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleNextPush
{
  selfCopy = self;
  v26 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = self->_workQueue;
  }

  dispatch_assert_queue_V2(&self->super.super);
  v3 = objc_autoreleasePoolPush();
  v4 = selfCopy;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Scheduling last push to shared users after migration.", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HMDHomeManagerHH2SharedUserLastSyncManager *)v4 _shouldExpire])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v4;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Pushes have expired, removing last user sync data.", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDHomeManagerHH2SharedUserLastSyncManager *)v8 _removeAllUserLastSyncData];
  }

  if ([(HMDHomeManagerHH2SharedUserLastSyncManager *)v4 isValid])
  {
    v11 = objc_alloc(MEMORY[0x277D0F920]);
    [(HMDHomeManagerHH2SharedUserLastSyncManager *)v4 _nextInterval];
    v12 = [v11 initWithTimeInterval:1 options:?];
    v14 = v12;
    if (selfCopy)
    {
      objc_setProperty_atomic(v4, v13, v12, 64);

      [objc_getProperty(v4 v15];
      Property = objc_getProperty(v4, v16, 64, 1);
    }

    else
    {

      [0 setDelegate:0];
      Property = 0;
    }

    [Property resume];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v4;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@No longer valid, not scheduling another push", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    if (selfCopy)
    {
      objc_setProperty_atomic(v19, v22, 0, 64);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)scheduleNextPush
{
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDHomeManagerHH2SharedUserLastSyncManager_scheduleNextPush__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (double)_nextInterval
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    dispatch_assert_queue_V2(0);
LABEL_7:
    _HMFPreconditionFailure();
  }

  dispatch_assert_queue_V2(self->_workQueue);
  if (!objc_getProperty(self, v3, 56, 1))
  {
    goto LABEL_7;
  }

  [(HMDHomeManagerHH2SharedUserLastSyncManager *)self _interval];
  v5 = v4;
  [objc_getProperty(self v6];
  v8 = -(v7 - ((v7 / v5) + 1) * v5);
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Determined next interval to be %f from now", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_shouldExpire
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    if (objc_getProperty(self, v3, 56, 1))
    {
      [(HMDHomeManagerHH2SharedUserLastSyncManager *)self _expireInterval];
      v5 = v4;
      [objc_getProperty(self v6];
      result = v7 >= v5;
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@No creationDate determined, cannot determine pushes have expired", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  result = 1;
LABEL_8:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_shouldPushNow
{
  v35 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    if (objc_getProperty(self, v3, 56, 1))
    {
      [(HMDHomeManagerHH2SharedUserLastSyncManager *)self _interval];
      v5 = v4;
      [(HMDHomeManagerHH2SharedUserLastSyncManager *)self _pushInterval];
      v7 = v6;
      [objc_getProperty(self v8];
      v10 = v5 * (v9 / v5);
      v12 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:objc_getProperty(self sinceDate:{v11, 56, 1), v10}];
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:objc_getProperty(self sinceDate:{v13, 56, 1), v7 + v10}];
      date = [MEMORY[0x277CBEAA8] date];
      if ([date compare:v12] == 1 && objc_msgSend(date, "compare:", v14) == -1)
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        v20 = 1;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          v29 = 138543874;
          v30 = v22;
          v31 = 2112;
          v32 = v12;
          v33 = 2112;
          v34 = v14;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Pushing now because current time falls between start of interval, %@, and end of push interval, %@", &v29, 0x20u);
        }
      }

      else
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v29 = 138543874;
          v30 = v19;
          v31 = 2112;
          v32 = v12;
          v33 = 2112;
          v34 = v14;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Not pushing now because does not fall between start of interval, %@, and end of push interval, %@", &v29, 0x20u);
        }

        v20 = 0;
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@No creationDate determined, cannot determine if push can start now", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v20 = 0;
LABEL_15:
  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

- (double)_pushInterval
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"hh2SharedUserLastSyncPushInterval"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (double)_expireInterval
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"hh2SharedUserLastSyncExpire"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (double)_interval
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"hh2SharedUserLastSyncInterval"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)isManagingUserWithMergeID:(id)d
{
  if (self)
  {
    self = self->_managedMergeIDs;
  }

  return [(HMDHomeManagerHH2SharedUserLastSyncManager *)self containsObject:d];
}

- (void)configure
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v57 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Determining pre-migration last users sync data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  if (selfCopy)
  {
    userLastSyncs = selfCopy->_userLastSyncs;
  }

  else
  {
    userLastSyncs = 0;
  }

  v8 = userLastSyncs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v52 objects:v60 count:16];
  v11 = &OBJC_IVAR___HMDHomeActivityStateManagerDataSource__queue;
  if (v9)
  {
    v12 = v9;
    v13 = *v53;
    *&v10 = 138543618;
    v47 = v10;
    v49 = *v53;
    v48 = v8;
    do
    {
      v14 = 0;
      v50 = v12;
      do
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v52 + 1) + 8 * v14);
        [v15 configure];
        if ([v15 isValid])
        {
          user = [v15 user];
          accountIdentifier = [user accountIdentifier];
          senderCorrelationIdentifier = [accountIdentifier senderCorrelationIdentifier];

          if (senderCorrelationIdentifier)
          {
            if (selfCopy)
            {
              managedMergeIDs = selfCopy->_managedMergeIDs;
            }

            else
            {
              managedMergeIDs = 0;
            }

            [(NSMutableSet *)managedMergeIDs addObject:senderCorrelationIdentifier];
          }

          if (selfCopy)
          {
            v20 = *(&selfCopy->super.super.isa + v11[633]);
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;
          homeUUID = [v15 homeUUID];
          array = [v21 objectForKeyedSubscript:homeUUID];

          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            if (selfCopy)
            {
              v24 = *(&selfCopy->super.super.isa + v11[633]);
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;
            homeUUID2 = [v15 homeUUID];
            [v25 setObject:array forKeyedSubscript:homeUUID2];
          }

          [array addObject:v15];
          if (!selfCopy || !objc_getProperty(selfCopy, v27, 56, 1))
          {
            v28 = objc_autoreleasePoolPush();
            v29 = selfCopy;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = HMFGetLogIdentifier();
              creationDate = [v15 creationDate];
              *buf = v47;
              v57 = v31;
              v58 = 2112;
              v59 = creationDate;
              _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Using creationDate from %@", buf, 0x16u);

              v13 = v49;
              v8 = v48;
            }

            objc_autoreleasePoolPop(v28);
            creationDate2 = [v15 creationDate];
            if (selfCopy)
            {
              objc_setProperty_atomic(v29, v33, creationDate2, 56);
            }

            v11 = &OBJC_IVAR___HMDHomeActivityStateManagerDataSource__queue;
          }

          v12 = v50;
        }

        else
        {
          v35 = objc_autoreleasePoolPush();
          v36 = selfCopy;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543362;
            v57 = v38;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Problem unarchiving last user sync data, removing archive", buf, 0xCu);

            v13 = v49;
          }

          objc_autoreleasePoolPop(v35);
          [v15 removeArchiveFromLocalDisk];
        }

        ++v14;
      }

      while (v12 != v14);
      v39 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v52 objects:v60 count:16];
      v12 = v39;
    }

    while (v39);
  }

  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_userLastSyncs, 0);
    v40 = *(&selfCopy->super.super.isa + v11[633]);
  }

  else
  {
    v40 = 0;
  }

  if ([v40 count])
  {
    if (selfCopy)
    {
      selfCopy->_valid = 1;
      workQueue = selfCopy->_workQueue;
    }

    else
    {
      workQueue = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMDHomeManagerHH2SharedUserLastSyncManager_configure__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v45;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@No pre-migration last users sync data found", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
  }

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __55__HMDHomeManagerHH2SharedUserLastSyncManager_configure__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _shouldPushNow];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Determined within push window, start pushing to shared users now", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) _pushAllUserSyncData];
  }

  else
  {
    if (v6)
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Not within push window, scheduling pushing to shared users", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) _scheduleNextPush];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDHomeManagerHH2SharedUserLastSyncManager)initWithHomeManager:(id)manager archivePaths:(id)paths
{
  v36 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  pathsCopy = paths;
  v34.receiver = self;
  v34.super_class = HMDHomeManagerHH2SharedUserLastSyncManager;
  v8 = [(HMDHomeManagerHH2SharedUserLastSyncManager *)&v34 init];
  if (v8)
  {
    v9 = HMDispatchQueueNameString();
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    workQueue = v8->_workQueue;
    v8->_workQueue = v12;

    objc_storeWeak(&v8->_homeManager, managerCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    homeToUserMap = v8->_homeToUserMap;
    v8->_homeToUserMap = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    userLastSyncs = v8->_userLastSyncs;
    v8->_userLastSyncs = array;

    v18 = [MEMORY[0x277CBEB58] set];
    managedMergeIDs = v8->_managedMergeIDs;
    v8->_managedMergeIDs = v18;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = pathsCopy;
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        v24 = 0;
        do
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v30 + 1) + 8 * v24);
          v26 = [HMDHomeManagerHH2SharedUserLastSync alloc];
          v27 = [(HMDHomeManagerHH2SharedUserLastSync *)v26 initWithArchivePath:v25, v30];
          [(NSMutableArray *)v8->_userLastSyncs addObject:v27];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v22);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end