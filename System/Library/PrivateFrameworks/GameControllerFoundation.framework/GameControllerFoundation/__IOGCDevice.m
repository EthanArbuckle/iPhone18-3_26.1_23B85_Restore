@interface __IOGCDevice
- (void)dealloc;
@end

@implementation __IOGCDevice

- (void)dealloc
{
  if (self->_removalNotification)
  {
    [__IOGCDevice dealloc];
  }

  if (self->_notificationChannel)
  {
    [__IOGCDevice dealloc];
  }

  deviceInterface = self->_deviceInterface;
  if (deviceInterface)
  {
    (*(*deviceInterface + 3))(deviceInterface);
    self->_deviceInterface = 0;
  }

  pluginInterface = self->_pluginInterface;
  if (pluginInterface)
  {
    IODestroyPlugInInterface(pluginInterface);
    self->_pluginInterface = 0;
  }

  v5.receiver = self;
  v5.super_class = __IOGCDevice;
  [(GCIOObject *)&v5 dealloc];
}

@end