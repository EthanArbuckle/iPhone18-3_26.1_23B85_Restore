@interface MTTimerScheduler
+ (id)_intervalToCheckForTimersToFireBeforeDate:(id)date;
- (BOOL)handlesNotification:(id)notification ofType:(int64_t)type;
- (MTTimerScheduler)initWithStorage:(id)storage notificationCenter:(id)center;
- (MTTimerScheduler)initWithStorage:(id)storage notificationCenter:(id)center scheduler:(id)scheduler defaults:(id)defaults;
- (MTTimerScheduler)initWithStorage:(id)storage notificationCenter:(id)center scheduler:(id)scheduler defaults:(id)defaults schedulingDelegate:(id)delegate taskScheduler:(id)taskScheduler currentDateProvider:(id)provider;
- (MTTimerSchedulerDelegate)delegate;
- (id)_queue_lastTimerTriggerDate;
- (id)_queue_nextTimer;
- (id)gatherDiagnostics;
- (id)nextTimer;
- (id)nextTriggerDate;
- (void)_fireScheduledTimer:(id)timer firedDate:(id)date completionBlock:(id)block;
- (void)_queue_fireTriggeredTimersWithCompletionBlock:(id)block;
- (void)_queue_rescheduleTimersWithCompletion:(id)completion;
- (void)_queue_scheduleTimers:(id)timers withCompletion:(id)completion;
- (void)_queue_setLastTimerTriggerDate:(id)date;
- (void)_queue_triggerDidFireForTimerWithCompletionBlock:(id)block;
- (void)_queue_unregisterTimer;
- (void)_queue_unscheduleTimers:(id)timers;
- (void)_queue_updatePersistentTimerForNextTimerWithCompletion:(id)completion;
- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion;
- (void)printDiagnostics;
- (void)rescheduleTimersWithCompletion:(id)completion;
- (void)scheduleTimers:(id)timers;
- (void)scheduledListDidChange:(id)change withCompletion:(id)completion;
- (void)source:(id)source didDismissTimer:(id)timer;
- (void)unscheduleTimers:(id)timers;
@end

@implementation MTTimerScheduler

