@interface HDXPCAlarmScheduler
- (HDXPCAlarmScheduler)init;
- (id)diagnosticDescription;
- (void)_queue_handleEvent:(id)event;
- (void)_queue_handleXPCEvent:(id)event;
- (void)_queue_notifyAlarmsOfPendingEvents;
- (void)_queue_scheduleEvent:(id)event;
- (void)_queue_unscheduleEventWithName:(id)name;
- (void)addAlarm:(id)alarm;
- (void)dealloc;
- (void)removeAlarm:(id)alarm;
- (void)scheduleEvent:(id)event;
- (void)unittest_fireEvent:(id)event;
- (void)unscheduleEventWithName:(id)name;
@end

@implementation HDXPCAlarmScheduler

- (HDXPCAlarmScheduler)init
{
  v17.receiver = self;
  v17.super_class = HDXPCAlarmScheduler;
  v2 = [(HDXPCAlarmScheduler *)&v17 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    alarms = v2->_alarms;
    v2->_alarms = strongToWeakObjectsMapTable;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingEvents = v2->_pendingEvents;
    v2->_pendingEvents = v5;

    v7 = HKCreateSerialDispatchQueue();
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = +[HDDiagnosticManager sharedDiagnosticManager];
    [v9 addObject:v2];

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    schedulesXPCAlarms = [mEMORY[0x277CCDD30] schedulesXPCAlarms];

    if (schedulesXPCAlarms)
    {
      objc_initWeak(&location, v2);
      v12 = v2->_queue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __27__HDXPCAlarmScheduler_init__block_invoke;
      v14[3] = &unk_2796BD8A0;
      objc_copyWeak(&v15, &location);
      hd_xpc_set_event_stream_handler(v2, "com.apple.alarm", v12, v14);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

void __27__HDXPCAlarmScheduler_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_handleXPCEvent:v3];
}

- (void)dealloc
{
  hd_xpc_remove_event_stream_handlers(0);
  v3.receiver = self;
  v3.super_class = HDXPCAlarmScheduler;
  [(HDXPCAlarmScheduler *)&v3 dealloc];
}

- (void)_queue_handleXPCEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  string = xpc_dictionary_get_string(eventCopy, *MEMORY[0x277D86430]);
  date = [MEMORY[0x277CBEAA8] date];
  xpc_set_event();
  _HKInitializeLogging();
  v7 = HKLogInfrastructure();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    [date timeIntervalSince1970];
    v14 = 138543874;
    v15 = v8;
    v16 = 2082;
    v17 = string;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_25156C000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received XPC alarm event with name: %{public}s date: %{time_t}ld", &v14, 0x20u);
  }

  if (string)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v12 = [[HDXPCAlarmEvent alloc] initWithName:v11 fireDate:date isUserVisible:xpc_dictionary_get_BOOL(eventCopy, "UserVisible")];
    [(HDXPCAlarmScheduler *)self _queue_handleEvent:v12];
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogInfrastructure();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(HDXPCAlarmScheduler *)self _queue_handleXPCEvent:v11];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_scheduleEvent:(id)event
{
  queue = self->_queue;
  eventCopy = event;
  dispatch_assert_queue_V2(queue);
  xdict = xpc_dictionary_create(0, 0, 0);
  fireDate = [eventCopy fireDate];
  xpc_dictionary_set_date(xdict, "Date", [fireDate hk_nanosecondsSince1970]);

  xpc_dictionary_set_BOOL(xdict, "UserVisible", [eventCopy isUserVisible]);
  name = [eventCopy name];

  [name UTF8String];
  xpc_set_event();
}

- (void)_queue_unscheduleEventWithName:(id)name
{
  queue = self->_queue;
  nameCopy = name;
  dispatch_assert_queue_V2(queue);
  [nameCopy UTF8String];
  xpc_set_event();
  pendingEvents = self->_pendingEvents;
  v7 = [HDXPCAlarmEvent _eventWithName:nameCopy];

  [(NSMutableSet *)pendingEvents removeObject:v7];
}

- (void)unittest_fireEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HDXPCAlarmScheduler_unittest_fireEvent___block_invoke;
  v7[3] = &unk_2796BDA28;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_sync(queue, v7);
}

- (void)_queue_handleEvent:(id)event
{
  queue = self->_queue;
  eventCopy = event;
  dispatch_assert_queue_V2(queue);
  [(NSMutableSet *)self->_pendingEvents addObject:eventCopy];

  [(HDXPCAlarmScheduler *)self _queue_notifyAlarmsOfPendingEvents];
}

