@interface BWE5InferenceProvider
+ (void)initialize;
- (BWE5InferenceProvider)initWithType:(int)type networkURL:(id)l networkConfiguration:(id)configuration context:(id)context executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons resourceProvider:(id)self0 allowedCompressionDirection:(unsigned int)self1 updateMetadataWithCropRect:(BOOL)self2;
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
- (int)prewarmUsingLimitedMemory:(BOOL)memory sharedE5ANEMemoryProvider:(id)provider;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (uint64_t)_applyRotationOnPixelBuffer:(__CVBuffer *)buffer dstPixelBuffer:(int)pixelBuffer rotationDegrees:;
- (uint64_t)_ensureBindingsUsingStorage:(int)storage requiredOutputRotationDegrees:(uint64_t)degrees newIntermediateOutputBufferByVideoRequirementOut:;
- (uint64_t)_prepareWithSharedANEMemoryProvider:(VTPixelRotationSessionRef *)pixelRotationSessionOut;
- (uint64_t)_unbindUsingStorage:(uint64_t)storage;
- (void)dealloc;
- (void)setCustomInferenceIdentifier:(id)identifier;
- (void)setPropagatable:(id)propagatable;
@end

@implementation BWE5InferenceProvider

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWE5InferenceProvider)initWithType:(int)type networkURL:(id)l networkConfiguration:(id)configuration context:(id)context executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons resourceProvider:(id)self0 allowedCompressionDirection:(unsigned int)self1 updateMetadataWithCropRect:(BOOL)self2
{
  v22.receiver = self;
  v22.super_class = BWE5InferenceProvider;
  v16 = [(BWE5InferenceProvider *)&v22 init:*&type];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    v16->_executionTarget = target;
    v16->_networkURL = [l copy];
    if (configuration)
    {
      v18 = [configuration copy];
    }

    else
    {
      v18 = @"main";
    }

    v17->_networkConfiguration = &v18->isa;
    MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue();
    if (MachThreadPriorityValue >= FigThreadGetMachThreadPriorityValue())
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    v17->_anePriority = v20;
    v17->_preventionReasons = [reasons copy];
    v17->_allowedCompressionDirection = 0;
    v17->_updateMetadataWithCropRect = rect;
    v17->_bindingNamesByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17->_cloneVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17->_inputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17->_outputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17->_sharedResourceType = 1;
    objc_storeWeak(&v17->_sharedResourcePreparatory, v17);
  }

  return v17;
}

- (void)dealloc
{
  e5rt_execution_stream_operation_release();
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    VTPixelRotationSessionInvalidate(rotationSession);
    v4 = self->_rotationSession;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  e5rt_execution_stream_release();
  v5.receiver = self;
  v5.super_class = BWE5InferenceProvider;
  [(BWE5InferenceProvider *)&v5 dealloc];
}

- (id)newStorage
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_inputMetadataRequirements];
  [array addObjectsFromArray:self->_outputMetadataRequirements];
  v4 = [BWE5InferenceStorage alloc];
  bindingNamesByRequirement = self->_bindingNamesByRequirement;
  inputVideoRequirements = self->_inputVideoRequirements;
  outputVideoRequirements = self->_outputVideoRequirements;

  return [(BWE5InferenceStorage *)v4 initWithBindingNameByRequirement:bindingNamesByRequirement requirementsNeedingPixelBuffers:inputVideoRequirements requirementsNeedingPixelBufferPools:outputVideoRequirements requirementsNeedingTensors:array];
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

