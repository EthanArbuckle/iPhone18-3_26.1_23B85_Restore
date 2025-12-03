@interface LNDebouncer
- (LNDebouncer)initWithDelay:(double)delay maxDelay:(double)maxDelay queue:(id)queue block:(id)block;
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

- (LNDebouncer)initWithDelay:(double)delay maxDelay:(double)maxDelay queue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (delay < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDebouncer.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"delay >= 0"}];
  }

  if (maxDelay >= 0.0)
  {
    if (queueCopy)
    {
      goto LABEL_5;
    }

LABEL_10:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNDebouncer.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (blockCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNDebouncer.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"maxDelay >= 0"}];

  if (!queueCopy)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (blockCopy)
  {
    goto LABEL_6;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNDebouncer.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_6:
  v32.receiver = self;
  v32.super_class = LNDebouncer;
  v14 = [(LNDebouncer *)&v32 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    v15->_maxDelay = maxDelay;
    v16 = _Block_copy(blockCopy);
    block = v15->_block;
    v15->_block = v16;

    v15->_delay = delay;
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