@interface HMDAccessorySetupCoordinatorStagingRequest
- (HMDAccessorySetupCoordinatorStagingRequest)init;
@end

@implementation HMDAccessorySetupCoordinatorStagingRequest

- (HMDAccessorySetupCoordinatorStagingRequest)init
{
  v6.receiver = self;
  v6.super_class = HMDAccessorySetupCoordinatorStagingRequest;
  v2 = [(HMDAccessorySetupCoordinatorStagingRequest *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;
  }

  return v2;
}

@end