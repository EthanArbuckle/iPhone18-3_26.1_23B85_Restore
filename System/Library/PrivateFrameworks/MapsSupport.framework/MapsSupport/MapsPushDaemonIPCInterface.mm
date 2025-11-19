@interface MapsPushDaemonIPCInterface
- (void)_configureIncomingConnection:(id)a3;
- (void)establishConnection;
- (void)handleTrafficeReroute:(id)a3 completion:(id)a4;
@end

@implementation MapsPushDaemonIPCInterface

- (void)_configureIncomingConnection:(id)a3
{
  v4 = a3;
  [v4 setExportedObject:self];
  v5 = +[NSXPCInterface _maps_mapsPushDaemonXPCClientInterface];
  [v4 setExportedInterface:v5];

  v6 = +[NSXPCInterface _maps_mapsPushDaemonXPCInterface];
  [v4 setRemoteObjectInterface:v6];
}

- (void)handleTrafficeReroute:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  messagingQueue = self->super._messagingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B320;
  block[3] = &unk_10003CB40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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