@interface CAFSpeedDisplay
+ (void)load;
- (BOOL)registeredForSpeed;
- (BOOL)registeredForSpeedKMH;
- (BOOL)registeredForSpeedMPH;
- (BOOL)speedInvalid;
- (BOOL)speedKMHInvalid;
- (BOOL)speedMPHInvalid;
- (CAFMeasurementCharacteristic)speedCharacteristic;
- (CAFMeasurementCharacteristic)speedKMHCharacteristic;
- (CAFMeasurementCharacteristic)speedMPHCharacteristic;
- (CAFMeasurementRange)speedKMHMeasurementRange;
- (CAFMeasurementRange)speedMPHMeasurementRange;
- (CAFMeasurementRange)speedMeasurementRange;
- (CAFUInt32Range)speedKMHRange;
- (CAFUInt32Range)speedMPHRange;
- (CAFUInt32Range)speedRange;
- (NSMeasurement)speed;
- (NSMeasurement)speedKMH;
- (NSMeasurement)speedMPH;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFSpeedDisplay

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___CAFSpeedDisplay;
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
  v6.super_class = CAFSpeedDisplay;
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
  v6.super_class = CAFSpeedDisplay;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)speedCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000021"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000021"];
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

- (NSMeasurement)speed
{
  v2 = [(CAFSpeedDisplay *)self speedCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)speedRange
{
  v2 = [(CAFSpeedDisplay *)self speedCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)speedMeasurementRange
{
  v3 = [(CAFSpeedDisplay *)self speedRange];
  v4 = [(CAFSpeedDisplay *)self speed];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)speedInvalid
{
  v2 = [(CAFSpeedDisplay *)self speedCharacteristic];
  v3 = [v2 isInvalid];

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
  v2 = [(CAFSpeedDisplay *)self speedKMHCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)speedKMHRange
{
  v2 = [(CAFSpeedDisplay *)self speedKMHCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)speedKMHMeasurementRange
{
  v3 = [(CAFSpeedDisplay *)self speedKMHRange];
  v4 = [(CAFSpeedDisplay *)self speedKMH];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)speedKMHInvalid
{
  v2 = [(CAFSpeedDisplay *)self speedKMHCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
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
  v2 = [(CAFSpeedDisplay *)self speedMPHCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)speedMPHRange
{
  v2 = [(CAFSpeedDisplay *)self speedMPHCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)speedMPHMeasurementRange
{
  v3 = [(CAFSpeedDisplay *)self speedMPHRange];
  v4 = [(CAFSpeedDisplay *)self speedMPH];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)speedMPHInvalid
{
  v2 = [(CAFSpeedDisplay *)self speedMPHCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)registeredForSpeed
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000021"];

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

@end