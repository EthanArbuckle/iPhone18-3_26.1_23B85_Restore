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
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFSoundDistribution

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSoundDistribution;
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
  v6.super_class = CAFSoundDistribution;
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
  v6.super_class = CAFSoundDistribution;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFInt8Characteristic)balanceCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000002"];

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
  balanceCharacteristic = [(CAFSoundDistribution *)self balanceCharacteristic];
  int8Value = [balanceCharacteristic int8Value];

  return int8Value;
}

- (CAFInt8Range)balanceRange
{
  balanceCharacteristic = [(CAFSoundDistribution *)self balanceCharacteristic];
  range = [balanceCharacteristic range];

  return range;
}

- (CAFInt8Characteristic)fadeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000003"];

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
  fadeCharacteristic = [(CAFSoundDistribution *)self fadeCharacteristic];
  int8Value = [fadeCharacteristic int8Value];

  return int8Value;
}

- (CAFInt8Range)fadeRange
{
  fadeCharacteristic = [(CAFSoundDistribution *)self fadeCharacteristic];
  range = [fadeCharacteristic range];

  return range;
}

- (BOOL)hasFade
{
  fadeCharacteristic = [(CAFSoundDistribution *)self fadeCharacteristic];
  v3 = fadeCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForBalance
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000002"];

  return v10;
}

- (BOOL)registeredForFade
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000003"];

  return v10;
}

@end