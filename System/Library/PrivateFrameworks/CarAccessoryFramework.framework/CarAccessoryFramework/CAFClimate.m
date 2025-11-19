@interface CAFClimate
+ (void)load;
- (CAFCabin)cabinService;
- (CAFRecirculation)recirculationService;
- (CAFSteeringWheelHeatingCooling)steeringWheelHeatingCoolingService;
- (NSArray)autoClimateControlServices;
- (NSArray)autoClimateControls;
- (NSArray)climateControlsLockedServices;
- (NSArray)climateControlsLockeds;
- (NSArray)defrostServices;
- (NSArray)defrosts;
- (NSArray)fanServices;
- (NSArray)fans;
- (NSArray)temperatureLevelServices;
- (NSArray)temperatureLevels;
- (NSArray)temperatureServices;
- (NSArray)temperatures;
- (NSArray)ventServices;
- (NSArray)vents;
- (NSArray)zoneOnServices;
- (NSArray)zoneOns;
- (NSArray)zonesSyncedServices;
- (NSArray)zonesSynceds;
- (NSDictionary)autoClimateControlsIndexed;
- (NSDictionary)climateControlsLockedsIndexed;
- (NSDictionary)defrostsIndexed;
- (NSDictionary)fansIndexed;
- (NSDictionary)temperatureLevelsIndexed;
- (NSDictionary)temperaturesIndexed;
- (NSDictionary)ventsIndexed;
- (NSDictionary)zoneOnsIndexed;
- (NSDictionary)zonesSyncedsIndexed;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFClimate

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFClimate;
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
  v6.super_class = CAFClimate;
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
  v6.super_class = CAFClimate;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (CAFCabin)cabinService
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000001"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000001"];
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

- (NSArray)autoClimateControlServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000008"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000008"];
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

- (NSArray)climateControlsLockedServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000010"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000010"];
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

- (NSArray)defrostServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000005"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000005"];
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

- (NSArray)temperatureServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000002"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000002"];
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

- (CAFSteeringWheelHeatingCooling)steeringWheelHeatingCoolingService
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000003"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000003"];
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

- (NSArray)ventServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000006"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000006"];
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

- (NSArray)fanServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000007"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000007"];
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

- (CAFRecirculation)recirculationService
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000011"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000011"];
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

- (NSArray)zonesSyncedServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000012"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000012"];
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

- (NSArray)zoneOnServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000014"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000014"];
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

- (NSArray)temperatureLevelServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000011000015"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000011000015"];
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

- (NSArray)autoClimateControls
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFClimate *)self autoClimateControlServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)autoClimateControlsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000011000008"];
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

- (NSArray)climateControlsLockeds
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFClimate *)self climateControlsLockedServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)climateControlsLockedsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000011000010"];
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

- (NSArray)defrosts
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFClimate *)self defrostServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)defrostsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000011000005"];
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

- (NSArray)temperatures
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFClimate *)self temperatureServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)temperaturesIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000011000002"];
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

- (NSArray)vents
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFClimate *)self ventServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)ventsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000011000006"];
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

- (NSArray)fans
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFClimate *)self fanServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)fansIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000011000007"];
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

- (NSArray)zonesSynceds
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFClimate *)self zonesSyncedServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)zonesSyncedsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000011000012"];
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

- (NSArray)zoneOns
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFClimate *)self zoneOnServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)zoneOnsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000011000014"];
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

- (NSArray)temperatureLevels
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFClimate *)self temperatureLevelServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)temperatureLevelsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000011000015"];
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