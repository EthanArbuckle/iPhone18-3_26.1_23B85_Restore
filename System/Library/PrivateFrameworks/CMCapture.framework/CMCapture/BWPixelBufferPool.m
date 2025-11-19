@interface BWPixelBufferPool
+ (void)initialize;
- (BOOL)isPixelBufferAvailable;
- (BOOL)prefetch:(int)a3 lastEmittedSurfaceID:(unsigned int)a4;
- (BOOL)waitForAvailablePixelBuffer;
- (BWPixelBufferPool)initWithVideoFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5 clientProvidesPool:(BOOL)a6 memoryPool:(id)a7 providesBackPressure:(BOOL)a8 reportSlowBackPressureAllocations:(BOOL)a9;
- (BWPixelBufferPool)initWithVideoFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5 memoryPool:(id)a6 additionalPixelBufferAttributes:(id)a7 providesBackPressure:(BOOL)a8 reportSlowBackPressureAllocations:(BOOL)a9;
- (BWVideoFormat)videoFormat;
- (CVPixelBufferRef)_newPixelBuffer;
- (int)preallocate;
- (intptr_t)waitForAvailablePixelBuffer;
- (uint64_t)_ensurePool;
- (uint64_t)_waitForBackPressureSemaphoreIfNeededAndReportIfWaited:(uint64_t)a1;
- (void)dealloc;
- (void)flushToMinimumCapacity:(unint64_t)a3;
- (void)preallocate;
- (void)preallocateWithCompletionHandler:(id)a3;
- (void)prefetchWithCompletionHandler:(id)a3;
- (void)setCVPixelBufferPool:(__CVPixelBufferPool *)a3 attributes:(__CFDictionary *)a4;
- (void)setCapacity:(unint64_t)a3;
@end

@implementation BWPixelBufferPool

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
        [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E6966160]];
        [v2 setObject:&unk_1F2242AC0 forKeyedSubscript:*MEMORY[0x1E6966158]];
        v4 = *(v1 + 24);
        if (v4)
        {
          [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E6966170]];
        }

        v5 = [*(v1 + 8) pixelBufferAttributes];
        if (*(v1 + 88) && ([*(v1 + 8) memoryPoolUseAllowed] & 1) != 0 || *(v1 + 40) || objc_msgSend(*(v1 + 8), "colorSpaceProperties"))
        {
          v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
          if (*(v1 + 40))
          {
            FigCFDictionaryAddEntriesToDictionaryWithRecursion();
          }

          if ([*(v1 + 8) colorSpaceProperties] && !FigCapturePixelFormatIsPackedBayerRaw(objc_msgSend(*(v1 + 8), "pixelFormat")))
          {
            v6 = +[BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:](BWVideoFormat, "pixelBufferAttachmentsForColorSpaceProperties:", [*(v1 + 8) colorSpaceProperties]);
            [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6965C70]];
          }

          if ([*(v1 + 8) memoryPoolUseAllowed])
          {
            [*(v1 + 88) enableForPixelBufferAttributes:v5];
          }
        }

        *(v1 + 80) = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], v2, v5, (v1 + 56));
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{*(v1 + 16), *MEMORY[0x1E6966150]}];
        *(v1 + 64) = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      }

      os_unfair_lock_unlock((v1 + 48));
      return *(v1 + 80);
    }
  }

  return result;
}

- (int)preallocate
{
  if (self->_clientProvidesPool)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  [(BWPixelBufferPool *)self preallocate];
  return v5;
}

