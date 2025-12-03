@interface GEODaemonToMapsPushDaemonListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (GEODaemonToMapsPushDaemonListener)init;
- (GEODaemonToMapsPushDaemonListener)initWithMapsPushDaemon:(id)daemon;
@end

@implementation GEODaemonToMapsPushDaemonListener

- (GEODaemonToMapsPushDaemonListener)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->_mapsPushDaemon);
  if (!WeakRetained)
  {
    [listenerCopy invalidate];
    goto LABEL_5;
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.Maps.mapspushd.geod"];

  if (!v9)
  {
LABEL_5:
    [connectionCopy invalidate];
    goto LABEL_6;
  }

  v10 = +[NSXPCInterface geo_MapsNotificationDaemonFromGeodInterface];
  [connectionCopy setExportedInterface:v10];

  v11 = objc_loadWeakRetained(&self->_mapsPushDaemon);
  [connectionCopy setExportedObject:v11];

LABEL_6:
  [connectionCopy resume];

  return 1;
}

- (GEODaemonToMapsPushDaemonListener)initWithMapsPushDaemon:(id)daemon
{
  daemonCopy = daemon;
  if (daemonCopy)
  {
    v11.receiver = self;
    v11.super_class = GEODaemonToMapsPushDaemonListener;
    v5 = [(GEODaemonToMapsPushDaemonListener *)&v11 init];
    p_isa = &v5->super.isa;
    if (v5)
    {
      objc_storeWeak(&v5->_mapsPushDaemon, daemonCopy);
      v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.Maps.mapspushd.geoservices"];
      v8 = p_isa[2];
      p_isa[2] = v7;

      [p_isa[2] setDelegate:p_isa];
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end