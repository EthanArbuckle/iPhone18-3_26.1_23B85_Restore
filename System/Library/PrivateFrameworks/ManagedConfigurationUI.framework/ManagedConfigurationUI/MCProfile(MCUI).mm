@interface MCProfile(MCUI)
- (uint64_t)isHRNProfile;
@end

@implementation MCProfile(MCUI)

- (uint64_t)isHRNProfile
{
  v1 = [self payloadsWithClass:objc_opt_class()];
  firstObject = [v1 firstObject];

  pollingIntervalMinutes = [firstObject pollingIntervalMinutes];
  v4 = pollingIntervalMinutes;
  if (firstObject)
  {
    v5 = pollingIntervalMinutes == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v7 = [v4 isEqualToNumber:v6] ^ 1;
  }

  return v7;
}

@end