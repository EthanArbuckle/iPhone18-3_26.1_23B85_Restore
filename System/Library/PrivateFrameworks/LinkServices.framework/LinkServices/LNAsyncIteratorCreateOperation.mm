@interface LNAsyncIteratorCreateOperation
- (LNAsyncIteratorCreateOperation)initWithConnectionInterface:(id)interface sequence:(id)sequence options:(id)options queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNAsyncIteratorCreateOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNAsyncIteratorCreateOperation *)self completionHandler];

  if (completionHandler)
  {
    iteratorReference = [(LNAsyncIteratorCreateOperation *)self iteratorReference];
    v7 = [(LNConnectionOperation *)self validatingResult:iteratorReference error:errorCopy];

    completionHandler2 = [(LNAsyncIteratorCreateOperation *)self completionHandler];
    iteratorReference2 = [(LNAsyncIteratorCreateOperation *)self iteratorReference];
    (completionHandler2)[2](completionHandler2, iteratorReference2, v7);

    [(LNAsyncIteratorCreateOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNAsyncIteratorCreateOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = LNAsyncIteratorCreateOperation;
  [(LNConnectionOperation *)&v11 start];
  v3 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sequence = [(LNAsyncIteratorCreateOperation *)self sequence];
    options = [(LNAsyncIteratorCreateOperation *)self options];
    *buf = 138412546;
    v13 = sequence;
    v14 = 2112;
    v15 = options;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Creating AsyncIterator for sequence: %@, with options: %@", buf, 0x16u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  sequence2 = [(LNAsyncIteratorCreateOperation *)self sequence];
  options2 = [(LNAsyncIteratorCreateOperation *)self options];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__LNAsyncIteratorCreateOperation_start__block_invoke;
  v10[3] = &unk_1E74B08A8;
  v10[4] = self;
  [connectionInterface createAsyncIteratorForSequence:sequence2 options:options2 completionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __39__LNAsyncIteratorCreateOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setIteratorReference:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNAsyncIteratorCreateOperation)initWithConnectionInterface:(id)interface sequence:(id)sequence options:(id)options queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  sequenceCopy = sequence;
  optionsCopy = options;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (sequenceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorCreateOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (sequenceCopy)
    {
LABEL_3:
      if (optionsCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorCreateOperation.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"options"}];

      if (handlerCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorCreateOperation.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"sequence"}];

  if (!optionsCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorCreateOperation.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v28.receiver = self;
  v28.super_class = LNAsyncIteratorCreateOperation;
  v19 = [(LNInterfaceConnectionOperation *)&v28 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global];

  if (v19)
  {
    objc_storeStrong(&v19->_sequence, sequence);
    objc_storeStrong(&v19->_options, options);
    v20 = _Block_copy(handlerCopy);
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v20;

    v22 = v19;
  }

  return v19;
}

os_activity_t __103__LNAsyncIteratorCreateOperation_initWithConnectionInterface_sequence_options_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:create asyncsequence iterator", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end