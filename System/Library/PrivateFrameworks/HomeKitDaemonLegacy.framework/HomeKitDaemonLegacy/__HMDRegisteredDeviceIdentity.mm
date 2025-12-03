@interface __HMDRegisteredDeviceIdentity
- (__HMDRegisteredDeviceIdentity)initWithIdentity:(id)identity;
- (__HMDRegisteredDeviceIdentity)initWithIdentity:(id)identity device:(id)device;
@end

@implementation __HMDRegisteredDeviceIdentity

- (__HMDRegisteredDeviceIdentity)initWithIdentity:(id)identity device:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v12.receiver = self;
    v12.super_class = __HMDRegisteredDeviceIdentity;
    v8 = [(__HMDRegisteredIdentity *)&v12 initWithIdentity:identity];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_device, device);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (__HMDRegisteredDeviceIdentity)initWithIdentity:(id)identity
{
  identityCopy = identity;
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