@interface CRKTimeoutHarnessOperation
+ (id)timeoutTimerIdentifier;
- (CRKTimeoutHarnessOperation)initWithOperationQueue:(id)queue operation:(id)operation timout:(double)timout;
- (CRKTimeoutHarnessOperation)initWithTimerPrimitives:(id)primitives operationQueue:(id)queue operation:(id)operation timerIdentifier:(id)identifier timeout:(double)timeout;
- (void)cancel;
- (void)dependentOperationDidFinish:(id)finish;
- (void)main;
- (void)run;
- (void)timeoutDidFire;
@end

@implementation CRKTimeoutHarnessOperation

- (CRKTimeoutHarnessOperation)initWithTimerPrimitives:(id)primitives operationQueue:(id)queue operation:(id)operation timerIdentifier:(id)identifier timeout:(double)timeout
{
  primitivesCopy = primitives;
  queueCopy = queue;
  operationCopy = operation;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = CRKTimeoutHarnessOperation;
  v17 = [(CRKTimeoutHarnessOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_timerPrimitives, primitives);
    objc_storeStrong(&v18->_operationQueue, queue);
    objc_storeStrong(&v18->_operation, operation);
    v19 = [identifierCopy copy];
    timerIdentifier = v18->_timerIdentifier;
    v18->_timerIdentifier = v19;

    v18->_timeout = timeout;
  }

  return v18;
}

- (CRKTimeoutHarnessOperation)initWithOperationQueue:(id)queue operation:(id)operation timout:(double)timout
{
  operationCopy = operation;
  queueCopy = queue;
  v10 = objc_opt_new();
  makePrimitives = [v10 makePrimitives];
  timeoutTimerIdentifier = [objc_opt_class() timeoutTimerIdentifier];
  v13 = [(CRKTimeoutHarnessOperation *)self initWithTimerPrimitives:makePrimitives operationQueue:queueCopy operation:operationCopy timerIdentifier:timeoutTimerIdentifier timeout:timout];

  return v13;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKTimeoutHarnessOperation;
  [(CRKTimeoutHarnessOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CRKTimeoutHarnessOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __36__CRKTimeoutHarnessOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) timeoutTimer];
    [v2 cancel];

    v3 = [*(a1 + 32) operation];
    [v3 cancel];

    v4 = *(a1 + 32);
    v5 = CATErrorWithCodeAndUserInfo();
    [v4 endOperationWithError:v5];
  }
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CRKTimeoutHarnessOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)run
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CRKTimeoutHarnessOperation.m" lineNumber:95 description:{@"%@ must be called from the main thread", v4}];
}

void __33__CRKTimeoutHarnessOperation_run__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timeoutDidFire];
}

- (void)dependentOperationDidFinish:(id)finish
{
  finishCopy = finish;
  timeoutTimer = [(CRKTimeoutHarnessOperation *)self timeoutTimer];
  [timeoutTimer cancel];

  if ([(CRKTimeoutHarnessOperation *)self isExecuting])
  {
    error = [finishCopy error];

    if (error)
    {
      error2 = [finishCopy error];
      [(CRKTimeoutHarnessOperation *)self endOperationWithError:error2];
    }

    else
    {
      error2 = [finishCopy resultObject];
      [(CRKTimeoutHarnessOperation *)self endOperationWithResultObject:error2];
    }
  }
}

- (void)timeoutDidFire
{
  if ([(CRKTimeoutHarnessOperation *)self isExecuting])
  {
    operation = [(CRKTimeoutHarnessOperation *)self operation];
    [operation cancel];

    v4 = CRKErrorWithCodeAndUserInfo(32, 0);
    [(CRKTimeoutHarnessOperation *)self endOperationWithError:v4];
  }
}

+ (id)timeoutTimerIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(self);
  v4 = [v2 stringWithFormat:@"%@-timeoutTimer", v3];

  return v4;
}

@end