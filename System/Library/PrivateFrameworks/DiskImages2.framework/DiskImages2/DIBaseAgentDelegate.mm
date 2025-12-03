@interface DIBaseAgentDelegate
- (void)createListener;
@end

@implementation DIBaseAgentDelegate

- (void)createListener
{
  v18 = *MEMORY[0x277D85DE8];
  serviceName = [(DIBaseServiceDelegate *)self serviceName];
  v4 = [serviceName stringByAppendingString:@".xpc"];

  v5 = *__error();
  if (DIForwardLogs())
  {
    v6 = getDIOSLog();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    [(DIBaseServiceDelegate *)self serviceName];
    *buf = 68158210;
    v13 = 37;
    v14 = 2080;
    v15 = "[DIBaseAgentDelegate createListener]";
    v17 = v16 = 2114;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = getDIOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      serviceName2 = [(DIBaseServiceDelegate *)self serviceName];
      *buf = 68158210;
      v13 = 37;
      v14 = 2080;
      v15 = "[DIBaseAgentDelegate createListener]";
      v16 = 2114;
      v17 = serviceName2;
      _os_log_impl(&dword_248DE0000, v8, OS_LOG_TYPE_DEFAULT, "%.*s: Creating NSXPC listener on %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v4];
  [(DIBaseServiceDelegate *)self setListener:v10];

  v11 = *MEMORY[0x277D85DE8];
}

@end