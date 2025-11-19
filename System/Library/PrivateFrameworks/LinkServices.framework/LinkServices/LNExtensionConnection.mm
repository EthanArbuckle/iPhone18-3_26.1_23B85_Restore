@interface LNExtensionConnection
- (BOOL)refreshWithOptions:(id)a3;
- (id)extensionIdentityWithExtensionPointIdentifier:(id)a3 error:(id *)a4;
- (void)connectDirectlyWithOptions:(id)a3;
- (void)connectUsingMediatorWithOptions:(id)a3;
- (void)connectWithOptions:(id)a3;
- (void)dealloc;
- (void)invalidateExtensionProcess;
@end

@implementation LNExtensionConnection

- (id)extensionIdentityWithExtensionPointIdentifier:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(v7);

  if (a4)
  {
    *a4 = 0;
  }

  v8 = objc_alloc(MEMORY[0x1E6966CE0]);
  v9 = MEMORY[0x1E696AE18];
  v10 = [(LNConnection *)self bundleIdentifier];
  v11 = [v9 predicateWithFormat:@"bundleIdentifier = %@", v10];
  v12 = [v8 initWithExtensionPointIdentifier:v6 predicate:v11];

  v13 = [MEMORY[0x1E6966CF8] executeQuery:v12];
  if ([v13 count])
  {
    if ([v13 count] >= 2)
    {
      v14 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(LNConnection *)self bundleIdentifier];
        v16 = [v13 firstObject];
        v17 = [v16 url];
        *buf = 138412546;
        v26 = v15;
        v27 = 2112;
        v28 = v17;
      }
    }

    a4 = [v13 firstObject];
  }

  else if (a4)
  {
    v18 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v19 = MEMORY[0x1E696AEC0];
    v20 = [(LNConnection *)self bundleIdentifier];
    v21 = objc_claimAutoreleasedReturnValue();
    v30[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *a4 = [v18 errorWithDomain:@"LNConnectionErrorDomain" code:1100 userInfo:v22];

    a4 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return a4;
}

- (void)connectUsingMediatorWithOptions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(LNConnection *)self logPrefix];
    LODWORD(buf.opaque[0]) = 138543362;
    *(buf.opaque + 4) = v6;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ Establishing a mediator connection to the extension", &buf, 0xCu);
  }

  v7 = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.extension" options:0];
  v9 = LNDaemonExtensionXPCInterface();
  [v8 setRemoteObjectInterface:v9];

  v10 = [(LNConnection *)self activity];
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(v10, &buf);
  v11 = [(LNConnection *)self queue];
  [v8 _setQueue:v11];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__LNExtensionConnection_connectUsingMediatorWithOptions___block_invoke;
  v20[3] = &unk_1E74B2318;
  v20[4] = v10;
  [v8 setInterruptionHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__LNExtensionConnection_connectUsingMediatorWithOptions___block_invoke_16;
  v19[3] = &unk_1E74B2318;
  v19[4] = v10;
  [v8 setInvalidationHandler:v19];
  [v8 resume];
  v12 = [v8 remoteObjectProxy];
  v13 = [(LNConnection *)self bundleIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__LNExtensionConnection_connectUsingMediatorWithOptions___block_invoke_17;
  v16[3] = &unk_1E74B1EF0;
  v14 = v8;
  v17 = v14;
  v18 = self;
  [v12 getConnectionHostInterfaceForBundleIdentifier:v13 completionHandler:v16];

  os_activity_scope_leave(&buf);
  v15 = *MEMORY[0x1E69E9840];
}

void __57__LNExtensionConnection_connectUsingMediatorWithOptions___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v1 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_19763D000, v1, OS_LOG_TYPE_INFO, "Extension Mediator XPC connection has been interrupted", v2, 2u);
  }

  os_activity_scope_leave(&state);
}

void __57__LNExtensionConnection_connectUsingMediatorWithOptions___block_invoke_16(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v1 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_19763D000, v1, OS_LOG_TYPE_INFO, "Extension Mediator XPC connection has been invalidated", v2, 2u);
  }

  os_activity_scope_leave(&state);
}

