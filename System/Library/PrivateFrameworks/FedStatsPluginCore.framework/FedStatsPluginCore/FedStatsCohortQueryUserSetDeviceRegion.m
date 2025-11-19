@interface FedStatsCohortQueryUserSetDeviceRegion
+ (id)cohortInstance;
- (FedStatsCohortQueryUserSetDeviceRegion)init;
@end

@implementation FedStatsCohortQueryUserSetDeviceRegion

- (FedStatsCohortQueryUserSetDeviceRegion)init
{
  v6.receiver = self;
  v6.super_class = FedStatsCohortQueryUserSetDeviceRegion;
  v2 = [(FedStatsCohortQueryUserSetDeviceRegion *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D08468] getDeviceRegion];
    userSetDeviceRegion = v2->_userSetDeviceRegion;
    v2->_userSetDeviceRegion = v3;
  }

  return v2;
}

+ (id)cohortInstance
{
  if (cohortInstance_onceToken != -1)
  {
    +[FedStatsCohortQueryUserSetDeviceRegion cohortInstance];
  }

  v3 = cohortInstance_sharedInstance;

  return v3;
}

uint64_t __56__FedStatsCohortQueryUserSetDeviceRegion_cohortInstance__block_invoke()
{
  cohortInstance_sharedInstance = objc_alloc_init(FedStatsCohortQueryUserSetDeviceRegion);

  return MEMORY[0x2821F96F8]();
}

@end