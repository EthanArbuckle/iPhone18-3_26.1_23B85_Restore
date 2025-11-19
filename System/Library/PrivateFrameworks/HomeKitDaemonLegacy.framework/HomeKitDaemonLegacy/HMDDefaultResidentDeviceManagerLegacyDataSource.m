@interface HMDDefaultResidentDeviceManagerLegacyDataSource
- (BOOL)isResidentCapable;
- (HMDDefaultResidentDeviceManagerLegacyDataSource)init;
- (id)createElectionAddOnWithContext:(id)a3;
- (id)createInitialReachabilityManagerWithUUID:(id)a3;
- (id)createResidentDeviceWithModel:(id)a3;
- (id)logIdentifierForHome:(id)a3;
@end

@implementation HMDDefaultResidentDeviceManagerLegacyDataSource

- (id)createInitialReachabilityManagerWithUUID:(id)a3
{
  v4 = a3;
  v5 = [HMDHomePrimaryResidentInitialReachabilityManager alloc];
  v6 = [(HMDDefaultResidentDeviceManagerLegacyDataSource *)self queue];
  v7 = [(HMDHomePrimaryResidentInitialReachabilityManager *)v5 initWithUUID:v4 workQueue:v6];

  return v7;
}

- (id)createResidentDeviceWithModel:(id)a3
{
  v3 = a3;
  v4 = [[HMDResidentDevice alloc] initWithModel:v3];

  return v4;
}

- (id)logIdentifierForHome:(id)a3
{
  v3 = [a3 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)createElectionAddOnWithContext:(id)a3
{
  v3 = a3;
  v4 = [[HMDPrimaryElectionCoordinationAddOn alloc] initWithContext:v3];

  return v4;
}

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 isResidentCapable];

  return v3;
}

- (HMDDefaultResidentDeviceManagerLegacyDataSource)init
{
  v7.receiver = self;
  v7.super_class = HMDDefaultResidentDeviceManagerLegacyDataSource;
  v2 = [(HMDDefaultResidentDeviceManagerLegacyDataSource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("HMDResidentDeviceManagerLegacy", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

@end