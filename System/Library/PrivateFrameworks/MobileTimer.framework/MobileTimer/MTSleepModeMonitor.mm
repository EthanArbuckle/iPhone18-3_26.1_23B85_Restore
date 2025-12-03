@interface MTSleepModeMonitor
- (BOOL)isSleepModeEnabled:(BOOL *)enabled error:(id *)error;
- (BOOL)isUserAsleep;
- (BOOL)stateMachine:(id)machine disengageSleepModeUserRequested:(BOOL)requested;
- (BOOL)stateMachine:(id)machine engageSleepModeUntilDate:(id)date userEngaged:(BOOL)engaged;
- (MTSleepCoordinator)sleepCoordinator;
- (MTSleepModeMonitor)initWithAlarmStorage:(id)storage sleepCoordinator:(id)coordinator;
- (MTSleepModeMonitor)initWithAlarmStorage:(id)storage sleepCoordinator:(id)coordinator currentDateProvider:(id)provider;
- (NSDate)keepOffUntilDate;
- (id)gatherDiagnostics;
- (unint64_t)sleepModeTimeoutMinutes;
- (void)dealloc;
- (void)modeAssertionService:(id)service didReceiveModeAssertionInvalidation:(id)invalidation;
- (void)printDiagnostics;
- (void)sleepCoordinator:(id)coordinator bedtimeReminderDidFire:(id)fire sleepAlarm:(id)alarm;
- (void)sleepCoordinator:(id)coordinator bedtimeReminderWasConfirmed:(id)confirmed sleepAlarm:(id)alarm;
- (void)sleepCoordinator:(id)coordinator bedtimeWasReached:(id)reached sleepAlarm:(id)alarm;
- (void)sleepCoordinator:(id)coordinator sleepAlarmDidChange:(id)change;
- (void)sleepCoordinator:(id)coordinator userWentToBed:(id)bed sleepAlarm:(id)alarm;
- (void)sleepCoordinator:(id)coordinator userWokeUp:(id)up sleepAlarm:(id)alarm;
- (void)sleepCoordinator:(id)coordinator wakeUpAlarmDidFire:(id)fire sleepAlarm:(id)alarm;
- (void)sleepCoordinator:(id)coordinator wakeUpAlarmWasSnoozed:(id)snoozed sleepAlarm:(id)alarm;
- (void)stateMachine:(id)machine keepSleepModeOffUntilDate:(id)date;
- (void)stateMachine:(id)machine scheduleUpdateForSecondsFromNow:(double)now;
- (void)stateMachineClearKeepSleepModeOff:(id)off;
- (void)timeListener:(id)listener didDetectSignificantTimeChangeWithCompletionBlock:(id)block;
- (void)updateMonitorState;
- (void)userDisengagedSleepMode;
- (void)userDisengagedSleepModeOnDate:(id)date;
@end

@implementation MTSleepModeMonitor

- (MTSleepModeMonitor)initWithAlarmStorage:(id)storage sleepCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  storageCopy = storage;
  v8 = MTCurrentDateProvider();
  v9 = [(MTSleepModeMonitor *)self initWithAlarmStorage:storageCopy sleepCoordinator:coordinatorCopy currentDateProvider:v8];

  return v9;
}

- (MTSleepModeMonitor)initWithAlarmStorage:(id)storage sleepCoordinator:(id)coordinator currentDateProvider:(id)provider
{
  v30 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  coordinatorCopy = coordinator;
  providerCopy = provider;
  v27.receiver = self;
  v27.super_class = MTSleepModeMonitor;
  v12 = [(MTSleepModeMonitor *)&v27 init];
  if (v12)
  {
    v13 = MTLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v12;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v12->_alarmStorage, storage);
    objc_storeWeak(&v12->_sleepCoordinator, coordinatorCopy);
    v14 = [providerCopy copy];
    currentDateProvider = v12->_currentDateProvider;
    v12->_currentDateProvider = v14;

    v16 = +[MTScheduler serialSchedulerForObject:priority:](MTScheduler, "serialSchedulerForObject:priority:", v12, +[MTScheduler defaultPriority]);
    serializer = v12->_serializer;
    v12->_serializer = v16;

    objc_initWeak(buf, v12);
    v18 = [MEMORY[0x1E699A1D8] serviceForClientIdentifier:@"com.apple.mobiletimer.bedtime-mode"];
    assertionService = v12->_assertionService;
    v12->_assertionService = v18;

    v20 = v12->_assertionService;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __80__MTSleepModeMonitor_initWithAlarmStorage_sleepCoordinator_currentDateProvider___block_invoke;
    v25[3] = &unk_1E7B0D628;
    objc_copyWeak(&v26, buf);
    [(DNDModeAssertionService *)v20 addAssertionUpdateListener:v12 withCompletionHandler:v25];
    v21 = [[MTSleepModeStateMachine alloc] initWithDelegate:v12 infoProvider:v12];
    stateMachine = v12->_stateMachine;
    v12->_stateMachine = v21;

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

void __80__MTSleepModeMonitor_initWithAlarmStorage_sleepCoordinator_currentDateProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = MTLogForCategory(7);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v7)
    {
      __80__MTSleepModeMonitor_initWithAlarmStorage_sleepCoordinator_currentDateProvider___block_invoke_cold_1(WeakRetained, v4, v6);
    }
  }

  else if (v7)
  {
    __80__MTSleepModeMonitor_initWithAlarmStorage_sleepCoordinator_currentDateProvider___block_invoke_cold_2(WeakRetained, v6);
  }
}

