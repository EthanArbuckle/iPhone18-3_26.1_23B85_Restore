@interface LACXPCConnectionDefaultAdapter
- (BOOL)hasEntitlement:(id)a3;
- (LACXPCConnectionDefaultAdapter)initWithConnection:(id)a3;
- (LACXPCConnectionDefaultAdapter)initWithListenerEndpoint:(id)a3;
- (LACXPCConnectionDefaultAdapter)initWithMachServiceName:(id)a3 options:(unint64_t)a4;
- (LACXPCConnectionDelegate)delegate;
- (void)activate;
- (void)configureWithConfiguration:(id)a3;
@end

@implementation LACXPCConnectionDefaultAdapter

- (LACXPCConnectionDefaultAdapter)initWithMachServiceName:(id)a3 options:(unint64_t)a4
{
  v6 = MEMORY[0x1E696B0B8];
  v7 = a3;
  v8 = [[v6 alloc] initWithMachServiceName:v7 options:a4];

  v9 = [(LACXPCConnectionDefaultAdapter *)self initWithConnection:v8];
  return v9;
}

- (LACXPCConnectionDefaultAdapter)initWithListenerEndpoint:(id)a3
{
  v4 = MEMORY[0x1E696B0B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithListenerEndpoint:v5];

  v7 = [(LACXPCConnectionDefaultAdapter *)self initWithConnection:v6];
  return v7;
}

- (LACXPCConnectionDefaultAdapter)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACXPCConnectionDefaultAdapter;
  v6 = [(LACXPCConnectionDefaultAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (void)activate
{
  [(NSXPCConnection *)self->_connection activate];
  v3 = [(LACXPCConnectionDefaultAdapter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(LACXPCConnectionDefaultAdapter *)self delegate];
    [v5 connectionDidActivate:self];
  }
}

- (void)configureWithConfiguration:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    v7 = [v5 exportedInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:v7];

    v8 = [v5 exportedObject];
    [(NSXPCConnection *)self->_connection setExportedObject:v8];

    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__LACXPCConnectionDefaultAdapter_configureWithConfiguration___block_invoke;
    v22[3] = &unk_1E7A95380;
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__LACXPCConnectionDefaultAdapter_configureWithConfiguration___block_invoke_2;
    v20[3] = &unk_1E7A95380;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v20];
    v9 = [v5 connectionUID];
    LOBYTE(v8) = v9 == 0;

    if ((v8 & 1) == 0)
    {
      v10 = [v5 connectionUID];
      v11 = [v10 intValue];

      v12 = LACLogXPC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        connection = self->_connection;
        *buf = 138412546;
        v26 = connection;
        v27 = 1024;
        v28 = v11;
        _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "%@ XPC target UID: %u (UI)", buf, 0x12u);
      }

      v14 = [(NSXPCConnection *)self->_connection _xpcConnection];
      xpc_connection_set_target_uid();
    }

    v15 = [v5 replyQueue];
    v16 = v15 == 0;

    if (!v16)
    {
      v17 = self->_connection;
      v18 = [v5 replyQueue];
      [(NSXPCConnection *)v17 _setQueue:v18];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = LACLogXPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(LACXPCConnectionDefaultAdapter *)self configureWithConfiguration:v4, v5];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __61__LACXPCConnectionDefaultAdapter_configureWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    v4 = [v7 delegate];
    v5 = v4;
    if (v3)
    {
      [v4 connectionDidInterrupt:v7];
    }

    else
    {
      v6 = objc_opt_respondsToSelector();

      WeakRetained = v7;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }

      v5 = [v7 delegate];
      [v5 connectionDidInvalidate:v7];
    }

    WeakRetained = v7;
  }

LABEL_7:
}

void __61__LACXPCConnectionDefaultAdapter_configureWithConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 delegate];
      [v4 connectionDidInvalidate:v5];

      WeakRetained = v5;
    }
  }
}

- (BOOL)hasEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (LACXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)configureWithConfiguration:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%@ configured with unsupported configuration object %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end