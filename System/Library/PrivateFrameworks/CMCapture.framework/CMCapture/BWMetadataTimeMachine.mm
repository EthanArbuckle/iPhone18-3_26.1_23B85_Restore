@interface BWMetadataTimeMachine
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)earliestAllowedPTS;
- (BOOL)waitUntilCapacity:(int)capacity timeout:(float)timeout;
- (BWMetadataTimeMachine)initWithName:(id)name capacity:(int)capacity metadataHandlingPriority:(unsigned int)priority addHandler:(id)handler;
- (id)metadata;
- (id)metadataForPTSRange:(id *)range timeout:(float)timeout;
- (void)_metadataForPTSRange:(uint64_t)range;
- (void)addDroppedFrameForPortType:(id)type pts:(id *)pts;
- (void)addMetadata:(id)metadata;
- (void)dealloc;
- (void)reset;
- (void)setEarliestAllowedPTS:(id *)s;
@end

@implementation BWMetadataTimeMachine

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWMetadataTimeMachine)initWithName:(id)name capacity:(int)capacity metadataHandlingPriority:(unsigned int)priority addHandler:(id)handler
{
  v12.receiver = self;
  v12.super_class = BWMetadataTimeMachine;
  v9 = [(BWMetadataTimeMachine *)&v12 init];
  if (v9)
  {
    *(v9 + 1) = [name copy];
    *(v9 + 4) = capacity;
    *(v9 + 3) = [handler copy];
    *(v9 + 4) = FigDispatchQueueCreateWithPriority();
    *(v9 + 5) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:capacity];
    *(v9 + 6) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = MEMORY[0x1E6960C70];
    *(v9 + 56) = *MEMORY[0x1E6960C70];
    *(v9 + 9) = *(v10 + 16);
  }

  return v9;
}

- (void)dealloc
{
  [(BWMetadataTimeMachine *)self reset];

  v3.receiver = self;
  v3.super_class = BWMetadataTimeMachine;
  [(BWMetadataTimeMachine *)&v3 dealloc];
}

