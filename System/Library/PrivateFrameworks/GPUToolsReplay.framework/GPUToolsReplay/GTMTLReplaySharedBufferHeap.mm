@interface GTMTLReplaySharedBufferHeap
- (GTMTLReplaySharedBufferHeap)initWithBuffer:(id)buffer resourcePool:(id)pool;
- (void)dealloc;
@end

@implementation GTMTLReplaySharedBufferHeap

- (void)dealloc
{
  [(GTMTLReplaySharedResourcePool *)self->_resourcePool reclaimBuffer:self->_buffer];
  v3.receiver = self;
  v3.super_class = GTMTLReplaySharedBufferHeap;
  [(GTMTLReplaySharedBufferHeap *)&v3 dealloc];
}

- (GTMTLReplaySharedBufferHeap)initWithBuffer:(id)buffer resourcePool:(id)pool
{
  bufferCopy = buffer;
  poolCopy = pool;
  v12.receiver = self;
  v12.super_class = GTMTLReplaySharedBufferHeap;
  v9 = [(GTMTLReplaySharedBufferHeap *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_buffer, buffer);
    objc_storeStrong(&v10->_resourcePool, pool);
  }

  return v10;
}

@end