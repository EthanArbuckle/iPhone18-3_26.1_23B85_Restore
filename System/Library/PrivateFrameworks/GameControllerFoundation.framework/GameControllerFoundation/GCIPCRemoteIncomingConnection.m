@interface GCIPCRemoteIncomingConnection
+ (id)sharedConnectionWorkloop;
- (GCIPCRemoteIncomingConnection)initWithConnection:(id)a3;
- (id)remoteProxy;
- (id)remoteProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteProxyWithErrorHandler:(id)a3;
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

- (GCIPCRemoteIncomingConnection)initWithConnection:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCIPCRemoteIncomingConnection;
  v3 = [(GCIPCRemoteConnection *)&v8 initWithConnection:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(GCIPCRemoteConnection *)v3 connection];
    v6 = [objc_opt_class() sharedConnectionWorkloop];
    [v5 _setQueue:v6];
  }

  return v4;
}

- (id)remoteProxy
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)remoteProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(GCIPCRemoteConnection *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)synchronousRemoteProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(GCIPCRemoteConnection *)self connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

@end