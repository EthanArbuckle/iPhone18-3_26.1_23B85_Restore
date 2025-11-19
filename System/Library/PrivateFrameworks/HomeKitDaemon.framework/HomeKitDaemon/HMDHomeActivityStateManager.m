@interface HMDHomeActivityStateManager
+ (id)logCategory;
- (BOOL)didUpdateCachedHomeActivityState:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5;
- (BOOL)isActivityStateHoldActive;
- (BOOL)isCacheLoaded;
- (HMDHomeActivityStateManager)initWithDataSource:(id)a3 storage:(id)a4;
- (HMDHomeActivityStateManager)initWithHome:(id)a3;
- (HMDHomeUserActivityStatesDetails)userActivityStatesDetails;
- (NSDate)activityStateHoldEndDate;
- (NSDate)transitionalStateEndDate;
- (NSHashTable)observers;
- (id)currentHomeActivityStateDetails;
- (id)currentStateHoldDetails;
- (id)dumpStateForResident;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (id)messageReceiveQueue;
- (id)messageTargetUUID;
- (unint64_t)activityState;
- (void)_cachePropertiesForCurrentStateDetailsFromWorkingStore;
- (void)_registerForMessages;
- (void)addObserver:(id)a3;
- (void)configure;
- (void)configureForResident;
- (void)handleCancelHoldMessage:(id)a3;
- (void)handleFetchCurrentHomeActivityState:(id)a3;
- (void)handlePrimaryResidentDidBecomeCurrentDeviceWithCompletion:(id)a3;
- (void)handlePrimaryResidentDidBecomeOtherDevice;
- (void)handleUserActivityReportUpdated:(id)a3;
- (void)handleUserRequestToUpdateHomeActivityState:(id)a3;
- (void)notifyFrameworkClientsAboutHomeActivityStateChange:(unint64_t)a3 isActivityStateHoldActive:(BOOL)a4 activityStateHoldEndDate:(id)a5 transitionalStateEndDate:(id)a6;
- (void)notifyObserversAboutHomeActivityStateChange:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5;
- (void)removeObserver:(id)a3;
- (void)setActivityState:(unint64_t)a3;
- (void)setActivityStateHoldEndDate:(id)a3;
- (void)setIsActivityStateHoldActive:(BOOL)a3;
- (void)setIsCacheLoaded:(BOOL)a3;
- (void)setTransitionalStateEndDate:(id)a3;
- (void)storageDidUpdateActivityState:(unint64_t)a3 isActivityStateHoldActive:(BOOL)a4 activityStateHoldEndDate:(id)a5 transitionalStateEndDate:(id)a6;
- (void)unconfigure;
- (void)unconfigureForResident;
@end

@implementation HMDHomeActivityStateManager

