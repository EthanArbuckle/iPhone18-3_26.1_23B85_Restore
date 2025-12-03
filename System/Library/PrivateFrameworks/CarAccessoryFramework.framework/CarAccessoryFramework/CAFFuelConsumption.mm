@interface CAFFuelConsumption
+ (void)load;
- (BOOL)averageFuelEfficiencyInvalid;
- (BOOL)fuelEfficiencyInvalid;
- (BOOL)hasAverageFuelEfficiency;
- (BOOL)hasFuelEfficiencyMax;
- (BOOL)registeredForAverageFuelEfficiency;
- (BOOL)registeredForFuelEfficiency;
- (BOOL)registeredForFuelEfficiencyMax;
- (CAFMeasurementCharacteristic)averageFuelEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)fuelEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)fuelEfficiencyMaxCharacteristic;
- (CAFMeasurementRange)averageFuelEfficiencyMeasurementRange;
- (CAFMeasurementRange)fuelEfficiencyMaxMeasurementRange;
- (CAFMeasurementRange)fuelEfficiencyMeasurementRange;
- (CAFUInt32Range)averageFuelEfficiencyRange;
- (CAFUInt32Range)fuelEfficiencyMaxRange;
- (CAFUInt32Range)fuelEfficiencyRange;
- (NSMeasurement)averageFuelEfficiency;
- (NSMeasurement)fuelEfficiency;
- (NSMeasurement)fuelEfficiencyMax;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFFuelConsumption

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFFuelConsumption;
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
  v6.super_class = CAFFuelConsumption;
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
  v6.super_class = CAFFuelConsumption;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)fuelEfficiencyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000013"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000013"];
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

- (NSMeasurement)fuelEfficiency
{
  fuelEfficiencyCharacteristic = [(CAFFuelConsumption *)self fuelEfficiencyCharacteristic];
  measurementValue = [fuelEfficiencyCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)fuelEfficiencyRange
{
  fuelEfficiencyCharacteristic = [(CAFFuelConsumption *)self fuelEfficiencyCharacteristic];
  range = [fuelEfficiencyCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)fuelEfficiencyMeasurementRange
{
  fuelEfficiencyRange = [(CAFFuelConsumption *)self fuelEfficiencyRange];
  fuelEfficiency = [(CAFFuelConsumption *)self fuelEfficiency];
  unit = [fuelEfficiency unit];
  v6 = [fuelEfficiencyRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)fuelEfficiencyInvalid
{
  fuelEfficiencyCharacteristic = [(CAFFuelConsumption *)self fuelEfficiencyCharacteristic];
  isInvalid = [fuelEfficiencyCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)averageFuelEfficiencyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000018"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000018"];
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

- (NSMeasurement)averageFuelEfficiency
{
  averageFuelEfficiencyCharacteristic = [(CAFFuelConsumption *)self averageFuelEfficiencyCharacteristic];
  measurementValue = [averageFuelEfficiencyCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)averageFuelEfficiencyRange
{
  averageFuelEfficiencyCharacteristic = [(CAFFuelConsumption *)self averageFuelEfficiencyCharacteristic];
  range = [averageFuelEfficiencyCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)averageFuelEfficiencyMeasurementRange
{
  averageFuelEfficiencyRange = [(CAFFuelConsumption *)self averageFuelEfficiencyRange];
  averageFuelEfficiency = [(CAFFuelConsumption *)self averageFuelEfficiency];
  unit = [averageFuelEfficiency unit];
  v6 = [averageFuelEfficiencyRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasAverageFuelEfficiency
{
  averageFuelEfficiencyCharacteristic = [(CAFFuelConsumption *)self averageFuelEfficiencyCharacteristic];
  v3 = averageFuelEfficiencyCharacteristic != 0;

  return v3;
}

- (BOOL)averageFuelEfficiencyInvalid
{
  averageFuelEfficiencyCharacteristic = [(CAFFuelConsumption *)self averageFuelEfficiencyCharacteristic];
  isInvalid = [averageFuelEfficiencyCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)fuelEfficiencyMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000025"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000025"];
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

- (NSMeasurement)fuelEfficiencyMax
{
  fuelEfficiencyMaxCharacteristic = [(CAFFuelConsumption *)self fuelEfficiencyMaxCharacteristic];
  measurementValue = [fuelEfficiencyMaxCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)fuelEfficiencyMaxRange
{
  fuelEfficiencyMaxCharacteristic = [(CAFFuelConsumption *)self fuelEfficiencyMaxCharacteristic];
  range = [fuelEfficiencyMaxCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)fuelEfficiencyMaxMeasurementRange
{
  fuelEfficiencyMaxRange = [(CAFFuelConsumption *)self fuelEfficiencyMaxRange];
  fuelEfficiencyMax = [(CAFFuelConsumption *)self fuelEfficiencyMax];
  unit = [fuelEfficiencyMax unit];
  v6 = [fuelEfficiencyMaxRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasFuelEfficiencyMax
{
  fuelEfficiencyMaxCharacteristic = [(CAFFuelConsumption *)self fuelEfficiencyMaxCharacteristic];
  v3 = fuelEfficiencyMaxCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForFuelEfficiency
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000013"];

  return v10;
}

- (BOOL)registeredForAverageFuelEfficiency
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000018"];

  return v10;
}

- (BOOL)registeredForFuelEfficiencyMax
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000025"];

  return v10;
}

@end