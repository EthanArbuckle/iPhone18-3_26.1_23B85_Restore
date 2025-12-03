@interface CAFRoute
+ (void)load;
- (BOOL)applicationEnabled;
- (BOOL)applicationEnabledInvalid;
- (BOOL)destinationInvalid;
- (BOOL)hasLegs;
- (BOOL)legsInvalid;
- (BOOL)originInvalid;
- (BOOL)registeredForApplicationEnabled;
- (BOOL)registeredForDestination;
- (BOOL)registeredForGeodeticSystem;
- (BOOL)registeredForLegs;
- (BOOL)registeredForOrigin;
- (BOOL)registeredForRouteState;
- (BOOL)registeredForUserEnabled;
- (BOOL)registeredForUserVisibleApplicationName;
- (BOOL)registeredForVehicleEnabled;
- (BOOL)userEnabled;
- (BOOL)userEnabledInvalid;
- (BOOL)userVisibleApplicationNameInvalid;
- (BOOL)vehicleEnabled;
- (CAFBoolCharacteristic)applicationEnabledCharacteristic;
- (CAFBoolCharacteristic)userEnabledCharacteristic;
- (CAFBoolCharacteristic)vehicleEnabledCharacteristic;
- (CAFGeodeticSystemCharacteristic)geodeticSystemCharacteristic;
- (CAFPointOfInterest)destination;
- (CAFPointOfInterest)origin;
- (CAFPointOfInterestCharacteristic)destinationCharacteristic;
- (CAFPointOfInterestCharacteristic)originCharacteristic;
- (CAFRouteLegs)legs;
- (CAFRouteLegsCharacteristic)legsCharacteristic;
- (CAFRouteStateCharacteristic)routeStateCharacteristic;
- (CAFStringCharacteristic)userVisibleApplicationNameCharacteristic;
- (NSString)userVisibleApplicationName;
- (unsigned)geodeticSystem;
- (unsigned)routeState;
- (void)registerObserver:(id)observer;
- (void)setDestination:(id)destination;
- (void)setLegs:(id)legs;
- (void)setOrigin:(id)origin;
- (void)setUserVisibleApplicationName:(id)name;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFRoute

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFRoute;
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
  v6.super_class = CAFRoute;
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
  v6.super_class = CAFRoute;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFRouteStateCharacteristic)routeStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000101"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000101"];
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

- (unsigned)routeState
{
  routeStateCharacteristic = [(CAFRoute *)self routeStateCharacteristic];
  routeStateValue = [routeStateCharacteristic routeStateValue];

  return routeStateValue;
}

- (CAFStringCharacteristic)userVisibleApplicationNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000102"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000102"];
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

- (NSString)userVisibleApplicationName
{
  userVisibleApplicationNameCharacteristic = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
  stringValue = [userVisibleApplicationNameCharacteristic stringValue];

  return stringValue;
}

- (void)setUserVisibleApplicationName:(id)name
{
  nameCopy = name;
  userVisibleApplicationNameCharacteristic = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
  [userVisibleApplicationNameCharacteristic setStringValue:nameCopy];
}

- (BOOL)userVisibleApplicationNameInvalid
{
  userVisibleApplicationNameCharacteristic = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
  isInvalid = [userVisibleApplicationNameCharacteristic isInvalid];

  return isInvalid;
}

- (CAFBoolCharacteristic)applicationEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000103"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000103"];
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

- (BOOL)applicationEnabled
{
  applicationEnabledCharacteristic = [(CAFRoute *)self applicationEnabledCharacteristic];
  bOOLValue = [applicationEnabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)applicationEnabledInvalid
{
  applicationEnabledCharacteristic = [(CAFRoute *)self applicationEnabledCharacteristic];
  isInvalid = [applicationEnabledCharacteristic isInvalid];

  return isInvalid;
}

- (CAFBoolCharacteristic)userEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000104"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000104"];
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