void __37__BWMetadataTimeMachine_addMetadata___block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = (*(v3 + 16))(v3, *(v1 + 40), *(v2 + 40));
  }

  else
  {
    v4 = 0;
  }

  memset(&v77, 0, sizeof(v77));
  v5 = *off_1E798A420;
  CMTimeMakeFromDictionary(&v77, [*(v1 + 40) objectForKeyedSubscript:*off_1E798A420]);
  memset(&v76, 0, sizeof(v76));
  CMTimeMakeFromDictionary(&v76, [objc_msgSend(*(*(v1 + 32) + 40) "lastObject")]);
  if (v76.flags)
  {
    *time1 = v77;
    time2 = v76;
    v6 = CMTimeCompare(time1, &time2) > 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v1 + 32);
  if (*(v7 + 68))
  {
    *time1 = v77;
    time2 = *(v7 + 56);
    v8 = CMTimeCompare(time1, &time2) >= 0;
  }

  else
  {
    v8 = 1;
  }

  v43 = v8;
  v9 = (v4 == 3 || !v4) && v6 && v8;
  v10 = [*(*(v1 + 32) + 48) count];
  v11 = *(v1 + 32);
  if ((v4 & 0xFFFFFFFE) == 2)
  {
    ++*(v11 + 80);
    [*(*(v1 + 32) + 40) removeAllObjects];
    if (!v9)
    {
LABEL_44:
      if (v10 && dword_1EB58E100)
      {
        v70 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = v70;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          v46 = *(*(v1 + 32) + 8);
          *time1 = v77;
          Seconds = CMTimeGetSeconds(time1);
          v30 = (v4 - 1) >= 2;
          v31 = v4;
          v32 = v6;
          v33 = !v30 || !v6 || !v43;
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v31];
          v35 = *(v1 + 32);
          v36 = *(v35 + 80);
          CMTimeMakeFromDictionary(time1, [objc_msgSend(*(v35 + 40) "firstObject")]);
          v37 = CMTimeGetSeconds(time1);
          CMTimeMakeFromDictionary(time1, [objc_msgSend(*(*(v1 + 32) + 40) "lastObject")]);
          v38 = CMTimeGetSeconds(time1);
          v39 = [*(*(v1 + 32) + 40) count];
          LODWORD(time2.value) = 136317954;
          *(&time2.value + 4) = "[BWMetadataTimeMachine addMetadata:]_block_invoke";
          LOWORD(time2.flags) = 2112;
          *(&time2.flags + 2) = v46;
          HIWORD(time2.epoch) = 2048;
          v48 = Seconds;
          v49 = 1026;
          v50 = v10;
          v51 = 1026;
          v52 = v33;
          v53 = 1026;
          v54 = v32;
          v55 = 1026;
          v56 = v43;
          v57 = 2114;
          v58 = v34;
          v59 = 1026;
          v60 = v36;
          v61 = 2048;
          v62 = v37;
          v63 = 2048;
          v64 = v38;
          v65 = 1026;
          v66 = v39;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_55;
    }
  }

  else
  {
    *(v11 + 80) = 0;
    if (!v9)
    {
      goto LABEL_44;
    }
  }

  [*(*(v1 + 32) + 40) addObject:*(v1 + 40)];
  v12 = [*(*(v1 + 32) + 40) count];
  v13 = *(v1 + 32);
  if (v12 > *(v13 + 16))
  {
    [*(v13 + 40) removeObjectAtIndex:0];
  }

  if (v10)
  {
    v44 = v10;
    v40 = v4;
    v41 = v6;
    v42 = v5;
    v45 = [MEMORY[0x1E696AD50] indexSet];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v14 = v1;
    v15 = *(*(v1 + 32) + 48);
    v16 = [v15 countByEnumeratingWithState:&v72 objects:v71 count:16];
    if (!v16)
    {
      goto LABEL_43;
    }

    v17 = v16;
    v18 = 0;
    v19 = *v73;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v73 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v72 + 1) + 8 * v20);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v21)
          {
            *time1 = *(v21 + 16);
            *&time1[16] = *(v21 + 32);
            v68 = *(v21 + 48);
          }

          else
          {
            v68 = 0u;
            memset(time1, 0, sizeof(time1));
          }

          v24 = [(BWMetadataTimeMachine *)*(v14 + 32) _metadataForPTSRange:?];
          if (v24)
          {
            [(BWMetadataTimeMachineMetadataRequest *)v21 completeWithMetadata:v24];
LABEL_33:
            [v45 addIndex:v18];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21 ? *(v21 + 16) : 0;
            if ([*(*(v14 + 32) + 40) count] >= v22)
            {
              v23 = [*(*(v14 + 32) + 40) count];
              if (v21)
              {
                *(v21 + 20) = v23;
                *time1 = v21;
                *&time1[8] = BWMetadataTimeMachineWaitRequest;
                objc_msgSendSuper2(time1, sel_complete);
              }

              goto LABEL_33;
            }
          }
        }

        ++v18;
        ++v20;
      }

      while (v17 != v20);
      v25 = [v15 countByEnumeratingWithState:&v72 objects:v71 count:16];
      v17 = v25;
      if (!v25)
      {
LABEL_43:
        v1 = v14;
        [*(*(v14 + 32) + 48) removeObjectsAtIndexes:v45];
        v5 = v42;
        v6 = v41;
        v4 = v40;
        v10 = v44;
        goto LABEL_44;
      }
    }
  }

LABEL_55:
}

