@interface HDWatchSettingsReconciliationManager
- (HDWatchSettingsReconciliationManager)initWithProfile:(id)profile userDefaults:(id)defaults managedKeys:(id)keys debugIdentifier:(id)identifier loggingCategory:(id)category;
- (HDWatchSettingsReconciliationManagerDelegate)delegate;
- (id)_queue_settingValuesForSettingKeys:(id)keys error:(id *)error;
- (void)_queue_applyReconciledValueFromSettingValues:(id)values forSettingKeys:(id)keys completion:(id)completion;
- (void)_queue_reconcileValuesForAllKeys;
- (void)_queue_reconcileValuesForKeys:(id)keys;
- (void)_startKeyValueObserving;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDWatchSettingsReconciliationManager

- (HDWatchSettingsReconciliationManager)initWithProfile:(id)profile userDefaults:(id)defaults managedKeys:(id)keys debugIdentifier:(id)identifier loggingCategory:(id)category
{
  profileCopy = profile;
  defaultsCopy = defaults;
  keysCopy = keys;
  identifierCopy = identifier;
  categoryCopy = category;
  v24.receiver = self;
  v24.super_class = HDWatchSettingsReconciliationManager;
  v17 = [(HDWatchSettingsReconciliationManager *)&v24 init];
  if (v17)
  {
    if ([profileCopy profileType] != 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v17 file:@"HDWatchSettingsReconciliationManager.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"profile.profileType == HKProfileTypePrimary"}];
    }

    objc_storeWeak(&v17->_profile, profileCopy);
    v18 = HKCreateSerialDispatchQueue();
    queue = v17->_queue;
    v17->_queue = v18;

    objc_storeStrong(&v17->_userDefaults, defaults);
    objc_storeStrong(&v17->_managedKeys, keys);
    objc_storeStrong(&v17->_debugIdentifier, identifier);
    objc_storeStrong(&v17->_loggingCategory, category);
    [(HDWatchSettingsReconciliationManager *)v17 _startKeyValueObserving];
    WeakRetained = objc_loadWeakRetained(&v17->_profile);
    [WeakRetained registerProfileReadyObserver:v17 queue:v17->_queue];
  }

  return v17;
}

- (void)_startKeyValueObserving
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_managedKeys;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        userDefaults = self->_userDefaults;
        defaultsEnabledKey = [*(*(&v11 + 1) + 8 * v7) defaultsEnabledKey];
        [(NSUserDefaults *)userDefaults addObserver:self forKeyPath:defaultsEnabledKey options:3 context:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_managedKeys;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        featureSettingsManager = [WeakRetained featureSettingsManager];
        featureIdentifier = [v8 featureIdentifier];
        [featureSettingsManager unregisterObserver:self featureIdentifier:featureIdentifier];

        userDefaults = self->_userDefaults;
        defaultsEnabledKey = [v8 defaultsEnabledKey];
        [(NSUserDefaults *)userDefaults removeObserver:self forKeyPath:defaultsEnabledKey];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v15.receiver = self;
  v15.super_class = HDWatchSettingsReconciliationManager;
  [(HDWatchSettingsReconciliationManager *)&v15 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)profileDidBecomeReady:(id)ready
{
  v21 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  dispatch_assert_queue_V2(self->_queue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_managedKeys;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        featureSettingsManager = [WeakRetained featureSettingsManager];
        featureIdentifier = [v10 featureIdentifier];
        [featureSettingsManager registerObserver:self featureIdentifier:featureIdentifier queue:self->_queue];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  daemon = [readyCopy daemon];
  [daemon registerDaemonReadyObserver:self queue:self->_queue];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDWatchSettingsReconciliationManager_daemonReady___block_invoke;
  v7[3] = &unk_278613968;
  v7[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v7];
}

void __52__HDWatchSettingsReconciliationManager_daemonReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 maintenanceWorkCoordinator];
  v5 = [*(a1 + 32) description];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HDWatchSettingsReconciliationManager_daemonReady___block_invoke_2;
  v9[3] = &unk_278613968;
  v9[4] = v6;
  v8 = [HDMaintenanceOperation maintenanceOperationWithName:v5 queue:v7 synchronousBlock:v9];
  [v4 enqueueMaintenanceOperation:v8];
}

- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notified of update to settings for %{public}@", buf, 0x16u);
  }

  managedKeys = self->_managedKeys;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __101__HDWatchSettingsReconciliationManager_featureSettingsManager_didUpdateSettingsForFeatureIdentifier___block_invoke;
  v11[3] = &unk_278629FF8;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = [(NSArray *)managedKeys hk_firstObjectPassingTest:v11];
  if (v9)
  {
    [(HDWatchSettingsReconciliationManager *)self _queue_reconcileValuesForKeys:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __101__HDWatchSettingsReconciliationManager_featureSettingsManager_didUpdateSettingsForFeatureIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 featureIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v38 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *MEMORY[0x277CCA300];
    v15 = loggingCategory;
    v16 = [changeCopy objectForKeyedSubscript:v14];
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    *buf = 138544130;
    selfCopy = self;
    v32 = 2114;
    v33 = pathCopy;
    v34 = 2114;
    v35 = v16;
    v36 = 2114;
    v37 = v17;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ changed: %{public}@ -> %{public}@", buf, 0x2Au);
  }

  managedKeys = self->_managedKeys;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __87__HDWatchSettingsReconciliationManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v28[3] = &unk_278629FF8;
  v19 = pathCopy;
  v29 = v19;
  v20 = [(NSArray *)managedKeys hk_firstObjectPassingTest:v28];
  if (v20)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    queue = self->_queue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __87__HDWatchSettingsReconciliationManager_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v26[3] = &unk_278613920;
    v26[4] = self;
    v27 = v20;
    [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v26];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = HDWatchSettingsReconciliationManager;
    [(HDWatchSettingsReconciliationManager *)&v25 observeValueForKeyPath:v19 ofObject:objectCopy change:changeCopy context:context];
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __87__HDWatchSettingsReconciliationManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 defaultsEnabledKey];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)_queue_reconcileValuesForAllKeys
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_managedKeys;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(HDWatchSettingsReconciliationManager *)self _queue_reconcileValuesForKeys:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_reconcileValuesForKeys:(id)keys
{
  v19 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v15 = 2114;
    v16 = keysCopy;
    _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning reconciliation for %{public}@", buf, 0x16u);
  }

  v12 = 0;
  v6 = [(HDWatchSettingsReconciliationManager *)self _queue_settingValuesForSettingKeys:keysCopy error:&v12];
  v7 = v12;
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__HDWatchSettingsReconciliationManager__queue_reconcileValuesForKeys___block_invoke;
    v10[3] = &unk_27862A020;
    v10[4] = self;
    v11 = v6;
    [(HDWatchSettingsReconciliationManager *)self _queue_applyReconciledValueFromSettingValues:v11 forSettingKeys:keysCopy completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v8 = self->_loggingCategory;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v15 = 2114;
      v16 = keysCopy;
      v17 = 2114;
      v18 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving settings values for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __70__HDWatchSettingsReconciliationManager__queue_reconcileValuesForKeys___block_invoke(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
    [WeakRetained watchSettingsReconciliationManager:*(a1 + 32) didReconcileValuesForKeys:v11 didUpdateFeatureSetting:a3 didUpdateUserDefault:a4];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 40);
      v20 = 138544130;
      v21 = v14;
      v22 = 2114;
      v23 = v19;
      v24 = 2114;
      v25 = v11;
      v26 = 2114;
      v27 = v12;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Error applying reconciled values: %{public}@ for %{public}@: %{public}@", &v20, 0x2Au);
    }
  }

  _HKInitializeLogging();
  v16 = *(a1 + 32);
  v17 = *(v16 + 48);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543618;
    v21 = v16;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed reconciliation for %{public}@", &v20, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_queue_settingValuesForSettingKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  featureSettingsManager = [WeakRetained featureSettingsManager];
  featureIdentifier = [keysCopy featureIdentifier];
  v28 = 0;
  v10 = [featureSettingsManager featureSettingsForFeatureIdentifier:featureIdentifier error:&v28];
  v11 = v28;

  if (v10)
  {
    featureSettingEnabledKey = [keysCopy featureSettingEnabledKey];
    v13 = [v10 numberForKey:featureSettingEnabledKey];

    userDefaults = self->_userDefaults;
    defaultsEnabledKey = [keysCopy defaultsEnabledKey];
    v27 = v11;
    v16 = [(NSUserDefaults *)userDefaults hk_safeNumberIfExistsForKeyPath:defaultsEnabledKey error:&v27];
    v17 = v27;

    if (v17)
    {
      if (error)
      {
        v18 = v17;
        v19 = 0;
        *error = v17;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }
    }

    else
    {
      v21 = self->_userDefaults;
      lastReconciledEnabledKey = [keysCopy lastReconciledEnabledKey];
      v26 = 0;
      v23 = [(NSUserDefaults *)v21 hk_safeNumberIfExistsForKeyPath:lastReconciledEnabledKey error:&v26];
      v17 = v26;

      if (v17)
      {
        if (error)
        {
          v24 = v17;
          v19 = 0;
          *error = v17;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }
      }

      else
      {
        v19 = [[HDWatchSettingValues alloc] initWithFeatureSettingEnabledValue:v13 defaultsEnabledValue:v16 lastReconciledEnabledValue:v23];
      }
    }
  }

  else
  {
    v13 = v11;
    if (v13)
    {
      if (error)
      {
        v20 = v13;
        v19 = 0;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }

      v17 = v13;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }
  }

  return v19;
}

