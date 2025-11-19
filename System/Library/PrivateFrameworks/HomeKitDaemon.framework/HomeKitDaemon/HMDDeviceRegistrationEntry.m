@interface HMDDeviceRegistrationEntry
- (BOOL)isEqual:(id)a3;
- (HMDDeviceRegistrationEntry)initWithDevice:(id)a3 accessoryList:(id)a4;
@end

@implementation HMDDeviceRegistrationEntry

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMDDeviceRegistrationEntry *)self device];
      v7 = [(HMDDeviceRegistrationEntry *)v5 device];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HMDDeviceRegistrationEntry)initWithDevice:(id)a3 accessoryList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDDeviceRegistrationEntry;
  v9 = [(HMDDeviceRegistrationEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_accessoryUUIDList, a4);
  }

  return v10;
}

@end