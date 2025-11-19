@interface MRUVirtualHearingAidDevice
- (MRUVirtualHearingAidDevice)initWithDeviceDescription:(id)a3;
@end

@implementation MRUVirtualHearingAidDevice

- (MRUVirtualHearingAidDevice)initWithDeviceDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUVirtualHearingAidDevice;
  v6 = [(MRUVirtualHearingAidDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceDescription, a3);
  }

  return v7;
}

@end