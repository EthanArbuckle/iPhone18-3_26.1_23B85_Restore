@interface CDAnonymousXPCService
- (BOOL)createHeartbeatConnection;
- (CDAnonymousXPCService)initWithInfo:(id)a3 endpoint:(id)a4;
- (void)_servicePing:(id)a3;
- (void)obtainXPCConnection:(id)a3;
@end

@implementation CDAnonymousXPCService

- (BOOL)createHeartbeatConnection
{
  v3 = [(CDAnonymousXPCService *)self heartbeatConnection];
  if (v3)
  {

LABEL_8:
    v20 = [(CDAnonymousXPCService *)self heartbeatConnection];
    v21 = v20 != 0;
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
  v7 = [(CDAnonymousXPCService *)self endpoint];
  v8 = [v6 initWithListenerEndpoint:v7];
  [(CDAnonymousXPCService *)self setHeartbeatConnection:v8];

  v9 = [(CDAnonymousXPCService *)self heartbeatConnection];
  LODWORD(v7) = v9 == 0;

  if (!v7)
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

    v16 = [(CDAnonymousXPCService *)self heartbeatConnection];
    [v16 setInterruptionHandler:v14];

    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CacheDeleteServiceProtocol];
    v18 = [(CDAnonymousXPCService *)self heartbeatConnection];
    [v18 setRemoteObjectInterface:v17];

    v19 = [(CDAnonymousXPCService *)self heartbeatConnection];
    [v19 resume];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v32);

    objc_destroyWeak(buf);
    goto LABEL_8;
  }

  v20 = CDGetLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v23 = [(CDService *)self ID];
    *buf = 138412290;
    v34 = v23;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to create a heartbeat connection for service %@", buf, 0xCu);
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (CDAnonymousXPCService)initWithInfo:(id)a3 endpoint:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CDAnonymousXPCService;
  v8 = [(CDXPCService *)&v11 initWithInfo:a3];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      objc_storeStrong(&v8->_endpoint, a4);
    }

    else
    {
      [NSException raise:@"EndpointRequiredError" format:@"CDAnonymousService Required Endpoint!"];
    }
  }

  return v9;
}

- (void)_servicePing:(id)a3
{
  v4 = a3;
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

    v7 = [(CDAnonymousXPCService *)self heartbeatConnection];
    v8 = [v7 remoteObjectProxy];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __38__CDAnonymousXPCService__servicePing___block_invoke;
    v10[3] = &unk_1000612A8;
    v11 = v5;
    v12 = v4;
    v9 = v5;
    [v8 servicePing:v10];
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

- (void)obtainXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [(CDXPCService *)self xpcConnection];

  if (!v5)
  {
    v7 = [(CDAnonymousXPCService *)self heartbeatConnection];

    if (v7)
    {
      v8 = [(CDAnonymousXPCService *)self endpoint];

      if (!v8)
      {
        v6 = [(CDService *)self ID];
        [NSException raise:@"com.apple.cache_delete.CDAnonymousXPCService.no_endpoint" format:@"Asked to build a connection to %@ but we have no endpoint!", v6];
        goto LABEL_3;
      }

      v9 = [NSXPCConnection alloc];
      v10 = [(CDAnonymousXPCService *)self endpoint];
      v11 = [v9 initWithListenerEndpoint:v10];

      if (v11)
      {
        [(CDXPCService *)self setXpcConnection:v11];
        v12 = [(CDXPCService *)self xpcConnection];
        v4[2](v4, v12, 0);
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

        v12 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v14 userInfo:0];
        v16 = [NSError alloc];
        v21 = NSUnderlyingErrorKey;
        v22 = v12;
        v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v18 = [v16 initWithDomain:@"CacheDeleteErrorDomain" code:6 userInfo:v17];

        (v4)[2](v4, 0, v18);
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
      (v4)[2](v4, 0, v11);
    }

    goto LABEL_17;
  }

  v6 = [(CDService *)self ID];
  [NSException raise:@"com.apple.cache_delete.CDAnonymousXPCService.duplicate_connection" format:@"Asked to build a connection to %@ but we already have a perfectly good one!", v6];
LABEL_3:

LABEL_17:
}

@end