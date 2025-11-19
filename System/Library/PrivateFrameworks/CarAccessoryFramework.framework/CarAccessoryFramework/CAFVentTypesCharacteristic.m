@interface CAFVentTypesCharacteristic
+ (void)load;
- (BOOL)hasLower;
- (BOOL)hasMiddle;
- (BOOL)hasNeck;
- (BOOL)hasUpper;
- (BOOL)hasWindow;
- (id)formattedValue;
@end

@implementation CAFVentTypesCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFVentTypesCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)hasWindow
{
  v2 = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:v2 hasOption:1];
}

- (BOOL)hasUpper
{
  v2 = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:v2 hasOption:2];
}

- (BOOL)hasLower
{
  v2 = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:v2 hasOption:4];
}

- (BOOL)hasNeck
{
  v2 = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:v2 hasOption:8];
}

- (BOOL)hasMiddle
{
  v2 = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:v2 hasOption:16];
}

- (id)formattedValue
{
  v2 = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return NSStringFromVentTypes(v2);
}

@end