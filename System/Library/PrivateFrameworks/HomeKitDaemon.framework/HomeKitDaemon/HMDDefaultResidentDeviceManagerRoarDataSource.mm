@interface HMDDefaultResidentDeviceManagerRoarDataSource
- (BOOL)isResidentCapable;
- (HMDDefaultResidentDeviceManagerRoarDataSource)init;
- (id)createBackingStoreForHome:(id)home;
- (id)createElectionAddOnWithContext:(id)context;
- (id)createPrimaryResidentDiscoveryManagerWithQueue:(id)queue;
- (id)firstCloudKitImportFuture;
- (id)logIdentifierForHome:(id)home;
@end

@implementation HMDDefaultResidentDeviceManagerRoarDataSource

- (id)logIdentifierForHome:(id)home
{
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)createBackingStoreForHome:(id)home
{
  homeCopy = home;
  v5 = [HMDDefaultResidentDeviceManagerRoarBackingStore alloc];
  appleAccountManager = [(HMDDefaultResidentDeviceManagerRoarDataSource *)self appleAccountManager];
  v7 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v5 initWithHome:homeCopy appleAccountManager:appleAccountManager];

  return v7;
}

- (id)createPrimaryResidentDiscoveryManagerWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[HMDPrimaryResidentDiscoveryManager alloc] initWithQueue:queueCopy];

  return v4;
}

- (id)createElectionAddOnWithContext:(id)context
{
  contextCopy = context;
  if ([(HMDDefaultResidentDeviceManagerRoarDataSource *)self isResidentCapable])
  {
    v5 = [[HMDPrimaryElectionCoordinationAddOn alloc] initWithContext:contextCopy];
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
  firstCloudKitImportFuture = [v2 firstCloudKitImportFuture];

  return firstCloudKitImportFuture;
}

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v2 isResidentCapable];

  return isResidentCapable;
}

- (HMDDefaultResidentDeviceManagerRoarDataSource)init
{
  v9.receiver = self;
  v9.super_class = HMDDefaultResidentDeviceManagerRoarDataSource;
  v2 = [(HMDDefaultResidentDeviceManagerRoarDataSource *)&v9 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

@end