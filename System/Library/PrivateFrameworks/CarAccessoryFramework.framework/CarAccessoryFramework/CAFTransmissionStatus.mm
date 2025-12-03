@interface CAFTransmissionStatus
+ (void)load;
- (BOOL)gearPositionInvalid;
- (BOOL)registeredForGearPosition;
- (BOOL)registeredForTransmissionMode;
- (CAFTransmissionModeCharacteristic)transmissionModeCharacteristic;
- (CAFUInt8Characteristic)gearPositionCharacteristic;
- (CAFUInt8Range)gearPositionRange;
- (unsigned)gearPosition;
- (unsigned)transmissionMode;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTransmissionStatus

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTransmissionStatus;
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
  v6.super_class = CAFTransmissionStatus;
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
  v6.super_class = CAFTransmissionStatus;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFTransmissionModeCharacteristic)transmissionModeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000011"];
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

- (unsigned)transmissionMode
{
  transmissionModeCharacteristic = [(CAFTransmissionStatus *)self transmissionModeCharacteristic];
  transmissionModeValue = [transmissionModeCharacteristic transmissionModeValue];

  return transmissionModeValue;
}

- (CAFUInt8Characteristic)gearPositionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000012"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000012"];
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

- (unsigned)gearPosition
{
  gearPositionCharacteristic = [(CAFTransmissionStatus *)self gearPositionCharacteristic];
  uint8Value = [gearPositionCharacteristic uint8Value];

  return uint8Value;
}

- (CAFUInt8Range)gearPositionRange
{
  gearPositionCharacteristic = [(CAFTransmissionStatus *)self gearPositionCharacteristic];
  range = [gearPositionCharacteristic range];

  return range;
}

- (BOOL)gearPositionInvalid
{
  gearPositionCharacteristic = [(CAFTransmissionStatus *)self gearPositionCharacteristic];
  isInvalid = [gearPositionCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)registeredForTransmissionMode
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000011"];

  return v10;
}

- (BOOL)registeredForGearPosition
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000012"];

  return v10;
}

@end