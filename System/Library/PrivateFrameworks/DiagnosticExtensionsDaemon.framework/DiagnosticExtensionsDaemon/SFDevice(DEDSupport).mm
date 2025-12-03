@interface SFDevice(DEDSupport)
- (BOOL)isWithinDEDRange;
- (uint64_t)isValidDEDPingDevice;
- (uint64_t)isValidDEDPongDevice;
@end

@implementation SFDevice(DEDSupport)

- (BOOL)isWithinDEDRange
{
  bleDevice = [self bleDevice];
  rssiEstimate = [bleDevice rssiEstimate];

  return rssiEstimate > 0xFFFFFFBF;
}

- (uint64_t)isValidDEDPingDevice
{
  if ([self deviceActionType] != 17 || !objc_msgSend(self, "needsSetup"))
  {
    return 0;
  }

  return [self isWithinDEDRange];
}

- (uint64_t)isValidDEDPongDevice
{
  if ([self deviceActionType] != 18 || !objc_msgSend(self, "needsSetup"))
  {
    return 0;
  }

  return [self isWithinDEDRange];
}

@end