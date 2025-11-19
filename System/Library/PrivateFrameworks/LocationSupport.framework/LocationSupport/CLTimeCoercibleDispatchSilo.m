@interface CLTimeCoercibleDispatchSilo
- (CLTimeCoercibleDispatchSilo)initWithIdentifier:(id)a3;
- (CLTimeCoercibleDispatchSilo)initWithUnderlyingQueue:(id)a3;
- (id)newTimer;
- (void)afterInterval:(double)a3 async:(id)a4;
- (void)heartBeat:(id)a3;
- (void)prepareAndRunBlock:(id)a3;
- (void)setLatchedAbsoluteTimestamp:(double)a3;
@end

@implementation CLTimeCoercibleDispatchSilo

- (CLTimeCoercibleDispatchSilo)initWithIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLTimeCoercibleDispatchSilo;
  v3 = [(CLDispatchSilo *)&v7 initWithIdentifier:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    timerHolders = v3->_timerHolders;
    v3->_timerHolders = v4;
  }

  return v3;
}

- (CLTimeCoercibleDispatchSilo)initWithUnderlyingQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLTimeCoercibleDispatchSilo;
  v3 = [(CLDispatchSilo *)&v7 initWithUnderlyingQueue:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    timerHolders = v3->_timerHolders;
    v3->_timerHolders = v4;
  }

  return v3;
}

- (void)setLatchedAbsoluteTimestamp:(double)a3
{
  v28 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self currentLatchedAbsoluteTimestamp];
  v6 = a3 - v5;
  [(CLDispatchSilo *)self _setLatchedAbsoluteTimestamp:a3];
  v7 = self->_timerHolders;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  timerHolders = self->_timerHolders;
  self->_timerHolders = v9;

  v11 = MEMORY[0x1E696AE18];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1DF81B878;
  v24[3] = &unk_1E86C8520;
  v26 = v6;
  v12 = v8;
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

- (void)prepareAndRunBlock:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)afterInterval:(double)a3 async:(id)a4
{
  v6 = a4;
  v7 = [(CLTimeCoercibleDispatchSilo *)self newTimer];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1DF81BA20;
  v13 = &unk_1E86C8548;
  v14 = v7;
  v15 = v6;
  v8 = v7;
  v9 = v6;
  [v8 setHandler:&v10];
  [v8 setNextFireDelay:{a3, v10, v11, v12, v13}];
}

- (void)heartBeat:(id)a3
{
  v4 = a3;
  v5 = [(CLDispatchSilo *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF81BB14;
  block[3] = &unk_1E86C8570;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
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