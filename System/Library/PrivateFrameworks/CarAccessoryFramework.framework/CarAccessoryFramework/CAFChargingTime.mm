@interface CAFChargingTime
+ (void)load;
- (BOOL)registeredForRemainingTime;
- (BOOL)remainingTimeInvalid;
- (CAFMeasurementCharacteristic)remainingTimeCharacteristic;
- (CAFMeasurementRange)remainingTimeMeasurementRange;
- (CAFUInt64Range)remainingTimeRange;
- (NSMeasurement)remainingTime;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFChargingTime

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFChargingTime;
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
  v6.super_class = CAFChargingTime;
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
  v6.super_class = CAFChargingTime;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)remainingTimeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000030"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000030"];
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

- (NSMeasurement)remainingTime
{
  remainingTimeCharacteristic = [(CAFChargingTime *)self remainingTimeCharacteristic];
  measurementValue = [remainingTimeCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt64Range)remainingTimeRange
{
  remainingTimeCharacteristic = [(CAFChargingTime *)self remainingTimeCharacteristic];
  range = [remainingTimeCharacteristic range];
  uInt64Range = [range uInt64Range];

  return uInt64Range;
}

- (CAFMeasurementRange)remainingTimeMeasurementRange
{
  remainingTimeRange = [(CAFChargingTime *)self remainingTimeRange];
  remainingTime = [(CAFChargingTime *)self remainingTime];
  unit = [remainingTime unit];
  v6 = [remainingTimeRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)remainingTimeInvalid
{
  remainingTimeCharacteristic = [(CAFChargingTime *)self remainingTimeCharacteristic];
  isInvalid = [remainingTimeCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)registeredForRemainingTime
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000030"];

  return v10;
}

@end