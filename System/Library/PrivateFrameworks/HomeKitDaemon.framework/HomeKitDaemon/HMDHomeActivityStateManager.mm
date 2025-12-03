@interface HMDHomeActivityStateManager
+ (id)logCategory;
- (BOOL)didUpdateCachedHomeActivityState:(unint64_t)state withHoldInfo:(id)info transitionalStateEndDate:(id)date;
- (BOOL)isActivityStateHoldActive;
- (BOOL)isCacheLoaded;
- (HMDHomeActivityStateManager)initWithDataSource:(id)source storage:(id)storage;
- (HMDHomeActivityStateManager)initWithHome:(id)home;
- (HMDHomeUserActivityStatesDetails)userActivityStatesDetails;
- (NSDate)activityStateHoldEndDate;
- (NSDate)transitionalStateEndDate;
- (NSHashTable)observers;
- (id)currentHomeActivityStateDetails;
- (id)currentStateHoldDetails;
- (id)dumpStateForResident;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (id)messageReceiveQueue;
- (id)messageTargetUUID;
- (unint64_t)activityState;
- (void)_cachePropertiesForCurrentStateDetailsFromWorkingStore;
- (void)_registerForMessages;
- (void)addObserver:(id)observer;
- (void)configure;
- (void)configureForResident;
- (void)handleCancelHoldMessage:(id)message;
- (void)handleFetchCurrentHomeActivityState:(id)state;
- (void)handlePrimaryResidentDidBecomeCurrentDeviceWithCompletion:(id)completion;
- (void)handlePrimaryResidentDidBecomeOtherDevice;
- (void)handleUserActivityReportUpdated:(id)updated;
- (void)handleUserRequestToUpdateHomeActivityState:(id)state;
- (void)notifyFrameworkClientsAboutHomeActivityStateChange:(unint64_t)change isActivityStateHoldActive:(BOOL)active activityStateHoldEndDate:(id)date transitionalStateEndDate:(id)endDate;
- (void)notifyObserversAboutHomeActivityStateChange:(unint64_t)change withHoldInfo:(id)info transitionalStateEndDate:(id)date;
- (void)removeObserver:(id)observer;
- (void)setActivityState:(unint64_t)state;
- (void)setActivityStateHoldEndDate:(id)date;
- (void)setIsActivityStateHoldActive:(BOOL)active;
- (void)setIsCacheLoaded:(BOOL)loaded;
- (void)setTransitionalStateEndDate:(id)date;
- (void)storageDidUpdateActivityState:(unint64_t)state isActivityStateHoldActive:(BOOL)active activityStateHoldEndDate:(id)date transitionalStateEndDate:(id)endDate;
- (void)unconfigure;
- (void)unconfigureForResident;
@end

@implementation HMDHomeActivityStateManager

- (void)storageDidUpdateActivityState:(unint64_t)state isActivityStateHoldActive:(BOOL)active activityStateHoldEndDate:(id)date transitionalStateEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __137__HMDHomeActivityStateManager_storageDidUpdateActivityState_isActivityStateHoldActive_activityStateHoldEndDate_transitionalStateEndDate___block_invoke;
  block[3] = &unk_27867AD18;
  activeCopy = active;
  block[4] = self;
  v17 = dateCopy;
  v18 = endDateCopy;
  stateCopy = state;
  v14 = endDateCopy;
  v15 = dateCopy;
  dispatch_async(queue, block);
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

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  activityStateHoldEndDate = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];
  v6 = [activityStateHoldEndDate description];
  [dictionary setObject:v6 forKeyedSubscript:@"activityStateHoldEndDate"];

  transitionalStateEndDate = [(HMDHomeActivityStateManager *)self transitionalStateEndDate];
  v8 = [transitionalStateEndDate description];
  [dictionary setObject:v8 forKeyedSubscript:@"transitionalStateEndDate"];

  [(HMDHomeActivityStateManager *)self isActivityStateHoldActive];
  v9 = HMFBooleanToString();
  [dictionary setObject:v9 forKeyedSubscript:@"isActivityStateHoldActive"];

  [(HMDHomeActivityStateManager *)self activityState];
  v10 = HMHomeActivityStateToString();
  [dictionary setObject:v10 forKeyedSubscript:@"activityState"];

  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  LODWORD(v8) = [dataSource isResidentCapable];

  if (v8)
  {
    dumpStateForResident = [(HMDHomeActivityStateManager *)self dumpStateForResident];
    [dictionary addEntriesFromDictionary:dumpStateForResident];
  }

  v13 = [dictionary copy];

  return v13;
}

