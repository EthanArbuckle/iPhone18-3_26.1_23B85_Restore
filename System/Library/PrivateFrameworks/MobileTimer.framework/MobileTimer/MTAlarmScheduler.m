@interface MTAlarmScheduler
+ (id)_intervalToCheckForAlarmsToFireBeforeDate:(id)a3;
- (BOOL)_shouldPostNotificationForScheduledAlarm:(id)a3;
- (BOOL)handlesNotification:(id)a3 ofType:(int64_t)a4;
- (MTAlarmScheduleDelegate)delegate;
- (MTAlarmScheduler)initWithStorage:(id)a3 notificationCenter:(id)a4;
- (MTAlarmScheduler)initWithStorage:(id)a3 notificationCenter:(id)a4 scheduler:(id)a5 defaults:(id)a6;
- (MTAlarmScheduler)initWithStorage:(id)a3 notificationCenter:(id)a4 scheduler:(id)a5 defaults:(id)a6 schedulingDelegate:(id)a7 taskScheduler:(id)a8 currentDateProvider:(id)a9;
- (id)_additionalAlarmsToScheduleForAlarms:(id)a3;
- (id)_lastAlarmTriggerDate;
- (id)_nextScheduledAlertIncludingBedtimeNotification:(BOOL)a3;
- (id)_nextTriggerDateForScheduling;
- (id)gatherDiagnostics;
- (id)nextScheduledAlarmIncludingBedtimeNotification:(BOOL)a3;
- (void)_fireScheduledAlarm:(id)a3 firedDate:(id)a4 completionBlock:(id)a5;
- (void)_queue_fireTriggeredAlarmsWithCompletionBlock:(id)a3;
- (void)_queue_triggerDidFireForAlarmWithCompletionBlock:(id)a3;
- (void)_queue_unregisterTimer;
- (void)_queue_updateNextAlarmTimerWithCompletion:(id)a3;
- (void)_rescheduleAlarmsWithCompletion:(id)a3;
- (void)_scheduleAlarms:(id)a3 withCompletion:(id)a4;
- (void)_setLastAlarmTriggerDate:(id)a3;
- (void)_unscheduleAlarms:(id)a3;
- (void)cleanDeliveredNotifications;
- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5;
- (void)printDiagnostics;
- (void)rescheduleAlarmsWithCompletion:(id)a3;
- (void)scheduleAlarms:(id)a3;
- (void)scheduledListDidChange:(id)a3 withCompletion:(id)a4;
- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5;
- (void)source:(id)a3 didRemoveAlarms:(id)a4;
- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5;
- (void)source:(id)a3 didUpdateAlarms:(id)a4;
- (void)unscheduleAlarms:(id)a3;
@end

@implementation MTAlarmScheduler

- (MTAlarmScheduler)initWithStorage:(id)a3 notificationCenter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTAlarmScheduler.access-queue", +[MTScheduler defaultPriority]);
  v9 = +[MTUserDefaults sharedUserDefaults];
  v10 = [(MTAlarmScheduler *)self initWithStorage:v7 notificationCenter:v6 scheduler:v8 defaults:v9];

  return v10;
}

- (MTAlarmScheduler)initWithStorage:(id)a3 notificationCenter:(id)a4 scheduler:(id)a5 defaults:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [MTXPCScheduler xpcSchedulerWithEvent:@"com.apple.MTAlarmScheduler.alarm-event"];
  v15 = objc_opt_new();
  v16 = MTCurrentDateProvider();
  v17 = [(MTAlarmScheduler *)self initWithStorage:v13 notificationCenter:v12 scheduler:v11 defaults:v10 schedulingDelegate:v14 taskScheduler:v15 currentDateProvider:v16];

  return v17;
}

