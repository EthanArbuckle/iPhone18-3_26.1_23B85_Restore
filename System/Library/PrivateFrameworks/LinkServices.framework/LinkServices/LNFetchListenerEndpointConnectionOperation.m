@interface LNFetchListenerEndpointConnectionOperation
- (LNFetchListenerEndpointConnectionOperation)initWithConnectionInterface:(id)a3 queue:(id)a4 bundleIdentifier:(id)a5 action:(id)a6 completionHandler:(id)a7;
- (void)finishWithError:(id)a3;
- (void)finishWithXPCListenerEndpoint:(id)a3 auditTokenData:(id)a4 resolvedAction:(id)a5 error:(id)a6;
- (void)start;
@end

@implementation LNFetchListenerEndpointConnectionOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchListenerEndpointConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNConnectionOperation *)self validatingResult:0 error:v4];

    v7 = [(LNFetchListenerEndpointConnectionOperation *)self completionHandler];
    v7[2](v7, 0, 0, 0, v6);

    [(LNFetchListenerEndpointConnectionOperation *)self setCompletionHandler:0];
    v4 = v6;
  }

  v8.receiver = self;
  v8.super_class = LNFetchListenerEndpointConnectionOperation;
  [(LNConnectionOperation *)&v8 finishWithError:v4];
}

- (void)finishWithXPCListenerEndpoint:(id)a3 auditTokenData:(id)a4 resolvedAction:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(LNFetchListenerEndpointConnectionOperation *)self completionHandler];

  if (v14)
  {
    v15 = [(LNFetchListenerEndpointConnectionOperation *)self completionHandler];
    (v15)[2](v15, v10, v11, v12, v13);

    [(LNFetchListenerEndpointConnectionOperation *)self setCompletionHandler:0];
  }

  v16.receiver = self;
  v16.super_class = LNFetchListenerEndpointConnectionOperation;
  [(LNConnectionOperation *)&v16 finishWithError:v13];
}

- (void)start
{
  v9.receiver = self;
  v9.super_class = LNFetchListenerEndpointConnectionOperation;
  [(LNConnectionOperation *)&v9 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching XPC listener endpoint", buf, 2u);
  }

  v4 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v5 = [(LNFetchListenerEndpointConnectionOperation *)self bundleIdentifier];
  v6 = [(LNFetchListenerEndpointConnectionOperation *)self action];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__LNFetchListenerEndpointConnectionOperation_start__block_invoke;
  v7[3] = &unk_1E74B2630;
  v7[4] = self;
  [v4 getListenerEndpointForBundleIdentifier:v5 action:v6 completionHandler:v7];
}

void __51__LNFetchListenerEndpointConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) activity];
  os_activity_scope_enter(v13, &v14);

  [*(a1 + 32) finishWithXPCListenerEndpoint:v9 auditTokenData:v10 resolvedAction:v11 error:v12];
  os_activity_scope_leave(&v14);
}

- (LNFetchListenerEndpointConnectionOperation)initWithConnectionInterface:(id)a3 queue:(id)a4 bundleIdentifier:(id)a5 action:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (v13)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"LNFetchListenerEndpointConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"LNFetchListenerEndpointConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v19 = [MEMORY[0x1E696AFB0] UUID];
  v29.receiver = self;
  v29.super_class = LNFetchListenerEndpointConnectionOperation;
  v20 = [(LNInterfaceConnectionOperation *)&v29 initWithIdentifier:v19 connectionInterface:v13 priority:1 queue:v14 activity:&__block_literal_global_14165];

  if (v20)
  {
    v21 = _Block_copy(v18);
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v21;

    v23 = [v15 copy];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v23;

    objc_storeStrong(&v20->_action, a6);
    v25 = v20;
  }

  return v20;
}

os_activity_t __122__LNFetchListenerEndpointConnectionOperation_initWithConnectionInterface_queue_bundleIdentifier_action_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch listener endpoint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end