- (CVPixelBufferRef)_newPixelBuffer
{
  if (result)
  {
    v1 = result;
    pixelBufferOut = 0;
    if ([(BWPixelBufferPool *)result _ensurePool])
    {
      OUTLINED_FUNCTION_1_8();
    }

    else
    {
      [(BWPixelBufferPool *)v1 _waitForBackPressureSemaphoreIfNeededAndReportIfWaited:?];
      v2 = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*MEMORY[0x1E695E480], *(v1 + 56), *(v1 + 64), &pixelBufferOut);
      if (*(v1 + 96) == 1)
      {
        v3 = *(v1 + 104);
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = __36__BWPixelBufferPool__newPixelBuffer__block_invoke;
        v4[3] = &unk_1E798F870;
        v4[4] = v3;
        [BWIOSurfaceTracking trackPixelBuffer:pixelBufferOut surfaceUseCountIsZeroHandler:v4];
      }

      if (!v2)
      {
        return pixelBufferOut;
      }

      OUTLINED_FUNCTION_1_8();
    }

    FigDebugAssert3();
    return pixelBufferOut;
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds = 1;
  }
}

- (BWPixelBufferPool)initWithVideoFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5 clientProvidesPool:(BOOL)a6 memoryPool:(id)a7 providesBackPressure:(BOOL)a8 reportSlowBackPressureAllocations:(BOOL)a9
{
  if (!a3)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"no format provided" userInfo:0]);
  }

  v9 = a8;
  v16.receiver = self;
  v16.super_class = BWPixelBufferPool;
  v14 = [(BWPixelBufferPool *)&v16 init:a3];
  if (v14)
  {
    v14->_videoFormat = a3;
    v14->_capacity = a4;
    v14->_name = 0;
    v14->_pixelBufferPoolConfigurationLock._os_unfair_lock_opaque = 0;
    v14->_clientProvidesPool = a6;
    v14->_memoryPool = a7;
    v14->_providesBackPressure = v9;
    v14->_reportSlowBackPressureAllocations = a9;
    if (v9)
    {
      v14->_backPressureSemaphore = dispatch_semaphore_create(a4);
    }
  }

  return v14;
}

- (BWPixelBufferPool)initWithVideoFormat:(id)a3 capacity:(unint64_t)a4 name:(id)a5 memoryPool:(id)a6 additionalPixelBufferAttributes:(id)a7 providesBackPressure:(BOOL)a8 reportSlowBackPressureAllocations:(BOOL)a9
{
  LOBYTE(v12) = a9;
  v10 = [(BWPixelBufferPool *)self initWithVideoFormat:a3 capacity:a4 name:a5 clientProvidesPool:0 memoryPool:a6 providesBackPressure:a8 reportSlowBackPressureAllocations:v12];
  if (v10)
  {
    v10->_additionalPixelBufferAttributes = [a7 copy];
  }

  return v10;
}

- (void)dealloc
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CFRelease(pixelBufferPool);
  }

  v4.receiver = self;
  v4.super_class = BWPixelBufferPool;
  [(BWPixelBufferPool *)&v4 dealloc];
}

- (void)setCVPixelBufferPool:(__CVPixelBufferPool *)a3 attributes:(__CFDictionary *)a4
{
  if (!a3)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Can't have NULL pool";
    goto LABEL_22;
  }

  if (!a4)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Can't have NULL attributes";
    goto LABEL_22;
  }

  if (!self->_clientProvidesPool)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Can't call when clientProvidesPool = NO";
LABEL_22:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v17 userInfo:0]);
  }

  os_unfair_lock_lock(&self->_pixelBufferPoolConfigurationLock);
  if (!self->_pixelBufferPool)
  {
    self->_pixelBufferPool = CFRetain(a3);
    v7 = CFRetain(a4);
    self->_pixelBufferPoolAuxAttributes = v7;
    v8 = [(NSDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E6966150]];
    if (v8)
    {
      [v8 intValue];
    }

    if ([(BWVideoFormat *)self->_videoFormat colorSpaceProperties])
    {
      v9 = [(__CFDictionary *)CVPixelBufferPoolGetPixelBufferAttributes(a3) objectForKeyedSubscript:*MEMORY[0x1E6965C70]];
      if (v9)
      {
        v10 = v9;
        v11 = *MEMORY[0x1E6965D88];
        v18[0] = *MEMORY[0x1E6965F98];
        v18[1] = v11;
        v18[2] = *MEMORY[0x1E6965F30];
        v12 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:[(BWVideoFormat *)self->_videoFormat colorSpaceProperties]];
        v13 = 0;
        do
        {
          if ([objc_msgSend(v10 objectForKeyedSubscript:{v18[v13]), "isEqual:", objc_msgSend(v12, "objectForKeyedSubscript:", v18[v13])}])
          {
            v14 = v13 == 2;
          }

          else
          {
            v14 = 1;
          }

          ++v13;
        }

        while (!v14);
      }
    }
  }

  os_unfair_lock_unlock(&self->_pixelBufferPoolConfigurationLock);
}

