@interface EDTaskScheduler
- (EDTaskScheduler)initWithExecutionQueue:(id)a3;
- (void)_cancelTimer;
- (void)_doScheduleTask:(id)a3 canceledCallback:(id)a4;
- (void)_incrementBackoffInterval;
- (void)_reportReachabilityChange:(id)a3;
- (void)_startObservingNetworkReachability;
- (void)_stopObservingNetworkReachability;
- (void)dealloc;
- (void)rescheduleTask;
- (void)scheduleTask:(id)a3 canceledCallback:(id)a4;
- (void)setObserveForNetworkReachability:(BOOL)a3;
@end

@implementation EDTaskScheduler

- (EDTaskScheduler)initWithExecutionQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EDTaskScheduler;
  v6 = [(EDTaskScheduler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executionQueue, a3);
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

- (void)scheduleTask:(id)a3 canceledCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDTaskScheduler *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EDTaskScheduler_scheduleTask_canceledCallback___block_invoke;
  block[3] = &unk_1E8257EA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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
  v3 = [(EDTaskScheduler *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EDTaskScheduler_rescheduleTask__block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)_doScheduleTask:(id)a3 canceledCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(EDTaskScheduler *)self initialDelay];
  v9 = v8;
  v10 = [(EDTaskScheduler *)self timerSource];

  if (v10)
  {
    [(EDTaskScheduler *)self _cancelTimer];
    [(EDTaskScheduler *)self _incrementBackoffInterval];
    [(EDTaskScheduler *)self backOffInterval];
    v9 = v11;
  }

  v12 = [(EDTaskScheduler *)self executionQueue];
  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v12);
  [(EDTaskScheduler *)self setTimerSource:v13];

  [(EDTaskScheduler *)self setTask:v6];
  [(EDTaskScheduler *)self setCanceledCallback:v7];
  objc_initWeak(&location, self);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __52__EDTaskScheduler__doScheduleTask_canceledCallback___block_invoke;
  v22 = &unk_1E8250808;
  objc_copyWeak(&v23, &location);
  [(EDTaskScheduler *)self setWork:&v19];
  v14 = [(EDTaskScheduler *)self timerSource:v19];
  v15 = [(EDTaskScheduler *)self work];
  dispatch_source_set_event_handler(v14, v15);

  v16 = [(EDTaskScheduler *)self timerSource];
  dispatch_resume(v16);

  v17 = [(EDTaskScheduler *)self timerSource];
  v18 = dispatch_time(0, (v9 * 1000000000.0));
  dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);

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

- (void)setObserveForNetworkReachability:(BOOL)a3
{
  if (self->_observeForNetworkReachability != a3)
  {
    self->_observeForNetworkReachability = a3;
    if (a3)
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
  v3 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  [v3 addNetworkReachableObserver:self selector:sel__reportReachabilityChange_];

  v4 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  -[EDTaskScheduler setIsReachable:](self, "setIsReachable:", [v4 isNetworkReachable]);
}

- (void)_stopObservingNetworkReachability
{
  v3 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  [v3 removeObserver:self];
}

- (void)_reportReachabilityChange:(id)a3
{
  v4 = [(EDTaskScheduler *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EDTaskScheduler__reportReachabilityChange___block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_async(v4, block);
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
  v3 = [(EDTaskScheduler *)self timerSource];

  if (v3)
  {
    v4 = [(EDTaskScheduler *)self timerSource];
    dispatch_source_cancel(v4);

    [(EDTaskScheduler *)self setTimerSource:0];
  }
}

@end