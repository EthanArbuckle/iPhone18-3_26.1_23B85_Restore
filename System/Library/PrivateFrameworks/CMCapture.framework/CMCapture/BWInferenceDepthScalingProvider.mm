@interface BWInferenceDepthScalingProvider
- (BWInferenceDepthScalingProvider)initWithOutputRequirements:(id)requirements configuration:(id)configuration;
- (BWInferenceSubmittable)submittable;
- (id)bindVideoInputFromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)newStorage;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (uint64_t)_resolveProcessingMode;
- (void)dealloc;
- (void)setCustomInferenceIdentifier:(id)identifier;
- (void)setInputRequirement:(id)requirement;
@end

@implementation BWInferenceDepthScalingProvider

- (BWInferenceDepthScalingProvider)initWithOutputRequirements:(id)requirements configuration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = BWInferenceDepthScalingProvider;
  v6 = [(BWInferenceDepthScalingProvider *)&v9 init];
  if (v6)
  {
    v6->_outputRequirements = requirements;
    v7 = FigCapturePlatformIdentifier() > 6;
    v6->_GPUDepthConversionSupported = v7;
    v6->_processingMode = v7;
    v6->_flipX = [configuration flipX];
    v6->_NANValue = [configuration NANValue];
    v6->_clampMin = [configuration clampMin];
    v6->_clampMax = [configuration clampMax];
    v6->_allowUpsampling = [configuration allowUpsampling];
    v6->_concurrencyWidth = [configuration concurrencyWidth];
  }

  return v6;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWInferenceDepthScalingProvider;
  [(BWInferenceDepthScalingProvider *)&v4 dealloc];
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  self->_metalContext = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:objc_msgSend(MEMORY[0x1E696AAE8] andOptionalCommandQueue:{"bundleForClass:", objc_opt_class()), 0}];
  videoFormat = [(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat];
  v5 = [-[NSArray firstObject](self->_outputRequirements "firstObject")];
  width = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] width];
  height = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] height];
  v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:23 width:width height:height mipmapped:0];
  self->_srcdesc = v8;
  [(MTLTextureDescriptor *)v8 setUsage:1];
  width2 = [v5 width];
  height2 = [v5 height];
  pixelFormat = [v5 pixelFormat];
  result = -31740;
  v13 = 55;
  if (pixelFormat > 1717856626)
  {
    if (pixelFormat != 1717856627)
    {
      if (pixelFormat != 1751411059 && pixelFormat != 1751410032)
      {
        return result;
      }

LABEL_9:
      v13 = 25;
    }
  }

  else if (pixelFormat != 1278226534)
  {
    if (pixelFormat != 1278226536)
    {
      if (pixelFormat != 1717855600)
      {
        return result;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  v14 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v13 width:width2 height:height2 mipmapped:0];
  self->_dstdesc = v14;
  [(MTLTextureDescriptor *)v14 setUsage:2];
  self->_requestedRotation = bwisr_getRequestedRotationDegrees(videoFormat, v5);
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  device = [(FigMetalContext *)self->_metalContext device];
  v27 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [&unk_1F224A758 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(&unk_1F224A758);
        }

        [v15 setObject:objc_msgSend(device forKeyedSubscript:{"newComputePipelineStateWithFunction:error:", objc_msgSend(-[FigMetalContext library](self->_metalContext, "library"), "newFunctionWithName:", *(*(&v23 + 1) + 8 * i)), &v27), *(*(&v23 + 1) + 8 * i)}];
        if (v27)
        {
          [BWInferenceDepthScalingProvider prepareForSubmissionWithWorkQueue:];
          return -31702;
        }
      }

      v18 = [&unk_1F224A758 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v21 = [v15 copy];
  result = 0;
  self->_pipelineStates = v21;
  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v11 = [storage pixelBufferForRequirement:self->_inputRequirement];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_msgSend(storage pixelBufferPoolForRequirement:{-[NSArray firstObject](self->_outputRequirements, "firstObject")), "newPixelBuffer"}];
    if (v13)
    {
      v14 = v13;
      v73[0] = [objc_msgSend(CVPixelBufferGetAttributes() objectForKeyedSubscript:{*MEMORY[0x1E69660A8]), "shortValue"}];
      AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, [(BWInferenceMediaRequirement *)self->_inputRequirement attachedMediaKey]);
      v16 = CMGetAttachment(AttachedMedia, *off_1E798A328, 0);
      [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798ABB8), "floatValue"}];
      v18 = v17;
      [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798ABC0), "floatValue"}];
      v20 = v19;
      NANValue = self->_NANValue;
      if (NANValue)
      {
        [(NSNumber *)NANValue floatValue];
        v23 = v22;
      }

      else
      {
        v23 = 2143289344;
      }

      clampMin = self->_clampMin;
      if (clampMin)
      {
        [(NSNumber *)clampMin floatValue];
        v26 = v25;
      }

      else
      {
        v26 = 2143289344;
      }

      clampMax = self->_clampMax;
      handlerCopy = handler;
      if (clampMax)
      {
        [(NSNumber *)clampMax floatValue];
        v29 = v28;
      }

      else
      {
        v29 = 2143289344;
      }

      device = [(FigMetalContext *)self->_metalContext device];
      v56 = [device newTextureWithDescriptor:self->_srcdesc iosurface:CVPixelBufferGetIOSurface(v12) plane:0];
      v31 = [device newTextureWithDescriptor:self->_dstdesc iosurface:CVPixelBufferGetIOSurface(v14) plane:0];
      v67 = 0;
      v68 = v26;
      v69 = v29;
      v71 = v18;
      v72 = v20;
      v70 = v23;
      width = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] width];
      height = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] height];
      v34 = [-[NSArray firstObject](self->_outputRequirements "firstObject")];
      width2 = [v34 width];
      height2 = [v34 height];
      requestedRotation = self->_requestedRotation;
      pipelineStates = self->_pipelineStates;
      v39 = width2;
      if (requestedRotation != 90)
      {
        if (requestedRotation == 180)
        {
          v42 = @"convertToFloat180RotationInference";
          v43 = @"convertToFloatNoRotationFlipYInference";
        }

        else
        {
          if (requestedRotation == 270)
          {
            v40 = @"convertToFloat90CCWRotationInference";
            v41 = @"convertToFloat270CCWRotationFlipYInference";
LABEL_18:
            if (self->_flipX)
            {
              v44 = v41;
            }

            else
            {
              v44 = v40;
            }

            v45 = [(NSDictionary *)pipelineStates objectForKeyedSubscript:v44];
            *&v67 = height / v39;
            height = width;
LABEL_27:
            *(&v67 + 1) = height / height2;
            v47 = [-[FigMetalContext commandQueue](self->_metalContext "commandQueue")];
            computeCommandEncoder = [v47 computeCommandEncoder];
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            [computeCommandEncoder setTexture:v56 atIndex:1];
            [computeCommandEncoder setTexture:v31 atIndex:0];
            [computeCommandEncoder setBytes:&v67 length:28 atIndex:0];
            [computeCommandEncoder setBytes:v73 length:4 atIndex:1];
            [computeCommandEncoder setComputePipelineState:v45];
            v66[0] = [v31 width];
            v66[1] = [v31 height];
            v66[2] = 1;
            v64 = xmmword_1AD0466B0;
            v65 = 1;
            [computeCommandEncoder dispatchThreads:v66 threadsPerThreadgroup:&v64];
            [computeCommandEncoder endEncoding];
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            outputRequirements = self->_outputRequirements;
            v50 = [(NSArray *)outputRequirements countByEnumeratingWithState:&v60 objects:v59 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v61;
              do
              {
                for (i = 0; i != v51; ++i)
                {
                  if (*v61 != v52)
                  {
                    objc_enumerationMutation(outputRequirements);
                  }

                  [storage setPixelBuffer:v14 forRequirement:*(*(&v60 + 1) + 8 * i)];
                }

                v51 = [(NSArray *)outputRequirements countByEnumeratingWithState:&v60 objects:v59 count:16];
              }

              while (v51);
            }

            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __117__BWInferenceDepthScalingProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
            v57[3] = &unk_1E798FB70;
            v57[4] = self;
            v57[5] = handlerCopy;
            v58 = 0;
            [v47 addCompletedHandler:v57];
            [v47 commit];
            CFRelease(v14);
            LODWORD(v14) = 0;

            goto LABEL_37;
          }

          v42 = @"convertToFloatNoRotationInference";
          v43 = @"convertToFloat180RotationFlipYInference";
        }

        if (self->_flipX)
        {
          v46 = v43;
        }

        else
        {
          v46 = v42;
        }

        v45 = [(NSDictionary *)pipelineStates objectForKeyedSubscript:v46];
        *&v67 = width / v39;
        goto LABEL_27;
      }

      v40 = @"convertToFloat270CCWRotationInference";
      v41 = @"convertToFloat90CCWRotationFlipYInference";
      goto LABEL_18;
    }

    v14 = 4294935553;
  }

  else
  {
    v14 = 4294935584;
  }

  if (handler)
  {
    (*(handler + 2))(handler, v14, self);
  }

  v31 = 0;

