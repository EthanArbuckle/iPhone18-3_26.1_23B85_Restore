@interface CAFBatteryLevel
+ (void)load;
- (BOOL)batteryLevelInvalid;
- (BOOL)hasBatteryLevelMarkerCriticalLow;
- (BOOL)hasBatteryLevelMarkerLow;
- (BOOL)registeredForBatteryLevel;
- (BOOL)registeredForBatteryLevelMarkerCriticalLow;
- (BOOL)registeredForBatteryLevelMarkerLow;
- (BOOL)registeredForBatteryLevelState;
- (CAFBatteryLevelStateCharacteristic)batteryLevelStateCharacteristic;
- (CAFMeasurementCharacteristic)batteryLevelCharacteristic;
- (CAFMeasurementCharacteristic)batteryLevelMarkerCriticalLowCharacteristic;
- (CAFMeasurementCharacteristic)batteryLevelMarkerLowCharacteristic;
- (CAFMeasurementRange)batteryLevelMarkerCriticalLowMeasurementRange;
- (CAFMeasurementRange)batteryLevelMarkerLowMeasurementRange;
- (CAFMeasurementRange)batteryLevelMeasurementRange;
- (CAFUInt8Range)batteryLevelMarkerCriticalLowRange;
- (CAFUInt8Range)batteryLevelMarkerLowRange;
- (CAFUInt8Range)batteryLevelRange;
- (NSMeasurement)batteryLevel;
- (NSMeasurement)batteryLevelMarkerCriticalLow;
- (NSMeasurement)batteryLevelMarkerLow;
- (unsigned)batteryLevelState;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFBatteryLevel

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFBatteryLevel;
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
  v6.super_class = CAFBatteryLevel;
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
  v6.super_class = CAFBatteryLevel;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)batteryLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000031"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000031"];
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

- (NSMeasurement)batteryLevel
{
  v2 = [(CAFBatteryLevel *)self batteryLevelCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt8Range)batteryLevelRange
{
  v2 = [(CAFBatteryLevel *)self batteryLevelCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt8Range];

  return v4;
}

- (CAFMeasurementRange)batteryLevelMeasurementRange
{
  v3 = [(CAFBatteryLevel *)self batteryLevelRange];
  v4 = [(CAFBatteryLevel *)self batteryLevel];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)batteryLevelInvalid
{
  v2 = [(CAFBatteryLevel *)self batteryLevelCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFBatteryLevelStateCharacteristic)batteryLevelStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000035"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000035"];
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

- (unsigned)batteryLevelState
{
  v2 = [(CAFBatteryLevel *)self batteryLevelStateCharacteristic];
  v3 = [v2 batteryLevelStateValue];

  return v3;
}

- (CAFMeasurementCharacteristic)batteryLevelMarkerLowCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000004C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004C"];
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

- (NSMeasurement)batteryLevelMarkerLow
{
  v2 = [(CAFBatteryLevel *)self batteryLevelMarkerLowCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt8Range)batteryLevelMarkerLowRange
{
  v2 = [(CAFBatteryLevel *)self batteryLevelMarkerLowCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt8Range];

  return v4;
}

- (CAFMeasurementRange)batteryLevelMarkerLowMeasurementRange
{
  v3 = [(CAFBatteryLevel *)self batteryLevelMarkerLowRange];
  v4 = [(CAFBatteryLevel *)self batteryLevelMarkerLow];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasBatteryLevelMarkerLow
{
  v2 = [(CAFBatteryLevel *)self batteryLevelMarkerLowCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)batteryLevelMarkerCriticalLowCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000003000004D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004D"];
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

- (NSMeasurement)batteryLevelMarkerCriticalLow
{
  v2 = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLowCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt8Range)batteryLevelMarkerCriticalLowRange
{
  v2 = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLowCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt8Range];

  return v4;
}

- (CAFMeasurementRange)batteryLevelMarkerCriticalLowMeasurementRange
{
  v3 = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLowRange];
  v4 = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLow];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasBatteryLevelMarkerCriticalLow
{
  v2 = [(CAFBatteryLevel *)self batteryLevelMarkerCriticalLowCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForBatteryLevel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000031"];

  return v10;
}

- (BOOL)registeredForBatteryLevelState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000035"];

  return v10;
}

- (BOOL)registeredForBatteryLevelMarkerLow
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000004C"];

  return v10;
}

- (BOOL)registeredForBatteryLevelMarkerCriticalLow
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000003000004D"];

  return v10;
}

@end