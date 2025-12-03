@interface UARPObserverUpdate
- (UARPObserverUpdate)initWithRemoteServiceEndpoint:(id)endpoint;
- (id)remoteObject;
- (id)xpcConnectionToRequestor;
- (void)dealloc;
@end

@implementation UARPObserverUpdate

- (UARPObserverUpdate)initWithRemoteServiceEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v12.receiver = self;
  v12.super_class = UARPObserverUpdate;
  v6 = [(UARPObserverUpdate *)&v12 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_remoteEndpoint, endpoint), [(UARPObserverUpdate *)v7 xpcConnectionToRequestor], v8 = objc_claimAutoreleasedReturnValue(), xpcConnection = v7->_xpcConnection, v7->_xpcConnection = v8, xpcConnection, !v7->_xpcConnection))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = UARPObserverUpdate;
  [(UARPObserverUpdate *)&v3 dealloc];
}

- (id)remoteObject
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v3 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&stru_100080FA0];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100047864();
    }

    v3 = 0;
  }

  return v3;
}

- (id)xpcConnectionToRequestor
{
  v2 = [[NSXPCConnection alloc] initWithListenerEndpoint:self->_remoteEndpoint];
  if (v2)
  {
    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUObserverXPCClient];
    [v2 setRemoteObjectInterface:v3];
    [v2 resume];
    v4 = v2;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100047980();
  }

  return v2;
}

@end