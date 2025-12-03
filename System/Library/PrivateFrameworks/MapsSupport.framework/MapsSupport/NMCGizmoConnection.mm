@interface NMCGizmoConnection
+ (id)sharedInstance;
+ (void)initializePairedDeviceRegistry;
- (BOOL)canSendMessageWithType:(int)type;
- (BOOL)supportsTransportType:(int)type;
- (BOOL)supportsXPCUseIPCForStartingCompanionNavigation;
- (BOOL)supportsXPCUseMapsForRoutePlanning;
- (NMCGizmoConnection)init;
- (NRDevice)activeDevice;
- (void)_updateActiveDevice;
- (void)dealloc;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setActiveDevice:(id)device;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeDevice = selfCopy->_activeDevice;
  if (!activeDevice)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v4 getActivePairedDevice];
    v6 = selfCopy->_activeDevice;
    selfCopy->_activeDevice = getActivePairedDevice;

    activeDevice = selfCopy->_activeDevice;
  }

  v7 = activeDevice;
  objc_sync_exit(selfCopy);

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

- (BOOL)canSendMessageWithType:(int)type
{
  v3 = type - 305;
  if ((type - 305) > 6 || ((0x59u >> v3) & 1) == 0)
  {
    return 1;
  }

  v4 = qword_100065A48[v3];
  return [(NMDeviceConnection *)self protocolVersion]> v4;
}

- (BOOL)supportsTransportType:(int)type
{
  activeDevice = [(NMCGizmoConnection *)self activeDevice];

  if (!activeDevice)
  {
    return 0;
  }

  if (type != 3)
  {
    return type != 6;
  }

  if ([(NMDeviceConnection *)self protocolVersion]> 3)
  {
    return 1;
  }

  activeDevice2 = [(NMCGizmoConnection *)self activeDevice];
  v8 = [activeDevice2 valueForProperty:NRDevicePropertySystemVersion];

  v6 = [v8 compare:@"6.2" options:64] != -1;
  return v6;
}

- (void)setActiveDevice:(id)device
{
  deviceCopy = device;
  obj = self;
  objc_sync_enter(obj);
  activeDevice = obj->_activeDevice;
  obj->_activeDevice = deviceCopy;

  objc_sync_exit(obj);
}

- (void)_updateActiveDevice
{
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v4 getActivePairedDevice];
  [(NMCGizmoConnection *)self setActiveDevice:getActivePairedDevice];
}

- (BOOL)supportsXPCUseMapsForRoutePlanning
{
  activeDevice = [(NMCGizmoConnection *)self activeDevice];
  if (GEOConfigGetBOOL())
  {
    if (activeDevice)
    {
      v3 = [activeDevice valueForProperty:NRDevicePropertySystemVersion];
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
  activeDevice = [(NMCGizmoConnection *)self activeDevice];
  if (GEOConfigGetBOOL())
  {
    if (activeDevice)
    {
      v3 = [activeDevice valueForProperty:NRDevicePropertySystemVersion];
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

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  serviceCopy = service;
  [(NMCGizmoConnection *)self _updateActiveDevice];
  v8.receiver = self;
  v8.super_class = NMCGizmoConnection;
  [(NMDeviceConnection *)&v8 service:serviceCopy devicesChanged:changedCopy];
}

@end