@interface FigCaptureMemoryReporter
+ (id)sharedInstance;
- (FigCaptureMemoryReporter)init;
- (void)_changeReportFrequency:(uint64_t)frequency;
- (void)_generateMemgraph:(uint64_t)memgraph;
- (void)_logCurrentTransactions;
- (void)_reportMemoryStatus;
- (void)_startMemgraphCoolDown:(uint64_t)down;
- (void)_startReporting;
- (void)_updateActiveClientCountWithDelta:(uint64_t)delta;
- (void)dealloc;
- (void)decrementActiveClientCount:(BOOL)count clientIsCameraMessagesApp:(BOOL)app;
- (void)generateMemgraphWithReason:(id)reason;
- (void)incrementActiveClientCount:(BOOL)count clientIsCameraMessagesApp:(BOOL)app withMemoryPool:(id)pool;
@end

@implementation FigCaptureMemoryReporter

- (void)_reportMemoryStatus
{
  if (!self)
  {
    return;
  }

  v2 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
  if ((dword_1ED843FF0 & 4) != 0)
  {
    ContinuousUpTimeNanoseconds = FigGetContinuousUpTimeNanoseconds();
  }

  else
  {
    ContinuousUpTimeNanoseconds = -1;
  }

  v47 = *(self + 40);
  if (v47 == 1)
  {
    *(self + 40) = 0;
  }

  bzero(buffer, 0x1D0uLL);
  if (proc_pid_rusage(*(self + 64), 6, buffer))
  {
    OUTLINED_FUNCTION_1_5();
LABEL_91:
    FigDebugAssert3();
    return;
  }

  v3 = v105;
  v4 = (self + 128);
  v5 = atomic_load((self + 128));
  v6 = v3;
  if (v5 > v3)
  {
    v6 = atomic_load(v4);
  }

  atomic_store(v6, v4);
  v7 = v104;
  *(self + 120) = v104;
  v8 = v7 >> 10;
  v45 = v3 >> 10;
  if (*(self + 44) > 0 || (*(self + 70) & 1) != 0 || *(self + 80) < v8)
  {
    v101 = 0;
    v102 = 0;
  }

  else
  {
    v21 = *(self + 84);
    v101 = 0;
    v102 = 0;
    if (v21 <= v8)
    {
      v22 = 0;
      goto LABEL_43;
    }
  }

  v9 = *(self + 144);
  if (v9 && (dword_1ED843FF0 & 0x40) != 0)
  {
    [v9 getInUseFootprint:&v102 andOutOfUseFootprint:&v101];
  }

  proc_reset_footprint_interval();
  if (v8 <= 0x100000)
  {
    v10 = v8 + (v8 >> 4);
    v11 = v8 - (v8 >> 4);
  }

  else
  {
    v10 = v8 + 0x10000;
    v11 = v8 - 0x10000;
  }

  *(self + 80) = v10;
  *(self + 84) = v11;
  v12 = dword_1ED843FF0;
  if ((dword_1ED843FF0 & 1) == 0)
  {
    if ((dword_1ED843FF0 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_29:
    OUTLINED_FUNCTION_14_40();
    v17 = OUTLINED_FUNCTION_8_59();
    v18 = OUTLINED_FUNCTION_7_75(v17);
    if (OUTLINED_FUNCTION_4_91(v18))
    {
      v51 = 136315650;
      v52 = "[FigCaptureMemoryReporter _reportMemoryStatus]";
      v53 = 1024;
      *v54 = v102 >> 10;
      *&v54[4] = 1024;
      *&v54[6] = v101 >> 10;
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_2_117();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_128();
    v2 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
    if ((dword_1ED843FF0 & 2) == 0)
    {
      goto LABEL_42;
    }

LABEL_32:
    bzero(task_info_out, 0x174uLL);
    task_info_outCnt = 93;
    if (task_info(*MEMORY[0x1E69E9A60], 0x16u, task_info_out, &task_info_outCnt))
    {
      OUTLINED_FUNCTION_1_5();
      goto LABEL_91;
    }

    if ((v2[4080] & 2) != 0)
    {
      v19 = OUTLINED_FUNCTION_11_50();
      v20 = OUTLINED_FUNCTION_18_35(v19);
      if (OUTLINED_FUNCTION_4_91(v20))
      {
        v51 = 136319234;
        v52 = "[FigCaptureMemoryReporter _reportMemoryStatus]";
        v53 = 1024;
        *v54 = *&task_info_out[8];
        *&v54[4] = 2048;
        *&v54[6] = *task_info_out >> 10;
        *&v54[14] = 2048;
        *&v54[16] = v78 >> 10;
        *&v54[24] = 2048;
        *&v54[26] = v100 >> 10;
        *&v54[34] = 2048;
        *&v54[36] = *&v69[2] >> 10;
        *&v54[44] = 2048;
        *&v54[46] = *v71 >> 10;
        *&v54[54] = 2048;
        *&v54[56] = *&v71[16] >> 10;
        *&v54[64] = 2048;
        *&v54[66] = v72 >> 10;
        *&v54[74] = 2048;
        *&v54[76] = v74 >> 10;
        *&v54[84] = 2048;
        *&v54[86] = v76 >> 10;
        *&v54[94] = 2048;
        *&v54[96] = v70 >> 10;
        *&v54[104] = 2048;
        *&v54[106] = *&v71[8] >> 10;
        *&v54[114] = 2048;
        *&v54[116] = *&v71[24] >> 10;
        *&v54[124] = 2048;
        *&v54[126] = v73 >> 10;
        *&v54[134] = 2048;
        *&v54[136] = v75 >> 10;
        *&v54[144] = 2048;
        *&v54[146] = v77 >> 10;
        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_2_117();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_128();
      v2 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
      if ((dword_1ED843FF0 & 2) != 0)
      {
        v23 = OUTLINED_FUNCTION_11_50();
        v24 = OUTLINED_FUNCTION_18_35(v23);
        if (OUTLINED_FUNCTION_4_91(v24))
        {
          v51 = 136320514;
          v52 = "[FigCaptureMemoryReporter _reportMemoryStatus]";
          *v54 = v79 / 1024;
          v53 = 2048;
          *&v54[8] = 2048;
          *&v54[10] = v80 / 1024;
          *&v54[18] = 2048;
          *&v54[20] = v82 / 1024;
          *&v54[28] = 2048;
          *&v54[30] = v84 / 1024;
          *&v54[38] = 2048;
          *&v54[40] = v86 / 1024;
          *&v54[48] = 2048;
          *&v54[50] = v88 / 1024;
          *&v54[58] = 2048;
          *&v54[60] = v90 / 1024;
          *&v54[68] = 2048;
          *&v54[70] = v92 / 1024;
          *&v54[78] = 2048;
          *&v54[80] = v94 / 1024;
          *&v54[88] = 2048;
          *&v54[90] = v96 / 1024;
          *&v54[98] = 2048;
          *&v54[100] = v98 / 1024;
          *&v54[108] = 2048;
          *&v54[110] = v81 / 1024;
          *&v54[118] = 2048;
          *&v54[120] = v83 / 1024;
          *&v54[128] = 2048;
          *&v54[130] = v85 / 1024;
          *&v54[138] = 2048;
          *&v54[140] = v87 / 1024;
          *&v54[148] = 2048;
          *&v54[150] = v89 / 1024;
          v55 = 2048;
          v56 = v91 / 1024;
          v57 = 2048;
          v58 = v93 / 1024;
          v59 = 2048;
          v60 = v95 / 1024;
          v61 = 2048;
          v62 = v97 / 1024;
          v63 = 2048;
          v64 = v99 / 1024;
          OUTLINED_FUNCTION_5_29();
          OUTLINED_FUNCTION_2_117();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_128();
        v2 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
      }
    }

    goto LABEL_42;
  }

  OUTLINED_FUNCTION_14_40();
  v13 = OUTLINED_FUNCTION_8_59();
  v14 = OUTLINED_FUNCTION_7_75(v13);
  if (OUTLINED_FUNCTION_4_91(v14))
  {
    v15 = *(self + 120) >> 10;
    v16 = @"false";
    if (v47)
    {
      v16 = @"true";
    }

    v51 = 136316674;
    v52 = "[FigCaptureMemoryReporter _reportMemoryStatus]";
    v53 = 2048;
    *v54 = buffer[2];
    *&v54[8] = 2048;
    *&v54[10] = buffer[3];
    *&v54[18] = 2048;
    *&v54[20] = buffer[7] >> 10;
    *&v54[28] = 2048;
    *&v54[30] = v15;
    *&v54[38] = 2048;
    *&v54[40] = v3 >> 10;
    *&v54[48] = 2112;
    *&v54[50] = v16;
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_2_117();
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_128();
  v12 = dword_1ED843FF0;
  v2 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
  if ((dword_1ED843FF0 & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  if ((v12 & 2) != 0)
  {
    goto LABEL_32;
  }

LABEL_42:
  v22 = 1;
LABEL_43:
  bzero(host_info64_out, 0xA0uLL);
  v48 = 40;
  if (host_statistics64(*(self + 52), 4, host_info64_out, &v48))
  {
    OUTLINED_FUNCTION_1_5();
    goto LABEL_91;
  }

  v25 = *(self + 56);
  v26 = v25 * host_info64_out[3];
  v27 = v26 >> 10;
  v44 = (16 * v50);
  v42 = (v25 * host_info64_out[0]) >> 10;
  v41 = (v25 * host_info64_out[1]) >> 10;
  v43 = (v25 * host_info64_out[2]) >> 10;
  if (*(self + 44) > 0 || (*(self + 70) & 1) != 0 || *(self + 88) < v27 || *(self + 92) > v27)
  {
    if (v27 <= 0x100000)
    {
      v28 = v27 + (v27 >> 4);
      v29 = v27 - (v27 >> 4);
    }

    else
    {
      v28 = v27 + 0x10000;
      v29 = v27 - 0x10000;
    }

    *(self + 88) = v28;
    *(self + 92) = v29;
    if (v2[4080])
    {
      OUTLINED_FUNCTION_14_40();
      v31 = OUTLINED_FUNCTION_8_59();
      v32 = OUTLINED_FUNCTION_7_75(v31);
      if (OUTLINED_FUNCTION_4_91(v32))
      {
        v51 = 136316418;
        v52 = "[FigCaptureMemoryReporter _reportMemoryStatus]";
        v53 = 2048;
        *v54 = v26 >> 10;
        *&v54[8] = 2048;
        *&v54[10] = v42;
        *&v54[18] = 2048;
        *&v54[20] = v41;
        *&v54[28] = 2048;
        *&v54[30] = v43;
        *&v54[38] = 2048;
        *&v54[40] = v44;
        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_2_117();
      }

      v30 = 1;
      OUTLINED_FUNCTION_128();
      v2 = &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if ((!v47 || *(self + 44) < 1 || (*(self + 48) & 1) == 0 && (*(self + 49) & 1) == 0) && (*(self + 69) & 1) == 0 && *(self + 68) != 1)
  {
    goto LABEL_69;
  }

  v33 = *(v2 + 1020);
  if ((v33 & 0x20) != 0 && (*(self + 76) <= v8 || *(self + 69) == 1))
  {
    [(FigCaptureMemoryReporter *)self _logCurrentTransactions];
    if ((*(v2 + 1020) & 8) != 0)
    {
      goto LABEL_66;
    }
  }

  else if ((v33 & 8) != 0)
  {
LABEL_66:
    if (*(self + 72) <= v8 || *(self + 68) == 1)
    {
      [FigCaptureMemoryReporter _generateMemgraph:self];
    }
  }

LABEL_69:
  if ((v22 | v30) == 1)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if ((v2[4080] & 0x11) != 0)
    {
      v34 = *(self + 136);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(self + 120) >> 10;
        *task_info_out = 134219520;
        *&task_info_out[4] = v35;
        v68 = 2048;
        *v69 = v45;
        *&v69[8] = 2048;
        v70 = v26 >> 10;
        *v71 = 2048;
        *&v71[2] = v42;
        *&v71[10] = 2048;
        *&v71[12] = v41;
        *&v71[20] = 2048;
        *&v71[22] = v43;
        *&v71[30] = 2048;
        v72 = v44;
        _os_log_impl(&dword_1AC90E000, v34, OS_LOG_TYPE_DEFAULT, "m11:%lld, m12:%lld, m21:%lld, m22:%lld, m23:%lld, m24:%lld, m25:%lld", task_info_out, 0x48u);
      }
    }
  }

  if ((v2[4080] & 4) != 0 && (ContinuousUpTimeNanoseconds & 0x8000000000000000) == 0)
  {
    v36 = FigGetContinuousUpTimeNanoseconds();
    if ((v2[4080] & 4) != 0)
    {
      v37 = v36;
      OUTLINED_FUNCTION_14_40();
      v38 = OUTLINED_FUNCTION_8_59();
      v39 = v65;
      if (os_log_type_enabled(v38, task_info_outCnt))
      {
        v40 = v39;
      }

      else
      {
        v40 = v39 & 0xFFFFFFFE;
      }

      if (v40)
      {
        v51 = 136315394;
        v52 = "[FigCaptureMemoryReporter _reportMemoryStatus]";
        v53 = 2048;
        *v54 = (v37 - ContinuousUpTimeNanoseconds) / 0x3E8uLL;
        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_sOnceToken_1 != -1)
  {
    +[FigCaptureMemoryReporter sharedInstance];
  }

  return sharedInstance_sSharedFigMemoryReporter;
}

FigCaptureMemoryReporter *__42__FigCaptureMemoryReporter_sharedInstance__block_invoke()
{
  result = objc_alloc_init(FigCaptureMemoryReporter);
  sharedInstance_sSharedFigMemoryReporter = result;
  return result;
}

- (FigCaptureMemoryReporter)init
{
  v5.receiver = self;
  v5.super_class = FigCaptureMemoryReporter;
  v2 = [(FigCaptureMemoryReporter *)&v5 init];
  if (v2)
  {
    FigDebugIsInternalBuild();
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v2 + 1) = FigDispatchQueueCreateStandardDispatchQueue();
    *(v2 + 16) = getpid();
    v3 = MEMORY[0x1B26F1E40]();
    *(v2 + 13) = v3;
    host_page_size(v3, v2 + 7);
    *(v2 + 4) = 0;
    *(v2 + 34) = 0;
    v2[70] = 0;
    *(v2 + 9) = vdup_n_s32(0x4B000u);
    *(v2 + 104) = xmmword_1AD056BB0;
    v2[96] = dword_1ED843FF0 != 0;
    *(v2 + 18) = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMemoryReporter;
  [(FigCaptureMemoryReporter *)&v3 dealloc];
}

- (void)generateMemgraphWithReason:(id)reason
{
  if (dword_1ED843FF0)
  {
    v35 = 0;
    v34 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *buffer = 0u;
  if (proc_pid_rusage(self->_my_pid, 6, buffer))
  {
    [FigCaptureMemoryReporter generateMemgraphWithReason:];
  }

  [FigCaptureMemoryReporter _generateMemgraph:?];
}

- (void)_generateMemgraph:(uint64_t)memgraph
{
  if (memgraph)
  {
    os_unfair_lock_lock((memgraph + 36));
    v2 = *(memgraph + 24);
    os_unfair_lock_unlock((memgraph + 36));
    if (dword_1ED843FF0)
    {
      corpse_task_port = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v2)
    {
      v4 = MEMORY[0x1E69E9A60];
      v5 = *MEMORY[0x1E69E9A60];
      corpse_task_port = 0;
      v6 = task_generate_corpse(v5, &corpse_task_port);
      if (dword_1ED843FF0)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v6)
      {
        [FigCaptureMemoryReporter _generateMemgraph:];
      }

      else
      {
        v8 = corpse_task_port;
        v11 = 0;
        v12[0] = &v11;
        v12[1] = 0x2020000000;
        v9 = getReportMemoryExceptionFromTaskSymbolLoc_ptr;
        v12[2] = getReportMemoryExceptionFromTaskSymbolLoc_ptr;
        if (!getReportMemoryExceptionFromTaskSymbolLoc_ptr)
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke;
          v13[3] = &unk_1E798FC38;
          v13[4] = &v11;
          __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke(v13);
          v9 = *(v12[0] + 24);
        }

        _Block_object_dispose(&v11, 8);
        if (!v9)
        {
          [FigCaptureMemoryReporter _generateMemgraph:];
        }

        (v9)(v8, 1, 0, 0, 0);
        mach_port_deallocate(*v4, corpse_task_port);
        if (dword_1ED843FF0)
        {
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [(FigCaptureMemoryReporter *)memgraph _startMemgraphCoolDown:?];
      }
    }
  }
}

void __51__FigCaptureMemoryReporter__startMemgraphCoolDown___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 36));
  dispatch_source_cancel(*(*(a1 + 32) + 24));

  *(*(a1 + 32) + 24) = 0;
  v2 = (*(a1 + 32) + 36);

  os_unfair_lock_unlock(v2);
}

- (void)incrementActiveClientCount:(BOOL)count clientIsCameraMessagesApp:(BOOL)app withMemoryPool:(id)pool
{
  if (self->_anyLoggingEnabled)
  {
    appCopy = app;
    countCopy = count;
    if ((dword_1ED843FF0 & 4) != 0)
    {
      OUTLINED_FUNCTION_112();
      v9 = OUTLINED_FUNCTION_77();
      if (os_log_type_enabled(v9, v11))
      {
        v10 = v12;
      }

      else
      {
        v10 = v12 & 0xFFFFFFFE;
      }

      if (v10)
      {
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_memoryPool = pool;
    [(FigCaptureMemoryReporter *)self _updateActiveClientCountWithDelta:?];
    if (countCopy)
    {
      self->_activeClientsIncludeCamera = 1;
    }

    if (appCopy)
    {
      self->_activeClientsIncludeCameraMessagesApp = 1;
    }
  }
}

- (void)_updateActiveClientCountWithDelta:(uint64_t)delta
{
  if (delta)
  {
    os_unfair_lock_lock((delta + 32));
    v4 = *(delta + 44);
    v5 = v4 + a2;
    v6 = v5 & ~(v5 >> 31);
    *(delta + 44) = v6;
    if (v4 != v6 && (!v4 || v5 <= 0))
    {
      *(delta + 40) = 1;
      v7 = v5 < 1;
      v8 = 104;
      if (v7)
      {
        v8 = 112;
      }

      [(FigCaptureMemoryReporter *)delta _changeReportFrequency:?];
    }

    os_unfair_lock_unlock((delta + 32));
  }
}

- (void)decrementActiveClientCount:(BOOL)count clientIsCameraMessagesApp:(BOOL)app
{
  if (self->_anyLoggingEnabled)
  {
    appCopy = app;
    countCopy = count;
    if ((dword_1ED843FF0 & 4) != 0)
    {
      OUTLINED_FUNCTION_112();
      v7 = OUTLINED_FUNCTION_77();
      v8 = OUTLINED_FUNCTION_15_1(v7);
      if (OUTLINED_FUNCTION_12(v8))
      {
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(FigCaptureMemoryReporter *)self _updateActiveClientCountWithDelta:?];
    if (countCopy || appCopy)
    {
      if (countCopy)
      {
        self->_activeClientsIncludeCamera = 0;
      }

      if (appCopy)
      {
        self->_activeClientsIncludeCameraMessagesApp = 0;
      }

      if ((dword_1ED843FF0 & 8) != 0)
      {
        [(FigCaptureMemoryReporter *)self _startMemgraphCoolDown:?];
      }
    }
  }
}

- (void)_startMemgraphCoolDown:(uint64_t)down
{
  if (down)
  {
    os_unfair_lock_lock((down + 36));
    if (!*(down + 24))
    {
      v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(down + 8));
      *(down + 24) = v4;
      v5 = dispatch_time(0, 1000000000 * a2);
      dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
      v6 = *(down + 24);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __51__FigCaptureMemoryReporter__startMemgraphCoolDown___block_invoke;
      handler[3] = &unk_1E798F870;
      handler[4] = down;
      dispatch_source_set_event_handler(v6, handler);
      dispatch_activate(*(down + 24));
    }

    os_unfair_lock_unlock((down + 36));
  }
}

- (void)_changeReportFrequency:(uint64_t)frequency
{
  if (frequency)
  {
    v4 = *(frequency + 16);
    if (v4)
    {
      if ((dword_1ED843FF0 & 4) != 0)
      {
        OUTLINED_FUNCTION_112();
        v5 = OUTLINED_FUNCTION_77();
        if (os_log_type_enabled(v5, v16))
        {
          v6 = v17;
        }

        else
        {
          v6 = v17 & 0xFFFFFFFE;
        }

        if (v6)
        {
          v12 = 136315138;
          v13 = "[FigCaptureMemoryReporter _changeReportFrequency:]";
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 = *(frequency + 16);
      }

      dispatch_source_cancel(v4);

      *(frequency + 16) = 0;
    }

    if ((dword_1ED843FF0 & 4) != 0)
    {
      OUTLINED_FUNCTION_112();
      v7 = OUTLINED_FUNCTION_77();
      v8 = OUTLINED_FUNCTION_15_1(v7);
      if (OUTLINED_FUNCTION_12(v8))
      {
        v12 = 136315394;
        v13 = "[FigCaptureMemoryReporter _changeReportFrequency:]";
        v14 = 2048;
        v15 = a2;
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(frequency + 8));
    *(frequency + 16) = v9;
    dispatch_source_set_timer(v9, 0, 1000000 * a2, 0x3E8uLL);
    v10 = *(frequency + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __51__FigCaptureMemoryReporter__changeReportFrequency___block_invoke;
    handler[3] = &unk_1E798F870;
    handler[4] = frequency;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_activate(*(frequency + 16));
  }
}

- (void)_startReporting
{
  if (self && *(self + 96) == 1)
  {
    *(self + 136) = os_log_create("com.apple.coremedia.CMCapture.FigCaptureMemoryReporter", "");
    os_unfair_lock_lock((self + 32));
    [(FigCaptureMemoryReporter *)self _changeReportFrequency:?];

    os_unfair_lock_unlock((self + 32));
  }
}

- (void)_logCurrentTransactions
{
  if (self)
  {
    obj = FigOSTransactionCopyDescriptions();
    v1 = [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    if (dword_1ED843FF0)
    {
      v9 = OUTLINED_FUNCTION_12_49();
      v10 = os_log_type_enabled(v9, v71);
      if (OUTLINED_FUNCTION_12(v10))
      {
        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      v1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = OUTLINED_FUNCTION_16_41(v1, v2, v3, v4, v5, v6, v7, v8, v27, v29, v31, v33, v34, obj, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, 0);
    if (v11)
    {
      v13 = v11;
      v14 = MEMORY[0];
      *&v12 = 136315394;
      v32 = v12;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(obja);
          }

          v16 = *(8 * i);
          v17 = [v16 rangeOfString:@"://"];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = [v16 substringToIndex:v17];
          }

          if (dword_1ED843FF0)
          {
            v25 = OUTLINED_FUNCTION_12_49();
            if (os_log_type_enabled(v25, v71))
            {
              v26 = v72;
            }

            else
            {
              v26 = v72 & 0xFFFFFFFE;
            }

            if (v26)
            {
              OUTLINED_FUNCTION_5_29();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            v17 = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v13 = OUTLINED_FUNCTION_16_41(v17, v18, v19, v20, v21, v22, v23, v24, v28, v30, v32, *(&v32 + 1), v35, obja, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v70);
      }

      while (v13);
    }

    CFRelease(obja);
  }
}

- (void)_generateMemgraph:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void soft_ReportMemoryExceptionFromTask(task_t description:{BOOL, const char * _Nullable, dispatch_queue_t _Nullable, void (^ _Nullable)(NSError * _Nullable))"), @"FigCaptureMemoryReporter.m", 38, @"%s", dlerror()}];
  __break(1u);
}

@end