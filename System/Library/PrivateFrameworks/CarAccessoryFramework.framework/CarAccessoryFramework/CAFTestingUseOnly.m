@interface CAFTestingUseOnly
+ (void)load;
- (CAFTestControlAsync)testControlAsyncService;
- (CAFTestControlEvent)testControlEventService;
- (CAFTestControlSync)testControlSyncService;
- (CAFTypeTest)typeTestService;
- (CAFTypeTestWithStates)typeTestWithStatesService;
- (NSArray)protocolPerfTestServices;
- (NSArray)protocolPerfTests;
- (NSArray)typeTestIndexByPositionServices;
- (NSArray)typeTestIndexByPositions;
- (NSArray)typeTestIndexByUnitServices;
- (NSArray)typeTestIndexByUnits;
- (NSArray)typeTestMultiServices;
- (NSDictionary)protocolPerfTestsIndexed;
- (NSDictionary)typeTestIndexByPositionsIndexed;
- (NSDictionary)typeTestIndexByUnitsIndexed;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFTestingUseOnly

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestingUseOnly;
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
  v6.super_class = CAFTestingUseOnly;
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
  v6.super_class = CAFTestingUseOnly;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (CAFTypeTest)typeTestService
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x00000000FE000001"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x00000000FE000001"];
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

- (NSArray)typeTestMultiServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x00000000FE000003"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x00000000FE000003"];
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

- (CAFTypeTestWithStates)typeTestWithStatesService
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x00000000FE000007"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x00000000FE000007"];
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

- (NSArray)typeTestIndexByPositionServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x00000000FE000004"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x00000000FE000004"];
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

- (NSArray)typeTestIndexByUnitServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x00000000FE000005"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x00000000FE000005"];
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

- (NSArray)protocolPerfTestServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x00000000FE000006"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x00000000FE000006"];
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

- (CAFTestControlSync)testControlSyncService
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x00000000FE000008"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x00000000FE000008"];
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

- (CAFTestControlAsync)testControlAsyncService
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x00000000FE000009"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x00000000FE000009"];
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

- (CAFTestControlEvent)testControlEventService
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x00000000FE00000A"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x00000000FE00000A"];
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

- (NSArray)typeTestIndexByPositions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFTestingUseOnly *)self typeTestIndexByPositionServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"vehicleLayoutKey" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)typeTestIndexByPositionsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x00000000FE000004"];
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

- (NSArray)typeTestIndexByUnits
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFTestingUseOnly *)self typeTestIndexByUnitServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"distanceUnit" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)typeTestIndexByUnitsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x00000000FE000005"];
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

- (NSArray)protocolPerfTests
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFTestingUseOnly *)self protocolPerfTestServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"testString" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)protocolPerfTestsIndexed
{
  objc_opt_class();
  v3 = [(CAFAccessory *)self servicesForIndexBy:@"0x00000000FE000006"];
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