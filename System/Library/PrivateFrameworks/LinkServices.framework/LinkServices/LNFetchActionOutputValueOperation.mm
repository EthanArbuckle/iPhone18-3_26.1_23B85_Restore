@interface LNFetchActionOutputValueOperation
- (LNFetchActionOutputValueOperation)initWithConnectionInterface:(id)a3 actionOutput:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchActionOutputValueOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchActionOutputValueOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchActionOutputValueOperation *)self value];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNFetchActionOutputValueOperation *)self completionHandler];
    v9 = [(LNFetchActionOutputValueOperation *)self value];
    (v8)[2](v8, v9, v7);

    [(LNFetchActionOutputValueOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchActionOutputValueOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v17 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = LNFetchActionOutputValueOperation;
  [(LNConnectionOperation *)&v12 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(LNFetchActionOutputValueOperation *)self actionOutput];
    v5 = [v4 identifier];
    v6 = [(LNConnectionOperation *)self identifier];
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
  }

  v7 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v8 = [(LNFetchActionOutputValueOperation *)self actionOutput];
  v9 = [v8 identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__LNFetchActionOutputValueOperation_start__block_invoke;
  v11[3] = &unk_1E74B1010;
  v11[4] = self;
  [v7 fetchActionOutputValueWithIdentifier:v9 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __42__LNFetchActionOutputValueOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setValue:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchActionOutputValueOperation)initWithConnectionInterface:(id)a3 actionOutput:(id)a4 queue:(id)a5 completionHandler:(id)a6
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
    [v22 handleFailureInMethod:a2 object:self file:@"LNFetchActionOutputValueOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"actionOutput"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"LNFetchActionOutputValueOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

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
  [v23 handleFailureInMethod:a2 object:self file:@"LNFetchActionOutputValueOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNFetchActionOutputValueOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:v15 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_4505];

  if (v16)
  {
    objc_storeStrong(&v16->_actionOutput, a4);
    v17 = [v14 copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = v16;
  }

  return v16;
}

os_activity_t __102__LNFetchActionOutputValueOperation_initWithConnectionInterface_actionOutput_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch action output value", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end