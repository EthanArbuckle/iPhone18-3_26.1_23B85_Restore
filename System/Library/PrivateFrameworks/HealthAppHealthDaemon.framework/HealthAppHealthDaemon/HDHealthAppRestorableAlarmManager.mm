@interface HDHealthAppRestorableAlarmManager
- (BOOL)removeAlarmEventWithIdentifier:(id)identifier error:(id *)error;
- (HDDaemon)daemon;
- (HDHealthAppRestorableAlarmManager)initWithDaemon:(id)daemon;
- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events;
- (void)_queue_removeAlarmEvent:(id)event;
- (void)_queue_scheduleAlarmEvent:(id)event completion:(id)completion;
- (void)_rescheduleAlarmEvent:(id)event dueDate:(id)date completion:(id)completion;
- (void)_scheduleAlarmEventWithHandler:(id)handler dueDate:(id)date eventOptions:(unint64_t)options completion:(id)completion;
- (void)daemonReady:(id)ready;
- (void)removeAlarmEvent:(id)event;
- (void)scheduleAlarmEvent:(id)event completion:(id)completion;
- (void)setHandlerForAlarmEvent:(id)event handler:(id)handler;
@end

@implementation HDHealthAppRestorableAlarmManager

- (HDHealthAppRestorableAlarmManager)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v17.receiver = self;
  v17.super_class = HDHealthAppRestorableAlarmManager;
  v5 = [(HDHealthAppRestorableAlarmManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v7 = objc_alloc_init(MEMORY[0x277CCDE48]);
    alarmHandlers = v6->_alarmHandlers;
    v6->_alarmHandlers = v7;

    v9 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = objc_alloc(MEMORY[0x277D10838]);
    primaryProfile = [daemonCopy primaryProfile];
    v13 = [v11 initWithProfile:primaryProfile clientIdentifier:@"HDHealthAppDaemonExtension" eventHandlerQueue:v6->_queue];
    scheduler = v6->_scheduler;
    v6->_scheduler = v13;

    WeakRetained = objc_loadWeakRetained(&v6->_daemon);
    [WeakRetained registerForDaemonReady:v6];
  }

  return v6;
}

- (void)daemonReady:(id)ready
{
  v13 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
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

- (void)_scheduleAlarmEventWithHandler:(id)handler dueDate:(id)date eventOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  handlerCopy = handler;
  eventIdentifier = [handlerCopy eventIdentifier];
  v13 = [(HDHealthAppRestorableAlarmManager *)self createAlarmEventWithIdentifier:eventIdentifier dueDate:dateCopy eventOptions:options];

  [(HDHealthAppRestorableAlarmManager *)self setHandlerForAlarmEvent:v13 handler:handlerCopy];
  [(HDHealthAppRestorableAlarmManager *)self scheduleAlarmEvent:v13 completion:completionCopy];
}

- (void)setHandlerForAlarmEvent:(id)event handler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDHealthAppRestorableAlarmManager_setHandlerForAlarmEvent_handler___block_invoke;
  block[3] = &unk_278658510;
  block[4] = self;
  v12 = handlerCopy;
  v13 = eventCopy;
  v9 = eventCopy;
  v10 = handlerCopy;
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

- (void)scheduleAlarmEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HDHealthAppRestorableAlarmManager_scheduleAlarmEvent_completion___block_invoke;
  block[3] = &unk_278658538;
  block[4] = self;
  v12 = eventCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

- (void)_rescheduleAlarmEvent:(id)event dueDate:(id)date completion:(id)completion
{
  eventCopy = event;
  dateCopy = date;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__HDHealthAppRestorableAlarmManager__rescheduleAlarmEvent_dueDate_completion___block_invoke;
  v15[3] = &unk_278658560;
  v15[4] = self;
  v16 = eventCopy;
  v17 = dateCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dateCopy;
  v14 = eventCopy;
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

- (BOOL)removeAlarmEventWithIdentifier:(id)identifier error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    errorCopy = error;
    selfCopy = self;
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
          eventIdentifier = [v19 eventIdentifier];
          v21 = [eventIdentifier isEqualToString:identifierCopy];

          if (v21)
          {
            [(HDHealthAppRestorableAlarmManager *)selfCopy removeAlarmEvent:v19];

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

    [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:118 description:@"Scheduled alarm event does not exist"];
  }

  v22 = 0;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)removeAlarmEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDHealthAppRestorableAlarmManager_removeAlarmEvent___block_invoke;
  v7[3] = &unk_278658588;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events
{
  v21 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dispatch_assert_queue_V2(self->_queue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = eventsCopy;
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
        eventIdentifier = [v10 eventIdentifier];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __70__HDHealthAppRestorableAlarmManager__queue_alarm_didReceiveDueEvents___block_invoke;
        v15[3] = &unk_2786585D8;
        v15[4] = v10;
        v15[5] = self;
        [(_HKWeakObserversMap *)alarmHandlers notifyObserversOfKey:eventIdentifier handler:v15];
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

- (void)_queue_scheduleAlarmEvent:(id)event completion:(id)completion
{
  v26[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  scheduler = self->_scheduler;
  v26[0] = eventCopy;
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
    eventIdentifier = [eventCopy description];
    *buf = 138543618;
    v21 = v14;
    v22 = 2114;
    v23 = eventIdentifier;
    _os_log_impl(&dword_22939E000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduled next alarm %{public}@", buf, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v15 = v18;
    eventIdentifier = [eventCopy eventIdentifier];
    *buf = 138543874;
    v21 = v18;
    v22 = 2114;
    v23 = eventIdentifier;
    v24 = 2114;
    v25 = v11;
    _os_log_error_impl(&dword_22939E000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Error scheduling next alarm %{public}@: %{public}@", buf, 0x20u);
LABEL_4:
  }

LABEL_6:

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeAlarmEvent:(id)event
{
  v23[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  scheduler = self->_scheduler;
  v23[0] = eventCopy;
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
    eventIdentifier = [eventCopy eventIdentifier];
    *buf = 138543874;
    v18 = v15;
    v19 = 2114;
    v20 = eventIdentifier;
    v21 = 2114;
    v22 = v8;
    _os_log_error_impl(&dword_22939E000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error removing alarm %{public}@: %{public}@", buf, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    eventIdentifier = [eventCopy description];
    *buf = 138543618;
    v18 = v11;
    v19 = 2114;
    v20 = eventIdentifier;
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