@interface DTLocationSimulationService
+ (void)registerCapabilities:(id)capabilities;
- (DTLocationSimulationService)initWithChannel:(id)channel;
- (void)simulateLocationWithLatitude:(id)latitude longitude:(id)longitude;
- (void)stopLocationSimulation;
@end

@implementation DTLocationSimulationService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if (NSClassFromString(&cfstr_Clsimulationma.isa))
  {
    [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.LocationSimulation" withVersion:1 forClass:self];
  }
}

- (DTLocationSimulationService)initWithChannel:(id)channel
{
  channelCopy = channel;
  v10.receiver = self;
  v10.super_class = DTLocationSimulationService;
  v5 = [(DTXService *)&v10 initWithChannel:channelCopy];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247FD77E4;
    v7[3] = &unk_278EF1238;
    objc_copyWeak(&v8, &location);
    [channelCopy registerDisconnectHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)simulateLocationWithLatitude:(id)latitude longitude:(id)longitude
{
  v5 = MEMORY[0x277CE41F8];
  longitudeCopy = longitude;
  latitudeCopy = latitude;
  v8 = [v5 alloc];
  [latitudeCopy doubleValue];
  v10 = v9;

  [longitudeCopy doubleValue];
  v12 = v11;

  v14 = [v8 initWithLatitude:v10 longitude:v12];
  v13 = objc_alloc_init(MEMORY[0x277CBFC80]);
  [v13 clearSimulatedLocations];
  [v13 appendSimulatedLocation:v14];
  [v13 startLocationSimulation];
}

- (void)stopLocationSimulation
{
  v2 = objc_alloc_init(MEMORY[0x277CBFC80]);
  [v2 clearSimulatedLocations];
  [v2 stopLocationSimulation];
}

@end