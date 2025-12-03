@interface MRDAVOutputDeviceRoute
- (MRDAVOutputDeviceRoute)initWithAVOutputDevice:(id)device;
@end

@implementation MRDAVOutputDeviceRoute

- (MRDAVOutputDeviceRoute)initWithAVOutputDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v6 = [[MRAVOutputDeviceSourceInfo alloc] initWithMultipleBuiltInDevices:0 sourceType:0];
    v7 = [[MRAVConcreteOutputDevice alloc] initWithAVOutputDevice:deviceCopy sourceInfo:v6];
    v12.receiver = self;
    v12.super_class = MRDAVOutputDeviceRoute;
    v8 = [(MRDOutputDeviceRoute *)&v12 initWithOutputDevice:v7];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_avOutputDevice, device);
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

@end