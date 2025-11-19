@interface CAFTrip
+ (void)load;
- (BOOL)averageSpeedInvalid;
- (BOOL)distanceInvalid;
- (BOOL)durationInvalid;
- (BOOL)energyEfficiencyInvalid;
- (BOOL)energyInvalid;
- (BOOL)fuelEfficiencyInvalid;
- (BOOL)hasAverageSpeed;
- (BOOL)hasDistance;
- (BOOL)hasDuration;
- (BOOL)hasEnergy;
- (BOOL)hasEnergyEfficiency;
- (BOOL)hasFuelEfficiency;
- (BOOL)hasReset;
- (BOOL)hasShowOdometer;
- (BOOL)hasUserVisibleLabel;
- (BOOL)registeredForAverageSpeed;
- (BOOL)registeredForDistance;
- (BOOL)registeredForDuration;
- (BOOL)registeredForEnergy;
- (BOOL)registeredForEnergyEfficiency;
- (BOOL)registeredForFuelEfficiency;
- (BOOL)registeredForReset;
- (BOOL)registeredForShowOdometer;
- (BOOL)registeredForSortOrder;
- (BOOL)registeredForUserVisibleLabel;
- (BOOL)showOdometer;
- (CAFBoolCharacteristic)showOdometerCharacteristic;
- (CAFInt32Range)energyEfficiencyRange;
- (CAFInt32Range)energyRange;
- (CAFMeasurementCharacteristic)averageSpeedCharacteristic;
- (CAFMeasurementCharacteristic)distanceCharacteristic;
- (CAFMeasurementCharacteristic)durationCharacteristic;
- (CAFMeasurementCharacteristic)energyCharacteristic;
- (CAFMeasurementCharacteristic)energyEfficiencyCharacteristic;
- (CAFMeasurementCharacteristic)fuelEfficiencyCharacteristic;
- (CAFMeasurementRange)averageSpeedMeasurementRange;
- (CAFMeasurementRange)distanceMeasurementRange;
- (CAFMeasurementRange)durationMeasurementRange;
- (CAFMeasurementRange)energyEfficiencyMeasurementRange;
- (CAFMeasurementRange)energyMeasurementRange;
- (CAFMeasurementRange)fuelEfficiencyMeasurementRange;
- (CAFResetControl)resetControl;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFUInt32Range)averageSpeedRange;
- (CAFUInt32Range)fuelEfficiencyRange;
- (CAFUInt64Range)distanceRange;
- (CAFUInt64Range)durationRange;
- (CAFUInt8Characteristic)sortOrderCharacteristic;
- (NSMeasurement)averageSpeed;
- (NSMeasurement)distance;
- (NSMeasurement)duration;
- (NSMeasurement)energy;
- (NSMeasurement)energyEfficiency;
- (NSMeasurement)fuelEfficiency;
- (NSString)userVisibleLabel;
- (id)name;
- (unsigned)sortOrder;
- (void)registerObserver:(id)a3;
- (void)resetWithCompletion:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTrip

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTrip;
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
  v6.super_class = CAFTrip;
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
  v6.super_class = CAFTrip;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFTrip *)self sortOrderCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  v7 = [(CAFTrip *)self userVisibleLabelCharacteristic];
  v8 = [v7 formattedValue];

  if ([v8 length])
  {
    v9 = [v3 stringByAppendingFormat:@"-%@", v8];

    v3 = v9;
  }

  return v3;
}

- (CAFStringCharacteristic)userVisibleLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000001"];
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

