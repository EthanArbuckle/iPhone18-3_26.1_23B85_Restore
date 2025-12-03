@interface BWIntermediateJPEGCompressedBufferAssociatedSemaphore
- (BWIntermediateJPEGCompressedBufferAssociatedSemaphore)initWithSemaphore:(id)semaphore name:(id)name presentationTimeStamp:(id *)stamp;
- (void)dealloc;
@end

@implementation BWIntermediateJPEGCompressedBufferAssociatedSemaphore

- (BWIntermediateJPEGCompressedBufferAssociatedSemaphore)initWithSemaphore:(id)semaphore name:(id)name presentationTimeStamp:(id *)stamp
{
  v10.receiver = self;
  v10.super_class = BWIntermediateJPEGCompressedBufferAssociatedSemaphore;
  v7 = [(BWIntermediateJPEGCompressedBufferAssociatedSemaphore *)&v10 init:semaphore];
  if (v7)
  {
    *(v7 + 1) = semaphore;
    *(v7 + 2) = *(v7 + 2);
    var3 = stamp->var3;
    *(v7 + 24) = *&stamp->var0;
    *(v7 + 5) = var3;
  }

  return v7;
}

- (void)dealloc
{
  dispatch_semaphore_signal(self->_semaphore);

  v3.receiver = self;
  v3.super_class = BWIntermediateJPEGCompressedBufferAssociatedSemaphore;
  [(BWIntermediateJPEGCompressedBufferAssociatedSemaphore *)&v3 dealloc];
}

@end