@interface BWInferenceEngine
+ (BOOL)isNeuralEngineSupported;
+ (uint64_t)allowedPixelBufferCompressionType;
+ (unsigned)allowedBufferCompressionDirectionForExecutionTarget:(int)target;
+ (void)initialize;
- (NSDictionary)providedVideoRequirementsByAttachedMediaKey;
- (NSString)description;
- (id)_initWithScheduler:(uint64_t)scheduler priority:(uint64_t)priority shareIntermediateBuffer:(void *)buffer processingConfiguration:(void *)configuration name:;
- (id)espressoContextForExecutionTarget:(int)target;
- (id)metalCommandBuffer;
- (id)newMetalEvent;
- (int)addInferenceOfType:(int)type version:(id)version configuration:(id)configuration;
- (int)performInferencesOnSampleBuffer:(opaqueCMSampleBuffer *)buffer attachingResultsToSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer skippingInferencesWithTypes:(id)types;
- (int)prepareForInferenceWithFormatProvider:(id)provider;
- (int)prepareForInferenceWithFormatProvider:(id)provider pixelBufferPoolProvider:(id)poolProvider;
- (int)prepareForInputInferenceVideoFormat:(id)format attachedMediaKey:(id)key;
- (int)prepareForInputVideoFormat:(id)format attachedMediaKey:(id)key;
- (int)prepareForReconfigurationWithInputFormat:(id)format;
- (int)prewarmInferencesUsingLimitedMemory:(BOOL)memory;
- (int)reconfigure;
- (uint64_t)_addInferenceOfType:(uint64_t)type version:(void *)version configuration:(uint64_t)configuration engineConfiguration:;
- (uint64_t)_configureInferenceCachingPolicyForEligibleAdapters:(uint64_t)result;
- (uint64_t)_fetchCachedProvidersFromInferenceAdapters;
- (void)_addInferenceRequirementForProvider:configuration:engineConfiguration:;
- (void)_prepareDependenciesByRequirementIfNecessary;
- (void)_prepareProvidedVideoRequirementsIfNecessary;
- (void)_resurrectEngineWithCachedProviders;
- (void)_unprepare;
- (void)dealloc;
@end

@implementation BWInferenceEngine

+ (BOOL)isNeuralEngineSupported
{
  if (isNeuralEngineSupported_onceToken != -1)
  {
    +[BWInferenceEngine isNeuralEngineSupported];
  }

  return isNeuralEngineSupported_neuralEngineSupported;
}

+ (uint64_t)allowedPixelBufferCompressionType
{
  objc_opt_self();
  if (FigCapturePlatformSupportsUniversalCompression())
  {
    return 4;
  }

  FigCapturePlatformSupportsHTPC16x8Compression();
  return 0;
}

- (void)_prepareProvidedVideoRequirementsIfNecessary
{
  if (self)
  {
    v1 = *(self + 56);
    if (v1 || (v1 = *(self + 48)) != 0)
    {
      dependencyProvider = [v1 dependencyProvider];
      if (![dependencyProvider providedVideoRequirementsByAttachedMediaKey] && !objc_msgSend(objc_msgSend(v1, "unresolvedAttachedMediaKeysPreventingProvidedVideoRequirements"), "count"))
      {
        [dependencyProvider setSupportedPixelBufferCompressionType:+[BWInferenceEngine allowedPixelBufferCompressionType]()];
        [BWInferenceEngine _prepareDependenciesByRequirementIfNecessary];
        v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        videoRequirementsPossiblyProvidingAttachedMedia = [v1 videoRequirementsPossiblyProvidingAttachedMedia];
        v5 = [videoRequirementsPossiblyProvidingAttachedMedia countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v24;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v24 != v7)
              {
                objc_enumerationMutation(videoRequirementsPossiblyProvidingAttachedMedia);
              }

              v9 = *(*(&v23 + 1) + 8 * i);
              v10 = [objc_msgSend(dependencyProvider "dependenciesByInputVideoRequirements")];
              if ([objc_msgSend(objc_msgSend(dependencyProvider "dependenciesByOutputVideoRequirements")] && !objc_msgSend(v10, "count"))
              {
                [v3 setObject:v9 forKeyedSubscript:{objc_msgSend(v9, "attachedMediaKey")}];
              }
            }

            v6 = [videoRequirementsPossiblyProvidingAttachedMedia countByEnumeratingWithState:&v23 objects:v22 count:16];
          }

          while (v6);
        }

        v11 = [v3 copy];
        [OUTLINED_FUNCTION_17() setProvidedVideoRequirementsByAttachedMediaKey:?];

        v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        videoRequirementsPossiblyReceivingAttachedMedia = [v1 videoRequirementsPossiblyReceivingAttachedMedia];
        OUTLINED_FUNCTION_17_20();
        v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
        if (v15)
        {
          v16 = v15;
          v17 = MEMORY[0];
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (MEMORY[0] != v17)
              {
                objc_enumerationMutation(videoRequirementsPossiblyReceivingAttachedMedia);
              }

              v19 = *(8 * j);
              v20 = [objc_msgSend(dependencyProvider "dependenciesByInputVideoRequirements")];
              if (![objc_msgSend(objc_msgSend(dependencyProvider "dependenciesByOutputVideoRequirements")])
              {
                if ([v20 count])
                {
                  [v12 addObject:{objc_msgSend(v19, "attachedMediaKey")}];
                }
              }
            }

            OUTLINED_FUNCTION_17_20();
            v16 = [videoRequirementsPossiblyReceivingAttachedMedia countByEnumeratingWithState:? objects:? count:?];
          }

          while (v16);
        }

        v21 = [v12 copy];
        [OUTLINED_FUNCTION_17() setConsumedVideoAttachedMediaKeys:?];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }
}

