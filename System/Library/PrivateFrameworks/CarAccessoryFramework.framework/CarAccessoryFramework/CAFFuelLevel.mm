@interface CAFFuelLevel
+ (void)load;
- (BOOL)fuelLevelInvalid;
- (BOOL)hasFuelLevelMarkerLow;
- (BOOL)registeredForFillLevelLabel;
- (BOOL)registeredForFuelLevel;
- (BOOL)registeredForFuelLevelMarkerLow;
- (BOOL)registeredForFuelLevelState;
- (BOOL)registeredForPortSideIndicator;
- (CAFFillLevelLabelCharacteristic)fillLevelLabelCharacteristic;
- (CAFFuelLevelStateCharacteristic)fuelLevelStateCharacteristic;
- (CAFMeasurementCharacteristic)fuelLevelCharacteristic;
- (CAFMeasurementCharacteristic)fuelLevelMarkerLowCharacteristic;
- (CAFMeasurementRange)fuelLevelMarkerLowMeasurementRange;
- (CAFMeasurementRange)fuelLevelMeasurementRange;
- (CAFPortSideIndicatorCharacteristic)portSideIndicatorCharacteristic;
- (CAFUInt8Range)fuelLevelMarkerLowRange;
- (CAFUInt8Range)fuelLevelRange;
- (NSMeasurement)fuelLevel;
- (NSMeasurement)fuelLevelMarkerLow;
- (unsigned)fillLevelLabel;
- (unsigned)fuelLevelState;
- (unsigned)portSideIndicator;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFFuelLevel

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFFuelLevel;
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
  v6.super_class = CAFFuelLevel;
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
  v6.super_class = CAFFuelLevel;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)fuelLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000002"];
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

- (NSMeasurement)fuelLevel
{
  v2 = [(CAFFuelLevel *)self fuelLevelCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt8Range)fuelLevelRange
{
  v2 = [(CAFFuelLevel *)self fuelLevelCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt8Range];

  return v4;
}

- (CAFMeasurementRange)fuelLevelMeasurementRange
{
  v3 = [(CAFFuelLevel *)self fuelLevelRange];
  v4 = [(CAFFuelLevel *)self fuelLevel];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)fuelLevelInvalid
{
  v2 = [(CAFFuelLevel *)self fuelLevelCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFFuelLevelStateCharacteristic)fuelLevelStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000017"];
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

- (unsigned)fuelLevelState
{
  v2 = [(CAFFuelLevel *)self fuelLevelStateCharacteristic];
  v3 = [v2 fuelLevelStateValue];

  return v3;
}

- (CAFMeasurementCharacteristic)fuelLevelMarkerLowCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000004100001A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000004100001A"];
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

- (NSMeasurement)fuelLevelMarkerLow
{
  v2 = [(CAFFuelLevel *)self fuelLevelMarkerLowCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt8Range)fuelLevelMarkerLowRange
{
  v2 = [(CAFFuelLevel *)self fuelLevelMarkerLowCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt8Range];

  return v4;
}

- (CAFMeasurementRange)fuelLevelMarkerLowMeasurementRange
{
  v3 = [(CAFFuelLevel *)self fuelLevelMarkerLowRange];
  v4 = [(CAFFuelLevel *)self fuelLevelMarkerLow];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasFuelLevelMarkerLow
{
  v2 = [(CAFFuelLevel *)self fuelLevelMarkerLowCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFFillLevelLabelCharacteristic)fillLevelLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000046000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000007"];
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

- (unsigned)fillLevelLabel
{
  v2 = [(CAFFuelLevel *)self fillLevelLabelCharacteristic];
  v3 = [v2 fillLevelLabelValue];

  return v3;
}

- (CAFPortSideIndicatorCharacteristic)portSideIndicatorCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000013"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000013"];
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

- (unsigned)portSideIndicator
{
  v2 = [(CAFFuelLevel *)self portSideIndicatorCharacteristic];
  v3 = [v2 portSideIndicatorValue];

  return v3;
}

- (BOOL)registeredForFuelLevel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000002"];

  return v10;
}

- (BOOL)registeredForFuelLevelState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000017"];

  return v10;
}

- (BOOL)registeredForFuelLevelMarkerLow
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000004100001A"];

  return v10;
}

- (BOOL)registeredForFillLevelLabel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000046000007"];

  return v10;
}

- (BOOL)registeredForPortSideIndicator
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000013"];

  return v10;
}

@end