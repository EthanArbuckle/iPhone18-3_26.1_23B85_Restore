@interface VCPMADResourceLock
- (VCPMADResourceLock)initWithResourceManager:(id)a3 andResource:(id)a4;
- (void)dealloc;
- (void)reset;
@end

@implementation VCPMADResourceLock

- (VCPMADResourceLock)initWithResourceManager:(id)a3 andResource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VCPMADResourceLock;
  v9 = [(VCPMADResourceLock *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceManager, a3);
    objc_storeStrong(&v10->_resource, a4);
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