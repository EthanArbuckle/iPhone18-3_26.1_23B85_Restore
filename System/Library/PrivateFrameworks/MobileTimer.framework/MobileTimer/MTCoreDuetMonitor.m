@interface MTCoreDuetMonitor
- (MTCoreDuetMonitor)initWithAlarmStorage:(id)a3;
- (id)metadataForAlarm:(id)a3;
- (void)_queue_writeAlarmToKnowledgeStore:(id)a3 category:(id)a4;
- (void)_queue_writeCurrentStateToContextStore;
- (void)_queue_writeNextAlarmStateToContextStore:(id)a3;
- (void)handleSystemReady;
- (void)source:(id)a3 didAddAlarms:(id)a4;
- (void)source:(id)a3 didChangeNextAlarm:(id)a4;
- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5;
- (void)source:(id)a3 didFireAlarm:(id)a4 triggerType:(unint64_t)a5;
- (void)source:(id)a3 didRemoveAlarms:(id)a4;
- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5;
- (void)source:(id)a3 didUpdateAlarms:(id)a4;
- (void)updateAlarmCaches:(id)a3;
- (void)updateLastModifiedDateForAlarms:(id)a3;
- (void)updateStateForAlarm:(id)a3 alarmEvent:(unint64_t)a4;
- (void)updateStateForNextAlarm:(id)a3;
- (void)writeAlarmEventToBiome:(id)a3 ofType:(unint64_t)a4;
- (void)writeAlarmEventsToBiome:(id)a3 ofType:(unint64_t)a4;
- (void)writeAlarmToKnowledgeStore:(id)a3 alarmEvent:(unint64_t)a4;
- (void)writeAlarmUpdatedEventForAlarms:(id)a3;
@end

@implementation MTCoreDuetMonitor

- (MTCoreDuetMonitor)initWithAlarmStorage:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21.receiver = self;
  v21.super_class = MTCoreDuetMonitor;
  v6 = [(MTCoreDuetMonitor *)&v21 init];
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
  }

  if (v6)
  {
    [v5 registerObserver:v6];
    objc_storeStrong(&v6->_alarmStorage, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.mobiletimerd.MTCoreDuetMonitor", v8);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v9;

    v11 = objc_opt_new();
    alarmsByID = v6->_alarmsByID;
    v6->_alarmsByID = v11;

    v13 = objc_opt_new();
    alarmStatesByAlarmID = v6->_alarmStatesByAlarmID;
    v6->_alarmStatesByAlarmID = v13;

    v15 = [MEMORY[0x1E6997A60] userContext];
    context = v6->_context;
    v6->_context = v15;

    v17 = [MEMORY[0x1E69979A0] knowledgeStore];
    knowledgeStore = v6->_knowledgeStore;
    v6->_knowledgeStore = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)handleSystemReady
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 alarmStorage];
  v2 = [v1 alarms];
  [v2 count];
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didAddAlarms:(id)a4
{
  v5 = a4;
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [MTCoreDuetMonitor source:didAddAlarms:];
  }

  [(MTCoreDuetMonitor *)self updateAlarmCaches:v5];
  [(MTCoreDuetMonitor *)self writeAlarmEventsToBiome:v5 ofType:3];
}

- (void)source:(id)a3 didUpdateAlarms:(id)a4
{
  v5 = a4;
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [MTCoreDuetMonitor source:didUpdateAlarms:];
  }

  [(MTCoreDuetMonitor *)self updateLastModifiedDateForAlarms:v5];
  [(MTCoreDuetMonitor *)self writeAlarmUpdatedEventForAlarms:v5];
}

- (void)source:(id)a3 didChangeNextAlarm:(id)a4
{
  v5 = a4;
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [MTCoreDuetMonitor source:didChangeNextAlarm:];
  }

  [(MTCoreDuetMonitor *)self updateStateForNextAlarm:v5];
}

