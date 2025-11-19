@interface MTSleepManager
+ (id)nextSleepAlarm;
+ (void)nextSleepAlarm;
- (BOOL)_didCompleteSleepOnboarding;
- (BOOL)watchSleepFeaturesEnabled;
- (MTSleepManager)initWithAlarmStorage:(id)a3;
- (MTSleepManager)initWithAlarmStorage:(id)a3 sleepStoreProvider:(id)a4 featureStoreProvider:(id)a5 healthStore:(id)a6 persistence:(id)a7;
- (id)sourceIdentifier;
- (void)markSleepMigrationComplete;
- (void)resetSleepAlarmSnoozeState;
- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4;
- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5;
- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5;
- (void)source:(id)a3 didUpdateAlarms:(id)a4;
- (void)updateSleepAlarms;
- (void)watchSleepFeaturesEnabled;
@end

@implementation MTSleepManager

- (MTSleepManager)initWithAlarmStorage:(id)a3
{
  v4 = a3;
  getHKHealthStoreClass();
  v5 = objc_opt_new();
  v6 = +[MTUserDefaults sharedUserDefaults];
  v7 = [(MTSleepManager *)self initWithAlarmStorage:v4 sleepStoreProvider:&__block_literal_global_48 featureStoreProvider:&__block_literal_global_301 healthStore:v5 persistence:v6];

  return v7;
}

id __39__MTSleepManager_initWithAlarmStorage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69D3690];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithIdentifier:v6 healthStore:v5];

  return v7;
}

id __39__MTSleepManager_initWithAlarmStorage___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E69D3688]);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr;
  v11 = getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr;
  if (!getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr)
  {
    v5 = HealthKitLibrary_1();
    v9[3] = dlsym(v5, "HKFeatureIdentifierSleepCoaching");
    getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    __39__MTSleepManager_initWithAlarmStorage___block_invoke_2_cold_1();
  }

  v6 = [v3 initWithFeatureIdentifier:*v4 sleepStore:v2];

  return v6;
}

- (MTSleepManager)initWithAlarmStorage:(id)a3 sleepStoreProvider:(id)a4 featureStoreProvider:(id)a5 healthStore:(id)a6 persistence:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v32.receiver = self;
  v32.super_class = MTSleepManager;
  v18 = [(MTSleepManager *)&v32 init];
  if (v18)
  {
    v19 = MTLogForCategory(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v18;
      _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep manager initialized", buf, 0xCu);
    }

    objc_storeStrong(&v18->_alarmStorage, a3);
    [(MTAlarmStorage *)v18->_alarmStorage registerObserver:v18];
    [(MTSleepManager *)v18 setHealthStore:v16];
    v20 = [v14 copy];
    [(MTSleepManager *)v18 setSleepStoreProvider:v20];

    v21 = [(MTSleepManager *)v18 sleepStoreProvider];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [(MTSleepManager *)v18 healthStore];
    v25 = (v21)[2](v21, v23, v24);
    [(MTSleepManager *)v18 setSleepStore:v25];

    v26 = [(MTSleepManager *)v18 sleepStore];
    [v26 addObserver:v18];

    v27 = [(MTSleepManager *)v18 sleepStore];
    v28 = v15[2](v15, v27);
    [(MTSleepManager *)v18 setFeatureStore:v28];

    [(MTSleepManager *)v18 setPersistence:v17];
    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v18 selector:sel_updateSleepAlarms name:@"com.apple.MTAlarmStorage.updateSleepAlarms" object:0];
  }

  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)updateSleepAlarms
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ failed to retrieve sleep schedule model with error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

id __35__MTSleepManager_updateSleepAlarms__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 isEnabled];
  v6 = [*(a1 + 40) wakeUpConfirmedUntilDate];
  v7 = [MTSleepUtilities alarmFromSleepOccurrence:v4 scheduleEnabled:v5 keepOffUntilDate:v6];

  return v7;
}

- (BOOL)_didCompleteSleepOnboarding
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(MTSleepManager *)self featureStore];
  v10 = 0;
  v4 = [v3 isCurrentOnboardingVersionCompletedWithError:&v10];
  v5 = v10;

  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ completed sleep onboarding check with result: %{public}@, error: %{public}@ ", buf, 0x20u);
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 BOOLValue];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)resetSleepAlarmSnoozeState
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resetSleepAlarmSnoozeState", &v5, 0xCu);
  }

  if (MTShouldHandleForEucalyptus())
  {
    [(MTAlarmStorage *)self->_alarmStorage updateSleepAlarmsWithBlock:&__block_literal_global_315 source:self];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)watchSleepFeaturesEnabled
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(MTSleepManager *)self persistence];
  v4 = [v3 objectForKey:@"MTNeedsSleepMigration"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = MTLogForCategory(7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v18 = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_INFO, "%{public}@ needs sleep migration, fetching watchSleepFeaturesEnabled async", buf, 0xCu);
    }

    v7 = [(MTSleepManager *)self sleepStore];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__MTSleepManager_watchSleepFeaturesEnabled__block_invoke;
    v16[3] = &unk_1E7B0FC38;
    v16[4] = self;
    [v7 currentSleepSettingsWithCompletion:v16];

    v8 = 0;
  }

  else
  {
    v9 = [(MTSleepManager *)self sleepStore];
    v15 = 0;
    v10 = [v9 currentSleepSettingsWithError:&v15];
    v11 = v15;
    v8 = [v10 watchSleepFeaturesEnabled];

    if (v11)
    {
      v12 = MTLogForCategory(7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MTSleepManager watchSleepFeaturesEnabled];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

void __43__MTSleepManager_watchSleepFeaturesEnabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = MTLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__MTSleepManager_watchSleepFeaturesEnabled__block_invoke_cold_1(a1, v4, v5);
    }
  }

  else
  {
    [*(a1 + 32) markSleepMigrationComplete];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:MTSleepManagerSettingsDidChange object:0];
  }
}

