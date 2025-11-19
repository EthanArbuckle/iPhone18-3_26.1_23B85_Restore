@interface DTTapLocal
- (BOOL)_canFetchWhileArchiving;
- (DTTapLocal)initWithConfig:(id)a3 memoHandler:(id)a4 delegate:(id)a5;
- (id)_fetchDataForReason:(unint64_t)a3;
- (id)_handleStatusMemo:(id)a3;
- (void)_pause;
- (void)_start;
- (void)_stop;
- (void)_unpause;
@end

@implementation DTTapLocal

- (DTTapLocal)initWithConfig:(id)a3 memoHandler:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = DTTapLocal;
  v11 = [(DTTap *)&v16 initWithConfig:v8 memoHandler:v9];
  v12 = v11;
  if (v11)
  {
    if (!v10)
    {
      sub_24802F390();
    }

    objc_storeStrong(&v11->_delegate, a5);
    [(DTTapLocalDelegate *)v12->_delegate setTap:v12];
    v13 = [(DTTapLocalDelegate *)v12->_delegate validateConfig];
    if (v13)
    {
      v14 = [(DTTapLocal *)v12 _handleStatusMemo:v13];
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
    v6 = [(DTTap *)self config];
    v7 = [v6 pollingInterval];

    if (v7)
    {
      v8 = [(DTTap *)self serialQueue];
      if (self->_pollTimer)
      {
        sub_24802F3BC(a2, self);
      }

      v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
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
      v13 = dispatch_time(0, v7);
      dispatch_source_set_timer(v12, v13, v7, 0x4C4B40uLL);
      dispatch_resume(self->_pollTimer);
    }

    v14 = [(DTTapLocal *)self delegate];
    [v14 start];

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
    v3 = [(DTTapLocal *)self delegate];
    [v3 pause];

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
    v3 = [(DTTapLocal *)self delegate];
    [v3 unpause];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      sub_24802F5C8(self);
    }
  }
}

- (BOOL)_canFetchWhileArchiving
{
  v2 = [(DTTapLocal *)self delegate];
  v3 = [v2 canFetchWhileArchiving];

  return v3;
}

- (id)_fetchDataForReason:(unint64_t)a3
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
    v5 = [(DTTapLocal *)self delegate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_247FC5340;
    v8[3] = &unk_278EF3358;
    v8[7] = &v15;
    v8[8] = a3;
    v8[4] = self;
    v8[5] = v13;
    v8[6] = &v9;
    [v5 fetchDataForReason:a3 block:v8];

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

- (id)_handleStatusMemo:(id)a3
{
  v4 = a3;
  v5 = [(DTTap *)self config];
  v6 = [v5 statusHandler];

  if (v6)
  {
    v7 = [(DTTap *)self memoHandler];
    v8 = [v7 handleMemo:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end