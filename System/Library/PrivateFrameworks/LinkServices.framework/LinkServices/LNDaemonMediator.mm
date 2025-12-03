@interface LNDaemonMediator
+ (void)getConnectionHostInterfaceForBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation LNDaemonMediator

+ (void)getConnectionHostInterfaceForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = getLNLogCategoryDaemonMediator();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = identifierCopy;
  }

  v8 = objc_alloc(MEMORY[0x1E696B0B8]);
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.private.appintents.delegate.%@", identifierCopy];
  v10 = [v8 initWithMachServiceName:identifierCopy options:0];

  v11 = LNConnectionHostXPCListenerEndpointVendingInterface();
  [v10 setRemoteObjectInterface:v11];

  [v10 setInterruptionHandler:&__block_literal_global_12828];
  [v10 setInvalidationHandler:&__block_literal_global_11];
  [v10 resume];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_12;
  v22[3] = &unk_1E74B2848;
  v12 = handlerCopy;
  v23 = v12;
  v13 = [v10 remoteObjectProxyWithErrorHandler:v22];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_14;
  v18[3] = &unk_1E74B2230;
  v20 = identifierCopy;
  v21 = v12;
  v19 = v10;
  v14 = identifierCopy;
  v15 = v12;
  v16 = v10;
  [v13 getListenerEndpointWithCompletionHandler:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryDaemonMediator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Unable to get remoteObjectProxyWithErrorHandler, error: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E74B2318;
  v16 = *(a1 + 32);
  v10 = _Block_copy(aBlock);
  v11 = *(*(a1 + 48) + 16);
  if (v7)
  {
    v11();
    v12 = getLNLogCategoryDaemonMediator();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 40);
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_INFO, "Successfully fetched XPC listener endpoint for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11();
  }

  v10[2](v10);

  v14 = *MEMORY[0x1E69E9840];
}

void __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_9()
{
  v0 = getLNLogCategoryDaemonMediator();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_19763D000, v0, OS_LOG_TYPE_INFO, "Daemon Mediator XPC connection has been invalidated", v1, 2u);
  }
}

void __84__LNDaemonMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke()
{
  v0 = getLNLogCategoryDaemonMediator();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_19763D000, v0, OS_LOG_TYPE_INFO, "Daemon Mediator XPC connection has been interrupted", v1, 2u);
  }
}

@end