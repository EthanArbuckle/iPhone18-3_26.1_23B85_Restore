@interface HDHealthAppRestorableAlarmManager
- (BOOL)removeAlarmEventWithIdentifier:(id)a3 error:(id *)a4;
- (HDDaemon)daemon;
- (HDHealthAppRestorableAlarmManager)initWithDaemon:(id)a3;
- (void)_queue_alarm:(id)a3 didReceiveDueEvents:(id)a4;
- (void)_queue_removeAlarmEvent:(id)a3;
- (void)_queue_scheduleAlarmEvent:(id)a3 completion:(id)a4;
- (void)_rescheduleAlarmEvent:(id)a3 dueDate:(id)a4 completion:(id)a5;
- (void)_scheduleAlarmEventWithHandler:(id)a3 dueDate:(id)a4 eventOptions:(unint64_t)a5 completion:(id)a6;
- (void)daemonReady:(id)a3;
- (void)removeAlarmEvent:(id)a3;
- (void)scheduleAlarmEvent:(id)a3 completion:(id)a4;
- (void)setHandlerForAlarmEvent:(id)a3 handler:(id)a4;
@end

@implementation HDHealthAppRestorableAlarmManager

- (HDHealthAppRestorableAlarmManager)initWithDaemon:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HDHealthAppRestorableAlarmManager;
  v5 = [(HDHealthAppRestorableAlarmManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
    v7 = objc_alloc_init(MEMORY[0x277CCDE48]);
    alarmHandlers = v6->_alarmHandlers;
    v6->_alarmHandlers = v7;

    v9 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = objc_alloc(MEMORY[0x277D10838]);
    v12 = [v4 primaryProfile];
    v13 = [v11 initWithProfile:v12 clientIdentifier:@"HDHealthAppDaemonExtension" eventHandlerQueue:v6->_queue];
    scheduler = v6->_scheduler;
    v6->_scheduler = v13;

    WeakRetained = objc_loadWeakRetained(&v6->_daemon);
    [WeakRetained registerForDaemonReady:v6];
  }

  return v6;
}

- (void)daemonReady:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_22939E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] reported daemon ready", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  scheduler = self->_scheduler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HDHealthAppRestorableAlarmManager_daemonReady___block_invoke;
  v9[3] = &unk_2786584E8;
  objc_copyWeak(&v10, buf);
  [(HDRestorableAlarm *)scheduler beginReceivingEventsWithHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __49__HDHealthAppRestorableAlarmManager_daemonReady___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

- (void)_scheduleAlarmEventWithHandler:(id)a3 dueDate:(id)a4 eventOptions:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v14 = [v12 eventIdentifier];
  v13 = [(HDHealthAppRestorableAlarmManager *)self createAlarmEventWithIdentifier:v14 dueDate:v11 eventOptions:a5];

  [(HDHealthAppRestorableAlarmManager *)self setHandlerForAlarmEvent:v13 handler:v12];
  [(HDHealthAppRestorableAlarmManager *)self scheduleAlarmEvent:v13 completion:v10];
}

- (void)setHandlerForAlarmEvent:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDHealthAppRestorableAlarmManager_setHandlerForAlarmEvent_handler___block_invoke;
  block[3] = &unk_278658510;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __69__HDHealthAppRestorableAlarmManager_setHandlerForAlarmEvent_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = [*(a1 + 48) eventIdentifier];
  [v3 addObserver:v2 queue:v4 forKey:v5];
}

- (void)scheduleAlarmEvent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HDHealthAppRestorableAlarmManager_scheduleAlarmEvent_completion___block_invoke;
  block[3] = &unk_278658538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_rescheduleAlarmEvent:(id)a3 dueDate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__HDHealthAppRestorableAlarmManager__rescheduleAlarmEvent_dueDate_completion___block_invoke;
  v15[3] = &unk_278658560;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __78__HDHealthAppRestorableAlarmManager__rescheduleAlarmEvent_dueDate_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_removeAlarmEvent:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) eventIdentifier];
  v4 = [v2 createAlarmEventWithIdentifier:v3 dueDate:*(a1 + 48) eventOptions:{objc_msgSend(*(a1 + 40), "eventOptions")}];

  [*(a1 + 32) _queue_scheduleAlarmEvent:v4 completion:*(a1 + 56)];
}

