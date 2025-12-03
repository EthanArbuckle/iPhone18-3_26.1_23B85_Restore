@interface CAFGearRecommendation
+ (void)load;
- (BOOL)registeredForGearShiftRecommendation;
- (CAFInt8Characteristic)gearShiftRecommendationCharacteristic;
- (CAFInt8Range)gearShiftRecommendationRange;
- (char)gearShiftRecommendation;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFGearRecommendation

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFGearRecommendation;
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
  v6.super_class = CAFGearRecommendation;
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
  v6.super_class = CAFGearRecommendation;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFInt8Characteristic)gearShiftRecommendationCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000016"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000016"];
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

- (char)gearShiftRecommendation
{
  gearShiftRecommendationCharacteristic = [(CAFGearRecommendation *)self gearShiftRecommendationCharacteristic];
  int8Value = [gearShiftRecommendationCharacteristic int8Value];

  return int8Value;
}

- (CAFInt8Range)gearShiftRecommendationRange
{
  gearShiftRecommendationCharacteristic = [(CAFGearRecommendation *)self gearShiftRecommendationCharacteristic];
  range = [gearShiftRecommendationCharacteristic range];

  return range;
}

- (BOOL)registeredForGearShiftRecommendation
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000016"];

  return v10;
}

@end