- (BWInferenceSubmittable)submittable
{
  if (*(self + 136))
  {
    return 0;
  }

  return self;
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

- (uint64_t)_prepareWithSharedANEMemoryProvider:(VTPixelRotationSessionRef *)pixelRotationSessionOut
{
  if (!pixelRotationSessionOut)
  {
    return 0;
  }

  if (!pixelRotationSessionOut[7])
  {
    pixelRotationSessionOut[7] = [[BWInferenceSampleBufferPropagator alloc] initWithVideoRequirements:pixelRotationSessionOut[12] cloneRequirements:pixelRotationSessionOut[13] metadataRequirements:pixelRotationSessionOut[15] updateMetadataWithCropRect:*(pixelRotationSessionOut + 72)];
  }

  v5 = (pixelRotationSessionOut + 18);
  v4 = pixelRotationSessionOut[18];
  if (*(pixelRotationSessionOut + 136) == 1)
  {
    if (!v4)
    {
      VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], pixelRotationSessionOut + 18);
      VTSessionSetProperty(*v5, *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
    }
  }

  else if (v4)
  {
    VTPixelRotationSessionInvalidate(v4);
    if (*v5)
    {
      CFRelease(*v5);
      *v5 = 0;
    }
  }

  v6 = MEMORY[0x1E695FF58];
  if (pixelRotationSessionOut[19])
  {
    goto LABEL_46;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(VTPixelRotationSessionRef *)pixelRotationSessionOut type];
    OUTLINED_FUNCTION_2_38();
  }

  BWInferenceTypeDescription(*(pixelRotationSessionOut + 44));
  mach_absolute_time();
  [(OpaqueVTPixelRotationSession *)pixelRotationSessionOut[2] fileSystemRepresentation];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BWInference type %d", *(pixelRotationSessionOut + 44)];
  [(OpaqueVTPixelRotationSession *)pixelRotationSessionOut[3] UTF8String];
  if (e5rt_precompiled_compute_op_create_options_create())
  {
    goto LABEL_60;
  }

  [v7 UTF8String];
  if (e5rt_precompiled_compute_op_create_options_set_operation_name() || e5rt_precompiled_compute_op_create_options_set_allocate_intermediate_buffers())
  {
    goto LABEL_61;
  }

  if (![+[BWMemoryPool poolIdentifier] sharedMemoryPool]
  {
    OUTLINED_FUNCTION_3_94();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v18))
    {
      v11 = v19;
    }

    else
    {
      v11 = v19 & 0xFFFFFFFE;
    }

    if (v11)
    {
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_67();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_25;
  }

  if (!e5rt_precompiled_compute_op_create_options_set_iosurface_memory_pool_id())
  {
LABEL_25:
    v17 = 0;
    if (!a2 || (v17 = [a2 fetchANEMemoryProviderForNetwork:{-[OpaqueVTPixelRotationSession path](pixelRotationSessionOut[2], "path")}]) == 0)
    {
      v12 = 0;
      goto LABEL_30;
    }

    if (!e5rt_precompiled_compute_op_create_options_set_custom_ane_memory_provider())
    {
      v12 = 1;
LABEL_30:
      if (!e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options() && !e5rt_precompiled_compute_op_create_options_release())
      {
        if (a2)
        {
          v13 = v12;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          goto LABEL_39;
        }

        if (!e5rt_ane_memory_provider_create())
        {
          if ([a2 registerANEMemoryProvider:v17 forNetwork:{-[OpaqueVTPixelRotationSession path](pixelRotationSessionOut[2], "path")}])
          {
            e5rt_ane_memory_provider_release();
          }

LABEL_39:
          if (e5rt_execution_stream_create())
          {
            v8 = 0;
            v9 = 4294935594;
            goto LABEL_49;
          }

          if (dword_1EB58E400)
          {
            OUTLINED_FUNCTION_3_94();
            v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (os_log_type_enabled(v14, v18))
            {
              v15 = v19;
            }

            else
            {
              v15 = v19 & 0xFFFFFFFE;
            }

            if (v15)
            {
              mach_absolute_time();
              FigHostTimeToNanoseconds();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7_67();
            v8 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_48;
          }

LABEL_46:
          v9 = 0;
          v8 = 1;
          goto LABEL_49;
        }
      }
    }

LABEL_60:
    OUTLINED_FUNCTION_0_108();
    FigDebugAssert3();
LABEL_61:
    v8 = 0;
LABEL_48:
    v9 = 0;
    goto LABEL_49;
  }

  v8 = 0;
  v9 = 4294935586;
LABEL_49:
  if (*v6 == 1)
  {
    [(VTPixelRotationSessionRef *)pixelRotationSessionOut type];
    OUTLINED_FUNCTION_7_22(0x485u);
    kdebug_trace();
  }

  if (a2)
  {
    [a2 completeANEMemoryProviderCreationForNetwork:-[OpaqueVTPixelRotationSession path](pixelRotationSessionOut[2] wasSuccessful:{"path"), v8}];
  }

  if ((v8 & 1) == 0)
  {
    e5rt_get_last_error_message();
    e5rt_execution_stream_operation_release();
    e5rt_execution_stream_release();
    return 4294935586;
  }

  return v9;
}

