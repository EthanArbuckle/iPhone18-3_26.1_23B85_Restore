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
  if ([self isDeviceSpeakerRoute] & 1) != 0 || (objc_msgSend(self, "isSplitterCapable"))
  {
    return 1;
  }

  return [self isHeadphonesRoute];
}

- (BOOL)isWiredDevice
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  outputDevices = [self outputDevices];
  v3 = [outputDevices msv_firstWhere:&__block_literal_global_9];
  v4 = v3 != 0;

  return v4;
}

- (uint64_t)isGroupSession
{
  if ([self isDiscoveredGroupSession])
  {
    return 1;
  }

  return [self isActiveGroupSession];
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

  endpointObject = [self endpointObject];
  groupSessionInfo = [endpointObject groupSessionInfo];
  v2 = groupSessionInfo != 0;

  return v2;
}

- (uint64_t)isHostedGroupSession
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    groupSessionInfo = [self groupSessionInfo];
    isHosted = [groupSessionInfo isHosted];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    groupSessionInfo = [self endpointObject];
    v2GroupSessionInfo = [groupSessionInfo groupSessionInfo];
    isHosted = [v2GroupSessionInfo isHosted];
  }

  return isHosted;
}

@end