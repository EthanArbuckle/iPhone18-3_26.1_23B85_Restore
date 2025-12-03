@interface CAFUIConfiguration
+ (void)load;
- (BOOL)hasConfigurationOptions;
- (BOOL)registeredForConfigurationIdentifier;
- (BOOL)registeredForConfigurationOptions;
- (CAFArrayCharacteristic)configurationOptionsCharacteristic;
- (CAFStringCharacteristic)configurationIdentifierCharacteristic;
- (NSArray)configurationOptions;
- (NSString)configurationIdentifier;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFUIConfiguration

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUIConfiguration;
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
  v6.super_class = CAFUIConfiguration;
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
  v6.super_class = CAFUIConfiguration;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)configurationIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000010"];
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

- (NSString)configurationIdentifier
{
  configurationIdentifierCharacteristic = [(CAFUIConfiguration *)self configurationIdentifierCharacteristic];
  stringValue = [configurationIdentifierCharacteristic stringValue];

  return stringValue;
}

- (CAFArrayCharacteristic)configurationOptionsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000011"];
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

- (NSArray)configurationOptions
{
  configurationOptionsCharacteristic = [(CAFUIConfiguration *)self configurationOptionsCharacteristic];
  arrayValue = [configurationOptionsCharacteristic arrayValue];

  return arrayValue;
}

- (BOOL)hasConfigurationOptions
{
  configurationOptionsCharacteristic = [(CAFUIConfiguration *)self configurationOptionsCharacteristic];
  v3 = configurationOptionsCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForConfigurationIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000010"];

  return v10;
}

- (BOOL)registeredForConfigurationOptions
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000011"];

  return v10;
}

@end