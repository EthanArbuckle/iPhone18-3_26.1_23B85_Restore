@interface MCProfile(MCUI)
- (uint64_t)isHRNProfile;
@end

@implementation MCProfile(MCUI)

- (uint64_t)isHRNProfile
{
  v1 = [a1 payloadsWithClass:objc_opt_class()];
  v2 = [v1 firstObject];

  v3 = [v2 pollingIntervalMinutes];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
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