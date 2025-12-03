@interface MTSleepSessionTracker
- (BOOL)trackingEnabled;
- (MTAlarm)cachedAlarm;
- (MTSleepSessionTracker)initWithAlarmStorage:(id)storage;
- (MTSleepSessionTrackerDelegate)sleepSessionTrackerDelegate;
- (void)_withLock:(id)lock;
- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion;
- (void)prepare;
- (void)setCachedAlarm:(id)alarm;
- (void)sleepCoordinator:(id)coordinator bedtimeReminderWasConfirmed:(id)confirmed sleepAlarm:(id)alarm;
- (void)sleepCoordinator:(id)coordinator wakeUpAlarmWasDismissed:(id)dismissed dismissAction:(unint64_t)action sleepAlarm:(id)alarm;
@end

@implementation MTSleepSessionTracker

- (MTSleepSessionTracker)initWithAlarmStorage:(id)storage
{
  v15 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v12.receiver = self;
  v12.super_class = MTSleepSessionTracker;
  v6 = [(MTSleepSessionTracker *)&v12 init];
  if (v6)
  {
    v7 = MTLogForCategory(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v6->_alarmStorage, storage);
    sleepAlarm = [(MTAlarmStorage *)v6->_alarmStorage sleepAlarm];
    cachedAlarm = v6->_cachedAlarm;
    v6->_cachedAlarm = sleepAlarm;

    v6->_alarmLock._os_unfair_lock_opaque = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_alarmLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_alarmLock);
}

- (void)prepare
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32__MTSleepSessionTracker_prepare__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTSleepSessionTracker *)self _withLock:v2];
}

uint64_t __32__MTSleepSessionTracker_prepare__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) sleepAlarm];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)trackingEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__MTSleepSessionTracker_trackingEnabled__block_invoke;
  v4[3] = &unk_1E7B0CA50;
  v4[4] = self;
  v4[5] = &v5;
  [(MTSleepSessionTracker *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __40__MTSleepSessionTracker_trackingEnabled__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 24))
  {
    v2 = MTLogForCategory(7);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      v4 = "%{public}@ no alarm, disabling";
      goto LABEL_7;
    }

LABEL_8:

    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_9;
  }

  if (([objc_opt_class() _trackingEnabledForSleepAlarm:*(*(a1 + 32) + 24)] & 1) == 0)
  {
    v2 = MTLogForCategory(7);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v7 = 138543362;
      v8 = v3;
      v4 = "%{public}@ feature not enabled";
LABEL_7:
      _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, v4, &v7, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
}

- (MTAlarm)cachedAlarm
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__MTSleepSessionTracker_cachedAlarm__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTSleepSessionTracker *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setCachedAlarm:(id)alarm
{
  alarmCopy = alarm;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__MTSleepSessionTracker_setCachedAlarm___block_invoke;
  v6[3] = &unk_1E7B0C928;
  v6[4] = self;
  v7 = alarmCopy;
  v5 = alarmCopy;
  [(MTSleepSessionTracker *)self _withLock:v6];
}

- (void)sleepCoordinator:(id)coordinator bedtimeReminderWasConfirmed:(id)confirmed sleepAlarm:(id)alarm
{
  v13 = *MEMORY[0x1E69E9840];
  confirmedCopy = confirmed;
  if ([(MTSleepSessionTracker *)self trackingEnabled])
  {
    v7 = MTLogForCategory(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = confirmedCopy;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ user confirmed bedtime reminder (%{public}@).  Starting session.", &v9, 0x16u);
    }

    [(MTSleepSessionTracker *)self startSession];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)sleepCoordinator:(id)coordinator wakeUpAlarmWasDismissed:(id)dismissed dismissAction:(unint64_t)action sleepAlarm:(id)alarm
{
  v18 = *MEMORY[0x1E69E9840];
  dismissedCopy = dismissed;
  if ([(MTSleepSessionTracker *)self trackingEnabled])
  {
    v9 = MTLogForCategory(7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MTDismissAlarmActionDescription(action);
      v12 = 138543874;
      selfCopy = self;
      v14 = 2112;
      v15 = dismissedCopy;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ user woke up at %@ (%{public}@)", &v12, 0x20u);
    }

    [(MTSleepSessionTracker *)self endSessionWithDate:dismissedCopy reason:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (MTSleepSessionTrackerDelegate)sleepSessionTrackerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepSessionTrackerDelegate);

  return WeakRetained;
}

@end