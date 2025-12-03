@interface BWOnDemandPixelBufferAllocator
+ (BWOnDemandPixelBufferAllocator)_onDemandAllocatorWithDimensions:(int)dimensions dimensionAlignment:(uint64_t)alignment pixelFormat:(uint64_t)format name:(uint64_t)name memoryPool:;
+ (id)onDemandAllocatorWithDimensions:(id)dimensions dimensionAlignment:(int)alignment pixelFormat:(unsigned int)format name:(id)name memoryPool:(id)pool;
- (BWOnDemandPixelBufferAllocator)initWithVideoFormat:(id)format name:(id)name memoryPool:(id)pool additionalPixelBufferAttributes:(id)attributes;
- (__CVBuffer)newPixelBuffer;
- (uint64_t)newPixelBuffer;
- (void)_initWithVideoFormat:(uint64_t)format name:(void *)name memoryPool:(uint64_t)pool additionalPixelBufferAttributes:;
- (void)dealloc;
@end

@implementation BWOnDemandPixelBufferAllocator

- (BWOnDemandPixelBufferAllocator)initWithVideoFormat:(id)format name:(id)name memoryPool:(id)pool additionalPixelBufferAttributes:(id)attributes
{
  if (!pool)
  {
    format = [MEMORY[0x1E696AEC0] stringWithFormat:@"No memory pool provided for video format: %@", name, pool, attributes, format];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:format userInfo:0]);
  }

  return [(BWOnDemandPixelBufferAllocator *)self _initWithVideoFormat:format name:format memoryPool:pool additionalPixelBufferAttributes:attributes];
}

- (void)_initWithVideoFormat:(uint64_t)format name:(void *)name memoryPool:(uint64_t)pool additionalPixelBufferAttributes:
{
  selfCopy = self;
  if (self)
  {
    if (name && ([a2 memoryPoolUseAllowed] & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Memory pool use disallowed with video format: %@", a2];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
    }

    v14.receiver = selfCopy;
    v14.super_class = BWOnDemandPixelBufferAllocator;
    selfCopy = objc_msgSendSuper2(&v14, sel_init);
    if (selfCopy)
    {
      selfCopy[1] = a2;
      selfCopy[4] = name;
      v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a2, "pixelBufferAttributes")}];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:&unk_1F2245340 forKeyedSubscript:*MEMORY[0x1E696CE60]];
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696CFA0]];
      if (name)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(name, "poolIdentifier")}];
        [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E696CE38]];
      }

      [v9 setObject:dictionary forKeyedSubscript:*MEMORY[0x1E69660D8]];
      [v9 addEntriesFromDictionary:pool];
      selfCopy[3] = [v9 copy];
    }
  }

  return selfCopy;
}

+ (id)onDemandAllocatorWithDimensions:(id)dimensions dimensionAlignment:(int)alignment pixelFormat:(unsigned int)format name:(id)name memoryPool:(id)pool
{
  if (!pool)
  {
    v18 = v9;
    v19 = v8;
    v20 = v7;
    v14 = MEMORY[0x1E696AEC0];
    v15 = *&format;
    v16 = BWStringFromDimensions();
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(v14 userInfo:{"stringWithFormat:", @"No memory pool provided for dimensions:%@, pixelFormat:%@", v16, BWStringFromCVPixelFormatType(v15), v10, v18, v19, v20, v11, v12), 0}];
    objc_exception_throw(v17);
  }

  return [BWOnDemandPixelBufferAllocator _onDemandAllocatorWithDimensions:alignment dimensionAlignment:*&format pixelFormat:name name:pool memoryPool:?];
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

+ (BWOnDemandPixelBufferAllocator)_onDemandAllocatorWithDimensions:(int)dimensions dimensionAlignment:(uint64_t)alignment pixelFormat:(uint64_t)format name:(uint64_t)name memoryPool:
{
  objc_opt_self();
  v11 = 0;
  if (alignment)
  {
    if (a2 >= 1 && SHIDWORD(a2) >= 1)
    {
      v13 = +[BWVideoFormatRequirements formatRequirements];
      [v13 setWidth:a2 & 0x7FFFFFFF];
      [v13 setHeight:a2 >> 32];
      if (dimensions)
      {
        [v13 setWidthAlignment:dimensions];
        [v13 setHeightAlignment:dimensions];
      }

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:alignment];
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
      if (name)
      {
        v17 = v13;
        v11 = -[BWOnDemandPixelBufferAllocator initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:](v14, "initWithVideoFormat:name:memoryPool:additionalPixelBufferAttributes:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1]), format, name, 0);
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v16 = v13;
        v11 = -[BWOnDemandPixelBufferAllocator initWithoutMemoryPoolWithVideoFormat:name:additionalPixelBufferAttributes:](v14, "initWithoutMemoryPoolWithVideoFormat:name:additionalPixelBufferAttributes:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1]), format, 0);
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