void __57__LNExtensionConnection_connectUsingMediatorWithOptions___block_invoke_17(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__LNExtensionConnection_connectUsingMediatorWithOptions___block_invoke_2;
  aBlock[3] = &unk_1E74B2318;
  v14 = *(a1 + 32);
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 40);
  if (v9)
  {
    [v11 setDisconnectedWithError:v9];
  }

  else
  {
    if (v8)
    {
      [v8 if_auditToken];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    [v11 connectUsingListenerEndpoint:v7 auditToken:v12];
  }

  v10[2](v10);
}

- (void)connectDirectlyWithOptions:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = [(LNConnection *)self logPrefix];
    *buf = 138543362;
    *&buf[4] = v5;
  }

  v6 = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_alloc(MEMORY[0x1E69635D0]);
  v8 = [(LNConnection *)self bundleIdentifier];
  v32 = 0;
  v9 = [v7 initWithBundleIdentifier:v8 error:&v32];
  v10 = v32;

  if (v9)
  {
    v30 = v10;
    v31 = 0;
    v11 = [LNExtensionHostConfigurator extensionProcessWithExtensionRecord:v9 extensionType:&v31 error:&v30];
    v12 = v30;

    [(LNExtensionConnection *)self setExtensionProcess:v11];
    v13 = [(LNExtensionConnection *)self extensionProcess];

    if (v13)
    {
      v14 = [(LNExtensionConnection *)self extensionProcess];
      v15 = v14;
      if (v14)
      {
        [v14 auditToken];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      *buf = v28;
      *&buf[16] = v29;
      [(LNConnection *)self setAuditToken:buf];

      v18 = [(LNExtensionConnection *)self extensionProcess];
      v27 = v12;
      v19 = [v18 makeXPCConnectionWithError:&v27];
      v20 = v27;

      [(LNConnection *)self setXPCConnection:v19];
      v21 = [(LNConnection *)self xpcConnection];

      if (v21)
      {
        v22 = [(LNConnection *)self xpcConnection];
        v23 = [(LNConnection *)self bundleIdentifier];
        v24 = LNConnectionHostXPCInterface();
        [v22 ln_configureWithBundleIdentifier:v23 interface:v24];

        v25 = [(LNConnection *)self xpcConnection];
        [v25 resume];

        [(LNConnection *)self setConnected];
      }

      else
      {
        [(LNConnection *)self setDisconnectedWithError:v20];
      }

      v12 = v20;
    }

    else
    {
      v16 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [(LNConnection *)self logPrefix];
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        _os_log_impl(&dword_19763D000, v16, OS_LOG_TYPE_ERROR, "%{public}@ No extension process: %{public}@", buf, 0x16u);
      }

      [(LNConnection *)self setDisconnectedWithError:v12];
    }

    v10 = v12;
  }

  else
  {
    [(LNConnection *)self setDisconnectedWithError:v10];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(LNExtensionConnection *)self invalidateExtensionProcess];
  v3.receiver = self;
  v3.super_class = LNExtensionConnection;
  [(LNConnection *)&v3 dealloc];
}

- (void)invalidateExtensionProcess
{
  v10 = *MEMORY[0x1E69E9840];
  extensionProcess = self->_extensionProcess;
  if (extensionProcess)
  {
    [(_EXExtensionProcess *)extensionProcess invalidate];
    v4 = self->_extensionProcess;
    self->_extensionProcess = 0;

    v5 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(LNConnection *)self logPrefix];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ Invalidated extension process on dealloc", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)refreshWithOptions:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNExtensionConnection;
  v4 = [(LNConnection *)&v6 refreshWithOptions:a3];
  if (v4)
  {
    [(LNConnection *)self setConnected];
  }

  return v4;
}

- (void)connectWithOptions:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = LNExtensionConnection;
  [(LNConnection *)&v6 connectWithOptions:v4];
  if (![(LNConnection *)self connectUsingProcessIdentifierWithOptions:v4])
  {
    getpid();
    v5 = *MEMORY[0x1E69E9BD0];
    if (sandbox_check())
    {
      [(LNExtensionConnection *)self connectDirectlyWithOptions:v4, "com.apple.linkd.extension"];
    }

    else
    {
      [(LNExtensionConnection *)self connectUsingMediatorWithOptions:v4, "com.apple.linkd.extension"];
    }
  }
}

@end