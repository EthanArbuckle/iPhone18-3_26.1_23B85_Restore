@interface NACEventThrottler
- (NACEventThrottler)initWithQueue:(id)queue;
- (void)_fire;
- (void)cancel;
- (void)setEventBlock:(id)block;
- (void)setValue:(id)value;
@end

@implementation NACEventThrottler

- (NACEventThrottler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = NACEventThrottler;
  v5 = [(NACEventThrottler *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_minimumDelay = 1.0;
    if (queueCopy)
    {
      v7 = queueCopy;
      queue = v6->_queue;
      v6->_queue = v7;
    }

    else
    {
      v9 = MEMORY[0x277D85CD0];
      v10 = MEMORY[0x277D85CD0];
      queue = v6->_queue;
      v6->_queue = v9;
    }
  }

  return v6;
}

- (void)setEventBlock:(id)block
{
  v4 = [block copy];
  eventBlock = self->_eventBlock;
  self->_eventBlock = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_storeStrong(&self->_value, value);
  if (!self->_timer)
  {
    v6 = self->_minimumDelay - (CACurrentMediaTime() - self->_lastUpdateTime);
    if (v6 <= 0.0)
    {
      [(NACEventThrottler *)self _fire];
    }

    else
    {
      v7 = (v6 * 1000000000.0);
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
      timer = self->_timer;
      self->_timer = v8;

      objc_initWeak(&location, self);
      v10 = self->_timer;
      v11 = dispatch_time(0, v7);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, (v7 / 20.0));
      v12 = self->_timer;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __30__NACEventThrottler_setValue___block_invoke;
      v13[3] = &unk_27992B678;
      objc_copyWeak(&v14, &location);
      dispatch_source_set_event_handler(v12, v13);
      dispatch_resume(self->_timer);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __30__NACEventThrottler_setValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fire];
}

- (void)_fire
{
  eventBlock = self->_eventBlock;
  if (eventBlock)
  {
    eventBlock[2](eventBlock, self->_value);
  }

  self->_lastUpdateTime = CACurrentMediaTime();

  [(NACEventThrottler *)self cancel];
}

- (void)cancel
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

@end