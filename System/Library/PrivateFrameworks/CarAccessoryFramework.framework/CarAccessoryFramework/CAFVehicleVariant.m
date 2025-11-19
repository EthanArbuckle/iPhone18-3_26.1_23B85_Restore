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
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFVehicleVariant

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFVehicleVariant;
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
  v6.super_class = CAFVehicleVariant;
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
  v6.super_class = CAFVehicleVariant;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)exteriorStyleCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000048000003"];

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
  v2 = [(CAFVehicleVariant *)self exteriorStyleCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFStringCharacteristic)interiorStyleCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000048000004"];

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
  v2 = [(CAFVehicleVariant *)self interiorStyleCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFStringCharacteristic)vehicleLayoutCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000048000005"];

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
  v2 = [(CAFVehicleVariant *)self vehicleLayoutCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasVehicleLayout
{
  v2 = [(CAFVehicleVariant *)self vehicleLayoutCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFStringCharacteristic)audioLogoCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000048000006"];

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
  v2 = [(CAFVehicleVariant *)self audioLogoCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasAudioLogo
{
  v2 = [(CAFVehicleVariant *)self audioLogoCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFStringCharacteristic)vehicleLogoCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000048000007"];

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
  v2 = [(CAFVehicleVariant *)self vehicleLogoCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasVehicleLogo
{
  v2 = [(CAFVehicleVariant *)self vehicleLogoCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForExteriorStyle
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000048000003"];

  return v10;
}

- (BOOL)registeredForInteriorStyle
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000048000004"];

  return v10;
}

- (BOOL)registeredForVehicleLayout
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000048000005"];

  return v10;
}

- (BOOL)registeredForAudioLogo
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000048000006"];

  return v10;
}

- (BOOL)registeredForVehicleLogo
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000048000007"];

  return v10;
}

@end