@interface FigCapturePixelConverter
- (FigCapturePixelConverter)initWithPrefetchPool:(BOOL)pool;
- (int)convertPixelBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect allocateOutputFromBufferPool:(BOOL)pool outputPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)convertSampleBuffer:(opaqueCMSampleBuffer *)buffer cropRect:(CGRect)rect outputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (int)updateOutputPixelFormat:(unsigned int)format dimensions:(id)dimensions poolCapacity:(int)capacity colorSpaceProperties:(int)properties;
- (uint64_t)_buildBufferPool;
- (uint64_t)_buildTransferSession;
- (void)_purgeResources;
- (void)dealloc;
@end

@implementation FigCapturePixelConverter

- (FigCapturePixelConverter)initWithPrefetchPool:(BOOL)pool
{
  v5.receiver = self;
  v5.super_class = FigCapturePixelConverter;
  result = [(FigCapturePixelConverter *)&v5 init];
  if (result)
  {
    result->_prefetchPool = pool;
  }

  return result;
}

- (void)dealloc
{
  [(FigCapturePixelConverter *)self _purgeResources];
  v3.receiver = self;
  v3.super_class = FigCapturePixelConverter;
  [(FigCapturePixelConverter *)&v3 dealloc];
}

- (int)updateOutputPixelFormat:(unsigned int)format dimensions:(id)dimensions poolCapacity:(int)capacity colorSpaceProperties:(int)properties
{
  v6 = *&properties;
  v9 = *&format;
  if (!self->_pool || self->_poolCapacity != capacity || (outputFormat = self->_outputFormat) == 0 || [(BWVideoFormat *)outputFormat pixelFormat]!= format || [(BWVideoFormat *)self->_outputFormat width]!= dimensions.var0 || [(BWVideoFormat *)self->_outputFormat height]!= *&dimensions >> 32 || [(BWVideoFormat *)self->_outputFormat colorSpaceProperties]!= v6)
  {
    [(FigCapturePixelConverter *)self _purgeResources];
    self->_poolCapacity = capacity;
    v13 = objc_alloc_init(BWVideoFormatRequirements);
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v13, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1]);
    [(BWVideoFormatRequirements *)v13 setWidth:dimensions.var0];
    [(BWVideoFormatRequirements *)v13 setHeight:*&dimensions >> 32];
    [(BWVideoFormatRequirements *)v13 setPlaneAlignment:*MEMORY[0x1E69E9AC8]];
    [(BWVideoFormatRequirements *)v13 setBytesPerRowAlignment:64];
    [(BWVideoFormatRequirements *)v13 setSupportedCacheModes:[BWVideoFormatRequirements cacheModesForCacheProfile:2]];
    v18 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v13, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1]);
    v17 = v13;
    v14 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1]);
    self->_outputFormat = v14;
    if (v14)
    {
      _buildBufferPool = [(FigCapturePixelConverter *)self _buildBufferPool];
      if (_buildBufferPool)
      {
        _buildTransferSession = _buildBufferPool;
        [FigCapturePixelConverter updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:];
      }

      else
      {
        _buildTransferSession = [(FigCapturePixelConverter *)self _buildTransferSession];
        if (!_buildTransferSession)
        {
          return _buildTransferSession;
        }

        [FigCapturePixelConverter updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:];
      }
    }

    else
    {
      [FigCapturePixelConverter updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:];
      _buildTransferSession = -12780;
    }

    [(FigCapturePixelConverter *)self _purgeResources];
    return _buildTransferSession;
  }

  return 0;
}

- (int)convertSampleBuffer:(opaqueCMSampleBuffer *)buffer cropRect:(CGRect)rect outputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (buffer)
  {
    v13 = ImageBuffer;
    newPixelBuffer = [(BWPixelBufferPool *)self->_pool newPixelBuffer];
    if (newPixelBuffer)
    {
      v15 = newPixelBuffer;
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      if (CGRectIsEmpty(v21))
      {
        DictionaryRepresentation = 0;
      }

      else
      {
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v22);
      }

      v17 = VTSessionSetProperty(self->_transferSession, *MEMORY[0x1E6983E40], DictionaryRepresentation);
      if (v17)
      {
        CopyWithNewPixelBuffer = v17;
        [FigCapturePixelConverter convertSampleBuffer:cropRect:outputSampleBuffer:];
      }

      else
      {
        v18 = VTPixelTransferSessionTransferImage(self->_transferSession, v13, v15);
        if (v18)
        {
          CopyWithNewPixelBuffer = v18;
          [FigCapturePixelConverter convertSampleBuffer:cropRect:outputSampleBuffer:];
        }

        else
        {
          CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, v15, &self->_outputFormatDescription, sampleBuffer);
          if (CopyWithNewPixelBuffer)
          {
            [FigCapturePixelConverter convertSampleBuffer:cropRect:outputSampleBuffer:];
          }
        }
      }

      CFRelease(v15);
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }
    }

    else
    {
      [FigCapturePixelConverter convertSampleBuffer:cropRect:outputSampleBuffer:];
      return -12786;
    }
  }

  else
  {
    [FigCapturePixelConverter convertSampleBuffer:cropRect:outputSampleBuffer:];
    return -12780;
  }

  return CopyWithNewPixelBuffer;
}

