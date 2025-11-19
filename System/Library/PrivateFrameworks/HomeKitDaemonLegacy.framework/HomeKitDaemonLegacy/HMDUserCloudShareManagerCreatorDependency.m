@interface HMDUserCloudShareManagerCreatorDependency
- (HMDUserCloudShareManagerCreatorDependency)init;
- (id)createUserCloudShareControllerWithDelegate:(id)a3 queue:(id)a4;
@end

@implementation HMDUserCloudShareManagerCreatorDependency

- (id)createUserCloudShareControllerWithDelegate:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDUserCloudShareController alloc] initWithDelegate:v6 queue:v5 pendingRequestTimeoutInterval:30.0];

  return v7;
}

- (HMDUserCloudShareManagerCreatorDependency)init
{
  v3.receiver = self;
  v3.super_class = HMDUserCloudShareManagerCreatorDependency;
  return [(HMDUserCloudShareManagerCreatorDependency *)&v3 init];
}

@end