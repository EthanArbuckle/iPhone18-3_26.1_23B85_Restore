@interface CRKWaitForProgressOperation
- (CRKWaitForProgressOperation)initWithOperationQueue:(id)queue operation:(id)operation expectedCompletedUnitCount:(int64_t)count expectedTotalUnitCount:(int64_t)unitCount;
- (void)cancel;
- (void)main;
- (void)observedOperationDidFail:(id)fail;
- (void)observedOperationDidProgress:(id)progress;
@end

@implementation CRKWaitForProgressOperation

- (CRKWaitForProgressOperation)initWithOperationQueue:(id)queue operation:(id)operation expectedCompletedUnitCount:(int64_t)count expectedTotalUnitCount:(int64_t)unitCount
{
  queueCopy = queue;
  operationCopy = operation;
  v16.receiver = self;
  v16.super_class = CRKWaitForProgressOperation;
  v13 = [(CRKWaitForProgressOperation *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_operationQueue, queue);
    objc_storeStrong(&v14->_operation, operation);
    v14->_expectedTotalUnitCount = unitCount;
    v14->_expctedCompletedUnitCount = count;
  }

  return v14;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKWaitForProgressOperation;
  [(CRKWaitForProgressOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CRKWaitForProgressOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__CRKWaitForProgressOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) operation];
    [v2 cancel];

    v3 = *(a1 + 32);
    v4 = CATErrorWithCodeAndUserInfo();
    [v3 endOperationWithError:v4];
  }
}

- (void)main
{
  operation = [(CRKWaitForProgressOperation *)self operation];
  [operation addTarget:self selector:sel_observedOperationDidProgress_ forOperationEvents:8];

  operation2 = [(CRKWaitForProgressOperation *)self operation];
  [operation2 addTarget:self selector:sel_observedOperationDidFail_ forOperationEvents:4];

  operationQueue = [(CRKWaitForProgressOperation *)self operationQueue];
  operation3 = [(CRKWaitForProgressOperation *)self operation];
  [operationQueue addOperation:operation3];
}

- (void)observedOperationDidProgress:(id)progress
{
  progressCopy = progress;
  if ([(CRKWaitForProgressOperation *)self isExecuting])
  {
    totalUnitCount = [progressCopy totalUnitCount];
    if (totalUnitCount == [(CRKWaitForProgressOperation *)self expectedTotalUnitCount])
    {
      completedUnitCount = [progressCopy completedUnitCount];
      if (completedUnitCount == [(CRKWaitForProgressOperation *)self expctedCompletedUnitCount])
      {
        [(CRKWaitForProgressOperation *)self endOperationWithResultObject:0];
      }
    }
  }
}

- (void)observedOperationDidFail:(id)fail
{
  failCopy = fail;
  if ([(CRKWaitForProgressOperation *)self isExecuting])
  {
    error = [failCopy error];
    [(CRKWaitForProgressOperation *)self endOperationWithError:error];
  }
}

@end