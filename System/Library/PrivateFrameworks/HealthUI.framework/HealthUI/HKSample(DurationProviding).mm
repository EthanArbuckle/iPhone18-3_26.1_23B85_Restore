@interface HKSample(DurationProviding)
- (double)duration;
@end

@implementation HKSample(DurationProviding)

- (double)duration
{
  endDate = [self endDate];
  [endDate timeIntervalSinceReferenceDate];
  v4 = v3;
  startDate = [self startDate];
  [startDate timeIntervalSinceReferenceDate];
  v7 = v4 - v6;

  return v7;
}

@end