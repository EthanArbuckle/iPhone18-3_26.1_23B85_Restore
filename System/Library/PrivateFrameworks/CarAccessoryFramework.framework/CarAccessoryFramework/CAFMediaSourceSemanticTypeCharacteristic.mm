@interface CAFMediaSourceSemanticTypeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFMediaSourceSemanticTypeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFMediaSourceSemanticTypeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFMediaSourceSemanticTypeCharacteristic *)self mediaSourceSemanticTypeValue];

  return NSStringFromMediaSourceSemanticType(v2);
}

@end