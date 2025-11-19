@interface CAFTire
+ (void)load;
- (CAFTirePressureMonitoringSystem)tirePressureMonitoringSystemService;
- (NSArray)tirePressureServices;
- (NSArray)tirePressures;
- (NSDictionary)tirePressuresIndexed;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTire

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTire;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABD38])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFTire;
  [(CAFAccessory *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABD38])
  {
    v5 = v4;
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
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x000000001B000001"];

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
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x000000001B000006"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x000000001B000006"];
  v9 = [v8 firstObject];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
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
  v2 = [(CAFTire *)self tirePressureServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

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