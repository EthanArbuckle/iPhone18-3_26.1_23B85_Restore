@interface HMDAppleAccountManager
+ (HMDAppleAccountManager)sharedManager;
+ (id)logCategory;
- (ACAccountStore)accountStore;
- (BOOL)isModelCurrentAccount:(id)a3;
- (BOOL)isServiceActive;
- (BOOL)maybeSkipUpdatesOfType:(unint64_t)a3 whileMigrating:(BOOL)a4;
- (BOOL)shouldAccount:(id)a3 pushbackModel:(id)a4 actions:(id)a5;
- (BOOL)shouldCacheAccount:(id)a3;
- (BOOL)shouldDevice:(id)a3 processModel:(id)a4 actions:(id)a5;
- (BOOL)shouldSyncAccount:(id)a3;
- (BOOL)shouldSyncDevice:(id)a3;
- (HMDAccount)account;
- (HMDAccountRegistry)accountRegistry;
- (HMDAppleAccountContext)accountContext;
- (HMDAppleAccountManager)init;
- (HMDAppleAccountManager)initWithIDSService:(id)a3 activityBroadcaster:(id)a4 dataSource:(id)a5;
- (HMDAppleAccountManager)initWithIDSServiceManager:(id)a3;
- (HMDBackingStore)backingStore;
- (HMDDevice)device;
- (id)idsDeviceForIDSIdentifier:(id)a3;
- (id)primaryHandleForAccount:(id)a3 isForDisplay:(BOOL)a4;
- (int64_t)IDSAccountRegistrationError;
- (int64_t)IDSAccountRegistrationStatus;
- (void)__deviceAddedToCurrentAccount:(id)a3;
- (void)__deviceRemovedFromCurrentAccount:(id)a3;
- (void)__handleAccountAddedOrModified:(BOOL)a3;
- (void)__handleMigrationUpdated:(id)a3;
- (void)__handleRemovedAccountWithCompletion:(id)a3;
- (void)__handleUpdatedName:(id)a3;
- (void)__localDataReset:(id)a3;
- (void)__updateMergeIDOnAccount;
- (void)_deregisterForRapportNotifications;
- (void)_registerForRapportNotifications;
- (void)_updatePushToken:(id)a3;
- (void)account:(id)a3 aliasesChanged:(id)a4;
- (void)account:(id)a3 isActiveChanged:(BOOL)a4;
- (void)accountChangeObserver:(id)a3 observedAddedAccount:(id)a4;
- (void)accountChangeObserver:(id)a3 observedDeletedAccount:(id)a4;
- (void)accountChangeObserver:(id)a3 observedModifiedAccount:(id)a4;
- (void)configureWithAccountRegistry:(id)a3;
- (void)configureWithBackingStore:(id)a3;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)processAccountModel:(id)a3 message:(id)a4;
- (void)processAccountModelRemove:(id)a3 message:(id)a4;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)setAccountRegistry:(id)a3;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)a3;
- (void)updateSenderCorrelationIdentifier:(id)a3;
@end

@implementation HMDAppleAccountManager

+ (id)logCategory
{
  if (logCategory__hmf_once_t105 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t105, &__block_literal_global_164164);
  }

  v3 = logCategory__hmf_once_v106;

  return v3;
}

+ (HMDAppleAccountManager)sharedManager
{
  v2 = +[HMDRegistry shared];
  v3 = [v2 appleAccountManager];

  return v3;
}

