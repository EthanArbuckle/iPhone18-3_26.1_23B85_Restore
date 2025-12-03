@interface IXSRemoteConnection
- (IXSRemoteConnection)initWithRemoteConnection:(id)connection;
- (void)activate;
- (void)cancel;
- (void)sendBarrier:(id)barrier;
- (void)sendMessage:(id)message;
- (void)setEventHandler:(id)handler;
@end

@implementation IXSRemoteConnection

- (IXSRemoteConnection)initWithRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = IXSRemoteConnection;
  v5 = [(IXSRemoteConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IXSRemoteConnection *)v5 setRemoteConnection:connectionCopy];
  }

  return v6;
}

- (void)setEventHandler:(id)handler
{
  handlerCopy = handler;
  remoteConnection = [(IXSRemoteConnection *)self remoteConnection];

  if (handlerCopy && remoteConnection)
  {
    remoteConnection2 = [(IXSRemoteConnection *)self remoteConnection];
    xpc_remote_connection_set_event_handler();
  }
}

- (void)cancel
{
  remoteConnection = [(IXSRemoteConnection *)self remoteConnection];

  if (remoteConnection)
  {
    remoteConnection2 = [(IXSRemoteConnection *)self remoteConnection];
    xpc_remote_connection_cancel();

    [(IXSRemoteConnection *)self setRemoteConnection:0];
  }
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  remoteConnection = [(IXSRemoteConnection *)self remoteConnection];

  if (remoteConnection)
  {
    remoteConnection2 = [(IXSRemoteConnection *)self remoteConnection];
    xpc_remote_connection_send_message();
  }
}

- (void)sendBarrier:(id)barrier
{
  barrierCopy = barrier;
  remoteConnection = [(IXSRemoteConnection *)self remoteConnection];

  if (remoteConnection)
  {
    remoteConnection2 = [(IXSRemoteConnection *)self remoteConnection];
    v7 = barrierCopy;
    xpc_remote_connection_send_barrier();
  }
}

- (void)activate
{
  remoteConnection = [(IXSRemoteConnection *)self remoteConnection];

  if (remoteConnection)
  {
    remoteConnection2 = [(IXSRemoteConnection *)self remoteConnection];
    xpc_remote_connection_activate();
  }
}

@end