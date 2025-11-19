@interface MTActivityCoordinator
- (MTActivityCoordinator)initWithStorage:(id)a3 alarmStorage:(id)a4 notificationCenter:(id)a5;
- (id)_takeOutAssertionIfNeeded;
- (id)fireDateForId:(id)a3 isAlarm:(BOOL)a4;
- (void)_dismissAlarmWithId:(id)a3;
- (void)_dismissTimerWithId:(id)a3;
- (void)_releaseAssertionIfNeeded:(id)a3;
- (void)_takeOutAssertionIfNeeded;
- (void)clearLegacySessions;
- (void)clearStaleAlarmSessions;
- (void)clearStaleTimerSessions;
- (void)didAlertNotificationWithID:(id)a3;
- (void)didRestoreAlarmSessions:(id)a3;
- (void)endAlertForIdentifier:(id)a3 isAlarm:(BOOL)a4;
- (void)endAlertingSession;
- (void)handleAlarmStorageReady;
- (void)handleSystemReady;
- (void)handleTimerStorageReady;
- (void)nextTimerDidChange:(id)a3;
- (void)processAlarmUpdate:(id)a3 fromAlarm:(id)a4;
- (void)processTimerStateUpdate:(id)a3 fromTimer:(id)a4;
- (void)processTimerUpdate:(id)a3 fromTimer:(id)a4 changeSet:(id)a5;
- (void)restoreAlarmSnoozeSessions;
- (void)restoreTimerCountdownSessions;
- (void)source:(id)a3 didAddAlarms:(id)a4;
- (void)source:(id)a3 didAddTimers:(id)a4;
- (void)source:(id)a3 didChangeNextAlarm:(id)a4;
- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5;
- (void)source:(id)a3 didDismissTimer:(id)a4;
- (void)source:(id)a3 didFireAlarm:(id)a4 triggerType:(unint64_t)a5;
- (void)source:(id)a3 didFireTimer:(id)a4;
- (void)source:(id)a3 didRemoveAlarms:(id)a4;
- (void)source:(id)a3 didRemoveTimers:(id)a4;
- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5;
- (void)source:(id)a3 didUpdateAlarms:(id)a4;
- (void)source:(id)a3 didUpdateAlarms:(id)a4 previousAlarms:(id)a5;
- (void)source:(id)a3 didUpdateTimers:(id)a4 fromTimers:(id)a5;
@end

@implementation MTActivityCoordinator

- (void)endAlertingSession
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: endAlertingSession", buf, 0xCu);
  }

  serializer = self->_serializer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__MTActivityCoordinator_endAlertingSession__block_invoke;
  v6[3] = &unk_1E7B0C9D8;
  v6[4] = self;
  [(NAScheduler *)serializer performBlock:v6];
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __43__MTActivityCoordinator_endAlertingSession__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__MTActivityCoordinator_endAlertingSession__block_invoke_2;
  v8[3] = &unk_1E7B0ECA0;
  v8[4] = v2;
  [v3 timerAlertingActivities:v8];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MTActivityCoordinator_endAlertingSession__block_invoke_2_59;
  v7[3] = &unk_1E7B0ECA0;
  v7[4] = v4;
  return [v5 alarmAlertingActivities:v7];
}

void __43__MTActivityCoordinator_endAlertingSession__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: found alerting timer ids: %{public}@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MTActivityCoordinator_endAlertingSession__block_invoke_58;
  v7[3] = &unk_1E7B0EBF0;
  v7[4] = *(a1 + 32);
  [v3 na_each:v7];

  v6 = *MEMORY[0x1E69E9840];
}

