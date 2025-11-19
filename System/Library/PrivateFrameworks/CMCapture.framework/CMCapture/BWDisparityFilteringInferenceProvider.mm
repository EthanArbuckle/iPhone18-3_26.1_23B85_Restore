@interface BWDisparityFilteringInferenceProvider
- (BWDisparityFilteringInferenceProvider)initWithDisparityInputRequirement:(id)a3 disparityOutputRequirement:(id)a4 resourceProvider:(id)a5 configuration:(id)a6 isPreprocessing:(BOOL)a7;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)a3;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
- (void)setCustomInferenceIdentifier:(id)a3;
@end

@implementation BWDisparityFilteringInferenceProvider

- (BWDisparityFilteringInferenceProvider)initWithDisparityInputRequirement:(id)a3 disparityOutputRequirement:(id)a4 resourceProvider:(id)a5 configuration:(id)a6 isPreprocessing:(BOOL)a7
{
  v19.receiver = self;
  v19.super_class = BWDisparityFilteringInferenceProvider;
  v12 = [(BWDisparityFilteringInferenceProvider *)&v19 init];
  if (v12)
  {
    v12->_metalInferenceContext = [a5 defaultDeviceMetalContext];
    v18 = 0;
    v13 = -[MTLDevice newDefaultLibraryWithBundle:error:](-[BWMetalInferenceContext device](v12->_metalInferenceContext, "device"), "newDefaultLibraryWithBundle:error:", [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()], &v18);
    if (v13)
    {
      v14 = v13;
      v15 = [v13 newFunctionWithName:@"depthCropUpscaleAndMirror"];

      v12->_cropPipelineState = [(MTLDevice *)[(BWMetalInferenceContext *)v12->_metalInferenceContext device] newComputePipelineStateWithFunction:v15 error:&v18];
      if (v12->_cropPipelineState)
      {
        v12->_disparityInputRequirement = a3;
        v12->_outputRequirement = a4;
        v12->_concurrencyWidth = [a6 concurrencyWidth];
        v12->_requiresCroppingOfDepthBuffer = [a6 requiresCroppingOfDepthBuffer];
        v12->_requiresVerticalFlipOfDepthBuffer = [a6 requiresVerticalFlipOfDepthBuffer];
        v12->_inputSource = 0;
        v16 = [a6 videoDepthAlgorithm];
        if (v16 < 4)
        {
          v12->_inputSource = qword_1AD055B90[v16];
          v12->_isPreProcessing = a7;
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

- (int)prepareForSubmissionWithWorkQueue:(id)a3
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
    v8 = [(BWInferenceVideoRequirement *)self->_disparityInputRequirement videoFormat];
    v9 = [(BWInferenceVideoRequirement *)self->_outputRequirement videoFormat];
    if (self->_isPreProcessing)
    {
      v10 = 23;
    }

    else
    {
      v10 = 25;
    }

    self->_disparityInputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v10 width:-[BWInferenceVideoFormat width](v8 height:"width") mipmapped:-[BWInferenceVideoFormat height](v8, "height"), 0];
    v11 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](v9 height:"width") mipmapped:-[BWInferenceVideoFormat height](v9, "height"), 0];
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

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
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

  v12 = [a4 pixelBufferForRequirement:self->_disparityInputRequirement];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{self->_outputRequirement), "newPixelBuffer"}];
    if (v14)
    {
      [a4 setPixelBuffer:v14 forRequirement:self->_outputRequirement];
      v15 = [(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue];
      v16 = [-[MTLCommandQueue device](v15 "device")];
      v17 = [-[MTLCommandQueue device](v15 "device")];
      v18 = [(MTLCommandQueue *)v15 commandBuffer];
      [a4 setPixelBuffer:v14 forRequirement:self->_outputRequirement];
      if (self->_isPreProcessing)
      {
        v19 = [objc_msgSend(CVPixelBufferGetAttributes() objectForKeyedSubscript:{*MEMORY[0x1E69660A8]), "shortValue"}];
        AttachedMedia = BWSampleBufferGetAttachedMedia(a3, [(BWInferenceMediaRequirement *)self->_disparityInputRequirement attachedMediaKey]);
        v21 = CMGetAttachment(AttachedMedia, *off_1E798A328, 0);
        [objc_msgSend(v21 objectForKeyedSubscript:{*off_1E798ABB8), "floatValue"}];
        v23 = v22;
        [objc_msgSend(v21 objectForKeyedSubscript:{*off_1E798ABC0), "floatValue"}];
        v26 = LODWORD(v24);
        if (self->_requiresCroppingOfDepthBuffer)
        {
          v45 = a7;
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
          v38 = [v18 computeCommandEncoder];
          [v38 setTexture:v16 atIndex:0];
          [v38 setTexture:self->_disparitySourceTextureCroppedUpscaledAndMirrored atIndex:1];
          [v38 setBytes:&v53 length:16 atIndex:0];
          [v38 setBytes:&requiresVerticalFlipOfDepthBuffer length:1 atIndex:1];
          [v38 setComputePipelineState:self->_cropPipelineState];
          v39 = [(MTLComputePipelineState *)self->_cropPipelineState threadExecutionWidth];
          v40 = [(MTLComputePipelineState *)self->_cropPipelineState maxTotalThreadsPerThreadgroup]/ v39;
          v41 = [(MTLTexture *)self->_disparitySourceTextureCroppedUpscaledAndMirrored width];
          v42 = [(MTLTexture *)self->_disparitySourceTextureCroppedUpscaledAndMirrored height];
          v51[0] = v41;
          v51[1] = v42;
          v51[2] = 1;
          v50[0] = v39;
          v50[1] = v40;
          v50[2] = 1;
          [v38 dispatchThreads:v51 threadsPerThreadgroup:v50];
          [v38 endEncoding];
          disparitySourceTextureCroppedUpscaledAndMirrored = self->_disparitySourceTextureCroppedUpscaledAndMirrored;
          a7 = v45;
          v19 = v44;
        }

        else
        {
          self->_disparitySourceTextureCroppedUpscaledAndMirrored = v16;
          disparitySourceTextureCroppedUpscaledAndMirrored = v16;
        }

        LODWORD(v24) = v23;
        LODWORD(v25) = v26;
        if (![(ADPCEDisparityColorPipeline *)self->_stereoPipeline encodeDisparityPreprocessingToCommandBuffer:v18 input:disparitySourceTextureCroppedUpscaledAndMirrored normalizationMultiplier:v19 normalizationOffset:self->_requestedRotation invalidValue:v17 rotation:v24 output:v25])
        {
          goto LABEL_19;
        }

        [BWDisparityFilteringInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      }

      else
      {
        if (![(ADPCEDisparityColorPipeline *)self->_stereoPipeline encodeDisparityPostprocessingToCommandBuffer:v18 input:v16 output:v17])
        {
LABEL_19:
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __123__BWDisparityFilteringInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
          v48[3] = &unk_1E798FB70;
          v49 = 0;
          v48[4] = self;
          v48[5] = a7;
          [v18 addScheduledHandler:v48];
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __123__BWDisparityFilteringInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2;
          v46[3] = &__block_descriptor_36_e28_v16__0___MTLCommandBuffer__8l;
          v47 = v11;
          [v18 addCompletedHandler:v46];
          [v18 commit];
          LODWORD(v18) = 0;
LABEL_20:
          CFRelease(v14);
          goto LABEL_21;
        }

        [BWDisparityFilteringInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      }

      v18 = 4294935586;
    }

    else
    {
      [BWDisparityFilteringInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      v17 = 0;
      v16 = 0;
      v18 = 4294935578;
    }
  }

  else
  {
    [BWDisparityFilteringInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v17 = 0;
    v16 = 0;
    v14 = 0;
    v18 = 4294935584;
  }

  if (a7)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    (*(a7 + 2))(a7, v18, self);
  }

  if (v14)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v18;
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

- (void)setCustomInferenceIdentifier:(id)a3
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != a3)
  {

    self->_customInferenceIdentifier = a3;
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

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  cf = 0;
  v8 = [a4 pixelBufferForRequirement:self->_outputRequirement];
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
      v9 = [(BWInferenceMediaRequirement *)self->_outputRequirement attachedMediaKey];
      BWSampleBufferSetAttachedMedia(a6, v9, cf);
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