- (void)storageDidUpdateActivityState:(unint64_t)a3 isActivityStateHoldActive:(BOOL)a4 activityStateHoldEndDate:(id)a5 transitionalStateEndDate:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(HMDHomeActivityStateManager *)self dataSource];
  v13 = [v12 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __137__HMDHomeActivityStateManager_storageDidUpdateActivityState_isActivityStateHoldActive_activityStateHoldEndDate_transitionalStateEndDate___block_invoke;
  block[3] = &unk_27867AD18;
  v20 = a4;
  block[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = a3;
  v14 = v11;
  v15 = v10;
  dispatch_async(v13, block);
}

void __137__HMDHomeActivityStateManager_storageDidUpdateActivityState_isActivityStateHoldActive_activityStateHoldEndDate_transitionalStateEndDate___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [HMDHomeActivityStateTimedHoldInfo alloc];
    v3 = *(a1 + 56);
    v4 = [*(a1 + 32) dataSource];
    v5 = [v4 currentDate];
    v6 = [(HMDHomeActivityStateTimedHoldInfo *)v2 initWithHomeActivityState:v3 activationDate:v5 endDate:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  if ([*(a1 + 32) didUpdateCachedHomeActivityState:*(a1 + 56) withHoldInfo:v6 transitionalStateEndDate:*(a1 + 48)])
  {
    [*(a1 + 32) notifyObserversAboutHomeActivityStateChange:*(a1 + 56) withHoldInfo:v6 transitionalStateEndDate:*(a1 + 48)];
    [*(a1 + 32) notifyFrameworkClientsAboutHomeActivityStateChange:*(a1 + 56) isActivityStateHoldActive:*(a1 + 64) activityStateHoldEndDate:*(a1 + 40) transitionalStateEndDate:*(a1 + 48)];
  }
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];
  v6 = [v5 description];
  [v4 setObject:v6 forKeyedSubscript:@"activityStateHoldEndDate"];

  v7 = [(HMDHomeActivityStateManager *)self transitionalStateEndDate];
  v8 = [v7 description];
  [v4 setObject:v8 forKeyedSubscript:@"transitionalStateEndDate"];

  [(HMDHomeActivityStateManager *)self isActivityStateHoldActive];
  v9 = HMFBooleanToString();
  [v4 setObject:v9 forKeyedSubscript:@"isActivityStateHoldActive"];

  [(HMDHomeActivityStateManager *)self activityState];
  v10 = HMHomeActivityStateToString();
  [v4 setObject:v10 forKeyedSubscript:@"activityState"];

  v11 = [(HMDHomeActivityStateManager *)self dataSource];
  LODWORD(v8) = [v11 isResidentCapable];

  if (v8)
  {
    v12 = [(HMDHomeActivityStateManager *)self dumpStateForResident];
    [v4 addEntriesFromDictionary:v12];
  }

  v13 = [v4 copy];

  return v13;
}

- (id)messageReceiveQueue
{
  v2 = [(HMDHomeActivityStateManager *)self dataSource];
  v3 = [v2 queue];

  return v3;
}

