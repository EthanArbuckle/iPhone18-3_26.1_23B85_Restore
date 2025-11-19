@interface NRDUpdateDaemonClientImpl
- (BOOL)resendOnError:(id)a3;
- (id)_remoteInterfaceWithErrorHandler:(id)a3;
- (void)_invalidateConnection;
- (void)acquireNRDUpdateBrain:(id)a3 reply:(id)a4;
- (void)connectToServerIfNecessary;
- (void)getNRDUpdateBrainEndpoint:(id)a3;
- (void)handleConnectionError:(id)a3 method:(const char *)a4 handler:(id)a5;
- (void)update:(id)a3;
- (void)update:(id)a3 reply:(id)a4;
@end

@implementation NRDUpdateDaemonClientImpl

- (id)_remoteInterfaceWithErrorHandler:(id)a3
{
  v4 = a3;
  [(NRDUpdateDaemonClientImpl *)self connectToServerIfNecessary];
  v5 = [(NSXPCConnection *)self->_serverConnection remoteObjectProxyWithErrorHandler:v4];

  return v5;
}

- (void)_invalidateConnection
{
  serverConnection = self->_serverConnection;
  if (serverConnection)
  {
    [(NSXPCConnection *)serverConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_serverConnection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_serverConnection invalidate];
    v4 = self->_serverConnection;
    self->_serverConnection = 0;

    self->_connected = 0;
  }
}

- (void)connectToServerIfNecessary
{
  if (!self->_connected)
  {
    [(NRDUpdateDaemonClientImpl *)self _invalidateConnection];
    v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.mobile.NRDUpdated" options:0];
    serverConnection = self->_serverConnection;
    self->_serverConnection = v3;

    v5 = dispatch_queue_create("com.apple.NRDUpdated.serverConnectionQueue", &_dispatch_queue_attr_concurrent);
    [(NSXPCConnection *)self->_serverConnection _setQueue:v5];

    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDUpdatedProtocol];
    [(NSXPCConnection *)self->_serverConnection setRemoteObjectInterface:v6];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__6;
    v11[4] = __Block_byref_object_dispose__6;
    v12 = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __55__NRDUpdateDaemonClientImpl_connectToServerIfNecessary__block_invoke;
    v10[3] = &unk_100049F38;
    v10[4] = v11;
    v7 = objc_retainBlock(v10);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __55__NRDUpdateDaemonClientImpl_connectToServerIfNecessary__block_invoke_7;
    v9[3] = &unk_100049F38;
    v9[4] = v11;
    v8 = objc_retainBlock(v9);
    [(NSXPCConnection *)self->_serverConnection setInvalidationHandler:v7];
    [(NSXPCConnection *)self->_serverConnection setInterruptionHandler:v8];
    [(NSXPCConnection *)self->_serverConnection resume];
    self->_connected = 1;

    _Block_object_dispose(v11, 8);
  }
}

id __55__NRDUpdateDaemonClientImpl_connectToServerIfNecessary__block_invoke(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__NRDUpdateDaemonClientImpl_connectToServerIfNecessary__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return [*(*(*(a1 + 32) + 8) + 40) noteConnectionDropped];
}

id __55__NRDUpdateDaemonClientImpl_connectToServerIfNecessary__block_invoke_7(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__NRDUpdateDaemonClientImpl_connectToServerIfNecessary__block_invoke_7_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return [*(*(*(a1 + 32) + 8) + 40) noteConnectionDropped];
}

- (void)handleConnectionError:(id)a3 method:(const char *)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = nrdSharedLogger();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (a4)
    {
      if (v11)
      {
        [NRDUpdateDaemonClientImpl handleConnectionError:a4 method:v8 handler:v10];
      }
    }

    else if (v11)
    {
      [(NRDUpdateDaemonClientImpl *)v8 handleConnectionError:v10 method:v12 handler:v13, v14, v15, v16, v17];
    }

    v18 = [v8 domain];
    if ([v18 isEqualToString:NSCocoaErrorDomain])
    {
      if ([v8 code] == 4097)
      {

LABEL_12:
        [(NRDUpdateDaemonClientImpl *)self _invalidateConnection];
        goto LABEL_13;
      }

      v19 = [v8 code];

      if (v19 == 4099)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_13:
    v9[2](v9);
  }
}

- (void)getNRDUpdateBrainEndpoint:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __55__NRDUpdateDaemonClientImpl_getNRDUpdateBrainEndpoint___block_invoke;
  v6[3] = &unk_100049F88;
  v7 = a3;
  v8 = "[NRDUpdateDaemonClientImpl getNRDUpdateBrainEndpoint:]";
  v6[4] = self;
  v4 = v7;
  v5 = [(NRDUpdateDaemonClientImpl *)self _remoteInterfaceWithErrorHandler:v6];
  [v5 getNRDUpdateBrainEndpoint:v4];
}

void __55__NRDUpdateDaemonClientImpl_getNRDUpdateBrainEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __55__NRDUpdateDaemonClientImpl_getNRDUpdateBrainEndpoint___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

- (void)acquireNRDUpdateBrain:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __57__NRDUpdateDaemonClientImpl_acquireNRDUpdateBrain_reply___block_invoke;
  v15[3] = &unk_100049FD8;
  v15[4] = self;
  v8 = v6;
  v16 = v8;
  v17 = v7;
  v9 = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __57__NRDUpdateDaemonClientImpl_acquireNRDUpdateBrain_reply___block_invoke_2;
  v12[3] = &unk_10004A028;
  v13 = v8;
  v14 = objc_retainBlock(v15);
  v12[4] = self;
  v10 = v8;
  v11 = v14;
  [(NRDUpdateDaemonClientImpl *)self update:v10 reply:v12];
}

