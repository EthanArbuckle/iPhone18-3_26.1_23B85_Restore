@interface MRUVirtualHearingAidDevice
- (MRUVirtualHearingAidDevice)initWithDeviceDescription:(id)description;
@end

@implementation MRUVirtualHearingAidDevice

- (MRUVirtualHearingAidDevice)initWithDeviceDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = MRUVirtualHearingAidDevice;
  v6 = [(MRUVirtualHearingAidDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceDescription, description);
  }

  return v7;
}

@end