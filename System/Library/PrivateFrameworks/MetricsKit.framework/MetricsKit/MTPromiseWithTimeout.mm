@interface MTPromiseWithTimeout
- (MTPromiseWithTimeout)initWithTimeout:(double)timeout queue:(id)queue timeoutBlock:(id)block;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)finishWithResult:(id)result;
@end

@implementation MTPromiseWithTimeout

- (MTPromiseWithTimeout)initWithTimeout:(double)timeout queue:(id)queue timeoutBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = MTPromiseWithTimeout;
  v10 = [(MTPromiseWithTimeout *)&v22 init];
  if (v10)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(MTPromiseWithTimeout *)v10 setStartDate:date];

    v12 = objc_alloc_init(MTPromise);
    [(MTPromiseWithTimeout *)v10 setPromise:v12];

    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
    dispatch_source_set_timer(v13, 0, (timeout * 1000000000.0), 0x989680uLL);
    objc_initWeak(&location, v10);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __59__MTPromiseWithTimeout_initWithTimeout_queue_timeoutBlock___block_invoke;
    v18 = &unk_2798CE6C8;
    objc_copyWeak(v20, &location);
    v20[1] = *&timeout;
    v19 = blockCopy;
    dispatch_source_set_event_handler(v13, &v15);
    [(MTPromiseWithTimeout *)v10 setDispatchSourceTimer:v13, v15, v16, v17, v18];
    dispatch_resume(v13);

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __59__MTPromiseWithTimeout_initWithTimeout_queue_timeoutBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained startDate];
    [v3 timeIntervalSinceNow];
    v5 = v4 + -0.01;
    v6 = -*(a1 + 48);

    WeakRetained = v7;
    if (v5 < v6)
    {
      (*(*(a1 + 32) + 16))();
      WeakRetained = v7;
    }
  }
}

- (void)finishWithResult:(id)result
{
  resultCopy = result;
  promise = [(MTPromiseWithTimeout *)self promise];
  isFinished = [promise isFinished];

  if ((isFinished & 1) == 0)
  {
    promise2 = [(MTPromiseWithTimeout *)self promise];
    [promise2 finishWithResult:resultCopy];
  }

  dispatchSourceTimer = [(MTPromiseWithTimeout *)self dispatchSourceTimer];

  if (dispatchSourceTimer)
  {
    dispatchSourceTimer2 = [(MTPromiseWithTimeout *)self dispatchSourceTimer];
    dispatch_source_cancel(dispatchSourceTimer2);

    [(MTPromiseWithTimeout *)self setDispatchSourceTimer:0];
  }
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  promise = [(MTPromiseWithTimeout *)self promise];
  isFinished = [promise isFinished];

  if ((isFinished & 1) == 0)
  {
    promise2 = [(MTPromiseWithTimeout *)self promise];
    [promise2 finishWithError:errorCopy];
  }

  dispatchSourceTimer = [(MTPromiseWithTimeout *)self dispatchSourceTimer];

  if (dispatchSourceTimer)
  {
    dispatchSourceTimer2 = [(MTPromiseWithTimeout *)self dispatchSourceTimer];
    dispatch_source_cancel(dispatchSourceTimer2);

    [(MTPromiseWithTimeout *)self setDispatchSourceTimer:0];
  }
}

- (void)dealloc
{
  dispatchSourceTimer = [(MTPromiseWithTimeout *)self dispatchSourceTimer];

  if (dispatchSourceTimer)
  {
    dispatchSourceTimer2 = [(MTPromiseWithTimeout *)self dispatchSourceTimer];
    dispatch_source_cancel(dispatchSourceTimer2);
  }

  v5.receiver = self;
  v5.super_class = MTPromiseWithTimeout;
  [(MTPromiseWithTimeout *)&v5 dealloc];
}

@end