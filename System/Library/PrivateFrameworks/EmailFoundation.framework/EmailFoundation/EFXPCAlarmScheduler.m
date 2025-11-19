@interface EFXPCAlarmScheduler
+ (id)log;
- (id)_init;
- (id)debugDescription;
- (id)ef_publicDescription;
- (id)initGlobalInstance;
- (void)_queue_handleEvent:(id)a3;
- (void)_queue_handleXPCEvent:(id)a3;
- (void)_queue_notifyAlarmsOfPendingEvents;
- (void)_queue_scheduleEvent:(id)a3;
- (void)_queue_unscheduleEventWithName:(id)a3;
- (void)addAlarm:(id)a3;
- (void)removeAlarm:(id)a3;
- (void)scheduleEvent:(id)a3;
- (void)test_fireEvent:(id)a3;
- (void)unscheduleEventWithName:(id)a3;
@end

@implementation EFXPCAlarmScheduler

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EFXPCAlarmScheduler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_9 != -1)
  {
    dispatch_once(&log_onceToken_9, block);
  }

  v2 = log_log_9;

  return v2;
}

void __26__EFXPCAlarmScheduler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_9;
  log_log_9 = v1;
}

- (id)initGlobalInstance
{
  v2 = [(EFXPCAlarmScheduler *)self _init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = v2[3];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__EFXPCAlarmScheduler_initGlobalInstance__block_invoke;
    v5[3] = &unk_1E824A390;
    objc_copyWeak(&v6, &location);
    xpc_set_event_stream_handler("com.apple.alarm", v3, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__EFXPCAlarmScheduler_initGlobalInstance__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_handleXPCEvent:v3];
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = EFXPCAlarmScheduler;
  v2 = [(EFXPCAlarmScheduler *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    alarms = v2->_alarms;
    v2->_alarms = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingEvents = v2->_pendingEvents;
    v2->_pendingEvents = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_DEFAULT, 0);
    v9 = dispatch_queue_create("com.apple.email.EFXPCAlarmScheduler", v8);
    queue = v2->_queue;
    v2->_queue = v9;
  }

  return v2;
}

- (void)_queue_handleXPCEvent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E40]);
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = +[EFXPCAlarmScheduler log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    [v6 timeIntervalSince1970];
    v14 = 138543874;
    v15 = v8;
    v16 = 2082;
    v17 = string;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C6152000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received XPC alarm event with name: %{public}s date: %{time_t}ld", &v14, 0x20u);
  }

  if (string)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v11 = [[EFXPCAlarmEvent alloc] initWithName:v10 fireDate:v6 isUserVisible:xpc_dictionary_get_BOOL(v4, "UserVisible")];
    [(EFXPCAlarmScheduler *)self _queue_handleEvent:v11];
  }

  else
  {
    v10 = +[EFXPCAlarmScheduler log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      [(EFXPCAlarmScheduler *)v12 _queue_handleXPCEvent:v10];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_queue_scheduleEvent:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = [v8 fireDate];
  [v5 timeIntervalSince1970];
  xpc_dictionary_set_date(v4, "Date", (v6 * 1000000000.0));

  xpc_dictionary_set_BOOL(v4, "UserVisible", [v8 isUserVisible]);
  v7 = [v8 name];
  [v7 UTF8String];
  xpc_set_event();
}

- (void)_queue_unscheduleEventWithName:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [v6 UTF8String];
  xpc_set_event();
  pendingEvents = self->_pendingEvents;
  v5 = [EFXPCAlarmEvent _eventWithName:v6];
  [(NSMutableSet *)pendingEvents removeObject:v5];
}

- (void)test_fireEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__EFXPCAlarmScheduler_test_fireEvent___block_invoke;
  v7[3] = &unk_1E82485D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_queue_handleEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableSet *)self->_pendingEvents addObject:v4];
  [(EFXPCAlarmScheduler *)self _queue_notifyAlarmsOfPendingEvents];
}

