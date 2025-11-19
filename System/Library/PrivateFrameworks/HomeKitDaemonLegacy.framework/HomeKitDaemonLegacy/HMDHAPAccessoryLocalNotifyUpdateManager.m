@interface HMDHAPAccessoryLocalNotifyUpdateManager
+ (id)logCategory;
- (HMDHAPAccessory)hmdHAPAccessory;
- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)a3 hmdHAPAccessory:(id)a4 queue:(id)a5;
- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)a3 hmdHAPAccessory:(id)a4 queue:(id)a5 dataSource:(id)a6;
- (HMDHome)home;
- (id)_filterOutUnchangedCharacteristicsFrom:(id)a3 enable:(BOOL)a4;
- (id)_mergeFailedUpdateIfAnyToUpdate:(id)a3;
- (id)logIdentifier;
- (void)_handleUpdateComplete;
- (void)_handleUpdateCompletedSuccessfully;
- (void)_handleUpdateCompletedWithError:(id)a3;
- (void)_processPendingUpdate;
- (void)_removeFailedUpdateRetryTimer;
- (void)_startFailedUpdateRetryTimer;
- (void)processPendingUpdateIfAny;
- (void)timerDidFire:(id)a3;
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
  v2 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self hmdHAPAccessory];
  v3 = [v2 shortDescription];

  return v3;
}

- (void)timerDidFire:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];

  if (v5 == v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v7 failedUpdateRetryCount];
      v11 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v7 failedUpdate];
      v14 = 138543874;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Failed update retry timer fired. Retry count: %ld. Failed update: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v7 failedUpdateRetryCount]+ 1;
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)v7 setFailedUpdateRetryCount:v12];
    if (v12 >= 5)
    {
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)v7 _removeFailedUpdateRetryTimer];
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)v7 setFailedUpdate:0];
    }

    [(HMDHAPAccessoryLocalNotifyUpdateManager *)v7 processPendingUpdateIfAny];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeFailedUpdateRetryTimer
{
  v3 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
  [v3 cancel];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdateRetryTimer:0];

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdateRetryCount:0];
}

- (void)_startFailedUpdateRetryTimer
{
  v3 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];

  if (!v3)
  {
    v4 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self dataSource];
    v5 = [v4 createBackoffTimer];
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdateRetryTimer:v5];

    v6 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
    [v6 setDelegate:self];

    v7 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
    v8 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
    [v8 setDelegateQueue:v7];
  }

  v9 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdateRetryTimer];
  [v9 resume];
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

- (void)_handleUpdateCompletedWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self inFlightUpdate];
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)self setFailedUpdate:v6];

    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v8 failedUpdate];
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed update: %@ needs retry.", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _handleUpdateComplete];
  v12 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self pendingUpdate];

  if (v12)
  {
    [(HMDHAPAccessoryLocalNotifyUpdateManager *)self processPendingUpdateIfAny];
  }

  else
  {
    v13 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdate];

    if (v13)
    {
      [(HMDHAPAccessoryLocalNotifyUpdateManager *)self _startFailedUpdateRetryTimer];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_mergeFailedUpdateIfAnyToUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdate];

  if (v5)
  {
    v6 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self failedUpdate];
    v7 = v6;
    if (v4)
    {
      [v4 copyRelevantFieldsFrom:v6];
    }

    else
    {
      v4 = v6;
    }
  }

  v8 = v4;

  return v4;
}

- (void)_processPendingUpdate
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 pendingUpdate];
    v9 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 failedUpdate];
    *buf = 138543874;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Processing enable notify update. Pending: %@. Failed: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_lock_with_options();
  v10 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 pendingUpdate];
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 setPendingUpdate:0];
  os_unfair_lock_unlock(&updateLocalNotifyLock);
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 setInProcessing:1];
  v11 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 _mergeFailedUpdateIfAnyToUpdate:v10];
  [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 setInFlightUpdate:v11];

  v12 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 inFlightUpdate];
  [v12 performLocalNotifyUpdate];

  v13 = objc_alloc(MEMORY[0x277D0F7A8]);
  v14 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 queue];
  v15 = [v13 initWithQueue:v14];

  v16 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)v5 inFlightUpdate];
  v17 = [v16 completionFuture];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke;
  v21[3] = &unk_2797333D8;
  v21[4] = v5;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke_77;
  v20[3] = &unk_279733400;
  v20[4] = v5;
  v18 = [v17 inContext:v15 then:v21 orRecover:v20];

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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Enable notify update succeeded. Got queued updates: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleUpdateCompletedSuccessfully];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __64__HMDHAPAccessoryLocalNotifyUpdateManager__processPendingUpdate__block_invoke_77(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Enable notify update failed with error: %@. Got queued updates: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleUpdateCompletedWithError:v3];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)processPendingUpdateIfAny
{
  v3 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHAPAccessoryLocalNotifyUpdateManager_processPendingUpdateIfAny__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
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

- (id)_filterOutUnchangedCharacteristicsFrom:(id)a3 enable:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
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
        if ([v12 isNotificationEnabled] != v4)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)a3 hmdHAPAccessory:(id)a4 queue:(id)a5 dataSource:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HMDHAPAccessoryLocalNotifyUpdateManager;
  v14 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, v10);
    objc_storeWeak(&v15->_hmdHAPAccessory, v11);
    objc_storeStrong(&v15->_queue, a5);
    v15->_inProcessing = 0;
    objc_storeStrong(&v15->_dataSource, a6);
  }

  return v15;
}

- (HMDHAPAccessoryLocalNotifyUpdateManager)initWithHome:(id)a3 hmdHAPAccessory:(id)a4 queue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource alloc] initWithHome:v10 hmdHAPAccessory:v9 queue:v8];
  v12 = [(HMDHAPAccessoryLocalNotifyUpdateManager *)self initWithHome:v10 hmdHAPAccessory:v9 queue:v8 dataSource:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_157706 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_157706, &__block_literal_global_157707);
  }

  v3 = logCategory__hmf_once_v12_157708;

  return v3;
}

uint64_t __54__HMDHAPAccessoryLocalNotifyUpdateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_157708;
  logCategory__hmf_once_v12_157708 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end