- (MTAlarmScheduler)initWithStorage:(id)a3 notificationCenter:(id)a4 scheduler:(id)a5 defaults:(id)a6 schedulingDelegate:(id)a7 taskScheduler:(id)a8 currentDateProvider:(id)a9
{
  v35 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v18 = a9;
  v32.receiver = self;
  v32.super_class = MTAlarmScheduler;
  v19 = [(MTAlarmScheduler *)&v32 init];
  if (v19)
  {
    v27 = v17;
    v20 = MTLogForCategory(3);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    v21 = [v18 copy];
    currentDateProvider = v19->_currentDateProvider;
    v19->_currentDateProvider = v21;

    objc_storeStrong(&v19->_schedulingDelegate, a7);
    objc_storeStrong(&v19->_taskScheduler, a8);
    objc_storeStrong(&v19->_notificationCenter, a4);
    objc_storeStrong(&v19->_defaults, a6);
    objc_storeStrong(&v19->_storage, a3);
    [v16 registerObserver:v19];
    v23 = [[MTScheduledList alloc] initWithDelegate:v19];
    scheduledAlarms = v19->_scheduledAlarms;
    v19->_scheduledAlarms = v23;

    objc_storeStrong(&v19->_serializer, a5);
    v17 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)rescheduleAlarmsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MTAlarmScheduler *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MTAlarmScheduler_rescheduleAlarmsWithCompletion___block_invoke;
  v7[3] = &unk_1E7B0CA00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)cleanDeliveredNotifications
{
  v3 = [(MTAlarmScheduler *)self notificationCenter];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTAlarmScheduler *)self notificationCenter];
    [v5 removeAllDeliveredNotifications];
  }
}

- (void)_rescheduleAlarmsWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MTAlarmScheduler *)self storage];
  v6 = [v5 allAlarms];

  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2050;
    v12 = [v6 count];
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ rescheduling %{public}ld alarms", &v9, 0x16u);
  }

  [(MTScheduledList *)self->_scheduledAlarms reset];
  [(MTAlarmScheduler *)self _scheduleAlarms:v6 withCompletion:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)scheduleAlarms:(id)a3
{
  v4 = a3;
  v5 = [(MTAlarmScheduler *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MTAlarmScheduler_scheduleAlarms___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __35__MTAlarmScheduler_scheduleAlarms___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    v12 = 138543618;
    v13 = v3;
    v14 = 2050;
    v15 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}ld alarms", &v12, 0x16u);
  }

  v5 = [*(a1 + 32) _additionalAlarmsToScheduleForAlarms:*(a1 + 40)];
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [v5 count];
    v12 = 138543618;
    v13 = v7;
    v14 = 2050;
    v15 = v8;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}ld additional alarms", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) arrayByAddingObjectsFromArray:v5];
  [v9 _scheduleAlarms:v10 withCompletion:0];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_additionalAlarmsToScheduleForAlarms:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__MTAlarmScheduler__additionalAlarmsToScheduleForAlarms___block_invoke;
  v10[3] = &unk_1E7B0DD20;
  v10[4] = &v11;
  v10[5] = &v15;
  [v4 na_each:v10];
  if (*(v16 + 24) == *(v12 + 24))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [(MTAlarmScheduler *)self storage];
    v7 = [v6 sleepAlarms];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__MTAlarmScheduler__additionalAlarmsToScheduleForAlarms___block_invoke_2;
    v9[3] = &unk_1E7B0DD48;
    v9[4] = &v15;
    v5 = [v7 na_filter:v9];
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __57__MTAlarmScheduler__additionalAlarmsToScheduleForAlarms___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isSleepAlarm])
  {
    v3 = [v5 isSingleTimeAlarm];
    v4 = 40;
    if (v3)
    {
      v4 = 32;
    }

    *(*(*(a1 + v4) + 8) + 24) = 1;
  }
}