- (id)messageTargetUUID
{
  v2 = [(HMDHomeActivityStateManager *)self dataSource];
  v3 = [v2 home];
  v4 = [v3 uuid];

  return v4;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeActivityStateManager *)self dataSource];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)notifyFrameworkClientsAboutHomeActivityStateChange:(unint64_t)a3 isActivityStateHoldActive:(BOOL)a4 activityStateHoldEndDate:(id)a5 transitionalStateEndDate:(id)a6
{
  v33 = a4;
  v48 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = [(HMDHomeActivityStateManager *)self dataSource];
  v12 = [v11 messageDispatcher];
  v13 = [v11 home];
  v14 = [v13 uuid];

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (v14 && v12)
  {
    v31 = v10;
    v32 = v9;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = HMHomeActivityStateToString();
      v21 = HMFBooleanToString();
      *buf = 138544642;
      v37 = v19;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v20;
      v42 = 2112;
      v43 = v21;
      v44 = 2112;
      v45 = v32;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Notifying framework clients about home %@ changing to state %@, hold active: %@, hold end date: %@, transitional state end date %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v15);
    v34[0] = *MEMORY[0x277CCFDD8];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v35[0] = v22;
    v34[1] = *MEMORY[0x277CCFDD0];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:v33];
    v35[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v25 = [v24 mutableCopy];

    [v25 setObject:v32 forKeyedSubscript:*MEMORY[0x277CCFDC8]];
    [v25 setObject:v31 forKeyedSubscript:*MEMORY[0x277CCFE08]];
    v26 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCFEC0] messagePayload:v25];
    v27 = [objc_alloc(MEMORY[0x277D0F820]) initWithTarget:v14];
    [v26 setDestination:v27];

    v28 = [v26 copy];
    [v12 sendMessage:v28];

    v9 = v32;
    v10 = v31;
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v29;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v12;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly asked to notify framework clients of state change before data source was configured, expected homeUUID: %@ and messageDispatcher: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversAboutHomeActivityStateChange:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HMDHomeActivityStateManager *)self dataSource];
  v11 = [v10 queue];
  dispatch_assert_queue_V2(v11);

  v12 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [(HMDHomeActivityStateManager *)self dataSource];
  v16 = [v15 currentDate];
  v17 = [v14 isActiveAtDate:v16];

  v31 = v14;
  v30 = [v14 endDate];
  v32 = v9;
  v18 = [[HMDHomeActivityStateDetails alloc] initWithHomeActivityState:a3 holdInPlace:v17 holdExpiryTime:v30 transitionalStateEndDate:v9];
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v22;
    v43 = 2112;
    v44 = v18;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Notifying clients about state change: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(HMDHomeActivityStateManager *)v20 observers];
  v23 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v36 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v27 delegateQueue];
        }

        else
        {
          dispatch_get_global_queue(0, 0);
        }
        v28 = ;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __113__HMDHomeActivityStateManager_notifyObserversAboutHomeActivityStateChange_withHoldInfo_transitionalStateEndDate___block_invoke;
        block[3] = &unk_27868A010;
        block[4] = v20;
        block[5] = v27;
        v35 = v18;
        dispatch_async(v28, block);
      }

      v24 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v24);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __113__HMDHomeActivityStateManager_notifyObserversAboutHomeActivityStateChange_withHoldInfo_transitionalStateEndDate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "hash")}];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Notifying %@ about state change", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) homeActivityStateManager:*(a1 + 32) didMoveToState:*(a1 + 48)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)didUpdateCachedHomeActivityState:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5
{
  v75 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HMDHomeActivityStateManager *)self dataSource];
  v11 = [v10 queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDHomeActivityStateManager *)self activityState];
  v68 = a3;
  v13 = v12 != a3;
  if (v12 != a3)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      [(HMDHomeActivityStateManager *)v15 activityState];
      v18 = HMHomeActivityStateToString();
      HMHomeActivityStateToString();
      v20 = v19 = v9;
      *buf = 138543874;
      v70 = v17;
      v71 = 2112;
      v72 = v18;
      v73 = 2112;
      v74 = v20;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating cached activityState: %@ -> %@", buf, 0x20u);

      v9 = v19;
    }

    objc_autoreleasePoolPop(v14);
    [(HMDHomeActivityStateManager *)v15 setActivityState:v68];
  }

  v21 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = [(HMDHomeActivityStateManager *)self isActivityStateHoldActive];
  if (v23)
  {
    if (!v24)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        [(HMDHomeActivityStateManager *)v26 isActivityStateHoldActive];
        HMFBooleanToString();
        v30 = v29 = v9;
        v31 = HMFBooleanToString();
        *buf = 138543874;
        v70 = v28;
        v71 = 2112;
        v72 = v30;
        v73 = 2112;
        v74 = v31;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating cached isActivityStateHoldActive %@ -> %@", buf, 0x20u);

        v9 = v29;
      }

      objc_autoreleasePoolPop(v25);
      v13 = 1;
      [(HMDHomeActivityStateManager *)v26 setIsActivityStateHoldActive:1];
    }

    v32 = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];
    v33 = [v23 endDate];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v67 = v23;
      v34 = v9;
      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543874;
        v70 = v38;
        v71 = 2112;
        v72 = v32;
        v73 = 2112;
        v74 = v33;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Updating cached activityStateHoldEndDate: %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      [(HMDHomeActivityStateManager *)v36 setActivityStateHoldEndDate:v33];
      v13 = 1;
      v9 = v34;
      v23 = v67;
    }
  }

  else
  {
    if (v24)
    {
      v39 = objc_autoreleasePoolPush();
      v40 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        [(HMDHomeActivityStateManager *)v40 isActivityStateHoldActive];
        v43 = HMFBooleanToString();
        HMFBooleanToString();
        v45 = v44 = v9;
        *buf = 138543874;
        v70 = v42;
        v71 = 2112;
        v72 = v43;
        v73 = 2112;
        v74 = v45;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Updating cached isActivityStateHoldActive %@ -> %@", buf, 0x20u);

        v9 = v44;
      }

      objc_autoreleasePoolPop(v39);
      [(HMDHomeActivityStateManager *)v40 setIsActivityStateHoldActive:0];
      v13 = 1;
    }

    v46 = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];

    if (v46)
    {
      v47 = objc_autoreleasePoolPush();
      v48 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        v51 = [(HMDHomeActivityStateManager *)v48 activityStateHoldEndDate];
        *buf = 138543874;
        v70 = v50;
        v71 = 2112;
        v72 = v51;
        v73 = 2112;
        v74 = 0;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Updating cached activityStateHoldEndDate: %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v47);
      [(HMDHomeActivityStateManager *)v48 setActivityStateHoldEndDate:0];
      v13 = 1;
    }
  }

  v52 = [(HMDHomeActivityStateManager *)self transitionalStateEndDate];
  v53 = HMFEqualObjects();

  if ((v53 & 1) == 0)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = self;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = HMFGetLogIdentifier();
      v64 = [(HMDHomeActivityStateManager *)v61 transitionalStateEndDate];
      *buf = 138543874;
      v70 = v63;
      v71 = 2112;
      v72 = v64;
      v73 = 2112;
      v74 = v9;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Updating cached transitionalStateEndDate: %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v60);
    [(HMDHomeActivityStateManager *)v61 setTransitionalStateEndDate:v9];
    goto LABEL_34;
  }

  if (v13)
  {
LABEL_34:
    v59 = 1;
    goto LABEL_35;
  }

  v54 = objc_autoreleasePoolPush();
  v55 = self;
  v56 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    v57 = HMFGetLogIdentifier();
    v58 = HMHomeActivityStateToString();
    *buf = 138543874;
    v70 = v57;
    v71 = 2112;
    v72 = v58;
    v73 = 2112;
    v74 = v23;
    _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Found nothing in cache to update given new state %@ and new hold info: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v54);
  v59 = 0;
