@interface DIBaseAgentXPCHandler
- (void)createConnection;
@end

@implementation DIBaseAgentXPCHandler

- (void)createConnection
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(DIBaseXPCHandler *)self isPrivileged];
  v4 = [(DIBaseXPCHandler *)self serviceName];
  v5 = [v4 stringByAppendingString:@".xpc"];

  v6 = *__error();
  if (DIForwardLogs())
  {
    v7 = getDIOSLog();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v16 = 41;
    v17 = 2080;
    v18 = "[DIBaseAgentXPCHandler createConnection]";
    v19 = 2114;
    v20 = v5;
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
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v16 = 41;
      v17 = 2080;
      v18 = "[DIBaseAgentXPCHandler createConnection]";
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection to %{public}@", buf, 0x1Cu);
    }
  }

  if (v3)
  {
    v10 = 4096;
  }

  else
  {
    v10 = 0;
  }

  *__error() = v6;
  v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v5 options:v10];
  [(DIBaseXPCHandler *)self setConnection:v11];

  [(DIBaseAgentXPCHandler *)self setConnectionMode];
  v12 = [(DIBaseXPCHandler *)self remoteObjectInterface];
  v13 = [(DIBaseXPCHandler *)self connection];
  [v13 setRemoteObjectInterface:v12];

  v14 = *MEMORY[0x277D85DE8];
}

@end