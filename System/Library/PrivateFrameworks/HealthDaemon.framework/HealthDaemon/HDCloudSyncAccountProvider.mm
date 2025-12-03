@interface HDCloudSyncAccountProvider
- (BOOL)computeCanPerformCloudSyncForPrimaryAccount:(id *)account;
- (BOOL)isAccountInManateeUnavailableCFUState;
- (BOOL)primaryAccountIsProhibitedFromCloudSync;
- (HDCloudSyncAccountProvider)initWithCoordinator:(id)coordinator behavior:(id)behavior accountStore:(id)store;
- (id)_disableAndDeleteAllSyncDataForProfile:(id)profile completion:(id)completion;
- (id)disableAndDeleteAllSyncDataWithCompletion:(id)completion;
- (id)getPersistedAccountInfo;
- (void)_performSyncForAccountChangeWithCompletion:(id)completion;
- (void)_resetCachedOwnerIdentifiers;
- (void)_rollOwnerDifferentiatorAfterCloudSyncDisableForAllProfiles:(id)profiles;
- (void)_triggerSyncForAccountChange;
- (void)accountConfigurationDidChangeWithCompletion:(id)completion;
- (void)daemonReady:(id)ready;
- (void)profileDidBecomeReady:(id)ready;
- (void)unitTest_setAccountStore:(id)store;
@end

@implementation HDCloudSyncAccountProvider

- (HDCloudSyncAccountProvider)initWithCoordinator:(id)coordinator behavior:(id)behavior accountStore:(id)store
{
  coordinatorCopy = coordinator;
  behaviorCopy = behavior;
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = HDCloudSyncAccountProvider;
  v11 = [(HDCloudSyncAccountProvider *)&v19 init];
  if (v11)
  {
    v12 = HKCreateSerialUtilityDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v12;

    objc_storeWeak(&v11->_coordinator, coordinatorCopy);
    v11->_lock._os_unfair_lock_opaque = 0;
    if (storeCopy)
    {
      v14 = storeCopy;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CB8F48]);
    }

    lock_accountStore = v11->_lock_accountStore;
    v11->_lock_accountStore = v14;

    objc_storeStrong(&v11->_behavior, behavior);
    WeakRetained = objc_loadWeakRetained(&v11->_coordinator);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v11 queue:v11->_queue];
  }

  return v11;
}

- (void)accountConfigurationDidChangeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HDCloudSyncAccountProvider_accountConfigurationDidChangeWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, v7);
}

uint64_t __74__HDCloudSyncAccountProvider_accountConfigurationDidChangeWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained periodicActivityScheduler];
  [v3 updatePeriodicActivityCriteria];

  [*(a1 + 32) _resetCachedOwnerIdentifiers];
  [*(a1 + 32) _triggerSyncForAccountChange];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (BOOL)isAccountInManateeUnavailableCFUState
{
  getPersistedAccountInfo = [(HDCloudSyncAccountProvider *)self getPersistedAccountInfo];
  v3 = ([getPersistedAccountInfo supportsDeviceToDeviceEncryption] & 1) == 0 && (objc_msgSend(getPersistedAccountInfo, "deviceToDeviceEncryptionAvailability") & 1) != 0;

  return v3;
}

- (BOOL)primaryAccountIsProhibitedFromCloudSync
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  aa_primaryAppleAccount = [(ACAccountStore *)selfCopy->_lock_accountStore aa_primaryAppleAccount];
  os_unfair_lock_unlock(&selfCopy->_lock);
  LOBYTE(selfCopy) = [(HDCloudSyncAccountProvider *)selfCopy accountIsProhibitedFromCloudSync:aa_primaryAppleAccount];

  return selfCopy;
}

