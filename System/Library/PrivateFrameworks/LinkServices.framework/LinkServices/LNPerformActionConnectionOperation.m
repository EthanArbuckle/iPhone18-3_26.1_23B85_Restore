@interface LNPerformActionConnectionOperation
- (LNPerformActionConnectionOperation)initWithConnectionInterface:(id)a3 action:(id)a4 executor:(id)a5 executorActivity:(id)a6 queue:(id)a7 completionHandler:(id)a8;
- (double)timeout;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNPerformActionConnectionOperation

- (double)timeout
{
  v2 = [(LNPerformActionConnectionOperation *)self executor];
  v3 = [v2 options];
  [v3 connectionOperationTimeout];
  v5 = v4;

  return v5;
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNPerformActionConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNPerformActionConnectionOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNPerformActionConnectionOperation *)self completionHandler];
    v9 = [(LNPerformActionConnectionOperation *)self result];
    (v8)[2](v8, self, v9, v7);

    [(LNPerformActionConnectionOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNPerformActionConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v26 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = LNPerformActionConnectionOperation;
  [(LNConnectionOperation *)&v19 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(LNPerformActionConnectionOperation *)self action];
    v5 = [v4 identifier];
    v6 = [(LNConnectionOperation *)self identifier];
    v7 = [(LNPerformActionConnectionOperation *)self action];
    v8 = [v7 parameters];
    *buf = 138543874;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2112;
    v25 = v8;
  }

  v9 = [(LNPerformActionConnectionOperation *)self action];
  v10 = [MEMORY[0x1E69AC880] fileValueType];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__LNPerformActionConnectionOperation_start__block_invoke;
  v18[3] = &unk_1E74B1E70;
  v18[4] = self;
  [v9 enumerateParameterValuesOfValueType:v10 block:v18];

  v11 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v12 = [(LNPerformActionConnectionOperation *)self action];
  v13 = [(LNPerformActionConnectionOperation *)self executor];
  v14 = [v13 options];
  v15 = [(LNPerformActionConnectionOperation *)self executor];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__LNPerformActionConnectionOperation_start__block_invoke_2;
  v17[3] = &unk_1E74B1E98;
  v17[4] = self;
  [v11 performAction:v12 options:v14 executor:v15 completionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __43__LNPerformActionConnectionOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 fileURL];
  v7 = [v6 isFileURL];

  if (v7)
  {
    v8 = [*(a1 + 32) executor];
    v9 = [v8 connection];
    v10 = v9;
    if (v9)
    {
      [v9 auditToken];
    }

    v11 = [v5 fileURL];
    INIssueSandboxExtensionToProcess();
  }
}

void __43__LNPerformActionConnectionOperation_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNPerformActionConnectionOperation)initWithConnectionInterface:(id)a3 action:(id)a4 executor:(id)a5 executorActivity:(id)a6 queue:(id)a7 completionHandler:(id)a8
{
  v15 = a3;
  obj = a4;
  v16 = a4;
  v38 = a5;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"LNPerformActionConnectionOperation.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface", obj, v38}];

    if (v16)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_15:
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"LNPerformActionConnectionOperation.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"executor"}];

      if (v20)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"LNPerformActionConnectionOperation.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"action"}];

  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v20)
  {
    goto LABEL_5;
  }

LABEL_16:
  v36 = [MEMORY[0x1E696AAA8] currentHandler];
  [v36 handleFailureInMethod:a2 object:self file:@"LNPerformActionConnectionOperation.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  if ([v16 openAppWhenRun])
  {
    v21 = 2;
  }

  else
  {
    v22 = [v16 systemProtocols];
    v23 = [MEMORY[0x1E69ACA48] pushToTalkTransmissionProtocol];
    v24 = [v22 containsObject:v23];

    if (v24)
    {
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }
  }

  v25 = [v17 identifier];
  v26 = [v16 systemProtocols];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __123__LNPerformActionConnectionOperation_initWithConnectionInterface_action_executor_executorActivity_queue_completionHandler___block_invoke;
  v40[3] = &unk_1E74B1E48;
  v27 = v18;
  v41 = v27;
  v39.receiver = self;
  v39.super_class = LNPerformActionConnectionOperation;
  v28 = [(LNRuntimeAssertionsTakingConnectionOperation *)&v39 initWithIdentifier:v25 connectionInterface:v15 systemProtocols:v26 priority:v21 queue:v19 activity:v40];

  if (v28)
  {
    objc_storeStrong(&v28->_action, obj);
    objc_storeStrong(&v28->_executor, v38);
    v29 = [v20 copy];
    completionHandler = v28->_completionHandler;
    v28->_completionHandler = v29;

    v31 = v28;
  }

  return v28;
}

@end