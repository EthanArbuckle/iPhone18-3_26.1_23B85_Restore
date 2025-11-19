@interface BWMetadataSynchronizerNode
+ (void)initialize;
- (BWMetadataSynchronizerNode)initWithArraysOfMetadataInputs:(id)a3 propagateSampleBufferAttachmentKeys:(id)a4 propagateSampleBufferMetadataDictKeys:(id)a5 syncMetadataByPortType:(id)a6 syncOnlyIfMetadataEnabledForKeys:(id)a7;
- (BWMetadataSynchronizerNode)initWithMetadataInputs:(id)a3 propagateSampleBufferAttachmentKeys:(id)a4 propagateSampleBufferMetadataDictKeys:(id)a5 syncMetadataByPortType:(id)a6 syncOnlyIfMetadataEnabledForKeys:(id)a7;
- (CMTime)_purgeAllPurgeableMetadataBuffers;
- (uint64_t)_tryToEmitImageBufferWithAllMetadata:(uint64_t)result;
- (unint64_t)_printState;
- (void)_attachedMediaKeysForMetadataInput:(void *)result;
- (void)_purgeAllBuffers;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWMetadataSynchronizerNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWMetadataSynchronizerNode)initWithArraysOfMetadataInputs:(id)a3 propagateSampleBufferAttachmentKeys:(id)a4 propagateSampleBufferMetadataDictKeys:(id)a5 syncMetadataByPortType:(id)a6 syncOnlyIfMetadataEnabledForKeys:(id)a7
{
  v38.receiver = self;
  v38.super_class = BWMetadataSynchronizerNode;
  v12 = [(BWNode *)&v38 init];
  if (!v12)
  {
    return v12;
  }

  if (!a3)
  {
    [BWMetadataSynchronizerNode initWithArraysOfMetadataInputs:propagateSampleBufferAttachmentKeys:propagateSampleBufferMetadataDictKeys:syncMetadataByPortType:syncOnlyIfMetadataEnabledForKeys:];
LABEL_33:

    return 0;
  }

  v12->_syncMetadataByPortType = a6;
  v12->_syncOnlyIfMetadataEnabledForKeys = a7;
  v12->_propagateSampleBufferAttachmentKeys = a4;
  v12->_propagateSampleBufferMetadataDictKeys = a5;
  v12->_bufferServicingLock._os_unfair_lock_opaque = 0;
  v33 = a3;
  v13 = [a3 count] + 1;
  v14 = malloc_type_calloc(v13, 0x28uLL, 0x10A0040EE0660CCuLL);
  v12->_inputsStorage = v14;
  if (!v14)
  {
    [BWMetadataSynchronizerNode initWithArraysOfMetadataInputs:propagateSampleBufferAttachmentKeys:propagateSampleBufferMetadataDictKeys:syncMetadataByPortType:syncOnlyIfMetadataEnabledForKeys:];
    goto LABEL_33;
  }

  if (v13)
  {
    v15 = 0;
    v32 = *off_1E798AFE0;
    allocator = *MEMORY[0x1E695E480];
    v35 = *MEMORY[0x1E6960C80];
    v34 = *(MEMORY[0x1E6960C80] + 16);
    do
    {
      if (v15)
      {
        v18 = -[BWMetadataSynchronizerNode _attachedMediaKeysForMetadataInput:](v12, [v33 objectAtIndexedSubscript:v15 - 1]);
        if ([objc_msgSend(objc_msgSend(v33 objectAtIndexedSubscript:{v15 - 1), "objectAtIndexedSubscript:", 0), "isEqualToString:", v32}])
        {
          v19 = 1885564004;
        }

        else
        {
          v19 = 1986618469;
        }

        v17 = 2;
      }

      else
      {
        v16 = objc_alloc(MEMORY[0x1E695DF70]);
        v37 = @"PrimaryFormat";
        v17 = 1;
        v18 = [v16 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v37, 1)}];
        v19 = 1986618469;
      }

      if (CMSimpleQueueCreate(allocator, v17, &v12->_inputsStorage[v15].var1))
      {
        FigSignalErrorAtGM();
      }

      v20 = &v12->_inputsStorage[v15];
      *(v20 + 16) = v35;
      *(v20 + 32) = v34;
      v12->_inputsStorage[v15].var0 = v18;
      v21 = [[BWNodeInput alloc] initWithMediaType:v19 node:v12 index:v15];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v21 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v21 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v21 primaryMediaConfiguration] setDelayedBufferCount:v17];
      if (v15)
      {
        v22 = objc_alloc_init(BWNodeInputMediaConfiguration);
        [(BWNodeInputMediaConfiguration *)v22 setPassthroughMode:0];
        [(BWNodeInput *)v21 setUnspecifiedAttachedMediaConfiguration:v22];
        if ([v18 count] >= 2)
        {
          if ([v18 count])
          {
            v23 = 0;
            do
            {
              v24 = objc_alloc_init(BWNodeInputMediaConfiguration);
              [(BWNodeInputMediaConfiguration *)v24 setPassthroughMode:1];
              -[BWNodeInput setMediaConfiguration:forAttachedMediaKey:](v21, "setMediaConfiguration:forAttachedMediaKey:", v24, [v18 objectAtIndexedSubscript:v23++]);
            }

            while ([v18 count] > v23);
          }
        }
      }

      [(BWNode *)v12 addInput:v21];

      ++v15;
    }

    while (v15 != v13);
  }

  v25 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v12];
  [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v25 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v25 primaryMediaConfiguration] setPassthroughMode:1];
  if (v13 >= 2)
  {
    for (i = 1; i != v13; ++i)
    {
      if ([v12->_inputsStorage[i].var0 count])
      {
        v27 = 0;
        do
        {
          v28 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          [(BWNodeOutputMediaConfiguration *)v28 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeOutputMediaConfiguration *)v28 setPassthroughMode:1];
          [(BWNodeOutputMediaConfiguration *)v28 setIndexOfInputWhichDrivesThisOutput:i];
          v29 = [v12->_inputsStorage[i].var0 count];
          v30 = @"PrimaryFormat";
          if (v29 != 1)
          {
            v30 = [v12->_inputsStorage[i].var0 objectAtIndexedSubscript:v27];
          }

          [(BWNodeOutputMediaConfiguration *)v28 setAttachedMediaKeyOfInputWhichDrivesThisOutput:v30];
          -[BWNodeOutput setMediaConfiguration:forAttachedMediaKey:](v25, "setMediaConfiguration:forAttachedMediaKey:", v28, [v12->_inputsStorage[i].var0 objectAtIndexedSubscript:v27++]);
        }

        while ([v12->_inputsStorage[i].var0 count] > v27);
      }
    }
  }

  [(BWNode *)v12 addOutput:v25];

  return v12;
}