- (id)messageReceiveQueue
{
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  queue = [dataSource queue];

  return queue;
}

- (id)messageTargetUUID
{
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  home = [dataSource home];
  uuid = [home uuid];

  return uuid;
}

- (id)logIdentifier
{
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  logIdentifier = [dataSource logIdentifier];

  return logIdentifier;
}

- (void)notifyFrameworkClientsAboutHomeActivityStateChange:(unint64_t)change isActivityStateHoldActive:(BOOL)active activityStateHoldEndDate:(id)date transitionalStateEndDate:(id)endDate
{
  activeCopy = active;
  v48 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  messageDispatcher = [dataSource messageDispatcher];
  home = [dataSource home];
  uuid = [home uuid];

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (uuid && messageDispatcher)
  {
    v31 = endDateCopy;
    v32 = dateCopy;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = HMHomeActivityStateToString();
      v21 = HMFBooleanToString();
      *buf = 138544642;
      v37 = v19;
      v38 = 2112;
      v39 = uuid;
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
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:change];
    v35[0] = v22;
    v34[1] = *MEMORY[0x277CCFDD0];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:activeCopy];
    v35[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v25 = [v24 mutableCopy];

    [v25 setObject:v32 forKeyedSubscript:*MEMORY[0x277CCFDC8]];
    [v25 setObject:v31 forKeyedSubscript:*MEMORY[0x277CCFE08]];
    v26 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCFEC0] messagePayload:v25];
    v27 = [objc_alloc(MEMORY[0x277D0F820]) initWithTarget:uuid];
    [v26 setDestination:v27];

    v28 = [v26 copy];
    [messageDispatcher sendMessage:v28];

    dateCopy = v32;
    endDateCopy = v31;
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v29;
      v38 = 2112;
      v39 = uuid;
      v40 = 2112;
      v41 = messageDispatcher;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly asked to notify framework clients of state change before data source was configured, expected homeUUID: %@ and messageDispatcher: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversAboutHomeActivityStateChange:(unint64_t)change withHoldInfo:(id)info transitionalStateEndDate:(id)date
{
  v45 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dateCopy = date;
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v12 = infoCopy;
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

  dataSource2 = [(HMDHomeActivityStateManager *)self dataSource];
  currentDate = [dataSource2 currentDate];
  v17 = [v14 isActiveAtDate:currentDate];

  v31 = v14;
  endDate = [v14 endDate];
  v32 = dateCopy;
  v18 = [[HMDHomeActivityStateDetails alloc] initWithHomeActivityState:change holdInPlace:v17 holdExpiryTime:endDate transitionalStateEndDate:dateCopy];
  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  obj = [(HMDHomeActivityStateManager *)selfCopy observers];
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
        block[4] = selfCopy;
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

- (BOOL)didUpdateCachedHomeActivityState:(unint64_t)state withHoldInfo:(id)info transitionalStateEndDate:(id)date
{
  v75 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dateCopy = date;
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  activityState = [(HMDHomeActivityStateManager *)self activityState];
  stateCopy = state;
  v13 = activityState != state;
  if (activityState != state)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      [(HMDHomeActivityStateManager *)selfCopy activityState];
      v18 = HMHomeActivityStateToString();
      HMHomeActivityStateToString();
      v20 = v19 = dateCopy;
      *buf = 138543874;
      v70 = v17;
      v71 = 2112;
      v72 = v18;
      v73 = 2112;
      v74 = v20;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating cached activityState: %@ -> %@", buf, 0x20u);

      dateCopy = v19;
    }

    objc_autoreleasePoolPop(v14);
    [(HMDHomeActivityStateManager *)selfCopy setActivityState:stateCopy];
  }

  v21 = infoCopy;
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

  isActivityStateHoldActive = [(HMDHomeActivityStateManager *)self isActivityStateHoldActive];
  if (v23)
  {
    if (!isActivityStateHoldActive)
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        [(HMDHomeActivityStateManager *)selfCopy2 isActivityStateHoldActive];
        HMFBooleanToString();
        v30 = v29 = dateCopy;
        v31 = HMFBooleanToString();
        *buf = 138543874;
        v70 = v28;
        v71 = 2112;
        v72 = v30;
        v73 = 2112;
        v74 = v31;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating cached isActivityStateHoldActive %@ -> %@", buf, 0x20u);

        dateCopy = v29;
      }

      objc_autoreleasePoolPop(v25);
      v13 = 1;
      [(HMDHomeActivityStateManager *)selfCopy2 setIsActivityStateHoldActive:1];
    }

    activityStateHoldEndDate = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];
    endDate = [v23 endDate];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v67 = v23;
      v34 = dateCopy;
      v35 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543874;
        v70 = v38;
        v71 = 2112;
        v72 = activityStateHoldEndDate;
        v73 = 2112;
        v74 = endDate;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Updating cached activityStateHoldEndDate: %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      [(HMDHomeActivityStateManager *)selfCopy3 setActivityStateHoldEndDate:endDate];
      v13 = 1;
      dateCopy = v34;
      v23 = v67;
    }
  }

  else
  {
    if (isActivityStateHoldActive)
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        [(HMDHomeActivityStateManager *)selfCopy4 isActivityStateHoldActive];
        v43 = HMFBooleanToString();
        HMFBooleanToString();
        v45 = v44 = dateCopy;
        *buf = 138543874;
        v70 = v42;
        v71 = 2112;
        v72 = v43;
        v73 = 2112;
        v74 = v45;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Updating cached isActivityStateHoldActive %@ -> %@", buf, 0x20u);

        dateCopy = v44;
      }

      objc_autoreleasePoolPop(v39);
      [(HMDHomeActivityStateManager *)selfCopy4 setIsActivityStateHoldActive:0];
      v13 = 1;
    }

    activityStateHoldEndDate2 = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];

    if (activityStateHoldEndDate2)
    {
      v47 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        activityStateHoldEndDate3 = [(HMDHomeActivityStateManager *)selfCopy5 activityStateHoldEndDate];
        *buf = 138543874;
        v70 = v50;
        v71 = 2112;
        v72 = activityStateHoldEndDate3;
        v73 = 2112;
        v74 = 0;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Updating cached activityStateHoldEndDate: %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v47);
      [(HMDHomeActivityStateManager *)selfCopy5 setActivityStateHoldEndDate:0];
      v13 = 1;
    }
  }

  transitionalStateEndDate = [(HMDHomeActivityStateManager *)self transitionalStateEndDate];
  v53 = HMFEqualObjects();

  if ((v53 & 1) == 0)
  {
    v60 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = HMFGetLogIdentifier();
      transitionalStateEndDate2 = [(HMDHomeActivityStateManager *)selfCopy6 transitionalStateEndDate];
      *buf = 138543874;
      v70 = v63;
      v71 = 2112;
      v72 = transitionalStateEndDate2;
      v73 = 2112;
      v74 = dateCopy;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Updating cached transitionalStateEndDate: %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v60);
    [(HMDHomeActivityStateManager *)selfCopy6 setTransitionalStateEndDate:dateCopy];
    goto LABEL_34;
  }

  if (v13)
  {
LABEL_34:
    v59 = 1;
    goto LABEL_35;
  }

  v54 = objc_autoreleasePoolPush();
  selfCopy7 = self;
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
  storage = [(HMDHomeActivityStateManager *)self storage];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__HMDHomeActivityStateManager__cachePropertiesForCurrentStateDetailsFromWorkingStore__block_invoke;
  v4[3] = &unk_2786718E8;
  v4[4] = self;
  [storage fetchCurrentStateDetailsWithCompletion:v4];
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

