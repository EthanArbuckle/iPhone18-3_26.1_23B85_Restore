@interface MTAlarmKitAdoptionCoordinator
- (MTAlarmKitAdoptionCoordinator)initWithStorage:(id)a3 alarmStorage:(id)a4;
- (void)handleSystemReady;
- (void)source:(id)a3 didAddAlarms:(id)a4;
- (void)source:(id)a3 didAddTimers:(id)a4;
- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5;
- (void)source:(id)a3 didDismissTimer:(id)a4;
- (void)source:(id)a3 didRemoveAlarms:(id)a4;
- (void)source:(id)a3 didRemoveTimers:(id)a4;
- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5;
- (void)source:(id)a3 didUpdateAlarms:(id)a4 previousAlarms:(id)a5;
- (void)source:(id)a3 didUpdateTimers:(id)a4 fromTimers:(id)a5;
@end

@implementation MTAlarmKitAdoptionCoordinator

- (MTAlarmKitAdoptionCoordinator)initWithStorage:(id)a3 alarmStorage:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = MTAlarmKitAdoptionCoordinator;
  v9 = [(MTAlarmKitAdoptionCoordinator *)&v21 init];
  if (v9)
  {
    v10 = MTLogForCategory(10);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2114;
      v27 = v8;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_INFO, "Initializing %{public}@ with timerStorage:%{public}@ alarmStorage:%{public}@", buf, 0x20u);
    }

    objc_storeStrong(&v9->_timerStorage, a3);
    objc_storeStrong(&v9->_alarmStorage, a4);
    if (_os_feature_enabled_impl())
    {
      [(MTTimerStorage *)v9->_timerStorage registerObserver:v9];
      [(MTAlarmStorage *)v9->_alarmStorage registerObserver:v9];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v11 = getMTAlarmKitAdoptionManagerClass_softClass;
    v25 = getMTAlarmKitAdoptionManagerClass_softClass;
    if (!getMTAlarmKitAdoptionManagerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMTAlarmKitAdoptionManagerClass_block_invoke;
      v27 = &unk_1E7B0C600;
      v28 = &v22;
      __getMTAlarmKitAdoptionManagerClass_block_invoke(buf);
      v11 = v23[3];
    }

    v12 = v11;
    _Block_object_dispose(&v22, 8);
    v13 = objc_opt_new();
    alarmKitManagerProxy = v9->_alarmKitManagerProxy;
    v9->_alarmKitManagerProxy = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v16 = dispatch_queue_create("com.apple.MTAlarmKitAdoptionCoordinator.serialqueue", v15);

    v17 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:v16];
    serializer = v9->_serializer;
    v9->_serializer = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)handleSystemReady
{
  v13 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v3 = MTLogForCategory(10);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v12 = self;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ Feature flag enabled. All alarms and timers routed to ⏰ AlarmKit", buf, 0xCu);
    }

    if (![(MTAlarmStorage *)self->_alarmStorage isAlarmKitSchedulingEnabled])
    {
      v4 = MTLogForCategory(10);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v12 = self;
        _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ Scheduling existing alarms", buf, 0xCu);
      }

      v5 = [(MTAlarmStorage *)self->_alarmStorage alarms];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __50__MTAlarmKitAdoptionCoordinator_handleSystemReady__block_invoke;
      v10[3] = &unk_1E7B0CD98;
      v10[4] = self;
      [v5 na_each:v10];

      alarmStorage = self->_alarmStorage;
      v7 = 1;
LABEL_12:
      [(MTAlarmStorage *)alarmStorage persistAlarmKitSchedulingState:v7];
    }
  }

  else if ([(MTAlarmStorage *)self->_alarmStorage isAlarmKitSchedulingEnabled])
  {
    v8 = MTLogForCategory(10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v12 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ AlarmKit Feature Flag disabled! Unscheduling any existing alarms.", buf, 0xCu);
    }

    [(MTAlarmKitAdoptionManager *)self->_alarmKitManagerProxy unscheduleAll];
    alarmStorage = self->_alarmStorage;
    v7 = 0;
    goto LABEL_12;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __50__MTAlarmKitAdoptionCoordinator_handleSystemReady__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    [*(*(a1 + 32) + 32) scheduleAlarm:v3];
  }
}

- (void)source:(id)a3 didAddTimers:(id)a4
{
  v5 = a4;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__MTAlarmKitAdoptionCoordinator_source_didAddTimers___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(NAScheduler *)serializer performBlock:v8];
}

uint64_t __53__MTAlarmKitAdoptionCoordinator_source_didAddTimers___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__MTAlarmKitAdoptionCoordinator_source_didAddTimers___block_invoke_2;
  v3[3] = &unk_1E7B0CDC0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

- (void)source:(id)a3 didDismissTimer:(id)a4
{
  v5 = a4;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTAlarmKitAdoptionCoordinator_source_didDismissTimer___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(NAScheduler *)serializer performBlock:v8];
}

