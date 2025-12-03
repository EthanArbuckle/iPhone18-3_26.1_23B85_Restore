@interface HMDHomeMatterServicesCoordinatorFactory
- (HMDHomeMatterServicesCoordinatorFactory)init;
- (id)createHomeMatterServicesCoordinatorWithHome:(id)home;
@end

@implementation HMDHomeMatterServicesCoordinatorFactory

- (id)createHomeMatterServicesCoordinatorWithHome:(id)home
{
  homeCopy = home;
  v4 = sub_22979F7A8(homeCopy);

  return v4;
}

- (HMDHomeMatterServicesCoordinatorFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDHomeMatterServicesCoordinatorFactory;
  return [(HMDHomeMatterServicesCoordinatorFactory *)&v3 init];
}

@end