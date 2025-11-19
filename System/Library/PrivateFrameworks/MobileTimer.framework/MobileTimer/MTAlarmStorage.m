@interface MTAlarmStorage
+ (id)_diagnosticDictionaryForAlarm:(id)a3;
- (BOOL)_queue_hasMatchingAlarm:(id)a3;
- (BOOL)isAlarmKitSchedulingEnabled;
- (BOOL)needsCoreDataMigration;
- (BOOL)shouldUseCoreData;
- (MTAlarm)nextAlarm;
- (MTAlarm)sleepAlarm;
- (MTAlarmScheduler)scheduler;
- (MTAlarmStorage)init;
- (MTAlarmStorage)initWithCoreDataStore:(id)a3;
- (MTAlarmStorage)initWithPersistence:(id)a3;
- (MTAlarmStorage)initWithPersistence:(id)a3 migrator:(id)a4 serializer:(id)a5 callbackScheduler:(id)a6 currentDateProvider:(id)a7;
- (NSArray)alarms;
- (NSArray)allAlarms;
- (NSDate)lastModifiedDate;
- (NSMutableArray)sleepAlarms;
- (id)_applyNecessaryChangesFromExistingAlarm:(id)a3 updatedAlarm:(id)a4;
- (id)_cleanUpForInternalBuild:(id)a3;
- (id)_cleanUpSleepAlarmRepeat:(id)a3;
- (id)_cleanUpSnoozeFireDate:(id)a3;
- (id)_convertSleepAlarmToRegular:(id)a3;
- (id)_diagnosticDictionaryForAlarms:(id)a3;
- (id)_queuePersistAlarm:(id)a3 replacingAlarm:(id)a4;
- (id)_queue_alarmMatchingAlarm:(id)a3;
- (id)_queue_alarmMatchingAlarmIdentifier:(id)a3;
- (id)_queue_allAlarms;
- (id)_queue_allSleepAlarms;
- (id)_queue_updateAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (id)_queue_updateSleepAlarmsFromExistingAlarms:(id)a3;
- (id)activeSleepAlarm;
- (id)gatherDiagnostics;
- (id)nullableAllAlarms;
- (id)transferMetadataForSleepAlarm:(id)a3 fromPrevious:(id)a4;
- (void)_clearOutInvalidToneIdentifiers;
- (void)_loadAlarmsWithCompletion:(id)a3;
- (void)_notifyObserversForAlarmAdd:(id)a3 source:(id)a4;
- (void)_notifyObserversForAlarmChange:(id)a3 previousAlarms:(id)a4 source:(id)a5;
- (void)_notifyObserversForAlarmDismiss:(id)a3 dismissAction:(unint64_t)a4 source:(id)a5;
- (void)_notifyObserversForAlarmFire:(id)a3 triggerType:(unint64_t)a4 source:(id)a5;
- (void)_notifyObserversForAlarmRemoval:(id)a3 source:(id)a4;
- (void)_notifyObserversForAlarmSnooze:(id)a3 snoozeAction:(unint64_t)a4 source:(id)a5;
- (void)_notifyObserversForNextAlarmChange:(id)a3 source:(id)a4;
- (void)_queue_actuallyRemoveAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)_queue_addAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)_queue_dismissAlarmWithIdentifier:(id)a3 dismissDate:(id)a4 dismissAction:(unint64_t)a5 withCompletion:(id)a6 source:(id)a7;
- (void)_queue_dismissMutableAlarm:(id)a3 dismissDate:(id)a4 dismissAction:(unint64_t)a5;
- (void)_queue_persistAlarms;
- (void)_queue_removeAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)_queue_removeAlarmWithIdentifier:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)_queue_removeAllAlarmsForSource:(id)a3;
- (void)_queue_resetAlarmsTo:(id)a3 sleepAlarms:(id)a4;
- (void)_queue_setAllAlarms:(id)a3 sleepAlarms:(id)a4 source:(id)a5 persist:(BOOL)a6 notify:(BOOL)a7 override:(BOOL)a8;
- (void)_queue_snoozeAlarmWithIdentifier:(id)a3 snoozeDate:(id)a4 snoozeAction:(unint64_t)a5 withCompletion:(id)a6 source:(id)a7;
- (void)_queue_sortAlarms;
- (void)_queue_sortSleepAlarms;
- (void)_queue_updateAlarmWithIdentifier:(id)a3 changeSet:(id)a4 withCompletion:(id)a5 source:(id)a6;
- (void)_removeAlarmDataIfNecessary:(id)a3;
- (void)_resetCurrentToneIdentifier;
- (void)_withLock:(id)a3;
- (void)addAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)alarmWithIdentifier:(id)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)didFinishLoadingStore;
- (void)dismissAlarmWithIdentifier:(id)a3 dismissAction:(unint64_t)a4 withCompletion:(id)a5 source:(id)a6;
- (void)dismissAlarmWithIdentifier:(id)a3 dismissDate:(id)a4 dismissAction:(unint64_t)a5 withCompletion:(id)a6 source:(id)a7;
- (void)getAlarmsWithCompletion:(id)a3;
- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5;
- (void)loadAlarmsFromCoreDataSync;
- (void)loadAlarmsFromCoreDataWithCompletion:(id)a3;
- (void)loadAlarmsSync;
- (void)migrateDefaultsAlarmsToCoreData:(id)a3 sleepAlarms:(id)a4;
- (void)persistAlarmIntoCoreData:(id)a3 replacingAlarm:(id)a4;
- (void)persistAlarmStorageVersion;
- (void)persistCoreDataMigrationComplete;
- (void)printDiagnostics;
- (void)registerStoreLoadCompletion:(id)a3;
- (void)removeAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)removeAlarmWithIdentifier:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)removeAllAlarmsForSource:(id)a3;
- (void)scheduler:(id)a3 didChangeNextAlarm:(id)a4;
- (void)scheduler:(id)a3 didFireAlarm:(id)a4;
- (void)setAllAlarms:(id)a3 sleepAlarms:(id)a4 source:(id)a5;
- (void)setScheduler:(id)a3;
- (void)setupListeners;
- (void)snoozeAlarmWithIdentifier:(id)a3 snoozeAction:(unint64_t)a4 withCompletion:(id)a5 source:(id)a6;
- (void)snoozeAlarmWithIdentifier:(id)a3 snoozeDate:(id)a4 snoozeAction:(unint64_t)a5 withCompletion:(id)a6 source:(id)a7;
- (void)store_getAllAlarmsWithCompletion:(id)a3;
- (void)store_getNonSleepAlarmsWithCompletion:(id)a3;
- (void)store_getSleepAlarmsWithCompletion:(id)a3;
- (void)timeListener:(id)a3 didDetectSignificantTimeChangeWithCompletionBlock:(id)a4;
- (void)updateAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5;
- (void)updateAlarmWithIdentifier:(id)a3 changeSet:(id)a4 withCompletion:(id)a5 source:(id)a6;
- (void)updateSleepAlarms:(id)a3 source:(id)a4;
- (void)updateSleepAlarmsWithBlock:(id)a3 source:(id)a4;
@end

@implementation MTAlarmStorage

- (MTAlarm)nextAlarm
{
  v2 = [(MTAlarmStorage *)self scheduler];
  v3 = [v2 nextAlarm];

  return v3;
}

- (MTAlarmScheduler)scheduler
{
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);

  return WeakRetained;
}

- (MTAlarmStorage)init
{
  v3 = +[MTUserDefaults sharedUserDefaults];
  v4 = [(MTAlarmStorage *)self initWithPersistence:v3];

  return v4;
}

- (MTAlarmStorage)initWithCoreDataStore:(id)a3
{
  objc_storeStrong(&self->_coreDataStore, a3);
  v5 = a3;
  [(MTCDDataStore *)self->_coreDataStore setAlarmObserver:self];
  v6 = +[MTUserDefaults sharedUserDefaults];

  v7 = [(MTAlarmStorage *)self initWithPersistence:v6];
  return v7;
}

- (MTAlarmStorage)initWithPersistence:(id)a3
{
  v4 = a3;
  v5 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTAlarmStorage.access-queue", +[MTScheduler defaultPriority]);
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v8 = MTCurrentDateProvider();
  v9 = [(MTAlarmStorage *)self initWithPersistence:v4 migrator:v6 serializer:v5 callbackScheduler:v7 currentDateProvider:v8];

  return v9;
}

- (MTAlarmStorage)initWithPersistence:(id)a3 migrator:(id)a4 serializer:(id)a5 callbackScheduler:(id)a6 currentDateProvider:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = MTAlarmStorage;
  v18 = [(MTAlarmStorage *)&v28 init];
  if (v18)
  {
    v19 = MTLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v30 = v18;
      v31 = 2114;
      v32 = v13;
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@ with persistence %{public}@ and migrator %{public}@", buf, 0x20u);
    }

    objc_storeStrong(&v18->_serializer, a5);
    v20 = [[MTObserverStore alloc] initWithCallbackScheduler:v16];
    observers = v18->_observers;
    v18->_observers = v20;

    objc_storeStrong(&v18->_migrator, a4);
    v22 = [v17 copy];
    currentDateProvider = v18->_currentDateProvider;
    v18->_currentDateProvider = v22;

    objc_storeStrong(&v18->_persistence, a3);
    v24 = objc_opt_new();
    conductor = v18->_conductor;
    v18->_conductor = v24;

    v18->_lock._os_unfair_lock_opaque = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v3 = +[MTApplicationWorkspaceObserver sharedWorkspaceObserver];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTAlarmStorage;
  [(MTAlarmStorage *)&v4 dealloc];
}

- (void)setupListeners
{
  v3 = +[MTApplicationWorkspaceObserver sharedWorkspaceObserver];
  [v3 addObserver:self forBundleIdentifier:@"com.apple.mobiletimer"];
}

- (id)_cleanUpSnoozeFireDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 snoozeFireDate], v6 = objc_claimAutoreleasedReturnValue(), (*(self->_currentDateProvider + 2))(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "mtIsBeforeDate:", v7), v7, v6, v8))
  {
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MTAlarmStorage _cleanUpSnoozeFireDate:];
    }

    v10 = [v5 mutableCopy];
    [v10 setSnoozeFireDate:0];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (id)_cleanUpSleepAlarmRepeat:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [MTAlarmStorage _cleanUpSleepAlarmRepeat:];
    }

    v5 = [v3 mutableCopy];
    [v5 setRepeatSchedule:127];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_convertSleepAlarmToRegular:(id)a3
{
  v3 = a3;
  v4 = +[(MTAlarm *)MTMutableAlarm];
  [v4 setEnabled:{objc_msgSend(v3, "isEnabled")}];
  [v4 setHour:{objc_msgSend(v3, "hour")}];
  [v4 setMinute:{objc_msgSend(v3, "minute")}];
  [v4 setRepeatSchedule:{objc_msgSend(v3, "repeatSchedule")}];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BED_TIME" value:&stru_1F29360E0 table:@"Localizable"];
  [v4 setTitle:v6];

  v7 = [v3 sound];

  v8 = [v4 sound];
  v9 = [v8 toneIdentifier];

  v10 = [v4 sound];
  v11 = [v10 vibrationIdentifier];

  if ([v7 soundType] == 1)
  {
    v12 = *MEMORY[0x1E69DA928];
  }

  else
  {
    v13 = [v7 toneIdentifier];
    v12 = *MEMORY[0x1E69DA928];
    v14 = [v13 isEqualToString:*MEMORY[0x1E69DA928]];

    if (!v14)
    {
      goto LABEL_5;
    }
  }

  v15 = v12;

  v9 = v15;
LABEL_5:
  v16 = [v7 vibrationIdentifier];
  v17 = *MEMORY[0x1E69DA930];
  v18 = [v16 isEqualToString:*MEMORY[0x1E69DA930]];

  if (v18)
  {
    v19 = v17;

    v11 = v19;
  }

  v20 = [v4 sound];
  v21 = [v20 soundVolume];
  v22 = [MTSound toneSoundWithIdentifier:v9 vibrationIdentifer:v11 volume:v21];
  [v4 setSound:v22];

  v23 = [v4 copy];

  return v23;
}