- (void)_scheduleAlarms:(id)a3 withCompletion:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = (*(self->_currentDateProvider + 2))();
  v9 = [(MTAlarmScheduler *)self _lastAlarmTriggerDate];
  v10 = [v8 dateByAddingTimeInterval:-900.0];
  v42 = v10;
  v43 = v9;
  v41 = v7;
  if ([v9 mtIsBeforeOrSameAsDate:v10])
  {
    v11 = MTLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v54 = self;
      v55 = 1024;
      *v56 = 15;
      *&v56[4] = 2114;
      *&v56[6] = v10;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ fired last alarm more than %d minutes ago.  Seeing if we have to fire any alarms we missed since %{public}@", buf, 0x1Cu);
    }

    v12 = v10;
  }

  else
  {
    v13 = [v9 mtIsAfterDate:v8];
    v14 = MTLogForCategory(3);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 138543362;
        v54 = self;
        _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ the last alarm fire date is ahead of the current date (probably because we went back in time).", buf, 0xCu);
      }

      v16 = v8;
      [(MTAlarmScheduler *)self _setLastAlarmTriggerDate:v16];
      goto LABEL_13;
    }

    if (v15)
    {
      *buf = 138543874;
      v54 = self;
      v55 = 1024;
      *v56 = 15;
      *&v56[4] = 2114;
      *&v56[6] = v9;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ fired last alarm less than %d minutes ago.  Seeing if we have to fire any alarms we missed since %{public}@", buf, 0x1Cu);
    }

    v12 = v9;
  }

  v16 = v12;
LABEL_13:
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (!v18)
  {
    goto LABEL_39;
  }

  v19 = v18;
  v20 = *v49;
  do
  {
    v21 = 0;
    do
    {
      if (*v49 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v48 + 1) + 8 * v21);
      if ([v22 isSnoozed] && (objc_msgSend(v22, "snoozeFireDate"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "mtIsBeforeDate:", v16), v23, v24))
      {
        v25 = [v22 mutableCopy];
        if ([v22 repeats] & 1) != 0 || (objc_msgSend(v22, "isSleepAlarm"))
        {
          v26 = MTLogForCategory(3);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v25 alarmID];
            *buf = 138543618;
            v54 = self;
            v55 = 2114;
            *v56 = v27;
            _os_log_impl(&dword_1B1F9F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Clearing fire date for really old snoozed alarm %{public}@", buf, 0x16u);
          }

          [v25 setSnoozeFireDate:0];
          if (v25)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v33 = MTLogForCategory(3);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v25 alarmID];
            *buf = 138543618;
            v54 = self;
            v55 = 2114;
            *v56 = v34;
            _os_log_impl(&dword_1B1F9F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting really old snoozed alarm %{public}@ to disabled", buf, 0x16u);
          }

          [v25 setEnabled:0];
          if (v25)
          {
            goto LABEL_31;
          }
        }
      }

      else if ([v22 isFiring])
      {
        v28 = [v22 firedDate];
        [v8 timeIntervalSinceDate:v28];
        v30 = v29;

        if (v30 > 172800.0)
        {
          v25 = [v22 mutableCopy];
          v31 = MTLogForCategory(3);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v25 alarmID];
            *buf = 138543618;
            v54 = self;
            v55 = 2114;
            *v56 = v32;
            _os_log_impl(&dword_1B1F9F000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Clearing fire date for really old firing alarm %{public}@", buf, 0x16u);
          }

          [v25 setFiredDate:0];
          if (v25)
          {
LABEL_31:
            [(MTAlarmStorage *)self->_storage updateAlarm:v25 withCompletion:0 source:self];
          }
        }
      }

      ++v21;
    }

    while (v19 != v21);
    v35 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
    v19 = v35;
  }

  while (v35);
LABEL_39:

  v36 = MTNewChildActivityForName(0xBuLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MTAlarmScheduler__scheduleAlarms_withCompletion___block_invoke;
  block[3] = &unk_1E7B0CC70;
  block[4] = self;
  v45 = v17;
  v46 = v16;
  v47 = v41;
  v37 = v41;
  v38 = v16;
  v39 = v17;
  os_activity_apply(v36, block);

  v40 = *MEMORY[0x1E69E9840];
}

