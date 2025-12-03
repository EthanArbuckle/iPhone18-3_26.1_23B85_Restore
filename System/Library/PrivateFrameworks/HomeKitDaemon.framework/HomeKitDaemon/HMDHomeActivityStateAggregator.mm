@interface HMDHomeActivityStateAggregator
+ (id)logCategory;
+ (unint64_t)contributorType;
- (BOOL)auditUserMap;
- (BOOL)handleUpdateFromDetector:(id)detector;
- (BOOL)isStateEquivalentForExistingReport:(id)report newReport:(id)newReport;
- (HMDHomeActivityStateAggregator)initWithStorage:(id)storage dataSource:(id)source;
- (HMDHomeActivityStateAggregatorStateChangeDelegate)stateChangeDelegate;
- (NSDate)nextRefreshTimestamp;
- (NSDictionary)rawUserActivityMap;
- (NSDictionary)userActivityMap;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (id)removeActivityReportForUser:(id)user;
- (void)configureWithCompletionHandler:(id)handler;
- (void)notifyAggregatorStateChanged;
@end

@implementation HMDHomeActivityStateAggregator

- (HMDHomeActivityStateAggregatorStateChangeDelegate)stateChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateChangeDelegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  logIdentifier = [dataSource logIdentifier];

  return logIdentifier;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v22 = *MEMORY[0x277D85DE8];
  userActivityMap = [(HMDHomeActivityStateAggregator *)self userActivityMap];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = userActivityMap;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v17}];
        v12 = [v11 description];
        uUIDString = [v10 UUIDString];
        [dictionary setObject:v12 forKeyedSubscript:uUIDString];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary2 setObject:dictionary forKeyedSubscript:@"userActivityMap"];

  v15 = *MEMORY[0x277D85DE8];

  return dictionary2;
}

