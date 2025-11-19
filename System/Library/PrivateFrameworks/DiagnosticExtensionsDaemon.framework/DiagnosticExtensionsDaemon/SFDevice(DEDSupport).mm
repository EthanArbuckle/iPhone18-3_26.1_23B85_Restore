@interface SFDevice(DEDSupport)
- (BOOL)isWithinDEDRange;
- (uint64_t)isValidDEDPingDevice;
- (uint64_t)isValidDEDPongDevice;
@end

@implementation SFDevice(DEDSupport)

- (BOOL)isWithinDEDRange
{
  v1 = [a1 bleDevice];
  v2 = [v1 rssiEstimate];

  return v2 > 0xFFFFFFBF;
}

- (uint64_t)isValidDEDPingDevice
{
  if ([a1 deviceActionType] != 17 || !objc_msgSend(a1, "needsSetup"))
  {
    return 0;
  }

  return [a1 isWithinDEDRange];
}

- (uint64_t)isValidDEDPongDevice
{
  if ([a1 deviceActionType] != 18 || !objc_msgSend(a1, "needsSetup"))
  {
    return 0;
  }

  return [a1 isWithinDEDRange];
}

@end