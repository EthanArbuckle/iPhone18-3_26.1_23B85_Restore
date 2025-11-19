@interface MTExponentialBackOffTimer
+ (id)timerWithInitialTime:(double)a3 backoffFactor:(unint64_t)a4 fireBlock:(id)a5;
+ (id)timerWithInitialTime:(double)a3 backoffFactor:(unint64_t)a4 fireBlock:(id)a5 queue:(id)a6;
- (MTExponentialBackOffTimer)initWithInitialTime:(double)a3 backoffFactor:(unint64_t)a4 fireBlock:(id)a5 queue:(id)a6;
- (void)_cancel;
- (void)reset;
- (void)start;
- (void)stop;
- (void)timerFinished;
@end

@implementation MTExponentialBackOffTimer

+ (id)timerWithInitialTime:(double)a3 backoffFactor:(unint64_t)a4 fireBlock:(id)a5
{
  v8 = a5;
  v9 = dispatch_queue_create("com.apple.MTExponentialBackOffTimer.serial", 0);
  v10 = [a1 timerWithInitialTime:a4 backoffFactor:v8 fireBlock:v9 queue:a3];

  return v10;
}

+ (id)timerWithInitialTime:(double)a3 backoffFactor:(unint64_t)a4 fireBlock:(id)a5 queue:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [[a1 alloc] initWithInitialTime:a4 backoffFactor:v11 fireBlock:v10 queue:a3];

  return v12;
}

- (MTExponentialBackOffTimer)initWithInitialTime:(double)a3 backoffFactor:(unint64_t)a4 fireBlock:(id)a5 queue:(id)a6
{
  v10 = a5;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = MTExponentialBackOffTimer;
  v12 = [(MTExponentialBackOffTimer *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    block = v12->_block;
    v12->_block = v13;

    v12->_currentBackoff = 1;
    v12->_backoffFactor = a4;
    v12->_initialTime = a3;
    objc_storeStrong(&v12->_queue, a6);
  }

  return v12;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MTExponentialBackOffTimer_start__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__MTExponentialBackOffTimer_start__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 8))
  {
    handler[7] = v1;
    handler[8] = v2;
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v3 + 24));
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __34__MTExponentialBackOffTimer_start__block_invoke_2;
    handler[3] = &unk_1E7B0C9D8;
    handler[4] = v8;
    dispatch_source_set_event_handler(v9, handler);
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    v12 = dispatch_time(0, (*(v10 + 32) * *(v10 + 40) * 1000000000.0));
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(*(a1 + 32) + 8));
  }
}

- (void)timerFinished
{
  dispatch_assert_queue_V2(self->_queue);
  timer = self->_timer;
  self->_timer = 0;

  self->_currentBackoff *= self->_backoffFactor;
  v4 = *(self->_block + 2);

  v4();
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MTExponentialBackOffTimer_stop__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__33__MTExponentialBackOffTimer_stop__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[1])
  {
    result = [result _cancel];
    *(*(a1 + 32) + 40) *= *(*(a1 + 32) + 48);
  }

  return result;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MTExponentialBackOffTimer_reset__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__34__MTExponentialBackOffTimer_reset__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[1])
  {
    result = [result _cancel];
    *(*(a1 + 32) + 40) = 1;
  }

  return result;
}

- (void)_cancel
{
  dispatch_source_cancel(self->_timer);
  timer = self->_timer;
  self->_timer = 0;
}

@end