LABEL_37:
  return v14;
}

uint64_t __117__BWInferenceDepthScalingProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t result, void *a2)
{
  v3 = result;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    result = kdebug_trace();
  }

  if (*(v3 + 40))
  {
    [a2 error];
    v4 = *(*(v3 + 40) + 16);

    return v4();
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

- (BWInferenceSubmittable)submittable
{
  if (*(self + 13) != 1)
  {
    return 0;
  }

  return self;
}

- (id)newStorage
{
  outputRequirements = self->_outputRequirements;
  if (self->_concurrencyWidth >= 2)
  {
    outputRequirements = [(NSArray *)self->_outputRequirements mutableCopy];
    concurrencyWidth = self->_concurrencyWidth;
    if (concurrencyWidth >= 2)
    {
      do
      {
        [(NSArray *)outputRequirements addObjectsFromArray:self->_outputRequirements];
        --concurrencyWidth;
      }

      while (concurrencyWidth > 1);
    }
  }

  v5 = [BWInferenceProviderStorage alloc];
  inputRequirement = self->_inputRequirement;
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v5, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", [MEMORY[0x1E695DEC8] arrayWithObjects:&inputRequirement count:1], outputRequirements);
}

- (id)bindVideoInputFromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider
{
  if (self->_inputRequirement)
  {
    return 0;
  }

  v6 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:key preparedByAttachedMediaKey:key videoFormatProvider:provider];
  self->_inputRequirement = &v6->super;
  [(BWInferenceDepthScalingProvider *)self _resolveProcessingMode];
  return v6;
}