LABEL_35:

  v65 = *MEMORY[0x277D85DE8];
  return v59;
}

- (void)_cachePropertiesForCurrentStateDetailsFromWorkingStore
{
  v3 = [(HMDHomeActivityStateManager *)self storage];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__HMDHomeActivityStateManager__cachePropertiesForCurrentStateDetailsFromWorkingStore__block_invoke;
  v4[3] = &unk_2786718E8;
  v4[4] = self;
  [v3 fetchCurrentStateDetailsWithCompletion:v4];
}

void __85__HMDHomeActivityStateManager__cachePropertiesForCurrentStateDetailsFromWorkingStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HMDHomeActivityStateManager__cachePropertiesForCurrentStateDetailsFromWorkingStore__block_invoke_2;
  v7[3] = &unk_27868A750;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __85__HMDHomeActivityStateManager__cachePropertiesForCurrentStateDetailsFromWorkingStore__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v18 = 138543618;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Found state in working store %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) state];
  if ([*(a1 + 40) isHoldActive])
  {
    v8 = [HMDHomeActivityStateTimedHoldInfo alloc];
    v9 = [*(a1 + 40) state];
    v10 = [*(a1 + 32) dataSource];
    v11 = [v10 currentDate];
    v12 = [*(a1 + 40) holdExpiryTime];
    v13 = [(HMDHomeActivityStateTimedHoldInfo *)v8 initWithHomeActivityState:v9 activationDate:v11 endDate:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [*(a1 + 40) transitionalStateEndDate];
  if ([*(a1 + 32) didUpdateCachedHomeActivityState:v7 withHoldInfo:v13 transitionalStateEndDate:v14])
  {
    [*(a1 + 32) notifyObserversAboutHomeActivityStateChange:v7 withHoldInfo:v13 transitionalStateEndDate:v14];
  }

  [*(a1 + 32) setIsCacheLoaded:1];
  v15 = [*(a1 + 32) dataSource];
  v16 = [v15 isCurrentDeviceConfirmedPrimaryResident];

  if (v16)
  {
    [*(a1 + 32) handlePrimaryResidentDidBecomeCurrentDeviceWithCompletion:&__block_literal_global_27035];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchCurrentHomeActivityState:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityStateManager *)self messageReceiveQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDHomeActivityStateManager *)self storage];

  if (v6)
  {
    v7 = [(HMDHomeActivityStateManager *)self currentHomeActivityStateDetails];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@This device does not support having the current home activity state.", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [[HMDHomeActivityStateDetails alloc] initWithHomeActivityState:0 holdInPlace:0 holdExpiryTime:0 transitionalStateEndDate:0];
  }

  v12 = v7;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v16;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Responding to fetch with home activity state: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMDHomeActivityStateDetails *)v12 generatePayload];
  [v4 respondWithPayload:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setIsCacheLoaded:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_isCacheLoaded = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isCacheLoaded
{
  os_unfair_lock_lock_with_options();
  isCacheLoaded = self->_isCacheLoaded;
  os_unfair_lock_unlock(&self->_lock);
  return isCacheLoaded;
}

- (NSHashTable)observers
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSHashTable *)self->_observers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTransitionalStateEndDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  transitionalStateEndDate = self->_transitionalStateEndDate;
  self->_transitionalStateEndDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)transitionalStateEndDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_transitionalStateEndDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIsActivityStateHoldActive:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_isActivityStateHoldActive = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isActivityStateHoldActive
{
  os_unfair_lock_lock_with_options();
  isActivityStateHoldActive = self->_isActivityStateHoldActive;
  os_unfair_lock_unlock(&self->_lock);
  return isActivityStateHoldActive;
}