- (MTActivityCoordinator)initWithStorage:(id)a3 alarmStorage:(id)a4 notificationCenter:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = MTActivityCoordinator;
  v12 = [(MTActivityCoordinator *)&v30 init];
  if (v12)
  {
    v13 = MTLogForCategory(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v36 = v10;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@ with timerStorage:%{public}@ alarmStorage:%{public}@", buf, 0x20u);
    }

    objc_storeStrong(&v12->_timerStorage, a3);
    objc_storeStrong(&v12->_alarmStorage, a4);
    [(MTTimerStorage *)v12->_timerStorage registerObserver:v12];
    [(MTAlarmStorage *)v12->_alarmStorage registerObserver:v12];
    objc_storeStrong(&v12->_notificationCenter, a5);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v14 = getMTActivitiesManagerClass_softClass;
    v34 = getMTActivitiesManagerClass_softClass;
    if (!getMTActivitiesManagerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMTActivitiesManagerClass_block_invoke;
      v36 = &unk_1E7B0C600;
      v37 = &v31;
      __getMTActivitiesManagerClass_block_invoke(buf);
      v14 = v32[3];
    }

    v15 = v14;
    _Block_object_dispose(&v31, 8);
    v16 = [[v14 alloc] initWithResolver:v12];
    activitiesManager = v12->_activitiesManager;
    v12->_activitiesManager = v16;

    v18 = MTCurrentDateProvider();
    currentDateProvider = v12->_currentDateProvider;
    v12->_currentDateProvider = v18;

    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v21 = dispatch_queue_create("com.apple.MTActivityCoordinator.serialqueue", v20);
    [(MTActivityCoordinator *)v12 setSerializerQueue:v21];

    v22 = MEMORY[0x1E69B3790];
    v23 = [(MTActivityCoordinator *)v12 serializerQueue];
    v24 = [v22 schedulerWithDispatchQueue:v23];
    serializer = v12->_serializer;
    v12->_serializer = v24;

    v26 = objc_opt_new();
    conductor = v12->_conductor;
    v12->_conductor = v26;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)handleSystemReady
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: handle system ready received", &v5, 0xCu);
  }

  [(MTActivityCoordinator *)self clearLegacySessions];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleAlarmStorageReady
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@: handle alarm storage ready received", &v5, 0xCu);
  }

  [(MTActivityCoordinator *)self clearStaleAlarmSessions];
  [(MTActivityCoordinator *)self restoreAlarmSnoozeSessions];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleTimerStorageReady
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@: handle timer storage ready received", &v5, 0xCu);
  }

  [(MTActivityCoordinator *)self clearStaleTimerSessions];
  [(MTActivityCoordinator *)self restoreTimerCountdownSessions];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)clearLegacySessions
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: clearLegacySessions", buf, 0xCu);
  }

  serializer = self->_serializer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MTActivityCoordinator_clearLegacySessions__block_invoke;
  v6[3] = &unk_1E7B0C9D8;
  v6[4] = self;
  [(NAScheduler *)serializer performBlock:v6];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clearStaleAlarmSessions
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: clearStaleAlarmSessions", buf, 0xCu);
  }

  v4 = [(MTAlarmStorage *)self->_alarmStorage allAlarms];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke;
  v13[3] = &unk_1E7B0C6B0;
  v13[4] = self;
  v5 = [v4 na_filter:v13];
  v6 = [v5 na_map:&__block_literal_global_30];

  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: retrieved active alarms: %{public}@", buf, 0x16u);
  }

  serializer = self->_serializer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_5;
  v11[3] = &unk_1E7B0C928;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  [(NAScheduler *)serializer performBlock:v11];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFiring])
  {
    v4 = 1;
  }

  else if ([v3 isSnoozed])
  {
    v5 = [v3 snoozeFireDate];
    v6 = (*(*(*(a1 + 32) + 56) + 16))();
    v4 = [v5 mtIsAfterDate:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_2_6;
  v4[3] = &unk_1E7B0D7A8;
  v4[4] = v2;
  v5 = v1;
  [v3 alarmActivities:v4];
}

void __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_2_6(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: retrieved alarm activities: %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_7;
  v12[3] = &unk_1E7B0C848;
  v13 = *(a1 + 40);
  v6 = [v3 na_filter:v12];
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v6 count];
    *buf = 138543874;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: found %lu orphaned alarm activities: %{public}@", buf, 0x20u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_9;
  v11[3] = &unk_1E7B0EBF0;
  v11[4] = *(a1 + 32);
  [v6 na_each:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_2_10;
  v7[3] = &unk_1E7B0D148;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 endActivityWithAlarmID:v6 completion:v7];
}

void __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_2_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_2_10_cold_1(a1);
    }
  }
}

- (void)clearStaleTimerSessions
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: clearStaleTimerSessions", buf, 0xCu);
  }

  v4 = [(MTTimerStorage *)self->_timerStorage timers];
  v5 = [v4 na_filter:&__block_literal_global_16];
  v6 = [v5 na_map:&__block_literal_global_20];

  v7 = MTLogForCategory(4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: retrieved active timers: %{public}@", buf, 0x16u);
  }

  serializer = self->_serializer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_21;
  v11[3] = &unk_1E7B0C928;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  [(NAScheduler *)serializer performBlock:v11];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([MTTimer isActiveTimer:v2])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isFiring];
  }

  return v3;
}

void __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_21(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_2_22;
  v5[3] = &unk_1E7B0D7A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 timerActivities:v5];
}

void __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_2_22(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_3;
  v10[3] = &unk_1E7B0C848;
  v11 = *(a1 + 32);
  v4 = [a2 na_filter:v10];
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [v4 count];
    *buf = 138543874;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: found %lu orphaned timer activities: %{public}@", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_23;
  v9[3] = &unk_1E7B0EBF0;
  v9[4] = *(a1 + 40);
  [v4 na_each:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_2_24;
  v7[3] = &unk_1E7B0D148;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 endActivityWithTimerID:v6 completion:v7];
}

void __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_2_24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MTLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_2_24_cold_1(a1);
    }
  }
}

- (void)restoreAlarmSnoozeSessions
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: restoreAlarmSnoozeSessions", buf, 0xCu);
  }

  v4 = [(MTAlarmStorage *)self->_alarmStorage allAlarms];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke;
  v12[3] = &unk_1E7B0C6B0;
  v12[4] = self;
  v5 = [v4 na_filter:v12];

  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: found active alarm ids: %{public}@", buf, 0x16u);
  }

  activitiesManager = self->_activitiesManager;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_25;
  v10[3] = &unk_1E7B0D7A8;
  v10[4] = self;
  v11 = v5;
  v8 = v5;
  [(MTActivitiesManager *)activitiesManager alarmCountdownActivities:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSnoozed])
  {
    v4 = [v3 snoozeFireDate];
    v5 = (*(*(*(a1 + 32) + 56) + 16))();
    v6 = [v4 mtIsAfterDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_25(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: retrieved current alarm : %{public}@", buf, 0x16u);
  }

  v7 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_26;
  v12[3] = &unk_1E7B0C6B0;
  v13 = v3;
  v8 = v3;
  v9 = [v7 na_filter:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_2;
  v11[3] = &unk_1E7B0CD98;
  v11[4] = *(a1 + 32);
  [v9 na_each:v11];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 alarmIDString];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_3;
  v7[3] = &unk_1E7B0D148;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 restoreActivityWithAlarm:v6 completion:v7];
}

