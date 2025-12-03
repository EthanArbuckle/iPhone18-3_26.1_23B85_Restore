@interface CAFChargingStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFChargingStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFChargingStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  chargingStateValue = [(CAFChargingStateCharacteristic *)self chargingStateValue];

  return NSStringFromChargingState(chargingStateValue);
}

@end