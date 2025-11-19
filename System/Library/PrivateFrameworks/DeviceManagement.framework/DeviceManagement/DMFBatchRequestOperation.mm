@interface DMFBatchRequestOperation
- (DMFBatchRequestOperation)initWithActivityTransactionOperation:(id)a3 subOperations:(id)a4;
- (void)activityTransactionOperationDidStart:(id)a3;
- (void)main;
- (void)setName:(id)a3;
@end

@implementation DMFBatchRequestOperation

- (DMFBatchRequestOperation)initWithActivityTransactionOperation:(id)a3 subOperations:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [DMFBatchRequestOperation initWithActivityTransactionOperation:a2 subOperations:self];
  }

  v15.receiver = self;
  v15.super_class = DMFBatchRequestOperation;
  v10 = [(DMFBatchRequestOperation *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_activityTransactionOperation, a3);
    v12 = [v9 copy];
    subOperations = v11->_subOperations;
    v11->_subOperations = v12;
  }

  return v11;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(DMFBatchRequestOperation *)self activityTransactionOperation];
  v6 = [v5 request];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setName:v4];
  }

  v7.receiver = self;
  v7.super_class = DMFBatchRequestOperation;
  [(DMFBatchRequestOperation *)&v7 setName:v4];
}

- (void)main
{
  v3 = [(DMFBatchRequestOperation *)self subOperations];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(DMFBatchRequestOperation *)self activityTransactionOperation];
    v13 = [v5 request];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v13 name];

      if (!v6)
      {
        v7 = [(DMFBatchRequestOperation *)self name];
        [v13 setName:v7];
      }
    }

    v8 = objc_opt_new();
    [(DMFBatchRequestOperation *)self setQueue:v8];

    v9 = [(DMFBatchRequestOperation *)self activityTransactionOperation];
    [v9 addTarget:self selector:sel_activityTransactionOperationDidStart_ forOperationEvents:1];

    v10 = [(DMFBatchRequestOperation *)self activityTransactionOperation];
    [v10 addTarget:self selector:sel_activityTransactionOperationDidFinish_ forOperationEvents:6];

    v11 = [(DMFBatchRequestOperation *)self queue];
    v12 = [(DMFBatchRequestOperation *)self activityTransactionOperation];
    [v11 addOperation:v12];
  }

  else
  {

    [(DMFBatchRequestOperation *)self endOperationWithResultObject:0];
  }
}

- (void)activityTransactionOperationDidStart:(id)a3
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
  v5 = [(DMFBatchRequestOperation *)self subOperations];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v4 addDependency:*(*(&v14 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = [(DMFBatchRequestOperation *)self queue];
  [v10 addOperation:v4];

  v11 = [(DMFBatchRequestOperation *)self queue];
  v12 = [(DMFBatchRequestOperation *)self subOperations];
  [v11 addOperations:v12 waitUntilFinished:0];

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