- (void)handleFetchCurrentHomeActivityState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  messageReceiveQueue = [(HMDHomeActivityStateManager *)self messageReceiveQueue];
  dispatch_assert_queue_V2(messageReceiveQueue);

  storage = [(HMDHomeActivityStateManager *)self storage];

  if (storage)
  {
    currentHomeActivityStateDetails = [(HMDHomeActivityStateManager *)self currentHomeActivityStateDetails];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@This device does not support having the current home activity state.", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    currentHomeActivityStateDetails = [[HMDHomeActivityStateDetails alloc] initWithHomeActivityState:0 holdInPlace:0 holdExpiryTime:0 transitionalStateEndDate:0];
  }

  v12 = currentHomeActivityStateDetails;
  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
  generatePayload = [(HMDHomeActivityStateDetails *)v12 generatePayload];
  [stateCopy respondWithPayload:generatePayload];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setIsCacheLoaded:(BOOL)loaded
{
  os_unfair_lock_lock_with_options();
  self->_isCacheLoaded = loaded;

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

- (void)setTransitionalStateEndDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  transitionalStateEndDate = self->_transitionalStateEndDate;
  self->_transitionalStateEndDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)transitionalStateEndDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_transitionalStateEndDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIsActivityStateHoldActive:(BOOL)active
{
  os_unfair_lock_lock_with_options();
  self->_isActivityStateHoldActive = active;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isActivityStateHoldActive
{
  os_unfair_lock_lock_with_options();
  isActivityStateHoldActive = self->_isActivityStateHoldActive;
  os_unfair_lock_unlock(&self->_lock);
  return isActivityStateHoldActive;
}

- (void)setActivityStateHoldEndDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  activityStateHoldEndDate = self->_activityStateHoldEndDate;
  self->_activityStateHoldEndDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)activityStateHoldEndDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activityStateHoldEndDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setActivityState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_activityState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)activityState
{
  os_unfair_lock_lock_with_options();
  activityState = self->_activityState;
  os_unfair_lock_unlock(&self->_lock);
  return activityState;
}