- (void)_queue_notifyAlarmsOfPendingEvents
{
  v34 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_pendingEvents;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    *&v5 = 138543618;
    v21 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        alarms = self->_alarms;
        name = [v9 name];
        v12 = [(NSMapTable *)alarms objectForKey:name];

        _HKInitializeLogging();
        v13 = HKLogInfrastructure();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            v15 = objc_opt_class();
            *buf = 138543874;
            v28 = v15;
            v29 = 2114;
            v30 = v12;
            v31 = 2114;
            v32 = v9;
            v16 = v15;
            _os_log_impl(&dword_25156C000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying alarm %{public}@ of event: %{public}@", buf, 0x20u);
          }

          [v12 eventDidFire:v9];
        }

        else
        {
          if (v14)
          {
            v17 = objc_opt_class();
            *buf = v21;
            v28 = v17;
            v29 = 2114;
            v30 = v9;
            v18 = v17;
            _os_log_impl(&dword_25156C000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] no registered alarm for event: %{public}@", buf, 0x16u);
          }

          [(NSMutableSet *)v22 addObject:v9];
        }
      }

      v6 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v6);
  }

  pendingEvents = self->_pendingEvents;
  self->_pendingEvents = v22;

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addAlarm:(id)alarm
{
  alarmCopy = alarm;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__HDXPCAlarmScheduler_addAlarm___block_invoke;
  v7[3] = &unk_2796BDA28;
  v7[4] = self;
  v8 = alarmCopy;
  v6 = alarmCopy;
  dispatch_sync(queue, v7);
}

uint64_t __32__HDXPCAlarmScheduler_addAlarm___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v12 = 138543618;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    v6 = v4;
    _os_log_impl(&dword_25156C000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] adding alarm %{public}@", &v12, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  v9 = [v7 eventName];
  [v8 setObject:v7 forKey:v9];

  result = [*(a1 + 32) _queue_notifyAlarmsOfPendingEvents];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeAlarm:(id)alarm
{
  alarmCopy = alarm;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HDXPCAlarmScheduler_removeAlarm___block_invoke;
  v7[3] = &unk_2796BDA28;
  v7[4] = self;
  v8 = alarmCopy;
  v6 = alarmCopy;
  dispatch_sync(queue, v7);
}

void __35__HDXPCAlarmScheduler_removeAlarm___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v6 = v4;
    _os_log_impl(&dword_25156C000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing alarm %{public}@", &v11, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  v9 = [v7 eventName];
  [v8 removeObjectForKey:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)scheduleEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HDXPCAlarmScheduler_scheduleEvent___block_invoke;
  v7[3] = &unk_2796BDA28;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_sync(queue, v7);
}

uint64_t __37__HDXPCAlarmScheduler_scheduleEvent___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    v6 = v4;
    _os_log_impl(&dword_25156C000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] scheduling event: %{public}@", &v9, 0x16u);
  }

  result = [*(a1 + 32) _queue_scheduleEvent:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)unscheduleEventWithName:(id)name
{
  nameCopy = name;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HDXPCAlarmScheduler_unscheduleEventWithName___block_invoke;
  v7[3] = &unk_2796BDA28;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(queue, v7);
}

uint64_t __47__HDXPCAlarmScheduler_unscheduleEventWithName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    v6 = v4;
    _os_log_impl(&dword_25156C000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] unscheduling event: %{public}@", &v9, 0x16u);
  }

  result = [*(a1 + 32) _queue_unscheduleEventWithName:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)diagnosticDescription
{
  dispatch_assert_queue_not_V2(self->_queue);
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%p", objc_opt_class(), self];
  [array addObject:v4];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDXPCAlarmScheduler_diagnosticDescription__block_invoke;
  block[3] = &unk_2796BDA28;
  v10 = array;
  selfCopy = self;
  v6 = array;
  dispatch_sync(queue, block);
  v7 = [v6 componentsJoinedByString:@"\n"];

  return v7;
}

void __44__HDXPCAlarmScheduler_diagnosticDescription__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addObject:@"\tAlarms"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(*(a1 + 40) + 8);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = MEMORY[0x277CCACA8];
        v8 = *(a1 + 32);
        v9 = [*(*(a1 + 40) + 8) objectForKey:*(*(&v23 + 1) + 8 * v6)];
        v10 = [v7 stringWithFormat:@"\t\t%@", v9];
        [v8 addObject:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) addObject:@"\tPending Events"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = *(*(a1 + 40) + 16);
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(a1 + 32);
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t\t%@", *(*(&v19 + 1) + 8 * v15)];
        [v16 addObject:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleXPCEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138543362;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_25156C000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring XPC alarm event with NULL event name", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end