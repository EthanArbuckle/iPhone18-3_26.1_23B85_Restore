@interface HMDHAPAccessoryLocalNotifyUpdateManager
+ (id)logCategory;
- (HMDHAPAccessory)hmdHAPAccessory;
- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue;
- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue dataSource:(id)source;
- (HMDHome)home;
- (id)_filterOutUnchangedCharacteristicsFrom:(id)from enable:(BOOL)enable;
- (id)_mergeFailedUpdateIfAnyToUpdate:(id)update;
- (id)logIdentifier;
- (void)_handleUpdateComplete;
- (void)_handleUpdateCompletedSuccessfully;
- (void)_handleUpdateCompletedWithError:(id)error;
- (void)_processPendingUpdate;
- (void)_removeFailedUpdateRetryTimer;
- (void)_startFailedUpdateRetryTimer;
- (void)processPendingUpdateIfAny;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDHAPAccessoryLocalNotifyUpdateManager

- (HMDHAPAccessory)hmdHAPAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hmdHAPAccessory);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  hmdHAPAccessory = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self hmdHAPAccessory];
  shortDescription = [hmdHAPAccessory shortDescription];

  return shortDescription;
}

- (void)timerDidFire:(id)fire
{
  v20 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  failedUpdateRetryTimer = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];

  if (failedUpdateRetryTimer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      failedUpdateRetryCount = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdateRetryCount];
      failedUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdate];
      v14 = 138543874;
      v15 = v9;
      v16 = 2048;
      v17 = failedUpdateRetryCount;
      v18 = 2112;
      v19 = failedUpdate;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Failed update retry timer fired. Retry count: %ld. Failed update: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdateRetryCount]+ 1;
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setFailedUpdateRetryCount:v12];
    if (v12 >= 5)
    {
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy _removeFailedUpdateRetryTimer];
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setFailedUpdate:0];
    }

    [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy processPendingUpdateIfAny];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeFailedUpdateRetryTimer
{
  failedUpdateRetryTimer = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
  [failedUpdateRetryTimer cancel];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdateRetryTimer:0];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdateRetryCount:0];
}

- (void)_startFailedUpdateRetryTimer
{
  failedUpdateRetryTimer = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];

  if (!failedUpdateRetryTimer)
  {
    dataSource = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self dataSource];
    createBackoffTimer = [dataSource createBackoffTimer];
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdateRetryTimer:createBackoffTimer];

    failedUpdateRetryTimer2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
    [failedUpdateRetryTimer2 setDelegate:self];

    queue = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
    failedUpdateRetryTimer3 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
    [failedUpdateRetryTimer3 setDelegateQueue:queue];
  }

  failedUpdateRetryTimer4 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
  [failedUpdateRetryTimer4 resume];
}

- (void)_handleUpdateComplete
{
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setInFlightUpdate:0];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setInProcessing:0];
}

- (void)_handleUpdateCompletedSuccessfully
{
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _handleUpdateComplete];
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self processPendingUpdateIfAny];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _removeFailedUpdateRetryTimer];
}

- (void)_handleUpdateCompletedWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  queue = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (errorCopy)
  {
    inFlightUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self inFlightUpdate];
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdate:inFlightUpdate];

    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      failedUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdate];
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = failedUpdate;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed update: %@ needs retry.", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _handleUpdateComplete];
  pendingUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self pendingUpdate];

  if (pendingUpdate)
  {
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)self processPendingUpdateIfAny];
  }

  else
  {
    failedUpdate2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdate];

    if (failedUpdate2)
    {
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _startFailedUpdateRetryTimer];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_mergeFailedUpdateIfAnyToUpdate:(id)update
{
  updateCopy = update;
  failedUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdate];

  if (failedUpdate)
  {
    failedUpdate2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdate];
    v7 = failedUpdate2;
    if (updateCopy)
    {
      [updateCopy copyRelevantFieldsFrom:failedUpdate2];
    }

    else
    {
      updateCopy = failedUpdate2;
    }
  }

  v8 = updateCopy;

  return updateCopy;
}

- (void)_processPendingUpdate
{
  v28 = *MEMORY[0x277D85DE8];
  queue = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    pendingUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy pendingUpdate];
    failedUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy failedUpdate];
    *buf = 138543874;
    v23 = v7;
    v24 = 2112;
    v25 = pendingUpdate;
    v26 = 2112;
    v27 = failedUpdate;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Processing enable notify update. Pending: %@. Failed: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_lock_with_options();
  pendingUpdate2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy pendingUpdate];
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setPendingUpdate:0];
  os_unfair_lock_unlock(&updateLocalNotifyLock);
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setInProcessing:1];
  v11 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy _mergeFailedUpdateIfAnyToUpdate:pendingUpdate2];
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy setInFlightUpdate:v11];

  inFlightUpdate = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy inFlightUpdate];
  [inFlightUpdate performLocalNotifyUpdate];

  v13 = objc_alloc(MEMORY[0x277D0F7A8]);
  queue2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy queue];
  v15 = [v13 initWithQueue:queue2];

  inFlightUpdate2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)selfCopy inFlightUpdate];
  completionFuture = [inFlightUpdate2 completionFuture];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke;
  v21[3] = &unk_278689CB0;
  v21[4] = selfCopy;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke_84;
  v20[3] = &unk_278689CD8;
  v20[4] = selfCopy;
  v18 = [completionFuture inContext:v15 then:v21 orRecover:v20];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) pendingUpdate];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Enable notify update succeeded. Got queued updates: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleUpdateCompletedSuccessfully];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke_84(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) pendingUpdate];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMFBooleanToString();
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Enable notify update failed with error: %@. Got queued updates: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleUpdateCompletedWithError:v3];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)processPendingUpdateIfAny
{
  queue = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHAPAccessoryLocalNotifyUpdateManager_processPendingUpdateIfAny__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __68__HMDHAPAccessoryLocalNotifyUpdateManager_processPendingUpdateIfAny__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) inProcessing] & 1) == 0)
  {
    v2 = [*(a1 + 32) pendingUpdate];
    if (v2)
    {
    }

    else
    {
      v3 = [*(a1 + 32) failedUpdate];

      if (!v3)
      {
        return;
      }
    }

    v4 = *(a1 + 32);

    [v4 _processPendingUpdate];
  }
}

- (id)_filterOutUnchangedCharacteristicsFrom:(id)from enable:(BOOL)enable
{
  enableCopy = enable;
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = fromCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isNotificationEnabled] != enableCopy)
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [array copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue dataSource:(id)source
{
  homeCopy = home;
  accessoryCopy = accessory;
  queueCopy = queue;
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = HMDHAPAccessoryLocalNotifyUpdateManager;
  v14 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, homeCopy);
    objc_storeWeak(&v15->_hmdHAPAccessory, accessoryCopy);
    objc_storeStrong(&v15->_queue, queue);
    v15->_inProcessing = 0;
    objc_storeStrong(&v15->_dataSource, source);
  }

  return v15;
}

- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue
{
  queueCopy = queue;
  accessoryCopy = accessory;
  homeCopy = home;
  v11 = [[HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource alloc] initWithHome:homeCopy hmdHAPAccessory:accessoryCopy queue:queueCopy];
  v12 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self initWithHome:homeCopy hmdHAPAccessory:accessoryCopy queue:queueCopy dataSource:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_279295 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_279295, &__block_literal_global_279296);
  }

  v3 = logCategory__hmf_once_v12_279297;

  return v3;
}

void __54__HMDHAPAccessoryLocalNotifyUpdateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_279297;
  logCategory__hmf_once_v12_279297 = v1;
}

@end