@interface CDAnonymousXPCService
- (BOOL)createHeartbeatConnection;
- (CDAnonymousXPCService)initWithInfo:(id)info endpoint:(id)endpoint;
- (void)_servicePing:(id)ping;
- (void)obtainXPCConnection:(id)connection;
@end

@implementation CDAnonymousXPCService

- (BOOL)createHeartbeatConnection
{
  heartbeatConnection = [(CDAnonymousXPCService *)self heartbeatConnection];
  if (heartbeatConnection)
  {

LABEL_8:
    heartbeatConnection2 = [(CDAnonymousXPCService *)self heartbeatConnection];
    v21 = heartbeatConnection2 != 0;
    goto LABEL_9;
  }

  if ([(CDAnonymousXPCService *)self haveCreatedHeartbeat])
  {
    goto LABEL_8;
  }

  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CDService *)self ID];
    *buf = 138412290;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Establishing heartbeat to service %@", buf, 0xCu);
  }

  [(CDAnonymousXPCService *)self setHaveCreatedHeartbeat:1];
  v6 = [NSXPCConnection alloc];
  endpoint = [(CDAnonymousXPCService *)self endpoint];
  v8 = [v6 initWithListenerEndpoint:endpoint];
  [(CDAnonymousXPCService *)self setHeartbeatConnection:v8];

  heartbeatConnection3 = [(CDAnonymousXPCService *)self heartbeatConnection];
  LODWORD(endpoint) = heartbeatConnection3 == 0;

  if (!endpoint)
  {
    objc_initWeak(buf, self);
    v10 = [(CDService *)self ID];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __50__CDAnonymousXPCService_createHeartbeatConnection__block_invoke;
    v30[3] = &unk_1000620C0;
    objc_copyWeak(&v32, buf);
    v11 = v10;
    v31 = v11;
    v12 = objc_retainBlock(v30);
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = __50__CDAnonymousXPCService_createHeartbeatConnection__block_invoke_7;
    v27 = &unk_1000620C0;
    objc_copyWeak(&v29, buf);
    v13 = v11;
    v28 = v13;
    v14 = objc_retainBlock(&v24);
    v15 = [(CDAnonymousXPCService *)self heartbeatConnection:v24];
    [v15 setInvalidationHandler:v12];

    heartbeatConnection4 = [(CDAnonymousXPCService *)self heartbeatConnection];
    [heartbeatConnection4 setInterruptionHandler:v14];

    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CacheDeleteServiceProtocol];
    heartbeatConnection5 = [(CDAnonymousXPCService *)self heartbeatConnection];
    [heartbeatConnection5 setRemoteObjectInterface:v17];

    heartbeatConnection6 = [(CDAnonymousXPCService *)self heartbeatConnection];
    [heartbeatConnection6 resume];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v32);

    objc_destroyWeak(buf);
    goto LABEL_8;
  }

  heartbeatConnection2 = CDGetLogHandle();
  if (os_log_type_enabled(heartbeatConnection2, OS_LOG_TYPE_ERROR))
  {
    v23 = [(CDService *)self ID];
    *buf = 138412290;
    v34 = v23;
    _os_log_error_impl(&_mh_execute_header, heartbeatConnection2, OS_LOG_TYPE_ERROR, "Failed to create a heartbeat connection for service %@", buf, 0xCu);
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (CDAnonymousXPCService)initWithInfo:(id)info endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v11.receiver = self;
  v11.super_class = CDAnonymousXPCService;
  v8 = [(CDXPCService *)&v11 initWithInfo:info];
  v9 = v8;
  if (v8)
  {
    if (endpointCopy)
    {
      objc_storeStrong(&v8->_endpoint, endpoint);
    }

    else
    {
      [NSException raise:@"EndpointRequiredError" format:@"CDAnonymousService Required Endpoint!"];
    }
  }

  return v9;
}

- (void)_servicePing:(id)ping
{
  pingCopy = ping;
  if ([(CDAnonymousXPCService *)self createHeartbeatConnection])
  {
    v5 = [(CDService *)self ID];
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pinging heartbeat connection for service %@", buf, 0xCu);
    }

    heartbeatConnection = [(CDAnonymousXPCService *)self heartbeatConnection];
    remoteObjectProxy = [heartbeatConnection remoteObjectProxy];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __38__CDAnonymousXPCService__servicePing___block_invoke;
    v10[3] = &unk_1000612A8;
    v11 = v5;
    v12 = pingCopy;
    v9 = v5;
    [remoteObjectProxy servicePing:v10];
  }
}