- (HMDAccount)account
{
  [(HMDAppleAccountManager *)self accountRegistry];

  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_account;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (HMDAccountRegistry)accountRegistry
{
  os_unfair_recursive_lock_lock_with_options();
  accountRegistry = self->_accountRegistry;
  if (accountRegistry)
  {
    v4 = accountRegistry;
    os_unfair_recursive_lock_unlock();

    return v4;
  }

  else
  {
    result = _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

void __58__HMDAppleAccountManager__registerForRapportNotifications__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification that rapport identity changed, update current device", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [v3 account];
    if (v6)
    {
      __updateCurrentDevice(v3, v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isServiceActive
{
  v2 = [(HMDAppleAccountManager *)self service];
  v3 = [v2 hmd_isActive];

  return v3;
}

- (void)accountChangeObserver:(id)a3 observedDeletedAccount:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification of removed account %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = v9->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HMDAppleAccountManager_accountChangeObserver_observedDeletedAccount___block_invoke;
  v15[3] = &unk_27868A750;
  v15[4] = v9;
  v16 = v7;
  v13 = v7;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __71__HMDAppleAccountManager_accountChangeObserver_observedDeletedAccount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71__HMDAppleAccountManager_accountChangeObserver_observedDeletedAccount___block_invoke_2;
  v2[3] = &unk_27868A1D8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 __handleRemovedAccountWithCompletion:v2];
}

void __71__HMDAppleAccountManager_accountChangeObserver_observedDeletedAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Resolving current device settled promise due to sign out", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) currentDeviceSettledPromise];
  [v8 fulfillWithNoValue];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Completed handling of removed account %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accountChangeObserver:(id)a3 observedModifiedAccount:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification of modified account %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = v9->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDAppleAccountManager_accountChangeObserver_observedModifiedAccount___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v9;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)accountChangeObserver:(id)a3 observedAddedAccount:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification of added account %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = v9->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDAppleAccountManager_accountChangeObserver_observedAddedAccount___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v9;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAppleAccountManager *)self service];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification that devices changed on the current account", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HMDAppleAccountManager *)v11 devicesChangeBackoffTimer];
    [v14 resume];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAppleAccountManager *)self service];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification that the current account changed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = [v6 accounts];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          [v19 addDelegate:v11 queue:v11->_queue];
          [v19 addRegistrationDelegate:v11 queue:v11->_queue];
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    v20 = [(HMDAppleAccountManager *)v11 accountChangeBackoffTimer];
    [v20 resume];

    v21 = [(HMDAppleAccountManager *)v11 accountChangeBackoffTimer];
    [v21 reset];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 aliasesChanged:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification that aliases changed", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDAppleAccountManager *)v9 accountChangeBackoffTimer];
  [v12 resume];

  v13 = [(HMDAppleAccountManager *)v9 accountChangeBackoffTimer];
  [v13 reset];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 isActiveChanged:(BOOL)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HMDAppleAccountManager *)self service];
  v7 = [v6 accounts];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification that account is active changed", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDAppleAccountManager *)v10 accountChangeBackoffTimer];
    [v13 resume];

    v14 = [(HMDAppleAccountManager *)v10 accountChangeBackoffTimer];
    [v14 reset];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(HMDAppleAccountManager *)self accountChangeBackoffTimer];
  v5 = [v8 isEqual:v4];

  if (v5)
  {
    __updateAccount(self, 1);
  }

  else
  {
    v6 = [(HMDAppleAccountManager *)self devicesChangeBackoffTimer];
    v7 = [v8 isEqual:v6];

    if (v7)
    {
      __updateDevices(self, 1);
    }
  }
}

- (void)_updatePushToken:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (a3)
  {
    v5 = [(HMDAppleAccountManager *)self account];
    if (v5)
    {
      v6 = v5;
      __updateCurrentDevice(self, v5);
      v5 = v6;
    }
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [MEMORY[0x277D0F8D8] defaultFormatter];
    v13 = [v12 privateStringForObjectValue:v7];
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received push token: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = v9->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__HMDAppleAccountManager_connection_didReceivePublicToken___block_invoke;
  v17[3] = &unk_27868A750;
  v17[4] = v9;
  v18 = v7;
  v15 = v7;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __59__HMDAppleAccountManager_connection_didReceivePublicToken___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isMonitoring];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification that the push token changed", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) _updatePushToken:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) length];
      v12 = 138543618;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@We got the push token before the apple account manager is started. Will process this token once it starts up. token length: %lu", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) setPendingPushToken:*(a1 + 40)];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)processAccountModelRemove:(id)a3 message:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAppleAccountManager *)self account];

  if (!v8)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unexpected object model received", buf, 0xCu);
LABEL_9:
    }

