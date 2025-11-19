@interface CRKSequentialOperation
+ (id)sequentialOperationWithOperations:(id)a3;
- (CRKSequentialOperation)initWithSequentialOperations:(id)a3 queue:(id)a4;
- (void)cancel;
- (void)enqueueFront;
- (void)frontOperationDidFinish:(id)a3;
- (void)main;
@end

@implementation CRKSequentialOperation

- (CRKSequentialOperation)initWithSequentialOperations:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CRKSequentialOperation;
  v8 = [(CRKSequentialOperation *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    operations = v8->_operations;
    v8->_operations = v9;

    v11 = v7;
    if (!v7)
    {
      v11 = [MEMORY[0x277CF9540] crk_backgroundQueue];
    }

    objc_storeStrong(&v8->_queue, v11);
    if (!v7)
    {
    }
  }

  return v8;
}

+ (id)sequentialOperationWithOperations:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSequentialOperations:v4 queue:0];

  return v5;
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CRKSequentialOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKSequentialOperation;
  [(CRKSequentialOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__CRKSequentialOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __32__CRKSequentialOperation_cancel__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) operations];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) cancel];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)enqueueFront
{
  if (![(CRKSequentialOperation *)self isExecuting])
  {
    return;
  }

  if ([(CRKSequentialOperation *)self isCancelled])
  {
    v9 = CATErrorWithCodeAndUserInfo();
    [(CRKSequentialOperation *)self endOperationWithError:v9];
LABEL_8:

    return;
  }

  v3 = [(CRKSequentialOperation *)self operations];
  if ([v3 count])
  {
    v4 = [(CRKSequentialOperation *)self frontOfQueue];
    v5 = [(CRKSequentialOperation *)self operations];
    v6 = [v5 count] - 1;

    if (v4 <= v6)
    {
      v7 = [(CRKSequentialOperation *)self operations];
      v9 = [v7 objectAtIndexedSubscript:{-[CRKSequentialOperation frontOfQueue](self, "frontOfQueue")}];

      [(CRKSequentialOperation *)self setFrontOfQueue:[(CRKSequentialOperation *)self frontOfQueue]+ 1];
      [v9 addTarget:self selector:sel_frontOperationDidFinish_ forOperationEvents:6];
      v8 = [(CRKSequentialOperation *)self queue];
      [v8 addOperation:v9];

      goto LABEL_8;
    }
  }

  else
  {
  }

  [(CRKSequentialOperation *)self endOperationWithResultObject:0];
}

- (void)frontOperationDidFinish:(id)a3
{
  v8 = a3;
  v4 = [v8 error];
  if (v4 && (v5 = v4, v6 = [(CRKSequentialOperation *)self isCancelled], v5, (v6 & 1) == 0))
  {
    [(CRKSequentialOperation *)self setFailedOperation:v8];
    v7 = [v8 error];
    [(CRKSequentialOperation *)self endOperationWithError:v7];
  }

  else
  {
    [(CRKSequentialOperation *)self enqueueFront];
  }
}

@end