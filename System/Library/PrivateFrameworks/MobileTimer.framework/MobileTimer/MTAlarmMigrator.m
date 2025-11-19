@interface MTAlarmMigrator
- (void)cleanUpOldNotifications;
- (void)clearInvalidPendingNotifications;
- (void)migrateFromOldStorage;
- (void)removeFromOldStorage;
@end

@implementation MTAlarmMigrator

- (void)migrateFromOldStorage
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 alarms];
  v5 = [a1 sleepAlarm];
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = v4;
  v11 = 2114;
  v12 = v5;
  _os_log_debug_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ migrated to alarms: %{public}@ and sleep alarm: %{public}@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

void __40__MTAlarmMigrator_migrateFromOldStorage__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MTLegacyManager alarmFromOldAlarm:a2];
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 alarmID];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 1026;
    v14 = [v3 isEnabled];
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ migrated alarm %{public}@ (enabled: %{public}d)", &v9, 0x1Cu);
  }

  v7 = [*(a1 + 32) alarms];
  [v7 addObject:v3];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeFromOldStorage
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTIsHorseman();
  v4 = MTLogForCategory(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping migration removal, as this device doesn't support the old storage", &v7, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing old alarms and notifications from storage", &v7, 0xCu);
    }

    v4 = +[MTLegacyManager sharedManager];
    [v4 purgeLegacyData];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)cleanUpOldNotifications
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTIsHorseman();
  v4 = MTLogForCategory(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ notification cleanup, as this device doesn't support the old storage", &v7, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ cleaning up old notifications", &v7, 0xCu);
    }

    v4 = +[MTLegacyManager sharedManager];
    [v4 cancelNotifications];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearInvalidPendingNotifications
{
  v2 = +[MTLegacyManager sharedManager];
  [v2 clearInvalidPendingNotifications];
}

@end