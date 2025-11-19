@interface LNFetchSuggestedActionsConnectionOperation
- (LNFetchSuggestedActionsConnectionOperation)initWithConnectionInterface:(id)a3 siriLanguageCode:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchSuggestedActionsConnectionOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchSuggestedActionsConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchSuggestedActionsConnectionOperation *)self results];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNFetchSuggestedActionsConnectionOperation *)self completionHandler];
    v9 = [(LNFetchSuggestedActionsConnectionOperation *)self results];
    (v8)[2](v8, v9, v7);

    [(LNFetchSuggestedActionsConnectionOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchSuggestedActionsConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
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

  v4 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v5 = [(LNFetchSuggestedActionsConnectionOperation *)self siriLanguageCode];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__LNFetchSuggestedActionsConnectionOperation_start__block_invoke;
  v6[3] = &unk_1E74B1F78;
  v6[4] = self;
  [v4 fetchSuggestedActionsWithSiriLanguageCode:v5 completionHandler:v6];
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

- (LNFetchSuggestedActionsConnectionOperation)initWithConnectionInterface:(id)a3 siriLanguageCode:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v11)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedActionsConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LNFetchSuggestedActionsConnectionOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNFetchSuggestedActionsConnectionOperation;
  v17 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:v16 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_3628];

  if (v17)
  {
    objc_storeStrong(&v17->_siriLanguageCode, a4);
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