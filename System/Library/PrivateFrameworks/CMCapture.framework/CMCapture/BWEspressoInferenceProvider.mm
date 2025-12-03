@interface BWEspressoInferenceProvider
+ (void)initialize;
- (BWEspressoInferenceProvider)initWithType:(int)type networkURL:(id)l networkConfiguration:(id)configuration context:(id)context executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons resourceProvider:(id)self0 allowedCompressionDirection:(unsigned int)self1 concurrentSubmissionLimit:(unint64_t)self2 updateMetadataWithCropRect:(BOOL)self3;
- (BWInferenceSubmittable)submittable;
- (id)bindEspressoInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format count:(unint64_t)count;
- (id)bindEspressoInput:(id)input fromMetadataUsingKeys:(id)keys;
- (id)bindEspressoOutput:(id)output asAttachedMediaUsingKey:(id)key withVideoFormat:(id)format count:(unint64_t)count;
- (id)bindEspressoOutput:(id)output asConsolidatedMetadataUsingKeys:(id)keys;
- (id)bindEspressoOutput:(id)output asMetadataUsingKey:(id)key;
- (id)bindEspressoOutput:(id)output asMetadataUsingKeys:(id)keys;
- (id)bindOutputByCloningInputRequirement:(id)requirement toAttachedMediaUsingKey:(id)key;
- (id)newStorage;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler;
- (int)prewarmUsingLimitedMemory:(BOOL)memory;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (uint64_t)_ensureEspressoBindingsUsingStorage:(uint64_t)result;
- (uint64_t)_mapSchedulerToEspressoPriority:(uint64_t)result;
- (uint64_t)_prepareWithWorkQueue:(uint64_t)queue;
- (uint64_t)_surfacePropertiesForTensor:(uint64_t)result bindingName:(void *)name;
- (void)dealloc;
- (void)setCustomInferenceIdentifier:(id)identifier;
- (void)setPropagatable:(id)propagatable;
- (void)setTensorMemoryProvider:(id)provider;
@end

@implementation BWEspressoInferenceProvider

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWEspressoInferenceProvider)initWithType:(int)type networkURL:(id)l networkConfiguration:(id)configuration context:(id)context executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons resourceProvider:(id)self0 allowedCompressionDirection:(unsigned int)self1 concurrentSubmissionLimit:(unint64_t)self2 updateMetadataWithCropRect:(BOOL)self3
{
  v21.receiver = self;
  v21.super_class = BWEspressoInferenceProvider;
  v18 = [(BWEspressoInferenceProvider *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    v18->_networkURL = [l copy];
    v19->_networkConfiguration = [configuration copy];
    v19->_executionTarget = target;
    v19->_preventionReasons = [reasons copy];
    v19->_allowedCompressionDirection = direction;
    v19->_concurrentSubmissionLimit = limit;
    v19->_espressoPriority = [BWEspressoInferenceProvider _mapSchedulerToEspressoPriority:v19];
    v19->_context = context;
    v19->_bindingNamesByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_cloneVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_inputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_outputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_updateMetadataWithCropRect = rect;
  }

  return v19;
}

- (void)dealloc
{
  if (self->_espressoPlan)
  {
    espresso_plan_destroy();
  }

  v3.receiver = self;
  v3.super_class = BWEspressoInferenceProvider;
  [(BWEspressoInferenceProvider *)&v3 dealloc];
}

- (id)newStorage
{
  inputVideoRequirements = self->_inputVideoRequirements;
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_outputVideoRequirements];
  array2 = [MEMORY[0x1E695DF70] array];
  [array2 addObjectsFromArray:self->_outputVideoRequirements];
  [array2 addObjectsFromArray:self->_inputMetadataRequirements];
  [array2 addObjectsFromArray:self->_outputMetadataRequirements];
  v6 = [BWEspressoInferenceStorage alloc];
  bindingNamesByRequirement = self->_bindingNamesByRequirement;

  return [(BWEspressoInferenceStorage *)v6 initWithBindingNameByRequirement:bindingNamesByRequirement requirementsNeedingPixelBuffers:inputVideoRequirements requirementsNeedingPixelBufferPools:array requirementsNeedingTensors:array2];
}