- (BOOL)removeAlarmEventWithIdentifier:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  scheduler = self->_scheduler;
  v31 = 0;
  v8 = [(HDRestorableAlarm *)scheduler allScheduledEventsWithError:&v31];
  v9 = v31;
  v10 = v9;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8 == 0;
  }

  if (v11)
  {
    v12 = v9;
    if (v10)
    {
      if (a4)
      {
        v13 = v12;
        *a4 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v25 = a4;
    v26 = self;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [v19 eventIdentifier];
          v21 = [v20 isEqualToString:v6];

          if (v21)
          {
            [(HDHealthAppRestorableAlarmManager *)v26 removeAlarmEvent:v19];

            v22 = 1;
            goto LABEL_22;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    [MEMORY[0x277CCA9B8] hk_assignError:v25 code:118 description:@"Scheduled alarm event does not exist"];
  }

  v22 = 0;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)removeAlarmEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDHealthAppRestorableAlarmManager_removeAlarmEvent___block_invoke;
  v7[3] = &unk_278658588;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_queue_alarm:(id)a3 didReceiveDueEvents:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        alarmHandlers = self->_alarmHandlers;
        v12 = [v10 eventIdentifier];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __70__HDHealthAppRestorableAlarmManager__queue_alarm_didReceiveDueEvents___block_invoke;
        v15[3] = &unk_2786585D8;
        v15[4] = v10;
        v15[5] = self;
        [(_HKWeakObserversMap *)alarmHandlers notifyObserversOfKey:v12 handler:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __70__HDHealthAppRestorableAlarmManager__queue_alarm_didReceiveDueEvents___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWellnessDashboard();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v10 description];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handled alarm successfully %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __70__HDHealthAppRestorableAlarmManager__queue_alarm_didReceiveDueEvents___block_invoke_2_cold_1(a1, v5, v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_scheduleAlarmEvent:(id)a3 completion:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  scheduler = self->_scheduler;
  v26[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v19 = 0;
  v10 = [(HDRestorableAlarm *)scheduler scheduleEvents:v9 error:&v19];
  v11 = v19;

  _HKInitializeLogging();
  v12 = HKLogWellnessDashboard();
  v13 = v12;
  if (v10)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v14 = objc_opt_class();
    v15 = v14;
    v16 = [v6 description];
    *buf = 138543618;
    v21 = v14;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_22939E000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduled next alarm %{public}@", buf, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v15 = v18;
    v16 = [v6 eventIdentifier];
    *buf = 138543874;
    v21 = v18;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v11;
    _os_log_error_impl(&dword_22939E000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Error scheduling next alarm %{public}@: %{public}@", buf, 0x20u);
LABEL_4:
  }

LABEL_6:

  if (v7)
  {
    v7[2](v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeAlarmEvent:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  scheduler = self->_scheduler;
  v23[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v16 = 0;
  v7 = [(HDRestorableAlarm *)scheduler removeEvents:v6 error:&v16];
  v8 = v16;

  _HKInitializeLogging();
  v9 = HKLogWellnessDashboard();
  v10 = v9;
  if (!v7)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v15 = objc_opt_class();
    v12 = v15;
    v13 = [v4 eventIdentifier];
    *buf = 138543874;
    v18 = v15;
    v19 = 2114;
    v20 = v13;
    v21 = 2114;
    v22 = v8;
    _os_log_error_impl(&dword_22939E000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error removing alarm %{public}@: %{public}@", buf, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [v4 description];
    *buf = 138543618;
    v18 = v11;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_22939E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removed alarm %{public}@", buf, 0x16u);
LABEL_4:
  }

LABEL_6:

  v14 = *MEMORY[0x277D85DE8];
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

void __70__HDHealthAppRestorableAlarmManager__queue_alarm_didReceiveDueEvents___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v9 = v7;
  v10 = [v8 eventIdentifier];
  v12 = 138543874;
  v13 = v7;
  v14 = 2114;
  v15 = v10;
  v16 = 2114;
  v17 = a2;
  _os_log_error_impl(&dword_22939E000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Alarm Event %{public}@ Handler Error: %{public}@", &v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end