- (void)dealloc
{
  if (self->_inputsStorage)
  {
    [(BWMetadataSynchronizerNode *)self _purgeAllBuffers];
    if ([(NSArray *)[(BWNode *)self inputs] count])
    {
      v3 = 0;
      v4 = 0;
      do
      {
        inputsStorage = self->_inputsStorage;
        var1 = inputsStorage[v3].var1;
        if (var1)
        {
          CFRelease(var1);
          inputsStorage = self->_inputsStorage;
        }

        ++v4;
        ++v3;
      }

      while ([(NSArray *)[(BWNode *)self inputs] count]> v4);
    }

    free(self->_inputsStorage);
  }

  v7.receiver = self;
  v7.super_class = BWMetadataSynchronizerNode;
  [(BWNode *)&v7 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(BWNode *)self outputs];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 attachedMediaKeyDrivenByInputAttachedMediaKey:a5 inputIndex:{objc_msgSend(a4, "index")}];
        if (v14)
        {
          v15 = v14;
          if ([v13 passthroughMode])
          {
            v16 = [v13 mediaPropertiesForAttachedMediaKey:v15];
            if (!v16)
            {
              if ([v15 isEqualToString:@"PrimaryFormat"])
              {
                v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ output %@ has no media properties for the primary format (provided media key is %@)", self, v13, a5];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
              }

              v16 = objc_alloc_init(BWNodeOutputMediaProperties);
              [v13 _setMediaProperties:v16 forAttachedMediaKey:v15];
            }

            [(BWNodeOutputMediaProperties *)v16 setResolvedFormat:a3];
          }
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (![a5 index])
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    if (![(BWNodeOutput *)self->super._output liveFormat])
    {
      [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
    }

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (void)didReachEndOfDataForInput:(id)a3
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    [BWMetadataSynchronizerNode didReachEndOfDataForInput:?];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(BWNodeOutput *)self->super._output emitNodeError:a3];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if (![a4 index])
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(BWNodeOutput *)self->super._output emitDroppedSample:a3];

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (BWMetadataSynchronizerNode)initWithMetadataInputs:(id)a3 propagateSampleBufferAttachmentKeys:(id)a4 propagateSampleBufferMetadataDictKeys:(id)a5 syncMetadataByPortType:(id)a6 syncOnlyIfMetadataEnabledForKeys:(id)a7
{
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v13)
  {
    v21 = v13;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = OUTLINED_FUNCTION_6_17(v13, v14, v15, v16, v17, v18, v19, v20, a4, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, 0);
    if (v22)
    {
      v23 = v22;
      v24 = *v54;
      do
      {
        v25 = 0;
        do
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(a3);
          }

          v36 = *(*(&v53 + 1) + 8 * v25);
          v26 = [v21 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v36, 1)}];
          ++v25;
        }

        while (v23 != v25);
        v23 = OUTLINED_FUNCTION_6_17(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      }

      while (v23);
    }

    self = [(BWMetadataSynchronizerNode *)self initWithArraysOfMetadataInputs:v21 propagateSampleBufferAttachmentKeys:v35 propagateSampleBufferMetadataDictKeys:a5 syncMetadataByPortType:a6 syncOnlyIfMetadataEnabledForKeys:a7];
  }

  return self;
}

