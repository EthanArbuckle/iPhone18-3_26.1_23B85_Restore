@interface NRDUpdateBrainClientImpl
- (NRDUpdateBrainClientImpl)init;
- (NRDUpdateBrainClientImpl)initWithDelegate:(id)a3;
- (NRDUpdateBrainClientImpl)initWithEndpoint:(id)a3;
- (id)_remoteInterfaceWithErrorHandler:(id)a3;
- (void)_connectToServerIfNecessary_nolock;
- (void)_invalidateConnection;
- (void)_invalidateConnection_nolock;
- (void)calculateCurrentRequiredSpace:(id)a3 callback:(id)a4;
- (void)connectToServerIfNecessary;
- (void)dealloc;
- (void)downloadNeRDUpdate:(id)a3 options:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)finishNeRDUpdate:(id)a3;
- (void)getListenerEndpoint:(id)a3;
- (void)handleConnectionError:(id)a3 method:(const char *)a4 handler:(id)a5;
- (void)installNeRDUpdate:(id)a3 options:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)noteConnectionDropped;
- (void)ping:(id)a3;
- (void)ping:(id)a3 reply:(id)a4;
- (void)purgeNeRDUpdate:(id)a3;
- (void)queryNeRDUpdate:(id)a3 build:(id)a4 options:(id)a5 callback:(id)a6;
- (void)run:(unint64_t)a3 options:(id)a4 callback:(id)a5;
@end

@implementation NRDUpdateBrainClientImpl

- (NRDUpdateBrainClientImpl)init
{
  v5.receiver = self;
  v5.super_class = NRDUpdateBrainClientImpl;
  v2 = [(NRDUpdateBrainClientImpl *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_brainProtocol, &OBJC_PROTOCOL___NRDUpdateBrainInterfacePrivate);
    v3->_brainProtocolVersion = 1;
  }

  return v3;
}

- (NRDUpdateBrainClientImpl)initWithDelegate:(id)a3
{
  v5 = a3;
  v6 = [(NRDUpdateBrainClientImpl *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
  }

  return v7;
}

- (NRDUpdateBrainClientImpl)initWithEndpoint:(id)a3
{
  v5 = a3;
  v6 = [(NRDUpdateBrainClientImpl *)self init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_serverEndpoint, a3);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  [(NRDUpdateBrainClientImpl *)self _invalidateConnection];
  delegate = self->_delegate;
  self->_delegate = 0;

  v4.receiver = self;
  v4.super_class = NRDUpdateBrainClientImpl;
  [(NRDUpdateBrainClientImpl *)&v4 dealloc];
}

- (id)_remoteInterfaceWithErrorHandler:(id)a3
{
  v4 = a3;
  [(NRDUpdateBrainClientImpl *)self connectToServerIfNecessary];
  v5 = [(NSXPCConnection *)self->_serverConnection remoteObjectProxyWithErrorHandler:v4];

  return v5;
}

- (void)_invalidateConnection_nolock
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

- (void)_invalidateConnection
{
  obj = self;
  objc_sync_enter(obj);
  [(NRDUpdateBrainClientImpl *)obj _invalidateConnection_nolock];
  objc_sync_exit(obj);
}

- (void)_connectToServerIfNecessary_nolock
{
  if (!self->_connected)
  {
    [(NRDUpdateBrainClientImpl *)self _invalidateConnection];
    serverEndpoint = self->_serverEndpoint;
    v4 = [NSXPCConnection alloc];
    if (serverEndpoint)
    {
      v5 = [v4 initWithListenerEndpoint:self->_serverEndpoint];
    }

    else
    {
      v5 = [v4 initWithServiceName:@"com.apple.NRD.UpdateBrainService" options:0];
    }

    serverConnection = self->_serverConnection;
    self->_serverConnection = v5;

    v7 = dispatch_queue_create("com.apple.NRDUpdateBrainClient.serverConnectionQueue", &_dispatch_queue_attr_concurrent);
    [(NSXPCConnection *)self->_serverConnection _setQueue:v7];

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDUpdateBrainInterfacePrivate2];
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDUpdateBrainDelegateInterface];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDBackgroundActivitySchedulerInterface];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRDRemoteableBlockInterface];
    [v10 setInterface:v11 forSelector:"scheduleWithRemoteableBlock:" argumentIndex:0 ofReply:0];
    [v10 setInterface:v11 forSelector:"setCheckInHandler:" argumentIndex:0 ofReply:0];
    [v8 setInterface:v11 forSelector:"downloadNeRDUpdate:options:progress:completion:" argumentIndex:2 ofReply:0];
    [v8 setInterface:v11 forSelector:"installNeRDUpdate:options:progress:completion:" argumentIndex:2 ofReply:0];
    [v8 setInterface:v11 forSelector:"finishNeRDUpdate:" argumentIndex:0 ofReply:1];
    [v9 setInterface:v10 forSelector:"newSchedulerWithIdentifier:reply:" argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)self->_serverConnection setRemoteObjectInterface:v8];
    if (self->_delegate)
    {
      [(NSXPCConnection *)self->_serverConnection setExportedInterface:v9];
      [(NSXPCConnection *)self->_serverConnection setExportedObject:self->_delegate];
    }

    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__7;
    v18[4] = __Block_byref_object_dispose__7;
    v19 = self;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__7;
    v16[4] = __Block_byref_object_dispose__7;
    v17 = self->_delegate;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __62__NRDUpdateBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke;
    v15[3] = &unk_100049D08;
    v15[4] = v18;
    v15[5] = v16;
    v12 = objc_retainBlock(v15);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __62__NRDUpdateBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke_139;
    v14[3] = &unk_100049D08;
    v14[4] = v18;
    v14[5] = v16;
    v13 = objc_retainBlock(v14);
    [(NSXPCConnection *)self->_serverConnection setInvalidationHandler:v12];
    [(NSXPCConnection *)self->_serverConnection setInterruptionHandler:v13];
    [(NSXPCConnection *)self->_serverConnection resume];
    self->_connected = 1;

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v18, 8);
  }
}

