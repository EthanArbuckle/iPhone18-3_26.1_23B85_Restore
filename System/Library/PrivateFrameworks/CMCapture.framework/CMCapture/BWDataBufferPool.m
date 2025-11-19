@interface BWDataBufferPool
- (BWDataBufferBackedFormat)format;
- (BWDataBufferPool)initWithFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5 clientProvidesPool:(BOOL)a6;
- (uint64_t)_ensurePool;
- (uint64_t)_newDataBuffer;
- (void)dealloc;
- (void)flushToMinimumCapacity:(unint64_t)a3;
- (void)prefetchWithCompletionHandler:(id)a3;
- (void)setCVDataBufferPool:(__CVDataBufferPool *)a3 attributes:(__CFDictionary *)a4;
- (void)setCapacity:(unint64_t)a3;
@end

@implementation BWDataBufferPool

- (uint64_t)_ensurePool
{
  if (result)
  {
    v1 = result;
    if (*(result + 32) == 1)
    {
      if (*(result + 56))
      {
        return 0;
      }

      else
      {
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      os_unfair_lock_lock((result + 48));
      if (!*(v1 + 56))
      {
        v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
        v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 16)];
        [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E6965CA8]];
        [v2 setObject:&unk_1F22439C0 forKeyedSubscript:*MEMORY[0x1E6965CA0]];
        v4 = *(v1 + 24);
        if (v4)
        {
          [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E6965CB0]];
        }

        v5 = [*(v1 + 8) dataBufferAttributes];
        if (*(v1 + 40))
        {
          [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
          FigCFDictionaryAddEntriesToDictionaryWithRecursion();
        }

        [*(v1 + 8) dataFormat];
        [*(v1 + 8) dataBufferSize];
        *(v1 + 72) = CVDataBufferPoolCreate();
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{*(v1 + 16), *MEMORY[0x1E6965C98]}];
        *(v1 + 64) = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
      }

      os_unfair_lock_unlock((v1 + 48));
      return *(v1 + 72);
    }
  }

  return result;
}

- (BWDataBufferPool)initWithFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5 clientProvidesPool:(BOOL)a6
{
  if (!a3)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"no format provided" userInfo:0]);
  }

  v11.receiver = self;
  v11.super_class = BWDataBufferPool;
  v9 = [(BWDataBufferPool *)&v11 init:a3];
  if (v9)
  {
    v9->_format = a3;
    v9->_capacity = a4;
    v9->_name = 0;
    v9->_dataBufferPoolConfigurationLock._os_unfair_lock_opaque = 0;
    v9->_clientProvidesPool = a6;
  }

  return v9;
}

- (void)dealloc
{
  dataBufferPool = self->_dataBufferPool;
  if (dataBufferPool)
  {
    CFRelease(dataBufferPool);
  }

  v4.receiver = self;
  v4.super_class = BWDataBufferPool;
  [(BWDataBufferPool *)&v4 dealloc];
}

- (void)setCVDataBufferPool:(__CVDataBufferPool *)a3 attributes:(__CFDictionary *)a4
{
  if (!a3)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Can't have NULL pool";
    goto LABEL_13;
  }

  if (!a4)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Can't have NULL attributes";
    goto LABEL_13;
  }

  if (!self->_clientProvidesPool)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Can't call when clientProvidesPool = NO";
LABEL_13:
    objc_exception_throw([v9 exceptionWithName:v10 reason:v11 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_dataBufferPoolConfigurationLock);
  if (!self->_dataBufferPool)
  {
    self->_dataBufferPool = CFRetain(a3);
    v7 = CFRetain(a4);
    self->_dataBufferPoolAuxAttributes = v7;
    v8 = [(NSDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E6965C98]];
    if (v8)
    {
      [v8 intValue];
    }
  }

  os_unfair_lock_unlock(&self->_dataBufferPoolConfigurationLock);
}

- (void)prefetchWithCompletionHandler:(id)a3
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__BWDataBufferPool_prefetchWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7990390;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(global_queue, v6);
}

void __50__BWDataBufferPool_prefetchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(BWDataBufferPool *)*(a1 + 32) _ensurePool];
  if (!v3)
  {
    v3 = CVDataBufferPoolPrefetchPages();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)flushToMinimumCapacity:(unint64_t)a3
{
  if (self->_dataBufferPool && self->_capacity > a3)
  {
    CVDataBufferPoolSetMinBufferCount();

    CVDataBufferPoolSetMinBufferCount();
  }
}

- (void)setCapacity:(unint64_t)a3
{
  if (self->_clientProvidesPool || [BWDataBufferPool setCapacity:?])
  {
    self->_capacity = a3;
  }
}

- (BWDataBufferBackedFormat)format
{
  v2 = self->_format;

  return v2;
}

- (uint64_t)_newDataBuffer
{
  if (result)
  {
    if ([(BWDataBufferPool *)result _ensurePool]|| CVDataBufferPoolCreateDataBuffer())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_1();
      FigDebugAssert3();
    }

    return 0;
  }

  return result;
}

@end