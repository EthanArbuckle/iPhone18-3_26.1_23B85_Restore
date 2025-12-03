@interface PSYConnection
- (PSYConnection)init;
- (PSYConnectionDelegate)delegate;
- (id)remoteConnection;
- (void)startSyncWithOptions:(id)options;
@end

@implementation PSYConnection

- (PSYConnection)init
{
  v8.receiver = self;
  v8.super_class = PSYConnection;
  v2 = [(PSYConnection *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.pairedsyncd.connection" options:4096];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = PSYConnectionXPCInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)startSyncWithOptions:(id)options
{
  v12 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(PSYOptions);
  }

  v5 = psy_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psy_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = optionsCopy;
      _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "Starting sync with options: %{public}@", &v10, 0xCu);
    }
  }

  [(PSYConnection *)self setOptions:optionsCopy];
  remoteConnection = [(PSYConnection *)self remoteConnection];
  [remoteConnection startSyncWithOptions:optionsCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)remoteConnection
{
  connection = [(PSYConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (PSYConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end