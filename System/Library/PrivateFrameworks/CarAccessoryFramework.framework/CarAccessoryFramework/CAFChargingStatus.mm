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
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFChargingStatus

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFChargingStatus;
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
  v6.super_class = CAFChargingStatus;
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
  v6.super_class = CAFChargingStatus;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)chargingModeIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x000000004000000C"];

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
  v2 = [(CAFChargingStatus *)self chargingModeIdentifierCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasChargingModeIdentifier
{
  v2 = [(CAFChargingStatus *)self chargingModeIdentifierCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFChargingStateCharacteristic)chargingStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000040000005"];

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
  v2 = [(CAFChargingStatus *)self chargingStateCharacteristic];
  v3 = [v2 chargingStateValue];

  return v3;
}

- (BOOL)hasChargingState
{
  v2 = [(CAFChargingStatus *)self chargingStateCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFCableStateCharacteristic)cableStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000040000007"];

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
  v2 = [(CAFChargingStatus *)self cableStateCharacteristic];
  v3 = [v2 cableStateValue];

  return v3;
}

- (BOOL)hasCableState
{
  v2 = [(CAFChargingStatus *)self cableStateCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFPortSideIndicatorCharacteristic)portSideIndicatorCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000013"];

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
  v2 = [(CAFChargingStatus *)self portSideIndicatorCharacteristic];
  v3 = [v2 portSideIndicatorValue];

  return v3;
}

- (BOOL)hasPortSideIndicator
{
  v2 = [(CAFChargingStatus *)self portSideIndicatorCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForChargingModeIdentifier
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x000000004000000C"];

  return v10;
}

- (BOOL)registeredForChargingState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000040000005"];

  return v10;
}

- (BOOL)registeredForCableState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000040000007"];

  return v10;
}

- (BOOL)registeredForPortSideIndicator
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000013"];

  return v10;
}

@end