- (void)notifyAggregatorStateChanged
{
  v13 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  stateChangeDelegate = [(HMDHomeActivityStateAggregator *)self stateChangeDelegate];
  if (stateChangeDelegate)
  {
    [stateChangeDelegate handleStateChangeForAggregatorOfType:{objc_msgSend(objc_opt_class(), "contributorType")}];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly asked to notifyAggregatorStateChanged before stateChangeDelegate was assigned", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)removeActivityReportForUser:(id)user
{
  userCopy = user;
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_lock_with_options();
  userActivityMap = self->_userActivityMap;
  uuid = [userCopy uuid];
  v9 = [(NSMutableDictionary *)userActivityMap objectForKeyedSubscript:uuid];

  if (v9)
  {
    v10 = self->_userActivityMap;
    uuid2 = [userCopy uuid];
    [(NSMutableDictionary *)v10 removeObjectForKey:uuid2];

    os_unfair_lock_unlock(&self->_lock);
    storage = [(HMDHomeActivityStateAggregator *)self storage];
    uuid3 = [userCopy uuid];
    [storage removeUserActivityStatusForUserUUID:uuid3];

    v14 = v9;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v9;
}

- (BOOL)handleUpdateFromDetector:(id)detector
{
  v66 = *MEMORY[0x277D85DE8];
  detectorCopy = detector;
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v61 = v10;
    v62 = 2112;
    v63 = detectorCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received user activity report from detector: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = detectorCopy;
  if (!selfCopy)
  {
    v29 = 0;
    goto LABEL_26;
  }

  os_unfair_lock_lock_with_options();
  userActivityMap = selfCopy->_userActivityMap;
  user = [(HMDHomeActivityStateAggregator *)v11 user];
  uuid = [user uuid];
  v15 = [(NSMutableDictionary *)userActivityMap objectForKeyedSubscript:uuid];

  if (v15)
  {
    v16 = v15;
    v17 = v11;
    lastUpdateTimestamp = [(HMDHomeActivityStateAggregator *)v16 lastUpdateTimestamp];
    if (!lastUpdateTimestamp)
    {
      goto LABEL_8;
    }

    lastUpdateTimestamp2 = [(HMDHomeActivityStateAggregator *)v17 lastUpdateTimestamp];
    if (lastUpdateTimestamp2)
    {
      lastUpdateTimestamp3 = [(HMDHomeActivityStateAggregator *)v16 lastUpdateTimestamp];
      lastUpdateTimestamp4 = [(HMDHomeActivityStateAggregator *)v17 lastUpdateTimestamp];
      v22 = [lastUpdateTimestamp3 compare:lastUpdateTimestamp4] == -1;

      if (v22)
      {
LABEL_8:
        v23 = v16;
        v24 = v17;
        contributorType = [(HMDHomeActivityStateAggregator *)v23 contributorType];
        if (contributorType == [(HMDHomeActivityStateAggregator *)v24 contributorType])
        {
          user2 = [(HMDHomeActivityStateAggregator *)v23 user];
          user3 = [(HMDHomeActivityStateAggregator *)v24 user];
          v28 = HMFEqualObjects();

          if (v28)
          {
            if ([(HMDHomeActivityStateAggregator *)v24 reason]!= 11)
            {
              v30 = [(HMDHomeActivityStateAggregator *)selfCopy isStateEquivalentForExistingReport:v23 newReport:v24];

              if (!v30)
              {
                goto LABEL_17;
              }

              changedTimestamp = [(HMDHomeActivityStateAggregator *)v23 changedTimestamp];
              if (!changedTimestamp)
              {
                goto LABEL_17;
              }

              changedTimestamp2 = [(HMDHomeActivityStateAggregator *)v24 changedTimestamp];
              if (changedTimestamp2)
              {
                contexta = [(HMDHomeActivityStateAggregator *)v23 changedTimestamp];
                changedTimestamp3 = [(HMDHomeActivityStateAggregator *)v24 changedTimestamp];
                v57 = [contexta compare:changedTimestamp3] == -1;

                if (!v57)
                {
                  goto LABEL_17;
                }
              }

              else
              {
              }

              changedTimestamp4 = [(HMDHomeActivityStateAggregator *)v23 changedTimestamp];
              v29 = [(HMDHomeActivityStateAggregator *)v24 copyReportWithChangedTimestamp:changedTimestamp4];

              goto LABEL_22;
            }

LABEL_11:

LABEL_17:
            v29 = v24;
LABEL_22:

            goto LABEL_23;
          }

          context = objc_autoreleasePoolPush();
          v55 = selfCopy;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v56 = HMFGetLogIdentifier();
            *buf = 138543874;
            v61 = v56;
            v62 = 2112;
            v63 = v55;
            v64 = 2112;
            v65 = v24;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Trying to merge reports with different users. self: %@, new: %@", buf, 0x20u);
          }
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v52 = selfCopy;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = HMFGetLogIdentifier();
            *buf = 138543874;
            v61 = v54;
            v62 = 2112;
            v63 = v52;
            v64 = 2112;
            v65 = v24;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Trying to merge reports with different types. self: %@, new: %@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(context);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v37;
      v62 = 2112;
      v63 = v16;
      v64 = 2112;
      v65 = v17;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Trying to merge an older report. self: %@, new: %@. Ignoring", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
    v29 = 0;
    goto LABEL_22;
  }

  v29 = v11;
LABEL_23:
  if (v29)
  {
    v38 = selfCopy->_userActivityMap;
    user4 = [(HMDHomeActivityStateAggregator *)v11 user];
    uuid2 = [user4 uuid];
    [(NSMutableDictionary *)v38 setObject:v29 forKeyedSubscript:uuid2];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_26:

  v41 = objc_autoreleasePoolPush();
  v42 = selfCopy;
  v43 = HMFGetOSLogHandle();
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);
  if (v29)
  {
    if (v44)
    {
      v45 = HMFGetLogIdentifier();
      userActivityMap = [(HMDHomeActivityStateAggregator *)v42 userActivityMap];
      *buf = 138543874;
      v61 = v45;
      v62 = 2112;
      v63 = v29;
      v64 = 2112;
      v65 = userActivityMap;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Merged or inserted user activity report from detector: %@, new user activity map: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    storage = [(HMDHomeActivityStateAggregator *)v42 storage];
    [storage storeUserActivityReport:v29];
  }

  else
  {
    if (v44)
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v48;
      v62 = 2112;
      v63 = v11;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Not updating user map with report: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
  }

  v49 = *MEMORY[0x277D85DE8];
  return v29 != 0;
}

- (BOOL)auditUserMap
{
  v36 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDHomeActivityStateAggregator *)self isConfigured])
  {
    v4 = MEMORY[0x277CBEB98];
    dataSource2 = [(HMDHomeActivityStateAggregator *)self dataSource];
    home = [dataSource2 home];
    users = [home users];
    v8 = [users na_map:&__block_literal_global_13509];
    v9 = [v4 setWithArray:v8];

    os_unfair_lock_lock_with_options();
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allKeys = [(NSMutableDictionary *)self->_userActivityMap allKeys];
    v11 = 0;
    v12 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v12)
    {
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          if (([v9 containsObject:v15] & 1) == 0)
          {
            [(NSMutableDictionary *)self->_userActivityMap setObject:0 forKeyedSubscript:v15];
            v16 = objc_autoreleasePoolPush();
            selfCopy = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543618;
              v32 = v19;
              v33 = 2112;
              v34 = v15;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removed user %@ from user map", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            v11 = 1;
          }
        }

        v12 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Data has not been load from storage yet, no need to cleanup memory objects", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v11 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (BOOL)isStateEquivalentForExistingReport:(id)report newReport:(id)newReport
{
  reportCopy = report;
  newReportCopy = newReport;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (NSDate)nextRefreshTimestamp
{
  userActivityMap = [(HMDHomeActivityStateAggregator *)self userActivityMap];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDHomeActivityStateAggregator_nextRefreshTimestamp__block_invoke;
  v7[3] = &unk_27868A818;
  v7[4] = self;
  v5 = [userActivityMap na_reduceWithInitialValue:distantFuture reducer:v7];

  return v5;
}

id __54__HMDHomeActivityStateAggregator_nextRefreshTimestamp__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) dataSource];
  v9 = [v8 currentDate];
  v10 = [*(a1 + 32) dataSource];
  [v10 reportValidityInterval];
  v11 = [v6 isExpiredWithCurrentDate:v9 validInterval:?];

  if (v11)
  {
    v12 = v7;
  }

  else
  {
    v13 = [v6 lastUpdateTimestamp];
    v14 = [*(a1 + 32) dataSource];
    [v14 reportValidityInterval];
    v15 = [v13 dateByAddingTimeInterval:?];

    v12 = [v7 earlierDate:v15];
  }

  return v12;
}

- (NSDictionary)rawUserActivityMap
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_userActivityMap copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)userActivityMap
{
  os_unfair_lock_lock_with_options();
  userActivityMap = self->_userActivityMap;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HMDHomeActivityStateAggregator_userActivityMap__block_invoke;
  v6[3] = &unk_278676F70;
  v6[4] = self;
  v4 = [(NSMutableDictionary *)userActivityMap na_filter:v6];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

uint64_t __49__HMDHomeActivityStateAggregator_userActivityMap__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 user];
    v3 = [v6 isAccessCurrentlyAllowedBySchedule];
  }

  return v3;
}

