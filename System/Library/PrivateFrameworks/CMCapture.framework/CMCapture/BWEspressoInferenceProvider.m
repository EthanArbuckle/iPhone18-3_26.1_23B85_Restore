@interface BWEspressoInferenceProvider
+ (void)initialize;
- (BWEspressoInferenceProvider)initWithType:(int)a3 networkURL:(id)a4 networkConfiguration:(id)a5 context:(id)a6 executionTarget:(int)a7 schedulerPriority:(unsigned int)a8 preventionReasons:(id)a9 resourceProvider:(id)a10 allowedCompressionDirection:(unsigned int)a11 concurrentSubmissionLimit:(unint64_t)a12 updateMetadataWithCropRect:(BOOL)a13;
- (BWInferenceSubmittable)submittable;
- (id)bindEspressoInput:(id)a3 fromAttachedMediaUsingKey:(id)a4 withVideoFormat:(id)a5 count:(unint64_t)a6;
- (id)bindEspressoInput:(id)a3 fromMetadataUsingKeys:(id)a4;
- (id)bindEspressoOutput:(id)a3 asAttachedMediaUsingKey:(id)a4 withVideoFormat:(id)a5 count:(unint64_t)a6;
- (id)bindEspressoOutput:(id)a3 asConsolidatedMetadataUsingKeys:(id)a4;
- (id)bindEspressoOutput:(id)a3 asMetadataUsingKey:(id)a4;
- (id)bindEspressoOutput:(id)a3 asMetadataUsingKeys:(id)a4;
- (id)bindOutputByCloningInputRequirement:(id)a3 toAttachedMediaUsingKey:(id)a4;
- (id)newStorage;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6;
- (int)prewarmUsingLimitedMemory:(BOOL)a3;
- (int)reconcileWithPlaceholderProvider:(id)a3;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (uint64_t)_ensureEspressoBindingsUsingStorage:(uint64_t)result;
- (uint64_t)_mapSchedulerToEspressoPriority:(uint64_t)result;
- (uint64_t)_prepareWithWorkQueue:(uint64_t)a1;
- (uint64_t)_surfacePropertiesForTensor:(uint64_t)result bindingName:(void *)a2;
- (void)dealloc;
- (void)setCustomInferenceIdentifier:(id)a3;
- (void)setPropagatable:(id)a3;
- (void)setTensorMemoryProvider:(id)a3;
@end

@implementation BWEspressoInferenceProvider

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWEspressoInferenceProvider)initWithType:(int)a3 networkURL:(id)a4 networkConfiguration:(id)a5 context:(id)a6 executionTarget:(int)a7 schedulerPriority:(unsigned int)a8 preventionReasons:(id)a9 resourceProvider:(id)a10 allowedCompressionDirection:(unsigned int)a11 concurrentSubmissionLimit:(unint64_t)a12 updateMetadataWithCropRect:(BOOL)a13
{
  v21.receiver = self;
  v21.super_class = BWEspressoInferenceProvider;
  v18 = [(BWEspressoInferenceProvider *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = a3;
    v18->_networkURL = [a4 copy];
    v19->_networkConfiguration = [a5 copy];
    v19->_executionTarget = a7;
    v19->_preventionReasons = [a9 copy];
    v19->_allowedCompressionDirection = a11;
    v19->_concurrentSubmissionLimit = a12;
    v19->_espressoPriority = [BWEspressoInferenceProvider _mapSchedulerToEspressoPriority:v19];
    v19->_context = a6;
    v19->_bindingNamesByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_cloneVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_inputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_outputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_updateMetadataWithCropRect = a13;
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
  v4 = [MEMORY[0x1E695DF70] array];
  [v4 addObjectsFromArray:self->_outputVideoRequirements];
  v5 = [MEMORY[0x1E695DF70] array];
  [v5 addObjectsFromArray:self->_outputVideoRequirements];
  [v5 addObjectsFromArray:self->_inputMetadataRequirements];
  [v5 addObjectsFromArray:self->_outputMetadataRequirements];
  v6 = [BWEspressoInferenceStorage alloc];
  bindingNamesByRequirement = self->_bindingNamesByRequirement;

  return [(BWEspressoInferenceStorage *)v6 initWithBindingNameByRequirement:bindingNamesByRequirement requirementsNeedingPixelBuffers:inputVideoRequirements requirementsNeedingPixelBufferPools:v4 requirementsNeedingTensors:v5];
}

- (BWInferenceSubmittable)submittable
{
  if ((*(self + 5) | 2) != 3)
  {
    return 0;
  }

  return self;
}

- (void)setCustomInferenceIdentifier:(id)a3
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != a3)
  {

    self->_customInferenceIdentifier = a3;
  }
}

