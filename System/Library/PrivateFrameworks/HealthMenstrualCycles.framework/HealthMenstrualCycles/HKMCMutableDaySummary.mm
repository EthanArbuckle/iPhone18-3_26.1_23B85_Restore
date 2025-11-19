@interface HKMCMutableDaySummary
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HKMCMutableDaySummary

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKMCDaySummary alloc];

  return [(HKMCDaySummary *)v4 _initFromDaySummary:self];
}

@end