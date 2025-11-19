@interface FIMindfulnessAppMigrator
- (FIMindfulnessAppMigrator)initWithContainer:(id)a3;
- (int64_t)_integerForKey:(id)a3 exists:(BOOL *)a4;
- (void)_removeObjectForKey:(id)a3;
- (void)_setInteger:(int64_t)a3 key:(id)a4;
- (void)_synchronize;
- (void)migrateIfNeeded;
@end

@implementation FIMindfulnessAppMigrator

- (FIMindfulnessAppMigrator)initWithContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FIMindfulnessAppMigrator;
  v6 = [(FIMindfulnessAppMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
  }

  return v7;
}

- (void)migrateIfNeeded
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v3 = [(FIMindfulnessAppMigrator *)self _integerForKey:@"MigratedBreathRate" exists:&v23];
  v22 = 0;
  v4 = [(FIMindfulnessAppMigrator *)self _integerForKey:@"MigratedHapticLevel" exists:&v22];
  if (v23 & 1) != 0 || (v22)
  {
    v21 = 0;
    v5 = [(FIMindfulnessAppMigrator *)self _integerForKey:@"BreathRate" exists:&v21];
    v20 = 0;
    v6 = [(FIMindfulnessAppMigrator *)self _integerForKey:@"HapticLevel" exists:&v20];
    if (v21 == 1)
    {
      if (v20 == 1)
      {
        v7 = v6;
        _HKInitializeLogging();
        v8 = *MEMORY[0x277CCC2A8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *v26 = v5;
          *&v26[8] = 2048;
          v27 = v7;
          _os_log_impl(&dword_24B35E000, v8, OS_LOG_TYPE_DEFAULT, "[FIMindfulnessAppMigrator] Values already exist (BreathRate: %ld, HapticLevel: %ld)", buf, 0x16u);
        }

        [(FIMindfulnessAppMigrator *)self _removeObjectForKey:@"MigratedBreathRate"];
        [(FIMindfulnessAppMigrator *)self _removeObjectForKey:@"MigratedHapticLevel"];
        goto LABEL_24;
      }
    }

    else if (v23 == 1)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2A8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v26 = v3;
        _os_log_impl(&dword_24B35E000, v9, OS_LOG_TYPE_DEFAULT, "[FIMindfulnessAppMigrator] Migrating BreatheRate: %ld", buf, 0xCu);
      }

      [(FIMindfulnessAppMigrator *)self _setInteger:v3 key:@"BreathRate"];
      goto LABEL_14;
    }

    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v26 = v21;
      *&v26[4] = 1024;
      *&v26[6] = v23;
      _os_log_impl(&dword_24B35E000, v10, OS_LOG_TYPE_DEFAULT, "[FIMindfulnessAppMigrator] Not migrating breath rate (existing: %{BOOL}d, migrated: %{BOOL}d)", buf, 0xEu);
    }

LABEL_14:
    if ((v20 & 1) != 0 || v22 != 1)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v26 = v20;
        *&v26[4] = 1024;
        *&v26[6] = v22;
        _os_log_impl(&dword_24B35E000, v12, OS_LOG_TYPE_DEFAULT, "[FIMindfulnessAppMigrator] Not migrating haptic level (existing: %{BOOL}d, migratedBreathRateExists %{BOOL}d)", buf, 0xEu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2A8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v26 = v4;
        _os_log_impl(&dword_24B35E000, v11, OS_LOG_TYPE_DEFAULT, "[FIMindfulnessAppMigrator] Migrating HapticLevel: %ld", buf, 0xCu);
      }

      [(FIMindfulnessAppMigrator *)self _setInteger:v4 key:@"HapticLevel"];
    }

    [(FIMindfulnessAppMigrator *)self _synchronize];
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B35E000, v13, OS_LOG_TYPE_DEFAULT, "[FIMindfulnessAppMigrator] Syncing to Companion", buf, 2u);
    }

    v14 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v15 = MEMORY[0x277CBEB98];
    v24[0] = @"BreathRate";
    v24[1] = @"HapticLevel";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v17 = [v15 setWithArray:v16];
    [v14 synchronizeUserDefaultsDomain:@"com.apple.Mind" keys:v17 container:@"com.apple.Mind"];

    [(FIMindfulnessAppMigrator *)self _removeObjectForKey:@"MigratedBreathRate"];
    [(FIMindfulnessAppMigrator *)self _removeObjectForKey:@"MigratedHapticLevel"];
    notify_post("NanoLifestyleMindfulnessPreferencesChangedNotification");
    goto LABEL_24;
  }

  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC2A8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B35E000, v19, OS_LOG_TYPE_DEFAULT, "[FIMindfulnessAppMigrator] No keys to migrate", buf, 2u);
  }

LABEL_24:
  v18 = *MEMORY[0x277D85DE8];
}

- (int64_t)_integerForKey:(id)a3 exists:(BOOL *)a4
{
  v6 = a3;
  v12 = 0;
  if (self->_container)
  {
    AppIntegerValueWithContainer = _CFPreferencesGetAppIntegerValueWithContainer();
    if (a4)
    {
LABEL_3:
      *a4 = v12;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [v9 objectForKey:v6];

    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 integerValue];
      v12 = v11 != 0;
      if (v11)
      {
        AppIntegerValueWithContainer = [v10 integerValue];
      }

      else
      {
        AppIntegerValueWithContainer = 0;
      }
    }

    else
    {
      AppIntegerValueWithContainer = 0;
      v12 = 0;
    }

    if (a4)
    {
      goto LABEL_3;
    }
  }

  return AppIntegerValueWithContainer;
}

- (void)_setInteger:(int64_t)a3 key:(id)a4
{
  if (self->_container)
  {
    v6 = MEMORY[0x277CCABB0];
    v10 = a4;
    [v6 numberWithInteger:a3];
    container = self->_container;
    _CFPreferencesSetAppValueWithContainer();
  }

  else
  {
    v8 = MEMORY[0x277CBEBD0];
    v9 = a4;
    v10 = [v8 standardUserDefaults];
    [v10 setInteger:a3 forKey:v9];
  }
}

- (void)_removeObjectForKey:(id)a3
{
  if (self->_container)
  {
    v5 = a3;
    _CFPreferencesSetAppValueWithContainer();
  }

  else
  {
    v3 = MEMORY[0x277CBEBD0];
    v4 = a3;
    v5 = [v3 standardUserDefaults];
    [v5 removeObjectForKey:v4];
  }
}

- (void)_synchronize
{
  if (self->_container)
  {

    MEMORY[0x2821102A0](@"com.apple.Mind");
  }

  else
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v3 synchronize];
  }
}

@end