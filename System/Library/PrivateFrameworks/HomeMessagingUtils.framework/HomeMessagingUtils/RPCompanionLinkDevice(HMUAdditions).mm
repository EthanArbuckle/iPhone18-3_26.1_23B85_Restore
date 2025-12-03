@interface RPCompanionLinkDevice(HMUAdditions)
- (BOOL)hmu_isAccessory;
- (unint64_t)hmu_isPairedCompanion;
@end

@implementation RPCompanionLinkDevice(HMUAdditions)

- (BOOL)hmu_isAccessory
{
  homeKitIdentifier = [self homeKitIdentifier];
  v2 = homeKitIdentifier != 0;

  return v2;
}

- (unint64_t)hmu_isPairedCompanion
{
  if (([self statusFlags] & 0x40) != 0)
  {
    return ([self statusFlags] >> 19) & 1;
  }

  else
  {
    return 0;
  }
}

@end