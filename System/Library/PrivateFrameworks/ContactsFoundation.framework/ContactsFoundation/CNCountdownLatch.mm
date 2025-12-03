@interface CNCountdownLatch
- (BOOL)awaitOnSemaphoreWithTimeout:(double)timeout;
- (BOOL)awaitWhileSpinningRunloopWithTimeout:(double)timeout;
- (BOOL)awaitWithTimeout:(double)timeout strategy:(unint64_t)strategy;
- (BOOL)hasLatched;
- (CNCountdownLatch)initWithStartingCount:(unint64_t)count;
- (id)description;
- (void)countDown;
@end

@implementation CNCountdownLatch

- (CNCountdownLatch)initWithStartingCount:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = CNCountdownLatch;
  v4 = [(CNCountdownLatch *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = count;
    v6 = objc_alloc_init(CNUnfairLock);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = dispatch_semaphore_create(0);
    latchedSemaphore = v5->_latchedSemaphore;
    v5->_latchedSemaphore = v8;

    v10 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"count" unsignedInteger:self->_count];
  build = [v3 build];

  return build;
}

- (void)countDown
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__CNCountdownLatch_countDown__block_invoke;
  v3[3] = &unk_1E6ED5830;
  v3[4] = self;
  CNRunWithLock(lock, v3);
}

intptr_t __29__CNCountdownLatch_countDown__block_invoke(intptr_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 - 1;
    v3 = *(result + 32);
    if (!*(v3 + 8))
    {
      return dispatch_semaphore_signal(*(v3 + 24));
    }
  }

  return result;
}

- (BOOL)awaitWithTimeout:(double)timeout strategy:(unint64_t)strategy
{
  if (timeout <= 0.0)
  {
    return [(CNCountdownLatch *)self awaitImmediate];
  }

  if (strategy == 1)
  {
    return [(CNCountdownLatch *)self awaitWhileSpinningRunloopWithTimeout:?];
  }

  return [(CNCountdownLatch *)self awaitOnSemaphoreWithTimeout:?];
}

- (BOOL)hasLatched
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CNCountdownLatch_hasLatched__block_invoke;
  v5[3] = &unk_1E6ED5808;
  v5[4] = self;
  v5[5] = &v6;
  CNRunWithLock(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)awaitOnSemaphoreWithTimeout:(double)timeout
{
  v4 = CNDispatchSemaphoreWait(self->_latchedSemaphore, timeout);
  if (v4)
  {
    dispatch_semaphore_signal(self->_latchedSemaphore);
  }

  return v4;
}

- (BOOL)awaitWhileSpinningRunloopWithTimeout:(double)timeout
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:timeout];
  do
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.1];
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop runUntilDate:v5];

    hasLatched = [(CNCountdownLatch *)self hasLatched];
    [v4 timeIntervalSinceNow];
  }

  while (v8 > 0.0 && !hasLatched);

  return hasLatched;
}

@end