@interface DVTSecureSocketProxyBufferPool
- (DVTSecureSocketProxyBufferPool)initWithCount:(int)a3 bufferSize:(unint64_t)a4;
- (id)blockingAcquireBuffer;
- (void)releaseBuffer:(id)a3;
@end

@implementation DVTSecureSocketProxyBufferPool

- (DVTSecureSocketProxyBufferPool)initWithCount:(int)a3 bufferSize:(unint64_t)a4
{
  v14.receiver = self;
  v14.super_class = DVTSecureSocketProxyBufferPool;
  v6 = [(DVTSecureSocketProxyBufferPool *)&v14 init];
  if (v6)
  {
    v7 = dispatch_semaphore_create(a3);
    bufferAvailable = v6->_bufferAvailable;
    v6->_bufferAvailable = v7;

    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    dataBuffers = v6->_dataBuffers;
    v6->_dataBuffers = v9;

    if (a3 >= 1)
    {
      do
      {
        v11 = v6->_dataBuffers;
        v12 = [MEMORY[0x277CBEB28] dataWithLength:a4];
        [(NSMutableArray *)v11 addObject:v12];

        --a3;
      }

      while (a3);
    }
  }

  return v6;
}

- (id)blockingAcquireBuffer
{
  v3 = [(DVTSecureSocketProxyBufferPool *)self bufferAvailable];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(DVTSecureSocketProxyBufferPool *)v4 dataBuffers];
  if (![v5 count])
  {
    __assert_rtn("[DVTSecureSocketProxyBufferPool blockingAcquireBuffer]", "DVTSecureSocketProxy.m", 427, "self.dataBuffers.count > 0");
  }

  v6 = [(DVTSecureSocketProxyBufferPool *)v4 dataBuffers];
  v7 = [v6 lastObject];

  v8 = [(DVTSecureSocketProxyBufferPool *)v4 dataBuffers];
  [v8 removeLastObject];

  objc_sync_exit(v4);

  return v7;
}

- (void)releaseBuffer:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(DVTSecureSocketProxyBufferPool *)v4 dataBuffers];
  [v5 addObject:v7];

  objc_sync_exit(v4);
  v6 = [(DVTSecureSocketProxyBufferPool *)v4 bufferAvailable];
  dispatch_semaphore_signal(v6);
}

@end