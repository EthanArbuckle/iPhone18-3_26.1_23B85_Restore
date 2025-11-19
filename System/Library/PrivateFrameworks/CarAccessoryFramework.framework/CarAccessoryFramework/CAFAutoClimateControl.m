@interface CAFAutoClimateControl
+ (void)load;
- (BOOL)hasIntensity;
- (BOOL)hasLevel;
- (BOOL)hasVehicleLayoutKey;
- (BOOL)intensityDisabled;
- (BOOL)intensityRestricted;
- (BOOL)levelDisabled;
- (BOOL)levelInvalid;
- (BOOL)levelRestricted;
- (BOOL)registeredForAutoModeIntensity;
- (BOOL)registeredForAutoModeLevel;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFAutoModeIntensityCharacteristic)intensityCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (CAFUInt8Characteristic)levelCharacteristic;
- (CAFUInt8Range)levelRange;
- (NSString)vehicleLayoutKey;
- (id)name;
- (unsigned)intensity;
- (unsigned)level;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFAutoClimateControl

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFAutoClimateControl;
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
  v6.super_class = CAFAutoClimateControl;
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
  v6.super_class = CAFAutoClimateControl;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFAutoClimateControl *)self vehicleLayoutKeyCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  return v3;
}

- (CAFUInt8Characteristic)levelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000024"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000024"];
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

- (unsigned)level
{
  v2 = [(CAFAutoClimateControl *)self levelCharacteristic];
  v3 = [v2 uint8Value];

  return v3;
}

- (CAFUInt8Range)levelRange
{
  v2 = [(CAFAutoClimateControl *)self levelCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasLevel
{
  v2 = [(CAFAutoClimateControl *)self levelCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)levelInvalid
{
  v2 = [(CAFAutoClimateControl *)self levelCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)levelDisabled
{
  v2 = [(CAFAutoClimateControl *)self levelCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (BOOL)levelRestricted
{
  v2 = [(CAFAutoClimateControl *)self levelCharacteristic];
  v3 = [v2 isRestricted];

  return v3;
}

- (CAFAutoModeIntensityCharacteristic)intensityCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000028"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000028"];
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

- (unsigned)intensity
{
  v2 = [(CAFAutoClimateControl *)self intensityCharacteristic];
  v3 = [v2 autoModeIntensityValue];

  return v3;
}

- (BOOL)hasIntensity
{
  v2 = [(CAFAutoClimateControl *)self intensityCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)intensityDisabled
{
  v2 = [(CAFAutoClimateControl *)self intensityCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (BOOL)intensityRestricted
{
  v2 = [(CAFAutoClimateControl *)self intensityCharacteristic];
  v3 = [v2 isRestricted];

  return v3;
}

- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000065"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000065"];
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

- (NSString)vehicleLayoutKey
{
  v2 = [(CAFAutoClimateControl *)self vehicleLayoutKeyCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasVehicleLayoutKey
{
  v2 = [(CAFAutoClimateControl *)self vehicleLayoutKeyCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForAutoModeLevel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000024"];

  return v10;
}

- (BOOL)registeredForAutoModeIntensity
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000028"];

  return v10;
}

- (BOOL)registeredForVehicleLayoutKey
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000065"];

  return v10;
}

@end