@interface __HMDRegisteredDeviceIdentity
- (__HMDRegisteredDeviceIdentity)initWithIdentity:(id)a3;
- (__HMDRegisteredDeviceIdentity)initWithIdentity:(id)a3 device:(id)a4;
@end

@implementation __HMDRegisteredDeviceIdentity

- (__HMDRegisteredDeviceIdentity)initWithIdentity:(id)a3 device:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v12.receiver = self;
    v12.super_class = __HMDRegisteredDeviceIdentity;
    v8 = [(__HMDRegisteredIdentity *)&v12 initWithIdentity:a3];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_device, a4);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (__HMDRegisteredDeviceIdentity)initWithIdentity:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end