@interface _DKBatteryPercentageQuantity
+ (id)withBatteryPercentage:(double)percentage;
@end

@implementation _DKBatteryPercentageQuantity

+ (id)withBatteryPercentage:(double)percentage
{
  type = [self type];
  v5 = [_DKQuantity quantityWithDouble:type type:percentage];

  return v5;
}

@end