- (void)_attachedMediaKeysForMetadataInput:(void *)result
{
  if (result)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    if (v3)
    {
      v4 = v3;
      if ([a2 count])
      {
        v5 = 0;
        v6 = *off_1E798AFF0;
        v7 = *off_1E798AFE0;
        do
        {
          v8 = [objc_msgSend(a2 objectAtIndexedSubscript:{v5), "isEqualToString:", v6}];
          v9 = 0x1F219CD50;
          if ((v8 & 1) == 0)
          {
            v10 = [objc_msgSend(a2 objectAtIndexedSubscript:{v5), "isEqualToString:", v7}];
            v9 = 0x1F219CD70;
            if ((v10 & 1) == 0)
            {
              v9 = [a2 objectAtIndexedSubscript:v5];
            }
          }

          [v4 addObject:v9];
          ++v5;
        }

        while ([a2 count] > v5);
      }

      if ([v4 count])
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 0;
    }
  }

  return result;
}

- (void)_purgeAllBuffers
{
  if (result)
  {
    v1 = result;
    result = [objc_msgSend(result "inputs")];
    if (result)
    {
      for (i = 0; i < result; ++i)
      {
        while (1)
        {
          v3 = CMSimpleQueueDequeue(*(v1[21] + 40 * i + 8));
          if (!v3)
          {
            break;
          }

          CFRelease(v3);
        }

        result = [objc_msgSend(v1 "inputs")];
      }
    }
  }

  return result;
}

