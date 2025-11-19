@interface BWStillImageMetalBlurMapRenderer
- (BOOL)shouldEnableForegroundBlur;
- (BWStillImageMetalBlurMapRenderer)initWithSDOFRenderingTuningParameters:(id)a3 imageDimensions:(id)a4 depthDataMapDimensions:(id)a5 portraitRenderQuality:(int)a6 metalCommandQueue:(id)a7 backPressureDrivenPipelining:(BOOL)a8;
- (int)prepareForRenderingWithParameters:(id)a3 inputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5;
- (uint64_t)_allocateBlurMapPixelBufferPoolForBuffersOfWidth:(uint64_t)a3 height:(int)a4 enableForegroundBlur:;
- (uint64_t)_loadAndConfigureSDOFBlurMapRenderer;
- (uint64_t)bundleOptionsDictionary;
- (uint64_t)shouldEnableForegroundBlur;
- (void)dealloc;
- (void)renderUsingParameters:(id)a3 inputPixelBuffer:(__CVBuffer *)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 originalPixelBuffer:(__CVBuffer *)a6 processedPixelBuffer:(__CVBuffer *)a7 completionHandler:(id)a8;
@end

@implementation BWStillImageMetalBlurMapRenderer

- (BWStillImageMetalBlurMapRenderer)initWithSDOFRenderingTuningParameters:(id)a3 imageDimensions:(id)a4 depthDataMapDimensions:(id)a5 portraitRenderQuality:(int)a6 metalCommandQueue:(id)a7 backPressureDrivenPipelining:(BOOL)a8
{
  v16.receiver = self;
  v16.super_class = BWStillImageMetalBlurMapRenderer;
  v14 = [(BWStillImageMetalBlurMapRenderer *)&v16 init];
  if (v14)
  {
    v14->_sdofRenderingTuningParameters = a3;
    v14->_imageDimensions = a4;
    v14->_depthDataMapDimensions = a5;
    v14->_portraitRenderQuality = a6;
    v14->_mtlCommandQueue = a7;
    v14->_backPressureDrivenPipelining = a8;
    [(BWStillImageMetalBlurMapRenderer *)v14 _loadAndConfigureSDOFBlurMapRenderer];
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageMetalBlurMapRenderer;
  [(BWStillImageMetalBlurMapRenderer *)&v3 dealloc];
}

- (BOOL)shouldEnableForegroundBlur
{
  v2 = [(BWStillImageMetalBlurMapRenderer *)self bundleOptionsDictionary];
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:*off_1E798A9D0];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 objectForKeyedSubscript:*off_1E798A9D8];
      if (v5)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "unsignedIntValue")}];
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderingV%@", v6];
        if (v7)
        {
          v8 = v7;
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderingV%@_NMP", v6];
          if (v9)
          {
            v10 = v9;
            v11 = [objc_msgSend(v4 objectForKeyedSubscript:{v8), "objectForKeyedSubscript:", @"fgNRings"}];
            v12 = [objc_msgSend(v4 objectForKeyedSubscript:{v10), "objectForKeyedSubscript:", @"fgNRings"}];
            if (v11 && [v11 unsignedIntValue])
            {
              return 1;
            }

            if (v12)
            {
              return [v12 unsignedIntValue] != 0;
            }
          }

          else
          {
            [BWStillImageMetalBlurMapRenderer shouldEnableForegroundBlur];
          }
        }

        else
        {
          [BWStillImageMetalBlurMapRenderer shouldEnableForegroundBlur];
        }
      }

      else
      {
        [BWStillImageMetalBlurMapRenderer shouldEnableForegroundBlur];
      }
    }

    else
    {
      [BWStillImageMetalBlurMapRenderer shouldEnableForegroundBlur];
    }
  }

  else
  {
    [BWStillImageMetalBlurMapRenderer shouldEnableForegroundBlur];
  }

  return 0;
}

- (int)prepareForRenderingWithParameters:(id)a3 inputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5
{
  if (!self->_blurMapPixelBufferPool)
  {
    v8 = [a4 width];
    v9 = v8 + (v8 >> 31);
    v10 = [a4 height];
    [(BWStillImageMetalBlurMapRenderer *)self _allocateBlurMapPixelBufferPoolForBuffersOfWidth:(v10 + (v10 >> 31)) >> 1 height:[(BWStillImageMetalBlurMapRenderer *)self shouldEnableForegroundBlur] enableForegroundBlur:?];
  }

  return 0;
}

