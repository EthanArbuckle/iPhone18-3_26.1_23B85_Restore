@interface CAFEqualizer
+ (void)load;
- (BOOL)hasUserVisibleLabel;
- (BOOL)registeredForEqualizerType;
- (BOOL)registeredForEqualizerValue;
- (BOOL)registeredForSortOrder;
- (BOOL)registeredForUserVisibleLabel;
- (CAFEqualizerTypeCharacteristic)typeCharacteristic;
- (CAFInt8Characteristic)valueCharacteristic;
- (CAFInt8Range)valueRange;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFUInt8Characteristic)sortOrderCharacteristic;
- (NSString)userVisibleLabel;
- (char)value;
- (id)name;
- (unsigned)sortOrder;
- (unsigned)type;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFEqualizer

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFEqualizer;
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
  v6.super_class = CAFEqualizer;
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
  v6.super_class = CAFEqualizer;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  v3 = [(CAFService *)self typeName];
  v4 = [(CAFEqualizer *)self typeCharacteristic];
  v5 = [v4 formattedValue];

  if ([v5 length])
  {
    v6 = [v3 stringByAppendingFormat:@"-%@", v5];

    v3 = v6;
  }

  v7 = [(CAFEqualizer *)self sortOrderCharacteristic];
  v8 = [v7 formattedValue];

  if ([v8 length])
  {
    v9 = [v3 stringByAppendingFormat:@"-%@", v8];

    v3 = v9;
  }

  return v3;
}

- (CAFEqualizerTypeCharacteristic)typeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000033000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000033000007"];
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

- (unsigned)type
{
  v2 = [(CAFEqualizer *)self typeCharacteristic];
  v3 = [v2 equalizerTypeValue];

  return v3;
}

- (CAFUInt8Characteristic)sortOrderCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000003"];
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

- (unsigned)sortOrder
{
  v2 = [(CAFEqualizer *)self sortOrderCharacteristic];
  v3 = [v2 uint8Value];

  return v3;
}

- (CAFInt8Characteristic)valueCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000033000008"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000033000008"];
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

- (char)value
{
  v2 = [(CAFEqualizer *)self valueCharacteristic];
  v3 = [v2 int8Value];

  return v3;
}

- (CAFInt8Range)valueRange
{
  v2 = [(CAFEqualizer *)self valueCharacteristic];
  v3 = [v2 range];

  return v3;
}

- (CAFStringCharacteristic)userVisibleLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000001"];
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

- (NSString)userVisibleLabel
{
  v2 = [(CAFEqualizer *)self userVisibleLabelCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasUserVisibleLabel
{
  v2 = [(CAFEqualizer *)self userVisibleLabelCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)registeredForEqualizerType
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000033000007"];

  return v10;
}

- (BOOL)registeredForSortOrder
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000003"];

  return v10;
}

- (BOOL)registeredForEqualizerValue
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000033000008"];

  return v10;
}

- (BOOL)registeredForUserVisibleLabel
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000001"];

  return v10;
}

@end