- (id)_cleanUpForInternalBuild:(id)a3
{
  if (a3)
  {
    v4 = [a3 mutableCopy];
    v5 = [v4 sound];
    v6 = [v5 soundVolume];

    if (!v6)
    {
      v7 = [MTSound alloc];
      v8 = [v4 sound];
      v9 = [(MTSound *)v7 initWithSound:v8 usingVolume:&unk_1F2966008];

      [v4 setSound:v9];
    }

    [(MTAlarmStorage *)self _resetCurrentToneIdentifier];
    v10 = +[MTUserDefaults sharedUserDefaults];
    [v10 removeObjectForKey:@"MTDefaultTimerVibrationID"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_clearOutInvalidToneIdentifiers
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Cleaning out invalid tone identifiers", &v9, 0xCu);
  }

  v4 = +[MTUserDefaults sharedUserDefaults];
  [v4 removeObjectForKey:@"MTDefaultAlarmSoundType"];

  v5 = +[MTUserDefaults sharedUserDefaults];
  [v5 removeObjectForKey:@"MTDefaultAlarmToneID"];

  v6 = +[MTUserDefaults sharedUserDefaults];
  [v6 removeObjectForKey:@"MTDefaultAlarmMediaItemID"];

  v7 = +[MTUserDefaults sharedUserDefaults];
  [v7 removeObjectForKey:@"MTDefaultAlarmVibrationID"];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_resetCurrentToneIdentifier
{
  v2 = [MEMORY[0x1E69DA8F0] sharedToneManager];
  v3 = *MEMORY[0x1E69DA910];
  [v2 setCurrentToneIdentifier:0 forAlertType:13 topic:*MEMORY[0x1E69DA910]];

  v4 = [MEMORY[0x1E69DA8F8] sharedVibrationManager];
  [v4 setCurrentVibrationIdentifier:0 forAlertType:13 topic:v3];
}

- (void)loadAlarmsSync
{
  v3 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MTAlarmStorage_loadAlarmsSync__block_invoke;
  v5[3] = &unk_1E7B0C9D8;
  v6 = v3;
  v4 = v3;
  [(MTAlarmStorage *)self _loadAlarmsWithCompletion:v5];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_loadAlarmsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MTAlarmStorage *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MTAlarmStorage__loadAlarmsWithCompletion___block_invoke;
  v7[3] = &unk_1E7B0CA00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

uint64_t __44__MTAlarmStorage__loadAlarmsWithCompletion___block_invoke(uint64_t a1)
{
  v101 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) persistence];
  v3 = v2 == 0;

  v4 = MTLogForCategory(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      v6 = *v1;
      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ loading alarms", buf, 0xCu);
    }

    v7 = [*v1 persistence];
    v4 = [v7 objectForKey:@"MTAlarms"];

    v8 = [*v1 persistence];
    [v8 floatForKey:@"MTAlarmStorageVersion"];
    v10 = v9;

    v11 = [*v1 persistence];
    v12 = [v11 objectForKey:@"MTAlarmModifiedDate"];

    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v1;
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ loaded storage version: %f", buf, 0x16u);
    }

    v15 = *v1;
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __44__MTAlarmStorage__loadAlarmsWithCompletion___block_invoke_364;
    v92[3] = &unk_1E7B0C9D8;
    v92[4] = v15;
    [v15 _withLock:v92];
    if (v10 < 1.0)
    {
      v16 = MTLogForCategory(3);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *v1;
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ migration needed", buf, 0xCu);
      }

      v18 = MTLogForCategory(3);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *v1;
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ To set as a marker we are hitting here with updated root", buf, 0xCu);
      }

      [*(*v1 + 8) migrateFromOldStorage];
      v20 = [*(*v1 + 8) alarms];
      v21 = [*(*v1 + 8) sleepAlarm];
      v22 = MEMORY[0x1E695E0F0];
      v23 = 1;
LABEL_99:
      v73 = dispatch_get_global_queue(-32768, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__MTAlarmStorage__loadAlarmsWithCompletion___block_invoke_373;
      block[3] = &unk_1E7B0C9D8;
      block[4] = *v1;
      dispatch_async(v73, block);

      [*v1 _queue_setAllAlarms:v20 sleepAlarms:v22 source:0 persist:v23 notify:0];
      if (v10 < 1.0)
      {
        [*(*v1 + 8) removeFromOldStorage];
      }

      v74 = MTLogForCategory(3);
      v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG);

      v76 = MTLogForCategory(3);
      v77 = v76;
      if (v75)
      {
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          __44__MTAlarmStorage__loadAlarmsWithCompletion___block_invoke_cold_2(v1);
        }
      }

      else if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v78 = *v1;
        v79 = [*(*v1 + 3) count];
        v80 = [*(*v1 + 4) count];
        *buf = 138543874;
        *&buf[4] = v78;
        *&buf[12] = 2050;
        *&buf[14] = v79;
        *&buf[22] = 2050;
        v99 = v80;
        _os_log_impl(&dword_1B1F9F000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@ loaded %{public}ld alarms, %{public}ld sleep alarms", buf, 0x20u);
      }

      v81 = v12;
      if (!v12)
      {
        v81 = (*(*(*v1 + 10) + 16))();
      }

      objc_storeStrong(*v1 + 5, v81);
      if (!v12)
      {
      }

      goto LABEL_111;
    }

    if (!v4)
    {
      v34 = MTLogForCategory(3);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *v1;
        *buf = 138543362;
        *&buf[4] = v35;
        _os_log_impl(&dword_1B1F9F000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ has no alarms", buf, 0xCu);
      }

      v23 = 0;
      v21 = 0;
      v22 = MEMORY[0x1E695E0F0];
      v20 = MEMORY[0x1E695E0F0];
      goto LABEL_99;
    }

    if (v10 < 2.2)
    {
      v25 = MTLogForCategory(3);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *v1;
        *buf = 138543362;
        *&buf[4] = v26;
        _os_log_impl(&dword_1B1F9F000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ clean-up needed", buf, 0xCu);
      }

      [*(*v1 + 8) cleanUpOldNotifications];
    }

    if (v10 >= 2.0)
    {
      objc_opt_class();
      v36 = v4;
      if (objc_opt_isKindOfClass())
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v31 = v37;

      v87 = [[MTStorageReader alloc] initWithEncodedDictionary:v31];
    }

    else
    {
      v27 = MTLogForCategory(3);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *v1;
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ binary data storage version detected.  Using old reader.", buf, 0xCu);
      }

      objc_opt_class();
      v29 = v4;
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      v91 = 0;
      v87 = [[MTStorageReaderV1 alloc] initForReadingFromData:v31 error:&v91];
      v32 = v91;
      if (v32)
      {
        v33 = MTLogForCategory(3);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          __44__MTAlarmStorage__loadAlarmsWithCompletion___block_invoke_cold_1(v1);
        }
      }
    }

    v20 = [(MTStorageReader *)v87 decodeObjectForKey:@"MTAlarms"];
    v21 = [(MTStorageReader *)v87 decodeObjectForKey:@"MTSleepAlarm"];
    v22 = [(MTStorageReader *)v87 decodeObjectForKey:@"MTSleepAlarms"];
    v23 = v10 < 2.3;
    if (v10 < 2.3)
    {
      v38 = [*v1 _cleanUpForInternalBuild:v21];

      v21 = v38;
    }

    if (v10 < 2.5)
    {
      v39 = [*v1 _cleanUpSnoozeFireDate:v21];

      v23 = 1;
      v21 = v39;
    }

    if (v10 < 2.6)
    {
      v40 = [*v1 scheduler];
      [v40 cleanDeliveredNotifications];

      v23 = 1;
    }

    if (v10 < 2.7)
    {
      [*(*v1 + 8) cleanUpOldNotifications];
      v23 = 1;
    }

    if (v21)
    {
      if (![v21 repeatSchedule])
      {
        v41 = [*v1 _cleanUpSleepAlarmRepeat:v21];

        v23 = 1;
        v21 = v41;
      }

      if (v10 >= 3.1)
      {
        goto LABEL_55;
      }

      if (v21)
      {
        v42 = MTLogForCategory(3);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *v1;
          *buf = 138543618;
          *&buf[4] = v43;
          *&buf[12] = 2114;
          *&buf[14] = v21;
          _os_log_impl(&dword_1B1F9F000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Migrating sleep alarm: %{public}@ ", buf, 0x16u);
        }

        v97 = v21;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];

        v45 = [*v1 persistence];
        v46 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v45 setObject:v46 forKey:@"MTNeedsSleepMigration"];

        v23 = 1;
        v22 = v44;
        goto LABEL_55;
      }
    }

    else
    {
      v21 = 0;
      if (v10 >= 3.1)
      {
        goto LABEL_55;
      }
    }

    v23 = 1;
