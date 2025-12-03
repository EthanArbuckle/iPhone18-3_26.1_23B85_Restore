@interface BWMattingV2InferenceProvider
- (BWMattingV2InferenceProvider)initWithConfiguration:(id)configuration;
- (NSArray)cloneVideoRequirements;
- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format;
- (id)bindMattingInput:(id)input fromMetadataUsingKeys:(id)keys;
- (id)bindMattingOutput:(id)output asMetadataUsingKeys:(id)keys;
- (id)bindMattingOutput:(id)output fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)prewarmUsingLimitedMemory:(BOOL)memory;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (uint64_t)_loadMattingProcessor;
- (unsigned)allowedPixelBufferCompressionDirection;
- (void)_configureMattingProcessor;
- (void)_outputPixelBufferForOutputVideoRequirement:(void *)requirement storage:(int)storage isMatte:;
- (void)_processorOptions;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)propagateMattingOutputToSampleBuffer:(void *)buffer storage:;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWMattingV2InferenceProvider

- (unsigned)allowedPixelBufferCompressionDirection
{
  executionTarget = [(BWMattingV2InferenceProvider *)self executionTarget];

  return [BWInferenceEngine allowedBufferCompressionDirectionForExecutionTarget:executionTarget];
}

- (NSArray)cloneVideoRequirements
{
  if (!self->_lowResSegmentationCloneOutputVideoRequirement)
  {
    return MEMORY[0x1E695E0F0];
  }

  lowResSegmentationCloneOutputVideoRequirement = self->_lowResSegmentationCloneOutputVideoRequirement;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&lowResSegmentationCloneOutputVideoRequirement count:1];
}

- (BWMattingV2InferenceProvider)initWithConfiguration:(id)configuration
{
  v10.receiver = self;
  v10.super_class = BWMattingV2InferenceProvider;
  v4 = [(BWMattingV2InferenceProvider *)&v10 init];
  if (v4)
  {
    if (!configuration || ([configuration mainImageDownscalingFactor], v5 == 0.0))
    {

      return 0;
    }

    else
    {
      v4->_type = [configuration inferenceType];
      v4->_sensorConfigurationsByPortType = [configuration sensorConfigurationsByPortType];
      mattingVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters mattingVersion];
      if (!mattingVersion)
      {
        firstObject = [(NSArray *)[(NSDictionary *)v4->_sensorConfigurationsByPortType allValues] firstObject];
        mattingVersion = -[FigCaptureCameraParameters mattingVersionForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "mattingVersionForPortType:sensorIDString:", [firstObject portType], objc_msgSend(firstObject, "sensorIDString"));
      }

      v4->_mattingProcessorVersion = mattingVersion;
      v4->_mattingTuningConfiguration = [configuration tuningConfiguration];
      v4->_submitWithoutSynchronization = [configuration submitWithoutSynchronization];
      v4->_appliesFinalCropRect = [configuration appliesFinalCropRect];
      [configuration mainImageDownscalingFactor];
      v4->_mainImageDownscalingFactor = v8;
      v4->_enabledMattes = [configuration enabledMattes];
      v4->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_inputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_outputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_metalCommandQueue = [configuration metalCommandQueue];
      v4->_sdofRenderingTuningParameters = [configuration sdofRenderingTuningParameters];
    }
  }

  return v4;
}

- (void)dealloc
{
  [(FigMatting *)self->_mattingProcessor finishProcessing];

  lowResSegmentationCloneCopySession = self->_lowResSegmentationCloneCopySession;
  if (lowResSegmentationCloneCopySession)
  {
    CFRelease(lowResSegmentationCloneCopySession);
  }

  v4.receiver = self;
  v4.super_class = BWMattingV2InferenceProvider;
  [(BWMattingV2InferenceProvider *)&v4 dealloc];
}

