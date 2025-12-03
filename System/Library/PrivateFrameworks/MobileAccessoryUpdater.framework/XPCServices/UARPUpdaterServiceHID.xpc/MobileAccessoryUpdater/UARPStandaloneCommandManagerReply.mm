@interface UARPStandaloneCommandManagerReply
- (UARPStandaloneCommandManagerReply)initWithRemoteServiceEndpoint:(id)endpoint;
- (id)remoteObject;
- (id)xpcConnectionToRequestor;
- (void)dealloc;
@end

@implementation UARPStandaloneCommandManagerReply

- (UARPStandaloneCommandManagerReply)initWithRemoteServiceEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v12.receiver = self;
  v12.super_class = UARPStandaloneCommandManagerReply;
  v6 = [(UARPStandaloneCommandManagerReply *)&v12 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_remoteEndpoint, endpoint), [(UARPStandaloneCommandManagerReply *)v7 xpcConnectionToRequestor], v8 = objc_claimAutoreleasedReturnValue(), xpcConnection = v7->_xpcConnection, v7->_xpcConnection = v8, xpcConnection, !v7->_xpcConnection))
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
  v3.super_class = UARPStandaloneCommandManagerReply;
  [(UARPStandaloneCommandManagerReply *)&v3 dealloc];
}

- (id)remoteObject
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v3 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&stru_10002C910];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[UARPStandaloneCommandManagerReply remoteObject]";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: remoteObject: %@", &v5, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001E250();
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
    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPStandaloneCommandRequestor];
    [v2 setRemoteObjectInterface:v3];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
    remoteObjectInterface = [v2 remoteObjectInterface];
    [remoteObjectInterface setClasses:v7 forSelector:"dynamicAssetSolicitationComplete:modelNumber:" argumentIndex:0 ofReply:0];

    remoteObjectInterface2 = [v2 remoteObjectInterface];
    [remoteObjectInterface2 setClasses:v7 forSelector:"dynamicAssetSolicitationComplete:" argumentIndex:0 ofReply:0];

    [v2 resume];
    v10 = v2;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001E36C();
  }

  return v2;
}

@end