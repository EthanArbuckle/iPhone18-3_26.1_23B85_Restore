@interface CAFMediaSourceSemanticTypeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFMediaSourceSemanticTypeCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMediaSourceSemanticTypeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  mediaSourceSemanticTypeValue = [(CAFMediaSourceSemanticTypeCharacteristic *)self mediaSourceSemanticTypeValue];

  return NSStringFromMediaSourceSemanticType(mediaSourceSemanticTypeValue);
}

@end