@interface CAFDisplayUnits
+ (void)load;
- (BOOL)hasEnergyEfficiencyUnitRawValue;
- (BOOL)hasFuelEfficiencyUnitRawValue;
- (BOOL)registeredForDistanceUnit;
- (BOOL)registeredForEnergyEfficiencyUnit;
- (BOOL)registeredForFuelEfficiencyUnit;
- (BOOL)registeredForSpeedUnit;
- (BOOL)registeredForTemperatureUnit;
- (CAFUnitEnergyEfficiency)energyEfficiencyUnit;
- (CAFUnitTypeCharacteristic)distanceUnitRawValueCharacteristic;
- (CAFUnitTypeCharacteristic)energyEfficiencyUnitRawValueCharacteristic;
- (CAFUnitTypeCharacteristic)fuelEfficiencyUnitRawValueCharacteristic;
- (CAFUnitTypeCharacteristic)speedUnitRawValueCharacteristic;
- (CAFUnitTypeCharacteristic)temperatureUnitRawValueCharacteristic;
- (NSUnitFuelEfficiency)fuelEfficiencyUnit;
- (NSUnitLength)distanceUnit;
- (NSUnitSpeed)speedUnit;
- (NSUnitTemperature)temperatureUnit;
- (unsigned)distanceUnitRawValue;
- (unsigned)energyEfficiencyUnitRawValue;
- (unsigned)fuelEfficiencyUnitRawValue;
- (unsigned)speedUnitRawValue;
- (unsigned)temperatureUnitRawValue;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFDisplayUnits

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFDisplayUnits;
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
  v6.super_class = CAFDisplayUnits;
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
  v6.super_class = CAFDisplayUnits;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFUnitTypeCharacteristic)speedUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000046000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000001"];
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

- (unsigned)speedUnitRawValue
{
  v2 = [(CAFDisplayUnits *)self speedUnitRawValueCharacteristic];
  v3 = [v2 unitTypeValue];

  return v3;
}

- (NSUnitSpeed)speedUnit
{
  objc_opt_class();
  v3 = [(CAFDisplayUnits *)self speedUnitRawValueCharacteristic];
  v4 = [v3 unitValue];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CAFUnitTypeCharacteristic)distanceUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000046000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000004"];
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

- (unsigned)distanceUnitRawValue
{
  v2 = [(CAFDisplayUnits *)self distanceUnitRawValueCharacteristic];
  v3 = [v2 unitTypeValue];

  return v3;
}

- (NSUnitLength)distanceUnit
{
  objc_opt_class();
  v3 = [(CAFDisplayUnits *)self distanceUnitRawValueCharacteristic];
  v4 = [v3 unitValue];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CAFUnitTypeCharacteristic)temperatureUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000046000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000005"];
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

- (unsigned)temperatureUnitRawValue
{
  v2 = [(CAFDisplayUnits *)self temperatureUnitRawValueCharacteristic];
  v3 = [v2 unitTypeValue];

  return v3;
}

- (NSUnitTemperature)temperatureUnit
{
  objc_opt_class();
  v3 = [(CAFDisplayUnits *)self temperatureUnitRawValueCharacteristic];
  v4 = [v3 unitValue];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CAFUnitTypeCharacteristic)energyEfficiencyUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000046000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000010"];
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

- (unsigned)energyEfficiencyUnitRawValue
{
  v2 = [(CAFDisplayUnits *)self energyEfficiencyUnitRawValueCharacteristic];
  v3 = [v2 unitTypeValue];

  return v3;
}

- (CAFUnitEnergyEfficiency)energyEfficiencyUnit
{
  objc_opt_class();
  v3 = [(CAFDisplayUnits *)self energyEfficiencyUnitRawValueCharacteristic];
  v4 = [v3 unitValue];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasEnergyEfficiencyUnitRawValue
{
  v2 = [(CAFDisplayUnits *)self energyEfficiencyUnitRawValueCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFUnitTypeCharacteristic)fuelEfficiencyUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000046000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000011"];
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

- (unsigned)fuelEfficiencyUnitRawValue
{
  v2 = [(CAFDisplayUnits *)self fuelEfficiencyUnitRawValueCharacteristic];
  v3 = [v2 unitTypeValue];

  return v3;
}

- (NSUnitFuelEfficiency)fuelEfficiencyUnit
{
  objc_opt_class();
  v3 = [(CAFDisplayUnits *)self fuelEfficiencyUnitRawValueCharacteristic];
  v4 = [v3 unitValue];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasFuelEfficiencyUnitRawValue
{
  v2 = [(CAFDisplayUnits *)self fuelEfficiencyUnitRawValueCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForSpeedUnit
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000046000001"];

  return v10;
}

- (BOOL)registeredForDistanceUnit
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000046000004"];

  return v10;
}

- (BOOL)registeredForTemperatureUnit
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000046000005"];

  return v10;
}

- (BOOL)registeredForEnergyEfficiencyUnit
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000046000010"];

  return v10;
}

- (BOOL)registeredForFuelEfficiencyUnit
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000046000011"];

  return v10;
}

@end