@interface BWDeferredContainerPixelBufferPool
- (BWDeferredContainerPixelBufferPool)initWithVideoFormat:(id)format capacity:(unint64_t)capacity name:(id)name;
- (__CVBuffer)newPixelBuffer;
- (void)dealloc;
- (void)flushToMinimumCapacity:(unint64_t)capacity;
@end

@implementation BWDeferredContainerPixelBufferPool

- (BWDeferredContainerPixelBufferPool)initWithVideoFormat:(id)format capacity:(unint64_t)capacity name:(id)name
{
  v9.receiver = self;
  v9.super_class = BWDeferredContainerPixelBufferPool;
  v8 = 0;
  v6 = [(BWPixelBufferPool *)&v9 initWithVideoFormat:format capacity:capacity name:name clientProvidesPool:0 memoryPool:0 providesBackPressure:0 reportSlowBackPressureAllocations:v8];
  if (v6)
  {
    v6->_videoFormat = format;
    [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager addBufferPool:"addBufferPool:", v6];
  }

  return v6;
}

- (__CVBuffer)newPixelBuffer
{
  v3 = +[BWDeferredCaptureContainerManager sharedInstance];

  return [(BWDeferredCaptureContainerManager *)v3 newPixelBuffer:self];
}

- (void)dealloc
{
  [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager removeBufferPool:"removeBufferPool:", self];

  v3.receiver = self;
  v3.super_class = BWDeferredContainerPixelBufferPool;
  [(BWPixelBufferPool *)&v3 dealloc];
}

- (void)flushToMinimumCapacity:(unint64_t)capacity
{
  v5 = +[BWDeferredCaptureContainerManager sharedInstance];

  [(BWDeferredCaptureContainerManager *)v5 flush:self toMinimumCapacity:capacity];
}

@end