@interface HMDDefaultResidentDeviceManagerRoarDataSource
- (BOOL)isResidentCapable;
- (HMDDefaultResidentDeviceManagerRoarDataSource)init;
- (id)createBackingStoreForHome:(id)a3;
- (id)createElectionAddOnWithContext:(id)a3;
- (id)createPrimaryResidentDiscoveryManagerWithQueue:(id)a3;
- (id)firstCloudKitImportFuture;
- (id)logIdentifierForHome:(id)a3;
@end

@implementation HMDDefaultResidentDeviceManagerRoarDataSource

- (id)logIdentifierForHome:(id)a3
{
  v3 = [a3 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)createBackingStoreForHome:(id)a3
{
  v4 = a3;
  v5 = [HMDDefaultResidentDeviceManagerRoarBackingStore alloc];
  v6 = [(HMDDefaultResidentDeviceManagerRoarDataSource *)self appleAccountManager];
  v7 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v5 initWithHome:v4 appleAccountManager:v6];

  return v7;
}

- (id)createPrimaryResidentDiscoveryManagerWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[HMDPrimaryResidentDiscoveryManager alloc] initWithQueue:v3];

  return v4;
}

- (id)createElectionAddOnWithContext:(id)a3
{
  v4 = a3;
  if ([(HMDDefaultResidentDeviceManagerRoarDataSource *)self isResidentCapable])
  {
    v5 = [[HMDPrimaryElectionCoordinationAddOn alloc] initWithContext:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)firstCloudKitImportFuture
{
  v2 = +[HMDCoreData sharedInstance];
  v3 = [v2 firstCloudKitImportFuture];

  return v3;
}

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 isResidentCapable];

  return v3;
}

- (HMDDefaultResidentDeviceManagerRoarDataSource)init
{
  v9.receiver = self;
  v9.super_class = HMDDefaultResidentDeviceManagerRoarDataSource;
  v2 = [(HMDDefaultResidentDeviceManagerRoarDataSource *)&v9 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

@end