- (void)setActivityStateHoldEndDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  activityStateHoldEndDate = self->_activityStateHoldEndDate;
  self->_activityStateHoldEndDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)activityStateHoldEndDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activityStateHoldEndDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setActivityState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_activityState = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)activityState
{
  os_unfair_lock_lock_with_options();
  activityState = self->_activityState;
  os_unfair_lock_unlock(&self->_lock);
  return activityState;
}

- (void)removeObserver:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing %@ for home activity state changes, observer", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)v6->_observers removeObject:v4];
  os_unfair_lock_unlock(&v6->_lock);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering %@ for home activity state changes", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (![(NSHashTable *)v6->_observers containsObject:v4])
  {
    [(NSHashTable *)v6->_observers addObject:v4];
  }

  os_unfair_lock_unlock(&v6->_lock);

  v9 = *MEMORY[0x277D85DE8];
}

- (id)currentStateHoldDetails
{
  v31 = *MEMORY[0x277D85DE8];
  if (![(HMDHomeActivityStateManager *)self isActivityStateHoldActive])
  {
LABEL_8:
    v11 = 0;
    goto LABEL_13;
  }

  v3 = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];

  if (!v3)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      [(HMDHomeActivityStateManager *)v13 isActivityStateHoldActive];
      v16 = HMFBooleanToString();
      v17 = [(HMDHomeActivityStateManager *)v13 activityStateHoldEndDate];
      v25 = 138543874;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly found invalid state hold properties in cache (isActivityStateHoldActive: %@, activityStateHoldEndDate: %@)", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_8;
  }

  v4 = [(HMDHomeActivityStateManager *)self dataSource];
  v5 = [v4 currentDate];

  v6 = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];
  v7 = [v6 compare:v5];

  if (v7 == -1)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMDHomeActivityStateManager *)v19 activityStateHoldEndDate];
      v25 = 138543618;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not reporting on current state hold because cached activityStateHoldEndDate (%@) indicates that hold has expired)", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v11 = 0;
  }

  else
  {
    v8 = [HMDHomeActivityStateTimedHoldInfo alloc];
    v9 = [(HMDHomeActivityStateManager *)self activityState];
    v10 = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];
    v11 = [(HMDHomeActivityStateTimedHoldInfo *)v8 initWithHomeActivityState:v9 activationDate:v5 endDate:v10];
  }

