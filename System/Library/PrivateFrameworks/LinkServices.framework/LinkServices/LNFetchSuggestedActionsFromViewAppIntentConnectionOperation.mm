@interface LNFetchSuggestedActionsFromViewAppIntentConnectionOperation
- (LNFetchSuggestedActionsFromViewAppIntentConnectionOperation)initWithConnectionInterface:(id)interface queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchSuggestedActionsFromViewAppIntentConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchSuggestedActionsFromViewAppIntentConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    results = [(LNFetchSuggestedActionsFromViewAppIntentConnectionOperation *)self results];
    v7 = [(LNConnectionOperation *)self validatingResult:results error:errorCopy];

    completionHandler2 = [(LNFetchSuggestedActionsFromViewAppIntentConnectionOperation *)self completionHandler];
    results2 = [(LNFetchSuggestedActionsFromViewAppIntentConnectionOperation *)self results];
    (completionHandler2)[2](completionHandler2, results2, v7);

    [(LNFetchSuggestedActionsFromViewAppIntentConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchSuggestedActionsFromViewAppIntentConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v7.receiver = self;
  v7.super_class = LNFetchSuggestedActionsFromViewAppIntentConnectionOperation;
  [(LNConnectionOperation *)&v7 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching suggested actions", buf, 2u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__LNFetchSuggestedActionsFromViewAppIntentConnectionOperation_start__block_invoke;
  v5[3] = &unk_1E74B1F78;
  v5[4] = self;
  [connectionInterface fetchSuggestedActionsFromViewWithCompletionHandler:v5];
}

void __68__LNFetchSuggestedActionsFromViewAppIntentConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResults:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchSuggestedActionsFromViewAppIntentConnectionOperation)initWithConnectionInterface:(id)interface queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (interfaceCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedActionsFromViewAppIntentConnectionOperation.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedActionsFromViewAppIntentConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v21.receiver = self;
  v21.super_class = LNFetchSuggestedActionsFromViewAppIntentConnectionOperation;
  v14 = [(LNInterfaceConnectionOperation *)&v21 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_12363];

  if (v14)
  {
    v15 = _Block_copy(v12);
    completionHandler = v14->_completionHandler;
    v14->_completionHandler = v15;

    v17 = v14;
  }

  return v14;
}

os_activity_t __115__LNFetchSuggestedActionsFromViewAppIntentConnectionOperation_initWithConnectionInterface_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch suggested actions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end