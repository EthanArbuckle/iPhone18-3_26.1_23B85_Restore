@interface HKSleepDaySummaryQueryConfiguration(CacheSettings)
- (id)cacheIdentifier;
@end

@implementation HKSleepDaySummaryQueryConfiguration(CacheSettings)

- (id)cacheIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 cacheSettings];
  v4 = [v3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"DEFAULT";
  }

  [a1 options];
  v7 = HKSleepDaySummaryQueryOptionsStringRepresentation();
  v8 = [v2 stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

@end