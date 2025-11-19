@interface LNFetchViewActionsConnectionOperation
- (LNFetchViewActionsConnectionOperation)initWithConnectionInterface:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchViewActionsConnectionOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchViewActionsConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchViewActionsConnectionOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNFetchViewActionsConnectionOperation *)self completionHandler];
    v9 = [(LNFetchViewActionsConnectionOperation *)self result];
    (v8)[2](v8, v9, v7);

    [(LNFetchViewActionsConnectionOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchViewActionsConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v7.receiver = self;
  v7.super_class = LNFetchViewActionsConnectionOperation;
  [(LNConnectionOperation *)&v7 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching app view Actions", buf, 2u);
  }

  v4 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__LNFetchViewActionsConnectionOperation_start__block_invoke;
  v5[3] = &unk_1E74B1F78;
  v5[4] = self;
  [v4 fetchViewActionsWithCompletionHandler:v5];
}

void __46__LNFetchViewActionsConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchViewActionsConnectionOperation)initWithConnectionInterface:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LNFetchViewActionsConnectionOperation.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"LNFetchViewActionsConnectionOperation.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v13 = [MEMORY[0x1E696AFB0] UUID];
  v21.receiver = self;
  v21.super_class = LNFetchViewActionsConnectionOperation;
  v14 = [(LNInterfaceConnectionOperation *)&v21 initWithIdentifier:v13 connectionInterface:v9 priority:1 queue:v10 activity:&__block_literal_global_3570];

  if (v14)
  {
    v15 = _Block_copy(v12);
    completionHandler = v14->_completionHandler;
    v14->_completionHandler = v15;

    v17 = v14;
  }

  return v14;
}

os_activity_t __93__LNFetchViewActionsConnectionOperation_initWithConnectionInterface_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch view actions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end