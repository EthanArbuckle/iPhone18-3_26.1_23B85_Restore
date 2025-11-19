@interface CAFUIConfiguration
+ (void)load;
- (BOOL)hasConfigurationOptions;
- (BOOL)registeredForConfigurationIdentifier;
- (BOOL)registeredForConfigurationOptions;
- (CAFArrayCharacteristic)configurationOptionsCharacteristic;
- (CAFStringCharacteristic)configurationIdentifierCharacteristic;
- (NSArray)configurationOptions;
- (NSString)configurationIdentifier;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFUIConfiguration

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFUIConfiguration;
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
  v6.super_class = CAFUIConfiguration;
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
  v6.super_class = CAFUIConfiguration;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)configurationIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000048000010"];

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
  v2 = [(CAFUIConfiguration *)self configurationIdentifierCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFArrayCharacteristic)configurationOptionsCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000047000011"];

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
  v2 = [(CAFUIConfiguration *)self configurationOptionsCharacteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (BOOL)hasConfigurationOptions
{
  v2 = [(CAFUIConfiguration *)self configurationOptionsCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForConfigurationIdentifier
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000048000010"];

  return v10;
}

- (BOOL)registeredForConfigurationOptions
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000047000011"];

  return v10;
}

@end