uint64_t __38__CDAnonymousXPCService__servicePing___block_invoke(uint64_t a1)
{
  v2 = CDGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Heartbeat established for service %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __50__CDAnonymousXPCService_createHeartbeatConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CDGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Heartbeat lost for service %@", &v7, 0xCu);
  }

  [WeakRetained setHeartbeatConnection:0];
  v5 = [WeakRetained serviceInvalidationHandler];

  if (v5)
  {
    v6 = [WeakRetained serviceInvalidationHandler];
    v6[2]();
  }
}

void __50__CDAnonymousXPCService_createHeartbeatConnection__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _inFlight];
  v4 = CDGetLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection interrupted for service %@, outstanding messages should be resent!", &v12, 0xCu);
    }

    v7 = [WeakRetained serviceInterruptionHandler];

    if (v7)
    {
      v8 = [WeakRetained serviceInterruptionHandler];
LABEL_10:
      v11 = v8;
      (*(v8 + 16))();
    }
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection interrupted for service %@ with no outstanding messages, tearing down", &v12, 0xCu);
    }

    [WeakRetained setHeartbeatConnection:0];
    v10 = [WeakRetained serviceInvalidationHandler];

    if (v10)
    {
      v8 = [WeakRetained serviceInvalidationHandler];
      goto LABEL_10;
    }
  }
}

- (void)obtainXPCConnection:(id)connection
{
  connectionCopy = connection;
  xpcConnection = [(CDXPCService *)self xpcConnection];

  if (!xpcConnection)
  {
    heartbeatConnection = [(CDAnonymousXPCService *)self heartbeatConnection];

    if (heartbeatConnection)
    {
      endpoint = [(CDAnonymousXPCService *)self endpoint];

      if (!endpoint)
      {
        v6 = [(CDService *)self ID];
        [NSException raise:@"com.apple.cache_delete.CDAnonymousXPCService.no_endpoint" format:@"Asked to build a connection to %@ but we have no endpoint!", v6];
        goto LABEL_3;
      }

      v9 = [NSXPCConnection alloc];
      endpoint2 = [(CDAnonymousXPCService *)self endpoint];
      v11 = [v9 initWithListenerEndpoint:endpoint2];

      if (v11)
      {
        [(CDXPCService *)self setXpcConnection:v11];
        xpcConnection2 = [(CDXPCService *)self xpcConnection];
        connectionCopy[2](connectionCopy, xpcConnection2, 0);
      }

      else
      {
        v14 = *__error();
        v15 = CDGetLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v20 = [(CDService *)self ID];
          *buf = 138412546;
          v24 = v20;
          v25 = 2080;
          v26 = strerror(v14);
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to create an XPC Connection to anonymous endpoint %@: %s", buf, 0x16u);
        }

        xpcConnection2 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v14 userInfo:0];
        v16 = [NSError alloc];
        v21 = NSUnderlyingErrorKey;
        v22 = xpcConnection2;
        v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v18 = [v16 initWithDomain:@"CacheDeleteErrorDomain" code:6 userInfo:v17];

        (connectionCopy)[2](connectionCopy, 0, v18);
      }
    }

    else
    {
      v13 = CDGetLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = [(CDService *)self ID];
        *buf = 138412290;
        v24 = v19;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Heartbeat connection is dead for %@, unable to obtain XPC connection", buf, 0xCu);
      }

      v11 = [[NSError alloc] initWithDomain:@"CacheDeleteErrorDomain" code:6 userInfo:0];
      (connectionCopy)[2](connectionCopy, 0, v11);
    }

    goto LABEL_17;
  }

  v6 = [(CDService *)self ID];
  [NSException raise:@"com.apple.cache_delete.CDAnonymousXPCService.duplicate_connection" format:@"Asked to build a connection to %@ but we already have a perfectly good one!", v6];
LABEL_3:

LABEL_17:
}

@end