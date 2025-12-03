@interface CAFInteriorConditions
+ (void)load;
- (BOOL)aqiInvalid;
- (BOOL)hasAqi;
- (BOOL)registeredForAQI;
- (CAFFloatRange)aqiRange;
- (CAFMeasurementCharacteristic)aqiCharacteristic;
- (CAFMeasurementRange)aqiMeasurementRange;
- (NSMeasurement)aqi;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFInteriorConditions

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFInteriorConditions;
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
  v6.super_class = CAFInteriorConditions;
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
  v6.super_class = CAFInteriorConditions;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)aqiCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000010"];
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

- (NSMeasurement)aqi
{
  aqiCharacteristic = [(CAFInteriorConditions *)self aqiCharacteristic];
  measurementValue = [aqiCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)aqiRange
{
  aqiCharacteristic = [(CAFInteriorConditions *)self aqiCharacteristic];
  range = [aqiCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)aqiMeasurementRange
{
  aqiRange = [(CAFInteriorConditions *)self aqiRange];
  v4 = [(CAFInteriorConditions *)self aqi];
  unit = [v4 unit];
  v6 = [aqiRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasAqi
{
  aqiCharacteristic = [(CAFInteriorConditions *)self aqiCharacteristic];
  v3 = aqiCharacteristic != 0;

  return v3;
}

- (BOOL)aqiInvalid
{
  aqiCharacteristic = [(CAFInteriorConditions *)self aqiCharacteristic];
  isInvalid = [aqiCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)registeredForAQI
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000010"];

  return v10;
}

@end