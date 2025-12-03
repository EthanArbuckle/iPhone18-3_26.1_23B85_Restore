@interface CAFSteeringWheelHeatingCooling
+ (void)load;
- (BOOL)autoMode;
- (BOOL)hasAutoMode;
- (BOOL)heatingCoolingLevelDisabled;
- (BOOL)heatingCoolingLevelInvalid;
- (BOOL)heatingCoolingLevelRestricted;
- (BOOL)registeredForAutoMode;
- (BOOL)registeredForHeatingCoolingLevel;
- (CAFBoolCharacteristic)autoModeCharacteristic;
- (CAFInt32Characteristic)heatingCoolingLevelCharacteristic;
- (CAFInt32Range)heatingCoolingLevelRange;
- (int)heatingCoolingLevel;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFSteeringWheelHeatingCooling

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSteeringWheelHeatingCooling;
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
  v6.super_class = CAFSteeringWheelHeatingCooling;
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
  v6.super_class = CAFSteeringWheelHeatingCooling;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFInt32Characteristic)heatingCoolingLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000021"];

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
  heatingCoolingLevelCharacteristic = [(CAFSteeringWheelHeatingCooling *)self heatingCoolingLevelCharacteristic];
  int32Value = [heatingCoolingLevelCharacteristic int32Value];

  return int32Value;
}

- (CAFInt32Range)heatingCoolingLevelRange
{
  heatingCoolingLevelCharacteristic = [(CAFSteeringWheelHeatingCooling *)self heatingCoolingLevelCharacteristic];
  range = [heatingCoolingLevelCharacteristic range];

  return range;
}

- (BOOL)heatingCoolingLevelDisabled
{
  heatingCoolingLevelCharacteristic = [(CAFSteeringWheelHeatingCooling *)self heatingCoolingLevelCharacteristic];
  isDisabled = [heatingCoolingLevelCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)heatingCoolingLevelInvalid
{
  heatingCoolingLevelCharacteristic = [(CAFSteeringWheelHeatingCooling *)self heatingCoolingLevelCharacteristic];
  isInvalid = [heatingCoolingLevelCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)heatingCoolingLevelRestricted
{
  heatingCoolingLevelCharacteristic = [(CAFSteeringWheelHeatingCooling *)self heatingCoolingLevelCharacteristic];
  isRestricted = [heatingCoolingLevelCharacteristic isRestricted];

  return isRestricted;
}

- (CAFBoolCharacteristic)autoModeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005F"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000005F"];
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

- (BOOL)autoMode
{
  autoModeCharacteristic = [(CAFSteeringWheelHeatingCooling *)self autoModeCharacteristic];
  bOOLValue = [autoModeCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasAutoMode
{
  autoModeCharacteristic = [(CAFSteeringWheelHeatingCooling *)self autoModeCharacteristic];
  v3 = autoModeCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForHeatingCoolingLevel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000021"];

  return v10;
}

- (BOOL)registeredForAutoMode
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005F"];

  return v10;
}

@end