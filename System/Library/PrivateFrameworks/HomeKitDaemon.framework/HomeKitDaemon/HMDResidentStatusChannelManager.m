@interface HMDResidentStatusChannelManager
+ (id)logCategory;
- (BOOL)_residentStatusChannelNeededForBundleIdentifier:(id)a3 applicationState:(unint64_t)a4;
- (BOOL)_shouldAllowChannelManagement;
- (BOOL)_shouldChannelBeRunning;
- (HMDIDSServerBag)idsServerBag;
- (HMDResidentStatusChannelManager)initWithResidentStatusChannel:(id)a3 notificationCenter:(id)a4 queue:(id)a5 timerProvider:(id)a6 idsServerBag:(id)a7 processMonitor:(id)a8;
- (HMDResidentStatusChannelManager)initWithResidentStatusChannel:(id)a3 queue:(id)a4 idsServerBag:(id)a5;
- (NSMutableSet)clientIdentifiers;
- (id)logIdentifier;
- (void)_configureWithExistingProcesses:(id)a3;
- (void)_evaluateChannelConnectionStateWithCurrentClientIdentifierCount:(unint64_t)a3 previousClientIdentifierCount:(unint64_t)a4;
- (void)_handleForegroundStateChangedForBundleIdentifier:(id)a3 applicationState:(unint64_t)a4;
- (void)_startUnsubscribeFromChannelDebounceTimer;
- (void)_stopUnsubscribeFromChannelDebounceTimer;
- (void)addClientWithIdentifier:(id)a3;
- (void)configure;
- (void)handleProcessAdded:(id)a3;
- (void)handleProcessInfoStateChanged:(id)a3;
- (void)handleProcessRemoved:(id)a3;
- (void)removeClientWithIdentifier:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDResidentStatusChannelManager

- (HMDIDSServerBag)idsServerBag
{
  WeakRetained = objc_loadWeakRetained(&self->_idsServerBag);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDResidentStatusChannelManager *)self residentStatusChannel];
  v3 = [v2 home];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentStatusChannelManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDResidentStatusChannelManager *)self unsubscribeFromChannelDebounceTimer];

  if (v6 == v4)
  {
    [(HMDResidentStatusChannelManager *)self _stopUnsubscribeFromChannelDebounceTimer];
    if (![(HMDResidentStatusChannelManager *)self _shouldChannelBeRunning])
    {
      v7 = [(HMDResidentStatusChannelManager *)self residentStatusChannel];
      [v7 stop];
    }
  }
}

- (BOOL)_shouldAllowChannelManagement
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentStatusChannelManager *)self residentStatusChannel];
  v4 = [v3 home];

  v5 = [v4 currentUser];
  v6 = v5;
  if (v5)
  {
    if ([v5 isRestrictedGuest])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v6 shortDescription];
        v16 = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Not allowing channel management on Restricted Guest: %@", &v16, 0x16u);