LABEL_55:
    if (v10 < 3.2 && MTShouldHandleForEucalyptus())
    {
      if (v21)
      {
        v93 = 0;
        v94 = &v93;
        v95 = 0x2050000000;
        v47 = getBMDiscoverabilitySignalEventClass_softClass;
        v96 = getBMDiscoverabilitySignalEventClass_softClass;
        if (!getBMDiscoverabilitySignalEventClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getBMDiscoverabilitySignalEventClass_block_invoke;
          v99 = &unk_1E7B0C600;
          v100 = &v93;
          __getBMDiscoverabilitySignalEventClass_block_invoke(buf);
          v47 = v94[3];
        }

        v48 = v47;
        _Block_object_dispose(&v93, 8);
        v49 = [v47 alloc];
        v50 = [MEMORY[0x1E696AAE8] mainBundle];
        v51 = [v50 bundleIdentifier];
        v52 = [v49 initWithIdentifier:@"com.apple.mobiletimer.bedtime.migration.done" bundleID:v51 context:0];

        v93 = 0;
        v94 = &v93;
        v95 = 0x2050000000;
        v53 = getBMStreamsClass_softClass;
        v96 = getBMStreamsClass_softClass;
        if (!getBMStreamsClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getBMStreamsClass_block_invoke;
          v99 = &unk_1E7B0C600;
          v100 = &v93;
          __getBMStreamsClass_block_invoke(buf);
          v53 = v94[3];
        }

        v54 = v53;
        _Block_object_dispose(&v93, 8);
        v55 = [v53 discoverabilitySignal];
        v56 = [v55 source];

        [v56 sendEvent:v52];
        v57 = MTLogForCategory(3);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = *v1;
          *buf = 138543362;
          *&buf[4] = v58;
          _os_log_impl(&dword_1B1F9F000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ Donate signal for existing bedtime", buf, 0xCu);
        }
      }

      else
      {
        v52 = MTLogForCategory(3);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v59 = *v1;
          *buf = 138543362;
          *&buf[4] = v59;
          _os_log_impl(&dword_1B1F9F000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ Don't donate signal because no existing bedtime", buf, 0xCu);
        }
      }

      v23 = 1;
    }

    if (v10 < 3.3 && MTShouldHandleForEucalyptus())
    {
      v86 = [MEMORY[0x1E699A1D8] serviceForClientIdentifier:@"com.apple.mobiletimer.bedtime-mode"];
      v90 = 0;
      v85 = [v86 invalidateActiveModeAssertionWithError:&v90];
      v60 = v90;
      v84 = v60;
      if (v85)
      {
        v61 = v60 == 0;
      }

      else
      {
        v61 = 0;
      }

      v62 = !v61;
      v63 = MTLogForCategory(3);
      v64 = v63;
      if (v62)
      {
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v65 = *v1;
          *buf = 138543874;
          *&buf[4] = v65;
          *&buf[12] = 2114;
          *&buf[14] = v86;
          *&buf[22] = 2114;
          v99 = v84;
          _os_log_error_impl(&dword_1B1F9F000, v64, OS_LOG_TYPE_ERROR, "%{public}@ Failed to release assertion with %{public}@, failure error:%{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v66 = *v1;
        *buf = 138543362;
        *&buf[4] = v66;
        _os_log_impl(&dword_1B1F9F000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully released assertion", buf, 0xCu);
      }
    }

    if (v10 < 3.4)
    {
      [*v1 _resetCurrentToneIdentifier];
    }

    if (v10 < 3.5)
    {
      [*v1 _clearOutInvalidToneIdentifiers];
    }

    if (MTIdiomIpad())
    {
      if (MTShouldHandleForEucalyptus())
      {
        if (v21 || ([v22 firstObject], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v67 = [*v1 _convertSleepAlarmToRegular:{v21, v84}];
          v68 = [v20 arrayByAddingObject:v67];

          v69 = MTLogForCategory(3);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = *v1;
            *buf = 138543874;
            *&buf[4] = v70;
            *&buf[12] = 2114;
            *&buf[14] = v21;
            *&buf[22] = 2114;
            v99 = v67;
            _os_log_impl(&dword_1B1F9F000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ Migrating sleep alarm: %{public}@ to regular: %{public}@", buf, 0x20u);
          }

          v22 = MEMORY[0x1E695E0F0];
          v20 = v68;
        }
      }
    }

    if ([*v1 needsCoreDataMigration] && objc_msgSend(*v1, "shouldUseCoreData"))
    {
      v71 = MTLogForCategory(3);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *v1;
        *buf = 138543362;
        *&buf[4] = v72;
        _os_log_impl(&dword_1B1F9F000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ Migrating defaults alarms to core data", buf, 0xCu);
      }

      [*v1 migrateDefaultsAlarmsToCoreData:v20 sleepAlarms:v22];
    }

    goto LABEL_99;
  }

  if (v5)
  {
    v24 = *v1;
    *buf = 138543362;
    *&buf[4] = v24;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ persistence is nil", buf, 0xCu);
  }

LABEL_111:

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v83 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __44__MTAlarmStorage__loadAlarmsWithCompletion___block_invoke_364(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = objc_opt_new();
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (void)didFinishLoadingStore
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ didFinishLoadingStore", &v6, 0xCu);
  }

  [(MTAlarmStorage *)self loadAlarmsFromCoreDataSync];
  v4 = [(MTAlarmStorage *)self conductor];
  [v4 send];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)registerStoreLoadCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MTFeatures supportsCoreData];
  v6 = MTLogForCategory(3);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = [(MTCDDataStore *)self->_coreDataStore isReady];
      *buf = 138543618;
      v16 = self;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_INFO, "%{public}@ registering alarm store load completion, core data store ready: %i", buf, 0x12u);
    }

    if (![(MTCDDataStore *)self->_coreDataStore isReady]|| ([(MTAlarmStorage *)self nullableAllAlarms], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v11 = [(MTAlarmStorage *)self conductor];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __46__MTAlarmStorage_registerStoreLoadCompletion___block_invoke;
      v13[3] = &unk_1E7B0CA28;
      v13[4] = self;
      v14 = v4;
      [v11 registerReplyPublisherWithTimeOut:v13 completion:5.0];

      goto LABEL_13;
    }

    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v16 = self;
      v10 = "%{public}@ data store is already ready, executing completion";
LABEL_10:
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
    }
  }

  else if (v7)
  {
    *buf = 138543362;
    v16 = self;
    v10 = "%{public}@ registerStoreLoadCompletion does not support core data, bypassing store load";
    goto LABEL_10;
  }

  v4[2](v4);
LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __46__MTAlarmStorage_registerStoreLoadCompletion___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ executing alarm store load completion with status: %i", &v8, 0x12u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)loadAlarmsFromCoreDataSync
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(MTAlarmStorage *)self needsCoreDataMigration];
  v4 = MTLogForCategory(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *buf = 138543362;
      v12 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ needs core data migration", buf, 0xCu);
    }

    [(MTAlarmStorage *)self loadAlarms];
  }

  else
  {
    if (v5)
    {
      *buf = 138543362;
      v12 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ does not need core data migration", buf, 0xCu);
    }

    v6 = dispatch_semaphore_create(0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__MTAlarmStorage_loadAlarmsFromCoreDataSync__block_invoke;
    v9[3] = &unk_1E7B0C9D8;
    v10 = v6;
    v7 = v6;
    [(MTAlarmStorage *)self loadAlarmsFromCoreDataWithCompletion:v9];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)needsCoreDataMigration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__MTAlarmStorage_needsCoreDataMigration__block_invoke;
  v4[3] = &unk_1E7B0CA50;
  v4[4] = self;
  v4[5] = &v5;
  [(MTAlarmStorage *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __40__MTAlarmStorage_needsCoreDataMigration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistence];
  v5 = [v2 objectForKey:@"MTAlarmStorageMigratedToCoreData"];

  v3 = v5;
  if (v5)
  {
    v4 = [v5 BOOLValue] ^ 1;
    v3 = v5;
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)shouldUseCoreData
{
  v3 = +[MTFeatures supportsCoreData];
  if (v3)
  {
    coreDataStore = self->_coreDataStore;

    LOBYTE(v3) = [(MTCDDataStore *)coreDataStore isReady];
  }

  return v3;
}

- (void)persistCoreDataMigrationComplete
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__MTAlarmStorage_persistCoreDataMigrationComplete__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTAlarmStorage *)self _withLock:v2];
}

void __50__MTAlarmStorage_persistCoreDataMigrationComplete__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistence];
  v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v2 setObject:v1 forKey:@"MTAlarmStorageMigratedToCoreData"];
}

- (void)loadAlarmsFromCoreDataWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ loading alarms from core data", buf, 0xCu);
  }

  v6 = [(MTAlarmStorage *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MTAlarmStorage_loadAlarmsFromCoreDataWithCompletion___block_invoke;
  v9[3] = &unk_1E7B0CA00;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 performBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __55__MTAlarmStorage_loadAlarmsFromCoreDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 88);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MTAlarmStorage_loadAlarmsFromCoreDataWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7B0C6D8;
  v4[4] = v2;
  v5 = v1;
  [v3 getAlarmsWithCompletion:v4];
}

void __55__MTAlarmStorage_loadAlarmsFromCoreDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [a2 na_map:&__block_literal_global_14];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__MTAlarmStorage_loadAlarmsFromCoreDataWithCompletion___block_invoke_4;
  v19[3] = &unk_1E7B0CE10;
  v6 = v5;
  v20 = v6;
  v7 = v4;
  v21 = v7;
  [v3 na_each:v19];
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138543874;
    v23 = v9;
    v24 = 2114;
    v25 = v7;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ loaded regular alarms: %{public}@, sleep alarms: %{public}@", buf, 0x20u);
  }

  v10 = [*(a1 + 32) serializer];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__MTAlarmStorage_loadAlarmsFromCoreDataWithCompletion___block_invoke_379;
  v15[3] = &unk_1E7B0CC70;
  v11 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v7;
  v17 = v6;
  v18 = v11;
  v12 = v6;
  v13 = v7;
  [v10 performBlock:v15];

  v14 = *MEMORY[0x1E69E9840];
}

MTAlarm *__55__MTAlarmStorage_loadAlarmsFromCoreDataWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MTAlarm alloc] initWithMTCDAlarm:v2];

  return v3;
}

void __55__MTAlarmStorage_loadAlarmsFromCoreDataWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 isSleepAlarm];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

uint64_t __55__MTAlarmStorage_loadAlarmsFromCoreDataWithCompletion___block_invoke_379(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = objc_opt_new();
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  [*(a1 + 32) _queue_setAllAlarms:*(a1 + 40) sleepAlarms:*(a1 + 48) source:0 persist:0 notify:0];
  result = *(a1 + 56);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (void)migrateDefaultsAlarmsToCoreData:(id)a3 sleepAlarms:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [v6 copy];

  v9 = [v7 arrayByAddingObjectsFromArray:v8];

  coreDataStore = self->_coreDataStore;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MTAlarmStorage_migrateDefaultsAlarmsToCoreData_sleepAlarms___block_invoke;
  v12[3] = &unk_1E7B0D7A8;
  v13 = v9;
  v14 = self;
  v11 = v9;
  [(MTCDDataStore *)coreDataStore getAlarmsWithCompletion:v12];
}

void __62__MTAlarmStorage_migrateDefaultsAlarmsToCoreData_sleepAlarms___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DFD8];
  v5 = [v3 na_map:&__block_literal_global_383];
  v6 = [v4 setWithArray:v5];

  v7 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__MTAlarmStorage_migrateDefaultsAlarmsToCoreData_sleepAlarms___block_invoke_3;
  v14[3] = &unk_1E7B0C6B0;
  v8 = v6;
  v15 = v8;
  v9 = [v7 na_filter:v14];
  objc_initWeak(&location, *(a1 + 40));
  v10 = *(*(a1 + 40) + 88);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__MTAlarmStorage_migrateDefaultsAlarmsToCoreData_sleepAlarms___block_invoke_4;
  v11[3] = &unk_1E7B0CA98;
  objc_copyWeak(&v12, &location);
  [v10 addAlarms:v9 completion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __62__MTAlarmStorage_migrateDefaultsAlarmsToCoreData_sleepAlarms___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 alarmID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __62__MTAlarmStorage_migrateDefaultsAlarmsToCoreData_sleepAlarms___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MTLogForCategory(3);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__MTTimerStorage_migrateDefaultsTimersToCoreData___block_invoke_cold_1();
    }

    v7 = [v3 localizedDescription];
    [_TtC11MobileTimer10BugCapture reportBugWithType:@"MTAlarmStorage" subType:@"Migration" name:@"Migration failure" value:v7];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138543362;
      v10 = WeakRetained;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_INFO, "%{public}@ transferred alarms from defaults to core data successfully. Marking migration as complete", &v9, 0xCu);
    }

    [WeakRetained persistCoreDataMigrationComplete];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"com.apple.MTAlarmStorage.updateSleepAlarms" object:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_resetAlarmsTo:(id)a3 sleepAlarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke;
  v10[3] = &unk_1E7B0C9A0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(MTAlarmStorage *)self _withLock:v10];
}

void __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke(void *a1)
{
  [*(a1[4] + 24) removeAllObjects];
  [*(a1[4] + 32) removeAllObjects];
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 24);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke_2;
  v11[3] = &unk_1E7B0C6B0;
  v11[4] = v3;
  v5 = [v2 na_filter:v11];
  [v4 addObjectsFromArray:v5];

  v6 = a1[4];
  v7 = *(v6 + 32);
  v8 = a1[6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke_397;
  v10[3] = &unk_1E7B0C6B0;
  v10[4] = v6;
  v9 = [v8 na_filter:v10];
  [v7 addObjectsFromArray:v9];
}

uint64_t __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSleepAlarm])
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke_2_cold_1(a1);
    }
  }

  v5 = [v3 isSleepAlarm];

  return v5 ^ 1u;
}

uint64_t __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke_397(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isSleepAlarm] & 1) == 0)
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke_397_cold_1(a1);
    }
  }

  v5 = [v3 isSleepAlarm];

  return v5;
}

- (void)setScheduler:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);
  [WeakRetained setDelegate:0];

  objc_storeWeak(&self->_scheduler, obj);
  [obj setDelegate:self];
}

