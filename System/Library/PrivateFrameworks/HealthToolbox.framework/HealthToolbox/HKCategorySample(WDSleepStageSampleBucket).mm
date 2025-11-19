@interface HKCategorySample(WDSleepStageSampleBucket)
- (uint64_t)sleep_belongsInBucket:()WDSleepStageSampleBucket;
@end

@implementation HKCategorySample(WDSleepStageSampleBucket)

- (uint64_t)sleep_belongsInBucket:()WDSleepStageSampleBucket
{
  v4 = [a3 predicate];
  v5 = [v4 evaluateWithObject:a1];

  return v5;
}

@end