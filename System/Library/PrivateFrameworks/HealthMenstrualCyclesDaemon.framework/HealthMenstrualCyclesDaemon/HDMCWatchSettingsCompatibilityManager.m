@interface HDMCWatchSettingsCompatibilityManager
- (HDMCWatchSettingsCompatibilityManager)initWithProfile:(id)a3 userDefaults:(id)a4;
- (HDMCWatchSettingsCompatibilityManagerDelegate)delegate;
- (void)_queue_computeAndApplyChangesForAllFeatures;
- (void)_queue_computeAndApplyChangesForFeature:(id)a3;
- (void)daemonReady:(id)a3;
- (void)featureSettingsManager:(id)a3 didUpdateSettingsForFeatureIdentifier:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDMCWatchSettingsCompatibilityManager

- (HDMCWatchSettingsCompatibilityManager)initWithProfile:(id)a3 userDefaults:(id)a4
{
  v20[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = HDMCWatchSettingsCompatibilityManager;
  v9 = [(HDMCWatchSettingsCompatibilityManager *)&v19 init];
  if (v9)
  {
    if ([v7 profileType] != 1)
    {
      [HDMCWatchSettingsCompatibilityManager initWithProfile:a2 userDefaults:v9];
    }

    objc_storeWeak(&v9->_profile, v7);
    objc_storeStrong(&v9->_userDefaults, a4);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = +[HDMCWatchFeatureSettings algorithmicProjectionsSettings];
    v20[0] = v12;
    v13 = +[HDMCWatchFeatureSettings hiddenLoggingRowsSettings];
    v20[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    managedFeatures = v9->_managedFeatures;
    v9->_managedFeatures = v14;

    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    [WeakRetained registerProfileReadyObserver:v9 queue:v9->_queue];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)profileDidBecomeReady:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_managedFeatures;
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
        v12 = [WeakRetained featureSettingsManager];
        v13 = [v10 featureIdentifier];
        [v12 registerObserver:self featureIdentifier:v13 queue:self->_queue];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 daemon];
  [v14 registerDaemonReadyObserver:self queue:self->_queue];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)daemonReady:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HDMCWatchSettingsCompatibilityManager_daemonReady___block_invoke;
  v7[3] = &unk_27865A830;
  v7[4] = self;
  [v5 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v7];
}

void __53__HDMCWatchSettingsCompatibilityManager_daemonReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 maintenanceWorkCoordinator];
  v5 = MEMORY[0x277D10748];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HDMCWatchSettingsCompatibilityManager_daemonReady___block_invoke_2;
  v12[3] = &unk_27865A830;
  v12[4] = v9;
  v11 = [v5 maintenanceOperationWithName:v8 queue:v10 synchronousBlock:v12];
  [v4 enqueueMaintenanceOperation:v11];
}

- (void)featureSettingsManager:(id)a3 didUpdateSettingsForFeatureIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    v24 = objc_opt_class();
    v25 = 2114;
    v26 = v5;
    v8 = v24;
    _os_log_impl(&dword_2293D1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notified of update to settings for %{public}@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_managedFeatures;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 featureIdentifier];
        v16 = [v15 isEqualToString:v5];

        if (v16)
        {
          [(HDMCWatchSettingsCompatibilityManager *)self _queue_computeAndApplyChangesForFeature:v14];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_computeAndApplyChangesForAllFeatures
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_managedFeatures;
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

        [(HDMCWatchSettingsCompatibilityManager *)self _queue_computeAndApplyChangesForFeature:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_computeAndApplyChangesForFeature:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained featureSettingsManager];
  v7 = [v4 featureIdentifier];
  v24 = 0;
  v8 = [v6 featureSettingsForFeatureIdentifier:v7 error:&v24];
  v9 = v24;

  if (v8)
  {
    v10 = [v4 userDefaultsChangesFromFeatureSettings:v8 currentUserDefaults:self->_userDefaults];
    [(NSUserDefaults *)self->_userDefaults setValuesForKeysWithDictionary:v10];
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [v4 featureIdentifier];
      *buf = 138543874;
      v26 = v13;
      v27 = 2114;
      v28 = v15;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_2293D1000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Applied changes for %{public}@: %{public}@", buf, 0x20u);
    }

    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = MEMORY[0x277CBEB98];
    v18 = [v10 allKeys];
    v19 = [v17 setWithArray:v18];
    [v16 watchSettingsCompatibilityManager:self didChangeUserDefaultsKeys:v19];
  }

  else
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2E8];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = v20;
    v22 = objc_opt_class();
    v16 = v22;
    v23 = [v4 featureIdentifier];
    *buf = 138543874;
    v26 = v22;
    v27 = 2114;
    v28 = v23;
    v29 = 2114;
    v30 = v9;
    _os_log_error_impl(&dword_2293D1000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@ feature settings: %{public}@", buf, 0x20u);
  }

LABEL_7:
  v21 = *MEMORY[0x277D85DE8];
}

- (HDMCWatchSettingsCompatibilityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithProfile:(uint64_t)a1 userDefaults:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMCWatchSettingsCompatibilityManager.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"profile.profileType == HKProfileTypePrimary"}];
}

@end