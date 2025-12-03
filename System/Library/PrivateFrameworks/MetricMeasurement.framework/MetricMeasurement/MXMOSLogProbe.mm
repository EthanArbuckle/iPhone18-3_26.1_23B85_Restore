@interface MXMOSLogProbe
+ (MXMOSLogProbe)probeHostOSLog;
+ (MXMProbeableDevice)hostDevice;
+ (NSArray)connectedDevices;
- (MXMOSLogProbe)initWithTargetDevice:(id)device;
- (void)_stopUpdates;
@end

@implementation MXMOSLogProbe

+ (MXMProbeableDevice)hostDevice
{
  v2 = +[MXMOSLogDeviceStore_Internal shared];
  hostDevice = [v2 hostDevice];

  return hostDevice;
}

+ (NSArray)connectedDevices
{
  v2 = +[MXMOSLogDeviceStore_Internal shared];
  devices = [v2 devices];
  allValues = [devices allValues];

  return allValues;
}

+ (MXMOSLogProbe)probeHostOSLog
{
  v3 = [self alloc];
  hostDevice = [self hostDevice];
  v5 = [v3 initWithTargetDevice:hostDevice];

  return v5;
}

- (MXMOSLogProbe)initWithTargetDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = MXMOSLogProbe;
  v5 = [(MXMProbe *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D24408]);
    activityStream = v5->_activityStream;
    v5->_activityStream = v6;

    [(OSActivityStream *)v5->_activityStream setDelegate:v5];
    hostDevice = [objc_opt_class() hostDevice];
    if ([deviceCopy isEqual:hostDevice])
    {
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    rawDevice = [deviceCopy rawDevice];

    if (rawDevice)
    {
      hostDevice = [deviceCopy rawDevice];
      [(OSActivityStream *)v5->_activityStream setDevice:hostDevice];
LABEL_6:
    }
  }

  return v5;
}

- (void)_stopUpdates
{
  v3.receiver = self;
  v3.super_class = MXMOSLogProbe;
  [(MXMProbe *)&v3 _stopUpdates];
  [(OSActivityStream *)self->_activityStream stop];
}

@end