void __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_3_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) alarmIDString];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ successfully creating alarm activity in restoreAlarmSnoozeSessions: %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)restoreTimerCountdownSessions
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: restoreTimerCountdownSessions", buf, 0xCu);
  }

  v4 = [(MTTimerStorage *)self->_timerStorage timers];
  v5 = [v4 na_filter:&__block_literal_global_29];

  v6 = MTLogForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: retreived active timers: %{public}@", buf, 0x16u);
  }

  activitiesManager = self->_activitiesManager;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_30;
  v10[3] = &unk_1E7B0D7A8;
  v11 = v5;
  v12 = self;
  v8 = v5;
  [(MTActivitiesManager *)activitiesManager timerCountdownActivities:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_2;
  v8[3] = &unk_1E7B0CC00;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_filter:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_3;
  v7[3] = &unk_1E7B0CDC0;
  v7[4] = *(a1 + 40);
  [v6 na_each:v7];
}

uint64_t __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 timerIDString];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_4;
  v7[3] = &unk_1E7B0D148;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 restoreActivityWithTimer:v6 completion:v7];
}

void __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_4_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) timerIDString];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ successfully creating timer activity in restoreTimerCountdownSessions: %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)nextTimerDidChange:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: next timer did change", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didAddTimers:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MTActivityCoordinator *)self useAlarmKitActivities];
  v7 = MTLogForCategory(4);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling new timer via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ did add timers, starting sessions", buf, 0xCu);
    }

    serializer = self->_serializer;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__MTActivityCoordinator_source_didAddTimers___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v12 = v5;
    v13 = self;
    [(NAScheduler *)serializer performBlock:v11];
    v7 = v12;
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __45__MTActivityCoordinator_source_didAddTimers___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__MTActivityCoordinator_source_didAddTimers___block_invoke_2;
  v3[3] = &unk_1E7B0CDC0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __45__MTActivityCoordinator_source_didAddTimers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__MTActivityCoordinator_source_didAddTimers___block_invoke_3;
    v6[3] = &unk_1E7B0D148;
    v6[4] = v4;
    v7 = v3;
    [v5 createActivityWithTimer:v7 completion:v6];
  }
}

void __45__MTActivityCoordinator_source_didAddTimers___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MTLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__MTActivityCoordinator_source_didAddTimers___block_invoke_3_cold_1(a1);
    }
  }
}

- (void)source:(id)a3 didFireTimer:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (-[MTActivityCoordinator useAlarmKitActivities](self, "useAlarmKitActivities") && ([v5 sound], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isSilent"), v6, (v7 & 1) == 0))
  {
    v10 = MTLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling firing timer via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    v8 = MTLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: didFireTimer", buf, 0xCu);
    }

    serializer = self->_serializer;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__MTActivityCoordinator_source_didFireTimer___block_invoke;
    v12[3] = &unk_1E7B0C928;
    v13 = v5;
    v14 = self;
    [(NAScheduler *)serializer performBlock:v12];
    v10 = v13;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __45__MTActivityCoordinator_source_didFireTimer___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sound];
  v3 = [v2 isSilent];

  if (v3)
  {
    v4 = MTLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) timerID];
      *buf = 138543618;
      v24 = v5;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ not posting alert for stop playing timer %{public}@", buf, 0x16u);
    }

    v7 = *(*(a1 + 40) + 64);
    v8 = [*(a1 + 32) timerIDString];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__MTActivityCoordinator_source_didFireTimer___block_invoke_32;
    v18[3] = &unk_1E7B0D148;
    v17 = *(a1 + 32);
    v9 = v17.i64[0];
    v19 = vextq_s8(v17, v17, 8uLL);
    [v7 endActivityWithTimerID:v8 completion:v18];
  }

  else
  {
    v10 = [*(a1 + 40) _takeOutAssertionIfNeeded];
    v13 = a1 + 32;
    v12 = *(a1 + 32);
    v11 = *(v13 + 8);
    v14 = *(v11 + 64);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__MTActivityCoordinator_source_didFireTimer___block_invoke_2;
    v20[3] = &unk_1E7B0DD70;
    v20[4] = v11;
    v21 = v10;
    v22 = v12;
    v15 = v10;
    [v14 alertActivityWithTimer:v12 completion:v20];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __45__MTActivityCoordinator_source_didFireTimer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 32);
  [*(a1 + 32) _releaseAssertionIfNeeded:*(a1 + 40)];
  if (a2)
  {
    v5 = MTLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__MTActivityCoordinator_source_didFireTimer___block_invoke_2_cold_1(v4, a1);
    }
  }
}

void __45__MTActivityCoordinator_source_didFireTimer___block_invoke_32(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MTLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__MTActivityCoordinator_source_didFireTimer___block_invoke_32_cold_1(a1);
    }
  }
}

