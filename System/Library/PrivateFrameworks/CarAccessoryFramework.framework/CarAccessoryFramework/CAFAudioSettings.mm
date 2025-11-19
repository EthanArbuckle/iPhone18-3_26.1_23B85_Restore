@interface CAFAudioSettings
+ (void)load;
- (CAFSoundDistribution)soundDistributionService;
- (NSArray)equalizerServices;
- (NSArray)equalizers;
- (NSArray)volumeServices;
- (NSArray)volumes;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFAudioSettings

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFAudioSettings;
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
  v6.super_class = CAFAudioSettings;
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
  v6.super_class = CAFAudioSettings;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (NSArray)volumeServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000013000002"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000013000002"];
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

- (NSArray)equalizerServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000013000003"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000013000003"];
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

- (CAFSoundDistribution)soundDistributionService
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000013000005"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000013000005"];
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

- (NSArray)volumes
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFAudioSettings *)self volumeServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_typeCompare_];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)equalizers
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(CAFAudioSettings *)self equalizerServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"sortOrder" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end