- (id)nextTimer
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__15;
  v15 = __Block_byref_object_dispose__15;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  serializer = [(MTTimerScheduler *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__MTTimerScheduler_nextTimer__block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [serializer performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __29__MTTimerScheduler_nextTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_nextTimer];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

- (id)_queue_nextTimer
{
  _queue_nextScheduledTimer = [(MTTimerScheduler *)self _queue_nextScheduledTimer];
  scheduleable = [_queue_nextScheduledTimer scheduleable];

  return scheduleable;
}

- (MTTimerScheduler)initWithStorage:(id)storage notificationCenter:(id)center
{
  centerCopy = center;
  storageCopy = storage;
  v8 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTTimerScheduler.access-queue", +[MTScheduler defaultPriority]);
  v9 = +[MTUserDefaults sharedUserDefaults];
  v10 = [(MTTimerScheduler *)self initWithStorage:storageCopy notificationCenter:centerCopy scheduler:v8 defaults:v9];

  return v10;
}

- (MTTimerScheduler)initWithStorage:(id)storage notificationCenter:(id)center scheduler:(id)scheduler defaults:(id)defaults
{
  defaultsCopy = defaults;
  schedulerCopy = scheduler;
  centerCopy = center;
  storageCopy = storage;
  v14 = [MTXPCScheduler xpcSchedulerWithEvent:@"com.apple.MTTimerScheduler.timer-event"];
  v15 = objc_opt_new();
  v16 = MTCurrentDateProvider();
  v17 = [(MTTimerScheduler *)self initWithStorage:storageCopy notificationCenter:centerCopy scheduler:schedulerCopy defaults:defaultsCopy schedulingDelegate:v14 taskScheduler:v15 currentDateProvider:v16];

  return v17;
}

- (MTTimerScheduler)initWithStorage:(id)storage notificationCenter:(id)center scheduler:(id)scheduler defaults:(id)defaults schedulingDelegate:(id)delegate taskScheduler:(id)taskScheduler currentDateProvider:(id)provider
{
  v34 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  centerCopy = center;
  schedulerCopy = scheduler;
  defaultsCopy = defaults;
  delegateCopy = delegate;
  taskSchedulerCopy = taskScheduler;
  providerCopy = provider;
  v31.receiver = self;
  v31.super_class = MTTimerScheduler;
  v18 = [(MTTimerScheduler *)&v31 init];
  if (v18)
  {
    v19 = MTLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v18;
      _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    v20 = [providerCopy copy];
    currentDateProvider = v18->_currentDateProvider;
    v18->_currentDateProvider = v20;

    objc_storeStrong(&v18->_schedulingDelegate, delegate);
    objc_storeStrong(&v18->_taskScheduler, taskScheduler);
    objc_storeStrong(&v18->_notificationCenter, center);
    objc_storeStrong(&v18->_defaults, defaults);
    objc_storeStrong(&v18->_storage, storage);
    [(MTTimerStorage *)v18->_storage registerObserver:v18];
    v22 = [[MTScheduledList alloc] initWithDelegate:v18];
    scheduledTimers = v18->_scheduledTimers;
    v18->_scheduledTimers = v22;

    objc_storeStrong(&v18->_serializer, scheduler);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)nextTriggerDate
{
  _queue_nextScheduledTimer = [(MTTimerScheduler *)self _queue_nextScheduledTimer];
  trigger = [_queue_nextScheduledTimer trigger];
  triggerDate = [trigger triggerDate];

  return triggerDate;
}

- (void)rescheduleTimersWithCompletion:(id)completion
{
  completionCopy = completion;
  serializer = [(MTTimerScheduler *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MTTimerScheduler_rescheduleTimersWithCompletion___block_invoke;
  v7[3] = &unk_1E7B0CA00;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [serializer performBlock:v7];
}

- (void)_queue_rescheduleTimersWithCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  kdebug_trace();
  storage = [(MTTimerScheduler *)self storage];
  timers = [storage timers];

  v7 = MTLogForCategory(4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2050;
    v15 = [timers count];
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ rescheduling %{public}ld timers", buf, 0x16u);
  }

  [(MTScheduledList *)self->_scheduledTimers reset];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__MTTimerScheduler__queue_rescheduleTimersWithCompletion___block_invoke;
  v10[3] = &unk_1E7B0D6F0;
  v11 = completionCopy;
  v8 = completionCopy;
  [(MTTimerScheduler *)self _queue_scheduleTimers:timers withCompletion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __58__MTTimerScheduler__queue_rescheduleTimersWithCompletion___block_invoke(uint64_t a1)
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

- (void)scheduleTimers:(id)timers
{
  timersCopy = timers;
  serializer = [(MTTimerScheduler *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MTTimerScheduler_scheduleTimers___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = timersCopy;
  v6 = timersCopy;
  [serializer performBlock:v7];
}

- (void)unscheduleTimers:(id)timers
{
  timersCopy = timers;
  serializer = [(MTTimerScheduler *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MTTimerScheduler_unscheduleTimers___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = timersCopy;
  v6 = timersCopy;
  [serializer performBlock:v7];
}

- (void)_queue_scheduleTimers:(id)timers withCompletion:(id)completion
{
  v61 = *MEMORY[0x1E69E9840];
  timersCopy = timers;
  completionCopy = completion;
  v8 = (*(self->_currentDateProvider + 2))();
  selfCopy = self;
  _queue_lastTimerTriggerDate = [(MTTimerScheduler *)self _queue_lastTimerTriggerDate];
  v10 = [v8 dateByAddingTimeInterval:-900.0];
  v44 = _queue_lastTimerTriggerDate;
  v45 = v8;
  v42 = completionCopy;
  v43 = v10;
  if ([_queue_lastTimerTriggerDate mtIsBeforeOrSameAsDate:v10])
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v59 = 1024;
      *v60 = 15;
      *&v60[4] = 2114;
      *&v60[6] = v10;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ fired last timer more than %d minutes ago.  Seeing if we have to fire any timers we missed since %{public}@", buf, 0x1Cu);
    }

    v12 = v10;
LABEL_12:
    v16 = v12;
    goto LABEL_13;
  }

  v13 = [_queue_lastTimerTriggerDate mtIsAfterDate:v8];
  v14 = MTLogForCategory(4);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      *buf = 138543874;
      selfCopy2 = selfCopy;
      v59 = 1024;
      *v60 = 15;
      *&v60[4] = 2114;
      *&v60[6] = _queue_lastTimerTriggerDate;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ fired last timer less than %d minutes ago.  Seeing if we have to fire any timers we missed since %{public}@", buf, 0x1Cu);
    }

    v12 = _queue_lastTimerTriggerDate;
    goto LABEL_12;
  }

  if (v15)
  {
    *buf = 138543362;
    selfCopy2 = selfCopy;
    _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ the last timer fire date is ahead of the current date (probably because we went back in time).", buf, 0xCu);
  }

  v16 = v8;
  [(MTTimerScheduler *)selfCopy _queue_setLastTimerTriggerDate:v16];
LABEL_13:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v17 = timersCopy;
  v18 = [v17 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v53;
    v21 = 0x1E7B0B000uLL;
    do
    {
      v22 = 0;
      v46 = v19;
      do
      {
        if (*v53 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v52 + 1) + 8 * v22);
        if ([v23 state] == 3)
        {
          v24 = *(v21 + 2912);
          v25 = objc_opt_class();
          fireTime = [v23 fireTime];
          if (fireTime)
          {
            if (objc_opt_isKindOfClass())
            {
              v27 = fireTime;
            }

            else
            {
              v27 = 0;
            }

            v28 = v27;
            if (!v28)
            {
              [MTTimerScheduler _queue_scheduleTimers:fireTime withCompletion:v25];
            }
          }

          else
          {
            v28 = 0;
          }

          date = [v28 date];
          if (([date mtIsBeforeDate:v16] & 1) == 0)
          {

            goto LABEL_32;
          }

          v30 = [v23 mutableCopy];
          v31 = MTLogForCategory(4);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            [v30 timerID];
            v32 = v20;
            v33 = v17;
            v34 = v16;
            v36 = v35 = v21;
            *buf = 138543618;
            selfCopy2 = selfCopy;
            v59 = 2114;
            *v60 = v36;
            _os_log_impl(&dword_1B1F9F000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting really old running timer %{public}@ to stopped", buf, 0x16u);

            v21 = v35;
            v16 = v34;
            v17 = v33;
            v20 = v32;
            v19 = v46;
          }

          [v30 setState:1];
          if (v30)
          {
            [(MTTimerStorage *)selfCopy->_storage updateTimer:v30 withCompletion:0 source:?];
            v28 = v30;
LABEL_32:
          }
        }

        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v19);
  }

  v37 = MTNewChildActivityForName(0x11uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MTTimerScheduler__queue_scheduleTimers_withCompletion___block_invoke;
  block[3] = &unk_1E7B0CC70;
  block[4] = selfCopy;
  v49 = v17;
  v50 = v16;
  v51 = v42;
  v38 = v17;
  v39 = v16;
  v40 = v42;
  os_activity_apply(v37, block);

  v41 = *MEMORY[0x1E69E9840];
}

void __57__MTTimerScheduler__queue_scheduleTimers_withCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    v10 = 138543618;
    v11 = v3;
    v12 = 2050;
    v13 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}lu timers", &v10, 0x16u);
  }

  v5 = [*(a1 + 32) scheduledTimers];
  [v5 schedule:*(a1 + 40) afterDate:*(a1 + 48) withCompletion:*(a1 + 56)];

  v6 = MTLogForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduled timers: %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_queue_unscheduleTimers:(id)timers
{
  timersCopy = timers;
  v5 = MTNewChildActivityForName(0x11uLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MTTimerScheduler__queue_unscheduleTimers___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = timersCopy;
  v6 = timersCopy;
  os_activity_apply(v5, v7);
}

void __44__MTTimerScheduler__queue_unscheduleTimers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) count];
    v10 = 138543618;
    v11 = v3;
    v12 = 2050;
    v13 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ unscheduling %{public}lu timers", &v10, 0x16u);
  }

  v5 = [*(a1 + 32) scheduledTimers];
  [v5 unschedule:*(a1 + 40)];

  v6 = MTLogForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduled timers: %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)scheduledListDidChange:(id)change withCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__MTTimerScheduler_scheduledListDidChange_withCompletion___block_invoke;
  v16[3] = &unk_1E7B0D6F0;
  v17 = completionCopy;
  v6 = completionCopy;
  [(MTTimerScheduler *)self _queue_updatePersistentTimerForNextTimerWithCompletion:v16];
  scheduledTimers = [(MTTimerScheduler *)self scheduledTimers];
  nextScheduledAlertOrNotification = [scheduledTimers nextScheduledAlertOrNotification];

  v9 = MTLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    scheduleable = [nextScheduledAlertOrNotification scheduleable];
    identifier = [scheduleable identifier];
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = identifier;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ next timer changed: %{public}@", buf, 0x16u);
  }

  v12 = MTLogForCategory(9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_INFO, "MTTimerScheduler - Changing Next Timer", buf, 2u);
  }

  delegate = [(MTTimerScheduler *)self delegate];
  scheduleable2 = [nextScheduledAlertOrNotification scheduleable];
  [delegate scheduler:self didChangeNextTimer:scheduleable2];

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __58__MTTimerScheduler_scheduledListDidChange_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_queue_updatePersistentTimerForNextTimerWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    scheduledTimers = [(MTTimerScheduler *)self scheduledTimers];
    *buf = 138543618;
    selfCopy5 = self;
    v22 = 2050;
    v23 = COERCE_DOUBLE([scheduledTimers numberOfScheduledAlertsAndNotifications]);
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating persistent timer for %{public}ld scheduled timers", buf, 0x16u);
  }

  nextTriggerDate = [(MTTimerScheduler *)self nextTriggerDate];
  [nextTriggerDate dateByAddingTimeInterval:-10.0];
  v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v8 == 0.0)
  {
    [(MTTimerScheduler *)self _queue_unregisterTimer];
    if (!completionCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v9 = MTLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduling persistent timer for next timer at %{public}@", buf, 0x16u);
  }

  v10 = (*(self->_currentDateProvider + 2))();
  [*&v8 timeIntervalSinceDate:v10];
  v12 = v11;

  if (v12 <= 0.0)
  {
    v16 = MTLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer should have fired. Triggering it now", buf, 0xCu);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__MTTimerScheduler__queue_updatePersistentTimerForNextTimerWithCompletion___block_invoke;
    v18[3] = &unk_1E7B0D6F0;
    v19 = completionCopy;
    [(MTTimerScheduler *)self _queue_fireTriggeredTimersWithCompletionBlock:v18];

    goto LABEL_20;
  }

  v13 = MTLogForCategory(4);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12 <= 60.0)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    *buf = 138543618;
    selfCopy5 = self;
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
    selfCopy5 = self;
    v22 = 2048;
    v23 = v12 / 60.0;
    v15 = "%{public}@ Timer will fire %f minutes from now";
  }

  _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
