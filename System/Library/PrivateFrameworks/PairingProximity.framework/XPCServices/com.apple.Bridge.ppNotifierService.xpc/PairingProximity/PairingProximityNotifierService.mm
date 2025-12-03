@interface PairingProximityNotifierService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PairingProximityNotifierService)init;
- (void)_postAppRemovedBulletinBoardNotification;
- (void)notifyOfNearbyDevice:(id)device withReply:(id)reply;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation PairingProximityNotifierService

- (PairingProximityNotifierService)init
{
  v6.receiver = self;
  v6.super_class = PairingProximityNotifierService;
  v2 = [(PairingProximityNotifierService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Bridge.ppNotifierServiceQueue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.Bridge.ppNotifierService-notify"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v6 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PPNotifierService];
    [connectionCopy setExportedInterface:v7];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
    v8 = pbb_shared_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Had entitlement: %@", &v11, 0xCu);
    }

    v9 = 1;
  }

  else
  {
    v8 = pbb_shared_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rejecting connection: %@", &v11, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (void)_postAppRemovedBulletinBoardNotification
{
  v2 = pbb_shared_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Posted Bulletin", v3, 2u);
  }
}

- (void)notifyOfNearbyDevice:(id)device withReply:(id)reply
{
  v5 = pbb_shared_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " ", buf, 2u);
  }

  workQueue = [(PairingProximityNotifierService *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000109C;
  block[3] = &unk_1000040E8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = activateCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "remoteAlertHandleDidActivate: %@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = deactivateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "remoteAlertHandleDidDeactivate: %@", &v7, 0xCu);
  }

  [(SBSRemoteAlertHandle *)self->_pairingAlertHandle removeObserver:self];
  [(SBSRemoteAlertHandle *)self->_pairingAlertHandle invalidate];
  pairingAlertHandle = self->_pairingAlertHandle;
  self->_pairingAlertHandle = 0;
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = handleCopy;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "remoteAlertHandle:(SBSRemoteAlertHandle *)handle didInvalidateWithError: %@ %@", &v8, 0x16u);
  }
}

@end