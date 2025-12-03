@interface CAFChargingRate
+ (void)load;
- (BOOL)chargingSpeedInvalid;
- (BOOL)hasChargingSpeed;
- (BOOL)powerInvalid;
- (BOOL)registeredForChargingSpeed;
- (BOOL)registeredForPower;
- (CAFInt32Range)chargingSpeedRange;
- (CAFInt32Range)powerRange;
- (CAFMeasurementCharacteristic)chargingSpeedCharacteristic;
- (CAFMeasurementCharacteristic)powerCharacteristic;
- (CAFMeasurementRange)chargingSpeedMeasurementRange;
- (CAFMeasurementRange)powerMeasurementRange;
- (NSMeasurement)chargingSpeed;
- (NSMeasurement)power;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFChargingRate

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFChargingRate;
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
  v6.super_class = CAFChargingRate;
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
  v6.super_class = CAFChargingRate;
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
  powerCharacteristic = [(CAFChargingRate *)self powerCharacteristic];
  measurementValue = [powerCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)powerRange
{
  powerCharacteristic = [(CAFChargingRate *)self powerCharacteristic];
  range = [powerCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)powerMeasurementRange
{
  powerRange = [(CAFChargingRate *)self powerRange];
  power = [(CAFChargingRate *)self power];
  unit = [power unit];
  v6 = [powerRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)powerInvalid
{
  powerCharacteristic = [(CAFChargingRate *)self powerCharacteristic];
  isInvalid = [powerCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)chargingSpeedCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004000000A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000004000000A"];
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

- (NSMeasurement)chargingSpeed
{
  chargingSpeedCharacteristic = [(CAFChargingRate *)self chargingSpeedCharacteristic];
  measurementValue = [chargingSpeedCharacteristic measurementValue];

  return measurementValue;
}

- (CAFInt32Range)chargingSpeedRange
{
  chargingSpeedCharacteristic = [(CAFChargingRate *)self chargingSpeedCharacteristic];
  range = [chargingSpeedCharacteristic range];
  int32Range = [range int32Range];

  return int32Range;
}

- (CAFMeasurementRange)chargingSpeedMeasurementRange
{
  chargingSpeedRange = [(CAFChargingRate *)self chargingSpeedRange];
  chargingSpeed = [(CAFChargingRate *)self chargingSpeed];
  unit = [chargingSpeed unit];
  v6 = [chargingSpeedRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasChargingSpeed
{
  chargingSpeedCharacteristic = [(CAFChargingRate *)self chargingSpeedCharacteristic];
  v3 = chargingSpeedCharacteristic != 0;

  return v3;
}

- (BOOL)chargingSpeedInvalid
{
  chargingSpeedCharacteristic = [(CAFChargingRate *)self chargingSpeedCharacteristic];
  isInvalid = [chargingSpeedCharacteristic isInvalid];

  return isInvalid;
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

- (BOOL)registeredForChargingSpeed
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004000000A"];

  return v10;
}

@end