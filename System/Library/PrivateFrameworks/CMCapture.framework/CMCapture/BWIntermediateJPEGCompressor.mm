@interface BWIntermediateJPEGCompressor
+ (void)initialize;
- (BWIntermediateJPEGCompressor)initWithCompressionQuality:(float)a3 compressionRate:(float)a4 jpegSurfacePoolLowWaterBufferCount:(int)a5 jpegSurfacePoolHighWaterBufferCount:(int)a6 compressedBufferPoolAllocationTimeoutMS:(unint64_t)a7 name:(id)a8;
- (opaqueCMSampleBuffer)newJPEGSampleBufferFromUncompressedSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (uint64_t)_setupJPEGCompressionOptions;
- (uint64_t)_setupJPEGCompressionSession;
- (uint64_t)_setupJPEGContainerOptions;
- (uint64_t)_setupJPEGEncodeResourcesForSourcePixelBuffer:(uint64_t)result;
- (uint64_t)_setupJPEGFormatDescriptionFromSourceBuffer:(uint64_t)result;
- (uint64_t)_setupJPEGSurfacePool;
- (void)_releaseResources;
- (void)dealloc;
- (void)flush;
- (void)prepareForVideoFormat:(id)a3;
@end

@implementation BWIntermediateJPEGCompressor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWIntermediateJPEGCompressor)initWithCompressionQuality:(float)a3 compressionRate:(float)a4 jpegSurfacePoolLowWaterBufferCount:(int)a5 jpegSurfacePoolHighWaterBufferCount:(int)a6 compressedBufferPoolAllocationTimeoutMS:(unint64_t)a7 name:(id)a8
{
  if (a4 == 0.0)
  {
    if (a3 >= 0.0 && a3 < 1.0)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"Must have 0 < compressionQuality < 1";
LABEL_14:
    objc_exception_throw([v14 exceptionWithName:v15 reason:v16 userInfo:0]);
  }

  if (a4 < 0.0)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"Must have compressionRate > 0";
    goto LABEL_14;
  }

  if (a3 != 0.0)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"Must have compressionQuality be 0 when using compressionRate";
    goto LABEL_14;
  }

LABEL_10:
  v22.receiver = self;
  v22.super_class = BWIntermediateJPEGCompressor;
  v18 = [(BWIntermediateJPEGCompressor *)&v22 init];
  if (v18)
  {
    v18->_name = a8;
    v18->_compressionQuality = a3;
    v18->_compressionRate = a4;
    v18->_jpegSurfacePoolLowWaterBufferCount = a5;
    v18->_jpegSurfacePoolHighWaterBufferCount = a6;
    v18->_compressedBufferPoolAllocationTimeoutMS = a7;
    v19 = objc_alloc_init(BWStats);
    v18->_overallWaitStats = v19;
    [(BWStats *)v19 setUnitDesignator:@"ms"];
    v20 = [[BWMovingWindowStats alloc] initWithWindowSize:128];
    v18->_recentWaitStats = v20;
    [(BWStats *)v20 setUnitDesignator:@"ms"];
  }

  return v18;
}

- (void)dealloc
{
  if (dword_1ED8442B0)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED8442B0)
    {
      v7 = 0;
      v6 = 0;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  [(BWIntermediateJPEGCompressor *)self _releaseResources];
  v5.receiver = self;
  v5.super_class = BWIntermediateJPEGCompressor;
  [(BWIntermediateJPEGCompressor *)&v5 dealloc];
}

- (void)flush
{
  if (self->_compressionSession)
  {
    CMPhotoCompressionSessionReleaseHardwareResources();
    CMPhotoCompressionSessionFlushCachedBuffers();
  }

  CMPhotoSurfacePoolDiscardCaches();
}

- (void)_releaseResources
{
  if (a1)
  {
    if (*(a1 + 72))
    {
      CMPhotoCompressionSessionReleaseHardwareResources();
      CMPhotoCompressionSessionFlushCachedBuffers();
      CMPhotoCompressionSessionInvalidate();
      v2 = *(a1 + 72);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 72) = 0;
      }
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 64) = 0;
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 80) = 0;
    }

    *(a1 + 88) = 0;
    v5 = *(a1 + 96);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 96) = 0;
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 104) = 0;
    }

    *(a1 + 16) = 0;
    *(a1 + 48) = 0;
    *(a1 + 60) = 0;
  }
}

