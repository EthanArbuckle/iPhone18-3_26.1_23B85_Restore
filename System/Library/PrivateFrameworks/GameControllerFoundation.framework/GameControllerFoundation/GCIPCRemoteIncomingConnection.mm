@interface GCIPCRemoteIncomingConnection
+ (id)sharedConnectionWorkloop;
- (GCIPCRemoteIncomingConnection)initWithConnection:(id)connection;
- (id)remoteProxy;
- (id)remoteProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteProxyWithErrorHandler:(id)handler;
@end

@implementation GCIPCRemoteIncomingConnection

+ (id)sharedConnectionWorkloop
{
  if (sharedConnectionWorkloop_onceToken != -1)
  {
    +[GCIPCRemoteIncomingConnection sharedConnectionWorkloop];
  }

  v3 = sharedConnectionWorkloop__workloop;

  return v3;
}

void __57__GCIPCRemoteIncomingConnection_sharedConnectionWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("CoreController.incoming-connection-workloop");
  v1 = sharedConnectionWorkloop__workloop;
  sharedConnectionWorkloop__workloop = inactive;

  v2 = sharedConnectionWorkloop__workloop;

  dispatch_activate(v2);
}

- (GCIPCRemoteIncomingConnection)initWithConnection:(id)connection
{
  v8.receiver = self;
  v8.super_class = GCIPCRemoteIncomingConnection;
  v3 = [(GCIPCRemoteConnection *)&v8 initWithConnection:connection];
  v4 = v3;
  if (v3)
  {
    connection = [(GCIPCRemoteConnection *)v3 connection];
    sharedConnectionWorkloop = [objc_opt_class() sharedConnectionWorkloop];
    [connection _setQueue:sharedConnectionWorkloop];
  }

  return v4;
}

- (id)remoteProxy
{
  connection = [(GCIPCRemoteConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)remoteProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(GCIPCRemoteConnection *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(GCIPCRemoteConnection *)self connection];
  v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

@end