uint64_t __62__NRDUpdateBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = @"com.apple.NRD.UpdateBrainService";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connection to %{public}@ invalidated", &v4, 0xCu);
  }

  [*(*(*(a1 + 32) + 8) + 40) noteConnectionDropped];
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(*(*(a1 + 40) + 8) + 40) connectionInvalidated];
    }
  }

  return result;
}

uint64_t __62__NRDUpdateBrainClientImpl__connectToServerIfNecessary_nolock__block_invoke_139(uint64_t a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = @"com.apple.NRD.UpdateBrainService";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connection to %{public}@ interrupted", &v4, 0xCu);
  }

  [*(*(*(a1 + 32) + 8) + 40) noteConnectionDropped];
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(*(*(a1 + 40) + 8) + 40) connectionInterrupted];
    }
  }

  return result;
}

- (void)connectToServerIfNecessary
{
  obj = self;
  objc_sync_enter(obj);
  [(NRDUpdateBrainClientImpl *)obj _connectToServerIfNecessary_nolock];
  objc_sync_exit(obj);
}

- (void)noteConnectionDropped
{
  obj = self;
  objc_sync_enter(obj);
  obj->_connected = 0;
  objc_sync_exit(obj);
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
      [NRDUpdateBrainClientImpl handleConnectionError:method:handler:];
    }

    [(NRDUpdateBrainClientImpl *)self _invalidateConnection];
    v9[2](v9);
  }
}

- (void)ping:(id)a3
{
  v4 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v5 = nrdSharedLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.tv_sec) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pinging NeRD update brain...", &buf, 2u);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke;
  v31[3] = &unk_10004A098;
  v31[4] = self;
  v34 = "[NRDUpdateBrainClientImpl ping:]";
  v6 = v4;
  v32 = v6;
  v33 = &v35;
  v7 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v31];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke_142;
  v28[3] = &unk_10004A110;
  v28[4] = self;
  v8 = v6;
  v29 = v8;
  v30 = &v35;
  [v7 ping:v28];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v25 = __33__NRDUpdateBrainClientImpl_ping___block_invoke_169;
  v26 = &unk_100049E48;
  v27 = &v35;
  v9 = v24;
  v10 = objc_autoreleasePoolPush();
  v11 = +[NSDate date];
  do
  {
    v12 = +[NSDate date];
    v13 = [v12 dateByAddingTimeInterval:0.125];
    v14 = +[NSRunLoop currentRunLoop];
    [v14 runUntilDate:v13];

    v15 = +[NSDate date];
    [v15 timeIntervalSinceDate:v12];
    v17 = v16;

    if (v17 < 0.125)
    {
      buf.tv_sec = (0.125 - v17);
      buf.tv_nsec = ((0.125 - v17 - buf.tv_sec) * 1000000000.0);
      nanosleep(&buf, 0);
    }

    if (v25(v9))
    {
      break;
    }

    v18 = +[NSDate date];
    [v18 timeIntervalSinceDate:v11];
    v20 = v19 < 30.0;
  }

  while (v20);

  objc_autoreleasePoolPop(v10);
  if ((v36[3] & 1) == 0)
  {
    v21 = nrdSharedLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateBrainClientImpl ping:];
    }

    v40 = NSDebugDescriptionErrorKey;
    v41 = @"timeout connecting to brain endpoint";
    v22 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v23 = [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:101 userInfo:v22];
    (*(v8 + 2))(v8, v23);
  }

  _Block_object_dispose(&v35, 8);
}

