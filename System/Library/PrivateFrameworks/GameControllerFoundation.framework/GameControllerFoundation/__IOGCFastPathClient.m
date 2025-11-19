@interface __IOGCFastPathClient
- (id)description;
- (void)dealloc;
@end

@implementation __IOGCFastPathClient

- (void)dealloc
{
  clientInterface = self->clientInterface;
  if (clientInterface)
  {
    ((*clientInterface)->var3)(clientInterface, a2);
    self->clientInterface = 0;
  }

  pluginInterface = self->pluginInterface;
  if (pluginInterface)
  {
    IODestroyPlugInInterface(pluginInterface);
    self->pluginInterface = 0;
  }

  service = self->service;
  if (service)
  {
    IOObjectRelease(service);
    self->service = 0;
  }

  allocator = self->allocator;
  if (allocator)
  {
    objc_destructInstance(self);
    CFAllocatorDeallocate(allocator, self);

    CFRelease(allocator);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = __IOGCFastPathClient;
    [(__IOGCFastPathClient *)&v7 dealloc];
  }
}

- (id)description
{
  clientInterface = self->clientInterface;
  if (!clientInterface)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"IOGCFastPathClient %#010llx", self->providerID];
  }

  if (!*clientInterface)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"IOGCFastPathClient %#010llx", self->providerID];
  }

  var7 = (*clientInterface)->var7;
  if (!var7)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"IOGCFastPathClient %#010llx", self->providerID];
  }

  v4 = var7(self->clientInterface, a2);

  return v4;
}

@end