- (id)newStorage
{
  cloneVideoRequirements = [(BWMattingV2InferenceProvider *)self cloneVideoRequirements];
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_inputVideoRequirements];
  [array addObjectsFromArray:self->_outputVideoRequirements];
  if ([(NSArray *)cloneVideoRequirements count])
  {
    [array addObjectsFromArray:cloneVideoRequirements];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  [array2 addObjectsFromArray:self->_outputVideoRequirements];
  if ([(NSArray *)cloneVideoRequirements count])
  {
    [array2 addObjectsFromArray:cloneVideoRequirements];
  }

  v6 = [BWMattingInferenceStorage alloc];

  return [(BWInferenceProviderStorage *)v6 initWithRequirementsNeedingPixelBuffers:array requirementsNeedingPixelBufferPools:array2];
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

uint64_t __114__BWMattingV2InferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  [(BWMattingV2InferenceProvider *)self propagateMattingOutputToSampleBuffer:sampleBuffer storage:storage];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  outputMetadataRequirements = self->_outputMetadataRequirements;
  v12 = [(NSMutableArray *)outputMetadataRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(outputMetadataRequirements);
        }

        v16 = [storage newMetadataDictionarySatisfyingRequirement:*(*(&v18 + 1) + 8 * v15)];
        [dictionary addEntriesFromDictionary:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)outputMetadataRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v13);
  }

  if (*v10 == 1)
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

- (id)bindMattingInput:(id)input fromMetadataUsingKeys:(id)keys
{
  v5 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_inputMetadataRequirements addObject:v5];

  return v5;
}

- (id)bindMattingOutput:(id)output asMetadataUsingKeys:(id)keys
{
  v5 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v5];

  return v5;
}

- (int)reconcileWithPlaceholderProvider:(id)provider
{
  type = self->_type;
  if (type != [provider type])
  {
    return -31783;
  }

  [provider customInferenceIdentifier];
  if (![OUTLINED_FUNCTION_8() isEqualToString:?])
  {
    return -31783;
  }

  [(NSMutableArray *)self->_inputVideoRequirements removeAllObjects];
  [provider inputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_inputMetadataRequirements removeAllObjects];
  [provider inputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputVideoRequirements removeAllObjects];
  [provider outputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputMetadataRequirements removeAllObjects];
  [provider outputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];

  self->_primaryFormatInputVideoRequirement = [provider primaryFormatInputVideoRequirement];
  self->_depthInputVideoRequirement = [provider depthInputVideoRequirement];

  self->_disparityInputVideoRequirement = [provider disparityInputVideoRequirement];
  self->_segmentationInputVideoRequirement = [provider segmentationInputVideoRequirement];

  self->_segmentationOutputVideoRequirement = [provider segmentationOutputVideoRequirement];
  self->_lowResSegmentationCloneOutputVideoRequirement = [provider lowResSegmentationCloneOutputVideoRequirement];

  self->_refinedDepthOutputVideoRequirement = [provider refinedDepthOutputVideoRequirement];
  self->_faceSegmentsWithLandmarksMetadataRequirement = [provider faceSegmentsWithLandmarksMetadataRequirement];

  self->_outputMasksContainsValidContentRequirement = [provider outputMasksContainsValidContentRequirement];
  [(NSMutableDictionary *)self->_semanticMatteInputVideoRequirementsByMattingOutputType removeAllObjects];
  -[NSMutableDictionary addEntriesFromDictionary:](self->_semanticMatteInputVideoRequirementsByMattingOutputType, "addEntriesFromDictionary:", [provider semanticMatteInputVideoRequirementsByMattingOutputType]);
  [(NSMutableDictionary *)self->_semanticMatteOutputVideoRequirementsByMattingOutputType removeAllObjects];
  -[NSMutableDictionary addEntriesFromDictionary:](self->_semanticMatteOutputVideoRequirementsByMattingOutputType, "addEntriesFromDictionary:", [provider semanticMatteOutputVideoRequirementsByMattingOutputType]);
  return 0;
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4_61();
    kdebug_trace();
  }

  if ((self->_lowResSegmentationCloneCopySession || (~self->_enabledMattes & 0x82) != 0 || !VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_lowResSegmentationCloneCopySession)) && !self->_mattingProcessor && ([(BWMattingV2InferenceProvider *)self _loadMattingProcessor]|| [(BWMattingV2InferenceProvider *)self _configureMattingProcessor]))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    v5 = -31702;
  }

  else
  {
    v5 = 0;
  }

  if (*v4 == 1)
  {
    OUTLINED_FUNCTION_4_61();
    kdebug_trace();
  }

  return v5;
}

