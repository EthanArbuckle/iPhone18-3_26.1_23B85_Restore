@interface LACDTOLocationMonitor
- (LACDTOLocationMonitor)initWithLocationProvider:(id)provider workQueue:(id)queue;
- (LACDTOLocationMonitorDelegate)delegate;
- (void)startMonitoringWithReason:(id)reason;
- (void)stopMonitoringWithReason:(id)reason;
@end

@implementation LACDTOLocationMonitor

- (LACDTOLocationMonitor)initWithLocationProvider:(id)provider workQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = LACDTOLocationMonitor;
  v9 = [(LACDTOLocationMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationProvider, provider);
    objc_storeStrong(&v10->_workQueue, queue);
  }

  return v10;
}

- (void)startMonitoringWithReason:(id)reason
{
  v21 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_workQueue);
  if ([(LACTimer *)self->_timer isRunning])
  {
    v5 = LACLogDTOTimers();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(LACDTOLocationMonitor *)self startMonitoringWithReason:v5];
    }
  }

  else
  {
    v6 = objc_alloc_init(LACTimer);
    timer = self->_timer;
    self->_timer = v6;

    v8 = LACLogDTOTimers();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v17 = 2048;
      v18 = 0x4024000000000000;
      v19 = 2114;
      v20 = reasonCopy;
      _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ starting monitor with an interval of %.2f secs with reason: %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    p_workQueue = &self->_workQueue;
    workQueue = self->_workQueue;
    v10 = p_workQueue[1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__LACDTOLocationMonitor_startMonitoringWithReason___block_invoke;
    v13[3] = &unk_1E7A95380;
    objc_copyWeak(&v14, buf);
    [(OS_dispatch_queue *)v10 dispatchAfter:workQueue inQueue:1 repeat:v13 block:10.0];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __51__LACDTOLocationMonitor_startMonitoringWithReason___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = LACLogDTOTimers();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = WeakRetained;
      _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ performing scheduled query", buf, 0xCu);
    }

    v4 = WeakRetained[1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__LACDTOLocationMonitor_startMonitoringWithReason___block_invoke_1;
    v6[3] = &unk_1E7A97C50;
    objc_copyWeak(&v7, (a1 + 32));
    [v4 checkIsInFamiliarLocationWithCompletion:v6];
    objc_destroyWeak(&v7);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __51__LACDTOLocationMonitor_startMonitoringWithReason___block_invoke_1(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 4);
    [v5 locationMonitor:v4 didReceiveLocationState:v6];
  }
}

- (void)stopMonitoringWithReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = LACLogDTOTimers();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = reasonCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping monitor with reason: %{public}@", &v8, 0x16u);
  }

  [(LACTimer *)self->_timer cancel];
  timer = self->_timer;
  self->_timer = 0;

  v7 = *MEMORY[0x1E69E9840];
}

- (LACDTOLocationMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startMonitoringWithReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ ignoring redundant request to start", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end