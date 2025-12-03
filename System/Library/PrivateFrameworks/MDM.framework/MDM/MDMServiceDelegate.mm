@interface MDMServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MDMServiceDelegate)initWithServer:(id)server;
@end

@implementation MDMServiceDelegate

- (MDMServiceDelegate)initWithServer:(id)server
{
  serverCopy = server;
  v9.receiver = self;
  v9.super_class = MDMServiceDelegate;
  v6 = [(MDMServiceDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_server, server);
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  server = [(MDMServiceDelegate *)self server];
  channelType = [server channelType];

  if (channelType == 1)
  {
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28685EC28];
    MDMUserXPCProtocolInitialize();
  }

  else if (channelType)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28685EB08];
    MDMXPCProtocolInitialize();
  }

  [connectionCopy setExportedInterface:v8];
  v9 = [MDMServicerCore alloc];
  server2 = [(MDMServiceDelegate *)self server];
  v11 = [(MDMServicerCore *)v9 initWithXPCConnection:connectionCopy server:server2];
  [connectionCopy setExportedObject:v11];

  [connectionCopy resume];
  v12 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "Accepted new connection.", v14, 2u);
  }

  return 1;
}

@end