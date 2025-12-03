@interface CAFChargingStatus
+ (void)load;
- (BOOL)hasCableState;
- (BOOL)hasChargingModeIdentifier;
- (BOOL)hasChargingState;
- (BOOL)hasPortSideIndicator;
- (BOOL)registeredForCableState;
- (BOOL)registeredForChargingModeIdentifier;
- (BOOL)registeredForChargingState;
- (BOOL)registeredForPortSideIndicator;
- (CAFCableStateCharacteristic)cableStateCharacteristic;
- (CAFChargingStateCharacteristic)chargingStateCharacteristic;
- (CAFPortSideIndicatorCharacteristic)portSideIndicatorCharacteristic;
- (CAFStringCharacteristic)chargingModeIdentifierCharacteristic;
- (NSString)chargingModeIdentifier;
- (unsigned)cableState;
- (unsigned)chargingState;
- (unsigned)portSideIndicator;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFChargingStatus

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFChargingStatus;
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
  v6.super_class = CAFChargingStatus;
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
  v6.super_class = CAFChargingStatus;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)chargingModeIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004000000C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000004000000C"];
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

- (NSString)chargingModeIdentifier
{
  chargingModeIdentifierCharacteristic = [(CAFChargingStatus *)self chargingModeIdentifierCharacteristic];
  stringValue = [chargingModeIdentifierCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasChargingModeIdentifier
{
  chargingModeIdentifierCharacteristic = [(CAFChargingStatus *)self chargingModeIdentifierCharacteristic];
  v3 = chargingModeIdentifierCharacteristic != 0;

  return v3;
}

- (CAFChargingStateCharacteristic)chargingStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000040000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000040000005"];
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

- (unsigned)chargingState
{
  chargingStateCharacteristic = [(CAFChargingStatus *)self chargingStateCharacteristic];
  chargingStateValue = [chargingStateCharacteristic chargingStateValue];

  return chargingStateValue;
}

- (BOOL)hasChargingState
{
  chargingStateCharacteristic = [(CAFChargingStatus *)self chargingStateCharacteristic];
  v3 = chargingStateCharacteristic != 0;

  return v3;
}

- (CAFCableStateCharacteristic)cableStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000040000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000040000007"];
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

- (unsigned)cableState
{
  cableStateCharacteristic = [(CAFChargingStatus *)self cableStateCharacteristic];
  cableStateValue = [cableStateCharacteristic cableStateValue];

  return cableStateValue;
}

- (BOOL)hasCableState
{
  cableStateCharacteristic = [(CAFChargingStatus *)self cableStateCharacteristic];
  v3 = cableStateCharacteristic != 0;

  return v3;
}

- (CAFPortSideIndicatorCharacteristic)portSideIndicatorCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000013"];

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
  portSideIndicatorCharacteristic = [(CAFChargingStatus *)self portSideIndicatorCharacteristic];
  portSideIndicatorValue = [portSideIndicatorCharacteristic portSideIndicatorValue];

  return portSideIndicatorValue;
}

- (BOOL)hasPortSideIndicator
{
  portSideIndicatorCharacteristic = [(CAFChargingStatus *)self portSideIndicatorCharacteristic];
  v3 = portSideIndicatorCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForChargingModeIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004000000C"];

  return v10;
}

- (BOOL)registeredForChargingState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000040000005"];

  return v10;
}

- (BOOL)registeredForCableState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000040000007"];

  return v10;
}

- (BOOL)registeredForPortSideIndicator
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000013"];

  return v10;
}

@end