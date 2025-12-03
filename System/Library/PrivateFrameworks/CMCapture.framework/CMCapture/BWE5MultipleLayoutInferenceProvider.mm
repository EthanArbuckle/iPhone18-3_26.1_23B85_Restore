@interface BWE5MultipleLayoutInferenceProvider
+ (void)initialize;
- (BOOL)_bindE5Port:(__CVBuffer *)port toPixelBuffer:;
- (BWE5MultipleLayoutInferenceProvider)initWithType:(int)type networkURL:(id)l networkConfigurationsByLayout:(id)layout defaultLayout:(unsigned int)defaultLayout executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons allowedCompressionDirection:(unsigned int)self0 updateMetadataWithCropRect:(BOOL)self1;
- (__CVBuffer)_createAndRotatedOnDemandPixelBufferWithPixelBuffer:(int)buffer rotationDegrees:;
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
- (uint64_t)_anePriorityForSchedulerPriority:(uint64_t)result;
- (uint64_t)_applyRotationOnPixelBuffer:(__CVBuffer *)buffer dstPixelBuffer:(int)pixelBuffer rotationDegrees:;
- (uint64_t)_exifOrientationWithStorage:(uint64_t)result;
- (uint64_t)_prepareWithSharedANEMemoryProvider:(VTPixelRotationSessionRef *)pixelRotationSessionOut;
- (void)dealloc;
- (void)setCustomInferenceIdentifier:(id)identifier;
- (void)setPropagatable:(id)propagatable;
@end