- (void)source:(id)a3 didSnoozeAlarm:(id)a4 snoozeAction:(unint64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v13 = 138543874;
    v14 = self;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v12;
    _os_log_debug_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEBUG, "[Triggers] %{public}@ didSnoozeAlarm: %{public}@, snoozeAction: %{public}@", &v13, 0x20u);
  }

  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_INFO, "[Triggers] %{public}@ Telling context store and knowledge store that alarm (%{public}@) has snoozed", &v13, 0x16u);
  }

  if (a5 == 1)
  {
    v10 = 8;
  }

  else
  {
    v10 = 7;
  }

  [(MTCoreDuetMonitor *)self updateStateForAlarm:v7 alarmEvent:v10];
  [(MTCoreDuetMonitor *)self writeAlarmToKnowledgeStore:v7 alarmEvent:v10];
  [(MTCoreDuetMonitor *)self writeAlarmEventToBiome:v7 ofType:2];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didDismissAlarm:(id)a4 dismissAction:(unint64_t)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v14 = 138543874;
    v15 = self;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v13;
    _os_log_debug_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEBUG, "[Triggers] %{public}@ didDismissAlarm: %{public}@, dismissAction: %{public}@", &v14, 0x20u);
  }

  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_INFO, "[Triggers] %{public}@ Telling context store and knowledge store that alarm (%{public}@) has been dismissed", &v14, 0x16u);
  }

  if (a5 < 0xC && ((0xCE7u >> a5) & 1) != 0)
  {
    v10 = qword_1B20B8950[a5];
    [(MTCoreDuetMonitor *)self updateStateForAlarm:v7 alarmEvent:v10];
    [(MTCoreDuetMonitor *)self writeAlarmToKnowledgeStore:v7 alarmEvent:v10];
    [(MTCoreDuetMonitor *)self writeAlarmEventToBiome:v7 ofType:1];
  }

  else
  {
    v11 = MTLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [MTCoreDuetMonitor source:a5 didDismissAlarm:? dismissAction:?];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didFireAlarm:(id)a4 triggerType:(unint64_t)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v14 = 138543874;
    v15 = self;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v13;
    _os_log_debug_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEBUG, "[Triggers] %{public}@ didFireAlarm: %{public}@, triggerType: %{public}@", &v14, 0x20u);
  }

  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_INFO, "[Triggers] %{public}@ Telling context store and knowledge store that alarm (%{public}@) has fired", &v14, 0x16u);
  }

  if (a5 >= 6)
  {
    v11 = MTLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [MTCoreDuetMonitor source:a5 didFireAlarm:? triggerType:?];
    }
  }

  else
  {
    v10 = qword_1B20B89B0[a5];
    [(MTCoreDuetMonitor *)self updateStateForAlarm:v7 alarmEvent:v10];
    [(MTCoreDuetMonitor *)self writeAlarmToKnowledgeStore:v7 alarmEvent:v10];
    [(MTCoreDuetMonitor *)self writeAlarmEventToBiome:v7 ofType:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didRemoveAlarms:(id)a4
{
  v5 = a4;
  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [MTCoreDuetMonitor source:didRemoveAlarms:];
  }

  v7 = [(MTCoreDuetMonitor *)self serialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__MTCoreDuetMonitor_source_didRemoveAlarms___block_invoke;
  v9[3] = &unk_1E7B0C928;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(v7, v9);
}

uint64_t __44__MTCoreDuetMonitor_source_didRemoveAlarms___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [*(a1 + 40) alarmStatesByAlarmID];
        v9 = [v7 alarmID];
        [v8 removeObjectForKey:v9];

        v10 = [*(a1 + 40) alarmsByID];
        v11 = [v7 alarmID];
        [v10 removeObjectForKey:v11];

        [*(a1 + 40) writeAlarmEventToBiome:v7 ofType:5];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _queue_writeCurrentStateToContextStore];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateStateForAlarm:(id)a3 alarmEvent:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(MTCoreDuetMonitor *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MTCoreDuetMonitor_updateStateForAlarm_alarmEvent___block_invoke;
    block[3] = &unk_1E7B0CD10;
    block[4] = self;
    v9 = v6;
    v10 = a4;
    dispatch_async(v7, block);
  }
}