- (void)_queue_applyReconciledValueFromSettingValues:(id)values forSettingKeys:(id)keys completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  keysCopy = keys;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  reconciledEnabledValue = [valuesCopy reconciledEnabledValue];
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  v13 = os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT);
  if (reconciledEnabledValue)
  {
    if (v13)
    {
      *buf = 138544130;
      selfCopy3 = self;
      v41 = 2114;
      v42 = reconciledEnabledValue;
      v43 = 2114;
      v44 = valuesCopy;
      v45 = 2114;
      v46 = keysCopy;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Applying reconciled value %{public}@ from %{public}@ for %{public}@", buf, 0x2Au);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke;
    aBlock[3] = &unk_27862A048;
    v14 = reconciledEnabledValue;
    v34 = v14;
    v15 = valuesCopy;
    v35 = v15;
    selfCopy2 = self;
    v16 = keysCopy;
    v37 = v16;
    v26 = completionCopy;
    v17 = completionCopy;
    v38 = v17;
    v18 = _Block_copy(aBlock);
    featureSettingEnabledValue = [v15 featureSettingEnabledValue];
    v20 = [v14 isEqual:featureSettingEnabledValue];

    if (v20)
    {
      v18[2](v18, 0);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      database = [WeakRetained database];
      v22 = +[HDDatabaseTransactionContext contextForWriting];
      v32 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_2;
      v27[3] = &unk_27862A098;
      v30 = v18;
      v27[4] = self;
      v31 = v17;
      v28 = v16;
      v29 = v14;
      [database performTransactionWithContext:v22 error:&v32 block:v27 inaccessibilityHandler:0];
      v23 = v32;
    }

    completionCopy = v26;
  }

  else
  {
    if (v13)
    {
      *buf = 138543874;
      selfCopy3 = self;
      v41 = 2114;
      v42 = valuesCopy;
      v43 = 2114;
      v44 = keysCopy;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] No value to reconcile from %{public}@ for %{public}@", buf, 0x20u);
    }

    (*(completionCopy + 2))(completionCopy, 1, 0, 0, keysCopy, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastReconciledEnabledValue];
  LOBYTE(v2) = [v2 isEqual:v3];

  if ((v2 & 1) == 0)
  {
    v4 = *(*(a1 + 48) + 24);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 56) lastReconciledEnabledKey];
    [v4 setObject:v5 forKey:v6];
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) defaultsEnabledValue];
  LOBYTE(v7) = [v7 isEqual:v8];

  if ((v7 & 1) == 0)
  {
    v9 = *(*(a1 + 48) + 24);
    v10 = *(a1 + 32);
    v11 = [*(a1 + 56) defaultsEnabledKey];
    [v9 setObject:v10 forKey:v11];
  }

  v12 = *(a1 + 56);
  v13 = *(*(a1 + 64) + 16);

  return v13();
}

uint64_t __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_3;
  v20[3] = &unk_278613658;
  v21 = *(a1 + 56);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_4;
  v16 = &unk_27862A070;
  v17 = *(a1 + 32);
  v19 = *(a1 + 64);
  v18 = *(a1 + 40);
  [a2 onCommit:v20 orRollback:&v13];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained featureSettingsManager];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) featureSettingEnabledKey];
  v10 = [*(a1 + 40) featureIdentifier];
  v11 = [v7 setFeatureSettingsNumber:v8 forKey:v9 featureIdentifier:v10 suppressNotificationsToObserver:*(a1 + 32) error:a3];

  return v11;
}

void __111__HDWatchSettingsReconciliationManager__queue_applyReconciledValueFromSettingValues_forSettingKeys_completion___block_invoke_4(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = a1[4];
  v5 = *(v4 + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Rolled back feature settings changes, not updating user defaults: %{public}@", &v8, 0x16u);
  }

  v6 = a1[5];
  (*(a1[6] + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (HDWatchSettingsReconciliationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end