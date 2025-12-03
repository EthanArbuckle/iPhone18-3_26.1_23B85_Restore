@interface HMCameraBulletinBoardSmartNotification(HFAdditions)
- (uint64_t)hf_enabledPersonFamiliarityOptions;
- (uint64_t)hf_enabledSignificantEventTypes;
@end

@implementation HMCameraBulletinBoardSmartNotification(HFAdditions)

- (uint64_t)hf_enabledSignificantEventTypes
{
  if (![self isEnabled])
  {
    return 0;
  }

  return [self significantEventTypes];
}

- (uint64_t)hf_enabledPersonFamiliarityOptions
{
  if (![self isEnabled])
  {
    return 0;
  }

  return [self personFamiliarityOptions];
}

@end