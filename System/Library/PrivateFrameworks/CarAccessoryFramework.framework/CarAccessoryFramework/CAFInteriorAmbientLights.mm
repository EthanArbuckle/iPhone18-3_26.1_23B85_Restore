@interface CAFInteriorAmbientLights
+ (void)load;
- (BOOL)hasBrightness;
- (BOOL)hasSupportedColors;
- (BOOL)registeredForBrightness;
- (BOOL)registeredForPrimaryColor;
- (BOOL)registeredForSupportedColors;
- (CAFStringCharacteristic)primaryColorCharacteristic;
- (CAFSupportedColors)supportedColors;
- (CAFSupportedColorsCharacteristic)supportedColorsCharacteristic;
- (CAFUInt32Characteristic)brightnessCharacteristic;
- (CAFUInt32Range)brightnessRange;
- (NSString)primaryColor;
- (unsigned)brightness;
- (void)registerObserver:(id)a3;
- (void)setPrimaryColor:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFInteriorAmbientLights

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFInteriorAmbientLights;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFInteriorAmbientLights;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFInteriorAmbientLights;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)primaryColorCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000052000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000052000001"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)primaryColor
{
  v2 = [(CAFInteriorAmbientLights *)self primaryColorCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (void)setPrimaryColor:(id)a3
{
  v4 = a3;
  v5 = [(CAFInteriorAmbientLights *)self primaryColorCharacteristic];
  [v5 setStringValue:v4];
}

- (CAFUInt32Characteristic)brightnessCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000052000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000052000002"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)brightness
{
  v2 = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  v3 = [v2 uint32Value];

  return v3;
}

- (CAFUInt32Range)brightnessRange
{
  v2 = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasBrightness
{
  v2 = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFSupportedColorsCharacteristic)supportedColorsCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000052000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000052000003"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CAFSupportedColors)supportedColors
{
  v2 = [(CAFInteriorAmbientLights *)self supportedColorsCharacteristic];
  v3 = [v2 supportedColorsValue];

  return v3;
}

- (BOOL)hasSupportedColors
{
  v2 = [(CAFInteriorAmbientLights *)self supportedColorsCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForPrimaryColor
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000052000001"];

  return v10;
}

- (BOOL)registeredForBrightness
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000052000002"];

  return v10;
}

- (BOOL)registeredForSupportedColors
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000052000003"];

  return v10;
}

@end