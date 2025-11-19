@interface CATSharingSemaphoreOperation
- (void)cancel;
- (void)signal;
@end

@implementation CATSharingSemaphoreOperation

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = CATSharingSemaphoreOperation;
  [(CATSharingSemaphoreOperation *)&v6 cancel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__CATSharingSemaphoreOperation_cancel__block_invoke;
  v5[3] = &unk_278DA72D0;
  v5[4] = self;
  v3 = v5;
  v4 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_9;
  block[3] = &unk_278DA7208;
  v8 = v3;
  dispatch_async(v4, block);
}

void __38__CATSharingSemaphoreOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    v3 = CATErrorWithCodeAndUserInfo(404, 0);
    [v2 endOperationWithError:v3];
  }
}

- (void)signal
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if ([(CATOperation *)self isExecuting])
  {
    if ([(CATSharingSemaphoreOperation *)self isCancelled])
    {
      v4 = CATErrorWithCodeAndUserInfo(404, 0);
      [(CATOperation *)self endOperationWithError:v4];
    }

    else
    {

      [(CATOperation *)self endOperationWithResultObject:0];
    }
  }
}

@end