- (uint64_t)_loadMattingProcessor
{
  if (!self)
  {
    return 0;
  }

  if (BWLoadProcessorBundle(@"Matting", *(self + 40)))
  {
    v2 = [objc_alloc(NSClassFromString(&cfstr_Figmatting.isa)) initWithCommandQueue:*(self + 184)];
    *(self + 32) = v2;
    if (v2)
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
    fig_log_get_emitter();
  }

  return FigSignalErrorAtGM();
}

- (void)_configureMattingProcessor
{
  if (result)
  {
    v1 = result;
    if ([(BWMattingV2InferenceProvider *)result _processorOptions])
    {
      [OUTLINED_FUNCTION_3_70() setOptions:?];
      videoFormat = [v1[11] videoFormat];
      if (!videoFormat)
      {
LABEL_44:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        FigDebugAssert3();
        return 0;
      }

      v10 = videoFormat;
      v11 = v1[12];
      if (v11)
      {
        videoFormat2 = [v11 videoFormat];
        if (!videoFormat2)
        {
          goto LABEL_44;
        }
      }

      else
      {
        videoFormat2 = 0;
      }

      videoFormat3 = v1[14];
      if (videoFormat3)
      {
        videoFormat3 = [videoFormat3 videoFormat];
        v14 = videoFormat3;
        if (!videoFormat3)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v1[18];
      v16 = (v1[17] != 0) | (2 * (v1[15] != 0));
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v17 = OUTLINED_FUNCTION_10_36(videoFormat3, v3, v4, v5, v6, v7, v8, v9, v41, v43);
      if (v17)
      {
        v18 = v17;
        v45 = v10;
        v19 = *v48;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v47 + 1) + 8 * v20);
          result = [objc_msgSend(v1[19] objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v21, "intValue"))), "videoFormat"}];
          if (!result)
          {
            break;
          }

          v14 = result;
          intValue = [v21 intValue];
          if (!(!v31 & v30))
          {
            v32 = 0;
            switch(intValue)
            {
              case 1:
              case 2:
              case 4:
              case 8:
                goto LABEL_34;
              case 3:
              case 5:
              case 6:
              case 7:
                goto LABEL_35;
              default:
                JUMPOUT(0);
            }
          }

          if (intValue == 16 || intValue == 32)
          {
LABEL_34:
            v32 = intValue;
          }

          else
          {
            v32 = intValue;
            if (intValue != 64)
            {
              switch(intValue)
              {
                case 0x200:
                  v32 = 128;
                  break;
                case 0x400:
                  v32 = 256;
                  break;
                case 0x800:
                  v32 = 512;
                  break;
                case 0x1000:
                  v32 = 1024;
                  break;
                default:
                  v32 = 0;
                  if (intValue == 0x2000)
                  {
                    v32 = 2048;
                  }

                  break;
              }
            }
          }

