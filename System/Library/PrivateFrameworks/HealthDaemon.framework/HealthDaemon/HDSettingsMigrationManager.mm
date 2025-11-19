@interface HDSettingsMigrationManager
- (HDSettingsMigrationManager)initWithProfile:(id)a3 identifier:(id)a4 currentMigrationVersion:(int64_t)a5 migrationSteps:(id)a6 delegate:(id)a7 loggingCategory:(id)a8;
- (HDSettingsMigrationManager)initWithProfile:(id)a3 identifier:(id)a4 currentMigrationVersion:(int64_t)a5 migrationSteps:(id)a6 delegate:(id)a7 migrationVersionDefaults:(id)a8 lastMigratedVersionKey:(id)a9 loggingCategory:(id)a10;
- (HDSettingsMigrationManagerDelegate)delegate;
- (void)_queue_performMigrationFromCurrentMigrationVersion:(int64_t)a3;
- (void)daemonReady:(id)a3;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDSettingsMigrationManager

- (HDSettingsMigrationManager)initWithProfile:(id)a3 identifier:(id)a4 currentMigrationVersion:(int64_t)a5 migrationSteps:(id)a6 delegate:(id)a7 loggingCategory:(id)a8
{
  v14 = MEMORY[0x277CBEBD0];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = a3;
  v20 = [[v14 alloc] initWithSuiteName:@"com.apple.private.health.settings-migration"];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HDSettingsMigrationManager_LastCompletedVersion_%@", v18];
  v22 = [(HDSettingsMigrationManager *)self initWithProfile:v19 identifier:v18 currentMigrationVersion:a5 migrationSteps:v17 delegate:v16 migrationVersionDefaults:v20 lastMigratedVersionKey:v21 loggingCategory:v15];

  return v22;
}

- (HDSettingsMigrationManager)initWithProfile:(id)a3 identifier:(id)a4 currentMigrationVersion:(int64_t)a5 migrationSteps:(id)a6 delegate:(id)a7 migrationVersionDefaults:(id)a8 lastMigratedVersionKey:(id)a9 loggingCategory:(id)a10
{
  obj = a3;
  v27 = a4;
  v26 = a6;
  v16 = a7;
  v25 = a8;
  v17 = a9;
  v18 = a10;
  v29.receiver = self;
  v29.super_class = HDSettingsMigrationManager;
  v19 = [(HDSettingsMigrationManager *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_profile, obj);
    objc_storeStrong(&v20->_identifier, a4);
    v20->_currentMigrationVersion = a5;
    objc_storeStrong(&v20->_migrationSteps, a6);
    objc_storeWeak(&v20->_delegate, v16);
    objc_storeStrong(&v20->_migrationVersionDefaults, a8);
    objc_storeStrong(&v20->_lastMigratedVersionKey, a9);
    objc_storeStrong(&v20->_loggingCategory, a10);
    v21 = HKCreateSerialDispatchQueue();
    queue = v20->_queue;
    v20->_queue = v21;

    WeakRetained = objc_loadWeakRetained(&v20->_profile);
    [WeakRetained registerProfileReadyObserver:v20 queue:{v20->_queue, v25, v26, v27}];
  }

  return v20;
}

- (void)profileDidBecomeReady:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [v5 daemon];

  [v6 registerDaemonReadyObserver:self queue:self->_queue];
}

- (void)daemonReady:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(NSUserDefaults *)self->_migrationVersionDefaults hk_safeNumberIfExistsForKeyPath:self->_lastMigratedVersionKey error:0];
  currentMigrationVersion = self->_currentMigrationVersion;
  if (currentMigrationVersion <= [v4 integerValue])
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Current migration version: %{public}@, no migration needed", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained settingsMigrationManagerDidCompleteMigration:self didRunMigrationSteps:0];
  }

  else
  {
    if (v4)
    {
      v6 = [v4 integerValue];
    }

    else
    {
      v6 = -1;
    }

    _HKInitializeLogging();
    v9 = self->_loggingCategory;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = self;
      v17 = 2050;
      v18 = v6;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Current migration version: %{public}ld, scheduling migration", buf, 0x16u);
    }

    v10 = objc_loadWeakRetained(&self->_profile);
    v11 = [v10 database];
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__HDSettingsMigrationManager_daemonReady___block_invoke;
    v14[3] = &unk_2786138F8;
    v14[4] = self;
    v14[5] = v6;
    [v11 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __42__HDSettingsMigrationManager_daemonReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 maintenanceWorkCoordinator];
  v5 = [*(a1 + 32) description];
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__HDSettingsMigrationManager_daemonReady___block_invoke_2;
  v10[3] = &unk_2786138F8;
  v8 = *(a1 + 40);
  v10[4] = v6;
  v10[5] = v8;
  v9 = [HDMaintenanceOperation maintenanceOperationWithName:v5 queue:v7 synchronousBlock:v10];
  [v4 enqueueMaintenanceOperation:v9];
}

- (void)_queue_performMigrationFromCurrentMigrationVersion:(int64_t)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_migrationSteps;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v28;
    *&v7 = 138543618;
    v25 = v7;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 migrationVersion];
        _HKInitializeLogging();
        loggingCategory = self->_loggingCategory;
        v14 = os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT);
        if (v12 <= a3)
        {
          if (v14)
          {
            *buf = v25;
            v32 = self;
            v33 = 2114;
            v34 = v11;
            _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping migration step as it has already occurred: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (v14)
          {
            *buf = v25;
            v32 = self;
            v33 = 2114;
            v34 = v11;
            _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing migration step: %{public}@", buf, 0x16u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_profile);
          v26 = 0;
          v16 = [v11 performStepWithProfile:WeakRetained error:&v26];
          v17 = v26;

          if ((v16 & 1) == 0)
          {
            _HKInitializeLogging();
            v22 = self->_loggingCategory;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v32 = self;
              v33 = 2114;
              v34 = v11;
              v35 = 2114;
              v36 = v17;
              _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] Error performing step %{public}@: %{public}@", buf, 0x20u);
            }

            v21 = 0;
            goto LABEL_21;
          }

          migrationVersionDefaults = self->_migrationVersionDefaults;
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "migrationVersion")}];
          [(NSUserDefaults *)migrationVersionDefaults setObject:v19 forKey:self->_lastMigratedVersionKey];

          _HKInitializeLogging();
          v20 = self->_loggingCategory;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v32 = self;
            v33 = 2114;
            v34 = v11;
            _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed migration step: %{public}@", buf, 0x16u);
          }
        }
      }

      v8 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_21:

  v23 = objc_loadWeakRetained(&self->_delegate);
  [v23 settingsMigrationManagerDidCompleteMigration:self didRunMigrationSteps:v21];

  v24 = *MEMORY[0x277D85DE8];
}

- (HDSettingsMigrationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end