- (void)source:(id)a3 didDismissTimer:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MTActivityCoordinator *)self useAlarmKitActivities];
  v7 = MTLogForCategory(4);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling timer dismiss via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: didDismissTimer", buf, 0xCu);
    }

    serializer = self->_serializer;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__MTActivityCoordinator_source_didDismissTimer___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v11[4] = self;
    v12 = v5;
    [(NAScheduler *)serializer performBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __48__MTActivityCoordinator_source_didDismissTimer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 40) timerIDString];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MTActivityCoordinator_source_didDismissTimer___block_invoke_2;
  v5[3] = &unk_1E7B0D148;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 endActivityWithTimerID:v3 completion:v5];
}

void __48__MTActivityCoordinator_source_didDismissTimer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MTLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__MTActivityCoordinator_source_didDismissTimer___block_invoke_2_cold_1(a1);
    }
  }
}

- (void)source:(id)a3 didRemoveTimers:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MTActivityCoordinator *)self useAlarmKitActivities];
  v7 = MTLogForCategory(4);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling timer remove via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: didRemoveTimers", buf, 0xCu);
    }

    serializer = self->_serializer;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__MTActivityCoordinator_source_didRemoveTimers___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v12 = v5;
    v13 = self;
    [(NAScheduler *)serializer performBlock:v11];
    v7 = v12;
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __48__MTActivityCoordinator_source_didRemoveTimers___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__MTActivityCoordinator_source_didRemoveTimers___block_invoke_2;
  v3[3] = &unk_1E7B0CDC0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __48__MTActivityCoordinator_source_didRemoveTimers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 64);
  v5 = [v3 timerIDString];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MTActivityCoordinator_source_didRemoveTimers___block_invoke_3;
  v7[3] = &unk_1E7B0D148;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  [v4 endActivityWithTimerID:v5 completion:v7];
}

void __48__MTActivityCoordinator_source_didRemoveTimers___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MTLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__MTActivityCoordinator_source_didRemoveTimers___block_invoke_3_cold_1();
    }
  }
}

- (void)source:(id)a3 didUpdateTimers:(id)a4 fromTimers:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(MTActivityCoordinator *)self useAlarmKitActivities];
  v10 = MTLogForCategory(4);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling timer update via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: didUpdateTimers", buf, 0xCu);
    }

    serializer = self->_serializer;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__MTActivityCoordinator_source_didUpdateTimers_fromTimers___block_invoke;
    v14[3] = &unk_1E7B0C9A0;
    v15 = v7;
    v16 = v8;
    v17 = self;
    [(NAScheduler *)serializer performBlock:v14];

    v10 = v15;
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __59__MTActivityCoordinator_source_didUpdateTimers_fromTimers___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MTActivityCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2;
  v5[3] = &unk_1E7B0CDE8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 na_each:v5];
}

void __59__MTActivityCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__MTActivityCoordinator_source_didUpdateTimers_fromTimers___block_invoke_3;
  v13[3] = &unk_1E7B0CC00;
  v5 = v3;
  v14 = v5;
  v6 = [v4 na_firstObjectPassingTest:v13];
  v7 = [MTChangeSet changeSetWithChangesFromObject:v5 toObject:v6];
  v8 = MTLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ timer update change set: %{public}@", buf, 0x16u);
  }

  v10 = +[MTTimer propertiesAffectingSessions];
  v11 = [v7 hasChangesInProperties:v10];

  if (v11)
  {
    [*(a1 + 40) processTimerUpdate:v5 fromTimer:v6 changeSet:v7];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __59__MTActivityCoordinator_source_didUpdateTimers_fromTimers___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 timerIDString];
  v5 = [v3 timerIDString];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (void)processTimerUpdate:(id)a3 fromTimer:(id)a4 changeSet:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 state];
  if (v11 == [v9 state])
  {
    v12 = [v8 fireTime];
    v13 = [v9 fireTime];
    v14 = [v12 isEqualToTime:v13];

    if ((v14 & 1) == 0)
    {
      v15 = MTLogForCategory(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v8 timerIDString];
        v17 = [v9 fireDate];
        v18 = [v8 fireDate];
        *buf = 138544130;
        v28 = self;
        v29 = 2114;
        v30 = v16;
        v31 = 2114;
        v32 = v17;
        v33 = 2114;
        v34 = v18;
        _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ fire time changed for timer id: %{public}@ from: %{public}@ to: %{public}@, restarting", buf, 0x2Au);
      }

      serializer = self->_serializer;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke;
      v25[3] = &unk_1E7B0C928;
      v25[4] = self;
      v26 = v8;
      [(NAScheduler *)serializer performBlock:v25];
    }

    if ([v10 hasChangeForProperty:@"MTTimerTitle"])
    {
      v20 = MTLogForCategory(4);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = self;
        _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ updating session title", buf, 0xCu);
      }

      v21 = self->_serializer;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke_34;
      v23[3] = &unk_1E7B0C928;
      v23[4] = self;
      v24 = v8;
      [(NAScheduler *)v21 performBlock:v23];
    }
  }

  else
  {
    [(MTActivityCoordinator *)self processTimerStateUpdate:v8 fromTimer:v9];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke_2;
  v4[3] = &unk_1E7B0D148;
  v4[4] = v1;
  v5 = v2;
  [v3 updateActivityWithTimer:v5 completion:v4];
}

