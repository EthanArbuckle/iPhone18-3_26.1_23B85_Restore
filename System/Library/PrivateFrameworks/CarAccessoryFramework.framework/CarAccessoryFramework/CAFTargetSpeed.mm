@interface CAFTargetSpeed
+ (void)load;
- (BOOL)hasSpeedLimited;
- (BOOL)registeredForSpeedKMH;
- (BOOL)registeredForSpeedLimited;
- (BOOL)registeredForSpeedMPH;
- (BOOL)registeredForTargetSpeedState;
- (BOOL)speedLimited;
- (CAFBoolCharacteristic)speedLimitedCharacteristic;
- (CAFMeasurementCharacteristic)speedKMHCharacteristic;
- (CAFMeasurementCharacteristic)speedMPHCharacteristic;
- (CAFMeasurementRange)speedKMHMeasurementRange;
- (CAFMeasurementRange)speedMPHMeasurementRange;
- (CAFTargetSpeedStateCharacteristic)targetSpeedStateCharacteristic;
- (CAFUInt32Range)speedKMHRange;
- (CAFUInt32Range)speedMPHRange;
- (NSMeasurement)speedKMH;
- (NSMeasurement)speedMPH;
- (unsigned)targetSpeedState;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTargetSpeed

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTargetSpeed;
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
  v6.super_class = CAFTargetSpeed;
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
  v6.super_class = CAFTargetSpeed;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFTargetSpeedStateCharacteristic)targetSpeedStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000005"];
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

- (unsigned)targetSpeedState
{
  targetSpeedStateCharacteristic = [(CAFTargetSpeed *)self targetSpeedStateCharacteristic];
  targetSpeedStateValue = [targetSpeedStateCharacteristic targetSpeedStateValue];

  return targetSpeedStateValue;
}

- (CAFMeasurementCharacteristic)speedKMHCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000046"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000046"];
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

- (NSMeasurement)speedKMH
{
  speedKMHCharacteristic = [(CAFTargetSpeed *)self speedKMHCharacteristic];
  measurementValue = [speedKMHCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)speedKMHRange
{
  speedKMHCharacteristic = [(CAFTargetSpeed *)self speedKMHCharacteristic];
  range = [speedKMHCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)speedKMHMeasurementRange
{
  speedKMHRange = [(CAFTargetSpeed *)self speedKMHRange];
  speedKMH = [(CAFTargetSpeed *)self speedKMH];
  unit = [speedKMH unit];
  v6 = [speedKMHRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFMeasurementCharacteristic)speedMPHCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000047"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000047"];
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

- (NSMeasurement)speedMPH
{
  speedMPHCharacteristic = [(CAFTargetSpeed *)self speedMPHCharacteristic];
  measurementValue = [speedMPHCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)speedMPHRange
{
  speedMPHCharacteristic = [(CAFTargetSpeed *)self speedMPHCharacteristic];
  range = [speedMPHCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)speedMPHMeasurementRange
{
  speedMPHRange = [(CAFTargetSpeed *)self speedMPHRange];
  speedMPH = [(CAFTargetSpeed *)self speedMPH];
  unit = [speedMPH unit];
  v6 = [speedMPHRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFBoolCharacteristic)speedLimitedCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004500001C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000004500001C"];
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

- (BOOL)speedLimited
{
  speedLimitedCharacteristic = [(CAFTargetSpeed *)self speedLimitedCharacteristic];
  bOOLValue = [speedLimitedCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasSpeedLimited
{
  speedLimitedCharacteristic = [(CAFTargetSpeed *)self speedLimitedCharacteristic];
  v3 = speedLimitedCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForTargetSpeedState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000005"];

  return v10;
}

- (BOOL)registeredForSpeedKMH
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000046"];

  return v10;
}

- (BOOL)registeredForSpeedMPH
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000047"];

  return v10;
}

- (BOOL)registeredForSpeedLimited
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004500001C"];

  return v10;
}

@end