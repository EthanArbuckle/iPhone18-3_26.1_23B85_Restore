@interface _DKBatteryPercentageQuantity
+ (id)withBatteryPercentage:(double)a3;
@end

@implementation _DKBatteryPercentageQuantity

+ (id)withBatteryPercentage:(double)a3
{
  v4 = [a1 type];
  v5 = [_DKQuantity quantityWithDouble:v4 type:a3];

  return v5;
}

@end