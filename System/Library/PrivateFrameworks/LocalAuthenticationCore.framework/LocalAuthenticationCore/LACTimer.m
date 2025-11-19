@interface LACTimer
- (BOOL)isRunning;
- (LACTimer)init;
- (void)_dispatchAfter:(double)a3 inQueue:(id)a4 repeat:(BOOL)a5 block:(id)a6;
- (void)cancel;
- (void)dispatchAfter:(double)a3 inQueue:(id)a4 block:(id)a5;
@end

@implementation LACTimer

- (LACTimer)init
{
  v3.receiver = self;
  v3.super_class = LACTimer;
  result = [(LACTimer *)&v3 init];
  if (result)
  {
    result->_timerLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_timerLock);
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  os_unfair_lock_unlock(&self->_timerLock);
}

- (BOOL)isRunning
{
  os_unfair_lock_lock(&self->_timerLock);
  timer = self->_timer;
  if (timer)
  {
    v4 = dispatch_source_testcancel(timer) == 0;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_timerLock);
  return v4;
}

- (void)dispatchAfter:(double)a3 inQueue:(id)a4 block:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__LACTimer_dispatchAfter_inQueue_block___block_invoke;
  v11[3] = &unk_1E7A957E8;
  objc_copyWeak(&v13, &location);
  v10 = v9;
  v12 = v10;
  [(LACTimer *)self dispatchAfter:v8 inQueue:0 repeat:v11 block:a3];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __40__LACTimer_dispatchAfter_inQueue_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancel];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_dispatchAfter:(double)a3 inQueue:(id)a4 repeat:(BOOL)a5 block:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  if (a3 == 0.0)
  {
    if (v7)
    {
      v12 = LACLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [LACTimer _dispatchAfter:v12 inQueue:? repeat:? block:?];
      }
    }

    dispatch_async(v10, v11);
  }

  else
  {
    os_unfair_lock_lock(&self->_timerLock);
    if (self->_timer)
    {
      v13 = LACLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [LACTimer _dispatchAfter:v13 inQueue:? repeat:? block:?];
      }
    }

    else
    {
      v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v10);
      timer = self->_timer;
      self->_timer = v14;

      v16 = a3 * 1000000000.0;
      v17 = dispatch_time(0, v16);
      dispatch_source_set_timer(self->_timer, v17, v16, 0);
      dispatch_source_set_event_handler(self->_timer, v11);
      dispatch_activate(self->_timer);
    }

    os_unfair_lock_unlock(&self->_timerLock);
  }
}

@end