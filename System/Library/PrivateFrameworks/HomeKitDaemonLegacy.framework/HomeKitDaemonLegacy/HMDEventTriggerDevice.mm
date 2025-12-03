@interface HMDEventTriggerDevice
- (BOOL)isEqual:(id)equal;
- (HMDEventTriggerDevice)initWithCurrentDeviceForHome:(id)home;
- (HMDEventTriggerDevice)initWithDevice:(id)device forHome:(id)home;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDEventTriggerDevice

- (unint64_t)hash
{
  device = [(HMDEventTriggerDevice *)self device];

  if (!device)
  {
    return 1;
  }

  device2 = [(HMDEventTriggerDevice *)self device];
  v5 = [device2 hash];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      device = [(HMDEventTriggerDevice *)self device];
      if (device)
      {
      }

      else
      {
        device2 = [(HMDEventTriggerDevice *)v6 device];

        if (!device2)
        {
          v8 = 1;
          goto LABEL_12;
        }
      }

      device3 = [(HMDEventTriggerDevice *)self device];
      device4 = [(HMDEventTriggerDevice *)v6 device];
      v8 = HMFEqualObjects();
    }

    else
    {
      v8 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (id)description
{
  device = [(HMDEventTriggerDevice *)self device];

  v4 = MEMORY[0x277CCACA8];
  if (device)
  {
    device2 = [(HMDEventTriggerDevice *)self device];
    v6 = [v4 stringWithFormat:@"[Event-trigger-device: %@]", device2];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Event-trigger-device: THIS-DEVICE]"];
  }

  return v6;
}

- (HMDEventTriggerDevice)initWithDevice:(id)device forHome:(id)home
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = HMDEventTriggerDevice;
  v7 = [(HMDEventTriggerDevice *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_device, device);
    v8->_currentDevice = [deviceCopy isCurrentDevice];
  }

  return v8;
}

- (HMDEventTriggerDevice)initWithCurrentDeviceForHome:(id)home
{
  v8.receiver = self;
  v8.super_class = HMDEventTriggerDevice;
  v3 = [(HMDEventTriggerDevice *)&v8 init];
  if (v3)
  {
    v4 = +[HMDAppleAccountManager sharedManager];
    device = [v4 device];
    device = v3->_device;
    v3->_device = device;

    v3->_currentDevice = 1;
  }

  return v3;
}

@end