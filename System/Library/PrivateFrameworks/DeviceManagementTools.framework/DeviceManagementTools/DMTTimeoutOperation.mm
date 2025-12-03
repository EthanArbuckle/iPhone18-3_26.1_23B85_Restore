@interface DMTTimeoutOperation
- (DMTTimeoutOperation)initWithOperation:(id)operation timeout:(double)timeout cancelsOnTimeout:(BOOL)onTimeout;
- (void)beginWaitingForOperation;
- (void)cancel;
- (void)createTimer;
- (void)innerOperationDidFinish:(id)finish;
- (void)main;
- (void)timerDidFire:(id)fire;
@end

@implementation DMTTimeoutOperation

- (DMTTimeoutOperation)initWithOperation:(id)operation timeout:(double)timeout cancelsOnTimeout:(BOOL)onTimeout
{
  operationCopy = operation;
  v13.receiver = self;
  v13.super_class = DMTTimeoutOperation;
  v10 = [(DMTTimeoutOperation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_observedOperation, operation);
    v11->_timeoutInterval = timeout;
    v11->_cancelsOnTimeout = onTimeout;
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
  observedOperation = [(DMTTimeoutOperation *)self observedOperation];

  if (observedOperation)
  {
    observedOperation2 = [(DMTTimeoutOperation *)self observedOperation];
    isFinished = [observedOperation2 isFinished];

    observedOperation3 = [(DMTTimeoutOperation *)self observedOperation];
    observedOperation5 = observedOperation3;
    if (isFinished)
    {
      [(DMTTimeoutOperation *)self innerOperationDidFinish:observedOperation3];
LABEL_9:

      return;
    }

    [observedOperation3 addTarget:self selector:sel_innerOperationDidFinish_ forOperationEvents:6];

    observedOperation4 = [(DMTTimeoutOperation *)self observedOperation];
    startedDate = [observedOperation4 startedDate];

    if (!startedDate)
    {
      observedOperation5 = [(DMTTimeoutOperation *)self observedOperation];
      [observedOperation5 addTarget:self selector:sel_createTimer forOperationEvents:1];
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

- (void)timerDidFire:(id)fire
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
        observedOperation = [(DMTTimeoutOperation *)self observedOperation];
        [observedOperation cancel];
      }

      v4 = DMTErrorWithCodeAndUserInfo(4, 0);
    }

    v6 = v4;
    [(DMTTimeoutOperation *)self endOperationWithError:v4];
  }
}

- (void)innerOperationDidFinish:(id)finish
{
  finishCopy = finish;
  if ([(DMTTimeoutOperation *)self isExecuting])
  {
    if ([(DMTTimeoutOperation *)self isCancelled])
    {
      v4 = CATErrorWithCodeAndUserInfo();
      [(DMTTimeoutOperation *)self endOperationWithError:v4];
    }

    else
    {
      timeoutTimer = [(DMTTimeoutOperation *)self timeoutTimer];
      [timeoutTimer invalidate];

      [(DMTTimeoutOperation *)self endOperationWithResultObject:finishCopy];
    }
  }
}

@end