void __33__NRDUpdateBrainClientImpl_ping___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke_2;
  v8[3] = &unk_10004A070;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

uint64_t __33__NRDUpdateBrainClientImpl_ping___block_invoke_2(void *a1)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __33__NRDUpdateBrainClientImpl_ping___block_invoke_2_cold_1();
  }

  v3 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void __33__NRDUpdateBrainClientImpl_ping___block_invoke_142(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __33__NRDUpdateBrainClientImpl_ping___block_invoke_142_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pinging NeRD update brain succeeded", buf, 2u);
    }

    v6 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke_143;
    v8[3] = &unk_10004A0E8;
    v8[4] = v6;
    v7 = *(a1 + 40);
    v9 = 0;
    v10 = v7;
    v11 = *(a1 + 48);
    [v6 getListenerEndpoint:v8];
  }
}

void __33__NRDUpdateBrainClientImpl_ping___block_invoke_143(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = nrdSharedLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not probe for NRDUpdateBrainInterfacePrivate2.", v11, 2u);
    }

    v7 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v8 = [[NRDUpdateBrainClientImpl alloc] initWithEndpoint:v5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __33__NRDUpdateBrainClientImpl_ping___block_invoke_150;
    v12[3] = &unk_10004A0C0;
    v12[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v9 = *(a1 + 40);
    v16 = *(a1 + 56);
    v13 = v9;
    v14 = v8;
    v10 = v8;
    [(NRDUpdateBrainClientImpl *)v10 ping:&off_100053D60 reply:v12];
  }
}

void __33__NRDUpdateBrainClientImpl_ping___block_invoke_150(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = nrdSharedLogger();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v7)
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NeRD update brain does not support NRDUpdateBrainInterfacePrivate2.", v23, 2u);
    }

    goto LABEL_8;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NeRD update brain supports NRDUpdateBrainInterfacePrivate2.", buf, 2u);
  }

  v8 = [v5 objectForKeyedSubscript:@"BrainVersion"];
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  *(v9 + 8) = v8;

  v11 = [v5 objectForKeyedSubscript:@"BrainTimeStamp"];
  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  *(v12 + 16) = v11;

  v14 = [v5 objectForKeyedSubscript:@"BrainUUID"];
  v15 = *(a1 + 32);
  v16 = *(v15 + 24);
  *(v15 + 24) = v14;

  v17 = [v5 objectForKeyedSubscript:@"DylibUUID"];
  v18 = *(a1 + 32);
  v19 = *(v18 + 32);
  *(v18 + 32) = v17;

  objc_storeStrong((*(a1 + 32) + 72), &OBJC_PROTOCOL___NRDUpdateBrainInterfacePrivate2);
  v20 = [v5 objectForKeyedSubscript:@"__BrainProtocolVersion"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v5 objectForKeyedSubscript:@"__BrainProtocolVersion"];
    *(*(a1 + 32) + 80) = [v6 unsignedIntValue];
LABEL_8:
  }

  v22 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  *(*(*(a1 + 64) + 8) + 24) = 1;
  [*(a1 + 48) _invalidateConnection];
}

