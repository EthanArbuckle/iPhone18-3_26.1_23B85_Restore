@interface LNFetchSuggestedFocusActionsConnectionOperation
- (LNFetchSuggestedFocusActionsConnectionOperation)initWithConnectionInterface:(id)interface actionMetadata:(id)metadata suggestionContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchSuggestedFocusActionsConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchSuggestedFocusActionsConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    results = [(LNFetchSuggestedFocusActionsConnectionOperation *)self results];
    v7 = [(LNConnectionOperation *)self validatingResult:results error:errorCopy];

    completionHandler2 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self completionHandler];
    results2 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self results];
    (completionHandler2)[2](completionHandler2, results2, v7);

    [(LNFetchSuggestedFocusActionsConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchSuggestedFocusActionsConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = LNFetchSuggestedFocusActionsConnectionOperation;
  [(LNConnectionOperation *)&v11 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    actionMetadata = [(LNFetchSuggestedFocusActionsConnectionOperation *)self actionMetadata];
    identifier = [actionMetadata identifier];
    *buf = 138412290;
    v13 = identifier;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching suggested focus actions %@", buf, 0xCu);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  actionMetadata2 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self actionMetadata];
  suggestionContext = [(LNFetchSuggestedFocusActionsConnectionOperation *)self suggestionContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__LNFetchSuggestedFocusActionsConnectionOperation_start__block_invoke;
  v10[3] = &unk_1E74B1F78;
  v10[4] = self;
  [connectionInterface fetchSuggestedFocusActionsForActionMetadata:actionMetadata2 suggestionContext:suggestionContext completionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __56__LNFetchSuggestedFocusActionsConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResults:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchSuggestedFocusActionsConnectionOperation)initWithConnectionInterface:(id)interface actionMetadata:(id)metadata suggestionContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  metadataCopy = metadata;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  v18 = handlerCopy;
  if (metadataCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedFocusActionsConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"actionMetadata"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedFocusActionsConnectionOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v27.receiver = self;
  v27.super_class = LNFetchSuggestedFocusActionsConnectionOperation;
  v20 = [(LNInterfaceConnectionOperation *)&v27 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_9251];

  if (v20)
  {
    objc_storeStrong(&v20->_actionMetadata, metadata);
    objc_storeStrong(&v20->_suggestionContext, context);
    v21 = [v18 copy];
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v21;

    v23 = v20;
  }

  return v20;
}

os_activity_t __136__LNFetchSuggestedFocusActionsConnectionOperation_initWithConnectionInterface_actionMetadata_suggestionContext_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch suggested focus actions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end