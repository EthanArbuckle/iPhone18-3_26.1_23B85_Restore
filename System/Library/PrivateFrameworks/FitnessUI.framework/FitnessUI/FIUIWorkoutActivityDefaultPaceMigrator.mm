@interface FIUIWorkoutActivityDefaultPaceMigrator
+ (void)migrateDefaultOutdoorRunningWalkingPaceFromCurrentToAverage;
+ (void)migrateDefaultOutdoorRunningWalkingPaceFromCurrentToAverageWithSyncManager:(id)manager domainAccessor:(id)accessor;
@end

@implementation FIUIWorkoutActivityDefaultPaceMigrator

+ (void)migrateDefaultOutdoorRunningWalkingPaceFromCurrentToAverage
{
  v3 = objc_alloc_init(MEMORY[0x1E69B3590]);
  v2 = [objc_alloc(MEMORY[0x1E69B3588]) initWithDomain:@"com.apple.nanolifestyle.sessiontrackerapp"];
  [objc_opt_class() migrateDefaultOutdoorRunningWalkingPaceFromCurrentToAverageWithSyncManager:v3 domainAccessor:v2];
}

+ (void)migrateDefaultOutdoorRunningWalkingPaceFromCurrentToAverageWithSyncManager:(id)manager domainAccessor:(id)accessor
{
  v23[2] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  accessorCopy = accessor;
  _HKInitializeLogging();
  v7 = MEMORY[0x1E696B9A8];
  v8 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_1E5D0F000, v8, OS_LOG_TYPE_DEFAULT, "[NanoHealthDataMigrator] Migrating activity pace setting if needed", v22, 2u);
  }

  v9 = [accessorCopy objectForKey:@"ActivitySettingsFormatVersion"];
  integerValue = [v9 integerValue];
  _HKInitializeLogging();
  v11 = *v7;
  v12 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
  if (integerValue < 1)
  {
    if (v12)
    {
      *v22 = 0;
      _os_log_impl(&dword_1E5D0F000, v11, OS_LOG_TYPE_DEFAULT, "[NanoHealthDataMigrator] Will migrate activity pace setting...", v22, 2u);
    }

    synchronize = [accessorCopy synchronize];
    dictionary = [accessorCopy objectForKey:@"SettingsByActivityType"];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF20] dictionary];
    }

    v15 = _FIUIMigratedPaceSettings(dictionary);

    [accessorCopy setObject:v15 forKey:@"SettingsByActivityType"];
    [accessorCopy setObject:&unk_1F5F9B7A8 forKey:@"ActivitySettingsFormatVersion"];
    synchronize2 = [accessorCopy synchronize];
    domain = [accessorCopy domain];
    v18 = MEMORY[0x1E695DFD8];
    v23[0] = @"ActivitySettingsFormatVersion";
    v23[1] = @"SettingsByActivityType";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v20 = [v18 setWithArray:v19];
    [managerCopy synchronizeNanoDomain:domain keys:v20];

    _HKInitializeLogging();
    v21 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1E5D0F000, v21, OS_LOG_TYPE_DEFAULT, "[NanoHealthDataMigrator] Activity pace migration done.", v22, 2u);
    }
  }

  else if (v12)
  {
    *v22 = 0;
    _os_log_impl(&dword_1E5D0F000, v11, OS_LOG_TYPE_DEFAULT, "[NanoHealthDataMigrator] Migrating activity pace not needed, version is > 0", v22, 2u);
  }
}

@end