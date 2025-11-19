@interface CAFCellularTypeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFCellularTypeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFCellularTypeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFCellularTypeCharacteristic *)self cellularTypeValue];

  return NSStringFromCellularType(v2);
}

@end