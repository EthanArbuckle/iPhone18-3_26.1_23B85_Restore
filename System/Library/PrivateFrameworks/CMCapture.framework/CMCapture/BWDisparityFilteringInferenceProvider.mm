@interface BWDisparityFilteringInferenceProvider
- (BWDisparityFilteringInferenceProvider)initWithDisparityInputRequirement:(id)requirement disparityOutputRequirement:(id)outputRequirement resourceProvider:(id)provider configuration:(id)configuration isPreprocessing:(BOOL)preprocessing;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWDisparityFilteringInferenceProvider

- (BWDisparityFilteringInferenceProvider)initWithDisparityInputRequirement:(id)requirement disparityOutputRequirement:(id)outputRequirement resourceProvider:(id)provider configuration:(id)configuration isPreprocessing:(BOOL)preprocessing
{
  v19.receiver = self;
  v19.super_class = BWDisparityFilteringInferenceProvider;
  v12 = [(BWDisparityFilteringInferenceProvider *)&v19 init];
  if (v12)
  {
    v12->_metalInferenceContext = [provider defaultDeviceMetalContext];
    v18 = 0;
    v13 = -[MTLDevice newDefaultLibraryWithBundle:error:](-[BWMetalInferenceContext device](v12->_metalInferenceContext, "device"), "newDefaultLibraryWithBundle:error:", [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()], &v18);
    if (v13)
    {
      v14 = v13;
      v15 = [v13 newFunctionWithName:@"depthCropUpscaleAndMirror"];

      v12->_cropPipelineState = [(MTLDevice *)[(BWMetalInferenceContext *)v12->_metalInferenceContext device] newComputePipelineStateWithFunction:v15 error:&v18];
      if (v12->_cropPipelineState)
      {
        v12->_disparityInputRequirement = requirement;
        v12->_outputRequirement = outputRequirement;
        v12->_concurrencyWidth = [configuration concurrencyWidth];
        v12->_requiresCroppingOfDepthBuffer = [configuration requiresCroppingOfDepthBuffer];
        v12->_requiresVerticalFlipOfDepthBuffer = [configuration requiresVerticalFlipOfDepthBuffer];
        v12->_inputSource = 0;
        videoDepthAlgorithm = [configuration videoDepthAlgorithm];
        if (videoDepthAlgorithm < 4)
        {
          v12->_inputSource = qword_1AD055B90[videoDepthAlgorithm];
          v12->_isPreProcessing = preprocessing;
          return v12;
        }
      }

      else
      {
        [BWDisparityFilteringInferenceProvider initWithDisparityInputRequirement:disparityOutputRequirement:resourceProvider:configuration:isPreprocessing:];
      }
    }

    else
    {
      [BWDisparityFilteringInferenceProvider initWithDisparityInputRequirement:disparityOutputRequirement:resourceProvider:configuration:isPreprocessing:];
    }

    return 0;
  }

  return v12;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  if (self->_requiresCroppingOfDepthBuffer)
  {
  }

  v4.receiver = self;
  v4.super_class = BWDisparityFilteringInferenceProvider;
  [(BWDisparityFilteringInferenceProvider *)&v4 dealloc];
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  RequestedRotationDegrees = bwisr_getRequestedRotationDegrees([(BWInferenceVideoRequirement *)self->_disparityInputRequirement videoFormat], [(BWInferenceVideoRequirement *)self->_outputRequirement videoFormat]);
  if (self->_requiresVerticalFlipOfDepthBuffer)
  {
    RequestedRotationDegrees = (RequestedRotationDegrees + 180) % 360;
  }

  if (RequestedRotationDegrees == 90)
  {
    v5 = 3;
  }

  else if (RequestedRotationDegrees == 180)
  {
    v5 = 2;
  }

  else
  {
    v5 = RequestedRotationDegrees == 270;
  }

  self->_requestedRotation = v5;
  stereoPipeline = self->_stereoPipeline;
  if (stereoPipeline)
  {
  }

  v7 = [objc_alloc(getADPCEDisparityColorPipelineClass()) initForInputSource:self->_inputSource metalDevice:{-[MTLCommandQueue device](-[BWMetalInferenceContext commandQueue](self->_metalInferenceContext, "commandQueue"), "device")}];
  self->_stereoPipeline = v7;
  if (v7)
  {
    videoFormat = [(BWInferenceVideoRequirement *)self->_disparityInputRequirement videoFormat];
    videoFormat2 = [(BWInferenceVideoRequirement *)self->_outputRequirement videoFormat];
    if (self->_isPreProcessing)
    {
      v10 = 23;
    }

    else
    {
      v10 = 25;
    }

    self->_disparityInputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v10 width:-[BWInferenceVideoFormat width](videoFormat height:"width") mipmapped:-[BWInferenceVideoFormat height](videoFormat, "height"), 0];
    v11 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](videoFormat2 height:"width") mipmapped:-[BWInferenceVideoFormat height](videoFormat2, "height"), 0];
    result = 0;
    self->_disparityOutputDescriptor = v11;
    if (self->_requiresCroppingOfDepthBuffer)
    {
      v13 = [(MTLDevice *)[(BWMetalInferenceContext *)self->_metalInferenceContext device] newTextureWithDescriptor:self->_disparityInputDescriptor];
      result = 0;
      self->_disparitySourceTextureCroppedUpscaledAndMirrored = v13;
    }
  }

  else
  {
    [BWDisparityFilteringInferenceProvider prepareForSubmissionWithWorkQueue:?];
    return v14;
  }

  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  if (self->_isPreProcessing)
  {
    v11 = 11;
  }

  else
  {
    v11 = 14;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v12 = [storage pixelBufferForRequirement:self->_disparityInputRequirement];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_msgSend(storage pixelBufferPoolForRequirement:{self->_outputRequirement), "newPixelBuffer"}];
    if (v14)
    {
      [storage setPixelBuffer:v14 forRequirement:self->_outputRequirement];
      commandQueue = [(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue];
      v16 = [-[MTLCommandQueue device](commandQueue "device")];
      v17 = [-[MTLCommandQueue device](commandQueue "device")];
      commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
      [storage setPixelBuffer:v14 forRequirement:self->_outputRequirement];
      if (self->_isPreProcessing)
      {
        v19 = [objc_msgSend(CVPixelBufferGetAttributes() objectForKeyedSubscript:{*MEMORY[0x1E69660A8]), "shortValue"}];
        AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, [(BWInferenceMediaRequirement *)self->_disparityInputRequirement attachedMediaKey]);
        v21 = CMGetAttachment(AttachedMedia, *off_1E798A328, 0);
        [objc_msgSend(v21 objectForKeyedSubscript:{*off_1E798ABB8), "floatValue"}];
        v23 = v22;
        [objc_msgSend(v21 objectForKeyedSubscript:{*off_1E798ABC0), "floatValue"}];
        v26 = LODWORD(v24);
        if (self->_requiresCroppingOfDepthBuffer)
        {
          handlerCopy = handler;
          v27 = *(MEMORY[0x1E695F050] + 16);
          rect.origin = *MEMORY[0x1E695F050];
          rect.size = v27;
          v28 = CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
          v44 = v19;
          if (v28 && (v29 = v28, v30 = *off_1E798A5C8, [v28 objectForKeyedSubscript:*off_1E798A5C8]))
          {
            CGRectMakeWithDictionaryRepresentation([v29 objectForKeyedSubscript:v30], &rect);
            v31 = vcvt_hight_f32_f64(vcvt_f32_f64(rect.origin), rect.size);
          }

          else
          {
            rect.origin.x = 0.0;
            rect.origin.y = 0.0;
            __asm { FMOV            V0.2D, #1.0 }

            rect.size = _Q0;
            v31 = xmmword_1AD055B80;
          }

          v53 = v31;
          requiresVerticalFlipOfDepthBuffer = self->_requiresVerticalFlipOfDepthBuffer;
          computeCommandEncoder = [commandBuffer computeCommandEncoder];
          [computeCommandEncoder setTexture:v16 atIndex:0];
          [computeCommandEncoder setTexture:self->_disparitySourceTextureCroppedUpscaledAndMirrored atIndex:1];
          [computeCommandEncoder setBytes:&v53 length:16 atIndex:0];
          [computeCommandEncoder setBytes:&requiresVerticalFlipOfDepthBuffer length:1 atIndex:1];
          [computeCommandEncoder setComputePipelineState:self->_cropPipelineState];
          threadExecutionWidth = [(MTLComputePipelineState *)self->_cropPipelineState threadExecutionWidth];
          v40 = [(MTLComputePipelineState *)self->_cropPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
          width = [(MTLTexture *)self->_disparitySourceTextureCroppedUpscaledAndMirrored width];
          height = [(MTLTexture *)self->_disparitySourceTextureCroppedUpscaledAndMirrored height];
          v51[0] = width;
          v51[1] = height;
          v51[2] = 1;
          v50[0] = threadExecutionWidth;
          v50[1] = v40;
          v50[2] = 1;
          [computeCommandEncoder dispatchThreads:v51 threadsPerThreadgroup:v50];
          [computeCommandEncoder endEncoding];
          disparitySourceTextureCroppedUpscaledAndMirrored = self->_disparitySourceTextureCroppedUpscaledAndMirrored;
          handler = handlerCopy;
          v19 = v44;
        }

        else
        {
          self->_disparitySourceTextureCroppedUpscaledAndMirrored = v16;
          disparitySourceTextureCroppedUpscaledAndMirrored = v16;
        }

        LODWORD(v24) = v23;
        LODWORD(v25) = v26;
        if (![(ADPCEDisparityColorPipeline *)self->_stereoPipeline encodeDisparityPreprocessingToCommandBuffer:commandBuffer input:disparitySourceTextureCroppedUpscaledAndMirrored normalizationMultiplier:v19 normalizationOffset:self->_requestedRotation invalidValue:v17 rotation:v24 output:v25])
        {
          goto LABEL_19;
        }

        [BWDisparityFilteringInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      }

      else
      {
        if (![(ADPCEDisparityColorPipeline *)self->_stereoPipeline encodeDisparityPostprocessingToCommandBuffer:commandBuffer input:v16 output:v17])
        {
LABEL_19:
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __123__BWDisparityFilteringInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
          v48[3] = &unk_1E798FB70;
          v49 = 0;
          v48[4] = self;
          v48[5] = handler;
          [commandBuffer addScheduledHandler:v48];
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __123__BWDisparityFilteringInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2;
          v46[3] = &__block_descriptor_36_e28_v16__0___MTLCommandBuffer__8l;
          v47 = v11;
          [commandBuffer addCompletedHandler:v46];
          [commandBuffer commit];
          LODWORD(commandBuffer) = 0;
LABEL_20:
          CFRelease(v14);
          goto LABEL_21;
        }

        [BWDisparityFilteringInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      }

      commandBuffer = 4294935586;
    }

    else
    {
      [BWDisparityFilteringInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      v17 = 0;
      v16 = 0;
      commandBuffer = 4294935578;
    }
  }

  else
  {
    [BWDisparityFilteringInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v17 = 0;
    v16 = 0;
    v14 = 0;
    commandBuffer = 4294935584;
  }

  if (handler)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    (*(handler + 2))(handler, commandBuffer, self);
  }

  if (v14)
  {
    goto LABEL_20;
  }

LABEL_21:

  return commandBuffer;
}

uint64_t __123__BWDisparityFilteringInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

uint64_t __123__BWDisparityFilteringInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2()
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (id)newStorage
{
  outputRequirement = self->_outputRequirement;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&outputRequirement count:1];
  if (self->_concurrencyWidth < 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithObject:self->_outputRequirement];
    concurrencyWidth = self->_concurrencyWidth;
    if (concurrencyWidth >= 2)
    {
      do
      {
        [v4 addObject:self->_outputRequirement];
        --concurrencyWidth;
      }

      while (concurrencyWidth > 1);
    }
  }

  v6 = [BWInferenceProviderStorage alloc];
  disparityInputRequirement = self->_disparityInputRequirement;
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v6, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", [MEMORY[0x1E695DEC8] arrayWithObjects:&disparityInputRequirement count:1], v4);
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  cf = 0;
  v8 = [storage pixelBufferForRequirement:self->_outputRequirement];
  if (v8)
  {
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    if (BWSampleBufferCreateFromPixelBuffer(v8, &v10, &self->_outputFormatDescription, &cf))
    {
      [BWDisparityFilteringInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
    }

    else
    {
      attachedMediaKey = [(BWInferenceMediaRequirement *)self->_outputRequirement attachedMediaKey];
      BWSampleBufferSetAttachedMedia(sampleBuffer, attachedMediaKey, cf);
    }
  }

  else
  {
    [BWDisparityFilteringInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (uint64_t)initWithDisparityInputRequirement:disparityOutputRequirement:resourceProvider:configuration:isPreprocessing:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithDisparityInputRequirement:disparityOutputRequirement:resourceProvider:configuration:isPreprocessing:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.4()
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