- (void)markSleepMigrationComplete
{
  v3 = [(MTSleepManager *)self persistence];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v3 setObject:v2 forKey:@"MTNeedsSleepMigration"];
}

- (id)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:MTSleepManagerSettingsDidChange object:0];
}

+ (id)nextSleepAlarm
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = a1;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching sleep alarm from health", buf, 0xCu);
  }

  getHKHealthStoreClass();
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x1E69D3690]) initWithHealthStore:v4];
  v6 = [MEMORY[0x1E695DF00] mtNow];
  v15 = 0;
  v7 = [v5 upcomingScheduleOccurrenceAfterDate:v6 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = MTLogForCategory(7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[MTSleepManager nextSleepAlarm];
    }

    goto LABEL_10;
  }

  v14 = 0;
  v9 = [v5 currentSleepScheduleWithError:&v14];
  v8 = v14;
  if (v8)
  {
    v10 = MTLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[MTSleepManager nextSleepAlarm];
    }

LABEL_9:

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (!v7)
  {
    v10 = MTLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[(MTSleepManager *)a1];
    }

    goto LABEL_9;
  }

  v11 = [MTSleepUtilities alarmFromSleepOccurrence:v7 scheduleEnabled:v9 != 0 keepOffUntilDate:0];
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 isSleepAlarm])
  {
    if (a5 <= 0xB && ((1 << a5) & 0x8E0) != 0)
    {
      v10 = MTLogForCategory(7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v9 alarmIDString];
        v12 = [v9 dismissedDate];
        v13 = MTDismissAlarmActionDescription(a5);
        *buf = 138544130;
        v24 = self;
        v25 = 2114;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        v29 = 2114;
        v30 = v13;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ informing sleep store of alarm dismiss: %{public}@, dismiss date:%{public}@ action: %{public}@", buf, 0x2Au);
      }

      if (objc_opt_respondsToSelector())
      {
        v14 = [v8 isFromOtherDevice];
      }

      else
      {
        v14 = 0;
      }

      v15 = [(MTSleepManager *)self sleepStore];
      v16 = [v9 dismissedDate];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __55__MTSleepManager_source_didDismissAlarm_dismissAction___block_invoke;
      v21[3] = &unk_1E7B0FC60;
      v21[4] = self;
      v22 = v9;
      [v15 sleepAlarmWasDismissedOnDate:v16 source:v14 completion:v21];
    }

    else
    {
      v18 = MTLogForCategory(7);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v9 alarmIDString];
        v20 = MTDismissAlarmActionDescription(a5);
        *buf = 138543874;
        v24 = self;
        v25 = 2114;
        v26 = v19;
        v27 = 2114;
        v28 = v20;
        _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ not informing sleep store of alarm dismiss: %{public}@, action: %{public}@", buf, 0x20u);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __55__MTSleepManager_source_didDismissAlarm_dismissAction___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) alarmIDString];
    v10 = 138544130;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep store sleepAlarmWasDismissedOnDate completed for alarm id: %{public}@ with status: %d, error: %{public}@", &v10, 0x26u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 isSleepAlarm])
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v7 isFromOtherDevice];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(MTSleepManager *)self sleepStore];
    v11 = [v8 snoozeFireDate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__MTSleepManager_source_didSnoozeAlarm_snoozeAction___block_invoke;
    v12[3] = &unk_1E7B0FC60;
    v12[4] = self;
    v13 = v8;
    [v10 sleepAlarmWasSnoozedUntilDate:v11 source:v9 completion:v12];
  }
}

void __53__MTSleepManager_source_didSnoozeAlarm_snoozeAction___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) alarmIDString];
    v10 = 138544130;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep store sleepAlarmWasSnoozedUntilDate completed for alarm id: %{public}@ with status: %d, error: %{public}@", &v10, 0x26u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didUpdateAlarms:(id)a4
{
  v6 = a3;
  if ([a4 na_any:&__block_literal_global_324])
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 isFromOtherDevice];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(MTSleepManager *)self sleepStore];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__MTSleepManager_source_didUpdateAlarms___block_invoke_2;
    v9[3] = &unk_1E7B0FC88;
    v9[4] = self;
    [v8 sleepAlarmWasModifiedFromSource:v7 completion:v9];
  }
}

void __41__MTSleepManager_source_didUpdateAlarms___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138543874;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep store sleepAlarmWasModified completed with status: %d, error: %{public}@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __39__MTSleepManager_initWithAlarmStorage___block_invoke_2_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"HKFeatureIdentifier getHKFeatureIdentifierSleepCoaching(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTSleepManager.m" lineNumber:33 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)watchSleepFeaturesEnabled
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ failed to get sleep settings, error: %{public}@ ");
  v2 = *MEMORY[0x1E69E9840];
}

void __43__MTSleepManager_watchSleepFeaturesEnabled__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, a2, a3, "%{public}@ failed to get sleep settings, error: %{public}@ ", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)nextSleepAlarm
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ no upcoming sleep schedule occurrence", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end