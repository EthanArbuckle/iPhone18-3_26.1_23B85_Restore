@interface CAFProximityAlerts
+ (void)load;
- (BOOL)hasProximityAlertRearLeft;
- (BOOL)hasProximityAlertRearRight;
- (BOOL)registeredForProximityAlertRearLeft;
- (BOOL)registeredForProximityAlertRearRight;
- (CAFProximityAlertCharacteristic)proximityAlertRearLeftCharacteristic;
- (CAFProximityAlertCharacteristic)proximityAlertRearRightCharacteristic;
- (unsigned)proximityAlertRearLeft;
- (unsigned)proximityAlertRearRight;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFProximityAlerts

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFProximityAlerts;
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
  v6.super_class = CAFProximityAlerts;
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
  v6.super_class = CAFProximityAlerts;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFProximityAlertCharacteristic)proximityAlertRearLeftCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000051000003"];
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

- (unsigned)proximityAlertRearLeft
{
  proximityAlertRearLeftCharacteristic = [(CAFProximityAlerts *)self proximityAlertRearLeftCharacteristic];
  proximityAlertValue = [proximityAlertRearLeftCharacteristic proximityAlertValue];

  return proximityAlertValue;
}

- (BOOL)hasProximityAlertRearLeft
{
  proximityAlertRearLeftCharacteristic = [(CAFProximityAlerts *)self proximityAlertRearLeftCharacteristic];
  v3 = proximityAlertRearLeftCharacteristic != 0;

  return v3;
}

- (CAFProximityAlertCharacteristic)proximityAlertRearRightCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000051000004"];
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

- (unsigned)proximityAlertRearRight
{
  proximityAlertRearRightCharacteristic = [(CAFProximityAlerts *)self proximityAlertRearRightCharacteristic];
  proximityAlertValue = [proximityAlertRearRightCharacteristic proximityAlertValue];

  return proximityAlertValue;
}

- (BOOL)hasProximityAlertRearRight
{
  proximityAlertRearRightCharacteristic = [(CAFProximityAlerts *)self proximityAlertRearRightCharacteristic];
  v3 = proximityAlertRearRightCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForProximityAlertRearLeft
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000003"];

  return v10;
}

- (BOOL)registeredForProximityAlertRearRight
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000004"];

  return v10;
}

@end