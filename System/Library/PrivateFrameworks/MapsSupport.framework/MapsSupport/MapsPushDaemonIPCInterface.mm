@interface MapsPushDaemonIPCInterface
- (void)_configureIncomingConnection:(id)connection;
- (void)establishConnection;
- (void)handleTrafficeReroute:(id)reroute completion:(id)completion;
@end

@implementation MapsPushDaemonIPCInterface

- (void)_configureIncomingConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setExportedObject:self];
  v5 = +[NSXPCInterface _maps_mapsPushDaemonXPCClientInterface];
  [connectionCopy setExportedInterface:v5];

  v6 = +[NSXPCInterface _maps_mapsPushDaemonXPCInterface];
  [connectionCopy setRemoteObjectInterface:v6];
}

- (void)handleTrafficeReroute:(id)reroute completion:(id)completion
{
  rerouteCopy = reroute;
  completionCopy = completion;
  messagingQueue = self->super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B320;
  block[3] = &unk_10003CB40;
  block[4] = self;
  v12 = rerouteCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = rerouteCopy;
  dispatch_async(messagingQueue, block);
}

- (void)establishConnection
{
  v2 = sub_1000124D8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Received establish connection message.", v3, 2u);
  }
}

@end