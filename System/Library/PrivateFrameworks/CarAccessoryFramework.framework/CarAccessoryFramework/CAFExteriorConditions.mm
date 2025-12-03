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
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFExteriorConditions

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFExteriorConditions;
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
  v6.super_class = CAFExteriorConditions;
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
  v6.super_class = CAFExteriorConditions;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)temperatureCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001D"];

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
  temperatureCharacteristic = [(CAFExteriorConditions *)self temperatureCharacteristic];
  measurementValue = [temperatureCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureRange
{
  temperatureCharacteristic = [(CAFExteriorConditions *)self temperatureCharacteristic];
  range = [temperatureCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMeasurementRange
{
  temperatureRange = [(CAFExteriorConditions *)self temperatureRange];
  temperature = [(CAFExteriorConditions *)self temperature];
  unit = [temperature unit];
  v6 = [temperatureRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)temperatureInvalid
{
  temperatureCharacteristic = [(CAFExteriorConditions *)self temperatureCharacteristic];
  isInvalid = [temperatureCharacteristic isInvalid];

  return isInvalid;
}

- (CAFIcyConditionsCharacteristic)icyConditionsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000005"];

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
  icyConditionsCharacteristic = [(CAFExteriorConditions *)self icyConditionsCharacteristic];
  icyConditionsValue = [icyConditionsCharacteristic icyConditionsValue];

  return icyConditionsValue;
}

- (BOOL)hasIcyConditions
{
  icyConditionsCharacteristic = [(CAFExteriorConditions *)self icyConditionsCharacteristic];
  v3 = icyConditionsCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)aqiCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000010"];

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
  aqiCharacteristic = [(CAFExteriorConditions *)self aqiCharacteristic];
  measurementValue = [aqiCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)aqiRange
{
  aqiCharacteristic = [(CAFExteriorConditions *)self aqiCharacteristic];
  range = [aqiCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)aqiMeasurementRange
{
  aqiRange = [(CAFExteriorConditions *)self aqiRange];
  v4 = [(CAFExteriorConditions *)self aqi];
  unit = [v4 unit];
  v6 = [aqiRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasAqi
{
  aqiCharacteristic = [(CAFExteriorConditions *)self aqiCharacteristic];
  v3 = aqiCharacteristic != 0;

  return v3;
}

- (BOOL)aqiInvalid
{
  aqiCharacteristic = [(CAFExteriorConditions *)self aqiCharacteristic];
  isInvalid = [aqiCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)registeredForTemperature
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001D"];

  return v10;
}

- (BOOL)registeredForIcyConditions
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000005"];

  return v10;
}

- (BOOL)registeredForAQI
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000010"];

  return v10;
}

@end