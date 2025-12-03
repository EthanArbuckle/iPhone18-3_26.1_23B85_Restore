@interface CAFDisplayedSpeed
+ (void)load;
- (BOOL)hasShowSecondarySpeed;
- (BOOL)registeredForShowSecondarySpeed;
- (BOOL)registeredForSpeedMaxKMH;
- (BOOL)registeredForSpeedMaxMPH;
- (BOOL)showSecondarySpeed;
- (CAFBoolCharacteristic)showSecondarySpeedCharacteristic;
- (CAFMeasurementCharacteristic)speedMaxKMHCharacteristic;
- (CAFMeasurementCharacteristic)speedMaxMPHCharacteristic;
- (CAFMeasurementRange)speedMaxKMHMeasurementRange;
- (CAFMeasurementRange)speedMaxMPHMeasurementRange;
- (CAFUInt32Range)speedMaxKMHRange;
- (CAFUInt32Range)speedMaxMPHRange;
- (NSMeasurement)speedMaxKMH;
- (NSMeasurement)speedMaxMPH;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFDisplayedSpeed

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFDisplayedSpeed;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846AB7B0])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFDisplayedSpeed;
  [(CAFSpeedDisplay *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846AB7B0])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFDisplayedSpeed;
  [(CAFSpeedDisplay *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)speedMaxKMHCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000048"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000048"];
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

- (NSMeasurement)speedMaxKMH
{
  speedMaxKMHCharacteristic = [(CAFDisplayedSpeed *)self speedMaxKMHCharacteristic];
  measurementValue = [speedMaxKMHCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)speedMaxKMHRange
{
  speedMaxKMHCharacteristic = [(CAFDisplayedSpeed *)self speedMaxKMHCharacteristic];
  range = [speedMaxKMHCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)speedMaxKMHMeasurementRange
{
  speedMaxKMHRange = [(CAFDisplayedSpeed *)self speedMaxKMHRange];
  speedMaxKMH = [(CAFDisplayedSpeed *)self speedMaxKMH];
  unit = [speedMaxKMH unit];
  v6 = [speedMaxKMHRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFMeasurementCharacteristic)speedMaxMPHCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000049"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000049"];
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

- (NSMeasurement)speedMaxMPH
{
  speedMaxMPHCharacteristic = [(CAFDisplayedSpeed *)self speedMaxMPHCharacteristic];
  measurementValue = [speedMaxMPHCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)speedMaxMPHRange
{
  speedMaxMPHCharacteristic = [(CAFDisplayedSpeed *)self speedMaxMPHCharacteristic];
  range = [speedMaxMPHCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)speedMaxMPHMeasurementRange
{
  speedMaxMPHRange = [(CAFDisplayedSpeed *)self speedMaxMPHRange];
  speedMaxMPH = [(CAFDisplayedSpeed *)self speedMaxMPH];
  unit = [speedMaxMPH unit];
  v6 = [speedMaxMPHRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFBoolCharacteristic)showSecondarySpeedCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000002"];
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

- (BOOL)showSecondarySpeed
{
  showSecondarySpeedCharacteristic = [(CAFDisplayedSpeed *)self showSecondarySpeedCharacteristic];
  bOOLValue = [showSecondarySpeedCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasShowSecondarySpeed
{
  showSecondarySpeedCharacteristic = [(CAFDisplayedSpeed *)self showSecondarySpeedCharacteristic];
  v3 = showSecondarySpeedCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForSpeedMaxKMH
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000048"];

  return v10;
}

- (BOOL)registeredForSpeedMaxMPH
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000049"];

  return v10;
}

- (BOOL)registeredForShowSecondarySpeed
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000002"];

  return v10;
}

@end