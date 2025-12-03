@interface LNFetchSuggestedActionsConnectionOperation
- (LNFetchSuggestedActionsConnectionOperation)initWithConnectionInterface:(id)interface siriLanguageCode:(id)code queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchSuggestedActionsConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchSuggestedActionsConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    results = [(LNFetchSuggestedActionsConnectionOperation *)self results];
    v7 = [(LNConnectionOperation *)self validatingResult:results error:errorCopy];

    completionHandler2 = [(LNFetchSuggestedActionsConnectionOperation *)self completionHandler];
    results2 = [(LNFetchSuggestedActionsConnectionOperation *)self results];
    (completionHandler2)[2](completionHandler2, results2, v7);

    [(LNFetchSuggestedActionsConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchSuggestedActionsConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v8.receiver = self;
  v8.super_class = LNFetchSuggestedActionsConnectionOperation;
  [(LNConnectionOperation *)&v8 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching suggested actions", buf, 2u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  siriLanguageCode = [(LNFetchSuggestedActionsConnectionOperation *)self siriLanguageCode];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__LNFetchSuggestedActionsConnectionOperation_start__block_invoke;
  v6[3] = &unk_1E74B1F78;
  v6[4] = self;
  [connectionInterface fetchSuggestedActionsWithSiriLanguageCode:siriLanguageCode completionHandler:v6];
}

void __51__LNFetchSuggestedActionsConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResults:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchSuggestedActionsConnectionOperation)initWithConnectionInterface:(id)interface siriLanguageCode:(id)code queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  codeCopy = code;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = handlerCopy;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedActionsConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedActionsConnectionOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNFetchSuggestedActionsConnectionOperation;
  v17 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_3628];

  if (v17)
  {
    objc_storeStrong(&v17->_siriLanguageCode, code);
    v18 = _Block_copy(v15);
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    v20 = v17;
  }

  return v17;
}

os_activity_t __115__LNFetchSuggestedActionsConnectionOperation_initWithConnectionInterface_siriLanguageCode_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch suggested actions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end