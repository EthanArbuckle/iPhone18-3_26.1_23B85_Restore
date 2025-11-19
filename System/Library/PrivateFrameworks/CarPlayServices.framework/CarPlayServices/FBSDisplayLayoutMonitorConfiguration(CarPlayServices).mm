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
  v5 = [v3 serviceIdentifier];
  v6 = [MEMORY[0x277CF3288] endpointForMachName:@"com.apple.CarPlayApp.non-launching-service" service:v5 instance:v4];

  return v6;
}

+ (id)configurationForCarDisplayMonitor
{
  v0 = [MEMORY[0x277D0AD20] crs_endpointForCarDisplayMonitor];
  if (v0)
  {
    v1 = [MEMORY[0x277D0AD20] configurationWithEndpoint:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (id)configurationForCarInstrumentsDisplayMonitor
{
  v0 = [MEMORY[0x277D0AD20] crs_endpointForCarInstrumentsDisplayMonitor];
  if (v0)
  {
    v1 = [MEMORY[0x277D0AD20] configurationWithEndpoint:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end