LABEL_10:

    objc_autoreleasePoolPop(v17);
    goto LABEL_11;
  }

  v9 = [(HMDAppleAccountManager *)self account];
  v10 = [v9 modelIdentifier];
  v11 = [v6 uuid];
  v12 = HMFEqualObjects();

  if ((v12 & 1) == 0)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Account update does not match current account identifier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [[HMDAssertionLogEvent alloc] initWithReason:@"Account update does not match current account identifier"];
    v32 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v32 submitLogEvent:v31];
  }

  v13 = [v6 uuid];
  v14 = [(HMDAppleAccountManager *)self account];
  v15 = [v14 modelIdentifier];
  v16 = [v13 hmf_isEqualToUUID:v15];

  if ((v16 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [(HMDAppleAccountManager *)v18 account];
      v22 = [v21 modelIdentifier];
      v23 = [v22 UUIDString];
      v24 = [v6 uuid];
      [v24 UUIDString];
      v25 = v33 = v17;
      *buf = 138543874;
      v35 = v20;
      v36 = 2112;
      v37 = v23;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Account update does not match current account identifier -- current identifier: %@, received identifier: %@", buf, 0x20u);

      v17 = v33;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __setAccount(self, 0, 1);
LABEL_11:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)processAccountModel:(id)a3 message:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAppleAccountManager *)self account];

  if (v8)
  {
    v9 = [(HMDAppleAccountManager *)self account];
    v10 = [v9 modelIdentifier];
    v11 = [v6 uuid];
    v12 = HMFEqualObjects();

    if ((v12 & 1) == 0)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Account update does not match current account identifier", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v33 = [[HMDAssertionLogEvent alloc] initWithReason:@"Account update does not match current account identifier"];
      v34 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v34 submitLogEvent:v33];
    }

    v13 = [v6 uuid];
    v14 = [(HMDAppleAccountManager *)self account];
    v15 = [v14 modelIdentifier];
    v16 = [v13 hmf_isEqualToUUID:v15];

    if (v16)
    {
      v17 = [(HMDAppleAccountManager *)self account];
      [v17 transactionObjectUpdated:0 newValues:v6 message:v7];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [(HMDAppleAccountManager *)v20 account];
        v24 = [v23 modelIdentifier];
        v25 = [v24 UUIDString];
        v26 = [v6 uuid];
        [v26 UUIDString];
        v27 = v35 = v19;
        *buf = 138543874;
        v37 = v22;
        v38 = 2112;
        v39 = v25;
        v40 = 2112;
        v41 = v27;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Account update does not match current account identifier -- current identifier: %@, received identifier: %@", buf, 0x20u);

        v19 = v35;
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v18 = [[HMDAccount alloc] initWithObjectModel:v6];
    if (v18)
    {
      __setAccount(self, v18, 1);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)isModelCurrentAccount:(id)a3
{
  v4 = a3;
  v5 = [(HMDAppleAccountManager *)self accountContext];
  if (v5)
  {
    v6 = [HMDAccountIdentifier accountIdentifierForAppleAccountContext:v5];
    v7 = [v4 identifier];

    if (v7)
    {
      v8 = [v4 identifier];
      v9 = HMFEqualObjects();
    }

    else
    {
      v8 = [v6 identifier];
      v10 = [v4 uuid];
      v9 = HMFEqualObjects();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)primaryHandleForAccount:(id)a3 isForDisplay:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(HMDAppleAccountManager *)self account];
    if ([v6 isEqual:v7])
    {
      v8 = [(HMDAppleAccountManager *)self service];
      v9 = v8;
      if (a4)
      {
        [v8 hmd_preferredDisplayHandle];
      }

      else
      {
        [v8 hmd_preferredHandle];
      }
      v11 = ;

      v12 = [v6 handles];
      v13 = [v12 containsObject:v11];

      if (v13)
      {
        v10 = v11;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldDevice:(id)a3 processModel:(id)a4 actions:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9)
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() & 1;
    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = v9;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (!v11 && (isKindOfClass & 1) == 0)
    {
      goto LABEL_25;
    }

    if ([v10 source] == 2 && objc_msgSend(v8, "isCurrentDevice"))
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v8;
      v20 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
LABEL_24:

        objc_autoreleasePoolPop(v18);
LABEL_25:
        v27 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v21 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v21;
      v22 = "%{public}@The cloud updated our current device, dropping change.";
    }

    else
    {
      if ([v10 source] || -[HMDAppleAccountManager isCurrentDeviceDataOwnerForDevice:](self, "isCurrentDeviceDataOwnerForDevice:", v8) || !objc_msgSend(v8, "isCloudTracked"))
      {
        v27 = 1;
        goto LABEL_27;
      }

      v18 = objc_autoreleasePoolPush();
      v28 = v8;
      v20 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      v21 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v21;
      v22 = "%{public}@This device is tracked by a cloud model, dropping change.";
    }

    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, v22, &v31, 0xCu);

    goto LABEL_24;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Manager cannot confirm account model process due to nil parameter.", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = 0;
LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)shouldAccount:(id)a3 pushbackModel:(id)a4 actions:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9)
  {
    if ([(HMDAppleAccountManager *)self shouldSyncAccount:v8])
    {
      v11 = v9;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v51 = v13;

      v14 = v11;
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v50 = v16;

      if (isKindOfClass)
      {
        if (![(HMDAppleAccountManager *)self isServiceActive])
        {
          v35 = objc_autoreleasePoolPush();
          v36 = self;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543362;
            v62 = v38;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Not pushing back account handles while inactive", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v35);
          goto LABEL_53;
        }

        if ([v10 source] != 2)
        {
LABEL_53:
          v28 = 0;
          goto LABEL_54;
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = [v8 handles];
        v17 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v17)
        {
          v46 = v10;
          v18 = *v57;
          while (2)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v57 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v56 + 1) + 8 * i);
              v21 = [v20 modelIdentifier];
              v22 = [v51 uuid];
              v23 = [v21 hmf_isEqualToUUID:v22];

              if (v23)
              {
                v17 = v20;
                goto LABEL_41;
              }
            }

            v17 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

LABEL_41:
          v10 = v46;
        }

        if ([v17 isLocallyTracked])
        {
          v39 = objc_autoreleasePoolPush();
          v40 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v62 = v42;
            v63 = 2112;
            v64 = v17;
            v43 = "%{public}@This handle is locally tracked, pushing back -- accountHandle: %@";
LABEL_50:
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, v43, buf, 0x16u);

            goto LABEL_51;
          }

          goto LABEL_51;
        }
      }

      else
      {
        if ((v15 & 1) == 0 || [v10 source] != 2)
        {
          goto LABEL_53;
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        obja = [v8 devices];
        v17 = [obja countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v17)
        {
          v47 = v10;
          v29 = *v53;
          while (2)
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v53 != v29)
              {
                objc_enumerationMutation(obja);
              }

              v31 = *(*(&v52 + 1) + 8 * j);
              v32 = [v31 modelIdentifier];
              v33 = [v50 uuid];
              v34 = [v32 hmf_isEqualToUUID:v33];

              if (v34)
              {
                v17 = v31;
                goto LABEL_46;
              }
            }

            v17 = [obja countByEnumeratingWithState:&v52 objects:v60 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

LABEL_46:
          v10 = v47;
        }

        if ([v17 isCurrentDevice])
        {
          v39 = objc_autoreleasePoolPush();
          v40 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v62 = v42;
            v63 = 2112;
            v64 = v17;
            v43 = "%{public}@This is our current device, pushing back -- device: %@";
            goto LABEL_50;
          }

LABEL_51:

          objc_autoreleasePoolPop(v39);
          v28 = 1;
LABEL_54:

          goto LABEL_55;
        }
      }

      goto LABEL_53;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Manager cannot confirm account model process due to nil parameter.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v28 = 0;