- (void)_prepareDependenciesByRequirementIfNecessary
{
  OUTLINED_FUNCTION_84();
  v76 = v0;
  if (v0)
  {
    v1 = *(v0 + 56);
    if (v1 || (v1 = *(v76 + 48)) != 0)
    {
      v72 = v1;
      dependencyProvider = [v1 dependencyProvider];
      if (![objc_msgSend(dependencyProvider "dependenciesByInputVideoRequirements")] && !objc_msgSend(objc_msgSend(dependencyProvider, "dependenciesByOutputVideoRequirements"), "count"))
      {
        HIDWORD(v74) = [dependencyProvider supportedPixelBufferCompressionType];
        objc_opt_self();
        memset(v122, 0, 64);
        LODWORD(v74) = FigCapturePlatformSupportsUniversalLossyCompression() != 0;
        obj = [v72 inferenceRequirements];
        v66 = [obj countByEnumeratingWithState:v122 objects:v121 count:16];
        if (v66)
        {
          OUTLINED_FUNCTION_13_1();
          v64 = v3;
          do
          {
            v4 = 0;
            do
            {
              OUTLINED_FUNCTION_13_1();
              if (v5 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v68 = v4;
              v6 = *(v122[1] + 8 * v4);
              provider = [v6 provider];
              allowedPixelBufferCompressionDirection = [provider allowedPixelBufferCompressionDirection];
              inputVideoRequirements = [provider inputVideoRequirements];
              v17 = OUTLINED_FUNCTION_5_74(inputVideoRequirements, v10, v11, v12, v13, v14, v15, v16, v58, v60, obj, v64, v66, v68, provider, v72, v74, v76, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, *(&v95 + 1), v96, *(&v96 + 1), v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *(&v114 + 1), v115, *(&v115 + 1), v116);
              if (v17)
              {
                v18 = v17;
                do
                {
                  for (i = 0; i != v18; ++i)
                  {
                    OUTLINED_FUNCTION_42();
                    if (!v20)
                    {
                      objc_enumerationMutation(inputVideoRequirements);
                    }

                    v21 = *(v120 + 8 * i);
                    if (allowedPixelBufferCompressionDirection)
                    {
                      v22 = [BWInferenceCompressedVideoRequirement newRequirementWithUncompressedRequirement:*(v120 + 8 * i) supportedCompressionType:HIDWORD(v75) supportedLossyCompressionLevel:v75];
                      if (v22)
                      {
                        v23 = v22;
                        [objc_msgSend(v73 "videoRequirementsPossiblyReceivingAttachedMedia")];
                        v21 = v23;
                      }
                    }

                    v24 = [objc_msgSend(dependencyProvider "dependenciesByInputVideoRequirements")];
                    if (!v24)
                    {
                      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      [objc_msgSend(dependencyProvider "dependenciesByInputVideoRequirements")];
                    }

                    v25 = [[BWInferenceDataDependency alloc] initWithInferenceRequirement:v6 dependentOnDataRequirement:v21];
                    [v24 addObject:v25];

                    if ((*(v77 + 177) & 1) == 0)
                    {
                      v26 = [objc_msgSend(v21 "videoFormat")];
                      *(v77 + 177) = v26;
                    }
                  }

                  v18 = OUTLINED_FUNCTION_21_10(v26, v27, v119, v118);
                }

                while (v18);
              }

              outputVideoRequirements = [v71 outputVideoRequirements];
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              OUTLINED_FUNCTION_122();
              v30 = [v29 countByEnumeratingWithState:? objects:? count:?];
              if (v30)
              {
                v31 = v30;
                do
                {
                  for (j = 0; j != v31; ++j)
                  {
                    OUTLINED_FUNCTION_42();
                    if (!v20)
                    {
                      objc_enumerationMutation(outputVideoRequirements);
                    }

                    v33 = *(*(&v114 + 1) + 8 * j);
                    if ((allowedPixelBufferCompressionDirection & 2) != 0)
                    {
                      v34 = [BWInferenceCompressedVideoRequirement newRequirementWithUncompressedRequirement:*(*(&v114 + 1) + 8 * j) supportedCompressionType:HIDWORD(v75) supportedLossyCompressionLevel:v75];
                      if (v34)
                      {
                        v35 = v34;
                        [objc_msgSend(v73 "videoRequirementsPossiblyReceivingAttachedMedia")];
                        v33 = v35;
                      }
                    }

                    v36 = [objc_msgSend(dependencyProvider "dependenciesByOutputVideoRequirements")];
                    if (!v36)
                    {
                      v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      [objc_msgSend(dependencyProvider "dependenciesByOutputVideoRequirements")];
                    }

                    v37 = [[BWInferenceDataDependency alloc] initWithInferenceRequirement:v6 dependentOnDataRequirement:v33];
                    [v36 addObject:v37];
                  }

                  OUTLINED_FUNCTION_122();
                  v31 = OUTLINED_FUNCTION_21_10(v38, v39, v40, v41);
                }

                while (v31);
              }

              cloneVideoRequirements = [v71 cloneVideoRequirements];
              v50 = OUTLINED_FUNCTION_4_81(cloneVideoRequirements, v43, v44, v45, v46, v47, v48, v49, v59, v61, obja, v65, v67, v69, v71, v73, v75, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
              if (v50)
              {
                v51 = v50;
                do
                {
                  for (k = 0; k != v51; ++k)
                  {
                    OUTLINED_FUNCTION_42();
                    if (!v20)
                    {
                      objc_enumerationMutation(cloneVideoRequirements);
                    }

                    v53 = *(*(&v94 + 1) + 8 * k);
                    v54 = [objc_msgSend(dependencyProvider "dependenciesByOutputVideoRequirements")];
                    if (!v54)
                    {
                      v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      [objc_msgSend(dependencyProvider "dependenciesByOutputVideoRequirements")];
                    }

                    v55 = -[BWInferenceDataDependency initWithInferenceRequirement:dependentOnDataRequirement:]([BWInferenceDataDependency alloc], "initWithInferenceRequirement:dependentOnDataRequirement:", v6, [v53 sourceVideoRequirement]);
                    [v54 addObject:v55];
                  }

                  v51 = OUTLINED_FUNCTION_21_10(v56, v57, &v94, &v78);
                }

                while (v51);
              }

              v4 = v70 + 1;
            }

            while (v70 + 1 != v66);
            v66 = [obj countByEnumeratingWithState:v122 objects:v121 count:16];
          }

          while (v66);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  OUTLINED_FUNCTION_81();
}

- (NSDictionary)providedVideoRequirementsByAttachedMediaKey
{
  if (self)
  {
    selfCopy = self;
    self = self->_engineConfigurationForReconfiguration;
    if (!self)
    {
      self = selfCopy->_engineConfiguration;
    }
  }

  dependencyProvider = [(BWInferenceEngine *)self dependencyProvider];

  return [dependencyProvider providedVideoRequirementsByAttachedMediaKey];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  [(BWInferenceEngine *)self _unprepare];

  v3.receiver = self;
  v3.super_class = BWInferenceEngine;
  [(BWInferenceEngine *)&v3 dealloc];
}

- (NSString)description
{
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  inferences = self->_inferences;
  v5 = [(NSMutableArray *)inferences countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(inferences);
        }

        [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", BWInferenceTypeDescription(objc_msgSend(*(*(&v21 + 1) + 8 * i), "inferenceType")))}];
      }

      v6 = [(NSMutableArray *)inferences countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  inferencesDeferredUntilFormatResolution = self->_inferencesDeferredUntilFormatResolution;
  v10 = [(NSMutableArray *)inferencesDeferredUntilFormatResolution countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(inferencesDeferredUntilFormatResolution);
        }

        [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(Cached)%@", BWInferenceTypeDescription(objc_msgSend(*(*(&v16 + 1) + 8 * j), "inferenceType")))}];
      }

      v11 = [(NSMutableArray *)inferencesDeferredUntilFormatResolution countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v11);
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p> %@ : %@", objc_opt_class(), self, self->_name, objc_msgSend(array, "componentsJoinedByString:", @" + "];
}

- (int)prepareForInputVideoFormat:(id)format attachedMediaKey:(id)key
{
  WORD2(v8) = 0;
  LODWORD(v8) = 0;
  v6 = [BWInferenceVideoFormat initWithUnderlyingFormat:"initWithUnderlyingFormat:isDeviceOriented:videoContentMode:includesInvalidContent:cropDescriptor:histogramRequest:rotationDegrees:applyHorizontalFlip:isLandscapeOriented:" isDeviceOriented:format videoContentMode:0 includesInvalidContent:0 cropDescriptor:1 histogramRequest:0 rotationDegrees:0 applyHorizontalFlip:v8 isLandscapeOriented:?];

  return [(BWInferenceEngine *)self prepareForInputInferenceVideoFormat:v6 attachedMediaKey:key];
}

- (int)prepareForInferenceWithFormatProvider:(id)provider
{
  v5 = objc_alloc_init(BWInferenceSingleBufferPoolProvider);

  return [(BWInferenceEngine *)self prepareForInferenceWithFormatProvider:provider pixelBufferPoolProvider:v5];
}

- (int)prepareForInferenceWithFormatProvider:(id)provider pixelBufferPoolProvider:(id)poolProvider
{
  if (!self || (engineConfigurationForReconfiguration = self->_engineConfigurationForReconfiguration) == 0 && (engineConfigurationForReconfiguration = self->_engineConfiguration) == 0)
  {
    [BWInferenceEngine prepareForInferenceWithFormatProvider:pixelBufferPoolProvider:];
    return -31710;
  }

  if (!provider)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = [v10 stringWithFormat:@"Cannot prepare %@ with a nil formatProvider!", NSStringFromClass(v11)];
    goto LABEL_14;
  }

  if (!poolProvider)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v12 = [v13 stringWithFormat:@"Cannot prepare %@ with a nil pixelBufferPoolProvider!", NSStringFromClass(v14)];
LABEL_14:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v12 userInfo:0]);
  }

  result = [(BWInferenceScheduler *)self->_scheduler prepareForInferenceRequirements:[(BWInferenceEngineConfiguration *)engineConfigurationForReconfiguration inferenceRequirements] dependencyProviderSource:[(BWInferenceEngineConfiguration *)engineConfigurationForReconfiguration dependencyProvider] formatProvider:provider pixelBufferPoolProvider:poolProvider connection:[(BWInferenceEngineConfiguration *)engineConfigurationForReconfiguration connection] backPressureDrivenPipelining:self->_backPressureDrivenPipelining processingConfiguration:self->_processingConfiguration];
  if (!result)
  {
    aneContext = self->_aneContext;

    return [(BWEspressoInferenceContext *)aneContext enableIntermediateBufferSharingWithNetworksLoadedFromPath:0];
  }

  return result;
}

- (int)performInferencesOnSampleBuffer:(opaqueCMSampleBuffer *)buffer attachingResultsToSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer skippingInferencesWithTypes:(id)types
{
  scheduler = self->_scheduler;
  connection = [(BWInferenceEngineConfiguration *)self->_engineConfiguration connection];

  return [(BWInferenceScheduler *)scheduler performInferencesForConnection:connection usingInputSampleBuffer:buffer attachingResultsToSampleBuffer:sampleBuffer skippingInferencesWithTypes:types];
}

- (int)reconfigure
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Re-preparing %@", self];
  mach_absolute_time();
  if (self->_engineConfigurationForReconfiguration)
  {
    [(BWInferenceEngine *)self _unprepare];
    [(BWInferenceEngine *)self _resurrectEngineWithCachedProviders];
    if (v3)
    {
      v5 = v3;
      [BWInferenceEngine reconfigure];
    }

    else
    {
      self->_engineConfiguration = self->_engineConfigurationForReconfiguration;
      self->_engineConfigurationForReconfiguration = 0;
      [(BWInferenceEngineConfiguration *)self->_engineConfiguration setConnection:[(BWInferenceScheduler *)self->_scheduler registerInferenceConnectionWithEngineDescription:self->_name]];
      if (dword_1ED8445F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 0;
    }
  }

  else
  {
    [BWInferenceEngine reconfigure];
    return -31781;
  }

  return v5;
}

- (int)prewarmInferencesUsingLimitedMemory:(BOOL)memory
{
  if (!self || (v4 = memory, (engineConfigurationForReconfiguration = self->_engineConfigurationForReconfiguration) == 0) && (engineConfigurationForReconfiguration = self->_engineConfiguration) == 0)
  {
    [BWInferenceEngine prewarmInferencesUsingLimitedMemory:];
    return -31710;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  inferencesDeferredUntilFormatResolution = self->_inferencesDeferredUntilFormatResolution;
  v7 = [(NSMutableArray *)inferencesDeferredUntilFormatResolution countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(inferencesDeferredUntilFormatResolution);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        inferenceType = [v11 inferenceType];
        v3 = v3 & 0xFFFF000000000000 | [v11 version] & 0xFFFFFFFFFFFFLL;
        v13 = -[BWInferenceEngine _addInferenceOfType:version:configuration:engineConfiguration:](self, inferenceType, v3, [v11 configuration], engineConfigurationForReconfiguration);
      }

      v14 = v13;
      v8 = [(NSMutableArray *)inferencesDeferredUntilFormatResolution countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v8);
  }

  else
  {
    v14 = 0;
  }

  [(NSMutableArray *)self->_inferencesDeferredUntilFormatResolution removeAllObjects];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  inferenceRequirements = [(BWInferenceEngineConfiguration *)engineConfigurationForReconfiguration inferenceRequirements];
  v16 = [(NSMutableArray *)inferenceRequirements countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(inferenceRequirements);
        }

        provider = [*(*(&v26 + 1) + 8 * j) provider];
        prewarmingSharedResourceType = [provider prewarmingSharedResourceType];
        if (prewarmingSharedResourceType)
        {
          if (prewarmingSharedResourceType != 1)
          {
            continue;
          }

          v22 = [provider prewarmUsingLimitedMemory:v4 sharedE5ANEMemoryProvider:{-[BWInferenceScheduler sharedE5ANEMemoryProvider](self->_scheduler, "sharedE5ANEMemoryProvider")}];
        }

        else
        {
          v22 = [provider prewarmUsingLimitedMemory:v4];
        }

        v14 = v22;
      }

      v17 = [(NSMutableArray *)inferenceRequirements countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v17);
  }

  return v14;
}

- (int)addInferenceOfType:(int)type version:(id)version configuration:(id)configuration
{
  v6 = (type - 104) > 3 || type == 105;
  if (v6 && type != 201)
  {
    engineConfiguration = self->_engineConfiguration;

    return [(BWInferenceEngine *)self _addInferenceOfType:*&version.var0 & 0xFFFFFFFFFFFFLL version:configuration configuration:engineConfiguration engineConfiguration:?];
  }

  else
  {
    [(NSMutableArray *)self->_inferencesDeferredUntilFormatResolution addObject:[[BWInferenceEngineInference alloc] initWithInferenceType:*&type version:*&version.var0 & 0xFFFFFFFFFFFFLL configuration:configuration]];
    return 0;
  }
}

- (id)espressoContextForExecutionTarget:(int)target
{
  switch(target)
  {
    case 0:
      v3 = 96;
      return *(&self->super.isa + v3);
    case 3:
      v3 = 112;
      return *(&self->super.isa + v3);
    case 1:
      v3 = 104;
      return *(&self->super.isa + v3);
  }

  return 0;
}

- (id)newMetalEvent
{
  device = [(BWMetalInferenceContext *)self->_defaultDeviceMetalContext device];

  return [(MTLDevice *)device newEvent];
}

- (id)metalCommandBuffer
{
  commandQueue = [(BWMetalInferenceContext *)self->_defaultDeviceMetalContext commandQueue];

  return [(MTLCommandQueue *)commandQueue commandBuffer];
}

uint64_t __44__BWInferenceEngine_isNeuralEngineSupported__block_invoke()
{
  result = MGGetBoolAnswer();
  isNeuralEngineSupported_neuralEngineSupported = result;
  return result;
}

+ (unsigned)allowedBufferCompressionDirectionForExecutionTarget:(int)target
{
  v4 = +[BWInferenceEngine allowedPixelBufferCompressionType];
  v5 = FigCapturePlatformSupportsUniversalCompression();
  v6 = FigCapturePlatformSupportsHTPC16x8Compression();
  v7 = 0;
  v8 = FigCapturePlatformIdentifier();
  if (target <= 3)
  {
    if (target != 1)
    {
      if (target != 3)
      {
        return v7;
      }

      if (v8 <= 8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 3;
      }

      v10 = v4 != 4 || v5 == 0;
      goto LABEL_24;
    }

LABEL_20:
    v10 = v4 != 4 || v5 == 0;
    v9 = 3;
LABEL_24:
    if (v10)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  if (target == 5)
  {
    goto LABEL_20;
  }

  if (target == 4)
  {
    v7 = 3;
    if (!v5 || v4 != 4)
    {
      if (v4 != 1 || v6 == 0)
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }
  }

  return v7;
}

- (id)_initWithScheduler:(uint64_t)scheduler priority:(uint64_t)priority shareIntermediateBuffer:(void *)buffer processingConfiguration:(void *)configuration name:
{
  if (!self)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = BWInferenceEngine;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  if (v11)
  {
    *(v11 + 4) = a2;
    *(v11 + 10) = scheduler;
    *(v11 + 1) = configuration;
    *(v11 + 9) = objc_alloc_init(BWEspressoInferenceAdapter);
    *(v11 + 10) = objc_alloc_init(BWTiledEspressoInferenceAdapter);
    *(v11 + 11) = objc_alloc_init(BWTiledInferenceAdapter);
    *(v11 + 16) = objc_alloc_init(BWVisionInferenceAdapter);
    *(v11 + 18) = objc_alloc_init(BWVideoDepthInferenceAdapter);
    *(v11 + 19) = objc_alloc_init(BWFusionTrackerInferenceAdapter);
    *(v11 + 12) = [[BWEspressoInferenceContext alloc] initWithExecutionTarget:0];
    *(v11 + 13) = [[BWEspressoInferenceContext alloc] initWithExecutionTarget:1];
    *(v11 + 14) = [[BWEspressoInferenceContext alloc] initWithExecutionTarget:3 shareIntermediateBuffer:priority];
    *(v11 + 17) = [[BWVisionInferenceContext alloc] initWithScheduler:a2];
    *(v11 + 15) = [[BWMetalInferenceContext alloc] initWithScheduler:a2 priority:scheduler];
    *(v11 + 20) = objc_alloc_init(BWVideoProcessingInferenceAdapter);
    *(v11 + 21) = objc_alloc_init(BWMattingInferenceAdapter);
    *(v11 + 6) = objc_alloc_init(BWInferenceEngineConfiguration);
    [*(v11 + 6) setConnection:{objc_msgSend(a2, "registerInferenceConnectionWithEngineDescription:", *(v11 + 1))}];
    *(v11 + 8) = buffer;
    *(v11 + 2) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v11 + 3) = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v11;
}

- (void)_unprepare
{
  if (self)
  {
    [*(self + 32) unregisterInferenceConnection:{objc_msgSend(*(self + 48), "connection")}];

    *(self + 48) = 0;
  }
}

- (int)prepareForInputInferenceVideoFormat:(id)format attachedMediaKey:(id)key
{
  OUTLINED_FUNCTION_84();
  if (!v5 || (v8 = v7, v9 = v6, v10 = v5, (v50 = *(v5 + 56)) == 0) && (v50 = *(v5 + 48)) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_31;
  }

  v11 = [v7 isEqualToString:@"PrimaryFormat"];
  if (!v11)
  {
    goto LABEL_14;
  }

  v49 = v8;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v13 = *(v10 + 24);
  v14 = OUTLINED_FUNCTION_1_0(v11, v12, &v72, v71);
  if (!v14)
  {
LABEL_13:
    [*(v10 + 24) removeAllObjects];
    v8 = v49;
LABEL_14:
    v26 = [objc_msgSend(v50 "lazyInputVideoRequirementsByAttachedMediaKey")];
    memset(v70, 0, sizeof(v70));
    v27 = [v26 countByEnumeratingWithState:v70 objects:v69 count:16];
    if (v27)
    {
      v28 = v27;
LABEL_16:
      v29 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_42();
        if (!v30)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v70[0] + 1) + 8 * v29) prepareForInputInferenceVideoFormat:v9];
        if (v31)
        {
          break;
        }

        if (v28 == ++v29)
        {
          v28 = OUTLINED_FUNCTION_1_0(v31, v32, v70, v69);
          if (v28)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v33 = [objc_msgSend(v50 "lazyOutputVideoRequirementsByAttachedMediaKey")];
      v41 = OUTLINED_FUNCTION_3_90(v33, v34, v35, v36, v37, v38, v39, v40, v47, v48, v49, v50, v52[0], v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v68[2], v68[3]);
      if (v41)
      {
        v42 = v41;
LABEL_24:
        v43 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_42();
          if (!v30)
          {
            objc_enumerationMutation(v33);
          }

          v44 = [*(*(&v68[0] + 1) + 8 * v43) prepareForInputInferenceVideoFormat:v9];
          if (v44)
          {
            break;
          }

          if (v42 == ++v43)
          {
            v42 = OUTLINED_FUNCTION_1_0(v44, v45, v68, v52);
            if (v42)
            {
              goto LABEL_24;
            }

            goto LABEL_30;
          }
        }
      }

      else
      {
LABEL_30:
        [objc_msgSend(v51 "unresolvedAttachedMediaKeysPreventingProvidedVideoRequirements")];
        [(BWInferenceEngine *)v10 _prepareProvidedVideoRequirementsIfNecessary];
      }
    }

    goto LABEL_31;
  }

  v15 = v14;
  v16 = *v73;
