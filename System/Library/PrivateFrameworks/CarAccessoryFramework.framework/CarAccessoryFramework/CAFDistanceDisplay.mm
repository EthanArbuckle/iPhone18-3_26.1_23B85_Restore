@interface CAFDistanceDisplay
+ (void)load;
- (BOOL)distanceKMInvalid;
- (BOOL)distanceMilesInvalid;
- (BOOL)registeredForDistanceKM;
- (BOOL)registeredForDistanceMiles;
- (CAFMeasurementCharacteristic)distanceKMCharacteristic;
- (CAFMeasurementCharacteristic)distanceMilesCharacteristic;
- (CAFMeasurementRange)distanceKMMeasurementRange;
- (CAFMeasurementRange)distanceMilesMeasurementRange;
- (CAFUInt64Range)distanceKMRange;
- (CAFUInt64Range)distanceMilesRange;
- (NSMeasurement)distanceKM;
- (NSMeasurement)distanceMiles;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFDistanceDisplay

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___CAFDistanceDisplay;
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
  v6.super_class = CAFDistanceDisplay;
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
  v6.super_class = CAFDistanceDisplay;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)distanceKMCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004A"];
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

- (NSMeasurement)distanceKM
{
  distanceKMCharacteristic = [(CAFDistanceDisplay *)self distanceKMCharacteristic];
  measurementValue = [distanceKMCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt64Range)distanceKMRange
{
  distanceKMCharacteristic = [(CAFDistanceDisplay *)self distanceKMCharacteristic];
  range = [distanceKMCharacteristic range];
  uInt64Range = [range uInt64Range];

  return uInt64Range;
}

- (CAFMeasurementRange)distanceKMMeasurementRange
{
  distanceKMRange = [(CAFDistanceDisplay *)self distanceKMRange];
  distanceKM = [(CAFDistanceDisplay *)self distanceKM];
  unit = [distanceKM unit];
  v6 = [distanceKMRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)distanceKMInvalid
{
  distanceKMCharacteristic = [(CAFDistanceDisplay *)self distanceKMCharacteristic];
  isInvalid = [distanceKMCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)distanceMilesCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004B"];
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

- (NSMeasurement)distanceMiles
{
  distanceMilesCharacteristic = [(CAFDistanceDisplay *)self distanceMilesCharacteristic];
  measurementValue = [distanceMilesCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt64Range)distanceMilesRange
{
  distanceMilesCharacteristic = [(CAFDistanceDisplay *)self distanceMilesCharacteristic];
  range = [distanceMilesCharacteristic range];
  uInt64Range = [range uInt64Range];

  return uInt64Range;
}

- (CAFMeasurementRange)distanceMilesMeasurementRange
{
  distanceMilesRange = [(CAFDistanceDisplay *)self distanceMilesRange];
  distanceMiles = [(CAFDistanceDisplay *)self distanceMiles];
  unit = [distanceMiles unit];
  v6 = [distanceMilesRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)distanceMilesInvalid
{
  distanceMilesCharacteristic = [(CAFDistanceDisplay *)self distanceMilesCharacteristic];
  isInvalid = [distanceMilesCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)registeredForDistanceKM
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004A"];

  return v10;
}

- (BOOL)registeredForDistanceMiles
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004B"];

  return v10;
}

@end