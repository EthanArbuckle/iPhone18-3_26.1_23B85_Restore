@interface CAFChargingStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFChargingStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFChargingStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFChargingStateCharacteristic *)self chargingStateValue];

  return NSStringFromChargingState(v2);
}

@end