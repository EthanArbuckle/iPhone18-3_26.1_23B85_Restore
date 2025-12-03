@interface HMDDefaultResidentDeviceManagerLegacyDataSource
- (BOOL)isResidentCapable;
- (HMDDefaultResidentDeviceManagerLegacyDataSource)init;
- (id)createElectionAddOnWithContext:(id)context;
- (id)createInitialReachabilityManagerWithUUID:(id)d;
- (id)createResidentDeviceWithModel:(id)model;
- (id)logIdentifierForHome:(id)home;
@end

@implementation HMDDefaultResidentDeviceManagerLegacyDataSource

- (id)createInitialReachabilityManagerWithUUID:(id)d
{
  dCopy = d;
  v5 = [HMDHomePrimaryResidentInitialReachabilityManager alloc];
  queue = [(HMDDefaultResidentDeviceManagerLegacyDataSource *)self queue];
  v7 = [(HMDHomePrimaryResidentInitialReachabilityManager *)v5 initWithUUID:dCopy workQueue:queue];

  return v7;
}

- (id)createResidentDeviceWithModel:(id)model
{
  modelCopy = model;
  v4 = [[HMDResidentDevice alloc] initWithModel:modelCopy];

  return v4;
}

- (id)logIdentifierForHome:(id)home
{
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)createElectionAddOnWithContext:(id)context
{
  contextCopy = context;
  v4 = [[HMDPrimaryElectionCoordinationAddOn alloc] initWithContext:contextCopy];

  return v4;
}

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v2 isResidentCapable];

  return isResidentCapable;
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