void __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MTLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke_2_cold_1();
    }
  }
}

void __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke_34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke_2_35;
  v4[3] = &unk_1E7B0D148;
  v4[4] = v1;
  v5 = v2;
  [v3 updateActivityWithTimer:v5 completion:v4];
}

void __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke_2_35(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MTLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke_2_cold_1();
    }
  }
}

- (void)processTimerStateUpdate:(id)a3 fromTimer:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = self;
    v28 = 2114;
    v29 = v6;
    v30 = 2114;
    v31 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ process timer state update: %{public}@, old timer: %{public}@", buf, 0x20u);
  }

  v9 = [v6 state];
  switch(v9)
  {
    case 1:
      if (([v6 isFiring] & 1) == 0)
      {
        serializer = self->_serializer;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_42;
        v20[3] = &unk_1E7B0C928;
        v20[4] = self;
        v21 = v6;
        [(NAScheduler *)serializer performBlock:v20];
        v15 = v21;
        goto LABEL_22;
      }

      break;
    case 2:
      v16 = self->_serializer;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_40;
      v22[3] = &unk_1E7B0C928;
      v22[4] = self;
      v23 = v6;
      [(NAScheduler *)v16 performBlock:v22];
      v15 = v23;
      goto LABEL_22;
    case 3:
      v10 = MTLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = self;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ starting/resuming timer", buf, 0xCu);
      }

      if ((_os_feature_enabled_impl() & 1) == 0 && [v7 state] == 1)
      {
        v11 = MTLogForCategory(4);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = self;
          _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ repeating timer, stopping tone first", buf, 0xCu);
        }

        notificationCenter = self->_notificationCenter;
        if (objc_opt_respondsToSelector())
        {
          v13 = MTLogForCategory(4);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v27 = self;
            v28 = 2114;
            v29 = v7;
            _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Dismissing notifications for timer: %{public}@", buf, 0x16u);
          }

          [(MTNotificationCenter *)self->_notificationCenter dismissNotificationsForTimer:v7];
        }
      }

      if ([v7 state] == 1 || objc_msgSend(v7, "state") == 2)
      {
        v14 = self->_serializer;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke;
        v24[3] = &unk_1E7B0C928;
        v24[4] = self;
        v25 = v6;
        [(NAScheduler *)v14 performBlock:v24];
        v15 = v25;
LABEL_22:
      }

      break;
    default:
      v18 = MTLogForCategory(4);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MTActivityCoordinator processTimerStateUpdate:fromTimer:];
      }

      break;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2;
  v4[3] = &unk_1E7B0D148;
  v4[4] = v1;
  v5 = v2;
  [v3 updateActivityWithTimer:v5 completion:v4];
}

void __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MTLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2_cold_1();
    }
  }
}

void __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2_41;
  v4[3] = &unk_1E7B0D148;
  v4[4] = v1;
  v5 = v2;
  [v3 updateActivityWithTimer:v5 completion:v4];
}

void __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2_41(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MTLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2_cold_1();
    }
  }
}

void __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_42(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 40) timerIDString];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2_43;
  v5[3] = &unk_1E7B0D148;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 endActivityWithTimerID:v3 completion:v5];
}

void __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2_43(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MTLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2_43_cold_1();
    }
  }
}

- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (-[MTActivityCoordinator useAlarmKitActivities](self, "useAlarmKitActivities") && ([v6 isSleepAlarm] & 1) == 0)
  {
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling non-sleep alarm dismiss via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: didDismissAlarm", buf, 0xCu);
    }

    serializer = self->_serializer;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__MTActivityCoordinator_source_didDismissAlarm_dismissAction___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v11[4] = self;
    v12 = v6;
    [(NAScheduler *)serializer performBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __62__MTActivityCoordinator_source_didDismissAlarm_dismissAction___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 40) alarmIDString];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MTActivityCoordinator_source_didDismissAlarm_dismissAction___block_invoke_2;
  v5[3] = &unk_1E7B0D148;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 endActivityWithAlarmID:v3 completion:v5];
}

void __62__MTActivityCoordinator_source_didDismissAlarm_dismissAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MTLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__MTActivityCoordinator_source_didDismissAlarm_dismissAction___block_invoke_2_cold_1();
    }
  }
}

- (void)source:(id)a3 didFireAlarm:(id)a4 triggerType:(unint64_t)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (-[MTActivityCoordinator useAlarmKitActivities](self, "useAlarmKitActivities") && ([v6 isSleepAlarm] & 1) == 0)
  {
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling non-sleep alarm fired via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: didFireAlarm", buf, 0xCu);
    }

    serializer = self->_serializer;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v11[4] = self;
    v12 = v6;
    [(NAScheduler *)serializer performBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_2;
  aBlock[3] = &unk_1E7B0EC58;
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v20 = v2;
  v3 = _Block_copy(aBlock);
  if ([*(a1 + 40) isSleepAlarm] && _os_feature_enabled_impl() && objc_msgSend(*(a1 + 32), "expectWatchResponse"))
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) alarmIDString];
      *buf = 138543618;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ posting activity for sleep alarm with no sound: %{public}@", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(v7 + 64);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_45;
    v17[3] = &unk_1E7B0D148;
    v17[4] = v7;
    v18 = v8;
    [v9 updateActivityWithAlarm:v18 completion:v17];
    v10 = *(*(a1 + 32) + 72);
    v11 = [*(a1 + 40) alarmIDString];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_46;
    v14[3] = &unk_1E7B0C5B0;
    v12 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v12;
    v16 = v3;
    [v10 registerReplyPublisherWithId:v11 timeOut:v14 completion:1.0];
  }

  else
  {
    (*(v3 + 2))(v3, *(a1 + 40), 1);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _takeOutAssertionIfNeeded];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v6 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_3;
  v10[3] = &unk_1E7B0DD70;
  v10[4] = v6;
  v11 = v5;
  v12 = v7;
  v9 = v5;
  [v8 alertActivityWithAlarm:v7 playSound:a3 completion:v10];
}

