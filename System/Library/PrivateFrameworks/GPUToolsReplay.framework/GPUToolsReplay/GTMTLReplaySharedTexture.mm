@interface GTMTLReplaySharedTexture
- (GTMTLReplaySharedTexture)initWithAllocatedSize:(unint64_t)size resourcePool:(id)pool;
- (void)dealloc;
@end

@implementation GTMTLReplaySharedTexture

- (void)dealloc
{
  [(GTMTLReplaySharedResourcePool *)self->_resourcePool reclaimAllocatedSize:self->_allocatedSize];
  v3.receiver = self;
  v3.super_class = GTMTLReplaySharedTexture;
  [(GTMTLReplaySharedTexture *)&v3 dealloc];
}

- (GTMTLReplaySharedTexture)initWithAllocatedSize:(unint64_t)size resourcePool:(id)pool
{
  poolCopy = pool;
  v11.receiver = self;
  v11.super_class = GTMTLReplaySharedTexture;
  v8 = [(GTMTLReplaySharedTexture *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_allocatedSize = size;
    objc_storeStrong(&v8->_resourcePool, pool);
  }

  return v9;
}

@end