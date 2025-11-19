@interface CAFEnginePower
+ (void)load;
- (BOOL)hasPowerMarkerAvailableMax;
- (BOOL)hasPowerMarkerAvailableMin;
- (BOOL)hasPowerState;
- (BOOL)powerInvalid;
- (BOOL)registeredForPower;
- (BOOL)registeredForPowerMarkerAvailableMax;
- (BOOL)registeredForPowerMarkerAvailableMin;
- (BOOL)registeredForPowerMax;
- (BOOL)registeredForPowerMin;
- (BOOL)registeredForPowerState;
- (CAFInt32Range)powerMarkerAvailableMaxRange;
- (CAFInt32Range)powerMarkerAvailableMinRange;
- (CAFInt32Range)powerMaxRange;
- (CAFInt32Range)powerMinRange;
- (CAFInt32Range)powerRange;
- (CAFMeasurementCharacteristic)powerCharacteristic;
- (CAFMeasurementCharacteristic)powerMarkerAvailableMaxCharacteristic;
- (CAFMeasurementCharacteristic)powerMarkerAvailableMinCharacteristic;
- (CAFMeasurementCharacteristic)powerMaxCharacteristic;
- (CAFMeasurementCharacteristic)powerMinCharacteristic;
- (CAFMeasurementRange)powerMarkerAvailableMaxMeasurementRange;
- (CAFMeasurementRange)powerMarkerAvailableMinMeasurementRange;
- (CAFMeasurementRange)powerMaxMeasurementRange;
- (CAFMeasurementRange)powerMeasurementRange;
- (CAFMeasurementRange)powerMinMeasurementRange;
- (CAFPowerStateCharacteristic)powerStateCharacteristic;
- (NSMeasurement)power;
- (NSMeasurement)powerMarkerAvailableMax;
- (NSMeasurement)powerMarkerAvailableMin;
- (NSMeasurement)powerMax;
- (NSMeasurement)powerMin;
- (unsigned)powerState;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFEnginePower

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFEnginePower;
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
  v6.super_class = CAFEnginePower;
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
  v6.super_class = CAFEnginePower;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)powerCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000028"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000028"];
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

- (NSMeasurement)power
{
  v2 = [(CAFEnginePower *)self powerCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFInt32Range)powerRange
{
  v2 = [(CAFEnginePower *)self powerCharacteristic];
  v3 = [v2 range];
  v4 = [v3 int32Range];

  return v4;
}

- (CAFMeasurementRange)powerMeasurementRange
{
  v3 = [(CAFEnginePower *)self powerRange];
  v4 = [(CAFEnginePower *)self power];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)powerInvalid
{
  v2 = [(CAFEnginePower *)self powerCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)powerMinCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000050"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000050"];
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

- (NSMeasurement)powerMin
{
  v2 = [(CAFEnginePower *)self powerMinCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFInt32Range)powerMinRange
{
  v2 = [(CAFEnginePower *)self powerMinCharacteristic];
  v3 = [v2 range];
  v4 = [v3 int32Range];

  return v4;
}

- (CAFMeasurementRange)powerMinMeasurementRange
{
  v3 = [(CAFEnginePower *)self powerMinRange];
  v4 = [(CAFEnginePower *)self powerMin];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (CAFMeasurementCharacteristic)powerMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000051"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000051"];
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

- (NSMeasurement)powerMax
{
  v2 = [(CAFEnginePower *)self powerMaxCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFInt32Range)powerMaxRange
{
  v2 = [(CAFEnginePower *)self powerMaxCharacteristic];
  v3 = [v2 range];
  v4 = [v3 int32Range];

  return v4;
}

- (CAFMeasurementRange)powerMaxMeasurementRange
{
  v3 = [(CAFEnginePower *)self powerMaxRange];
  v4 = [(CAFEnginePower *)self powerMax];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (CAFMeasurementCharacteristic)powerMarkerAvailableMinCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000052"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000052"];
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

- (NSMeasurement)powerMarkerAvailableMin
{
  v2 = [(CAFEnginePower *)self powerMarkerAvailableMinCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFInt32Range)powerMarkerAvailableMinRange
{
  v2 = [(CAFEnginePower *)self powerMarkerAvailableMinCharacteristic];
  v3 = [v2 range];
  v4 = [v3 int32Range];

  return v4;
}

- (CAFMeasurementRange)powerMarkerAvailableMinMeasurementRange
{
  v3 = [(CAFEnginePower *)self powerMarkerAvailableMinRange];
  v4 = [(CAFEnginePower *)self powerMarkerAvailableMin];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasPowerMarkerAvailableMin
{
  v2 = [(CAFEnginePower *)self powerMarkerAvailableMinCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)powerMarkerAvailableMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000053"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000053"];
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

- (NSMeasurement)powerMarkerAvailableMax
{
  v2 = [(CAFEnginePower *)self powerMarkerAvailableMaxCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFInt32Range)powerMarkerAvailableMaxRange
{
  v2 = [(CAFEnginePower *)self powerMarkerAvailableMaxCharacteristic];
  v3 = [v2 range];
  v4 = [v3 int32Range];

  return v4;
}

- (CAFMeasurementRange)powerMarkerAvailableMaxMeasurementRange
{
  v3 = [(CAFEnginePower *)self powerMarkerAvailableMaxRange];
  v4 = [(CAFEnginePower *)self powerMarkerAvailableMax];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasPowerMarkerAvailableMax
{
  v2 = [(CAFEnginePower *)self powerMarkerAvailableMaxCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFPowerStateCharacteristic)powerStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000067"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000067"];
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

- (unsigned)powerState
{
  v2 = [(CAFEnginePower *)self powerStateCharacteristic];
  v3 = [v2 powerStateValue];

  return v3;
}

- (BOOL)hasPowerState
{
  v2 = [(CAFEnginePower *)self powerStateCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForPower
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000028"];

  return v10;
}

- (BOOL)registeredForPowerMin
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000050"];

  return v10;
}

- (BOOL)registeredForPowerMax
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000051"];

  return v10;
}

- (BOOL)registeredForPowerMarkerAvailableMin
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000052"];

  return v10;
}

- (BOOL)registeredForPowerMarkerAvailableMax
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000053"];

  return v10;
}

- (BOOL)registeredForPowerState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000067"];

  return v10;
}

@end