- (BWInferenceSubmittable)submittable
{
  if ((*(self + 5) | 2) != 3)
  {
    return 0;
  }

  return self;
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (void)setPropagatable:(id)propagatable
{
  propagator = self->_propagator;
  if (propagator != propagatable)
  {

    self->_propagator = propagatable;
  }
}

- (void)setTensorMemoryProvider:(id)provider
{
  tensorMemoryProvider = self->_tensorMemoryProvider;
  if (tensorMemoryProvider != provider)
  {

    self->_tensorMemoryProvider = provider;
  }
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  espressoPlan = self->_espressoPlan;
  v9 = MEMORY[0x1E695FF58];
  if (!espressoPlan || espressoPlan != self->_espressoNetwork.plan)
  {
    goto LABEL_7;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(BWEspressoInferenceProvider *)self type:buffer];
    kdebug_trace();
  }

  v11 = [(BWEspressoInferenceProvider *)self _ensureEspressoBindingsUsingStorage:storage];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    if (espresso_plan_execute_sync())
    {
LABEL_7:
      v12 = 4294935586;
      goto LABEL_9;
    }

    v12 = 0;
  }

LABEL_9:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  pixelBuffersLockedDuringExecution = self->_pixelBuffersLockedDuringExecution;
  v14 = [(NSMutableArray *)pixelBuffersLockedDuringExecution countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(pixelBuffersLockedDuringExecution);
        }

        CVPixelBufferUnlockBaseAddress(*(*(&v20 + 1) + 8 * i), 1uLL);
      }

      v15 = [(NSMutableArray *)pixelBuffersLockedDuringExecution countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v15);
  }

  [(NSMutableArray *)self->_pixelBuffersLockedDuringExecution removeAllObjects];
  if (*v9 == 1)
  {
    [(BWEspressoInferenceProvider *)self type];
    kdebug_trace();
  }

  if (handler)
  {
    (*(handler + 2))(handler, v12, self);
  }

  return v12;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v11 = [(BWInferencePropagatable *)self->_propagator allowsAsyncPropagation:buffer];
  espressoPlan = self->_espressoPlan;
  if (!espressoPlan || espressoPlan != self->_espressoNetwork.plan || (v13 = v11, ![(BWEspressoInferenceProvider *)self submittable]))
  {
    v16 = 1;
    goto LABEL_9;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(BWEspressoInferenceProvider *)self type];
    kdebug_trace();
  }

  v14 = [(BWEspressoInferenceProvider *)self _ensureEspressoBindingsUsingStorage:storage];
  if (v14)
  {
    v16 = 1;
    goto LABEL_10;
  }

  executionTarget = self->_executionTarget;
  v16 = 1;
  if (executionTarget > 5)
  {
    goto LABEL_10;
  }

  if (((1 << executionTarget) & 0x31) != 0)
  {
    goto LABEL_9;
  }

  if (((1 << executionTarget) & 0xA) != 0)
  {
    if (queue)
    {
      if (espresso_plan_submit())
      {
        v14 = 4294935586;
        if (!handler)
        {
          return v14;
        }

        goto LABEL_16;
      }

      v14 = 0;
      v16 = v13;
      goto LABEL_10;
    }

LABEL_9:
    v14 = 4294935586;
  }

LABEL_10:
  v13 = v16;
  if (!handler)
  {
    return v14;
  }

LABEL_16:
  if (v13)
  {
    (*(handler + 2))(handler, v14, self);
  }

  return v14;
}

uint64_t __113__BWEspressoInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 4))
  {
    v3 = 4294935586;
  }

  else
  {
    v3 = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(*(a1 + 32) + 184);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        CVPixelBufferUnlockBaseAddress(*(*(&v11 + 1) + 8 * i), 1uLL);
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 184) removeAllObjects];
  result = *(a1 + 40);
  if (result && *(a1 + 52) == 1)
  {
    result = (*(result + 16))(result, v3, *(a1 + 32));
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    [*(a1 + 32) type];
    return kdebug_trace();
  }

  return result;
}

- (id)bindEspressoInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format count:(unint64_t)count
{
  v8 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:key videoFormat:format count:count];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v8];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:input forKeyedSubscript:v8];

  return v8;
}

- (id)bindEspressoInput:(id)input fromMetadataUsingKeys:(id)keys
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_inputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:input forKeyedSubscript:v6];

  return v6;
}

- (id)bindEspressoOutput:(id)output asAttachedMediaUsingKey:(id)key withVideoFormat:(id)format count:(unint64_t)count
{
  v8 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:key videoFormat:format count:count];
  [(NSMutableArray *)self->_outputVideoRequirements addObject:v8];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:output forKeyedSubscript:v8];

  return v8;
}

