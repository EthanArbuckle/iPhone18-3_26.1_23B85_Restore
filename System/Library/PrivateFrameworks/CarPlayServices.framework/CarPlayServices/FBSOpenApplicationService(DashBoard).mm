@interface FBSOpenApplicationService(DashBoard)
+ (id)dashboardEndpoint;
+ (id)dashboardService;
@end

@implementation FBSOpenApplicationService(DashBoard)

+ (id)dashboardEndpoint
{
  v0 = MEMORY[0x277CF3288];
  serviceName = [MEMORY[0x277D0AD78] serviceName];
  v2 = [v0 endpointForMachName:@"com.apple.CarPlayApp.service" service:serviceName instance:0];

  return v2;
}

+ (id)dashboardService
{
  dashboardEndpoint = [MEMORY[0x277D0AD78] dashboardEndpoint];
  if (dashboardEndpoint)
  {
    v1 = [MEMORY[0x277D0AD78] serviceWithEndpoint:dashboardEndpoint];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end