- (id)disableAndDeleteAllSyncDataWithCompletion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning disable-and-delete operation for cloud sync.", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277D10BB0]);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke;
  v36[3] = &unk_278619568;
  v36[4] = self;
  v25 = completionCopy;
  v37 = v25;
  [v6 setDidFinish:v36];
  [v6 beginTask];
  [v6 beginTask];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke_2;
  v34[3] = &unk_2786130B0;
  v7 = v6;
  v35 = v7;
  [(HDCloudSyncAccountProvider *)self disableSyncLocallyWithCompletion:v34];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  daemon = [WeakRetained daemon];
  profileManager = [daemon profileManager];

  v24 = profileManager;
  allProfileIdentifiers = [profileManager allProfileIdentifiers];
  v27 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(allProfileIdentifiers, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = allProfileIdentifiers;
  v12 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = objc_loadWeakRetained(&self->_coordinator);
        daemon2 = [v17 daemon];
        profileManager2 = [daemon2 profileManager];
        v20 = [profileManager2 profileForIdentifier:v16];

        [v7 beginTask];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke_3;
        v28[3] = &unk_2786130B0;
        v29 = v7;
        v21 = [(HDCloudSyncAccountProvider *)self _disableAndDeleteAllSyncDataForProfile:v20 completion:v28];
        [v27 addChild:v21 withPendingUnitCount:1];
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v13);
  }

  [v7 finishTask];
  v22 = *MEMORY[0x277D85DE8];

  return v27;
}

void __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (a3)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v7;
    v11 = [v6 firstObject];
    *buf = 138543874;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: finish disableAndDeleteCloudSyncData: success (%{public}@), error (%{public}@)", buf, 0x20u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke_306;
  v17[3] = &unk_278626CF0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v21 = a3;
  v14 = *(a1 + 32);
  v18 = v6;
  v19 = v14;
  v20 = v13;
  v15 = v6;
  [v12 disableSyncLocallyWithCompletion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke_306(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v6 hk_removeObjectsForKeysWithPrefix:@"HDLastLongTimeWithoutSuccessfulCloudSyncReportDate"];

    v7 = objc_alloc_init(MEMORY[0x277D10BB0]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke_308;
    v10[3] = &unk_278626CC8;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v11 = *(a1 + 32);
    [v7 setDidFinish:v10];
    [*(a1 + 40) _rollOwnerDifferentiatorAfterCloudSyncDisableForAllProfiles:v7];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v5;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Failed to disable cloud sync: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke_308(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = *(a1 + 40);
  if (a3)
  {
    v5 = *(a1 + 48);
    a4 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [a4 firstObject];
  (*(v4 + 16))(v4, v5 & 1, v6);
}

uint64_t __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishTask];
  }

  else
  {
    return [v2 failTaskWithError:?];
  }
}

uint64_t __72__HDCloudSyncAccountProvider_disableAndDeleteAllSyncDataWithCompletion___block_invoke_3(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishTask];
  }

  else
  {
    return [v2 failTaskWithError:?];
  }
}

- (BOOL)computeCanPerformCloudSyncForPrimaryAccount:(id *)account
{
  os_unfair_lock_lock(&self->_lock);
  aa_primaryAppleAccount = [(ACAccountStore *)self->_lock_accountStore aa_primaryAppleAccount];
  os_unfair_lock_unlock(&self->_lock);
  if (![(HDCloudSyncAccountProvider *)self accountIsProhibitedFromCloudSync:aa_primaryAppleAccount])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [standardUserDefaults objectForKey:*MEMORY[0x277CCE468]];

    if ([aa_primaryAppleAccount isEnabledForDataclass:*MEMORY[0x277CB9130]])
    {
      if ([MEMORY[0x277CCDD68] usingDemoDataDatabase])
      {
        v9 = 0;
      }

      else
      {
        v9 = [(_HKBehavior *)self->_behavior isRunningStoreDemoMode]^ 1;
      }

      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v13 = [standardUserDefaults2 BOOLForKey:@"HealthCloudSyncForDemoDataKey"];

      if (v9 & 1) != 0 || (v13)
      {
        if (v8 && ([v8 BOOLValue] & 1) == 0)
        {
          v15 = MEMORY[0x277CCA9B8];
          v16 = @"Cloud sync disabled by switch: Internal Settings > Health > Cloud Sync Enabled";
        }

        else
        {
          if (([(_HKBehavior *)self->_behavior supportsCloudSync]& 1) != 0)
          {
            v6 = 1;
            goto LABEL_13;
          }

          v15 = MEMORY[0x277CCA9B8];
          v16 = @"Cloud sync not supported on this device.";
        }

        [v15 hk_assignError:account code:701 description:v16];
LABEL_12:
        v6 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = MEMORY[0x277CCA9B8];
      v17 = @"HealthCloudSyncForDemoDataKey";
      v11 = @"Cloud sync disabled: Demo data is enabled but sync for demo data default (%@) is not set.";
    }

    else
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = @"Health cloud sync is disabled for this Apple ID.";
    }

    [v10 hk_assignError:account code:701 format:{v11, v17}];
    goto LABEL_12;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:account code:701 format:@"Managed Apple IDs are not permitted to participate in cloud sync."];
  v6 = 0;
