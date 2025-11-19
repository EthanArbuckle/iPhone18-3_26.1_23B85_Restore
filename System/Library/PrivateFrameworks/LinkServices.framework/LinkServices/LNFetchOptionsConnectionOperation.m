@interface LNFetchOptionsConnectionOperation
- (LNFetchOptionsConnectionOperation)initWithConnectionInterface:(id)a3 action:(id)a4 actionMetadata:(id)a5 parameterMetadata:(id)a6 optionsProviderReference:(id)a7 searchTerm:(id)a8 localeIdentifier:(id)a9 queue:(id)a10 completionHandler:(id)a11;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchOptionsConnectionOperation

- (void)start
{
  v25 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = LNFetchOptionsConnectionOperation;
  [(LNConnectionOperation *)&v18 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(LNFetchOptionsConnectionOperation *)self actionMetadata];
    v5 = [v4 identifier];
    v6 = [(LNFetchOptionsConnectionOperation *)self parameterMetadata];
    v7 = [v6 name];
    v8 = [(LNFetchOptionsConnectionOperation *)self searchTerm];
    *buf = 138412802;
    v20 = v5;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching options for action %@, parameter: %@, searchTerm: %@", buf, 0x20u);
  }

  v9 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v10 = [(LNFetchOptionsConnectionOperation *)self action];
  v11 = [(LNFetchOptionsConnectionOperation *)self actionMetadata];
  v12 = [(LNFetchOptionsConnectionOperation *)self parameterMetadata];
  v13 = [(LNFetchOptionsConnectionOperation *)self optionsProviderReference];
  v14 = [(LNFetchOptionsConnectionOperation *)self searchTerm];
  v15 = [(LNFetchOptionsConnectionOperation *)self localeIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__LNFetchOptionsConnectionOperation_start__block_invoke;
  v17[3] = &unk_1E74B1F28;
  v17[4] = self;
  [v9 fetchOptionsForAction:v10 actionMetadata:v11 parameterMetadata:v12 optionsProviderReference:v13 searchTerm:v14 localeIdentifier:v15 completionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchOptionsConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchOptionsConnectionOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNFetchOptionsConnectionOperation *)self completionHandler];
    v9 = [(LNFetchOptionsConnectionOperation *)self result];
    (v8)[2](v8, v9, v7);

    [(LNFetchOptionsConnectionOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchOptionsConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

void __42__LNFetchOptionsConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchOptionsConnectionOperation)initWithConnectionInterface:(id)a3 action:(id)a4 actionMetadata:(id)a5 parameterMetadata:(id)a6 optionsProviderReference:(id)a7 searchTerm:(id)a8 localeIdentifier:(id)a9 queue:(id)a10 completionHandler:(id)a11
{
  v16 = a3;
  v41 = a4;
  obj = a5;
  v17 = a5;
  v36 = a6;
  v18 = a6;
  v37 = a7;
  v40 = a7;
  v38 = a8;
  v39 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"actionMetadata"}];

    if (v18)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"parameterMetadata"}];

  if (v19)
  {
LABEL_4:
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_12:
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier"}];

  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v21)
  {
    goto LABEL_6;
  }

LABEL_13:
  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_6:
  v22 = [MEMORY[0x1E696AFB0] UUID];
  v23 = [v17 systemProtocols];
  v43.receiver = self;
  v43.super_class = LNFetchOptionsConnectionOperation;
  v24 = [(LNRuntimeAssertionsTakingConnectionOperation *)&v43 initWithIdentifier:v22 connectionInterface:v16 systemProtocols:v23 priority:1 queue:v20 activity:&__block_literal_global_12236];

  if (v24)
  {
    objc_storeStrong(&v24->_action, a4);
    objc_storeStrong(&v24->_actionMetadata, obj);
    objc_storeStrong(&v24->_parameterMetadata, v36);
    objc_storeStrong(&v24->_optionsProviderReference, v37);
    objc_storeStrong(&v24->_searchTerm, v38);
    objc_storeStrong(&v24->_localeIdentifier, a9);
    v25 = _Block_copy(v21);
    completionHandler = v24->_completionHandler;
    v24->_completionHandler = v25;

    v27 = v24;
  }

  return v24;
}

os_activity_t __182__LNFetchOptionsConnectionOperation_initWithConnectionInterface_action_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch options", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end