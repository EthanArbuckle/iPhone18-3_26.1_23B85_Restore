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
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFEnginePower

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFEnginePower;
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
  v6.super_class = CAFEnginePower;
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
  v6.super_class = CAFEnginePower;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)powerCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000028"];

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
  powerCharacteristic = [(CAFEnginePower *)self powerCharacteristic];
  measurementValue = [powerCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)powerRange
{
  powerCharacteristic = [(CAFEnginePower *)self powerCharacteristic];
  range = [powerCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)powerMeasurementRange
{
  powerRange = [(CAFEnginePower *)self powerRange];
  power = [(CAFEnginePower *)self power];
  unit = [power unit];
  v6 = [powerRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)powerInvalid
{
  powerCharacteristic = [(CAFEnginePower *)self powerCharacteristic];
  isInvalid = [powerCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)powerMinCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000050"];

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
  powerMinCharacteristic = [(CAFEnginePower *)self powerMinCharacteristic];
  measurementValue = [powerMinCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)powerMinRange
{
  powerMinCharacteristic = [(CAFEnginePower *)self powerMinCharacteristic];
  range = [powerMinCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)powerMinMeasurementRange
{
  powerMinRange = [(CAFEnginePower *)self powerMinRange];
  powerMin = [(CAFEnginePower *)self powerMin];
  unit = [powerMin unit];
  v6 = [powerMinRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFMeasurementCharacteristic)powerMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000051"];

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
  powerMaxCharacteristic = [(CAFEnginePower *)self powerMaxCharacteristic];
  measurementValue = [powerMaxCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)powerMaxRange
{
  powerMaxCharacteristic = [(CAFEnginePower *)self powerMaxCharacteristic];
  range = [powerMaxCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)powerMaxMeasurementRange
{
  powerMaxRange = [(CAFEnginePower *)self powerMaxRange];
  powerMax = [(CAFEnginePower *)self powerMax];
  unit = [powerMax unit];
  v6 = [powerMaxRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFMeasurementCharacteristic)powerMarkerAvailableMinCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000052"];

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
  powerMarkerAvailableMinCharacteristic = [(CAFEnginePower *)self powerMarkerAvailableMinCharacteristic];
  measurementValue = [powerMarkerAvailableMinCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)powerMarkerAvailableMinRange
{
  powerMarkerAvailableMinCharacteristic = [(CAFEnginePower *)self powerMarkerAvailableMinCharacteristic];
  range = [powerMarkerAvailableMinCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)powerMarkerAvailableMinMeasurementRange
{
  powerMarkerAvailableMinRange = [(CAFEnginePower *)self powerMarkerAvailableMinRange];
  powerMarkerAvailableMin = [(CAFEnginePower *)self powerMarkerAvailableMin];
  unit = [powerMarkerAvailableMin unit];
  v6 = [powerMarkerAvailableMinRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasPowerMarkerAvailableMin
{
  powerMarkerAvailableMinCharacteristic = [(CAFEnginePower *)self powerMarkerAvailableMinCharacteristic];
  v3 = powerMarkerAvailableMinCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)powerMarkerAvailableMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000053"];

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
  powerMarkerAvailableMaxCharacteristic = [(CAFEnginePower *)self powerMarkerAvailableMaxCharacteristic];
  measurementValue = [powerMarkerAvailableMaxCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)powerMarkerAvailableMaxRange
{
  powerMarkerAvailableMaxCharacteristic = [(CAFEnginePower *)self powerMarkerAvailableMaxCharacteristic];
  range = [powerMarkerAvailableMaxCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)powerMarkerAvailableMaxMeasurementRange
{
  powerMarkerAvailableMaxRange = [(CAFEnginePower *)self powerMarkerAvailableMaxRange];
  powerMarkerAvailableMax = [(CAFEnginePower *)self powerMarkerAvailableMax];
  unit = [powerMarkerAvailableMax unit];
  v6 = [powerMarkerAvailableMaxRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasPowerMarkerAvailableMax
{
  powerMarkerAvailableMaxCharacteristic = [(CAFEnginePower *)self powerMarkerAvailableMaxCharacteristic];
  v3 = powerMarkerAvailableMaxCharacteristic != 0;

  return v3;
}

- (CAFPowerStateCharacteristic)powerStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000067"];

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
  powerStateCharacteristic = [(CAFEnginePower *)self powerStateCharacteristic];
  powerStateValue = [powerStateCharacteristic powerStateValue];

  return powerStateValue;
}

- (BOOL)hasPowerState
{
  powerStateCharacteristic = [(CAFEnginePower *)self powerStateCharacteristic];
  v3 = powerStateCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForPower
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000028"];

  return v10;
}

- (BOOL)registeredForPowerMin
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000050"];

  return v10;
}

- (BOOL)registeredForPowerMax
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000051"];

  return v10;
}

- (BOOL)registeredForPowerMarkerAvailableMin
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000052"];

  return v10;
}

- (BOOL)registeredForPowerMarkerAvailableMax
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000053"];

  return v10;
}

- (BOOL)registeredForPowerState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000067"];

  return v10;
}

@end