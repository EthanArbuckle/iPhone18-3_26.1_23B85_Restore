@interface BWOnDemandPixelBufferAllocator
+ (BWOnDemandPixelBufferAllocator)_onDemandAllocatorWithDimensions:(int)a3 dimensionAlignment:(uint64_t)a4 pixelFormat:(uint64_t)a5 name:(uint64_t)a6 memoryPool:;
+ (id)onDemandAllocatorWithDimensions:(id)a3 dimensionAlignment:(int)a4 pixelFormat:(unsigned int)a5 name:(id)a6 memoryPool:(id)a7;
- (BWOnDemandPixelBufferAllocator)initWithVideoFormat:(id)a3 name:(id)a4 memoryPool:(id)a5 additionalPixelBufferAttributes:(id)a6;
- (__CVBuffer)newPixelBuffer;
- (uint64_t)newPixelBuffer;
- (void)_initWithVideoFormat:(uint64_t)a3 name:(void *)a4 memoryPool:(uint64_t)a5 additionalPixelBufferAttributes:;
- (void)dealloc;
@end

@implementation BWOnDemandPixelBufferAllocator

- (BWOnDemandPixelBufferAllocator)initWithVideoFormat:(id)a3 name:(id)a4 memoryPool:(id)a5 additionalPixelBufferAttributes:(id)a6
{
  if (!a5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No memory pool provided for video format: %@", a4, a5, a6, a3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  return [(BWOnDemandPixelBufferAllocator *)self _initWithVideoFormat:a3 name:a3 memoryPool:a5 additionalPixelBufferAttributes:a6];
}

- (void)_initWithVideoFormat:(uint64_t)a3 name:(void *)a4 memoryPool:(uint64_t)a5 additionalPixelBufferAttributes:
{
  v5 = a1;
  if (a1)
  {
    if (a4 && ([a2 memoryPoolUseAllowed] & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Memory pool use disallowed with video format: %@", a2];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
    }

    v14.receiver = v5;
    v14.super_class = BWOnDemandPixelBufferAllocator;
    v5 = objc_msgSendSuper2(&v14, sel_init);
    if (v5)
    {
      v5[1] = a2;
      v5[4] = a4;
      v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a2, "pixelBufferAttributes")}];
      v10 = [MEMORY[0x1E695DF90] dictionary];
      [v10 setObject:&unk_1F2245340 forKeyedSubscript:*MEMORY[0x1E696CE60]];
      [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696CFA0]];
      if (a4)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a4, "poolIdentifier")}];
        [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696CE38]];
      }

      [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69660D8]];
      [v9 addEntriesFromDictionary:a5];
      v5[3] = [v9 copy];
    }
  }

  return v5;
}

+ (id)onDemandAllocatorWithDimensions:(id)a3 dimensionAlignment:(int)a4 pixelFormat:(unsigned int)a5 name:(id)a6 memoryPool:(id)a7
{
  if (!a7)
  {
    v18 = v9;
    v19 = v8;
    v20 = v7;
    v14 = MEMORY[0x1E696AEC0];
    v15 = *&a5;
    v16 = BWStringFromDimensions();
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(v14 userInfo:{"stringWithFormat:", @"No memory pool provided for dimensions:%@, pixelFormat:%@", v16, BWStringFromCVPixelFormatType(v15), v10, v18, v19, v20, v11, v12), 0}];
    objc_exception_throw(v17);
  }

  return [BWOnDemandPixelBufferAllocator _onDemandAllocatorWithDimensions:a4 dimensionAlignment:*&a5 pixelFormat:a6 name:a7 memoryPool:?];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWOnDemandPixelBufferAllocator;
  [(BWOnDemandPixelBufferAllocator *)&v3 dealloc];
}

- (__CVBuffer)newPixelBuffer
{
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], [(BWOnDemandPixelBufferAllocator *)self width], [(BWOnDemandPixelBufferAllocator *)self height], [(BWOnDemandPixelBufferAllocator *)self pixelFormat], self->_pixelBufferAttributes, &pixelBufferOut))
  {
    [BWOnDemandPixelBufferAllocator newPixelBuffer];
  }

  else if ([(BWVideoFormat *)self->_videoFormat colorSpaceProperties])
  {
    v3 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:[(BWVideoFormat *)self->_videoFormat colorSpaceProperties]];
    CVBufferSetAttachments(pixelBufferOut, v3, kCVAttachmentMode_ShouldPropagate);
  }

  return pixelBufferOut;
}

+ (BWOnDemandPixelBufferAllocator)_onDemandAllocatorWithDimensions:(int)a3 dimensionAlignment:(uint64_t)a4 pixelFormat:(uint64_t)a5 name:(uint64_t)a6 memoryPool:
{
  objc_opt_self();
  v11 = 0;
  if (a4)
  {
    if (a2 >= 1 && SHIDWORD(a2) >= 1)
    {
      v13 = +[BWVideoFormatRequirements formatRequirements];
      [v13 setWidth:a2 & 0x7FFFFFFF];
      [v13 setHeight:a2 >> 32];
      if (a3)
      {
        [v13 setWidthAlignment:a3];
        [v13 setHeightAlignment:a3];
      }

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
      [v13 setSupportedPixelFormats:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v18, 1)}];
      if (!v13)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
LABEL_16:
        FigDebugAssert3();
        v11 = 0;
        return v11;
      }

      v14 = [BWOnDemandPixelBufferAllocator alloc];
      if (a6)
      {
        v17 = v13;
        v11 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:](v14, "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1]), a5, a6, 0);
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v16 = v13;
        v11 = -[BWOnDemandPixelBufferAllocator initWithoutMemoryPoolWithVideoFormat:name:additionalPixelBufferAttributes:](v14, "initWithoutMemoryPoolWithVideoFormat:name:additionalPixelBufferAttributes:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1]), a5, 0);
        if (!v11)
        {
LABEL_15:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_6();
          goto LABEL_16;
        }
      }
    }
  }

  return v11;
}

- (uint64_t)newPixelBuffer
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end