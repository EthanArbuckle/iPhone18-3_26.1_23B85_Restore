@interface FBSDisplayLayoutMonitorConfiguration(CarPlayServices)
+ (id)configurationForCarDisplayMonitor;
+ (id)configurationForCarInstrumentsDisplayMonitor;
+ (id)crs_endpointForInstance:()CarPlayServices;
@end

@implementation FBSDisplayLayoutMonitorConfiguration(CarPlayServices)

+ (id)crs_endpointForInstance:()CarPlayServices
{
  v3 = MEMORY[0x277D0AD08];
  v4 = a3;
  serviceIdentifier = [v3 serviceIdentifier];
  v6 = [MEMORY[0x277CF3288] endpointForMachName:@"com.apple.CarPlayApp.non-launching-service" service:serviceIdentifier instance:v4];

  return v6;
}

+ (id)configurationForCarDisplayMonitor
{
  crs_endpointForCarDisplayMonitor = [MEMORY[0x277D0AD20] crs_endpointForCarDisplayMonitor];
  if (crs_endpointForCarDisplayMonitor)
  {
    v1 = [MEMORY[0x277D0AD20] configurationWithEndpoint:crs_endpointForCarDisplayMonitor];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (id)configurationForCarInstrumentsDisplayMonitor
{
  crs_endpointForCarInstrumentsDisplayMonitor = [MEMORY[0x277D0AD20] crs_endpointForCarInstrumentsDisplayMonitor];
  if (crs_endpointForCarInstrumentsDisplayMonitor)
  {
    v1 = [MEMORY[0x277D0AD20] configurationWithEndpoint:crs_endpointForCarInstrumentsDisplayMonitor];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end