LABEL_35:
          v16 |= v32;
          if (v18 == ++v20)
          {
            v18 = OUTLINED_FUNCTION_10_36(intValue, v23, v24, v25, v26, v27, v28, v29, v42, v44);
            if (v18)
            {
              goto LABEL_14;
            }

            v10 = v45;
            goto LABEL_38;
          }
        }
      }

      else
      {
LABEL_38:
        width = [v10 width];
        height = [v10 height];
        width2 = [videoFormat2 width];
        height2 = [videoFormat2 height];
        width3 = [v14 width];
        height3 = [v14 height];
        v39 = *(v1 + 11);
        v40 = v1[4];
        v46[0] = width;
        v46[1] = height;
        v46[2] = width2;
        v46[3] = height2;
        v46[4] = width3;
        v46[5] = height3;
        v46[6] = v16;
        v46[7] = v39;
        [v40 setConfig:v46];
        result = [v1[4] prepareToProcess:0];
        if (result)
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM();
        }
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

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v12 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4_61();
    kdebug_trace();
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v95 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = MEMORY[0x1E695F050];
  if (!self->_mattingProcessor)
  {
    goto LABEL_7;
  }

  v15 = [storage pixelBufferForRequirement:self->_primaryFormatInputVideoRequirement];
  if (!v15)
  {
    goto LABEL_7;
  }

  v22 = v15;
  if (self->_depthInputVideoRequirement)
  {
    v23 = [storage pixelBufferForRequirement:?];
    if (!v23)
    {
LABEL_7:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_87();
LABEL_79:
      v74 = FigSignalErrorAtGM();
      v73 = 0;
      goto LABEL_61;
    }
  }

  else
  {
    v23 = 0;
  }

  if (self->_disparityInputVideoRequirement)
  {
    v24 = [storage pixelBufferForRequirement:?];
    if (!v24)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = 0;
  }

  v90 = v24;
  v25 = *(v14 + 1);
  rect.origin = *v14;
  rect.size = v25;
  if (self->_refinedDepthOutputVideoRequirement)
  {
    v26 = CMGetAttachment(buffer, *off_1E798D340, 0);
    if (!v26)
    {
      goto LABEL_7;
    }

    v24 = CGRectMakeWithDictionaryRepresentation(v26, &rect);
    if ((v24 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  segmentationInputVideoRequirement = self->_segmentationInputVideoRequirement;
  v79 = v7;
  if (!segmentationInputVideoRequirement)
  {
    destinationBuffer = 0;
    v84 = 0;
    v86 = 0;
    v93 = 0;
    goto LABEL_24;
  }

  v28 = [storage pixelBufferForRequirement:v7];
  if (!v28)
  {
    goto LABEL_78;
  }

  v29 = v28;
  v30 = OUTLINED_FUNCTION_6_52(v28, self->_segmentationOutputVideoRequirement);
  if (!v30)
  {
    goto LABEL_78;
  }

  v86 = v30;
  refinedDepthOutputVideoRequirement = self->_refinedDepthOutputVideoRequirement;
  if (!refinedDepthOutputVideoRequirement)
  {
    v24 = 0;
    goto LABEL_21;
  }

  v24 = [(BWMattingV2InferenceProvider *)self _outputPixelBufferForOutputVideoRequirement:storage storage:0 isMatte:?];
  if (!v24)
  {
LABEL_78:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_87();
    goto LABEL_79;
  }

LABEL_21:
  lowResSegmentationCloneOutputVideoRequirement = self->_lowResSegmentationCloneOutputVideoRequirement;
  v93 = v29;
  v84 = v24;
  if (lowResSegmentationCloneOutputVideoRequirement)
  {
    v24 = OUTLINED_FUNCTION_6_52(v24, lowResSegmentationCloneOutputVideoRequirement);
    if (!v24)
    {
      v73 = 0;
      v74 = 0;
      goto LABEL_61;
    }

    destinationBuffer = v24;
    if (!self->_lowResSegmentationCloneCopySession)
    {
      v73 = 0;
      v74 = 0;
      goto LABEL_61;
    }
  }

  else
  {
    destinationBuffer = 0;
  }

LABEL_24:
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  enabledSemanticMattingOutputTypes = self->_enabledSemanticMattingOutputTypes;
  v33 = OUTLINED_FUNCTION_9_42(v24, lowResSegmentationCloneOutputVideoRequirement, segmentationInputVideoRequirement, v17, v18, v19, v20, v21, v79, destinationBuffer, v84, v86, v23, v22, v90, handler, v93, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, selfCopy, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, *(&v126 + 1), v127, *(&v127 + 1), v128, *(&v128 + 1), v129, *(&v129 + 1), v130);
  if (v33)
  {
    v34 = v33;
    v35 = *v132;
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v132 != v35)
        {
          objc_enumerationMutation(enabledSemanticMattingOutputTypes);
        }

        [*(*(&v131 + 1) + 8 * i) intValue];
        v37 = [storage pixelBufferForRequirement:{-[NSMutableDictionary objectForKeyedSubscript:](self->_semanticMatteInputVideoRequirementsByMattingOutputType, "objectForKeyedSubscript:", OUTLINED_FUNCTION_13_31())}];
        if (!v37 || ([v13 setObject:v37 forKeyedSubscript:OUTLINED_FUNCTION_13_31()], v38 = -[NSMutableDictionary objectForKeyedSubscript:](self->_semanticMatteOutputVideoRequirementsByMattingOutputType, "objectForKeyedSubscript:", OUTLINED_FUNCTION_13_31()), (v39 = OUTLINED_FUNCTION_6_52(v38, v38)) == 0))
        {
          v73 = 0;
          v74 = 4294935578;
          handler = v92;
          v12 = MEMORY[0x1E695FF58];
          goto LABEL_56;
        }

        v40 = [v95 setObject:v39 forKeyedSubscript:OUTLINED_FUNCTION_13_31()];
      }

      v34 = OUTLINED_FUNCTION_9_42(v40, v41, v42, v43, v44, v45, v46, v47, v80, destinationBuffera, v85, v87, v88, v89, v91, v92, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, selfCopy, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, *(&v126 + 1), v127, *(&v127 + 1), v128, *(&v128 + 1), v129, *(&v129 + 1), v130);
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_outputMasksContainsValidContentRequirement)
  {
    v56 = dictionary;
    v57 = v94;
    if (v94)
    {
      v57 = [v56 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", mv2ip_pixelBufferContainsValidContent(v94)), 0x1F21AABB0}];
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v58 = OUTLINED_FUNCTION_12_35(v57, v49, v50, v51, v52, v53, v54, v55, v80, destinationBuffera, v85, v87, v88, v89, v91, v92, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, selfCopy, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, 0);
    if (v58)
    {
      v59 = v58;
      v60 = *v127;
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v127 != v60)
          {
            objc_enumerationMutation(v13);
          }

          v62 = *(*(&v126 + 1) + 8 * j);
          v63 = mv2ip_outputAttachedMediaKeyForMattingOutputType([v62 intValue]);
          if (v63)
          {
            v71 = v63;
            v63 = [v13 objectForKeyedSubscript:v62];
            if (v63)
            {
              v63 = [v56 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", mv2ip_pixelBufferContainsValidContent(v63)), v71}];
            }
          }
        }

        v59 = OUTLINED_FUNCTION_12_35(v63, v64, v65, v66, v67, v68, v69, v70, v81, destinationBuffera, v85, v87, v88, v89, v91, v92, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, selfCopy, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
      }

      while (v59);
    }

    if ([v56 count])
    {
      v108 = 0x1F219E710;
      v109 = v56;
      [storage setDictionary:objc_msgSend(MEMORY[0x1E695DF20] forMetadataRequirement:{"dictionaryWithObjects:forKeys:count:", &v109, &v108, 1), self->_outputMasksContainsValidContentRequirement}];
    }
  }

  [(FigMatting *)self->_mattingProcessor setImagePixelBuffer:v89];
  [(FigMatting *)self->_mattingProcessor setInputDepthPixelBuffer:v88];
  [(FigMatting *)self->_mattingProcessor setInputDisparityPixelBuffer:v91];
  [(FigMatting *)self->_mattingProcessor setSyntheticFocusRectangle:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(FigMatting *)self->_mattingProcessor setInputSegmentationPixelBuffer:v94];
  [(FigMatting *)self->_mattingProcessor setOutputMattePixelBuffer:v87];
  [(FigMatting *)self->_mattingProcessor setOutputRefinedDisparityPixelBuffer:v85];
  [v13 objectForKeyedSubscript:&unk_1F2245238];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsHairPixelBuffer:?];
  [v13 objectForKeyedSubscript:&unk_1F2245250];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsSkinPixelBuffer:?];
  [v13 objectForKeyedSubscript:&unk_1F2245268];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsTeethPixelBuffer:?];
  [v13 objectForKeyedSubscript:&unk_1F2245280];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsGlassesPixelBuffer:?];
  [v13 objectForKeyedSubscript:&unk_1F2245298];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsSkyPixelBuffer:?];
  [v95 objectForKeyedSubscript:&unk_1F2245238];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsHairPixelBuffer:?];
  [v95 objectForKeyedSubscript:&unk_1F2245250];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsSkinPixelBuffer:?];
  [v95 objectForKeyedSubscript:&unk_1F2245268];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsTeethPixelBuffer:?];
  [v95 objectForKeyedSubscript:&unk_1F2245280];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsGlassesPixelBuffer:?];
  [v95 objectForKeyedSubscript:&unk_1F2245298];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsSkyPixelBuffer:?];
  process = [(FigMatting *)self->_mattingProcessor process];
  handler = v92;
  v12 = MEMORY[0x1E695FF58];
  if (process)
  {
    fig_log_get_emitter();
    v74 = FigSignalErrorAtGM();
    v73 = 0;
LABEL_56:
    v14 = MEMORY[0x1E695F050];
  }

  else
  {
    v14 = MEMORY[0x1E695F050];
    if (destinationBuffera && v94 && VTPixelTransferSessionTransferImage(self->_lowResSegmentationCloneCopySession, v94, destinationBuffera))
    {
      v73 = 0;
      v74 = 4294935586;
    }

    else
    {
      v101 = MEMORY[0x1E69E9820];
      v102 = 3221225472;
      v103 = __114__BWMattingV2InferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
      v104 = &unk_1E7999708;
      LODWORD(v107) = 0;
      selfCopy = self;
      v106 = v92;
      if (self->_submitWithoutSynchronization)
      {
        __114__BWMattingV2InferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(&v101);
      }

      else
      {
        metalCommandQueue = self->_metalCommandQueue;
        if (metalCommandQueue)
        {
          commandBuffer = [(MTLCommandQueue *)metalCommandQueue commandBuffer];
          [commandBuffer setLabel:@"inference_matting_async_completion"];
          v96 = MEMORY[0x1E69E9820];
          v97 = 3221225472;
          v98 = __114__BWMattingV2InferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2;
          v99 = &unk_1E7998320;
          v100 = &v101;
          [commandBuffer addScheduledHandler:&v96];
          [commandBuffer commit];
        }

        else
        {
          [(FigMatting *)self->_mattingProcessor finishScheduling];
          v103(&v101);
        }
      }

      v74 = 0;
      v73 = 1;
    }
  }

