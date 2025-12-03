@interface HMDUserCloudShareManagerCreatorDependency
- (HMDUserCloudShareManagerCreatorDependency)init;
- (id)createUserCloudShareControllerWithDelegate:(id)delegate queue:(id)queue;
@end

@implementation HMDUserCloudShareManagerCreatorDependency

- (id)createUserCloudShareControllerWithDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v7 = [[HMDUserCloudShareController alloc] initWithDelegate:delegateCopy queue:queueCopy pendingRequestTimeoutInterval:30.0];

  return v7;
}

- (HMDUserCloudShareManagerCreatorDependency)init
{
  v3.receiver = self;
  v3.super_class = HMDUserCloudShareManagerCreatorDependency;
  return [(HMDUserCloudShareManagerCreatorDependency *)&v3 init];
}

@end