- (void)dealloc
{
  [(DNDModeAssertionService *)self->_assertionService removeAssertionUpdateListener:self];
  v3 = [(DNDModeAssertionService *)self->_assertionService invalidateActiveModeAssertionWithError:0];
  v4.receiver = self;
  v4.super_class = MTSleepModeMonitor;
  [(MTSleepModeMonitor *)&v4 dealloc];
}

- (void)updateMonitorState
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__MTSleepModeMonitor_updateMonitorState__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

- (BOOL)isUserAsleep
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepCoordinator);
  isUserAsleep = [WeakRetained isUserAsleep];

  return isUserAsleep;
}

- (BOOL)isSleepModeEnabled:(BOOL *)enabled error:(id *)error
{
  v4 = [(DNDModeAssertionService *)self->_assertionService activeModeAssertionWithError:error];
  details = [v4 details];

  return details != 0;
}

- (NSDate)keepOffUntilDate
{
  v2 = +[MTUserDefaults sharedUserDefaults];
  v3 = [v2 objectForKey:@"MTKeepDndOffUntilDate"];

  return v3;
}

- (unint64_t)sleepModeTimeoutMinutes
{
  v2 = +[MTUserDefaults sharedUserDefaults];
  v3 = [v2 integerForKey:@"MTSleepTimeOutMinutesKey" defaultValue:60];

  return v3;
}

- (BOOL)stateMachine:(id)machine engageSleepModeUntilDate:(id)date userEngaged:(BOOL)engaged
{
  engagedCopy = engaged;
  v44 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v8 = MTLogForCategory(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy5 = self;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ engageUntilDate:userEngaged", buf, 0xCu);
  }

  assertionService = [(MTSleepModeMonitor *)self assertionService];
  v37 = 0;
  v10 = [assertionService activeModeAssertionWithError:&v37];
  v11 = v37;

  v12 = [dateCopy dateByAddingTimeInterval:[(MTSleepModeMonitor *)self sleepModeTimeoutMinutes]* 60.0];
  v13 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v35 = v12;
  v15 = [v13 initWithStartDate:distantPast endDate:v12];

  v16 = [MEMORY[0x1E699A1D0] lifetimeWithDateInterval:v15];
  if (v10)
  {
    details = [v10 details];
    lifetime = [details lifetime];
    v19 = [lifetime isEqual:v16];

    v20 = MTLogForCategory(7);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19 && !engagedCopy)
    {
      if (v21)
      {
        *buf = 138543362;
        selfCopy5 = self;
        _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ already have assertion", buf, 0xCu);
      }

      v22 = 1;
      v23 = v11;
      goto LABEL_29;
    }

    if (v21)
    {
      *buf = 138543874;
      selfCopy5 = self;
      v40 = 2114;
      v41 = dateCopy;
      v42 = 1024;
      v43 = engagedCopy;
      _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ updating active assertion with new end date %{public}@, isUserRequested %d", buf, 0x1Cu);
    }
  }

  v24 = [MEMORY[0x1E699A1C8] detailsWithIdentifier:@"com.apple.mobiletimer.sleep-mode.automatic" modeIdentifier:@"com.apple.mobiletimer.mode.sleep" lifetime:v16];
  v20 = [v24 mutableCopy];

  sleepAlarm = [(MTSleepModeMonitor *)self sleepAlarm];
  if ([sleepAlarm isEnabled])
  {
    v26 = dateCopy;
  }

  else
  {
    v26 = 0;
  }

  [v20 setUserVisibleEndDate:v26];

  v27 = MTLogForCategory(7);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v40 = 2114;
    v41 = v20;
    _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ acquiring assertion with details %{public}@", buf, 0x16u);
  }

  assertionService2 = [(MTSleepModeMonitor *)self assertionService];
  v36 = v11;
  v29 = [assertionService2 takeModeAssertionWithDetails:v20 error:&v36];
  v23 = v36;

  if (v29)
  {
    v30 = v23 == 0;
  }

  else
  {
    v30 = 0;
  }

  v22 = v30;
  v31 = MTLogForCategory(7);
  v32 = v31;
  if (v22)
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_1B1F9F000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully acquired assertion", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [MTSleepModeMonitor stateMachine:engageSleepModeUntilDate:userEngaged:];
  }