- (NSArray)alarms
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(MTAlarmStorage *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __24__MTAlarmStorage_alarms__block_invoke;
  v8[3] = &unk_1E7B0CAE8;
  v8[4] = self;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __24__MTAlarmStorage_alarms__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__MTAlarmStorage_alarms__block_invoke_2;
  v5[3] = &unk_1E7B0CAC0;
  v3 = *(a1 + 48);
  v5[4] = v2;
  v5[5] = v3;
  [v2 _withLock:v5];
  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __24__MTAlarmStorage_alarms__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (MTAlarm)sleepAlarm
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(MTAlarmStorage *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__MTAlarmStorage_sleepAlarm__block_invoke;
  v8[3] = &unk_1E7B0CAE8;
  v8[4] = self;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __28__MTAlarmStorage_sleepAlarm__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__MTAlarmStorage_sleepAlarm__block_invoke_2;
  v5[3] = &unk_1E7B0CAC0;
  v3 = *(a1 + 48);
  v5[4] = v2;
  v5[5] = v3;
  [v2 _withLock:v5];
  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __28__MTAlarmStorage_sleepAlarm__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NSMutableArray)sleepAlarms
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(MTAlarmStorage *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__MTAlarmStorage_sleepAlarms__block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [v4 performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __29__MTAlarmStorage_sleepAlarms__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_allSleepAlarms];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

- (NSArray)allAlarms
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(MTAlarmStorage *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27__MTAlarmStorage_allAlarms__block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [v4 performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __27__MTAlarmStorage_allAlarms__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_allAlarms];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

- (id)nullableAllAlarms
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(MTAlarmStorage *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__MTAlarmStorage_nullableAllAlarms__block_invoke;
  v8[3] = &unk_1E7B0CAE8;
  v8[4] = self;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [v12[5] copy];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __35__MTAlarmStorage_nullableAllAlarms__block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 24) && *(v2 + 32))
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(*(a1[6] + 8) + 40) addObjectsFromArray:*(a1[4] + 24)];
    [*(*(a1[6] + 8) + 40) addObjectsFromArray:*(a1[4] + 32)];
  }

  v6 = a1[5];

  return dispatch_semaphore_signal(v6);
}

- (id)_queue_allAlarms
{
  v3 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__MTAlarmStorage__queue_allAlarms__block_invoke;
  v7[3] = &unk_1E7B0C928;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [(MTAlarmStorage *)self _withLock:v7];
  v5 = v4;

  return v4;
}

uint64_t __34__MTAlarmStorage__queue_allAlarms__block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObjectsFromArray:*(*(a1 + 40) + 24)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 32);

  return [v2 addObjectsFromArray:v3];
}

- (id)_queue_allSleepAlarms
{
  v3 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MTAlarmStorage__queue_allSleepAlarms__block_invoke;
  v7[3] = &unk_1E7B0C928;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [(MTAlarmStorage *)self _withLock:v7];
  v5 = v4;

  return v4;
}

- (NSDate)lastModifiedDate
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(MTAlarmStorage *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__MTAlarmStorage_lastModifiedDate__block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [v4 performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __34__MTAlarmStorage_lastModifiedDate__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 40));
  v2 = a1[5];

  return dispatch_semaphore_signal(v2);
}

- (void)getAlarmsWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received request for alarms", buf, 0xCu);
  }

  if (v4)
  {
    v6 = [(MTAlarmStorage *)self nextAlarm];
    v7 = [(MTAlarmStorage *)self serializer];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__MTAlarmStorage_getAlarmsWithCompletion___block_invoke;
    v10[3] = &unk_1E7B0C5D8;
    v10[4] = self;
    v11 = v6;
    v12 = v4;
    v8 = v6;
    [v7 performBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __42__MTAlarmStorage_getAlarmsWithCompletion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __42__MTAlarmStorage_getAlarmsWithCompletion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [*(v6 + 24) valueForKey:@"alarmID"];
    v8 = [*(*(a1 + 32) + 32) valueForKey:@"alarmID"];
    v9 = [*(a1 + 40) alarmID];
    v19 = 138544130;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ returning ordered alarms: %{public}@, sleep alarms: %{public}@, next alarm: %{public}@", &v19, 0x2Au);
  }

  v10 = MTLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ calling completion block with alarms %@", &v19, 0x16u);
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  result = (*(*(a1 + 48) + 16))();
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)addAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 alarmID];
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ adding alarm %{public}@", buf, 0x16u);
  }

  v13 = MTLogForCategory(9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "MTAlarmStorage - Adding Alarm", buf, 2u);
  }

  v14 = [(MTAlarmStorage *)self serializer];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__MTAlarmStorage_addAlarm_withCompletion_source___block_invoke;
  v19[3] = &unk_1E7B0CB60;
  v19[4] = self;
  v20 = v8;
  v21 = v10;
  v22 = v9;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v14 performBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 alarmID];
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ updating alarm %{public}@", buf, 0x16u);
  }

  v13 = MTLogForCategory(9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "MTAlarmStorage - Updating Alarm", buf, 2u);
  }

  v14 = [(MTAlarmStorage *)self serializer];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__MTAlarmStorage_updateAlarm_withCompletion_source___block_invoke;
  v19[3] = &unk_1E7B0CB60;
  v19[4] = self;
  v20 = v8;
  v21 = v10;
  v22 = v9;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v14 performBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateAlarmWithIdentifier:(id)a3 changeSet:(id)a4 withCompletion:(id)a5 source:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MTLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v28 = self;
    v29 = 2114;
    v30 = v10;
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ updating %{public}@ with changes %{public}@", buf, 0x20u);
  }

  v15 = MTLogForCategory(9);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "MTAlarmStorage - Updating Alarm", buf, 2u);
  }

  v16 = [(MTAlarmStorage *)self serializer];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76__MTAlarmStorage_updateAlarmWithIdentifier_changeSet_withCompletion_source___block_invoke;
  v22[3] = &unk_1E7B0D7D0;
  v22[4] = self;
  v23 = v10;
  v25 = v13;
  v26 = v12;
  v24 = v11;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  [v16 performBlock:v22];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)removeAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 alarmID];
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ removing alarm %{public}@", buf, 0x16u);
  }

  v13 = MTLogForCategory(9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "MTAlarmStorage - Removing Alarm", buf, 2u);
  }

  v14 = [(MTAlarmStorage *)self serializer];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__MTAlarmStorage_removeAlarm_withCompletion_source___block_invoke;
  v19[3] = &unk_1E7B0CB60;
  v19[4] = self;
  v20 = v8;
  v21 = v10;
  v22 = v9;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v14 performBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeAlarmWithIdentifier:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = self;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ removing alarm with ID %{public}@", buf, 0x16u);
  }

  v12 = [(MTAlarmStorage *)self serializer];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__MTAlarmStorage_removeAlarmWithIdentifier_withCompletion_source___block_invoke;
  v17[3] = &unk_1E7B0CB60;
  v17[4] = self;
  v18 = v8;
  v19 = v10;
  v20 = v9;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v12 performBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeAllAlarmsForSource:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removing all alarms", buf, 0xCu);
  }

  v6 = [(MTAlarmStorage *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__MTAlarmStorage_removeAllAlarmsForSource___block_invoke;
  v9[3] = &unk_1E7B0C928;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 performBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setAllAlarms:(id)a3 sleepAlarms:(id)a4 source:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MTLogForCategory(3);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

  v13 = MTLogForCategory(3);
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      v25 = self;
      v26 = 2114;
      v27 = v8;
      v28 = 2114;
      v29 = v9;
      _os_log_debug_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEBUG, "%{public}@ setting all alarms %{public}@, sleep alarms %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = self;
    _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ setting all alarms", buf, 0xCu);
  }

  v15 = [(MTAlarmStorage *)self serializer];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__MTAlarmStorage_setAllAlarms_sleepAlarms_source___block_invoke;
  v20[3] = &unk_1E7B0D7F8;
  v20[4] = self;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  [v15 performBlock:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateSleepAlarms:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTAlarmStorage *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__MTAlarmStorage_updateSleepAlarms_source___block_invoke;
  v11[3] = &unk_1E7B0C9A0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

void __43__MTAlarmStorage_updateSleepAlarms_source___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ setting sleep alarms %{public}@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) _queue_updateSleepAlarmsFromExistingAlarms:*(a1 + 40)];
  if ([*(a1 + 32) shouldUseCoreData])
  {
    [*(*(a1 + 32) + 88) setSleepAlarms:v5];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__MTAlarmStorage_updateSleepAlarms_source___block_invoke_401;
  v8[3] = &unk_1E7B0CAC0;
  v8[4] = v6;
  v8[5] = buf;
  [v6 _withLock:v8];
  [*(a1 + 32) _queue_setAllAlarms:*(*&buf[8] + 40) sleepAlarms:v5 source:*(a1 + 48) persist:1 notify:1 override:0];
  _Block_object_dispose(buf, 8);

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __43__MTAlarmStorage_updateSleepAlarms_source___block_invoke_401(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)_queue_updateSleepAlarmsFromExistingAlarms:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sleepAlarms = self->_sleepAlarms;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = sleepAlarms;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ transferring metadata from existing sleep alarms %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__MTAlarmStorage__queue_updateSleepAlarmsFromExistingAlarms___block_invoke;
  v11[3] = &unk_1E7B0CAC0;
  v11[4] = self;
  v11[5] = buf;
  [(MTAlarmStorage *)self _withLock:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__MTAlarmStorage__queue_updateSleepAlarmsFromExistingAlarms___block_invoke_3;
  v10[3] = &unk_1E7B0D840;
  v10[4] = self;
  v10[5] = buf;
  v7 = [v4 na_map:v10];
  _Block_object_dispose(buf, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __61__MTAlarmStorage__queue_updateSleepAlarmsFromExistingAlarms___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) na_dictionaryWithKeyGenerator:&__block_literal_global_404];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

id __61__MTAlarmStorage__queue_updateSleepAlarmsFromExistingAlarms___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v3 alarmIDString];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) transferMetadataForSleepAlarm:v3 fromPrevious:v6];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

- (id)transferMetadataForSleepAlarm:(id)a3 fromPrevious:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [v6 firedDate];
  [v7 setFiredDate:v8];

  v9 = [v6 dismissedDate];
  [v7 setDismissedDate:v9];

  [v7 setDismissedAction:{objc_msgSend(v6, "dismissedAction")}];
  v10 = [v6 bedtimeFiredDate];
  [v7 setBedtimeFiredDate:v10];

  v11 = [v6 bedtimeDismissedDate];
  [v7 setBedtimeDismissedDate:v11];

  [v7 setBedtimeDismissedAction:{objc_msgSend(v6, "bedtimeDismissedAction")}];
  v12 = [v6 snoozeFireDate];
  [v7 setSnoozeFireDate:v12];

  v13 = [v6 bedtimeSnoozeFireDate];
  [v7 setBedtimeSnoozeFireDate:v13];

  v14 = [v7 copy];
  v15 = [(MTAlarmStorage *)self _applyNecessaryChangesFromExistingAlarm:v6 updatedAlarm:v14];

  return v15;
}

- (void)updateSleepAlarmsWithBlock:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTAlarmStorage *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MTAlarmStorage_updateSleepAlarmsWithBlock_source___block_invoke;
  v11[3] = &unk_1E7B0D8B8;
  v12 = v7;
  v13 = v6;
  v11[4] = self;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

void __52__MTAlarmStorage_updateSleepAlarmsWithBlock_source___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v2 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MTAlarmStorage_updateSleepAlarmsWithBlock_source___block_invoke_2;
  v11[3] = &unk_1E7B0D890;
  v13 = &v14;
  v11[4] = v2;
  v12 = *(a1 + 48);
  [v2 _withLock:v11];
  if ([*(a1 + 32) shouldUseCoreData])
  {
    [*(*(a1 + 32) + 88) setSleepAlarms:v15[5]];
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__MTAlarmStorage_updateSleepAlarmsWithBlock_source___block_invoke_4;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = v3;
  v4[5] = &v5;
  [v3 _withLock:v4];
  [*(a1 + 32) _queue_setAllAlarms:v6[5] sleepAlarms:v15[5] source:*(a1 + 40) persist:1 notify:1 override:0];
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(&v14, 8);
}

void __52__MTAlarmStorage_updateSleepAlarmsWithBlock_source___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__MTAlarmStorage_updateSleepAlarmsWithBlock_source___block_invoke_3;
  v6[3] = &unk_1E7B0D868;
  v7 = *(a1 + 40);
  v3 = [v2 na_map:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __52__MTAlarmStorage_updateSleepAlarmsWithBlock_source___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  (*(*(a1 + 32) + 16))();

  return v3;
}