- (BOOL)userEnabled
{
  userEnabledCharacteristic = [(CAFRoute *)self userEnabledCharacteristic];
  bOOLValue = [userEnabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)userEnabledInvalid
{
  userEnabledCharacteristic = [(CAFRoute *)self userEnabledCharacteristic];
  isInvalid = [userEnabledCharacteristic isInvalid];

  return isInvalid;
}

- (CAFBoolCharacteristic)vehicleEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000105"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000105"];
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

- (BOOL)vehicleEnabled
{
  vehicleEnabledCharacteristic = [(CAFRoute *)self vehicleEnabledCharacteristic];
  bOOLValue = [vehicleEnabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (CAFGeodeticSystemCharacteristic)geodeticSystemCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000106"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000106"];
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

- (unsigned)geodeticSystem
{
  geodeticSystemCharacteristic = [(CAFRoute *)self geodeticSystemCharacteristic];
  geodeticSystemValue = [geodeticSystemCharacteristic geodeticSystemValue];

  return geodeticSystemValue;
}

- (CAFPointOfInterestCharacteristic)originCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000107"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000107"];
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

- (CAFPointOfInterest)origin
{
  originCharacteristic = [(CAFRoute *)self originCharacteristic];
  pointOfInterestValue = [originCharacteristic pointOfInterestValue];

  return pointOfInterestValue;
}

- (void)setOrigin:(id)origin
{
  originCopy = origin;
  originCharacteristic = [(CAFRoute *)self originCharacteristic];
  [originCharacteristic setPointOfInterestValue:originCopy];
}

- (BOOL)originInvalid
{
  originCharacteristic = [(CAFRoute *)self originCharacteristic];
  isInvalid = [originCharacteristic isInvalid];

  return isInvalid;
}

- (CAFPointOfInterestCharacteristic)destinationCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000108"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000108"];
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

- (CAFPointOfInterest)destination
{
  destinationCharacteristic = [(CAFRoute *)self destinationCharacteristic];
  pointOfInterestValue = [destinationCharacteristic pointOfInterestValue];

  return pointOfInterestValue;
}

- (void)setDestination:(id)destination
{
  destinationCopy = destination;
  destinationCharacteristic = [(CAFRoute *)self destinationCharacteristic];
  [destinationCharacteristic setPointOfInterestValue:destinationCopy];
}

- (BOOL)destinationInvalid
{
  destinationCharacteristic = [(CAFRoute *)self destinationCharacteristic];
  isInvalid = [destinationCharacteristic isInvalid];

  return isInvalid;
}

- (CAFRouteLegsCharacteristic)legsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000109"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000109"];
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

- (CAFRouteLegs)legs
{
  legsCharacteristic = [(CAFRoute *)self legsCharacteristic];
  routeLegsValue = [legsCharacteristic routeLegsValue];

  return routeLegsValue;
}

- (void)setLegs:(id)legs
{
  legsCopy = legs;
  legsCharacteristic = [(CAFRoute *)self legsCharacteristic];
  [legsCharacteristic setRouteLegsValue:legsCopy];
}

- (BOOL)hasLegs
{
  legsCharacteristic = [(CAFRoute *)self legsCharacteristic];
  v3 = legsCharacteristic != 0;

  return v3;
}

- (BOOL)legsInvalid
{
  legsCharacteristic = [(CAFRoute *)self legsCharacteristic];
  isInvalid = [legsCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)registeredForRouteState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000101"];

  return v10;
}

- (BOOL)registeredForUserVisibleApplicationName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000102"];

  return v10;
}

- (BOOL)registeredForApplicationEnabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000103"];

  return v10;
}

- (BOOL)registeredForUserEnabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000104"];

  return v10;
}

- (BOOL)registeredForVehicleEnabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000105"];

  return v10;
}

- (BOOL)registeredForGeodeticSystem
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000106"];

  return v10;
}

- (BOOL)registeredForOrigin
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000107"];

  return v10;
}

- (BOOL)registeredForDestination
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000108"];

  return v10;
}

- (BOOL)registeredForLegs
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000109"];

  return v10;
}

@end