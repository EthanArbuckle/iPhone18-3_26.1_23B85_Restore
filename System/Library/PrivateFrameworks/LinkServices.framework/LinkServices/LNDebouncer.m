@interface LNDebouncer
- (LNDebouncer)initWithDelay:(double)a3 maxDelay:(double)a4 queue:(id)a5 block:(id)a6;
- (void)trigger;
@end

@implementation LNDebouncer

- (void)trigger
{
  [(LNWatchdogTimer *)self->_timer reset];
  if ([(LNWatchdogTimer *)self->_longTimer isStopped])
  {
    longTimer = self->_longTimer;

    [(LNWatchdogTimer *)longTimer reset];
  }
}

- (LNDebouncer)initWithDelay:(double)a3 maxDelay:(double)a4 queue:(id)a5 block:(id)a6
{
  v12 = a5;
  v13 = a6;
  if (a3 < 0.0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"LNDebouncer.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"delay >= 0"}];
  }

  if (a4 >= 0.0)
  {
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"LNDebouncer.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"LNDebouncer.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"maxDelay >= 0"}];

  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v13)
  {
    goto LABEL_6;
  }

LABEL_11:
  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"LNDebouncer.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_6:
  v32.receiver = self;
  v32.super_class = LNDebouncer;
  v14 = [(LNDebouncer *)&v32 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, a5);
    v15->_maxDelay = a4;
    v16 = _Block_copy(v13);
    block = v15->_block;
    v15->_block = v16;

    v15->_delay = a3;
    objc_initWeak(&location, v15);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__LNDebouncer_initWithDelay_maxDelay_queue_block___block_invoke;
    aBlock[3] = &unk_1E74B2438;
    objc_copyWeak(&v30, &location);
    v18 = _Block_copy(aBlock);
    v19 = [[LNWatchdogTimer alloc] initWithTimeoutInterval:0 singleUse:v18 timeoutHandler:v15->_delay];
    timer = v15->_timer;
    v15->_timer = v19;

    v21 = [[LNWatchdogTimer alloc] initWithTimeoutInterval:0 singleUse:v18 timeoutHandler:v15->_maxDelay];
    longTimer = v15->_longTimer;
    v15->_longTimer = v21;

    v23 = v15;
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __50__LNDebouncer_initWithDelay_maxDelay_queue_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[6] stop];
  [WeakRetained[5] stop];
  (*(WeakRetained[4] + 2))();
}

@end