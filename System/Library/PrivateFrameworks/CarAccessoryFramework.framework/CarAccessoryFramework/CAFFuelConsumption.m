@interface CAFFuelConsumption
+ (void)load;
- (BOOL)averageFuelEfficiencyInvalid;
- (BOOL)fuelEfficiencyInvalid;
- (BOOL)hasAverageFuelEfficiency;
- (BOOL)hasFuelEfficiencyMax;
- (BOOL)registeredForAverageFuelEfficiency;
- (BOOL)registeredForFuelEfficiency;
- (BOOL)registeredForFuelEfficiencyMax;
- (CAFMeasurementCharacteristic)averageFuelEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)fuelEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)fuelEfficiencyMaxCharacteristic;
- (CAFMeasurementRange)averageFuelEfficiencyMeasurementRange;
- (CAFMeasurementRange)fuelEfficiencyMaxMeasurementRange;
- (CAFMeasurementRange)fuelEfficiencyMeasurementRange;
- (CAFUInt32Range)averageFuelEfficiencyRange;
- (CAFUInt32Range)fuelEfficiencyMaxRange;
- (CAFUInt32Range)fuelEfficiencyRange;
- (NSMeasurement)averageFuelEfficiency;
- (NSMeasurement)fuelEfficiency;
- (NSMeasurement)fuelEfficiencyMax;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFFuelConsumption

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFFuelConsumption;
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
  v6.super_class = CAFFuelConsumption;
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
  v6.super_class = CAFFuelConsumption;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)fuelEfficiencyCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000035000013"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000013"];
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

- (NSMeasurement)fuelEfficiency
{
  v2 = [(CAFFuelConsumption *)self fuelEfficiencyCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)fuelEfficiencyRange
{
  v2 = [(CAFFuelConsumption *)self fuelEfficiencyCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)fuelEfficiencyMeasurementRange
{
  v3 = [(CAFFuelConsumption *)self fuelEfficiencyRange];
  v4 = [(CAFFuelConsumption *)self fuelEfficiency];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)fuelEfficiencyInvalid
{
  v2 = [(CAFFuelConsumption *)self fuelEfficiencyCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)averageFuelEfficiencyCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000035000018"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000018"];
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

- (NSMeasurement)averageFuelEfficiency
{
  v2 = [(CAFFuelConsumption *)self averageFuelEfficiencyCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)averageFuelEfficiencyRange
{
  v2 = [(CAFFuelConsumption *)self averageFuelEfficiencyCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)averageFuelEfficiencyMeasurementRange
{
  v3 = [(CAFFuelConsumption *)self averageFuelEfficiencyRange];
  v4 = [(CAFFuelConsumption *)self averageFuelEfficiency];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasAverageFuelEfficiency
{
  v2 = [(CAFFuelConsumption *)self averageFuelEfficiencyCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)averageFuelEfficiencyInvalid
{
  v2 = [(CAFFuelConsumption *)self averageFuelEfficiencyCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)fuelEfficiencyMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000025"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000025"];
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

- (NSMeasurement)fuelEfficiencyMax
{
  v2 = [(CAFFuelConsumption *)self fuelEfficiencyMaxCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)fuelEfficiencyMaxRange
{
  v2 = [(CAFFuelConsumption *)self fuelEfficiencyMaxCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)fuelEfficiencyMaxMeasurementRange
{
  v3 = [(CAFFuelConsumption *)self fuelEfficiencyMaxRange];
  v4 = [(CAFFuelConsumption *)self fuelEfficiencyMax];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasFuelEfficiencyMax
{
  v2 = [(CAFFuelConsumption *)self fuelEfficiencyMaxCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForFuelEfficiency
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000035000013"];

  return v10;
}

- (BOOL)registeredForAverageFuelEfficiency
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000035000018"];

  return v10;
}

- (BOOL)registeredForFuelEfficiencyMax
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000025"];

  return v10;
}

@end