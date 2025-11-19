@interface LNAsyncIteratorNextResultsOperation
- (LNAsyncIteratorNextResultsOperation)initWithConnectionInterface:(id)a3 iterator:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNAsyncIteratorNextResultsOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNAsyncIteratorNextResultsOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNAsyncIteratorNextResultsOperation *)self results];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNAsyncIteratorNextResultsOperation *)self completionHandler];
    v9 = [(LNAsyncIteratorNextResultsOperation *)self results];
    (v8)[2](v8, v9, v7);

    [(LNAsyncIteratorNextResultsOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNAsyncIteratorNextResultsOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = LNAsyncIteratorNextResultsOperation;
  [(LNConnectionOperation *)&v9 start];
  v3 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(LNAsyncIteratorNextResultsOperation *)self iteratorReference];
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching next results for iterator: %@", buf, 0xCu);
  }

  v5 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v6 = [(LNAsyncIteratorNextResultsOperation *)self iteratorReference];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__LNAsyncIteratorNextResultsOperation_start__block_invoke;
  v8[3] = &unk_1E74B1F78;
  v8[4] = self;
  [v5 nextAsyncIteratorResults:v6 completionHandler:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __44__LNAsyncIteratorNextResultsOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResults:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNAsyncIteratorNextResultsOperation)initWithConnectionInterface:(id)a3 iterator:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorNextResultsOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"iteratorReference"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorNextResultsOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorNextResultsOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNAsyncIteratorNextResultsOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:v15 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_3876];

  if (v16)
  {
    objc_storeStrong(&v16->_iteratorReference, a4);
    v17 = _Block_copy(v14);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = v16;
  }

  return v16;
}

os_activity_t __100__LNAsyncIteratorNextResultsOperation_initWithConnectionInterface_iterator_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:asyncsequence iterator next", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end