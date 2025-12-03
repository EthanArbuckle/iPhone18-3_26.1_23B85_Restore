@interface LNWatchdogTimer
- (BOOL)_cancelIfNotAlreadyCanceled;
- (BOOL)cancelIfNotAlreadyCanceled;
- (BOOL)isCanceled;
- (BOOL)isStopped;
- (LNWatchdogTimer)initWithTimeoutInterval:(double)interval onQueue:(id)queue singleUse:(BOOL)use timeoutHandler:(id)handler;
- (LNWatchdogTimer)initWithTimeoutInterval:(double)interval timeoutHandler:(id)handler;
- (void)_cancel;
- (void)_reset;
- (void)_start;
- (void)_stop;
- (void)cancel;
- (void)dealloc;
- (void)reset;
- (void)start;
- (void)stop;
@end

@implementation LNWatchdogTimer

- (void)_start
{
  if ([(LNWatchdogTimer *)self _isStopped])
  {
    timerSource = self->_timerSource;
    v4 = dispatch_time(0, (self->_remainingInterval * 1000000000.0));
    dispatch_source_set_timer(timerSource, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_timerSource);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    [(LNWatchdogTimer *)self setStartTime:?];

    [(LNWatchdogTimer *)self setStopped:0];
  }
}

- (void)start
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__LNWatchdogTimer_start__block_invoke;
  block[3] = &unk_1E74B2318;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)cancel
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__LNWatchdogTimer_cancel__block_invoke;
  block[3] = &unk_1E74B2318;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_cancel
{
  dispatch_source_cancel(self->_timerSource);
  if ([(LNWatchdogTimer *)self _isStopped])
  {
    dispatch_resume(self->_timerSource);

    [(LNWatchdogTimer *)self setStopped:0];
  }
}

- (void)dealloc
{
  if ([(LNWatchdogTimer *)self _isStopped])
  {
    timerSource = [(LNWatchdogTimer *)self timerSource];
    dispatch_resume(timerSource);
  }

  v4.receiver = self;
  v4.super_class = LNWatchdogTimer;
  [(LNWatchdogTimer *)&v4 dealloc];
}

- (void)reset
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__LNWatchdogTimer_reset__block_invoke;
  block[3] = &unk_1E74B2318;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_reset
{
  [(LNWatchdogTimer *)self _stop];
  self->_remainingInterval = self->_interval;

  [(LNWatchdogTimer *)self _start];
}

- (void)_stop
{
  if (![(LNWatchdogTimer *)self _isStopped])
  {
    dispatch_suspend(self->_timerSource);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v5 = v4 - self->_startTime;

    [(LNWatchdogTimer *)self setRemainingInterval:fmax(self->_interval - v5, 0.0)];

    [(LNWatchdogTimer *)self setStopped:1];
  }
}

- (BOOL)_cancelIfNotAlreadyCanceled
{
  _isCanceled = [(LNWatchdogTimer *)self _isCanceled];
  if (!_isCanceled)
  {
    [(LNWatchdogTimer *)self _cancel];
  }

  return !_isCanceled;
}

- (BOOL)isStopped
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__LNWatchdogTimer_isStopped__block_invoke;
  v5[3] = &unk_1E74B1598;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__LNWatchdogTimer_isStopped__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isStopped];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isCanceled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__LNWatchdogTimer_isCanceled__block_invoke;
  v5[3] = &unk_1E74B1598;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__LNWatchdogTimer_isCanceled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isCanceled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)cancelIfNotAlreadyCanceled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__LNWatchdogTimer_cancelIfNotAlreadyCanceled__block_invoke;
  v5[3] = &unk_1E74B1598;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__LNWatchdogTimer_cancelIfNotAlreadyCanceled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cancelIfNotAlreadyCanceled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)stop
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__LNWatchdogTimer_stop__block_invoke;
  block[3] = &unk_1E74B2318;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (LNWatchdogTimer)initWithTimeoutInterval:(double)interval onQueue:(id)queue singleUse:(BOOL)use timeoutHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (interval >= 0.0)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNWatchdogTimer.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNWatchdogTimer.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"timeoutInterval >= 0"}];

  if (!queueCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNWatchdogTimer.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"timeoutHandler"}];

LABEL_4:
  v31.receiver = self;
  v31.super_class = LNWatchdogTimer;
  v13 = [(LNWatchdogTimer *)&v31 init];
  v14 = v13;
  if (v13)
  {
    v13->_interval = interval;
    v13->_remainingInterval = interval;
    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
    timerSource = v14->_timerSource;
    v14->_timerSource = v15;

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v18 = dispatch_queue_create("com.apple.link.LNWatchdogTimer.internal-queue", v17);
    internalQueue = v14->_internalQueue;
    v14->_internalQueue = v18;

    objc_initWeak(&location, v14);
    v20 = v14->_timerSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __76__LNWatchdogTimer_initWithTimeoutInterval_onQueue_singleUse_timeoutHandler___block_invoke;
    handler[3] = &unk_1E74B1570;
    objc_copyWeak(&v28, &location);
    useCopy = use;
    v27 = handlerCopy;
    dispatch_source_set_event_handler(v20, handler);
    v14->_stopped = 1;
    v21 = v14;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __76__LNWatchdogTimer_initWithTimeoutInterval_onQueue_singleUse_timeoutHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    [WeakRetained cancel];
  }

  else
  {
    [WeakRetained stop];
  }

  (*(*(a1 + 32) + 16))();
}

- (LNWatchdogTimer)initWithTimeoutInterval:(double)interval timeoutHandler:(id)handler
{
  v7 = dispatch_get_global_queue(17, 0);
  v8 = [(LNWatchdogTimer *)self initWithTimeoutInterval:v7 onQueue:1 singleUse:handler timeoutHandler:interval];

  return v8;
}

@end