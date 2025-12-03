@interface MTGCDTimer
- (void)cancelTimer;
- (void)dealloc;
- (void)startTimer:(double)timer block:(id)block;
@end

@implementation MTGCDTimer

- (void)dealloc
{
  [(MTGCDTimer *)self cancelTimer];
  v3.receiver = self;
  v3.super_class = MTGCDTimer;
  [(MTGCDTimer *)&v3 dealloc];
}

- (void)startTimer:(double)timer block:(id)block
{
  blockCopy = block;
  if (self->_timer)
  {
    [(MTGCDTimer *)self cancelTimer];
  }

  v7 = dispatch_get_global_queue(33, 0);
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v7);
  timer = self->_timer;
  self->_timer = v8;

  v10 = self->_timer;
  v11 = dispatch_time(0, (timer * 1000000000.0));
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  v12 = self->_timer;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __31__MTGCDTimer_startTimer_block___block_invoke;
  v20 = &unk_1E7B0EE90;
  selfCopy = self;
  v22 = blockCopy;
  v13 = blockCopy;
  dispatch_source_set_event_handler(v12, &v17);
  v14 = [MTPowerAssertion alloc];
  selfCopy = [(MTPowerAssertion *)v14 initWithName:@"com.apple.MTGCDTimer" assertionTimeout:20.0, v17, v18, v19, v20, selfCopy];
  powerAssertion = self->_powerAssertion;
  self->_powerAssertion = selfCopy;

  [(MTPowerAssertion *)self->_powerAssertion takeAssertion];
  dispatch_resume(self->_timer);
}

uint64_t __31__MTGCDTimer_startTimer_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 cancelTimer];
}

- (void)cancelTimer
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;

    [(MTPowerAssertion *)self->_powerAssertion releaseAssertion];
    powerAssertion = self->_powerAssertion;
    self->_powerAssertion = 0;
  }
}

@end