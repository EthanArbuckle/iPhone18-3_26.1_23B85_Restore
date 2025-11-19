@interface CAFIcyConditionsCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFIcyConditionsCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFIcyConditionsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFIcyConditionsCharacteristic *)self icyConditionsValue];

  return NSStringFromIcyConditions(v2);
}

@end