- (void)preallocateWithCompletionHandler:(id)a3
{
  if (!self->_clientProvidesPool)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__BWPixelBufferPool_preallocateWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7990390;
    v6[4] = self;
    v6[5] = a3;
    dispatch_async(global_queue, v6);
  }
}

void __54__BWPixelBufferPool_preallocateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(BWPixelBufferPool *)*(a1 + 32) _ensurePool];
  if (!v3)
  {
    v3 = CVPixelBufferPoolPreAllocate();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)prefetch:(int)a3 lastEmittedSurfaceID:(unsigned int)a4
{
  if (a4)
  {
    -[NSMutableSet addObject:](self->_prefetchedSurfaceIDs, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a4]);
  }

  capacity = self->_capacity;
  if ((capacity - [(NSMutableSet *)self->_prefetchedSurfaceIDs count]) <= a3)
  {
    v7 = self->_capacity;
    a3 = v7 - [(NSMutableSet *)self->_prefetchedSurfaceIDs count];
  }

  if (a3 < 1)
  {
    return a3 < 1;
  }

  v21[1] = v21;
  v9 = 8 * a3;
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFF0));
  if (v9 >= 0x200)
  {
    v11 = 512;
  }

  else
  {
    v11 = 8 * a3;
  }

  bzero(v21 - ((v9 + 15) & 0xFFFFFFFF0), v11);
  if ([(BWPixelBufferPool *)self _ensurePool])
  {
    FigDebugAssert3();
    return 0;
  }

  else
  {
    v12 = a3;
    v13 = [(NSDictionary *)self->_pixelBufferPoolAuxAttributes mutableCopy];
    v14 = *MEMORY[0x1E6966178];
    v23 = v13;
    [(__CFDictionary *)v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v14];
    bzero(v21 - ((v9 + 15) & 0xFFFFFFFF0), 8 * a3);
    v22 = *MEMORY[0x1E695E480];
    v15 = a3;
    v16 = (v21 - ((v9 + 15) & 0xFFFFFFFF0));
    do
    {
      PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(v22, self->_pixelBufferPool, v23, v16);
      if (PixelBufferWithAuxAttributes)
      {
        break;
      }

      if (!self->_prefetchedSurfaceIDs)
      {
        self->_prefetchedSurfaceIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }

      v18 = *v16++;
      IOSurface = CVPixelBufferGetIOSurface(v18);
      ID = IOSurfaceGetID(IOSurface);
      -[NSMutableSet containsObject:](self->_prefetchedSurfaceIDs, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:ID]);
      -[NSMutableSet addObject:](self->_prefetchedSurfaceIDs, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:ID]);
      --v15;
    }

    while (v15);
    do
    {
      if (*v10)
      {
        CVPixelBufferRelease(*v10);
      }

      ++v10;
      --v12;
    }

    while (v12);
    if (PixelBufferWithAuxAttributes != -6689 && PixelBufferWithAuxAttributes != -6662)
    {
      return a3 < 1;
    }

    return 1;
  }
}

- (void)prefetchWithCompletionHandler:(id)a3
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__BWPixelBufferPool_prefetchWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7990390;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(global_queue, v6);
}

- (void)flushToMinimumCapacity:(unint64_t)a3
{
  if (self->_pixelBufferPool && self->_capacity > a3)
  {
    CVPixelBufferPoolSetMinBufferCount();

    CVPixelBufferPoolSetMinBufferCount();
  }
}

- (BOOL)waitForAvailablePixelBuffer
{
  if (!self->_providesBackPressure)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Not callable when initialized with _providesBackPressure=NO" userInfo:0]);
  }

  [(BWPixelBufferPool *)self waitForAvailablePixelBuffer];
  return v3;
}

