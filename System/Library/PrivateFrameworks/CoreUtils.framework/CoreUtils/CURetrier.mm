@interface CURetrier
- (CURetrier)init;
- (void)failed;
- (void)failedDirect;
- (void)invalidate;
- (void)invalidateDirect;
- (void)start;
- (void)startDirect;
- (void)succeeded;
- (void)succeededDirect;
@end

@implementation CURetrier

- (void)succeededDirect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v5 = retryTimer;
    dispatch_source_cancel(v5);
    v4 = self->_retryTimer;
    self->_retryTimer = 0;
  }
}

- (CURetrier)init
{
  v6.receiver = self;
  v6.super_class = CURetrier;
  v2 = [(CURetrier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    *&v3->_interval = xmmword_191FF9560;
    v4 = v3;
  }

  return v3;
}

- (void)startDirect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    retryTimer = self->_retryTimer;
    if (retryTimer)
    {
      v4 = retryTimer;
      dispatch_source_cancel(v4);
      v5 = self->_retryTimer;
      self->_retryTimer = 0;
    }

    self->_startTime = CFAbsoluteTimeGetCurrent();
    v6 = _Block_copy(self->_actionHandler);
    if (v6)
    {
      v7 = v6;
      v6[2]();
      v6 = v7;
    }
  }
}

- (void)invalidateDirect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    actionHandler = self->_actionHandler;
    self->_actionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    retryTimer = self->_retryTimer;
    if (retryTimer)
    {
      v8 = retryTimer;
      dispatch_source_cancel(v8);
      v7 = self->_retryTimer;
      self->_retryTimer = 0;
    }
  }
}

- (void)succeeded
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__CURetrier_succeeded__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)failedDirect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    leeway = self->_leeway;
    if (leeway < 0.0)
    {
      leeway = self->_interval / 10.0;
    }

    v4 = self->_startTime + self->_interval + arc4random() / 4294967300.0 * leeway + 0.0;
    v5 = v4 - CFAbsoluteTimeGetCurrent();
    if (v5 <= 0.0)
    {

      [(CURetrier *)self startDirect];
    }

    else
    {
      retryTimer = self->_retryTimer;
      if (retryTimer)
      {
        v7 = retryTimer;
        dispatch_source_cancel(v7);
        v8 = self->_retryTimer;
        self->_retryTimer = 0;
      }

      v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      v10 = self->_retryTimer;
      self->_retryTimer = v9;

      v18 = self->_retryTimer;
      if (!v18)
      {
        FatalErrorF("Create retry timer failed", v11, v12, v13, v14, v15, v16, v17, v21);
      }

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __25__CURetrier_failedDirect__block_invoke;
      handler[3] = &unk_1E73A4F68;
      handler[4] = self;
      dispatch_source_set_event_handler(v18, handler);
      v19 = self->_retryTimer;
      v20 = dispatch_time(0, (v5 * 1000000000.0));
      dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
      dispatch_resume(self->_retryTimer);
    }
  }
}

- (void)failed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__CURetrier_failed__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__CURetrier_start__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__CURetrier_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end