LABEL_7:
  v17 = 0;
  while (1)
  {
    v18 = v10;
    OUTLINED_FUNCTION_13_1();
    if (v19 != v16)
    {
      objc_enumerationMutation(v13);
    }

    v20 = *(*(&v72 + 1) + 8 * v17);
    ie_updateConfigurationForInferenceIfNeededWithInputFormat([v20 inferenceType], objc_msgSend(v20, "configuration"), objc_msgSend(v9, "underlyingVideoFormat"));
    inferenceType = [v20 inferenceType];
    version = [v20 version];
    configuration = [v20 configuration];
    v4 = v4 & 0xFFFF000000000000 | version & 0xFFFFFFFFFFFFLL;
    v10 = v18;
    v24 = [(BWInferenceEngine *)v18 _addInferenceOfType:inferenceType version:v4 configuration:configuration engineConfiguration:v50];
    if (v24)
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = OUTLINED_FUNCTION_1_0(v24, v25, &v72, v71);
      if (v15)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_81();
  return result;
}

- (uint64_t)_addInferenceOfType:(uint64_t)type version:(void *)version configuration:(uint64_t)configuration engineConfiguration:
{
  if (result)
  {
    v33 = 0;
    if (!configuration)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return -31710;
    }

    v9 = result;
    v10 = *(result + 56);
    [(BWInferenceEngine *)result _configureInferenceCachingPolicyForEligibleAdapters:?];
    [version setPriority:*(v9 + 40)];
    array = [MEMORY[0x1E695DF70] array];
    if ((a2 - 101) >= 6)
    {
      if ((a2 - 101) <= 6)
      {
        switch(a2)
        {
          case 150:
            OUTLINED_FUNCTION_6_74();
            v14 = 150;
            goto LABEL_30;
          case 151:
          case 161:
            goto LABEL_29;
          case 152:
          case 153:
          case 154:
          case 155:
          case 156:
          case 157:
          case 158:
            goto LABEL_32;
          case 159:
          case 160:
            goto LABEL_26;
          default:
            JUMPOUT(0);
        }
      }

      if ((a2 - 801) < 4)
      {
        has_factory_content = os_variant_has_factory_content();
        if (has_factory_content)
        {
          return v33;
        }

        goto LABEL_26;
      }

      if ((a2 - 120) >= 2)
      {
        if ((a2 - 170) < 2 || a2 == 107)
        {
LABEL_26:
          OUTLINED_FUNCTION_6_74();
          v29 = a2;
LABEL_27:
          v31 = [v28 inferenceProviderForType:v29 version:? configuration:? resourceProvider:? status:?];
          if (v31)
          {
LABEL_28:
            [array addObject:v31];
            goto LABEL_32;
          }

          return -31701;
        }

        if (a2 != 108 && a2 != 109 && a2 != 111 && a2 != 116 && a2 != 117)
        {
          if (a2 == 2001)
          {
            OUTLINED_FUNCTION_6_74();
            v29 = 2001;
            goto LABEL_27;
          }

          if (a2 != 119)
          {
            if (a2 == 201)
            {
              OUTLINED_FUNCTION_6_74();
              v31 = [v30 inferenceProviderForType:201 version:? configuration:? resourceProvider:? statusOut:?];
              if (v31)
              {
                goto LABEL_28;
              }

              return -31701;
            }

            if (a2 != 118)
            {
LABEL_32:
              if ([array count])
              {
                OUTLINED_FUNCTION_17_20();
                v20 = OUTLINED_FUNCTION_21_10(v16, v17, v18, v19);
                if (v20)
                {
                  v21 = v20;
                  v22 = MEMORY[0];
                  do
                  {
                    for (i = 0; i != v21; ++i)
                    {
                      if (MEMORY[0] != v22)
                      {
                        objc_enumerationMutation(array);
                      }

                      [BWInferenceEngine _addInferenceRequirementForProvider:configuration:engineConfiguration:];
                    }

                    OUTLINED_FUNCTION_17_20();
                    v21 = OUTLINED_FUNCTION_21_10(v24, v25, v26, v27);
                  }

                  while (v21);
                }

                if (v10 != configuration)
                {
                  [*(v9 + 16) addObject:{-[BWInferenceEngineInference initWithInferenceType:version:configuration:]([BWInferenceEngineInference alloc], "initWithInferenceType:version:configuration:", a2, type & 0xFFFFFFFFFFFFLL, version)}];
                }
              }

              return v33;
            }
          }
        }
      }
    }

LABEL_29:
    OUTLINED_FUNCTION_6_74();
    v14 = a2;
LABEL_30:
    v15 = [v13 inferenceProvidersForType:v14 version:? configuration:? resourceProvider:? status:?];
    if (!v15)
    {
      return v33;
    }

    [array addObjectsFromArray:v15];
    goto LABEL_32;
  }

  return result;
}

