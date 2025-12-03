@interface VCPMADResourceLock
- (VCPMADResourceLock)initWithResourceManager:(id)manager andResource:(id)resource;
- (void)dealloc;
- (void)reset;
@end

@implementation VCPMADResourceLock

- (VCPMADResourceLock)initWithResourceManager:(id)manager andResource:(id)resource
{
  managerCopy = manager;
  resourceCopy = resource;
  v12.receiver = self;
  v12.super_class = VCPMADResourceLock;
  v9 = [(VCPMADResourceLock *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceManager, manager);
    objc_storeStrong(&v10->_resource, resource);
  }

  return v10;
}

- (void)dealloc
{
  [(VCPMADResourceLock *)self reset];
  v3.receiver = self;
  v3.super_class = VCPMADResourceLock;
  [(VCPMADResourceLock *)&v3 dealloc];
}

- (void)reset
{
  if (self->_resource)
  {
    [(VCPMADResourceManager *)self->_resourceManager deactivateResource:?];
    resource = self->_resource;
    self->_resource = 0;
  }
}

@end