LABEL_55:

  v44 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)shouldSyncDevice:(id)a3
{
  v4 = a3;
  v8 = v4 && ([v4 account], v6 = v5 = v4;

  return v8;
}

- (BOOL)shouldSyncAccount:(id)a3
{
  v4 = a3;
  v7 = 0;
  if (v4)
  {
    v5 = [(HMDAppleAccountManager *)self account];
    v6 = HMFEqualObjects();

    if (v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)shouldCacheAccount:(id)a3
{
  v4 = a3;
  v5 = [(HMDAppleAccountManager *)self account];

  return v5 == v4;
}

- (id)idsDeviceForIDSIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDAppleAccountManager *)self service];
  v6 = [v5 devices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HMDAppleAccountManager_idsDeviceForIDSIdentifier___block_invoke;
  v10[3] = &unk_27867C590;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __52__HMDAppleAccountManager_idsDeviceForIDSIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIDOverride];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (HMDDevice)device
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HMDAppleAccountManager *)self account];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isCurrentDevice])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)__deviceRemovedFromCurrentAccount:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDAppleAccountManager___deviceRemovedFromCurrentAccount___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __60__HMDAppleAccountManager___deviceRemovedFromCurrentAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

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

  v6 = [v5 isCurrentDevice];
  if (v6)
  {
    v7 = [*(a1 + 40) device];

    if (!v7)
    {
      v8 = *(a1 + 40);

      __handleUpdatedDevice_164015(v8, 0);
    }
  }
}

- (void)__deviceAddedToCurrentAccount:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDAppleAccountManager___deviceAddedToCurrentAccount___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __56__HMDAppleAccountManager___deviceAddedToCurrentAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

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

  v6 = [v5 isCurrentDevice];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v7 device];
    __handleUpdatedDevice_164015(v7, v8);
  }
}

- (int64_t)IDSAccountRegistrationError
{
  v2 = [(HMDAppleAccountManager *)self service];
  v3 = [v2 hmd_registrationError];

  return v3;
}

- (int64_t)IDSAccountRegistrationStatus
{
  v2 = [(HMDAppleAccountManager *)self service];
  v3 = [v2 hmd_registrationStatus];

  return v3;
}

