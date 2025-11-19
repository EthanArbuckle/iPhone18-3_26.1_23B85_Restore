@interface CAFChargingTime
+ (void)load;
- (BOOL)registeredForRemainingTime;
- (BOOL)remainingTimeInvalid;
- (CAFMeasurementCharacteristic)remainingTimeCharacteristic;
- (CAFMeasurementRange)remainingTimeMeasurementRange;
- (CAFUInt64Range)remainingTimeRange;
- (NSMeasurement)remainingTime;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFChargingTime

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFChargingTime;
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
  v6.super_class = CAFChargingTime;
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
  v6.super_class = CAFChargingTime;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)remainingTimeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000030"];

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
  v2 = [(CAFChargingTime *)self remainingTimeCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt64Range)remainingTimeRange
{
  v2 = [(CAFChargingTime *)self remainingTimeCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt64Range];

  return v4;
}

- (CAFMeasurementRange)remainingTimeMeasurementRange
{
  v3 = [(CAFChargingTime *)self remainingTimeRange];
  v4 = [(CAFChargingTime *)self remainingTime];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)remainingTimeInvalid
{
  v2 = [(CAFChargingTime *)self remainingTimeCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)registeredForRemainingTime
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000030"];

  return v10;
}

@end