@interface CAFTemperatureLevel
+ (void)load;
- (BOOL)hasOn;
- (BOOL)heatingCoolingLevelDisabled;
- (BOOL)heatingCoolingLevelInvalid;
- (BOOL)heatingCoolingLevelRestricted;
- (BOOL)on;
- (BOOL)onDisabled;
- (BOOL)onInvalid;
- (BOOL)onRestricted;
- (BOOL)registeredForHeatingCoolingLevel;
- (BOOL)registeredForOn;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFInt32Characteristic)heatingCoolingLevelCharacteristic;
- (CAFInt32Range)heatingCoolingLevelRange;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSString)vehicleLayoutKey;
- (id)name;
- (int)heatingCoolingLevel;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTemperatureLevel

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTemperatureLevel;
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
  v6.super_class = CAFTemperatureLevel;
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
  v6.super_class = CAFTemperatureLevel;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFTemperatureLevel *)self vehicleLayoutKeyCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  return v3;
}

- (CAFInt32Characteristic)heatingCoolingLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000031000021"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000021"];
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

- (int)heatingCoolingLevel
{
  v2 = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  v3 = [v2 int32Value];

  return v3;
}

- (CAFInt32Range)heatingCoolingLevelRange
{
  v2 = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)heatingCoolingLevelDisabled
{
  v2 = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (BOOL)heatingCoolingLevelInvalid
{
  v2 = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)heatingCoolingLevelRestricted
{
  v2 = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  v3 = [v2 isRestricted];

  return v3;
}

- (CAFBoolCharacteristic)onCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000002"];
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

- (BOOL)on
{
  v2 = [(CAFTemperatureLevel *)self onCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasOn
{
  v2 = [(CAFTemperatureLevel *)self onCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)onDisabled
{
  v2 = [(CAFTemperatureLevel *)self onCharacteristic];
  v3 = [v2 isDisabled];

  return v3;
}

- (BOOL)onInvalid
{
  v2 = [(CAFTemperatureLevel *)self onCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)onRestricted
{
  v2 = [(CAFTemperatureLevel *)self onCharacteristic];
  v3 = [v2 isRestricted];

  return v3;
}

- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000036000065"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000065"];
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

- (NSString)vehicleLayoutKey
{
  v2 = [(CAFTemperatureLevel *)self vehicleLayoutKeyCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)registeredForHeatingCoolingLevel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000031000021"];

  return v10;
}

- (BOOL)registeredForOn
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000002"];

  return v10;
}

- (BOOL)registeredForVehicleLayoutKey
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000036000065"];

  return v10;
}

@end