uint64_t __52__MTAlarmStorage_updateSleepAlarmsWithBlock_source___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)activeSleepAlarm
{
  v2 = [(MTAlarmStorage *)self sleepAlarms];
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_408];

  return v3;
}

uint64_t __34__MTAlarmStorage_activeSleepAlarm__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFiring])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isSnoozed];
  }

  return v3;
}

- (void)snoozeAlarmWithIdentifier:(id)a3 snoozeAction:(unint64_t)a4 withCompletion:(id)a5 source:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 == 1)
  {
    v13 = +[MTUserDefaults sharedUserDefaults];
    v14 = [v13 integerForKey:@"MTBedtimeSnoozeDuration" defaultValue:10];
    goto LABEL_11;
  }

  v13 = [(MTAlarmStorage *)self _queue_alarmMatchingAlarmIdentifier:v10];
  v15 = +[MTUserDefaults sharedUserDefaults];
  v16 = [v15 objectForKey:@"MTAlarmSnoozeDuration"];

  if (v16)
  {
    v17 = [v16 integerValue];
  }

  else
  {
    if (!v13 || ![v13 snoozeDuration] || objc_msgSend(v13, "snoozeDuration") > 0xF)
    {
      v14 = 9;
      goto LABEL_10;
    }

    v17 = [v13 snoozeDuration];
  }

  v14 = v17;
LABEL_10:

LABEL_11:
  v18 = MTLogForCategory(3);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543618;
    v23 = v10;
    v24 = 2050;
    v25 = v14;
    _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ snoozing for %{public}lu minutes", &v22, 0x16u);
  }

  v19 = (*(self->_currentDateProvider + 2))();
  v20 = [v19 dateByAddingTimeInterval:(60 * v14)];

  [(MTAlarmStorage *)self snoozeAlarmWithIdentifier:v10 snoozeDate:v20 snoozeAction:a4 withCompletion:v11 source:v12];
  v21 = *MEMORY[0x1E69E9840];
}

- (void)snoozeAlarmWithIdentifier:(id)a3 snoozeDate:(id)a4 snoozeAction:(unint64_t)a5 withCompletion:(id)a6 source:(id)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = MTLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v31 = self;
    v32 = 2114;
    v33 = v12;
    v34 = 2048;
    v35 = a5;
    _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ snoozing alarm with ID %{public}@ and action %ld", buf, 0x20u);
  }

  v17 = MTLogForCategory(9);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_INFO, "MTAlarmStorage - Snoozing Alarm", buf, 2u);
  }

  v18 = [(MTAlarmStorage *)self serializer];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __90__MTAlarmStorage_snoozeAlarmWithIdentifier_snoozeDate_snoozeAction_withCompletion_source___block_invoke;
  v24[3] = &unk_1E7B0D8E0;
  v24[4] = self;
  v25 = v12;
  v28 = v14;
  v29 = a5;
  v26 = v13;
  v27 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  [v18 performBlock:v24];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)dismissAlarmWithIdentifier:(id)a3 dismissAction:(unint64_t)a4 withCompletion:(id)a5 source:(id)a6
{
  currentDateProvider = self->_currentDateProvider;
  v11 = currentDateProvider[2];
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = v11(currentDateProvider);
  [(MTAlarmStorage *)self dismissAlarmWithIdentifier:v14 dismissDate:v15 dismissAction:a4 withCompletion:v13 source:v12];
}

- (void)dismissAlarmWithIdentifier:(id)a3 dismissDate:(id)a4 dismissAction:(unint64_t)a5 withCompletion:(id)a6 source:(id)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = MTLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = MTDismissAlarmActionDescription(a5);
    *buf = 138543874;
    v32 = self;
    v33 = 2114;
    v34 = v12;
    v35 = 2114;
    v36 = v17;
    _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing alarm with ID %{public}@ and action %{public}@", buf, 0x20u);
  }

  v18 = MTLogForCategory(9);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_INFO, "MTAlarmStorage - Dismissing Alarm", buf, 2u);
  }

  v19 = [(MTAlarmStorage *)self serializer];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93__MTAlarmStorage_dismissAlarmWithIdentifier_dismissDate_dismissAction_withCompletion_source___block_invoke;
  v25[3] = &unk_1E7B0D8E0;
  v25[4] = self;
  v26 = v12;
  v29 = v14;
  v30 = a5;
  v27 = v13;
  v28 = v15;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  [v19 performBlock:v25];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)alarmWithIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTAlarmStorage *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__MTAlarmStorage_alarmWithIdentifier_withCompletion___block_invoke;
  v11[3] = &unk_1E7B0C5D8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

uint64_t __53__MTAlarmStorage_alarmWithIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_alarmMatchingAlarmIdentifier:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return MEMORY[0x1EEE66BB8](v3, v2);
}

- (void)_queue_addAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MTAlarmStorage *)self _queue_hasMatchingAlarm:v8])
  {
    v11 = MTLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MTAlarmStorage _queue_addAlarm:withCompletion:source:];
    }

    v12 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Alarm already exists!";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.mobiletimerd.MTAlarmStorage" code:1 userInfo:v13];

    v15 = MTLogForCategory(9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "MTAlarmStorage - Failed Adding Alarm", v19, 2u);
    }
  }

  else
  {
    v16 = [(MTAlarmStorage *)self _queuePersistAlarm:v8 replacingAlarm:0];

    v20 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [(MTAlarmStorage *)self _notifyObserversForAlarmAdd:v17 source:v10];

    v15 = MTLogForCategory(9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "MTAlarmStorage - Finished Adding Alarm", v19, 2u);
    }

    v14 = 0;
    v8 = v16;
  }

  if (v9)
  {
    v9[2](v9, v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_queue_updateAlarmWithIdentifier:(id)a3 changeSet:(id)a4 withCompletion:(id)a5 source:(id)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MTAlarmStorage *)self _queue_alarmMatchingAlarmIdentifier:a3];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 mutableCopy];
    [v15 applyChangesFromChangeSet:v10];
    v16 = [(MTAlarmStorage *)self _queue_updateAlarm:v15 withCompletion:v11 source:v12];
  }

  else
  {
    v17 = MTLogForCategory(3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MTAlarmStorage _queue_updateAlarmWithIdentifier:changeSet:withCompletion:source:];
    }

    v18 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Alarm does not exist!";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v18 errorWithDomain:@"com.apple.mobiletimerd.MTAlarmStorage" code:2 userInfo:v19];

    v21 = MTLogForCategory(9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_INFO, "MTAlarmStorage - Failed Updating Alarm", v23, 2u);
    }

    if (v11)
    {
      v11[2](v11, v20);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_queue_updateAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTAlarmStorage *)self _queue_alarmMatchingAlarm:v8];
  v12 = v11;
  if (v11)
  {
    if ([v11 isSleepAlarm])
    {
      v13 = 11;
    }

    else
    {
      v13 = 10;
    }

    v38 = v13;
    if ((([v12 isSleepAlarm] & 1) != 0 || objc_msgSend(v12, "repeats")) && objc_msgSend(v12, "isFiring") && (objc_msgSend(v8, "isEnabled") & 1) == 0)
    {
      v32 = (*(self->_currentDateProvider + 2))();
      v33 = MTLogForCategory(3);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v12 alarmIDString];
        v34 = [v12 firedDate];
        [v12 dismissedDate];
        *buf = 138544386;
        v44 = self;
        v45 = 2114;
        v46 = v37;
        v47 = 2114;
        v48 = v34;
        v49 = 2114;
        v50 = v32;
        v52 = v51 = 2114;
        v35 = v52;
        _os_log_impl(&dword_1B1F9F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm %{public}@ disabled while firing (%{public}@).  Dismissing: %{public}@ (last dismissed: %{public}@)", buf, 0x34u);
      }

      v36 = [v8 mutableCopy];
      [(MTAlarmStorage *)self _queue_dismissMutableAlarm:v36 dismissDate:v32 dismissAction:v13];

      v14 = 1;
      v8 = v36;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(MTAlarmStorage *)self _queuePersistAlarm:v8 replacingAlarm:v12];
    v16 = [MTChangeSet changeSetWithChangesFromObject:v8 toObject:v15];
    v17 = +[MTAlarm propertiesAffectingNotification];
    v18 = [v16 hasChangesInProperties:v17];

    if (v18)
    {
      v19 = MTLogForCategory(3);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v15 alarmIDString];
        *buf = 138543618;
        v44 = self;
        v45 = 2114;
        v46 = v20;
        _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm %{public}@ modified during save.  Notifying everyone.", buf, 0x16u);
      }

      v21 = MTLogForCategory(3);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [MTAlarmStorage _queue_updateAlarm:withCompletion:source:];
      }

      v10 = 0;
    }

    v42 = v15;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v41 = v12;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [(MTAlarmStorage *)self _notifyObserversForAlarmChange:v22 previousAlarms:v23 source:v10];

    if (v14)
    {
      [(MTAlarmStorage *)self _notifyObserversForAlarmDismiss:v15 dismissAction:v38 source:v10];
    }

    v24 = MTLogForCategory(9);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v24, OS_LOG_TYPE_INFO, "MTAlarmStorage - Finished Updating Alarm", buf, 2u);
    }

    v25 = 0;
    if (v9)
    {
LABEL_21:
      v9[2](v9, v25);
    }
  }

  else
  {
    v28 = MTLogForCategory(3);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MTAlarmStorage _queue_updateAlarmWithIdentifier:changeSet:withCompletion:source:];
    }

    v29 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v40 = @"Alarm does not exist!";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v25 = [v29 errorWithDomain:@"com.apple.mobiletimerd.MTAlarmStorage" code:2 userInfo:v30];

    v31 = MTLogForCategory(9);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v31, OS_LOG_TYPE_INFO, "MTAlarmStorage - Failed Updating Alarm", buf, 2u);
    }

    [MTAnalytics sendCriticalEvent:@"Alarm storage - trying to update alarm that does not exist"];
    v15 = 0;
    if (v9)
    {
      goto LABEL_21;
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_queue_removeAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(MTAlarmStorage *)self _queue_alarmMatchingAlarm:a3];
  [(MTAlarmStorage *)self _queue_actuallyRemoveAlarm:v10 withCompletion:v9 source:v8];
}

- (void)_queue_removeAlarmWithIdentifier:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(MTAlarmStorage *)self _queue_alarmMatchingAlarmIdentifier:a3];
  [(MTAlarmStorage *)self _queue_actuallyRemoveAlarm:v10 withCompletion:v9 source:v8];
}

- (void)_queue_actuallyRemoveAlarm:(id)a3 withCompletion:(id)a4 source:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(MTAlarmStorage *)self _queuePersistAlarm:0 replacingAlarm:v8];

    v23[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [(MTAlarmStorage *)self _notifyObserversForAlarmRemoval:v12 source:v10];

    v13 = MTLogForCategory(9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "MTAlarmStorage - Finished Removing Alarm", v20, 2u);
    }

    v14 = 0;
    if (v9)
    {
LABEL_5:
      v9[2](v9, v14);
    }
  }

  else
  {
    v16 = MTLogForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MTAlarmStorage _queue_updateAlarmWithIdentifier:changeSet:withCompletion:source:];
    }

    v17 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22 = @"Alarm does not exist!";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [v17 errorWithDomain:@"com.apple.mobiletimerd.MTAlarmStorage" code:2 userInfo:v18];

    v19 = MTLogForCategory(9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_INFO, "MTAlarmStorage - Failed Removing Alarm", v20, 2u);
    }

    [MTAnalytics sendCriticalEvent:@"Alarm storage - trying to remove alarm that does not exist"];
    if (v9)
    {
      goto LABEL_5;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_queuePersistAlarm:(id)a3 replacingAlarm:(id)a4
{
  v6 = a4;
  v7 = [(MTAlarmStorage *)self _applyNecessaryChangesFromExistingAlarm:v6 updatedAlarm:a3];
  if ([v7 isSleepAlarm])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 isSleepAlarm];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__MTAlarmStorage__queuePersistAlarm_replacingAlarm___block_invoke;
  v12[3] = &unk_1E7B0D908;
  v13 = v8;
  v12[4] = self;
  v12[5] = &v14;
  [(MTAlarmStorage *)self _withLock:v12];
  if (v6)
  {
    [v15[5] removeObject:v6];
  }

  if (v7)
  {
    [v15[5] addObject:v7];
  }

  [(MTAlarmStorage *)self _queue_persistAlarms];
  if ([(MTAlarmStorage *)self shouldUseCoreData])
  {
    [(MTAlarmStorage *)self persistAlarmIntoCoreData:v7 replacingAlarm:v6];
  }

  if (v8)
  {
    [(MTAlarmStorage *)self _queue_sortSleepAlarms];
  }

  else
  {
    [(MTAlarmStorage *)self _queue_sortAlarms];
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  return v10;
}

void __52__MTAlarmStorage__queuePersistAlarm_replacingAlarm___block_invoke(uint64_t a1)
{
  v1 = 24;
  if (*(a1 + 48))
  {
    v1 = 32;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + v1));
}

