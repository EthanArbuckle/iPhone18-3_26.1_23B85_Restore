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
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFEngineRPM

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFEngineRPM;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFEngineRPM;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
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
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000024"];

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
  v2 = [(CAFEngineRPM *)self rotationalSpeedCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)rotationalSpeedRange
{
  v2 = [(CAFEngineRPM *)self rotationalSpeedCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)rotationalSpeedMeasurementRange
{
  v3 = [(CAFEngineRPM *)self rotationalSpeedRange];
  v4 = [(CAFEngineRPM *)self rotationalSpeed];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)rotationalSpeedInvalid
{
  v2 = [(CAFEngineRPM *)self rotationalSpeedCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFRotationalSpeedStateCharacteristic)rotationalSpeedStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000060"];

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
  v2 = [(CAFEngineRPM *)self rotationalSpeedStateCharacteristic];
  v3 = [v2 rotationalSpeedStateValue];

  return v3;
}

- (BOOL)hasRotationalSpeedState
{
  v2 = [(CAFEngineRPM *)self rotationalSpeedStateCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)rotationalSpeedMarkerRedlineCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000004F"];

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
  v2 = [(CAFEngineRPM *)self rotationalSpeedMarkerRedlineCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)rotationalSpeedMarkerRedlineRange
{
  v2 = [(CAFEngineRPM *)self rotationalSpeedMarkerRedlineCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)rotationalSpeedMarkerRedlineMeasurementRange
{
  v3 = [(CAFEngineRPM *)self rotationalSpeedMarkerRedlineRange];
  v4 = [(CAFEngineRPM *)self rotationalSpeedMarkerRedline];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasRotationalSpeedMarkerRedline
{
  v2 = [(CAFEngineRPM *)self rotationalSpeedMarkerRedlineCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)rotationalSpeedMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000004E"];

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
  v2 = [(CAFEngineRPM *)self rotationalSpeedMaxCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)rotationalSpeedMaxRange
{
  v2 = [(CAFEngineRPM *)self rotationalSpeedMaxCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)rotationalSpeedMaxMeasurementRange
{
  v3 = [(CAFEngineRPM *)self rotationalSpeedMaxRange];
  v4 = [(CAFEngineRPM *)self rotationalSpeedMax];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)registeredForRotationalSpeed
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000024"];

  return v10;
}

- (BOOL)registeredForRotationalSpeedState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000060"];

  return v10;
}

- (BOOL)registeredForRotationalSpeedMarkerRedline
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000004F"];

  return v10;
}

- (BOOL)registeredForRotationalSpeedMax
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000004E"];

  return v10;
}

@end