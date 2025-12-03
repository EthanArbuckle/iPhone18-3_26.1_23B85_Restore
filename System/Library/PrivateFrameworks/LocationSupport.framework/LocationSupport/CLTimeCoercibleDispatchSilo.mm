@interface CLTimeCoercibleDispatchSilo
- (CLTimeCoercibleDispatchSilo)initWithIdentifier:(id)identifier;
- (CLTimeCoercibleDispatchSilo)initWithUnderlyingQueue:(id)queue;
- (id)newTimer;
- (void)afterInterval:(double)interval async:(id)async;
- (void)heartBeat:(id)beat;
- (void)prepareAndRunBlock:(id)block;
- (void)setLatchedAbsoluteTimestamp:(double)timestamp;
@end

@implementation CLTimeCoercibleDispatchSilo

- (CLTimeCoercibleDispatchSilo)initWithIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CLTimeCoercibleDispatchSilo;
  v3 = [(CLDispatchSilo *)&v7 initWithIdentifier:identifier];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    timerHolders = v3->_timerHolders;
    v3->_timerHolders = array;
  }

  return v3;
}

- (CLTimeCoercibleDispatchSilo)initWithUnderlyingQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = CLTimeCoercibleDispatchSilo;
  v3 = [(CLDispatchSilo *)&v7 initWithUnderlyingQueue:queue];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    timerHolders = v3->_timerHolders;
    v3->_timerHolders = array;
  }

  return v3;
}

- (void)setLatchedAbsoluteTimestamp:(double)timestamp
{
  v28 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self currentLatchedAbsoluteTimestamp];
  v6 = timestamp - v5;
  [(CLDispatchSilo *)self _setLatchedAbsoluteTimestamp:timestamp];
  v7 = self->_timerHolders;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  timerHolders = self->_timerHolders;
  self->_timerHolders = array2;

  v11 = MEMORY[0x1E696AE18];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1DF81B878;
  v24[3] = &unk_1E86C8520;
  v26 = v6;
  v12 = array;
  v25 = v12;
  v13 = [v11 predicateWithBlock:v24];
  [(NSMutableArray *)v7 filterUsingPredicate:v13];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * v18++) shouldFire];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v16);
  }

  [(NSMutableArray *)self->_timerHolders addObjectsFromArray:v7];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)prepareAndRunBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block);
  }
}

- (void)afterInterval:(double)interval async:(id)async
{
  asyncCopy = async;
  newTimer = [(CLTimeCoercibleDispatchSilo *)self newTimer];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1DF81BA20;
  v13 = &unk_1E86C8548;
  v14 = newTimer;
  v15 = asyncCopy;
  v8 = newTimer;
  v9 = asyncCopy;
  [v8 setHandler:&v10];
  [v8 setNextFireDelay:{interval, v10, v11, v12, v13}];
}

- (void)heartBeat:(id)beat
{
  beatCopy = beat;
  queue = [(CLDispatchSilo *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF81BB14;
  block[3] = &unk_1E86C8570;
  v8 = beatCopy;
  v6 = beatCopy;
  dispatch_async(queue, block);
}

- (id)newTimer
{
  v3 = [[CLTimer alloc] initInSilo:self withScheduler:0];
  timerHolders = self->_timerHolders;
  v5 = [CLTimerWeakHolder holderWithTimer:v3];
  [(NSMutableArray *)timerHolders addObject:v5];

  return v3;
}

@end