- (void)_queue_notifyAlarmsOfPendingEvents
{
  v33 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_pendingEvents;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v3)
  {
    v5 = *v23;
    *&v4 = 138543618;
    v19 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        alarms = self->_alarms;
        v9 = [v7 name];
        v10 = [(NSMapTable *)alarms objectForKey:v9];

        if (v10)
        {
          v11 = +[EFXPCAlarmScheduler log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = objc_opt_class();
            *buf = 138543874;
            v27 = v12;
            v28 = 2114;
            v29 = v10;
            v30 = 2114;
            v31 = v7;
            v13 = v12;
            _os_log_impl(&dword_1C6152000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying alarm %{public}@ of event: %{public}@", buf, 0x20u);
          }

          [v10 eventDidFire:v7];
        }

        else
        {
          v14 = +[EFXPCAlarmScheduler log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            *buf = v19;
            v27 = v15;
            v28 = 2114;
            v29 = v7;
            v16 = v15;
            _os_log_impl(&dword_1C6152000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] no registered alarm for event: %{public}@", buf, 0x16u);
          }

          [(NSMutableSet *)v20 addObject:v7];
        }
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v3);
  }

  pendingEvents = self->_pendingEvents;
  self->_pendingEvents = v20;

  v18 = *MEMORY[0x1E69E9840];
}

- (void)addAlarm:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__EFXPCAlarmScheduler_addAlarm___block_invoke;
  v7[3] = &unk_1E82485D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __32__EFXPCAlarmScheduler_addAlarm___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[EFXPCAlarmScheduler log];
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
    _os_log_impl(&dword_1C6152000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] adding alarm %{public}@", &v12, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  v9 = [v7 eventName];
  [v8 setObject:v7 forKey:v9];

  result = [*(a1 + 32) _queue_notifyAlarmsOfPendingEvents];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeAlarm:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__EFXPCAlarmScheduler_removeAlarm___block_invoke;
  v7[3] = &unk_1E82485D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __35__EFXPCAlarmScheduler_removeAlarm___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[EFXPCAlarmScheduler log];
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
    _os_log_impl(&dword_1C6152000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing alarm %{public}@", &v11, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  v9 = [v7 eventName];
  [v8 removeObjectForKey:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)scheduleEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__EFXPCAlarmScheduler_scheduleEvent___block_invoke;
  v7[3] = &unk_1E82485D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __37__EFXPCAlarmScheduler_scheduleEvent___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[EFXPCAlarmScheduler log];
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
    _os_log_impl(&dword_1C6152000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] scheduling event: %{public}@", &v9, 0x16u);
  }

  result = [*(a1 + 32) _queue_scheduleEvent:*(a1 + 40)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)unscheduleEventWithName:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__EFXPCAlarmScheduler_unscheduleEventWithName___block_invoke;
  v7[3] = &unk_1E82485D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __47__EFXPCAlarmScheduler_unscheduleEventWithName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[EFXPCAlarmScheduler log];
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
    _os_log_impl(&dword_1C6152000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] unscheduling event: %{public}@", &v9, 0x16u);
  }

  result = [*(a1 + 32) _queue_unscheduleEventWithName:*(a1 + 40)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)debugDescription
{
  dispatch_assert_queue_not_V2(self->_queue);
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%p", objc_opt_class(), self];
  [v3 addObject:v4];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EFXPCAlarmScheduler_debugDescription__block_invoke;
  block[3] = &unk_1E82485D0;
  v6 = v3;
  v10 = v6;
  v11 = self;
  dispatch_sync(queue, block);
  v7 = [v6 componentsJoinedByString:@"\n"];

  return v7;
}

void __39__EFXPCAlarmScheduler_debugDescription__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) addObject:@"\tAlarms"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(*(a1 + 40) + 8);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = MEMORY[0x1E696AEC0];
        v7 = *(a1 + 32);
        v8 = [*(*(a1 + 40) + 8) objectForKey:*(*(&v21 + 1) + 8 * v5)];
        v9 = [v6 stringWithFormat:@"\t\t%@", v8];
        [v7 addObject:v9];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v3);
  }

  [*(a1 + 32) addObject:@"\tPending Events"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(*(a1 + 40) + 16);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(a1 + 32);
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t\t%@", *(*(&v17 + 1) + 8 * v13)];
        [v14 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)ef_publicDescription
{
  v3 = +[EFDevice currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    [(EFXPCAlarmScheduler *)self debugDescription];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %lu Pending Events>", objc_opt_class(), self, -[NSMutableSet count](self->_pendingEvents, "count")];
  }
  v5 = ;

  return v5;
}

- (void)_queue_handleXPCEvent:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  v5 = a1;
  _os_log_error_impl(&dword_1C6152000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring XPC alarm event with NULL event name", a2, 0xCu);
}

@end