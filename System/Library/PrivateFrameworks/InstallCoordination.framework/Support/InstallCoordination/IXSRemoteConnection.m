@interface IXSRemoteConnection
- (IXSRemoteConnection)initWithRemoteConnection:(id)a3;
- (void)activate;
- (void)cancel;
- (void)sendBarrier:(id)a3;
- (void)sendMessage:(id)a3;
- (void)setEventHandler:(id)a3;
@end

@implementation IXSRemoteConnection

- (IXSRemoteConnection)initWithRemoteConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IXSRemoteConnection;
  v5 = [(IXSRemoteConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IXSRemoteConnection *)v5 setRemoteConnection:v4];
  }

  return v6;
}

- (void)setEventHandler:(id)a3
{
  v6 = a3;
  v4 = [(IXSRemoteConnection *)self remoteConnection];

  if (v6 && v4)
  {
    v5 = [(IXSRemoteConnection *)self remoteConnection];
    xpc_remote_connection_set_event_handler();
  }
}

- (void)cancel
{
  v3 = [(IXSRemoteConnection *)self remoteConnection];

  if (v3)
  {
    v4 = [(IXSRemoteConnection *)self remoteConnection];
    xpc_remote_connection_cancel();

    [(IXSRemoteConnection *)self setRemoteConnection:0];
  }
}

- (void)sendMessage:(id)a3
{
  v6 = a3;
  v4 = [(IXSRemoteConnection *)self remoteConnection];

  if (v4)
  {
    v5 = [(IXSRemoteConnection *)self remoteConnection];
    xpc_remote_connection_send_message();
  }
}

- (void)sendBarrier:(id)a3
{
  v4 = a3;
  v5 = [(IXSRemoteConnection *)self remoteConnection];

  if (v5)
  {
    v6 = [(IXSRemoteConnection *)self remoteConnection];
    v7 = v4;
    xpc_remote_connection_send_barrier();
  }
}

- (void)activate
{
  v3 = [(IXSRemoteConnection *)self remoteConnection];

  if (v3)
  {
    v4 = [(IXSRemoteConnection *)self remoteConnection];
    xpc_remote_connection_activate();
  }
}

@end