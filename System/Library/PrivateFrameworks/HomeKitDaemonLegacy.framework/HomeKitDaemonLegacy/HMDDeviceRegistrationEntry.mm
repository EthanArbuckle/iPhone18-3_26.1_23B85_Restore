@interface HMDDeviceRegistrationEntry
- (BOOL)isEqual:(id)equal;
- (HMDDeviceRegistrationEntry)initWithDevice:(id)device accessoryList:(id)list;
@end

@implementation HMDDeviceRegistrationEntry

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      device = [(HMDDeviceRegistrationEntry *)self device];
      device2 = [(HMDDeviceRegistrationEntry *)v5 device];

      v8 = [device isEqual:device2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HMDDeviceRegistrationEntry)initWithDevice:(id)device accessoryList:(id)list
{
  deviceCopy = device;
  listCopy = list;
  v12.receiver = self;
  v12.super_class = HMDDeviceRegistrationEntry;
  v9 = [(HMDDeviceRegistrationEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_accessoryUUIDList, list);
  }

  return v10;
}

@end