- (id)metadataForPTSRange:(id *)range timeout:(float)timeout
{
  if (dword_1EB58E100)
  {
    LODWORD(v25) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v31.value = 0;
  *&v31.timescale = &v31;
  v31.epoch = 0x3052000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  if ((range->var0.var2 & 1) != 0 && (range->var1.var2 & 1) != 0 && !range->var1.var3 && (range->var1.var0 & 0x8000000000000000) == 0)
  {
    metadataHandlingQueue = self->_metadataHandlingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v9 = *&range->var0.var3;
    v22 = *&range->var0.var0;
    block[2] = __53__BWMetadataTimeMachine_metadataForPTSRange_timeout___block_invoke;
    block[3] = &unk_1E7990280;
    block[4] = self;
    block[5] = &v25;
    v23 = v9;
    v24 = *&range->var1.var1;
    block[6] = &v31;
    dispatch_sync(metadataHandlingQueue, block);
    v11 = *(*&v31.timescale + 40);
    if (v11)
    {
      *&v10 = timeout;
      [v11 waitForCompletionWithTimeout:v10];
      v12 = *(*&v31.timescale + 40);
      if (v12)
      {
        v12 = v12[8];
      }

      v13 = v12;
      v26[5] = v13;
    }
  }

  if (dword_1EB58E100)
  {
    v20 = 0;
    v19 = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = v26[5];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  return v16;
}

- (id)metadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  metadataHandlingQueue = self->_metadataHandlingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__BWMetadataTimeMachine_metadata__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(metadataHandlingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__BWMetadataTimeMachine_metadata__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)waitUntilCapacity:(int)capacity timeout:(float)timeout
{
  if (dword_1EB58E100)
  {
    v29 = 0;
    v28 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (self->_capacity >= capacity)
  {
    metadataHandlingQueue = self->_metadataHandlingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__BWMetadataTimeMachine_waitUntilCapacity_timeout___block_invoke;
    block[3] = &unk_1E79902A8;
    block[4] = self;
    block[5] = &v18;
    capacityCopy = capacity;
    block[6] = &v22;
    dispatch_sync(metadataHandlingQueue, block);
    v11 = v23[5];
    if (v11)
    {
      *&v10 = timeout;
      [v11 waitForCompletionWithTimeout:v10];
      v12 = v23;
      v13 = v23[5];
      if (v13)
      {
        LODWORD(v13) = *(v13 + 20);
      }

      *(v19 + 6) = v13;
    }
  }

  if (*v8 == 1)
  {
    kdebug_trace();
  }

  v14 = *(v19 + 6) >= capacity;
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v14;
}

int *__51__BWMetadataTimeMachine_waitUntilCapacity_timeout___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 40) count];
  result = (a1 + 56);
  if (*(*(*(a1 + 40) + 8) + 24) < *(a1 + 56))
  {
    return __51__BWMetadataTimeMachine_waitUntilCapacity_timeout___block_invoke_cold_1(result);
  }

  return result;
}

- (void)reset
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWMetadataTimeMachine reset];
  }

  metadataHandlingQueue = self->_metadataHandlingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__BWMetadataTimeMachine_reset__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(metadataHandlingQueue, block);
}

uint64_t __30__BWMetadataTimeMachine_reset__block_invoke(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(*(a1 + 32) + 48);
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(BWMetadataTimeMachineMetadataRequest *)v6 completeWithMetadata:?];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v6)
          {
            v6[5] = 0;
            v15.receiver = v6;
            v15.super_class = BWMetadataTimeMachineWaitRequest;
            objc_msgSendSuper2(&v15, sel_complete);
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v7 = [v1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v3 = v7;
    }

    while (v7);
  }

  [*(*(a1 + 32) + 40) removeAllObjects];
  return [*(*(a1 + 32) + 48) removeAllObjects];
}

uint64_t __47__BWMetadataTimeMachine_setEarliestAllowedPTS___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v2 + 72) = *(a1 + 56);
  *(v2 + 56) = v3;
  memset(&v10, 0, sizeof(v10));
  start = *(a1 + 40);
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&v10, &start, &duration);
  v4 = *(*(a1 + 32) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__BWMetadataTimeMachine_setEarliestAllowedPTS___block_invoke_2;
  v6[3] = &__block_descriptor_80_e29_B32__0__NSDictionary_8Q16_B24l;
  v7 = v10;
  return [*(*(a1 + 32) + 40) removeObjectsAtIndexes:{objc_msgSend(v4, "indexesOfObjectsPassingTest:", v6)}];
}

BOOL __47__BWMetadataTimeMachine_setEarliestAllowedPTS___block_invoke_2(_OWORD *a1, void *a2)
{
  CMTimeMakeFromDictionary(&time, [a2 objectForKeyedSubscript:*off_1E798A420]);
  v3 = a1[3];
  *&v5.start.value = a1[2];
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a1[4];
  return CMTimeRangeContainsTime(&v5, &time) == 0;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)earliestAllowedPTS
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1AD138BA7;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  metadataHandlingQueue = self->_metadataHandlingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__BWMetadataTimeMachine_earliestAllowedPTS__block_invoke;
  block[3] = &unk_1E798FAF8;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(metadataHandlingQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __43__BWMetadataTimeMachine_earliestAllowedPTS__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  result = *(v1 + 56);
  v2[3].n128_u64[0] = *(v1 + 72);
  v2[2] = result;
  return result;
}

- (void)addMetadata:(id)metadata
{
  if (metadata)
  {
    [metadata copy];
    OUTLINED_FUNCTION_0_7();
    v6[1] = 3221225472;
    v6[2] = __37__BWMetadataTimeMachine_addMetadata___block_invoke;
    v6[3] = &unk_1E798F898;
    v6[4] = self;
    v6[5] = v4;
    dispatch_async(v5, v6);
  }
}

