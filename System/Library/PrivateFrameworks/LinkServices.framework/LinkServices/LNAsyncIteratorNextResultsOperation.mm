@interface LNAsyncIteratorNextResultsOperation
- (LNAsyncIteratorNextResultsOperation)initWithConnectionInterface:(id)interface iterator:(id)iterator queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNAsyncIteratorNextResultsOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNAsyncIteratorNextResultsOperation *)self completionHandler];

  if (completionHandler)
  {
    results = [(LNAsyncIteratorNextResultsOperation *)self results];
    v7 = [(LNConnectionOperation *)self validatingResult:results error:errorCopy];

    completionHandler2 = [(LNAsyncIteratorNextResultsOperation *)self completionHandler];
    results2 = [(LNAsyncIteratorNextResultsOperation *)self results];
    (completionHandler2)[2](completionHandler2, results2, v7);

    [(LNAsyncIteratorNextResultsOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNAsyncIteratorNextResultsOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
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
    iteratorReference = [(LNAsyncIteratorNextResultsOperation *)self iteratorReference];
    *buf = 138412290;
    v11 = iteratorReference;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching next results for iterator: %@", buf, 0xCu);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  iteratorReference2 = [(LNAsyncIteratorNextResultsOperation *)self iteratorReference];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__LNAsyncIteratorNextResultsOperation_start__block_invoke;
  v8[3] = &unk_1E74B1F78;
  v8[4] = self;
  [connectionInterface nextAsyncIteratorResults:iteratorReference2 completionHandler:v8];

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

- (LNAsyncIteratorNextResultsOperation)initWithConnectionInterface:(id)interface iterator:(id)iterator queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  iteratorCopy = iterator;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (iteratorCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorNextResultsOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"iteratorReference"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorNextResultsOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!iteratorCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorNextResultsOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNAsyncIteratorNextResultsOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_3876];

  if (v16)
  {
    objc_storeStrong(&v16->_iteratorReference, iterator);
    v17 = _Block_copy(handlerCopy);
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