@implementation BWE5MultipleLayoutInferenceProvider

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWE5MultipleLayoutInferenceProvider)initWithType:(int)type networkURL:(id)l networkConfigurationsByLayout:(id)layout defaultLayout:(unsigned int)defaultLayout executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons allowedCompressionDirection:(unsigned int)self0 updateMetadataWithCropRect:(BOOL)self1
{
  v20.receiver = self;
  v20.super_class = BWE5MultipleLayoutInferenceProvider;
  v16 = [(BWE5MultipleLayoutInferenceProvider *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    v16->_executionTarget = target;
    v16->_networkURL = [l copy];
    v17->_networkConfigurationsByLayout = [layout copy];
    v17->_defaultLayout = defaultLayout;
    v17->_anePriority = [BWE5MultipleLayoutInferenceProvider _anePriorityForSchedulerPriority:v17];
    v17->_preventionReasons = [reasons copy];
    v17->_allowedCompressionDirection = 0;
    v17->_updateMetadataWithCropRect = rect;
    v17->_bindingNamesByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17->_cloneVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17->_inputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17->_operationsByNetworkLayout[0] = 0;
    v17->_operationsByNetworkLayout[1] = 0;
    v17->_outputMetadataRequirements = v19;
    v17->_sharedResourceType = 1;
    objc_storeWeak(&v17->_sharedResourcePreparatory, v17);
  }

  return v17;
}

- (void)dealloc
{
  VTPixelRotationSessionInvalidate(self->_rotationSession);
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    CFRelease(rotationSession);
  }

  e5rt_execution_stream_release();
  if (self->_operationsByNetworkLayout[0])
  {
    e5rt_execution_stream_operation_release();
    self->_operationsByNetworkLayout[0] = 0;
  }

  if (self->_operationsByNetworkLayout[1])
  {
    e5rt_execution_stream_operation_release();
    self->_operationsByNetworkLayout[1] = 0;
  }

  v4.receiver = self;
  v4.super_class = BWE5MultipleLayoutInferenceProvider;
  [(BWE5MultipleLayoutInferenceProvider *)&v4 dealloc];
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

- (void)setPropagatable:(id)propagatable
{
  propagator = self->_propagator;
  if (propagator != propagatable)
  {

    self->_propagator = propagatable;
  }
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
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

- (uint64_t)_anePriorityForSchedulerPriority:(uint64_t)result
{
  if (result)
  {
    MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue();
    if (MachThreadPriorityValue >= FigThreadGetMachThreadPriorityValue())
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (BOOL)_bindE5Port:(__CVBuffer *)port toPixelBuffer:
{
  if (result)
  {
    result = 0;
    if (!e5rt_io_port_is_tensor())
    {
      CVPixelBufferGetIOSurface(port);
      if (!e5rt_surface_object_create_from_iosurface() && !e5rt_io_port_bind_surface_object() && !e5rt_surface_object_release())
      {
        return 1;
      }
    }
  }

  return result;
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

  if (!pixelRotationSessionOut[19])
  {
    VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], pixelRotationSessionOut + 19);
    VTSessionSetProperty(pixelRotationSessionOut[19], *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
  }

  if (!pixelRotationSessionOut[20])
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [(VTPixelRotationSessionRef *)pixelRotationSessionOut type];
      OUTLINED_FUNCTION_2_38();
    }

    BWInferenceTypeDescription(*(pixelRotationSessionOut + 46));
    mach_absolute_time();
    [(OpaqueVTPixelRotationSession *)pixelRotationSessionOut[2] fileSystemRepresentation];
    [-[OpaqueVTPixelRotationSession objectForKeyedSubscript:](pixelRotationSessionOut[3] objectForKeyedSubscript:{&unk_1F2243210), "UTF8String"}];
    if (e5rt_precompiled_compute_op_create_options_create() || ([-[OpaqueVTPixelRotationSession objectForKeyedSubscript:](pixelRotationSessionOut[3] objectForKeyedSubscript:{&unk_1F2243228), "UTF8String"}], e5rt_precompiled_compute_op_create_options_create()))
    {
      v5 = 4294935594;
      goto LABEL_59;
    }

    [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"BWInference type %d_4_3", *(pixelRotationSessionOut + 46)), "UTF8String"];
    options_set_operation_name = e5rt_precompiled_compute_op_create_options_set_operation_name();
    if (!options_set_operation_name)
    {
      [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"BWInference type %d_3_4", *(pixelRotationSessionOut + 46)), "UTF8String"];
      options_set_operation_name = e5rt_precompiled_compute_op_create_options_set_operation_name();
      if (!options_set_operation_name)
      {
        if ([+[BWMemoryPool poolIdentifier] sharedMemoryPool]
        {
          if (e5rt_precompiled_compute_op_create_options_set_iosurface_memory_pool_id() || e5rt_precompiled_compute_op_create_options_set_iosurface_memory_pool_id())
          {
            v5 = 4294935586;
LABEL_59:
            v10 = 1;
            goto LABEL_49;
          }
        }

        else
        {
          OUTLINED_FUNCTION_6_24();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v15))
          {
            v7 = v16;
          }

          else
          {
            v7 = v16 & 0xFFFFFFFE;
          }

          if (v7)
          {
            OUTLINED_FUNCTION_5();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_8_20();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v14 = 0;
        if (a2 && (v14 = [a2 fetchANEMemoryProviderForNetwork:{-[OpaqueVTPixelRotationSession path](pixelRotationSessionOut[2], "path")}]) != 0)
        {
          if (e5rt_precompiled_compute_op_create_options_set_custom_ane_memory_provider() || e5rt_precompiled_compute_op_create_options_set_custom_ane_memory_provider())
          {
            goto LABEL_58;
          }

          v8 = 1;
        }

        else
        {
          v8 = 0;
        }

        options_set_operation_name = e5rt_execution_stream_operation_create_resource_sharing_precompiled_compute_operations_with_multiple_options();
        if (!options_set_operation_name)
        {
          options_set_operation_name = e5rt_precompiled_compute_op_create_options_release();
          if (!options_set_operation_name)
          {
            options_set_operation_name = e5rt_precompiled_compute_op_create_options_release();
            if (!options_set_operation_name)
            {
              if (a2)
              {
                v9 = v8;
              }

              else
              {
                v9 = 1;
              }

              if (v9)
              {
LABEL_39:
                v10 = e5rt_execution_stream_create();
                v5 = 0;
                if (v10 || !dword_1EB58E5A0)
                {
                  goto LABEL_49;
                }

                OUTLINED_FUNCTION_6_24();
                v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                if (os_log_type_enabled(v11, v15))
                {
                  v12 = v16;
                }

                else
                {
                  v12 = v16 & 0xFFFFFFFE;
                }

                if (v12)
                {
                  mach_absolute_time();
                  FigHostTimeToNanoseconds();
                  OUTLINED_FUNCTION_5();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_8_20();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                goto LABEL_47;
              }

              if (!e5rt_ane_memory_provider_create())
              {
                if ([a2 registerANEMemoryProvider:v14 forNetwork:{-[OpaqueVTPixelRotationSession path](pixelRotationSessionOut[2], "path")}])
                {
                  e5rt_ane_memory_provider_release();
                }

                goto LABEL_39;
              }

LABEL_58:
              OUTLINED_FUNCTION_0();
              FigDebugAssert3();
              v5 = 0;
              goto LABEL_59;
            }
          }
        }
      }
    }

    v10 = options_set_operation_name;
    goto LABEL_48;
  }

LABEL_47:
  v10 = 0;
LABEL_48:
  v5 = 0;
LABEL_49:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(VTPixelRotationSessionRef *)pixelRotationSessionOut type];
    OUTLINED_FUNCTION_7_22(0x485u);
    kdebug_trace();
  }

  if (a2)
  {
    [a2 completeANEMemoryProviderCreationForNetwork:-[OpaqueVTPixelRotationSession path](pixelRotationSessionOut[2] wasSuccessful:{"path"), v10 == 0}];
  }

  if (v10)
  {
    e5rt_get_last_error_message();
    e5rt_execution_stream_release();
    return 4294935586;
  }

  return v5;
}

