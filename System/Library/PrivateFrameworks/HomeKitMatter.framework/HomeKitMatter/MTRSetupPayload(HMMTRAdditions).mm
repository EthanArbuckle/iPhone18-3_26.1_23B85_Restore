@interface MTRSetupPayload(HMMTRAdditions)
- (uint64_t)isEqualAsOnboarding:()HMMTRAdditions;
@end

@implementation MTRSetupPayload(HMMTRAdditions)

- (uint64_t)isEqualAsOnboarding:()HMMTRAdditions
{
  v4 = a3;
  v5 = [self qrCodeString:0];
  v6 = [v4 qrCodeString:0];
  if (v5 | v6 && ![v5 isEqual:v6])
  {
    v9 = 0;
  }

  else
  {
    manualEntryCode = [self manualEntryCode];
    manualEntryCode2 = [v4 manualEntryCode];
    v9 = [manualEntryCode isEqual:manualEntryCode2];
  }

  return v9;
}

@end