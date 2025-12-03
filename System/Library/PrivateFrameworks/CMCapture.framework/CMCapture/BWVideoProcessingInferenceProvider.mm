@interface BWVideoProcessingInferenceProvider
- (BWVideoProcessingInferenceProvider)initWithType:(int)type analysisType:(unint64_t)analysisType executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons resourceProvider:(id)provider;
- (id)bindOutputMetadataKeys:(id)keys;
- (id)bindVideoInputFromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)newStorage;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler;
- (int)prepareForExecution;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWVideoProcessingInferenceProvider

- (BWVideoProcessingInferenceProvider)initWithType:(int)type analysisType:(unint64_t)analysisType executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons resourceProvider:(id)provider
{
  v15.receiver = self;
  v15.super_class = BWVideoProcessingInferenceProvider;
  v12 = [(BWVideoProcessingInferenceProvider *)&v15 init:*&type];
  v13 = v12;
  if (v12)
  {
    v12->_type = type;
    v12->_executionTarget = target;
    v12->_preventionReasons = [reasons copy];
    v13->_analysisType = analysisType;
    v13->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13->_cloneVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13->_inputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13->_outputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v13;
}

- (void)dealloc
{
  [(VCPCaptureAnalysisSession *)self->_vcpSession finalizeAnalysis];

  v3.receiver = self;
  v3.super_class = BWVideoProcessingInferenceProvider;
  [(BWVideoProcessingInferenceProvider *)&v3 dealloc];
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
  v3 = [BWVideoProcessingInferenceStorage alloc];
  inputVideoRequirements = self->_inputVideoRequirements;
  outputVideoRequirements = self->_outputVideoRequirements;

  return [(BWVideoProcessingInferenceStorage *)v3 initWithRequirementsNeedingPixelBuffers:inputVideoRequirements requirementsNeedingPixelBufferPools:outputVideoRequirements];
}

- (id)bindVideoInputFromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider
{
  v6 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:key preparedByAttachedMediaKey:key videoFormatProvider:provider];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v6];

  return v6;
}

- (id)bindOutputMetadataKeys:(id)keys
{
  v4 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v4];

  return v4;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ([(NSMutableArray *)self->_inputVideoRequirements count]== 1)
  {
    v12 = [storage pixelBufferForRequirement:{-[NSMutableArray firstObject](self->_inputVideoRequirements, "firstObject")}];
    if (v12)
    {
      memset(&v20, 0, sizeof(v20));
      CMSampleBufferGetPresentationTimeStamp(&v20, buffer);
      memset(&v19, 0, sizeof(v19));
      CMSampleBufferGetDuration(&v19, buffer);
      vcpSession = self->_vcpSession;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __120__BWVideoProcessingInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
      v18[3] = &unk_1E799A048;
      v18[4] = storage;
      v18[5] = self;
      v18[6] = handler;
      v18[7] = &v21;
      v17 = v20;
      v16 = v19;
      [(VCPCaptureAnalysisSession *)vcpSession analyzePixelBuffer:v12 withTimestamp:&v17 andDuration:&v16 properties:0 completion:v18];
      goto LABEL_6;
    }

    *(v22 + 6) = -31712;
  }

  else if (!*(v22 + 6))
  {
    goto LABEL_6;
  }

  (*(handler + 2))(handler);
  if (*v11 == 1)
  {
    kdebug_trace();
  }

LABEL_6:
  v14 = *(v22 + 6);
  _Block_object_dispose(&v21, 8);
  return v14;
}

uint64_t __120__BWVideoProcessingInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    *(*(a1[7] + 8) + 24) = -31719;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = a1[4];
    v7 = *(a1[5] + 64);
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 setDictionary:a3 forMetadataRequirement:*(*(&v14 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }
  }

  result = (*(a1[6] + 16))();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  outputMetadataRequirements = self->_outputMetadataRequirements;
  v11 = [(NSMutableArray *)outputMetadataRequirements countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(outputMetadataRequirements);
        }

        v15 = [storage newMetadataDictionarySatisfyingRequirement:*(*(&v17 + 1) + 8 * v14)];
        [dictionary addEntriesFromDictionary:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)outputMetadataRequirements countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v12);
  }

  if (*v9 == 1)
  {
    kdebug_trace();
  }
}

