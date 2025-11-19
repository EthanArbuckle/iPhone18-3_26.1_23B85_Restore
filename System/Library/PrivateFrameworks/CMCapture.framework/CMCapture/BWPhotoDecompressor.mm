@interface BWPhotoDecompressor
- (BWPhotoDecompressor)initWithOutputPixelBufferPool:(id)a3;
- (BWPhotoDecompressor)initWithPoolSize:(int)a3 outputPixelFormat:(unsigned int)a4 outputLargestDimension:(int)a5;
- (CFDictionaryRef)_setCVColorProperties:(CMSampleBufferRef)sbuf fromSourceBuffer:;
- (_DWORD)_initWithPoolSize:(int)a3 outputPixelFormat:(void *)a4 outputPixelBufferPool:(int)a5 outputLargestDimension:;
- (__CVBuffer)_newUncompressedSampleBufferFromSampleBuffer:(__CVBuffer *)result pixelBufferTrackingTag:(opaqueCMSampleBuffer *)a2;
- (uint64_t)_newUncompressedPixelBufferFromSampleBuffer:(uint64_t)result pixelBufferTrackingTag:(CMSampleBufferRef)sbuf;
- (uint64_t)_setupDecompressionOptions;
- (uint64_t)_setupDecompressionSession;
- (uint64_t)_setupDecompressionSurfacePool;
- (uint64_t)_setupResources;
- (void)_releaseResources;
- (void)dealloc;
- (void)flush;
@end

@implementation BWPhotoDecompressor

- (BWPhotoDecompressor)initWithPoolSize:(int)a3 outputPixelFormat:(unsigned int)a4 outputLargestDimension:(int)a5
{
  if (a3 < 1 || !a4)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"poolSize must be greater than 0, outputPixelFormat must not be 0";
    goto LABEL_9;
  }

  if (a5 < 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"outputLargestDimension must be 0 or greater";
LABEL_9:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:0]);
  }

  return [(BWPhotoDecompressor *)self _initWithPoolSize:a3 outputPixelFormat:a4 outputPixelBufferPool:0 outputLargestDimension:a5];
}

- (BWPhotoDecompressor)initWithOutputPixelBufferPool:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"outputPixelPool must not be nil" userInfo:0]);
  }

  [(BWPhotoDecompressor *)a3 initWithOutputPixelBufferPool:&v4];
  return v4;
}

- (void)dealloc
{
  [(BWPhotoDecompressor *)self _releaseResources];

  v3.receiver = self;
  v3.super_class = BWPhotoDecompressor;
  [(BWPhotoDecompressor *)&v3 dealloc];
}

- (void)flush
{
  if (self->_decompressionSession)
  {
    CMPhotoDecompressionSessionReleaseHardwareResources();
    CMPhotoDecompressionSessionFlushCachedBuffers();
  }

  CMPhotoSurfacePoolDiscardCaches();
  outputPixelBufferPool = self->_outputPixelBufferPool;

  [(BWPixelBufferPool *)outputPixelBufferPool flushToMinimumCapacity:0];
}

- (_DWORD)_initWithPoolSize:(int)a3 outputPixelFormat:(void *)a4 outputPixelBufferPool:(int)a5 outputLargestDimension:
{
  if (!a1)
  {
    return 0;
  }

  v12.receiver = a1;
  v12.super_class = BWPhotoDecompressor;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  v10 = v9;
  if (v9)
  {
    v9[2] = a2;
    v9[3] = a3;
    *(v9 + 2) = a4;
    v10[6] = a5;
    *(v10 + 72) = 0;
  }

  return v10;
}

- (void)_releaseResources
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      CMPhotoDecompressionSessionReleaseHardwareResources();
      CMPhotoDecompressionSessionFlushCachedBuffers();
      v2 = *(a1 + 48);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 48) = 0;
      }
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 40) = 0;
    }

    *(a1 + 56) = 0;
    v4 = *(a1 + 64);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 64) = 0;
    }

    *(a1 + 28) = 0;
  }
}

- (uint64_t)_newUncompressedPixelBufferFromSampleBuffer:(uint64_t)result pixelBufferTrackingTag:(CMSampleBufferRef)sbuf
{
  if (result)
  {
    v2 = result;
    CMSampleBufferGetDataBuffer(sbuf);
    if ((*(v2 + 28) & 1) != 0 || ![(BWPhotoDecompressor *)v2 _setupResources])
    {
      CMPhotoDecompressionSessionCreateContainer();
    }

    return 0;
  }

  return result;
}

