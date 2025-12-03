@interface CRKDispatchTimer
+ (id)scheduledTimerWithTimerInterval:(double)interval queue:(id)queue handler:(id)handler;
- (CRKDispatchTimer)initWithTimeInterval:(double)interval queue:(id)queue handler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)resume;
- (void)timerDidFire;
@end

@implementation CRKDispatchTimer

- (void)dealloc
{
  timerSource = [(CRKDispatchTimer *)self timerSource];
  dispatch_source_cancel(timerSource);

  v4.receiver = self;
  v4.super_class = CRKDispatchTimer;
  [(CRKDispatchTimer *)&v4 dealloc];
}

- (CRKDispatchTimer)initWithTimeInterval:(double)interval queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = CRKDispatchTimer;
  v11 = [(CRKDispatchTimer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_timeInterval = interval;
    v13 = MEMORY[0x245D3AAD0](handlerCopy);
    fireHandler = v12->_fireHandler;
    v12->_fireHandler = v13;

    objc_storeStrong(&v12->_targetQueue, queue);
    v15 = dispatch_queue_create(0, 0);
    queue = v12->_queue;
    v12->_queue = v15;
  }

  return v12;
}

+ (id)scheduledTimerWithTimerInterval:(double)interval queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  v10 = [[self alloc] initWithTimeInterval:queueCopy queue:handlerCopy handler:interval];

  [v10 resume];

  return v10;
}

- (void)resume
{
  queue = [(CRKDispatchTimer *)self queue];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  [(CRKDispatchTimer *)self setTimerSource:v4];

  timerSource = [(CRKDispatchTimer *)self timerSource];
  [(CRKDispatchTimer *)self timeInterval];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  dispatch_source_set_timer(timerSource, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_initWeak(&location, self);
  timerSource2 = [(CRKDispatchTimer *)self timerSource];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __26__CRKDispatchTimer_resume__block_invoke;
  v13 = &unk_278DC1870;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(timerSource2, &v10);

  v9 = [(CRKDispatchTimer *)self timerSource:v10];
  dispatch_resume(v9);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __26__CRKDispatchTimer_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained timerSource];
    v3 = dispatch_source_testcancel(v2);

    WeakRetained = v4;
    if (!v3)
    {
      [v4 timerDidFire];
      WeakRetained = v4;
    }
  }
}

- (void)timerDidFire
{
  fireHandler = [(CRKDispatchTimer *)self fireHandler];

  if (fireHandler)
  {
    block = [(CRKDispatchTimer *)self fireHandler];
    [(CRKDispatchTimer *)self setFireHandler:0];
    targetQueue = [(CRKDispatchTimer *)self targetQueue];
    dispatch_async(targetQueue, block);
  }
}

- (void)cancel
{
  queue = [(CRKDispatchTimer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__CRKDispatchTimer_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __26__CRKDispatchTimer_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timerSource];
  dispatch_source_cancel(v2);

  v3 = *(a1 + 32);

  return [v3 setFireHandler:0];
}

@end