- (void)renderUsingParameters:(id)a3 inputPixelBuffer:(__CVBuffer *)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 originalPixelBuffer:(__CVBuffer *)a6 processedPixelBuffer:(__CVBuffer *)a7 completionHandler:(id)a8
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(a5, @"Depth");
  if (!AttachedMedia || (ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia)) == 0)
  {
    [BWStillImageMetalBlurMapRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
LABEL_28:
    v22 = 0;
    goto LABEL_22;
  }

  v13 = ImageBuffer;
  v14 = BWSampleBufferGetAttachedMedia(a5, 0x1F21AABB0);
  if (v14)
  {
    v15 = CMSampleBufferGetImageBuffer(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = BWSampleBufferGetAttachedMedia(a5, 0x1F21AABD0);
  if (v16)
  {
    v17 = CMSampleBufferGetImageBuffer(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = BWSampleBufferGetAttachedMedia(a5, @"PersonSemanticsHair");
  if (v18)
  {
    v19 = CMSampleBufferGetImageBuffer(v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = BWSampleBufferGetAttachedMedia(a5, @"PersonSemanticsGlasses");
  if (v20)
  {
    v21 = CMSampleBufferGetImageBuffer(v20);
  }

  else
  {
    v21 = 0;
  }

  if (!self->_sdofBlurMapRenderer)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v28, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageMetalBlurMapRenderer.m", 224, @"LastShownDate:BWStillImageMetalBlurMapRenderer.m:224", @"LastShownBuild:BWStillImageMetalBlurMapRenderer.m:224", 0);
LABEL_32:
    free(v28);
    goto LABEL_28;
  }

  if (!self->_blurMapPixelBufferPool)
  {
    v26 = FigCaptureGetFrameworkRadarComponent();
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v26, v28, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageMetalBlurMapRenderer.m", 225, @"LastShownDate:BWStillImageMetalBlurMapRenderer.m:225", @"LastShownBuild:BWStillImageMetalBlurMapRenderer.m:225", 0);
    goto LABEL_32;
  }

  [(FigSDOFBlurMapRendering *)self->_sdofBlurMapRenderer setFaceLandmarksArray:BWInferenceGetAttachedInference(a5, 801, 0x1F219E5F0)];
  v22 = [(BWPixelBufferPool *)self->_blurMapPixelBufferPool newPixelBuffer];
  if (v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = v13;
  }

  if ([(FigSDOFBlurMapRendering *)self->_sdofBlurMapRenderer computeBlurMapWithImage:a5 shiftMap:v23 personSegmentationMask:v15 hairSemanticSegmentationMask:v19 glassesSemanticSegmentationMask:v21 resultFaceAdjustedBlurMap:v22])
  {
    [BWStillImageMetalBlurMapRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
  }

  else
  {
    CMSetAttachment(a5, @"PortraitStillImageFaceAdjustedBlurMap", v22, 1u);
  }

LABEL_22:
  if (a8)
  {
    (*(a8 + 2))(a8, 0, 0);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

- (uint64_t)_loadAndConfigureSDOFBlurMapRenderer
{
  if (result)
  {
    v1 = result;
    v12 = 0;
    v2 = [(BWStillImageMetalBlurMapRenderer *)result bundleOptionsDictionary];
    if (!v2 || (v3 = v2, (v4 = [v2 objectForKeyedSubscript:*off_1E798A9D0]) == 0) || (v5 = objc_msgSend(v4, "objectForKeyedSubscript:", *off_1E798A9D8)) == 0 || ((v6 = objc_msgSend(v5, "intValue"), v6 >= 5) ? (v7 = 5) : (v7 = v6), v8 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@/%@V%d.bundle", @"/System/Library/VideoProcessors", @"SDOFRendering", v7, v12), (v9 = objc_msgSend(MEMORY[0x1E696AAE8], "bundleWithPath:", v8)) == 0))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2();
      return FigSignalErrorAtGM();
    }

    v10 = v9;
    if ([v9 loadAndReturnError:&v12])
    {
      v11 = [objc_alloc(objc_msgSend(v10 classNamed:{@"FigSDOFBlurMapRendering", "initWithCommandQueue:", *(v1 + 56)}];
      *(v1 + 16) = v11;
      if (v11 && ![v11 setOptions:v3] && (objc_msgSend(*(v1 + 16), "allocateResourcesForInputImageWidth:inputImageHeight:shiftMapWidth:shiftMapHeight:enableForegroundBlur:", *(v1 + 40), *(v1 + 44), *(v1 + 48), *(v1 + 52), objc_msgSend(v1, "shouldEnableForegroundBlur")) & 1) != 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2();
      return FigSignalErrorAtGM();
    }

    return 4294954510;
  }

  return result;
}

- (uint64_t)bundleOptionsDictionary
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *off_1E798A9D0;
      v3 = v1;
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v3 forKeys:&v2 count:1];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3();
      return 0;
    }
  }

  return result;
}

- (uint64_t)_allocateBlurMapPixelBufferPoolForBuffersOfWidth:(uint64_t)a3 height:(int)a4 enableForegroundBlur:
{
  if (a1 && !*(a1 + 24))
  {
    if (a4)
    {
      v6 = 843264056;
    }

    else
    {
      v6 = 1278226488;
    }

    v21[0] = *MEMORY[0x1E6966208];
    v22[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
    v21[1] = *MEMORY[0x1E69660B8];
    v22[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    v21[2] = *MEMORY[0x1E6966130];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v21[3] = *MEMORY[0x1E69660D8];
    v22[2] = v7;
    v22[3] = MEMORY[0x1E695E0F8];
    v8 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4]);
    v20 = v8;
    v9 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1]);

    v18 = *MEMORY[0x1E6965C70];
    v16 = *MEMORY[0x1E6965F30];
    v17 = *MEMORY[0x1E6965F60];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v11 = [BWPixelBufferPool alloc];
    v12 = +[BWMemoryPool sharedMemoryPool];
    LOBYTE(v15) = *(a1 + 32);
    v13 = [(BWPixelBufferPool *)v11 initWithVideoFormat:v9 capacity:2 name:@"Still Image Blur Map Pool" memoryPool:v12 additionalPixelBufferAttributes:v10 providesBackPressure:v15 reportSlowBackPressureAllocations:?];
    *(a1 + 24) = v13;
    if (!v13)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3();
    }
  }

  return 0;
}

- (uint64_t)shouldEnableForegroundBlur
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();

  return FigSignalErrorAtGM();
}

- (uint64_t)renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end