- (int)prepareForReconfigurationWithInputFormat:(id)format
{
  if (self->_engineConfigurationForReconfiguration)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v6 = objc_alloc_init(BWInferenceEngineConfiguration);
    self->_engineConfigurationForReconfiguration = v6;
    inferences = self->_inferences;
    v15 = OUTLINED_FUNCTION_0_0(v6, v8, v9, v10, v11, v12, v13, v14, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, 0);
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (MEMORY[0] != v17)
        {
          objc_enumerationMutation(inferences);
        }

        v19 = *(8 * v18);
        ie_updateConfigurationForInferenceIfNeededWithInputFormat([v19 inferenceType], objc_msgSend(v19, "configuration"), format);
        inferenceType = [v19 inferenceType];
        v3 = v3 & 0xFFFF000000000000 | [v19 version] & 0xFFFFFFFFFFFFLL;
        v15 = -[BWInferenceEngine _addInferenceOfType:version:configuration:engineConfiguration:](self, inferenceType, v3, [v19 configuration], self->_engineConfigurationForReconfiguration);
        if (v15)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v15 = OUTLINED_FUNCTION_0_0(v15, v21, v22, v23, v24, v25, v26, v27, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
          v16 = v15;
          if (v15)
          {
            goto LABEL_4;
          }

          return v15;
        }
      }
    }
  }

  return v15;
}

