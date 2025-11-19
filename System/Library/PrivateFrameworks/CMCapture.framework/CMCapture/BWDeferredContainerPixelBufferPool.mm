@interface BWDeferredContainerPixelBufferPool
- (BWDeferredContainerPixelBufferPool)initWithVideoFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5;
- (__CVBuffer)newPixelBuffer;
- (void)dealloc;
- (void)flushToMinimumCapacity:(unint64_t)a3;
@end

@implementation BWDeferredContainerPixelBufferPool

- (BWDeferredContainerPixelBufferPool)initWithVideoFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5
{
  v9.receiver = self;
  v9.super_class = BWDeferredContainerPixelBufferPool;
  v8 = 0;
  v6 = [(BWPixelBufferPool *)&v9 initWithVideoFormat:a3 capacity:a4 name:a5 clientProvidesPool:0 memoryPool:0 providesBackPressure:0 reportSlowBackPressureAllocations:v8];
  if (v6)
  {
    v6->_videoFormat = a3;
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

- (void)flushToMinimumCapacity:(unint64_t)a3
{
  v5 = +[BWDeferredCaptureContainerManager sharedInstance];

  [(BWDeferredCaptureContainerManager *)v5 flush:self toMinimumCapacity:a3];
}

@end