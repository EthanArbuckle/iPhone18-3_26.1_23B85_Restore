@interface CAFModeItems
+ (void)load;
- (BOOL)currentIndexInvalid;
- (BOOL)hasDefaultIndex;
- (BOOL)registeredForCurrentIndex;
- (BOOL)registeredForDefaultIndex;
- (BOOL)registeredForIdentifiers;
- (CAFArrayCharacteristic)identifiersCharacteristic;
- (CAFUInt32Characteristic)currentIndexCharacteristic;
- (CAFUInt32Characteristic)defaultIndexCharacteristic;
- (CAFUInt32Range)currentIndexRange;
- (CAFUInt32Range)defaultIndexRange;
- (NSArray)identifiers;
- (unsigned)currentIndex;
- (unsigned)defaultIndex;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFModeItems

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___CAFModeItems;
    objc_msgSendSuper2(&v4, sel_load);
  }
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
  v6.super_class = CAFModeItems;
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
  v6.super_class = CAFModeItems;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFArrayCharacteristic)identifiersCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000037"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000037"];
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

- (NSArray)identifiers
{
  identifiersCharacteristic = [(CAFModeItems *)self identifiersCharacteristic];
  arrayValue = [identifiersCharacteristic arrayValue];

  return arrayValue;
}

- (CAFUInt32Characteristic)currentIndexCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000038"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000038"];
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

- (unsigned)currentIndex
{
  currentIndexCharacteristic = [(CAFModeItems *)self currentIndexCharacteristic];
  uint32Value = [currentIndexCharacteristic uint32Value];

  return uint32Value;
}

- (CAFUInt32Range)currentIndexRange
{
  currentIndexCharacteristic = [(CAFModeItems *)self currentIndexCharacteristic];
  range = [currentIndexCharacteristic range];

  return range;
}

- (BOOL)currentIndexInvalid
{
  currentIndexCharacteristic = [(CAFModeItems *)self currentIndexCharacteristic];
  isInvalid = [currentIndexCharacteristic isInvalid];

  return isInvalid;
}

- (CAFUInt32Characteristic)defaultIndexCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000039"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000039"];
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

- (unsigned)defaultIndex
{
  defaultIndexCharacteristic = [(CAFModeItems *)self defaultIndexCharacteristic];
  uint32Value = [defaultIndexCharacteristic uint32Value];

  return uint32Value;
}

- (CAFUInt32Range)defaultIndexRange
{
  defaultIndexCharacteristic = [(CAFModeItems *)self defaultIndexCharacteristic];
  range = [defaultIndexCharacteristic range];

  return range;
}

- (BOOL)hasDefaultIndex
{
  defaultIndexCharacteristic = [(CAFModeItems *)self defaultIndexCharacteristic];
  v3 = defaultIndexCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForIdentifiers
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000037"];

  return v10;
}

- (BOOL)registeredForCurrentIndex
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000038"];

  return v10;
}

- (BOOL)registeredForDefaultIndex
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000039"];

  return v10;
}

@end