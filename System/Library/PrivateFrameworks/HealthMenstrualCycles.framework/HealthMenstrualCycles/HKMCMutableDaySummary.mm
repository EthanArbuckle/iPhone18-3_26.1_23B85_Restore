@interface HKMCMutableDaySummary
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HKMCMutableDaySummary

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKMCDaySummary alloc];

  return [(HKMCDaySummary *)v4 _initFromDaySummary:self];
}

@end