@interface BWIntermediateJPEGCompressedBufferAssociatedSemaphore
- (BWIntermediateJPEGCompressedBufferAssociatedSemaphore)initWithSemaphore:(id)a3 name:(id)a4 presentationTimeStamp:(id *)a5;
- (void)dealloc;
@end

@implementation BWIntermediateJPEGCompressedBufferAssociatedSemaphore

- (BWIntermediateJPEGCompressedBufferAssociatedSemaphore)initWithSemaphore:(id)a3 name:(id)a4 presentationTimeStamp:(id *)a5
{
  v10.receiver = self;
  v10.super_class = BWIntermediateJPEGCompressedBufferAssociatedSemaphore;
  v7 = [(BWIntermediateJPEGCompressedBufferAssociatedSemaphore *)&v10 init:a3];
  if (v7)
  {
    *(v7 + 1) = a3;
    *(v7 + 2) = *(v7 + 2);
    var3 = a5->var3;
    *(v7 + 24) = *&a5->var0;
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