void __51__MTAlarmScheduler__scheduleAlarms_withCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    *buf = 138543618;
    v15 = v3;
    v16 = 2050;
    v17 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}lu alarms", buf, 0x16u);
  }

  v5 = [*(a1 + 32) scheduledAlarms];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__MTAlarmScheduler__scheduleAlarms_withCompletion___block_invoke_22;
  v12[3] = &unk_1E7B0D6F0;
  v13 = *(a1 + 56);
  [v5 schedule:v6 afterDate:v7 withCompletion:v12];

  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    *buf = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduled alarms: %{public}@", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __51__MTAlarmScheduler__scheduleAlarms_withCompletion___block_invoke_22(uint64_t a1)
{
  kdebug_trace();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)unscheduleAlarms:(id)a3
{
  v4 = a3;
  v5 = [(MTAlarmScheduler *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MTAlarmScheduler_unscheduleAlarms___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __37__MTAlarmScheduler_unscheduleAlarms___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _unscheduleAlarms:*(a1 + 40)];
  v2 = [*(a1 + 32) _additionalAlarmsToScheduleForAlarms:*(a1 + 40)];
  [*(a1 + 32) _scheduleAlarms:v2 withCompletion:0];
}

- (void)_unscheduleAlarms:(id)a3
{
  v4 = a3;
  v5 = MTNewChildActivityForName(0xBuLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MTAlarmScheduler__unscheduleAlarms___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

void __38__MTAlarmScheduler__unscheduleAlarms___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    v10 = 138543618;
    v11 = v3;
    v12 = 2050;
    v13 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ unscheduling %{public}lu alarms", &v10, 0x16u);
  }

  v5 = [*(a1 + 32) scheduledAlarms];
  [v5 unschedule:*(a1 + 40)];

  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduled alarms: %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)scheduledListDidChange:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  [(MTAlarmScheduler *)self _queue_updateNextAlarmTimerWithCompletion:a4];
  v5 = [(MTAlarmScheduler *)self scheduledAlarms];
  v6 = [v5 nextScheduledAlertOrNotification];

  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 scheduleable];
    v9 = [v8 identifier];
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ next alarm changed: %{public}@", &v13, 0x16u);
  }

  v10 = MTLogForCategory(9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_INFO, "MTAlarmScheduler - Changing Next Alarm", &v13, 2u);
  }

  v11 = [(MTAlarmScheduler *)self delegate];
  [v11 scheduler:self didChangeNextAlarm:v6];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_queue_updateNextAlarmTimerWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *&v6 = COERCE_DOUBLE([(MTScheduledList *)self->_scheduledAlarms numberOfScheduledAlertsAndNotifications]);
    *buf = 138543618;
    v21 = self;
    v22 = 2050;
    v23 = *&v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ has %{public}ld scheduled alerts and notifications", buf, 0x16u);
  }

  v7 = [(MTAlarmScheduler *)self _nextTriggerDateForScheduling];
  [v7 dateByAddingTimeInterval:-10.0];
  v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v8 == 0.0)
  {
    [(MTAlarmScheduler *)self _queue_unregisterTimer];
    if (!v4)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduling persistent timer for next alert at %{public}@", buf, 0x16u);
  }

  v10 = (*(self->_currentDateProvider + 2))();
  [*&v8 timeIntervalSinceDate:v10];
  v12 = v11;

  if (v12 <= 0.0)
  {
    v16 = MTLogForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer should have fired.  Triggering it now", buf, 0xCu);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__MTAlarmScheduler__queue_updateNextAlarmTimerWithCompletion___block_invoke;
    v18[3] = &unk_1E7B0D6F0;
    v19 = v4;
    [(MTAlarmScheduler *)self _queue_fireTriggeredAlarmsWithCompletionBlock:v18];

    goto LABEL_20;
  }

  v13 = MTLogForCategory(3);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12 <= 60.0)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    *buf = 138543618;
    v21 = self;
    v22 = 2048;
    v23 = v12;
    v15 = "%{public}@ Timer will fire %f seconds from now";
  }

  else
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    *buf = 138543618;
    v21 = self;
    v22 = 2048;
    v23 = v12 / 60.0;
    v15 = "%{public}@ Timer will fire %f minutes from now";
  }

  _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