- (uint64_t)_tryToEmitImageBufferWithAllMetadata:(uint64_t)result
{
  v97 = result;
  if (!result)
  {
    return result;
  }

  v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
  v4 = *(*(result + 168) + 8);
  result = CMSimpleQueueGetHead(v4);
  if (!result)
  {
    return result;
  }

  v5 = result;
  obj = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(v97, "inputs"), "count")}];
  memset(&v182, 0, sizeof(v182));
  target = v5;
  msn_getOriginalPTSForSampleBuffer(v5, &v182);
  if (CMGetAttachment(v4, @"IsHarvestedStillFrame", 0))
  {
    goto LABEL_77;
  }

  if (*(v97 + 128))
  {
    v6 = [CMGetAttachment(v5 *off_1E798A3C8];
    if (![objc_msgSend(*(v97 + 128) "allKeys")])
    {
LABEL_77:
      v63 = obj;
      [obj addObject:&unk_1F2242A90];
      v64 = [*(v97 + 16) emitSampleBuffer:target];
      result = OUTLINED_FUNCTION_5_22(v64, v65, v66, v67, v68, v69, v70, v71, v83, v85, v87, obj, key, v93, v95, v97, v99, target, v104, *(&v104 + 1), v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, 0);
      if (result)
      {
        v72 = result;
        v73 = MEMORY[0];
        do
        {
          v74 = 0;
          do
          {
            if (MEMORY[0] != v73)
            {
              objc_enumerationMutation(v63);
            }

            v75 = CMSimpleQueueDequeue(*(*(v98 + v3[977]) + 40 * [*(8 * v74) intValue] + 8));
            if (v75)
            {
              CFRelease(v75);
            }

            ++v74;
          }

          while (v72 != v74);
          result = OUTLINED_FUNCTION_5_22(v75, v76, v77, v78, v79, v80, v81, v82, v84, v86, v88, obja, keya, v94, v96, v98, v101, targeta, v105, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140);
          v72 = result;
        }

        while (result);
      }

      return result;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 1;
  if ([objc_msgSend(v97 "inputs")] >= 2)
  {
    i = v97;
    while (1)
    {
      Head = CMSimpleQueueGetHead((*(i + v3[977]))[5 * v7 + 1]);
      memset(v165, 0, 24);
      msn_getOriginalPTSForSampleBuffer(Head, v165);
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v10 = (*(i + v3[977]))[5 * v7];
      v11 = OUTLINED_FUNCTION_11_11();
      if (v11)
      {
        break;
      }

LABEL_23:
      ++v7;
      i = v97;
      if ([objc_msgSend(v97 "inputs")] <= v7)
      {
        goto LABEL_26;
      }
    }

    v12 = v11;
    v13 = *v179;
LABEL_12:
    v14 = 0;
    while (1)
    {
      if (*v179 != v13)
      {
        objc_enumerationMutation(v10);
      }

      if ([objc_msgSend(*(v97 + 128) objectForKeyedSubscript:{v6), "containsObject:", *(*(&v178 + 1) + 8 * v14)}])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = OUTLINED_FUNCTION_11_11();
        v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
        if (v12)
        {
          goto LABEL_12;
        }

        goto LABEL_23;
      }
    }

    time1 = v165[0];
    time2 = v182;
    if (!CMTimeCompare(&time1, &time2))
    {
      [obj addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v7)}];
      v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
      goto LABEL_23;
    }

    v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
    if (!a2)
    {
      goto LABEL_23;
    }
  }

  i = v97;
