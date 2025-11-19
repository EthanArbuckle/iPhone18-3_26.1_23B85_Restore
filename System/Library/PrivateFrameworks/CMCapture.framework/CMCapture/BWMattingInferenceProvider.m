@interface BWMattingInferenceProvider
- (BWMattingInferenceProvider)initWithConfiguration:(id)a3;
- (id)bindMattingInput:(id)a3 fromAttachedMediaUsingKey:(id)a4 preparedByAttachedMediaKey:(id)a5 withVideoFormatProvider:(id)a6;
- (id)bindMattingInput:(id)a3 fromAttachedMediaUsingKey:(id)a4 withVideoFormat:(id)a5;
- (id)bindMattingOutput:(id)a3 fromAttachedMediaUsingKey:(id)a4 preparedByAttachedMediaKey:(id)a5 withVideoFormatProvider:(id)a6;
- (id)newStorage;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6;
- (int)prepareForExecution;
- (int)prewarmUsingLimitedMemory:(BOOL)a3;
- (uint64_t)_configureMattingProcessor;
- (uint64_t)_loadMattingProcessor;
- (uint64_t)processorOptionsDictionary;
- (unsigned)allowedPixelBufferCompressionDirection;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
- (void)setCustomInferenceIdentifier:(id)a3;
- (void)setDepthInputVideoRequirement:(id)a3;
- (void)setPrimaryFormatInputVideoRequirement:(id)a3;
- (void)setRefinedDepthOutputVideoRequirement:(id)a3;
- (void)setSegmentationInputVideoRequirement:(id)a3;
- (void)setSegmentationOutputVideoRequirement:(id)a3;
@end

@implementation BWMattingInferenceProvider

- (void)setPrimaryFormatInputVideoRequirement:(id)a3
{
  primaryFormatInputVideoRequirement = self->_primaryFormatInputVideoRequirement;
  if (primaryFormatInputVideoRequirement != a3)
  {

    self->_primaryFormatInputVideoRequirement = a3;
  }
}

- (void)setSegmentationInputVideoRequirement:(id)a3
{
  segmentationInputVideoRequirement = self->_segmentationInputVideoRequirement;
  if (segmentationInputVideoRequirement != a3)
  {

    self->_segmentationInputVideoRequirement = a3;
  }
}

- (void)setDepthInputVideoRequirement:(id)a3
{
  depthInputVideoRequirement = self->_depthInputVideoRequirement;
  if (depthInputVideoRequirement != a3)
  {

    self->_depthInputVideoRequirement = a3;
  }
}

- (void)setSegmentationOutputVideoRequirement:(id)a3
{
  if (self->_segmentationOutputVideoRequirement != a3)
  {

    self->_segmentationOutputVideoRequirement = a3;
  }
}

- (void)setRefinedDepthOutputVideoRequirement:(id)a3
{
  refinedDepthOutputVideoRequirement = self->_refinedDepthOutputVideoRequirement;
  if (refinedDepthOutputVideoRequirement != a3)
  {

    self->_refinedDepthOutputVideoRequirement = a3;
  }
}

- (BWMattingInferenceProvider)initWithConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = BWMattingInferenceProvider;
  v4 = [(BWMattingInferenceProvider *)&v7 init];
  if (v4)
  {
    if (a3 && ([a3 mainImageDownscalingFactor], v5 != 0.0))
    {
      v4->_tuningParameters = [a3 tuningParameters];
      v4->_sdofRenderingTuningParameters = [a3 sdofRenderingTuningParameters];
      v4->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_metalCommandQueue = [a3 metalCommandQueue];
      v4->_segmentationInputVideoRequirement = 0;
      v4->_depthInputVideoRequirement = 0;
      v4->_primaryFormatInputVideoRequirement = 0;
      v4->_segmentationOutputVideoRequirement = 0;
      v4->_refinedDepthOutputVideoRequirement = 0;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(FigMatting *)self->_mattingProcessor finishProcessing];

  v3.receiver = self;
  v3.super_class = BWMattingInferenceProvider;
  [(BWMattingInferenceProvider *)&v3 dealloc];
}

- (id)newStorage
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 addObjectsFromArray:self->_inputVideoRequirements];
  [v3 addObjectsFromArray:self->_outputVideoRequirements];
  v4 = [MEMORY[0x1E695DF70] array];
  [v4 addObjectsFromArray:self->_outputVideoRequirements];
  v5 = [BWMattingInferenceStorage alloc];

  return [(BWInferenceProviderStorage *)v5 initWithRequirementsNeedingPixelBuffers:v3 requirementsNeedingPixelBufferPools:v4];
}

- (void)setCustomInferenceIdentifier:(id)a3
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != a3)
  {

    self->_customInferenceIdentifier = a3;
  }
}