- (uint64_t)_applyRotationOnPixelBuffer:(__CVBuffer *)buffer dstPixelBuffer:(int)pixelBuffer rotationDegrees:
{
  if (!self)
  {
    return 0;
  }

  v7 = *(self + 152);
  v8 = *MEMORY[0x1E6983D98];
  v9 = FigCaptureVTRotationFromDegrees(pixelBuffer);
  VTSessionSetProperty(v7, v8, v9);
  v10 = VTPixelRotationSessionRotateImage(*(self + 152), a2, buffer);
  if (v10)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  return v10;
}

- (__CVBuffer)_createAndRotatedOnDemandPixelBufferWithPixelBuffer:(int)buffer rotationDegrees:
{
  if (!self)
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if (buffer != 180 && buffer)
  {
    v8 = __ROR8__(Width | (Height << 32), 32);
  }

  else
  {
    v8 = Width | (Height << 32);
  }

  v9 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:v8 pixelFormat:CVPixelBufferGetPixelFormatType(pixelBuffer) name:@"OnDemandRotatedPixelBufferForE5MultipleLayoutInferenceProvider" memoryPool:+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool")), "newPixelBuffer"];
  [(BWE5MultipleLayoutInferenceProvider *)self _applyRotationOnPixelBuffer:v9 dstPixelBuffer:buffer rotationDegrees:?];
  return v9;
}