LABEL_26:
  v15 = [obj count];
  v16 = [objc_msgSend(i[16] objectForKeyedSubscript:{v6), "count"}];
  result = [objc_msgSend(i "inputs")];
  if (result == v7 || v15 == v16)
  {
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v95 = [obj countByEnumeratingWithState:&v172 objects:v171 count:16];
    if (v95)
    {
      key = *off_1E798A3C8;
      v93 = *v173;
      *&v18 = 136315394;
      v104 = v18;
      do
      {
        v19 = 0;
        do
        {
          if (*v173 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v100 = v19;
          v20 = OUTLINED_FUNCTION_1_26();
          v21 = CMSimpleQueueGetHead(*(v19 + 40 * v20 + 8));
          [*(v19 + 40 * OUTLINED_FUNCTION_1_26()) count];
          v22 = i[5 * OUTLINED_FUNCTION_7_16()];
          v23 = target;
          if (v19 == 1)
          {
            BWSampleBufferSetAttachedMedia(target, [v22 objectAtIndexedSubscript:0], v21);
          }

          else if ([v22 count])
          {
            v24 = 0;
            do
            {
              v25 = [*(v19 + 40 * OUTLINED_FUNCTION_1_26()) objectAtIndexedSubscript:v24];
              if (BWSampleBufferGetAttachedMedia(v21, v25))
              {
                v26 = [i[5 * OUTLINED_FUNCTION_7_16()] objectAtIndexedSubscript:v24];
                BWSampleBufferSetAttachedMedia(target, v26, v19);
              }

              ++v24;
            }

            while ([*(v19 + 40 * OUTLINED_FUNCTION_1_26()) count] > v24);
          }

          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v27 = *(v97 + 136);
          v28 = OUTLINED_FUNCTION_9_8();
          if (v28)
          {
            v29 = v28;
            v30 = *v168;
            do
            {
              for (i = 0; i != v29; i = (i + 1))
              {
                if (*v168 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(*(&v167 + 1) + 8 * i);
                v32 = CMGetAttachment(v21, v31, 0);
                if (v32)
                {
                  v33 = v32;
                  if (CMGetAttachment(v23, v31, 0))
                  {
                    LODWORD(time2.value) = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    value = time2.value;
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                    {
                      v36 = value;
                    }

                    else
                    {
                      v36 = value & 0xFFFFFFFE;
                    }

                    if (v36)
                    {
                      LODWORD(time1.value) = v104;
                      *(&time1.value + 4) = "[BWMetadataSynchronizerNode _tryToEmitImageBufferWithAllMetadata:]";
                      LOWORD(time1.flags) = 2112;
                      *(&time1.flags + 2) = v31;
                      OUTLINED_FUNCTION_0_24();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_4_21();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v23 = target;
                  }

                  else
                  {
                    CMSetAttachment(v23, v31, v33, 1u);
                  }
                }
              }

              v29 = OUTLINED_FUNCTION_9_8();
            }

            while (v29);
          }

          v37 = CMGetAttachment(v23, key, 0);
          v38 = CMGetAttachment(v21, key, 0);
          v39 = *(v97 + 144);
          v47 = OUTLINED_FUNCTION_10_11(v38, v40, v41, v42, v43, v44, v45, v46, v83, v85, v87, obj, key, v93, v95, v97, v100, target, v104, *(&v104 + 1), v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, 0);
          if (v47)
          {
            v48 = v47;
            i = MEMORY[0];
            do
            {
              for (j = 0; j != v48; ++j)
              {
                if (MEMORY[0] != i)
                {
                  objc_enumerationMutation(v39);
                }

                v50 = *(8 * j);
                v51 = [v38 objectForKeyedSubscript:v50];
                if (v51)
                {
                  v59 = v51;
                  if ([v37 objectForKeyedSubscript:v50])
                  {
                    LODWORD(time2.value) = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v61 = time2.value;
                    if (os_log_type_enabled(v60, type))
                    {
                      v62 = v61;
                    }

                    else
                    {
                      v62 = v61 & 0xFFFFFFFE;
                    }

                    if (v62)
                    {
                      LODWORD(time1.value) = v104;
                      *(&time1.value + 4) = "[BWMetadataSynchronizerNode _tryToEmitImageBufferWithAllMetadata:]";
                      LOWORD(time1.flags) = 2112;
                      *(&time1.flags + 2) = v50;
                      OUTLINED_FUNCTION_0_24();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_4_21();
                    v51 = fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  else
                  {
                    v51 = [v37 setObject:v59 forKeyedSubscript:v50];
                  }
                }
              }

              v48 = OUTLINED_FUNCTION_10_11(v51, v52, v53, v54, v55, v56, v57, v58, v83, v85, v87, obj, key, v93, v95, v97, v99, target, v104, *(&v104 + 1), v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
            }

            while (v48);
          }

          v19 = v99 + 1;
          v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
        }

        while (v99 + 1 != v95);
        v95 = [obj countByEnumeratingWithState:&v172 objects:v171 count:16];
      }

      while (v95);
    }

    goto LABEL_77;
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (BWSampleBufferIsMarkerBuffer(a3))
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitSampleBuffer:a3];
  }

  else
  {
    v8 = CMGetAttachment(a3, *off_1E798A3C8, 0);
    v9 = [v8 objectForKeyedSubscript:*off_1E798B540];
    if (![a4 index] || (syncMetadataByPortType = self->_syncMetadataByPortType) == 0 || -[NSArray containsObject:](-[NSDictionary allKeys](syncMetadataByPortType, "allKeys"), "containsObject:", v9))
    {
      if (![a4 index])
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        syncOnlyIfMetadataEnabledForKeys = self->_syncOnlyIfMetadataEnabledForKeys;
        v19 = OUTLINED_FUNCTION_8_16(0, v11, v12, v13, v14, v15, v16, v17, v37, v39, v41, cf, time2.value, *&time2.timescale, time2.epoch, v47, time1.value, *&time1.timescale, time1.epoch, v49, v50.value, *&v50.timescale, v50.epoch, v51.value, *&v51.timescale, v51.epoch, v52);
        if (v19)
        {
          v20 = v19;
          v21 = *v54;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v54 != v21)
              {
                objc_enumerationMutation(syncOnlyIfMetadataEnabledForKeys);
              }

              v23 = [objc_msgSend(v8 objectForKeyedSubscript:{*(*(&v53 + 1) + 8 * i)), "BOOLValue"}];
              if ((v23 & 1) == 0)
              {
                [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
                return;
              }
            }

            v20 = OUTLINED_FUNCTION_8_16(v23, v24, v25, v26, v27, v28, v29, v30, v38, v40, v42, cfa, time2.value, *&time2.timescale, time2.epoch, v47, time1.value, *&time1.timescale, time1.epoch, v49, v50.value, *&v50.timescale, v50.epoch, v51.value, *&v51.timescale, v51.epoch, v52);
            if (v20)
            {
              continue;
            }

            break;
          }
        }
      }

      os_unfair_lock_lock(&self->_bufferServicingLock);
      memset(&v51, 0, sizeof(v51));
      msn_getOriginalPTSForSampleBuffer(a3, &v51);
      v50 = *&v8[40 * OUTLINED_FUNCTION_12_9() + 16];
      time1 = v51;
      time2 = v50;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        v34 = -1;
        do
        {
          ++v34;
        }

        while ([*&v8[40 * OUTLINED_FUNCTION_12_9()] count] > v34);
      }

      else
      {
        *&v8[40 * OUTLINED_FUNCTION_12_9() + 16] = v51;
        v31 = *&v8[40 * OUTLINED_FUNCTION_12_9() + 8];
        Count = CMSimpleQueueGetCount(v31);
        if (Count == CMSimpleQueueGetCapacity(v31))
        {
          if ([a4 index])
          {
            cfb = CMSimpleQueueDequeue(v31);
            v36 = -1;
            do
            {
              ++v36;
            }

            while ([self->_inputsStorage[objc_msgSend(a4 "index")].var0] > v36);
            if (cfb)
            {
              CFRelease(cfb);
            }

            [(BWMetadataSynchronizerNode *)self _printState];
          }

          else
          {
            v35 = -1;
            do
            {
              ++v35;
            }

            while ([self->_inputsStorage[objc_msgSend(a4 "index")].var0] > v35);
            [(BWMetadataSynchronizerNode *)self _tryToEmitImageBufferWithAllMetadata:?];
          }
        }

        if (a3)
        {
          v33 = CFRetain(a3);
        }

        else
        {
          v33 = 0;
        }

        if (CMSimpleQueueEnqueue(v31, v33))
        {
          FigDebugAssert3();
          if (a3)
          {
            CFRelease(a3);
          }
        }

        else
        {
          [(BWMetadataSynchronizerNode *)self _purgeAllPurgeableMetadataBuffers];
          [(BWMetadataSynchronizerNode *)self _tryToEmitImageBufferWithAllMetadata:?];
        }
      }

      os_unfair_lock_unlock(&self->_bufferServicingLock);
    }
  }
}

