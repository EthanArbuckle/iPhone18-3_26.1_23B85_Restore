@interface DIBaseXPCHandler
- (BOOL)completeCommandWithError:(id *)a3;
- (BOOL)connectWithError:(id *)a3;
- (BOOL)dupStderrWithError:(id *)a3;
- (DIBaseXPCHandler)init;
- (void)closeConnection;
- (void)createConnection;
- (void)dealloc;
- (void)signalCommandCompletedWithXpcError:(id)a3;
@end

@implementation DIBaseXPCHandler

- (DIBaseXPCHandler)init
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = DIBaseXPCHandler;
  v2 = [(DIBaseXPCHandler *)&v12 init];
  if (v2 && (v3 = dispatch_semaphore_create(0), [(DIBaseXPCHandler *)v2 setSemaphore:v3], v3, [(DIBaseXPCHandler *)v2 semaphore], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = *__error();
    if (DIForwardLogs())
    {
      v7 = getDIOSLog();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v14 = 24;
      v15 = 2080;
      v16 = "[DIBaseXPCHandler init]";
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v9 = getDIOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v14 = 24;
        v15 = 2080;
        v16 = "[DIBaseXPCHandler init]";
        _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_ERROR, "%.*s: Failed creating semaphore", buf, 0x12u);
      }
    }

    v5 = 0;
    *__error() = v6;
  }

  else
  {
    v5 = v2;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = DIBaseXPCHandler;
  [(DIBaseXPCHandler *)&v4 dealloc];
}

- (BOOL)connectWithError:(id *)a3
{
  objc_initWeak(&location, self);
  [(DIBaseXPCHandler *)self createConnection];
  v5 = [(DIBaseXPCHandler *)self connection];

  if (v5)
  {
    v6 = [(DIBaseXPCHandler *)self connection];
    [v6 resume];

    v7 = [(DIBaseXPCHandler *)self connection];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __37__DIBaseXPCHandler_connectWithError___block_invoke;
    v14 = &unk_278F80AA0;
    objc_copyWeak(&v15, &location);
    v8 = [v7 remoteObjectProxyWithErrorHandler:&v11];
    [(DIBaseXPCHandler *)self setRemoteProxy:v8, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    v9 = 1;
  }

  else
  {
    v9 = [DIError failWithEnumValue:151 verboseInfo:@"Failed to create XPC connection object" error:a3];
  }

  objc_destroyWeak(&location);
  return v9;
}

void __37__DIBaseXPCHandler_connectWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

- (void)signalCommandCompletedWithXpcError:(id)a3
{
  [(DIBaseXPCHandler *)self setXpcError:a3];
  v4 = [(DIBaseXPCHandler *)self semaphore];
  dispatch_semaphore_signal(v4);
}

- (BOOL)completeCommandWithError:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(DIBaseXPCHandler *)self semaphore];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = [(DIBaseXPCHandler *)self xpcError];
  [(DIBaseXPCHandler *)self setXpcError:0];
  v7 = [(DIBaseXPCHandler *)self connection];

  if (!v7)
  {
    v11 = [DIError failWithEnumValue:151 verboseInfo:@"XPC connection failed" error:a3];
LABEL_12:
    v12 = v11;
    goto LABEL_13;
  }

  if (v6)
  {
    v8 = *__error();
    if (DIForwardLogs())
    {
      v9 = getDIOSLog();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v17 = 45;
      v18 = 2080;
      v19 = "[DIBaseXPCHandler completeCommandWithError:]";
      v20 = 2114;
      v21 = v6;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v13 = getDIOSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v17 = 45;
        v18 = 2080;
        v19 = "[DIBaseXPCHandler completeCommandWithError:]";
        v20 = 2114;
        v21 = v6;
        _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Got error from last XPC command: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v8;
    v11 = [DIError failWithInError:v6 outError:a3];
    goto LABEL_12;
  }

  v12 = 1;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)closeConnection
{
  v3 = [(DIBaseXPCHandler *)self connection];
  [v3 invalidate];

  [(DIBaseXPCHandler *)self setConnection:0];
}

- (BOOL)dupStderrWithError:(id *)a3
{
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CCA9F8]);
  v6 = [v5 initWithFileDescriptor:fileno(*MEMORY[0x277D85DF8])];
  v7 = [(DIBaseXPCHandler *)self remoteProxy];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __39__DIBaseXPCHandler_dupStderrWithError___block_invoke;
  v12 = &unk_278F80AA0;
  objc_copyWeak(&v13, &location);
  [v7 dupWithStderrHandle:v6 reply:&v9];

  LOBYTE(a3) = [(DIBaseXPCHandler *)self completeCommandWithError:a3, v9, v10, v11, v12];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return a3;
}

void __39__DIBaseXPCHandler_dupStderrWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

- (void)createConnection
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *__error();
  if (DIForwardLogs())
  {
    v4 = getDIOSLog();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    [(DIBaseXPCHandler *)self serviceName];
    *buf = 68158210;
    v15 = 36;
    v16 = 2080;
    v17 = "[DIBaseXPCHandler createConnection]";
    v19 = v18 = 2114;
    v5 = _os_log_send_and_compose_impl();

    if (v5)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v5);
      free(v5);
    }
  }

  else
  {
    v6 = getDIOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(DIBaseXPCHandler *)self serviceName];
      *buf = 68158210;
      v15 = 36;
      v16 = 2080;
      v17 = "[DIBaseXPCHandler createConnection]";
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_248DE0000, v6, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection with %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v3;
  v8 = objc_alloc(MEMORY[0x277CCAE80]);
  v9 = [(DIBaseXPCHandler *)self serviceName];
  v10 = [v8 initWithServiceName:v9];
  [(DIBaseXPCHandler *)self setConnection:v10];

  v11 = [(DIBaseXPCHandler *)self remoteObjectInterface];
  v12 = [(DIBaseXPCHandler *)self connection];
  [v12 setRemoteObjectInterface:v11];

  v13 = *MEMORY[0x277D85DE8];
}

@end