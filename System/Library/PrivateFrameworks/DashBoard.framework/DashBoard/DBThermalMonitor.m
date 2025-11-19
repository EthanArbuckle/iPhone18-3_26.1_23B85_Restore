@interface DBThermalMonitor
- (DBThermalMonitor)init;
- (NSNumber)suggestedFrameRateLimit;
- (void)_queue_respondToCurrentThermalCondition;
- (void)_startListeningForThermalEvents;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation DBThermalMonitor

- (NSNumber)suggestedFrameRateLimit
{
  v14 = *MEMORY[0x277D85DE8];
  LOBYTE(v12) = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"FrameRateLimit", @"com.apple.carplay.internal", &v12);
  if (v12)
  {
    v4 = AppIntegerValue == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = [(DBThermalMonitor *)self level];
    if ((v5 - 1) <= 2)
    {
      v6 = qword_278F04580[v5 - 1];
      goto LABEL_15;
    }
  }

  else
  {
    v7 = AppIntegerValue;
    v8 = DBLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "frameRateLimit preference is: %lu", &v12, 0xCu);
    }

    v10 = [(DBThermalMonitor *)self level];
    if (v10 == 3 || v10 == 2 || v10 == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLong:v7];
      goto LABEL_15;
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (DBThermalMonitor)init
{
  v10.receiver = self;
  v10.super_class = DBThermalMonitor;
  v2 = [(DBThermalMonitor *)&v10 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    v4 = *(v2 + 6);
    *(v2 + 6) = Serial;

    v5 = BSDispatchQueueCreateSerial();
    v6 = *(v2 + 7);
    *(v2 + 7) = v5;

    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = *(v2 + 8);
    *(v2 + 8) = v7;

    *(v2 + 12) = -1;
    [v2 _startListeningForThermalEvents];
  }

  return v2;
}

- (void)dealloc
{
  if ([(DBThermalMonitor *)self hotToken]!= -1)
  {
    notify_cancel([(DBThermalMonitor *)self hotToken]);
  }

  if ([(DBThermalMonitor *)self coldToken]!= -1)
  {
    notify_cancel([(DBThermalMonitor *)self coldToken]);
  }

  v3.receiver = self;
  v3.super_class = DBThermalMonitor;
  [(DBThermalMonitor *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBThermalMonitor *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBThermalMonitor *)self observers];
  [v5 removeObject:v4];
}

- (void)_startListeningForThermalEvents
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "notify_register(cold) failed : status=%i", v2, 8u);
}

void __51__DBThermalMonitor__startListeningForThermalEvents__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *(WeakRetained + 4);
  notify_get_state(*(WeakRetained + 3), WeakRetained + 4);
  if (v2 != *(WeakRetained + 4))
  {
    v3 = DBLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(WeakRetained + 4);
      v5 = 134218240;
      v6 = v2;
      v7 = 2048;
      v8 = v4;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "hot condition changed from %llu to %llu", &v5, 0x16u);
    }

    [WeakRetained _queue_respondToCurrentThermalCondition];
  }
}

void __51__DBThermalMonitor__startListeningForThermalEvents__block_invoke_46(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *(WeakRetained + 5);
  notify_get_state(*(WeakRetained + 4), WeakRetained + 5);
  if (v2 != *(WeakRetained + 5))
  {
    v3 = DBLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(WeakRetained + 5);
      v5 = 134218240;
      v6 = v2;
      v7 = 2048;
      v8 = v4;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "cold condition changed from %llu to %llu", &v5, 0x16u);
    }

    [WeakRetained _queue_respondToCurrentThermalCondition];
  }
}

- (void)_queue_respondToCurrentThermalCondition
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(DBThermalMonitor *)self queue];
  BSDispatchQueueAssert();

  level = self->_level;
  hotLevel = self->_hotLevel;
  if (hotLevel <= 0x27)
  {
    if (hotLevel <= 0x1D)
    {
      if (hotLevel <= 0x13)
      {
        coldLevel = self->_coldLevel;
        if (coldLevel <= 0x13)
        {
          v8 = 0;
        }

        else
        {
          v8 = -1;
        }

        if (coldLevel <= 0x1D)
        {
          v6 = v8;
        }

        else
        {
          v6 = -2;
        }
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 3;
  }

  self->_level = v6;
  [(DBThermalMonitor *)self setThermalBlocked:hotLevel > 0x27];
  if (level != self->_level)
  {
    v9 = DBLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromDBThermalLevel(self->_level);
      v11 = self->_level;
      *buf = 138543618;
      v15 = v10;
      v16 = 1026;
      v17 = v11;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Thermal level changed to %{public}@ (%{public}d)", buf, 0x12u);
    }

    v12 = [(DBThermalMonitor *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__DBThermalMonitor__queue_respondToCurrentThermalCondition__block_invoke;
    block[3] = &unk_278F01580;
    block[4] = self;
    dispatch_async(v12, block);
  }
}

void __59__DBThermalMonitor__queue_respondToCurrentThermalCondition__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) thermalMonitorLevelDidChange:*(a1 + 32)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end