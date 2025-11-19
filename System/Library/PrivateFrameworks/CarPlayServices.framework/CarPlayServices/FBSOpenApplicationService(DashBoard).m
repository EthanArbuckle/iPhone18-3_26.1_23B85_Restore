@interface FBSOpenApplicationService(DashBoard)
+ (id)dashboardEndpoint;
+ (id)dashboardService;
@end

@implementation FBSOpenApplicationService(DashBoard)

+ (id)dashboardEndpoint
{
  v0 = MEMORY[0x277CF3288];
  v1 = [MEMORY[0x277D0AD78] serviceName];
  v2 = [v0 endpointForMachName:@"com.apple.CarPlayApp.service" service:v1 instance:0];

  return v2;
}

+ (id)dashboardService
{
  v0 = [MEMORY[0x277D0AD78] dashboardEndpoint];
  if (v0)
  {
    v1 = [MEMORY[0x277D0AD78] serviceWithEndpoint:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end