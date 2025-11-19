@interface LNFetchSuggestedFocusActionsConnectionOperation
- (LNFetchSuggestedFocusActionsConnectionOperation)initWithConnectionInterface:(id)a3 actionMetadata:(id)a4 suggestionContext:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchSuggestedFocusActionsConnectionOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self results];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self completionHandler];
    v9 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self results];
    (v8)[2](v8, v9, v7);

    [(LNFetchSuggestedFocusActionsConnectionOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchSuggestedFocusActionsConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
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
    v4 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self actionMetadata];
    v5 = [v4 identifier];
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching suggested focus actions %@", buf, 0xCu);
  }

  v6 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v7 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self actionMetadata];
  v8 = [(LNFetchSuggestedFocusActionsConnectionOperation *)self suggestionContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__LNFetchSuggestedFocusActionsConnectionOperation_start__block_invoke;
  v10[3] = &unk_1E74B1F78;
  v10[4] = self;
  [v6 fetchSuggestedFocusActionsForActionMetadata:v7 suggestionContext:v8 completionHandler:v10];

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

- (LNFetchSuggestedFocusActionsConnectionOperation)initWithConnectionInterface:(id)a3 actionMetadata:(id)a4 suggestionContext:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (v14)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedFocusActionsConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"actionMetadata"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedFocusActionsConnectionOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v19 = [MEMORY[0x1E696AFB0] UUID];
  v27.receiver = self;
  v27.super_class = LNFetchSuggestedFocusActionsConnectionOperation;
  v20 = [(LNInterfaceConnectionOperation *)&v27 initWithIdentifier:v19 connectionInterface:v13 priority:1 queue:v16 activity:&__block_literal_global_9251];

  if (v20)
  {
    objc_storeStrong(&v20->_actionMetadata, a4);
    objc_storeStrong(&v20->_suggestionContext, a5);
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