- (opaqueCMSampleBuffer)newJPEGSampleBufferFromUncompressedSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v22 = 0;
  v23 = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
    FigSignalErrorAtGM();
    v9 = 0;
    goto LABEL_16;
  }

  v6 = ImageBuffer;
  memset(&timingInfoOut, 0, sizeof(timingInfoOut));
  if (!CMSampleBufferGetSampleTimingInfo(a3, 0, &timingInfoOut))
  {
    if (!self->_setupIsComplete && [(BWIntermediateJPEGCompressor *)self _setupJPEGEncodeResourcesForSourcePixelBuffer:v6])
    {
      v9 = 0;
      goto LABEL_14;
    }

    if (!self->_backPressureSemaphore)
    {
      v9 = 0;
LABEL_11:
      if (!CMPhotoCompressionSessionOpenEmptyContainer() && !CMPhotoCompressionSessionAddImage())
      {
        v19 = 0;
        v18 = 0;
        if (!CMPhotoCompressionSessionCloseContainerAndCopyBacking())
        {
          goto LABEL_16;
        }
      }

      goto LABEL_14;
    }

    compressedBufferPoolAllocationTimeoutMS = self->_compressedBufferPoolAllocationTimeoutMS;
    if (compressedBufferPoolAllocationTimeoutMS == -1)
    {
      v8 = -1;
    }

    else
    {
      v8 = dispatch_time(0, 1000000 * compressedBufferPoolAllocationTimeoutMS);
    }

    ++self->_numberOfTimesWaitedOnBackPressureSemaphore;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    Seconds = CMTimeGetSeconds(&time);
    if (!dispatch_semaphore_wait(self->_backPressureSemaphore, v8))
    {
      v12 = CMClockGetHostTimeClock();
      CMClockGetTime(&time, v12);
      v13 = (CMTimeGetSeconds(&time) - Seconds) * 1000.0;
      [(BWStats *)self->_recentWaitStats addDataPoint:v13];
      [(BWStats *)self->_overallWaitStats addDataPoint:v13];
      v14 = [BWIntermediateJPEGCompressedBufferAssociatedSemaphore alloc];
      name = self->_name;
      backPressureSemaphore = self->_backPressureSemaphore;
      CMSampleBufferGetPresentationTimeStamp(&time, a3);
      v9 = [(BWIntermediateJPEGCompressedBufferAssociatedSemaphore *)v14 initWithSemaphore:backPressureSemaphore name:name presentationTimeStamp:&time];
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_14:
  if (CMPhotoCompressionSessionIsContainerOpen())
  {
    CMPhotoCompressionSessionCloseContainer();
  }

LABEL_16:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v22;
}

- (uint64_t)_setupJPEGEncodeResourcesForSourcePixelBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    v6 = *(v3 + 44);
    if (v6 <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_0_22(Height * Width, v6);
      OUTLINED_FUNCTION_1_23();
    }

    *(v3 + 24) = v7;
    if (*(v3 + 64))
    {
      v8 = 0;
    }

    else
    {
      v8 = [(BWIntermediateJPEGCompressor *)v3 _setupJPEGSurfacePool];
      if (!*(v3 + 64))
      {
        goto LABEL_21;
      }

      if (*(v3 + 32))
      {
        *(v3 + 16) = dispatch_semaphore_create(*(v3 + 56));
      }
    }

    if (*(v3 + 72) || (v8 = [(BWIntermediateJPEGCompressor *)v3 _setupJPEGCompressionSession], *(v3 + 72)))
    {
      if (*(v3 + 80) || (v8 = [(BWIntermediateJPEGCompressor *)v3 _setupJPEGContainerOptions], *(v3 + 80)))
      {
        if (*(v3 + 96) || (v8 = [(BWIntermediateJPEGCompressor *)v3 _setupJPEGCompressionOptions], *(v3 + 96)))
        {
          *(v3 + 60) = 1;
          return v8;
        }
      }
    }

LABEL_21:
    OUTLINED_FUNCTION_2_23();
    FigSignalErrorAtGM();
    return v8;
  }

  return result;
}

- (uint64_t)_setupJPEGFormatDescriptionFromSourceBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    Extensions = CMFormatDescriptionGetExtensions(FormatDescription);
    if (Extensions)
    {
      v6 = *MEMORY[0x1E6965F30];
      v63[0] = *MEMORY[0x1E6965F98];
      v63[1] = v6;
      v63[2] = *MEMORY[0x1E6965D88];
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:3];
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
      v16 = OUTLINED_FUNCTION_4_2(v8, v9, v10, v11, v12, v13, v14, v15, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, 0);
      if (v16)
      {
        v17 = v16;
        v18 = MEMORY[0];
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (MEMORY[0] != v18)
            {
              objc_enumerationMutation(v7);
            }

            v20 = [v8 setObject:-[__CFDictionary objectForKeyedSubscript:](Extensions forKeyedSubscript:{"objectForKeyedSubscript:", *(8 * i)), *(8 * i)}];
          }

          v17 = OUTLINED_FUNCTION_4_2(v20, v21, v22, v23, v24, v25, v26, v27, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v62);
        }

        while (v17);
      }

      if ([v8 count])
      {
        Extensions = v8;
      }

      else
      {
        Extensions = 0;
      }
    }

    v28 = CMSampleBufferGetFormatDescription(sbuf);
    Dimensions = CMVideoFormatDescriptionGetDimensions(v28);
    return CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x6A706567u, Dimensions.width, Dimensions.height, Extensions, (v3 + 104));
  }

  return result;
}

