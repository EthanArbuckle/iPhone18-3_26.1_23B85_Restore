@interface CRKTimeoutHarnessOperation
+ (id)timeoutTimerIdentifier;
- (CRKTimeoutHarnessOperation)initWithOperationQueue:(id)a3 operation:(id)a4 timout:(double)a5;
- (CRKTimeoutHarnessOperation)initWithTimerPrimitives:(id)a3 operationQueue:(id)a4 operation:(id)a5 timerIdentifier:(id)a6 timeout:(double)a7;
- (void)cancel;
- (void)dependentOperationDidFinish:(id)a3;
- (void)main;
- (void)run;
- (void)timeoutDidFire;
@end

@implementation CRKTimeoutHarnessOperation

- (CRKTimeoutHarnessOperation)initWithTimerPrimitives:(id)a3 operationQueue:(id)a4 operation:(id)a5 timerIdentifier:(id)a6 timeout:(double)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v22.receiver = self;
  v22.super_class = CRKTimeoutHarnessOperation;
  v17 = [(CRKTimeoutHarnessOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_timerPrimitives, a3);
    objc_storeStrong(&v18->_operationQueue, a4);
    objc_storeStrong(&v18->_operation, a5);
    v19 = [v16 copy];
    timerIdentifier = v18->_timerIdentifier;
    v18->_timerIdentifier = v19;

    v18->_timeout = a7;
  }

  return v18;
}

- (CRKTimeoutHarnessOperation)initWithOperationQueue:(id)a3 operation:(id)a4 timout:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [v10 makePrimitives];
  v12 = [objc_opt_class() timeoutTimerIdentifier];
  v13 = [(CRKTimeoutHarnessOperation *)self initWithTimerPrimitives:v11 operationQueue:v9 operation:v8 timerIdentifier:v12 timeout:a5];

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
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKTimeoutHarnessOperation.m" lineNumber:95 description:{@"%@ must be called from the main thread", v4}];
}

void __33__CRKTimeoutHarnessOperation_run__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timeoutDidFire];
}

- (void)dependentOperationDidFinish:(id)a3
{
  v7 = a3;
  v4 = [(CRKTimeoutHarnessOperation *)self timeoutTimer];
  [v4 cancel];

  if ([(CRKTimeoutHarnessOperation *)self isExecuting])
  {
    v5 = [v7 error];

    if (v5)
    {
      v6 = [v7 error];
      [(CRKTimeoutHarnessOperation *)self endOperationWithError:v6];
    }

    else
    {
      v6 = [v7 resultObject];
      [(CRKTimeoutHarnessOperation *)self endOperationWithResultObject:v6];
    }
  }
}

- (void)timeoutDidFire
{
  if ([(CRKTimeoutHarnessOperation *)self isExecuting])
  {
    v3 = [(CRKTimeoutHarnessOperation *)self operation];
    [v3 cancel];

    v4 = CRKErrorWithCodeAndUserInfo(32, 0);
    [(CRKTimeoutHarnessOperation *)self endOperationWithError:v4];
  }
}

+ (id)timeoutTimerIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(a1);
  v4 = [v2 stringWithFormat:@"%@-timeoutTimer", v3];

  return v4;
}

@end