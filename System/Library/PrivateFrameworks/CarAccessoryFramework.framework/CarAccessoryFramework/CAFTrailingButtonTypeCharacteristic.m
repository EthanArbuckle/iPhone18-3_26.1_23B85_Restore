@interface CAFTrailingButtonTypeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFTrailingButtonTypeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTrailingButtonTypeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFTrailingButtonTypeCharacteristic *)self trailingButtonTypeValue];

  return NSStringFromTrailingButtonType(v2);
}

@end