- (void)updateSenderCorrelationIdentifier:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleAccountManager *)self account];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 senderCorrelationIdentifier];
    v8 = v7;
    if (v7 && [v7 isEqual:v4])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@MergeID is the same, not updating", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      [v6 setSenderCorrelationIdentifier:v4];
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v16;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Updated mergeID for currentAccount : %@. Also going to ask IDS about the mergeID.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      queue = v14->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDAppleAccountManager_updateSenderCorrelationIdentifier___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = v14;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Current account went away, not updating", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)__updateMergeIDOnAccount
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleAccountManager *)self account];
  v4 = [v3 handles];
  v5 = [v4 firstObject];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v3 shortDescription];
      *buf = 138543618;
      v32 = v10;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Trying to update mergeID on currentAccount: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [v5 value];
    if ([v12 _appearsToBeEmail])
    {
      v13 = MEMORY[0x22AAD2AB0](v12);
    }

    else if ([v12 _appearsToBeBusinessID])
    {
      v13 = MEMORY[0x22AAD2A90](v12);
    }

    else
    {
      v13 = IDSCopyIDForPhoneNumber();
    }

    v15 = v13;

    if (v15)
    {
      v16 = [MEMORY[0x277D18728] sharedInstance];
      v30 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      v18 = +[HMDIDSServiceManager sharedIDSServiceName];
      v19 = [MEMORY[0x277CCACA8] stringGUID];
      queue = v7->_queue;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke;
      v27[3] = &unk_27867C568;
      v27[4] = v7;
      v28 = v15;
      v29 = v3;
      [v16 currentRemoteDevicesForDestinations:v17 service:v18 listenerID:v19 queue:queue completionBlock:v27];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v7;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v5 value];
        *buf = 138543874;
        v32 = v24;
        v33 = 2112;
        v34 = v25;
        v35 = 2112;
        v36 = v5;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine destination with handle value: %@, account handle: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
    }
  }

  else
  {
    if (v9)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v14;
      v33 = 2112;
      v34 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Account is missing a handle so cannot update mergeID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke_2;
  v5[3] = &unk_27867C540;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke_3;
  v8[3] = &unk_27867C518;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  v10 = *(a1 + 48);
  v11 = a4;
  [a3 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
}

void __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 senderCorrelationIdentifier];
  if (v7)
  {
    v8 = [*(a1 + 32) account];
    [v8 setSenderCorrelationIdentifier:v7];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) identifier];
      v21 = 138544130;
      v22 = v12;
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Found mergeID %@ for destination %@, new attribute %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    *a4 = 1;
    **(a1 + 56) = 1;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 32) account];
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Did not get the mergeID after querying IDS: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (HMDAppleAccountContext)accountContext
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_accountContext;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)__handleMigrationUpdated:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDAppleAccountManager___handleMigrationUpdated___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__HMDAppleAccountManager___handleMigrationUpdated___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F910] systemInfo];
  v3 = [v2 isMigrating];

  if ((v3 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received notification that migration completed", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(a1 + 32) accountChangeBackoffTimer];
    [v8 resume];

    v9 = [*(a1 + 32) accountChangeBackoffTimer];
    [v9 reset];

    v10 = [*(a1 + 32) devicesChangeBackoffTimer];
    [v10 resume];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)__handleUpdatedName:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D0F758]];

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

  if (v7)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__HMDAppleAccountManager___handleUpdatedName___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(queue, v9);
  }
}

