@interface CUCoalescer
- (CUCoalescer)init;
- (void)_cancel;
- (void)_invalidate;
- (void)_timerFired;
- (void)_trigger;
- (void)cancel;
- (void)dealloc;
- (void)invalidate;
- (void)trigger;
@end

@implementation CUCoalescer

- (void)_timerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  timer = self->_timer;
  if (timer)
  {
    v4 = timer;
    dispatch_source_cancel(v4);
    v5 = self->_timer;
    self->_timer = 0;
  }

  self->_startTime = 0.0;
  if (atomic_fetch_and(&self->_triggered, 0xFFFFFFFE))
  {
    v6 = _Block_copy(self->_actionHandler);
    if (v6)
    {
      v7 = v6;
      v6[2]();
      v6 = v7;
    }
  }
}

- (void)trigger
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__CUCoalescer_trigger__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_trigger
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    atomic_fetch_or(&self->_triggered, 1u);
    Current = CFAbsoluteTimeGetCurrent();
    v4 = Current + self->_minDelay;
    startTime = self->_startTime;
    if (startTime == 0.0)
    {
      self->_startTime = Current;
      startTime = Current;
    }

    maxDelay = self->_maxDelay;
    v7 = v4 - startTime <= maxDelay || maxDelay < 0.0;
    v8 = maxDelay + startTime;
    if (!v7)
    {
      v4 = v8;
    }

    v9 = v4 - Current;
    if (v9 <= 0.0)
    {

      [(CUCoalescer *)self _timerFired];
    }

    else
    {
      v10 = (v9 * 1000000000.0);
      leeway = self->_leeway;
      if (leeway >= 0.0)
      {
        v12 = (leeway * 1000000000.0);
      }

      else
      {
        v12 = v10 / 4;
      }

      v13 = dispatch_time(0, v10);
      timer = self->_timer;
      if (timer)
      {

        dispatch_source_set_timer(timer, v13, 0xFFFFFFFFFFFFFFFFLL, v12);
      }

      else
      {
        v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
        v16 = self->_timer;
        self->_timer = v15;

        v24 = self->_timer;
        if (!v24)
        {
          FatalErrorF("Create coalesce timer failed", v17, v18, v19, v20, v21, v22, v23, v25);
        }

        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __23__CUCoalescer__trigger__block_invoke;
        handler[3] = &unk_1E73A4F68;
        handler[4] = self;
        dispatch_source_set_event_handler(v24, handler);
        dispatch_source_set_timer(self->_timer, v13, 0xFFFFFFFFFFFFFFFFLL, v12);
        dispatch_resume(self->_timer);
      }
    }
  }
}

- (void)_cancel
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_startTime = 0.0;
  timer = self->_timer;
  if (timer)
  {
    v4 = timer;
    dispatch_source_cancel(v4);
    v5 = self->_timer;
    self->_timer = 0;
  }

  atomic_fetch_and(&self->_triggered, 0xFFFFFFFE);
}

- (void)cancel
{
  atomic_fetch_and(&self->_triggered, 0xFFFFFFFE);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__CUCoalescer_cancel__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    self->_startTime = 0.0;
    timer = self->_timer;
    if (timer)
    {
      v4 = timer;
      dispatch_source_cancel(v4);
      v5 = self->_timer;
      self->_timer = 0;
    }

    v6 = _Block_copy(self->_invalidationHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }

    actionHandler = self->_actionHandler;
    self->_actionHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

- (void)invalidate
{
  atomic_fetch_and(&self->_triggered, 0xFFFFFFFE);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CUCoalescer_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)dealloc
{
  if (self->_timer)
  {
    FatalErrorF("Timer still active during dealloc", a2, v2, v3, v4, v5, v6, v7, v11.receiver);
  }

  actionHandler = self->_actionHandler;
  self->_actionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v11.receiver = self;
  v11.super_class = CUCoalescer;
  [(CUCoalescer *)&v11 dealloc];
}

- (CUCoalescer)init
{
  v5.receiver = self;
  v5.super_class = CUCoalescer;
  v2 = [(CUCoalescer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    *&v3->_maxDelay = xmmword_191FF9500;
  }

  return v3;
}

@end