@interface OSLogDevice
- (OSLogDevice)init;
- (OSLogDevice)initWithMobileDevice:(void *)a3 andUDID:(id)a4;
- (OSLogDevice)initWithSimualatedDevice:(id)a3;
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

- (OSLogDevice)initWithSimualatedDevice:(id)a3
{
  v4 = a3;
  v5 = [(OSLogDevice *)self init];
  v5->_devType = 2;
  v5->_mobileDeviceRef = 0;
  simDev = v5->_simDev;
  v5->_simDev = v4;
  v7 = v4;

  v8 = [(SimDevice *)v7 UDID];
  v9 = [v8 UUIDString];
  uid = v5->_uid;
  v5->_uid = v9;

  return v5;
}

- (OSLogDevice)initWithMobileDevice:(void *)a3 andUDID:(id)a4
{
  v6 = a4;
  v7 = [(OSLogDevice *)self init];
  v7->_devType = 1;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  simDev = v7->_simDev;
  v7->_mobileDeviceRef = v8;
  v7->_simDev = 0;

  uid = v7->_uid;
  v7->_uid = v6;

  return v7;
}

- (id)description
{
  v3 = [(OSLogDevice *)self devType];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3 == 2)
  {
    v8 = [(OSLogDevice *)self simDev];
    v10 = [(OSLogDevice *)self uid];
    [v4 stringWithFormat:@"%@(Simulated): %@, %@", v6, v8, v10, v13];
  }

  else
  {
    if (v3 == 1)
    {
      v7 = [(OSLogDevice *)self mobileDeviceRef];
      v8 = [(OSLogDevice *)self uid];
      v9 = [v4 stringWithFormat:@"%@(Mobile): %p, %@", v6, v7, v8];
      goto LABEL_7;
    }

    v11 = [(OSLogDevice *)self mobileDeviceRef];
    v8 = [(OSLogDevice *)self simDev];
    v10 = [(OSLogDevice *)self uid];
    [v4 stringWithFormat:@"%@(Unknown): %p, %@, %@", v6, v11, v8, v10];
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