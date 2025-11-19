@interface CAFTirePressure
+ (void)load;
- (BOOL)hasPressure;
- (BOOL)hasSensorState;
- (BOOL)registeredForPressure;
- (BOOL)registeredForPressureState;
- (BOOL)registeredForSensorState;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFMeasurementCharacteristic)pressureCharacteristic;
- (CAFMeasurementRange)pressureMeasurementRange;
- (CAFPressureStateCharacteristic)pressureStateCharacteristic;
- (CAFSensorStateCharacteristic)sensorStateCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (CAFUInt32Range)pressureRange;
- (NSMeasurement)pressure;
- (NSString)vehicleLayoutKey;
- (id)name;
- (unsigned)pressureState;
- (unsigned)sensorState;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTirePressure

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTirePressure;
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
  v6.super_class = CAFTirePressure;
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
  v6.super_class = CAFTirePressure;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFTirePressure *)self vehicleLayoutKeyCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  return v3;
}

- (CAFSensorStateCharacteristic)sensorStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000001A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001A"];
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

- (unsigned)sensorState
{
  v2 = [(CAFTirePressure *)self sensorStateCharacteristic];
  v3 = [v2 sensorStateValue];

  return v3;
}

- (BOOL)hasSensorState
{
  v2 = [(CAFTirePressure *)self sensorStateCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)pressureCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000001B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001B"];
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

- (NSMeasurement)pressure
{
  v2 = [(CAFTirePressure *)self pressureCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)pressureRange
{
  v2 = [(CAFTirePressure *)self pressureCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)pressureMeasurementRange
{
  v3 = [(CAFTirePressure *)self pressureRange];
  v4 = [(CAFTirePressure *)self pressure];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasPressure
{
  v2 = [(CAFTirePressure *)self pressureCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFPressureStateCharacteristic)pressureStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000001C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001C"];
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

- (unsigned)pressureState
{
  v2 = [(CAFTirePressure *)self pressureStateCharacteristic];
  v3 = [v2 pressureStateValue];

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
  v2 = [(CAFTirePressure *)self vehicleLayoutKeyCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)registeredForSensorState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000001A"];

  return v10;
}

- (BOOL)registeredForPressure
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000001B"];

  return v10;
}

- (BOOL)registeredForPressureState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000001C"];

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