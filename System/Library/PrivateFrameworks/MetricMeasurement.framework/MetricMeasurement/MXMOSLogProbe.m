@interface MXMOSLogProbe
+ (MXMOSLogProbe)probeHostOSLog;
+ (MXMProbeableDevice)hostDevice;
+ (NSArray)connectedDevices;
- (MXMOSLogProbe)initWithTargetDevice:(id)a3;
- (void)_stopUpdates;
@end

@implementation MXMOSLogProbe

+ (MXMProbeableDevice)hostDevice
{
  v2 = +[MXMOSLogDeviceStore_Internal shared];
  v3 = [v2 hostDevice];

  return v3;
}

+ (NSArray)connectedDevices
{
  v2 = +[MXMOSLogDeviceStore_Internal shared];
  v3 = [v2 devices];
  v4 = [v3 allValues];

  return v4;
}

+ (MXMOSLogProbe)probeHostOSLog
{
  v3 = [a1 alloc];
  v4 = [a1 hostDevice];
  v5 = [v3 initWithTargetDevice:v4];

  return v5;
}

- (MXMOSLogProbe)initWithTargetDevice:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXMOSLogProbe;
  v5 = [(MXMProbe *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D24408]);
    activityStream = v5->_activityStream;
    v5->_activityStream = v6;

    [(OSActivityStream *)v5->_activityStream setDelegate:v5];
    v8 = [objc_opt_class() hostDevice];
    if ([v4 isEqual:v8])
    {
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [v4 rawDevice];

    if (v9)
    {
      v8 = [v4 rawDevice];
      [(OSActivityStream *)v5->_activityStream setDevice:v8];
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