void __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) _releaseAssertionIfNeeded:*(a1 + 40)];
  if (v3)
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 48) alarmIDString];
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_error_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error alerting alarm activity in didFireAlarm: %{public}@. Error: %{public}@", &v8, 0x20u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_45(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MTLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_45_cold_1();
    }
  }
}

uint64_t __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_46(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) alarmIDString];
      v13 = 138543618;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v8 = "%{public}@ received notification handled confirmation from watch, proceeding to alert without sound: %{public}@";
LABEL_6:
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, v8, &v13, 0x16u);
    }
  }

  else if (v5)
  {
    v9 = *(a1 + 32);
    v7 = [*(a1 + 40) alarmIDString];
    v13 = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v7;
    v8 = "%{public}@ did not receive notification hanlded confirmation from watch, proceeding to alert with sound: %{public}@";
    goto LABEL_6;
  }

  result = (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), a2 ^ 1u, v10);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)source:(id)a3 didRemoveAlarms:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didRemoveAlarms", buf, 0xCu);
  }

  serializer = self->_serializer;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__MTActivityCoordinator_source_didRemoveAlarms___block_invoke;
  v10[3] = &unk_1E7B0C928;
  v11 = v5;
  v12 = self;
  v8 = v5;
  [(NAScheduler *)serializer performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __48__MTActivityCoordinator_source_didRemoveAlarms___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__MTActivityCoordinator_source_didRemoveAlarms___block_invoke_2;
  v3[3] = &unk_1E7B0CD98;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __48__MTActivityCoordinator_source_didRemoveAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) useAlarmKitActivities] && (objc_msgSend(v3, "isSleepAlarm") & 1) == 0)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling non-sleep alarm remove via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    v4 = *(*(a1 + 32) + 64);
    v5 = [v3 alarmIDString];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__MTActivityCoordinator_source_didRemoveAlarms___block_invoke_48;
    v9[3] = &unk_1E7B0D148;
    v9[4] = *(a1 + 32);
    v10 = v3;
    [v4 endActivityWithAlarmID:v5 completion:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __48__MTActivityCoordinator_source_didRemoveAlarms___block_invoke_48(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__MTActivityCoordinator_source_didRemoveAlarms___block_invoke_48_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) alarmIDString];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@: remove alarm %{public}@, successfully ended activity", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (-[MTActivityCoordinator useAlarmKitActivities](self, "useAlarmKitActivities") && ([v6 isSleepAlarm] & 1) == 0)
  {
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling non-sleep alarm snoozed via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: didSnoozeAlarm", buf, 0xCu);
    }

    serializer = self->_serializer;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__MTActivityCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v11[4] = self;
    v12 = v6;
    [(NAScheduler *)serializer performBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __60__MTActivityCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MTActivityCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke_2;
  v4[3] = &unk_1E7B0D148;
  v4[4] = v1;
  v5 = v2;
  [v3 updateActivityWithAlarm:v5 completion:v4];
}

void __60__MTActivityCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__MTActivityCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) alarmIDString];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@: didSnoozeAlarm alarm %{public}@, successfully updated activity", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didUpdateAlarms:(id)a4 previousAlarms:(id)a5
{
  v7 = a4;
  v8 = a5;
  serializer = self->_serializer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__MTActivityCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke;
  v12[3] = &unk_1E7B0C9A0;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  [(NAScheduler *)serializer performBlock:v12];
}

void __63__MTActivityCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__MTActivityCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_2;
  v3[3] = &unk_1E7B0CE10;
  v1 = a1[4];
  v2 = a1[6];
  v3[4] = a1[5];
  v4 = v2;
  [v1 na_each:v3];
}