LABEL_29:
  v33 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)stateMachineClearKeepSleepModeOff:(id)off
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ clearKeepOff:", &v7, 0xCu);
  }

  v5 = +[MTUserDefaults sharedUserDefaults];
  [v5 removeObjectForKey:@"MTKeepDndOffUntilDate"];

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)stateMachine:(id)machine disengageSleepModeUserRequested:(BOOL)requested
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ disengage:", buf, 0xCu);
  }

  assertionService = [(MTSleepModeMonitor *)self assertionService];
  v18 = 0;
  v7 = [assertionService activeModeAssertionWithError:&v18];
  v8 = v18;

  if (v7)
  {
    assertionService2 = [(MTSleepModeMonitor *)self assertionService];
    v17 = v8;
    v10 = [assertionService2 invalidateActiveModeAssertionWithError:&v17];
    v11 = v17;

    v12 = MTLogForCategory(7);
    v13 = v12;
    if (!v10 || v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MTSleepModeMonitor stateMachine:disengageSleepModeUserRequested:];
      }

      v14 = 0;
      v13 = v10;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully released assertion", buf, 0xCu);
      }

      v14 = 1;
      v11 = v10;
    }
  }

  else
  {
    v13 = MTLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ there is no assertion", buf, 0xCu);
    }

    v14 = 1;
    v11 = v8;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)stateMachine:(id)machine keepSleepModeOffUntilDate:(id)date
{
  v13 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ keepOffUntilDate: %{public}@", &v9, 0x16u);
  }

  v7 = +[MTUserDefaults sharedUserDefaults];
  [v7 setObject:dateCopy forKey:@"MTKeepDndOffUntilDate"];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)stateMachine:(id)machine scheduleUpdateForSecondsFromNow:(double)now
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2048;
    nowCopy = now;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduleUpdateForSecondsFromNow: %f", buf, 0x16u);
  }

  v7 = dispatch_time(0, (now * 1000000000.0));
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MTSleepModeMonitor_stateMachine_scheduleUpdateForSecondsFromNow___block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_after(v7, v8, block);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __67__MTSleepModeMonitor_stateMachine_scheduleUpdateForSecondsFromNow___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ re-checking %{public}@", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__MTSleepModeMonitor_stateMachine_scheduleUpdateForSecondsFromNow___block_invoke_21;
  v8[3] = &unk_1E7B0C9D8;
  v8[4] = v4;
  result = [v5 performBlock:v8];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)userDisengagedSleepMode
{
  currentDate = [(MTSleepModeMonitor *)self currentDate];
  [(MTSleepModeMonitor *)self userDisengagedSleepModeOnDate:currentDate];
}

