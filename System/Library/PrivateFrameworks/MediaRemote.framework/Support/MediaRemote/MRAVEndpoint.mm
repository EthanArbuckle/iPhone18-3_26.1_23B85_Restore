@interface MRAVEndpoint
- (BOOL)hasASmartDevice;
- (BOOL)isMyDUGL;
- (BOOL)shouldDonate;
- (BOOL)shouldUseUGLExternalDevice;
- (NSArray)remoteSourcedOutputDevices;
@end

@implementation MRAVEndpoint

- (BOOL)shouldDonate
{
  if (![(MRAVEndpoint *)self isLocalEndpoint])
  {
    return 1;
  }

  outputDevices = [(MRAVEndpoint *)self outputDevices];
  firstObject = [outputDevices firstObject];
  v5 = [firstObject deviceType] != 4;

  return v5;
}

- (BOOL)shouldUseUGLExternalDevice
{
  v3 = +[MRUserSettings currentSettings];
  if ([v3 supportBluehop] && -[MRAVEndpoint isMyDiscoverableUndiscoverableGroupLeader](self, "isMyDiscoverableUndiscoverableGroupLeader"))
  {
    v4 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    deviceInfo = [v4 deviceInfo];
    v6 = [deviceInfo supportsTwoHop] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isMyDUGL
{
  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  if (([designatedGroupLeader isPrimaryLocalDevice] & 1) != 0 || objc_msgSend(designatedGroupLeader, "deviceSubtype") != 19)
  {
    v6 = 0;
  }

  else
  {
    outputDevices = [(MRAVEndpoint *)self outputDevices];
    v5 = [outputDevices msv_firstWhere:&stru_1004BFBB0];
    v6 = v5 != 0;
  }

  return v6;
}

- (BOOL)hasASmartDevice
{
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v3 = [outputDevices mr_any:&stru_1004BED00];

  return v3;
}

- (NSArray)remoteSourcedOutputDevices
{
  syncedOutputDevices = [(MRAVEndpoint *)self syncedOutputDevices];
  v3 = [syncedOutputDevices msv_filter:&stru_1004C0458];

  return v3;
}

@end