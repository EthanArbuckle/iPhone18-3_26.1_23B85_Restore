@interface CAFUIState
+ (void)load;
- (BOOL)hasDriverSide;
- (BOOL)hasUiSceneOptions;
- (BOOL)registeredForDriverSide;
- (BOOL)registeredForUISceneOptions;
- (BOOL)registeredForUISceneState;
- (CAFArrayCharacteristic)uiSceneOptionsCharacteristic;
- (CAFDriverSideCharacteristic)driverSideCharacteristic;
- (CAFUISceneStateCharacteristic)uiSceneStateCharacteristic;
- (NSArray)uiSceneOptions;
- (unsigned)driverSide;
- (unsigned)uiSceneState;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFUIState

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFUIState;
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
  v6.super_class = CAFUIState;
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
  v6.super_class = CAFUIState;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFUISceneStateCharacteristic)uiSceneStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000047000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000001"];
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

- (unsigned)uiSceneState
{
  v2 = [(CAFUIState *)self uiSceneStateCharacteristic];
  v3 = [v2 uiSceneStateValue];

  return v3;
}

- (CAFArrayCharacteristic)uiSceneOptionsCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000047000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000004"];
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

- (NSArray)uiSceneOptions
{
  v2 = [(CAFUIState *)self uiSceneOptionsCharacteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (BOOL)hasUiSceneOptions
{
  v2 = [(CAFUIState *)self uiSceneOptionsCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFDriverSideCharacteristic)driverSideCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000041000009"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000009"];
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

- (unsigned)driverSide
{
  v2 = [(CAFUIState *)self driverSideCharacteristic];
  v3 = [v2 driverSideValue];

  return v3;
}

- (BOOL)hasDriverSide
{
  v2 = [(CAFUIState *)self driverSideCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForUISceneState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000047000001"];

  return v10;
}

- (BOOL)registeredForUISceneOptions
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000047000004"];

  return v10;
}

- (BOOL)registeredForDriverSide
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000041000009"];

  return v10;
}

@end