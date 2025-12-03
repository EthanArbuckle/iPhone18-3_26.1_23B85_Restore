@interface CPLDaemonConnection
- (CPLDaemonConnection)init;
- (id)proxyWithErrorHandler:(id)handler;
- (void)close;
- (void)dealloc;
@end

@implementation CPLDaemonConnection

- (CPLDaemonConnection)init
{
  v10.receiver = self;
  v10.super_class = CPLDaemonConnection;
  v2 = [(CPLDaemonConnection *)&v10 init];
  if (v2)
  {
    v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.cloudphotod.daemon" options:0];
    v4 = CPLDaemonProcessInterface();
    [(NSXPCConnection *)v3 setRemoteObjectInterface:v4];

    v5 = dispatch_queue_create("com.apple.cpl.daemon.connection", 0);
    [(NSXPCConnection *)v3 _setQueue:v5];

    connection = v2->_connection;
    v2->_connection = v3;

    _queue = [(NSXPCConnection *)v2->_connection _queue];
    queue = v2->_queue;
    v2->_queue = _queue;

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CPLDaemonConnection;
  [(CPLDaemonConnection *)&v3 dealloc];
}

- (void)close
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (id)proxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  if (!connection)
  {
    sub_10001D104(a2, self);
  }

  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v7;
}

@end