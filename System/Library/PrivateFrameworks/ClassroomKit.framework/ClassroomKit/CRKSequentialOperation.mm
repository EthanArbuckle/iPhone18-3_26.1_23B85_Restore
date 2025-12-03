@interface CRKSequentialOperation
+ (id)sequentialOperationWithOperations:(id)operations;
- (CRKSequentialOperation)initWithSequentialOperations:(id)operations queue:(id)queue;
- (void)cancel;
- (void)enqueueFront;
- (void)frontOperationDidFinish:(id)finish;
- (void)main;
@end

@implementation CRKSequentialOperation

- (CRKSequentialOperation)initWithSequentialOperations:(id)operations queue:(id)queue
{
  operationsCopy = operations;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = CRKSequentialOperation;
  v8 = [(CRKSequentialOperation *)&v13 init];
  if (v8)
  {
    v9 = [operationsCopy copy];
    operations = v8->_operations;
    v8->_operations = v9;

    crk_backgroundQueue = queueCopy;
    if (!queueCopy)
    {
      crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
    }

    objc_storeStrong(&v8->_queue, crk_backgroundQueue);
    if (!queueCopy)
    {
    }
  }

  return v8;
}

+ (id)sequentialOperationWithOperations:(id)operations
{
  operationsCopy = operations;
  v5 = [[self alloc] initWithSequentialOperations:operationsCopy queue:0];

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

  operations = [(CRKSequentialOperation *)self operations];
  if ([operations count])
  {
    frontOfQueue = [(CRKSequentialOperation *)self frontOfQueue];
    operations2 = [(CRKSequentialOperation *)self operations];
    v6 = [operations2 count] - 1;

    if (frontOfQueue <= v6)
    {
      operations3 = [(CRKSequentialOperation *)self operations];
      v9 = [operations3 objectAtIndexedSubscript:{-[CRKSequentialOperation frontOfQueue](self, "frontOfQueue")}];

      [(CRKSequentialOperation *)self setFrontOfQueue:[(CRKSequentialOperation *)self frontOfQueue]+ 1];
      [v9 addTarget:self selector:sel_frontOperationDidFinish_ forOperationEvents:6];
      queue = [(CRKSequentialOperation *)self queue];
      [queue addOperation:v9];

      goto LABEL_8;
    }
  }

  else
  {
  }

  [(CRKSequentialOperation *)self endOperationWithResultObject:0];
}

- (void)frontOperationDidFinish:(id)finish
{
  finishCopy = finish;
  error = [finishCopy error];
  if (error && (v5 = error, v6 = [(CRKSequentialOperation *)self isCancelled], v5, (v6 & 1) == 0))
  {
    [(CRKSequentialOperation *)self setFailedOperation:finishCopy];
    error2 = [finishCopy error];
    [(CRKSequentialOperation *)self endOperationWithError:error2];
  }

  else
  {
    [(CRKSequentialOperation *)self enqueueFront];
  }
}

@end