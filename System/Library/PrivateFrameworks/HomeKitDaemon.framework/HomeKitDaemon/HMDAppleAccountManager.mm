@interface HMDAppleAccountManager
+ (HMDAppleAccountManager)sharedManager;
+ (id)logCategory;
- (ACAccountStore)accountStore;
- (BOOL)isModelCurrentAccount:(id)account;
- (BOOL)isServiceActive;
- (BOOL)maybeSkipUpdatesOfType:(unint64_t)type whileMigrating:(BOOL)migrating;
- (BOOL)shouldAccount:(id)account pushbackModel:(id)model actions:(id)actions;
- (BOOL)shouldCacheAccount:(id)account;
- (BOOL)shouldDevice:(id)device processModel:(id)model actions:(id)actions;
- (BOOL)shouldSyncAccount:(id)account;
- (BOOL)shouldSyncDevice:(id)device;
- (HMDAccount)account;
- (HMDAccountRegistry)accountRegistry;
- (HMDAppleAccountContext)accountContext;
- (HMDAppleAccountManager)init;
- (HMDAppleAccountManager)initWithIDSService:(id)service activityBroadcaster:(id)broadcaster dataSource:(id)source;
- (HMDAppleAccountManager)initWithIDSServiceManager:(id)manager;
- (HMDBackingStore)backingStore;
- (HMDDevice)device;
- (id)idsDeviceForIDSIdentifier:(id)identifier;
- (id)primaryHandleForAccount:(id)account isForDisplay:(BOOL)display;
- (int64_t)IDSAccountRegistrationError;
- (int64_t)IDSAccountRegistrationStatus;
- (void)__deviceAddedToCurrentAccount:(id)account;
- (void)__deviceRemovedFromCurrentAccount:(id)account;
- (void)__handleAccountAddedOrModified:(BOOL)modified;
- (void)__handleMigrationUpdated:(id)updated;
- (void)__handleRemovedAccountWithCompletion:(id)completion;
- (void)__handleUpdatedName:(id)name;
- (void)__localDataReset:(id)reset;
- (void)__updateMergeIDOnAccount;
- (void)_deregisterForRapportNotifications;
- (void)_registerForRapportNotifications;
- (void)_updatePushToken:(id)token;
- (void)account:(id)account aliasesChanged:(id)changed;
- (void)account:(id)account isActiveChanged:(BOOL)changed;
- (void)accountChangeObserver:(id)observer observedAddedAccount:(id)account;
- (void)accountChangeObserver:(id)observer observedDeletedAccount:(id)account;
- (void)accountChangeObserver:(id)observer observedModifiedAccount:(id)account;
- (void)configureWithAccountRegistry:(id)registry;
- (void)configureWithBackingStore:(id)store;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)processAccountModel:(id)model message:(id)message;
- (void)processAccountModelRemove:(id)remove message:(id)message;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setAccountRegistry:(id)registry;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
- (void)updateSenderCorrelationIdentifier:(id)identifier;
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
  appleAccountManager = [v2 appleAccountManager];

  return appleAccountManager;
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
  service = [(HMDAppleAccountManager *)self service];
  hmd_isActive = [service hmd_isActive];

  return hmd_isActive;
}