void __56__MTAlarmKitAdoptionCoordinator_source_didDismissTimer___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) timerIDString];
  [v1 dismissAlarm:v2];
}

- (void)source:(id)a3 didRemoveTimers:(id)a4
{
  v5 = a4;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTAlarmKitAdoptionCoordinator_source_didRemoveTimers___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(NAScheduler *)serializer performBlock:v8];
}

uint64_t __56__MTAlarmKitAdoptionCoordinator_source_didRemoveTimers___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__MTAlarmKitAdoptionCoordinator_source_didRemoveTimers___block_invoke_2;
  v3[3] = &unk_1E7B0CDC0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __56__MTAlarmKitAdoptionCoordinator_source_didRemoveTimers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [a2 timerIDString];
  [v2 cancelAlarm:v3];
}

- (void)source:(id)a3 didUpdateTimers:(id)a4 fromTimers:(id)a5
{
  v7 = a4;
  v8 = a5;
  serializer = self->_serializer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke;
  v12[3] = &unk_1E7B0C9A0;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  [(NAScheduler *)serializer performBlock:v12];
}

void __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2;
  v5[3] = &unk_1E7B0CDE8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 na_each:v5];
}

void __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_3;
  v28[3] = &unk_1E7B0CC00;
  v5 = v3;
  v29 = v5;
  v6 = [v4 na_firstObjectPassingTest:v28];
  v7 = MTLogForCategory(10);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    *buf = 138543874;
    v31 = v8;
    v32 = 2114;
    v33 = v6;
    v34 = 2114;
    v35 = v5;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@ Timer updated from %{public}@ to %{public}@", buf, 0x20u);
  }

  v9 = [v6 state];
  if (v9 != [v5 state])
  {
    v10 = [v5 state];
    switch(v10)
    {
      case 3:
        if ([v6 state] == 2)
        {
          v19 = MTLogForCategory(10);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = *(a1 + 40);
            v21 = [v5 timerIDString];
            *buf = 138543618;
            v31 = v20;
            v32 = 2114;
            v33 = v21;
            _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_INFO, "%{public}@ Resuming timer: %{public}@", buf, 0x16u);
          }

          v22 = *(*(a1 + 40) + 32);
          v14 = [v5 timerIDString];
          [v22 resumeCountdown:v14];
          goto LABEL_24;
        }

        if ([v6 state] == 1)
        {
          v23 = MTLogForCategory(10);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = *(a1 + 40);
            v25 = [v5 timerIDString];
            *buf = 138543618;
            v31 = v24;
            v32 = 2114;
            v33 = v25;
            _os_log_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_INFO, "%{public}@ Repeating timer: %{public}@", buf, 0x16u);
          }

          v26 = *(*(a1 + 40) + 32);
          v14 = [v5 timerIDString];
          [v26 countdownAlarm:v14];
          goto LABEL_24;
        }

        break;
      case 2:
        if ([v6 state] == 3)
        {
          v15 = MTLogForCategory(10);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = *(a1 + 40);
            v17 = [v5 timerIDString];
            *buf = 138543618;
            v31 = v16;
            v32 = 2114;
            v33 = v17;
            _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "%{public}@ Pausing timer: %{public}@", buf, 0x16u);
          }

          v18 = *(*(a1 + 40) + 32);
          v14 = [v5 timerIDString];
          [v18 pauseCountdown:v14];
          goto LABEL_24;
        }

        break;
      case 1:
        if (![v5 isFiring] || (objc_msgSend(v5, "sound"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isSilent"), v11, v12))
        {
          v13 = *(*(a1 + 40) + 32);
          v14 = [v5 timerIDString];
          [v13 dismissAlarm:v14];
LABEL_24:
        }

        break;
      default:
        v14 = MTLogForCategory(10);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2_cold_1(a1, v5, v14);
        }

        goto LABEL_24;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 timerIDString];
  v5 = [v3 timerIDString];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (void)source:(id)a3 didAddAlarms:(id)a4
{
  v5 = a4;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__MTAlarmKitAdoptionCoordinator_source_didAddAlarms___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(NAScheduler *)serializer performBlock:v8];
}

uint64_t __53__MTAlarmKitAdoptionCoordinator_source_didAddAlarms___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__MTAlarmKitAdoptionCoordinator_source_didAddAlarms___block_invoke_2;
  v3[3] = &unk_1E7B0CD98;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __53__MTAlarmKitAdoptionCoordinator_source_didAddAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isSleepAlarm] & 1) == 0 && objc_msgSend(v3, "isEnabled"))
  {
    [*(*(a1 + 32) + 32) scheduleAlarm:v3];
  }
}

- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5
{
  v6 = a4;
  serializer = self->_serializer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__MTAlarmKitAdoptionCoordinator_source_didDismissAlarm_dismissAction___block_invoke;
  v9[3] = &unk_1E7B0C928;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [(NAScheduler *)serializer performBlock:v9];
}