- (unsigned)allowedPixelBufferCompressionDirection
{
  v2 = [(BWMattingInferenceProvider *)self executionTarget];

  return [BWInferenceEngine allowedBufferCompressionDirectionForExecutionTarget:v2];
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6
{
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v11 = MEMORY[0x1E695F050];
  if (self->_mattingProcessor)
  {
    v12 = [a4 pixelBufferForRequirement:self->_primaryFormatInputVideoRequirement];
    if (v12)
    {
      v13 = v12;
      v14 = [a4 pixelBufferForRequirement:self->_segmentationInputVideoRequirement];
      if (v14)
      {
        v15 = v14;
        v16 = [a4 pixelBufferForRequirement:self->_depthInputVideoRequirement];
        if (v16)
        {
          v17 = v16;
          v18 = [a4 pixelBufferForRequirement:self->_disparityInputVideoRequirement];
          if (v18)
          {
            v19 = v18;
            v20 = *(v11 + 1);
            rect.origin = *v11;
            rect.size = v20;
            v21 = CMGetAttachment(a3, *off_1E798D340, 0);
            if (v21)
            {
              if (CGRectMakeWithDictionaryRepresentation(v21, &rect))
              {
                v27 = a6;
                AttachedInference = BWInferenceGetAttachedInference(a3, 801, 0x1F219E5F0);
                [AttachedInference count];
                v23 = [a4 pixelBufferForRequirement:self->_segmentationOutputVideoRequirement];
                if (v23)
                {
                  goto LABEL_13;
                }

                v23 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{self->_segmentationOutputVideoRequirement), "newPixelBuffer"}];
                [a4 setPixelBuffer:v23 forRequirement:self->_segmentationOutputVideoRequirement];
                if (v23)
                {
                  CFRelease(v23);
LABEL_13:
                  if (self->_refinedDepthOutputVideoRequirement)
                  {
                    v24 = [a4 pixelBufferForRequirement:?];
                    if (!v24)
                    {
                      v24 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{self->_refinedDepthOutputVideoRequirement), "newPixelBuffer"}];
                      [a4 setPixelBuffer:v24 forRequirement:self->_refinedDepthOutputVideoRequirement];
                      if (!v24)
                      {
                        fig_log_get_emitter();
                        v25 = FigSignalErrorAtGM();
LABEL_20:
                        a6 = v27;
                        v10 = MEMORY[0x1E695FF58];
                        v11 = MEMORY[0x1E695F050];
                        goto LABEL_21;
                      }

                      CFRelease(v24);
                    }
                  }

                  else
                  {
                    v24 = 0;
                  }

                  CVBufferSetAttachment(v23, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
                  [(FigMatting *)self->_mattingProcessor setImagePixelBuffer:v13];
                  [(FigMatting *)self->_mattingProcessor setInputSegmentationPixelBuffer:v15];
                  [(FigMatting *)self->_mattingProcessor setInputDepthPixelBuffer:v17];
                  [(FigMatting *)self->_mattingProcessor setInputDisparityPixelBuffer:v19];
                  [(FigMatting *)self->_mattingProcessor setSyntheticFocusRectangle:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
                  [(FigMatting *)self->_mattingProcessor setFaceLandmarks:AttachedInference];
                  [(FigMatting *)self->_mattingProcessor setOutputMattePixelBuffer:v23];
                  [(FigMatting *)self->_mattingProcessor setOutputRefinedDisparityPixelBuffer:v24];
                  if ([(FigMatting *)self->_mattingProcessor process])
                  {
                    [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
                    v25 = v29;
                  }

                  else
                  {
                    [(FigMatting *)self->_mattingProcessor finishScheduling];
                    v25 = 0;
                  }

                  goto LABEL_20;
                }

                fig_log_get_emitter();
                v25 = FigSignalErrorAtGM();
                a6 = v27;
                goto LABEL_27;
              }

              [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
            }

            else
            {
              [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
            }

            v25 = v29;
LABEL_27:
            v10 = MEMORY[0x1E695FF58];
            goto LABEL_21;
          }

          [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
        }

        else
        {
          [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
        }
      }

      else
      {
        [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
      }
    }

    else
    {
      [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
    }
  }

  else
  {
    [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
  }

  v25 = v29;
LABEL_21:
  [(FigMatting *)self->_mattingProcessor setImagePixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setInputSegmentationPixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setInputDepthPixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setInputDisparityPixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setSyntheticFocusRectangle:*v11, v11[1], v11[2], v11[3]];
  [(FigMatting *)self->_mattingProcessor setFaceLandmarks:0];
  [(FigMatting *)self->_mattingProcessor setOutputMattePixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setOutputRefinedDisparityPixelBuffer:0];
  if (*v10 == 1)
  {
    kdebug_trace();
  }

  if (a6)
  {
    (*(a6 + 2))(a6, v25, self);
  }

  return v25;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  BWSampleBufferRemoveAttachedMedia(a6, 0x1F219E750);
  v10 = [a4 newSampleBufferSatisfyingRequirement:self->_segmentationOutputVideoRequirement withPropagationSampleBuffer:a6];
  if (!v10)
  {
    [BWMattingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
    goto LABEL_11;
  }

  v11 = v10;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{0x10000, *off_1E798D218}];
  CMSetAttachment(v11, *off_1E798D2D8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1], 1u);
  BWSampleBufferSetAttachedMedia(a6, 0x1F21AABB0, v11);
  refinedDepthOutputVideoRequirement = self->_refinedDepthOutputVideoRequirement;
  if (!refinedDepthOutputVideoRequirement)
  {
    goto LABEL_9;
  }

  v13 = [a4 newSampleBufferSatisfyingRequirement:refinedDepthOutputVideoRequirement withPropagationSampleBuffer:a6];
  if (!v13)
  {
    [BWMattingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
LABEL_9:
    v15 = v11;
    goto LABEL_10;
  }

  v14 = v13;
  BWSampleBufferSetAttachedMedia(a6, 0x1F21AABD0, v13);
  CFRelease(v11);
  v15 = v14;
LABEL_10:
  CFRelease(v15);
LABEL_11:
  if (*v9 == 1)
  {
    kdebug_trace();
  }
}

- (id)bindMattingInput:(id)a3 fromAttachedMediaUsingKey:(id)a4 withVideoFormat:(id)a5
{
  v6 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:a4 videoFormat:a5];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v6];

  return v6;
}

- (id)bindMattingInput:(id)a3 fromAttachedMediaUsingKey:(id)a4 preparedByAttachedMediaKey:(id)a5 withVideoFormatProvider:(id)a6
{
  v7 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:a4 preparedByAttachedMediaKey:a5 videoFormatProvider:a6];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v7];

  return v7;
}

- (id)bindMattingOutput:(id)a3 fromAttachedMediaUsingKey:(id)a4 preparedByAttachedMediaKey:(id)a5 withVideoFormatProvider:(id)a6
{
  v7 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:a4 preparedByAttachedMediaKey:a5 videoFormatProvider:a6];
  [(NSMutableArray *)self->_outputVideoRequirements addObject:v7];

  return v7;
}

- (int)prepareForExecution
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!self->_mattingProcessor && ([(BWMattingInferenceProvider *)self _loadMattingProcessor]|| [(BWMattingInferenceProvider *)self _configureMattingProcessor]))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    v4 = -31702;
  }

  else
  {
    v4 = 0;
  }

  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v4;
}