- (void)_resurrectEngineWithCachedProviders
{
  if (self)
  {
    OUTLINED_FUNCTION_84();
    v3 = v2;
    if ([v2[7] inferenceRequirements] && objc_msgSend(objc_msgSend(v3[7], "dependencyProvider"), "dependenciesByInputVideoRequirements") && objc_msgSend(objc_msgSend(v3[7], "dependencyProvider"), "dependenciesByOutputVideoRequirements"))
    {
      array = [MEMORY[0x1E695DF70] array];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(BWInferenceEngine *)v3 _fetchCachedProvidersFromInferenceAdapters];
      v65 = v3;
      inferenceRequirements = [v3[7] inferenceRequirements];
      v6 = [inferenceRequirements countByEnumeratingWithState:v116 objects:v115 count:16];
      if (v6)
      {
        v7 = v6;
LABEL_7:
        v8 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_42();
          if (!v9)
          {
            objc_enumerationMutation(inferenceRequirements);
          }

          v10 = *(v116[1] + 8 * v8);
          provider = [v10 provider];
          if (![provider customInferenceIdentifier])
          {
            break;
          }

          v12 = [v1 objectForKey:{objc_msgSend(provider, "customInferenceIdentifier")}];
          if (v12 && (v13 = v12, ![objc_msgSend(v12 "cacheable")]))
          {
            v16 = -[BWInferenceRequirement initWithProvider:configuration:]([BWInferenceRequirement alloc], "initWithProvider:configuration:", v13, [v10 configuration]);
            [array addObject:v16];
            [dictionary setObject:v16 forKey:{objc_msgSend(provider, "customInferenceIdentifier")}];
          }

          else
          {
            [array addObject:v10];
            v14 = [dictionary setObject:v10 forKey:{objc_msgSend(provider, "customInferenceIdentifier")}];
          }

          if (v7 == ++v8)
          {
            v7 = OUTLINED_FUNCTION_1_0(v14, v15, v116, v115);
            if (v7)
            {
              goto LABEL_7;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        v17 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
        [v17 setHashFunction:satisfiedVideoRequirementHash];
        [v17 setIsEqualFunction:satisfiedVideoRequirementCheck];
        v52 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
        v53 = v17;
        v62 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v17 valuePointerFunctions:v52 capacity:0];
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        obj = [objc_msgSend(v3[7] "dependencyProvider")];
        v60 = [obj countByEnumeratingWithState:&v111 objects:v110 count:16];
        if (v60)
        {
          v58 = *v112;
          do
          {
            v18 = 0;
            do
            {
              if (*v112 != v58)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v111 + 1) + 8 * v18);
              v20 = [v62 objectForKey:v19];
              if (!v20)
              {
                v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v62 setObject:v20 forKey:v19];
              }

              v21 = [objc_msgSend(objc_msgSend(v3[7] "dependencyProvider")];
              v29 = OUTLINED_FUNCTION_5_74(v21, v22, v23, v24, v25, v26, v27, v28, v51, v52, v53, array, obj, v58, v60, v62, v18, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, *(&v82 + 1), v83, *(&v83 + 1), v84, *(&v84 + 1), v85, *(&v85 + 1), v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *(&v102 + 1), v103, *(&v103 + 1), v104);
              if (v29)
              {
                v30 = v29;
                v31 = *v109;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v109 != v31)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v33 = -[BWInferenceDataDependency initWithInferenceRequirement:dependentOnDataRequirement:]([BWInferenceDataDependency alloc], "initWithInferenceRequirement:dependentOnDataRequirement:", [dictionary objectForKey:{objc_msgSend(objc_msgSend(objc_msgSend(*(v108 + 8 * i), "inferenceRequirement"), "provider"), "customInferenceIdentifier")}], objc_msgSend(*(v108 + 8 * i), "dataRequirement"));
                    [v20 addObject:v33];
                  }

                  v30 = [v21 countByEnumeratingWithState:v107 objects:v106 count:16];
                }

                while (v30);
              }

              v3 = v65;
              v18 = v63 + 1;
            }

            while (v63 + 1 != v60);
            v60 = [obj countByEnumeratingWithState:&v111 objects:v110 count:16];
          }

          while (v60);
        }

        v61 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v53 valuePointerFunctions:v52 capacity:0];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        [objc_msgSend(v3[7] "dependencyProvider")];
        OUTLINED_FUNCTION_122();
        v54 = v34;
        v59 = [v34 countByEnumeratingWithState:? objects:? count:?];
        if (v59)
        {
          obja = *v103;
          do
          {
            v35 = 0;
            do
            {
              if (*v103 != obja)
              {
                objc_enumerationMutation(v54);
              }

              v36 = *(*(&v102 + 1) + 8 * v35);
              v37 = [v61 objectForKey:v36];
              if (!v37)
              {
                v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v61 setObject:v37 forKey:v36];
              }

              v38 = [objc_msgSend(objc_msgSend(v3[7] "dependencyProvider")];
              v46 = OUTLINED_FUNCTION_4_81(v38, v39, v40, v41, v42, v43, v44, v45, v51, v52, v54, array, obja, v59, v61, v62, v35, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
              if (v46)
              {
                v47 = v46;
                v48 = *v83;
                do
                {
                  for (j = 0; j != v47; ++j)
                  {
                    if (*v83 != v48)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v50 = -[BWInferenceDataDependency initWithInferenceRequirement:dependentOnDataRequirement:]([BWInferenceDataDependency alloc], "initWithInferenceRequirement:dependentOnDataRequirement:", [dictionary objectForKey:{objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v82 + 1) + 8 * j), "inferenceRequirement"), "provider"), "customInferenceIdentifier")}], objc_msgSend(*(*(&v82 + 1) + 8 * j), "dataRequirement"));
                    [v37 addObject:v50];
                  }

                  v47 = [v38 countByEnumeratingWithState:&v82 objects:&v66 count:16];
                }

                while (v47);
              }

              v3 = v65;
              v35 = v64 + 1;
            }

            while (v64 + 1 != v59);
            OUTLINED_FUNCTION_122();
            v59 = [v54 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v59);
        }

        [v3[7] setInferenceRequirements:array];
        [objc_msgSend(v3[7] "dependencyProvider")];
        [objc_msgSend(v3[7] "dependencyProvider")];
      }
    }

    OUTLINED_FUNCTION_81();
  }
}