LABEL_13:
  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)currentHomeActivityStateDetails
{
  os_unfair_lock_lock_with_options();
  activityState = self->_activityState;
  isActivityStateHoldActive = self->_isActivityStateHoldActive;
  v5 = [(NSDate *)self->_activityStateHoldEndDate copy];
  v6 = [(NSDate *)self->_transitionalStateEndDate copy];
  os_unfair_lock_unlock(&self->_lock);
  v7 = [[HMDHomeActivityStateDetails alloc] initWithHomeActivityState:activityState holdInPlace:isActivityStateHoldActive holdExpiryTime:v5 transitionalStateEndDate:v6];

  return v7;
}

- (void)_registerForMessages
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateManager *)self dataSource];
  v4 = [v3 messageDispatcher];
  v5 = *MEMORY[0x277CCFD58];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v24[0] = v6;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v24[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v4 registerForMessage:v5 receiver:self policies:v8 selector:sel_handleFetchCurrentHomeActivityState_];

  v9 = [(HMDHomeActivityStateManager *)self dataSource];
  v10 = [v9 administratorHandler];
  v11 = *MEMORY[0x277CD12A0];
  v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v23[0] = v12;
  v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v23[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v10 registerForMessage:v11 receiver:self policies:v14 selector:sel_handleUserRequestToUpdateHomeActivityState_];

  v15 = [(HMDHomeActivityStateManager *)self dataSource];
  v16 = [v15 administratorHandler];
  v17 = *MEMORY[0x277CCF6A0];
  v18 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v22[0] = v18;
  v19 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v22[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [v16 registerForMessage:v17 receiver:self policies:v20 selector:sel_handleCancelHoldMessage_];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  v3 = [(HMDHomeActivityStateManager *)self dataSource];
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDHomeActivityStateManager_unconfigure__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __42__HMDHomeActivityStateManager_unconfigure__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring HMDHomeActivityStateManager", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 isResidentCapable];

  if (v7)
  {
    [*(a1 + 32) unconfigureForResident];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Configuring HMDHomeActivityStateManager", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomeActivityStateManager *)v4 _registerForMessages];
  v7 = [(HMDHomeActivityStateManager *)v4 dataSource];
  v8 = [v7 isResidentCapable];

  if (v8)
  {
    v9 = [(HMDHomeActivityStateManager *)v4 storage];

    if (!v9)
    {
      _HMFPreconditionFailure();
    }

    v10 = [(HMDHomeActivityStateManager *)v4 storage];
    [v10 setDelegate:v4];

    v11 = [(HMDHomeActivityStateManager *)v4 storage];
    [v11 configure];

    [(HMDHomeActivityStateManager *)v4 _cachePropertiesForCurrentStateDetailsFromWorkingStore];
    [(HMDHomeActivityStateManager *)v4 configureForResident];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateManager)initWithDataSource:(id)a3 storage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDHomeActivityStateManager;
  v9 = [(HMDHomeActivityStateManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, a3);
    objc_storeStrong(&v10->_storage, a4);
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = v11;
  }

  return v10;
}

- (HMDHomeActivityStateManager)initWithHome:(id)a3
{
  v4 = a3;
  v5 = [[HMDHomeActivityStateManagerDataSource alloc] initWithHome:v4];

  if ([(HMDHomeActivityStateManagerDataSource *)v5 isResidentCapable])
  {
    v6 = [(HMDHomeActivityStateManagerDataSource *)v5 makeHomeActivityStateManagerStorage];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HMDHomeActivityStateManager *)self initWithDataSource:v5 storage:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36, &__block_literal_global_23);
  }

  v3 = logCategory__hmf_once_v37;

  return v3;
}

void __42__HMDHomeActivityStateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v37;
  logCategory__hmf_once_v37 = v1;
}

- (id)dumpStateForResident
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
  v5 = [v4 dumpStateWithPrivacyLevel:0];
  [v3 setObject:v5 forKeyedSubscript:@"HMDHomeActivityStateAggregatorManager"];

  v6 = [v3 copy];

  return v6;
}

