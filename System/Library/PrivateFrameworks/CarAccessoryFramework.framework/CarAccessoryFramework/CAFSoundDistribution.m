@interface CAFSoundDistribution
+ (void)load;
- (BOOL)hasFade;
- (BOOL)registeredForBalance;
- (BOOL)registeredForFade;
- (CAFInt8Characteristic)balanceCharacteristic;
- (CAFInt8Characteristic)fadeCharacteristic;
- (CAFInt8Range)balanceRange;
- (CAFInt8Range)fadeRange;
- (char)balance;
- (char)fade;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFSoundDistribution

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSoundDistribution;
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
  v6.super_class = CAFSoundDistribution;
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
  v6.super_class = CAFSoundDistribution;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFInt8Characteristic)balanceCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000033000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000033000002"];
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

- (char)balance
{
  v2 = [(CAFSoundDistribution *)self balanceCharacteristic];
  v3 = [v2 int8Value];

  return v3;
}

- (CAFInt8Range)balanceRange
{
  v2 = [(CAFSoundDistribution *)self balanceCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (CAFInt8Characteristic)fadeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000033000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000033000003"];
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

- (char)fade
{
  v2 = [(CAFSoundDistribution *)self fadeCharacteristic];
  v3 = [v2 int8Value];

  return v3;
}

- (CAFInt8Range)fadeRange
{
  v2 = [(CAFSoundDistribution *)self fadeCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasFade
{
  v2 = [(CAFSoundDistribution *)self fadeCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForBalance
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000033000002"];

  return v10;
}

- (BOOL)registeredForFade
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000033000003"];

  return v10;
}

@end