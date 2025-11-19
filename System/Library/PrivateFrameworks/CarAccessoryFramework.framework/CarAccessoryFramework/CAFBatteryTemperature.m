@interface CAFBatteryTemperature
+ (void)load;
- (BOOL)hasTemperatureMarkerCold;
- (BOOL)hasTemperatureMarkerHot;
- (BOOL)registeredForTemperature;
- (BOOL)registeredForTemperatureMarkerCold;
- (BOOL)registeredForTemperatureMarkerHot;
- (BOOL)registeredForTemperatureMax;
- (BOOL)registeredForTemperatureMin;
- (BOOL)registeredForTemperatureState;
- (BOOL)temperatureInvalid;
- (CAFFloatRange)temperatureMarkerColdRange;
- (CAFFloatRange)temperatureMarkerHotRange;
- (CAFFloatRange)temperatureMaxRange;
- (CAFFloatRange)temperatureMinRange;
- (CAFFloatRange)temperatureRange;
- (CAFMeasurementCharacteristic)temperatureCharacteristic;
- (CAFMeasurementCharacteristic)temperatureMarkerColdCharacteristic;
- (CAFMeasurementCharacteristic)temperatureMarkerHotCharacteristic;
- (CAFMeasurementCharacteristic)temperatureMaxCharacteristic;
- (CAFMeasurementCharacteristic)temperatureMinCharacteristic;
- (CAFMeasurementRange)temperatureMarkerColdMeasurementRange;
- (CAFMeasurementRange)temperatureMarkerHotMeasurementRange;
- (CAFMeasurementRange)temperatureMaxMeasurementRange;
- (CAFMeasurementRange)temperatureMeasurementRange;
- (CAFMeasurementRange)temperatureMinMeasurementRange;
- (CAFTemperatureStateCharacteristic)temperatureStateCharacteristic;
- (NSMeasurement)temperature;
- (NSMeasurement)temperatureMarkerCold;
- (NSMeasurement)temperatureMarkerHot;
- (NSMeasurement)temperatureMax;
- (NSMeasurement)temperatureMin;
- (unsigned)temperatureState;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFBatteryTemperature

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFBatteryTemperature;
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
  v6.super_class = CAFBatteryTemperature;
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
  v6.super_class = CAFBatteryTemperature;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)temperatureCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000001D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001D"];
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

- (NSMeasurement)temperature
{
  v2 = [(CAFBatteryTemperature *)self temperatureCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)temperatureRange
{
  v2 = [(CAFBatteryTemperature *)self temperatureCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)temperatureMeasurementRange
{
  v3 = [(CAFBatteryTemperature *)self temperatureRange];
  v4 = [(CAFBatteryTemperature *)self temperature];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)temperatureInvalid
{
  v2 = [(CAFBatteryTemperature *)self temperatureCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFTemperatureStateCharacteristic)temperatureStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000001E"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001E"];
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

- (unsigned)temperatureState
{
  v2 = [(CAFBatteryTemperature *)self temperatureStateCharacteristic];
  v3 = [v2 temperatureStateValue];

  return v3;
}

- (CAFMeasurementCharacteristic)temperatureMinCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000054"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000054"];
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

- (NSMeasurement)temperatureMin
{
  v2 = [(CAFBatteryTemperature *)self temperatureMinCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)temperatureMinRange
{
  v2 = [(CAFBatteryTemperature *)self temperatureMinCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)temperatureMinMeasurementRange
{
  v3 = [(CAFBatteryTemperature *)self temperatureMinRange];
  v4 = [(CAFBatteryTemperature *)self temperatureMin];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (CAFMeasurementCharacteristic)temperatureMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000055"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000055"];
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

- (NSMeasurement)temperatureMax
{
  v2 = [(CAFBatteryTemperature *)self temperatureMaxCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)temperatureMaxRange
{
  v2 = [(CAFBatteryTemperature *)self temperatureMaxCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)temperatureMaxMeasurementRange
{
  v3 = [(CAFBatteryTemperature *)self temperatureMaxRange];
  v4 = [(CAFBatteryTemperature *)self temperatureMax];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (CAFMeasurementCharacteristic)temperatureMarkerColdCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000056"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000056"];
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

- (NSMeasurement)temperatureMarkerCold
{
  v2 = [(CAFBatteryTemperature *)self temperatureMarkerColdCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)temperatureMarkerColdRange
{
  v2 = [(CAFBatteryTemperature *)self temperatureMarkerColdCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)temperatureMarkerColdMeasurementRange
{
  v3 = [(CAFBatteryTemperature *)self temperatureMarkerColdRange];
  v4 = [(CAFBatteryTemperature *)self temperatureMarkerCold];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasTemperatureMarkerCold
{
  v2 = [(CAFBatteryTemperature *)self temperatureMarkerColdCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)temperatureMarkerHotCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000057"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000057"];
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

- (NSMeasurement)temperatureMarkerHot
{
  v2 = [(CAFBatteryTemperature *)self temperatureMarkerHotCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)temperatureMarkerHotRange
{
  v2 = [(CAFBatteryTemperature *)self temperatureMarkerHotCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)temperatureMarkerHotMeasurementRange
{
  v3 = [(CAFBatteryTemperature *)self temperatureMarkerHotRange];
  v4 = [(CAFBatteryTemperature *)self temperatureMarkerHot];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasTemperatureMarkerHot
{
  v2 = [(CAFBatteryTemperature *)self temperatureMarkerHotCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForTemperature
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000001D"];

  return v10;
}

- (BOOL)registeredForTemperatureState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000001E"];

  return v10;
}

- (BOOL)registeredForTemperatureMin
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000054"];

  return v10;
}

- (BOOL)registeredForTemperatureMax
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000055"];

  return v10;
}

- (BOOL)registeredForTemperatureMarkerCold
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000056"];

  return v10;
}

- (BOOL)registeredForTemperatureMarkerHot
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000057"];

  return v10;
}

@end