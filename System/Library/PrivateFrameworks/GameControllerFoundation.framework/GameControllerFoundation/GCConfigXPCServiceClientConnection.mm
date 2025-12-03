@interface GCConfigXPCServiceClientConnection
- (GCConfigXPCServiceClientConnection)initWithConnection:(id)connection;
- (GCConfigXPCServiceInterface)server;
- (void)setServer:(id)server;
@end

@implementation GCConfigXPCServiceClientConnection

- (GCConfigXPCServiceClientConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = GCConfigXPCServiceClientConnection;
  v5 = [(GCIPCRemoteIncomingConnection *)&v9 initWithConnection:connectionCopy];
  if (v5)
  {
    v6 = GCConfigXPCServiceInterface();
    [connectionCopy setExportedInterface:v6];

    v7 = GCConfigXPCServiceClientInterface();
    [connectionCopy setRemoteObjectInterface:v7];
  }

  return v5;
}

- (GCConfigXPCServiceInterface)server
{
  connection = [(GCIPCRemoteConnection *)self connection];
  exportedObject = [connection exportedObject];

  return exportedObject;
}

- (void)setServer:(id)server
{
  serverCopy = server;
  connection = [(GCIPCRemoteConnection *)self connection];
  [connection setExportedObject:serverCopy];
}

@end