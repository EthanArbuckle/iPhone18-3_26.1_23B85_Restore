@interface MapsPushDevice
- (MapsPushDevice)initWithIDSDevice:(id)device;
@end

@implementation MapsPushDevice

- (MapsPushDevice)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = MapsPushDevice;
  v6 = [(MapsPushDevice *)&v10 init];
  v7 = v6;
  v8 = 0;
  if (deviceCopy && v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = v7;
  }

  return v8;
}

@end