- (unint64_t)_printState
{
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E696AD60] string];
    result = [objc_msgSend(v1 "inputs")];
    if (result)
    {
      v3 = 0;
      key = *off_1E798A3C8;
      v11 = *off_1E798B540;
      v4 = 8;
      do
      {
        v5 = OUTLINED_FUNCTION_3_16();
        Head = CMSimpleQueueGetHead(v5);
        v7 = OUTLINED_FUNCTION_3_16();
        Count = CMSimpleQueueGetCount(v7);
        v9 = OUTLINED_FUNCTION_3_16();
        Capacity = CMSimpleQueueGetCapacity(v9);
        [v2 appendFormat:@" [%d] = {", v3];
        if (Head)
        {
          v13 = CMGetAttachment(Head, key, 0);
          msn_getOriginalPTSForSampleBuffer(Head, &time);
          [v2 appendFormat:@" %d/%d head: PTS %.4lf %@", Count, Capacity, CMTimeGetSeconds(&time), objc_msgSend(v13, "objectForKeyedSubscript:", v11)];
        }

        [v2 appendFormat:@"}"];
        ++v3;
        result = [objc_msgSend(v1 "inputs")];
        v4 += 40;
      }

      while (result > v3);
    }
  }

  return result;
}

- (CMTime)_purgeAllPurgeableMetadataBuffers
{
  if (result)
  {
    v1 = result;
    result = CMSimpleQueueGetHead(*(result[7].value + 8));
    if (result)
    {
      memset(&v11, 0, sizeof(v11));
      msn_getOriginalPTSForSampleBuffer(result, &v11);
      result = [-[CMTime inputs](v1 "inputs")];
      if (result >= 2)
      {
        v2 = 0;
        for (i = 1; i < result; ++i)
        {
          v4 = *(v1[7].value + 40 * i + 8);
          for (j = CMSimpleQueueGetHead(v4); j; v2 = 1)
          {
            memset(&v10, 0, sizeof(v10));
            msn_getOriginalPTSForSampleBuffer(j, &v10);
            time1 = v10;
            v8 = v11;
            if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
            {
              break;
            }

            v6 = -1;
            do
            {
              ++v6;
            }

            while ([*(v1[7].value + 40 * i) count] > v6);
            v7 = CMSimpleQueueDequeue(v4);
            if (v7)
            {
              CFRelease(v7);
            }

            j = CMSimpleQueueGetHead(v4);
          }

          result = [-[CMTime inputs](v1 "inputs")];
        }

        if (v2)
        {
          return [(BWMetadataSynchronizerNode *)v1 _printState];
        }
      }
    }
  }

  return result;
}

- (uint64_t)didReachEndOfDataForInput:(uint64_t)a1 .cold.1(uint64_t a1)
{
  [(BWMetadataSynchronizerNode *)a1 _tryToEmitImageBufferWithAllMetadata:?];
  [(BWMetadataSynchronizerNode *)a1 _purgeAllBuffers];
  result = [*(a1 + 16) liveFormat];
  if (result)
  {
    v3 = *(a1 + 16);

    return [v3 markEndOfLiveOutput];
  }

  return result;
}

@end