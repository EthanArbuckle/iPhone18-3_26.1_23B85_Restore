@interface LACDTORatchetStateMonitor
- (LACDTORatchetStateMonitor)initWithRatchetStateProvider:(id)provider workQueue:(id)queue;
- (void)_scheduleNextStatusCheck;
- (void)handleEvent:(id)event sender:(id)sender;
- (void)ratchetStateCompositeWithCompletion:(id)completion;
- (void)ratchetStateWithCompletion:(id)completion;
- (void)setRatchetState:(id)state;
@end

@implementation LACDTORatchetStateMonitor

- (LACDTORatchetStateMonitor)initWithRatchetStateProvider:(id)provider workQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = LACDTORatchetStateMonitor;
  v9 = [(LACDTORatchetStateMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ratchetStateProvider, provider);
    objc_storeStrong(&v10->_workQueue, queue);
  }

  return v10;
}

- (void)setRatchetState:(id)state
{
  v18 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  dispatch_assert_queue_V2(self->_workQueue);
  p_ratchetState = &self->_ratchetState;
  if ([(LACDTORatchetState *)self->_ratchetState isEqual:stateCopy])
  {
    if (![(LACTimer *)self->_timer isRunning])
    {
      [(LACDTORatchetStateMonitor *)self _scheduleNextStatusCheck];
    }
  }

  else
  {
    v7 = LACLogDTOState();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *p_ratchetState;
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = stateCopy;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Ratchet state changed from: %{public}@ to %{public}@", &v14, 0x16u);
    }

    v9 = *p_ratchetState;
    objc_storeStrong(&self->_ratchetState, state);
    rawValue = [v9 rawValue];
    if (rawValue != [*p_ratchetState rawValue])
    {
      v11 = [[LACDTOEvent alloc] initWithRawValue:0 value:self->_ratchetState];
      eventBus = [(LACDTORatchetStateMonitor *)self eventBus];
      [eventBus dispatchEvent:v11 sender:self];
    }

    [(LACDTORatchetStateMonitor *)self _scheduleNextStatusCheck];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleEvent:(id)event sender:(id)sender
{
  if ([event rawValue])
  {

    [(LACDTORatchetStateMonitor *)self ratchetStateWithCompletion:&__block_literal_global_16];
  }
}

- (void)ratchetStateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  objc_initWeak(&location, self);
  ratchetStateProvider = self->_ratchetStateProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__LACDTORatchetStateMonitor_ratchetStateWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A38;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(LACDTORatchetStateProvider *)ratchetStateProvider ratchetStateWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__LACDTORatchetStateMonitor_ratchetStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5)
    {
      [WeakRetained setRatchetState:v8];
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)ratchetStateCompositeWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  objc_initWeak(&location, self);
  ratchetStateProvider = self->_ratchetStateProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__LACDTORatchetStateMonitor_ratchetStateCompositeWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95A60;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(LACDTORatchetStateProvider *)ratchetStateProvider ratchetStateCompositeWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__LACDTORatchetStateMonitor_ratchetStateCompositeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v5)
    {
      v7 = [v8 ratchetState];
      [WeakRetained setRatchetState:v7];
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_scheduleNextStatusCheck
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_workQueue);
  if ([(LACTimer *)self->_timer isRunning])
  {
    [(LACTimer *)self->_timer cancel];
    timer = self->_timer;
    self->_timer = 0;
  }

  v4 = objc_alloc_init(LACTimer);
  v5 = self->_timer;
  self->_timer = v4;

  ratchetState = [(LACDTORatchetStateMonitor *)self ratchetState];
  [ratchetState effectiveDuration];
  v8 = v7;

  v9 = LACLogDTOTimers();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v8;
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Schedule ratchet state check in %.2f", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v11 = self->_timer;
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__LACDTORatchetStateMonitor__scheduleNextStatusCheck__block_invoke;
  v13[3] = &unk_1E7A95380;
  objc_copyWeak(&v14, buf);
  [(LACTimer *)v11 dispatchAfter:workQueue inQueue:v13 block:v8];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x1E69E9840];
}

void __53__LACDTORatchetStateMonitor__scheduleNextStatusCheck__block_invoke(uint64_t a1)
{
  v2 = LACLogDTOTimers();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B0233000, v2, OS_LOG_TYPE_DEFAULT, "Performing ratchet state query", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained ratchetStateWithCompletion:&__block_literal_global_7];
}

@end