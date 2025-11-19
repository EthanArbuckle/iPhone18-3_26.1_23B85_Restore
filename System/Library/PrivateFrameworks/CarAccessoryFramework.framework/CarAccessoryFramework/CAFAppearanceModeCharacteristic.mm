@interface CAFAppearanceModeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFAppearanceModeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFAppearanceModeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFAppearanceModeCharacteristic *)self appearanceModeValue];

  return NSStringFromAppearanceMode(v2);
}

@end