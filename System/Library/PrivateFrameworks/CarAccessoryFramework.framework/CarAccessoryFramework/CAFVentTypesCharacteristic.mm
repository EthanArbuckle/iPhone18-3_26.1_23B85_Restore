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
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFVentTypesCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)hasWindow
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:1];
}

- (BOOL)hasUpper
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:2];
}

- (BOOL)hasLower
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:4];
}

- (BOOL)hasNeck
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:8];
}

- (BOOL)hasMiddle
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return [CAFBitMaskUtilities bitmask:ventTypesValue hasOption:16];
}

- (id)formattedValue
{
  ventTypesValue = [(CAFVentTypesCharacteristic *)self ventTypesValue];

  return NSStringFromVentTypes(ventTypesValue);
}

@end