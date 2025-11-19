@interface LNFetchOptionsDefaultValueConnectionOperation
- (LNFetchOptionsDefaultValueConnectionOperation)initWithConnectionInterface:(id)a3 action:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchOptionsDefaultValueConnectionOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchOptionsDefaultValueConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchOptionsDefaultValueConnectionOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNFetchOptionsDefaultValueConnectionOperation *)self completionHandler];
    v9 = [(LNFetchOptionsDefaultValueConnectionOperation *)self result];
    (v8)[2](v8, v9, v7);

    [(LNFetchOptionsDefaultValueConnectionOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchOptionsDefaultValueConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = LNFetchOptionsDefaultValueConnectionOperation;
  [(LNConnectionOperation *)&v10 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(LNFetchOptionsDefaultValueConnectionOperation *)self action];
    v5 = [v4 identifier];
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching options default values for action %@", buf, 0xCu);
  }

  v6 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v7 = [(LNFetchOptionsDefaultValueConnectionOperation *)self action];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__LNFetchOptionsDefaultValueConnectionOperation_start__block_invoke;
  v9[3] = &unk_1E74B1958;
  v9[4] = self;
  [v6 fetchOptionsDefaultValuesForAction:v7 completionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __54__LNFetchOptionsDefaultValueConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchOptionsDefaultValueConnectionOperation)initWithConnectionInterface:(id)a3 action:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v12)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsDefaultValueConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsDefaultValueConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v26.receiver = self;
  v26.super_class = LNFetchOptionsDefaultValueConnectionOperation;
  v17 = [(LNInterfaceConnectionOperation *)&v26 initWithIdentifier:v16 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_10078];

  if (v17)
  {
    v18 = [v12 copy];
    action = v17->_action;
    v17->_action = v18;

    v20 = [v15 copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v20;

    v22 = v17;
  }

  return v17;
}

os_activity_t __108__LNFetchOptionsDefaultValueConnectionOperation_initWithConnectionInterface_action_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch options default", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end