void __63__MTActivityCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) useAlarmKitActivities] && (objc_msgSend(v3, "isSleepAlarm") & 1) == 0)
  {
    v10 = MTLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: NO-OP! handling non-sleep alarm update via AlarmKit!", buf, 0xCu);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__MTActivityCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_49;
    v13[3] = &unk_1E7B0C6B0;
    v5 = v3;
    v14 = v5;
    v6 = [v4 na_firstObjectPassingTest:v13];
    v7 = [MTChangeSet changeSetWithChangesFromObject:v5 toObject:v6];
    v8 = +[MTAlarm propertiesAffectingSessions];
    v9 = [v7 hasChangesInProperties:v8];

    if (v9)
    {
      [*(a1 + 32) processAlarmUpdate:v5 fromAlarm:v6];
    }

    v10 = v14;
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __63__MTActivityCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 alarmIDString];
  v5 = [v3 alarmIDString];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (void)processAlarmUpdate:(id)a3 fromAlarm:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MTLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v18 = self;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ processAlarmUpdate alarm:%{public}@ fromAlarm:%{public}@", buf, 0x20u);
  }

  serializer = self->_serializer;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__MTActivityCoordinator_processAlarmUpdate_fromAlarm___block_invoke;
  v13[3] = &unk_1E7B0C9A0;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v10 = v7;
  v11 = v6;
  [(NAScheduler *)serializer performBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __54__MTActivityCoordinator_processAlarmUpdate_fromAlarm___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) repeats] & 1) == 0 && !objc_msgSend(*(a1 + 40), "isSnoozed") || (objc_msgSend(*(a1 + 32), "isEnabled") & 1) != 0 || objc_msgSend(*(a1 + 32), "isFiring")) && (!objc_msgSend(*(a1 + 40), "isSnoozed") || (objc_msgSend(*(a1 + 32), "isSnoozed") & 1) != 0 || (objc_msgSend(*(a1 + 32), "isFiring")))
  {
    v2 = MTLogForCategory(3);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 32);
      *buf = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "%{public}@ not removing session for alarm: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v5 = *(*(a1 + 48) + 64);
    v6 = [*(a1 + 32) alarmIDString];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__MTActivityCoordinator_processAlarmUpdate_fromAlarm___block_invoke_2;
    v8[3] = &unk_1E7B0D148;
    v8[4] = *(a1 + 48);
    v9 = *(a1 + 32);
    [v5 endActivityWithAlarmID:v6 completion:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __54__MTActivityCoordinator_processAlarmUpdate_fromAlarm___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__MTActivityCoordinator_source_didRemoveAlarms___block_invoke_48_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) alarmIDString];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@: remove alarm %{public}@, successfully ended activity", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)didRestoreAlarmSessions:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v20 = self;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ didRestoreAlarmSessions with ids: %{public}@", buf, 0x16u);
  }

  if ([v4 count])
  {
    v6 = [(MTAlarmStorage *)self->_alarmStorage allAlarms];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__MTActivityCoordinator_didRestoreAlarmSessions___block_invoke;
    v18[3] = &unk_1E7B0C6B0;
    v18[4] = self;
    v7 = [v6 na_filter:v18];
    v8 = [v7 na_map:&__block_literal_global_53_0];

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __49__MTActivityCoordinator_didRestoreAlarmSessions___block_invoke_3;
    v16 = &unk_1E7B0C848;
    v17 = v8;
    v9 = v8;
    v10 = [v4 na_filter:&v13];
    v11 = MTLogForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v20 = self;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ removing inactive alarm sessions: %{public}@", buf, 0x16u);
    }

    [v10 na_each:{&__block_literal_global_56, v13, v14, v15, v16}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __49__MTActivityCoordinator_didRestoreAlarmSessions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSnoozed])
  {
    v4 = [v3 snoozeFireDate];
    v5 = (*(*(*(a1 + 32) + 56) + 16))();
    v6 = [v4 mtIsAfterDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)source:(id)a3 didUpdateAlarms:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: didUpdateAlarms", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didAddAlarms:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: didAddAlarms", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didChangeNextAlarm:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: didChangeNextAlarm", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __43__MTActivityCoordinator_endAlertingSession__block_invoke_2_59(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: found alerting alarm ids: %{public}@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MTActivityCoordinator_endAlertingSession__block_invoke_60;
  v7[3] = &unk_1E7B0EBF0;
  v7[4] = *(a1 + 32);
  [v3 na_each:v7];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_dismissAlarmWithId:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss alarm action for id: %{public}@", buf, 0x16u);
  }

  alarmStorage = self->_alarmStorage;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__MTActivityCoordinator__dismissAlarmWithId___block_invoke;
  v9[3] = &unk_1E7B0CE10;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(MTAlarmStorage *)alarmStorage alarmWithIdentifier:v7 withCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __45__MTActivityCoordinator__dismissAlarmWithId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSnoozed])
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTActivityCoordinator__dismissAlarmWithId___block_invoke_cold_1(a1, v3);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 24);
    if ([v3 isSleepAlarm])
    {
      v7 = 5;
    }

    else
    {
      v7 = 0;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__MTActivityCoordinator__dismissAlarmWithId___block_invoke_2;
    v8[3] = &unk_1E7B0D148;
    v8[4] = *(a1 + 32);
    v9 = v3;
    [v6 dismissAlarmWithIdentifier:v5 dismissAction:v7 withCompletion:v8 source:*(a1 + 32)];
  }
}

void __45__MTActivityCoordinator__dismissAlarmWithId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTActivityCoordinator__dismissAlarmWithId___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 64);
    v4 = [v5 alarmIDString];
    [v6 endActivityWithAlarmID:v4 completion:&__block_literal_global_63];
  }
}

