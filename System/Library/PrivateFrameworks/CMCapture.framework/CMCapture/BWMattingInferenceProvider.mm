@interface BWMattingInferenceProvider
- (BWMattingInferenceProvider)initWithConfiguration:(id)configuration;
- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format;
- (id)bindMattingOutput:(id)output fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)newStorage;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler;
- (int)prepareForExecution;
- (int)prewarmUsingLimitedMemory:(BOOL)memory;
- (uint64_t)_configureMattingProcessor;
- (uint64_t)_loadMattingProcessor;
- (uint64_t)processorOptionsDictionary;
- (unsigned)allowedPixelBufferCompressionDirection;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
- (void)setDepthInputVideoRequirement:(id)requirement;
- (void)setPrimaryFormatInputVideoRequirement:(id)requirement;
- (void)setRefinedDepthOutputVideoRequirement:(id)requirement;
- (void)setSegmentationInputVideoRequirement:(id)requirement;
- (void)setSegmentationOutputVideoRequirement:(id)requirement;
@end

@implementation BWMattingInferenceProvider

- (void)setPrimaryFormatInputVideoRequirement:(id)requirement
{
  primaryFormatInputVideoRequirement = self->_primaryFormatInputVideoRequirement;
  if (primaryFormatInputVideoRequirement != requirement)
  {

    self->_primaryFormatInputVideoRequirement = requirement;
  }
}

- (void)setSegmentationInputVideoRequirement:(id)requirement
{
  segmentationInputVideoRequirement = self->_segmentationInputVideoRequirement;
  if (segmentationInputVideoRequirement != requirement)
  {

    self->_segmentationInputVideoRequirement = requirement;
  }
}

- (void)setDepthInputVideoRequirement:(id)requirement
{
  depthInputVideoRequirement = self->_depthInputVideoRequirement;
  if (depthInputVideoRequirement != requirement)
  {

    self->_depthInputVideoRequirement = requirement;
  }
}

- (void)setSegmentationOutputVideoRequirement:(id)requirement
{
  if (self->_segmentationOutputVideoRequirement != requirement)
  {

    self->_segmentationOutputVideoRequirement = requirement;
  }
}

- (void)setRefinedDepthOutputVideoRequirement:(id)requirement
{
  refinedDepthOutputVideoRequirement = self->_refinedDepthOutputVideoRequirement;
  if (refinedDepthOutputVideoRequirement != requirement)
  {

    self->_refinedDepthOutputVideoRequirement = requirement;
  }
}

