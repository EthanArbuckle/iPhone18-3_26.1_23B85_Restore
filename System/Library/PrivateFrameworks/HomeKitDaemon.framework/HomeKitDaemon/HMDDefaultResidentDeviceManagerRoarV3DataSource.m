@interface HMDDefaultResidentDeviceManagerRoarV3DataSource
- (BOOL)isResidentCapable;
- (HMDDefaultResidentDeviceManagerRoarV3DataSource)init;
- (NSNumber)primaryResidentPeriodicReassertDurationSeconds;
- (NSNumber)primaryResidentPeriodicReassertSlopDurationSeconds;
- (id)createBackingStoreForHome:(id)a3;
- (id)createElectionAddOnWithContext:(id)a3;
- (id)createPrimaryResidentDiscoveryManagerWithQueue:(id)a3;
- (id)createResidentLocationHandlerForHome:(id)a3 queue:(id)a4 messageDispatcher:(id)a5;
- (id)createResidentSelectionManagerWithContext:(id)a3;
- (id)createResidentStatusChannelForHome:(id)a3 queue:(id)a4;
- (id)firstCloudKitImportFuture;
- (id)idsServerBagForHome:(id)a3;
- (id)logIdentifierForHome:(id)a3;
- (id)timerProvider;
@end

@implementation HMDDefaultResidentDeviceManagerRoarV3DataSource

- (id)logIdentifierForHome:(id)a3
{
  v3 = [a3 uuid];
  v4 = [v3 UUIDString];

  return v4;
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

- (id)idsServerBagForHome:(id)a3
{
  v3 = [a3 homeManager];
  v4 = [v3 idsServerBag];

  return v4;
}

- (id)createResidentLocationHandlerForHome:(id)a3 queue:(id)a4 messageDispatcher:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDResidentLocationHandler alloc] initWithHome:v9 queue:v8 messageDispatcher:v7];

  return v10;
}

- (id)createResidentStatusChannelForHome:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDResidentStatusChannel alloc] initWithHome:v6 queue:v5];

  return v7;
}

- (id)createBackingStoreForHome:(id)a3
{
  v4 = a3;
  v5 = [HMDDefaultResidentDeviceManagerRoarBackingStore alloc];
  v6 = [(HMDDefaultResidentDeviceManagerRoarV3DataSource *)self appleAccountManager];
  v7 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v5 initWithHome:v4 appleAccountManager:v6];

  return v7;
}

- (id)createPrimaryResidentDiscoveryManagerWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[HMDPrimaryResidentDiscoveryManager alloc] initWithQueue:v3];

  return v4;
}

- (id)createResidentSelectionManagerWithContext:(id)a3
{
  v3 = a3;
  v4 = [[HMDResidentSelectionManager alloc] initWithContext:v3];

  return v4;
}

- (id)createElectionAddOnWithContext:(id)a3
{
  v4 = a3;
  if ([(HMDDefaultResidentDeviceManagerRoarV3DataSource *)self isResidentCapable])
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

- (HMDDefaultResidentDeviceManagerRoarV3DataSource)init
{
  v9.receiver = self;
  v9.super_class = HMDDefaultResidentDeviceManagerRoarV3DataSource;
  v2 = [(HMDDefaultResidentDeviceManagerRoarV3DataSource *)&v9 init];
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