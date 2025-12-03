@interface DMFBatchRequestOperation
- (DMFBatchRequestOperation)initWithActivityTransactionOperation:(id)operation subOperations:(id)operations;
- (void)activityTransactionOperationDidStart:(id)start;
- (void)main;
- (void)setName:(id)name;
@end

@implementation DMFBatchRequestOperation

- (DMFBatchRequestOperation)initWithActivityTransactionOperation:(id)operation subOperations:(id)operations
{
  operationCopy = operation;
  operationsCopy = operations;
  if (!operationCopy)
  {
    [DMFBatchRequestOperation initWithActivityTransactionOperation:a2 subOperations:self];
  }

  v15.receiver = self;
  v15.super_class = DMFBatchRequestOperation;
  v10 = [(DMFBatchRequestOperation *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_activityTransactionOperation, operation);
    v12 = [operationsCopy copy];
    subOperations = v11->_subOperations;
    v11->_subOperations = v12;
  }

  return v11;
}

- (void)setName:(id)name
{
  nameCopy = name;
  activityTransactionOperation = [(DMFBatchRequestOperation *)self activityTransactionOperation];
  request = [activityTransactionOperation request];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [request setName:nameCopy];
  }

  v7.receiver = self;
  v7.super_class = DMFBatchRequestOperation;
  [(DMFBatchRequestOperation *)&v7 setName:nameCopy];
}

- (void)main
{
  subOperations = [(DMFBatchRequestOperation *)self subOperations];
  v4 = [subOperations count];

  if (v4)
  {
    activityTransactionOperation = [(DMFBatchRequestOperation *)self activityTransactionOperation];
    request = [activityTransactionOperation request];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = [request name];

      if (!name)
      {
        name2 = [(DMFBatchRequestOperation *)self name];
        [request setName:name2];
      }
    }

    v8 = objc_opt_new();
    [(DMFBatchRequestOperation *)self setQueue:v8];

    activityTransactionOperation2 = [(DMFBatchRequestOperation *)self activityTransactionOperation];
    [activityTransactionOperation2 addTarget:self selector:sel_activityTransactionOperationDidStart_ forOperationEvents:1];

    activityTransactionOperation3 = [(DMFBatchRequestOperation *)self activityTransactionOperation];
    [activityTransactionOperation3 addTarget:self selector:sel_activityTransactionOperationDidFinish_ forOperationEvents:6];

    queue = [(DMFBatchRequestOperation *)self queue];
    activityTransactionOperation4 = [(DMFBatchRequestOperation *)self activityTransactionOperation];
    [queue addOperation:activityTransactionOperation4];
  }

  else
  {

    [(DMFBatchRequestOperation *)self endOperationWithResultObject:0];
  }
}

- (void)activityTransactionOperationDidStart:(id)start
{
  v20 = *MEMORY[0x1E69E9840];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__DMFBatchRequestOperation_activityTransactionOperationDidStart___block_invoke;
  v18[3] = &unk_1E86160F8;
  v18[4] = self;
  v4 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:v18];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subOperations = [(DMFBatchRequestOperation *)self subOperations];
  v6 = [subOperations countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(subOperations);
        }

        [v4 addDependency:*(*(&v14 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [subOperations countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  queue = [(DMFBatchRequestOperation *)self queue];
  [queue addOperation:v4];

  queue2 = [(DMFBatchRequestOperation *)self queue];
  subOperations2 = [(DMFBatchRequestOperation *)self subOperations];
  [queue2 addOperations:subOperations2 waitUntilFinished:0];

  v13 = *MEMORY[0x1E69E9840];
}

void __65__DMFBatchRequestOperation_activityTransactionOperationDidStart___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activityTransactionOperation];
  [v1 cancel];
}

- (void)initWithActivityTransactionOperation:(uint64_t)a1 subOperations:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DMFBatchRequestOperation.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"activityTransactionOperation"}];
}

@end