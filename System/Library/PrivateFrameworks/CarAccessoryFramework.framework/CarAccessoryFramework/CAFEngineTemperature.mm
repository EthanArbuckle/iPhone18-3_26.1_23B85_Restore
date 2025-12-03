@interface CAFEngineTemperature
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
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFEngineTemperature

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFEngineTemperature;
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
  v6.super_class = CAFEngineTemperature;
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
  v6.super_class = CAFEngineTemperature;
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
  temperatureCharacteristic = [(CAFEngineTemperature *)self temperatureCharacteristic];
  measurementValue = [temperatureCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureRange
{
  temperatureCharacteristic = [(CAFEngineTemperature *)self temperatureCharacteristic];
  range = [temperatureCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMeasurementRange
{
  temperatureRange = [(CAFEngineTemperature *)self temperatureRange];
  temperature = [(CAFEngineTemperature *)self temperature];
  unit = [temperature unit];
  v6 = [temperatureRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)temperatureInvalid
{
  temperatureCharacteristic = [(CAFEngineTemperature *)self temperatureCharacteristic];
  isInvalid = [temperatureCharacteristic isInvalid];

  return isInvalid;
}

- (CAFTemperatureStateCharacteristic)temperatureStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001E"];

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
  temperatureStateCharacteristic = [(CAFEngineTemperature *)self temperatureStateCharacteristic];
  temperatureStateValue = [temperatureStateCharacteristic temperatureStateValue];

  return temperatureStateValue;
}

- (CAFMeasurementCharacteristic)temperatureMinCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000054"];

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
  temperatureMinCharacteristic = [(CAFEngineTemperature *)self temperatureMinCharacteristic];
  measurementValue = [temperatureMinCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureMinRange
{
  temperatureMinCharacteristic = [(CAFEngineTemperature *)self temperatureMinCharacteristic];
  range = [temperatureMinCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMinMeasurementRange
{
  temperatureMinRange = [(CAFEngineTemperature *)self temperatureMinRange];
  temperatureMin = [(CAFEngineTemperature *)self temperatureMin];
  unit = [temperatureMin unit];
  v6 = [temperatureMinRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFMeasurementCharacteristic)temperatureMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000055"];

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
  temperatureMaxCharacteristic = [(CAFEngineTemperature *)self temperatureMaxCharacteristic];
  measurementValue = [temperatureMaxCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureMaxRange
{
  temperatureMaxCharacteristic = [(CAFEngineTemperature *)self temperatureMaxCharacteristic];
  range = [temperatureMaxCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMaxMeasurementRange
{
  temperatureMaxRange = [(CAFEngineTemperature *)self temperatureMaxRange];
  temperatureMax = [(CAFEngineTemperature *)self temperatureMax];
  unit = [temperatureMax unit];
  v6 = [temperatureMaxRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFMeasurementCharacteristic)temperatureMarkerColdCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000056"];

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
  temperatureMarkerColdCharacteristic = [(CAFEngineTemperature *)self temperatureMarkerColdCharacteristic];
  measurementValue = [temperatureMarkerColdCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureMarkerColdRange
{
  temperatureMarkerColdCharacteristic = [(CAFEngineTemperature *)self temperatureMarkerColdCharacteristic];
  range = [temperatureMarkerColdCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMarkerColdMeasurementRange
{
  temperatureMarkerColdRange = [(CAFEngineTemperature *)self temperatureMarkerColdRange];
  temperatureMarkerCold = [(CAFEngineTemperature *)self temperatureMarkerCold];
  unit = [temperatureMarkerCold unit];
  v6 = [temperatureMarkerColdRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasTemperatureMarkerCold
{
  temperatureMarkerColdCharacteristic = [(CAFEngineTemperature *)self temperatureMarkerColdCharacteristic];
  v3 = temperatureMarkerColdCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)temperatureMarkerHotCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000057"];

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
  temperatureMarkerHotCharacteristic = [(CAFEngineTemperature *)self temperatureMarkerHotCharacteristic];
  measurementValue = [temperatureMarkerHotCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureMarkerHotRange
{
  temperatureMarkerHotCharacteristic = [(CAFEngineTemperature *)self temperatureMarkerHotCharacteristic];
  range = [temperatureMarkerHotCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMarkerHotMeasurementRange
{
  temperatureMarkerHotRange = [(CAFEngineTemperature *)self temperatureMarkerHotRange];
  temperatureMarkerHot = [(CAFEngineTemperature *)self temperatureMarkerHot];
  unit = [temperatureMarkerHot unit];
  v6 = [temperatureMarkerHotRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasTemperatureMarkerHot
{
  temperatureMarkerHotCharacteristic = [(CAFEngineTemperature *)self temperatureMarkerHotCharacteristic];
  v3 = temperatureMarkerHotCharacteristic != 0;

  return v3;
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

- (BOOL)registeredForTemperatureState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001E"];

  return v10;
}

- (BOOL)registeredForTemperatureMin
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000054"];

  return v10;
}

- (BOOL)registeredForTemperatureMax
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000055"];

  return v10;
}

- (BOOL)registeredForTemperatureMarkerCold
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000056"];

  return v10;
}

- (BOOL)registeredForTemperatureMarkerHot
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000057"];

  return v10;
}

@end