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
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTransmissionStatus

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTransmissionStatus;
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
  v6.super_class = CAFTransmissionStatus;
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
  v6.super_class = CAFTransmissionStatus;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFTransmissionModeCharacteristic)transmissionModeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000011"];

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
  v2 = [(CAFTransmissionStatus *)self transmissionModeCharacteristic];
  v3 = [v2 transmissionModeValue];

  return v3;
}

- (CAFUInt8Characteristic)gearPositionCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000012"];

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
  v2 = [(CAFTransmissionStatus *)self gearPositionCharacteristic];
  v3 = [v2 uint8Value];

  return v3;
}

- (CAFUInt8Range)gearPositionRange
{
  v2 = [(CAFTransmissionStatus *)self gearPositionCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)gearPositionInvalid
{
  v2 = [(CAFTransmissionStatus *)self gearPositionCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (BOOL)registeredForTransmissionMode
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000011"];

  return v10;
}

- (BOOL)registeredForGearPosition
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000012"];

  return v10;
}

@end