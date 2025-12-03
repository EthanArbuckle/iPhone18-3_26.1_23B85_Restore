@interface CAFFloatSetting
+ (void)load;
- (BOOL)hasMaximumSymbolName;
- (BOOL)hasMinimumSymbolName;
- (BOOL)registeredForFloatValue;
- (BOOL)registeredForMaximumSymbolName;
- (BOOL)registeredForMinimumSymbolName;
- (CAFFloatCharacteristic)valueCharacteristic;
- (CAFFloatRange)valueRange;
- (CAFStringCharacteristic)maximumSymbolNameCharacteristic;
- (CAFStringCharacteristic)minimumSymbolNameCharacteristic;
- (NSString)maximumSymbolName;
- (NSString)minimumSymbolName;
- (float)value;
- (id)name;
- (void)registerObserver:(id)observer;
- (void)setValue:(float)value;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFFloatSetting

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFFloatSetting;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846A5928])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFFloatSetting;
  [(CAFAutomakerSetting *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846A5928])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFFloatSetting;
  [(CAFAutomakerSetting *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  categoryCharacteristic = [(CAFAutomakerSetting *)self categoryCharacteristic];
  formattedValue = [categoryCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  userVisibleLabelCharacteristic = [(CAFAutomakerSetting *)self userVisibleLabelCharacteristic];
  formattedValue2 = [userVisibleLabelCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFFloatCharacteristic)valueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000006"];
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

- (float)value
{
  valueCharacteristic = [(CAFFloatSetting *)self valueCharacteristic];
  [valueCharacteristic floatValue];
  v4 = v3;

  return v4;
}

- (void)setValue:(float)value
{
  valueCharacteristic = [(CAFFloatSetting *)self valueCharacteristic];
  *&v4 = value;
  [valueCharacteristic setFloatValue:v4];
}

- (CAFFloatRange)valueRange
{
  valueCharacteristic = [(CAFFloatSetting *)self valueCharacteristic];
  range = [valueCharacteristic range];

  return range;
}

- (CAFStringCharacteristic)maximumSymbolNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000026"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000026"];
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

- (NSString)maximumSymbolName
{
  maximumSymbolNameCharacteristic = [(CAFFloatSetting *)self maximumSymbolNameCharacteristic];
  stringValue = [maximumSymbolNameCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasMaximumSymbolName
{
  maximumSymbolNameCharacteristic = [(CAFFloatSetting *)self maximumSymbolNameCharacteristic];
  v3 = maximumSymbolNameCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)minimumSymbolNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000025"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000025"];
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

- (NSString)minimumSymbolName
{
  minimumSymbolNameCharacteristic = [(CAFFloatSetting *)self minimumSymbolNameCharacteristic];
  stringValue = [minimumSymbolNameCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasMinimumSymbolName
{
  minimumSymbolNameCharacteristic = [(CAFFloatSetting *)self minimumSymbolNameCharacteristic];
  v3 = minimumSymbolNameCharacteristic != 0;

  return v3;
}

- (BOOL)registeredForFloatValue
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000006"];

  return v10;
}

- (BOOL)registeredForMaximumSymbolName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000026"];

  return v10;
}

- (BOOL)registeredForMinimumSymbolName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000025"];

  return v10;
}

@end