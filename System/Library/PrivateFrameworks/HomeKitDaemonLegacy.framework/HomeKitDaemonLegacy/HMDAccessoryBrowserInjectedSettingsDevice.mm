@interface HMDAccessoryBrowserInjectedSettingsDevice
- (HMDAccessoryBrowserInjectedSettingsDevice)init;
- (id)createAuthServerWithDelegate:(id)delegate;
- (id)createBtleAccessoryBrowser;
- (id)createCHIPAccessoryBrowser;
- (id)createHap2AccessoryBrowserWithStorage:(id)storage;
- (id)createIpAccessoryBrowser;
@end

@implementation HMDAccessoryBrowserInjectedSettingsDevice

- (id)createAuthServerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[HMDAuthServer alloc] initWithDelegate:delegateCopy];

  return v4;
}

- (id)createHap2AccessoryBrowserWithStorage:(id)storage
{
  v4 = MEMORY[0x277CFEA28];
  storageCopy = storage;
  v6 = [[v4 alloc] initWithQueue:self->_queue storage:storageCopy];

  return v6;
}

- (id)createCHIPAccessoryBrowser
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = storeDirectoryPath;
  v5 = [v3 fileURLWithPath:v4 isDirectory:1];

  v6 = objc_alloc(MEMORY[0x277D17AC8]);
  queue = self->_queue;
  v8 = objc_alloc_init(MEMORY[0x277D17AD0]);
  v9 = [v6 initWithQueue:queue storeDirectoryURL:v5 dataSource:v8];

  return v9;
}

- (id)createBtleAccessoryBrowser
{
  v2 = [objc_alloc(MEMORY[0x277CFEA20]) initWithQueue:self->_queue];

  return v2;
}

- (id)createIpAccessoryBrowser
{
  v2 = [objc_alloc(MEMORY[0x277CFEA30]) initWithQueue:self->_queue];

  return v2;
}

- (HMDAccessoryBrowserInjectedSettingsDevice)init
{
  v9.receiver = self;
  v9.super_class = HMDAccessoryBrowserInjectedSettingsDevice;
  v2 = [(HMDAccessoryBrowserInjectedSettingsDevice *)&v9 init];
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