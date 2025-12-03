@interface CAFBatteryLevel
+ (void)load;
- (BOOL)batteryLevelInvalid;
- (BOOL)hasBatteryLevelMarkerCriticalLow;
- (BOOL)hasBatteryLevelMarkerLow;
- (BOOL)registeredForBatteryLevel;
- (BOOL)registeredForBatteryLevelMarkerCriticalLow;
- (BOOL)registeredForBatteryLevelMarkerLow;
- (BOOL)registeredForBatteryLevelState;
- (CAFBatteryLevelStateCharacteristic)batteryLevelStateCharacteristic;
- (CAFMeasurementCharacteristic)batteryLevelCharacteristic;
- (CAFMeasurementCharacteristic)batteryLevelMarkerCriticalLowCharacteristic;
- (CAFMeasurementCharacteristic)batteryLevelMarkerLowCharacteristic;
- (CAFMeasurementRange)batteryLevelMarkerCriticalLowMeasurementRange;
- (CAFMeasurementRange)batteryLevelMarkerLowMeasurementRange;
- (CAFMeasurementRange)batteryLevelMeasurementRange;
- (CAFUInt8Range)batteryLevelMarkerCriticalLowRange;
- (CAFUInt8Range)batteryLevelMarkerLowRange;
- (CAFUInt8Range)batteryLevelRange;
- (NSMeasurement)batteryLevel;
- (NSMeasurement)batteryLevelMarkerCriticalLow;
- (NSMeasurement)batteryLevelMarkerLow;
- (unsigned)batteryLevelState;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFBatteryLevel

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFBatteryLevel;
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
  v6.super_class = CAFBatteryLevel;
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
  v6.super_class = CAFBatteryLevel;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)batteryLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000031"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000031"];
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

- (NSMeasurement)batteryLevel
{
  batteryLevelCharacteristic = [(CAFBatteryLevel *)self batteryLevelCharacteristic];
  measurementValue = [batteryLevelCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt8Range)batteryLevelRange
{
  batteryLevelCharacteristic = [(CAFBatteryLevel *)self batteryLevelCharacteristic];
  range = [batteryLevelCharacteristic range];
  uInt8Range = [range uInt8Range];

  return uInt8Range;
}

- (CAFMeasurementRange)batteryLevelMeasurementRange
{
  batteryLevelRange = [(CAFBatteryLevel *)self batteryLevelRange];
  batteryLevel = [(CAFBatteryLevel *)self batteryLevel];
  unit = [batteryLevel unit];
  v6 = [batteryLevelRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)batteryLevelInvalid
{
  batteryLevelCharacteristic = [(CAFBatteryLevel *)self batteryLevelCharacteristic];
  isInvalid = [batteryLevelCharacteristic isInvalid];

  return isInvalid;
}

- (CAFBatteryLevelStateCharacteristic)batteryLevelStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000035"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000035"];
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

- (unsigned)batteryLevelState
{
  batteryLevelStateCharacteristic = [(CAFBatteryLevel *)self batteryLevelStateCharacteristic];
  batteryLevelStateValue = [batteryLevelStateCharacteristic batteryLevelStateValue];

  return batteryLevelStateValue;
}

- (CAFMeasurementCharacteristic)batteryLevelMarkerLowCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004C"];
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

- (NSMeasurement)batteryLevelMarkerLow
{
  batteryLevelMarkerLowCharacteristic = [(CAFBatteryLevel *)self batteryLevelMarkerLowCharacteristic];
  measurementValue = [batteryLevelMarkerLowCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt8Range)batteryLevelMarkerLowRange
{
  batteryLevelMarkerLowCharacteristic = [(CAFBatteryLevel *)self batteryLevelMarkerLowCharacteristic];
  range = [batteryLevelMarkerLowCharacteristic range];
  uInt8Range = [range uInt8Range];

  return uInt8Range;
}

- (CAFMeasurementRange)batteryLevelMarkerLowMeasurementRange
{
  batteryLevelMarkerLowRange = [(CAFBatteryLevel *)self batteryLevelMarkerLowRange];
  batteryLevelMarkerLow = [(CAFBatteryLevel *)self batteryLevelMarkerLow];
  unit = [batteryLevelMarkerLow unit];
  v6 = [batteryLevelMarkerLowRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasBatteryLevelMarkerLow
{
  batteryLevelMarkerLowCharacteristic = [(CAFBatteryLevel *)self batteryLevelMarkerLowCharacteristic];
  v3 = batteryLevelMarkerLowCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)batteryLevelMarkerCriticalLowCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004D"];
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

- (NSMeasurement)batteryLevelMarkerCriticalLow
{
  batteryLevelMarkerCriticalLowCharacteristic = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLowCharacteristic];
  measurementValue = [batteryLevelMarkerCriticalLowCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt8Range)batteryLevelMarkerCriticalLowRange
{
  batteryLevelMarkerCriticalLowCharacteristic = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLowCharacteristic];
  range = [batteryLevelMarkerCriticalLowCharacteristic range];
  uInt8Range = [range uInt8Range];

  return uInt8Range;
}

- (CAFMeasurementRange)batteryLevelMarkerCriticalLowMeasurementRange
{
  batteryLevelMarkerCriticalLowRange = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLowRange];
  batteryLevelMarkerCriticalLow = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLow];
  unit = [batteryLevelMarkerCriticalLow unit];
  v6 = [batteryLevelMarkerCriticalLowRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasBatteryLevelMarkerCriticalLow
{
  batteryLevelMarkerCriticalLowCharacteristic = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLowCharacteristic];
  v3 = batteryLevelMarkerCriticalLowCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForBatteryLevel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000031"];

  return v10;
}

- (BOOL)registeredForBatteryLevelState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000035"];

  return v10;
}

- (BOOL)registeredForBatteryLevelMarkerLow
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004C"];

  return v10;
}

- (BOOL)registeredForBatteryLevelMarkerCriticalLow
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004D"];

  return v10;
}

@end