@interface CAFAppearanceModeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFAppearanceModeCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFAppearanceModeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  appearanceModeValue = [(CAFAppearanceModeCharacteristic *)self appearanceModeValue];

  return NSStringFromAppearanceMode(appearanceModeValue);
}

@end