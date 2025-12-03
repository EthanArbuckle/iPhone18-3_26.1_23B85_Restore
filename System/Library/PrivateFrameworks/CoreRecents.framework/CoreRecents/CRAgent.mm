@interface CRAgent
+ (BOOL)clientMayConnect:(id)connect;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CRAgent)init;
- (id)clientForConnection:(id)connection;
- (id)daemonLibraryForClient:(id)client;
- (void)_adjustLibraryStoreSyncBehaviorWithLockedState:(BOOL)state;
- (void)_executeAfterFirstUnlock:(id)unlock;
- (void)_lockStateChanged:(id)changed;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation CRAgent

- (CRAgent)init
{
  v5.receiver = self;
  v5.super_class = CRAgent;
  v2 = [(CRAgent *)&v5 init];
  if (v2)
  {
    v2->_startupQueue = dispatch_queue_create("com.apple.contacts.corerecents.agent.startup", 0);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000038DC;
    v4[3] = &unk_10002CAB0;
    v4[4] = v2;
    [(CRAgent *)v2 _executeAfterFirstUnlock:v4];
  }

  return v2;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];

  v3.receiver = self;
  v3.super_class = CRAgent;
  [(CRAgent *)&v3 dealloc];
}

- (id)clientForConnection:(id)connection
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_100003B58;
  v13 = sub_100003B68;
  v14 = 0;
  startupQueue = self->_startupQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003B74;
  v8[3] = &unk_10002CB58;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(startupQueue, v8);
  v5 = [CRDClient alloc];
  v6 = [(CRDClient *)v5 initWithConnection:connection library:v10[5]];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)daemonLibraryForClient:(id)client
{
  v3 = [[CRDRecentContactsLibrary alloc] initWithClient:client];

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v6 = [(CRAgent *)self clientForConnection:connection];
  if ([objc_opt_class() clientMayConnect:v6])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    startupQueue = self->_startupQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003EE8;
    block[3] = &unk_10002CB58;
    block[4] = self;
    block[5] = &buf;
    dispatch_sync(startupQueue, block);
    v8 = *(*(&buf + 1) + 24);
    if (v8)
    {
      v9 = [CRWeakReference weakReferenceWithObject:v6];
      v10 = [CRWeakReference weakReferenceWithObject:connection];
      v11 = [(CRAgent *)self daemonLibraryForClient:v6];
      [connection setExportedInterface:{+[CRDRecentContactsLibraryInterface XPCInterface](CRDRecentContactsLibraryInterface, "XPCInterface")}];
      [connection setExportedObject:v11];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100003EFC;
      v16[3] = &unk_10002CB80;
      v16[4] = v9;
      v16[5] = v10;
      v16[6] = self;
      [connection setInvalidationHandler:v16];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100004004;
      v15[3] = &unk_10002CB80;
      v15[4] = v9;
      v15[5] = v10;
      v15[6] = self;
      [connection setInterruptionHandler:v15];
      objc_sync_enter(self);
      [(NSMutableSet *)self->_clients addObject:v6];
      [connection resume];
      objc_sync_exit(self);
    }

    else
    {
      v13 = +[CRLogging log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 138543362;
        connectionCopy = connection;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "dropping connection %{public}@ because library is not available (probable cause: device not unlocked after boot)", v18, 0xCu);
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v12 = +[CRLogging log];
    v8 = 0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = connection;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "dropping unentitled connection %{public}@", &buf, 0xCu);
      return 0;
    }
  }

  return v8;
}

+ (BOOL)clientMayConnect:(id)connect
{
  if ([connect hasEntitlement:@"com.apple.private.corerecents"])
  {
    return 1;
  }

  return [connect hasEntitlement:@"com.apple.private.contactsui"];
}

- (void)_adjustLibraryStoreSyncBehaviorWithLockedState:(BOOL)state
{
  v4 = *&qword_100034068;
  if (state)
  {
    v4 = 1.79769313e308;
  }

  [(_CRRecentsLibrary *)self->_library setStoreSyncDelay:v4];
  library = self->_library;

  [(_CRRecentsLibrary *)library synchronize];
}

- (void)_lockStateChanged:(id)changed
{
  v4 = [objc_msgSend(objc_msgSend(changed "userInfo")];

  [(CRAgent *)self _adjustLibraryStoreSyncBehaviorWithLockedState:v4];
}

- (void)_executeAfterFirstUnlock:(id)unlock
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (off_100033FA0())
  {
    startupQueue = self->_startupQueue;

    dispatch_async(startupQueue, unlock);
  }

  else
  {
    out_token = -1;
    global_queue = dispatch_get_global_queue(0, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100004374;
    handler[3] = &unk_10002CBA8;
    handler[4] = self;
    handler[5] = unlock;
    v7 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, global_queue, handler);
    v8 = +[CRLogging log];
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100018078(v9);
      }

      if (out_token != -1)
      {
        notify_cancel(out_token);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "waiting for first unlock", v10, 2u);
    }
  }
}

- (void)start
{
  v3 = [NSXPCListener alloc];
  v4 = [v3 initWithMachServiceName:CRRecentsAgentMachServiceName];
  self->_listener = v4;
  [(NSXPCListener *)v4 setDelegate:self];
  listener = self->_listener;

  [(NSXPCListener *)listener resume];
}

- (void)stop
{
  [(NSXPCListener *)self->_listener invalidate];

  self->_listener = 0;
  library = self->_library;

  [(_CRRecentsLibrary *)library closeDatabaseConnections];
}

@end