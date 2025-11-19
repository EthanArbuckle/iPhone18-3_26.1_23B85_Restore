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
- (void)registerObserver:(id)a3;
- (void)setDestination:(id)a3;
- (void)setLegs:(id)a3;
- (void)setOrigin:(id)a3;
- (void)setUserVisibleApplicationName:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFRoute

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFRoute;
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
  v6.super_class = CAFRoute;
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
  v6.super_class = CAFRoute;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFRouteStateCharacteristic)routeStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000101"];

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
  v2 = [(CAFRoute *)self routeStateCharacteristic];
  v3 = [v2 routeStateValue];

  return v3;
}

- (CAFStringCharacteristic)userVisibleApplicationNameCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000102"];

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
  v2 = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (void)setUserVisibleApplicationName:(id)a3
{
  v4 = a3;
  v5 = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
  [v5 setStringValue:v4];
}

- (BOOL)userVisibleApplicationNameInvalid
{
  v2 = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFBoolCharacteristic)applicationEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000103"];

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
  v2 = [(CAFRoute *)self applicationEnabledCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)applicationEnabledInvalid
{
  v2 = [(CAFRoute *)self applicationEnabledCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFBoolCharacteristic)userEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000104"];

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
  v2 = [(CAFRoute *)self userEnabledCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)userEnabledInvalid
{
  v2 = [(CAFRoute *)self userEnabledCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFBoolCharacteristic)vehicleEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000105"];

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
  v2 = [(CAFRoute *)self vehicleEnabledCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (CAFGeodeticSystemCharacteristic)geodeticSystemCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000106"];

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
  v2 = [(CAFRoute *)self geodeticSystemCharacteristic];
  v3 = [v2 geodeticSystemValue];

  return v3;
}

- (CAFPointOfInterestCharacteristic)originCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000107"];

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
  v2 = [(CAFRoute *)self originCharacteristic];
  v3 = [v2 pointOfInterestValue];

  return v3;
}

- (void)setOrigin:(id)a3
{
  v4 = a3;
  v5 = [(CAFRoute *)self originCharacteristic];
  [v5 setPointOfInterestValue:v4];
}

- (BOOL)originInvalid
{
  v2 = [(CAFRoute *)self originCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFPointOfInterestCharacteristic)destinationCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000108"];

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
  v2 = [(CAFRoute *)self destinationCharacteristic];
  v3 = [v2 pointOfInterestValue];

  return v3;
}

- (void)setDestination:(id)a3
{
  v4 = a3;
  v5 = [(CAFRoute *)self destinationCharacteristic];
  [v5 setPointOfInterestValue:v4];
}

- (BOOL)destinationInvalid
{
  v2 = [(CAFRoute *)self destinationCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFRouteLegsCharacteristic)legsCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000045000109"];

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
  v2 = [(CAFRoute *)self legsCharacteristic];
  v3 = [v2 routeLegsValue];

  return v3;
}

- (void)setLegs:(id)a3
{
  v4 = a3;
  v5 = [(CAFRoute *)self legsCharacteristic];
  [v5 setRouteLegsValue:v4];
}

- (BOOL)hasLegs
{
  v2 = [(CAFRoute *)self legsCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)legsInvalid
{
  v2 = [(CAFRoute *)self legsCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)registeredForRouteState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000101"];

  return v10;
}

- (BOOL)registeredForUserVisibleApplicationName
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000102"];

  return v10;
}

- (BOOL)registeredForApplicationEnabled
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000103"];

  return v10;
}

- (BOOL)registeredForUserEnabled
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000104"];

  return v10;
}

- (BOOL)registeredForVehicleEnabled
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000105"];

  return v10;
}

- (BOOL)registeredForGeodeticSystem
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000106"];

  return v10;
}

- (BOOL)registeredForOrigin
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000107"];

  return v10;
}

- (BOOL)registeredForDestination
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000108"];

  return v10;
}

- (BOOL)registeredForLegs
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000045000109"];

  return v10;
}

@end