- (BOOL)isPixelBufferAvailable
{
  if (!self->_providesBackPressure)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Not callable when initialized with _providesBackPressure=NO" userInfo:0]);
  }

  v3 = dispatch_semaphore_wait(self->_backPressureSemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_backPressureSemaphore);
  }

  return v3 == 0;
}

- (void)setCapacity:(unint64_t)a3
{
  if (self->_clientProvidesPool)
  {
    self->_capacity = a3;
  }

  else
  {
    [(BWPixelBufferPool *)self setCapacity:a3];
  }
}

- (BWVideoFormat)videoFormat
{
  v2 = self->_videoFormat;

  return v2;
}

void __51__BWPixelBufferPool_prefetchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(BWPixelBufferPool *)*(a1 + 32) _ensurePool];
  if (!v3)
  {
    v3 = CVPixelBufferPoolPrefetchPages();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  objc_autoreleasePoolPop(v2);
}

- (uint64_t)_waitForBackPressureSemaphoreIfNeededAndReportIfWaited:(uint64_t)a1
{
  if (a1 && *(a1 + 96) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      if (a2)
      {
        atomic_fetch_add((a1 + 112), 1uLL);
        if (dispatch_semaphore_wait(*(a1 + 104), 0))
        {
          v4 = *(a1 + 104);
          v5 = kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds ? 1000000000 : 0;
          v6 = dispatch_time(0, v5);
          if (dispatch_semaphore_wait(v4, v6))
          {
            v7 = 0;
            do
            {
              v8 = kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds;
              if (kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds)
              {
                v9 = 1000;
              }

              else
              {
                v9 = 0;
              }

              v7 += v9;
              if (dword_1ED844570)
              {
                v10 = OUTLINED_FUNCTION_1_28();
                if (os_log_type_enabled(v10, v18))
                {
                  v11 = v19;
                }

                else
                {
                  v11 = v19 & 0xFFFFFFFE;
                }

                if (v11)
                {
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_0_25();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v8 = kBWPixelBufferPoolBackPressureWaitTimeoutInMilliSeconds;
              }

              v12 = *(a1 + 104);
              if (v8)
              {
                v13 = 1000000000;
              }

              else
              {
                v13 = 0;
              }

              v14 = dispatch_time(0, v13);
            }

            while (dispatch_semaphore_wait(v12, v14));
            if (dword_1ED844570)
            {
              v15 = OUTLINED_FUNCTION_1_28();
              if (os_log_type_enabled(v15, v18))
              {
                v16 = v19;
              }

              else
              {
                v16 = v19 & 0xFFFFFFFE;
              }

              if (v16)
              {
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_0_25();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      else
      {
        dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_8();
      FigDebugAssert3();
    }
  }

  return 0;
}

- (void)preallocate
{
  v4 = objc_autoreleasePoolPush();
  v5 = [(BWPixelBufferPool *)a1 _ensurePool];
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_1_8();
  }

  else
  {
    v6 = CVPixelBufferPoolPreAllocate();
    if (!v6)
    {
      goto LABEL_3;
    }

    OUTLINED_FUNCTION_1_8();
  }

  FigDebugAssert3();
LABEL_3:
  *a2 = v6;

  objc_autoreleasePoolPop(v4);
}

- (intptr_t)waitForAvailablePixelBuffer
{
  *a2 = [(BWPixelBufferPool *)a1 _waitForBackPressureSemaphoreIfNeededAndReportIfWaited:?];
  v3 = *(a1 + 104);

  return dispatch_semaphore_signal(v3);
}

- (uint64_t)setCapacity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  [(BWPixelBufferPool *)a1 _ensurePool];
  result = CVPixelBufferPoolSetMinBufferCount();
  if (!result)
  {
    *(a1 + 16) = a2;
    v5 = [*(a1 + 64) mutableCopy];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6966150]];

    result = [v5 copy];
    *(a1 + 64) = result;
  }

  return result;
}

@end