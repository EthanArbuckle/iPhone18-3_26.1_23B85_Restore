@interface HMDHomeMatterServicesCoordinatorFactory
- (HMDHomeMatterServicesCoordinatorFactory)init;
- (id)createHomeMatterServicesCoordinatorWithHome:(id)a3;
@end

@implementation HMDHomeMatterServicesCoordinatorFactory

- (id)createHomeMatterServicesCoordinatorWithHome:(id)a3
{
  v3 = a3;
  v4 = sub_22979F7A8(v3);

  return v4;
}

- (HMDHomeMatterServicesCoordinatorFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDHomeMatterServicesCoordinatorFactory;
  return [(HMDHomeMatterServicesCoordinatorFactory *)&v3 init];
}

@end