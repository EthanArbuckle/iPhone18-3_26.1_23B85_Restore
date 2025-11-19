@interface CAFTargetSpeed
+ (void)load;
- (BOOL)hasSpeedLimited;
- (BOOL)registeredForSpeedKMH;
- (BOOL)registeredForSpeedLimited;
- (BOOL)registeredForSpeedMPH;
- (BOOL)registeredForTargetSpeedState;
- (BOOL)speedLimited;
- (CAFBoolCharacteristic)speedLimitedCharacteristic;
- (CAFMeasurementCharacteristic)speedKMHCharacteristic;
- (CAFMeasurementCharacteristic)speedMPHCharacteristic;
- (CAFMeasurementRange)speedKMHMeasurementRange;
- (CAFMeasurementRange)speedMPHMeasurementRange;
- (CAFTargetSpeedStateCharacteristic)targetSpeedStateCharacteristic;
- (CAFUInt32Range)speedKMHRange;
- (CAFUInt32Range)speedMPHRange;
- (NSMeasurement)speedKMH;
- (NSMeasurement)speedMPH;
- (unsigned)targetSpeedState;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTargetSpeed

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTargetSpeed;
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
  v6.super_class = CAFTargetSpeed;
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
  v6.super_class = CAFTargetSpeed;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFTargetSpeedStateCharacteristic)targetSpeedStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000005"];
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

- (unsigned)targetSpeedState
{
  v2 = [(CAFTargetSpeed *)self targetSpeedStateCharacteristic];
  v3 = [v2 targetSpeedStateValue];

  return v3;
}

- (CAFMeasurementCharacteristic)speedKMHCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000046"];

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
  v2 = [(CAFTargetSpeed *)self speedKMHCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)speedKMHRange
{
  v2 = [(CAFTargetSpeed *)self speedKMHCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)speedKMHMeasurementRange
{
  v3 = [(CAFTargetSpeed *)self speedKMHRange];
  v4 = [(CAFTargetSpeed *)self speedKMH];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (CAFMeasurementCharacteristic)speedMPHCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000047"];

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
  v2 = [(CAFTargetSpeed *)self speedMPHCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)speedMPHRange
{
  v2 = [(CAFTargetSpeed *)self speedMPHCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)speedMPHMeasurementRange
{
  v3 = [(CAFTargetSpeed *)self speedMPHRange];
  v4 = [(CAFTargetSpeed *)self speedMPH];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (CAFBoolCharacteristic)speedLimitedCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000004500001C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000004500001C"];
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

- (BOOL)speedLimited
{
  v2 = [(CAFTargetSpeed *)self speedLimitedCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasSpeedLimited
{
  v2 = [(CAFTargetSpeed *)self speedLimitedCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForTargetSpeedState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000005"];

  return v10;
}

- (BOOL)registeredForSpeedKMH
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000046"];

  return v10;
}

- (BOOL)registeredForSpeedMPH
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000047"];

  return v10;
}

- (BOOL)registeredForSpeedLimited
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000004500001C"];

  return v10;
}

@end