- (void)_metadataForPTSRange:(uint64_t)range
{
  if (!range)
  {
    return 0;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  memset(&v87, 0, sizeof(v87));
  CMTimeMake(&v87, 1, 1000);
  v4 = MEMORY[0x1E6960C98];
  value = *MEMORY[0x1E6960C98];
  timescale = *(MEMORY[0x1E6960C98] + 8);
  if ([*(range + 40) count])
  {
    memset(&rhs, 0, 24);
    firstObject = [*(range + 40) firstObject];
    v7 = *off_1E798A420;
    CMTimeMakeFromDictionary(&rhs.start, [firstObject objectForKeyedSubscript:*off_1E798A420]);
    memset(&lhs, 0, sizeof(lhs));
    CMTimeMakeFromDictionary(&lhs, [objc_msgSend(*(range + 40) "lastObject")]);
    *&time1.start.value = *&rhs.start.value;
    time1.start.epoch = rhs.start.epoch;
    OUTLINED_FUNCTION_4_20();
    if (CMTimeCompare(&time1.start, &time2) > 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 0;
    }

    time2 = rhs.start;
    end = lhs;
    CMTimeRangeFromTimeToTime(&time1, &time2, &end);
  }

  else
  {
    if ((*(range + 68) & 1) == 0)
    {
      flags = *(v4 + 12);
      epoch = *(v4 + 16);
      v10 = *(v4 + 24);
      *&v5 = *(v4 + 32);
      v11 = *(v4 + 40);
      goto LABEL_15;
    }

    *&rhs.start.value = *(range + 56);
    rhs.start.epoch = *(range + 72);
    *&lhs.value = *MEMORY[0x1E6960CC0];
    OUTLINED_FUNCTION_1_24(*(MEMORY[0x1E6960CC0] + 16));
    CMTimeRangeMake(v14, v12, v13);
  }

  value = time1.start.value;
  flags = time1.start.flags;
  timescale = time1.start.timescale;
  epoch = time1.start.epoch;
  v10 = time1.duration.value;
  v11 = time1.duration.epoch;
  *&v5 = *&time1.duration.timescale;
LABEL_15:
  if ((flags & 1) == 0)
  {
    return 0;
  }

  array = 0;
  if ((BYTE4(v5) & 1) != 0 && !v11)
  {
    v57 = v5;
    if ((v10 & 0x8000000000000000) == 0)
    {
      rhs.start.value = value;
      rhs.start.timescale = timescale;
      rhs.start.flags = flags;
      rhs.start.epoch = epoch;
      *&lhs.value = *&v87.value;
      OUTLINED_FUNCTION_1_24(v87.epoch);
      CMTimeSubtract(v18, v16, v17);
      value = time1.start.value;
      v19 = time1.start.flags;
      timescale = time1.start.timescale;
      v20 = time1.start.epoch;
      time1.start = v87;
      CMTimeMultiply(&rhs.start, &time1.start, 2);
      lhs.value = v10;
      *&lhs.timescale = v57;
      CMTimeAdd(&time1.start, &lhs, &rhs.start);
      v21 = time1.start.value;
      v22 = time1.start.epoch;
      v23 = *&time1.start.timescale;
      v24 = *(a2 + 16);
      *&time1.start.value = *a2;
      *&time1.start.epoch = v24;
      *&time1.duration.timescale = *(a2 + 32);
      CMTimeRangeGetEnd(&rhs.start, &time1);
      time1.start.value = value;
      time1.start.timescale = timescale;
      time1.start.flags = v19;
      time1.start.epoch = v20;
      time1.duration.value = v21;
      *&time1.duration.timescale = v23;
      time1.duration.epoch = v22;
      CMTimeRangeGetEnd(&lhs, &time1);
      if (CMTimeCompare(&rhs.start, &lhs) > 0)
      {
        return 0;
      }

      array = [MEMORY[0x1E695DF70] array];
      v26 = *(a2 + 16);
      *&time1.start.value = *a2;
      *&time1.start.epoch = v26;
      *&time1.duration.timescale = *(a2 + 32);
      *&rhs.start.value = *&time1.start.value;
      rhs.start.epoch = *(a2 + 16);
      *&lhs.value = *&v87.value;
      OUTLINED_FUNCTION_1_24(v87.epoch);
      CMTimeSubtract(v29, v27, v28);
      rhs.start = v87;
      CMTimeMultiply(&lhs, &rhs.start, 2);
      time2 = time1.duration;
      v30 = CMTimeAdd(&rhs.start, &time2, &lhs);
      time1.duration = rhs.start;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v31 = *(range + 40);
      v39 = OUTLINED_FUNCTION_6_15(v30, v32, v33, v34, v35, v36, v37, v38, v53, v55, v57, *(&v57 + 1), rhs.start.value, *&rhs.start.timescale, rhs.start.epoch, rhs.duration.value, *&rhs.duration.timescale, rhs.duration.epoch, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, 0);
      if (v39)
      {
        v40 = v39;
        v41 = *v78;
        v42 = *off_1E798A420;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v78 != v41)
            {
              objc_enumerationMutation(v31);
            }

            v44 = *(*(&v77 + 1) + 8 * i);
            memset(&lhs, 0, sizeof(lhs));
            CMTimeMakeFromDictionary(&lhs, [v44 objectForKeyedSubscript:v42]);
            rhs = time1;
            OUTLINED_FUNCTION_4_20();
            v45 = CMTimeRangeContainsTime(&rhs, &time2);
            if (v45)
            {
              v45 = [array addObject:v44];
            }
          }

          v40 = OUTLINED_FUNCTION_6_15(v45, v46, v47, v48, v49, v50, v51, v52, v54, v56, v58, v59, rhs.start.value, *&rhs.start.timescale, rhs.start.epoch, rhs.duration.value, *&rhs.duration.timescale, rhs.duration.epoch, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
        }

        while (v40);
      }
    }
  }

  return array;
}