- (uint64_t)_resolveProcessingMode
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    if (*(result + 56) == 1)
    {
      result = [&unk_1F224A770 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(objc_msgSend(*(result + 16), "videoFormat"), "pixelFormat"))}];
      if (result)
      {
        v2 = 1;
      }
    }

    *(v1 + 52) = v2;
  }

  return result;
}

- (void)setInputRequirement:(id)requirement
{
  self->_inputRequirement = requirement;

  [(BWInferenceDepthScalingProvider *)self _resolveProcessingMode];
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  v9 = [storage pixelBufferForRequirement:self->_inputRequirement];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_msgSend(storage pixelBufferPoolForRequirement:{-[NSArray firstObject](self->_outputRequirements, "firstObject")), "newPixelBuffer"}];
    if (v11)
    {
      v12 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_18_1();
      }

      v13 = FigDepthConvertBuffer(v10, v11);
      if (v13)
      {
        fig_log_get_emitter();
        FigDebugAssert3();
        v34 = 4294935556;
      }

      else
      {
        outputRequirements = self->_outputRequirements;
        v22 = OUTLINED_FUNCTION_10_0(v13, v14, v15, v16, v17, v18, v19, v20, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, 0);
        if (v22)
        {
          v23 = v22;
          v24 = MEMORY[0];
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (MEMORY[0] != v24)
              {
                objc_enumerationMutation(outputRequirements);
              }

              v26 = [storage setPixelBuffer:v11 forRequirement:*(8 * i)];
            }

            v23 = OUTLINED_FUNCTION_10_0(v26, v27, v28, v29, v30, v31, v32, v33, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v72);
          }

          while (v23);
        }

        if (*v12 == 1)
        {
          OUTLINED_FUNCTION_18_1();
        }

        v34 = 0;
      }
    }

    else
    {
      v34 = 4294935553;
    }
  }

  else
  {
    v11 = 0;
    v34 = 4294935584;
  }

  if (handler)
  {
    (*(handler + 2))(handler, v34, self);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v34;
}

@end