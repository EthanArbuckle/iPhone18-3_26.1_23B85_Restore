@interface AppleHPMUserClient
- (AppleHPMUserClient)init;
- (void)dealloc;
- (void)destroyUserClient;
@end

@implementation AppleHPMUserClient

- (AppleHPMUserClient)init
{
  v3.receiver = self;
  v3.super_class = AppleHPMUserClient;
  return [(AppleHPMUserClient *)&v3 init];
}

- (void)dealloc
{
  [(AppleHPMUserClient *)self destroyUserClient];
  v3.receiver = self;
  v3.super_class = AppleHPMUserClient;
  [(AppleHPMUserClient *)&v3 dealloc];
}

- (void)destroyUserClient
{
  self->_userClientActive = 0;
  deviceInterface = self->_deviceInterface;
  if (deviceInterface)
  {
    (*(*deviceInterface + 3))(deviceInterface, a2);
    self->_deviceInterface = 0;
  }

  cfPlugInInterface = self->_cfPlugInInterface;
  if (cfPlugInInterface)
  {
    IODestroyPlugInInterface(cfPlugInInterface);
    self->_cfPlugInInterface = 0;
  }
}

@end