@interface CAFEngineRPM
+ (void)load;
- (BOOL)hasRotationalSpeedMarkerRedline;
- (BOOL)hasRotationalSpeedState;
- (BOOL)registeredForRotationalSpeed;
- (BOOL)registeredForRotationalSpeedMarkerRedline;
- (BOOL)registeredForRotationalSpeedMax;
- (BOOL)registeredForRotationalSpeedState;
- (BOOL)rotationalSpeedInvalid;
- (CAFMeasurementCharacteristic)rotationalSpeedCharacteristic;
- (CAFMeasurementCharacteristic)rotationalSpeedMarkerRedlineCharacteristic;
- (CAFMeasurementCharacteristic)rotationalSpeedMaxCharacteristic;
- (CAFMeasurementRange)rotationalSpeedMarkerRedlineMeasurementRange;
- (CAFMeasurementRange)rotationalSpeedMaxMeasurementRange;
- (CAFMeasurementRange)rotationalSpeedMeasurementRange;
- (CAFRotationalSpeedStateCharacteristic)rotationalSpeedStateCharacteristic;
- (CAFUInt32Range)rotationalSpeedMarkerRedlineRange;
- (CAFUInt32Range)rotationalSpeedMaxRange;
- (CAFUInt32Range)rotationalSpeedRange;
- (NSMeasurement)rotationalSpeed;
- (NSMeasurement)rotationalSpeedMarkerRedline;
- (NSMeasurement)rotationalSpeedMax;
- (unsigned)rotationalSpeedState;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFEngineRPM

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFEngineRPM;
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
  v6.super_class = CAFEngineRPM;
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
  v6.super_class = CAFEngineRPM;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)rotationalSpeedCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000024"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000024"];
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

- (NSMeasurement)rotationalSpeed
{
  rotationalSpeedCharacteristic = [(CAFEngineRPM *)self rotationalSpeedCharacteristic];
  measurementValue = [rotationalSpeedCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)rotationalSpeedRange
{
  rotationalSpeedCharacteristic = [(CAFEngineRPM *)self rotationalSpeedCharacteristic];
  range = [rotationalSpeedCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)rotationalSpeedMeasurementRange
{
  rotationalSpeedRange = [(CAFEngineRPM *)self rotationalSpeedRange];
  rotationalSpeed = [(CAFEngineRPM *)self rotationalSpeed];
  unit = [rotationalSpeed unit];
  v6 = [rotationalSpeedRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)rotationalSpeedInvalid
{
  rotationalSpeedCharacteristic = [(CAFEngineRPM *)self rotationalSpeedCharacteristic];
  isInvalid = [rotationalSpeedCharacteristic isInvalid];

  return isInvalid;
}

- (CAFRotationalSpeedStateCharacteristic)rotationalSpeedStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000060"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000060"];
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

- (unsigned)rotationalSpeedState
{
  rotationalSpeedStateCharacteristic = [(CAFEngineRPM *)self rotationalSpeedStateCharacteristic];
  rotationalSpeedStateValue = [rotationalSpeedStateCharacteristic rotationalSpeedStateValue];

  return rotationalSpeedStateValue;
}

- (BOOL)hasRotationalSpeedState
{
  rotationalSpeedStateCharacteristic = [(CAFEngineRPM *)self rotationalSpeedStateCharacteristic];
  v3 = rotationalSpeedStateCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)rotationalSpeedMarkerRedlineCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004F"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004F"];
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

- (NSMeasurement)rotationalSpeedMarkerRedline
{
  rotationalSpeedMarkerRedlineCharacteristic = [(CAFEngineRPM *)self rotationalSpeedMarkerRedlineCharacteristic];
  measurementValue = [rotationalSpeedMarkerRedlineCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)rotationalSpeedMarkerRedlineRange
{
  rotationalSpeedMarkerRedlineCharacteristic = [(CAFEngineRPM *)self rotationalSpeedMarkerRedlineCharacteristic];
  range = [rotationalSpeedMarkerRedlineCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)rotationalSpeedMarkerRedlineMeasurementRange
{
  rotationalSpeedMarkerRedlineRange = [(CAFEngineRPM *)self rotationalSpeedMarkerRedlineRange];
  rotationalSpeedMarkerRedline = [(CAFEngineRPM *)self rotationalSpeedMarkerRedline];
  unit = [rotationalSpeedMarkerRedline unit];
  v6 = [rotationalSpeedMarkerRedlineRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasRotationalSpeedMarkerRedline
{
  rotationalSpeedMarkerRedlineCharacteristic = [(CAFEngineRPM *)self rotationalSpeedMarkerRedlineCharacteristic];
  v3 = rotationalSpeedMarkerRedlineCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)rotationalSpeedMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004E"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004E"];
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

- (NSMeasurement)rotationalSpeedMax
{
  rotationalSpeedMaxCharacteristic = [(CAFEngineRPM *)self rotationalSpeedMaxCharacteristic];
  measurementValue = [rotationalSpeedMaxCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)rotationalSpeedMaxRange
{
  rotationalSpeedMaxCharacteristic = [(CAFEngineRPM *)self rotationalSpeedMaxCharacteristic];
  range = [rotationalSpeedMaxCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)rotationalSpeedMaxMeasurementRange
{
  rotationalSpeedMaxRange = [(CAFEngineRPM *)self rotationalSpeedMaxRange];
  rotationalSpeedMax = [(CAFEngineRPM *)self rotationalSpeedMax];
  unit = [rotationalSpeedMax unit];
  v6 = [rotationalSpeedMaxRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)registeredForRotationalSpeed
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000024"];

  return v10;
}

- (BOOL)registeredForRotationalSpeedState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000060"];

  return v10;
}

- (BOOL)registeredForRotationalSpeedMarkerRedline
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004F"];

  return v10;
}

- (BOOL)registeredForRotationalSpeedMax
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004E"];

  return v10;
}

@end