LABEL_61:
  [OUTLINED_FUNCTION_2_77() setImagePixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputDepthPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputDisparityPixelBuffer:?];
  [(FigMatting *)self->_mattingProcessor setSyntheticFocusRectangle:*v14, v14[1], v14[2], v14[3]];
  [OUTLINED_FUNCTION_2_77() setFaceLandmarks:?];
  [OUTLINED_FUNCTION_2_77() setFaceSegments:?];
  [(FigMatting *)self->_mattingProcessor setExifOrientation:0];
  [OUTLINED_FUNCTION_2_77() setInputSegmentationPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputMattePixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputRefinedDisparityPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsHairPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsSkinPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsTeethPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsGlassesPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsSkyPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsHairPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsSkinPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsTeethPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsGlassesPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsSkyPixelBuffer:?];

  if (*v12 == 1)
  {
    OUTLINED_FUNCTION_4_61();
    kdebug_trace();
  }

  if (handler)
  {
    v77 = v73;
  }

  else
  {
    v77 = 1;
  }

  if ((v77 & 1) == 0)
  {
    (*(handler + 2))(handler, v74, self);
  }

  return v74;
}

- (void)_outputPixelBufferForOutputVideoRequirement:(void *)requirement storage:(int)storage isMatte:
{
  if (!self)
  {
    return 0;
  }

  v7 = [requirement pixelBufferForRequirement:a2];
  if (!v7)
  {
    v7 = [objc_msgSend(requirement pixelBufferPoolForRequirement:{a2), "newPixelBuffer"}];
    [requirement setPixelBuffer:v7 forRequirement:a2];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (storage)
  {
    CVBufferSetAttachment(v7, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
  }

  return v7;
}

- (void)propagateMattingOutputToSampleBuffer:(void *)buffer storage:
{
  bufferCopy = buffer;
  if (!self)
  {
    return;
  }

  v5 = off_1E798A3C8;
  if (!*(self + 120))
  {
    v42 = off_1E798A788;
    v43 = off_1E798A5C8;
    cfb = 0;
    v91 = 0;
    v94 = 0;
    goto LABEL_19;
  }

  BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E750);
  v13 = OUTLINED_FUNCTION_14_29(v6, v7, *(self + 120), v8, v9, v10, v11, v12, v83, v84, v85, cf, v89, v92, v95, obj, v101, v104, v107, v110, v111, bufferCopy);
  if (!v13)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    return;
  }

  v14 = v13;
  v15 = (*(self + 40) - 1) | 0x10000u;
  v124 = *off_1E798D218;
  v125 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
  CMSetAttachment(v14, *off_1E798D2D8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1], 1u);
  v16 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v14);
  if (*(self + 53) == 1)
  {
    v17 = BWPixelBufferDimensionsFromSampleBuffer(a2);
    CMGetAttachment(a2, *off_1E798A3C8, 0);
    v18 = *(MEMORY[0x1E695F050] + 8);
    v19 = *(MEMORY[0x1E695F050] + 16);
    v20 = *(MEMORY[0x1E695F050] + 24);
    v21 = *(MEMORY[0x1E695F050] + 16);
    v122 = *MEMORY[0x1E695F050];
    *v123 = v21;
    v22 = v20;
    v23 = v19;
    v24 = v18;
    v25 = *&v122;
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      FigCaptureMetadataUtilitiesDenormalizeCropRect(*&v122, *(&v122 + 1), v123[0], v123[1]);
      v25 = v26;
      v24 = v27;
      v23 = v28;
      v22 = v29;
    }

    v30 = BWPixelBufferDimensionsFromSampleBuffer(v14);
    OUTLINED_FUNCTION_11_35(v16, v17, v30, v25, v24, v23, v22);
    v5 = off_1E798A3C8;
  }

  if (*(self + 208) != 0.0)
  {
    [objc_msgSend(CMGetAttachment(a2 *v5];
    *&v32 = OUTLINED_FUNCTION_7_50(v31);
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v32), *off_1E798A788}];
  }

  BWSampleBufferSetAttachedMedia(a2, 0x1F21AABB0, v14);
  v40 = *(self + 136);
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_14_29(v33, v34, v40, v35, v36, v37, v38, v39, v83, v84, v85, cfa, v90, v93, v96, obja, v102, v105, v108, v110, v112, bufferCopy);
    if (!v41)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3();
      goto LABEL_43;
    }

    BWSampleBufferSetAttachedMedia(a2, 0x1F21AABD0, v41);
  }

  else
  {
    v41 = 0;
  }

  v44 = *(self + 128);
  v91 = v41;
  v94 = v14;
  if (!v44)
  {
    v42 = off_1E798A788;
    v43 = off_1E798A5C8;
    cfb = 0;
LABEL_19:
    v46 = *(self + 40);
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    objb = *(self + 144);
    v47 = [objb countByEnumeratingWithState:&v118 objects:v117 count:16];
    if (v47)
    {
      v48 = v47;
      HIDWORD(v110) = (v46 - 2) | 0x10000;
      v113 = *v119;
      v109 = *off_1E798D318;
      v49 = *off_1E798D2E0;
      v50 = *v5;
      v51 = *MEMORY[0x1E695F050];
      v52 = *(MEMORY[0x1E695F050] + 8);
      v53 = *(MEMORY[0x1E695F050] + 16);
      v54 = *(MEMORY[0x1E695F050] + 24);
      v97 = *v43;
      v103 = *v42;
      v106 = *off_1E798A708;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v119 != v113)
          {
            objc_enumerationMutation(objb);
          }

          intValue = [*(*(&v118 + 1) + 8 * i) intValue];
          v57 = mv2ip_inputAttachedMediaKeyForMattingOutputType(intValue);
          v58 = mv2ip_outputAttachedMediaKeyForMattingOutputType(intValue);
          BWSampleBufferRemoveAttachedMedia(a2, v57);
          v59 = [*(self + 160) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", intValue)}];
          v66 = OUTLINED_FUNCTION_14_29(v59, v60, v59, v61, v62, v63, v64, v65, v83, v84, v85, cfb, v91, v94, v97, objb, v103, v106, v109, v110, v113, bufferCopy);
          if (v66)
          {
            v67 = v66;
            v115 = v109;
            v116 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v110)];
            CMSetAttachment(v67, v49, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1], 1u);
            v68 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v67);
            if (*(self + 53) == 1)
            {
              v69 = BWPixelBufferDimensionsFromSampleBuffer(a2);
              CMGetAttachment(a2, v50, 0);
              v70 = *(MEMORY[0x1E695F050] + 16);
              v122 = *MEMORY[0x1E695F050];
              *v123 = v70;
              v71 = v51;
              v72 = v52;
              v73 = v53;
              v74 = v54;
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                FigCaptureMetadataUtilitiesDenormalizeCropRect(*&v122, *(&v122 + 1), v123[0], v123[1]);
                v71 = v75;
                v72 = v76;
                v73 = v77;
                v74 = v78;
              }

              v79 = BWPixelBufferDimensionsFromSampleBuffer(v67);
              OUTLINED_FUNCTION_11_35(v68, v69, v79, v71, v72, v73, v74);
            }

            if (*(self + 208) != 0.0)
            {
              [objc_msgSend(CMGetAttachment(a2 v50];
              *&v81 = OUTLINED_FUNCTION_7_50(v80);
              [v68 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v81), v103}];
            }

            BWSampleBufferSetAttachedMedia(a2, v58, v67);
            CFRelease(v67);
          }
        }

        v48 = [objb countByEnumeratingWithState:&v118 objects:v117 count:16];
      }

      while (v48);
    }

    v41 = v91;
    v14 = v94;
    v82 = cfb;
    if (!v94)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v45 = OUTLINED_FUNCTION_14_29(v33, v34, v44, v35, v36, v37, v38, v39, v83, v84, v85, cfa, v41, v14, v96, obja, v102, v105, v108, v110, v112, bufferCopy);
  if (v45)
  {
    v42 = off_1E798A788;
    v43 = off_1E798A5C8;
    cfb = v45;
    BWSampleBufferSetAttachedMedia(a2, 0x1F21AADF0, v45);
    goto LABEL_19;
  }

