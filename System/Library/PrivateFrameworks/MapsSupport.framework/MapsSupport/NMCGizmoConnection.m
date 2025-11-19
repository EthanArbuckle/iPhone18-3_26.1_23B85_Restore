@interface NMCGizmoConnection
+ (id)sharedInstance;
+ (void)initializePairedDeviceRegistry;
- (BOOL)canSendMessageWithType:(int)a3;
- (BOOL)supportsTransportType:(int)a3;
- (BOOL)supportsXPCUseIPCForStartingCompanionNavigation;
- (BOOL)supportsXPCUseMapsForRoutePlanning;
- (NMCGizmoConnection)init;
- (NRDevice)activeDevice;
- (void)_updateActiveDevice;
- (void)dealloc;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)setActiveDevice:(id)a3;
@end

@implementation NMCGizmoConnection

+ (id)sharedInstance
{
  if (qword_10009E828 != -1)
  {
    sub_100055C84();
  }

  v3 = qword_10009E820;

  return v3;
}

- (NRDevice)activeDevice
{
  v2 = self;
  objc_sync_enter(v2);
  activeDevice = v2->_activeDevice;
  if (!activeDevice)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = [v4 getActivePairedDevice];
    v6 = v2->_activeDevice;
    v2->_activeDevice = v5;

    activeDevice = v2->_activeDevice;
  }

  v7 = activeDevice;
  objc_sync_exit(v2);

  return v7;
}

- (NMCGizmoConnection)init
{
  v8.receiver = self;
  v8.super_class = NMCGizmoConnection;
  v2 = [(NMDeviceConnection *)&v8 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_updateActiveDevice" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v4 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036EC4;
    block[3] = &unk_100084F10;
    v7 = v2;
    dispatch_async(v4, block);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

  v4.receiver = self;
  v4.super_class = NMCGizmoConnection;
  [(NMCGizmoConnection *)&v4 dealloc];
}

+ (void)initializePairedDeviceRegistry
{
  if (qword_10009E830 != -1)
  {
    sub_100055C98();
  }
}

- (BOOL)canSendMessageWithType:(int)a3
{
  v3 = a3 - 305;
  if ((a3 - 305) > 6 || ((0x59u >> v3) & 1) == 0)
  {
    return 1;
  }

  v4 = qword_100065A48[v3];
  return [(NMDeviceConnection *)self protocolVersion]> v4;
}

- (BOOL)supportsTransportType:(int)a3
{
  v5 = [(NMCGizmoConnection *)self activeDevice];

  if (!v5)
  {
    return 0;
  }

  if (a3 != 3)
  {
    return a3 != 6;
  }

  if ([(NMDeviceConnection *)self protocolVersion]> 3)
  {
    return 1;
  }

  v7 = [(NMCGizmoConnection *)self activeDevice];
  v8 = [v7 valueForProperty:NRDevicePropertySystemVersion];

  v6 = [v8 compare:@"6.2" options:64] != -1;
  return v6;
}

- (void)setActiveDevice:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  activeDevice = obj->_activeDevice;
  obj->_activeDevice = v4;

  objc_sync_exit(obj);
}

- (void)_updateActiveDevice
{
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v4 getActivePairedDevice];
  [(NMCGizmoConnection *)self setActiveDevice:v3];
}

- (BOOL)supportsXPCUseMapsForRoutePlanning
{
  v2 = [(NMCGizmoConnection *)self activeDevice];
  if (GEOConfigGetBOOL())
  {
    if (v2)
    {
      v3 = [v2 valueForProperty:NRDevicePropertySystemVersion];
      v4 = [v3 compare:@"9.0" options:64] != -1;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)supportsXPCUseIPCForStartingCompanionNavigation
{
  v2 = [(NMCGizmoConnection *)self activeDevice];
  if (GEOConfigGetBOOL())
  {
    if (v2)
    {
      v3 = [v2 valueForProperty:NRDevicePropertySystemVersion];
      v4 = [v3 compare:@"9.0" options:64] != -1;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(NMCGizmoConnection *)self _updateActiveDevice];
  v8.receiver = self;
  v8.super_class = NMCGizmoConnection;
  [(NMDeviceConnection *)&v8 service:v7 devicesChanged:v6];
}

@end