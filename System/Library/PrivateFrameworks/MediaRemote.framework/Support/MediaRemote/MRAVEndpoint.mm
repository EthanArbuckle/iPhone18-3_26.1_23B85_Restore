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

  v3 = [(MRAVEndpoint *)self outputDevices];
  v4 = [v3 firstObject];
  v5 = [v4 deviceType] != 4;

  return v5;
}

- (BOOL)shouldUseUGLExternalDevice
{
  v3 = +[MRUserSettings currentSettings];
  if ([v3 supportBluehop] && -[MRAVEndpoint isMyDiscoverableUndiscoverableGroupLeader](self, "isMyDiscoverableUndiscoverableGroupLeader"))
  {
    v4 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    v5 = [v4 deviceInfo];
    v6 = [v5 supportsTwoHop] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isMyDUGL
{
  v3 = [(MRAVEndpoint *)self designatedGroupLeader];
  if (([v3 isPrimaryLocalDevice] & 1) != 0 || objc_msgSend(v3, "deviceSubtype") != 19)
  {
    v6 = 0;
  }

  else
  {
    v4 = [(MRAVEndpoint *)self outputDevices];
    v5 = [v4 msv_firstWhere:&stru_1004BFBB0];
    v6 = v5 != 0;
  }

  return v6;
}

- (BOOL)hasASmartDevice
{
  v2 = [(MRAVEndpoint *)self outputDevices];
  v3 = [v2 mr_any:&stru_1004BED00];

  return v3;
}

- (NSArray)remoteSourcedOutputDevices
{
  v2 = [(MRAVEndpoint *)self syncedOutputDevices];
  v3 = [v2 msv_filter:&stru_1004C0458];

  return v3;
}

@end