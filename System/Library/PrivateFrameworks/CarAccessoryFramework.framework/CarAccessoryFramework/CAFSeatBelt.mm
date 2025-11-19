@interface CAFSeatBelt
+ (void)load;
- (BOOL)hasBuckleState;
- (BOOL)hasSeatOccupancy;
- (BOOL)registeredForBuckleState;
- (BOOL)registeredForSeatBeltIndicator;
- (BOOL)registeredForSeatOccupancy;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFLockStateCharacteristic)buckleStateCharacteristic;
- (CAFSeatBeltIndicatorCharacteristic)seatBeltIndicatorCharacteristic;
- (CAFSeatOccupancyCharacteristic)seatOccupancyCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSString)vehicleLayoutKey;
- (id)name;
- (unsigned)buckleState;
- (unsigned)seatBeltIndicator;
- (unsigned)seatOccupancy;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFSeatBelt

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSeatBelt;
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
  v6.super_class = CAFSeatBelt;
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
  v6.super_class = CAFSeatBelt;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFSeatBelt *)self vehicleLayoutKeyCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

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
  v2 = [(CAFSeatBelt *)self vehicleLayoutKeyCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFSeatOccupancyCharacteristic)seatOccupancyCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000060000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000060000006"];
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

- (unsigned)seatOccupancy
{
  v2 = [(CAFSeatBelt *)self seatOccupancyCharacteristic];
  v3 = [v2 seatOccupancyValue];

  return v3;
}

- (BOOL)hasSeatOccupancy
{
  v2 = [(CAFSeatBelt *)self seatOccupancyCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFLockStateCharacteristic)buckleStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000060000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000060000002"];
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

- (unsigned)buckleState
{
  v2 = [(CAFSeatBelt *)self buckleStateCharacteristic];
  v3 = [v2 lockStateValue];

  return v3;
}

- (BOOL)hasBuckleState
{
  v2 = [(CAFSeatBelt *)self buckleStateCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFSeatBeltIndicatorCharacteristic)seatBeltIndicatorCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000060000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000060000007"];
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

- (unsigned)seatBeltIndicator
{
  v2 = [(CAFSeatBelt *)self seatBeltIndicatorCharacteristic];
  v3 = [v2 seatBeltIndicatorValue];

  return v3;
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

- (BOOL)registeredForSeatOccupancy
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000060000006"];

  return v10;
}

- (BOOL)registeredForBuckleState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000060000002"];

  return v10;
}

- (BOOL)registeredForSeatBeltIndicator
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000060000007"];

  return v10;
}

@end