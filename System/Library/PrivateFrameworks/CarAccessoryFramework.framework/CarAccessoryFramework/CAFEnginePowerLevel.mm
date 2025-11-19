@interface CAFEnginePowerLevel
+ (void)load;
- (BOOL)hasPowerLevelMarkerAvailableMax;
- (BOOL)hasPowerLevelMarkerAvailableMin;
- (BOOL)hasPowerState;
- (BOOL)powerLevelInvalid;
- (BOOL)registeredForPowerLevel;
- (BOOL)registeredForPowerLevelMarkerAvailableMax;
- (BOOL)registeredForPowerLevelMarkerAvailableMin;
- (BOOL)registeredForPowerState;
- (CAFFloatRange)powerLevelMarkerAvailableMaxRange;
- (CAFFloatRange)powerLevelMarkerAvailableMinRange;
- (CAFFloatRange)powerLevelRange;
- (CAFMeasurementCharacteristic)powerLevelCharacteristic;
- (CAFMeasurementCharacteristic)powerLevelMarkerAvailableMaxCharacteristic;
- (CAFMeasurementCharacteristic)powerLevelMarkerAvailableMinCharacteristic;
- (CAFMeasurementRange)powerLevelMarkerAvailableMaxMeasurementRange;
- (CAFMeasurementRange)powerLevelMarkerAvailableMinMeasurementRange;
- (CAFMeasurementRange)powerLevelMeasurementRange;
- (CAFPowerStateCharacteristic)powerStateCharacteristic;
- (NSMeasurement)powerLevel;
- (NSMeasurement)powerLevelMarkerAvailableMax;
- (NSMeasurement)powerLevelMarkerAvailableMin;
- (unsigned)powerState;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFEnginePowerLevel

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFEnginePowerLevel;
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
  v6.super_class = CAFEnginePowerLevel;
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
  v6.super_class = CAFEnginePowerLevel;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)powerLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000022"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000022"];
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

- (NSMeasurement)powerLevel
{
  v2 = [(CAFEnginePowerLevel *)self powerLevelCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)powerLevelRange
{
  v2 = [(CAFEnginePowerLevel *)self powerLevelCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)powerLevelMeasurementRange
{
  v3 = [(CAFEnginePowerLevel *)self powerLevelRange];
  v4 = [(CAFEnginePowerLevel *)self powerLevel];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)powerLevelInvalid
{
  v2 = [(CAFEnginePowerLevel *)self powerLevelCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFMeasurementCharacteristic)powerLevelMarkerAvailableMinCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000023"];
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

- (NSMeasurement)powerLevelMarkerAvailableMin
{
  v2 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMinCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)powerLevelMarkerAvailableMinRange
{
  v2 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMinCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)powerLevelMarkerAvailableMinMeasurementRange
{
  v3 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMinRange];
  v4 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMin];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasPowerLevelMarkerAvailableMin
{
  v2 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMinCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)powerLevelMarkerAvailableMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000024"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000024"];
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

- (NSMeasurement)powerLevelMarkerAvailableMax
{
  v2 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMaxCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFFloatRange)powerLevelMarkerAvailableMaxRange
{
  v2 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMaxCharacteristic];
  v3 = [v2 range];
  v4 = [v3 floatRange];

  return v4;
}

- (CAFMeasurementRange)powerLevelMarkerAvailableMaxMeasurementRange
{
  v3 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMaxRange];
  v4 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMax];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasPowerLevelMarkerAvailableMax
{
  v2 = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMaxCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFPowerStateCharacteristic)powerStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000067"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000067"];
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

- (unsigned)powerState
{
  v2 = [(CAFEnginePowerLevel *)self powerStateCharacteristic];
  v3 = [v2 powerStateValue];

  return v3;
}

- (BOOL)hasPowerState
{
  v2 = [(CAFEnginePowerLevel *)self powerStateCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForPowerLevel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000022"];

  return v10;
}

- (BOOL)registeredForPowerLevelMarkerAvailableMin
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000023"];

  return v10;
}

- (BOOL)registeredForPowerLevelMarkerAvailableMax
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000024"];

  return v10;
}

- (BOOL)registeredForPowerState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000067"];

  return v10;
}

@end