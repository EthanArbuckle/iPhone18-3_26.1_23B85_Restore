@interface CAFTemperature
+ (void)load;
- (BOOL)currentTemperatureInvalid;
- (BOOL)hasCurrentTemperature;
- (BOOL)hasOn;
- (BOOL)on;
- (BOOL)onDisabled;
- (BOOL)onInvalid;
- (BOOL)onRestricted;
- (BOOL)registeredForCurrentTemperature;
- (BOOL)registeredForOn;
- (BOOL)registeredForTargetTemperature;
- (BOOL)registeredForVehicleLayoutKey;
- (BOOL)targetTemperatureDisabled;
- (BOOL)targetTemperatureInvalid;
- (BOOL)targetTemperatureRestricted;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFFloatRange)currentTemperatureRange;
- (CAFFloatRange)targetTemperatureRange;
- (CAFMeasurementCharacteristic)currentTemperatureCharacteristic;
- (CAFMeasurementCharacteristic)targetTemperatureCharacteristic;
- (CAFMeasurementRange)currentTemperatureMeasurementRange;
- (CAFMeasurementRange)targetTemperatureMeasurementRange;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSMeasurement)currentTemperature;
- (NSMeasurement)targetTemperature;
- (NSString)vehicleLayoutKey;
- (id)name;
- (void)registerObserver:(id)a3;
- (void)setTargetTemperature:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTemperature

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTemperature;
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
  v6.super_class = CAFTemperature;
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
  v6.super_class = CAFTemperature;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFTemperature *)self vehicleLayoutKeyCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  return v3;
}

- (CAFMeasurementCharacteristic)currentTemperatureCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000019"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000019"];
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

- (NSMeasurement)currentTemperature
{
  v2 = [(CAFTemperature *)self currentTemperatureCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)currentTemperatureRange
{
  v2 = [(CAFTemperature *)self currentTemperatureCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)currentTemperatureMeasurementRange
{
  v3 = [(CAFTemperature *)self currentTemperatureRange];
  v4 = [(CAFTemperature *)self currentTemperature];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasCurrentTemperature
{
  v2 = [(CAFTemperature *)self currentTemperatureCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)currentTemperatureInvalid
{
  v2 = [(CAFTemperature *)self currentTemperatureCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)targetTemperatureCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000017"];
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

- (NSMeasurement)targetTemperature
{
  v2 = [(CAFTemperature *)self targetTemperatureCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (void)setTargetTemperature:(id)a3
{
  v4 = a3;
  v5 = [(CAFTemperature *)self targetTemperatureCharacteristic];
  [v5 setMeasurementValue:v4];
}

- (CAFFloatRange)targetTemperatureRange
{
  v2 = [(CAFTemperature *)self targetTemperatureCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)targetTemperatureMeasurementRange
{
  v3 = [(CAFTemperature *)self targetTemperatureRange];
  v4 = [(CAFTemperature *)self targetTemperature];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)targetTemperatureDisabled
{
  v2 = [(CAFTemperature *)self targetTemperatureCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (BOOL)targetTemperatureInvalid
{
  v2 = [(CAFTemperature *)self targetTemperatureCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)targetTemperatureRestricted
{
  v2 = [(CAFTemperature *)self targetTemperatureCharacteristic];
  v3 = [v2 isRestricted];

  return v3;
}

- (CAFBoolCharacteristic)onCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000002"];
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

- (BOOL)on
{
  v2 = [(CAFTemperature *)self onCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasOn
{
  v2 = [(CAFTemperature *)self onCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)onDisabled
{
  v2 = [(CAFTemperature *)self onCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (BOOL)onInvalid
{
  v2 = [(CAFTemperature *)self onCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)onRestricted
{
  v2 = [(CAFTemperature *)self onCharacteristic];
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
  v2 = [(CAFTemperature *)self vehicleLayoutKeyCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)registeredForCurrentTemperature
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000019"];

  return v10;
}

- (BOOL)registeredForTargetTemperature
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000017"];

  return v10;
}

- (BOOL)registeredForOn
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000002"];

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