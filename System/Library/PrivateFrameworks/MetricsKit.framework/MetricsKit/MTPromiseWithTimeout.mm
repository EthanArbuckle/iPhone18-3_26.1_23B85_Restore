@interface MTPromiseWithTimeout
- (MTPromiseWithTimeout)initWithTimeout:(double)a3 queue:(id)a4 timeoutBlock:(id)a5;
- (void)dealloc;
- (void)finishWithError:(id)a3;
- (void)finishWithResult:(id)a3;
@end

@implementation MTPromiseWithTimeout

- (MTPromiseWithTimeout)initWithTimeout:(double)a3 queue:(id)a4 timeoutBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = MTPromiseWithTimeout;
  v10 = [(MTPromiseWithTimeout *)&v22 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    [(MTPromiseWithTimeout *)v10 setStartDate:v11];

    v12 = objc_alloc_init(MTPromise);
    [(MTPromiseWithTimeout *)v10 setPromise:v12];

    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
    dispatch_source_set_timer(v13, 0, (a3 * 1000000000.0), 0x989680uLL);
    objc_initWeak(&location, v10);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __59__MTPromiseWithTimeout_initWithTimeout_queue_timeoutBlock___block_invoke;
    v18 = &unk_2798CE6C8;
    objc_copyWeak(v20, &location);
    v20[1] = *&a3;
    v19 = v9;
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

- (void)finishWithResult:(id)a3
{
  v9 = a3;
  v4 = [(MTPromiseWithTimeout *)self promise];
  v5 = [v4 isFinished];

  if ((v5 & 1) == 0)
  {
    v6 = [(MTPromiseWithTimeout *)self promise];
    [v6 finishWithResult:v9];
  }

  v7 = [(MTPromiseWithTimeout *)self dispatchSourceTimer];

  if (v7)
  {
    v8 = [(MTPromiseWithTimeout *)self dispatchSourceTimer];
    dispatch_source_cancel(v8);

    [(MTPromiseWithTimeout *)self setDispatchSourceTimer:0];
  }
}

- (void)finishWithError:(id)a3
{
  v9 = a3;
  v4 = [(MTPromiseWithTimeout *)self promise];
  v5 = [v4 isFinished];

  if ((v5 & 1) == 0)
  {
    v6 = [(MTPromiseWithTimeout *)self promise];
    [v6 finishWithError:v9];
  }

  v7 = [(MTPromiseWithTimeout *)self dispatchSourceTimer];

  if (v7)
  {
    v8 = [(MTPromiseWithTimeout *)self dispatchSourceTimer];
    dispatch_source_cancel(v8);

    [(MTPromiseWithTimeout *)self setDispatchSourceTimer:0];
  }
}

- (void)dealloc
{
  v3 = [(MTPromiseWithTimeout *)self dispatchSourceTimer];

  if (v3)
  {
    v4 = [(MTPromiseWithTimeout *)self dispatchSourceTimer];
    dispatch_source_cancel(v4);
  }

  v5.receiver = self;
  v5.super_class = MTPromiseWithTimeout;
  [(MTPromiseWithTimeout *)&v5 dealloc];
}

@end