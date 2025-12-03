@interface CAFAudioSettings
+ (void)load;
- (CAFSoundDistribution)soundDistributionService;
- (NSArray)equalizerServices;
- (NSArray)equalizers;
- (NSArray)volumeServices;
- (NSArray)volumes;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFAudioSettings

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFAudioSettings;
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
  v6.super_class = CAFAudioSettings;
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
  v6.super_class = CAFAudioSettings;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (NSArray)volumeServices
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000013000002"];

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
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000013000003"];

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
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000013000005"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000013000005"];
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

- (NSArray)volumes
{
  v8[1] = *MEMORY[0x277D85DE8];
  volumeServices = [(CAFAudioSettings *)self volumeServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_typeCompare_];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [volumeServices sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)equalizers
{
  v8[1] = *MEMORY[0x277D85DE8];
  equalizerServices = [(CAFAudioSettings *)self equalizerServices];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"sortOrder" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [equalizerServices sortedArrayUsingDescriptors:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end