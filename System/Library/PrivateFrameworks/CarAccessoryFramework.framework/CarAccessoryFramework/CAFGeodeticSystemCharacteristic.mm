@interface CAFGeodeticSystemCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFGeodeticSystemCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFGeodeticSystemCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  geodeticSystemValue = [(CAFGeodeticSystemCharacteristic *)self geodeticSystemValue];

  return NSStringFromGeodeticSystem(geodeticSystemValue);
}

@end