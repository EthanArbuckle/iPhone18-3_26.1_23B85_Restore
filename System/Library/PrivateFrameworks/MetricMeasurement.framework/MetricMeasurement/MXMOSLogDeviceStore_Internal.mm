@interface MXMOSLogDeviceStore_Internal
+ (MXMOSLogDeviceStore_Internal)shared;
- (BOOL)activityStream:(id)stream deviceUDID:(id)d deviceID:(id)iD status:(int64_t)status error:(id)error;
- (MXMOSLogDeviceStore_Internal)init;
@end

@implementation MXMOSLogDeviceStore_Internal

+ (MXMOSLogDeviceStore_Internal)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[MXMOSLogDeviceStore_Internal shared];
  }

  v3 = shared__internalStore;

  return v3;
}

- (MXMOSLogDeviceStore_Internal)init
{
  v13.receiver = self;
  v13.super_class = MXMOSLogDeviceStore_Internal;
  v2 = [(MXMOSLogDeviceStore_Internal *)&v13 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    devices = v2->_devices;
    v2->_devices = dictionary;

    v5 = objc_alloc_init(MEMORY[0x277D24408]);
    stream = v2->_stream;
    v2->_stream = v5;

    [(OSActivityStream *)v2->_stream setDeviceDelegate:v2];
    v7 = [MXMOSLogDevice_Internal alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v10 = [(MXMOSLogDevice_Internal *)v7 initWithName:@"Unknown" identifier:uUIDString];
    hostDevice = v2->_hostDevice;
    v2->_hostDevice = v10;
  }

  return v2;
}

- (BOOL)activityStream:(id)stream deviceUDID:(id)d deviceID:(id)iD status:(int64_t)status error:(id)error
{
  dCopy = d;
  iDCopy = iD;
  v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:dCopy];

  if (!v11)
  {
    v12 = [[MXMOSLogDevice_Internal alloc] initWithOSLogDevice:iDCopy];
    [(NSMutableDictionary *)self->_devices setObject:v12 forKeyedSubscript:dCopy];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kMXMOSLogProbeDidUpdateConnectedDevicesList" object:0];

  return 1;
}

@end