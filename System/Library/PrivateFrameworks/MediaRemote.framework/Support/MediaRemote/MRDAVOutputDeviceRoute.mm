@interface MRDAVOutputDeviceRoute
- (MRDAVOutputDeviceRoute)initWithAVOutputDevice:(id)a3;
@end

@implementation MRDAVOutputDeviceRoute

- (MRDAVOutputDeviceRoute)initWithAVOutputDevice:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [[MRAVOutputDeviceSourceInfo alloc] initWithMultipleBuiltInDevices:0 sourceType:0];
    v7 = [[MRAVConcreteOutputDevice alloc] initWithAVOutputDevice:v5 sourceInfo:v6];
    v12.receiver = self;
    v12.super_class = MRDAVOutputDeviceRoute;
    v8 = [(MRDOutputDeviceRoute *)&v12 initWithOutputDevice:v7];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_avOutputDevice, a3);
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

@end