@interface MTRSetupPayload(HMMTRAdditions)
- (uint64_t)isEqualAsOnboarding:()HMMTRAdditions;
@end

@implementation MTRSetupPayload(HMMTRAdditions)

- (uint64_t)isEqualAsOnboarding:()HMMTRAdditions
{
  v4 = a3;
  v5 = [a1 qrCodeString:0];
  v6 = [v4 qrCodeString:0];
  if (v5 | v6 && ![v5 isEqual:v6])
  {
    v9 = 0;
  }

  else
  {
    v7 = [a1 manualEntryCode];
    v8 = [v4 manualEntryCode];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

@end