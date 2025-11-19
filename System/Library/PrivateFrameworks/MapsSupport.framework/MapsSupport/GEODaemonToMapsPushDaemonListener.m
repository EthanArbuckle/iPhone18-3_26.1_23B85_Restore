@interface GEODaemonToMapsPushDaemonListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (GEODaemonToMapsPushDaemonListener)init;
- (GEODaemonToMapsPushDaemonListener)initWithMapsPushDaemon:(id)a3;
@end

@implementation GEODaemonToMapsPushDaemonListener

- (GEODaemonToMapsPushDaemonListener)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_mapsPushDaemon);
  if (!WeakRetained)
  {
    [v6 invalidate];
    goto LABEL_5;
  }

  v9 = [v7 valueForEntitlement:@"com.apple.Maps.mapspushd.geod"];

  if (!v9)
  {
LABEL_5:
    [v7 invalidate];
    goto LABEL_6;
  }

  v10 = +[NSXPCInterface geo_MapsNotificationDaemonFromGeodInterface];
  [v7 setExportedInterface:v10];

  v11 = objc_loadWeakRetained(&self->_mapsPushDaemon);
  [v7 setExportedObject:v11];

LABEL_6:
  [v7 resume];

  return 1;
}

- (GEODaemonToMapsPushDaemonListener)initWithMapsPushDaemon:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = GEODaemonToMapsPushDaemonListener;
    v5 = [(GEODaemonToMapsPushDaemonListener *)&v11 init];
    p_isa = &v5->super.isa;
    if (v5)
    {
      objc_storeWeak(&v5->_mapsPushDaemon, v4);
      v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.Maps.mapspushd.geoservices"];
      v8 = p_isa[2];
      p_isa[2] = v7;

      [p_isa[2] setDelegate:p_isa];
    }

    self = p_isa;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end