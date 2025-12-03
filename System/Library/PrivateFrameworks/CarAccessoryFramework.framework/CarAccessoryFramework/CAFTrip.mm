@interface CAFTrip
+ (void)load;
- (BOOL)averageSpeedInvalid;
- (BOOL)distanceInvalid;
- (BOOL)durationInvalid;
- (BOOL)energyEfficiencyInvalid;
- (BOOL)energyInvalid;
- (BOOL)fuelEfficiencyInvalid;
- (BOOL)hasAverageSpeed;
- (BOOL)hasDistance;
- (BOOL)hasDuration;
- (BOOL)hasEnergy;
- (BOOL)hasEnergyEfficiency;
- (BOOL)hasFuelEfficiency;
- (BOOL)hasReset;
- (BOOL)hasShowOdometer;
- (BOOL)hasUserVisibleLabel;
- (BOOL)registeredForAverageSpeed;
- (BOOL)registeredForDistance;
- (BOOL)registeredForDuration;
- (BOOL)registeredForEnergy;
- (BOOL)registeredForEnergyEfficiency;
- (BOOL)registeredForFuelEfficiency;
- (BOOL)registeredForReset;
- (BOOL)registeredForShowOdometer;
- (BOOL)registeredForSortOrder;
- (BOOL)registeredForUserVisibleLabel;
- (BOOL)showOdometer;
- (CAFBoolCharacteristic)showOdometerCharacteristic;
- (CAFInt32Range)energyEfficiencyRange;
- (CAFInt32Range)energyRange;
- (CAFMeasurementCharacteristic)averageSpeedCharacteristic;
- (CAFMeasurementCharacteristic)distanceCharacteristic;
- (CAFMeasurementCharacteristic)durationCharacteristic;
- (CAFMeasurementCharacteristic)energyCharacteristic;
- (CAFMeasurementCharacteristic)energyEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)fuelEfficiencyCharacteristic;
- (CAFMeasurementRange)averageSpeedMeasurementRange;
- (CAFMeasurementRange)distanceMeasurementRange;
- (CAFMeasurementRange)durationMeasurementRange;
- (CAFMeasurementRange)energyEfficiencyMeasurementRange;
- (CAFMeasurementRange)energyMeasurementRange;
- (CAFMeasurementRange)fuelEfficiencyMeasurementRange;
- (CAFResetControl)resetControl;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFUInt32Range)averageSpeedRange;
- (CAFUInt32Range)fuelEfficiencyRange;
- (CAFUInt64Range)distanceRange;
- (CAFUInt64Range)durationRange;
- (CAFUInt8Characteristic)sortOrderCharacteristic;
- (NSMeasurement)averageSpeed;
- (NSMeasurement)distance;
- (NSMeasurement)duration;
- (NSMeasurement)energy;
- (NSMeasurement)energyEfficiency;
- (NSMeasurement)fuelEfficiency;
- (NSString)userVisibleLabel;
- (id)name;
- (unsigned)sortOrder;
- (void)registerObserver:(id)observer;
- (void)resetWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTrip

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTrip;
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
  v6.super_class = CAFTrip;
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
  v6.super_class = CAFTrip;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  sortOrderCharacteristic = [(CAFTrip *)self sortOrderCharacteristic];
  formattedValue = [sortOrderCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  userVisibleLabelCharacteristic = [(CAFTrip *)self userVisibleLabelCharacteristic];
  formattedValue2 = [userVisibleLabelCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFStringCharacteristic)userVisibleLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000001"];
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

- (NSString)userVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFTrip *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFTrip *)self userVisibleLabelCharacteristic];
  v3 = userVisibleLabelCharacteristic != 0;

  return v3;
}

- (CAFUInt8Characteristic)sortOrderCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000003"];
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

- (unsigned)sortOrder
{
  sortOrderCharacteristic = [(CAFTrip *)self sortOrderCharacteristic];
  uint8Value = [sortOrderCharacteristic uint8Value];

  return uint8Value;
}

