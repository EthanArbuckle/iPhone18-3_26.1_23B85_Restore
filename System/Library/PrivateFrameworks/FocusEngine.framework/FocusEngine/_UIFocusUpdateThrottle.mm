@interface _UIFocusUpdateThrottle
- (_UIFocusUpdateThrottle)initWithUpdateHandler:(id)handler;
- (void)_performScheduledUpdate;
- (void)didCreateProgrammaticFocusUpdateContext:(id)context;
- (void)reset;
- (void)scheduleProgrammaticFocusUpdate;
- (void)teardown;
@end

@implementation _UIFocusUpdateThrottle

- (_UIFocusUpdateThrottle)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateThrottle.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"updateHandler"}];
  }

  v12.receiver = self;
  v12.super_class = _UIFocusUpdateThrottle;
  v6 = [(_UIFocusUpdateThrottle *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_currentTimeout = 0.0166666667;
    v8 = MEMORY[0x24C24D980](handlerCopy);
    updateHandler = v7->_updateHandler;
    v7->_updateHandler = v8;
  }

  return v7;
}

- (void)teardown
{
  WeakRetained = objc_loadWeakRetained(&self->_updateTimer);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_updateTimer);
    [v4 invalidate];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34___UIFocusUpdateThrottle_teardown__block_invoke;
    block[3] = &unk_279014BD8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)scheduleProgrammaticFocusUpdate
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_updateIsScheduled)
  {
    self->_updateIsScheduled = 1;
    lastUpdate = self->_lastUpdate;
    currentTimeout = self->_currentTimeout;
    Current = CFAbsoluteTimeGetCurrent();
    if (self->_nilUpdateCount && (v6 = lastUpdate + currentTimeout - Current, v6 >= 0.0166666667))
    {
      v7 = logger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v12 = v6;
        _os_log_debug_impl(&dword_24B885000, v7, OS_LOG_TYPE_DEBUG, "Delaying focus update for %.2g seconds due to too many failed focus updates.", buf, 0xCu);
      }

      v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__performScheduledUpdate selector:0 userInfo:0 repeats:v6];
      objc_storeWeak(&self->_updateTimer, v8);

      WeakRetained = objc_loadWeakRetained(&self->_updateTimer);
      [WeakRetained setTolerance:0.0166666667];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57___UIFocusUpdateThrottle_scheduleProgrammaticFocusUpdate__block_invoke;
      block[3] = &unk_279014BD8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)didCreateProgrammaticFocusUpdateContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  self->_lastUpdate = CFAbsoluteTimeGetCurrent();
  nextFocusedItem = [contextCopy nextFocusedItem];

  if (nextFocusedItem)
  {
    self->_nilUpdateCount = 0;
    self->_currentTimeout = 0.0166666667;
  }

  else
  {
    ++self->_nilUpdateCount;
    currentTimeout = self->_currentTimeout;
    if (currentTimeout < 1.0)
    {
      self->_currentTimeout = fmin(currentTimeout * 1.3, 1.0);
      v7 = logger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = self->_currentTimeout;
        nilUpdateCount = self->_nilUpdateCount;
        v10 = 134218240;
        v11 = v8;
        v12 = 2048;
        v13 = nilUpdateCount;
        _os_log_debug_impl(&dword_24B885000, v7, OS_LOG_TYPE_DEBUG, "Encountered a programmatic focus update to a nil environment. Increasing cooldown period for programmatic focus updates to %.2g due to %lu failed focus updates.", &v10, 0x16u);
      }
    }
  }
}

- (void)_performScheduledUpdate
{
  if (self->_updateIsScheduled)
  {
    self->_updateIsScheduled = 0;
    WeakRetained = objc_loadWeakRetained(&self->_updateTimer);
    [WeakRetained invalidate];

    v5 = *(self->_updateHandler + 2);

    v5();
  }
}

- (void)reset
{
  self->_nilUpdateCount = 0;
  self->_currentTimeout = 0.0166666667;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31___UIFocusUpdateThrottle_reset__block_invoke;
  block[3] = &unk_279014BD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end