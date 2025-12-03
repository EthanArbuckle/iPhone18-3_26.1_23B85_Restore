@interface CAFAutoClimateControl
+ (void)load;
- (BOOL)hasIntensity;
- (BOOL)hasLevel;
- (BOOL)hasVehicleLayoutKey;
- (BOOL)intensityDisabled;
- (BOOL)intensityRestricted;
- (BOOL)levelDisabled;
- (BOOL)levelInvalid;
- (BOOL)levelRestricted;
- (BOOL)registeredForAutoModeIntensity;
- (BOOL)registeredForAutoModeLevel;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFAutoModeIntensityCharacteristic)intensityCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (CAFUInt8Characteristic)levelCharacteristic;
- (CAFUInt8Range)levelRange;
- (NSString)vehicleLayoutKey;
- (id)name;
- (unsigned)intensity;
- (unsigned)level;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFAutoClimateControl

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFAutoClimateControl;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFAutoClimateControl;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFAutoClimateControl;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFAutoClimateControl *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFUInt8Characteristic)levelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000024"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000024"];
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

- (unsigned)level
{
  levelCharacteristic = [(CAFAutoClimateControl *)self levelCharacteristic];
  uint8Value = [levelCharacteristic uint8Value];

  return uint8Value;
}

- (CAFUInt8Range)levelRange
{
  levelCharacteristic = [(CAFAutoClimateControl *)self levelCharacteristic];
  range = [levelCharacteristic range];

  return range;
}

- (BOOL)hasLevel
{
  levelCharacteristic = [(CAFAutoClimateControl *)self levelCharacteristic];
  v3 = levelCharacteristic != 0;

  return v3;
}

- (BOOL)levelInvalid
{
  levelCharacteristic = [(CAFAutoClimateControl *)self levelCharacteristic];
  isInvalid = [levelCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)levelDisabled
{
  levelCharacteristic = [(CAFAutoClimateControl *)self levelCharacteristic];
  isDisabled = [levelCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)levelRestricted
{
  levelCharacteristic = [(CAFAutoClimateControl *)self levelCharacteristic];
  isRestricted = [levelCharacteristic isRestricted];

  return isRestricted;
}

- (CAFAutoModeIntensityCharacteristic)intensityCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000028"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000028"];
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

- (unsigned)intensity
{
  intensityCharacteristic = [(CAFAutoClimateControl *)self intensityCharacteristic];
  autoModeIntensityValue = [intensityCharacteristic autoModeIntensityValue];

  return autoModeIntensityValue;
}

- (BOOL)hasIntensity
{
  intensityCharacteristic = [(CAFAutoClimateControl *)self intensityCharacteristic];
  v3 = intensityCharacteristic != 0;

  return v3;
}

- (BOOL)intensityDisabled
{
  intensityCharacteristic = [(CAFAutoClimateControl *)self intensityCharacteristic];
  isDisabled = [intensityCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)intensityRestricted
{
  intensityCharacteristic = [(CAFAutoClimateControl *)self intensityCharacteristic];
  isRestricted = [intensityCharacteristic isRestricted];

  return isRestricted;
}

- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000065"];

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
  vehicleLayoutKeyCharacteristic = [(CAFAutoClimateControl *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasVehicleLayoutKey
{
  vehicleLayoutKeyCharacteristic = [(CAFAutoClimateControl *)self vehicleLayoutKeyCharacteristic];
  v3 = vehicleLayoutKeyCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForAutoModeLevel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000024"];

  return v10;
}

- (BOOL)registeredForAutoModeIntensity
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000028"];

  return v10;
}

- (BOOL)registeredForVehicleLayoutKey
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000065"];

  return v10;
}

@end