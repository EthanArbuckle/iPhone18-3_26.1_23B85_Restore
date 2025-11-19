@interface CAFModuleStatusCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFModuleStatusCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFModuleStatusCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFModuleStatusCharacteristic *)self moduleStatusValue];

  return NSStringFromModuleStatus(v2);
}

@end