@interface CalIdleTimer
- (CalIdleTimer)initWithQueue:(id)queue timeoutInSeconds:(unint64_t)seconds leewayInSeconds:(unint64_t)inSeconds timeoutBlock:(id)block;
- (void)cancel;
- (void)poke;
- (void)start;
@end

@implementation CalIdleTimer

- (CalIdleTimer)initWithQueue:(id)queue timeoutInSeconds:(unint64_t)seconds leewayInSeconds:(unint64_t)inSeconds timeoutBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = CalIdleTimer;
  v13 = [(CalIdleTimer *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, queue);
    v15 = _Block_copy(blockCopy);
    timeoutBlock = v14->_timeoutBlock;
    v14->_timeoutBlock = v15;

    v14->_timeoutInSeconds = seconds;
    v14->_leewayInSeconds = inSeconds;
  }

  return v14;
}

- (void)start
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_timer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    timer = self->_timer;
    self->_timer = v3;

    objc_initWeak(&location, self);
    v5 = self->_timer;
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __21__CalIdleTimer_start__block_invoke;
    v9 = &unk_1E7EC69C0;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v5, &v6);
    dispatch_activate(self->_timer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  [(CalIdleTimer *)self poke:v6];
}

void __21__CalIdleTimer_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained cancel];
    (*(v2[2] + 16))();
    WeakRetained = v2;
  }
}

- (void)cancel
{
  dispatch_assert_queue_V2(self->_queue);
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)poke
{
  dispatch_assert_queue_V2(self->_queue);
  timer = self->_timer;
  if (timer)
  {
    v4 = 1000000000 * self->_timeoutInSeconds;
    v5 = 1000000000 * self->_leewayInSeconds;
    v6 = dispatch_time(0, v4);

    dispatch_source_set_timer(timer, v6, 0xFFFFFFFFFFFFFFFFLL, v5);
  }
}

@end