- (void)persistAlarmIntoCoreData:(id)a3 replacingAlarm:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v18 = self;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_debug_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ Persisting into core data with updated alarm: %{public}@, existing alarm: %{public}@", buf, 0x20u);
  }

  if (v6 && v7)
  {
    coreDataStore = self->_coreDataStore;
    v16 = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [(MTCDDataStore *)coreDataStore updateAlarms:v10];
LABEL_10:

    goto LABEL_11;
  }

  if (v6)
  {
    v11 = self->_coreDataStore;
    v15 = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [(MTCDDataStore *)v11 addAlarms:v10];
    goto LABEL_10;
  }

  if (v7)
  {
    v12 = self->_coreDataStore;
    v14 = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [(MTCDDataStore *)v12 deleteAlarms:v10];
    goto LABEL_10;
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_applyNecessaryChangesFromExistingAlarm:(id)a3 updatedAlarm:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 mutableCopy];
  v9 = (*(self->_currentDateProvider + 2))();
  [v8 setLastModifiedDate:v9];

  v10 = [MTChangeSet changeSetWithChangesFromObject:v6 toObject:v7];
  v11 = [v10 changes];
  v12 = [v11 count];

  if (v12)
  {
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [MTAlarmStorage _queue_updateAlarm:withCompletion:source:];
    }
  }

  if ([v7 isSnoozed])
  {
    v14 = [v6 isSnoozed];
  }

  else
  {
    v14 = 0;
  }

  if ([v7 isBedtimeSnoozed])
  {
    v15 = [v6 isBedtimeSnoozed];
  }

  else
  {
    v15 = 0;
  }

  if ((v14 | v15))
  {
    if ([v7 isEnabled])
    {
      if (!v6 || !v7 || (+[MTAlarm propertiesAffectingSnooze](MTAlarm, "propertiesAffectingSnooze"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v10 hasChangesInProperties:v16], v16, !v17))
      {
        v21 = [v7 keepOffUntilDate];
        v22 = [v7 snoozeFireDate];
        v23 = [v21 mtIsAfterOrSameAsDate:v22];

        if (!v23)
        {
          goto LABEL_29;
        }

        v18 = MTLogForCategory(3);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v19 = [v7 alarmID];
        v24 = [v7 keepOffUntilDate];
        v28 = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v24;
        _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ was snoozed but early wake up was confirmed (%{public}@). Cancelling.", &v28, 0x16u);

        goto LABEL_24;
      }

      v18 = MTLogForCategory(3);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v7 alarmID];
        v28 = 138543362;
        v29 = v19;
        v20 = "%{public}@ was snoozed but had relevant changes. Cancelling.";
LABEL_20:
        _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, v20, &v28, 0xCu);
LABEL_24:
      }
    }

    else
    {
      v18 = MTLogForCategory(3);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v7 alarmID];
        v28 = 138543362;
        v29 = v19;
        v20 = "%{public}@ was snoozed and isn't enabled anywhere. Cancelling.";
        goto LABEL_20;
      }
    }

LABEL_25:

    if (v14)
    {
      [v8 resetSnoozeFireDate];
    }

    if (v15)
    {
      [v8 setBedtimeSnoozeFireDate:0];
      v25 = [v7 lastModifiedDate];
      [v8 setBedtimeDismissedDate:v25];

      [v8 setBedtimeDismissedAction:6];
    }
  }

LABEL_29:

  v26 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_queue_removeAllAlarmsForSource:(id)a3
{
  v4 = a3;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MTAlarmStorage__queue_removeAllAlarmsForSource___block_invoke;
  v5[3] = &unk_1E7B0CAC0;
  v5[4] = self;
  v5[5] = &v6;
  [(MTAlarmStorage *)self _withLock:v5];
  [(MTAlarmStorage *)self _queue_resetAlarmsTo:MEMORY[0x1E695E0F0] sleepAlarms:MEMORY[0x1E695E0F0]];
  [(MTAlarmStorage *)self _queue_persistAlarms];
  [(MTAlarmStorage *)self _notifyObserversForAlarmRemoval:v7[5] source:v4];
  _Block_object_dispose(&v6, 8);
}

uint64_t __50__MTAlarmStorage__queue_removeAllAlarmsForSource___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_queue_setAllAlarms:(id)a3 sleepAlarms:(id)a4 source:(id)a5 persist:(BOOL)a6 notify:(BOOL)a7 override:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v59 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v38 = a5;
  v16 = MTLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544642;
    v48 = self;
    v49 = 2114;
    v50 = v14;
    v51 = 2114;
    v52 = v15;
    v53 = 1024;
    v54 = v10;
    v55 = 1024;
    v56 = v9;
    v57 = 1024;
    v58 = v8;
    _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ setting alarms:%{public}@, sleep alarms: %{public}@, persist: %i, notify %i, override: %i", buf, 0x32u);
  }

  v35 = v9;
  v36 = v8;
  v34 = v10;

  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = objc_opt_new();
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __81__MTAlarmStorage__queue_setAllAlarms_sleepAlarms_source_persist_notify_override___block_invoke;
  v45[3] = &unk_1E7B0C928;
  v45[4] = self;
  v21 = v20;
  v46 = v21;
  [(MTAlarmStorage *)self _withLock:v45];
  v37 = v14;
  v39 = v15;
  if ([v15 count])
  {
    v22 = [v14 arrayByAddingObjectsFromArray:v15];
  }

  else
  {
    v22 = v14;
  }

  v23 = v22;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __81__MTAlarmStorage__queue_setAllAlarms_sleepAlarms_source_persist_notify_override___block_invoke_4;
  v40[3] = &unk_1E7B0D930;
  v24 = v21;
  v41 = v24;
  v25 = v18;
  v42 = v25;
  v26 = v19;
  v43 = v26;
  v27 = v17;
  v44 = v27;
  [v23 na_each:v40];
  v28 = [v24 allValues];
  v29 = [v27 count];
  v30 = [v25 count] + v29;
  v31 = -[v28 count];
  v32 = MTLogForCategory(3);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v48 = self;
    v49 = 1024;
    LODWORD(v50) = v30 != v31;
    _os_log_impl(&dword_1B1F9F000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ setting alarms - needs update: %i", buf, 0x12u);
  }

  if (v36 || v30 != v31)
  {
    [(MTAlarmStorage *)self _queue_resetAlarmsTo:v37 sleepAlarms:v39];
    if (v34)
    {
      [(MTAlarmStorage *)self _queue_persistAlarms];
    }

    [(MTAlarmStorage *)self _queue_sortAlarms];
    if (v35)
    {
      [(MTAlarmStorage *)self _notifyObserversForAlarmRemoval:v28 source:v38];
      [(MTAlarmStorage *)self _notifyObserversForAlarmChange:v25 previousAlarms:v26 source:v38];
      [(MTAlarmStorage *)self _notifyObserversForAlarmAdd:v27 source:v38];
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __81__MTAlarmStorage__queue_setAllAlarms_sleepAlarms_source_persist_notify_override___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__MTAlarmStorage__queue_setAllAlarms_sleepAlarms_source_persist_notify_override___block_invoke_2;
  v6[3] = &unk_1E7B0CD98;
  v7 = *(a1 + 40);
  [v2 na_each:v6];
  v3 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__MTAlarmStorage__queue_setAllAlarms_sleepAlarms_source_persist_notify_override___block_invoke_3;
  v4[3] = &unk_1E7B0CD98;
  v5 = *(a1 + 40);
  [v3 na_each:v4];
}

void __81__MTAlarmStorage__queue_setAllAlarms_sleepAlarms_source_persist_notify_override___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 alarmIDString];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __81__MTAlarmStorage__queue_setAllAlarms_sleepAlarms_source_persist_notify_override___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 alarmIDString];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __81__MTAlarmStorage__queue_setAllAlarms_sleepAlarms_source_persist_notify_override___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 alarmIDString];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    if (([v6 isEqualToAlarm:v9] & 1) == 0)
    {
      [*(a1 + 40) addObject:v9];
      [*(a1 + 48) addObject:v6];
    }

    v7 = *(a1 + 32);
    v8 = [v9 alarmIDString];
    [v7 removeObjectForKey:v8];
  }

  else
  {
    [*(a1 + 56) addObject:v9];
  }
}

- (void)_queue_snoozeAlarmWithIdentifier:(id)a3 snoozeDate:(id)a4 snoozeAction:(unint64_t)a5 withCompletion:(id)a6 source:(id)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(MTAlarmStorage *)self _queue_alarmMatchingAlarmIdentifier:v12];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 mutableCopy];
    [v18 setEnabled:1];
    if ((a5 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      if (a5 != 1)
      {
LABEL_21:
        v31 = [(MTAlarmStorage *)self _queue_updateAlarm:v18 withCompletion:v14 source:v15];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = v18;
        }

        [(MTAlarmStorage *)self _notifyObserversForAlarmSnooze:v33 snoozeAction:a5 source:v15];
        v34 = MTLogForCategory(9);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1F9F000, v34, OS_LOG_TYPE_INFO, "MTAlarmStorage - Finished Snoozing Alarm", buf, 2u);
        }

        goto LABEL_27;
      }

      v19 = [v18 bedtimeSnoozeFireDate];

      if (!v19)
      {
        [v18 setBedtimeSnoozeFireDate:v13];
        goto LABEL_21;
      }

      v20 = MTLogForCategory(3);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v18 bedtimeSnoozeFireDate];
        *buf = 138543874;
        v39 = v12;
        v40 = 2114;
        v41 = v21;
        v42 = 2114;
        v43 = v13;
        _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ has a bed-time snooze fire date of %{public}@ and we want to snooze until %{public}@.  Picking later date", buf, 0x20u);
      }

      v22 = [v18 bedtimeSnoozeFireDate];
      v23 = [v22 laterDate:v13];
      [v18 setBedtimeSnoozeFireDate:v23];
    }

    else
    {
      v28 = [v18 snoozeFireDate];

      if (!v28)
      {
        [v18 setSnoozeFireDate:v13];
        goto LABEL_21;
      }

      v29 = MTLogForCategory(3);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v18 snoozeFireDate];
        *buf = 138543874;
        v39 = v12;
        v40 = 2114;
        v41 = v30;
        v42 = 2114;
        v43 = v13;
        _os_log_impl(&dword_1B1F9F000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ has a snooze fire date of %{public}@ and we want to snooze until %{public}@.  Picking later date", buf, 0x20u);
      }

      v22 = [v18 snoozeFireDate];
      v23 = [v22 laterDate:v13];
      [v18 setSnoozeFireDate:v23];
    }

    goto LABEL_21;
  }

  v24 = MTLogForCategory(3);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [MTAlarmStorage _queue_snoozeAlarmWithIdentifier:snoozeDate:snoozeAction:withCompletion:source:];
  }

  [MTAnalytics sendCriticalEvent:@"Alarm storage - trying to snooze alarm that does not exist"];
  v25 = MEMORY[0x1E696ABC0];
  v36 = *MEMORY[0x1E696A578];
  v37 = @"Alarm does not exist!";
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v18 = [v25 errorWithDomain:@"com.apple.mobiletimerd.MTAlarmStorage" code:2 userInfo:v26];

  if (v14)
  {
    v27 = MTLogForCategory(9);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_INFO, "MTAlarmStorage - Failed Snoozing Alarm", buf, 2u);
    }

    v14[2](v14, v18);
  }

