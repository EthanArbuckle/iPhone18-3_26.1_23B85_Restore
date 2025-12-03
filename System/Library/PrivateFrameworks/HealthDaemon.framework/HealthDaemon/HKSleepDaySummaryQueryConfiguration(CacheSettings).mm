@interface HKSleepDaySummaryQueryConfiguration(CacheSettings)
- (id)cacheIdentifier;
@end

@implementation HKSleepDaySummaryQueryConfiguration(CacheSettings)

- (id)cacheIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  cacheSettings = [self cacheSettings];
  identifier = [cacheSettings identifier];
  v5 = identifier;
  if (identifier)
  {
    v6 = identifier;
  }

  else
  {
    v6 = @"DEFAULT";
  }

  [self options];
  v7 = HKSleepDaySummaryQueryOptionsStringRepresentation();
  v8 = [v2 stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

@end