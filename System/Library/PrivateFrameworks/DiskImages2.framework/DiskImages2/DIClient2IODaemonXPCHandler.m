@interface DIClient2IODaemonXPCHandler
- (BOOL)addToRefCountWithError:(id *)a3;
- (DIClient2IODaemonXPCHandler)initWithEndpoint:(id)a3;
- (void)createConnection;
@end

@implementation DIClient2IODaemonXPCHandler

- (DIClient2IODaemonXPCHandler)initWithEndpoint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DIClient2IODaemonXPCHandler;
  v6 = [(DIBaseXPCHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcListenerEndpoint, a3);
  }

  return v7;
}

- (void)createConnection
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *__error();
  if (DIForwardLogs())
  {
    v4 = getDIOSLog();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v16 = 47;
    v17 = 2080;
    v18 = "[DIClient2IODaemonXPCHandler createConnection]";
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
      *buf = 68157954;
      v16 = 47;
      v17 = 2080;
      v18 = "[DIClient2IODaemonXPCHandler createConnection]";
      _os_log_impl(&dword_248DE0000, v6, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection to IO daemon clients listener", buf, 0x12u);
    }
  }

  *__error() = v3;
  v7 = objc_alloc(MEMORY[0x277CCAE80]);
  v8 = [(DIClient2IODaemonXPCHandler *)self xpcListenerEndpoint];
  v9 = [v7 initWithListenerEndpoint:v8];
  [(DIBaseXPCHandler *)self setConnection:v9];

  v10 = [(DIClient2IODaemonXPCHandler *)self remoteObjectInterface];
  v11 = [(DIBaseXPCHandler *)self connection];
  [v11 setRemoteObjectInterface:v10];

  v12 = [(DIBaseXPCHandler *)self connection];
  [v12 setInvalidationHandler:&__block_literal_global_2];

  v13 = [(DIBaseXPCHandler *)self connection];
  [v13 setInterruptionHandler:&__block_literal_global_4];

  v14 = *MEMORY[0x277D85DE8];
}

int *__47__DIClient2IODaemonXPCHandler_createConnection__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  if (DIForwardLogs())
  {
    v1 = getDIOSLog();
    os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v7 = 60;
    v8 = 2080;
    v9 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
    v2 = _os_log_send_and_compose_impl();

    if (v2)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v2);
      free(v2);
    }
  }

  else
  {
    v3 = getDIOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v7 = 60;
      v8 = 2080;
      v9 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
      _os_log_impl(&dword_248DE0000, v3, OS_LOG_TYPE_DEFAULT, "%.*s: Reached an invalidation handler for the IO daemon connection", buf, 0x12u);
    }
  }

  result = __error();
  *result = v0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

int *__47__DIClient2IODaemonXPCHandler_createConnection__block_invoke_2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  if (DIForwardLogs())
  {
    v1 = getDIOSLog();
    os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v7 = 60;
    v8 = 2080;
    v9 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
    v2 = _os_log_send_and_compose_impl();

    if (v2)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v2);
      free(v2);
    }
  }

  else
  {
    v3 = getDIOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v7 = 60;
      v8 = 2080;
      v9 = "[DIClient2IODaemonXPCHandler createConnection]_block_invoke";
      _os_log_impl(&dword_248DE0000, v3, OS_LOG_TYPE_DEFAULT, "%.*s: Reached an interruption handler for the IO daemon connection", buf, 0x12u);
    }
  }

  result = __error();
  *result = v0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)addToRefCountWithError:(id *)a3
{
  objc_initWeak(&location, self);
  v5 = [(DIBaseXPCHandler *)self remoteProxy];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__DIClient2IODaemonXPCHandler_addToRefCountWithError___block_invoke;
  v10 = &unk_278F80AA0;
  objc_copyWeak(&v11, &location);
  [v5 addToRefCountWithReply:&v7];

  LOBYTE(a3) = [(DIBaseXPCHandler *)self completeCommandWithError:a3, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return a3;
}

void __54__DIClient2IODaemonXPCHandler_addToRefCountWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

@end