- (uint64_t)_exifOrientationWithStorage:(uint64_t)result
{
  if (result)
  {
    v3 = [objc_msgSend(a2 "inputSampleBufferAttachments")];
    if (!v3)
    {
      v3 = [objc_msgSend(objc_msgSend(a2 "inputSampleBufferAttachments")];
    }

    v4 = 0;
    return FigCaptureRotationDegreesAndMirroringFromExifOrientation([v3 intValue], &v4);
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

  v7 = [(BWE5MultipleLayoutInferenceProvider *)&self->super.isa _prepareWithSharedANEMemoryProvider:provider];
  if (*v6 == 1)
  {
    kdebug_trace();
  }

  return v7;
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  if ([(BWE5MultipleLayoutInferenceProvider *)self prewarmingSharedResourceType]== 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    BWInferenceTypeDescription([(BWE5MultipleLayoutInferenceProvider *)self type]);
    v5 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(11, v5, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Inference/Espresso/E5/BWE5MultipleLayoutInferenceProvider.m", 448, @"LastShownDate:BWE5MultipleLayoutInferenceProvider.m:448", @"LastShownBuild:BWE5MultipleLayoutInferenceProvider.m:448", 0);
    free(v5);
  }

  return [(BWE5MultipleLayoutInferenceProvider *)&self->super.isa _prepareWithSharedANEMemoryProvider:?];
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
  -[BWE5MultipleLayoutInferenceProvider setPropagatable:](self, "setPropagatable:", [provider propagatable]);
  return 0;
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  selfCopy = self;
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(BWE5MultipleLayoutInferenceProvider *)self type:buffer];
    OUTLINED_FUNCTION_2_38();
  }

  v11 = [(BWE5MultipleLayoutInferenceProvider *)selfCopy _exifOrientationWithStorage:storage];
  v107 = selfCopy;
  if ([(NSMutableArray *)selfCopy->_inputVideoRequirements count]!= 1 || [(NSMutableArray *)selfCopy->_outputVideoRequirements count]!= 1 || [(NSMutableArray *)selfCopy->_outputMetadataRequirements count])
  {
    v88 = 0;
    v77 = 0;
    v19 = 0;
    v14 = 0;
    v33 = 0;
    goto LABEL_62;
  }

  handlerCopy = handler;
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  obj = selfCopy->_inputVideoRequirements;
  v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v215 objects:v214 count:16];
  v104 = v11;
  if (!v12)
  {
    v14 = 0;
    v19 = 0;
    goto LABEL_24;
  }

  v13 = v12;
  v97 = v6;
  v14 = 0;
  v15 = *v216;
  do
  {
    v16 = 0;
    do
    {
      if (*v216 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v215 + 1) + 8 * v16);
      v18 = [OUTLINED_FUNCTION_4_31() pixelBufferForRequirement:?];
      v19 = v18;
      if (!v18)
      {
LABEL_45:
        v88 = 0;
        v77 = 0;
        v33 = 4294935584;
        selfCopy = v107;
        goto LABEL_61;
      }

      v14 = v18;
      if (v11)
      {
        v14 = [(BWE5MultipleLayoutInferenceProvider *)v107 _createAndRotatedOnDemandPixelBufferWithPixelBuffer:v18 rotationDegrees:v11];
        if (!v14)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
          v77 = 0;
          v78 = 0;
          goto LABEL_42;
        }
      }

      CVPixelBufferGetWidth(v14);
      CVPixelBufferGetHeight(v14);
      v20 = [OUTLINED_FUNCTION_4_31() bindingNameForRequirement:?];
      if (!v20)
      {
        goto LABEL_45;
      }

      v213 = 0;
      [v20 UTF8String];
      if (e5rt_execution_stream_operation_retain_input_port())
      {
LABEL_46:
        e5rt_get_last_error_message();
        v88 = 0;
        v34 = 0;
        v77 = 0;
        if (v17)
        {
          goto LABEL_47;
        }

        goto LABEL_55;
      }

      if (![(BWE5MultipleLayoutInferenceProvider *)v107 _bindE5Port:v213 toPixelBuffer:v14])
      {
        v77 = 0;
        v78 = 0;
        selfCopy = v107;
        v11 = v104;
LABEL_49:
        v88 = v78;
        if (selfCopy->_executionTarget == 3 && e5rt_execution_stream_set_ane_execution_priority() || e5rt_execution_stream_encode_operation() || e5rt_execution_stream_execute_sync() || (!v11 || ![(BWE5MultipleLayoutInferenceProvider *)selfCopy _applyRotationOnPixelBuffer:v77 dstPixelBuffer:v78 rotationDegrees:360 - v11]) && e5rt_execution_stream_reset())
        {
          goto LABEL_55;
        }

        v33 = 0;
LABEL_61:
        handler = handlerCopy;
        v10 = MEMORY[0x1E695FF58];
        goto LABEL_62;
      }

      if (e5rt_io_port_release())
      {
        goto LABEL_46;
      }

      ++v16;
      v11 = v104;
    }

    while (v13 != v16);
    v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v215 objects:v214 count:16];
    v13 = v21;
  }

  while (v21);
LABEL_24:
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  selfCopy = v107;
  v91 = *(v107 + 96);
  obja = [v91 countByEnumeratingWithState:&v209 objects:v208 count:16];
  v77 = 0;
  v78 = 0;
  if (!obja)
  {
    goto LABEL_49;
  }

  v94 = v107 + 128;
  v97 = *v210;