- (uint64_t)_ensureBindingsUsingStorage:(int)storage requiredOutputRotationDegrees:(uint64_t)degrees newIntermediateOutputBufferByVideoRequirementOut:
{
  if (!self)
  {
    return 0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v88 = v8;
  if (!storage || degrees)
  {
    HIDWORD(v85) = storage;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v16 = self[11];
    v17 = OUTLINED_FUNCTION_12_45(v8, v9, v10, v11, v12, v13, v14, v15, v74, v77, obj, v85, v8, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v145, v147, v149, v151, v153, v155, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1), v174, *(&v174 + 1), v175, *(&v175 + 1), v176, *(&v176 + 1), v177);
    if (v17)
    {
      v18 = v17;
      v19 = *v180;
LABEL_6:
      v20 = 0;
      while (1)
      {
        if (*v180 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v179 + 1) + 8 * v20);
        v22 = [OUTLINED_FUNCTION_5_78() pixelBufferForRequirement:?];
        if (!v22 || (v23 = v22, (v24 = [OUTLINED_FUNCTION_5_78() bindingNameForRequirement:?]) == 0))
        {
          v71 = 4294935584;
          goto LABEL_63;
        }

        v178 = 0;
        [v24 UTF8String];
        if (e5rt_execution_stream_operation_retain_input_port())
        {
          break;
        }

        if (![(BWE5MultipleLayoutInferenceProvider *)self _bindE5Port:v178 toPixelBuffer:v23])
        {
          goto LABEL_62;
        }

        v25 = e5rt_io_port_release();
        if (v25)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = OUTLINED_FUNCTION_12_45(v25, v26, v27, v28, v29, v30, v31, v32, attachedMediaKey, v78, obja, v86, v88, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v146, v148, v150, v152, v154, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1), v174, *(&v174 + 1), v175, *(&v175 + 1), v176, *(&v176 + 1), v177);
          if (v18)
          {
            goto LABEL_6;
          }

          goto LABEL_16;
        }
      }

LABEL_59:
      e5rt_get_last_error_message();
      if (!v21)
      {
        goto LABEL_62;
      }

      v72 = OUTLINED_FUNCTION_5_78();
    }

    else
    {
LABEL_16:
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      degreesCopy = degrees;
      objb = self[12];
      v33 = [objb countByEnumeratingWithState:&v173 objects:&v157 count:16];
      v41 = HIDWORD(v86);
      if (!v33)
      {
LABEL_35:
        v55 = self[15];
        v56 = OUTLINED_FUNCTION_16(v33, v34, v35, v36, v37, v38, v39, v40, attachedMediaKey, degreesCopy, objb, v86, v88, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, 0);
        if (v56)
        {
          v57 = v56;
          v58 = MEMORY[0];
          while (2)
          {
            for (i = 0; i != v57; ++i)
            {
              if (MEMORY[0] != v58)
              {
                objc_enumerationMutation(v55);
              }

              v21 = *(8 * i);
              v60 = [OUTLINED_FUNCTION_5_78() tensorPortForRequirement:?];
              if (!v60)
              {
                v68 = [OUTLINED_FUNCTION_5_78() bindingNameForRequirement:?];
                if (!v68)
                {
                  v71 = 4294935577;
                  goto LABEL_63;
                }

                v69 = v68;
                v70 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
                [v69 UTF8String];
                if (e5rt_execution_stream_operation_retain_output_port())
                {
                  free(v70);
                  goto LABEL_59;
                }

                [OUTLINED_FUNCTION_6_75() setTensorPort:? forRequirement:?];
                v178 = 0;
                if (e5rt_io_port_retain_tensor_desc())
                {
                  goto LABEL_59;
                }

                v91 = 0;
                if (e5rt_tensor_desc_alloc_buffer_object())
                {
                  goto LABEL_59;
                }

                if (e5rt_io_port_bind_buffer_object())
                {
                  goto LABEL_59;
                }

                if (e5rt_buffer_object_release())
                {
                  goto LABEL_59;
                }

                v60 = e5rt_tensor_desc_release();
                if (v60)
                {
                  goto LABEL_59;
                }
              }
            }

            v57 = OUTLINED_FUNCTION_16(v60, v61, v62, v63, v64, v65, v66, v67, v76, v80, objc, v87, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142);
            if (v57)
            {
              continue;
            }

            break;
          }
        }

        v71 = 0;
        if (v80)
        {
          *v80 = [v88 copy];
        }

        goto LABEL_63;
      }

      v42 = v33;
      v43 = *v174;
      LODWORD(v86) = SHIDWORD(v86) % 180;
LABEL_18:
      v44 = 0;
      while (1)
      {
        if (*v174 != v43)
        {
          objc_enumerationMutation(objb);
        }

        v45 = *(*(&v173 + 1) + 8 * v44);
        v46 = [OUTLINED_FUNCTION_6_75() bindingNameForRequirement:?];
        if (!v46)
        {
LABEL_52:
          v71 = 4294935579;
          goto LABEL_63;
        }

        v47 = v46;
        v48 = [OUTLINED_FUNCTION_6_75() pixelBufferForRequirement:?];
        if (!v48)
        {
          v48 = [objc_msgSend(OUTLINED_FUNCTION_6_75() "pixelBufferPoolForRequirement:"newPixelBuffer"")];
          [a2 setPixelBuffer:v48 forRequirement:v45];
          if (!v48)
          {
            goto LABEL_52;
          }

          CFRelease(v48);
        }

        v178 = 0;
        [v47 UTF8String];
        if (e5rt_execution_stream_operation_retain_output_port())
        {
          break;
        }

        if (v41)
        {
          Width = CVPixelBufferGetWidth(v48);
          v50 = Width | (CVPixelBufferGetHeight(v48) << 32);
          PixelFormatType = CVPixelBufferGetPixelFormatType(v48);
          v52 = __ROR8__(v50, 32);
          if (v86)
          {
            v50 = v52;
          }

          v53 = MEMORY[0x1E696AEC0];
          attachedMediaKey = [v45 attachedMediaKey];
          v54 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:v50 pixelFormat:PixelFormatType name:objc_msgSend(v53 memoryPool:"stringWithFormat:", @"OnDemand-EspressoE5-Output-Rotation-%@", +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool")), "newPixelBuffer"];
          if (!v54)
          {
            v71 = 4294935578;
            goto LABEL_63;
          }

          v48 = v54;
          [v88 setObject:v54 forKeyedSubscript:v45];
          CVPixelBufferRelease(v48);
          v41 = HIDWORD(v86);
        }

        if (![(BWE5MultipleLayoutInferenceProvider *)self _bindE5Port:v178 toPixelBuffer:v48])
        {
          goto LABEL_62;
        }

        if (e5rt_io_port_release())
        {
          break;
        }

        if (v42 == ++v44)
        {
          v33 = [objb countByEnumeratingWithState:&v173 objects:&v157 count:16];
          v42 = v33;
          if (v33)
          {
            goto LABEL_18;
          }

          goto LABEL_35;
        }
      }

      e5rt_get_last_error_message();
      if (!v45)
      {
        goto LABEL_62;
      }

      v72 = OUTLINED_FUNCTION_6_75();
    }

    [v72 bindingNameForRequirement:?];
  }

