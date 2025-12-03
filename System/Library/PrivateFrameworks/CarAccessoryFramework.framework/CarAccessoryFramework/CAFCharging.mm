@interface CAFCharging
+ (void)load;
- (CAFChargingRate)chargingRateService;
- (CAFChargingStatus)chargingStatusService;
- (CAFChargingTime)chargingTimeService;
- (CAFMinimumChargingLevel)minimumChargingLevelService;
- (CAFTargetChargingLevel)targetChargingLevelService;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFCharging

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCharging;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABD38])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFCharging;
  [(CAFAccessory *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABD38])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFCharging;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (CAFChargingStatus)chargingStatusService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000019000002"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000019000002"];
  firstObject = [v8 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = firstObject;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CAFTargetChargingLevel)targetChargingLevelService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000019000009"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000019000009"];
  firstObject = [v8 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = firstObject;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CAFMinimumChargingLevel)minimumChargingLevelService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x000000001900000A"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x000000001900000A"];
  firstObject = [v8 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = firstObject;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CAFChargingTime)chargingTimeService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000019000007"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000019000007"];
  firstObject = [v8 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = firstObject;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CAFChargingRate)chargingRateService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000019000003"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000019000003"];
  firstObject = [v8 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = firstObject;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end