- (void)removeObserver:(id)observer
{
  v14 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = observerCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing %@ for home activity state changes, observer", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  os_unfair_lock_unlock(&selfCopy->_lock);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer
{
  v14 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = observerCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering %@ for home activity state changes", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (![(NSHashTable *)selfCopy->_observers containsObject:observerCopy])
  {
    [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

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

  activityStateHoldEndDate = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];

  if (!activityStateHoldEndDate)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      [(HMDHomeActivityStateManager *)selfCopy isActivityStateHoldActive];
      v16 = HMFBooleanToString();
      activityStateHoldEndDate2 = [(HMDHomeActivityStateManager *)selfCopy activityStateHoldEndDate];
      v25 = 138543874;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = activityStateHoldEndDate2;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly found invalid state hold properties in cache (isActivityStateHoldActive: %@, activityStateHoldEndDate: %@)", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_8;
  }

  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  currentDate = [dataSource currentDate];

  activityStateHoldEndDate3 = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];
  v7 = [activityStateHoldEndDate3 compare:currentDate];

  if (v7 == -1)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      activityStateHoldEndDate4 = [(HMDHomeActivityStateManager *)selfCopy2 activityStateHoldEndDate];
      v25 = 138543618;
      v26 = v21;
      v27 = 2112;
      v28 = activityStateHoldEndDate4;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not reporting on current state hold because cached activityStateHoldEndDate (%@) indicates that hold has expired)", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v11 = 0;
  }

  else
  {
    v8 = [HMDHomeActivityStateTimedHoldInfo alloc];
    activityState = [(HMDHomeActivityStateManager *)self activityState];
    activityStateHoldEndDate5 = [(HMDHomeActivityStateManager *)self activityStateHoldEndDate];
    v11 = [(HMDHomeActivityStateTimedHoldInfo *)v8 initWithHomeActivityState:activityState activationDate:currentDate endDate:activityStateHoldEndDate5];
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
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  messageDispatcher = [dataSource messageDispatcher];
  v5 = *MEMORY[0x277CCFD58];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v24[0] = v6;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v24[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [messageDispatcher registerForMessage:v5 receiver:self policies:v8 selector:sel_handleFetchCurrentHomeActivityState_];

  dataSource2 = [(HMDHomeActivityStateManager *)self dataSource];
  administratorHandler = [dataSource2 administratorHandler];
  v11 = *MEMORY[0x277CD12A0];
  v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v23[0] = v12;
  v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v23[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [administratorHandler registerForMessage:v11 receiver:self policies:v14 selector:sel_handleUserRequestToUpdateHomeActivityState_];

  dataSource3 = [(HMDHomeActivityStateManager *)self dataSource];
  administratorHandler2 = [dataSource3 administratorHandler];
  v17 = *MEMORY[0x277CCF6A0];
  v18 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v22[0] = v18;
  v19 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v22[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [administratorHandler2 registerForMessage:v17 receiver:self policies:v20 selector:sel_handleCancelHoldMessage_];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDHomeActivityStateManager_unconfigure__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Configuring HMDHomeActivityStateManager", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomeActivityStateManager *)selfCopy _registerForMessages];
  dataSource = [(HMDHomeActivityStateManager *)selfCopy dataSource];
  isResidentCapable = [dataSource isResidentCapable];

  if (isResidentCapable)
  {
    storage = [(HMDHomeActivityStateManager *)selfCopy storage];

    if (!storage)
    {
      _HMFPreconditionFailure();
    }

    storage2 = [(HMDHomeActivityStateManager *)selfCopy storage];
    [storage2 setDelegate:selfCopy];

    storage3 = [(HMDHomeActivityStateManager *)selfCopy storage];
    [storage3 configure];

    [(HMDHomeActivityStateManager *)selfCopy _cachePropertiesForCurrentStateDetailsFromWorkingStore];
    [(HMDHomeActivityStateManager *)selfCopy configureForResident];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateManager)initWithDataSource:(id)source storage:(id)storage
{
  sourceCopy = source;
  storageCopy = storage;
  v14.receiver = self;
  v14.super_class = HMDHomeActivityStateManager;
  v9 = [(HMDHomeActivityStateManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, source);
    objc_storeStrong(&v10->_storage, storage);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;
  }

  return v10;
}

- (HMDHomeActivityStateManager)initWithHome:(id)home
{
  homeCopy = home;
  v5 = [[HMDHomeActivityStateManagerDataSource alloc] initWithHome:homeCopy];

  if ([(HMDHomeActivityStateManagerDataSource *)v5 isResidentCapable])
  {
    makeHomeActivityStateManagerStorage = [(HMDHomeActivityStateManagerDataSource *)v5 makeHomeActivityStateManagerStorage];
  }

  else
  {
    makeHomeActivityStateManagerStorage = 0;
  }

  v7 = [(HMDHomeActivityStateManager *)self initWithDataSource:v5 storage:makeHomeActivityStateManagerStorage];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  homeActivityStateAggregatorManager = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
  v5 = [homeActivityStateAggregatorManager dumpStateWithPrivacyLevel:0];
  [dictionary setObject:v5 forKeyedSubscript:@"HMDHomeActivityStateAggregatorManager"];

  v6 = [dictionary copy];

  return v6;
}

- (void)handleCancelHoldMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messageReceiveQueue = [(HMDHomeActivityStateManager *)self messageReceiveQueue];
  dispatch_assert_queue_V2(messageReceiveQueue);

  homeActivityStateAggregatorManager = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (homeActivityStateAggregatorManager)
  {
    homeActivityStateAggregatorManager2 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
    [homeActivityStateAggregatorManager2 handleCancelHoldMessage:messageCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = shortDescription;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Not the primary resident to handle %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    homeActivityStateAggregatorManager2 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
    [messageCopy respondWithError:homeActivityStateAggregatorManager2];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUserRequestToUpdateHomeActivityState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  messageReceiveQueue = [(HMDHomeActivityStateManager *)self messageReceiveQueue];
  dispatch_assert_queue_V2(messageReceiveQueue);

  homeActivityStateAggregatorManager = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (homeActivityStateAggregatorManager)
  {
    homeActivityStateAggregatorManager2 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
    [homeActivityStateAggregatorManager2 handleUserRequestToUpdateHomeActivityState:stateCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      shortDescription = [stateCopy shortDescription];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = shortDescription;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Not the primary resident to handle %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    homeActivityStateAggregatorManager2 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
    [stateCopy respondWithError:homeActivityStateAggregatorManager2];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUserActivityReportUpdated:(id)updated
{
  v18 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageReceiveQueue = [(HMDHomeActivityStateManager *)self messageReceiveQueue];
  dispatch_assert_queue_V2(messageReceiveQueue);

  homeActivityStateAggregatorManager = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (homeActivityStateAggregatorManager)
  {
    homeActivityStateAggregatorManager2 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
    [homeActivityStateAggregatorManager2 handleUserActivityReportUpdated:updatedCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      shortDescription = [updatedCopy shortDescription];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = shortDescription;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Not the primary resident to handle %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    homeActivityStateAggregatorManager2 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
    [updatedCopy respondWithError:homeActivityStateAggregatorManager2];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)unconfigureForResident
{
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  homeActivityStateAggregatorManager = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
  [homeActivityStateAggregatorManager unconfigure];

  [(HMDHomeActivityStateManager *)self setHomeActivityStateAggregatorManager:0];
}

- (void)configureForResident
{
  v22[2] = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  home = [dataSource home];

  if (home)
  {
    dataSource2 = [(HMDHomeActivityStateManager *)self dataSource];
    featuresDataSource = [dataSource2 featuresDataSource];
    isHomeActivityStateReplacesPresenceMonitorFeatureEnabled = [featuresDataSource isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

    if (isHomeActivityStateReplacesPresenceMonitorFeatureEnabled)
    {
      v7 = [HMDHomeActivityStateHomePresenceReceiver alloc];
      dataSource3 = [(HMDHomeActivityStateManager *)self dataSource];
      queue = [dataSource3 queue];
      v10 = [(HMDHomeActivityStateHomePresenceReceiver *)v7 initWithMessageReceiveQueue:queue];
      [(HMDHomeActivityStateManager *)self setPresenceReceiver:v10];

      presenceReceiver = [(HMDHomeActivityStateManager *)self presenceReceiver];
      msgDispatcher = [home msgDispatcher];
      [presenceReceiver configure:home messageDispatcher:msgDispatcher];
    }

    if (self)
    {
      v13 = +[HMDRemoteMessagePolicy defaultSecurePrimaryResidentPolicy];
      dataSource4 = [(HMDHomeActivityStateManager *)self dataSource];
      home2 = [dataSource4 home];
      v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:home2 userPrivilege:5 remoteAccessRequired:0];

      dataSource5 = [(HMDHomeActivityStateManager *)self dataSource];
      messageDispatcher = [dataSource5 messageDispatcher];
      v22[0] = v13;
      v22[1] = v16;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      [messageDispatcher registerForMessage:@"HMDUserActivityReportUpdatedMessage" receiver:self policies:v19 selector:sel_handleUserActivityReportUpdated_];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentDidBecomeOtherDevice
{
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  homeActivityStateAggregatorManager = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
  [homeActivityStateAggregatorManager unconfigure];

  [(HMDHomeActivityStateManager *)self setHomeActivityStateAggregatorManager:0];
}

- (void)handlePrimaryResidentDidBecomeCurrentDeviceWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(HMDHomeActivityStateManager *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if (![(HMDHomeActivityStateManager *)self isCacheLoaded])
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  homeActivityStateAggregatorManager = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (homeActivityStateAggregatorManager)
  {
LABEL_9:
    completionCopy[2](completionCopy);
    goto LABEL_10;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@handlePrimaryResidentDidBecomeCurrentDevice - configuring homeActivityStateAggregatorManager", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  dataSource2 = [(HMDHomeActivityStateManager *)selfCopy2 dataSource];
  currentStateHoldDetails = [(HMDHomeActivityStateManager *)selfCopy2 currentStateHoldDetails];
  v14 = [dataSource2 createHomeActivityStateAggregatorManagerWithInitialStateHoldDetails:currentStateHoldDetails];
  [(HMDHomeActivityStateManager *)selfCopy2 setHomeActivityStateAggregatorManager:v14];

  homeActivityStateAggregatorManager2 = [(HMDHomeActivityStateManager *)selfCopy2 homeActivityStateAggregatorManager];
  presenceReceiver = [(HMDHomeActivityStateManager *)selfCopy2 presenceReceiver];
  [homeActivityStateAggregatorManager2 configureWithPresenceReceiver:presenceReceiver completion:completionCopy];

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

- (HMDHomeUserActivityStatesDetails)userActivityStatesDetails
{
  homeActivityStateAggregatorManager = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];

  if (homeActivityStateAggregatorManager)
  {
    homeActivityStateAggregatorManager2 = [(HMDHomeActivityStateManager *)self homeActivityStateAggregatorManager];
    userActivityStatesDetails = [homeActivityStateAggregatorManager2 userActivityStatesDetails];
  }

  else
  {
    userActivityStatesDetails = 0;
  }

  return userActivityStatesDetails;
}

@end