uint64_t __52__MTCoreDuetMonitor_updateStateForAlarm_alarmEvent___block_invoke(uint64_t a1)
{
  v2 = MTDictionaryRepresentationOfAlarm(*(a1 + 40), *(a1 + 48));
  v3 = [*(a1 + 32) alarmStatesByAlarmID];
  v4 = [*(a1 + 40) alarmID];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 _queue_writeCurrentStateToContextStore];
}

- (void)updateAlarmCaches:(id)a3
{
  v4 = a3;
  v5 = [(MTCoreDuetMonitor *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MTCoreDuetMonitor_updateAlarmCaches___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __39__MTCoreDuetMonitor_updateAlarmCaches___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 24);
        v9 = [v7 copy];
        v10 = [v7 alarmID];
        [v8 setObject:v9 forKey:v10];

        v11 = MTDictionaryRepresentationOfAlarm(v7, 0);
        v12 = [*(a1 + 40) alarmStatesByAlarmID];
        v13 = [v7 alarmID];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _queue_writeCurrentStateToContextStore];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateLastModifiedDateForAlarms:(id)a3
{
  v4 = a3;
  v5 = [(MTCoreDuetMonitor *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MTCoreDuetMonitor_updateLastModifiedDateForAlarms___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __53__MTCoreDuetMonitor_updateLastModifiedDateForAlarms___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [*(a1 + 40) alarmStatesByAlarmID];
        v9 = [v7 alarmID];
        v10 = [v8 objectForKeyedSubscript:v9];
        v11 = [v10 mutableCopy];

        v12 = [v7 lastModifiedDate];
        v13 = v12;
        if (!v12)
        {
          v1 = [MEMORY[0x1E695DF00] distantPast];
          v13 = v1;
        }

        v14 = [MEMORY[0x1E6997A68] modifiedDateKey];
        [v11 setValue:v13 forKey:v14];

        if (!v12)
        {
        }

        v15 = [*(a1 + 40) alarmStatesByAlarmID];
        v16 = [v7 alarmID];
        [v15 setObject:v11 forKeyedSubscript:v16];
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _queue_writeCurrentStateToContextStore];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateStateForNextAlarm:(id)a3
{
  v4 = a3;
  v5 = [(MTCoreDuetMonitor *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MTCoreDuetMonitor_updateStateForNextAlarm___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_queue_writeCurrentStateToContextStore
{
  v3 = [(MTCoreDuetMonitor *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v7 = [MEMORY[0x1E6997A68] keyPathForCurrentAlarms];
  v4 = [(MTCoreDuetMonitor *)self alarmStatesByAlarmID];
  v5 = [v4 allValues];
  v6 = [MEMORY[0x1E6997A60] userContext];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

- (void)_queue_writeNextAlarmStateToContextStore:(id)a3
{
  v21[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MTCoreDuetMonitor *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = 0x1E6997000uLL;
  if (v4)
  {
    v7 = v4;
    v19 = [MEMORY[0x1E6997A68] alarmIDKey];
    v20[0] = v19;
    v8 = [v7 alarmID];
    v21[0] = v8;
    v9 = [MEMORY[0x1E6997A68] modifiedDateKey];
    v20[1] = v9;
    v10 = [v7 lastModifiedDate];
    v11 = v10;
    if (!v10)
    {
      v11 = [MEMORY[0x1E695DF00] distantPast];
    }

    v21[1] = v11;
    v12 = [MEMORY[0x1E6997A68] expectedFireDateKey];
    v20[2] = v12;
    v13 = [v7 nextFireDate];
    v14 = v13;
    if (!v13)
    {
      v14 = [MEMORY[0x1E695DF00] distantFuture];
    }

    v21[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    if (!v13)
    {
    }

    if (!v10)
    {
    }

    v6 = 0x1E6997000;
  }

  else
  {
    v15 = 0;
  }

  v16 = [*(v6 + 2664) keyPathForNextAlarm];
  v17 = [MEMORY[0x1E6997A60] userContext];
  [v17 setObject:v15 forKeyedSubscript:v16];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)writeAlarmToKnowledgeStore:(id)a3 alarmEvent:(unint64_t)a4
{
  v6 = a3;
  if (a4 <= 7 && ((1 << a4) & 0xA6) != 0)
  {
    v7 = [(MTCoreDuetMonitor *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MTCoreDuetMonitor_writeAlarmToKnowledgeStore_alarmEvent___block_invoke;
    block[3] = &unk_1E7B0CD10;
    v10 = a4;
    block[4] = self;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

void __59__MTCoreDuetMonitor_writeAlarmToKnowledgeStore_alarmEvent___block_invoke(void *a1)
{
  v1 = a1[6];
  if (v1 > 4)
  {
    if (v1 == 5)
    {
      v2 = a1[4];
      v3 = a1[5];
      v4 = [MEMORY[0x1E6997938] stopped];
    }

    else
    {
      if (v1 != 7)
      {
        return;
      }

      v2 = a1[4];
      v3 = a1[5];
      v4 = [MEMORY[0x1E6997938] snoozed];
    }
  }

  else
  {
    if (v1 != 1 && v1 != 2)
    {
      return;
    }

    v2 = a1[4];
    v3 = a1[5];
    v4 = [MEMORY[0x1E6997938] firing];
  }

  v5 = v4;
  [v2 _queue_writeAlarmToKnowledgeStore:v3 category:?];
}

- (void)_queue_writeAlarmToKnowledgeStore:(id)a3 category:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(MTCoreDuetMonitor *)self serialQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [MEMORY[0x1E695DF00] now];
  v10 = [MEMORY[0x1E69979E8] alarmStream];
  v11 = [(MTCoreDuetMonitor *)self metadataForAlarm:v7];

  v12 = [MEMORY[0x1E6997960] eventWithStream:v10 startDate:v9 endDate:v9 value:v6 metadata:v11];

  v13 = [(MTCoreDuetMonitor *)self knowledgeStore];
  v19[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v18 = 0;
  [v13 saveObjects:v14 error:&v18];
  v15 = v18;

  if (v15)
  {
    v16 = MTLogForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MTCoreDuetMonitor _queue_writeAlarmToKnowledgeStore:category:];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)metadataForAlarm:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:2];
  v6 = [v4 alarmID];
  v7 = [v6 UUIDString];
  v8 = [MEMORY[0x1E6997930] alarmID];
  [v5 setValue:v7 forKey:v8];

  v9 = MEMORY[0x1E696AD98];
  v10 = [v4 isSleepAlarm];

  v11 = [v9 numberWithBool:v10];
  v12 = [MEMORY[0x1E6997930] isSleep];
  [v5 setObject:v11 forKey:v12];

  return v5;
}

- (void)writeAlarmUpdatedEventForAlarms:(id)a3
{
  v4 = a3;
  v5 = [(MTCoreDuetMonitor *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MTCoreDuetMonitor_writeAlarmUpdatedEventForAlarms___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__MTCoreDuetMonitor_writeAlarmUpdatedEventForAlarms___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        v7 = *(*(a1 + 40) + 24);
        v8 = [v6 alarmID];
        v9 = [v7 objectForKey:v8];

        if (!v9)
        {
          v10 = MTLogForCategory(3);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            __53__MTCoreDuetMonitor_writeAlarmUpdatedEventForAlarms___block_invoke_cold_1(&v24, v25, v10);
          }

LABEL_20:

          goto LABEL_21;
        }

        v10 = [MTChangeSet changeSetWithChangesFromObject:v9 toObject:v6];
        if (![v10 hasChangeForProperty:@"MTAlarmLastModifiedDate"])
        {
          goto LABEL_20;
        }

        v11 = [v10 hasChangeForProperty:@"MTAlarmEnabled"];
        v12 = v11;
        if (v11)
        {
          v13 = MTLogForCategory(3);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [v6 alarmID];
            *buf = 138412290;
            v31 = v14;
            _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "[Triggers writeAlarmUpdatedEventForAlarms] set isEnableDisableModification for alarm %@", buf, 0xCu);
          }
        }

        if (([v10 hasChangeForProperty:@"MTAlarmHour"]& 1) != 0 || [v10 hasChangeForProperty:@"MTAlarmMinute"])
        {
          v15 = MTLogForCategory(3);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v6 alarmID];
            *buf = 138412290;
            v31 = v16;
            _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "[Triggers writeAlarmUpdatedEventForAlarms] set isTimeDifferenceModification for alarm %@", buf, 0xCu);
          }

LABEL_17:
          [*(a1 + 40) writeAlarmEventToBiome:v6 ofType:4];
          goto LABEL_24;
        }

        if (v12)
        {
          goto LABEL_17;
        }

LABEL_21:
        v17 = MTLogForCategory(3);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_INFO, "[Triggers writeAlarmUpdatedEventForAlarms] isTimeDifferenceModification and isEnableDisableModification are false", buf, 2u);
        }

LABEL_24:
        v18 = *(*(a1 + 40) + 24);
        v19 = [v6 copy];
        v20 = [v6 alarmID];
        [v18 setObject:v19 forKey:v20];

        ++v5;
      }

      while (v3 != v5);
      v21 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      v3 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)writeAlarmEventToBiome:(id)a3 ofType:(unint64_t)a4
{
  v5 = a3;
  if (+[MTDeviceListener hasBeenUnlockedSinceBoot])
  {
    v6 = [MEMORY[0x1E698F350] alarmStream];
    v7 = objc_alloc(MEMORY[0x1E698F248]);
    v8 = [v5 alarmID];
    v9 = [v7 initWithEventType:a4 alarmID:v8 isSleepAlarm:{objc_msgSend(v5, "isSleepAlarm")}];

    v10 = [v6 source];
    [v10 sendEvent:v9];
  }

  else
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [MTCoreDuetMonitor writeAlarmEventToBiome:a4 ofType:?];
    }
  }
}

- (void)writeAlarmEventsToBiome:(id)a3 ofType:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (+[MTDeviceListener hasBeenUnlockedSinceBoot])
  {
    v6 = [MEMORY[0x1E698F350] alarmStream];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = objc_alloc(MEMORY[0x1E698F248]);
          v14 = [v12 alarmID];
          v15 = [v13 initWithEventType:a4 alarmID:v14 isSleepAlarm:{objc_msgSend(v12, "isSleepAlarm")}];

          v16 = [v6 source];
          [v16 sendEvent:v15];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v5 = v18;
  }

  else
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [MTCoreDuetMonitor writeAlarmEventToBiome:a4 ofType:?];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)source:didAddAlarms:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6(&dword_1B1F9F000, v0, v1, "[Triggers] %{public}@ didAddAlarms: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)source:didUpdateAlarms:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6(&dword_1B1F9F000, v0, v1, "[Triggers] %{public}@ didUpdateAlarms: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)source:didChangeNextAlarm:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6(&dword_1B1F9F000, v0, v1, "[Triggers] %{public}@ didChangeNextAlarm: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)source:(uint64_t)a1 didDismissAlarm:(uint64_t)a2 dismissAction:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:(uint64_t)a1 didFireAlarm:(uint64_t)a2 triggerType:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)source:didRemoveAlarms:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6(&dword_1B1F9F000, v0, v1, "[Triggers] %{public}@ didRemoveAlarms: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_queue_writeAlarmToKnowledgeStore:category:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1B1F9F000, v0, OS_LOG_TYPE_ERROR, "%{public}@ could not save objects to knowledge store with error: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __53__MTCoreDuetMonitor_writeAlarmUpdatedEventForAlarms___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "[Triggers writeAlarmUpdatedEventForAlarms] could not find old alarm", buf, 2u);
}

- (void)writeAlarmEventToBiome:(uint64_t)a1 ofType:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end