@interface DVTSecureSocketProxyBufferPool
- (DVTSecureSocketProxyBufferPool)initWithCount:(int)count bufferSize:(unint64_t)size;
- (id)blockingAcquireBuffer;
- (void)releaseBuffer:(id)buffer;
@end

@implementation DVTSecureSocketProxyBufferPool

- (DVTSecureSocketProxyBufferPool)initWithCount:(int)count bufferSize:(unint64_t)size
{
  v14.receiver = self;
  v14.super_class = DVTSecureSocketProxyBufferPool;
  v6 = [(DVTSecureSocketProxyBufferPool *)&v14 init];
  if (v6)
  {
    v7 = dispatch_semaphore_create(count);
    bufferAvailable = v6->_bufferAvailable;
    v6->_bufferAvailable = v7;

    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
    dataBuffers = v6->_dataBuffers;
    v6->_dataBuffers = v9;

    if (count >= 1)
    {
      do
      {
        v11 = v6->_dataBuffers;
        v12 = [MEMORY[0x277CBEB28] dataWithLength:size];
        [(NSMutableArray *)v11 addObject:v12];

        --count;
      }

      while (count);
    }
  }

  return v6;
}

- (id)blockingAcquireBuffer
{
  bufferAvailable = [(DVTSecureSocketProxyBufferPool *)self bufferAvailable];
  dispatch_semaphore_wait(bufferAvailable, 0xFFFFFFFFFFFFFFFFLL);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataBuffers = [(DVTSecureSocketProxyBufferPool *)selfCopy dataBuffers];
  if (![dataBuffers count])
  {
    __assert_rtn("[DVTSecureSocketProxyBufferPool blockingAcquireBuffer]", "DVTSecureSocketProxy.m", 427, "self.dataBuffers.count > 0");
  }

  dataBuffers2 = [(DVTSecureSocketProxyBufferPool *)selfCopy dataBuffers];
  lastObject = [dataBuffers2 lastObject];

  dataBuffers3 = [(DVTSecureSocketProxyBufferPool *)selfCopy dataBuffers];
  [dataBuffers3 removeLastObject];

  objc_sync_exit(selfCopy);

  return lastObject;
}

- (void)releaseBuffer:(id)buffer
{
  bufferCopy = buffer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataBuffers = [(DVTSecureSocketProxyBufferPool *)selfCopy dataBuffers];
  [dataBuffers addObject:bufferCopy];

  objc_sync_exit(selfCopy);
  bufferAvailable = [(DVTSecureSocketProxyBufferPool *)selfCopy bufferAvailable];
  dispatch_semaphore_signal(bufferAvailable);
}

@end