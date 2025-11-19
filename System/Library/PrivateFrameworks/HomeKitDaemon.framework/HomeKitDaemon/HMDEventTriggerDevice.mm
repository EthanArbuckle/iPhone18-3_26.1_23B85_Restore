@interface HMDEventTriggerDevice
- (BOOL)isEqual:(id)a3;
- (HMDEventTriggerDevice)initWithCurrentDeviceForHome:(id)a3;
- (HMDEventTriggerDevice)initWithDevice:(id)a3 forHome:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDEventTriggerDevice

- (unint64_t)hash
{
  v3 = [(HMDEventTriggerDevice *)self device];

  if (!v3)
  {
    return 1;
  }

  v4 = [(HMDEventTriggerDevice *)self device];
  v5 = [v4 hash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDEventTriggerDevice *)self device];
      if (v7)
      {
      }

      else
      {
        v9 = [(HMDEventTriggerDevice *)v6 device];

        if (!v9)
        {
          v8 = 1;
          goto LABEL_12;
        }
      }

      v10 = [(HMDEventTriggerDevice *)self device];
      v11 = [(HMDEventTriggerDevice *)v6 device];
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
  v3 = [(HMDEventTriggerDevice *)self device];

  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v5 = [(HMDEventTriggerDevice *)self device];
    v6 = [v4 stringWithFormat:@"[Event-trigger-device: %@]", v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Event-trigger-device: THIS-DEVICE]"];
  }

  return v6;
}

- (HMDEventTriggerDevice)initWithDevice:(id)a3 forHome:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HMDEventTriggerDevice;
  v7 = [(HMDEventTriggerDevice *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_device, a3);
    v8->_currentDevice = [v6 isCurrentDevice];
  }

  return v8;
}

- (HMDEventTriggerDevice)initWithCurrentDeviceForHome:(id)a3
{
  v8.receiver = self;
  v8.super_class = HMDEventTriggerDevice;
  v3 = [(HMDEventTriggerDevice *)&v8 init];
  if (v3)
  {
    v4 = +[HMDAppleAccountManager sharedManager];
    v5 = [v4 device];
    device = v3->_device;
    v3->_device = v5;

    v3->_currentDevice = 1;
  }

  return v3;
}

@end