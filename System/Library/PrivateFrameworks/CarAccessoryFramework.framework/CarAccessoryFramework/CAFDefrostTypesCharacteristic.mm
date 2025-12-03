@interface CAFDefrostTypesCharacteristic
+ (void)load;
- (BOOL)hasBlownAir;
- (BOOL)hasFilament;
- (id)formattedValue;
@end

@implementation CAFDefrostTypesCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFDefrostTypesCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)hasBlownAir
{
  defrostTypesValue = [(CAFDefrostTypesCharacteristic *)self defrostTypesValue];

  return [CAFBitMaskUtilities bitmask:defrostTypesValue hasOption:1];
}

- (BOOL)hasFilament
{
  defrostTypesValue = [(CAFDefrostTypesCharacteristic *)self defrostTypesValue];

  return [CAFBitMaskUtilities bitmask:defrostTypesValue hasOption:2];
}

- (id)formattedValue
{
  defrostTypesValue = [(CAFDefrostTypesCharacteristic *)self defrostTypesValue];

  return NSStringFromDefrostTypes(defrostTypesValue);
}

@end