- (void)setPropagatable:(id)a3
{
  propagator = self->_propagator;
  if (propagator != a3)
  {

    self->_propagator = a3;
  }
}

- (void)setTensorMemoryProvider:(id)a3
{
  tensorMemoryProvider = self->_tensorMemoryProvider;
  if (tensorMemoryProvider != a3)
  {

    self->_tensorMemoryProvider = a3;
  }
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6
{
  espressoPlan = self->_espressoPlan;
  v9 = MEMORY[0x1E695FF58];
  if (!espressoPlan || espressoPlan != self->_espressoNetwork.plan)
  {
    goto LABEL_7;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(BWEspressoInferenceProvider *)self type:a3];
    kdebug_trace();
  }

  v11 = [(BWEspressoInferenceProvider *)self _ensureEspressoBindingsUsingStorage:a4];
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

  if (a6)
  {
    (*(a6 + 2))(a6, v12, self);
  }

  return v12;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
{
  v11 = [(BWInferencePropagatable *)self->_propagator allowsAsyncPropagation:a3];
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

  v14 = [(BWEspressoInferenceProvider *)self _ensureEspressoBindingsUsingStorage:a4];
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
    if (a6)
    {
      if (espresso_plan_submit())
      {
        v14 = 4294935586;
        if (!a7)
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
  if (!a7)
  {
    return v14;
  }

LABEL_16:
  if (v13)
  {
    (*(a7 + 2))(a7, v14, self);
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

- (id)bindEspressoInput:(id)a3 fromAttachedMediaUsingKey:(id)a4 withVideoFormat:(id)a5 count:(unint64_t)a6
{
  v8 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:a4 videoFormat:a5 count:a6];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v8];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:a3 forKeyedSubscript:v8];

  return v8;
}

- (id)bindEspressoInput:(id)a3 fromMetadataUsingKeys:(id)a4
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:a4];
  [(NSMutableArray *)self->_inputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:a3 forKeyedSubscript:v6];

  return v6;
}

- (id)bindEspressoOutput:(id)a3 asAttachedMediaUsingKey:(id)a4 withVideoFormat:(id)a5 count:(unint64_t)a6
{
  v8 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:a4 videoFormat:a5 count:a6];
  [(NSMutableArray *)self->_outputVideoRequirements addObject:v8];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:a3 forKeyedSubscript:v8];

  return v8;
}

- (id)bindOutputByCloningInputRequirement:(id)a3 toAttachedMediaUsingKey:(id)a4
{
  v5 = [[BWInferenceCloneVideoRequirement alloc] initWithAttachedMediaKey:a4 sourceVideoRequirement:a3];
  [(NSMutableArray *)self->_cloneVideoRequirements addObject:v5];

  return v5;
}

- (id)bindEspressoOutput:(id)a3 asMetadataUsingKey:(id)a4
{
  v7 = [BWInferenceMetadataRequirement alloc];
  v10 = a4;
  v8 = -[BWInferenceMetadataRequirement initWithMetadataKeys:mappingOption:](v7, "initWithMetadataKeys:mappingOption:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1], 1);
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v8];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:a3 forKeyedSubscript:v8];
  return v8;
}

- (id)bindEspressoOutput:(id)a3 asMetadataUsingKeys:(id)a4
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:a4];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:a3 forKeyedSubscript:v6];

  return v6;
}

- (id)bindEspressoOutput:(id)a3 asConsolidatedMetadataUsingKeys:(id)a4
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:a4 mappingOption:2];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:a3 forKeyedSubscript:v6];

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