- (void)accountChangeObserver:(id)observer observedDeletedAccount:(id)account
{
  v21 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  accountCopy = account;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = accountCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification of removed account %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = selfCopy->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HMDAppleAccountManager_accountChangeObserver_observedDeletedAccount___block_invoke;
  v15[3] = &unk_27868A750;
  v15[4] = selfCopy;
  v16 = accountCopy;
  v13 = accountCopy;
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

- (void)accountChangeObserver:(id)observer observedModifiedAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  accountCopy = account;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = accountCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification of modified account %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDAppleAccountManager_accountChangeObserver_observedModifiedAccount___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)accountChangeObserver:(id)observer observedAddedAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  accountCopy = account;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = accountCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification of added account %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDAppleAccountManager_accountChangeObserver_observedAddedAccount___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  service = [(HMDAppleAccountManager *)self service];
  v9 = [serviceCopy isEqual:service];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification that devices changed on the current account", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    devicesChangeBackoffTimer = [(HMDAppleAccountManager *)selfCopy devicesChangeBackoffTimer];
    [devicesChangeBackoffTimer resume];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v30 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  service = [(HMDAppleAccountManager *)self service];
  v9 = [serviceCopy isEqual:service];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    accounts = [serviceCopy accounts];
    v15 = [accounts countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(accounts);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          [v19 addDelegate:selfCopy queue:selfCopy->_queue];
          [v19 addRegistrationDelegate:selfCopy queue:selfCopy->_queue];
        }

        v16 = [accounts countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    accountChangeBackoffTimer = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
    [accountChangeBackoffTimer resume];

    accountChangeBackoffTimer2 = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
    [accountChangeBackoffTimer2 reset];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)account aliasesChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  changedCopy = changed;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification that aliases changed", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  accountChangeBackoffTimer = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
  [accountChangeBackoffTimer resume];

  accountChangeBackoffTimer2 = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
  [accountChangeBackoffTimer2 reset];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)account isActiveChanged:(BOOL)changed
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  service = [(HMDAppleAccountManager *)self service];
  accounts = [service accounts];
  v8 = [accounts containsObject:accountCopy];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification that account is active changed", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    accountChangeBackoffTimer = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
    [accountChangeBackoffTimer resume];

    accountChangeBackoffTimer2 = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
    [accountChangeBackoffTimer2 reset];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  accountChangeBackoffTimer = [(HMDAppleAccountManager *)self accountChangeBackoffTimer];
  v5 = [fireCopy isEqual:accountChangeBackoffTimer];

  if (v5)
  {
    __updateAccount(self, 1);
  }

  else
  {
    devicesChangeBackoffTimer = [(HMDAppleAccountManager *)self devicesChangeBackoffTimer];
    v7 = [fireCopy isEqual:devicesChangeBackoffTimer];

    if (v7)
    {
      __updateDevices(self, 1);
    }
  }
}