- (int)convertPixelBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect allocateOutputFromBufferPool:(BOOL)pool outputPixelBuffer:(__CVBuffer *)pixelBuffer
{
  destinationBuffer = 0;
  if (!buffer)
  {
    [FigCapturePixelConverter convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:];
    DictionaryRepresentation = 0;
    v14 = -12780;
    goto LABEL_13;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (pool)
  {
    destinationBuffer = [(BWPixelBufferPool *)self->_pool newPixelBuffer];
    if (!destinationBuffer)
    {
      [FigCapturePixelConverter convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:];
      DictionaryRepresentation = 0;
      v14 = -12786;
      goto LABEL_13;
    }
  }

  else
  {
    v15 = BWCreateIOSurfaceBackedCVPixelBuffer([(BWVideoFormat *)self->_outputFormat width], [(BWVideoFormat *)self->_outputFormat height], [(BWVideoFormat *)self->_outputFormat pixelFormat], &destinationBuffer, @"PixelConverter Output");
    if (v15)
    {
      v14 = v15;
      [FigCapturePixelConverter convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:];
      DictionaryRepresentation = 0;
      goto LABEL_13;
    }
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectIsEmpty(v21))
  {
    DictionaryRepresentation = 0;
  }

  else
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v22);
  }

  v16 = VTSessionSetProperty(self->_transferSession, *MEMORY[0x1E6983E40], DictionaryRepresentation);
  if (v16)
  {
    v14 = v16;
    [FigCapturePixelConverter convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:];
  }

  else
  {
    v17 = VTPixelTransferSessionTransferImage(self->_transferSession, buffer, destinationBuffer);
    if (v17)
    {
      v14 = v17;
      [FigCapturePixelConverter convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:];
    }

    else
    {
      v18 = destinationBuffer;
      *pixelBuffer = destinationBuffer;
      if (!v18)
      {
        v14 = 0;
        if (!DictionaryRepresentation)
        {
          return v14;
        }

        goto LABEL_16;
      }

      CFRetain(v18);
      v14 = 0;
    }
  }

LABEL_13:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  if (DictionaryRepresentation)
  {
LABEL_16:
    CFRelease(DictionaryRepresentation);
  }

  return v14;
}

- (void)_purgeResources
{
  if (self)
  {

    *(self + 16) = 0;
    *(self + 24) = 0;
    v2 = *(self + 32);
    if (v2)
    {
      CFRelease(v2);
      *(self + 32) = 0;
    }

    v3 = *(self + 8);
    if (v3)
    {
      CFRelease(v3);
      *(self + 8) = 0;
    }
  }
}

- (uint64_t)_buildBufferPool
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2 >= 1)
    {
      if (v2 == 1)
      {
        v3 = 0;
      }

      else
      {
        v8 = *MEMORY[0x1E69660D8];
        v6 = *MEMORY[0x1E696CF70];
        v7 = &unk_1F2245328;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      }

      LOBYTE(v5) = 0;
      v4 = [[BWPixelBufferPool alloc] initWithVideoFormat:*(v1 + 24) capacity:*(v1 + 40) name:@"CapturePixelConverter" memoryPool:0 additionalPixelBufferAttributes:v3 providesBackPressure:0 reportSlowBackPressureAllocations:v5];
      *(v1 + 16) = v4;
      if (!v4)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        FigDebugAssert3();
        return 4294954510;
      }

      if (*(v1 + 44) == 1)
      {
        [(BWPixelBufferPool *)v4 prefetchWithCompletionHandler:0];
      }
    }

    return 0;
  }

  return result;
}

- (uint64_t)_buildTransferSession
{
  if (self)
  {
    v2 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (self + 8));
    if (v2)
    {
      v9 = v2;
      fig_log_get_emitter();
      FigDebugAssert3();
      return v9;
    }

    v3 = +[BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:](BWVideoFormat, "pixelBufferAttachmentsForColorSpaceProperties:", [*(self + 24) colorSpaceProperties]);
    if (v3)
    {
      v4 = v3;
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965F98]];
      [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6983DE0]];
      v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
      [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6983DC0]];
      v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
      [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6983DD8]];
      VTSessionSetProperties(*(self + 8), v5);
    }
  }

  return 0;
}

- (uint64_t)updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)updateOutputPixelFormat:dimensions:poolCapacity:colorSpaceProperties:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertSampleBuffer:cropRect:outputSampleBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertSampleBuffer:cropRect:outputSampleBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertSampleBuffer:cropRect:outputSampleBuffer:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertSampleBuffer:cropRect:outputSampleBuffer:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertSampleBuffer:cropRect:outputSampleBuffer:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)convertPixelBuffer:cropRect:allocateOutputFromBufferPool:outputPixelBuffer:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end