- (CAFMeasurementCharacteristic)averageSpeedCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000045"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000045"];
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

- (NSMeasurement)averageSpeed
{
  averageSpeedCharacteristic = [(CAFTrip *)self averageSpeedCharacteristic];
  measurementValue = [averageSpeedCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)averageSpeedRange
{
  averageSpeedCharacteristic = [(CAFTrip *)self averageSpeedCharacteristic];
  range = [averageSpeedCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)averageSpeedMeasurementRange
{
  averageSpeedRange = [(CAFTrip *)self averageSpeedRange];
  averageSpeed = [(CAFTrip *)self averageSpeed];
  unit = [averageSpeed unit];
  v6 = [averageSpeedRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasAverageSpeed
{
  averageSpeedCharacteristic = [(CAFTrip *)self averageSpeedCharacteristic];
  v3 = averageSpeedCharacteristic != 0;

  return v3;
}

- (BOOL)averageSpeedInvalid
{
  averageSpeedCharacteristic = [(CAFTrip *)self averageSpeedCharacteristic];
  isInvalid = [averageSpeedCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)distanceCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000022"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000022"];
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

- (NSMeasurement)distance
{
  distanceCharacteristic = [(CAFTrip *)self distanceCharacteristic];
  measurementValue = [distanceCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt64Range)distanceRange
{
  distanceCharacteristic = [(CAFTrip *)self distanceCharacteristic];
  range = [distanceCharacteristic range];
  uInt64Range = [range uInt64Range];

  return uInt64Range;
}

- (CAFMeasurementRange)distanceMeasurementRange
{
  distanceRange = [(CAFTrip *)self distanceRange];
  distance = [(CAFTrip *)self distance];
  unit = [distance unit];
  v6 = [distanceRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasDistance
{
  distanceCharacteristic = [(CAFTrip *)self distanceCharacteristic];
  v3 = distanceCharacteristic != 0;

  return v3;
}

- (BOOL)distanceInvalid
{
  distanceCharacteristic = [(CAFTrip *)self distanceCharacteristic];
  isInvalid = [distanceCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)durationCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000023"];
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

- (NSMeasurement)duration
{
  durationCharacteristic = [(CAFTrip *)self durationCharacteristic];
  measurementValue = [durationCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt64Range)durationRange
{
  durationCharacteristic = [(CAFTrip *)self durationCharacteristic];
  range = [durationCharacteristic range];
  uInt64Range = [range uInt64Range];

  return uInt64Range;
}

- (CAFMeasurementRange)durationMeasurementRange
{
  durationRange = [(CAFTrip *)self durationRange];
  duration = [(CAFTrip *)self duration];
  unit = [duration unit];
  v6 = [durationRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasDuration
{
  durationCharacteristic = [(CAFTrip *)self durationCharacteristic];
  v3 = durationCharacteristic != 0;

  return v3;
}

- (BOOL)durationInvalid
{
  durationCharacteristic = [(CAFTrip *)self durationCharacteristic];
  isInvalid = [durationCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)energyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000025"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000025"];
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

- (NSMeasurement)energy
{
  energyCharacteristic = [(CAFTrip *)self energyCharacteristic];
  measurementValue = [energyCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)energyRange
{
  energyCharacteristic = [(CAFTrip *)self energyCharacteristic];
  range = [energyCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)energyMeasurementRange
{
  energyRange = [(CAFTrip *)self energyRange];
  energy = [(CAFTrip *)self energy];
  unit = [energy unit];
  v6 = [energyRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasEnergy
{
  energyCharacteristic = [(CAFTrip *)self energyCharacteristic];
  v3 = energyCharacteristic != 0;

  return v3;
}

- (BOOL)energyInvalid
{
  energyCharacteristic = [(CAFTrip *)self energyCharacteristic];
  isInvalid = [energyCharacteristic isInvalid];

  return isInvalid;
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
  energyEfficiencyCharacteristic = [(CAFTrip *)self energyEfficiencyCharacteristic];
  measurementValue = [energyEfficiencyCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)energyEfficiencyRange
{
  energyEfficiencyCharacteristic = [(CAFTrip *)self energyEfficiencyCharacteristic];
  range = [energyEfficiencyCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)energyEfficiencyMeasurementRange
{
  energyEfficiencyRange = [(CAFTrip *)self energyEfficiencyRange];
  energyEfficiency = [(CAFTrip *)self energyEfficiency];
  unit = [energyEfficiency unit];
  v6 = [energyEfficiencyRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasEnergyEfficiency
{
  energyEfficiencyCharacteristic = [(CAFTrip *)self energyEfficiencyCharacteristic];
  v3 = energyEfficiencyCharacteristic != 0;

  return v3;
}

- (BOOL)energyEfficiencyInvalid
{
  energyEfficiencyCharacteristic = [(CAFTrip *)self energyEfficiencyCharacteristic];
  isInvalid = [energyEfficiencyCharacteristic isInvalid];

  return isInvalid;
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
  fuelEfficiencyCharacteristic = [(CAFTrip *)self fuelEfficiencyCharacteristic];
  measurementValue = [fuelEfficiencyCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)fuelEfficiencyRange
{
  fuelEfficiencyCharacteristic = [(CAFTrip *)self fuelEfficiencyCharacteristic];
  range = [fuelEfficiencyCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)fuelEfficiencyMeasurementRange
{
  fuelEfficiencyRange = [(CAFTrip *)self fuelEfficiencyRange];
  fuelEfficiency = [(CAFTrip *)self fuelEfficiency];
  unit = [fuelEfficiency unit];
  v6 = [fuelEfficiencyRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasFuelEfficiency
{
  fuelEfficiencyCharacteristic = [(CAFTrip *)self fuelEfficiencyCharacteristic];
  v3 = fuelEfficiencyCharacteristic != 0;

  return v3;
}

- (BOOL)fuelEfficiencyInvalid
{
  fuelEfficiencyCharacteristic = [(CAFTrip *)self fuelEfficiencyCharacteristic];
  isInvalid = [fuelEfficiencyCharacteristic isInvalid];

  return isInvalid;
}

- (CAFBoolCharacteristic)showOdometerCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000016"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000016"];
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

- (BOOL)showOdometer
{
  showOdometerCharacteristic = [(CAFTrip *)self showOdometerCharacteristic];
  bOOLValue = [showOdometerCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasShowOdometer
{
  showOdometerCharacteristic = [(CAFTrip *)self showOdometerCharacteristic];
  v3 = showOdometerCharacteristic != 0;

  return v3;
}

- (CAFResetControl)resetControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x0000000030000062"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)resetWithCompletion:(id)completion
{
  completionCopy = completion;
  resetControl = [(CAFTrip *)self resetControl];
  v6 = resetControl;
  if (resetControl)
  {
    [resetControl resetWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__CAFTrip_resetWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
    dispatch_async(v7, block);
  }
}

void __31__CAFTrip_resetWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasReset
{
  resetControl = [(CAFTrip *)self resetControl];
  v3 = resetControl != 0;

  return v3;
}

- (BOOL)registeredForUserVisibleLabel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

  return v10;
}

- (BOOL)registeredForSortOrder
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000003"];

  return v10;
}

- (BOOL)registeredForAverageSpeed
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000045"];

  return v10;
}

- (BOOL)registeredForDistance
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000022"];

  return v10;
}

- (BOOL)registeredForDuration
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000023"];

  return v10;
}

- (BOOL)registeredForEnergy
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000025"];

  return v10;
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

- (BOOL)registeredForShowOdometer
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000035000016"];

  return v10;
}

- (BOOL)registeredForReset
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x0000000030000062"];

  return v10;
}

@end