- (uint64_t)_fetchCachedProvidersFromInferenceAdapters
{
  if (!self)
  {
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([objc_msgSend(self[9] "cachedInferenceProviderByCacheKey")])
  {
    [self[9] cachedInferenceProviderByCacheKey];
    [OUTLINED_FUNCTION_17() addEntriesFromDictionary:?];
  }

  if ([objc_msgSend(self[10] "cachedInferenceProviderByCacheKey")])
  {
    [self[10] cachedInferenceProviderByCacheKey];
    [OUTLINED_FUNCTION_17() addEntriesFromDictionary:?];
  }

  if ([objc_msgSend(self[16] "cachedInferenceProviderByCacheKey")])
  {
    [self[16] cachedInferenceProviderByCacheKey];
    [OUTLINED_FUNCTION_17() addEntriesFromDictionary:?];
  }

  if ([objc_msgSend(self[21] "cachedInferenceProviderByCacheKey")])
  {
    [self[21] cachedInferenceProviderByCacheKey];
    [OUTLINED_FUNCTION_17() addEntriesFromDictionary:?];
  }

  if ([objc_msgSend(self[20] "cachedInferenceProviderByCacheKey")])
  {
    [self[20] cachedInferenceProviderByCacheKey];
    [OUTLINED_FUNCTION_17() addEntriesFromDictionary:?];
  }

  return dictionary;
}

- (void)_addInferenceRequirementForProvider:configuration:engineConfiguration:
{
  OUTLINED_FUNCTION_84();
  if (v4)
  {
    v5 = v3;
    if (v3)
    {
      v6 = v1;
      v7 = [[BWInferenceRequirement alloc] initWithProvider:v1 configuration:v2];
      [objc_msgSend(v5 "inferenceRequirements")];

      allowedPixelBufferCompressionDirection = [v6 allowedPixelBufferCompressionDirection];
      v38 = v6;
      [v6 inputVideoRequirements];
      v9 = OUTLINED_FUNCTION_10_48();
      v11 = [v10 countByEnumeratingWithState:v60 objects:v59 count:{16, v9}];
      if (v11)
      {
        v12 = v11;
        v13 = *v60[2];
        do
        {
          for (i = 0; i != v12; ++i)
          {
            OUTLINED_FUNCTION_13_1();
            if (v15 != v13)
            {
              objc_enumerationMutation(v0);
            }

            v16 = *(v60[1] + 8 * i);
            [objc_msgSend(v5 "videoRequirementsPossiblyReceivingAttachedMedia")];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              preparedByAttachedMediaKey = [(BWInferenceLazyVideoRequirement *)v16 preparedByAttachedMediaKey];
              if (allowedPixelBufferCompressionDirection)
              {
                v16 = [[BWInferenceCompressibleLazyVideoRequirement alloc] initWithLazyVideoRequirement:v16];
              }

              v18 = [objc_msgSend(v5 "lazyInputVideoRequirementsByAttachedMediaKey")];
              if (!v18)
              {
                v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [objc_msgSend(v5 "lazyInputVideoRequirementsByAttachedMediaKey")];
              }

              [v18 addObject:v16];
              [objc_msgSend(v5 "unresolvedAttachedMediaKeysPreventingProvidedVideoRequirements")];
            }
          }

          v12 = [v0 countByEnumeratingWithState:v60 objects:v59 count:16];
        }

        while (v12);
      }

      v19 = v38;
      outputVideoRequirements = [v38 outputVideoRequirements];
      v28 = OUTLINED_FUNCTION_3_90(outputVideoRequirements, v21, v22, v23, v24, v25, v26, v27, v35, v36, v37, v38, v39[0], v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
      if (v28)
      {
        v29 = v28;
        v30 = *v56;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v56 != v30)
            {
              objc_enumerationMutation(outputVideoRequirements);
            }

            v32 = *(*(&v55 + 1) + 8 * j);
            [objc_msgSend(v5 "videoRequirementsPossiblyProvidingAttachedMedia")];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              preparedByAttachedMediaKey2 = [v32 preparedByAttachedMediaKey];
              v34 = [objc_msgSend(v5 "lazyOutputVideoRequirementsByAttachedMediaKey")];
              if (!v34)
              {
                v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [objc_msgSend(v5 "lazyOutputVideoRequirementsByAttachedMediaKey")];
              }

              [v34 addObject:v32];
              [objc_msgSend(v5 "unresolvedAttachedMediaKeysPreventingProvidedVideoRequirements")];
            }
          }

          v29 = [outputVideoRequirements countByEnumeratingWithState:&v55 objects:v39 count:16];
        }

        while (v29);
      }

      [objc_msgSend(v5 "videoRequirementsPossiblyProvidingAttachedMedia")];
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  OUTLINED_FUNCTION_81();
}

- (uint64_t)_configureInferenceCachingPolicyForEligibleAdapters:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 72) setShouldCacheInferenceProvider:a2];
    [*(v3 + 80) setShouldCacheInferenceProvider:a2];
    [*(v3 + 128) setShouldCacheInferenceProvider:a2];
    [*(v3 + 168) setShouldCacheInferenceProvider:a2];
    v4 = *(v3 + 160);

    return [v4 setShouldCacheInferenceProvider:a2];
  }

  return result;
}

@end