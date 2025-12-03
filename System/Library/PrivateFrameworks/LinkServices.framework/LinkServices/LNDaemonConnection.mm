@interface LNDaemonConnection
- (BOOL)refreshWithOptions:(id)options;
- (void)connectWithOptions:(id)options;
@end

@implementation LNDaemonConnection

- (BOOL)refreshWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = LNDaemonConnection;
  v4 = [(LNConnection *)&v6 refreshWithOptions:options];
  if (v4)
  {
    [(LNConnection *)self setConnected];
  }

  return v4;
}

- (void)connectWithOptions:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v28.receiver = self;
  v28.super_class = LNDaemonConnection;
  [(LNConnection *)&v28 connectWithOptions:optionsCopy];
  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    LODWORD(buf.opaque[0]) = 138543362;
    *(buf.opaque + 4) = logPrefix;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ Establishing a mediator connection to the daemon", &buf, 0xCu);
  }

  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.extension" options:0];
  [(LNDaemonConnection *)self setMediatorXPCConnection:v8];

  v9 = LNDaemonExtensionXPCInterface();
  mediatorXPCConnection = [(LNDaemonConnection *)self mediatorXPCConnection];
  [mediatorXPCConnection setRemoteObjectInterface:v9];

  activity = [(LNConnection *)self activity];
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(activity, &buf);
  objc_initWeak(&location, self);
  mediatorXPCConnection2 = [(LNDaemonConnection *)self mediatorXPCConnection];
  queue2 = [(LNConnection *)self queue];
  [mediatorXPCConnection2 _setQueue:queue2];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __41__LNDaemonConnection_connectWithOptions___block_invoke;
  v25[3] = &unk_1E74B22C8;
  v25[4] = activity;
  objc_copyWeak(&v26, &location);
  mediatorXPCConnection3 = [(LNDaemonConnection *)self mediatorXPCConnection];
  [mediatorXPCConnection3 setInterruptionHandler:v25];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__LNDaemonConnection_connectWithOptions___block_invoke_8;
  v23[3] = &unk_1E74B22C8;
  v23[4] = activity;
  objc_copyWeak(&v24, &location);
  mediatorXPCConnection4 = [(LNDaemonConnection *)self mediatorXPCConnection];
  [mediatorXPCConnection4 setInvalidationHandler:v23];

  mediatorXPCConnection5 = [(LNDaemonConnection *)self mediatorXPCConnection];
  [mediatorXPCConnection5 resume];

  mediatorXPCConnection6 = [(LNDaemonConnection *)self mediatorXPCConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __41__LNDaemonConnection_connectWithOptions___block_invoke_9;
  v22[3] = &unk_1E74B1B90;
  v22[4] = self;
  v18 = [mediatorXPCConnection6 remoteObjectProxyWithErrorHandler:v22];
  bundleIdentifier = [(LNConnection *)self bundleIdentifier];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __41__LNDaemonConnection_connectWithOptions___block_invoke_11;
  v21[3] = &unk_1E74B13F0;
  v21[4] = self;
  [v18 getConnectionHostInterfaceForBundleIdentifier:bundleIdentifier completionHandler:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&buf);

  v20 = *MEMORY[0x1E69E9840];
}

void __41__LNDaemonConnection_connectWithOptions___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Daemon Mediator XPC connection has been interrupted", v5, 2u);
  }

  if (WeakRetained)
  {
    v4 = [WeakRetained mediatorXPCConnection];
    [v4 invalidate];

    [WeakRetained setMediatorXPCConnection:0];
  }

  os_activity_scope_leave(&state);
}

void __41__LNDaemonConnection_connectWithOptions___block_invoke_8(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Daemon Mediator XPC connection has been invalidated", v4, 2u);
  }

  if (WeakRetained)
  {
    [WeakRetained setMediatorXPCConnection:0];
  }

  os_activity_scope_leave(&state);
}

void __41__LNDaemonConnection_connectWithOptions___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__LNDaemonConnection_connectWithOptions___block_invoke_2;
  v7[3] = &unk_1E74B27A0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __41__LNDaemonConnection_connectWithOptions___block_invoke_11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v9)
  {
    [v10 setDisconnectedWithError:v9];
  }

  else
  {
    if (v8)
    {
      [v8 if_auditToken];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    [v10 connectUsingListenerEndpoint:v7 auditToken:v11];
  }
}

uint64_t __41__LNDaemonConnection_connectWithOptions___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_ERROR, "Unable to get remoteObjectProxyWithErrorHandler, error: %{public}@", &v6, 0xCu);
  }

  result = [*(a1 + 40) setDisconnectedWithError:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end