@interface DIBaseServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DIBaseServiceDelegate)init;
- (void)createListener;
- (void)startXPClistener;
@end

@implementation DIBaseServiceDelegate

- (DIBaseServiceDelegate)init
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = DIBaseServiceDelegate;
  v2 = [(DIBaseServiceDelegate *)&v12 init];
  if (v2 && (v3 = dispatch_queue_create(0, MEMORY[0x277D85CD8]), dispatchQueue = v2->_dispatchQueue, v2->_dispatchQueue = v3, dispatchQueue, !v2->_dispatchQueue))
  {
    v6 = *__error();
    if (DIForwardLogs())
    {
      v7 = getDIOSLog();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v14 = 29;
      v15 = 2080;
      v16 = "[DIBaseServiceDelegate init]";
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
        v14 = 29;
        v15 = 2080;
        v16 = "[DIBaseServiceDelegate init]";
        _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_ERROR, "%.*s: Failed creating queue", buf, 0x12u);
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = *__error();
  if (DIForwardLogs())
  {
    v7 = getDIOSLog();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68158722;
    v14 = 60;
    v15 = 2080;
    v16 = "[DIBaseServiceDelegate listener:shouldAcceptNewConnection:]";
    v17 = 1024;
    processIdentifier = [connectionCopy processIdentifier];
    v19 = 1024;
    effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
    v21 = 1024;
    v22 = geteuid();
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
      *buf = 68158722;
      v14 = 60;
      v15 = 2080;
      v16 = "[DIBaseServiceDelegate listener:shouldAcceptNewConnection:]";
      v17 = 1024;
      processIdentifier = [connectionCopy processIdentifier];
      v19 = 1024;
      effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
      v21 = 1024;
      v22 = geteuid();
      _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Received connection from pid %d with euid %d. Our euid is %d", buf, 0x24u);
    }
  }

  *__error() = v6;
  v10 = [(DIBaseServiceDelegate *)self setupNewConnection:connectionCopy];
  [connectionCopy resume];
  [(DIBaseServiceDelegate *)self validateConnection];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)createListener
{
  serviceListener = [MEMORY[0x277CCAE98] serviceListener];
  [(DIBaseServiceDelegate *)self setListener:serviceListener];
}

- (void)startXPClistener
{
  [(DIBaseServiceDelegate *)self createListener];
  listener = [(DIBaseServiceDelegate *)self listener];
  [listener setDelegate:self];

  listener2 = [(DIBaseServiceDelegate *)self listener];
  [listener2 resume];
}

@end