LABEL_18:

  kdebug_trace();
  [(MTSchedulingDelegate *)self->_schedulingDelegate scheduleTimerForSeconds:v12];
  kdebug_trace();
  if (completionCopy)
  {
LABEL_19:
    completionCopy[2](completionCopy);
  }

LABEL_20:

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __75__MTTimerScheduler__queue_updatePersistentTimerForNextTimerWithCompletion___block_invoke(uint64_t a1)
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
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Unscheduling persistent timer.", &v5, 0xCu);
  }

  [(MTSchedulingDelegate *)self->_schedulingDelegate unscheduleTimer];
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)_intervalToCheckForTimersToFireBeforeDate:(id)date
{
  dateCopy = date;
  v4 = [dateCopy dateByAddingTimeInterval:10.0];
  v5 = [dateCopy dateByAddingTimeInterval:-900.0];

  v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v4];

  return v6;
}

- (void)_queue_triggerDidFireForTimerWithCompletionBlock:(id)block
{
  v9 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer timer fired", &v7, 0xCu);
  }

  [(MTTimerScheduler *)self _queue_unregisterTimer];
  [(MTTimerScheduler *)self _queue_fireTriggeredTimersWithCompletionBlock:blockCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_fireScheduledTimer:(id)timer firedDate:(id)date completionBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  dateCopy = date;
  scheduledTimers = self->_scheduledTimers;
  blockCopy = block;
  if ([(MTScheduledList *)scheduledTimers isScheduled:timerCopy])
  {
    v12 = MTLogForCategory(9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_INFO, "MTTimerScheduler - Firing Timer", buf, 2u);
    }

    [(MTScheduledList *)self->_scheduledTimers _unscheduleObject:timerCopy];
    [(MTNotificationCenter *)self->_notificationCenter postNotificationForScheduledTimer:timerCopy completionBlock:blockCopy];

    [(MTTimerScheduler *)self _queue_setLastTimerTriggerDate:dateCopy];
    scheduleable = [timerCopy scheduleable];
    v14 = [scheduleable timerByUpdatingWithState:1];
    v15 = [v14 mutableCopy];

    [v15 setFiredDate:dateCopy];
    storage = [(MTTimerScheduler *)self storage];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __66__MTTimerScheduler__fireScheduledTimer_firedDate_completionBlock___block_invoke;
    v21[3] = &unk_1E7B0DD70;
    v22 = v15;
    v23 = timerCopy;
    selfCopy = self;
    blockCopy = v15;
    [storage updateTimer:blockCopy withCompletion:v21 source:self];
  }

  else
  {
    v17 = MTLogForCategory(4);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      scheduleable2 = [timerCopy scheduleable];
      identifier = [scheduleable2 identifier];
      *buf = 138543618;
      selfCopy2 = self;
      v27 = 2114;
      v28 = identifier;
      _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer %{public}@ was supposed to fire but is no longer scheduled", buf, 0x16u);
    }

    blockCopy[2](blockCopy);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __66__MTTimerScheduler__fireScheduledTimer_firedDate_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) trigger];
  v4 = [MTScheduledObject scheduledObjectForScheduleable:v2 trigger:v3];

  v5 = [*(a1 + 48) delegate];
  [v5 scheduler:*(a1 + 48) didFireTimer:v4];

  v6 = [*(a1 + 48) serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MTTimerScheduler__fireScheduledTimer_firedDate_completionBlock___block_invoke_2;
  v7[3] = &unk_1E7B0C9D8;
  v7[4] = *(a1 + 48);
  [v6 performBlock:v7];
}