- (uint64_t)_prepareWithWorkQueue:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695FF58];
  if (*(a1 + 80))
  {
    goto LABEL_39;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    [a1 type];
    OUTLINED_FUNCTION_2_38();
  }

  BWInferenceTypeDescription(*(a1 + 16));
  mach_absolute_time();
  v5 = [*(a1 + 72) prepareForInference];
  if (v5)
  {
    goto LABEL_49;
  }

  plan = [*(a1 + 72) espressoContext];
  if (!plan)
  {
    goto LABEL_40;
  }

  plan = espresso_create_plan();
  *(a1 + 80) = plan;
  if (!plan)
  {
    goto LABEL_40;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = [*(a1 + 48) fileSystemRepresentation];
  [a1 executionTarget];
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

  if ([a1 submittable] && *(a1 + 20) == 3 && (a2 && espresso_plan_set_execution_queue() || *(a1 + 40) >= 2uLL && espresso_plan_submit_set_multiple_buffering()) || *(a1 + 104) && espresso_plan_set_priority())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = 4294935586;
    LODWORD(plan) = 1;
    goto LABEL_41;
  }

  if ([*(a1 + 72) configureIntermediateBufferSharingForPlanPrebuild:*(a1 + 80)])
  {
    goto LABEL_50;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v9 UTF8String];
    v5 = espresso_network_select_configuration();
    if (v5)
    {
LABEL_49:
      os_log_and_send_and_compose_flags_and_os_log_type = v5;
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

  if ([*(a1 + 72) configureIntermediateBufferSharingForPlanPostbuild:*(a1 + 80)])
  {
LABEL_50:
    OUTLINED_FUNCTION_3_78();
    FigDebugAssert3();
    goto LABEL_51;
  }

  if (!*(a1 + 160))
  {
    *(a1 + 160) = [[BWInferenceSampleBufferPropagator alloc] initWithVideoRequirements:*(a1 + 128) cloneRequirements:*(a1 + 136) metadataRequirements:*(a1 + 152) updateMetadataWithCropRect:*(a1 + 176)];
  }

  *(a1 + 184) = objc_alloc_init(MEMORY[0x1E695DF70]);
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
    if (*(a1 + 80))
    {
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      espresso_plan_destroy();
      *(a1 + 80) = 0;
    }

    *(a1 + 184) = 0;
  }

  if (*v3 == 1)
  {
    [a1 type];
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
    v4 = [result inputVideoRequirements];
    v5 = [v4 countByEnumeratingWithState:&v67 objects:v66 count:16];
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
            objc_enumerationMutation(v4);
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

- (uint64_t)_surfacePropertiesForTensor:(uint64_t)result bindingName:(void *)a2
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
      v7 = a2[13];
      v8 = (a2[12] - 1) / v6;
      v9 = a2[11];
      v10 = a2[10] * v6;
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

- (int)prewarmUsingLimitedMemory:(BOOL)a3
{
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_2_38();
  }

  v5 = [(BWEspressoInferenceProvider *)self prepareForExecution];
  if (v5)
  {
    v6 = v5;
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

- (int)reconcileWithPlaceholderProvider:(id)a3
{
  type = self->_type;
  if (type != [a3 type])
  {
    return -31783;
  }

  [a3 customInferenceIdentifier];
  if (![OUTLINED_FUNCTION_8() isEqualToString:?])
  {
    return -31783;
  }

  [(NSMutableArray *)self->_inputVideoRequirements removeAllObjects];
  [a3 inputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_inputMetadataRequirements removeAllObjects];
  [a3 inputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputVideoRequirements removeAllObjects];
  [a3 outputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputMetadataRequirements removeAllObjects];
  [a3 outputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_cloneVideoRequirements removeAllObjects];
  [a3 cloneVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement removeAllObjects];
  if (a3)
  {
    v6 = *(a3 + 14);
  }

  else
  {
    v6 = 0;
  }

  [(NSMutableDictionary *)self->_bindingNamesByRequirement addEntriesFromDictionary:v6];
  -[BWEspressoInferenceProvider setPropagatable:](self, "setPropagatable:", [a3 propagatable]);
  return 0;
}

@end