LABEL_27:

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_queue_dismissMutableAlarm:(id)a3 dismissDate:(id)a4 dismissAction:(unint64_t)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (MTDismissAlarmActionIsForBedtime(a5))
  {
    [v8 setBedtimeDismissedDate:v9];
    [v8 setBedtimeDismissedAction:a5];
  }

  else if (MTDismissAlarmActionCountsAsWakeUp(a5))
  {
    [v8 setDismissedDate:v9];
    [v8 setDismissedAction:a5];
  }

  if (a5 - 5 <= 1)
  {
    [v8 setSnoozeFireDate:0];
    if (([v8 repeats] & 1) == 0 && (objc_msgSend(v8, "isSleepAlarm") & 1) == 0)
    {
      v10 = MTLogForCategory(3);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v8 alarmID];
        v13 = 138543618;
        v14 = self;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting non-repeating alarm %{public}@ to disabled", &v13, 0x16u);
      }

      [v8 setEnabled:0];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_queue_dismissAlarmWithIdentifier:(id)a3 dismissDate:(id)a4 dismissAction:(unint64_t)a5 withCompletion:(id)a6 source:(id)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(MTAlarmStorage *)self _queue_alarmMatchingAlarmIdentifier:v12];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 mutableCopy];
    [(MTAlarmStorage *)self _queue_dismissMutableAlarm:v18 dismissDate:v13 dismissAction:a5];
    v19 = MTLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v32 = self;
      v33 = 2114;
      v34 = v18;
      v35 = 2114;
      v36 = v13;
      _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissed alarm %{public}@ at %{public}@", buf, 0x20u);
    }

    v20 = [(MTAlarmStorage *)self _queue_updateAlarm:v18 withCompletion:v14 source:v15];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    [(MTAlarmStorage *)self _notifyObserversForAlarmDismiss:v22 dismissAction:a5 source:v15];
    v23 = MTLogForCategory(9);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_INFO, "MTAlarmStorage - Finished Dismissing Alarm", buf, 2u);
    }
  }

  else
  {
    v24 = MTLogForCategory(3);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MTAlarmStorage _queue_dismissAlarmWithIdentifier:dismissDate:dismissAction:withCompletion:source:];
    }

    [MTAnalytics sendCriticalEvent:@"Alarm storage - trying to dismiss alarm that does not exist"];
    v25 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"Alarm does not exist!";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v18 = [v25 errorWithDomain:@"com.apple.mobiletimerd.MTAlarmStorage" code:2 userInfo:v26];

    if (v14)
    {
      v27 = MTLogForCategory(9);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_INFO, "MTAlarmStorage - Failed Dismissing Alarm", buf, 2u);
      }

      v14[2](v14, v18);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_queue_sortAlarms
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__MTAlarmStorage__queue_sortAlarms__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTAlarmStorage *)self _withLock:v2];
}

void __35__MTAlarmStorage__queue_sortAlarms__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = MTAlarmStandardSort();
  [v1 sortUsingComparator:v2];
}

- (void)_queue_sortSleepAlarms
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__MTAlarmStorage__queue_sortSleepAlarms__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTAlarmStorage *)self _withLock:v2];
}

void __40__MTAlarmStorage__queue_sortSleepAlarms__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = MTAlarmStandardSort();
  [v1 sortUsingComparator:v2];
}

- (void)_notifyObserversForAlarmAdd:(id)a3 source:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count] && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v7, "dontNotify") & 1) == 0))
  {
    v8 = MTLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for alarm addition", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__MTAlarmStorage__notifyObserversForAlarmAdd_source___block_invoke;
    v10[3] = &unk_1E7B0D958;
    v11 = v7;
    v12 = v6;
    [(MTAlarmStorage *)self _notifyObserversWithBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversForAlarmChange:(id)a3 previousAlarms:(id)a4 source:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v10, "dontNotify") & 1) == 0))
  {
    v11 = MTLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for alarm change", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__MTAlarmStorage__notifyObserversForAlarmChange_previousAlarms_source___block_invoke;
    v13[3] = &unk_1E7B0D980;
    v14 = v10;
    v15 = v8;
    v16 = v9;
    [(MTAlarmStorage *)self _notifyObserversWithBlock:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __71__MTAlarmStorage__notifyObserversForAlarmChange_previousAlarms_source___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  [v3 source:a1[4] didUpdateAlarms:a1[5]];
  if (objc_opt_respondsToSelector())
  {
    [v3 source:a1[4] didUpdateAlarms:a1[5] previousAlarms:a1[6]];
  }
}

- (void)_notifyObserversForAlarmRemoval:(id)a3 source:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count] && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v7, "dontNotify") & 1) == 0))
  {
    v8 = MTLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for alarm removal", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__MTAlarmStorage__notifyObserversForAlarmRemoval_source___block_invoke;
    v10[3] = &unk_1E7B0D958;
    v11 = v7;
    v12 = v6;
    [(MTAlarmStorage *)self _notifyObserversWithBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversForAlarmSnooze:(id)a3 snoozeAction:(unint64_t)a4 source:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v9 dontNotify] & 1) == 0)
  {
    v10 = MTLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for alarm snooze", buf, 0xCu);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__MTAlarmStorage__notifyObserversForAlarmSnooze_snoozeAction_source___block_invoke;
    v12[3] = &unk_1E7B0D9A8;
    v13 = v9;
    v14 = v8;
    v15 = a4;
    [(MTAlarmStorage *)self _notifyObserversWithBlock:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversForAlarmDismiss:(id)a3 dismissAction:(unint64_t)a4 source:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v9 dontNotify] & 1) == 0)
  {
    v10 = MTLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for alarm dismissal", buf, 0xCu);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__MTAlarmStorage__notifyObserversForAlarmDismiss_dismissAction_source___block_invoke;
    v12[3] = &unk_1E7B0D9A8;
    v13 = v9;
    v14 = v8;
    v15 = a4;
    [(MTAlarmStorage *)self _notifyObserversWithBlock:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversForAlarmFire:(id)a3 triggerType:(unint64_t)a4 source:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v9 dontNotify] & 1) == 0)
  {
    v10 = MTLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for alarm fire", buf, 0xCu);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__MTAlarmStorage__notifyObserversForAlarmFire_triggerType_source___block_invoke;
    v12[3] = &unk_1E7B0D9A8;
    v13 = v9;
    v14 = v8;
    v15 = a4;
    [(MTAlarmStorage *)self _notifyObserversWithBlock:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversForNextAlarmChange:(id)a3 source:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 dontNotify] & 1) == 0)
  {
    v8 = MTLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for next alarm change", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__MTAlarmStorage__notifyObserversForNextAlarmChange_source___block_invoke;
    v10[3] = &unk_1E7B0D958;
    v11 = v7;
    v12 = v6;
    [(MTAlarmStorage *)self _notifyObserversWithBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)scheduler:(id)a3 didChangeNextAlarm:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MTLogForCategory(9);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "MTAlarmStorage - Next Alarm Changed", v10, 2u);
  }

  v9 = [v6 scheduleable];

  [(MTAlarmStorage *)self _notifyObserversForNextAlarmChange:v9 source:v7];
}

- (void)scheduler:(id)a3 didFireAlarm:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MTLogForCategory(9);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "MTAlarmStorage - Fired Alarm", v11, 2u);
  }

  v9 = [v6 scheduleable];
  v10 = [v6 trigger];

  -[MTAlarmStorage _notifyObserversForAlarmFire:triggerType:source:](self, "_notifyObserversForAlarmFire:triggerType:source:", v9, [v10 triggerType], v7);
}

- (id)_queue_alarmMatchingAlarm:(id)a3
{
  v4 = [a3 alarmIDString];
  v5 = [(MTAlarmStorage *)self _queue_alarmMatchingAlarmIdentifier:v4];

  return v5;
}

- (id)_queue_alarmMatchingAlarmIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MTAlarmStorage *)self _queue_allAlarms];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MTAlarmStorage__queue_alarmMatchingAlarmIdentifier___block_invoke;
  v9[3] = &unk_1E7B0C6B0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __54__MTAlarmStorage__queue_alarmMatchingAlarmIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alarmIDString];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_queue_hasMatchingAlarm:(id)a3
{
  v4 = [a3 alarmID];
  v5 = [v4 UUIDString];
  v6 = [(MTAlarmStorage *)self _queue_alarmMatchingAlarmIdentifier:v5];

  return v6 != 0;
}

- (void)_queue_persistAlarms
{
  v3 = [(MTAlarmStorage *)self persistence];

  if (v3)
  {
    v4 = objc_opt_new();
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__2;
    v20 = __Block_byref_object_dispose__2;
    v21 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__2;
    v14 = __Block_byref_object_dispose__2;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__MTAlarmStorage__queue_persistAlarms__block_invoke;
    v9[3] = &unk_1E7B0D9D0;
    v9[4] = self;
    v9[5] = &v16;
    v9[6] = &v10;
    [(MTAlarmStorage *)self _withLock:v9];
    [v4 encodeObject:v17[5] forKey:@"MTAlarms"];
    [v4 encodeObject:v11[5] forKey:@"MTSleepAlarms"];
    v5 = [v4 encodedDictionary];
    v6 = [(MTAlarmStorage *)self persistence];
    [v6 setObject:v5 forKey:@"MTAlarms"];

    [(MTAlarmStorage *)self persistAlarmStorageVersion];
    v7 = [(MTAlarmStorage *)self persistence];
    v8 = (*(self->_currentDateProvider + 2))();
    [v7 setObject:v8 forKey:@"MTAlarmModifiedDate"];

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v16, 8);
  }
}

uint64_t __38__MTAlarmStorage__queue_persistAlarms__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 32) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (void)persistAlarmStorageVersion
{
  v3 = [(MTAlarmStorage *)self persistence];
  LODWORD(v2) = 1080452710;
  [v3 setFloat:@"MTAlarmStorageVersion" forKey:v2];
}

