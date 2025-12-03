@interface CAFFuelLevel
+ (void)load;
- (BOOL)fuelLevelInvalid;
- (BOOL)hasFuelLevelMarkerLow;
- (BOOL)registeredForFillLevelLabel;
- (BOOL)registeredForFuelLevel;
- (BOOL)registeredForFuelLevelMarkerLow;
- (BOOL)registeredForFuelLevelState;
- (BOOL)registeredForPortSideIndicator;
- (CAFFillLevelLabelCharacteristic)fillLevelLabelCharacteristic;
- (CAFFuelLevelStateCharacteristic)fuelLevelStateCharacteristic;
- (CAFMeasurementCharacteristic)fuelLevelCharacteristic;
- (CAFMeasurementCharacteristic)fuelLevelMarkerLowCharacteristic;
- (CAFMeasurementRange)fuelLevelMarkerLowMeasurementRange;
- (CAFMeasurementRange)fuelLevelMeasurementRange;
- (CAFPortSideIndicatorCharacteristic)portSideIndicatorCharacteristic;
- (CAFUInt8Range)fuelLevelMarkerLowRange;
- (CAFUInt8Range)fuelLevelRange;
- (NSMeasurement)fuelLevel;
- (NSMeasurement)fuelLevelMarkerLow;
- (unsigned)fillLevelLabel;
- (unsigned)fuelLevelState;
- (unsigned)portSideIndicator;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFFuelLevel

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFFuelLevel;
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
  v6.super_class = CAFFuelLevel;
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
  v6.super_class = CAFFuelLevel;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)fuelLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000002"];
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

- (NSMeasurement)fuelLevel
{
  fuelLevelCharacteristic = [(CAFFuelLevel *)self fuelLevelCharacteristic];
  measurementValue = [fuelLevelCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt8Range)fuelLevelRange
{
  fuelLevelCharacteristic = [(CAFFuelLevel *)self fuelLevelCharacteristic];
  range = [fuelLevelCharacteristic range];
  uInt8Range = [range uInt8Range];

  return uInt8Range;
}

- (CAFMeasurementRange)fuelLevelMeasurementRange
{
  fuelLevelRange = [(CAFFuelLevel *)self fuelLevelRange];
  fuelLevel = [(CAFFuelLevel *)self fuelLevel];
  unit = [fuelLevel unit];
  v6 = [fuelLevelRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)fuelLevelInvalid
{
  fuelLevelCharacteristic = [(CAFFuelLevel *)self fuelLevelCharacteristic];
  isInvalid = [fuelLevelCharacteristic isInvalid];

  return isInvalid;
}

- (CAFFuelLevelStateCharacteristic)fuelLevelStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000017"];
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

- (unsigned)fuelLevelState
{
  fuelLevelStateCharacteristic = [(CAFFuelLevel *)self fuelLevelStateCharacteristic];
  fuelLevelStateValue = [fuelLevelStateCharacteristic fuelLevelStateValue];

  return fuelLevelStateValue;
}

- (CAFMeasurementCharacteristic)fuelLevelMarkerLowCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004100001A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000004100001A"];
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

- (NSMeasurement)fuelLevelMarkerLow
{
  fuelLevelMarkerLowCharacteristic = [(CAFFuelLevel *)self fuelLevelMarkerLowCharacteristic];
  measurementValue = [fuelLevelMarkerLowCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt8Range)fuelLevelMarkerLowRange
{
  fuelLevelMarkerLowCharacteristic = [(CAFFuelLevel *)self fuelLevelMarkerLowCharacteristic];
  range = [fuelLevelMarkerLowCharacteristic range];
  uInt8Range = [range uInt8Range];

  return uInt8Range;
}

- (CAFMeasurementRange)fuelLevelMarkerLowMeasurementRange
{
  fuelLevelMarkerLowRange = [(CAFFuelLevel *)self fuelLevelMarkerLowRange];
  fuelLevelMarkerLow = [(CAFFuelLevel *)self fuelLevelMarkerLow];
  unit = [fuelLevelMarkerLow unit];
  v6 = [fuelLevelMarkerLowRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasFuelLevelMarkerLow
{
  fuelLevelMarkerLowCharacteristic = [(CAFFuelLevel *)self fuelLevelMarkerLowCharacteristic];
  v3 = fuelLevelMarkerLowCharacteristic != 0;

  return v3;
}

- (CAFFillLevelLabelCharacteristic)fillLevelLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000007"];
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

- (unsigned)fillLevelLabel
{
  fillLevelLabelCharacteristic = [(CAFFuelLevel *)self fillLevelLabelCharacteristic];
  fillLevelLabelValue = [fillLevelLabelCharacteristic fillLevelLabelValue];

  return fillLevelLabelValue;
}

- (CAFPortSideIndicatorCharacteristic)portSideIndicatorCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000013"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000013"];
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

- (unsigned)portSideIndicator
{
  portSideIndicatorCharacteristic = [(CAFFuelLevel *)self portSideIndicatorCharacteristic];
  portSideIndicatorValue = [portSideIndicatorCharacteristic portSideIndicatorValue];

  return portSideIndicatorValue;
}

- (BOOL)registeredForFuelLevel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000002"];

  return v10;
}

- (BOOL)registeredForFuelLevelState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000017"];

  return v10;
}

- (BOOL)registeredForFuelLevelMarkerLow
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004100001A"];

  return v10;
}

- (BOOL)registeredForFillLevelLabel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000007"];

  return v10;
}

- (BOOL)registeredForPortSideIndicator
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000013"];

  return v10;
}

@end