void __66__MTTimerScheduler__fireScheduledTimer_firedDate_completionBlock___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) scheduledTimers];
  v3 = [v2 nextScheduledAlertOrNotification];

  if (!v3)
  {
    v4 = MTLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ no next timer", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 scheduler:*(a1 + 32) didChangeNextTimer:0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_fireTriggeredTimersWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = MTNewChildActivityForName(0x12uLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E7B0CA00;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  os_activity_apply(v5, v7);
}

void __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serializer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7B0CA00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performBlock:v4];
}

void __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *buf = 138543618;
    v49 = v3;
    v50 = 2114;
    v51 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduled timers: %{public}@", buf, 0x16u);
  }

  v5 = (*(*(*(a1 + 32) + 48) + 16))();
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() _intervalToCheckForTimersToFireBeforeDate:v5];
  v8 = MTLogForCategory(4);
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
  [*(*(a1 + 32) + 32) scheduledObjectsToFireInInterval:v7];
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
            _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer %{public}@ should actually fire in %f seconds", buf, 0x20u);

            a1 = v35;
          }

          v13 = v20;
          v11 = v36;
        }

        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v42[0] = __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_24;
        v42[1] = &unk_1E7B0DD98;
        v42[2] = *(a1 + 32);
        v42[3] = v16;
        v43 = v18;
        v27 = v18;
        v28 = [MTTask taskWithIdentifier:@"com.apple.MTTimerTask.fire" delay:v41 completableBlock:v19];
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
  v39[2] = __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_3;
  v39[3] = &unk_1E7B0CA00;
  v39[4] = v30;
  v40 = v29;
  v32 = [MTTaskGroup taskGroupWithTasks:v38 completionBlock:v39];
  [v31 scheduleTaskGroup:v32];

  v33 = *MEMORY[0x1E69E9840];
}

