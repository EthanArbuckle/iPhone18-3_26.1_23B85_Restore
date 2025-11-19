@interface HMCameraBulletinBoardSmartNotification(HFAdditions)
- (uint64_t)hf_enabledPersonFamiliarityOptions;
- (uint64_t)hf_enabledSignificantEventTypes;
@end

@implementation HMCameraBulletinBoardSmartNotification(HFAdditions)

- (uint64_t)hf_enabledSignificantEventTypes
{
  if (![a1 isEnabled])
  {
    return 0;
  }

  return [a1 significantEventTypes];
}

- (uint64_t)hf_enabledPersonFamiliarityOptions
{
  if (![a1 isEnabled])
  {
    return 0;
  }

  return [a1 personFamiliarityOptions];
}

@end