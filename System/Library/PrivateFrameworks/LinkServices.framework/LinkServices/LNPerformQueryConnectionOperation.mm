@interface LNPerformQueryConnectionOperation
- (LNPerformQueryConnectionOperation)initWithConnectionInterface:(id)a3 query:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNPerformQueryConnectionOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNPerformQueryConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNPerformQueryConnectionOperation *)self output];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNPerformQueryConnectionOperation *)self completionHandler];
    v9 = [(LNPerformQueryConnectionOperation *)self output];
    (v8)[2](v8, v9, v7);

    [(LNPerformQueryConnectionOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNPerformQueryConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v7.receiver = self;
  v7.super_class = LNPerformQueryConnectionOperation;
  [(LNConnectionOperation *)&v7 start];
  v4 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v5 = [(LNPerformQueryConnectionOperation *)self queryRequest];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__LNPerformQueryConnectionOperation_start__block_invoke;
  v6[3] = &unk_1E74B2730;
  v6[4] = self;
  v6[5] = a2;
  [v4 performPropertyQuery:v5 completionHandler:v6];
}

void __42__LNPerformQueryConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((v5 == 0) != (v6 != 0))
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"LNPerformQueryConnectionOperation.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"(output && !error) || (error && !output)"}];
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &state);

  [*(a1 + 32) setOutput:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&state);
}

- (LNPerformQueryConnectionOperation)initWithConnectionInterface:(id)a3 query:(id)a4 queue:(id)a5 completionHandler:(id)a6
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
    [v22 handleFailureInMethod:a2 object:self file:@"LNPerformQueryConnectionOperation.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"LNPerformQueryConnectionOperation.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

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
  [v23 handleFailureInMethod:a2 object:self file:@"LNPerformQueryConnectionOperation.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNPerformQueryConnectionOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:v15 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_4800];

  if (v16)
  {
    objc_storeStrong(&v16->_queryRequest, a4);
    v17 = [v14 copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = v16;
  }

  return v16;
}

os_activity_t __95__LNPerformQueryConnectionOperation_initWithConnectionInterface_query_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:perform query", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end