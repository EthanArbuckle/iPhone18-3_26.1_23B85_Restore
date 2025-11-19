@interface CAFExteriorConditions
+ (void)load;
- (BOOL)aqiInvalid;
- (BOOL)hasAqi;
- (BOOL)hasIcyConditions;
- (BOOL)registeredForAQI;
- (BOOL)registeredForIcyConditions;
- (BOOL)registeredForTemperature;
- (BOOL)temperatureInvalid;
- (CAFFloatRange)aqiRange;
- (CAFFloatRange)temperatureRange;
- (CAFIcyConditionsCharacteristic)icyConditionsCharacteristic;
- (CAFMeasurementCharacteristic)aqiCharacteristic;
- (CAFMeasurementCharacteristic)temperatureCharacteristic;
- (CAFMeasurementRange)aqiMeasurementRange;
- (CAFMeasurementRange)temperatureMeasurementRange;
- (NSMeasurement)aqi;
- (NSMeasurement)temperature;
- (unsigned)icyConditions;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFExteriorConditions

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFExteriorConditions;
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
  v6.super_class = CAFExteriorConditions;
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
  v6.super_class = CAFExteriorConditions;
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
  v2 = [(CAFExteriorConditions *)self temperatureCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)temperatureRange
{
  v2 = [(CAFExteriorConditions *)self temperatureCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)temperatureMeasurementRange
{
  v3 = [(CAFExteriorConditions *)self temperatureRange];
  v4 = [(CAFExteriorConditions *)self temperature];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)temperatureInvalid
{
  v2 = [(CAFExteriorConditions *)self temperatureCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFIcyConditionsCharacteristic)icyConditionsCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000051000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000051000005"];
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

- (unsigned)icyConditions
{
  v2 = [(CAFExteriorConditions *)self icyConditionsCharacteristic];
  v3 = [v2 icyConditionsValue];

  return v3;
}

- (BOOL)hasIcyConditions
{
  v2 = [(CAFExteriorConditions *)self icyConditionsCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)aqiCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000010"];
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

- (NSMeasurement)aqi
{
  v2 = [(CAFExteriorConditions *)self aqiCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)aqiRange
{
  v2 = [(CAFExteriorConditions *)self aqiCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)aqiMeasurementRange
{
  v3 = [(CAFExteriorConditions *)self aqiRange];
  v4 = [(CAFExteriorConditions *)self aqi];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasAqi
{
  v2 = [(CAFExteriorConditions *)self aqiCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)aqiInvalid
{
  v2 = [(CAFExteriorConditions *)self aqiCharacteristic];
  v3 = [v2 isInvalid];

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

- (BOOL)registeredForIcyConditions
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000051000005"];

  return v10;
}

- (BOOL)registeredForAQI
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000010"];

  return v10;
}

@end