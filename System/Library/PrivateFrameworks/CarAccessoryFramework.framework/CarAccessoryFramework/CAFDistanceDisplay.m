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
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFDistanceDisplay

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___CAFDistanceDisplay;
    objc_msgSendSuper2(&v4, sel_load);
  }
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
  v6.super_class = CAFDistanceDisplay;
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
  v6.super_class = CAFDistanceDisplay;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)distanceKMCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000004A"];

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
  v2 = [(CAFDistanceDisplay *)self distanceKMCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt64Range)distanceKMRange
{
  v2 = [(CAFDistanceDisplay *)self distanceKMCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt64Range];

  return v4;
}

- (CAFMeasurementRange)distanceKMMeasurementRange
{
  v3 = [(CAFDistanceDisplay *)self distanceKMRange];
  v4 = [(CAFDistanceDisplay *)self distanceKM];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)distanceKMInvalid
{
  v2 = [(CAFDistanceDisplay *)self distanceKMCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)distanceMilesCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000004B"];

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
  v2 = [(CAFDistanceDisplay *)self distanceMilesCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt64Range)distanceMilesRange
{
  v2 = [(CAFDistanceDisplay *)self distanceMilesCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt64Range];

  return v4;
}

- (CAFMeasurementRange)distanceMilesMeasurementRange
{
  v3 = [(CAFDistanceDisplay *)self distanceMilesRange];
  v4 = [(CAFDistanceDisplay *)self distanceMiles];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)distanceMilesInvalid
{
  v2 = [(CAFDistanceDisplay *)self distanceMilesCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)registeredForDistanceKM
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000004A"];

  return v10;
}

- (BOOL)registeredForDistanceMiles
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000004B"];

  return v10;
}

@end