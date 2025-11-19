@interface __IOGCDeviceManager
- (void)dealloc;
@end

@implementation __IOGCDeviceManager

- (void)dealloc
{
  deviceRemovedObservers = self->_deviceRemovedObservers;
  if (deviceRemovedObservers)
  {
    CFRelease(deviceRemovedObservers);
    self->_deviceRemovedObservers = 0;
  }

  devices = self->_devices;
  if (devices)
  {
    CFRelease(devices);
    self->_devices = 0;
  }

  matching = self->_matching;
  if (matching)
  {
    CFRelease(matching);
    self->_matching = 0;
  }

  v6.receiver = self;
  v6.super_class = __IOGCDeviceManager;
  [(__IOGCDeviceManager *)&v6 dealloc];
}

@end