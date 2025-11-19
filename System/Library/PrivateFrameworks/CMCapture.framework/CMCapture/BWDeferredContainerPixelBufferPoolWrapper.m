@interface BWDeferredContainerPixelBufferPoolWrapper
- (BWDeferredContainerPixelBufferPoolWrapper)initWithVideoFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5;
- (void)dealloc;
- (void)newPixelBuffer;
- (void)signal;
@end

@implementation BWDeferredContainerPixelBufferPoolWrapper

- (BWDeferredContainerPixelBufferPoolWrapper)initWithVideoFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5
{
  v11.receiver = self;
  v11.super_class = BWDeferredContainerPixelBufferPoolWrapper;
  v8 = [(BWDeferredContainerPixelBufferPoolWrapper *)&v11 init];
  if (v8)
  {
    v9 = [[BWPixelBufferPool alloc] initWithVideoFormat:a3 capacity:a4 name:a5 memoryPool:+[BWMemoryPool sharedMemoryPool]];
    v8->_pool = v9;
    v8->_semaphore = dispatch_semaphore_create([(BWPixelBufferPool *)v9 capacity]);
  }

  return v8;
}

- (void)signal
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  dispatch_semaphore_signal(self->_semaphore);
  if (*v3 == 1)
  {

    kdebug_trace();
  }
}

- (void)dealloc
{
  dispatch_release(self->_semaphore);
  v3.receiver = self;
  v3.super_class = BWDeferredContainerPixelBufferPoolWrapper;
  [(BWDeferredContainerPixelBufferPoolWrapper *)&v3 dealloc];
}

- (void)newPixelBuffer
{
  OUTLINED_FUNCTION_25_10();
  if (v0)
  {
    v1 = v0;
    OUTLINED_FUNCTION_10_27();
    if (v2)
    {
      OUTLINED_FUNCTION_17_14();
      kdebug_trace();
    }

    v3 = *(v1 + 16);
    v4 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v3, v4) || (v5 = [*(v1 + 8) newPixelBuffer]) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    else
    {
    }

    OUTLINED_FUNCTION_10_27();
    if (v2)
    {
      OUTLINED_FUNCTION_17_14();
      kdebug_trace();
    }
  }

  OUTLINED_FUNCTION_24_12();
}

@end