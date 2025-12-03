@interface FMDispatchTimer
- (FMDispatchTimer)initWithQueue:(id)queue timeout:(double)timeout completion:(id)completion;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation FMDispatchTimer

- (FMDispatchTimer)initWithQueue:(id)queue timeout:(double)timeout completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v18.receiver = self;
  v18.super_class = FMDispatchTimer;
  v10 = [(FMDispatchTimer *)&v18 init];
  if (v10)
  {
    if (queueCopy)
    {
      v11 = queueCopy;
      queue = v10->_queue;
      v10->_queue = v11;
    }

    else
    {
      v13 = MEMORY[0x277D85CD0];
      v14 = MEMORY[0x277D85CD0];
      queue = v10->_queue;
      v10->_queue = v13;
    }

    v10->_timeout = timeout;
    v15 = MEMORY[0x24C215A50](completionCopy);
    completion = v10->_completion;
    v10->_completion = v15;

    v10->_leewayTimeInterval = 1.0;
  }

  return v10;
}

- (void)dealloc
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
  }

  v4.receiver = self;
  v4.super_class = FMDispatchTimer;
  [(FMDispatchTimer *)&v4 dealloc];
}

- (void)start
{
  queue = [(FMDispatchTimer *)self queue];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  [(FMDispatchTimer *)self setTimerSource:v4];

  objc_initWeak(&location, self);
  timerSource = [(FMDispatchTimer *)self timerSource];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __24__FMDispatchTimer_start__block_invoke;
  v16 = &unk_278FD96E0;
  objc_copyWeak(&v17, &location);
  dispatch_source_set_event_handler(timerSource, &v13);

  [(FMDispatchTimer *)self timeout:v13];
  v7 = v6;
  [(FMDispatchTimer *)self leewayTimeInterval];
  v9 = v8;
  timerSource2 = [(FMDispatchTimer *)self timerSource];
  v11 = dispatch_time(0, (v7 * 1000000000.0));
  dispatch_source_set_timer(timerSource2, v11, 0xFFFFFFFFFFFFFFFFLL, (v9 * 1000000000.0));

  timerSource3 = [(FMDispatchTimer *)self timerSource];
  dispatch_resume(timerSource3);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __24__FMDispatchTimer_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained completion];
  v2 = v1;
  if (v1)
  {
    (*(v1 + 16))(v1);
  }
}

- (void)cancel
{
  timerSource = [(FMDispatchTimer *)self timerSource];

  if (timerSource)
  {
    timerSource2 = [(FMDispatchTimer *)self timerSource];
    dispatch_source_cancel(timerSource2);

    [(FMDispatchTimer *)self setTimerSource:0];
  }
}

@end