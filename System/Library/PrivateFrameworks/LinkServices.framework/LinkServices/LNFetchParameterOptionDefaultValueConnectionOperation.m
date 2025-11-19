@interface LNFetchParameterOptionDefaultValueConnectionOperation
- (LNFetchParameterOptionDefaultValueConnectionOperation)initWithConnectionInterface:(id)a3 action:(id)a4 actionMetadata:(id)a5 parameterIdentifier:(id)a6 queue:(id)a7 completionHandler:(id)a8;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchParameterOptionDefaultValueConnectionOperation

- (void)start
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = LNFetchParameterOptionDefaultValueConnectionOperation;
  [(LNConnectionOperation *)&v13 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self actionMetadata];
    v5 = [v4 identifier];
    v6 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self parameterIdentifier];
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching options default value for action %@ parameter %@", buf, 0x16u);
  }

  v7 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v8 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self action];
  v9 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self actionMetadata];
  v10 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self parameterIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__LNFetchParameterOptionDefaultValueConnectionOperation_start__block_invoke;
  v12[3] = &unk_1E74B12C8;
  v12[4] = self;
  [v7 fetchParameterOptionDefaultValueForAction:v8 actionMetadata:v9 parameterIdentifier:v10 completionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __62__LNFetchParameterOptionDefaultValueConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self completionHandler];
    v7 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self result];
    (v6)[2](v6, v7, v4);

    [(LNFetchParameterOptionDefaultValueConnectionOperation *)self setCompletionHandler:0];
  }

  v8.receiver = self;
  v8.super_class = LNFetchParameterOptionDefaultValueConnectionOperation;
  [(LNConnectionOperation *)&v8 finishWithError:v4];
}

- (LNFetchParameterOptionDefaultValueConnectionOperation)initWithConnectionInterface:(id)a3 action:(id)a4 actionMetadata:(id)a5 parameterIdentifier:(id)a6 queue:(id)a7 completionHandler:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_11:
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"LNFetchParameterOptionDefaultValueConnectionOperation.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];

    if (v20)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v36 = [MEMORY[0x1E696AAA8] currentHandler];
  [v36 handleFailureInMethod:a2 object:self file:@"LNFetchParameterOptionDefaultValueConnectionOperation.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"actionMetadata"}];

  if (!v18)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v20)
  {
    goto LABEL_4;
  }

LABEL_12:
  v38 = [MEMORY[0x1E696AAA8] currentHandler];
  [v38 handleFailureInMethod:a2 object:self file:@"LNFetchParameterOptionDefaultValueConnectionOperation.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v21 = [MEMORY[0x1E696AFB0] UUID];
  v22 = [v17 systemProtocols];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  v39.receiver = self;
  v39.super_class = LNFetchParameterOptionDefaultValueConnectionOperation;
  v25 = [(LNRuntimeAssertionsTakingConnectionOperation *)&v39 initWithIdentifier:v21 connectionInterface:v15 systemProtocols:v24 priority:1 queue:v19 activity:&__block_literal_global_6118];

  if (v25)
  {
    v26 = [v16 copy];
    action = v25->_action;
    v25->_action = v26;

    v28 = [v17 copy];
    actionMetadata = v25->_actionMetadata;
    v25->_actionMetadata = v28;

    v30 = [v18 copy];
    parameterIdentifier = v25->_parameterIdentifier;
    v25->_parameterIdentifier = v30;

    v32 = [v20 copy];
    completionHandler = v25->_completionHandler;
    v25->_completionHandler = v32;

    v34 = v25;
  }

  return v25;
}

os_activity_t __151__LNFetchParameterOptionDefaultValueConnectionOperation_initWithConnectionInterface_action_actionMetadata_parameterIdentifier_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch parameter option default value", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end