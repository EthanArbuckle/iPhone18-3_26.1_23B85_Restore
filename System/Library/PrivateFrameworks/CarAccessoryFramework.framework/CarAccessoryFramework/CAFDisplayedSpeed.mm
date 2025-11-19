@interface CAFDisplayedSpeed
+ (void)load;
- (BOOL)hasShowSecondarySpeed;
- (BOOL)registeredForShowSecondarySpeed;
- (BOOL)registeredForSpeedMaxKMH;
- (BOOL)registeredForSpeedMaxMPH;
- (BOOL)showSecondarySpeed;
- (CAFBoolCharacteristic)showSecondarySpeedCharacteristic;
- (CAFMeasurementCharacteristic)speedMaxKMHCharacteristic;
- (CAFMeasurementCharacteristic)speedMaxMPHCharacteristic;
- (CAFMeasurementRange)speedMaxKMHMeasurementRange;
- (CAFMeasurementRange)speedMaxMPHMeasurementRange;
- (CAFUInt32Range)speedMaxKMHRange;
- (CAFUInt32Range)speedMaxMPHRange;
- (NSMeasurement)speedMaxKMH;
- (NSMeasurement)speedMaxMPH;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFDisplayedSpeed

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFDisplayedSpeed;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846AB7B0])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFDisplayedSpeed;
  [(CAFSpeedDisplay *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846AB7B0])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFDisplayedSpeed;
  [(CAFSpeedDisplay *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)speedMaxKMHCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000048"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000048"];
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

- (NSMeasurement)speedMaxKMH
{
  v2 = [(CAFDisplayedSpeed *)self speedMaxKMHCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)speedMaxKMHRange
{
  v2 = [(CAFDisplayedSpeed *)self speedMaxKMHCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)speedMaxKMHMeasurementRange
{
  v3 = [(CAFDisplayedSpeed *)self speedMaxKMHRange];
  v4 = [(CAFDisplayedSpeed *)self speedMaxKMH];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (CAFMeasurementCharacteristic)speedMaxMPHCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000049"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000049"];
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

- (NSMeasurement)speedMaxMPH
{
  v2 = [(CAFDisplayedSpeed *)self speedMaxMPHCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)speedMaxMPHRange
{
  v2 = [(CAFDisplayedSpeed *)self speedMaxMPHCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)speedMaxMPHMeasurementRange
{
  v3 = [(CAFDisplayedSpeed *)self speedMaxMPHRange];
  v4 = [(CAFDisplayedSpeed *)self speedMaxMPH];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (CAFBoolCharacteristic)showSecondarySpeedCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000046000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000002"];
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

- (BOOL)showSecondarySpeed
{
  v2 = [(CAFDisplayedSpeed *)self showSecondarySpeedCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasShowSecondarySpeed
{
  v2 = [(CAFDisplayedSpeed *)self showSecondarySpeedCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForSpeedMaxKMH
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000048"];

  return v10;
}

- (BOOL)registeredForSpeedMaxMPH
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000049"];

  return v10;
}

- (BOOL)registeredForShowSecondarySpeed
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000046000002"];

  return v10;
}

@end