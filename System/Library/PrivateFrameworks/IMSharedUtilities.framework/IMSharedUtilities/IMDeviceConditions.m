@interface IMDeviceConditions
+ (id)sharedInstance;
- (BOOL)isDeviceCharging;
- (BOOL)isDeviceOnData;
- (BOOL)isDeviceOnWifi;
- (BOOL)isOnLowBandwidthCellular;
- (id)_batteryStatus;
@end

@implementation IMDeviceConditions

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A86F3C58;
  block[3] = &unk_1E7826200;
  block[4] = a1;
  if (qword_1ED8CA2F0 != -1)
  {
    dispatch_once(&qword_1ED8CA2F0, block);
  }

  v2 = qword_1ED8CA3D8;

  return v2;
}

- (BOOL)isDeviceOnWifi
{
  v2 = [(IMDeviceConditions *)self _mobileNetworkManager];
  v3 = [v2 isWiFiUsable];

  return v3;
}

- (BOOL)isDeviceOnData
{
  v2 = [MEMORY[0x1E699BE90] sharedInstance];
  v3 = [v2 dataActiveAndReachable];

  return v3;
}

- (BOOL)isOnLowBandwidthCellular
{
  if ([(IMDeviceConditions *)self isDeviceOnWifi])
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isDeviceOnData);
}

- (id)_batteryStatus
{
  if (qword_1ED8C9690 != -1)
  {
    sub_1A88C5FC8();
  }

  v3 = qword_1ED8C9688;

  return v3;
}

- (BOOL)isDeviceCharging
{
  v2 = [(IMDeviceConditions *)self _batteryStatus];
  v3 = [v2 isCharging];

  return v3;
}

@end