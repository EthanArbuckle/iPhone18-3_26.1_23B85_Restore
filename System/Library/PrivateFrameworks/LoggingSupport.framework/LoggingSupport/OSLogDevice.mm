@interface OSLogDevice
- (OSLogDevice)init;
- (OSLogDevice)initWithMobileDevice:(void *)device andUDID:(id)d;
- (OSLogDevice)initWithSimualatedDevice:(id)device;
- (id)description;
- (void)dealloc;
@end

@implementation OSLogDevice

- (void)dealloc
{
  mobileDeviceRef = self->_mobileDeviceRef;
  if (mobileDeviceRef)
  {
    CFRelease(mobileDeviceRef);
  }

  v4.receiver = self;
  v4.super_class = OSLogDevice;
  [(OSLogDevice *)&v4 dealloc];
}

- (OSLogDevice)initWithSimualatedDevice:(id)device
{
  deviceCopy = device;
  v5 = [(OSLogDevice *)self init];
  v5->_devType = 2;
  v5->_mobileDeviceRef = 0;
  simDev = v5->_simDev;
  v5->_simDev = deviceCopy;
  v7 = deviceCopy;

  uDID = [(SimDevice *)v7 UDID];
  uUIDString = [uDID UUIDString];
  uid = v5->_uid;
  v5->_uid = uUIDString;

  return v5;
}

- (OSLogDevice)initWithMobileDevice:(void *)device andUDID:(id)d
{
  dCopy = d;
  v7 = [(OSLogDevice *)self init];
  v7->_devType = 1;
  if (device)
  {
    v8 = CFRetain(device);
  }

  else
  {
    v8 = 0;
  }

  simDev = v7->_simDev;
  v7->_mobileDeviceRef = v8;
  v7->_simDev = 0;

  uid = v7->_uid;
  v7->_uid = dCopy;

  return v7;
}

- (id)description
{
  devType = [(OSLogDevice *)self devType];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (devType == 2)
  {
    simDev = [(OSLogDevice *)self simDev];
    v10 = [(OSLogDevice *)self uid];
    [v4 stringWithFormat:@"%@(Simulated): %@, %@", v6, simDev, v10, v13];
  }

  else
  {
    if (devType == 1)
    {
      mobileDeviceRef = [(OSLogDevice *)self mobileDeviceRef];
      simDev = [(OSLogDevice *)self uid];
      v9 = [v4 stringWithFormat:@"%@(Mobile): %p, %@", v6, mobileDeviceRef, simDev];
      goto LABEL_7;
    }

    mobileDeviceRef2 = [(OSLogDevice *)self mobileDeviceRef];
    simDev = [(OSLogDevice *)self simDev];
    v10 = [(OSLogDevice *)self uid];
    [v4 stringWithFormat:@"%@(Unknown): %p, %@, %@", v6, mobileDeviceRef2, simDev, v10];
  }
  v9 = ;

LABEL_7:

  return v9;
}

- (OSLogDevice)init
{
  v7.receiver = self;
  v7.super_class = OSLogDevice;
  v2 = [(OSLogDevice *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_devType = 0;
    v2->_mobileDeviceRef = 0;
    simDev = v2->_simDev;
    v2->_simDev = 0;

    uid = v3->_uid;
    v3->_uid = 0;
  }

  return v3;
}

@end