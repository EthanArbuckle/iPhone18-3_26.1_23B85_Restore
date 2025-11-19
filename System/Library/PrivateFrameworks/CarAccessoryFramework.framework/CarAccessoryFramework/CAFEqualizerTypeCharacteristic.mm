@interface CAFEqualizerTypeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFEqualizerTypeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFEqualizerTypeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFEqualizerTypeCharacteristic *)self equalizerTypeValue];

  return NSStringFromEqualizerType(v2);
}

@end