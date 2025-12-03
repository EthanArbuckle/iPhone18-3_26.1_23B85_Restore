@interface LNXPCListenerEndpointConnection
- (BOOL)refreshWithOptions:(id)options;
- (void)acquireAssertionsForConnectionOperation:(id)operation;
- (void)connectWithOptions:(id)options;
@end

@implementation LNXPCListenerEndpointConnection

- (void)acquireAssertionsForConnectionOperation:(id)operation
{
  v10 = *MEMORY[0x1E69E9840];
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    v8 = 138543362;
    v9 = logPrefix;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ Assertion is not required for XPC listener endpoint connection", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)refreshWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = LNXPCListenerEndpointConnection;
  v4 = [(LNConnection *)&v6 refreshWithOptions:options];
  if (v4)
  {
    [(LNConnection *)self setConnected];
  }

  return v4;
}

- (void)connectWithOptions:(id)options
{
  location[5] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = LNXPCListenerEndpointConnection;
  [(LNConnection *)&v17 connectWithOptions:optionsCopy];
  [(LNConnection *)self auditToken];
  if ([LNEntitlementsValidator validateEntitlement:@"com.apple.private.appintents.xpc-host" auditToken:location validator:&__block_literal_global_14785])
  {
    v5 = objc_alloc(MEMORY[0x1E696B0B8]);
    listenerEndpoint = [(LNXPCListenerEndpointConnection *)self listenerEndpoint];
    v7 = [v5 initWithListenerEndpoint:listenerEndpoint];
    [(LNConnection *)self setXPCConnection:v7];

    xpcConnection = [(LNConnection *)self xpcConnection];
    bundleIdentifier = [(LNConnection *)self bundleIdentifier];
    v10 = LNConnectionHostXPCInterface();
    [xpcConnection ln_configureWithBundleIdentifier:bundleIdentifier interface:v10];

    xpcConnection2 = [(LNConnection *)self xpcConnection];
    [xpcConnection2 resume];

    objc_initWeak(location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__LNXPCListenerEndpointConnection_connectWithOptions___block_invoke_15;
    v15[3] = &unk_1E74B2778;
    objc_copyWeak(&v16, location);
    [(LNConnection *)self setUpConnectionContextWithCompletionHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = LNConnectionErrorWithCode(1015);
    v13 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v12;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_ERROR, "Unable to connect using an XPC listener endpoint: %{public}@", location, 0xCu);
    }

    [(LNConnection *)self setDisconnectedWithError:v12];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __54__LNXPCListenerEndpointConnection_connectWithOptions___block_invoke_15(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_ERROR, "Unable to connect using an XPC listener endpoint. Failed to set connection context: %{public}@", buf, 0xCu);
    }

    v7 = [v5 xpcConnection];
    [v7 invalidate];

    [v5 setDisconnectedWithError:v3];
  }

  else
  {
    *buf = 0u;
    v22 = 0u;
    v8 = [WeakRetained xpcConnection];
    v9 = v8;
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      *buf = 0u;
      v22 = 0u;
    }

    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      *v19 = 0u;
      v20 = 0u;
    }

    v17 = *buf;
    v18 = v22;
    if (*buf == *v19 && *&buf[8] == *&v19[8] && v22 == v20 && *(&v22 + 1) == *(&v20 + 1))
    {
      [v5 setConnected];
    }

    else
    {
      v13 = LNConnectionErrorWithCode(1016);
      v14 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v19 = 138543362;
        *&v19[4] = v13;
        _os_log_impl(&dword_19763D000, v14, OS_LOG_TYPE_ERROR, "Unable to connect using an XPC listener endpoint: %{public}@", v19, 0xCu);
      }

      v15 = [v5 xpcConnection];
      [v15 invalidate];

      [v5 setDisconnectedWithError:v13];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __54__LNXPCListenerEndpointConnection_connectWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 BOOLValue];

  return v5;
}

@end