LABEL_18:

  kdebug_trace();
  [(MTSchedulingDelegate *)self->_schedulingDelegate scheduleTimerForSeconds:v12];
  kdebug_trace();
  if (v4)
  {
LABEL_19:
    v4[2](v4);
  }

LABEL_20:

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __62__MTAlarmScheduler__queue_updateNextAlarmTimerWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_queue_unregisterTimer
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Unscheduling persistent timer.", &v5, 0xCu);
  }

  [(MTSchedulingDelegate *)self->_schedulingDelegate unscheduleTimer];
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)_intervalToCheckForAlarmsToFireBeforeDate:(id)a3
{
  v3 = a3;
  v4 = [v3 dateByAddingTimeInterval:10.0];
  v5 = [v3 dateByAddingTimeInterval:-900.0];

  v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v4];

  return v6;
}

- (void)_queue_triggerDidFireForAlarmWithCompletionBlock:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm timer fired", &v7, 0xCu);
  }

  [(MTAlarmScheduler *)self _queue_unregisterTimer];
  [(MTAlarmScheduler *)self _queue_fireTriggeredAlarmsWithCompletionBlock:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldPostNotificationForScheduledAlarm:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 isVisible];
  if ((v5 & 1) == 0)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 scheduleable];
      v8 = [v7 identifier];
      v9 = [v4 trigger];
      v12 = 138543874;
      v13 = self;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm %{public}@ is for non-visible event %{public}@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_fireScheduledAlarm:(id)a3 firedDate:(id)a4 completionBlock:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MTScheduledList *)self->_scheduledAlarms isScheduled:v8])
  {
    v11 = MTLogForCategory(9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "MTAlarmScheduler - Firing Alarm", buf, 2u);
    }

    v12 = MTLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 scheduleable];
      v14 = [v13 alarmID];
      *buf = 138543874;
      v40 = self;
      v41 = 2114;
      v42 = v14;
      v43 = 2114;
      v44 = v9;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ fired (scheduled fire date: %{public}@)", buf, 0x20u);
    }

    [(MTScheduledList *)self->_scheduledAlarms _unscheduleObject:v8];
    notificationCenter = self->_notificationCenter;
    if (objc_opt_respondsToSelector())
    {
      v16 = MTLogForCategory(3);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v40 = self;
        v41 = 2114;
        v42 = v8;
        _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ first dismissing related notifications for %{public}@", buf, 0x16u);
      }

      [(MTNotificationCenter *)self->_notificationCenter dismissRelatedNotificationsForScheduledAlarm:v8];
    }

    v17 = [(MTAlarmScheduler *)self _shouldPostNotificationForScheduledAlarm:v8];
    v18 = MTLogForCategory(3);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 138543618;
        v40 = self;
        v41 = 2114;
        v42 = v8;
        _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ post notification for %{public}@", buf, 0x16u);
      }

      [(MTNotificationCenter *)self->_notificationCenter postNotificationForScheduledAlarm:v8 completionBlock:v10];
    }

    else
    {
      if (v19)
      {
        *buf = 138543618;
        v40 = self;
        v41 = 2114;
        v42 = v8;
        _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ not posting notification for %{public}@", buf, 0x16u);
      }

      v10[2](v10);
    }

    [(MTAlarmScheduler *)self _setLastAlarmTriggerDate:v9];
    v23 = [v8 scheduleable];
    v24 = [v23 mutableCopy];

    v25 = [v8 trigger];
    v26 = [v25 isBedtimeRelated];

    if (v26)
    {
      [v24 setBedtimeFiredDate:v9];
    }

    else
    {
      [v24 setFiredDate:v9];
    }

    v27 = [v8 trigger];
    v28 = [v27 isForSnooze];

    if (v28)
    {
      v29 = [v8 trigger];
      v30 = [v29 isForGoToBed];

      if (v30)
      {
        [v24 setBedtimeSnoozeFireDate:0];
      }

      else
      {
        [v24 setSnoozeFireDate:0];
      }
    }

    if (([v24 repeats] & 1) == 0 && (objc_msgSend(v24, "isSleepAlarm") & 1) == 0)
    {
      v31 = MTLogForCategory(3);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v24 alarmID];
        *buf = 138543618;
        v40 = self;
        v41 = 2114;
        v42 = v32;
        _os_log_impl(&dword_1B1F9F000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting non-repeating alarm %{public}@ to disabled", buf, 0x16u);
      }

      [v24 setEnabled:0];
    }

    storage = self->_storage;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __66__MTAlarmScheduler__fireScheduledAlarm_firedDate_completionBlock___block_invoke;
    v36[3] = &unk_1E7B0DD70;
    v36[4] = self;
    v37 = v24;
    v38 = v8;
    v34 = v24;
    [(MTAlarmStorage *)storage updateAlarm:v34 withCompletion:v36 source:self];
  }

  else
  {
    v20 = MTLogForCategory(3);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v8 scheduleable];
      v22 = [v21 identifier];
      *buf = 138543618;
      v40 = self;
      v41 = 2114;
      v42 = v22;
      _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm %{public}@ was supposed to fire but is no longer scheduled", buf, 0x16u);
    }

    v10[2](v10);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __66__MTAlarmScheduler__fireScheduledAlarm_firedDate_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) alarmIDString];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__MTAlarmScheduler__fireScheduledAlarm_firedDate_completionBlock___block_invoke_2;
  v6[3] = &unk_1E7B0CE10;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v2 alarmWithIdentifier:v3 withCompletion:v6];
}

