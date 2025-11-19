@interface CRKWaitForProgressOperation
- (CRKWaitForProgressOperation)initWithOperationQueue:(id)a3 operation:(id)a4 expectedCompletedUnitCount:(int64_t)a5 expectedTotalUnitCount:(int64_t)a6;
- (void)cancel;
- (void)main;
- (void)observedOperationDidFail:(id)a3;
- (void)observedOperationDidProgress:(id)a3;
@end

@implementation CRKWaitForProgressOperation

- (CRKWaitForProgressOperation)initWithOperationQueue:(id)a3 operation:(id)a4 expectedCompletedUnitCount:(int64_t)a5 expectedTotalUnitCount:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = CRKWaitForProgressOperation;
  v13 = [(CRKWaitForProgressOperation *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_operationQueue, a3);
    objc_storeStrong(&v14->_operation, a4);
    v14->_expectedTotalUnitCount = a6;
    v14->_expctedCompletedUnitCount = a5;
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
  v3 = [(CRKWaitForProgressOperation *)self operation];
  [v3 addTarget:self selector:sel_observedOperationDidProgress_ forOperationEvents:8];

  v4 = [(CRKWaitForProgressOperation *)self operation];
  [v4 addTarget:self selector:sel_observedOperationDidFail_ forOperationEvents:4];

  v6 = [(CRKWaitForProgressOperation *)self operationQueue];
  v5 = [(CRKWaitForProgressOperation *)self operation];
  [v6 addOperation:v5];
}

- (void)observedOperationDidProgress:(id)a3
{
  v6 = a3;
  if ([(CRKWaitForProgressOperation *)self isExecuting])
  {
    v4 = [v6 totalUnitCount];
    if (v4 == [(CRKWaitForProgressOperation *)self expectedTotalUnitCount])
    {
      v5 = [v6 completedUnitCount];
      if (v5 == [(CRKWaitForProgressOperation *)self expctedCompletedUnitCount])
      {
        [(CRKWaitForProgressOperation *)self endOperationWithResultObject:0];
      }
    }
  }
}

- (void)observedOperationDidFail:(id)a3
{
  v5 = a3;
  if ([(CRKWaitForProgressOperation *)self isExecuting])
  {
    v4 = [v5 error];
    [(CRKWaitForProgressOperation *)self endOperationWithError:v4];
  }
}

@end