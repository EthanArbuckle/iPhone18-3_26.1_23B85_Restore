@interface CAFTypeTestIndexByUnit
+ (void)load;
- (BOOL)hasTestInt32;
- (BOOL)registeredForDistanceUnit;
- (BOOL)registeredForTestInt32;
- (CAFInt32Characteristic)testInt32Characteristic;
- (CAFInt32Range)testInt32Range;
- (CAFUnitTypeCharacteristic)distanceUnitRawValueCharacteristic;
- (NSUnitLength)distanceUnit;
- (id)name;
- (int)testInt32;
- (unsigned)distanceUnitRawValue;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTypeTestIndexByUnit

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTypeTestIndexByUnit;
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
  v6.super_class = CAFTypeTestIndexByUnit;
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
  v6.super_class = CAFTypeTestIndexByUnit;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  distanceUnitRawValueCharacteristic = [(CAFTypeTestIndexByUnit *)self distanceUnitRawValueCharacteristic];
  formattedValue = [distanceUnitRawValueCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFUnitTypeCharacteristic)distanceUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000004"];
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

- (unsigned)distanceUnitRawValue
{
  distanceUnitRawValueCharacteristic = [(CAFTypeTestIndexByUnit *)self distanceUnitRawValueCharacteristic];
  unitTypeValue = [distanceUnitRawValueCharacteristic unitTypeValue];

  return unitTypeValue;
}

- (NSUnitLength)distanceUnit
{
  objc_opt_class();
  distanceUnitRawValueCharacteristic = [(CAFTypeTestIndexByUnit *)self distanceUnitRawValueCharacteristic];
  unitValue = [distanceUnitRawValueCharacteristic unitValue];
  if (unitValue && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = unitValue;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CAFInt32Characteristic)testInt32Characteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000008"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x00000000FF000008"];
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

- (int)testInt32
{
  testInt32Characteristic = [(CAFTypeTestIndexByUnit *)self testInt32Characteristic];
  int32Value = [testInt32Characteristic int32Value];

  return int32Value;
}

- (CAFInt32Range)testInt32Range
{
  testInt32Characteristic = [(CAFTypeTestIndexByUnit *)self testInt32Characteristic];
  range = [testInt32Characteristic range];

  return range;
}

- (BOOL)hasTestInt32
{
  testInt32Characteristic = [(CAFTypeTestIndexByUnit *)self testInt32Characteristic];
  v3 = testInt32Characteristic != 0;

  return v3;
}

- (BOOL)registeredForDistanceUnit
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000004"];

  return v10;
}

- (BOOL)registeredForTestInt32
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x00000000FF000008"];

  return v10;
}

@end