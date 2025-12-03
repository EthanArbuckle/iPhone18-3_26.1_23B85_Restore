@interface HDSettingsMigrationManager
- (HDSettingsMigrationManager)initWithProfile:(id)profile identifier:(id)identifier currentMigrationVersion:(int64_t)version migrationSteps:(id)steps delegate:(id)delegate loggingCategory:(id)category;
- (HDSettingsMigrationManager)initWithProfile:(id)profile identifier:(id)identifier currentMigrationVersion:(int64_t)version migrationSteps:(id)steps delegate:(id)delegate migrationVersionDefaults:(id)defaults lastMigratedVersionKey:(id)key loggingCategory:(id)self0;
- (HDSettingsMigrationManagerDelegate)delegate;
- (void)_queue_performMigrationFromCurrentMigrationVersion:(int64_t)version;
- (void)daemonReady:(id)ready;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDSettingsMigrationManager

- (HDSettingsMigrationManager)initWithProfile:(id)profile identifier:(id)identifier currentMigrationVersion:(int64_t)version migrationSteps:(id)steps delegate:(id)delegate loggingCategory:(id)category
{
  v14 = MEMORY[0x277CBEBD0];
  categoryCopy = category;
  delegateCopy = delegate;
  stepsCopy = steps;
  identifierCopy = identifier;
  profileCopy = profile;
  v20 = [[v14 alloc] initWithSuiteName:@"com.apple.private.health.settings-migration"];
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"HDSettingsMigrationManager_LastCompletedVersion_%@", identifierCopy];
  v22 = [(HDSettingsMigrationManager *)self initWithProfile:profileCopy identifier:identifierCopy currentMigrationVersion:version migrationSteps:stepsCopy delegate:delegateCopy migrationVersionDefaults:v20 lastMigratedVersionKey:identifierCopy loggingCategory:categoryCopy];

  return v22;
}

- (HDSettingsMigrationManager)initWithProfile:(id)profile identifier:(id)identifier currentMigrationVersion:(int64_t)version migrationSteps:(id)steps delegate:(id)delegate migrationVersionDefaults:(id)defaults lastMigratedVersionKey:(id)key loggingCategory:(id)self0
{
  obj = profile;
  identifierCopy = identifier;
  stepsCopy = steps;
  delegateCopy = delegate;
  defaultsCopy = defaults;
  keyCopy = key;
  categoryCopy = category;
  v29.receiver = self;
  v29.super_class = HDSettingsMigrationManager;
  v19 = [(HDSettingsMigrationManager *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_profile, obj);
    objc_storeStrong(&v20->_identifier, identifier);
    v20->_currentMigrationVersion = version;
    objc_storeStrong(&v20->_migrationSteps, steps);
    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v20->_migrationVersionDefaults, defaults);
    objc_storeStrong(&v20->_lastMigratedVersionKey, key);
    objc_storeStrong(&v20->_loggingCategory, category);
    v21 = HKCreateSerialDispatchQueue();
    queue = v20->_queue;
    v20->_queue = v21;

    WeakRetained = objc_loadWeakRetained(&v20->_profile);
    [WeakRetained registerProfileReadyObserver:v20 queue:{v20->_queue, defaultsCopy, stepsCopy, identifierCopy}];
  }

  return v20;
}

- (void)profileDidBecomeReady:(id)ready
{
  queue = self->_queue;
  readyCopy = ready;
  dispatch_assert_queue_V2(queue);
  daemon = [readyCopy daemon];

  [daemon registerDaemonReadyObserver:self queue:self->_queue];
}

- (void)daemonReady:(id)ready
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
      selfCopy2 = self;
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
      integerValue = [v4 integerValue];
    }

    else
    {
      integerValue = -1;
    }

    _HKInitializeLogging();
    v9 = self->_loggingCategory;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v17 = 2050;
      v18 = integerValue;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Current migration version: %{public}ld, scheduling migration", buf, 0x16u);
    }

    v10 = objc_loadWeakRetained(&self->_profile);
    database = [v10 database];
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__HDSettingsMigrationManager_daemonReady___block_invoke;
    v14[3] = &unk_2786138F8;
    v14[4] = self;
    v14[5] = integerValue;
    [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v14];
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

- (void)_queue_performMigrationFromCurrentMigrationVersion:(int64_t)version
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
        migrationVersion = [v11 migrationVersion];
        _HKInitializeLogging();
        loggingCategory = self->_loggingCategory;
        v14 = os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT);
        if (migrationVersion <= version)
        {
          if (v14)
          {
            *buf = v25;
            selfCopy4 = self;
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
            selfCopy4 = self;
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
              selfCopy4 = self;
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
            selfCopy4 = self;
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