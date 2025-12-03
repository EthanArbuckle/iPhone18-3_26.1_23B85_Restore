@interface HKHeartRateDisplayTypeContextResult
- (HKHeartRateDisplayTypeContextResult)initWithContext:(int64_t)context statistics:(id)statistics;
- (id)debugDescription;
@end

@implementation HKHeartRateDisplayTypeContextResult

- (HKHeartRateDisplayTypeContextResult)initWithContext:(int64_t)context statistics:(id)statistics
{
  statisticsCopy = statistics;
  v10.receiver = self;
  v10.super_class = HKHeartRateDisplayTypeContextResult;
  v7 = [(HKHeartRateDisplayTypeContextResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(HKHeartRateDisplayTypeContextResult *)v7 setContext:context];
    [(HKHeartRateDisplayTypeContextResult *)v8 setStatistics:statisticsCopy];
  }

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  context = [(HKHeartRateDisplayTypeContextResult *)self context];
  statistics = [(HKHeartRateDisplayTypeContextResult *)self statistics];
  v6 = statistics;
  v7 = @"None";
  if (statistics)
  {
    v7 = statistics;
  }

  v8 = [v3 stringWithFormat:@"Context Display Type: %ld, Statistics: %@", context, v7];

  return v8;
}

@end