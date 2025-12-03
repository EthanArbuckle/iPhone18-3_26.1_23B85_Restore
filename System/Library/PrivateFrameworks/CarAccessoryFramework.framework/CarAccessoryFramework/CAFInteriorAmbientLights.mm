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
- (void)registerObserver:(id)observer;
- (void)setPrimaryColor:(id)color;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFInteriorAmbientLights

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFInteriorAmbientLights;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFInteriorAmbientLights;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
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
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000001"];

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
  primaryColorCharacteristic = [(CAFInteriorAmbientLights *)self primaryColorCharacteristic];
  stringValue = [primaryColorCharacteristic stringValue];

  return stringValue;
}

- (void)setPrimaryColor:(id)color
{
  colorCopy = color;
  primaryColorCharacteristic = [(CAFInteriorAmbientLights *)self primaryColorCharacteristic];
  [primaryColorCharacteristic setStringValue:colorCopy];
}

- (CAFUInt32Characteristic)brightnessCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000002"];

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
  brightnessCharacteristic = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  uint32Value = [brightnessCharacteristic uint32Value];

  return uint32Value;
}

- (CAFUInt32Range)brightnessRange
{
  brightnessCharacteristic = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  range = [brightnessCharacteristic range];

  return range;
}

- (BOOL)hasBrightness
{
  brightnessCharacteristic = [(CAFInteriorAmbientLights *)self brightnessCharacteristic];
  v3 = brightnessCharacteristic != 0;

  return v3;
}

- (CAFSupportedColorsCharacteristic)supportedColorsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000003"];

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
  supportedColorsCharacteristic = [(CAFInteriorAmbientLights *)self supportedColorsCharacteristic];
  supportedColorsValue = [supportedColorsCharacteristic supportedColorsValue];

  return supportedColorsValue;
}

- (BOOL)hasSupportedColors
{
  supportedColorsCharacteristic = [(CAFInteriorAmbientLights *)self supportedColorsCharacteristic];
  v3 = supportedColorsCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForPrimaryColor
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000001"];

  return v10;
}

- (BOOL)registeredForBrightness
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000002"];

  return v10;
}

- (BOOL)registeredForSupportedColors
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000052000003"];

  return v10;
}

@end