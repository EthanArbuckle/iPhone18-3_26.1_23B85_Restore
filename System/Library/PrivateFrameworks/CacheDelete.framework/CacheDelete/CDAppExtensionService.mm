@interface CDAppExtensionService
- (CDAppExtensionService)initWithInfo:(id)info extension:(id)extension;
- (void)invalidateConnection;
- (void)obtainXPCConnection:(id)connection;
@end

@implementation CDAppExtensionService

- (CDAppExtensionService)initWithInfo:(id)info extension:(id)extension
{
  extensionCopy = extension;
  v12.receiver = self;
  v12.super_class = CDAppExtensionService;
  v7 = [(CDXPCService *)&v12 initWithInfo:info];
  if (v7)
  {
    if (extensionCopy)
    {
      v8 = extensionCopy;
      extension = v7->_extension;
      v7->_extension = v8;
    }

    else
    {
      v10 = objc_opt_class();
      extension = NSStringFromClass(v10);
      [NSException raise:@"ExtensionRequiredError" format:@"%@ Requires Extension!", extension];
    }
  }

  return v7;
}

- (void)obtainXPCConnection:(id)connection
{
  connectionCopy = connection;
  xpcConnection = [(CDXPCService *)self xpcConnection];
  if (xpcConnection)
  {
  }

  else
  {
    requestId = [(CDAppExtensionService *)self requestId];

    if (!requestId)
    {
      extension = [(CDAppExtensionService *)self extension];
      v9 = [(CDService *)self ID];
      objc_initWeak(&location, self);
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2020000000;
      v19 = 0;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = __45__CDAppExtensionService_obtainXPCConnection___block_invoke;
      v12[3] = &unk_100062030;
      v16 = v18;
      objc_copyWeak(&v17, &location);
      v10 = v9;
      v13 = v10;
      v11 = extension;
      v14 = v11;
      v15 = connectionCopy;
      [v11 beginExtensionRequestWithOptions:0 inputItems:0 completion:v12];

      objc_destroyWeak(&v17);
      _Block_object_dispose(v18, 8);
      objc_destroyWeak(&location);

      goto LABEL_5;
    }
  }

  v7 = [(CDService *)self ID];
  [NSException raise:@"com.apple.cache_delete.CDAnonymousXPCService.duplicate_connection" format:@"Asked to build a connection to %@ but we already have a perfectly good one!", v7];

LABEL_5:
}

void __45__CDAppExtensionService_obtainXPCConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (++*(*(*(a1 + 56) + 8) + 24) >= 2)
  {
    v7 = CDGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 67109120;
      LODWORD(v22) = v12;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "beginExtensionRequestWithInputItems callback called multiple (%d) times!", buf, 8u);
    }

    [NSException raise:@"com.apple.cache_delete.unexpected_multiple_callback" format:@"beginExtensionRequestWithInputItems callback fired more than once"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained serviceQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __45__CDAppExtensionService_obtainXPCConnection___block_invoke_17;
    v14[3] = &unk_100062008;
    v15 = v5;
    v16 = v6;
    v17 = *(a1 + 40);
    v18 = v9;
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    dispatch_async(v10, v14);

    v11 = v15;
  }

  else
  {
    v11 = CDGetLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v22 = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "BeginExtensionRequestWithInputItems returned after self went away (ID=%@)!", buf, 0xCu);
    }
  }
}

void __45__CDAppExtensionService_obtainXPCConnection___block_invoke_17(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v2 = [*(a1 + 48) _extensionContextForUUID:?];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 _auxiliaryConnection];
      [*(a1 + 56) setXpcConnection:v4];

      v5 = [*(a1 + 56) xpcConnection];

      if (v5)
      {
LABEL_9:

        goto LABEL_10;
      }

      v6 = CDGetLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 56) ID];
        *buf = 138412290;
        v19 = v7;
        v8 = "Unable to get xpc connection from app extension context for app extension service %@";
LABEL_21:
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
      }
    }

    else
    {
      v6 = CDGetLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 56) ID];
        *buf = 138412290;
        v19 = v7;
        v8 = "Unable to get extension context for app extension service %@";
        goto LABEL_21;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 40) || ([*(a1 + 56) xpcConnection], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v9 = CDGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 64);
      *buf = 138412290;
      v19 = v15;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "hostExtensionContext for service %@ has no connection", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v16 = NSUnderlyingErrorKey;
      v17 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v11 = 0;
    }

    v14 = [[NSError alloc] initWithDomain:@"CacheDeleteErrorDomain" code:6 userInfo:v11];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    [*(a1 + 56) setRequestId:*(a1 + 32)];
    v13 = *(a1 + 72);
    v14 = [*(a1 + 56) xpcConnection];
    (*(v13 + 16))(v13, v14, 0);
  }
}

- (void)invalidateConnection
{
  xpcConnection = [(CDXPCService *)self xpcConnection];
  if (xpcConnection)
  {
    v4 = xpcConnection;
    isConnected = [(CDXPCService *)self isConnected];

    if (isConnected)
    {
      extension = [(CDAppExtensionService *)self extension];
      requestId = [(CDAppExtensionService *)self requestId];
      [extension cancelExtensionRequestWithIdentifier:requestId];
    }
  }

  [(CDAppExtensionService *)self setRequestId:0];
  [(CDXPCService *)self connectionWasInvalidated];
  watchdog_timer = [(CDXPCService *)self watchdog_timer];

  if (watchdog_timer)
  {
    watchdog_timer2 = [(CDXPCService *)self watchdog_timer];
    dispatch_source_cancel(watchdog_timer2);

    [(CDXPCService *)self setWatchdog_timer:0];
  }

  else
  {
    v10 = CDGetLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      watchdog_timer3 = [(CDXPCService *)self watchdog_timer];
      v12 = 134218240;
      selfCopy = self;
      v14 = 2048;
      v15 = watchdog_timer3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "watchdog timer is nil, self: %p, timer: %p", &v12, 0x16u);
    }
  }
}

@end