- (uint64_t)_setupResources
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 16) && *(a1 + 72) != 1 || *(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = [(BWPhotoDecompressor *)a1 _setupDecompressionSurfacePool];
    if (!*(a1 + 40))
    {
LABEL_15:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_30();
      FigSignalErrorAtGM();
      return v2;
    }
  }

  if (!*(a1 + 48))
  {
    v2 = [(BWPhotoDecompressor *)a1 _setupDecompressionSession];
    if (!*(a1 + 48))
    {
      goto LABEL_15;
    }
  }

  if (!*(a1 + 56))
  {
    v2 = [(BWPhotoDecompressor *)a1 _setupDecompressionOptions];
    if (!*(a1 + 56))
    {
      goto LABEL_15;
    }
  }

  *(a1 + 28) = 1;
  return v2;
}

- (CFDictionaryRef)_setCVColorProperties:(CMSampleBufferRef)sbuf fromSourceBuffer:
{
  if (result)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    result = CMFormatDescriptionGetExtensions(FormatDescription);
    if (result)
    {
      v5 = result;
      v6 = *MEMORY[0x1E6965F30];
      v18[0] = *MEMORY[0x1E6965F98];
      v18[1] = v6;
      v18[2] = *MEMORY[0x1E6965D88];
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      result = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (result)
      {
        v8 = result;
        v9 = *v15;
        do
        {
          v10 = 0;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v14 + 1) + 8 * v10);
            v12 = [(__CFDictionary *)v5 objectForKeyedSubscript:v11];
            if (v12)
            {
              CVBufferSetAttachment(a2, v11, v12, kCVAttachmentMode_ShouldPropagate);
            }

            v10 = (v10 + 1);
          }

          while (v8 != v10);
          result = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
          v8 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (__CVBuffer)_newUncompressedSampleBufferFromSampleBuffer:(__CVBuffer *)result pixelBufferTrackingTag:(opaqueCMSampleBuffer *)a2
{
  if (result)
  {
    v3 = result;
    v5 = 0;
    result = [BWPhotoDecompressor _newUncompressedPixelBufferFromSampleBuffer:a2 pixelBufferTrackingTag:?];
    if (result)
    {
      v4 = result;
      BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, result, v3 + 8, &v5);
      CFRelease(v4);
      return v5;
    }
  }

  return result;
}

- (uint64_t)_setupDecompressionSurfacePool
{
  if (result)
  {
    v1 = result;
    v2 = FigCapturePlatformIOSurfaceWiringAssertionEnabled() != 0;
    v3 = *(v1 + 8);
    v7[0] = *MEMORY[0x1E6991BE0];
    v6[0] = [MEMORY[0x1E696AD98] numberWithInt:{v3, *MEMORY[0x1E6991BC8]}];
    v5[1] = *MEMORY[0x1E6991BA0];
    v6[1] = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v5[2] = *MEMORY[0x1E6991BB8];
    v6[2] = [MEMORY[0x1E696AD98] numberWithBool:v2];
    v5[3] = *MEMORY[0x1E6991BB0];
    v6[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
    v7[1] = *MEMORY[0x1E6991BC0];
    v8[0] = v4;
    v8[1] = &unk_1F2242F58;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
    return CMPhotoSurfacePoolCreate();
  }

  return result;
}

- (uint64_t)_setupDecompressionSession
{
  if (result)
  {
    v1 = *(result + 40);
    if (v1)
    {
      v2 = *MEMORY[0x1E6991B28];
      v3 = v1;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v3 forKeys:&v2 count:1];
    }

    return CMPhotoDecompressionSessionCreate();
  }

  return result;
}

- (uint64_t)_setupDecompressionOptions
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc(MEMORY[0x1E695DF90]);
    v3 = *MEMORY[0x1E6991AD0];
    v7[0] = *MEMORY[0x1E6991AD8];
    v8[0] = MEMORY[0x1E695E118];
    v8[1] = MEMORY[0x1E695E110];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{*(v1 + 12), v7[0], v3, *MEMORY[0x1E6991AE8]}];
    v7[3] = *MEMORY[0x1E6991AA8];
    v8[2] = v4;
    v8[3] = &unk_1F2242F70;
    v5 = [v2 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, v7, 4)}];
    *(v1 + 56) = v5;
    if (*(v1 + 24) >= 1)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [*(v1 + 56) setObject:v6 forKeyedSubscript:*MEMORY[0x1E6991AE0]];
      v5 = *(v1 + 56);
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

- (_DWORD)initWithOutputPixelBufferPool:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  result = -[BWPhotoDecompressor _initWithPoolSize:outputPixelFormat:outputPixelBufferPool:outputLargestDimension:](a2, [a1 capacity], objc_msgSend(a1, "pixelFormat"), a1, 0);
  *a3 = result;
  return result;
}

@end