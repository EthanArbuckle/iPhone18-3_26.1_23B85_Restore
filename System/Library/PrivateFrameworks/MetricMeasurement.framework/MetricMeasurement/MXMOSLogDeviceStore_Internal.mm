@interface MXMOSLogDeviceStore_Internal
+ (MXMOSLogDeviceStore_Internal)shared;
- (BOOL)activityStream:(id)a3 deviceUDID:(id)a4 deviceID:(id)a5 status:(int64_t)a6 error:(id)a7;
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    devices = v2->_devices;
    v2->_devices = v3;

    v5 = objc_alloc_init(MEMORY[0x277D24408]);
    stream = v2->_stream;
    v2->_stream = v5;

    [(OSActivityStream *)v2->_stream setDeviceDelegate:v2];
    v7 = [MXMOSLogDevice_Internal alloc];
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    v10 = [(MXMOSLogDevice_Internal *)v7 initWithName:@"Unknown" identifier:v9];
    hostDevice = v2->_hostDevice;
    v2->_hostDevice = v10;
  }

  return v2;
}

- (BOOL)activityStream:(id)a3 deviceUDID:(id)a4 deviceID:(id)a5 status:(int64_t)a6 error:(id)a7
{
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v9];

  if (!v11)
  {
    v12 = [[MXMOSLogDevice_Internal alloc] initWithOSLogDevice:v10];
    [(NSMutableDictionary *)self->_devices setObject:v12 forKeyedSubscript:v9];
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 postNotificationName:@"kMXMOSLogProbeDidUpdateConnectedDevicesList" object:0];

  return 1;
}

@end