- (void)userDisengagedSleepModeOnDate:(id)date
{
  dateCopy = date;
  serializer = [(MTSleepModeMonitor *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MTSleepModeMonitor_userDisengagedSleepModeOnDate___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  [serializer performBlock:v7];
}

void __52__MTSleepModeMonitor_userDisengagedSleepModeOnDate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = @"sleep mode";
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ user manually turning off %{public}@ (%{public}@)", &v7, 0x20u);
  }

  v5 = [*(a1 + 32) stateMachine];
  [v5 sleepModeEnabled:0 userRequested:1 date:*(a1 + 40)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)modeAssertionService:(id)service didReceiveModeAssertionInvalidation:(id)invalidation
{
  v14 = *MEMORY[0x1E69E9840];
  invalidationCopy = invalidation;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = invalidationCopy;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ didReceiveModeAssertionInvalidation %{public}@", &v10, 0x16u);
  }

  reason = [invalidationCopy reason];
  if (reason == 2)
  {
    invalidationDate = [invalidationCopy invalidationDate];
    [(MTSleepModeMonitor *)self userDisengagedSleepModeOnDate:invalidationDate];
  }

  else if (reason == 5)
  {
    [(MTSleepModeMonitor *)self updateMonitorState];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)sleepCoordinator:(id)coordinator userWokeUp:(id)up sleepAlarm:(id)alarm
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ user woke up, turning off %{public}@ if it's on", buf, 0x16u);
  }

  serializer = [(MTSleepModeMonitor *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__MTSleepModeMonitor_sleepCoordinator_userWokeUp_sleepAlarm___block_invoke;
  v9[3] = &unk_1E7B0C9D8;
  v9[4] = self;
  [serializer performBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __61__MTSleepModeMonitor_sleepCoordinator_userWokeUp_sleepAlarm___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 userWokeUp];
}

- (void)sleepCoordinator:(id)coordinator userWentToBed:(id)bed sleepAlarm:(id)alarm
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ user went to bed, checking %{public}@", &v8, 0x16u);
  }

  [(MTSleepModeMonitor *)self updateMonitorState];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sleepCoordinator:(id)coordinator bedtimeReminderDidFire:(id)fire sleepAlarm:(id)alarm
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ bedtime reminder fired, checking %{public}@", &v8, 0x16u);
  }

  [(MTSleepModeMonitor *)self updateMonitorState];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sleepCoordinator:(id)coordinator bedtimeReminderWasConfirmed:(id)confirmed sleepAlarm:(id)alarm
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ user went to bed, checking %{public}@", &v8, 0x16u);
  }

  [(MTSleepModeMonitor *)self updateMonitorState];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sleepCoordinator:(id)coordinator bedtimeWasReached:(id)reached sleepAlarm:(id)alarm
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ it's the user's bedtime, checking %{public}@", &v8, 0x16u);
  }

  [(MTSleepModeMonitor *)self updateMonitorState];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sleepCoordinator:(id)coordinator wakeUpAlarmDidFire:(id)fire sleepAlarm:(id)alarm
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ wake up alarm fired, checking %{public}@", &v8, 0x16u);
  }

  [(MTSleepModeMonitor *)self updateMonitorState];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sleepCoordinator:(id)coordinator wakeUpAlarmWasSnoozed:(id)snoozed sleepAlarm:(id)alarm
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ wake up alarm snoozed, checking %{public}@", &v8, 0x16u);
  }

  [(MTSleepModeMonitor *)self updateMonitorState];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sleepCoordinator:(id)coordinator sleepAlarmDidChange:(id)change
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = @"modified";
  if (!change)
  {
    v5 = @"removed";
  }

  v6 = v5;
  v7 = MTLogForCategory(7);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    selfCopy = self;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ user %{public}@ sleep alarm, checking %{public}@", &v9, 0x20u);
  }

  [(MTSleepModeMonitor *)self updateMonitorState];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)timeListener:(id)listener didDetectSignificantTimeChangeWithCompletionBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ significant time change detected, checking %{public}@", buf, 0x16u);
  }

  serializer = self->_serializer;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__MTSleepModeMonitor_timeListener_didDetectSignificantTimeChangeWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7B0CA00;
  v10[4] = self;
  v11 = blockCopy;
  v8 = blockCopy;
  [(NAScheduler *)serializer performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __85__MTSleepModeMonitor_timeListener_didDetectSignificantTimeChangeWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) updateState:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)printDiagnostics
{
  *&v10[5] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [(MTSleepModeMonitor *)self isSleepModeEnabled:&v8];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    *buf = 138412290;
    *v10 = v4;
    v5 = v4;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----%@-----", buf, 0xCu);
  }

  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v10[0] = v2;
    LOWORD(v10[1]) = 1024;
    *(&v10[1] + 2) = v8;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "isEnabled: %d, isUserRequested: %d", buf, 0xEu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v9[2] = *MEMORY[0x1E69E9840];
  v7 = 0;
  if ([(MTSleepModeMonitor *)self isSleepModeEnabled:&v7])
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v8[0] = @"isEnabled";
  v8[1] = @"isUserRequested";
  if (v7)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v9[0] = v2;
  v9[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (MTSleepCoordinator)sleepCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepCoordinator);

  return WeakRetained;
}

void __80__MTSleepModeMonitor_initWithAlarmStorage_sleepCoordinator_currentDateProvider___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, a2, a3, "%{public}@ Failed adding assertion update listener: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __80__MTSleepModeMonitor_initWithAlarmStorage_sleepCoordinator_currentDateProvider___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Added assertion update listener", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)stateMachine:engageSleepModeUntilDate:userEngaged:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ Failed to acquire assertion with %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)stateMachine:disengageSleepModeUserRequested:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ Failed to release assertion with %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end