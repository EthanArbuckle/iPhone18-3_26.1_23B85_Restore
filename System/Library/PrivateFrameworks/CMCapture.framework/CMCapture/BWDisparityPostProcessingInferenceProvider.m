@interface BWDisparityPostProcessingInferenceProvider
- (BWDisparityPostProcessingInferenceProvider)initWithDisparityInputRequirement:(id)a3 displacementInputRequirement:(id)a4 stateInputRequirement:(id)a5 stateOutputRequirement:(id)a6 disparityOutputRequirement:(id)a7 portType:(id)a8 resourceProvider:(id)a9 configuration:(id)a10;
- (NSArray)inputVideoRequirements;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)a3;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (uint64_t)newTextureWithRequirement:(void *)a3 usingStorage:(uint64_t)a4 descriptor:(int)a5 isOutput:;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
- (void)setCustomInferenceIdentifier:(id)a3;
@end

@implementation BWDisparityPostProcessingInferenceProvider

- (NSArray)inputVideoRequirements
{
  v2 = *&self->_stateInputRequirement;
  v4[0] = *&self->_displacementInputRequirement;
  v4[1] = v2;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
}

- (BWDisparityPostProcessingInferenceProvider)initWithDisparityInputRequirement:(id)a3 displacementInputRequirement:(id)a4 stateInputRequirement:(id)a5 stateOutputRequirement:(id)a6 disparityOutputRequirement:(id)a7 portType:(id)a8 resourceProvider:(id)a9 configuration:(id)a10
{
  v18.receiver = self;
  v18.super_class = BWDisparityPostProcessingInferenceProvider;
  v16 = [(BWDisparityPostProcessingInferenceProvider *)&v18 init];
  if (v16)
  {
    v16->_metalInferenceContext = [a9 defaultDeviceMetalContext];
    v16->_disparityInputRequirement = a3;
    v16->_displacementInputRequirement = a4;
    v16->_disparityOutputRequirement = a7;
    v16->_stateInputRequirement = a5;
    v16->_stateOutputRequirement = a6;
    v16->_portType = a8;
    v16->_concurrencyWidth = [a10 concurrencyWidth];
    *&v16->_resetTemporalStateOnAspectRatioChange = [a10 colorInputRotationChangesWithAspectRatio];
  }

  return v16;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWDisparityPostProcessingInferenceProvider;
  [(BWDisparityPostProcessingInferenceProvider *)&v4 dealloc];
}

- (int)prepareForSubmissionWithWorkQueue:(id)a3
{
  self->_disparityPostProcessor = 0;
  v4 = [(BWInferenceVideoRequirement *)self->_disparityInputRequirement videoFormat];
  v5 = [(BWInferenceVideoFormat *)v4 width];
  v6 = [(BWInferenceVideoFormat *)v4 height];
  v7 = [(BWInferenceVideoRequirement *)self->_disparityOutputRequirement videoFormat];
  v8 = [(BWInferenceVideoFormat *)v7 width];
  v9 = [(BWInferenceVideoFormat *)v7 height];
  v10 = objc_alloc(getPTDisparityPostProcessingClass());
  v11 = [(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue];
  portType = self->_portType;
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = 1;
  v16[0] = v8;
  v16[1] = v9;
  v16[2] = 1;
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = 1;
  v13 = [v10 initWithCommandQueue:v11 disparitySize:v17 filteredDisparitySize:v16 disparityPixelFormat:25 colorSize:v15 colorPixelFormat:71 sensorPort:portType];
  self->_disparityPostProcessor = v13;
  if (v13)
  {
    self->_disparityInputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](v4 height:"width") mipmapped:-[BWInferenceVideoFormat height](v4, "height"), 0];
    self->_disparityOutputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](v7 height:"width") mipmapped:-[BWInferenceVideoFormat height](v7, "height"), 0];
    self->_displacementDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](-[BWInferenceVideoRequirement videoFormat](self->_displacementInputRequirement height:"videoFormat") mipmapped:"width"), -[BWInferenceVideoFormat height](-[BWInferenceVideoRequirement videoFormat](self->_displacementInputRequirement, "videoFormat"), "height"), 0];
    self->_stateInDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](v7 height:"width") mipmapped:-[BWInferenceVideoFormat height](v7, "height"), 0];
    self->_stateOutDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](v7 height:"width") mipmapped:-[BWInferenceVideoFormat height](v7, "height"), 0];
    [(MTLTextureDescriptor *)self->_disparityInputDescriptor setUsage:1];
    [(MTLTextureDescriptor *)self->_disparityOutputDescriptor setUsage:2];
    [(MTLTextureDescriptor *)self->_displacementDescriptor setUsage:1];
    [(MTLTextureDescriptor *)self->_stateInDescriptor setUsage:1];
    [(MTLTextureDescriptor *)self->_stateOutDescriptor setUsage:2];
    return 0;
  }

  else
  {
    [BWDisparityPostProcessingInferenceProvider prepareForSubmissionWithWorkQueue:];
    return -31702;
  }
}

uint64_t __128__BWDisparityPostProcessingInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

uint64_t __128__BWDisparityPostProcessingInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2()
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
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  stateOutputRequirement = self->_stateOutputRequirement;
  v16[0] = self->_disparityOutputRequirement;
  v16[1] = stateOutputRequirement;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        concurrencyWidth = self->_concurrencyWidth;
        if (concurrencyWidth)
        {
          v11 = *(*(&v18 + 1) + 8 * v9);
          do
          {
            [v3 addObject:v11];
            --concurrencyWidth;
          }

          while (concurrencyWidth);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = [BWInferenceProviderStorage alloc];
  v13 = *&self->_stateInputRequirement;
  v15[0] = *&self->_displacementInputRequirement;
  v15[1] = v13;
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v12, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4], v3);
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  cf = 0;
  v8 = [a4 pixelBufferForRequirement:self->_disparityOutputRequirement];
  if (v8)
  {
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    if (BWSampleBufferCreateFromPixelBuffer(v8, &v10, &self->_outputFormatDescription, &cf))
    {
      [BWDisparityPostProcessingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
    }

    else
    {
      v9 = [(BWInferenceMediaRequirement *)self->_disparityOutputRequirement attachedMediaKey];
      BWSampleBufferSetAttachedMedia(a6, v9, cf);
    }
  }

  else
  {
    [BWDisparityPostProcessingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (uint64_t)newTextureWithRequirement:(void *)a3 usingStorage:(uint64_t)a4 descriptor:(int)a5 isOutput:
{
  if (!a1)
  {
    return 0;
  }

  if (a5)
  {
    v10 = [objc_msgSend(a3 pixelBufferPoolForRequirement:{a2), "newPixelBuffer"}];
    if (v10)
    {
      v11 = v10;
      [a3 setPixelBuffer:v10 forRequirement:a2];
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v11 = [a3 pixelBufferForRequirement:a2];
  if (!v11)
  {
LABEL_9:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

LABEL_6:
  v12 = [objc_msgSend(objc_msgSend(*(a1 + 64) "commandQueue")];
  if (a5)
  {
    CFRelease(v11);
  }

  return v12;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
{
  v10 = self;
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    self = OUTLINED_FUNCTION_2_80();
  }

  if (v10->_resetTemporalStateOnAspectRatioChange)
  {
    self = CMGetAttachment(a3, *off_1E798A440, 0);
    if (self)
    {
      self = [(BWDisparityPostProcessingInferenceProvider *)self BOOLValue];
      v12 = self;
    }

    else
    {
      v12 = 0;
    }

    if (v10->_previousAspectRatioIsLandscape != v12)
    {
      self = [(PTDisparityPostProcessing *)v10->_disparityPostProcessor reset];
    }

    v10->_previousAspectRatioIsLandscape = v12;
  }

  v13 = OUTLINED_FUNCTION_1_90(self, v10->_disparityInputRequirement, a3, v10->_disparityInputDescriptor);
  if (!v13)
  {
    v23 = 0;
    v16 = 0;
LABEL_21:
    v22 = 0;
    v19 = 0;
    goto LABEL_24;
  }

  v14 = [(BWDisparityPostProcessingInferenceProvider *)v10 newTextureWithRequirement:a4 usingStorage:v10->_disparityOutputDescriptor descriptor:1 isOutput:?];
  v16 = v14;
  if (!v14)
  {
    v23 = 0;
    goto LABEL_21;
  }

  v17 = OUTLINED_FUNCTION_1_90(v14, v10->_stateInputRequirement, v15, v10->_stateInDescriptor);
  v19 = v17;
  if (!v17)
  {
    v23 = 0;
    v22 = 0;
    goto LABEL_24;
  }

  v20 = OUTLINED_FUNCTION_1_90(v17, v10->_stateOutputRequirement, v18, v10->_stateOutDescriptor);
  v22 = v20;
  if (!v20)
  {
    v23 = 0;
    goto LABEL_24;
  }

  v23 = OUTLINED_FUNCTION_1_90(v20, v10->_displacementInputRequirement, v21, v10->_displacementDescriptor);
  if (!v23)
  {
LABEL_24:
    v26 = 4294935578;
    goto LABEL_25;
  }

  if ([(PTDisparityPostProcessing *)v10->_disparityPostProcessor temporalDisparityFilter:v23 inStatePrev:v19 inDisparity:v13 outDisparityFiltered:v16 outState:v22])
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v26 = 4294935586;
  }

  else
  {
    v24 = [(MTLCommandQueue *)[(BWMetalInferenceContext *)v10->_metalInferenceContext commandQueue] commandBuffer];
    if (v24)
    {
      v25 = v24;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __128__BWDisparityPostProcessingInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
      v28[3] = &unk_1E798FB70;
      v29 = 0;
      v28[4] = v10;
      v28[5] = a7;
      [v24 addScheduledHandler:v28];
      [v25 addCompletedHandler:&__block_literal_global_85];
      [v25 commit];
      LODWORD(v26) = 0;
      goto LABEL_18;
    }

    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v26 = 0;
  }

LABEL_25:
  if (a7)
  {
    (*(a7 + 2))(a7, v26, v10);
  }

  if (*v11 == 1)
  {
    OUTLINED_FUNCTION_2_80();
  }

LABEL_18:

  return v26;
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end