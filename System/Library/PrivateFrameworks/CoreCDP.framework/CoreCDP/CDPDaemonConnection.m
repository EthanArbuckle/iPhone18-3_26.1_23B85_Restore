@interface CDPDaemonConnection
- (CDPDaemonConnection)init;
- (id)connection;
- (id)daemon;
- (id)daemonWithErrorHandler:(id)a3;
- (id)synchronousDaemonWithErrorHandler:(id)a3;
- (void)dealloc;
@end

@implementation CDPDaemonConnection

- (CDPDaemonConnection)init
{
  v6.receiver = self;
  v6.super_class = CDPDaemonConnection;
  v2 = [(CDPDaemonConnection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    connLock = v2->_connLock;
    v2->_connLock = v3;
  }

  return v2;
}

- (id)connection
{
  [(NSLock *)self->_connLock lock];
  conn = self->_conn;
  if (!conn)
  {
    daemonXPCEndpoint = self->_daemonXPCEndpoint;
    v5 = objc_alloc(MEMORY[0x1E696B0B8]);
    if (daemonXPCEndpoint)
    {
      v6 = [v5 initWithListenerEndpoint:self->_daemonXPCEndpoint];
    }

    else
    {
      v6 = [v5 initWithMachServiceName:@"com.apple.cdp.daemon" options:0];
    }

    v7 = self->_conn;
    self->_conn = v6;

    objc_initWeak(&location, self);
    v8 = self->_conn;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __33__CDPDaemonConnection_connection__block_invoke;
    v16[3] = &unk_1E869E3B8;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v8 setInvalidationHandler:v16];
    v9 = self->_conn;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __33__CDPDaemonConnection_connection__block_invoke_21;
    v14[3] = &unk_1E869E3B8;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v9 setInterruptionHandler:v14];
    v10 = self->_conn;
    v11 = CDPDaemonExportedInterface();
    [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

    [(NSXPCConnection *)self->_conn resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    conn = self->_conn;
  }

  v12 = conn;
  [(NSLock *)self->_connLock unlock];

  return v12;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_conn invalidate];
  v3.receiver = self;
  v3.super_class = CDPDaemonConnection;
  [(CDPDaemonConnection *)&v3 dealloc];
}

void __33__CDPDaemonConnection_connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__CDPDaemonConnection_connection__block_invoke_cold_1(v2);
  }

  if (WeakRetained)
  {
    [WeakRetained[2] lock];
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;

    [WeakRetained[2] unlock];
  }
}

void __33__CDPDaemonConnection_connection__block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __33__CDPDaemonConnection_connection__block_invoke_21_cold_1(v2);
  }

  if (WeakRetained)
  {
    [WeakRetained[2] lock];
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;

    [WeakRetained[2] unlock];
  }
}

- (id)daemon
{
  v3 = [(CDPDaemonConnection *)self connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__CDPDaemonConnection_daemon__block_invoke;
  v6[3] = &unk_1E869D4F0;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __29__CDPDaemonConnection_daemon__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __29__CDPDaemonConnection_daemon__block_invoke_cold_1(v3, v4);
  }

  [*(*(a1 + 32) + 8) invalidate];
}

- (id)daemonWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CDPDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__CDPDaemonConnection_daemonWithErrorHandler___block_invoke;
  v9[3] = &unk_1E869D440;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __46__CDPDaemonConnection_daemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(a1 + 32) + 8) invalidate];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (id)synchronousDaemonWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CDPDaemonConnection *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CDPDaemonConnection_synchronousDaemonWithErrorHandler___block_invoke;
  v9[3] = &unk_1E869D440;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __57__CDPDaemonConnection_synchronousDaemonWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(*(a1 + 32) + 8) invalidate];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __29__CDPDaemonConnection_daemon__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "XPC Error from daemon: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end