void __46__HMDAppleAccountManager___handleUpdatedName___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) device];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [v2 name];
    LOBYTE(v4) = HMFEqualObjects();

    if ((v4 & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = HMFGetLogIdentifier();
        v10 = *(a1 + 40);
        v19 = 138543618;
        v20 = v9;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Updating name: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
      v12 = [*(a1 + 32) backingStore];
      v13 = [v12 transaction:@"Update Device Name" options:v11];

      v14 = [HMDDeviceModel alloc];
      v15 = [v3 modelIdentifier];
      v16 = [v3 modelParentIdentifier];
      v17 = [(HMDBackingStoreModelObject *)v14 initWithObjectChangeType:2 uuid:v15 parentUUID:v16];

      [(HMDDeviceModel *)v17 setName:*(a1 + 40)];
      [v13 add:v17];
      [v13 run];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)__handleRemovedAccountWithCompletion:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HMDAppleAccountManager *)self isMonitoring];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification account was removed", &v39, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277CB8F48] defaultStore];
    v12 = [v11 aa_primaryAppleAccount];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v7;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = HMFGetLogIdentifier();
        v39 = 138543362;
        v40 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_FAULT, "%{public}@Got primary iCloud account removed notification even though user is still signed in", &v39, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = objc_autoreleasePoolPush();
      v18 = v14;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v39 = 138543362;
        v40 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Got primary iCloud account removed notification even though user is still signed in", &v39, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2721];
      v4[2](v4, v21);
    }

    else
    {
      [HMDPersistentStore resetConfiguration:2];
      os_unfair_recursive_lock_lock_with_options();
      v24 = objc_autoreleasePoolPush();
      v25 = v7;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        account = v25->_account;
        v39 = 138543618;
        v40 = v27;
        v41 = 2112;
        v42 = account;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Current account: %@", &v39, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      accountContext = v25->_accountContext;
      v25->_accountContext = 0;

      v25->_loggedIn = 0;
      v30 = v25->_account;
      if (v30)
      {
        __removeAccount(v25, v25->_account);
      }

      v31 = objc_autoreleasePoolPush();
      v32 = v25;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        v39 = 138543362;
        v40 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Primary apple account is removed & logged out", &v39, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      os_unfair_recursive_lock_unlock();
      if (!v30)
      {
        v35 = +[HMDMainDriver driver];
        v36 = [v35 homeManager];
        [v36 _eraseLocalHomeConfigurationAfterSignOut];
      }

      v37 = [(HMDAppleAccountManager *)v32 settings];
      [v37 synchronize];

      v4[2](v4, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v22;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring account notification", &v39, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v4[2](v4, v23);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)__handleAccountAddedOrModified:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HMDAppleAccountManager *)self isMonitoring];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification account was modified", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    __updateAccountContext(v7);
    v11 = [(HMDAppleAccountManager *)v7 settings];
    [v11 synchronize];

    if (v3)
    {
      v12 = [(HMDAppleAccountManager *)v7 account];

      if (!v12)
      {
        v13 = __createAccount(v7);
        if (v13)
        {
          __addAccount(v7, v13);
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          v16 = v7;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            v21 = 138543362;
            v22 = v18;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to create account", &v21, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
        }
      }
    }

    v19 = [(HMDAppleAccountManager *)v7 notificationCenter];
    [v19 postNotificationName:@"HMDAppleAccountManagerAccountModifiedNotification" object:v7];

    [(HMDAppleAccountManager *)v7 __updateMergeIDOnAccount];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring account notification", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)__localDataReset:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDAppleAccountManager___localDataReset___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__HMDAppleAccountManager___localDataReset___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isMonitoring])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Repushing account transactions", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [*(a1 + 32) account];
    if (v6 || (__createAccount(*(a1 + 32)), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [*(a1 + 32) accountContext];

      if (v8)
      {
        __addAccount(*(a1 + 32), v7);
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to re-create account", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v7 = 0;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot add account after local reset", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_14;
  }

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMDAppleAccountManager_stop__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __30__HMDAppleAccountManager_stop__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isMonitoring])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setMonitoring:0];
    [*(a1 + 32) _deregisterForRapportNotifications];
    v6 = [*(a1 + 32) service];
    [v6 removeDelegate:*(a1 + 32)];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [*(a1 + 32) service];
    v8 = [v7 accounts];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          [v13 removeDelegate:*(a1 + 32)];
          [v13 removeRegistrationDelegate:*(a1 + 32)];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  [(HMDAppleAccountManager *)self backingStore];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDAppleAccountManager_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__HMDAppleAccountManager_start__block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isMonitoring] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setMonitoring:1];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = v6;
      v8 = [v7 notificationCenter];
      v9 = *MEMORY[0x277D0F760];
      v10 = [MEMORY[0x277D0F910] systemInfo];
      [v8 addObserver:v7 selector:sel___handleUpdatedName_ name:v9 object:v10];

      v11 = [v7 notificationCenter];
      v12 = *MEMORY[0x277D0F750];
      v13 = [MEMORY[0x277D0F910] systemInfo];
      [v11 addObserver:v7 selector:sel___handleMigrationUpdated_ name:v12 object:v13];

      v14 = [v7 notificationCenter];
      [v14 addObserver:v7 selector:sel___localDataReset_ name:@"HMDBackingStoreLocalDataReset" object:0];

      v15 = *(a1 + 32);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 service];
    [v16 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];

    v17 = [*(a1 + 32) activityBroadcaster];
    [v17 configureWithQueue:*(*(a1 + 32) + 16)];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v18 = [*(a1 + 32) service];
    v19 = [v18 accounts];

    v20 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v46;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v45 + 1) + 8 * i);
          [v24 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
          [v24 addRegistrationDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
        }

        v21 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v21);
    }

    __updateAccountContext(*(a1 + 32));
    v25 = [*(a1 + 32) account];
    v26 = [*(a1 + 32) accountContext];

    if (v26)
    {
      v27 = *(a1 + 32);
      if (v25)
      {
        __updateAccount(v27, 0);
        __updateDevices(*(a1 + 32), 0);
      }

      else
      {
        v28 = __createAccount(v27);
        if (v28)
        {
          __addAccount(*(a1 + 32), v28);
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = *(a1 + 32);
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543362;
            v51 = v32;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to create account", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v29);
        }
      }
    }

    else if (v25)
    {
      __removeAccount(*(a1 + 32), v25);
    }

    v33 = [*(a1 + 32) pendingPushToken];

    if (v33)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = *(a1 + 32);
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v37;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@We might have a missed the didReceivePublicToken earlier. Let's set the token first.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v38 = *(a1 + 32);
      v39 = [v38 pendingPushToken];
      [v38 _updatePushToken:v39];

      [*(a1 + 32) setPendingPushToken:0];
    }

    [*(a1 + 32) __updateMergeIDOnAccount];
    v40 = [*(a1 + 32) notificationCenter];
    [v40 postNotificationName:@"HMDAppleAccountManagerResolved" object:*(a1 + 32)];

    v41 = [*(a1 + 32) deviceAccountSettledPromise];
    [v41 fulfillWithNoValue];

    [*(a1 + 32) _registerForRapportNotifications];
    v42 = *(a1 + 32);
    v43 = [v42 accountChangeObserver];
    [v43 setDelegate:v42];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)setAccountRegistry:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v5 = v4;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_accountRegistry)
  {
LABEL_7:
    _HMFPreconditionFailure();
    __break(1u);
    return;
  }

  self->_accountRegistry = v5;

  os_unfair_recursive_lock_unlock();
}

