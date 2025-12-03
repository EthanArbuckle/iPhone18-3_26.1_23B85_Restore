@interface BWStillImageMetalSDOFRenderer
- (BOOL)shouldEnableForegroundBlur;
- (BWStillImageMetalSDOFRenderer)initWithSDOFRenderingTuningParameters:(id)parameters imageDimensions:(id)dimensions depthDataMapDimensions:(id)mapDimensions portraitRenderQuality:(int)quality metalCommandQueue:(id)queue;
- (uint64_t)_loadAndConfigureSDOFRenderer;
- (uint64_t)bundleOptionsDictionary;
- (void)dealloc;
- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler;
@end

@implementation BWStillImageMetalSDOFRenderer

- (BWStillImageMetalSDOFRenderer)initWithSDOFRenderingTuningParameters:(id)parameters imageDimensions:(id)dimensions depthDataMapDimensions:(id)mapDimensions portraitRenderQuality:(int)quality metalCommandQueue:(id)queue
{
  v14.receiver = self;
  v14.super_class = BWStillImageMetalSDOFRenderer;
  v12 = [(BWStillImageMetalSDOFRenderer *)&v14 init];
  if (v12)
  {
    *(v12 + 1) = parameters;
    *(v12 + 28) = dimensions;
    *(v12 + 36) = mapDimensions;
    *(v12 + 6) = quality;
    *(v12 + 6) = queue;
    [(BWStillImageMetalSDOFRenderer *)v12 _loadAndConfigureSDOFRenderer];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageMetalSDOFRenderer;
  [(BWStillImageMetalSDOFRenderer *)&v3 dealloc];
}

- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler
{
  v13 = CMGetAttachment(sampleBuffer, @"PortraitStillImageFaceAdjustedBlurMap", 0);
  if (!v13)
  {
    [BWStillImageMetalSDOFRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
    goto LABEL_15;
  }

  v14 = v13;
  AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F21AABB0);
  if (AttachedMedia)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  }

  else
  {
    ImageBuffer = 0;
  }

  v17 = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F217BF50);
  if (v17)
  {
    v18 = CMSampleBufferGetImageBuffer(v17);
  }

  else
  {
    v18 = 0;
  }

  if ([(FigSDOFEffectRendering *)self->_sdofEffectRenderer runSamplingWithImage:sampleBuffer inputPixelBuffer:buffer inputFaceAdjustedBlurMap:v14 inputAlphaMask:ImageBuffer inputGainMap:v18 resultImage:processedPixelBuffer])
  {
    [BWStillImageMetalSDOFRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
LABEL_15:
    v19 = 0;
    if (!handler)
    {
      return;
    }

    goto LABEL_10;
  }

  v19 = 2;
  if (!handler)
  {
    return;
  }

LABEL_10:
  v20 = *(handler + 2);

  v20(handler, v19, 0);
}

- (uint64_t)_loadAndConfigureSDOFRenderer
{
  if (result)
  {
    v1 = result;
    v12 = 0;
    bundleOptionsDictionary = [(BWStillImageMetalSDOFRenderer *)result bundleOptionsDictionary];
    if (!bundleOptionsDictionary || (v3 = bundleOptionsDictionary, (v4 = [bundleOptionsDictionary objectForKeyedSubscript:*off_1E798A9D0]) == 0) || (v5 = objc_msgSend(v4, "objectForKeyedSubscript:", *off_1E798A9D8)) == 0 || ((v6 = objc_msgSend(v5, "intValue"), v6 >= 5) ? (v7 = 5) : (v7 = v6), v8 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@/%@V%d.bundle", @"/System/Library/VideoProcessors", @"SDOFRendering", v7, v12), (v9 = objc_msgSend(MEMORY[0x1E696AAE8], "bundleWithPath:", v8)) == 0))
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
      v11 = [objc_alloc(objc_msgSend(v10 classNamed:{@"FigSDOFEffectRendering", "initWithCommandQueue:", v1[6]}];
      v1[2] = v11;
      if (v11 && ![v11 setOptions:v3])
      {
        if (objc_opt_respondsToSelector())
        {
          [v1 shouldEnableForegroundBlur];
          if ([OUTLINED_FUNCTION_3_2() allocateResourcesForInputImageWidth:? inputImageHeight:? shiftMapWidth:? shiftMapHeight:? enableForegroundBlur:?])
          {
            return 0;
          }
        }

        else if ([OUTLINED_FUNCTION_3_2() allocateResourcesForInputImageWidth:? inputImageHeight:? shiftMapWidth:? shiftMapHeight:?])
        {
          return 0;
        }
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
    if (*(result + 8))
    {
      v1 = *off_1E798A9D0;
      v4[0] = *(result + 8);
      v2 = *off_1E798D328;
      v3[0] = v1;
      v3[1] = v2;
      v4[1] = [MEMORY[0x1E696AD98] numberWithInt:*(result + 24) != 0];
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
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

- (BOOL)shouldEnableForegroundBlur
{
  bundleOptionsDictionary = [(BWStillImageMetalSDOFRenderer *)self bundleOptionsDictionary];
  if (bundleOptionsDictionary && (v3 = [bundleOptionsDictionary objectForKeyedSubscript:*off_1E798A9D0]) != 0 && (v4 = v3, (v5 = objc_msgSend(v3, "objectForKeyedSubscript:", *off_1E798A9D8)) != 0) && (v6 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v5, "unsignedIntValue")), (v7 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"RenderingV%@", v6)) != 0) && (v8 = v7, (v9 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"RenderingV%@_NMP", v6)) != 0))
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
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2();
    FigSignalErrorAtGM();
  }

  return 0;
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