void __57__NRDUpdateDaemonClientImpl_acquireNRDUpdateBrain_reply___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (([a1[4] resendOnError:v3] & 1) == 0)
  {
    v4 = [a1[5] objectForKeyedSubscript:@"__nrd_brain-location_key"];

    if (!v3 || !v4)
    {
      v12 = a1[4];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = __57__NRDUpdateDaemonClientImpl_acquireNRDUpdateBrain_reply___block_invoke_12;
      v13[3] = &unk_100049FB0;
      v14 = v3;
      v15 = a1[6];
      [v12 getNRDUpdateBrainEndpoint:v13];

      goto LABEL_9;
    }

    v5 = nrdSharedLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__NRDUpdateDaemonClientImpl_acquireNRDUpdateBrain_reply___block_invoke_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  (*(a1[6] + 2))();
LABEL_9:
}

void __57__NRDUpdateDaemonClientImpl_acquireNRDUpdateBrain_reply___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (*(a1 + 32) && ([v5 userInfo], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", NSUnderlyingErrorKey), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
    {
      v11 = [v6 userInfo];

      if (v11)
      {
        v12 = [v6 userInfo];
        v13 = [v12 mutableCopy];
      }

      else
      {
        v13 = +[NSMutableDictionary dictionary];
      }

      [v13 setObject:*(a1 + 32) forKeyedSubscript:NSUnderlyingErrorKey];
      v14 = [v6 domain];
      v10 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v14, [v6 code], v13);

      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = v6;
    }
  }

  else
  {
    v9 = [[NRDUpdateBrainClientImpl alloc] initWithEndpoint:v15];
    v10 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __57__NRDUpdateDaemonClientImpl_acquireNRDUpdateBrain_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) resendOnError:v3])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = +[NSDate date];
    do
    {
      v6 = +[NSDate date];
      v7 = [v6 dateByAddingTimeInterval:2.0];
      v8 = +[NSRunLoop currentRunLoop];
      [v8 runUntilDate:v7];

      v9 = +[NSDate date];
      [v9 timeIntervalSinceDate:v6];
      v11 = v10;

      if (v11 < 2.0)
      {
        __rqtp.tv_sec = (2.0 - v11);
        __rqtp.tv_nsec = ((2.0 - v11 - __rqtp.tv_sec) * 1000000000.0);
        nanosleep(&__rqtp, 0);
      }

      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:v5];
      v14 = v13;
    }

    while (v14 < 2.0);

    objc_autoreleasePoolPop(v4);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __57__NRDUpdateDaemonClientImpl_acquireNRDUpdateBrain_reply___block_invoke_3;
    v17[3] = &unk_10004A000;
    v18 = *(a1 + 48);
    [v15 update:v16 reply:v17];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)update:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __36__NRDUpdateDaemonClientImpl_update___block_invoke;
  v6[3] = &unk_100049F88;
  v7 = a3;
  v8 = "[NRDUpdateDaemonClientImpl update:]";
  v6[4] = self;
  v4 = v7;
  v5 = [(NRDUpdateDaemonClientImpl *)self _remoteInterfaceWithErrorHandler:v6];
  [v5 update:v4];
}

void __36__NRDUpdateDaemonClientImpl_update___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __36__NRDUpdateDaemonClientImpl_update___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

- (void)update:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = nrdSharedLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: NRDUpdated options are not supported on this platform. options=%{public}@", buf, 0xCu);
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __42__NRDUpdateDaemonClientImpl_update_reply___block_invoke;
  v11[3] = &unk_100049F88;
  v12 = v7;
  v13 = "[NRDUpdateDaemonClientImpl update:reply:]";
  v11[4] = self;
  v9 = v7;
  v10 = [(NRDUpdateDaemonClientImpl *)self _remoteInterfaceWithErrorHandler:v11];
  [v10 update:v9];
}

void __42__NRDUpdateDaemonClientImpl_update_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __42__NRDUpdateDaemonClientImpl_update_reply___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

- (BOOL)resendOnError:(id)a3
{
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v19 = v7;
  v9 = v7;
  while (1)
  {
    v10 = [v9 userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v3 = [v9 userInfo];
      v5 = [v3 objectForKeyedSubscript:@"com.apple.NRD-Resend"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }
    }

    v12 = 0;
LABEL_8:
    v13 = [v9 domain];
    if ([v13 isEqualToString:@"NRDUpdateErrorDomain"])
    {
      v14 = [v9 code] == 112;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
    }

    if (isKindOfClass)
    {
    }

    if (v14)
    {
      goto LABEL_20;
    }

    v15 = [v9 userInfo];
    v16 = [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v9 = v16;
    if (!v16)
    {
      v17 = 0;
      goto LABEL_21;
    }
  }

  v4 = [v9 userInfo];
  v6 = [v4 objectForKeyedSubscript:@"com.apple.NRD-Resend"];
  if (![v6 BOOLValue])
  {
    v12 = 1;
    goto LABEL_8;
  }

LABEL_20:
  v17 = 1;
LABEL_21:
  v8 = v19;

LABEL_22:
  return v17;
}

- (void)handleConnectionError:(uint64_t)a1 method:(uint64_t)a2 handler:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446466;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s - connection error: %{public}@", &v3, 0x16u);
}

@end