- (int)prepareForExecution
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_92();
    kdebug_trace();
  }

  if (self->_vcpSession)
  {
    v8 = 0;
  }

  else
  {
    VCPCaptureAnalysisSessionClass = getVCPCaptureAnalysisSessionClass();
    analysisType = self->_analysisType;
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v10[0] = *MEMORY[0x1E695EFD0];
    v10[1] = v6;
    v10[2] = *(MEMORY[0x1E695EFD0] + 32);
    v7 = [VCPCaptureAnalysisSessionClass analyzerForAnalysisTypes:analysisType withPreferredTransform:v10 properties:0];
    self->_vcpSession = v7;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = -31702;
    }
  }

  if (*v3 == 1)
  {
    OUTLINED_FUNCTION_0_92();
    kdebug_trace();
  }

  return v8;
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_92();
    kdebug_trace();
  }

  vcpSession = self->_vcpSession;
  if (vcpSession)
  {
    [(VCPCaptureAnalysisSession *)vcpSession finalizeAnalysis];

    self->_vcpSession = 0;
  }

  VCPCaptureAnalysisSessionClass = getVCPCaptureAnalysisSessionClass();
  analysisType = self->_analysisType;
  v19[0] = getVCPCaptureAnalysisDispatchQueuePropertyKey();
  v19[1] = @"turboMode";
  v20[0] = queue;
  v20[1] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v18[0] = *MEMORY[0x1E695EFD0];
  v18[1] = v10;
  v18[2] = *(MEMORY[0x1E695EFD0] + 32);
  v11 = [VCPCaptureAnalysisSessionClass analyzerForAnalysisTypes:analysisType withPreferredTransform:v18 properties:v9];
  self->_vcpSession = v11;
  if (!v11 || (v12 = -[NSMutableArray firstObject](self->_inputVideoRequirements, "firstObject"), v13 = self->_vcpSession, [objc_msgSend(v12 videoFormat], v16[1] = @"frameHeight", v17[0] = objc_msgSend(OUTLINED_FUNCTION_8(), "numberWithUnsignedLong:"), objc_msgSend(objc_msgSend(v12, "videoFormat"), "height"), v17[1] = objc_msgSend(OUTLINED_FUNCTION_8(), "numberWithUnsignedLong:"), -[VCPCaptureAnalysisSession prewarmWithProperties:](v13, "prewarmWithProperties:", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, v16, 2))))
  {
    v14 = -31702;
  }

  else
  {
    v14 = 0;
  }

  if (*v5 == 1)
  {
    OUTLINED_FUNCTION_0_92();
    kdebug_trace();
  }

  return v14;
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
  [(NSMutableArray *)self->_cloneVideoRequirements removeAllObjects];
  -[NSMutableArray addObjectsFromArray:](self->_cloneVideoRequirements, "addObjectsFromArray:", [provider cloneVideoRequirements]);
  return 0;
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_92();
    kdebug_trace();
  }

  if ([(NSMutableArray *)self->_inputVideoRequirements count]!= 1)
  {
    goto LABEL_13;
  }

  [(NSMutableArray *)self->_inputVideoRequirements firstObject];
  v11 = [OUTLINED_FUNCTION_8() pixelBufferForRequirement:?];
  if (v11)
  {
    v12 = v11;
    memset(&v75, 0, sizeof(v75));
    CMSampleBufferGetPresentationTimeStamp(&v75, buffer);
    memset(&v74, 0, sizeof(v74));
    CMSampleBufferGetDuration(&v74, buffer);
    vcpSession = self->_vcpSession;
    v72 = v75;
    v73 = 0;
    v71 = v74;
    v14 = [(VCPCaptureAnalysisSession *)vcpSession analyzePixelBuffer:v12 withTimestamp:&v72 andDuration:&v71 properties:0 error:&v73];
    if (v14)
    {
      v22 = v14;
      outputMetadataRequirements = self->_outputMetadataRequirements;
      v24 = OUTLINED_FUNCTION_2_90(v14, v15, v16, v17, v18, v19, v20, v21, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, 0);
      if (v24)
      {
        v25 = v24;
        v26 = MEMORY[0];
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (MEMORY[0] != v26)
            {
              objc_enumerationMutation(outputMetadataRequirements);
            }

            v28 = [storage setDictionary:v22 forMetadataRequirement:*(8 * i)];
          }

          v25 = OUTLINED_FUNCTION_2_90(v28, v29, v30, v31, v32, v33, v34, v35, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v70);
        }

        while (v25);
      }

LABEL_13:
      v36 = 0;
      goto LABEL_14;
    }

    v36 = 4294935577;
  }

  else
  {
    v36 = 4294935584;
  }

LABEL_14:
  if (*v10 == 1)
  {
    OUTLINED_FUNCTION_0_92();
    kdebug_trace();
  }

  (*(handler + 2))(handler, v36, self);
  return v36;
}

@end