- (void)_dismissTimerWithId:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss timer action for id: %{public}@", buf, 0x16u);
  }

  v6 = [(MTTimerStorage *)self->_timerStorage timers];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__MTActivityCoordinator__dismissTimerWithId___block_invoke;
  v15[3] = &unk_1E7B0CC00;
  v7 = v4;
  v16 = v7;
  v8 = [v6 na_filter:v15];
  v9 = [v8 firstObject];

  if ([v9 isFiring])
  {
    timerStorage = self->_timerStorage;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__MTActivityCoordinator__dismissTimerWithId___block_invoke_2;
    v13[3] = &unk_1E7B0D148;
    v13[4] = self;
    v14 = v9;
    [(MTTimerStorage *)timerStorage dismissTimerWithIdentifier:v7 withCompletion:v13 source:self];
  }

  else
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MTActivityCoordinator _dismissTimerWithId:];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __45__MTActivityCoordinator__dismissTimerWithId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 timerIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __45__MTActivityCoordinator__dismissTimerWithId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MTLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTActivityCoordinator__dismissTimerWithId___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 64);
    v4 = [v5 timerIDString];
    [v6 endActivityWithTimerID:v4 completion:&__block_literal_global_66];
  }
}

- (void)didAlertNotificationWithID:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ didAlertNotificationWithID received %{public}@, forwarding to conductor", &v7, 0x16u);
  }

  [(StringConductor *)self->_conductor send:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (id)_takeOutAssertionIfNeeded
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BannerRequest"];
  v4 = [MEMORY[0x1E69C7610] predicateMatchingServiceName:@"com.apple.ClockAngel"];
  v5 = [MEMORY[0x1E69C75D0] handleForPredicate:v4 error:0];
  v6 = objc_alloc(MEMORY[0x1E69C7548]);
  v7 = MEMORY[0x1E69C7640];
  v8 = [v5 identity];
  v9 = [v7 targetWithProcessIdentity:v8];
  v20[0] = v3;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v11 = [v6 initWithExplanation:@"Guarantee ClockAngel receives the alerting activity" target:v9 attributes:v10];

  v17 = 0;
  [v11 acquireWithError:&v17];
  v12 = v17;
  v13 = MTLogForCategory(3);
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MTActivityCoordinator *)self _takeOutAssertionIfNeeded];
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = self;
    _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Acquired RBSAssertion", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_releaseAssertionIfNeeded:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = MTLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidated RBSAssertion", &v7, 0xCu);
    }

    [v4 invalidate];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)fireDateForId:(id)a3 isAlarm:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(MTAlarmStorage *)self->_alarmStorage alarms];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__MTActivityCoordinator_fireDateForId_isAlarm___block_invoke;
    v21[3] = &unk_1E7B0C6B0;
    v8 = &v22;
    v22 = v6;
    v9 = v6;
    v10 = v21;
  }

  else
  {
    v7 = [(MTTimerStorage *)self->_timerStorage timers];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __47__MTActivityCoordinator_fireDateForId_isAlarm___block_invoke_2;
    v19 = &unk_1E7B0CC00;
    v8 = &v20;
    v20 = v6;
    v11 = v6;
    v10 = &v16;
  }

  v12 = [v7 na_filter:{v10, v16, v17, v18, v19}];
  v13 = [v12 firstObject];

  v14 = [v13 firedDate];

  return v14;
}

uint64_t __47__MTActivityCoordinator_fireDateForId_isAlarm___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alarmIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __47__MTActivityCoordinator_fireDateForId_isAlarm___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 timerIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)endAlertForIdentifier:(id)a3 isAlarm:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138543874;
    v10 = self;
    v11 = 2114;
    v12 = v6;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@: endAlertForIdentifier: %{public}@ isAlarm: %i", &v9, 0x1Cu);
  }

  if (v4)
  {
    [(MTActivityCoordinator *)self _dismissAlarmWithId:v6];
  }

  else
  {
    [(MTActivityCoordinator *)self _dismissTimerWithId:v6];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __48__MTActivityCoordinator_clearStaleAlarmSessions__block_invoke_2_10_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v8 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __48__MTActivityCoordinator_clearStaleTimerSessions__block_invoke_2_24_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v8 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __51__MTActivityCoordinator_restoreAlarmSnoozeSessions__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) alarmIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __54__MTActivityCoordinator_restoreTimerCountdownSessions__block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) timerIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __45__MTActivityCoordinator_source_didAddTimers___block_invoke_3_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) timerIDString];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __45__MTActivityCoordinator_source_didFireTimer___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = [*(a2 + 48) timerIDString];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __45__MTActivityCoordinator_source_didFireTimer___block_invoke_32_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) timerIDString];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __48__MTActivityCoordinator_source_didDismissTimer___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) timerIDString];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __48__MTActivityCoordinator_source_didRemoveTimers___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) timerIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __64__MTActivityCoordinator_processTimerUpdate_fromTimer_changeSet___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) timerIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)processTimerStateUpdate:fromTimer:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) timerIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __59__MTActivityCoordinator_processTimerStateUpdate_fromTimer___block_invoke_2_43_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) timerIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __62__MTActivityCoordinator_source_didDismissAlarm_dismissAction___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) alarmIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __57__MTActivityCoordinator_source_didFireAlarm_triggerType___block_invoke_45_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) alarmIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __48__MTActivityCoordinator_source_didRemoveAlarms___block_invoke_48_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) alarmIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __60__MTActivityCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_0(v1) alarmIDString];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __45__MTActivityCoordinator__dismissAlarmWithId___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 alarmID];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __45__MTActivityCoordinator__dismissAlarmWithId___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_dismissTimerWithId:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __45__MTActivityCoordinator__dismissTimerWithId___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_takeOutAssertionIfNeeded
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end