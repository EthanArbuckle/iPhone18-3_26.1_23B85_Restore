@interface HMDDefaultResidentDeviceManagerRoarV3DataSource
- (BOOL)isResidentCapable;
- (HMDDefaultResidentDeviceManagerRoarV3DataSource)init;
- (NSNumber)primaryResidentPeriodicReassertDurationSeconds;
- (NSNumber)primaryResidentPeriodicReassertSlopDurationSeconds;
- (id)createBackingStoreForHome:(id)home;
- (id)createElectionAddOnWithContext:(id)context;
- (id)createPrimaryResidentDiscoveryManagerWithQueue:(id)queue;
- (id)createResidentLocationHandlerForHome:(id)home queue:(id)queue messageDispatcher:(id)dispatcher;
- (id)createResidentSelectionManagerWithContext:(id)context;
- (id)createResidentStatusChannelForHome:(id)home queue:(id)queue;
- (id)firstCloudKitImportFuture;
- (id)idsServerBagForHome:(id)home;
- (id)logIdentifierForHome:(id)home;
- (id)timerProvider;
@end

@implementation HMDDefaultResidentDeviceManagerRoarV3DataSource

- (id)logIdentifierForHome:(id)home
{
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (NSNumber)primaryResidentPeriodicReassertSlopDurationSeconds
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"homekit-presence-primary-reassert-slop-duration-seconds"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)primaryResidentPeriodicReassertDurationSeconds
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"homekit-presence-primary-reassert-duration-seconds"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)timerProvider
{
  v2 = objc_opt_new();

  return v2;
}

- (id)idsServerBagForHome:(id)home
{
  homeManager = [home homeManager];
  idsServerBag = [homeManager idsServerBag];

  return idsServerBag;
}

- (id)createResidentLocationHandlerForHome:(id)home queue:(id)queue messageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  homeCopy = home;
  v10 = [[HMDResidentLocationHandler alloc] initWithHome:homeCopy queue:queueCopy messageDispatcher:dispatcherCopy];

  return v10;
}

- (id)createResidentStatusChannelForHome:(id)home queue:(id)queue
{
  queueCopy = queue;
  homeCopy = home;
  v7 = [[HMDResidentStatusChannel alloc] initWithHome:homeCopy queue:queueCopy];

  return v7;
}

- (id)createBackingStoreForHome:(id)home
{
  homeCopy = home;
  v5 = [HMDDefaultResidentDeviceManagerRoarBackingStore alloc];
  appleAccountManager = [(HMDDefaultResidentDeviceManagerRoarV3DataSource *)self appleAccountManager];
  v7 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v5 initWithHome:homeCopy appleAccountManager:appleAccountManager];

  return v7;
}

- (id)createPrimaryResidentDiscoveryManagerWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[HMDPrimaryResidentDiscoveryManager alloc] initWithQueue:queueCopy];

  return v4;
}

- (id)createResidentSelectionManagerWithContext:(id)context
{
  contextCopy = context;
  v4 = [[HMDResidentSelectionManager alloc] initWithContext:contextCopy];

  return v4;
}

- (id)createElectionAddOnWithContext:(id)context
{
  contextCopy = context;
  if ([(HMDDefaultResidentDeviceManagerRoarV3DataSource *)self isResidentCapable])
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

- (HMDDefaultResidentDeviceManagerRoarV3DataSource)init
{
  v9.receiver = self;
  v9.super_class = HMDDefaultResidentDeviceManagerRoarV3DataSource;
  v2 = [(HMDDefaultResidentDeviceManagerRoarV3DataSource *)&v9 init];
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