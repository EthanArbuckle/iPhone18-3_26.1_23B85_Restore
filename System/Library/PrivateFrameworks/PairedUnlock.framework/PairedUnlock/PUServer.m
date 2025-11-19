@interface PUServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PUServer)init;
- (void)_handlePasscodeRemoval;
- (void)_removeConnection:(id)a3;
- (void)checkIn;
- (void)dealloc;
- (void)didCompleteRemoteAction:(BOOL)a3 error:(id)a4;
- (void)disableOnlyRemoteUnlock;
- (void)enableOnlyRemoteUnlockWithPasscode:(id)a3;
- (void)peer:(id)a3 didNotifyRemoteState:(id)a4 error:(id)a5;
- (void)peer:(id)a3 remoteDeviceRequestsRemoteAction:(int64_t)a4 type:(int64_t)a5 existingPasscode:(id)a6 completionHandler:(id)a7;
- (void)peerRemoteDeviceDidUnlock:(id)a3;
- (void)queryRemoteDeviceState:(id)a3;
- (void)requestRemoteDeviceRemoteAction:(int64_t)a3 type:(int64_t)a4;
- (void)requestRemoteDeviceRemoveLockout;
- (void)setGizmoWantsNotificationOnNextUnlock:(BOOL)a3;
- (void)unpairForUnlock;
@end

@implementation PUServer

- (PUServer)init
{
  v10.receiver = self;
  v10.super_class = PUServer;
  v2 = [(PUServer *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(PUPeer);
    peer = v2->_peer;
    v2->_peer = v3;

    [(PUPeer *)v2->_peer setDelegate:v2];
    objc_storeStrong(&qword_10001E868, v2);
    v5 = objc_alloc_init(NSMutableSet);
    connections = v2->_connections;
    v2->_connections = v5;

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.paired-unlock"];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100018978);
  }

  return v2;
}

- (void)_handlePasscodeRemoval
{
  if (CFPreferencesGetAppBooleanValue(@"IsUnlockOnly", @"com.apple.paired-unlock", 0))
  {
    v3 = pu_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not unpairing now; will do so when watch next connects", buf, 2u);
    }

    [(PUPeer *)self->_peer requestRemoteDeviceDisableOnlyRemoteUnlock];
  }

  else
  {
    v4 = +[SFUnlockManager sharedUnlockManager];
    [v4 disableUnlockWithDevice:IDSDefaultPairedDevice];
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(NSXPCConnection *)self->_actionServerConnection invalidate];
  [(NSXPCListener *)self->_listener invalidate];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableSet *)self->_connections copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8) invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = PUServer;
  [(PUServer *)&v9 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
LABEL_10:
    v18 = 1;
    goto LABEL_14;
  }

  v8 = pu_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Server got new connection", buf, 2u);
  }

  v9 = [v7 valueForEntitlement:PUAuthorizationEntitlement];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PUUnlockClient];
    [v7 setRemoteObjectInterface:v11];

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PUUnlockServer];
    [v7 setExportedInterface:v12];

    [v7 setExportedObject:self];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v7);
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10000B7B8;
    v24 = &unk_1000189C8;
    objc_copyWeak(&v25, &from);
    objc_copyWeak(&v26, &location);
    [v7 setInvalidationHandler:&v21];
    [v7 resume];
    v13 = pu_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_loadWeakRetained(&from);
      *buf = 138412290;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "received connection %@", buf, 0xCu);
    }

    [(NSMutableSet *)self->_connections addObject:v7];
    v15 = pu_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [NSNumber numberWithUnsignedInteger:[(NSMutableSet *)self->_connections count]];
      connections = self->_connections;
      *buf = 138412546;
      v30 = v16;
      v31 = 2112;
      v32 = connections;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_connections (%@) = %@", buf, 0x16u);
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    goto LABEL_10;
  }

  v19 = pu_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10000D644(v7, v19);
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (void)_removeConnection:(id)a3
{
  v4 = a3;
  v5 = pu_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = [v4 processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Server lost connection %@ to PID %d", &v6, 0x12u);
  }

  [(NSMutableSet *)self->_connections removeObject:v4];
}

- (void)peerRemoteDeviceDidUnlock:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableSet *)self->_connections copy:a3];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) remoteObjectProxy];
        [v8 remoteDeviceDidUnlock];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)peer:(id)a3 didNotifyRemoteState:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(NSMutableSet *)self->_connections copy];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v15 + 1) + 8 * v13) remoteObjectProxy];
        [v14 didGetRemoteDeviceState:v7 error:v8];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)peer:(id)a3 remoteDeviceRequestsRemoteAction:(int64_t)a4 type:(int64_t)a5 existingPasscode:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = pu_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Remote device requested passcode action %li", buf, 0xCu);
  }

  v14 = [(NSXPCConnection *)self->_actionServerConnection remoteObjectProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000BDE0;
  v16[3] = &unk_1000189F0;
  v17 = v11;
  v15 = v11;
  [v14 requestRemoteAction:a4 type:a5 existingPasscode:v12 completion:v16];
}

- (void)checkIn
{
  v2 = pu_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client connection checked in", v3, 2u);
  }
}

- (void)requestRemoteDeviceRemoteAction:(int64_t)a3 type:(int64_t)a4
{
  objc_initWeak(&location, self);
  peer = self->_peer;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C0D4;
  v8[3] = &unk_100018A18;
  objc_copyWeak(&v9, &location);
  [(PUPeer *)peer requestRemoteDeviceRemoteAction:a3 type:a4 completionHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)didCompleteRemoteAction:(BOOL)a3 error:(id)a4
{
  requestRemoteActionHandler = self->_requestRemoteActionHandler;
  if (requestRemoteActionHandler)
  {
    requestRemoteActionHandler[2](requestRemoteActionHandler, 0, a4);
    v6 = self->_requestRemoteActionHandler;
    self->_requestRemoteActionHandler = 0;
  }
}

- (void)unpairForUnlock
{
  objc_initWeak(&location, self);
  peer = self->_peer;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C34C;
  v4[3] = &unk_100018A18;
  objc_copyWeak(&v5, &location);
  [(PUPeer *)peer unpairForUnlockWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)enableOnlyRemoteUnlockWithPasscode:(id)a3
{
  peer = self->_peer;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C4F8;
  v4[3] = &unk_100018A40;
  v4[4] = self;
  [(PUPeer *)peer enableOnlyRemoteUnlockWithPasscode:a3 completionHandler:v4];
}

- (void)disableOnlyRemoteUnlock
{
  peer = self->_peer;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000C694;
  v3[3] = &unk_100018A40;
  v3[4] = self;
  [(PUPeer *)peer disableOnlyRemoteUnlockWithCompletionHandler:v3];
}

- (void)queryRemoteDeviceState:(id)a3
{
  v4 = a3;
  peer = self->_peer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C854;
  v7[3] = &unk_100018658;
  v8 = v4;
  v6 = v4;
  [(PUPeer *)peer queryRemoteDeviceState:v7];
}

- (void)requestRemoteDeviceRemoveLockout
{
  peer = self->_peer;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000C8E0;
  v3[3] = &unk_100018A40;
  v3[4] = self;
  [(PUPeer *)peer requestRemoteDeviceRemoveLockout:v3];
}

- (void)setGizmoWantsNotificationOnNextUnlock:(BOOL)a3
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"ShouldNotifyNextUnlock", *v3, @"com.apple.paired-unlock");
}

@end