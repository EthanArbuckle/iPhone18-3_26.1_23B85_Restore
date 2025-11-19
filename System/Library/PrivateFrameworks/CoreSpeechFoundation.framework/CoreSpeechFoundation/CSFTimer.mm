@interface CSFTimer
- (BOOL)_armTimer;
- (CSFTimer)initWithContext:(id)a3 queue:(id)a4 eventHandler:(id)a5;
- (void)_disarmTimer;
- (void)cancel;
- (void)resume:(id)a3;
@end

@implementation CSFTimer

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__CSFTimer_cancel__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resume:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __19__CSFTimer_resume___block_invoke;
  v7[3] = &unk_1E865CB90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __19__CSFTimer_resume___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _armTimer];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_disarmTimer
{
  v13 = *MEMORY[0x1E69E9840];
  timer = self->_timer;
  if (timer && !dispatch_source_testcancel(self->_timer))
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(CSFTimer *)self context];
      v7 = [v6 identifier];
      v9 = 136315394;
      v10 = "[CSFTimer _disarmTimer]";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s [%@] Canceling timer", &v9, 0x16u);

      timer = self->_timer;
    }

    dispatch_source_cancel(timer);
    timer = self->_timer;
  }

  self->_isCancelled = 1;
  self->_timer = 0;

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)_armTimer
{
  v25 = *MEMORY[0x1E69E9840];
  isCancelled = self->_isCancelled;
  if (isCancelled)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(CSFTimer *)self context];
      v7 = [v6 identifier];
      *buf = 136315394;
      v22 = "[CSFTimer _armTimer]";
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s [%@] Not resuming timer in cancelled state", buf, 0x16u);
    }
  }

  else
  {
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    timer = self->_timer;
    self->_timer = v8;

    [(CSFTimerContext *)self->_context timerInterval];
    v11 = self->_timer;
    v12 = dispatch_time(0, (v10 * 1000000000.0));
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v13 = self->_timer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __21__CSFTimer__armTimer__block_invoke;
    handler[3] = &unk_1E865CB68;
    handler[4] = self;
    dispatch_source_set_event_handler(v13, handler);
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(CSFTimer *)self context];
      v17 = [v16 identifier];
      *buf = 136315394;
      v22 = "[CSFTimer _armTimer]";
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s [%@] Resuming timer", buf, 0x16u);
    }

    dispatch_resume(self->_timer);
  }

  v18 = *MEMORY[0x1E69E9840];
  return !isCancelled;
}

uint64_t __21__CSFTimer__armTimer__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _disarmTimer];
  v2 = *(*(*(a1 + 32) + 40) + 16);

  return v2();
}

- (CSFTimer)initWithContext:(id)a3 queue:(id)a4 eventHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CSFTimer;
  v12 = [(CSFTimer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    if (!v9)
    {
      __assert_rtn("[CSFTimer initWithContext:queue:eventHandler:]", "CSFTimer.m", 41, "context");
    }

    if (!v11)
    {
      __assert_rtn("[CSFTimer initWithContext:queue:eventHandler:]", "CSFTimer.m", 42, "eventHandler");
    }

    if (!v10)
    {
      __assert_rtn("[CSFTimer initWithContext:queue:eventHandler:]", "CSFTimer.m", 43, "queue");
    }

    objc_storeStrong(&v12->_context, a3);
    v14 = MEMORY[0x1E12BA300](v11);
    eventHandler = v13->_eventHandler;
    v13->_eventHandler = v14;

    objc_storeStrong(&v13->_queue, a4);
  }

  return v13;
}

@end