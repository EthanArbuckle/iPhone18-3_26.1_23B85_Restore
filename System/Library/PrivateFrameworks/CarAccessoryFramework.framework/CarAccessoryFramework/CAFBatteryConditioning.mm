@interface CAFBatteryConditioning
+ (void)load;
- (BOOL)registeredForBatteryConditioningState;
- (CAFBatteryConditioningStateCharacteristic)batteryConditioningStateCharacteristic;
- (unsigned)batteryConditioningState;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFBatteryConditioning

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFBatteryConditioning;
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
  v6.super_class = CAFBatteryConditioning;
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
  v6.super_class = CAFBatteryConditioning;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFBatteryConditioningStateCharacteristic)batteryConditioningStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004000000B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000004000000B"];
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

- (unsigned)batteryConditioningState
{
  batteryConditioningStateCharacteristic = [(CAFBatteryConditioning *)self batteryConditioningStateCharacteristic];
  batteryConditioningStateValue = [batteryConditioningStateCharacteristic batteryConditioningStateValue];

  return batteryConditioningStateValue;
}

- (BOOL)registeredForBatteryConditioningState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004000000B"];

  return v10;
}

@end