- (void)ping:(id)a3 reply:(id)a4
{
  v26 = a3;
  v6 = a4;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v7 = nrdSharedLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.tv_sec) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Probing NeRD update brain for NRDUpdateBrainInterfacePrivate2...", &buf, 2u);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke;
  v34[3] = &unk_10004A098;
  v34[4] = self;
  v37 = "[NRDUpdateBrainClientImpl ping:reply:]";
  v8 = v6;
  v35 = v8;
  v36 = &v38;
  v9 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v34];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_3;
  v31[3] = &unk_10004A138;
  v10 = v8;
  v32 = v10;
  v33 = &v38;
  [v9 ping:v26 reply:v31];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v28 = __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_4;
  v29 = &unk_100049E48;
  v30 = &v38;
  v11 = v27;
  v12 = objc_autoreleasePoolPush();
  v13 = +[NSDate date];
  do
  {
    v14 = +[NSDate date];
    v15 = [v14 dateByAddingTimeInterval:0.125];
    v16 = +[NSRunLoop currentRunLoop];
    [v16 runUntilDate:v15];

    v17 = +[NSDate date];
    [v17 timeIntervalSinceDate:v14];
    v19 = v18;

    if (v19 < 0.125)
    {
      buf.tv_sec = (0.125 - v19);
      buf.tv_nsec = ((0.125 - v19 - buf.tv_sec) * 1000000000.0);
      nanosleep(&buf, 0);
    }

    if (v28(v11))
    {
      break;
    }

    v20 = +[NSDate date];
    [v20 timeIntervalSinceDate:v13];
    v22 = v21 < 30.0;
  }

  while (v22);

  objc_autoreleasePoolPop(v12);
  if ((v39[3] & 1) == 0)
  {
    v23 = nrdSharedLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateBrainClientImpl ping:reply:];
    }

    v43[0] = NSDebugDescriptionErrorKey;
    v43[1] = @"Protocol";
    v44[0] = @"timeout connecting to brain endpoint";
    v44[1] = @"NRDUpdateBrainInterfacePrivate2";
    v43[2] = @"Non-fatal";
    v44[2] = &__kCFBooleanTrue;
    v24 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
    v25 = [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:101 userInfo:v24];
    (*(v10 + 2))(v10, 0, v25);
  }

  _Block_object_dispose(&v38, 8);
}

void __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_2;
  v8[3] = &unk_10004A070;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

uint64_t __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_2(void *a1)
{
  v2 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

uint64_t __39__NRDUpdateBrainClientImpl_ping_reply___block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)run:(unint64_t)a3 options:(id)a4 callback:(id)a5
{
  v8 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __49__NRDUpdateBrainClientImpl_run_options_callback___block_invoke;
  v11[3] = &unk_100049F88;
  v11[4] = self;
  v13 = "[NRDUpdateBrainClientImpl run:options:callback:]";
  v9 = a5;
  v12 = v9;
  v10 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v11];
  if (protocol_isEqual(self->_brainProtocol, &OBJC_PROTOCOL___NRDUpdateBrainInterfacePrivate2))
  {
    [v10 run:a3 options:v8 callback:v9];
  }

  else
  {
    [v10 run:a3 callback:v9];
  }
}

void __49__NRDUpdateBrainClientImpl_run_options_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__NRDUpdateBrainClientImpl_run_options_callback___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

- (void)getListenerEndpoint:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __48__NRDUpdateBrainClientImpl_getListenerEndpoint___block_invoke;
  v6[3] = &unk_100049F88;
  v7 = a3;
  v8 = "[NRDUpdateBrainClientImpl getListenerEndpoint:]";
  v6[4] = self;
  v4 = v7;
  v5 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v6];
  [v5 getListenerEndpoint:v4];
}

void __48__NRDUpdateBrainClientImpl_getListenerEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __48__NRDUpdateBrainClientImpl_getListenerEndpoint___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

- (void)queryNeRDUpdate:(id)a3 build:(id)a4 options:(id)a5 callback:(id)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __67__NRDUpdateBrainClientImpl_queryNeRDUpdate_build_options_callback___block_invoke;
  v15[3] = &unk_100049F88;
  v16 = a6;
  v17 = "[NRDUpdateBrainClientImpl queryNeRDUpdate:build:options:callback:]";
  v15[4] = self;
  v10 = v16;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v15];
  [v14 queryNeRDUpdate:v13 build:v12 options:v11 callback:v10];
}

void __67__NRDUpdateBrainClientImpl_queryNeRDUpdate_build_options_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __67__NRDUpdateBrainClientImpl_queryNeRDUpdate_build_options_callback___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

- (void)downloadNeRDUpdate:(id)a3 options:(id)a4 progress:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke;
  v24[3] = &unk_100049F88;
  v24[4] = self;
  v26 = "[NRDUpdateBrainClientImpl downloadNeRDUpdate:options:progress:completion:]";
  v13 = a6;
  v25 = v13;
  v14 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v24];
  v15 = [NRDRemoteableBlock alloc];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke_3;
  v22[3] = &unk_10004A160;
  v16 = v12;
  v23 = v16;
  v17 = [(NRDRemoteableBlock *)v15 initWithProgressBlock:v22];
  if (v14)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke_4;
    v20[3] = &unk_10004A000;
    v21 = v13;
    [v14 downloadNeRDUpdate:v10 options:v11 progress:v17 completion:v20];
    v18 = v21;
  }

  else
  {
    v27 = NSDebugDescriptionErrorKey;
    v28 = @"no remote object connection";
    v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v19 = [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:105 userInfo:v18];
    (*(v13 + 2))(v13, v19);
  }
}