LABEL_9:
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else if (([v4 isOwnerUser] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v13 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Not allowing channel management, current user unknown", &v16, 0xCu);
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v7);
    v12 = 0;
    goto LABEL_11;
  }

  v12 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_stopUnsubscribeFromChannelDebounceTimer
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentStatusChannelManager *)self unsubscribeFromChannelDebounceTimer];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping unsubscribe from channel debounce timer", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMDResidentStatusChannelManager *)v5 unsubscribeFromChannelDebounceTimer];
    [v8 cancel];

    [(HMDResidentStatusChannelManager *)v5 setUnsubscribeFromChannelDebounceTimer:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_startUnsubscribeFromChannelDebounceTimer
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentStatusChannelManager *)self unsubscribeFromChannelDebounceTimer];

  if (!v3)
  {
    v4 = [(HMDResidentStatusChannelManager *)self idsServerBag];
    v5 = [v4 statusKitUnsubscribeFromChannelDebounceTimeSec];

    if (v5)
    {
      [v5 doubleValue];
      v7 = v6;
    }

    else
    {
      v7 = 300.0;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v11;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting unsubscribe from channel debounce timer with time set to %f", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDResidentStatusChannelManager *)v9 timerProvider];
    v13 = [v12 timerWithTimeInterval:0 options:v7];
    [(HMDResidentStatusChannelManager *)v9 setUnsubscribeFromChannelDebounceTimer:v13];

    v14 = [(HMDResidentStatusChannelManager *)v9 unsubscribeFromChannelDebounceTimer];
    [v14 setDelegate:v9];

    queue = v9->_queue;
    v16 = [(HMDResidentStatusChannelManager *)v9 unsubscribeFromChannelDebounceTimer];
    [v16 setDelegateQueue:queue];

    v17 = [(HMDResidentStatusChannelManager *)v9 unsubscribeFromChannelDebounceTimer];
    [v17 resume];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldChannelBeRunning
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentStatusChannelManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDResidentStatusChannelManager *)self clientIdentifiers];
  v5 = [v4 count];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v11 = [(HMDResidentStatusChannelManager *)v7 clientIdentifiers];
    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Evaluated shouldChannelBeRunning: %@ (clientIdentifiers: %@)", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (void)_evaluateChannelConnectionStateWithCurrentClientIdentifierCount:(unint64_t)a3 previousClientIdentifierCount:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(HMDResidentStatusChannelManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDResidentStatusChannelManager *)v9 clientIdentifiers];
    v15 = 138544130;
    v16 = v11;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Evaluating channel connection state (currentCount: %lu previousCount: %lu, clientIdentifiers: %@)", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if ((a3 == 0) != (a4 == 0))
  {
    if ([(HMDResidentStatusChannelManager *)v9 _shouldChannelBeRunning])
    {
      [(HMDResidentStatusChannelManager *)v9 _stopUnsubscribeFromChannelDebounceTimer];
      v13 = [(HMDResidentStatusChannelManager *)v9 residentStatusChannel];
      [v13 start];
    }

    else
    {
      [(HMDResidentStatusChannelManager *)v9 _startUnsubscribeFromChannelDebounceTimer];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_residentStatusChannelNeededForBundleIdentifier:(id)a3 applicationState:(unint64_t)a4
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a4 | 2) == 2)
  {
    v6 = *MEMORY[0x277CCFE40];
    v15[0] = *MEMORY[0x277CCFD80];
    v15[1] = v6;
    v15[2] = *MEMORY[0x277CD09C8];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    if (isInternalBuild())
    {
      v8 = *MEMORY[0x277CD0040];
      v14[0] = *MEMORY[0x277CD0038];
      v14[1] = v8;
      v14[2] = *MEMORY[0x277CD06C8];
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
      v10 = [v7 arrayByAddingObjectsFromArray:v9];

      v7 = v10;
    }

    v11 = [v7 containsObject:v5];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_handleForegroundStateChangedForBundleIdentifier:(id)a3 applicationState:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(HMDResidentStatusChannelManager *)self _residentStatusChannelNeededForBundleIdentifier:v6 applicationState:a4])
  {
    [(HMDResidentStatusChannelManager *)self addClientWithIdentifier:v6];
  }

  else
  {
    v7 = [(HMDResidentStatusChannelManager *)self clientIdentifiers];
    v8 = [v7 containsObject:v6];

    if (v8)
    {
      [(HMDResidentStatusChannelManager *)self removeClientWithIdentifier:v6];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543874;
        v15 = v12;
        v16 = 2160;
        v17 = 1752392040;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@No changes to resident status channel clients for '%{mask.hash}@'", &v14, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithExistingProcesses:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HMDResidentStatusChannelManager__configureWithExistingProcesses___block_invoke;
  v3[3] = &unk_27867E450;
  v3[4] = self;
  [a3 na_each:v3];
}

void __67__HMDResidentStatusChannelManager__configureWithExistingProcesses___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if ([v4 length])
  {
    v5 = [v3 shouldMonitor];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v3 state];
      v8 = v6;
      v9 = v4;
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = v4;
      v7 = 0;
    }

    [v8 _handleForegroundStateChangedForBundleIdentifier:v9 applicationState:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing process info application bundle identifier: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSMutableSet)clientIdentifiers
{
  v3 = [(HMDResidentStatusChannelManager *)self queue];
  dispatch_assert_queue_V2(v3);

  clientIdentifiers = self->_clientIdentifiers;

  return clientIdentifiers;
}