- (id)bindOutputByCloningInputRequirement:(id)requirement toAttachedMediaUsingKey:(id)key
{
  v5 = [[BWInferenceCloneVideoRequirement alloc] initWithAttachedMediaKey:key sourceVideoRequirement:requirement];
  [(NSMutableArray *)self->_cloneVideoRequirements addObject:v5];

  return v5;
}

- (id)bindEspressoOutput:(id)output asMetadataUsingKey:(id)key
{
  v7 = [BWInferenceMetadataRequirement alloc];
  keyCopy = key;
  v8 = -[BWInferenceMetadataRequirement initWithMetadataKeys:mappingOption:](v7, "initWithMetadataKeys:mappingOption:", [MEMORY[0x1E695DEC8] arrayWithObjects:&keyCopy count:1], 1);
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v8];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:output forKeyedSubscript:v8];
  return v8;
}

- (id)bindEspressoOutput:(id)output asMetadataUsingKeys:(id)keys
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:output forKeyedSubscript:v6];

  return v6;
}

- (id)bindEspressoOutput:(id)output asConsolidatedMetadataUsingKeys:(id)keys
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys mappingOption:2];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:output forKeyedSubscript:v6];

  return v6;
}

- (uint64_t)_mapSchedulerToEspressoPriority:(uint64_t)result
{
  if (result)
  {
    if (*(result + 20) == 3)
    {
      MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue();
      if (MachThreadPriorityValue >= FigThreadGetMachThreadPriorityValue())
      {
        return 1;
      }

      else
      {
        return 0x2000;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_prepareWithWorkQueue:(uint64_t)queue
{
  if (!queue)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695FF58];
  if (*(queue + 80))
  {
    goto LABEL_39;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    [queue type];
    OUTLINED_FUNCTION_2_38();
  }

  BWInferenceTypeDescription(*(queue + 16));
  mach_absolute_time();
  prepareForInference = [*(queue + 72) prepareForInference];
  if (prepareForInference)
  {
    goto LABEL_49;
  }

  plan = [*(queue + 72) espressoContext];
  if (!plan)
  {
    goto LABEL_40;
  }

  plan = espresso_create_plan();
  *(queue + 80) = plan;
  if (!plan)
  {
    goto LABEL_40;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = [*(queue + 48) fileSystemRepresentation];
  [queue executionTarget];
  LODWORD(plan) = espresso_plan_add_network();
  if (plan)
  {
LABEL_48:
    os_log_and_send_and_compose_flags_and_os_log_type = 4294935586;
    goto LABEL_41;
  }

  if ([+[BWMemoryPool poolIdentifier] sharedMemoryPool]
  {
    espresso_network_set_memory_pool_id();
  }

  else
  {
    OUTLINED_FUNCTION_4_69();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v13))
    {
      v8 = v14;
    }

    else
    {
      v8 = v14 & 0xFFFFFFFE;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_7_53();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_6_60();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = MEMORY[0x1E695FF58];
  }

  if ([queue submittable] && *(queue + 20) == 3 && (a2 && espresso_plan_set_execution_queue() || *(queue + 40) >= 2uLL && espresso_plan_submit_set_multiple_buffering()) || *(queue + 104) && espresso_plan_set_priority())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = 4294935586;
    LODWORD(plan) = 1;
    goto LABEL_41;
  }

  if ([*(queue + 72) configureIntermediateBufferSharingForPlanPrebuild:*(queue + 80)])
  {
    goto LABEL_50;
  }

  v9 = *(queue + 56);
  if (v9)
  {
    [v9 UTF8String];
    prepareForInference = espresso_network_select_configuration();
    if (prepareForInference)
    {
LABEL_49:
      os_log_and_send_and_compose_flags_and_os_log_type = prepareForInference;
LABEL_51:
      LODWORD(plan) = 0;
      goto LABEL_41;
    }
  }

  LODWORD(plan) = espresso_plan_build();
  if (plan)
  {
    goto LABEL_48;
  }

  if ([*(queue + 72) configureIntermediateBufferSharingForPlanPostbuild:*(queue + 80)])
  {
LABEL_50:
    OUTLINED_FUNCTION_3_78();
    FigDebugAssert3();
    goto LABEL_51;
  }

  if (!*(queue + 160))
  {
    *(queue + 160) = [[BWInferenceSampleBufferPropagator alloc] initWithVideoRequirements:*(queue + 128) cloneRequirements:*(queue + 136) metadataRequirements:*(queue + 152) updateMetadataWithCropRect:*(queue + 176)];
  }

  *(queue + 184) = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (dword_1EB58E3E0)
  {
    OUTLINED_FUNCTION_4_69();
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(v10, v13))
    {
      v11 = v14;
    }

    else
    {
      v11 = v14 & 0xFFFFFFFE;
    }

    if (v11)
    {
      mach_absolute_time();
      FigHostTimeToNanoseconds();
      OUTLINED_FUNCTION_7_53();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_6_60();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_39:
  LODWORD(plan) = 0;
LABEL_40:
  os_log_and_send_and_compose_flags_and_os_log_type = 0;
LABEL_41:
  if (os_log_and_send_and_compose_flags_and_os_log_type | plan)
  {
    if (*(queue + 80))
    {
      *(queue + 88) = 0;
      *(queue + 96) = 0;
      espresso_plan_destroy();
      *(queue + 80) = 0;
    }

    *(queue + 184) = 0;
  }

  if (*v3 == 1)
  {
    [queue type];
    kdebug_trace();
  }

  return os_log_and_send_and_compose_flags_and_os_log_type;
}

- (uint64_t)_ensureEspressoBindingsUsingStorage:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    inputVideoRequirements = [result inputVideoRequirements];
    v5 = [inputVideoRequirements countByEnumeratingWithState:&v67 objects:v66 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v68;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v68 != v8)
          {
            objc_enumerationMutation(inputVideoRequirements);
          }

          v10 = *(*(&v67 + 1) + 8 * v9);
          if (![a2 pixelBufferForRequirement:v10])
          {
            return 4294935584;
          }

          v11 = [a2 bindingNameForRequirement:v10];
          if (!v11)
          {
            return 4294935584;
          }

          v12 = v11;
          [v11 UTF8String];
          OUTLINED_FUNCTION_1_99();
          v13 = espresso_network_bind_direct_cvpixelbuffer();
          if (v13)
          {
            [v12 UTF8String];
            OUTLINED_FUNCTION_1_99();
            v13 = espresso_network_bind_cvpixelbuffer();
            if (v13)
            {
              return 4294935586;
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v5 = OUTLINED_FUNCTION_64(v13, v14, &v67, v66);
        v7 = v5;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v15 = *(v3 + 128);
    v16 = OUTLINED_FUNCTION_64(v5, v6, &v62, v61);
    if (v16)
    {
      v18 = v16;
      v19 = *v63;
      do
      {
        v20 = 0;
        do
        {
          if (*v63 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v62 + 1) + 8 * v20);
          v22 = [OUTLINED_FUNCTION_0_87() bindingNameForRequirement:?];
          if (!v22)
          {
            return 4294935579;
          }

          v23 = v22;
          if (![OUTLINED_FUNCTION_0_87() pixelBufferForRequirement:?])
          {
            v24 = [objc_msgSend(OUTLINED_FUNCTION_0_87() "pixelBufferPoolForRequirement:"newPixelBuffer"")];
            [a2 setPixelBuffer:v24 forRequirement:v21];
            if (!v24)
            {
              return 4294935579;
            }

            CFRelease(v24);
          }

          if (([objc_msgSend(v21 "videoFormat")] & 1) != 0 || (objc_msgSend(v23, "UTF8String"), OUTLINED_FUNCTION_1_99(), espresso_network_bind_direct_cvpixelbuffer()))
          {
            if (![OUTLINED_FUNCTION_0_87() tensorForRequirement:?])
            {
              return 4294935579;
            }

            [v23 UTF8String];
            OUTLINED_FUNCTION_1_99();
            if (espresso_network_bind_buffer())
            {
              return 4294935586;
            }

            v25 = [OUTLINED_FUNCTION_0_87() addTensorInUseRequirement:?];
          }

          else
          {
            v25 = [OUTLINED_FUNCTION_0_87() addPixelBufferInUseRequirement:?];
          }

          ++v20;
        }

        while (v18 != v20);
        v16 = OUTLINED_FUNCTION_64(v25, v26, &v62, v61);
        v18 = v16;
      }

      while (v16);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v27 = *(v3 + 144);
    v28 = OUTLINED_FUNCTION_64(v16, v17, &v57, v56);
    if (v28)
    {
      v30 = v28;
      v31 = *v58;
LABEL_33:
      v32 = 0;
      while (1)
      {
        if (*v58 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = [OUTLINED_FUNCTION_0_87() bindingNameForRequirement:?];
        v34 = [OUTLINED_FUNCTION_0_87() tensorForRequirement:?];
        result = 4294935579;
        if (!v34 || !v33)
        {
          break;
        }

        if (![v33 length])
        {
          return 4294935579;
        }

        [v33 UTF8String];
        OUTLINED_FUNCTION_1_99();
        v35 = espresso_network_bind_buffer();
        if (v35)
        {
          return 4294935586;
        }

        if (v30 == ++v32)
        {
          v28 = OUTLINED_FUNCTION_64(v35, v36, &v57, v56);
          v30 = v28;
          if (v28)
          {
            goto LABEL_33;
          }

          goto LABEL_42;
        }
      }
    }

    else
    {
LABEL_42:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v37 = *(v3 + 152);
      result = OUTLINED_FUNCTION_64(v28, v29, &v52, v51);
      if (result)
      {
        v38 = result;
        v39 = *v53;
        v40 = *MEMORY[0x1E695E480];
LABEL_44:
        v41 = 0;
        while (1)
        {
          if (*v53 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v52 + 1) + 8 * v41);
          v43 = [a2 bindingNameForRequirement:v42];
          v44 = [a2 tensorForRequirement:v42];
          result = 4294935579;
          if (!v44 || !v43)
          {
            break;
          }

          if (![v43 length])
          {
            return 4294935579;
          }

          v45 = bweis_storageLengthInBytes(v44);
          if (*(v3 + 168) && v45)
          {
            goto LABEL_70;
          }

          [v43 UTF8String];
          OUTLINED_FUNCTION_1_99();
          v46 = espresso_network_bind_buffer();
          if (v46)
          {
            return 4294935586;
          }

          if (*(v3 + 168))
          {
LABEL_70:
            v48 = [BWEspressoInferenceProvider _surfacePropertiesForTensor:v3 bindingName:v44];
            if (!v48)
            {
              return 4294935576;
            }

            v46 = [*(v3 + 168) backingMemoryForMetadataRequirement:v42 bindingName:v43 surfaceProperties:v48];
            if (v46)
            {
              pixelBufferOut = 0;
              CVPixelBufferCreateWithIOSurface(v40, v46, 0, &pixelBufferOut);
              if (!pixelBufferOut)
              {
                return 4294935576;
              }

              [v43 UTF8String];
              v49 = espresso_network_bind_direct_cvpixelbuffer();
              v46 = pixelBufferOut;
              if (v49)
              {
                return 4294935586;
              }
            }
          }

          if (v38 == ++v41)
          {
            v38 = OUTLINED_FUNCTION_64(v46, v47, &v52, v51);
            result = 0;
            if (v38)
            {
              goto LABEL_44;
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)_surfacePropertiesForTensor:(uint64_t)result bindingName:(void *)name
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = 1278226488;
  v5 = bweis_storageTypeLengthInBytes(65552);
  switch(v5)
  {
    case 1:
LABEL_7:
      v6 = v5;
      goto LABEL_8;
    case 4:
      v4 = 1111970369;
      goto LABEL_7;
    case 2:
      v4 = 1278226536;
      v6 = 1;
LABEL_8:
      v7 = name[13];
      v8 = (name[12] - 1) / v6;
      v9 = name[11];
      v10 = name[10] * v6;
      v11 = (v10 * v5 - 1) & 0xFFFFFFFFFFFFFFC0;
      v12 = (v9 + v9 * v8) * v7;
      v13[0] = *MEMORY[0x1E696CE50];
      v14[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
      v13[1] = *MEMORY[0x1E696CE58];
      v14[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v11 + 64];
      v13[2] = *MEMORY[0x1E696CF58];
      v14[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v12];
      v13[3] = *MEMORY[0x1E696CFC0];
      v14[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      v13[4] = *MEMORY[0x1E696D130];
      v14[4] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v10];
      v13[5] = *MEMORY[0x1E696CF98];
      v14[5] = [MEMORY[0x1E696AEC0] stringWithFormat:@"BWInference %d", *(v3 + 16)];
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  }

  return 0;
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_2_38();
  }

  prepareForExecution = [(BWEspressoInferenceProvider *)self prepareForExecution];
  if (prepareForExecution)
  {
    v6 = prepareForExecution;
  }

  else if (espresso_plan_execute_sync())
  {
    v6 = -31710;
  }

  else
  {
    v6 = 0;
  }

  if (*v4 == 1)
  {
    kdebug_trace();
  }

  return v6;
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
  [provider cloneVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement removeAllObjects];
  if (provider)
  {
    v6 = *(provider + 14);
  }

  else
  {
    v6 = 0;
  }

  [(NSMutableDictionary *)self->_bindingNamesByRequirement addEntriesFromDictionary:v6];
  -[BWEspressoInferenceProvider setPropagatable:](self, "setPropagatable:", [provider propagatable]);
  return 0;
}

@end