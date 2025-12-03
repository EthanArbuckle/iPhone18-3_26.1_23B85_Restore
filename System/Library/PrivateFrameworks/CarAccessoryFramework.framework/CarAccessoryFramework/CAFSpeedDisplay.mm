@interface CAFSpeedDisplay
+ (void)load;
- (BOOL)registeredForSpeed;
- (BOOL)registeredForSpeedKMH;
- (BOOL)registeredForSpeedMPH;
- (BOOL)speedInvalid;
- (BOOL)speedKMHInvalid;
- (BOOL)speedMPHInvalid;
- (CAFMeasurementCharacteristic)speedCharacteristic;
- (CAFMeasurementCharacteristic)speedKMHCharacteristic;
- (CAFMeasurementCharacteristic)speedMPHCharacteristic;
- (CAFMeasurementRange)speedKMHMeasurementRange;
- (CAFMeasurementRange)speedMPHMeasurementRange;
- (CAFMeasurementRange)speedMeasurementRange;
- (CAFUInt32Range)speedKMHRange;
- (CAFUInt32Range)speedMPHRange;
- (CAFUInt32Range)speedRange;
- (NSMeasurement)speed;
- (NSMeasurement)speedKMH;
- (NSMeasurement)speedMPH;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFSpeedDisplay

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___CAFSpeedDisplay;
    objc_msgSendSuper2(&v4, sel_load);
  }
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
  v6.super_class = CAFSpeedDisplay;
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
  v6.super_class = CAFSpeedDisplay;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)speedCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000021"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000021"];
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

- (NSMeasurement)speed
{
  speedCharacteristic = [(CAFSpeedDisplay *)self speedCharacteristic];
  measurementValue = [speedCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)speedRange
{
  speedCharacteristic = [(CAFSpeedDisplay *)self speedCharacteristic];
  range = [speedCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)speedMeasurementRange
{
  speedRange = [(CAFSpeedDisplay *)self speedRange];
  speed = [(CAFSpeedDisplay *)self speed];
  unit = [speed unit];
  v6 = [speedRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)speedInvalid
{
  speedCharacteristic = [(CAFSpeedDisplay *)self speedCharacteristic];
  isInvalid = [speedCharacteristic isInvalid];

  return isInvalid;
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
  speedKMHCharacteristic = [(CAFSpeedDisplay *)self speedKMHCharacteristic];
  measurementValue = [speedKMHCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)speedKMHRange
{
  speedKMHCharacteristic = [(CAFSpeedDisplay *)self speedKMHCharacteristic];
  range = [speedKMHCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)speedKMHMeasurementRange
{
  speedKMHRange = [(CAFSpeedDisplay *)self speedKMHRange];
  speedKMH = [(CAFSpeedDisplay *)self speedKMH];
  unit = [speedKMH unit];
  v6 = [speedKMHRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)speedKMHInvalid
{
  speedKMHCharacteristic = [(CAFSpeedDisplay *)self speedKMHCharacteristic];
  isInvalid = [speedKMHCharacteristic isInvalid];

  return isInvalid;
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
  speedMPHCharacteristic = [(CAFSpeedDisplay *)self speedMPHCharacteristic];
  measurementValue = [speedMPHCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)speedMPHRange
{
  speedMPHCharacteristic = [(CAFSpeedDisplay *)self speedMPHCharacteristic];
  range = [speedMPHCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)speedMPHMeasurementRange
{
  speedMPHRange = [(CAFSpeedDisplay *)self speedMPHRange];
  speedMPH = [(CAFSpeedDisplay *)self speedMPH];
  unit = [speedMPH unit];
  v6 = [speedMPHRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)speedMPHInvalid
{
  speedMPHCharacteristic = [(CAFSpeedDisplay *)self speedMPHCharacteristic];
  isInvalid = [speedMPHCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)registeredForSpeed
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000021"];

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

@end