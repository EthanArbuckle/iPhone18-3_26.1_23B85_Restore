@interface HearingMLHelperServiceXPCServer
- (BOOL)_connectionIsCorrenctlyEntitled:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (HearingMLHelperServiceXPCServer)init;
- (HearingMLHelperServiceXPCServerDelegate)delegate;
- (void)_destroyXPCConnection:(id)a3;
- (void)run;
- (void)trainWithDetectorID:(id)a3 hallucinatorPath:(id)a4 pretrainedWeightsPath:(id)a5 resultHandler:(id)a6;
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

- (void)_destroyXPCConnection:(id)a3
{
  v4 = a3;
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will destroy connection to client: %@", &v7, 0xCu);
  }

  [v4 invalidate];
  v6 = [(HearingMLHelperServiceXPCServer *)self connections];
  [v6 removeObject:v4];
}

- (void)trainWithDetectorID:(id)a3 hallucinatorPath:(id)a4 pretrainedWeightsPath:(id)a5 resultHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AXLogUltronKShot();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "XPC Server - trainWithDetectorID: %@ received training request", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001090;
  block[3] = &unk_1000041F0;
  v20 = v10;
  v21 = self;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HearingMLHelperServiceXPCServer *)self _connectionIsCorrenctlyEntitled:v7];
  v9 = AXLogUltronKShot();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100001E74(v7, v10);
    }

    v11 = HearingMLHelperServiceInterface();
    [v7 setExportedInterface:v11];

    [v7 setExportedObject:self];
    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HearingMLHelperClientInterface];
    [v7 setRemoteObjectInterface:v12];

    objc_initWeak(&location, v7);
    [v7 setInterruptionHandler:&stru_100004230];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000014A4;
    v18[3] = &unk_100004258;
    v18[4] = self;
    objc_copyWeak(&v19, &location);
    [v7 setInvalidationHandler:v18];
    [v7 resume];
    v13 = [(HearingMLHelperServiceXPCServer *)self connections];
    [v13 addObject:v7];

    v14 = AXLogUltronKShot();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 auditSessionIdentifier]);
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 processIdentifier]);
      *buf = 138412802;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepting connection from client. AuditID:%@. PID:%@. connection: %@", buf, 0x20u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100001DAC(v7, v10);
    }
  }

  return v8;
}

- (BOOL)_connectionIsCorrenctlyEntitled:(id)a3
{
  v3 = a3;
  v4 = v3;
  memset(&cf[1], 0, sizeof(audit_token_t));
  if (v3)
  {
    [v3 auditToken];
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