- (NSString)userVisibleLabel
{
  v2 = [(CAFTrip *)self userVisibleLabelCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasUserVisibleLabel
{
  v2 = [(CAFTrip *)self userVisibleLabelCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFUInt8Characteristic)sortOrderCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000003"];
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

- (unsigned)sortOrder
{
  v2 = [(CAFTrip *)self sortOrderCharacteristic];
  v3 = [v2 uint8Value];

  return v3;
}

- (CAFMeasurementCharacteristic)averageSpeedCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000045"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000045"];
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

- (NSMeasurement)averageSpeed
{
  v2 = [(CAFTrip *)self averageSpeedCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)averageSpeedRange
{
  v2 = [(CAFTrip *)self averageSpeedCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)averageSpeedMeasurementRange
{
  v3 = [(CAFTrip *)self averageSpeedRange];
  v4 = [(CAFTrip *)self averageSpeed];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasAverageSpeed
{
  v2 = [(CAFTrip *)self averageSpeedCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)averageSpeedInvalid
{
  v2 = [(CAFTrip *)self averageSpeedCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)distanceCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000022"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000022"];
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

- (NSMeasurement)distance
{
  v2 = [(CAFTrip *)self distanceCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt64Range)distanceRange
{
  v2 = [(CAFTrip *)self distanceCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt64Range];

  return v4;
}

- (CAFMeasurementRange)distanceMeasurementRange
{
  v3 = [(CAFTrip *)self distanceRange];
  v4 = [(CAFTrip *)self distance];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasDistance
{
  v2 = [(CAFTrip *)self distanceCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)distanceInvalid
{
  v2 = [(CAFTrip *)self distanceCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)durationCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000023"];
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

- (NSMeasurement)duration
{
  v2 = [(CAFTrip *)self durationCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt64Range)durationRange
{
  v2 = [(CAFTrip *)self durationCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt64Range];

  return v4;
}

- (CAFMeasurementRange)durationMeasurementRange
{
  v3 = [(CAFTrip *)self durationRange];
  v4 = [(CAFTrip *)self duration];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasDuration
{
  v2 = [(CAFTrip *)self durationCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)durationInvalid
{
  v2 = [(CAFTrip *)self durationCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)energyCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000025"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000025"];
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

- (NSMeasurement)energy
{
  v2 = [(CAFTrip *)self energyCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFInt32Range)energyRange
{
  v2 = [(CAFTrip *)self energyCharacteristic];
  v3 = [v2 range];
  v4 = [v3 int32Range];

  return v4;
}

- (CAFMeasurementRange)energyMeasurementRange
{
  v3 = [(CAFTrip *)self energyRange];
  v4 = [(CAFTrip *)self energy];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasEnergy
{
  v2 = [(CAFTrip *)self energyCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)energyInvalid
{
  v2 = [(CAFTrip *)self energyCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
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
  v2 = [(CAFTrip *)self energyEfficiencyCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFInt32Range)energyEfficiencyRange
{
  v2 = [(CAFTrip *)self energyEfficiencyCharacteristic];
  v3 = [v2 range];
  v4 = [v3 int32Range];

  return v4;
}

- (CAFMeasurementRange)energyEfficiencyMeasurementRange
{
  v3 = [(CAFTrip *)self energyEfficiencyRange];
  v4 = [(CAFTrip *)self energyEfficiency];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasEnergyEfficiency
{
  v2 = [(CAFTrip *)self energyEfficiencyCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)energyEfficiencyInvalid
{
  v2 = [(CAFTrip *)self energyEfficiencyCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
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
  v2 = [(CAFTrip *)self fuelEfficiencyCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt32Range)fuelEfficiencyRange
{
  v2 = [(CAFTrip *)self fuelEfficiencyCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt32Range];

  return v4;
}

- (CAFMeasurementRange)fuelEfficiencyMeasurementRange
{
  v3 = [(CAFTrip *)self fuelEfficiencyRange];
  v4 = [(CAFTrip *)self fuelEfficiency];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasFuelEfficiency
{
  v2 = [(CAFTrip *)self fuelEfficiencyCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)fuelEfficiencyInvalid
{
  v2 = [(CAFTrip *)self fuelEfficiencyCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFBoolCharacteristic)showOdometerCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000035000016"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000035000016"];
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

- (BOOL)showOdometer
{
  v2 = [(CAFTrip *)self showOdometerCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasShowOdometer
{
  v2 = [(CAFTrip *)self showOdometerCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFResetControl)resetControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x0000000030000062"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)resetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFTrip *)self resetControl];
  v6 = v5;
  if (v5)
  {
    [v5 resetWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__CAFTrip_resetWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __31__CAFTrip_resetWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasReset
{
  v2 = [(CAFTrip *)self resetControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForUserVisibleLabel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000001"];

  return v10;
}

- (BOOL)registeredForSortOrder
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000003"];

  return v10;
}

- (BOOL)registeredForAverageSpeed
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000045"];

  return v10;
}

- (BOOL)registeredForDistance
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000022"];

  return v10;
}

- (BOOL)registeredForDuration
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000023"];

  return v10;
}

- (BOOL)registeredForEnergy
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000025"];

  return v10;
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

- (BOOL)registeredForShowOdometer
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000035000016"];

  return v10;
}

- (BOOL)registeredForReset
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x0000000030000062"];

  return v10;
}

@end