- (void)handleProcessRemoved:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentStatusChannelManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDResidentStatusChannelManager_handleProcessRemoved___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__HMDResidentStatusChannelManager_handleProcessRemoved___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 bundleIdentifier];
    if ([v6 length])
    {
      if (([v5 shouldMonitor] & 1) == 0)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 40);
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = HMFGetLogIdentifier();
          v22 = 138543618;
          v23 = v10;
          v24 = 2112;
          v25 = v5;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Handling process info removed notification: %@", &v22, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        [*(a1 + 40) _handleForegroundStateChangedForBundleIdentifier:v6 applicationState:1];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 32);
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing process info application bundle identifier: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Bad process removed notification object: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleProcessAdded:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentStatusChannelManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDResidentStatusChannelManager_handleProcessAdded___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__HMDResidentStatusChannelManager_handleProcessAdded___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 bundleIdentifier];
    if ([v6 length])
    {
      if (([v5 shouldMonitor] & 1) == 0)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 40);
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = HMFGetLogIdentifier();
          v22 = 138543618;
          v23 = v10;
          v24 = 2112;
          v25 = v5;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Handling process info added notification: %@", &v22, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        [*(a1 + 40) _handleForegroundStateChangedForBundleIdentifier:v6 applicationState:0];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 32);
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing process info application bundle identifier: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Bad process added notification object: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleProcessInfoStateChanged:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 bundleIdentifier];
    if (v9)
    {
      v10 = [(HMDResidentStatusChannelManager *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__HMDResidentStatusChannelManager_handleProcessInfoStateChanged___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = self;
      v22 = v8;
      v23 = v9;
      dispatch_async(v10, block);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v19;
        v26 = 2112;
        v27 = v4;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing process info application bundle identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v4 userInfo];
      *buf = 138543874;
      v25 = v14;
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not find process info in notification user info for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HMDResidentStatusChannelManager_handleProcessInfoStateChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling state changed notification for process info: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleForegroundStateChangedForBundleIdentifier:*(a1 + 48) applicationState:{objc_msgSend(*(a1 + 40), "state")}];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeClientWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentStatusChannelManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDResidentStatusChannelManager_removeClientWithIdentifier___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __62__HMDResidentStatusChannelManager_removeClientWithIdentifier___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _shouldAllowChannelManagement];
  if (result)
  {
    v3 = [*(a1 + 32) clientIdentifiers];
    v4 = [v3 count];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing client with identifier: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 32) clientIdentifiers];
    [v10 removeObject:*(a1 + 40)];

    v11 = [*(a1 + 32) clientIdentifiers];
    v12 = [v11 count];

    result = [*(a1 + 32) _evaluateChannelConnectionStateWithCurrentClientIdentifierCount:v12 previousClientIdentifierCount:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addClientWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentStatusChannelManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDResidentStatusChannelManager_addClientWithIdentifier___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __59__HMDResidentStatusChannelManager_addClientWithIdentifier___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _shouldAllowChannelManagement];
  if (result)
  {
    v3 = [*(a1 + 32) clientIdentifiers];
    v4 = [v3 count];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding client with identifier: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 32) clientIdentifiers];
    [v10 addObject:*(a1 + 40)];

    v11 = [*(a1 + 32) clientIdentifiers];
    v12 = [v11 count];

    result = [*(a1 + 32) _evaluateChannelConnectionStateWithCurrentClientIdentifierCount:v12 previousClientIdentifierCount:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)configure
{
  v3 = [(HMDResidentStatusChannelManager *)self notificationCenter];
  [v3 addObserver:self selector:sel_handleProcessInfoStateChanged_ name:HMDProcessMonitorProcessStateDidChangeNotification object:0];

  if (isInternalBuild())
  {
    v4 = [(HMDResidentStatusChannelManager *)self notificationCenter];
    [v4 addObserver:self selector:sel_handleProcessAdded_ name:@"HMDProcessMonitorProcessAddedNotification" object:0];

    v5 = [(HMDResidentStatusChannelManager *)self notificationCenter];
    [v5 addObserver:self selector:sel_handleProcessRemoved_ name:@"HMDProcessMonitorProcessRemovedNotification" object:0];
  }

  v6 = [(HMDResidentStatusChannelManager *)self processMonitor];
  v7 = [v6 processes];

  [(HMDResidentStatusChannelManager *)self _configureWithExistingProcesses:v7];
  logAndPostNotification(@"HMDResidentStatusChannelReadyNotification", self, 0);
}

- (HMDResidentStatusChannelManager)initWithResidentStatusChannel:(id)a3 queue:(id)a4 idsServerBag:(id)a5
{
  v8 = MEMORY[0x277CCAB98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 defaultCenter];
  v13 = objc_opt_new();
  v14 = +[HMDXPCMessageTransport defaultTransport];
  v15 = [v14 processMonitor];
  v16 = [(HMDResidentStatusChannelManager *)self initWithResidentStatusChannel:v11 notificationCenter:v12 queue:v10 timerProvider:v13 idsServerBag:v9 processMonitor:v15];

  return v16;
}

- (HMDResidentStatusChannelManager)initWithResidentStatusChannel:(id)a3 notificationCenter:(id)a4 queue:(id)a5 timerProvider:(id)a6 idsServerBag:(id)a7 processMonitor:(id)a8
{
  v25 = a3;
  v24 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = HMDResidentStatusChannelManager;
  v19 = [(HMDResidentStatusChannelManager *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_residentStatusChannel, a3);
    objc_storeStrong(&v20->_notificationCenter, a4);
    objc_storeStrong(&v20->_queue, a5);
    objc_storeStrong(&v20->_timerProvider, a6);
    v21 = [MEMORY[0x277CBEB58] set];
    clientIdentifiers = v20->_clientIdentifiers;
    v20->_clientIdentifiers = v21;

    objc_storeWeak(&v20->_idsServerBag, v17);
    objc_storeStrong(&v20->_processMonitor, a8);
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22_191909 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_191909, &__block_literal_global_191910);
  }

  v3 = logCategory__hmf_once_v23_191911;

  return v3;
}

void __46__HMDResidentStatusChannelManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v23_191911;
  logCategory__hmf_once_v23_191911 = v1;
}

@end