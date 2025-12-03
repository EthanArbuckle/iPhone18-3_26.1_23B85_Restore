@interface CAFUIAppearance
+ (void)load;
- (BOOL)nightMode;
- (BOOL)registeredForAppearanceMode;
- (BOOL)registeredForNightMode;
- (CAFAppearanceModeCharacteristic)appearanceModeCharacteristic;
- (CAFBoolCharacteristic)nightModeCharacteristic;
- (unsigned)appearanceMode;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFUIAppearance

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUIAppearance;
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
  v6.super_class = CAFUIAppearance;
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
  v6.super_class = CAFUIAppearance;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFBoolCharacteristic)nightModeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000005"];
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

- (BOOL)nightMode
{
  nightModeCharacteristic = [(CAFUIAppearance *)self nightModeCharacteristic];
  bOOLValue = [nightModeCharacteristic BOOLValue];

  return bOOLValue;
}

- (CAFAppearanceModeCharacteristic)appearanceModeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000006"];
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

- (unsigned)appearanceMode
{
  appearanceModeCharacteristic = [(CAFUIAppearance *)self appearanceModeCharacteristic];
  appearanceModeValue = [appearanceModeCharacteristic appearanceModeValue];

  return appearanceModeValue;
}

- (BOOL)registeredForNightMode
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000005"];

  return v10;
}

- (BOOL)registeredForAppearanceMode
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000006"];

  return v10;
}

@end