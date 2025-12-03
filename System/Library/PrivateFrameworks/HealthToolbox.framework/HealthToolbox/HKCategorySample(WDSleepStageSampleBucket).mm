@interface HKCategorySample(WDSleepStageSampleBucket)
- (uint64_t)sleep_belongsInBucket:()WDSleepStageSampleBucket;
@end

@implementation HKCategorySample(WDSleepStageSampleBucket)

- (uint64_t)sleep_belongsInBucket:()WDSleepStageSampleBucket
{
  predicate = [a3 predicate];
  v5 = [predicate evaluateWithObject:self];

  return v5;
}

@end