void __66__MTAlarmScheduler__fireScheduledAlarm_firedDate_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 trigger];
  v6 = [MTScheduledObject scheduledObjectForScheduleable:v4 trigger:v5];

  v7 = [*(a1 + 40) delegate];
  [v7 scheduler:*(a1 + 40) didFireAlarm:v6];

  v8 = [*(a1 + 40) serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MTAlarmScheduler__fireScheduledAlarm_firedDate_completionBlock___block_invoke_3;
  v9[3] = &unk_1E7B0C9D8;
  v9[4] = *(a1 + 40);
  [v8 performBlock:v9];
}

void __66__MTAlarmScheduler__fireScheduledAlarm_firedDate_completionBlock___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) scheduledAlarms];
  v3 = [v2 nextScheduledAlertOrNotification];

  if (!v3)
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ no next alarm", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 scheduler:*(a1 + 32) didChangeNextAlarm:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_fireTriggeredAlarmsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = MTNewChildActivityForName(0xAuLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E7B0CA00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

void __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serializer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7B0CA00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performBlock:v4];
}

void __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *buf = 138543618;
    v49 = v3;
    v50 = 2114;
    v51 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduled alarms: %{public}@", buf, 0x16u);
  }

  v5 = (*(*(*(a1 + 32) + 48) + 16))();
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() _intervalToCheckForAlarmsToFireBeforeDate:v5];
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v49 = v9;
    v50 = 2114;
    v51 = v7;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Find notifications with current trigger date in range %{public}@", buf, 0x16u);
  }

  v38 = [MEMORY[0x1E695DF70] array];
  [*(*(a1 + 32) + 24) scheduledObjectsToFireInInterval:v7];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v10 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  v34 = v7;
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    v13 = v42;
    v35 = a1;
    do
    {
      v14 = 0;
      v15 = v5;
      v36 = v11;
      do
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * v14);
        v17 = [v16 trigger];
        v18 = [v17 triggerDate];

        v5 = (*(*(*(a1 + 32) + 48) + 16))();

        v19 = 0.0;
        if ([v5 mtIsBeforeDate:v18])
        {
          v20 = v13;
          [v18 timeIntervalSinceDate:v5];
          v19 = v21;
          v22 = MTLogForCategory(4);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v12;
            v24 = *(a1 + 32);
            v25 = [v16 scheduleable];
            v26 = [v25 identifier];
            *buf = 138543874;
            v49 = v24;
            v12 = v23;
            v50 = 2114;
            v51 = v26;
            v52 = 2048;
            v53 = v19;
            _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm %{public}@ should actually fire in %f seconds", buf, 0x20u);

            a1 = v35;
          }

          v13 = v20;
          v11 = v36;
        }

        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v42[0] = __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_30;
        v42[1] = &unk_1E7B0DD98;
        v42[2] = *(a1 + 32);
        v42[3] = v16;
        v43 = v18;
        v27 = v18;
        v28 = [MTTask taskWithIdentifier:@"com.apple.MTAlarmTask.fire" delay:v41 completableBlock:v19];
        [v38 addObject:v28];

        ++v14;
        v15 = v5;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v11);
  }

  kdebug_trace();
  v30 = *(a1 + 32);
  v29 = *(a1 + 40);
  v31 = *(v30 + 64);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_3;
  v39[3] = &unk_1E7B0CA00;
  v39[4] = v30;
  v40 = v29;
  v32 = [MTTaskGroup taskGroupWithTasks:v38 completionBlock:v39];
  [v31 scheduleTaskGroup:v32];

  v33 = *MEMORY[0x1E69E9840];
}

