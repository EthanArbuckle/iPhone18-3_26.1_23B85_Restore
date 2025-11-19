@interface CAFEngineGaugeUI
+ (void)load;
- (BOOL)registeredForUIEmphasizedEngineGauge;
- (BOOL)registeredForUISecondaryEngineGaugeHidden;
- (BOOL)uiSecondaryEngineGaugeHidden;
- (CAFBoolCharacteristic)uiSecondaryEngineGaugeHiddenCharacteristic;
- (CAFUIEmphasizedEngineGaugeCharacteristic)uiEmphasizedEngineGaugeCharacteristic;
- (unsigned)uiEmphasizedEngineGauge;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFEngineGaugeUI

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFEngineGaugeUI;
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
  v6.super_class = CAFEngineGaugeUI;
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
  v6.super_class = CAFEngineGaugeUI;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFUIEmphasizedEngineGaugeCharacteristic)uiEmphasizedEngineGaugeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000007"];
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

- (unsigned)uiEmphasizedEngineGauge
{
  v2 = [(CAFEngineGaugeUI *)self uiEmphasizedEngineGaugeCharacteristic];
  v3 = [v2 uIEmphasizedEngineGaugeValue];

  return v3;
}

- (CAFBoolCharacteristic)uiSecondaryEngineGaugeHiddenCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000008"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000008"];
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

- (BOOL)uiSecondaryEngineGaugeHidden
{
  v2 = [(CAFEngineGaugeUI *)self uiSecondaryEngineGaugeHiddenCharacteristic];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)registeredForUIEmphasizedEngineGauge
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000007"];

  return v10;
}

- (BOOL)registeredForUISecondaryEngineGaugeHidden
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000008"];

  return v10;
}

@end