- (BWMattingInferenceProvider)initWithConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = BWMattingInferenceProvider;
  v4 = [(BWMattingInferenceProvider *)&v7 init];
  if (v4)
  {
    if (configuration && ([configuration mainImageDownscalingFactor], v5 != 0.0))
    {
      v4->_tuningParameters = [configuration tuningParameters];
      v4->_sdofRenderingTuningParameters = [configuration sdofRenderingTuningParameters];
      v4->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_metalCommandQueue = [configuration metalCommandQueue];
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
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_inputVideoRequirements];
  [array addObjectsFromArray:self->_outputVideoRequirements];
  array2 = [MEMORY[0x1E695DF70] array];
  [array2 addObjectsFromArray:self->_outputVideoRequirements];
  v5 = [BWMattingInferenceStorage alloc];

  return [(BWInferenceProviderStorage *)v5 initWithRequirementsNeedingPixelBuffers:array requirementsNeedingPixelBufferPools:array2];
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (unsigned)allowedPixelBufferCompressionDirection
{
  executionTarget = [(BWMattingInferenceProvider *)self executionTarget];

  return [BWInferenceEngine allowedBufferCompressionDirectionForExecutionTarget:executionTarget];
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v11 = MEMORY[0x1E695F050];
  if (self->_mattingProcessor)
  {
    v12 = [storage pixelBufferForRequirement:self->_primaryFormatInputVideoRequirement];
    if (v12)
    {
      v13 = v12;
      v14 = [storage pixelBufferForRequirement:self->_segmentationInputVideoRequirement];
      if (v14)
      {
        v15 = v14;
        v16 = [storage pixelBufferForRequirement:self->_depthInputVideoRequirement];
        if (v16)
        {
          v17 = v16;
          v18 = [storage pixelBufferForRequirement:self->_disparityInputVideoRequirement];
          if (v18)
          {
            v19 = v18;
            v20 = *(v11 + 1);
            rect.origin = *v11;
            rect.size = v20;
            v21 = CMGetAttachment(buffer, *off_1E798D340, 0);
            if (v21)
            {
              if (CGRectMakeWithDictionaryRepresentation(v21, &rect))
              {
                handlerCopy = handler;
                AttachedInference = BWInferenceGetAttachedInference(buffer, 801, 0x1F219E5F0);
                [AttachedInference count];
                v23 = [storage pixelBufferForRequirement:self->_segmentationOutputVideoRequirement];
                if (v23)
                {
                  goto LABEL_13;
                }

                v23 = [objc_msgSend(storage pixelBufferPoolForRequirement:{self->_segmentationOutputVideoRequirement), "newPixelBuffer"}];
                [storage setPixelBuffer:v23 forRequirement:self->_segmentationOutputVideoRequirement];
                if (v23)
                {
                  CFRelease(v23);
LABEL_13:
                  if (self->_refinedDepthOutputVideoRequirement)
                  {
                    v24 = [storage pixelBufferForRequirement:?];
                    if (!v24)
                    {
                      v24 = [objc_msgSend(storage pixelBufferPoolForRequirement:{self->_refinedDepthOutputVideoRequirement), "newPixelBuffer"}];
                      [storage setPixelBuffer:v24 forRequirement:self->_refinedDepthOutputVideoRequirement];
                      if (!v24)
                      {
                        fig_log_get_emitter();
                        v25 = FigSignalErrorAtGM();
LABEL_20:
                        handler = handlerCopy;
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
                handler = handlerCopy;
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

  if (handler)
  {
    (*(handler + 2))(handler, v25, self);
  }

  return v25;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  BWSampleBufferRemoveAttachedMedia(sampleBuffer, 0x1F219E750);
  v10 = [storage newSampleBufferSatisfyingRequirement:self->_segmentationOutputVideoRequirement withPropagationSampleBuffer:sampleBuffer];
  if (!v10)
  {
    [BWMattingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
    goto LABEL_11;
  }

  v11 = v10;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{0x10000, *off_1E798D218}];
  CMSetAttachment(v11, *off_1E798D2D8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1], 1u);
  BWSampleBufferSetAttachedMedia(sampleBuffer, 0x1F21AABB0, v11);
  refinedDepthOutputVideoRequirement = self->_refinedDepthOutputVideoRequirement;
  if (!refinedDepthOutputVideoRequirement)
  {
    goto LABEL_9;
  }

  v13 = [storage newSampleBufferSatisfyingRequirement:refinedDepthOutputVideoRequirement withPropagationSampleBuffer:sampleBuffer];
  if (!v13)
  {
    [BWMattingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
LABEL_9:
    v15 = v11;
    goto LABEL_10;
  }

  v14 = v13;
  BWSampleBufferSetAttachedMedia(sampleBuffer, 0x1F21AABD0, v13);
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

- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format
{
  v6 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:key videoFormat:format];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v6];

  return v6;
}

- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider
{
  v7 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:key preparedByAttachedMediaKey:mediaKey videoFormatProvider:provider];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v7];

  return v7;
}

- (id)bindMattingOutput:(id)output fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider
{
  v7 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:key preparedByAttachedMediaKey:mediaKey videoFormatProvider:provider];
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
    processorOptionsDictionary = [(BWMattingInferenceProvider *)result processorOptionsDictionary];
    if (processorOptionsDictionary)
    {
      [v1[12] setOptions:processorOptionsDictionary];
      videoFormat = [v1[2] videoFormat];
      if (videoFormat && (v4 = videoFormat, (v5 = [v1[4] videoFormat]) != 0) && (v6 = v5, (v7 = objc_msgSend(v1[3], "videoFormat")) != 0))
      {
        v8 = v7;
        width = [v4 width];
        height = [v4 height];
        width2 = [v6 width];
        height2 = [v6 height];
        width3 = [v8 width];
        height3 = [v8 height];
        v15 = v1[12];
        v16[0] = width;
        v16[1] = height;
        v16[2] = width2;
        v16[3] = height2;
        v16[4] = width3;
        v16[5] = height3;
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

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  result = [(BWMattingInferenceProvider *)self _loadMattingProcessor];
  if (!result)
  {
    processorOptionsDictionary = [(BWMattingInferenceProvider *)self processorOptionsDictionary];
    if (processorOptionsDictionary)
    {
      [(FigMatting *)self->_mattingProcessor setOptions:processorOptionsDictionary];
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