void __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serializer];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_2_31;
  v6[3] = &unk_1E7B0CC70;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

uint64_t __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_2_31(void *a1)
{
  kdebug_trace();
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _fireScheduledAlarm:v3 firedDate:v4 completionBlock:v5];
}

void __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_4;
  v7 = &unk_1E7B0DDE8;
  v2 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v2;
  v3 = [MTTask taskWithIdentifier:@"com.apple.MTAlarmTask.reschedule" completableBlock:&v4];
  [*(*(a1 + 32) + 64) scheduleTask:{v3, v4, v5, v6, v7, v8}];
}

void __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ fired all alarms.  Rescheduling.", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_34;
  v9[3] = &unk_1E7B0DDC0;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v7 = v3;
  [v6 rescheduleAlarmsWithCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __66__MTAlarmScheduler__queue_fireTriggeredAlarmsWithCompletionBlock___block_invoke_34(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)_lastAlarmTriggerDate
{
  defaults = self->_defaults;
  v3 = [MEMORY[0x1E695DF00] distantPast];
  v4 = [(MTPersistence *)defaults objectForKey:@"MTAlarmLastTriggerDate" defaultValue:v3];

  return v4;
}

- (void)_setLastAlarmTriggerDate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting last alarm trigger date to %{public}@", &v7, 0x16u);
  }

  [(MTPersistence *)self->_defaults setObject:v4 forKey:@"MTAlarmLastTriggerDate"];
  v6 = *MEMORY[0x1E69E9840];
}

- (id)nextScheduledAlarmIncludingBedtimeNotification:(BOOL)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(MTAlarmScheduler *)self serializer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__MTAlarmScheduler_nextScheduledAlarmIncludingBedtimeNotification___block_invoke;
  v10[3] = &unk_1E7B0DE10;
  v12 = &v14;
  v10[4] = self;
  v13 = a3;
  v7 = v5;
  v11 = v7;
  [v6 performBlock:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

intptr_t __67__MTAlarmScheduler_nextScheduledAlarmIncludingBedtimeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nextScheduledAlertIncludingBedtimeNotification:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

- (id)_nextScheduledAlertIncludingBedtimeNotification:(BOOL)a3
{
  scheduledAlarms = self->_scheduledAlarms;
  if (a3)
  {
    [(MTScheduledList *)scheduledAlarms nextScheduledAlertOrNotification];
  }

  else
  {
    [(MTScheduledList *)scheduledAlarms nextScheduledAlert];
  }
  v4 = ;

  return v4;
}

- (id)_nextTriggerDateForScheduling
{
  v2 = [(MTScheduledList *)self->_scheduledAlarms nextScheduledObject];
  v3 = [v2 trigger];
  v4 = [v3 triggerDate];

  return v4;
}

- (void)source:(id)a3 didUpdateAlarms:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 != self)
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ received update of alarms %{public}@.  Rescheduling them.", buf, 0x16u);
    }

    [(MTAlarmScheduler *)self scheduleAlarms:v6];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__MTAlarmScheduler_source_didUpdateAlarms___block_invoke;
  v9[3] = &unk_1E7B0CD98;
  v9[4] = self;
  [v6 na_each:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __43__MTAlarmScheduler_source_didUpdateAlarms___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 snoozeFireDate];

  if (!v4)
  {
    v5 = [*(a1 + 32) notificationCenter];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) notificationCenter];
      v8 = [v3 alarmIDString];
      v9 = [MTUserNotificationCenter _snoozeCountdownIdentifier:v8];
      v12[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v7 dismissNotificationsWithIdentifiers:v10];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didRemoveAlarms:(id)a4
{
  v5 = a4;
  [(MTAlarmScheduler *)self unscheduleAlarms:v5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__MTAlarmScheduler_source_didRemoveAlarms___block_invoke;
  v6[3] = &unk_1E7B0CD98;
  v6[4] = self;
  [v5 na_each:v6];
}

void __43__MTAlarmScheduler_source_didRemoveAlarms___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 notificationCenter];
  [v4 dismissNotificationsForAlarm:v3];
}

- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v25[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(MTAlarmScheduler *)self scheduleAlarms:v11];

    if (a5 != 1)
    {
      v12 = [(MTAlarmScheduler *)self notificationCenter];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = [(MTAlarmScheduler *)self notificationCenter];
        [v14 dismissNotificationsForAlarm:v10 includeSnooze:0];
      }

      v15 = MTLogForCategory(3);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v10;
        _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ posting snooze countdown notification for snoozed alarm %{public}@", &v21, 0x16u);
      }

      v16 = [v10 snoozeFireDate];
      v17 = [MTTrigger triggerWithDate:v16 triggerType:6];
      v18 = [MTScheduledObject scheduledObjectForScheduleable:v10 trigger:v17];

      v19 = [(MTAlarmScheduler *)self notificationCenter];
      [v19 postNotificationForScheduledAlarm:v18 completionBlock:&__block_literal_global_16];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5
{
  v7 = a4;
  v8 = [(MTAlarmScheduler *)self serializer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__MTAlarmScheduler_source_didDismissAlarm_dismissAction___block_invoke;
  v10[3] = &unk_1E7B0CD10;
  v11 = v7;
  v12 = self;
  v13 = a5;
  v9 = v7;
  [v8 performBlock:v10];
}

void __57__MTAlarmScheduler_source_didDismissAlarm_dismissAction___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) notificationCenter];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 40) notificationCenter];
      [v4 dismissNotificationsForAlarm:*(a1 + 32) dismissAction:*(a1 + 48)];
    }
  }
}

- (BOOL)handlesNotification:(id)a3 ofType:(int64_t)a4
{
  if (a4 == 2)
  {
    return [a3 isEqualToString:@"com.apple.MTAlarmScheduler.alarm-event"];
  }

  else
  {
    return 0;
  }
}

- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  kdebug_trace();
  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ handling notification %{public}@", buf, 0x16u);
  }

  v10 = [(MTAlarmScheduler *)self serializer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__MTAlarmScheduler_handleNotification_ofType_completion___block_invoke;
  v13[3] = &unk_1E7B0CA00;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  [v10 performBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __57__MTAlarmScheduler_handleNotification_ofType_completion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__MTAlarmScheduler_handleNotification_ofType_completion___block_invoke_2;
  v2[3] = &unk_1E7B0D6F0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _queue_triggerDidFireForAlarmWithCompletionBlock:v2];
}

uint64_t __57__MTAlarmScheduler_handleNotification_ofType_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)printDiagnostics
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----MTAlarmScheduler-----", &v7, 2u);
  }

  v4 = MTLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MTAlarmScheduler *)self scheduledAlarms];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "Scheduled Alarms: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"Scheduled alarms";
  v2 = MEMORY[0x1E696AD98];
  v3 = [(MTAlarmScheduler *)self scheduledAlarms];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "numberOfScheduledAlerts")}];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (MTAlarmScheduleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end