- (void)handleCancelHoldMessage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityStateManager *)self messageReceiveQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (v6)
  {
    v7 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
    [v7 handleCancelHoldMessage:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 shortDescription];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Not the primary resident to handle %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
    [v4 respondWithError:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUserRequestToUpdateHomeActivityState:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityStateManager *)self messageReceiveQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (v6)
  {
    v7 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
    [v7 handleUserRequestToUpdateHomeActivityState:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 shortDescription];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Not the primary resident to handle %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
    [v4 respondWithError:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUserActivityReportUpdated:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityStateManager *)self messageReceiveQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (v6)
  {
    v7 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
    [v7 handleUserActivityReportUpdated:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 shortDescription];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Not the primary resident to handle %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
    [v4 respondWithError:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)unconfigureForResident
{
  v3 = [(HMDHomeActivityStateManager *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
  [v5 unconfigure];

  [(HMDHomeActivityStateManager *)self setHomeActivityStateAggregatorManager:0];
}

- (void)configureForResident
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateManager *)self dataSource];
  v21 = [v3 home];

  if (v21)
  {
    v4 = [(HMDHomeActivityStateManager *)self dataSource];
    v5 = [v4 featuresDataSource];
    v6 = [v5 isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

    if (v6)
    {
      v7 = [HMDHomeActivityStateHomePresenceReceiver alloc];
      v8 = [(HMDHomeActivityStateManager *)self dataSource];
      v9 = [v8 queue];
      v10 = [(HMDHomeActivityStateHomePresenceReceiver *)v7 initWithMessageReceiveQueue:v9];
      [(HMDHomeActivityStateManager *)self setPresenceReceiver:v10];

      v11 = [(HMDHomeActivityStateManager *)self presenceReceiver];
      v12 = [v21 msgDispatcher];
      [v11 configure:v21 messageDispatcher:v12];
    }

    if (self)
    {
      v13 = +[HMDRemoteMessagePolicy defaultSecurePrimaryResidentPolicy];
      v14 = [(HMDHomeActivityStateManager *)self dataSource];
      v15 = [v14 home];
      v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:v15 userPrivilege:5 remoteAccessRequired:0];

      v17 = [(HMDHomeActivityStateManager *)self dataSource];
      v18 = [v17 messageDispatcher];
      v22[0] = v13;
      v22[1] = v16;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      [v18 registerForMessage:@"HMDUserActivityReportUpdatedMessage" receiver:self policies:v19 selector:sel_handleUserActivityReportUpdated_];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentDidBecomeOtherDevice
{
  v3 = [(HMDHomeActivityStateManager *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
  [v5 unconfigure];

  [(HMDHomeActivityStateManager *)self setHomeActivityStateAggregatorManager:0];
}

- (void)handlePrimaryResidentDidBecomeCurrentDeviceWithCompletion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityStateManager *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if (![(HMDHomeActivityStateManager *)self isCacheLoaded])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@handlePrimaryResidentDidBecomeCurrentDevice - exiting early because the cache is not yet loaded", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_9;
  }

  v7 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (v7)
  {
LABEL_9:
    v4[2](v4);
    goto LABEL_10;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@handlePrimaryResidentDidBecomeCurrentDevice - configuring homeActivityStateAggregatorManager", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHomeActivityStateManager *)v9 dataSource];
  v13 = [(HMDHomeActivityStateManager *)v9 currentStateHoldDetails];
  v14 = [v12 createHomeActivityStateAggregatorManagerWithInitialStateHoldDetails:v13];
  [(HMDHomeActivityStateManager *)v9 setHomeActivityStateAggregatorManager:v14];

  v15 = [(HMDHomeActivityStateManager *)v9 homeActivityStateAggregatorManager];
  v16 = [(HMDHomeActivityStateManager *)v9 presenceReceiver];
  [v15 configureWithPresenceReceiver:v16 completion:v4];

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

- (HMDHomeUserActivityStatesDetails)userActivityStatesDetails
{
  v3 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (v3)
  {
    v4 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
    v5 = [v4 userActivityStatesDetails];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end