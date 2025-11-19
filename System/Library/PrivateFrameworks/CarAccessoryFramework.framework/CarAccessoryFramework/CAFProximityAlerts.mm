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
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFProximityAlerts

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFProximityAlerts;
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
  v6.super_class = CAFProximityAlerts;
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
  v6.super_class = CAFProximityAlerts;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFProximityAlertCharacteristic)proximityAlertRearLeftCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000051000003"];

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
  v2 = [(CAFProximityAlerts *)self proximityAlertRearLeftCharacteristic];
  v3 = [v2 proximityAlertValue];

  return v3;
}

- (BOOL)hasProximityAlertRearLeft
{
  v2 = [(CAFProximityAlerts *)self proximityAlertRearLeftCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFProximityAlertCharacteristic)proximityAlertRearRightCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000051000004"];

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
  v2 = [(CAFProximityAlerts *)self proximityAlertRearRightCharacteristic];
  v3 = [v2 proximityAlertValue];

  return v3;
}

- (BOOL)hasProximityAlertRearRight
{
  v2 = [(CAFProximityAlerts *)self proximityAlertRearRightCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForProximityAlertRearLeft
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000051000003"];

  return v10;
}

- (BOOL)registeredForProximityAlertRearRight
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000051000004"];

  return v10;
}

@end