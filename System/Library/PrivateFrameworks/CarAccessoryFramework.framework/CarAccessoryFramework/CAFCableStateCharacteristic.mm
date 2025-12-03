@interface CAFCableStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFCableStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCableStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  cableStateValue = [(CAFCableStateCharacteristic *)self cableStateValue];

  return NSStringFromCableState(cableStateValue);
}

@end