- (void)prepareForVideoFormat:(id)a3
{
  v5 = [a3 width];
  v6 = [a3 height];
  if (self && (compressionRate = self->_compressionRate, compressionRate > 0.0))
  {
    OUTLINED_FUNCTION_0_22(v6 * v5, compressionRate);
    OUTLINED_FUNCTION_1_23();
  }

  else
  {
    v8 = 0;
  }

  if (self->_compressedBufferSize != v8)
  {
    [(BWIntermediateJPEGCompressor *)self _releaseResources];
  }

  jpegFormatDescription = self->_jpegFormatDescription;
  if (jpegFormatDescription)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(jpegFormatDescription);
    if ([a3 width] != Dimensions || objc_msgSend(a3, "height") != Dimensions >> 32)
    {
      v11 = self->_jpegFormatDescription;
      if (v11)
      {
        CFRelease(v11);
        self->_jpegFormatDescription = 0;
      }
    }
  }
}

- (uint64_t)_setupJPEGSurfacePool
{
  if (result)
  {
    v1 = result;
    if (*(result + 24))
    {
      LODWORD(v15[0]) = *(result + 24);
      v2 = MEMORY[0x1E695DEF0];
      v3 = 4;
    }

    else
    {
      v15[0] = xmmword_1AD0467C8;
      v15[1] = unk_1AD0467D8;
      v15[2] = xmmword_1AD0467E8;
      v16 = 0xA0000000800000;
      v2 = MEMORY[0x1E695DEF0];
      v3 = 56;
    }

    v4 = [v2 dataWithBytes:v15 length:v3];
    v5 = FigCapturePlatformIOSurfaceWiringAssertionEnabled() != 0;
    v13 = *MEMORY[0x1E6991BE8];
    v12[0] = [MEMORY[0x1E696AD98] numberWithInt:{*(v1 + 52), *MEMORY[0x1E6991BC8]}];
    v11[1] = *MEMORY[0x1E6991BA0];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 56)];
    v7 = *MEMORY[0x1E6991BA8];
    v12[1] = v6;
    v12[2] = MEMORY[0x1E695E118];
    v8 = *MEMORY[0x1E6991BD0];
    v11[2] = v7;
    v11[3] = v8;
    v9 = *MEMORY[0x1E6991BC0];
    v12[3] = v4;
    v12[4] = &unk_1F2242850;
    v10 = *MEMORY[0x1E6991BB8];
    v11[4] = v9;
    v11[5] = v10;
    v12[5] = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v11[6] = *MEMORY[0x1E6991BB0];
    v12[6] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:7];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    return CMPhotoSurfacePoolCreate();
  }

  return result;
}

- (uint64_t)_setupJPEGCompressionSession
{
  if (result)
  {
    v1 = *MEMORY[0x1E69919E0];
    v4[0] = *MEMORY[0x1E69919E8];
    v4[1] = v1;
    v2 = *(result + 64);
    v5[0] = MEMORY[0x1E695E118];
    v5[1] = v2;
    v3 = *MEMORY[0x1E69919C8];
    v4[2] = *MEMORY[0x1E69919D8];
    v4[3] = v3;
    v5[2] = MEMORY[0x1E695E110];
    v5[3] = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
    return CMPhotoCompressionSessionCreate();
  }

  return result;
}

- (uint64_t)_setupJPEGContainerOptions
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E6991860];
    v4[0] = *MEMORY[0x1E6991870];
    v4[1] = v2;
    v5[0] = &unk_1F2242868;
    v5[1] = &unk_1F2242880;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *(v1 + 80) = v3;
    if (v3)
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

- (uint64_t)_setupJPEGCompressionOptions
{
  if (result)
  {
    v1 = result;
    if (*(result + 40) == 0.0)
    {
      v19 = *MEMORY[0x1E6991B78];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(result + 24)];
      v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v3 = 10;
    }

    else
    {
      v21 = *MEMORY[0x1E6991B90];
      v22 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v3 = 3;
    }

    *(v1 + 88) = [v2 mutableCopy];
    v4 = *MEMORY[0x1E6991960];
    v11 = *MEMORY[0x1E69918D0];
    v12 = v4;
    v18[0] = &unk_1F2242898;
    v18[1] = &unk_1F22428B0;
    v5 = *MEMORY[0x1E6991908];
    v13 = *MEMORY[0x1E6991980];
    v14 = v5;
    v18[2] = MEMORY[0x1E695E118];
    v18[3] = MEMORY[0x1E695E110];
    v6 = *MEMORY[0x1E6991948];
    v15 = *MEMORY[0x1E69919B0];
    v16 = v6;
    v18[4] = MEMORY[0x1E695E118];
    v18[5] = MEMORY[0x1E695E118];
    v7 = *MEMORY[0x1E6991910];
    v18[6] = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{v3, v11, v12, v13, v14, v15, v6, v7, *MEMORY[0x1E6991978]}];
    v17 = *MEMORY[0x1E6991970];
    v9 = *(v1 + 88);
    v18[7] = v8;
    v18[8] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v11 count:9];
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *(v1 + 96) = v10;
    if (v10)
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

@end