- (void)configureWithAccountRegistry:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMDAppleAccountManager *)self setAccountRegistry:v4];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__164124;
  v22 = __Block_byref_object_dispose__164125;
  v23 = 0;
  v5 = [v4 fetchAccountsWithLocalFlag:1];
  if ([v5 count] < 2)
  {
    v6 = [v5 firstObject];
    v7 = v19[5];
    v19[5] = v6;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__HMDAppleAccountManager_configureWithAccountRegistry___block_invoke;
    v15[3] = &unk_27867C4F0;
    v17 = &v18;
    v15[4] = self;
    v16 = v4;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  }

  if (v19[5])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = v19[5];
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Using local account %@ fetched from the database.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(HMDAppleAccountManager *)v9 deviceAccountSettledPromise];
    [v13 fulfillWithNoValue];

    __setAccount(v9, v19[5], 0);
  }

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __55__HMDAppleAccountManager_configureWithAccountRegistry___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *(*(a1 + 48) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@More than one account found. Removing %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 40) removeAccount:v4];
  }

  else
  {
    objc_storeStrong(v6, a2);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDBackingStore)backingStore
{
  os_unfair_recursive_lock_lock_with_options();
  backingStore = self->_backingStore;
  if (backingStore)
  {
    v4 = backingStore;
    os_unfair_recursive_lock_unlock();

    return v4;
  }

  else
  {
    result = _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

- (void)configureWithBackingStore:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v5 = v4;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_backingStore)
  {
LABEL_7:
    _HMFPreconditionFailure();
    __break(1u);
    return;
  }

  self->_backingStore = v5;

  os_unfair_recursive_lock_unlock();
}