LABEL_26:
  v22 = 0;
  while (2)
  {
    if (*v210 != v97)
    {
      objc_enumerationMutation(v91);
    }

    v23 = *(*(&v209 + 1) + 8 * v22);
    v24 = [OUTLINED_FUNCTION_4_31() bindingNameForRequirement:?];
    if (!v24)
    {
      v88 = v78;
      goto LABEL_44;
    }

    v25 = v24;
    v78 = [OUTLINED_FUNCTION_4_31() pixelBufferForRequirement:?];
    if (!v78)
    {
      v78 = [objc_msgSend(OUTLINED_FUNCTION_4_31() "pixelBufferPoolForRequirement:"newPixelBuffer"")];
      [storage setPixelBuffer:v78 forRequirement:v23];
      if (v78)
      {
        CFRelease(v78);
        goto LABEL_33;
      }

      v88 = 0;
LABEL_44:
      v33 = 4294935579;
      goto LABEL_56;
    }

LABEL_33:
    v213 = 0;
    [v25 UTF8String];
    if (!e5rt_execution_stream_operation_retain_output_port())
    {
      v77 = v78;
      v11 = v104;
      if (v104)
      {
        Width = CVPixelBufferGetWidth(v78);
        v27 = Width | (CVPixelBufferGetHeight(v78) << 32);
        v28 = __ROR8__(v27, 32);
        if (v104 != 180)
        {
          v27 = v28;
        }

        v29 = v78;
        PixelFormatType = CVPixelBufferGetPixelFormatType(v78);
        v31 = +[BWMemoryPool sharedMemoryPool];
        v11 = v104;
        v32 = PixelFormatType;
        v78 = v29;
        v77 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:v27 pixelFormat:v32 name:@"outputPixelBuffer" memoryPool:v31), "newPixelBuffer"];
      }

      if (![(BWE5MultipleLayoutInferenceProvider *)v107 _bindE5Port:v213 toPixelBuffer:v77])
      {
        goto LABEL_42;
      }

      if (!e5rt_io_port_release())
      {
        if (obja != ++v22)
        {
          continue;
        }

        obja = [v91 countByEnumeratingWithState:&v209 objects:v208 count:16];
        if (obja)
        {
          goto LABEL_26;
        }

LABEL_42:
        selfCopy = v107;
        goto LABEL_49;
      }
    }

    break;
  }

  v88 = v78;
  e5rt_get_last_error_message();
  v34 = v77;
  if (!v23)
  {
    goto LABEL_55;
  }

LABEL_47:
  [OUTLINED_FUNCTION_4_31() bindingNameForRequirement:?];
  v77 = v34;
LABEL_55:
  e5rt_get_last_error_message();
  v33 = 4294935586;
LABEL_56:
  handler = handlerCopy;
  v10 = MEMORY[0x1E695FF58];
  selfCopy = v107;
LABEL_62:
  if (*v10 == 1)
  {
    [(BWE5MultipleLayoutInferenceProvider *)selfCopy type];
    OUTLINED_FUNCTION_7_22(0x48Du);
    kdebug_trace();
  }

  v35 = (*(handler + 2))(handler, v33, selfCopy);
  inputVideoRequirements = selfCopy->_inputVideoRequirements;
  v44 = OUTLINED_FUNCTION_10_15(v35, v37, v38, v39, v40, v41, v42, v43, v79, v82, handlerCopy, v88, v91, v94, v97, v33, v77, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, 0);
  if (v44)
  {
    v52 = v44;
    v53 = MEMORY[0];
    do
    {
      v54 = 0;
      do
      {
        if (MEMORY[0] != v53)
        {
          objc_enumerationMutation(inputVideoRequirements);
        }

        [objc_msgSend(storage bindingNameForRequirement:{*(8 * v54)), "UTF8String"}];
        e5rt_execution_stream_operation_retain_input_port();
        e5rt_io_port_bind_surface_object();
        v55 = e5rt_io_port_release();
        ++v54;
      }

      while (v52 != v54);
      v44 = OUTLINED_FUNCTION_10_15(v55, v56, v57, v58, v59, v60, v61, v62, v80, v83, v86, v89, v92, v95, v98, objb, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v207);
      v52 = v44;
    }

    while (v44);
  }

  v63 = *(v108 + 96);
  v64 = OUTLINED_FUNCTION_9_15(v44, v45, v46, v47, v48, v49, v50, v51, v80, v83, v86, v89, v92, v95, v98, objb, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, 0);
  if (v64)
  {
    v65 = v64;
    v66 = MEMORY[0];
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (MEMORY[0] != v66)
        {
          objc_enumerationMutation(v63);
        }

        [objc_msgSend(storage bindingNameForRequirement:{*(8 * i)), "UTF8String"}];
        e5rt_execution_stream_operation_retain_output_port();
        e5rt_io_port_bind_surface_object();
        v68 = e5rt_io_port_release();
      }

      v65 = OUTLINED_FUNCTION_9_15(v68, v69, v70, v71, v72, v73, v74, v75, v81, v84, v87, v90, v93, v96, v99, objc, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160);
    }

    while (v65);
  }

  if (v14 != v19 && v14)
  {
    CFRelease(v14);
  }

  if (v106 != v90 && v106)
  {
    CFRelease(v106);
  }

  return objc;
}

@end