- (void)_updatePushToken:(id)token
{
  dispatch_assert_queue_V2(self->_queue);
  if (token)
  {
    account = [(HMDAppleAccountManager *)self account];
    if (account)
    {
      v6 = account;
      __updateCurrentDevice(self, account);
      account = v6;
    }
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
    v13 = [defaultFormatter privateStringForObjectValue:tokenCopy];
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received push token: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = selfCopy->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__HMDAppleAccountManager_connection_didReceivePublicToken___block_invoke;
  v17[3] = &unk_27868A750;
  v17[4] = selfCopy;
  v18 = tokenCopy;
  v15 = tokenCopy;
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

- (void)processAccountModelRemove:(id)remove message:(id)message
{
  v40 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  messageCopy = message;
  account = [(HMDAppleAccountManager *)self account];

  if (!account)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

  account2 = [(HMDAppleAccountManager *)self account];
  modelIdentifier = [account2 modelIdentifier];
  uuid = [removeCopy uuid];
  v12 = HMFEqualObjects();

  if ((v12 & 1) == 0)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  uuid2 = [removeCopy uuid];
  account3 = [(HMDAppleAccountManager *)self account];
  modelIdentifier2 = [account3 modelIdentifier];
  v16 = [uuid2 hmf_isEqualToUUID:modelIdentifier2];

  if ((v16 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      account4 = [(HMDAppleAccountManager *)selfCopy3 account];
      modelIdentifier3 = [account4 modelIdentifier];
      uUIDString = [modelIdentifier3 UUIDString];
      uuid3 = [removeCopy uuid];
      [uuid3 UUIDString];
      v25 = v33 = v17;
      *buf = 138543874;
      v35 = v20;
      v36 = 2112;
      v37 = uUIDString;
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

- (void)processAccountModel:(id)model message:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  account = [(HMDAppleAccountManager *)self account];

  if (account)
  {
    account2 = [(HMDAppleAccountManager *)self account];
    modelIdentifier = [account2 modelIdentifier];
    uuid = [modelCopy uuid];
    v12 = HMFEqualObjects();

    if ((v12 & 1) == 0)
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
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

    uuid2 = [modelCopy uuid];
    account3 = [(HMDAppleAccountManager *)self account];
    modelIdentifier2 = [account3 modelIdentifier];
    v16 = [uuid2 hmf_isEqualToUUID:modelIdentifier2];

    if (v16)
    {
      account4 = [(HMDAppleAccountManager *)self account];
      [account4 transactionObjectUpdated:0 newValues:modelCopy message:messageCopy];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        account5 = [(HMDAppleAccountManager *)selfCopy2 account];
        modelIdentifier3 = [account5 modelIdentifier];
        uUIDString = [modelIdentifier3 UUIDString];
        uuid3 = [modelCopy uuid];
        [uuid3 UUIDString];
        v27 = v35 = v19;
        *buf = 138543874;
        v37 = v22;
        v38 = 2112;
        v39 = uUIDString;
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
    v18 = [[HMDAccount alloc] initWithObjectModel:modelCopy];
    if (v18)
    {
      __setAccount(self, v18, 1);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)isModelCurrentAccount:(id)account
{
  accountCopy = account;
  accountContext = [(HMDAppleAccountManager *)self accountContext];
  if (accountContext)
  {
    v6 = [HMDAccountIdentifier accountIdentifierForAppleAccountContext:accountContext];
    identifier = [accountCopy identifier];

    if (identifier)
    {
      identifier2 = [accountCopy identifier];
      v9 = HMFEqualObjects();
    }

    else
    {
      identifier2 = [v6 identifier];
      uuid = [accountCopy uuid];
      v9 = HMFEqualObjects();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)primaryHandleForAccount:(id)account isForDisplay:(BOOL)display
{
  accountCopy = account;
  if (accountCopy)
  {
    account = [(HMDAppleAccountManager *)self account];
    if ([accountCopy isEqual:account])
    {
      service = [(HMDAppleAccountManager *)self service];
      v9 = service;
      if (display)
      {
        [service hmd_preferredDisplayHandle];
      }

      else
      {
        [service hmd_preferredHandle];
      }
      v11 = ;

      handles = [accountCopy handles];
      v13 = [handles containsObject:v11];

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

- (BOOL)shouldDevice:(id)device processModel:(id)model actions:(id)actions
{
  v33 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  modelCopy = model;
  actionsCopy = actions;
  if (deviceCopy && modelCopy)
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() & 1;
    if (v11)
    {
      v12 = modelCopy;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = modelCopy;
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

    if ([actionsCopy source] == 2 && objc_msgSend(deviceCopy, "isCurrentDevice"))
    {
      v18 = objc_autoreleasePoolPush();
      v19 = deviceCopy;
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
      if ([actionsCopy source] || -[HMDAppleAccountManager isCurrentDeviceDataOwnerForDevice:](self, "isCurrentDeviceDataOwnerForDevice:", deviceCopy) || !objc_msgSend(deviceCopy, "isCloudTracked"))
      {
        v27 = 1;
        goto LABEL_27;
      }

      v18 = objc_autoreleasePoolPush();
      v28 = deviceCopy;
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
  selfCopy = self;
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

- (BOOL)shouldAccount:(id)account pushbackModel:(id)model actions:(id)actions
{
  v66 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  modelCopy = model;
  actionsCopy = actions;
  if (accountCopy && modelCopy)
  {
    if ([(HMDAppleAccountManager *)self shouldSyncAccount:accountCopy])
    {
      v11 = modelCopy;
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
          selfCopy = self;
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

        if ([actionsCopy source] != 2)
        {
LABEL_53:
          v28 = 0;
          goto LABEL_54;
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = [accountCopy handles];
        v17 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v17)
        {
          v46 = actionsCopy;
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
              modelIdentifier = [v20 modelIdentifier];
              uuid = [v51 uuid];
              v23 = [modelIdentifier hmf_isEqualToUUID:uuid];

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
          actionsCopy = v46;
        }

        if ([v17 isLocallyTracked])
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy3 = self;
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
        if ((v15 & 1) == 0 || [actionsCopy source] != 2)
        {
          goto LABEL_53;
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        obja = [accountCopy devices];
        v17 = [obja countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v17)
        {
          v47 = actionsCopy;
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
              modelIdentifier2 = [v31 modelIdentifier];
              uuid2 = [v50 uuid];
              v34 = [modelIdentifier2 hmf_isEqualToUUID:uuid2];

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
          actionsCopy = v47;
        }

        if ([v17 isCurrentDevice])
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy3 = self;
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
    selfCopy4 = self;
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

- (BOOL)shouldSyncDevice:(id)device
{
  deviceCopy = device;
  v8 = deviceCopy && ([deviceCopy account], v6 = v5 = deviceCopy;

  return v8;
}

- (BOOL)shouldSyncAccount:(id)account
{
  accountCopy = account;
  v7 = 0;
  if (accountCopy)
  {
    account = [(HMDAppleAccountManager *)self account];
    v6 = HMFEqualObjects();

    if (v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)shouldCacheAccount:(id)account
{
  accountCopy = account;
  account = [(HMDAppleAccountManager *)self account];

  return account == accountCopy;
}

- (id)idsDeviceForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  service = [(HMDAppleAccountManager *)self service];
  devices = [service devices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HMDAppleAccountManager_idsDeviceForIDSIdentifier___block_invoke;
  v10[3] = &unk_27867C590;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [devices na_firstObjectPassingTest:v10];

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
  account = [(HMDAppleAccountManager *)self account];
  devices = [account devices];

  v4 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isCurrentDevice])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)__deviceRemovedFromCurrentAccount:(id)account
{
  accountCopy = account;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDAppleAccountManager___deviceRemovedFromCurrentAccount___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
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

- (void)__deviceAddedToCurrentAccount:(id)account
{
  accountCopy = account;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDAppleAccountManager___deviceAddedToCurrentAccount___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
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
  service = [(HMDAppleAccountManager *)self service];
  hmd_registrationError = [service hmd_registrationError];

  return hmd_registrationError;
}

- (int64_t)IDSAccountRegistrationStatus
{
  service = [(HMDAppleAccountManager *)self service];
  hmd_registrationStatus = [service hmd_registrationStatus];

  return hmd_registrationStatus;
}

- (void)updateSenderCorrelationIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  account = [(HMDAppleAccountManager *)self account];
  v6 = account;
  if (account)
  {
    senderCorrelationIdentifier = [account senderCorrelationIdentifier];
    v8 = senderCorrelationIdentifier;
    if (senderCorrelationIdentifier && [senderCorrelationIdentifier isEqual:identifierCopy])
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      [v6 setSenderCorrelationIdentifier:identifierCopy];
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
      queue = selfCopy2->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDAppleAccountManager_updateSenderCorrelationIdentifier___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = selfCopy2;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
  account = [(HMDAppleAccountManager *)self account];
  handles = [account handles];
  firstObject = [handles firstObject];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (firstObject)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [account shortDescription];
      *buf = 138543618;
      v32 = v10;
      v33 = 2112;
      v34 = shortDescription;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Trying to update mergeID on currentAccount: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    value = [firstObject value];
    if ([value _appearsToBeEmail])
    {
      v13 = MEMORY[0x22AAD2AB0](value);
    }

    else if ([value _appearsToBeBusinessID])
    {
      v13 = MEMORY[0x22AAD2A90](value);
    }

    else
    {
      v13 = IDSCopyIDForPhoneNumber();
    }

    v15 = v13;

    if (v15)
    {
      mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
      v30 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      v18 = +[HMDIDSServiceManager sharedIDSServiceName];
      stringGUID = [MEMORY[0x277CCACA8] stringGUID];
      queue = selfCopy->_queue;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke;
      v27[3] = &unk_27867C568;
      v27[4] = selfCopy;
      v28 = v15;
      v29 = account;
      [mEMORY[0x277D18728] currentRemoteDevicesForDestinations:v17 service:v18 listenerID:stringGUID queue:queue completionBlock:v27];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        value2 = [firstObject value];
        *buf = 138543874;
        v32 = v24;
        v33 = 2112;
        v34 = value2;
        v35 = 2112;
        v36 = firstObject;
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
      v34 = account;
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

- (void)__handleMigrationUpdated:(id)updated
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

- (void)__handleUpdatedName:(id)name
{
  userInfo = [name userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D0F758]];

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

- (void)__handleRemovedAccountWithCompletion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  isMonitoring = [(HMDAppleAccountManager *)self isMonitoring];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (isMonitoring)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification account was removed", &v39, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

    if (aa_primaryAppleAccount)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
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
      completionCopy[2](completionCopy, v21);
    }

    else
    {
      [HMDPersistentStore resetConfiguration:2];
      os_unfair_recursive_lock_lock_with_options();
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
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
        homeManager = [v35 homeManager];
        [homeManager _eraseLocalHomeConfigurationAfterSignOut];
      }

      settings = [(HMDAppleAccountManager *)v32 settings];
      [settings synchronize];

      completionCopy[2](completionCopy, 0);
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
    completionCopy[2](completionCopy, v23);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)__handleAccountAddedOrModified:(BOOL)modified
{
  modifiedCopy = modified;
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  isMonitoring = [(HMDAppleAccountManager *)self isMonitoring];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (isMonitoring)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification account was modified", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    __updateAccountContext(selfCopy);
    settings = [(HMDAppleAccountManager *)selfCopy settings];
    [settings synchronize];

    if (modifiedCopy)
    {
      account = [(HMDAppleAccountManager *)selfCopy account];

      if (!account)
      {
        v13 = __createAccount(selfCopy);
        if (v13)
        {
          __addAccount(selfCopy, v13);
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          v16 = selfCopy;
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

    notificationCenter = [(HMDAppleAccountManager *)selfCopy notificationCenter];
    [notificationCenter postNotificationName:@"HMDAppleAccountManagerAccountModifiedNotification" object:selfCopy];

    [(HMDAppleAccountManager *)selfCopy __updateMergeIDOnAccount];
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

- (void)__localDataReset:(id)reset
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

- (void)setAccountRegistry:(id)registry
{
  registryCopy = registry;
  if (!registryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v5 = registryCopy;
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

- (void)configureWithAccountRegistry:(id)registry
{
  v28 = *MEMORY[0x277D85DE8];
  registryCopy = registry;
  [(HMDAppleAccountManager *)self setAccountRegistry:registryCopy];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__164124;
  v22 = __Block_byref_object_dispose__164125;
  v23 = 0;
  v5 = [registryCopy fetchAccountsWithLocalFlag:1];
  if ([v5 count] < 2)
  {
    firstObject = [v5 firstObject];
    v7 = v19[5];
    v19[5] = firstObject;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__HMDAppleAccountManager_configureWithAccountRegistry___block_invoke;
    v15[3] = &unk_27867C4F0;
    v17 = &v18;
    v15[4] = self;
    v16 = registryCopy;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  }

  if (v19[5])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    deviceAccountSettledPromise = [(HMDAppleAccountManager *)selfCopy deviceAccountSettledPromise];
    [deviceAccountSettledPromise fulfillWithNoValue];

    __setAccount(selfCopy, v19[5], 0);
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

- (void)configureWithBackingStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v5 = storeCopy;
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
      selfCopy = self;
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

- (BOOL)maybeSkipUpdatesOfType:(unint64_t)type whileMigrating:(BOOL)migrating
{
  migratingCopy = migrating;
  v23 = *MEMORY[0x277D85DE8];
  v6 = @"devices";
  if (type != 1)
  {
    v6 = 0;
  }

  if (type)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"account";
  }

  isServiceActive = [(HMDAppleAccountManager *)self isServiceActive];
  if (!isServiceActive)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  if (migratingCopy)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    result = !isServiceActive;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDAppleAccountManager)initWithIDSService:(id)service activityBroadcaster:(id)broadcaster dataSource:(id)source
{
  v53 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  broadcasterCopy = broadcaster;
  sourceCopy = source;
  if (serviceCopy)
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
      queue = [sourceCopy queue];
      queue = v12->_queue;
      v12->_queue = queue;

      objc_storeStrong(&v12->_service, service);
      objc_storeStrong(&v12->_activityBroadcaster, broadcaster);
      accountChangeObserver = [sourceCopy accountChangeObserver];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = accountChangeObserver;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      accountChangeObserver = v12->_accountChangeObserver;
      v12->_accountChangeObserver = v19;
      v21 = v19;

      apsConnection = [sourceCopy apsConnection];
      pushConnection = v12->_pushConnection;
      v12->_pushConnection = apsConnection;

      [(HMDAPSConnection *)v12->_pushConnection setDelegate:v12];
      notificationCenter = [sourceCopy notificationCenter];
      notificationCenter = v12->_notificationCenter;
      v12->_notificationCenter = notificationCenter;

      accountStore = [sourceCopy accountStore];
      accountStore = v12->_accountStore;
      v12->_accountStore = accountStore;

      v28 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:3 maximumTimeInterval:1 exponentialFactor:1.0 options:86400.0];
      accountChangeBackoffTimer = v12->_accountChangeBackoffTimer;
      v12->_accountChangeBackoffTimer = v28;

      accountChangeBackoffTimer = [(HMDAppleAccountManager *)v12 accountChangeBackoffTimer];
      [accountChangeBackoffTimer setDelegate:v12];

      accountChangeBackoffTimer2 = [(HMDAppleAccountManager *)v12 accountChangeBackoffTimer];
      [accountChangeBackoffTimer2 setDelegateQueue:v12->_queue];

      v32 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:2 options:15.0];
      devicesChangeBackoffTimer = v12->_devicesChangeBackoffTimer;
      v12->_devicesChangeBackoffTimer = v32;

      devicesChangeBackoffTimer = [(HMDAppleAccountManager *)v12 devicesChangeBackoffTimer];
      [devicesChangeBackoffTimer setDelegate:v12];

      devicesChangeBackoffTimer2 = [(HMDAppleAccountManager *)v12 devicesChangeBackoffTimer];
      [devicesChangeBackoffTimer2 setDelegateQueue:v12->_queue];

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

    selfCopy = v12;
    v43 = selfCopy;
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (HMDAppleAccountManager)initWithIDSServiceManager:(id)manager
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  uTF8String = [v9 UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(uTF8String, v11);

  v13 = +[HMDDeviceCapabilities deviceCapabilities];
  LODWORD(v11) = [v13 isResidentCapable];

  activityBroadcaster = 0;
  if (v11)
  {
    activityBroadcaster = [managerCopy activityBroadcaster];
  }

  service = [managerCopy service];
  v16 = [[HMDAppleAccountManagerDefaultDataSource alloc] initWithQueue:v12];
  v17 = [(HMDAppleAccountManager *)selfCopy initWithIDSService:service activityBroadcaster:activityBroadcaster dataSource:v16];

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