- (uint64_t)_loadMattingProcessor
{
  if (result)
  {
    v1 = result;
    v5 = 0;
    v2 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/VideoProcessors/MattingV1.bundle"];
    if (v2)
    {
      v3 = v2;
      if (![v2 loadAndReturnError:&v5])
      {
        return 4294954510;
      }

      v4 = [objc_alloc(objc_msgSend(v3 "principalClass"))];
      *(v1 + 96) = v4;
      if (v4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2();
    }

    else
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2();
    }

    return FigSignalErrorAtGM();
  }

  return result;
}

- (uint64_t)_configureMattingProcessor
{
  if (result)
  {
    v1 = result;
    v2 = [(BWMattingInferenceProvider *)result processorOptionsDictionary];
    if (v2)
    {
      [v1[12] setOptions:v2];
      v3 = [v1[2] videoFormat];
      if (v3 && (v4 = v3, (v5 = [v1[4] videoFormat]) != 0) && (v6 = v5, (v7 = objc_msgSend(v1[3], "videoFormat")) != 0))
      {
        v8 = v7;
        v9 = [v4 width];
        v10 = [v4 height];
        v11 = [v6 width];
        v12 = [v6 height];
        v13 = [v8 width];
        v14 = [v8 height];
        v15 = v1[12];
        v16[0] = v9;
        v16[1] = v10;
        v16[2] = v11;
        v16[3] = v12;
        v16[4] = v13;
        v16[5] = v14;
        v17 = 0;
        [v15 setConfig:v16];
        result = [v1[12] prepareToProcess:0];
        if (result)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          return FigSignalErrorAtGM();
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigDebugAssert3();
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

- (int)prewarmUsingLimitedMemory:(BOOL)a3
{
  result = [(BWMattingInferenceProvider *)self _loadMattingProcessor];
  if (!result)
  {
    v5 = [(BWMattingInferenceProvider *)self processorOptionsDictionary];
    if (v5)
    {
      [(FigMatting *)self->_mattingProcessor setOptions:v5];
      mattingProcessor = self->_mattingProcessor;

      return [(FigMatting *)mattingProcessor prewarmWithTuningParameters:0];
    }

    else
    {
      return -31702;
    }
  }

  return result;
}

- (uint64_t)processorOptionsDictionary
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 80) objectForKeyedSubscript:{@"MattingParameters", "objectForKeyedSubscript:", @"MattingV1"}];
    if (v2)
    {
      if (!*(v1 + 64))
      {
        v8 = *off_1E798A9D0;
        v9 = v2;
        v4 = MEMORY[0x1E695DF20];
        v5 = &v9;
        v6 = &v8;
        v7 = 1;
        return [v4 dictionaryWithObjects:v5 forKeys:v6 count:v7];
      }

      v3 = *(v1 + 88);
      if (v3)
      {
        v10[0] = *off_1E798A9D0;
        v10[1] = @"SDOFRenderingParameters";
        v11[0] = v2;
        v11[1] = v3;
        v4 = MEMORY[0x1E695DF20];
        v5 = v11;
        v6 = v10;
        v7 = 2;
        return [v4 dictionaryWithObjects:v5 forKeys:v6 count:v7];
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    return 0;
  }

  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end