LABEL_43:
  v82 = 0;
LABEL_35:
  CFRelease(v14);
LABEL_36:
  if (v41)
  {
    CFRelease(v41);
  }

  if (v82)
  {
    CFRelease(v82);
  }
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  result = [(BWMattingV2InferenceProvider *)self _loadMattingProcessor];
  if (!result)
  {
    _processorOptions = [(BWMattingV2InferenceProvider *)self _processorOptions];
    if (_processorOptions)
    {
      [(FigMatting *)self->_mattingProcessor setOptions:_processorOptions];
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

- (void)_processorOptions
{
  if (result)
  {
    v1 = result;
    v2 = result[17];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v5 = *off_1E798A9D0;
    [dictionary setObject:dictionary2 forKeyedSubscript:*off_1E798A9D0];
    if (v2)
    {
      [dictionary setObject:v1[25] forKeyedSubscript:@"SDOFRenderingParameters"];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v1[3];
    v6 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [objc_msgSend(objc_msgSend(v1[3] objectForKeyedSubscript:{v10), "sensorIDDictionary"), "objectForKeyedSubscript:", @"MattingParameters"}];
        v12 = [v11 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@V%d", @"Matting", *(v1 + 10))}];
        if (!v12)
        {
          break;
        }

        [objc_msgSend(dictionary objectForKeyedSubscript:{v5), "setObject:forKeyedSubscript:", v12, v10}];
        if (v7 == ++v9)
        {
          v7 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
          if (v7)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    if ([dictionary count])
    {
      v13 = dictionary;
    }

    else
    {
      v13 = 0;
    }

    return [v13 copy];
  }

  return result;
}

@end