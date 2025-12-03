@interface MSVVariableIntervalTimer
- (BOOL)isValid;
- (MSVVariableIntervalTimer)initWithIntervals:(id)intervals name:(id)name queue:(id)queue block:(id)block;
- (NSArray)remainingIntervals;
- (double)currentInterval;
- (double)timeUntilNextInterval;
- (void)_processTimerEventWithQueue:(id)queue block:(id)block;
@end

@implementation MSVVariableIntervalTimer

- (BOOL)isValid
{
  remainingIntervals = [(MSVVariableIntervalTimer *)self remainingIntervals];
  v3 = [remainingIntervals count] != 0;

  return v3;
}

- (double)timeUntilNextInterval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MSVVariableIntervalTimer *)selfCopy currentInterval];
  v4 = v3;
  [(NSDate *)selfCopy->_currentIntervalStartDate timeIntervalSinceNow];
  v6 = v4 + v5;
  objc_sync_exit(selfCopy);

  return v6;
}

- (double)currentInterval
{
  remainingIntervals = [(MSVVariableIntervalTimer *)self remainingIntervals];
  firstObject = [remainingIntervals firstObject];
  [firstObject doubleValue];
  v5 = v4;

  return v5;
}

- (NSArray)remainingIntervals
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_intervals copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_processTimerEventWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  [(MSVTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  if ([(NSMutableArray *)self->_intervals count])
  {
    v9 = [MEMORY[0x1E695DF00] now];
    currentIntervalStartDate = self->_currentIntervalStartDate;
    self->_currentIntervalStartDate = v9;

    objc_initWeak(&location, self);
    v11 = [MSVTimer alloc];
    firstObject = [(NSMutableArray *)self->_intervals firstObject];
    [firstObject doubleValue];
    v14 = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__MSVVariableIntervalTimer__processTimerEventWithQueue_block___block_invoke;
    v17[3] = &unk_1E7981818;
    objc_copyWeak(&v20, &location);
    v19 = blockCopy;
    v18 = queueCopy;
    v15 = [(MSVTimer *)v11 initWithInterval:0 repeats:v18 queue:v17 block:v14];
    v16 = self->_timer;
    self->_timer = v15;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __62__MSVVariableIntervalTimer__processTimerEventWithQueue_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    if ([v3[1] count] == 1)
    {
      v4 = v3[3];
      v3[3] = 0;
    }

    objc_sync_exit(v3);

    (*(*(a1 + 40) + 16))();
    v5 = v3;
    objc_sync_enter(v5);
    [v3[1] removeObjectAtIndex:0];
    [v5 _processTimerEventWithQueue:*(a1 + 32) block:*(a1 + 40)];
    objc_sync_exit(v5);

    WeakRetained = v6;
  }
}

- (MSVVariableIntervalTimer)initWithIntervals:(id)intervals name:(id)name queue:(id)queue block:(id)block
{
  intervalsCopy = intervals;
  queueCopy = queue;
  blockCopy = block;
  if (![intervalsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVTimer.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"intervals.count > 0"}];
  }

  v18.receiver = self;
  v18.super_class = MSVVariableIntervalTimer;
  v13 = [(MSVVariableIntervalTimer *)&v18 init];
  if (v13)
  {
    v14 = [intervalsCopy mutableCopy];
    intervals = v13->_intervals;
    v13->_intervals = v14;

    [(MSVVariableIntervalTimer *)v13 _processTimerEventWithQueue:queueCopy block:blockCopy];
  }

  return v13;
}

@end