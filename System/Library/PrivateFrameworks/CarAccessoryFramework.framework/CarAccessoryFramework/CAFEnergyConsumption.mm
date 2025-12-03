@interface CAFEnergyConsumption
+ (void)load;
- (BOOL)averageEnergyEfficiencyInvalid;
- (BOOL)energyEfficiencyInvalid;
- (BOOL)hasAverageEnergyEfficiency;
- (BOOL)hasEnergyEfficiencyMax;
- (BOOL)registeredForAverageEnergyEfficiency;
- (BOOL)registeredForEnergyEfficiency;
- (BOOL)registeredForEnergyEfficiencyMax;
- (CAFInt32Range)averageEnergyEfficiencyRange;
- (CAFInt32Range)energyEfficiencyRange;
- (CAFMeasurementCharacteristic)averageEnergyEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)energyEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)energyEfficiencyMaxCharacteristic;
- (CAFMeasurementRange)averageEnergyEfficiencyMeasurementRange;
- (CAFMeasurementRange)energyEfficiencyMaxMeasurementRange;
- (CAFMeasurementRange)energyEfficiencyMeasurementRange;
- (CAFUInt32Range)energyEfficiencyMaxRange;
- (NSMeasurement)averageEnergyEfficiency;
- (NSMeasurement)energyEfficiency;
- (NSMeasurement)energyEfficiencyMax;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFEnergyConsumption

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFEnergyConsumption;
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
  v6.super_class = CAFEnergyConsumption;
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
  v6.super_class = CAFEnergyConsumption;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)energyEfficiencyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000012"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000012"];
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

- (NSMeasurement)energyEfficiency
{
  energyEfficiencyCharacteristic = [(CAFEnergyConsumption *)self energyEfficiencyCharacteristic];
  measurementValue = [energyEfficiencyCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)energyEfficiencyRange
{
  energyEfficiencyCharacteristic = [(CAFEnergyConsumption *)self energyEfficiencyCharacteristic];
  range = [energyEfficiencyCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)energyEfficiencyMeasurementRange
{
  energyEfficiencyRange = [(CAFEnergyConsumption *)self energyEfficiencyRange];
  energyEfficiency = [(CAFEnergyConsumption *)self energyEfficiency];
  unit = [energyEfficiency unit];
  v6 = [energyEfficiencyRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)energyEfficiencyInvalid
{
  energyEfficiencyCharacteristic = [(CAFEnergyConsumption *)self energyEfficiencyCharacteristic];
  isInvalid = [energyEfficiencyCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)averageEnergyEfficiencyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000017"];
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

- (NSMeasurement)averageEnergyEfficiency
{
  averageEnergyEfficiencyCharacteristic = [(CAFEnergyConsumption *)self averageEnergyEfficiencyCharacteristic];
  measurementValue = [averageEnergyEfficiencyCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)averageEnergyEfficiencyRange
{
  averageEnergyEfficiencyCharacteristic = [(CAFEnergyConsumption *)self averageEnergyEfficiencyCharacteristic];
  range = [averageEnergyEfficiencyCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)averageEnergyEfficiencyMeasurementRange
{
  averageEnergyEfficiencyRange = [(CAFEnergyConsumption *)self averageEnergyEfficiencyRange];
  averageEnergyEfficiency = [(CAFEnergyConsumption *)self averageEnergyEfficiency];
  unit = [averageEnergyEfficiency unit];
  v6 = [averageEnergyEfficiencyRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasAverageEnergyEfficiency
{
  averageEnergyEfficiencyCharacteristic = [(CAFEnergyConsumption *)self averageEnergyEfficiencyCharacteristic];
  v3 = averageEnergyEfficiencyCharacteristic != 0;

  return v3;
}

- (BOOL)averageEnergyEfficiencyInvalid
{
  averageEnergyEfficiencyCharacteristic = [(CAFEnergyConsumption *)self averageEnergyEfficiencyCharacteristic];
  isInvalid = [averageEnergyEfficiencyCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)energyEfficiencyMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000021"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000021"];
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

- (NSMeasurement)energyEfficiencyMax
{
  energyEfficiencyMaxCharacteristic = [(CAFEnergyConsumption *)self energyEfficiencyMaxCharacteristic];
  measurementValue = [energyEfficiencyMaxCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)energyEfficiencyMaxRange
{
  energyEfficiencyMaxCharacteristic = [(CAFEnergyConsumption *)self energyEfficiencyMaxCharacteristic];
  range = [energyEfficiencyMaxCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)energyEfficiencyMaxMeasurementRange
{
  energyEfficiencyMaxRange = [(CAFEnergyConsumption *)self energyEfficiencyMaxRange];
  energyEfficiencyMax = [(CAFEnergyConsumption *)self energyEfficiencyMax];
  unit = [energyEfficiencyMax unit];
  v6 = [energyEfficiencyMaxRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasEnergyEfficiencyMax
{
  energyEfficiencyMaxCharacteristic = [(CAFEnergyConsumption *)self energyEfficiencyMaxCharacteristic];
  v3 = energyEfficiencyMaxCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForEnergyEfficiency
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000012"];

  return v10;
}

- (BOOL)registeredForAverageEnergyEfficiency
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000017"];

  return v10;
}

- (BOOL)registeredForEnergyEfficiencyMax
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000021"];

  return v10;
}

@end