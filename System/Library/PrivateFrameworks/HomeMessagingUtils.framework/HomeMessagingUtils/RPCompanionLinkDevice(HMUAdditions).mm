@interface RPCompanionLinkDevice(HMUAdditions)
- (BOOL)hmu_isAccessory;
- (unint64_t)hmu_isPairedCompanion;
@end

@implementation RPCompanionLinkDevice(HMUAdditions)

- (BOOL)hmu_isAccessory
{
  v1 = [a1 homeKitIdentifier];
  v2 = v1 != 0;

  return v2;
}

- (unint64_t)hmu_isPairedCompanion
{
  if (([a1 statusFlags] & 0x40) != 0)
  {
    return ([a1 statusFlags] >> 19) & 1;
  }

  else
  {
    return 0;
  }
}

@end