@interface BWInferenceDepthScalingProvider
- (BWInferenceDepthScalingProvider)initWithOutputRequirements:(id)a3 configuration:(id)a4;
- (BWInferenceSubmittable)submittable;
- (id)bindVideoInputFromAttachedMediaUsingKey:(id)a3 preparedByAttachedMediaKey:(id)a4 withVideoFormatProvider:(id)a5;
- (id)newStorage;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6;
- (int)prepareForSubmissionWithWorkQueue:(id)a3;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (uint64_t)_resolveProcessingMode;
- (void)dealloc;
- (void)setCustomInferenceIdentifier:(id)a3;
- (void)setInputRequirement:(id)a3;
@end

@implementation BWInferenceDepthScalingProvider

- (BWInferenceDepthScalingProvider)initWithOutputRequirements:(id)a3 configuration:(id)a4
{
  v9.receiver = self;
  v9.super_class = BWInferenceDepthScalingProvider;
  v6 = [(BWInferenceDepthScalingProvider *)&v9 init];
  if (v6)
  {
    v6->_outputRequirements = a3;
    v7 = FigCapturePlatformIdentifier() > 6;
    v6->_GPUDepthConversionSupported = v7;
    v6->_processingMode = v7;
    v6->_flipX = [a4 flipX];
    v6->_NANValue = [a4 NANValue];
    v6->_clampMin = [a4 clampMin];
    v6->_clampMax = [a4 clampMax];
    v6->_allowUpsampling = [a4 allowUpsampling];
    v6->_concurrencyWidth = [a4 concurrencyWidth];
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

- (int)prepareForSubmissionWithWorkQueue:(id)a3
{
  self->_metalContext = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:objc_msgSend(MEMORY[0x1E696AAE8] andOptionalCommandQueue:{"bundleForClass:", objc_opt_class()), 0}];
  v4 = [(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat];
  v5 = [-[NSArray firstObject](self->_outputRequirements "firstObject")];
  v6 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] width];
  v7 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] height];
  v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:23 width:v6 height:v7 mipmapped:0];
  self->_srcdesc = v8;
  [(MTLTextureDescriptor *)v8 setUsage:1];
  v9 = [v5 width];
  v10 = [v5 height];
  v11 = [v5 pixelFormat];
  result = -31740;
  v13 = 55;
  if (v11 > 1717856626)
  {
    if (v11 != 1717856627)
    {
      if (v11 != 1751411059 && v11 != 1751410032)
      {
        return result;
      }

LABEL_9:
      v13 = 25;
    }
  }

  else if (v11 != 1278226534)
  {
    if (v11 != 1278226536)
    {
      if (v11 != 1717855600)
      {
        return result;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  v14 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v13 width:v9 height:v10 mipmapped:0];
  self->_dstdesc = v14;
  [(MTLTextureDescriptor *)v14 setUsage:2];
  self->_requestedRotation = bwisr_getRequestedRotationDegrees(v4, v5);
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [(FigMetalContext *)self->_metalContext device];
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

        [v15 setObject:objc_msgSend(v16 forKeyedSubscript:{"newComputePipelineStateWithFunction:error:", objc_msgSend(-[FigMetalContext library](self->_metalContext, "library"), "newFunctionWithName:", *(*(&v23 + 1) + 8 * i)), &v27), *(*(&v23 + 1) + 8 * i)}];
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

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
{
  v11 = [a4 pixelBufferForRequirement:self->_inputRequirement];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{-[NSArray firstObject](self->_outputRequirements, "firstObject")), "newPixelBuffer"}];
    if (v13)
    {
      v14 = v13;
      v73[0] = [objc_msgSend(CVPixelBufferGetAttributes() objectForKeyedSubscript:{*MEMORY[0x1E69660A8]), "shortValue"}];
      AttachedMedia = BWSampleBufferGetAttachedMedia(a3, [(BWInferenceMediaRequirement *)self->_inputRequirement attachedMediaKey]);
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
      v55 = a7;
      if (clampMax)
      {
        [(NSNumber *)clampMax floatValue];
        v29 = v28;
      }

      else
      {
        v29 = 2143289344;
      }

      v30 = [(FigMetalContext *)self->_metalContext device];
      v56 = [v30 newTextureWithDescriptor:self->_srcdesc iosurface:CVPixelBufferGetIOSurface(v12) plane:0];
      v31 = [v30 newTextureWithDescriptor:self->_dstdesc iosurface:CVPixelBufferGetIOSurface(v14) plane:0];
      v67 = 0;
      v68 = v26;
      v69 = v29;
      v71 = v18;
      v72 = v20;
      v70 = v23;
      v32 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] width];
      v33 = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] height];
      v34 = [-[NSArray firstObject](self->_outputRequirements "firstObject")];
      v35 = [v34 width];
      v36 = [v34 height];
      requestedRotation = self->_requestedRotation;
      pipelineStates = self->_pipelineStates;
      v39 = v35;
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
            *&v67 = v33 / v39;
            v33 = v32;
LABEL_27:
            *(&v67 + 1) = v33 / v36;
            v47 = [-[FigMetalContext commandQueue](self->_metalContext "commandQueue")];
            v48 = [v47 computeCommandEncoder];
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            [v48 setTexture:v56 atIndex:1];
            [v48 setTexture:v31 atIndex:0];
            [v48 setBytes:&v67 length:28 atIndex:0];
            [v48 setBytes:v73 length:4 atIndex:1];
            [v48 setComputePipelineState:v45];
            v66[0] = [v31 width];
            v66[1] = [v31 height];
            v66[2] = 1;
            v64 = xmmword_1AD0466B0;
            v65 = 1;
            [v48 dispatchThreads:v66 threadsPerThreadgroup:&v64];
            [v48 endEncoding];
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

                  [a4 setPixelBuffer:v14 forRequirement:*(*(&v60 + 1) + 8 * i)];
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
            v57[5] = v55;
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
        *&v67 = v32 / v39;
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

  if (a7)
  {
    (*(a7 + 2))(a7, v14, self);
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

- (void)setCustomInferenceIdentifier:(id)a3
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != a3)
  {

    self->_customInferenceIdentifier = a3;
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

- (id)bindVideoInputFromAttachedMediaUsingKey:(id)a3 preparedByAttachedMediaKey:(id)a4 withVideoFormatProvider:(id)a5
{
  if (self->_inputRequirement)
  {
    return 0;
  }

  v6 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:a3 preparedByAttachedMediaKey:a3 videoFormatProvider:a5];
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

- (void)setInputRequirement:(id)a3
{
  self->_inputRequirement = a3;

  [(BWInferenceDepthScalingProvider *)self _resolveProcessingMode];
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6
{
  v9 = [a4 pixelBufferForRequirement:self->_inputRequirement];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{-[NSArray firstObject](self->_outputRequirements, "firstObject")), "newPixelBuffer"}];
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

              v26 = [a4 setPixelBuffer:v11 forRequirement:*(8 * i)];
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

  if (a6)
  {
    (*(a6 + 2))(a6, v34, self);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v34;
}

@end