- (void)addDroppedFrameForPortType:(id)type pts:(id *)pts
{
  if (pts->var2)
  {
    v6 = *MEMORY[0x1E695E480];
    time = *pts;
    v7 = CMTimeCopyAsDictionary(&time, v6);
    v8 = *off_1E798A420;
    v9[0] = *off_1E798B540;
    v9[1] = v8;
    v10[0] = type;
    v10[1] = v7;
    v9[2] = @"IsDroppedFrameMetadataKey";
    v10[2] = MEMORY[0x1E695E118];
    -[BWMetadataTimeMachine addMetadata:](self, "addMetadata:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3]);
  }
}

void *__53__BWMetadataTimeMachine_metadataForPTSRange_timeout___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_3_15();
  result = [(BWMetadataTimeMachine *)v2 _metadataForPTSRange:v13];
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [BWMetadataTimeMachineMetadataRequest alloc];
    *&v6 = OUTLINED_FUNCTION_3_15().n128_u64[0];
    if (v5)
    {
      v14.receiver = v5;
      v14.super_class = BWMetadataTimeMachineMetadataRequest;
      v7 = objc_msgSendSuper2(&v14, sel_init, v6);
      if (v7)
      {
        v8 = v13[1];
        v7[1] = v13[0];
        v7[2] = v8;
        v7[3] = v13[2];
      }
    }

    OUTLINED_FUNCTION_5_21();
    *(v10 + 40) = v9;
    OUTLINED_FUNCTION_5_21();
    return [v12 addObject:*(v11 + 40)];
  }

  return result;
}

- (void)setEarliestAllowedPTS:(id *)s
{
  if (s->var2)
  {
    OUTLINED_FUNCTION_0_7();
    v6[1] = 3221225472;
    v6[2] = __47__BWMetadataTimeMachine_setEarliestAllowedPTS___block_invoke;
    v6[3] = &unk_1E7990150;
    v6[4] = v3;
    v7 = *v4;
    v8 = *(v4 + 2);
    dispatch_sync(v5, v6);
  }
}

uint64_t __51__BWMetadataTimeMachine_waitUntilCapacity_timeout___block_invoke_cold_1(int *a1)
{
  v2 = [BWMetadataTimeMachineWaitRequest alloc];
  if (v2)
  {
    v3 = *a1;
    v10.receiver = v2;
    v10.super_class = BWMetadataTimeMachineWaitRequest;
    v4 = objc_msgSendSuper2(&v10, sel_init);
    if (v4)
    {
      v4[4] = v3;
    }
  }

  OUTLINED_FUNCTION_5_21();
  *(v6 + 40) = v5;
  OUTLINED_FUNCTION_5_21();
  return [v8 addObject:*(v7 + 40)];
}

@end