void __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

uint64_t __75__NRDUpdateBrainClientImpl_downloadNeRDUpdate_options_progress_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3.n128_f64[0] = [a2 unsignedIntegerValue] / 100.0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)installNeRDUpdate:(id)a3 options:(id)a4 progress:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke;
  v24[3] = &unk_100049F88;
  v24[4] = self;
  v26 = "[NRDUpdateBrainClientImpl installNeRDUpdate:options:progress:completion:]";
  v13 = a6;
  v25 = v13;
  v14 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v24];
  v15 = [NRDRemoteableBlock alloc];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke_3;
  v22[3] = &unk_10004A160;
  v16 = v12;
  v23 = v16;
  v17 = [(NRDRemoteableBlock *)v15 initWithProgressBlock:v22];
  if (v14)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke_4;
    v20[3] = &unk_10004A000;
    v21 = v13;
    [v14 installNeRDUpdate:v10 options:v11 progress:v17 completion:v20];
    v18 = v21;
  }

  else
  {
    v27 = NSDebugDescriptionErrorKey;
    v28 = @"no remote object connection";
    v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v19 = [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:105 userInfo:v18];
    (*(v13 + 2))(v13, v19);
  }
}

void __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

uint64_t __74__NRDUpdateBrainClientImpl_installNeRDUpdate_options_progress_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3.n128_f64[0] = [a2 unsignedIntegerValue] / 100.0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)purgeNeRDUpdate:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __44__NRDUpdateBrainClientImpl_purgeNeRDUpdate___block_invoke;
  v6[3] = &unk_100049F88;
  v7 = a3;
  v8 = "[NRDUpdateBrainClientImpl purgeNeRDUpdate:]";
  v6[4] = self;
  v4 = v7;
  v5 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v6];
  [v5 purgeNeRDUpdate:v4];
}

void __44__NRDUpdateBrainClientImpl_purgeNeRDUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __44__NRDUpdateBrainClientImpl_purgeNeRDUpdate___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

- (void)finishNeRDUpdate:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke;
  v8[3] = &unk_100049F88;
  v9 = self;
  v11 = "[NRDUpdateBrainClientImpl finishNeRDUpdate:]";
  v3 = a3;
  v10 = v3;
  v4 = [(NRDUpdateBrainClientImpl *)v9 _remoteInterfaceWithErrorHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_3;
  v6[3] = &unk_10004A1C8;
  v7 = v3;
  v5 = v3;
  [v4 finishNeRDUpdate:v6];
}

void __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

void __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_4;
  v8[3] = &unk_100049038;
  v9 = a2;
  v5 = v9;
  v6 = a3;
  v7 = objc_retainBlock(v8);
  (*(*(a1 + 32) + 16))();
}

void __45__NRDUpdateBrainClientImpl_finishNeRDUpdate___block_invoke_5(id a1, int a2)
{
  v2 = nrdSharedLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "sending NRD update brain the all-clear.", v3, 2u);
  }
}

- (void)calculateCurrentRequiredSpace:(id)a3 callback:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __67__NRDUpdateBrainClientImpl_calculateCurrentRequiredSpace_callback___block_invoke;
  v9[3] = &unk_100049F88;
  v10 = a4;
  v11 = "[NRDUpdateBrainClientImpl calculateCurrentRequiredSpace:callback:]";
  v9[4] = self;
  v6 = v10;
  v7 = a3;
  v8 = [(NRDUpdateBrainClientImpl *)self _remoteInterfaceWithErrorHandler:v9];
  [v8 calculateCurrentRequiredSpace:v7 callback:v6];
}

void __67__NRDUpdateBrainClientImpl_calculateCurrentRequiredSpace_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __67__NRDUpdateBrainClientImpl_calculateCurrentRequiredSpace_callback___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

void __54__NRDUpdateBrainClientImpl_cancelNeRDUpdate_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __54__NRDUpdateBrainClientImpl_cancelNeRDUpdate_callback___block_invoke_2;
  v8[3] = &unk_100049F60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 handleConnectionError:v7 method:v4 handler:v8];
}

@end