LABEL_62:
  v71 = 4294935586;
LABEL_63:

  return v71;
}

- (uint64_t)_unbindUsingStorage:(uint64_t)storage
{
  if (result)
  {
    v9 = result;
    v10 = *(result + 88);
    v11 = OUTLINED_FUNCTION_10_50(result, a2, storage, a4, a5, a6, a7, a8, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(v10);
          }

          [objc_msgSend(a2 bindingNameForRequirement:{*(8 * i)), "UTF8String"}];
          e5rt_execution_stream_operation_retain_input_port();
          e5rt_io_port_bind_surface_object();
          v15 = e5rt_io_port_release();
        }

        v12 = OUTLINED_FUNCTION_10_50(v15, v16, v17, v18, v19, v20, v21, v22, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76);
      }

      while (v12);
    }

    v23 = *(v9 + 96);
    OUTLINED_FUNCTION_43();
    result = [v23 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v24 = result;
      v25 = MEMORY[0];
      do
      {
        v26 = 0;
        do
        {
          if (MEMORY[0] != v25)
          {
            objc_enumerationMutation(v23);
          }

          [objc_msgSend(a2 bindingNameForRequirement:{*(8 * v26)), "UTF8String"}];
          e5rt_execution_stream_operation_retain_output_port();
          e5rt_io_port_bind_surface_object();
          e5rt_io_port_release();
          ++v26;
        }

        while (v24 != v26);
        OUTLINED_FUNCTION_43();
        result = [v23 countByEnumeratingWithState:? objects:? count:?];
        v24 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)_applyRotationOnPixelBuffer:(__CVBuffer *)buffer dstPixelBuffer:(int)pixelBuffer rotationDegrees:
{
  if (result)
  {
    v6 = result;
    result = FigCaptureVTRotationFromDegrees(pixelBuffer);
    if (result)
    {
      result = VTSessionSetProperty(*(v6 + 144), *MEMORY[0x1E6983D98], result);
      if (!result)
      {
        v7 = *(v6 + 144);

        return VTPixelRotationSessionRotateImage(v7, a2, buffer);
      }
    }
  }

  return result;
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory sharedE5ANEMemoryProvider:(id)provider
{
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_2_38();
  }

  v7 = [(BWE5InferenceProvider *)&self->super.isa _prepareWithSharedANEMemoryProvider:provider];
  if (*v6 == 1)
  {
    kdebug_trace();
  }

  return v7;
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  if ([(BWE5InferenceProvider *)self prewarmingSharedResourceType]== 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    BWInferenceTypeDescription([(BWE5InferenceProvider *)self type]);
    v5 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(11, v5, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Inference/Espresso/E5/BWE5InferenceProvider.m", 593, @"LastShownDate:BWE5InferenceProvider.m:593", @"LastShownBuild:BWE5InferenceProvider.m:593", 0);
    free(v5);
  }

  return [(BWE5InferenceProvider *)&self->super.isa _prepareWithSharedANEMemoryProvider:?];
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(BWE5InferenceProvider *)self type:buffer];
    OUTLINED_FUNCTION_2_38();
  }

  v32[0] = 0;
  if (self->_portraitOrientationSupportEnabled)
  {
    v10 = [objc_msgSend(storage "mutableInferenceMetadata")];
    if (!v10)
    {
      v24 = 4294935577;
      goto LABEL_29;
    }

    intValue = [v10 intValue];
  }

  else
  {
    intValue = 0;
  }

  v12 = [(BWE5InferenceProvider *)self _ensureBindingsUsingStorage:storage requiredOutputRotationDegrees:intValue newIntermediateOutputBufferByVideoRequirementOut:v32];
  if (v12)
  {
    v24 = v12;
    goto LABEL_29;
  }

  if (self->_executionTarget == 3 && e5rt_execution_stream_set_ane_execution_priority() || e5rt_execution_stream_encode_operation() || e5rt_execution_stream_execute_sync())
  {
    goto LABEL_25;
  }

  if (!intValue)
  {
    goto LABEL_23;
  }

  outputVideoRequirements = self->_outputVideoRequirements;
  OUTLINED_FUNCTION_43();
  v14 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v16 = MEMORY[0];
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (MEMORY[0] != v16)
      {
        objc_enumerationMutation(outputVideoRequirements);
      }

      v18 = *(8 * i);
      v19 = [v32[0] objectForKeyedSubscript:v18];
      if (!v19 || (v20 = v19, (v21 = [storage pixelBufferForRequirement:v18]) == 0))
      {
        v24 = 4294935594;
LABEL_28:
        v9 = MEMORY[0x1E695FF58];
        goto LABEL_29;
      }

      v22 = [(BWE5InferenceProvider *)self _applyRotationOnPixelBuffer:v20 dstPixelBuffer:v21 rotationDegrees:intValue];
      if (v22)
      {
        v24 = v22;
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_43();
    v15 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v23 = e5rt_execution_stream_reset();
  v9 = MEMORY[0x1E695FF58];
  if (!v23)
  {
    v24 = 0;
    goto LABEL_29;
  }

LABEL_25:
  e5rt_get_last_error_message();
  v24 = 4294935586;
LABEL_29:
  if (*v9 == 1)
  {
    [(BWE5InferenceProvider *)self type];
    OUTLINED_FUNCTION_7_22(0x48Du);
    kdebug_trace();
  }

  (*(handler + 2))(handler, v24, self);
  [(BWE5InferenceProvider *)self _unbindUsingStorage:storage, v25, v26, v27, v28, v29, v30];

  return v24;
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
    v6 = *(provider + 10);
  }

  else
  {
    v6 = 0;
  }

  [(NSMutableDictionary *)self->_bindingNamesByRequirement addEntriesFromDictionary:v6];
  -[BWE5InferenceProvider setPropagatable:](self, "setPropagatable:", [provider propagatable]);
  portraitOrientationSupportEnabled = [provider portraitOrientationSupportEnabled];
  result = 0;
  self->_portraitOrientationSupportEnabled = portraitOrientationSupportEnabled;
  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(BWE5InferenceProvider *)self type:buffer];
    OUTLINED_FUNCTION_2_38();
  }

  v10 = [(BWE5InferenceProvider *)self _ensureBindingsUsingStorage:storage requiredOutputRotationDegrees:0 newIntermediateOutputBufferByVideoRequirementOut:0];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if ((self->_executionTarget != 3 || !e5rt_execution_stream_set_ane_execution_priority()) && !e5rt_execution_stream_encode_operation() && !e5rt_execution_stream_submit_async())
    {
      LODWORD(v11) = 0;
      return v11;
    }

    e5rt_get_last_error_message();
    v11 = 4294935586;
  }

  (*(handler + 2))(handler, v11, self);
  return v11;
}

uint64_t __107__BWE5InferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  e5rt_execution_stream_reset();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [*(a1 + 32) type];
    kdebug_trace();
  }

  (*(*(a1 + 48) + 16))();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [(BWE5InferenceProvider *)v8 _unbindUsingStorage:v9, v2, v3, v4, v5, v6, v7];
}

@end