- (void)timeListener:(id)a3 didDetectSignificantTimeChangeWithCompletionBlock:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ significant time change detected, rescheduling alarms", buf, 0xCu);
  }

  v7 = [(MTAlarmStorage *)self serializer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__MTAlarmStorage_timeListener_didDetectSignificantTimeChangeWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7B0CA00;
  v10[4] = self;
  v11 = v5;
  v8 = v5;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __81__MTAlarmStorage_timeListener_didDetectSignificantTimeChangeWithCompletionBlock___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v45 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [*(a1 + 32) _queue_allAlarms];
  v3 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v3)
  {
    v4 = v3;
    v44 = *v47;
    v42 = v2;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v47 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v46 + 1) + 8 * i);
        v7 = (*(*(*(a1 + 32) + 80) + 16))();
        v8 = [v6 firedDate];
        v9 = [v8 mtIsAfterDate:v7];

        v10 = v6;
        if (v9)
        {
          v11 = MTLogForCategory(3);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 32);
            v13 = [v6 alarmID];
            *buf = 138543618;
            v51 = v12;
            v52 = 2114;
            v53 = v13;
            _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting firedDate on %{public}@ because it's in the future", buf, 0x16u);
          }

          v10 = [v6 mutableCopy];
          [v10 setFiredDate:0];
          v14 = [v6 dismissedDate];
          v15 = [v14 mtIsAfterDate:v7];

          if (v15)
          {
            v16 = MTLogForCategory(3);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = *(a1 + 32);
              v18 = [v6 alarmID];
              *buf = 138543618;
              v51 = v17;
              v52 = 2114;
              v53 = v18;
              _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting dismissedDate on %{public}@ because it's in the future", buf, 0x16u);
            }

            [v10 setDismissedDate:0];
          }
        }

        v19 = [v6 bedtimeFiredDate];
        v20 = [v19 mtIsAfterDate:v7];

        if (v20)
        {
          v21 = MTLogForCategory(3);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(a1 + 32);
            v23 = [v6 alarmID];
            *buf = 138543618;
            v51 = v22;
            v52 = 2114;
            v53 = v23;
            _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting bedtimeFiredDate on %{public}@ because it's in the future", buf, 0x16u);
          }

          v24 = [v10 mutableCopy];
          [v24 setBedtimeFiredDate:0];
          v25 = [v6 bedtimeDismissedDate];
          v26 = [v25 mtIsAfterDate:v7];

          if (v26)
          {
            v27 = MTLogForCategory(3);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(a1 + 32);
              v29 = [v6 alarmID];
              *buf = 138543618;
              v51 = v28;
              v2 = v42;
              v52 = 2114;
              v53 = v29;
              _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting bedtimeDismissedDate on %{public}@ because it's in the future", buf, 0x16u);
            }

            [v24 setBedtimeDismissedDate:0];
          }
        }

        else
        {
          v24 = v10;
        }

        v30 = [v6 lastModifiedDate];
        v31 = [v30 mtIsAfterDate:v7];

        if (v31)
        {
          v32 = MTLogForCategory(3);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(a1 + 32);
            v34 = [v6 alarmID];
            *buf = 138543618;
            v51 = v33;
            v2 = v42;
            v52 = 2114;
            v53 = v34;
            _os_log_impl(&dword_1B1F9F000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting lastModifiedDate on %{public}@ because it's in the future", buf, 0x16u);
          }

          v35 = [v24 mutableCopy];
          [v35 setLastModifiedDate:v7];

          v24 = v35;
        }

        if ([v6 isSleepAlarm])
        {
          v36 = v45;
        }

        else
        {
          v36 = v2;
        }

        [v36 addObject:v24];
      }

      v4 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v4);
  }

  if ([*(a1 + 32) shouldUseCoreData])
  {
    v37 = [v2 copy];
    v38 = [v45 copy];
    v39 = [v37 arrayByAddingObjectsFromArray:v38];

    [*(*(a1 + 32) + 88) updateAlarms:v39];
  }

  [*(a1 + 32) _queue_setAllAlarms:v2 sleepAlarms:v45 source:0 persist:1 notify:0];
  v40 = [*(a1 + 32) scheduler];
  [v40 rescheduleAlarmsWithCompletion:*(a1 + 40)];

  v41 = *MEMORY[0x1E69E9840];
}

- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ handling notification %{public}@", &v11, 0x16u);
  }

  [(MTAlarmStorage *)self removeAllAlarmsForSource:0];
  if (v8)
  {
    v8[2](v8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printDiagnostics
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----MTAlarmStorage-----", &v11, 2u);
  }

  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MTAlarmStorage *)self _diagnosticDictionaryForAlarms:self->_orderedAlarms];
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "Alarms: %{public}@", &v11, 0xCu);
  }

  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MTAlarmStorage *)self _diagnosticDictionaryForAlarms:self->_sleepAlarms];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Sleep Alarms: %{public}@", &v11, 0xCu);
  }

  if (![(MTAlarmStorage *)self shouldUseCoreData])
  {
    v8 = MTLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MTAlarmStorage *)self lastModifiedDate];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "Last Modified: %{public}@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v12[0] = @"Alarms";
  v4 = [(MTAlarmStorage *)self _diagnosticDictionaryForAlarms:self->_orderedAlarms];
  v12[1] = @"Sleep Alarms";
  v13[0] = v4;
  v5 = [(MTAlarmStorage *)self _diagnosticDictionaryForAlarms:self->_sleepAlarms];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v7 = [v3 dictionaryWithDictionary:v6];

  if (![(MTAlarmStorage *)self shouldUseCoreData])
  {
    v8 = [(MTAlarmStorage *)self lastModifiedDate];
    [v7 setValue:v8 forKey:@"Alarms Last Modified"];
  }

  v9 = [v7 copy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_diagnosticDictionaryForAlarms:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = dispatch_semaphore_create(0);
  v7 = [(MTAlarmStorage *)self serializer];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__MTAlarmStorage__diagnosticDictionaryForAlarms___block_invoke;
  v14[3] = &unk_1E7B0D7F8;
  v15 = v4;
  v8 = v5;
  v16 = v8;
  v17 = self;
  v18 = v6;
  v9 = v6;
  v10 = v4;
  [v7 performBlock:v14];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v18;
  v12 = v8;

  return v8;
}

intptr_t __49__MTAlarmStorage__diagnosticDictionaryForAlarms___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = *(a1 + 48);
        v9 = [objc_opt_class() _diagnosticDictionaryForAlarm:{v7, v14}];
        v10 = *(a1 + 40);
        v11 = [v7 alarmIDString];
        [v10 setObject:v9 forKeyedSubscript:v11];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  result = dispatch_semaphore_signal(*(a1 + 56));
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_diagnosticDictionaryForAlarm:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isEnabled")}];
  [v4 setObject:v5 forKeyedSubscript:@"enabled"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "hour")}];
  [v4 setObject:v6 forKeyedSubscript:@"hour"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "minute")}];
  [v4 setObject:v7 forKeyedSubscript:@"minute"];

  if ([v3 isSleepAlarm])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "bedtimeHour")}];
    [v4 setObject:v8 forKeyedSubscript:@"bedtimeHour"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "bedtimeMinute")}];
    [v4 setObject:v9 forKeyedSubscript:@"bedtimeMinute"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isFiring")}];
  [v4 setObject:v10 forKeyedSubscript:@"firing"];

  v11 = [v3 firedDate];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"None";
  }

  [v4 setObject:v13 forKeyedSubscript:@"fired"];

  v14 = [v3 lastModifiedDate];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"None";
  }

  [v4 setObject:v16 forKeyedSubscript:@"modified"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isSnoozed")}];
  [v4 setObject:v17 forKeyedSubscript:@"snoozed"];

  v18 = MEMORY[0x1E696AEC0];
  v28 = [v3 sound];
  v19 = [v28 toneIdentifier];
  v20 = [v3 sound];
  v21 = [v20 mediaItemIdentifier];
  v22 = [v3 sound];
  v23 = [v22 vibrationIdentifier];
  v24 = [v3 sound];
  v25 = [v24 soundVolume];
  v26 = [v18 stringWithFormat:@"toneID: %@, mediaItemID: %@, vibeID: %@, volume: %@", v19, v21, v23, v25];
  [v4 setObject:v26 forKeyedSubscript:@"sound"];

  return v4;
}

- (void)_removeAlarmDataIfNecessary:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = @"com.apple.mobiletimer";
  if (([a3 isEqualToString:v5] & 1) != 0 || !a3 && (+[MTApplicationWorkspaceObserver sharedWorkspaceObserver](MTApplicationWorkspaceObserver, "sharedWorkspaceObserver"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isApplicationInstalledForBundleIdentifier:", v5), v8, (v9 & 1) == 0))
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ removing all alarms (sans sleep)", buf, 0xCu);
    }

    v7 = [(MTAlarmStorage *)self serializer];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__MTAlarmStorage__removeAlarmDataIfNecessary___block_invoke;
    v11[3] = &unk_1E7B0C9D8;
    v11[4] = self;
    [v7 performBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __46__MTAlarmStorage__removeAlarmDataIfNecessary___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__2;
  v8 = __Block_byref_object_dispose__2;
  v9 = 0;
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__MTAlarmStorage__removeAlarmDataIfNecessary___block_invoke_2;
  v3[3] = &unk_1E7B0D9D0;
  v3[4] = v2;
  v3[5] = &v10;
  v3[6] = &v4;
  [v2 _withLock:v3];
  [*(*(a1 + 32) + 88) deleteAlarms:v11[5]];
  [*(a1 + 32) _queue_setAllAlarms:MEMORY[0x1E695E0F0] sleepAlarms:v5[5] source:0 persist:1 notify:1];
  _Block_object_dispose(&v4, 8);

  _Block_object_dispose(&v10, 8);
}

uint64_t __46__MTAlarmStorage__removeAlarmDataIfNecessary___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 24) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 32) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (void)store_getAllAlarmsWithCompletion:(id)a3
{
  v4 = a3;
  coreDataStore = self->_coreDataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MTAlarmStorage_store_getAllAlarmsWithCompletion___block_invoke;
  v7[3] = &unk_1E7B0CC48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MTCDDataStore *)coreDataStore getAlarmsWithCompletion:v7];
}

void __51__MTAlarmStorage_store_getAllAlarmsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [objc_opt_class() alarmsFromCdAlarms:v4];

  (*(v2 + 16))(v2, v5);
}

- (void)store_getNonSleepAlarmsWithCompletion:(id)a3
{
  v4 = a3;
  coreDataStore = self->_coreDataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MTAlarmStorage_store_getNonSleepAlarmsWithCompletion___block_invoke;
  v7[3] = &unk_1E7B0CC48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MTCDDataStore *)coreDataStore getNonSleepAlarmsWithCompletion:v7];
}

void __56__MTAlarmStorage_store_getNonSleepAlarmsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [objc_opt_class() alarmsFromCdAlarms:v4];

  (*(v2 + 16))(v2, v5);
}

- (void)store_getSleepAlarmsWithCompletion:(id)a3
{
  v4 = a3;
  coreDataStore = self->_coreDataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MTAlarmStorage_store_getSleepAlarmsWithCompletion___block_invoke;
  v7[3] = &unk_1E7B0CC48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MTCDDataStore *)coreDataStore getSleepAlarmsWithCompletion:v7];
}

void __53__MTAlarmStorage_store_getSleepAlarmsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [objc_opt_class() alarmsFromCdAlarms:v4];

  (*(v2 + 16))(v2, v5);
}

MTAlarm *__37__MTAlarmStorage_alarmsFromCdAlarms___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MTAlarm alloc] initWithMTCDAlarm:v2];

  return v3;
}

- (BOOL)isAlarmKitSchedulingEnabled
{
  v2 = [(MTAlarmStorage *)self persistence];
  v3 = [v2 objectForKey:@"MTAlarmStoredInAlarmKit"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (void)_cleanUpSnoozeFireDate:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ cleaning up snooze fire date for sleep alarm %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_cleanUpSleepAlarmRepeat:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ cleaning up repeat schedule for sleep alarm %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void __44__MTAlarmStorage__loadAlarmsWithCompletion___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v1, v2, "%{public}@ unexpected error reading data %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __44__MTAlarmStorage__loadAlarmsWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  OUTLINED_FUNCTION_1_1();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  _os_log_debug_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ loaded %{public}@, sleep alarms %{public}@", v8, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v1, v2, "%{public}@ ignoring misplaced sleep alarm %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __51__MTAlarmStorage__queue_resetAlarmsTo_sleepAlarms___block_invoke_397_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v1, v2, "%{public}@ ignoring misplaced regular alarm %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __42__MTAlarmStorage_getAlarmsWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_1_1();
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v6;
  v16 = v8;
  _os_log_debug_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ returning ordered alarms: %{public}@, sleep alarms: %{public}@, next alarm: %{public}@", v11, 0x2Au);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_queue_updateAlarm:withCompletion:source:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6(&dword_1B1F9F000, v0, v1, "%{public}@ Changes: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_queue_snoozeAlarmWithIdentifier:snoozeDate:snoozeAction:withCompletion:source:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't find matching alarm to snooze for %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_queue_dismissAlarmWithIdentifier:dismissDate:dismissAction:withCompletion:source:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't find matching alarm to dismiss for %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end