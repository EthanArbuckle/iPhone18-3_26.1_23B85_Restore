@interface CAFVehicleVariant
+ (void)load;
- (BOOL)hasAudioLogo;
- (BOOL)hasVehicleLayout;
- (BOOL)hasVehicleLogo;
- (BOOL)registeredForAudioLogo;
- (BOOL)registeredForExteriorStyle;
- (BOOL)registeredForInteriorStyle;
- (BOOL)registeredForVehicleLayout;
- (BOOL)registeredForVehicleLogo;
- (CAFStringCharacteristic)audioLogoCharacteristic;
- (CAFStringCharacteristic)exteriorStyleCharacteristic;
- (CAFStringCharacteristic)interiorStyleCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutCharacteristic;
- (CAFStringCharacteristic)vehicleLogoCharacteristic;
- (NSString)audioLogo;
- (NSString)exteriorStyle;
- (NSString)interiorStyle;
- (NSString)vehicleLayout;
- (NSString)vehicleLogo;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFVehicleVariant

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFVehicleVariant;
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
  v6.super_class = CAFVehicleVariant;
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
  v6.super_class = CAFVehicleVariant;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)exteriorStyleCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000003"];
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

- (NSString)exteriorStyle
{
  exteriorStyleCharacteristic = [(CAFVehicleVariant *)self exteriorStyleCharacteristic];
  stringValue = [exteriorStyleCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)interiorStyleCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000004"];
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

- (NSString)interiorStyle
{
  interiorStyleCharacteristic = [(CAFVehicleVariant *)self interiorStyleCharacteristic];
  stringValue = [interiorStyleCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)vehicleLayoutCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000005"];
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

- (NSString)vehicleLayout
{
  vehicleLayoutCharacteristic = [(CAFVehicleVariant *)self vehicleLayoutCharacteristic];
  stringValue = [vehicleLayoutCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasVehicleLayout
{
  vehicleLayoutCharacteristic = [(CAFVehicleVariant *)self vehicleLayoutCharacteristic];
  v3 = vehicleLayoutCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)audioLogoCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000006"];
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

- (NSString)audioLogo
{
  audioLogoCharacteristic = [(CAFVehicleVariant *)self audioLogoCharacteristic];
  stringValue = [audioLogoCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasAudioLogo
{
  audioLogoCharacteristic = [(CAFVehicleVariant *)self audioLogoCharacteristic];
  v3 = audioLogoCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)vehicleLogoCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000007"];
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

- (NSString)vehicleLogo
{
  vehicleLogoCharacteristic = [(CAFVehicleVariant *)self vehicleLogoCharacteristic];
  stringValue = [vehicleLogoCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasVehicleLogo
{
  vehicleLogoCharacteristic = [(CAFVehicleVariant *)self vehicleLogoCharacteristic];
  v3 = vehicleLogoCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForExteriorStyle
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000003"];

  return v10;
}

- (BOOL)registeredForInteriorStyle
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000004"];

  return v10;
}

- (BOOL)registeredForVehicleLayout
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000005"];

  return v10;
}

- (BOOL)registeredForAudioLogo
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000006"];

  return v10;
}

- (BOOL)registeredForVehicleLogo
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000007"];

  return v10;
}

@end