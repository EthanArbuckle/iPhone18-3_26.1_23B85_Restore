@interface CAFEnergyConsumption
+ (void)load;
- (BOOL)averageEnergyEfficiencyInvalid;
- (BOOL)energyEfficiencyInvalid;
- (BOOL)hasAverageEnergyEfficiency;
- (BOOL)hasEnergyEfficiencyMax;
- (BOOL)registeredForAverageEnergyEfficiency;
- (BOOL)registeredForEnergyEfficiency;
- (BOOL)registeredForEnergyEfficiencyMax;
- (CAFInt32Range)averageEnergyEfficiencyRange;
- (CAFInt32Range)energyEfficiencyRange;
- (CAFMeasurementCharacteristic)averageEnergyEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)energyEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)energyEfficiencyMaxCharacteristic;
- (CAFMeasurementRange)averageEnergyEfficiencyMeasurementRange;
- (CAFMeasurementRange)energyEfficiencyMaxMeasurementRange;
- (CAFMeasurementRange)energyEfficiencyMeasurementRange;
- (CAFUInt32Range)energyEfficiencyMaxRange;
- (NSMeasurement)averageEnergyEfficiency;
- (NSMeasurement)energyEfficiency;
- (NSMeasurement)energyEfficiencyMax;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFEnergyConsumption

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFEnergyConsumption;
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
  v6.super_class = CAFEnergyConsumption;
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
  v6.super_class = CAFEnergyConsumption;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)energyEfficiencyCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000035000012"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000012"];
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

- (NSMeasurement)energyEfficiency
{
  v2 = [(CAFEnergyConsumption *)self energyEfficiencyCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFInt32Range)energyEfficiencyRange
{
  v2 = [(CAFEnergyConsumption *)self energyEfficiencyCharacteristic];
  v3 = [v2 range];
  v4 = [v3 int32Range];

  return v4;
}

- (CAFMeasurementRange)energyEfficiencyMeasurementRange
{
  v3 = [(CAFEnergyConsumption *)self energyEfficiencyRange];
  v4 = [(CAFEnergyConsumption *)self energyEfficiency];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)energyEfficiencyInvalid
{
  v2 = [(CAFEnergyConsumption *)self energyEfficiencyCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)averageEnergyEfficiencyCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000035000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000017"];
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

- (NSMeasurement)averageEnergyEfficiency
{
  v2 = [(CAFEnergyConsumption *)self averageEnergyEfficiencyCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFInt32Range)averageEnergyEfficiencyRange
{
  v2 = [(CAFEnergyConsumption *)self averageEnergyEfficiencyCharacteristic];
  v3 = [v2 range];
  v4 = [v3 int32Range];

  return v4;
}

- (CAFMeasurementRange)averageEnergyEfficiencyMeasurementRange
{
  v3 = [(CAFEnergyConsumption *)self averageEnergyEfficiencyRange];
  v4 = [(CAFEnergyConsumption *)self averageEnergyEfficiency];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasAverageEnergyEfficiency
{
  v2 = [(CAFEnergyConsumption *)self averageEnergyEfficiencyCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)averageEnergyEfficiencyInvalid
{
  v2 = [(CAFEnergyConsumption *)self averageEnergyEfficiencyCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)energyEfficiencyMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000021"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000021"];
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

- (NSMeasurement)energyEfficiencyMax
{
  v2 = [(CAFEnergyConsumption *)self energyEfficiencyMaxCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)energyEfficiencyMaxRange
{
  v2 = [(CAFEnergyConsumption *)self energyEfficiencyMaxCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)energyEfficiencyMaxMeasurementRange
{
  v3 = [(CAFEnergyConsumption *)self energyEfficiencyMaxRange];
  v4 = [(CAFEnergyConsumption *)self energyEfficiencyMax];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasEnergyEfficiencyMax
{
  v2 = [(CAFEnergyConsumption *)self energyEfficiencyMaxCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForEnergyEfficiency
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000035000012"];

  return v10;
}

- (BOOL)registeredForAverageEnergyEfficiency
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000035000017"];

  return v10;
}

- (BOOL)registeredForEnergyEfficiencyMax
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000021"];

  return v10;
}

@end