void __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = [*(a1 + 32) serializer];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_2_25;
  v6[3] = &unk_1E7B0CC70;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

void __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_4;
  v7 = &unk_1E7B0DDE8;
  v2 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v2;
  v3 = [MTTask taskWithIdentifier:@"com.apple.MTTimerTask.reschedule" completableBlock:&v4];
  [*(*(a1 + 32) + 64) scheduleTask:{v3, v4, v5, v6, v7, v8}];
}

void __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ fired all timers.  Rescheduling.", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_28;
  v9[3] = &unk_1E7B0DDC0;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v7 = v3;
  [v6 rescheduleTimersWithCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __66__MTTimerScheduler__queue_fireTriggeredTimersWithCompletionBlock___block_invoke_28(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)_queue_lastTimerTriggerDate
{
  defaults = self->_defaults;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v4 = [(MTPersistence *)defaults objectForKey:@"MTTimerLastTriggerDate" defaultValue:distantPast];

  return v4;
}

- (void)_queue_setLastTimerTriggerDate:(id)date
{
  v11 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting last timer trigger date to %{public}@", &v7, 0x16u);
  }

  [(MTPersistence *)self->_defaults setObject:dateCopy forKey:@"MTTimerLastTriggerDate"];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)printDiagnostics
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----MTTimerScheduler-----", &v7, 2u);
  }

  v4 = MTLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    scheduledTimers = [(MTTimerScheduler *)self scheduledTimers];
    v7 = 138543362;
    v8 = scheduledTimers;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "Scheduled Timers: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"Scheduled timers";
  v2 = MEMORY[0x1E696AD98];
  scheduledTimers = [(MTTimerScheduler *)self scheduledTimers];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(scheduledTimers, "numberOfScheduledAlerts")}];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)handlesNotification:(id)notification ofType:(int64_t)type
{
  if (type == 2)
  {
    return [notification isEqualToString:@"com.apple.MTTimerScheduler.timer-event"];
  }

  else
  {
    return 0;
  }
}

- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  kdebug_trace();
  serializer = [(MTTimerScheduler *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MTTimerScheduler_handleNotification_ofType_completion___block_invoke;
  v9[3] = &unk_1E7B0CA00;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [serializer performBlock:v9];
}

void __57__MTTimerScheduler_handleNotification_ofType_completion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__MTTimerScheduler_handleNotification_ofType_completion___block_invoke_2;
  v2[3] = &unk_1E7B0D6F0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _queue_triggerDidFireForTimerWithCompletionBlock:v2];
}

uint64_t __57__MTTimerScheduler_handleNotification_ofType_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)source:(id)source didDismissTimer:(id)timer
{
  timerCopy = timer;
  serializer = [(MTTimerScheduler *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__MTTimerScheduler_source_didDismissTimer___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = timerCopy;
  selfCopy = self;
  v7 = timerCopy;
  [serializer performBlock:v8];
}

uint64_t __43__MTTimerScheduler_source_didDismissTimer___block_invoke(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = *(*(result + 40) + 24);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = MTLogForCategory(4);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v1 + 32);
        v4 = *(v1 + 40);
        v7 = 138543618;
        v8 = v4;
        v9 = 2114;
        v10 = v5;
        _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Dismissing notifications for timer: %{public}@", &v7, 0x16u);
      }

      result = [*(*(v1 + 40) + 24) dismissNotificationsForTimer:*(v1 + 32)];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (MTTimerSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_scheduleTimers:(uint64_t)a1 withCompletion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
  [v3 handleFailureInFunction:v4 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", a2, objc_opt_class()}];
}

@end