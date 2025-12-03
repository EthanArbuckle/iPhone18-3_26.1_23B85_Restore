@interface BWOpticalFlowInferenceProvider
- (BWOpticalFlowInferenceProvider)initWithInputRequirement:(id)requirement outputRequirement:(id)outputRequirement portType:(id)type resourceProvider:(id)provider configuration:(id)configuration;
- (id)bindOutputByCloningInputRequirement:(id)requirement toAttachedMediaUsingKey:(id)key;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWOpticalFlowInferenceProvider

- (BWOpticalFlowInferenceProvider)initWithInputRequirement:(id)requirement outputRequirement:(id)outputRequirement portType:(id)type resourceProvider:(id)provider configuration:(id)configuration
{
  v14.receiver = self;
  v14.super_class = BWOpticalFlowInferenceProvider;
  v12 = [(BWOpticalFlowInferenceProvider *)&v14 init];
  if (v12)
  {
    v12->_metalInferenceContext = [provider defaultDeviceMetalContext];
    v12->_inputRequirement = requirement;
    v12->_outputRequirement = outputRequirement;
    v12->_portType = type;
    v12->_concurrencyWidth = [configuration concurrencyWidth];
    v12->_cloneVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWOpticalFlowInferenceProvider;
  [(BWOpticalFlowInferenceProvider *)&v3 dealloc];
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  disparityPostProcessor = self->_disparityPostProcessor;
  if (disparityPostProcessor)
  {
  }

  videoFormat = [(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat];
  videoFormat2 = [(BWInferenceVideoRequirement *)self->_outputRequirement videoFormat];
  width = [(BWInferenceVideoFormat *)videoFormat width];
  height = [(BWInferenceVideoFormat *)videoFormat height];
  width2 = [(BWInferenceVideoFormat *)videoFormat2 width];
  height2 = [(BWInferenceVideoFormat *)videoFormat2 height];
  v11 = objc_alloc(getPTDisparityPostProcessingClass());
  commandQueue = [(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue];
  portType = self->_portType;
  v18[0] = width;
  v18[1] = height;
  v18[2] = 1;
  v17[0] = width2;
  v17[1] = height2;
  v17[2] = 1;
  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v14 = [v11 initWithCommandQueue:commandQueue disparitySize:v18 filteredDisparitySize:v17 disparityPixelFormat:25 colorSize:v16 colorPixelFormat:71 sensorPort:portType];
  self->_disparityPostProcessor = v14;
  if (v14)
  {
    self->_colorInputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:71 width:-[BWInferenceVideoFormat width](-[BWInferenceVideoRequirement videoFormat](self->_inputRequirement height:"videoFormat") mipmapped:"width"), -[BWInferenceVideoFormat height](-[BWInferenceVideoRequirement videoFormat](self->_inputRequirement, "videoFormat"), "height"), 0];
    self->_colorOutputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](-[BWInferenceVideoRequirement videoFormat](self->_outputRequirement height:"videoFormat") mipmapped:"width"), -[BWInferenceVideoFormat height](-[BWInferenceVideoRequirement videoFormat](self->_outputRequirement, "videoFormat"), "height"), 0];
    [(MTLTextureDescriptor *)self->_colorInputDescriptor setUsage:1];
    [(MTLTextureDescriptor *)self->_colorOutputDescriptor setUsage:2];
    return 0;
  }

  else
  {
    [BWOpticalFlowInferenceProvider prepareForSubmissionWithWorkQueue:];
    return -31702;
  }
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v11 = [storage pixelBufferForRequirement:self->_inputRequirement];
  if (v11)
  {
    v12 = [objc_msgSend(storage pixelBufferPoolForRequirement:{self->_outputRequirement), "newPixelBuffer"}];
    if (v12)
    {
      [storage setPixelBuffer:v12 forRequirement:self->_outputRequirement];
      v13 = [-[MTLCommandQueue device](-[BWMetalInferenceContext commandQueue](self->_metalInferenceContext "commandQueue")];
      v11 = [-[MTLCommandQueue device](-[BWMetalInferenceContext commandQueue](self->_metalInferenceContext "commandQueue")];
      if ([(PTDisparityPostProcessing *)self->_disparityPostProcessor computeOpticalFlow:v11 outDisplacement:v13])
      {
        [BWOpticalFlowInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
        v15 = 4294935586;
      }

      else
      {
        commandBuffer = [(MTLCommandQueue *)[(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue] commandBuffer];
        v15 = commandBuffer;
        if (commandBuffer)
        {
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __116__BWOpticalFlowInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
          v17[3] = &unk_1E798FB70;
          v18 = 0;
          v17[4] = self;
          v17[5] = handler;
          [commandBuffer addScheduledHandler:v17];
          [v15 addCompletedHandler:&__block_literal_global_4];
          [v15 commit];
          LODWORD(v15) = 0;
LABEL_8:
          CFRelease(v12);
          goto LABEL_9;
        }

        [BWOpticalFlowInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      }
    }

    else
    {
      [BWOpticalFlowInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      v13 = 0;
      v11 = 0;
      v15 = 4294935578;
    }
  }

  else
  {
    [BWOpticalFlowInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v13 = 0;
    v12 = 0;
    v15 = 4294935584;
  }

  if (handler)
  {
    (*(handler + 2))(handler, v15, self);
  }

  if (*v10 == 1)
  {
    kdebug_trace();
  }

  if (v12)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v15;
}

uint64_t __116__BWOpticalFlowInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

uint64_t __116__BWOpticalFlowInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2()
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

- (id)bindOutputByCloningInputRequirement:(id)requirement toAttachedMediaUsingKey:(id)key
{
  v5 = [[BWInferenceCloneVideoRequirement alloc] initWithAttachedMediaKey:key sourceVideoRequirement:requirement];
  [(NSMutableArray *)self->_cloneVideoRequirements addObject:v5];

  return v5;
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
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:self->_outputRequirement];
  concurrencyWidth = self->_concurrencyWidth;
  if (concurrencyWidth >= 2)
  {
    do
    {
      [v3 addObject:self->_outputRequirement];
      --concurrencyWidth;
    }

    while (concurrencyWidth > 1);
  }

  v5 = [BWInferenceProviderStorage alloc];
  inputRequirement = self->_inputRequirement;
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v5, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", [MEMORY[0x1E695DEC8] arrayWithObjects:&inputRequirement count:1], v3);
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v9 = [storage newSampleBufferSatisfyingRequirement:self->_outputRequirement withPropagationSampleBuffer:{sampleBuffer, buffer}];
  BWSampleBufferSetAttachedMedia(sampleBuffer, [(BWInferenceMediaRequirement *)self->_outputRequirement attachedMediaKey], v9);
  if (v9)
  {
    CFRelease(v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  cloneVideoRequirements = self->_cloneVideoRequirements;
  v11 = [(NSMutableArray *)cloneVideoRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(cloneVideoRequirements);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [storage newSampleBufferSatisfyingCloneRequirement:v15];
        BWSampleBufferSetAttachedMedia(sampleBuffer, [v15 attachedMediaKey], v16);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      v12 = [(NSMutableArray *)cloneVideoRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v12);
  }
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.2()
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end