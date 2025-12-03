@interface EDTaskScheduler
- (EDTaskScheduler)initWithExecutionQueue:(id)queue;
- (void)_cancelTimer;
- (void)_doScheduleTask:(id)task canceledCallback:(id)callback;
- (void)_incrementBackoffInterval;
- (void)_reportReachabilityChange:(id)change;
- (void)_startObservingNetworkReachability;
- (void)_stopObservingNetworkReachability;
- (void)dealloc;
- (void)rescheduleTask;
- (void)scheduleTask:(id)task canceledCallback:(id)callback;
- (void)setObserveForNetworkReachability:(BOOL)reachability;
@end

@implementation EDTaskScheduler

- (EDTaskScheduler)initWithExecutionQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = EDTaskScheduler;
  v6 = [(EDTaskScheduler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executionQueue, queue);
    *&v7->_maxBackOffInterval = xmmword_1C6472020;
  }

  return v7;
}

- (void)dealloc
{
  [(EDTaskScheduler *)self _stopObservingNetworkReachability];
  v3.receiver = self;
  v3.super_class = EDTaskScheduler;
  [(EDTaskScheduler *)&v3 dealloc];
}

- (void)scheduleTask:(id)task canceledCallback:(id)callback
{
  taskCopy = task;
  callbackCopy = callback;
  executionQueue = [(EDTaskScheduler *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EDTaskScheduler_scheduleTask_canceledCallback___block_invoke;
  block[3] = &unk_1E8257EA8;
  block[4] = self;
  v12 = taskCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = taskCopy;
  dispatch_async(executionQueue, block);
}

uint64_t __49__EDTaskScheduler_scheduleTask_canceledCallback___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackOffInterval:0.0];
  [*(a1 + 32) _cancelTimer];
  [*(a1 + 32) setPendingWaitingForNetwork:0];
  [*(a1 + 32) setWork:0];
  v2 = [*(a1 + 32) canceledCallback];

  if (v2)
  {
    v3 = [*(a1 + 32) canceledCallback];
    v3[2]();

    [*(a1 + 32) setCanceledCallback:0];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v4 _doScheduleTask:v5 canceledCallback:v6];
}

- (void)rescheduleTask
{
  executionQueue = [(EDTaskScheduler *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EDTaskScheduler_rescheduleTask__block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

void __33__EDTaskScheduler_rescheduleTask__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelTimer];
  [*(a1 + 32) setPendingWaitingForNetwork:0];
  v2 = *(a1 + 32);
  v4 = [v2 task];
  v3 = [*(a1 + 32) canceledCallback];
  [v2 _doScheduleTask:v4 canceledCallback:v3];
}

- (void)_doScheduleTask:(id)task canceledCallback:(id)callback
{
  taskCopy = task;
  callbackCopy = callback;
  [(EDTaskScheduler *)self initialDelay];
  v9 = v8;
  timerSource = [(EDTaskScheduler *)self timerSource];

  if (timerSource)
  {
    [(EDTaskScheduler *)self _cancelTimer];
    [(EDTaskScheduler *)self _incrementBackoffInterval];
    [(EDTaskScheduler *)self backOffInterval];
    v9 = v11;
  }

  executionQueue = [(EDTaskScheduler *)self executionQueue];
  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, executionQueue);
  [(EDTaskScheduler *)self setTimerSource:v13];

  [(EDTaskScheduler *)self setTask:taskCopy];
  [(EDTaskScheduler *)self setCanceledCallback:callbackCopy];
  objc_initWeak(&location, self);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __52__EDTaskScheduler__doScheduleTask_canceledCallback___block_invoke;
  v22 = &unk_1E8250808;
  objc_copyWeak(&v23, &location);
  [(EDTaskScheduler *)self setWork:&v19];
  v14 = [(EDTaskScheduler *)self timerSource:v19];
  work = [(EDTaskScheduler *)self work];
  dispatch_source_set_event_handler(v14, work);

  timerSource2 = [(EDTaskScheduler *)self timerSource];
  dispatch_resume(timerSource2);

  timerSource3 = [(EDTaskScheduler *)self timerSource];
  v18 = dispatch_time(0, (v9 * 1000000000.0));
  dispatch_source_set_timer(timerSource3, v18, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __52__EDTaskScheduler__doScheduleTask_canceledCallback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained observeForNetworkReachability] && !objc_msgSend(WeakRetained, "isReachable"))
  {
    [WeakRetained setPendingWaitingForNetwork:1];
  }

  else
  {
    v1 = [WeakRetained canceledCallback];

    if (v1)
    {
      [WeakRetained setCanceledCallback:0];
    }

    v2 = [WeakRetained task];
    v2[2]();
  }
}

- (void)setObserveForNetworkReachability:(BOOL)reachability
{
  if (self->_observeForNetworkReachability != reachability)
  {
    self->_observeForNetworkReachability = reachability;
    if (reachability)
    {
      [(EDTaskScheduler *)self _startObservingNetworkReachability];
    }

    else
    {
      [(EDTaskScheduler *)self _stopObservingNetworkReachability];
    }
  }
}

- (void)_startObservingNetworkReachability
{
  mEMORY[0x1E698B6A0] = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  [mEMORY[0x1E698B6A0] addNetworkReachableObserver:self selector:sel__reportReachabilityChange_];

  mEMORY[0x1E698B6A0]2 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  -[EDTaskScheduler setIsReachable:](self, "setIsReachable:", [mEMORY[0x1E698B6A0]2 isNetworkReachable]);
}

- (void)_stopObservingNetworkReachability
{
  mEMORY[0x1E698B6A0] = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  [mEMORY[0x1E698B6A0] removeObserver:self];
}

- (void)_reportReachabilityChange:(id)change
{
  executionQueue = [(EDTaskScheduler *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EDTaskScheduler__reportReachabilityChange___block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

void __45__EDTaskScheduler__reportReachabilityChange___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  [*(a1 + 32) setIsReachable:{objc_msgSend(v3, "isNetworkReachable")}];

  v2 = [*(a1 + 32) timerSource];

  if (v2 && [*(a1 + 32) isReachable] && objc_msgSend(*(a1 + 32), "pendingWaitingForNetwork"))
  {
    v4 = [*(a1 + 32) work];
    [*(a1 + 32) setPendingWaitingForNetwork:0];
    v4[2]();
  }
}

- (void)_incrementBackoffInterval
{
  backOffInterval = self->_backOffInterval;
  v3 = 1.0;
  if (backOffInterval != 0.0)
  {
    v3 = backOffInterval * self->_backoffMultiplier;
  }

  self->_backOffInterval = v3;
  [(EDTaskScheduler *)self maxBackOffInterval];
}

- (void)_cancelTimer
{
  timerSource = [(EDTaskScheduler *)self timerSource];

  if (timerSource)
  {
    timerSource2 = [(EDTaskScheduler *)self timerSource];
    dispatch_source_cancel(timerSource2);

    [(EDTaskScheduler *)self setTimerSource:0];
  }
}

@end