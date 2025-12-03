@interface MSHistoryMultiPointRoute(MSgEvRoute)
- (double)requiredBatteryCharge;
@end

@implementation MSHistoryMultiPointRoute(MSgEvRoute)

- (double)requiredBatteryCharge
{
  requiredCharge = [self requiredCharge];
  [requiredCharge doubleValue];
  v3 = v2;

  return v3;
}

@end