@interface GCIPCRemoteOutgoingConnection
+ (id)sharedConnectionWorkloop;
- (GCIPCRemoteOutgoingConnection)initWithConnection:(id)connection;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (id)remoteProxy;
- (id)remoteProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteProxyWithErrorHandler:(id)handler;
@end

@implementation GCIPCRemoteOutgoingConnection

- (id)remoteProxy
{
  connection = [(GCIPCRemoteConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

+ (id)sharedConnectionWorkloop
{
  if (sharedConnectionWorkloop_onceToken_0 != -1)
  {
    +[GCIPCRemoteOutgoingConnection sharedConnectionWorkloop];
  }

  v3 = sharedConnectionWorkloop__workloop_0;

  return v3;
}

void __57__GCIPCRemoteOutgoingConnection_sharedConnectionWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("CoreController.server-connection-workloop");
  v1 = sharedConnectionWorkloop__workloop_0;
  sharedConnectionWorkloop__workloop_0 = inactive;

  v2 = sharedConnectionWorkloop__workloop_0;

  dispatch_activate(v2);
}

- (GCIPCRemoteOutgoingConnection)initWithConnection:(id)connection
{
  v8.receiver = self;
  v8.super_class = GCIPCRemoteOutgoingConnection;
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  connection = [(GCIPCRemoteConnection *)self connection];
  serviceName = [connection serviceName];
  v7 = [v3 stringWithFormat:@"<%@ service: '%@'>", v4, serviceName];

  return v7;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  connection = [(GCIPCRemoteConnection *)self connection];
  serviceName = [connection serviceName];
  v7 = [v3 stringWithFormat:@"<%@ service: '%@'>", v4, serviceName];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  connection = [(GCIPCRemoteConnection *)self connection];
  serviceName = [connection serviceName];
  v7 = [v3 stringWithFormat:@"<%@ %p service: '%@'>", v4, self, serviceName];

  return v7;
}

@end