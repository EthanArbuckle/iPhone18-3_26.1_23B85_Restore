@interface DTTapLocal
- (BOOL)_canFetchWhileArchiving;
- (DTTapLocal)initWithConfig:(id)config memoHandler:(id)handler delegate:(id)delegate;
- (id)_fetchDataForReason:(unint64_t)reason;
- (id)_handleStatusMemo:(id)memo;
- (void)_pause;
- (void)_start;
- (void)_stop;
- (void)_unpause;
@end

@implementation DTTapLocal

- (DTTapLocal)initWithConfig:(id)config memoHandler:(id)handler delegate:(id)delegate
{
  configCopy = config;
  handlerCopy = handler;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = DTTapLocal;
  v11 = [(DTTap *)&v16 initWithConfig:configCopy memoHandler:handlerCopy];
  v12 = v11;
  if (v11)
  {
    if (!delegateCopy)
    {
      sub_24802F390();
    }

    objc_storeStrong(&v11->_delegate, delegate);
    [(DTTapLocalDelegate *)v12->_delegate setTap:v12];
    validateConfig = [(DTTapLocalDelegate *)v12->_delegate validateConfig];
    if (validateConfig)
    {
      v14 = [(DTTapLocal *)v12 _handleStatusMemo:validateConfig];
      [v14 waitUntilFinished];
      v12->_validConfig = 0;
    }

    else
    {
      v12->_validConfig = 1;
    }
  }

  return v12;
}

- (void)_start
{
  if (self->_validConfig)
  {
    handler[11] = v2;
    handler[12] = v3;
    config = [(DTTap *)self config];
    pollingInterval = [config pollingInterval];

    if (pollingInterval)
    {
      serialQueue = [(DTTap *)self serialQueue];
      if (self->_pollTimer)
      {
        sub_24802F3BC(a2, self);
      }

      v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, serialQueue);
      pollTimer = self->_pollTimer;
      self->_pollTimer = v9;

      v11 = self->_pollTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_247FC4F80;
      handler[3] = &unk_278EF1070;
      handler[4] = self;
      dispatch_source_set_event_handler(v11, handler);
      v12 = self->_pollTimer;
      v13 = dispatch_time(0, pollingInterval);
      dispatch_source_set_timer(v12, v13, pollingInterval, 0x4C4B40uLL);
      dispatch_resume(self->_pollTimer);
    }

    delegate = [(DTTapLocal *)self delegate];
    [delegate start];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      sub_24802F430(self);
    }
  }
}

- (void)_stop
{
  if (self->_validConfig)
  {
    v10 = v2;
    pollTimer = self->_pollTimer;
    if (pollTimer)
    {
      dispatch_source_cancel(pollTimer);
      v8 = self->_pollTimer;
      self->_pollTimer = 0;
    }

    v9 = [(DTTapLocal *)self delegate:v3];
    [v9 stop];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      sub_24802F4B8(self);
    }
  }
}

- (void)_pause
{
  if (self->_validConfig)
  {
    delegate = [(DTTapLocal *)self delegate];
    [delegate pause];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      sub_24802F540(self);
    }
  }
}

- (void)_unpause
{
  if (self->_validConfig)
  {
    delegate = [(DTTapLocal *)self delegate];
    [delegate unpause];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      sub_24802F5C8(self);
    }
  }
}

- (BOOL)_canFetchWhileArchiving
{
  delegate = [(DTTapLocal *)self delegate];
  canFetchWhileArchiving = [delegate canFetchWhileArchiving];

  return canFetchWhileArchiving;
}

- (id)_fetchDataForReason:(unint64_t)reason
{
  if (self->_validConfig)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_247FC5328;
    v19 = sub_247FC5338;
    v20 = 0;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    delegate = [(DTTapLocal *)self delegate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_247FC5340;
    v8[3] = &unk_278EF3358;
    v8[7] = &v15;
    v8[8] = reason;
    v8[4] = self;
    v8[5] = v13;
    v8[6] = &v9;
    [delegate fetchDataForReason:reason block:v8];

    if ((v10[3] & 1) == 0)
    {
      __assert_rtn("[DTTapLocal _fetchDataForReason:]", "DTTapLocal.m", 158, "sawLastMemo");
    }

    v6 = v16[5];
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(v13, 8);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_handleStatusMemo:(id)memo
{
  memoCopy = memo;
  config = [(DTTap *)self config];
  statusHandler = [config statusHandler];

  if (statusHandler)
  {
    memoHandler = [(DTTap *)self memoHandler];
    v8 = [memoHandler handleMemo:memoCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end