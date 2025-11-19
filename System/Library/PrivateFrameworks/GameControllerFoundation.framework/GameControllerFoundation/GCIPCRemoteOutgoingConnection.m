@interface GCIPCRemoteOutgoingConnection
+ (id)sharedConnectionWorkloop;
- (GCIPCRemoteOutgoingConnection)initWithConnection:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (id)remoteProxy;
- (id)remoteProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteProxyWithErrorHandler:(id)a3;
@end

@implementation GCIPCRemoteOutgoingConnection

- (id)remoteProxy
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
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

- (GCIPCRemoteOutgoingConnection)initWithConnection:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCIPCRemoteOutgoingConnection;
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(GCIPCRemoteConnection *)self connection];
  v6 = [v5 serviceName];
  v7 = [v3 stringWithFormat:@"<%@ service: '%@'>", v4, v6];

  return v7;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(GCIPCRemoteConnection *)self connection];
  v6 = [v5 serviceName];
  v7 = [v3 stringWithFormat:@"<%@ service: '%@'>", v4, v6];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(GCIPCRemoteConnection *)self connection];
  v6 = [v5 serviceName];
  v7 = [v3 stringWithFormat:@"<%@ %p service: '%@'>", v4, self, v6];

  return v7;
}

@end