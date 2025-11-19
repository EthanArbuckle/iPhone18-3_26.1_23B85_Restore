@interface CAFDefrostTypesCharacteristic
+ (void)load;
- (BOOL)hasBlownAir;
- (BOOL)hasFilament;
- (id)formattedValue;
@end

@implementation CAFDefrostTypesCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFDefrostTypesCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)hasBlownAir
{
  v2 = [(CAFDefrostTypesCharacteristic *)self defrostTypesValue];

  return [CAFBitMaskUtilities bitmask:v2 hasOption:1];
}

- (BOOL)hasFilament
{
  v2 = [(CAFDefrostTypesCharacteristic *)self defrostTypesValue];

  return [CAFBitMaskUtilities bitmask:v2 hasOption:2];
}

- (id)formattedValue
{
  v2 = [(CAFDefrostTypesCharacteristic *)self defrostTypesValue];

  return NSStringFromDefrostTypes(v2);
}

@end