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
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFModeItems

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___CAFModeItems;
    objc_msgSendSuper2(&v4, sel_load);
  }
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
  v6.super_class = CAFModeItems;
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
  v6.super_class = CAFModeItems;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFArrayCharacteristic)identifiersCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000037"];

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
  v2 = [(CAFModeItems *)self identifiersCharacteristic];
  v3 = [v2 arrayValue];

  return v3;
}

- (CAFUInt32Characteristic)currentIndexCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000038"];

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
  v2 = [(CAFModeItems *)self currentIndexCharacteristic];
  v3 = [v2 uint32Value];

  return v3;
}

- (CAFUInt32Range)currentIndexRange
{
  v2 = [(CAFModeItems *)self currentIndexCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)currentIndexInvalid
{
  v2 = [(CAFModeItems *)self currentIndexCharacteristic];
  v3 = [v2 isInvalid];

  return v3;
}

- (CAFUInt32Characteristic)defaultIndexCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000039"];

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
  v2 = [(CAFModeItems *)self defaultIndexCharacteristic];
  v3 = [v2 uint32Value];

  return v3;
}

- (CAFUInt32Range)defaultIndexRange
{
  v2 = [(CAFModeItems *)self defaultIndexCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (BOOL)hasDefaultIndex
{
  v2 = [(CAFModeItems *)self defaultIndexCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForIdentifiers
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000037"];

  return v10;
}

- (BOOL)registeredForCurrentIndex
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000038"];

  return v10;
}

- (BOOL)registeredForDefaultIndex
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000039"];

  return v10;
}

@end