- (void)configureWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Loading user activity map from the working store", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  storage = [(HMDHomeActivityStateAggregator *)selfCopy storage];
  dataSource = [(HMDHomeActivityStateAggregator *)selfCopy dataSource];
  queue = [dataSource queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HMDHomeActivityStateAggregator_configureWithCompletionHandler___block_invoke;
  v14[3] = &unk_27866F678;
  v14[4] = selfCopy;
  v15 = handlerCopy;
  v12 = handlerCopy;
  [storage fetchUserActivityReportsWithQueue:queue completionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __65__HMDHomeActivityStateAggregator_configureWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v7;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Initializing user activity map with: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v17 = 8;
  v18 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = *(*(a1 + 32) + 16);
        v14 = [v12 user];
        v15 = [v14 uuid];
        [v13 setObject:v12 forKeyedSubscript:v15];
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock((v18 + v17));
  [*(a1 + 32) setConfigured:1];
  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateAggregator)initWithStorage:(id)storage dataSource:(id)source
{
  storageCopy = storage;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HMDHomeActivityStateAggregator;
  v9 = [(HMDHomeActivityStateAggregator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_storage, storage);
    objc_storeStrong(&v10->_dataSource, source);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    userActivityMap = v10->_userActivityMap;
    v10->_userActivityMap = dictionary;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_13536 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_13536, &__block_literal_global_14);
  }

  v3 = logCategory__hmf_once_v18_13537;

  return v3;
}

void __45__HMDHomeActivityStateAggregator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v18_13537;
  logCategory__hmf_once_v18_13537 = v1;
}

+ (unint64_t)contributorType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end