void __70__MTAlarmKitAdoptionCoordinator_source_didDismissAlarm_dismissAction___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isSleepAlarm] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 32);
    v4 = [v2 alarmIDString];
    [v3 dismissAlarm:v4];
  }
}

- (void)source:(id)a3 didRemoveAlarms:(id)a4
{
  v5 = a4;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTAlarmKitAdoptionCoordinator_source_didRemoveAlarms___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(NAScheduler *)serializer performBlock:v8];
}

uint64_t __56__MTAlarmKitAdoptionCoordinator_source_didRemoveAlarms___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__MTAlarmKitAdoptionCoordinator_source_didRemoveAlarms___block_invoke_2;
  v3[3] = &unk_1E7B0CD98;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __56__MTAlarmKitAdoptionCoordinator_source_didRemoveAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isSleepAlarm] & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = [v5 alarmIDString];
    [v3 cancelAlarm:v4];
  }
}

- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5
{
  v6 = a4;
  serializer = self->_serializer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__MTAlarmKitAdoptionCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke;
  v9[3] = &unk_1E7B0C928;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [(NAScheduler *)serializer performBlock:v9];
}

void __68__MTAlarmKitAdoptionCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isSleepAlarm] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 32);
    v4 = [v2 alarmIDString];
    [v3 countdownAlarm:v4];
  }
}

- (void)source:(id)a3 didUpdateAlarms:(id)a4 previousAlarms:(id)a5
{
  v7 = a4;
  v8 = a5;
  serializer = self->_serializer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke;
  v12[3] = &unk_1E7B0C9A0;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  [(NAScheduler *)serializer performBlock:v12];
}

void __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) na_filter:&__block_literal_global_7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_3;
  v5[3] = &unk_1E7B0CE10;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 na_each:v5];
}

void __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_3(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_4;
  v36[3] = &unk_1E7B0C6B0;
  v5 = v3;
  v37 = v5;
  v6 = [v4 na_firstObjectPassingTest:v36];
  v7 = [v6 hour];
  if (v7 != [v5 hour])
  {
    goto LABEL_16;
  }

  v8 = [v6 minute];
  if (v8 != [v5 minute])
  {
    goto LABEL_16;
  }

  v9 = [v6 repeatSchedule];
  if (v9 != [v5 repeatSchedule])
  {
    goto LABEL_16;
  }

  v10 = [v6 title];
  v11 = [v5 title];
  if (v10 != v11 || (v12 = [v6 snoozeDuration], v12 != objc_msgSend(v5, "snoozeDuration")))
  {

    goto LABEL_16;
  }

  v13 = [v6 allowsSnooze];
  v14 = [v5 allowsSnooze];

  if (v13 != v14)
  {
LABEL_16:
    v26 = MTLogForCategory(10);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 40);
      v28 = [v5 alarmIDString];
      *buf = 138543618;
      v39 = v27;
      v40 = 2114;
      v41 = v28;
      _os_log_impl(&dword_1B1F9F000, v26, OS_LOG_TYPE_INFO, "%{public}@ Unscheduling existing alarm and rescheduling for %{public}@", buf, 0x16u);
    }

    v29 = *(*(a1 + 40) + 32);
    v30 = [v5 alarmIDString];
    [v29 cancelAlarm:v30];

    goto LABEL_19;
  }

  v15 = [v6 isEnabled];
  if (v15 != [v5 isEnabled] && (objc_msgSend(v5, "isFiring") & 1) == 0)
  {
    v16 = MTLogForCategory(10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      v18 = [v5 alarmIDString];
      v19 = [v6 isEnabled];
      v20 = [v5 isEnabled];
      *buf = 138544130;
      v39 = v17;
      v40 = 2114;
      v41 = v18;
      v42 = 1026;
      v43 = v19;
      v44 = 1026;
      v45 = v20;
      _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_INFO, "%{public}@ State changed for %{public}@ from %{public}d to %{public}d", buf, 0x22u);
    }

    v21 = [v5 isEnabled];
    v22 = MTLogForCategory(10);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (v21)
    {
      if (v23)
      {
        v24 = *(a1 + 40);
        v25 = [v5 alarmIDString];
        *buf = 138543618;
        v39 = v24;
        v40 = 2114;
        v41 = v25;
        _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_INFO, "%{public}@ Alarm is enabled, scheduling %{public}@", buf, 0x16u);
      }

LABEL_19:
      [*(*(a1 + 40) + 32) scheduleAlarm:v5];
      goto LABEL_20;
    }

    if (v23)
    {
      v32 = *(a1 + 40);
      v33 = [v5 alarmIDString];
      *buf = 138543618;
      v39 = v32;
      v40 = 2114;
      v41 = v33;
      _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_INFO, "%{public}@ Alarm is disabled, unscheduling %{public}@", buf, 0x16u);
    }

    v34 = *(*(a1 + 40) + 32);
    v35 = [v5 alarmIDString];
    [v34 cancelAlarm:v35];
  }

LABEL_20:

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 alarmIDString];
  v5 = [v3 alarmIDString];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ Unknown timer state encountered for %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end