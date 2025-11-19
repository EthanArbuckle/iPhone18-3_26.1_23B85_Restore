@interface CAFSeat
+ (void)load;
- (NSArray)fanServices;
- (NSArray)fans;
- (NSArray)heatingCoolingServices;
- (NSArray)heatingCoolings;
- (NSArray)seatBeltServices;
- (NSArray)seatBelts;
- (NSDictionary)fansIndexed;
- (NSDictionary)heatingCoolingsIndexed;
- (NSDictionary)seatBeltsIndexed;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFSeat

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSeat;
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
  v6.super_class = CAFSeat;
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
  v6.super_class = CAFSeat;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (NSArray)seatBeltServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000022000004"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000022000004"];
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

- (NSArray)heatingCoolingServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000022000001"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000022000001"];
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
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000022000002"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000022000002"];
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

- (NSArray)seatBelts
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFSeat *)self seatBeltServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)seatBeltsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000022000004"];
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

- (NSArray)heatingCoolings
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [(CAFSeat *)self heatingCoolingServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v9[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_typeCompare_];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 sortedArrayUsingDescriptors:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSDictionary)heatingCoolingsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000022000001"];
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
  v2 = [(CAFSeat *)self fanServices];
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
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x0000000022000002"];
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