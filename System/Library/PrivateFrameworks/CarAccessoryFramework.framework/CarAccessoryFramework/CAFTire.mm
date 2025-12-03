@interface CAFTire
+ (void)load;
- (CAFTirePressureMonitoringSystem)tirePressureMonitoringSystemService;
- (NSArray)tirePressureServices;
- (NSArray)tirePressures;
- (NSDictionary)tirePressuresIndexed;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTire

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTire;
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
  v6.super_class = CAFTire;
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
  v6.super_class = CAFTire;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (NSArray)tirePressureServices
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x000000001B000001"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x000000001B000001"];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CAFTirePressureMonitoringSystem)tirePressureMonitoringSystemService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x000000001B000006"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x000000001B000006"];
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

- (NSArray)tirePressures
{
  v8[1] = *MEMORY[0x277D85DE8];
  tirePressureServices = [(CAFTire *)self tirePressureServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [tirePressureServices sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)tirePressuresIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x000000001B000001"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end