- (ACAccountStore)accountStore
{
  v2 = self->_accountStore;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_deregisterForRapportNotifications
{
  if ([(HMDAppleAccountManager *)self isRapportIdentitiesChangedNotificationTokenValid])
  {
    notify_cancel([(HMDAppleAccountManager *)self rapportIdentitiesChangedNotificationToken]);

    [(HMDAppleAccountManager *)self setRapportIdentitiesChangedNotificationTokenValid:0];
  }
}

- (void)_registerForRapportNotifications
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(HMDAppleAccountManager *)self isRapportIdentitiesChangedNotificationTokenValid])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __58__HMDAppleAccountManager__registerForRapportNotifications__block_invoke;
    v13 = &unk_278682DC8;
    objc_copyWeak(&v14, &location);
    v4 = notify_register_dispatch("com.apple.rapport.identitiesChanged", &self->_rapportIdentitiesChangedNotificationToken, queue, &v10);
    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543874;
        v17 = v8;
        v18 = 2080;
        v19 = "com.apple.rapport.identitiesChanged";
        v20 = 1024;
        v21 = v4;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for %s: %d", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      [(HMDAppleAccountManager *)self setRapportIdentitiesChangedNotificationTokenValid:1, v10, v11, v12, v13];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)maybeSkipUpdatesOfType:(unint64_t)a3 whileMigrating:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = @"devices";
  if (a3 != 1)
  {
    v6 = 0;
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"account";
  }

  v8 = [(HMDAppleAccountManager *)self isServiceActive];
  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Skipping update of %{public}@ while the service is inactive, will try again later", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  if (v4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping update of %{public}@ during migration, will try again later", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    result = 1;
  }

  else
  {
    result = !v8;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDAppleAccountManager)initWithIDSService:(id)a3 activityBroadcaster:(id)a4 dataSource:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v51.receiver = self;
    v51.super_class = HMDAppleAccountManager;
    v12 = [(HMDAppleAccountManager *)&v51 init];
    if (v12)
    {
      v13 = HMFGetOSLogHandle();
      logger = v12->_logger;
      v12->_logger = v13;

      v12->_loggedIn = 0;
      v15 = [v11 queue];
      queue = v12->_queue;
      v12->_queue = v15;

      objc_storeStrong(&v12->_service, a3);
      objc_storeStrong(&v12->_activityBroadcaster, a4);
      v17 = [v11 accountChangeObserver];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      accountChangeObserver = v12->_accountChangeObserver;
      v12->_accountChangeObserver = v19;
      v21 = v19;

      v22 = [v11 apsConnection];
      pushConnection = v12->_pushConnection;
      v12->_pushConnection = v22;

      [(HMDAPSConnection *)v12->_pushConnection setDelegate:v12];
      v24 = [v11 notificationCenter];
      notificationCenter = v12->_notificationCenter;
      v12->_notificationCenter = v24;

      v26 = [v11 accountStore];
      accountStore = v12->_accountStore;
      v12->_accountStore = v26;

      v28 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:3 maximumTimeInterval:1 exponentialFactor:1.0 options:86400.0];
      accountChangeBackoffTimer = v12->_accountChangeBackoffTimer;
      v12->_accountChangeBackoffTimer = v28;

      v30 = [(HMDAppleAccountManager *)v12 accountChangeBackoffTimer];
      [v30 setDelegate:v12];

      v31 = [(HMDAppleAccountManager *)v12 accountChangeBackoffTimer];
      [v31 setDelegateQueue:v12->_queue];

      v32 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:2 options:15.0];
      devicesChangeBackoffTimer = v12->_devicesChangeBackoffTimer;
      v12->_devicesChangeBackoffTimer = v32;

      v34 = [(HMDAppleAccountManager *)v12 devicesChangeBackoffTimer];
      [v34 setDelegate:v12];

      v35 = [(HMDAppleAccountManager *)v12 devicesChangeBackoffTimer];
      [v35 setDelegateQueue:v12->_queue];

      *obj = 0;
      v36 = [MEMORY[0x277D0F7C0] futureWithPromise:obj];
      deviceAccountSettled = v12->_deviceAccountSettled;
      v12->_deviceAccountSettled = v36;

      objc_storeStrong(&v12->_deviceAccountSettledPromise, *obj);
      v50 = 0;
      v38 = [MEMORY[0x277D0F7C0] futureWithPromise:&v50];
      currentDeviceSettled = v12->_currentDeviceSettled;
      v12->_currentDeviceSettled = v38;

      objc_storeStrong(&v12->_currentDeviceSettledPromise, v50);
      v49 = 0;
      v40 = [MEMORY[0x277D0F7C0] futureWithPromise:&v49];
      idsDevicesUpdated = v12->_idsDevicesUpdated;
      v12->_idsDevicesUpdated = v40;

      objc_storeStrong(&v12->_idsDevicesUpdatedPromise, v49);
      __updateAccountContext(v12);
    }

    v42 = v12;
    v43 = v42;
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v42 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *obj = 138543362;
      *&obj[4] = v46;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Service is required", obj, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
    v43 = 0;
  }

  v47 = *MEMORY[0x277D85DE8];
  return v43;
}

- (HMDAppleAccountManager)initWithIDSServiceManager:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating an HMDAppleAccountManager", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = HMDispatchQueueNameString();
  v10 = [v9 UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(v10, v11);

  v13 = +[HMDDeviceCapabilities deviceCapabilities];
  LODWORD(v11) = [v13 isResidentCapable];

  v14 = 0;
  if (v11)
  {
    v14 = [v4 activityBroadcaster];
  }

  v15 = [v4 service];
  v16 = [[HMDAppleAccountManagerDefaultDataSource alloc] initWithQueue:v12];
  v17 = [(HMDAppleAccountManager *)v6 initWithIDSService:v15 activityBroadcaster:v14 dataSource:v16];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (HMDAppleAccountManager)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

void __37__HMDAppleAccountManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v106;
  logCategory__hmf_once_v106 = v1;
}

@end