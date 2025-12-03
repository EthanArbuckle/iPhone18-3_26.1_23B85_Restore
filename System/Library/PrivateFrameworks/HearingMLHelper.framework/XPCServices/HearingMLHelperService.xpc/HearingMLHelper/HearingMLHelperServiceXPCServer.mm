@interface HearingMLHelperServiceXPCServer
- (BOOL)_connectionIsCorrenctlyEntitled:(id)entitled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (HearingMLHelperServiceXPCServer)init;
- (HearingMLHelperServiceXPCServerDelegate)delegate;
- (void)_destroyXPCConnection:(id)connection;
- (void)run;
- (void)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath resultHandler:(id)handler;
@end

@implementation HearingMLHelperServiceXPCServer

- (HearingMLHelperServiceXPCServer)init
{
  v5.receiver = self;
  v5.super_class = HearingMLHelperServiceXPCServer;
  v2 = [(HearingMLHelperServiceXPCServer *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(HearingMLHelperServiceXPCServer *)v2 setConnections:v3];
  }

  return v2;
}

- (void)run
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100001D34(self, v3);
  }

  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:self];
  [v4 resume];
}

- (void)_destroyXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will destroy connection to client: %@", &v7, 0xCu);
  }

  [connectionCopy invalidate];
  connections = [(HearingMLHelperServiceXPCServer *)self connections];
  [connections removeObject:connectionCopy];
}

- (void)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath resultHandler:(id)handler
{
  dCopy = d;
  pathCopy = path;
  weightsPathCopy = weightsPath;
  handlerCopy = handler;
  v14 = AXLogUltronKShot();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "XPC Server - trainWithDetectorID: %@ received training request", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001090;
  block[3] = &unk_1000041F0;
  v20 = dCopy;
  selfCopy = self;
  v22 = pathCopy;
  v23 = weightsPathCopy;
  v24 = handlerCopy;
  v15 = handlerCopy;
  v16 = weightsPathCopy;
  v17 = pathCopy;
  v18 = dCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [(HearingMLHelperServiceXPCServer *)self _connectionIsCorrenctlyEntitled:connectionCopy];
  v9 = AXLogUltronKShot();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100001E74(connectionCopy, v10);
    }

    v11 = HearingMLHelperServiceInterface();
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:self];
    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HearingMLHelperClientInterface];
    [connectionCopy setRemoteObjectInterface:v12];

    objc_initWeak(&location, connectionCopy);
    [connectionCopy setInterruptionHandler:&stru_100004230];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000014A4;
    v18[3] = &unk_100004258;
    v18[4] = self;
    objc_copyWeak(&v19, &location);
    [connectionCopy setInvalidationHandler:v18];
    [connectionCopy resume];
    connections = [(HearingMLHelperServiceXPCServer *)self connections];
    [connections addObject:connectionCopy];

    v14 = AXLogUltronKShot();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy auditSessionIdentifier]);
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy processIdentifier]);
      *buf = 138412802;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepting connection from client. AuditID:%@. PID:%@. connection: %@", buf, 0x20u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100001DAC(connectionCopy, v10);
    }
  }

  return v8;
}

- (BOOL)_connectionIsCorrenctlyEntitled:(id)entitled
{
  entitledCopy = entitled;
  v4 = entitledCopy;
  memset(&cf[1], 0, sizeof(audit_token_t));
  if (entitledCopy)
  {
    [entitledCopy auditToken];
  }

  cf[0] = cf[1];
  v5 = SecTaskCreateWithAuditToken(0, cf);
  if (v5)
  {
    v6 = v5;
    *cf[0].val = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.accessibility.HearingMLHelperService-access", cf);
    if (*cf[0].val)
    {
      v8 = AXLogUltronKShot();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100001F30(cf, v8);
      }

      CFRelease(*cf[0].val);
    }

    if (v7)
    {
      v9 = CFGetTypeID(v7);
      v10 = v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
      CFRelease(v7);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HearingMLHelperServiceXPCServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end