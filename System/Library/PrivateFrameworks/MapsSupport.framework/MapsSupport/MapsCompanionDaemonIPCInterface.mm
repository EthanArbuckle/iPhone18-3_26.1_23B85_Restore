@interface MapsCompanionDaemonIPCInterface
+ (id)sharedInterface;
- (void)_configureIncomingConnection:(id)a3;
- (void)establishConnection;
@end

@implementation MapsCompanionDaemonIPCInterface

+ (id)sharedInterface
{
  if (qword_10009E868 != -1)
  {
    sub_100055CD4();
  }

  v3 = qword_10009E860;

  return v3;
}

- (void)_configureIncomingConnection:(id)a3
{
  v4 = a3;
  [v4 setExportedObject:self];
  v5 = +[NSXPCInterface _maps_mapsCompanionDaemonXPCClientInterface];
  [v4 setExportedInterface:v5];

  v6 = +[NSXPCInterface _maps_mapsCompanionDaemonXPCInterface];
  [v4 setRemoteObjectInterface:v6];
}

- (void)establishConnection
{
  v2 = sub_10001E7A0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Received establish connection message.", v3, 2u);
  }
}

@end