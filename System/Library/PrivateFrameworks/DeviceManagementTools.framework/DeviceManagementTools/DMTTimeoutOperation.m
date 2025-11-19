@interface DMTTimeoutOperation
- (DMTTimeoutOperation)initWithOperation:(id)a3 timeout:(double)a4 cancelsOnTimeout:(BOOL)a5;
- (void)beginWaitingForOperation;
- (void)cancel;
- (void)createTimer;
- (void)innerOperationDidFinish:(id)a3;
- (void)main;
- (void)timerDidFire:(id)a3;
@end

@implementation DMTTimeoutOperation

- (DMTTimeoutOperation)initWithOperation:(id)a3 timeout:(double)a4 cancelsOnTimeout:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = DMTTimeoutOperation;
  v10 = [(DMTTimeoutOperation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_observedOperation, a3);
    v11->_timeoutInterval = a4;
    v11->_cancelsOnTimeout = a5;
  }

  return v11;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = DMTTimeoutOperation;
  [(DMTTimeoutOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DMTTimeoutOperation_cancel__block_invoke;
  block[3] = &unk_278F5DEC8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __29__DMTTimeoutOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) timeoutTimer];
    [v2 invalidate];

    v3 = *(a1 + 32);
    v4 = CATErrorWithCodeAndUserInfo();
    [v3 endOperationWithError:v4];
  }
}

- (void)main
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(DMTTimeoutOperation *)self isExecuting])
    {
      if ([(DMTTimeoutOperation *)self isCancelled])
      {
        v4 = CATErrorWithCodeAndUserInfo();
        [(DMTTimeoutOperation *)self endOperationWithError:v4];
      }

      else
      {

        [(DMTTimeoutOperation *)self beginWaitingForOperation];
      }
    }
  }

  else
  {

    [(DMTTimeoutOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)beginWaitingForOperation
{
  v3 = [(DMTTimeoutOperation *)self observedOperation];

  if (v3)
  {
    v4 = [(DMTTimeoutOperation *)self observedOperation];
    v5 = [v4 isFinished];

    v6 = [(DMTTimeoutOperation *)self observedOperation];
    v9 = v6;
    if (v5)
    {
      [(DMTTimeoutOperation *)self innerOperationDidFinish:v6];
LABEL_9:

      return;
    }

    [v6 addTarget:self selector:sel_innerOperationDidFinish_ forOperationEvents:6];

    v7 = [(DMTTimeoutOperation *)self observedOperation];
    v8 = [v7 startedDate];

    if (!v8)
    {
      v9 = [(DMTTimeoutOperation *)self observedOperation];
      [v9 addTarget:self selector:sel_createTimer forOperationEvents:1];
      goto LABEL_9;
    }
  }

  [(DMTTimeoutOperation *)self createTimer];
}

- (void)createTimer
{
  v3 = MEMORY[0x277CBEBB8];
  [(DMTTimeoutOperation *)self timeoutInterval];
  v4 = [v3 scheduledTimerWithTimeInterval:self target:sel_timerDidFire_ selector:0 userInfo:0 repeats:?];
  [(DMTTimeoutOperation *)self setTimeoutTimer:v4];
}

- (void)timerDidFire:(id)a3
{
  if ([(DMTTimeoutOperation *)self isExecuting])
  {
    if ([(DMTTimeoutOperation *)self isCancelled])
    {
      v4 = CATErrorWithCodeAndUserInfo();
    }

    else
    {
      if ([(DMTTimeoutOperation *)self cancelsOnTimeout])
      {
        v5 = [(DMTTimeoutOperation *)self observedOperation];
        [v5 cancel];
      }

      v4 = DMTErrorWithCodeAndUserInfo(4, 0);
    }

    v6 = v4;
    [(DMTTimeoutOperation *)self endOperationWithError:v4];
  }
}

- (void)innerOperationDidFinish:(id)a3
{
  v6 = a3;
  if ([(DMTTimeoutOperation *)self isExecuting])
  {
    if ([(DMTTimeoutOperation *)self isCancelled])
    {
      v4 = CATErrorWithCodeAndUserInfo();
      [(DMTTimeoutOperation *)self endOperationWithError:v4];
    }

    else
    {
      v5 = [(DMTTimeoutOperation *)self timeoutTimer];
      [v5 invalidate];

      [(DMTTimeoutOperation *)self endOperationWithResultObject:v6];
    }
  }
}

@end