LABEL_14:

  return v6;
}

- (id)getPersistedAccountInfo
{
  v12 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"HDCloudSyncAccountInfo"];

  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
    v5 = v9;
    if (!v4)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to decode persisted CK account info: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_resetCachedOwnerIdentifiers
{
  v3 = [HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask alloc];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  daemon = [WeakRetained daemon];
  v7 = [(HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask *)v3 initWithDaemon:daemon];

  [(HDCloudSyncManagerTask *)v7 setPriority:1000];
  v6 = objc_loadWeakRetained(&self->_coordinator);
  [v6 addManagerTask:v7];
}

- (id)_disableAndDeleteAllSyncDataForProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v9 = [WeakRetained shouldSyncProfile:profileCopy];

  if ((v9 & 1) != 0 && profileCopy)
  {
    cloudSyncManager = [profileCopy cloudSyncManager];
    v11 = cloudSyncManager;
    if (cloudSyncManager)
    {
      [cloudSyncManager disableAndDeleteAllSyncDataWithCompletion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 1, 0);
      [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
    }
    v12 = ;
  }

  else
  {
    completionCopy[2](completionCopy, 1, 0);
    v12 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
  }

  return v12;
}

void __75__HDCloudSyncAccountProvider__setHealthAccountDataclassEnabled_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      if (*(a1 + 48))
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = *MEMORY[0x277CB9130];
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: set enabled = %{public}@ for dataclass %{public}@", &v15, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = *MEMORY[0x277CB9130];
    v15 = 138544130;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v13;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: error %{public}@ trying to set enabled = %{public}@ for dataclass %{public}@", &v15, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_rollOwnerDifferentiatorAfterCloudSyncDisableForAllProfiles:(id)profiles
{
  v30 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  [profilesCopy beginTask];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  daemon = [WeakRetained daemon];
  profileManager = [daemon profileManager];
  allProfileIdentifiers = [profileManager allProfileIdentifiers];

  obj = allProfileIdentifiers;
  v9 = [allProfileIdentifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        v14 = objc_loadWeakRetained(&self->_coordinator);
        daemon2 = [v14 daemon];
        profileManager2 = [daemon2 profileManager];
        v17 = [profileManager2 profileForIdentifier:v13];

        if (v17)
        {
          [profilesCopy beginTask];
          cloudSyncManager = [v17 cloudSyncManager];
          ownerIdentifierManager = [cloudSyncManager ownerIdentifierManager];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __90__HDCloudSyncAccountProvider__rollOwnerDifferentiatorAfterCloudSyncDisableForAllProfiles___block_invoke;
          v22[3] = &unk_278616020;
          v23 = v17;
          v24 = profilesCopy;
          [ownerIdentifierManager rollOwnerDifferentiatorAfterCloudSyncDisableWithCompletion:v22];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  [profilesCopy finishTask];
  v20 = *MEMORY[0x277D85DE8];
}

void __90__HDCloudSyncAccountProvider__rollOwnerDifferentiatorAfterCloudSyncDisableForAllProfiles___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Updated owner identifier after disabling cloud sync.", &v11, 0xCu);
    }

    [*(a1 + 40) finishTask];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update owner differentiator after disabling cloud sync: %{public}@.", &v11, 0x16u);
    }

    [*(a1 + 40) failTaskWithError:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_triggerSyncForAccountChange
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC328];
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v12 = 2048;
    v13 = 0x404E000000000000;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling post-account-change sync with grace period %lf", buf, 0x16u);
  }

  accountChangeBackgroundTask = self->_accountChangeBackgroundTask;
  v9 = 0;
  [(HDOneShotBackgroundTask *)accountChangeBackgroundTask submitRequestWithMaximumDelay:&v9 error:&__block_literal_global_176 completion:60.0];
  v6 = v9;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *v3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to submit a request for account change sync: %{public}@.", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performSyncForAccountChangeWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(HDCloudSyncAccountProvider *)self _shouldPerformFullSyncOnAccountChange])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__HDCloudSyncAccountProvider__performSyncForAccountChangeWithCompletion___block_invoke;
    v6[3] = &unk_278614E28;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_sync(queue, v6);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __73__HDCloudSyncAccountProvider__performSyncForAccountChangeWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud sync triggered by account changes (iCloud login or health dataclass enabled)", buf, 0xCu);
  }

  v4 = [[HDCloudSyncContext alloc] initForPurpose:0 options:0 reason:2 backgroundTask:*(*(a1 + 32) + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HDCloudSyncAccountProvider__performSyncForAccountChangeWithCompletion___block_invoke_337;
  v9[3] = &unk_2786173C8;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v7 = [WeakRetained syncAllProfilesWithContext:v4 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __73__HDCloudSyncAccountProvider__performSyncForAccountChangeWithCompletion___block_invoke_337(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = 0.0;
  v15 = v5;
  if (a2)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v8 = [v5 domain];
  v9 = [v8 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v9)
  {
    if ([v15 code] == 6 || objc_msgSend(v15, "code") == 7)
    {
      v10 = [v15 userInfo];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];
      [v11 doubleValue];
      v6 = v12;
    }

    goto LABEL_11;
  }

  if (![v15 hk_isHealthKitError])
  {
LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  LODWORD(v7) = a2 ^ 1;
  if ([v15 code] == 701)
  {
    v7 = 0;
  }

  else
  {
    v7 = v7;
  }

LABEL_12:
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v14 = [WeakRetained periodicActivityScheduler];
  [v14 updatePeriodicActivitesWithResult:v7 minimumRetryInterval:v15 error:v6];

  (*(*(a1 + 40) + 16))();
}

- (void)unitTest_setAccountStore:(id)store
{
  storeCopy = store;
  os_unfair_lock_lock(&self->_lock);
  lock_accountStore = self->_lock_accountStore;
  self->_lock_accountStore = storeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  v5 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.healthd.sync.accountChange"];
  [v5 setRequiresProtectionClass:4];
  [v5 setRequiresNetworkConnectivity:1];
  [v5 setRequiresBuddyComplete:1];
  [v5 setPriority:2];
  [v5 setResourceIntensive:1];
  [v5 setNetworkDownloadSize:263192576];
  [HDCloudSyncPeriodicActivityScheduler setupTaskGroupForRequest:v5];
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D10B08]);
  v7 = *MEMORY[0x277CCC328];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  daemon = [WeakRetained daemon];
  systemScheduler = [daemon systemScheduler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HDCloudSyncAccountProvider_profileDidBecomeReady___block_invoke;
  v13[3] = &unk_2786194C8;
  objc_copyWeak(&v14, &location);
  v11 = [v6 initWithDefaultRequest:v5 loggingCategory:v7 scheduler:systemScheduler handler:v13];
  accountChangeBackgroundTask = self->_accountChangeBackgroundTask;
  self->_accountChangeBackgroundTask = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __52__HDCloudSyncAccountProvider_profileDidBecomeReady___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performSyncForAccountChangeWithCompletion:v4];
}

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  daemon = [WeakRetained daemon];
  primaryProfile = [daemon primaryProfile];
  [primaryProfile registerProfileReadyObserver:self queue:self->_queue];
}

@end