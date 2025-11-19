@interface HKSample(DurationProviding)
- (double)duration;
@end

@implementation HKSample(DurationProviding)

- (double)duration
{
  v2 = [a1 endDate];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [a1 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v4 - v6;

  return v7;
}

@end