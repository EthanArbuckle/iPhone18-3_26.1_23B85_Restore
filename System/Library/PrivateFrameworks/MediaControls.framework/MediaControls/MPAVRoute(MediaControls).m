@interface MPAVRoute(MediaControls)
- (BOOL)isWiredDevice;
- (uint64_t)isActiveGroupSession;
- (uint64_t)isGroupSession;
- (uint64_t)isHostedGroupSession;
- (uint64_t)isLocalDeviceOrHeadphone;
@end

@implementation MPAVRoute(MediaControls)

- (uint64_t)isLocalDeviceOrHeadphone
{
  if ([a1 isDeviceSpeakerRoute] & 1) != 0 || (objc_msgSend(a1, "isSplitterCapable"))
  {
    return 1;
  }

  return [a1 isHeadphonesRoute];
}

- (BOOL)isWiredDevice
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 outputDevices];
  v3 = [v2 msv_firstWhere:&__block_literal_global_9];
  v4 = v3 != 0;

  return v4;
}

- (uint64_t)isGroupSession
{
  if ([a1 isDiscoveredGroupSession])
  {
    return 1;
  }

  return [a1 isActiveGroupSession];
}

- (uint64_t)isActiveGroupSession
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [a1 endpointObject];
  v4 = [v3 groupSessionInfo];
  v2 = v4 != 0;

  return v2;
}

- (uint64_t)isHostedGroupSession
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 groupSessionInfo];
    v3 = [v2 isHosted];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v2 = [a1 endpointObject];
    v4 = [v2 groupSessionInfo];
    v3 = [v4 isHosted];
  }

  return v3;
}

@end