@interface FigCaptureDeferredProcessingEngine
+ (id)sharedProcessingEngine;
+ (void)initialize;
- (BWDeferredProcessingContainer)currentContainer;
- (BWStillImageSettings)_stillImageSettingsForContainer:(BWStillImageSettings *)result;
- (FigCaptureDeferredProcessingEngine)init;
- (uint64_t)_reportCoreAnalyticsDataWithError:(void *)a3 job:;
- (uint64_t)_reserveForClientPID:(uint64_t)result;
- (uint64_t)_shouldReuseGraphForContainer:(uint64_t)a1;
- (uint64_t)_transientContainerForDeviceType:(int)a3 underlyingDeviceType:(int)a4 devicePosition:(void *)a5 settings:(void *)a6 processingSettings:(void *)a7 sourceAttributes:(void *)a8 underlyingSourceAttributes:(void *)a9 videoFormat:(void *)a10 underlyingVideoFormat:(void *)a11 depthDataFormat:(uint64_t)a12 photoIdentifier:(void *)a13 applicationIdentifier:;
- (uint64_t)_unreserveForClientPID:(uint64_t)result;
- (uint64_t)expectsGainMapForSettings:(void *)a3 captureSettings:;
- (void)_cleanupFromJob;
- (void)_ensureGraphForJob:(void *)a3 applicationID:;
- (void)_ensureGraphForProcessingContainer:(unsigned int)a3 sensorRawPixelFormat:(unint64_t)a4 sensorRawDimensions:(int64_t)a5 ultraHighResSensorRawDimensions:(uint64_t)a6 depthDataSourceDimensions:(uint64_t)a7 depthDataTargetDimensions:(uint64_t)a8 photoIdentifier:(void *)a9 applicationID:;
- (void)_handleJobCompletion:(void *)a1;
- (void)_handleProcessedStillImage:(uint64_t)a3 error:(void *)a4 settings:;
- (void)_releaseGraph;
- (void)_runJob;
- (void)dealloc;
- (void)ensurePrewarmedGraphForSettings:(id)a3 processingSettings:(id)a4 applicationID:(id)a5;
- (void)executeJob:(id)a3;
- (void)graph:(id)a3 didFinishStartingWithError:(int)a4;
- (void)immediateTermination;
- (void)releasePrewarmingResources;
- (void)releaseResourcesForClientPID:(int)a3 isPrewarmCancellation:(BOOL)a4;
@end

@implementation FigCaptureDeferredProcessingEngine

+ (id)sharedProcessingEngine
{
  if (sharedProcessingEngine_sOnceEngineToken != -1)
  {
    +[FigCaptureDeferredProcessingEngine sharedProcessingEngine];
  }

  return sharedProcessingEngine_sEngine;
}

- (void)_cleanupFromJob
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v2 = *(a1 + 88);
    if (v2)
    {
      -[FigCaptureDeferredProcessingEngine _unreserveForClientPID:](a1, [objc_msgSend(v2 "processorRequest")]);
      v3 = *(a1 + 88);
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 88) = 0;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

FigCaptureDeferredProcessingEngine *__60__FigCaptureDeferredProcessingEngine_sharedProcessingEngine__block_invoke()
{
  result = objc_alloc_init(FigCaptureDeferredProcessingEngine);
  sharedProcessingEngine_sEngine = result;
  return result;
}

- (FigCaptureDeferredProcessingEngine)init
{
  v19.receiver = self;
  v19.super_class = FigCaptureDeferredProcessingEngine;
  v2 = [(FigCaptureDeferredProcessingEngine *)&v19 init];
  if (v2)
  {
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_workQueue = FigDispatchQueueCreateWithPriority();
    v2->_reservationLock = FigSimpleMutexCreateWithFlags();
    v3 = objc_autoreleasePoolPush();
    v4 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters cameraTuningParameters];
    v5 = [MEMORY[0x1E695DFA8] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(NSDictionary *)v4 allKeys];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 hasPrefix:@"PortType"])
          {
            [v5 addObjectsFromArray:{objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v4, "objectForKeyedSubscript:", v11), "allKeys")}];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v8);
    }

    v2->_allSensorIDStrings = [v5 copy];
    v12 = [-[NSDictionary objectForKeyedSubscript:](v4 objectForKeyedSubscript:{@"DefaultSensorIDs", "copy"}];
    v2->_memoryPool = 0;
    v2->_flushAssertion = 0;
    v2->_defaultSensorIDsByPortType = v12;
    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = FigCaptureDeferredProcessingEngine;
  [(FigCaptureDeferredProcessingEngine *)&v3 dealloc];
}

- (BWDeferredProcessingContainer)currentContainer
{
  prewarmedContainer = self->_prewarmedContainer;
  v3 = [(FigCaptureDeferredProcessingJob *)self->_job container];
  if (prewarmedContainer)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return prewarmedContainer;
  }
}

- (void)graph:(id)a3 didFinishStartingWithError:(int)a4
{
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__FigCaptureDeferredProcessingEngine_graph_didFinishStartingWithError___block_invoke;
  v5[3] = &unk_1E7991CF0;
  v6 = a4;
  v5[4] = self;
  dispatch_async(workQueue, v5);
}

void __71__FigCaptureDeferredProcessingEngine_graph_didFinishStartingWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2)
  {
    [objc_msgSend(v3 "currentJob")];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    [(FigCaptureDeferredProcessingEngine *)v6 _handleJobCompletion:v7];
  }

  else
  {
    v4 = [v3 currentContainer];
    v5 = [v4 pipelineParameters];

    *(*(a1 + 32) + 32) = [objc_msgSend(objc_msgSend(v4 "captureSettings")];
    *(*(a1 + 32) + 40) = [v5 copy];
    *(*(a1 + 32) + 48) = fcdpe_demosaicedRawEnabled(v4);
    *(*(a1 + 32) + 49) = ([objc_msgSend(v4 "captureSettings")] & 0x800) != 0;

    *(*(a1 + 32) + 56) = [(FigCaptureDeferredProcessingEngine *)*(a1 + 32) _stillImageSettingsForContainer:v4];
    if ([*(a1 + 32) currentJob])
    {
      v8 = *(a1 + 32);

      [(FigCaptureDeferredProcessingEngine *)v8 _runJob];
    }
  }
}

- (void)executeJob:(id)a3
{
  -[FigCaptureDeferredProcessingEngine _reserveForClientPID:](self, [objc_msgSend(a3 "processorRequest")]);
  workQueue = self->_workQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__FigCaptureDeferredProcessingEngine_executeJob___block_invoke;
  v6[3] = &unk_1E798F898;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(workQueue, v6);
}

void __49__FigCaptureDeferredProcessingEngine_executeJob___block_invoke(uint64_t a1)
{
  if (dword_1ED843F70)
  {
    v44 = 0;
    v43 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 32) setInteractiveQoS:{qos_class_self() > 0x18, v29, v31}];
  v3 = *(a1 + 40);
  if (*(v3 + 88))
  {
    v44 = 0;
    v43 = OS_LOG_TYPE_DEFAULT;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = v44;
    if (os_log_type_enabled(v22, v43))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v25 = [objc_msgSend(*(a1 + 32) "container")];
      v26 = [objc_msgSend(*(a1 + 32) "processorRequest")];
      v27 = [objc_msgSend(*(*(a1 + 40) + 88) "container")];
      v28 = [objc_msgSend(*(*(a1 + 40) + 88) "processorRequest")];
      v33 = 136316162;
      v34 = "[FigCaptureDeferredProcessingEngine executeJob:]_block_invoke";
      v35 = 2114;
      *v36 = v25;
      *&v36[8] = 1024;
      *&v36[10] = v26;
      v37 = 2114;
      v38 = v27;
      v39 = 1024;
      LODWORD(v40) = v28;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"A client requested deferred processing for a container while a job was in-progress for another client", 0}]);
  }

  *(*(a1 + 40) + 96) = 0;
  *(*(a1 + 40) + 88) = *(a1 + 32);
  v4 = *(a1 + 40);
  if (!*(v4 + 64))
  {
    v5 = @"no pre-existing graph";
LABEL_16:
    *(v4 + 136) = 0;
    if (dword_1ED843F70)
    {
      v44 = 0;
      v43 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = v44;
      if (os_log_type_enabled(v11, v43))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = [objc_msgSend(*(*(a1 + 40) + 88) "processorRequest")];
        v15 = [objc_msgSend(*(a1 + 32) "processorRequest")];
        v16 = [objc_msgSend(*(a1 + 32) "processorRequest")];
        v17 = [objc_msgSend(objc_msgSend(*(a1 + 32) "container")];
        v33 = 136316418;
        v34 = "[FigCaptureDeferredProcessingEngine executeJob:]_block_invoke";
        v35 = 1024;
        *v36 = v14;
        *&v36[4] = 2114;
        *&v36[6] = v5;
        v37 = 2114;
        v38 = v15;
        v39 = 2114;
        v40 = v16;
        v41 = 2048;
        v42 = v17;
        LODWORD(v32) = 58;
        v30 = &v33;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    -[FigCaptureDeferredProcessingEngine _ensureGraphForJob:applicationID:](*(a1 + 40), *(a1 + 32), [objc_msgSend(*(a1 + 32) processorRequest]);
    return;
  }

  v6 = -[FigCaptureDeferredProcessingEngine _shouldReuseGraphForContainer:](v4, [*(a1 + 32) container]);
  v7 = *(a1 + 40);
  if ((v6 & 1) == 0)
  {
    if (([*(v7 + 88) isInteractiveQoS] & 1) == 0)
    {
      [*(*(a1 + 40) + 64) setGraphStateTransitionTimeoutSeconds:60];
    }

    [(FigCaptureDeferredProcessingEngine *)*(a1 + 40) _releaseGraph];
    v4 = *(a1 + 40);
    v5 = @"should not re-use existing graph";
    goto LABEL_16;
  }

  *(v7 + 136) = 1;
  if (dword_1ED843F70)
  {
    v44 = 0;
    v43 = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v44;
    if (os_log_type_enabled(v8, v43))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v18 = [objc_msgSend(*(*(a1 + 40) + 88) "processorRequest")];
      v19 = [objc_msgSend(*(a1 + 32) "processorRequest")];
      v20 = [objc_msgSend(*(a1 + 32) "processorRequest")];
      v21 = [objc_msgSend(objc_msgSend(*(a1 + 32) "container")];
      v33 = 136316162;
      v34 = "[FigCaptureDeferredProcessingEngine executeJob:]_block_invoke";
      v35 = 1024;
      *v36 = v18;
      *&v36[4] = 2114;
      *&v36[6] = v19;
      v37 = 2114;
      v38 = v20;
      v39 = 2048;
      v40 = v21;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(FigCaptureDeferredProcessingEngine *)*(a1 + 40) _runJob];
}

- (void)releaseResourcesForClientPID:(int)a3 isPrewarmCancellation:(BOOL)a4
{
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__FigCaptureDeferredProcessingEngine_releaseResourcesForClientPID_isPrewarmCancellation___block_invoke;
  block[3] = &unk_1E7991948;
  block[4] = self;
  v10 = a3;
  v11 = 25;
  v12 = a4;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(self->_workQueue, v8);
  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);

  if (*v7 == 1)
  {
    kdebug_trace();
  }
}

void __89__FigCaptureDeferredProcessingEngine_releaseResourcesForClientPID_isPrewarmCancellation___block_invoke(uint64_t a1)
{
  if ([objc_msgSend(*(*(a1 + 32) + 88) "processorRequest")] == *(a1 + 40) || !*(*(a1 + 32) + 88))
  {
    if (dword_1ED843F70)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(a1 + 32);
    if ((*(a1 + 48) & 1) != 0 || *(v4 + 88) && (v5 = [*(v4 + 88) isInteractiveQoS], v4 = *(a1 + 32), (v5 & 1) == 0))
    {
      [*(v4 + 64) setGraphStateTransitionTimeoutSeconds:{60, v6, v7}];
      v4 = *(a1 + 32);
    }

    [(FigCaptureDeferredProcessingEngine *)v4 _releaseGraph];
    [(FigCaptureDeferredProcessingEngine *)*(a1 + 32) _cleanupFromJob];

    *(*(a1 + 32) + 56) = 0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)releasePrewarmingResources
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__FigCaptureDeferredProcessingEngine_releasePrewarmingResources__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)immediateTermination
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FigCaptureDeferredProcessingEngine_immediateTermination__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)ensurePrewarmedGraphForSettings:(id)a3 processingSettings:(id)a4 applicationID:(id)a5
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke;
  block[3] = &unk_1E7991D18;
  block[4] = self;
  block[5] = a5;
  block[6] = a3;
  block[7] = a4;
  block[8] = v7;
  dispatch_sync(workQueue, block);
  _Block_object_dispose(v7, 8);
}

void __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) currentJob])
  {
    if (!dword_1ED843F70)
    {
LABEL_83:
      v45 = 0;
      goto LABEL_46;
    }

    LODWORD(v93[0]) = 0;
    LOBYTE(v92[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_82:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_83;
  }

  v2 = [*(a1 + 48) deferredSourceDeviceType];
  v3 = v2;
  v4 = v2 - 4;
  v5 = v2;
  if ((v2 - 4) <= 8)
  {
    v5 = v2;
    if ((0x135u >> v4))
    {
      v5 = dword_1AD0551D8[v4];
    }
  }

  v6 = [*(a1 + 48) deferredSourcePosition];
  v7 = *(a1 + 48);
  v8 = [v7 deferredVideoFormatUniqueID];
  v81 = [v7 deferredDepthDataFormatUniqueID];
  v9 = [+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke;
  v87[3] = &__block_descriptor_40_e40_B32__0__FigCaptureSourceBacking_8Q16_B24l;
  v88 = v3;
  v89 = v6;
  v10 = [v9 indexOfObjectPassingTest:v87];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_76;
  }

  v11 = [v9 objectAtIndexedSubscript:v10];
  v80 = [v11 attributes];
  *v84 = MEMORY[0x1E69E9820];
  *&v84[8] = 3221225472;
  *&v84[16] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_2;
  v85 = &__block_descriptor_40_e40_B32__0__FigCaptureSourceBacking_8Q16_B24l;
  v86[0] = v5;
  v86[1] = v6;
  v83 = v6;
  v12 = [v9 indexOfObjectPassingTest:v84];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_5();
    goto LABEL_76;
  }

  v79 = v3;
  v13 = v5;
  v14 = [v9 objectAtIndexedSubscript:v12];
  v15 = [v14 attributes];
  v16 = [v11 formats];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_3;
  v93[3] = &unk_1E7991DB0;
  v93[4] = v8;
  v17 = [v16 indexOfObjectPassingTest:v93];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_4();
    goto LABEL_76;
  }

  v18 = [v16 objectAtIndexedSubscript:v17];
  v19 = [v14 formats];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_4;
  v92[3] = &unk_1E7991DB0;
  v92[4] = v8;
  v20 = [v19 indexOfObjectPassingTest:v92];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_3();
    goto LABEL_76;
  }

  v21 = [v19 objectAtIndexedSubscript:v20];
  if (v81)
  {
    v22 = [v18 supportedDepthDataFormats];
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_5;
    v91[3] = &unk_1E7991DD8;
    v91[4] = v81;
    v23 = [v22 indexOfObjectPassingTest:v91];
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_2();
      goto LABEL_76;
    }

    v24 = v15;
    v25 = [v22 objectAtIndexedSubscript:v23];
    if (!v25)
    {
      __103__FigCaptureDeferredProcessingEngine_ensurePrewarmedGraphForSettings_processingSettings_applicationID___block_invoke_cold_1();
LABEL_76:
      *(*(*(a1 + 64) + 8) + 24) = -12780;
LABEL_77:
      FigDebugAssert3();
      LODWORD(v93[0]) = 0;
      LOBYTE(v92[0]) = 0;
      v73 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v74 = v93[0];
      if (os_log_type_enabled(v73, v92[0]))
      {
        v75 = v74;
      }

      else
      {
        v75 = v74 & 0xFFFFFFFE;
      }

      if (!v75)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }
  }

  else
  {
    v24 = v15;
    v25 = 0;
  }

  v26 = [v7 deferredPhotoProxyDimensions];
  if (v26 < 1 || SHIDWORD(v26) <= 0)
  {
    v82 = v21;
    v27 = [v7 outputDimensions];
    if (v27 < 1 || SHIDWORD(v27) < 1)
    {
      v28 = [v18 dimensions];
    }

    else
    {
      v28 = [v7 outputDimensions];
    }

    v29 = v28;
    if (![v7 aspectRatio])
    {
      if ([v18 isDynamicAspectRatioSupported])
      {
        [v7 setAspectRatio:1];
        if (v83 == 2 && FigCaptureFrontCameraRotationAngle() % 180 == 90)
        {
          [v7 setAspectRatio:2];
        }
      }
    }

    v30 = [v18 highResStillImageDimensions];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __fcdpe_resolveFormatsAndUpdateSettings_block_invoke_6;
    v90[3] = &__block_descriptor_40_e49_B32__0__FigCaptureSourceFormatDimensions_8Q16_B24l;
    v90[4] = v29;
    v31 = [v30 indexOfObjectPassingTest:v90];
    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_76;
    }

    v32 = v31;
    [v7 setResolutionFlavor:{+[FigCaptureSourceFormatDimensions identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:](FigCaptureSourceFormatDimensions, "identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:", v29, v30, objc_msgSend(v7, "aspectRatio"))}];
    v33 = [v30 objectAtIndexedSubscript:v32];
    v34 = [v33 deferredPhotoProxyDimensions];
    if ([v7 aspectRatio])
    {
      v35 = BWAspectRatioValueFromAspectRatio([v7 aspectRatio]);
      v34 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v29, v35);
    }

    [v7 setDeferredPhotoProxyWidth:v34];
    [v7 setDeferredPhotoProxyHeight:HIDWORD(v34)];
    v36 = [v33 dimensions];
    if ([v7 aspectRatio])
    {
      v37 = BWAspectRatioValueFromAspectRatio([v7 aspectRatio]);
      v36 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v29, v37);
    }

    [v7 setDeferredPhotoFinalWidth:v36];
    [v7 setDeferredPhotoFinalHeight:HIDWORD(v36)];
    [v7 setOutputWidth:v36];
    [v7 setOutputHeight:HIDWORD(v36)];
    v21 = v82;
  }

  v38 = v80;
  v39 = v24;
  v40 = v18;
  v41 = v21;
  v42 = v25;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  if (!v40)
  {
    goto LABEL_77;
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    FigDebugAssert3();
    LODWORD(v93[0]) = 0;
    LOBYTE(v92[0]) = 0;
    v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v68 = v93[0];
    if (os_log_type_enabled(v67, v92[0]))
    {
      v69 = v68;
    }

    else
    {
      v69 = v68 & 0xFFFFFFFE;
    }

    if (!v69)
    {
      goto LABEL_82;
    }

LABEL_81:
    v76 = *(a1 + 48);
    *v84 = 136315394;
    *&v84[4] = "[FigCaptureDeferredProcessingEngine ensurePrewarmedGraphForSettings:processingSettings:applicationID:]_block_invoke";
    *&v84[12] = 2114;
    *&v84[14] = v76;
    _os_log_send_and_compose_impl();
    goto LABEL_82;
  }

  v43 = v42;
  v44 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  v45 = [(FigCaptureDeferredProcessingEngine *)*(a1 + 32) _transientContainerForDeviceType:v79 underlyingDeviceType:v13 devicePosition:v83 settings:*(a1 + 48) processingSettings:*(a1 + 56) sourceAttributes:v38 underlyingSourceAttributes:v39 videoFormat:v40 underlyingVideoFormat:v41 depthDataFormat:v43 photoIdentifier:v44 applicationIdentifier:*(a1 + 40)];
  v46 = *(a1 + 32);
  if (!*(v46 + 64))
  {
    goto LABEL_34;
  }

  if (![(FigCaptureDeferredProcessingEngine *)v46 _shouldReuseGraphForContainer:v45])
  {
    v62 = *(*(a1 + 32) + 64);
    if (v62)
    {
      if (dword_1ED843F70)
      {
        LODWORD(v93[0]) = 0;
        LOBYTE(v92[0]) = 0;
        v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v64 = v93[0];
        if (os_log_type_enabled(v63, v92[0]))
        {
          v65 = v64;
        }

        else
        {
          v65 = v64 & 0xFFFFFFFE;
        }

        if (v65)
        {
          v70 = *(a1 + 40);
          v71 = *(a1 + 48);
          v72 = *(a1 + 56);
          *v84 = 136315906;
          *&v84[4] = "[FigCaptureDeferredProcessingEngine ensurePrewarmedGraphForSettings:processingSettings:applicationID:]_block_invoke";
          *&v84[12] = 2112;
          *&v84[14] = v70;
          *&v84[22] = 2112;
          v85 = v71;
          LOWORD(v86[0]) = 2112;
          *(v86 + 2) = v72;
          LODWORD(v78) = 42;
          v77 = v84;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v62 = *(*(a1 + 32) + 64);
      }

      [v62 setGraphStateTransitionTimeoutSeconds:{60, v77, v78}];
      [(FigCaptureDeferredProcessingEngine *)*(a1 + 32) _releaseGraph];
      goto LABEL_41;
    }

LABEL_34:
    if (dword_1ED843F70)
    {
      LODWORD(v93[0]) = 0;
      LOBYTE(v92[0]) = 0;
      v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v48 = v93[0];
      if (os_log_type_enabled(v47, v92[0]))
      {
        v49 = v48;
      }

      else
      {
        v49 = v48 & 0xFFFFFFFE;
      }

      if (v49)
      {
        v50 = *(a1 + 40);
        v51 = *(a1 + 48);
        v52 = *(a1 + 56);
        *v84 = 136315906;
        *&v84[4] = "[FigCaptureDeferredProcessingEngine ensurePrewarmedGraphForSettings:processingSettings:applicationID:]_block_invoke";
        *&v84[12] = 2112;
        *&v84[14] = v50;
        *&v84[22] = 2112;
        v85 = v51;
        LOWORD(v86[0]) = 2112;
        *(v86 + 2) = v52;
        LODWORD(v78) = 42;
        v77 = v84;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_41:

    *(*(a1 + 32) + 96) = v45;
    v53 = [v43 soleHighResStillImageDimensions];
    v54 = v53;
    if ([objc_msgSend(v45 "pipelineParameters")])
    {
      v55 = FigCaptureFrontDepthDataToRGBRotationAngle();
      if (v55 == 270 || (v54 = v53, v55 == 90))
      {
        v54 = __ROR8__(v53, 32);
      }
    }

    -[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:](*(a1 + 32), v45, [*(a1 + 56) sensorRawPixelFormat], objc_msgSend(*(a1 + 56), "sensorRawDimensions"), objc_msgSend(*(a1 + 56), "ultraHighResSensorRawDimensions"), v54, v53, v44, *(a1 + 40));
    goto LABEL_46;
  }

  if (dword_1ED843F70)
  {
    LODWORD(v93[0]) = 0;
    LOBYTE(v92[0]) = 0;
    v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v57 = v93[0];
    if (os_log_type_enabled(v56, v92[0]))
    {
      v58 = v57;
    }

    else
    {
      v58 = v57 & 0xFFFFFFFE;
    }

    if (v58)
    {
      v59 = *(a1 + 40);
      v60 = *(a1 + 48);
      v61 = *(a1 + 56);
      *v84 = 136315906;
      *&v84[4] = "[FigCaptureDeferredProcessingEngine ensurePrewarmedGraphForSettings:processingSettings:applicationID:]_block_invoke";
      *&v84[12] = 2112;
      *&v84[14] = v59;
      *&v84[22] = 2112;
      v85 = v60;
      LOWORD(v86[0]) = 2112;
      *(v86 + 2) = v61;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_46:
}

- (void)_ensureGraphForProcessingContainer:(unsigned int)a3 sensorRawPixelFormat:(unint64_t)a4 sensorRawDimensions:(int64_t)a5 ultraHighResSensorRawDimensions:(uint64_t)a6 depthDataSourceDimensions:(uint64_t)a7 depthDataTargetDimensions:(uint64_t)a8 photoIdentifier:(void *)a9 applicationID:
{
  if (!a1)
  {
    return;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    [FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:];
  }

  v185[0] = 0;
  v184 = 0;
  v183[0] = 0;
  v183[1] = v183;
  v183[2] = 0x3052000000;
  v183[3] = __Block_byref_object_copy__17;
  v183[4] = __Block_byref_object_dispose__17;
  v183[5] = a1;
  v137 = [a1 currentJob];
  v135 = [a2 settings];
  v141 = [objc_msgSend(a2 "captureSettings")];
  v17 = [objc_msgSend(a2 "captureSettings")];
  v133 = [objc_msgSend(a2 "photoManifest")];
  if ((*(a1 + 72) & 1) == 0)
  {
    [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker openTransaction:"openTransaction:", 0];
  }

  v148 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v147 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v128 = a7;
  v129 = a4;
  v143 = a5;
  v126 = a3;
  v127 = a6;
  v138 = v17;
  v149 = a1;
  v18 = [a2 pipelineParameters];
  v19 = +[FigCaptureCameraParameters sharedInstance];
  v20 = [v18 nrfVersion];
  if (v20 != -[FigCaptureCameraParameters nrfVersion](v19, "nrfVersion") || [v18 deepZoomVersion] && (v21 = objc_msgSend(v18, "deepZoomVersion"), v21 != -[FigCaptureCameraParameters deepZoomVersion](v19, "deepZoomVersion")) || objc_msgSend(v18, "distortionCorrectionVersion") && (v22 = objc_msgSend(v18, "distortionCorrectionVersion"), v22 != -[FigCaptureCameraParameters distortionCorrectionVersion](v19, "distortionCorrectionVersion")))
  {
    v33 = 0;
    UpTimeNanoseconds = 0;
    v134 = 0;
    v52 = 0;
    v136 = 0;
    v53 = -16827;
    goto LABEL_169;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    [a2 captureRequestIdentifierBytesLow];
    [a2 captureRequestIdentifierBytesHigh];
    kdebug_trace();
  }

  -[BWMemoryPool ensureMemoryAsyncWithSize:withMaximizeSystemMemory:useOptimizedMemorySizeDistributionsIfAvailable:forClientBundleId:](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "ensureMemoryAsyncWithSize:withMaximizeSystemMemory:useOptimizedMemorySizeDistributionsIfAvailable:forClientBundleId:", 1, [v137 isInteractiveQoS], 0, 0);
  *(a1 + 120) = +[BWMemoryPool sharedMemoryPool];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (dword_1ED843F70)
  {
    v182 = 0;
    v181 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v180 = v141;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v180 count:{1, v115, v116}];
  obj = [MEMORY[0x1E695DF70] arrayWithArray:v24];
  v139 = [MEMORY[0x1E695DF70] arrayWithArray:v24];
  if ([v18 pearlModuleType] || (v17 & 0x4000000000) != 0)
  {
    v25 = [objc_msgSend(a2 "captureSettings")];
    [obj addObjectsFromArray:v25];
    [v139 addObjectsFromArray:v25];
    if ([v18 pearlModuleType])
    {
      [v139 removeObject:*off_1E798A0E8];
    }
  }

  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v26 = [obj countByEnumeratingWithState:&v176 objects:v175 count:16];
  v150 = a2;
  if (v26)
  {
    v27 = *v177;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v177 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v176 + 1) + 8 * i);
        v30 = [objc_msgSend(objc_msgSend(v150 "captureSettings")];
        if (!v30)
        {
          v30 = [*(a1 + 112) objectForKeyedSubscript:v29];
          if (!v30)
          {
            v116 = v131;
            LODWORD(v115) = 0;
            FigDebugAssert3();
            v33 = 0;
            goto LABEL_63;
          }
        }

        if (([*(a1 + 104) containsObject:v30] & 1) == 0)
        {
          v184 = -16134;
          v182 = 0;
          v181 = OS_LOG_TYPE_DEFAULT;
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v38 = v182;
          if (os_log_type_enabled(v37, v181))
          {
            v39 = v38;
          }

          else
          {
            v39 = v38 & 0xFFFFFFFE;
          }

          if (v39)
          {
            v40 = *(a1 + 104);
            v171 = 136315650;
            v172 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
            v173 = 2114;
            *v174 = v30;
            *&v174[8] = 2114;
            *&v174[10] = v40;
            LODWORD(v116) = 32;
            v115 = &v171;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_128:
          v33 = 0;
          v52 = 0;
          v136 = 0;
          v134 = 0;
          goto LABEL_170;
        }

        [v148 setObject:v30 forKeyedSubscript:v29];
        v31 = [v150 copyDictionaryForTag:objc_msgSend(MEMORY[0x1E696AEC0] err:{"stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagCameraInfoByPortTypePrefix, v29), &v184}];
        if (!v31)
        {
          goto LABEL_128;
        }

        [v147 setObject:v31 forKeyedSubscript:v29];
      }

      v26 = [obj countByEnumeratingWithState:&v176 objects:v175 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v32 = v150;
  if ([v150 hasTag:BWDeferredIntermediateTagModuleCalibrationByPortType])
  {
    v33 = [v150 copyDictionaryForTag:BWDeferredIntermediateTagModuleCalibrationByPortType customClasses:objc_msgSend(MEMORY[0x1E695DFD8] err:{"setWithObject:", objc_opt_class()), &v184}];
    if (v184)
    {
      v182 = 0;
      v181 = OS_LOG_TYPE_DEFAULT;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = v182;
      if (os_log_type_enabled(v34, v181))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        v171 = 136315394;
        v172 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
        v173 = 1024;
        *v174 = v184;
        LODWORD(v116) = 18;
        v115 = &v171;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v33 = 0;
  }

  if ([v150 hasTag:{BWDeferredIntermediateTagSourceNodePixelBufferAttributes, v115, v116}])
  {
    v136 = [v150 copyDictionaryForTag:BWDeferredIntermediateTagSourceNodePixelBufferAttributes err:&v184];
  }

  else
  {
    if ([objc_msgSend(v150 "captureSettings")] != 12 || (v138 & 4) != 0)
    {
LABEL_62:
      v116 = v131;
      LODWORD(v115) = 0;
      FigDebugAssert3();
LABEL_63:
      v52 = 0;
      v136 = 0;
      v134 = 0;
      v53 = -16131;
      goto LABEL_169;
    }

    v136 = [v150 copyAttributesForBufferType:8 portType:v141 err:&v184];
  }

  if (!v136)
  {
    goto LABEL_62;
  }

  v41 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  v42 = cdpe_resolvedSourceNodeOutputDimensionsForSettingsAndSourceNodePixelBufferAttributes(v135, v136);
  v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
  [v41 setObject:v43 forKeyedSubscript:*MEMORY[0x1E6966208]];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v42)];
  [v41 setObject:v44 forKeyedSubscript:*MEMORY[0x1E69660B8]];
  v45 = -[FigCaptureDeferredProcessingEngine expectsGainMapForSettings:captureSettings:](a1, v135, [v150 captureSettings]);
  v46 = [v150 hasBufferForType:19 portType:v141];
  if ([objc_msgSend(v150 "captureSettings")])
  {
    LODWORD(v47) = [v18 generateInferencesForSemanticProcessingIfNeeded];
    v48 = v138;
  }

  else
  {
    v48 = v138;
    v47 = HIDWORD(v138) & 1;
  }

  if ((v45 | v46 | v47))
  {
    v49 = 2.0;
  }

  else
  {
    v49 = 0.0;
  }

  if ((v48 & 4) == 0)
  {
    goto LABEL_61;
  }

  v50 = [v135 resolutionFlavor];
  v51 = v143;
  if (v50 == 2)
  {
    goto LABEL_68;
  }

  if (v50 == 1)
  {
    v51 = v143;
    if ((v138 & 0x400000000) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (v50)
  {
LABEL_61:
    v51 = 0;
    goto LABEL_68;
  }

  if ([v135 aspectRatio])
  {
    v51 = v42;
  }

  else
  {
    v51 = v129;
  }

LABEL_68:
  v54 = [v136 objectForKeyedSubscript:*MEMORY[0x1E6966130]];
  if (v54)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v125 = [objc_msgSend(v54 "firstObject")];
    }

    else
    {
      v125 = [v54 unsignedIntValue];
    }
  }

  else
  {
    if ([objc_msgSend(v150 "captureSettings")] == 12)
    {
      v55 = 1885745712;
    }

    else
    {
      v55 = 875704422;
    }

    v125 = v55;
  }

  v56 = [objc_msgSend(v150 "captureSettings")];
  if ([v18 intelligentDistortionCorrectionEnabled])
  {
    v170 = v141;
    v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:1];
  }

  else
  {
    v123 = 0;
  }

  if ([v18 geometricDistortionCorrectionEnabled])
  {
    v169 = v141;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v169 count:1];
  }

  else
  {
    v57 = 0;
  }

  v58 = [objc_msgSend(v150 "captureSettings")];
  v59 = v139;
  if (!v58)
  {
    v59 = v57;
  }

  v130 = v59;
  if (v56 == 13)
  {
    v168 = v141;
    v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v168 count:1];
  }

  else
  {
    v122 = 0;
  }

  v124 = FigCaptureClientApplicationIDIsCameraOrDerivative(a9);
  v52 = objc_alloc_init(FigCaptureIrisSinkConfiguration);
  -[FigCaptureSinkConfiguration setSinkID:](v52, "setSinkID:", [v149 description]);
  -[FigCaptureIrisSinkConfiguration setDemosaicedRawEnabled:](v52, "setDemosaicedRawEnabled:", ([v133 processingFlags] >> 16) & 1);
  -[FigCaptureIrisSinkConfiguration setStereoPhotoCaptureEnabled:](v52, "setStereoPhotoCaptureEnabled:", [objc_msgSend(v150 "captureSettings")] != 0);
  v60 = [[BWGraph alloc] initWithConfigurationQueuePriority:39];
  *(v149 + 64) = v60;
  [(BWGraph *)v60 beginConfiguration];
  [*(v149 + 64) setStatusDelegate:?];
  [*(v149 + 64) setModeDescription:@"Deferred Photo Processing"];
  v61 = *(v149 + 120);
  if (v61)
  {
    *(v149 + 128) = [v61 newFlushAssertion:@"DeferredProcessingGraph"];
    [*(v149 + 64) setMemoryPool:*(v149 + 120)];
  }

  v62 = [[BWDeferredProcessingSourceNode alloc] initWithPortTypes:v139 attributes:v41 colorSpaceProperties:3];
  *(v149 + 80) = v62;
  if (([*(v149 + 64) addNode:v62 error:v185] & 1) == 0)
  {
    v116 = v131;
    LODWORD(v115) = 0;
    FigDebugAssert3();
    v134 = 0;
    v53 = -12780;
    goto LABEL_169;
  }

  v134 = objc_alloc_init(BWInferenceScheduler);
  v63 = [v18 noiseReductionAndFusionScheme];
  if ((v138 & 0x84) != 0)
  {
    v64 = 5;
  }

  else
  {
    v64 = 4;
  }

  if (v63)
  {
    v64 = v63;
  }

  if (v64 != 5)
  {
    if (v64 != 4)
    {
LABEL_168:
      v116 = v131;
      LODWORD(v115) = 0;
      FigDebugAssert3();
      v53 = -12786;
LABEL_169:
      v184 = v53;
      goto LABEL_170;
    }

    v65 = objc_alloc_init(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration);
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setPipelineStagePriority:39];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setInferencePriority:39];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDeviceType:](v65, "setDeviceType:", [objc_msgSend(objc_msgSend(v150 "captureSettings")]);
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setSensorIDStringsByPortType:v148];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setCameraInfoByPortType:v147];
    LODWORD(v66) = 2.0;
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setUbInferenceMainImageDownscalingFactor:v66];
    *&v67 = v49;
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setGainMapMainImageDownscalingFactor:v67];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setMaxLossyCompressionLevel:+[FigCaptureCameraParameters stillImageMaxLossyCompressionLevel]];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v65 setInputIs10Bit:FigCapturePixelFormatIsTenBit(v125)];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setRedEyeReductionVersion:0];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setSemanticRenderingVersion:0];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setSemanticDevelopmentVersion:0];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setPortTypesWithIntelligentDistortionCorrectionEnabled:v123];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setPortTypesWithGeometricDistortionCorrectionEnabled:v130];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setGdcInDCProcessorSupported:v130 != 0];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDcProcessorVersion:](v65, "setDcProcessorVersion:", [v18 distortionCorrectionVersion]);
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDemosaicedRawPixelFormat:](v65, "setDemosaicedRawPixelFormat:", [objc_msgSend(v150 "settings")]);
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setStillImageSinkPipelineProcessingMode:1];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setDeepFusionSupported:v56 == 12];
    [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 setLearnedNRSupported:(v138 >> 7) & 1];
    v68 = v56 == 12 || [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)v65 learnedNRSupported];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v65 setStillImageStabilizationSupported:v68];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setDeepZoomVersion:](v65, "setDeepZoomVersion:", [v18 deepZoomVersion]);
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v65 setClientIsCameraOrDerivative:v124];
    -[FigCaptureIrisSinkConfiguration setPortraitEffectsMatteDeliveryEnabled:](v52, "setPortraitEffectsMatteDeliveryEnabled:", [objc_msgSend(v150 "settings")]);
    LODWORD(v78) = 2.0;
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v65 setPortraitEffectsMatteMainImageDownscalingFactor:v78];
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setSupportedSemanticSegmentationMatteURNs:](v65, "setSupportedSemanticSegmentationMatteURNs:", [objc_msgSend(v150 "settings")]);
    -[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration setEnabledSemanticSegmentationMatteURNs:](v65, "setEnabledSemanticSegmentationMatteURNs:", [objc_msgSend(v150 "settings")]);
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v65 setSinkConfiguration:v52];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)v65 setNoiseReductionAndFusionScheme:4];
    v79 = -[FigCaptureStillImageUnifiedBracketingSinkPipeline initWithConfiguration:captureDevice:sourceOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:graph:name:]([FigCaptureStillImageUnifiedBracketingSinkPipeline alloc], "initWithConfiguration:captureDevice:sourceOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:graph:name:", v65, 0, [*(v149 + 80) outputsByPortType], 0, 0, 0, 0, v134, 0, *(v149 + 64), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Deferred Processing %@", +[FigCaptureStillImageUnifiedBracketingSinkPipeline pipelineBaseName](FigCaptureStillImageUnifiedBracketingSinkPipeline, "pipelineBaseName")));
LABEL_164:
    v96 = v79;
    if (v79)
    {
      [(BWStillImageSampleBufferSinkNode *)[(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v79 stillImageSinkNode] setDeferredPhotoProcessorEnabled:1];
      [(BWStillImageSampleBufferSinkNode *)[(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v96 stillImageSinkNode] setClientIsCameraOrDerivative:v124];
      v151[0] = MEMORY[0x1E69E9820];
      v151[1] = 3221225472;
      v151[2] = __228__FigCaptureDeferredProcessingEngine__ensureGraphForProcessingContainer_sensorRawPixelFormat_sensorRawDimensions_ultraHighResSensorRawDimensions_depthDataSourceDimensions_depthDataTargetDimensions_photoIdentifier_applicationID___block_invoke;
      v151[3] = &unk_1E7991D68;
      v151[4] = v183;
      [(BWStillImageSampleBufferSinkNode *)[(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v96 stillImageSinkNode] setSampleBufferAvailableHandler:v151];
      v97 = objc_alloc_init(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration);
      -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setFormatDimensionWidth:](v97, "setFormatDimensionWidth:", [objc_msgSend(v32 "settings")]);
      -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setFormatDimensionHeight:](v97, "setFormatDimensionHeight:", [objc_msgSend(v32 "settings")]);
      LODWORD(v98) = 30.0;
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v97 setFormatMaxFrameRate:v98];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v97 setIsHighQualityPhotoWithVideoFormatSupported:0];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v97 setIsPhotoFormat:1];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v97 setIsTimeLapse:0];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v97 setPixelFormat:v125];
      [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)v97 setBinned:0];
      -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setIsSemanticStyleRenderingSupported:](v97, "setIsSemanticStyleRenderingSupported:", [objc_msgSend(v32 "settings")] != 0);
      -[BWStillImageSampleBufferSinkNodeAnalyticsConfiguration setFastCapturePrioritizationEnabled:](v97, "setFastCapturePrioritizationEnabled:", [objc_msgSend(objc_msgSend(v32 "captureSettings")]);
      [(BWStillImageSampleBufferSinkNode *)[(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v96 stillImageSinkNode] setAnalyticsConfiguration:v97];
      if (([*(v149 + 64) commitConfigurationWithID:1 error:v185] & 1) != 0 && objc_msgSend(*(v149 + 64), "start:", v185))
      {
        *(v149 + 72) = 1;
      }

      else
      {
        v116 = v131;
        LODWORD(v115) = 0;
        FigDebugAssert3();
      }

      goto LABEL_170;
    }

    goto LABEL_168;
  }

  obja = objc_alloc_init(FigCapturePhotonicEngineSinkPipelineConfiguration);
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPipelineStagePriority:39];
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setInferencePriority:39];
  -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeviceType:](obja, "setDeviceType:", [objc_msgSend(objc_msgSend(v150 "captureSettings")]);
  if ((v138 & 0x4000000000) != 0)
  {
    v69 = [objc_msgSend(v150 "captureSettings")];
    if ([v69 count] != 2)
    {
      v116 = v131;
      LODWORD(v115) = 0;
      FigDebugAssert3();
      v184 = -12780;
      v182 = 0;
      v181 = OS_LOG_TYPE_DEFAULT;
      v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v100 = v182;
      if (os_log_type_enabled(v99, v181))
      {
        v101 = v100;
      }

      else
      {
        v101 = v100 & 0xFFFFFFFE;
      }

      if (v101)
      {
        v102 = [v69 count];
        v103 = [objc_msgSend(v150 "settings")];
        v171 = 136315650;
        v172 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
        v173 = 1024;
        *v174 = v102;
        *&v174[4] = 2048;
        *&v174[6] = v103;
        LODWORD(v116) = 28;
        v115 = &v171;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_205;
    }

    if ([v69 containsObject:*off_1E798A0C0])
    {
      if ([v69 containsObject:*off_1E798A0D0])
      {
        [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setDeviceType:8];
        goto LABEL_104;
      }

      v116 = v131;
      LODWORD(v115) = 0;
      FigDebugAssert3();
      v184 = -12780;
      v182 = 0;
      v181 = OS_LOG_TYPE_DEFAULT;
      v107 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v108 = v182;
      if (os_log_type_enabled(v107, v181))
      {
        v109 = v108;
      }

      else
      {
        v109 = v108 & 0xFFFFFFFE;
      }

      if (!v109)
      {
LABEL_205:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_170;
      }
    }

    else
    {
      v116 = v131;
      LODWORD(v115) = 0;
      FigDebugAssert3();
      v184 = -12780;
      v182 = 0;
      v181 = OS_LOG_TYPE_DEFAULT;
      v104 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v105 = v182;
      if (os_log_type_enabled(v104, v181))
      {
        v106 = v105;
      }

      else
      {
        v106 = v105 & 0xFFFFFFFE;
      }

      if (!v106)
      {
        goto LABEL_205;
      }
    }

    v110 = [objc_msgSend(v150 settings];
    v171 = 136315394;
    v172 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
    v173 = 2048;
    *v174 = v110;
    LODWORD(v116) = 22;
    v115 = &v171;
    _os_log_send_and_compose_impl();
    goto LABEL_205;
  }

LABEL_104:
  -[FigCapturePhotonicEngineSinkPipelineConfiguration setDevicePosition:](obja, "setDevicePosition:", [objc_msgSend(objc_msgSend(v150 "captureSettings")]);
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSensorIDStringsByPortType:v148];
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setCameraInfoByPortType:v147];
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setModuleCalibrationByPortType:v33];
  LODWORD(v70) = 2.0;
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setUbInferenceMainImageDownscalingFactor:v70];
  *&v71 = v49;
  [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setGainMapMainImageDownscalingFactor:v71];
  -[FigCapturePhotonicEngineSinkPipelineConfiguration setAspectRatio:](obja, "setAspectRatio:", [objc_msgSend(v150 "settings")]);
  v118 = v51;
  v119 = v56;
  v120 = v52;
  v121 = v33;
  if ((v138 & 4) == 0)
  {
LABEL_153:
    v52 = v120;
    v33 = v121;
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setMaxLossyCompressionLevel:+[FigCaptureCameraParameters stillImageMaxLossyCompressionLevel]];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setInputIs10Bit:FigCapturePixelFormatIsTenBit(v125)];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setRedEyeReductionVersion:0];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSemanticRenderingVersion:](obja, "setSemanticRenderingVersion:", [v18 semanticRenderingVersion]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSemanticDevelopmentVersion:0];
    v90 = -[FigCapturePhotonicEngineSinkPipelineConfiguration semanticRenderingVersion](obja, "semanticRenderingVersion") >= 1 && [objc_msgSend(v32 "settings")] != 0;
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSemanticStyleRenderingEnabled:v90];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setGenerateInferencesForSemanticProcessingIfNeeded:](obja, "setGenerateInferencesForSemanticProcessingIfNeeded:", [v18 generateInferencesForSemanticProcessingIfNeeded]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSmartStyleRenderingVersion:](obja, "setSmartStyleRenderingVersion:", [v18 smartStyleRenderingVersion]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSmartStyleRenderingEnabled:](obja, "setSmartStyleRenderingEnabled:", [v18 smartStyleRenderingEnabled]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSmartStyleReversibilityEnabled:](obja, "setSmartStyleReversibilityEnabled:", [v18 smartStyleReversibilityEnabled]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPortTypesWithIntelligentDistortionCorrectionEnabled:v123];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPortTypesWithGeometricDistortionCorrectionEnabled:v130];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setStillImageGDCSourceMode:](obja, "setStillImageGDCSourceMode:", [v18 stillImageGDCSourceMode]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setGdcInDCProcessorSupported:v130 != 0];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDcProcessingWithDepthSupported:](obja, "setDcProcessingWithDepthSupported:", [v18 dcProcessingWithDepthSupported]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDcProcessorVersion:](obja, "setDcProcessorVersion:", [v18 distortionCorrectionVersion]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDemosaicedRawPixelFormat:](obja, "setDemosaicedRawPixelFormat:", [v135 rawOutputFormat]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setStillImageSinkPipelineProcessingMode:1];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPipelineProcessingContext:0x1F2177870];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setDeepFusionSupported:v119 == 12];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setPortTypesWithLearnedFusionEnabled:v122];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setLearnedNRSupported:(v138 >> 7) & 1];
    if ([objc_msgSend(v32 "captureSettings")])
    {
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setLearnedNRSupported:1];
      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setStereoPhotoOutputDimensions:0x7E000000A80];
    }

    v91 = (v119 & 0xFFFFFFFE) == 0xC || [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja learnedNRSupported];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setStillImageStabilizationSupported:v91];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeepZoomVersion:](obja, "setDeepZoomVersion:", [v18 deepZoomVersion]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeepZoomMode:](obja, "setDeepZoomMode:", [v18 deepZoomMode]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSoftISPSupported:(v138 >> 2) & 1];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSfhrMode:](obja, "setSfhrMode:", [v18 sfhrMode]);
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setClientIsCameraOrDerivative:v124];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setCameraSensorOrientationCompensationDegreesCW:](obja, "setCameraSensorOrientationCompensationDegreesCW:", [v18 cameraSensorOrientationCompensationDegreesCW]);
    if ((v138 & 0x800) != 0)
    {
      [(FigCaptureIrisSinkConfiguration *)v120 setDepthDataDeliveryEnabled:1];
      [(FigCaptureIrisSinkConfiguration *)v120 setPreviewQualityAdjustedPhotoFilterRenderingEnabled:0];
      -[FigCaptureIrisSinkConfiguration setFilterRenderingEnabled:](v120, "setFilterRenderingEnabled:", BWCIFilterArrayContainsPortraitFilters([objc_msgSend(v32 "settings")]));
      [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setDepthDataTargetDimensions:v128];
      [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setDepthDataSourceDimensions:v127];
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setContinuousZoomWithDepthSupported:](obja, "setContinuousZoomWithDepthSupported:", [v18 continuousZoomWithDepthSupported]);
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setPearlModuleType:](obja, "setPearlModuleType:", [v18 pearlModuleType]);
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setDepthDataType:](obja, "setDepthDataType:", [v18 depthDataType]);
    }

    -[FigCaptureIrisSinkConfiguration setPortraitEffectsMatteDeliveryEnabled:](v120, "setPortraitEffectsMatteDeliveryEnabled:", [objc_msgSend(v32 "settings")]);
    LODWORD(v92) = 2.0;
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setPortraitEffectsMatteMainImageDownscalingFactor:v92];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setSupportedSemanticSegmentationMatteURNs:](obja, "setSupportedSemanticSegmentationMatteURNs:", [objc_msgSend(v32 "settings")]);
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setEnabledSemanticSegmentationMatteURNs:](obja, "setEnabledSemanticSegmentationMatteURNs:", [objc_msgSend(v32 "settings")]);
    -[FigCaptureIrisSinkConfiguration setEnabledSemanticSegmentationMatteURNs:](v120, "setEnabledSemanticSegmentationMatteURNs:", [objc_msgSend(v32 "settings")]);
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setSinkConfiguration:v120];
    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)obja setNoiseReductionAndFusionScheme:5];
    v93 = [objc_msgSend(v32 "settings")];
    v94 = [objc_msgSend(v32 "settings")];
    v152 = [[FigCaptureSourceFormatDimensions alloc] initWithDimensions:v93 | (v94 << 32) deferredPhotoProxyDimensions:v93 | (v94 << 32) isPrivate:0 flavor:0 maxUpscalingDimensions:v93 | (v94 << 32)];
    v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
    LOBYTE(v117) = 1;
    v79 = -[FigCapturePhotonicEngineSinkPipeline initWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:isPrimaryStillImagePipeline:graph:name:]([FigCapturePhotonicEngineSinkPipeline alloc], "initWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:isPrimaryStillImagePipeline:graph:name:", obja, 0, [*(v149 + 80) outputsByPortType], 0, v95, 0, 0, 0, v134, 0, 0, 0, v117, *(v149 + 64), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Deferred Processing %@", +[FigCapturePhotonicEngineSinkPipeline pipelineBaseName](FigCapturePhotonicEngineSinkPipeline, "pipelineBaseName")));
    goto LABEL_164;
  }

  v72 = [MEMORY[0x1E695DF90] dictionary];
  if ((v138 & 0x300000000) == 0)
  {
    if ([objc_msgSend(v150 "captureSettings")])
    {
      -[FigCapturePhotonicEngineSinkPipelineConfiguration setDowngradedDeepFusionEnhancedResolutionDimensions:](obja, "setDowngradedDeepFusionEnhancedResolutionDimensions:", [objc_msgSend(v150 "settings")] | (objc_msgSend(objc_msgSend(v150, "settings"), "deferredPhotoFinalHeight") << 32));
    }

    goto LABEL_131;
  }

  if ((v138 & 0x200000000) != 0)
  {
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setDeepFusionEnhancedResolutionDimensions:](obja, "setDeepFusionEnhancedResolutionDimensions:", [objc_msgSend(v150 "settings")] | (objc_msgSend(objc_msgSend(v150, "settings"), "deferredPhotoFinalHeight") << 32));
  }

  if (v143 >= 1 && v143 > 0)
  {
    if (![v72 objectForKeyedSubscript:v141])
    {
      [v72 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v141}];
    }

    [objc_msgSend(v72 objectForKeyedSubscript:{v141), "setObject:forKeyedSubscript:", FigCaptureDictionaryRepresentationForDimensions(v143), &unk_1F2243AB0}];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setUltraHighResolutionProcessingEnabled:](obja, "setUltraHighResolutionProcessingEnabled:", [objc_msgSend(v150 "settings")] == 2);
    if ([objc_msgSend(v150 "captureSettings")])
    {
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v73 = [objc_msgSend(v150 "captureSettings")];
      v74 = [v73 countByEnumeratingWithState:&v164 objects:v163 count:16];
      if (v74)
      {
        v75 = *v165;
        do
        {
          for (j = 0; j != v74; ++j)
          {
            if (*v165 != v75)
            {
              objc_enumerationMutation(v73);
            }

            v77 = *(*(&v164 + 1) + 8 * j);
            if ([objc_msgSend(objc_msgSend(v150 "captureSettings")] >= 1)
            {
              if (![v72 objectForKeyedSubscript:v77])
              {
                [v72 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v77}];
              }

              [objc_msgSend(v72 objectForKeyedSubscript:{v77), "setObject:forKeyedSubscript:", FigCaptureDictionaryRepresentationForDimensions(v143), &unk_1F2243AB0}];
              [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setUltraHighResolutionProcessingEnabled:1];
            }
          }

          v74 = [v73 countByEnumeratingWithState:&v164 objects:v163 count:16];
        }

        while (v74);
      }
    }

LABEL_131:
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v80 = [objc_msgSend(v150 "captureSettings")];
    v81 = [v80 countByEnumeratingWithState:&v159 objects:v158 count:16];
    if (v81)
    {
      v140 = v80;
      v142 = *v160;
      do
      {
        v82 = 0;
        v144 = v81;
        do
        {
          if (*v160 != v142)
          {
            objc_enumerationMutation(v140);
          }

          v83 = *(*(&v159 + 1) + 8 * v82);
          v154 = 0u;
          v155 = 0u;
          v156 = 0u;
          v157 = 0u;
          v84 = [&unk_1F2248790 countByEnumeratingWithState:&v154 objects:v153 count:16];
          if (v84)
          {
            v85 = *v155;
            do
            {
              for (k = 0; k != v84; ++k)
              {
                if (*v155 != v85)
                {
                  objc_enumerationMutation(&unk_1F2248790);
                }

                v87 = *(*(&v154 + 1) + 8 * k);
                v88 = [objc_msgSend(objc_msgSend(v18 "dimensionsByResolutionFlavorByPortType")];
                if (v88)
                {
                  if (![v72 objectForKeyedSubscript:v83])
                  {
                    [v72 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v83}];
                  }

                  [objc_msgSend(v72 objectForKeyedSubscript:{v83), "setObject:forKeyedSubscript:", v88, v87}];
                }
              }

              v84 = [&unk_1F2248790 countByEnumeratingWithState:&v154 objects:v153 count:16];
            }

            while (v84);
          }

          ++v82;
          v32 = v150;
        }

        while (v82 != v144);
        v81 = [v140 countByEnumeratingWithState:&v159 objects:v158 count:16];
      }

      while (v81);
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSensorRawPixelFormat:v126];
    -[FigCapturePhotonicEngineSinkPipelineConfiguration setQuadraProcessingSupportEnabled:](obja, "setQuadraProcessingSupportEnabled:", [v18 quadraProcessingSupportEnabled]);
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setRawSensorDimensions:v118];
    if ([v72 count])
    {
      v89 = v72;
    }

    else
    {
      v89 = 0;
    }

    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setDimensionsByResolutionFlavorByPortType:v89];
    [v18 sensorCenterOffset];
    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)obja setSensorCenterOffset:?];
    goto LABEL_153;
  }

  v184 = -12780;
  if (dword_1ED843F70)
  {
    v182 = 0;
    v181 = OS_LOG_TYPE_DEFAULT;
    v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v112 = v182;
    if (os_log_type_enabled(v111, v181))
    {
      v113 = v112;
    }

    else
    {
      v113 = v112 & 0xFFFFFFFE;
    }

    if (v113)
    {
      v114 = [objc_msgSend(v150 "settings")];
      v171 = 136315394;
      v172 = "[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:]";
      v173 = 2048;
      *v174 = v114;
      LODWORD(v116) = 22;
      v115 = &v171;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_170:
  [v137 setPrepareGraphNS:FigGetUpTimeNanoseconds() - UpTimeNanoseconds];
  if (v185[0])
  {
    v184 = [v185[0] code];
    if (!v184)
    {
      goto LABEL_175;
    }

    goto LABEL_174;
  }

  if (v184)
  {
LABEL_174:
    [v137 failedWithError:{v115, v116}];
    [(FigCaptureDeferredProcessingEngine *)v149 _handleJobCompletion:v184];
  }

LABEL_175:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v185[0])
  {
    [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker closeTransaction:"closeTransaction:", 0];
  }

  _Block_object_dispose(v183, 8);
}

void __228__FigCaptureDeferredProcessingEngine__ensureGraphForProcessingContainer_sensorRawPixelFormat_sensorRawDimensions_ultraHighResSensorRawDimensions_depthDataSourceDimensions_depthDataTargetDimensions_photoIdentifier_applicationID___block_invoke(uint64_t a1, CFTypeRef cf, int a3, uint64_t a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v8 = *(a1 + 32);
  v9 = *(*(*(v8 + 8) + 40) + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __228__FigCaptureDeferredProcessingEngine__ensureGraphForProcessingContainer_sensorRawPixelFormat_sensorRawDimensions_ultraHighResSensorRawDimensions_depthDataSourceDimensions_depthDataTargetDimensions_photoIdentifier_applicationID___block_invoke_2;
  v10[3] = &unk_1E7991D40;
  v10[5] = v8;
  v10[6] = cf;
  v11 = a3;
  v10[4] = a4;
  dispatch_async(v9, v10);
}

void __228__FigCaptureDeferredProcessingEngine__ensureGraphForProcessingContainer_sensorRawPixelFormat_sensorRawDimensions_ultraHighResSensorRawDimensions_depthDataSourceDimensions_depthDataTargetDimensions_photoIdentifier_applicationID___block_invoke_2(uint64_t a1)
{
  [(FigCaptureDeferredProcessingEngine *)*(*(*(a1 + 40) + 8) + 40) _handleProcessedStillImage:*(a1 + 56) error:*(a1 + 32) settings:?];
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)_handleProcessedStillImage:(uint64_t)a3 error:(void *)a4 settings:
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      [FigCaptureDeferredProcessingEngine _handleProcessedStillImage:error:settings:];
    }

    v8 = [a1 currentJob];
    v9 = [a4 captureRequestIdentifier];
    [objc_msgSend(v8 "processorRequest")];
    if (!a3 && (v10 = [a4 outputFormat], IsDemosaicedRaw = FigCapturePixelFormatIsDemosaicedRaw(objc_msgSend(a4, "rawOutputFormat")), v10) && IsDemosaicedRaw)
    {
      a3 = 4294954516;
      if (!v8)
      {
        return;
      }
    }

    else if (!v8)
    {
      return;
    }

    if (([v9 isEqualToString:{objc_msgSend(objc_msgSend(v8, "processorRequest"), "captureRequestIdentifier")}] & 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Finished processing of photo with capture request identifier %@ but for processing job with identifier %@", v9, objc_msgSend(objc_msgSend(v8, "processorRequest"), "captureRequestIdentifier")), 0}]);
    }

    [v8 setNumberOfPhotosDelivered:{objc_msgSend(v8, "numberOfPhotosDelivered") + 1}];
    if (a3)
    {
      if (dword_1ED843F70)
      {
        v18 = 0;
        v17 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v8 failedWithError:{a3, v14, v15}];
    }

    else
    {
      [CMGetAttachment(a2 @"StillImageProcessingFlags"];
      BWPixelBufferDimensionsFromSampleBuffer(a2);
      if (dword_1ED843F70)
      {
        v18 = 0;
        v17 = 0;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v8 completedWithSampleBuffer:{a2, v14, v15}];
    }

    v13 = [v8 numberOfPhotosDelivered];
    if ([objc_msgSend(objc_msgSend(objc_msgSend(v8 "container")] == v13)
    {
      [(FigCaptureDeferredProcessingEngine *)a1 _handleJobCompletion:a3];
    }
  }
}

- (uint64_t)_unreserveForClientPID:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (dword_1ED843F70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(v3 + 24);
    if (v5 != a2)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unbalanced unreserving of FigCaptureDeferredProcessingEngine: unreserving from clientPID %d while reserved for clientPID %d", a2, v5];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v6 userInfo:0]);
    }

    *(v3 + 24) = 0;
    return FigSimpleMutexUnlock();
  }

  return result;
}

- (BWStillImageSettings)_stillImageSettingsForContainer:(BWStillImageSettings *)result
{
  if (result)
  {
    v2 = -[BWStillImageSettings initWithRequestedSettings:captureSettings:processingSettings:]([BWStillImageSettings alloc], "initWithRequestedSettings:captureSettings:processingSettings:", [a2 settings], objc_msgSend(a2, "captureSettings"), objc_msgSend(a2, "processingSettings"));

    return v2;
  }

  return result;
}

- (void)_runJob
{
  if (a1)
  {
    v3 = [(BWStillImageSettings *)a1 currentJob];
    v4 = [v3 container];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v5 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [v4 captureRequestIdentifierBytesLow];
      [v4 captureRequestIdentifierBytesHigh];
      kdebug_trace();
    }

    [v3 start];
    v6 = [(FigCaptureDeferredProcessingEngine *)a1 _stillImageSettingsForContainer:v4];
    if (([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)v6 captureSettings] captureFlags]& 0x100000000) == 0)
    {
      [-[BWStillImageCaptureSettings outputForPortType:](a1[2]._captureSettings outputForPortType:{-[BWStillImageCaptureSettings masterPortType](-[BWStillImageSettings captureSettings](v6, "captureSettings"), "masterPortType")), "emitStillImagePrewarmMessageWithSettings:resourceConfig:", v6, 0}];
    }

    v24 = 0;
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    v7 = [(NSArray *)[(BWPhotoManifest *)[(BWStillImageProcessingSettings *)[(BWStillImageSettings *)v6 processingSettings] photoManifest] photoDescriptors] firstObject];
    if (v7)
    {
      [v7 presentationTimeStamp];
    }

    else
    {
      memset(&v22[2], 0, 24);
    }

    __dst.presentationTimeStamp = *&v22[2];
    OUTLINED_FUNCTION_2_5();
    v14 = CMSampleBufferCreate(v8, v9, v10, v11, v12, v13, 0, 1, &__dst, 0, 0, &v24);
    v15 = v14;
    if (v14)
    {
      LODWORD(sampleTimingArray) = v14;
      FigDebugAssert3();
      [v3 failedWithError:{v15, sampleTimingArray, v1}];
      [(FigCaptureDeferredProcessingEngine *)a1 _handleJobCompletion:v15];
    }

    else
    {
      v16 = *off_1E798B710;
      v22[0] = MEMORY[0x1E695E118];
      v17 = *off_1E798B540;
      v21[0] = v16;
      v21[1] = v17;
      v22[1] = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)v6 captureSettings] masterPortType];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v18];
      CMSetAttachment(v24, *off_1E798A3C8, v19, 1u);
      -[FigCaptureStillImageSettings setPhotoLibraryThumbnailDimensions:](-[BWStillImageSettings requestedSettings](v6, "requestedSettings"), "setPhotoLibraryThumbnailDimensions:", [objc_msgSend(v3 "processorRequest")]);
      CMSetAttachment(v24, @"StillSettings", v6, 1u);
      OUTLINED_FUNCTION_1_55([(BWStillImageProcessingSettings *)[(BWStillImageSettings *)v6 processingSettings] photoManifest]);
      OUTLINED_FUNCTION_1_55([v4 captureSettings]);
      OUTLINED_FUNCTION_1_55([MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v4, "captureSettings"), "captureType")}]);
      OUTLINED_FUNCTION_1_55([v4 settings]);
      CMSetAttachment(v24, @"DeferredProcessingContainer", v4, 1u);
      [(BWStillImageCaptureSettings *)a1[2]._captureSettings processBuffer:v24];
      if (v24)
      {
        CFRelease(v24);
      }
    }

    if (*v5 == 1)
    {
      kdebug_trace();
    }
  }
}

- (void)_handleJobCompletion:(void *)a1
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    -[FigCaptureDeferredProcessingEngine _reportCoreAnalyticsDataWithError:job:](a1, a2, [a1 currentJob]);

    [(FigCaptureDeferredProcessingEngine *)a1 _cleanupFromJob];
  }
}

- (uint64_t)_reserveForClientPID:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (dword_1ED843F70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = FigSimpleMutexLock();
    *(v3 + 24) = a2;
  }

  return result;
}

- (uint64_t)_shouldReuseGraphForContainer:(uint64_t)a1
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = [objc_msgSend(a2 "captureSettings")];
    v6 = [a2 pipelineParameters];
    v56[0] = 0;
    v7 = [a2 copyDictionaryForTag:BWDeferredIntermediateTagSourceNodePixelBufferAttributes err:v56];
    if (v56[0])
    {
      v8 = 0;
    }

    else
    {
      v8 = cdpe_resolvedSourceNodeOutputDimensionsForSettingsAndSourceNodePixelBufferAttributes([a2 settings], v7);
    }

    if (v8 < 1 || SHIDWORD(v8) < 1)
    {
      return 0;
    }

    v10 = [objc_msgSend(objc_msgSend(*(a1 + 80) outputForPortType:{v5), "primaryMediaProperties"), "resolvedVideoFormat"}];
    if (!v10)
    {
      return 0;
    }

    else
    {
      v11 = v10;
      v12 = *(a1 + 32);
      if (v12 == v5)
      {
        v55 = 1;
      }

      else
      {
        v55 = [v12 isEqualToString:v5];
      }

      v54 = [*(a1 + 40) isEqual:v6];
      v53 = [objc_msgSend(*(a1 + 56) "captureSettings")];
      v52 = [objc_msgSend(a2 "captureSettings")];
      v13 = [objc_msgSend(*(a1 + 56) "requestedSettings")];
      if (v13 >= [objc_msgSend(a2 "settings")])
      {
        v14 = [objc_msgSend(*(a1 + 56) "requestedSettings")];
        v51 = v14 >= [objc_msgSend(a2 "settings")];
      }

      else
      {
        v51 = 0;
      }

      v50 = [v11 dimensions];
      v49 = *(a1 + 48);
      v48 = fcdpe_demosaicedRawEnabled(a2);
      v15 = *(a1 + 48);
      v43 = v6;
      v16 = v8;
      if (([objc_msgSend(a2 "captureSettings")] & 0x200000000) != 0)
      {
        v18 = [objc_msgSend(*(a1 + 56) "requestedSettings")] != 0;
        v17 = v18 ^ ([objc_msgSend(a2 "settings")] == 0);
      }

      else
      {
        v17 = 1;
      }

      v47 = v17;
      v46 = [objc_msgSend(*(a1 + 56) "captureSettings")];
      *&v19 = OUTLINED_FUNCTION_5_40([objc_msgSend(*(a1 + 56) "captureSettings")]);
      v45 = v20;
      *&v21 = OUTLINED_FUNCTION_5_40([objc_msgSend(a2 captureSettings]);
      v44 = v22;
      v23 = *(a1 + 49);
      v24 = [a2 settings];
      v25 = [a2 captureSettings];
      v26 = [a2 applicationID];
      v27 = [v25 captureFlags];
      v28 = FigCaptureClientApplicationIDIsCameraOrDerivative(v26);
      v29 = [v25 captureFlags];
      v30 = BWCIFilterArrayContainsPortraitFilters([v24 processedImageFilters]);
      v31 = ((v27 & 0x800) == 0) ^ v23;
      if ((v27 & 0x800) != 0 || (v23 & 1) == 0)
      {
        v32 = v16;
      }

      else
      {
        v32 = v16;
        if (v28)
        {
          v33 = v30;
          if ([v43 continuousZoomWithDepthSupported])
          {
            v31 = ((v29 & 0x100000000) == 0) & (v33 ^ 1);
          }

          else
          {
            v31 = 0;
          }
        }
      }

      if (BWCIFilterArrayContainsPortraitFilters([objc_msgSend(*(a1 + 56) "requestedSettings")]))
      {
        v34 = 1;
      }

      else
      {
        v34 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(a2 "settings")]) ^ 1;
      }

      v35 = v55 & v54;
      if (v53 != v52)
      {
        v35 = 0;
      }

      v36 = v35 & v51;
      if (v50 != v32)
      {
        v36 = 0;
      }

      if (v49 != v48)
      {
        v36 = 0;
      }

      v37 = v36 & (v15 ^ 1);
      if ((v46 & 0x100000000) != 0)
      {
        v37 = 0;
      }

      v38 = v37 & v47;
      if (v45 != v44)
      {
        v38 = 0;
      }

      v2 = v38 & v31 & v34;
      if (dword_1ED843F70)
      {
        v58 = 0;
        v57 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v40 = v58;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v57))
        {
          v41 = v40;
        }

        else
        {
          v41 = v40 & 0xFFFFFFFE;
        }

        if (v41)
        {
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return v2;
}

- (void)_releaseGraph
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (*(a1 + 72) == 1)
    {
      [*(a1 + 64) stop:0];
    }

    *(a1 + 72) = 0;

    *(a1 + 64) = 0;
    *(a1 + 80) = 0;

    *(a1 + 128) = 0;
    [*(a1 + 120) disableForClientBundleId:0];

    *(a1 + 120) = 0;
    *(a1 + 32) = 0;

    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if (v2)
    {
      v3 = +[BWDeferredTransactionBroker sharedInstance];

      [(BWDeferredTransactionBroker *)v3 closeTransaction:0];
    }
  }
}

- (void)_ensureGraphForJob:(void *)a3 applicationID:
{
  if (!a1)
  {
    return;
  }

  v9 = a2;
  v11 = [a2 container];
  v34 = [v9 processorRequest];
  if (([objc_msgSend(v11 "captureSettings")] & 4) == 0)
  {
    OUTLINED_FUNCTION_3_41();
    v12 = 0;
    goto LABEL_39;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = [v11 intermediates];
  v12 = [v4 countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v12)
  {
    v36 = v9;
    v32 = v11;
    v33 = a3;
    v13 = 0;
    LODWORD(v9) = 0;
    v41 = 0;
    LODWORD(v42) = 0;
    v40 = 0;
    v39 = 0;
    v35 = 0;
    v14 = *v45;
    v38 = *MEMORY[0x1E6966208];
    v37 = *MEMORY[0x1E69660B8];
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        if ([v16 isMemberOfClass:objc_opt_class()])
        {
          if ([v16 bufferType] == 1)
          {
            v17 = v4;
            v18 = [v16 attributes];
            v19 = [objc_msgSend(v18 objectForKeyedSubscript:{v38), "unsignedIntValue"}];
            v20 = [objc_msgSend(v18 objectForKeyedSubscript:{v37), "unsignedIntValue"}];
            if ((v20 * v19) > (v39 * v40))
            {
              v21 = v20;
              v35 = [v16 pixelFormat];
              v40 = v21;
              v39 = v19;
            }

            v4 = v17;
          }

          else if (v42 < 1 || v41 < 1 || v9 < 1 || v13 <= 0)
          {
            if ([v16 bufferType] == 2001)
            {
              v25 = [v16 attributes];
              LODWORD(v9) = [objc_msgSend(v25 objectForKeyedSubscript:{v38), "unsignedIntValue"}];
              v13 = [objc_msgSend(v25 objectForKeyedSubscript:{v37), "unsignedIntValue"}];
              v26 = [objc_msgSend(objc_msgSend(v36 "container")];
              if (v9 <= v13 && v26 >= SHIDWORD(v26))
              {
                v42 = __ROR8__(v9 | (v13 << 32), 32);
                v41 = HIDWORD(v42);
                continue;
              }

              v41 = v13;
            }

            else
            {
              if (!BWDepthDataTypeSupportsDeferredDepthGeneration([objc_msgSend(objc_msgSend(v36 "container")]))
              {
                continue;
              }

              v9 = [objc_msgSend(objc_msgSend(v36 "container")];
              v13 = HIDWORD(v9);
              v41 = HIDWORD(v9);
            }

            LODWORD(v42) = v9;
          }
        }
      }

      v12 = [v4 countByEnumeratingWithState:&v44 objects:v43 count:16];
      if (!v12)
      {
        v3 = v40 << 32;
        v12 = v39;
        v4 = v13 << 32;
        v5 = v9;
        v6 = v41 << 32;
        v7 = v42;
        a3 = v33;
        v11 = v32;
        v9 = v36;
        goto LABEL_40;
      }
    }
  }

  OUTLINED_FUNCTION_3_41();
LABEL_39:
  v35 = 0;
LABEL_40:
  v28 = [objc_msgSend(objc_msgSend(v9 "container")];
  if (v28 < 1 || SHIDWORD(v28) < 1)
  {
    v31 = v12 | v3;
    v30 = v31;
  }

  else
  {
    v30 = [objc_msgSend(objc_msgSend(v9 "container")];
    v31 = v12 | v3;
  }

  -[FigCaptureDeferredProcessingEngine _ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:](a1, v11, v35, v30, v31, v5 | v4, v7 | v6, [v34 photoIdentifier], a3);
}

- (uint64_t)_transientContainerForDeviceType:(int)a3 underlyingDeviceType:(int)a4 devicePosition:(void *)a5 settings:(void *)a6 processingSettings:(void *)a7 sourceAttributes:(void *)a8 underlyingSourceAttributes:(void *)a9 videoFormat:(void *)a10 underlyingVideoFormat:(void *)a11 depthDataFormat:(uint64_t)a12 photoIdentifier:(void *)a13 applicationIdentifier:
{
  LODWORD(v146) = a2;
  if (!a1)
  {
    return 0;
  }

  v149 = +[FigCaptureCameraParameters sharedInstance];
  v157 = [MEMORY[0x1E695DFF8] fileURLWithPath:NSTemporaryDirectory()];
  v18 = BWCaptureDevicePositionAndDeviceTypeToPortType(a4, a3);
  obj = [a6 cameraInfoByPortType];
  v19 = [obj objectForKeyedSubscript:v18];
  v119 = *off_1E7989EF8;
  v20 = +[FigCaptureCameraParameters sensorIDStringFromModuleInfo:](FigCaptureCameraParameters, "sensorIDStringFromModuleInfo:", [v19 objectForKeyedSubscript:?]);
  v21 = [MEMORY[0x1E695DF90] dictionary];
  if ([a5 rawOutputFormat])
  {
    v152 = 1;
    LODWORD(v140) = 0x10000;
    v22 = 384;
  }

  else
  {
    if ([a5 depthDataDeliveryEnabled])
    {
      v22 = 5253120;
    }

    else
    {
      v22 = 5251072;
    }

    v152 = 12;
    LODWORD(v140) = 4096;
  }

  v23 = [objc_msgSend(a8 objectForKeyedSubscript:{@"GeometricDistortionCorrection", "BOOLValue"}];
  v24 = [a10 intelligentDistortionCorrectionSupported];
  HIDWORD(v137) = v24;
  if ((v23 & 1) != 0 || v24)
  {
    LODWORD(v137) = [objc_msgSend(objc_msgSend(a7 objectForKeyedSubscript:{@"DepthDataDeliveryConfigurations", "objectForKeyedSubscript:", @"DCProcessingSupported", "BOOLValue"}];
    if (v23)
    {
      LODWORD(v134) = [a9 stillImageGDCSourceMode];
    }

    else
    {
      LODWORD(v134) = 0;
    }

    HIDWORD(v134) = 1;
  }

  else
  {
    LODWORD(v137) = 0;
    v134 = 0;
  }

  v25 = [a5 resolutionFlavor];
  if (v25 == 2)
  {
    v26 = 0x100000010;
    if ((v22 & 0x80) == 0)
    {
      v26 = 0x100000000;
    }

    v22 |= v26;
    if (!OUTLINED_FUNCTION_9_23())
    {
      [v21 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v18}];
    }

    v27 = FigCaptureDictionaryRepresentationForDimensions([a6 ultraHighResSensorRawDimensions]);
    [OUTLINED_FUNCTION_9_23() setObject:v27 forKeyedSubscript:&unk_1F2243AB0];
    v128 = 0;
    v131 = 1;
  }

  else if (v25 == 1)
  {
    if ([a9 stillImageEnhancedResByMaintainingSensorResolutionSupported])
    {
      v128 = 0;
      v131 = 0;
      v22 |= 0x400000000uLL;
    }

    else
    {
      v22 |= 0x200000000uLL;
      HIDWORD(v128) = [(FigCaptureCameraParameters *)v149 deepZoomVersion];
      [a6 uiZoomFactor];
      if (v28 >= 1.4118 && ([a6 uiZoomFactor], v29 < 2.0) && -[FigCaptureCameraParameters deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:](v149, "deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:", v18, v20))
      {
        v30 = 4;
      }

      else
      {
        v30 = 3;
      }

      LODWORD(v128) = v30;
      v131 = 0x100000001;
    }
  }

  else
  {
    v128 = 0;
    v131 = 0;
  }

  HasCharleston = BWDeviceModelHasCharleston();
  v32 = a4 == 2 && v146 == 7;
  if (v32 && HasCharleston)
  {
    if (!OUTLINED_FUNCTION_9_23())
    {
      [v21 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v18}];
    }

    v33 = [a9 sensorDimensions];
    v34 = BWAspectRatioValueFromAspectRatio([a5 aspectRatio]);
    v35 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v33, v34);
    v36 = FigCaptureDictionaryRepresentationForDimensions(v35);
    [OUTLINED_FUNCTION_9_23() setObject:v36 forKeyedSubscript:&unk_1F2243AE0];
  }

  if ([v21 count])
  {
    v122 = [v21 copy];
  }

  else
  {
    v122 = 0;
  }

  v37 = v20;
  v38 = v23;
  if ([a6 sensorRawPixelFormat])
  {
    v22 |= 4uLL;
    v39 = [objc_msgSend(a7 objectForKeyedSubscript:{0x1F21A04B0), "BOOLValue"}];
    v40 = [objc_msgSend(a7 objectForKeyedSubscript:{0x1F21A04D0), "BOOLValue"}];
    v41 = v39 | 2;
    if (!v40)
    {
      v41 = v39;
    }

    HIDWORD(v125) = v41;
  }

  else
  {
    HIDWORD(v125) = 0;
  }

  v42 = [MEMORY[0x1E695DF70] array];
  v43 = [BWStillImageCaptureStreamSettings alloc];
  v44 = MEMORY[0x1E695E0F0];
  v50 = OUTLINED_FUNCTION_8_25(v43, v45, v18, v46, v47, v48, v49, MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, a6, v146, v149, v152);
  [v50 setSensorIDString:v37];
  [v42 addObject:v50];
  if ([a5 depthDataDeliveryEnabled] && (objc_msgSend(a5, "deferredSourceDeviceType") == 6 || objc_msgSend(a5, "deferredSourceDeviceType") == 12))
  {
    v51 = [BWStillImageCaptureStreamSettings alloc];
    v52 = *off_1E798A0E8;
    v58 = OUTLINED_FUNCTION_8_25(v51, v53, *off_1E798A0E8, v54, v55, v56, v57, MEMORY[0x1E695E0F8], v44, v44, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153);
    [v58 setSensorIDString:{+[FigCaptureCameraParameters sensorIDStringFromModuleInfo:](FigCaptureCameraParameters, "sensorIDStringFromModuleInfo:", objc_msgSend(objc_msgSend(obj, "objectForKeyedSubscript:", v52), "objectForKeyedSubscript:", v120))}];
    [v42 addObject:v58];
  }

  v59 = objc_alloc_init(BWStillImageCaptureMetadata);
  -[BWStillImageCaptureMetadata setDeviceType:](v59, "setDeviceType:", [a5 deferredSourceDeviceType]);
  -[BWStillImageCaptureMetadata setDevicePosition:](v59, "setDevicePosition:", [a5 deferredSourcePosition]);
  LOBYTE(v110) = 0;
  v60 = -[BWStillImageCaptureSettings initWithSettingsID:captureType:captureFlags:sceneFlags:frameStatisticsByPortType:deliverOriginalImage:deliverSushiRaw:captureStreamSettings:]([BWStillImageCaptureSettings alloc], "initWithSettingsID:captureType:captureFlags:sceneFlags:frameStatisticsByPortType:deliverOriginalImage:deliverSushiRaw:captureStreamSettings:", [a5 settingsID], v153, v22, 0, 0, 0);
  [(BWStillImageCaptureSettings *)v60 setMasterPortType:v18];
  [(BWStillImageCaptureSettings *)v60 setMetadata:v59];

  v61 = objc_alloc_init(BWDeferredPipelineParameters);
  v62 = +[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider];
  -[BWDeferredPipelineParameters setRawSensorDimensions:](v61, "setRawSensorDimensions:", [a9 sensorDimensions]);
  [v150 nrfVersion];
  [OUTLINED_FUNCTION_28() setNrfVersion:?];
  [objc_msgSend(a7 objectForKeyedSubscript:{0x1F21A0530), "intValue"}];
  [OUTLINED_FUNCTION_28() setNoiseReductionAndFusionScheme:?];
  [(BWDeferredPipelineParameters *)v61 setIntelligentDistortionCorrectionEnabled:HIDWORD(v138)];
  [(BWDeferredPipelineParameters *)v61 setDimensionsByResolutionFlavorByPortType:v123];
  [(BWDeferredPipelineParameters *)v61 setGeometricDistortionCorrectionEnabled:v38];
  [(BWDeferredPipelineParameters *)v61 setDcProcessingWithDepthSupported:v138];
  [(BWDeferredPipelineParameters *)v61 setStillImageGDCSourceMode:v135];
  [(BWDeferredPipelineParameters *)v61 setDistortionCorrectionVersion:HIDWORD(v135)];
  [(BWDeferredPipelineParameters *)v61 setDeepZoomVersion:HIDWORD(v129)];
  [(BWDeferredPipelineParameters *)v61 setDeepZoomMode:v129];
  v63 = [a9 semanticRenderingSupported];
  v64 = 0;
  if (v63)
  {
    v64 = [objc_msgSend(v62 commonSettings];
  }

  [(BWDeferredPipelineParameters *)v61 setSemanticRenderingVersion:v64];
  [(BWDeferredPipelineParameters *)v61 setGenerateInferencesForSemanticProcessingIfNeeded:HIDWORD(v132)];
  [(BWDeferredPipelineParameters *)v61 setQuadraProcessingSupportEnabled:v132];
  [(BWDeferredPipelineParameters *)v61 setCanProcessEnhancedResolution:HIDWORD(v132)];
  [(BWDeferredPipelineParameters *)v61 setSfhrMode:HIDWORD(v126)];
  [a9 sensorCenterOffset];
  [(BWDeferredPipelineParameters *)v61 setSensorCenterOffset:?];
  if ([a5 depthDataDeliveryEnabled])
  {
    [a9 maxContinuousZoomFactorForDepthDataDelivery];
    [(BWDeferredPipelineParameters *)v61 setContinuousZoomWithDepthSupported:v65 != 0.0];
    [objc_msgSend(a7 objectForKeyedSubscript:{@"StillImageDepthDataType", "intValue"}];
    [OUTLINED_FUNCTION_28() setDepthDataType:?];
    -[BWDeferredPipelineParameters setDepthDataDimensions:](v61, "setDepthDataDimensions:", [a11 soleHighResStillImageDimensions]);
    [objc_msgSend(a7 objectForKeyedSubscript:{@"PearlModuleType", "intValue"}];
    [OUTLINED_FUNCTION_28() setPearlModuleType:?];
  }

  if (([a9 isSmartStyleRenderingSupported] & 1) == 0)
  {
    [(BWDeferredPipelineParameters *)v61 setSmartStyleRenderingVersion:0];
    goto LABEL_61;
  }

  v66 = [objc_msgSend(v62 "commonSettings")];
  [(BWDeferredPipelineParameters *)v61 setSmartStyleRenderingVersion:v66];
  if (!v66)
  {
LABEL_61:
    [(BWDeferredPipelineParameters *)v61 setSmartStyleRenderingEnabled:0];
    goto LABEL_62;
  }

  if ([a9 isPhotoFormat])
  {
    v67 = FigCaptureClientApplicationIDIsCameraOrDerivative(a13);
  }

  else
  {
    v67 = 0;
  }

  [(BWDeferredPipelineParameters *)v61 setSmartStyleRenderingEnabled:v67];
  if ([a9 isPhotoFormat])
  {
    v68 = FigCaptureClientApplicationIDIsCameraOrDerivative(a13);
    goto LABEL_63;
  }

LABEL_62:
  v68 = 0;
LABEL_63:
  [(BWDeferredPipelineParameters *)v61 setSmartStyleReversibilityEnabled:v68];
  v142 = [[BWPhotoDescriptor alloc] initWithPhotoIdentifier:a12 processingFlags:v141];
  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v70 = [a9 sensorDimensions];
  if (a5)
  {
    if ([a5 aspectRatio])
    {
      v70 = [a5 outputDimensions];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  v184[0] = *MEMORY[0x1E6966208];
  v185[0] = [MEMORY[0x1E696AD98] numberWithInt:v70];
  v184[1] = *MEMORY[0x1E69660B8];
  v71 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v70)];
  v72 = *MEMORY[0x1E6966130];
  v185[1] = v71;
  v185[2] = &unk_1F2243B40;
  v73 = *MEMORY[0x1E6966020];
  v184[2] = v72;
  v184[3] = v73;
  v74 = *MEMORY[0x1E6966140];
  v185[3] = &unk_1F2243B58;
  v185[4] = &unk_1F2243B70;
  v75 = *MEMORY[0x1E69660D8];
  v184[4] = v74;
  v184[5] = v75;
  v182 = *MEMORY[0x1E696D0D8];
  v183 = MEMORY[0x1E695E110];
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
  v77 = *MEMORY[0x1E6966038];
  v185[5] = v76;
  v185[6] = &unk_1F22487A8;
  v78 = *MEMORY[0x1E69660F0];
  v184[6] = v77;
  v184[7] = v78;
  v185[7] = MEMORY[0x1E695E118];
  v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v185 forKeys:v184 count:8];
  v80 = [BWDeferredDictionaryIntermediate alloc];
  v81 = [(BWDeferredDictionaryIntermediate *)v80 initWithDictionary:v79 tag:BWDeferredIntermediateTagSourceNodePixelBufferAttributes URL:v157];
  [v69 addObject:v81];

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v90 = OUTLINED_FUNCTION_7_29(v82, v83, v84, v85, v86, v87, v88, v89, v110, v42, v114, v117, v120, v123, v126, v129, v132, v135, v138, v142, v144, v61, a13, v60, a5, v157, obj, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, 0);
  if (v90)
  {
    v91 = v90;
    v92 = *v179;
    do
    {
      for (i = 0; i != v91; ++i)
      {
        if (*v179 != v92)
        {
          objc_enumerationMutation(obja);
        }

        v112 = *(*(&v178 + 1) + 8 * i);
        v94 = -[BWDeferredDictionaryIntermediate initWithDictionary:tag:URL:]([BWDeferredDictionaryIntermediate alloc], "initWithDictionary:tag:URL:", [obja objectForKeyedSubscript:v112], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagCameraInfoByPortTypePrefix), v158);
        [v69 addObject:v94];
      }

      v91 = OUTLINED_FUNCTION_7_29(v95, v96, v97, v98, v99, v100, v101, v102, v111, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v143, v145, v148, v151, v154, v156, v158, obja, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
    }

    while (v91);
  }

  v103 = [v145 moduleCalibrationByPortType];
  if (v103)
  {
    v104 = v103;
    v105 = [BWDeferredDictionaryIntermediate alloc];
    v106 = [(BWDeferredDictionaryIntermediate *)v105 initWithDictionary:v104 tag:BWDeferredIntermediateTagModuleCalibrationByPortType URL:v158];
    [v69 addObject:v106];
  }

  v107 = +[BWDeferredProcessingContainerManager sharedInstance];
  v161 = v143;
  v108 = -[BWDeferredProcessingContainerManager createTransientContainerWithApplicationID:resolvedSettings:unresolvedSettings:pipelineParameters:intermediates:photoDescriptors:](v107, "createTransientContainerWithApplicationID:resolvedSettings:unresolvedSettings:pipelineParameters:intermediates:photoDescriptors:", v151, v154, v156, v148, v69, [MEMORY[0x1E695DEC8] arrayWithObjects:&v161 count:1]);

  return v108;
}

- (uint64_t)expectsGainMapForSettings:(void *)a3 captureSettings:
{
  if (!result)
  {
    return result;
  }

  v5 = [a3 captureType];
  v6 = [a3 captureFlags];
  v7 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters gainMapVersion]>> 16;
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      if ([a2 depthDataDeliveryEnabled])
      {
        v8 = (v6 >> 7) & 1;
        if (v5 != 1)
        {
          LODWORD(v8) = 1;
        }

        return v8 & (v6 >> 11);
      }

      if (v5 != 1)
      {
        if (v5 == 11 || (v5 & 0xFFFFFFFE) == 12)
        {
          return 1;
        }

        else
        {
          return (v6 >> 20) & 1;
        }
      }

      if ((v6 & 0x80) != 0)
      {
        return [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion]> 2;
      }
    }

    return 0;
  }

  v9 = (v6 >> 7) & 1;
  if (v5 != 1)
  {
    LODWORD(v9) = 1;
  }

  v11 = v5 == 11 || v5 == 2;
  if (v5 == 12)
  {
    v11 = 1;
  }

  v12 = (v6 & 0x100000) != 0 || v11;
  if ((v6 & 0x880) != 0)
  {
    return v9;
  }

  else
  {
    return v12;
  }
}

- (uint64_t)_reportCoreAnalyticsDataWithError:(void *)a3 job:
{
  if (result)
  {
    result = [a3 container];
    v5 = result;
    if (a2 == -16140)
    {
      v6 = 0x1F2197F30;
    }

    else if (a2)
    {
      result = [FigCaptureDeferredProcessingJob isPotentiallyRecoverableError:a2];
      v6 = result ? 0x1F216FC70 : 0x1F2197F10;
    }

    else
    {
      v6 = 0x1F2197EF0;
    }

    if (v6 != 0x1F216FC70)
    {
      v7 = objc_alloc_init(BWDeferredProcessingAnalyticsPayload);
      [(BWDeferredProcessingAnalyticsPayload *)v7 setError:a2];
      [(BWDeferredProcessingAnalyticsPayload *)v7 setProcessingResult:v6];
      if (v5)
      {
        -[BWDeferredProcessingAnalyticsPayload setContainerAgeInSeconds:](v7, "setContainerAgeInSeconds:", [v5 ageSeconds]);
        -[BWDeferredProcessingAnalyticsPayload setContainerSizeInBytes:](v7, "setContainerSizeInBytes:", [v5 sizeBytes]);
        -[BWDeferredProcessingAnalyticsPayload setProcessingType:](v7, "setProcessingType:", [v5 processingType]);
        -[BWDeferredProcessingAnalyticsPayload setFileBacked:](v7, "setFileBacked:", [v5 isRemote] ^ 1);
        if (a2 == -16140)
        {
          v8 = 0xFFFFFFFFLL;
        }

        else
        {
          v8 = [v5 processingCount];
        }

        [(BWDeferredProcessingAnalyticsPayload *)v7 setContainerProcessingCount:v8];
      }

      -[BWDeferredProcessingAnalyticsPayload setInteractiveQoS:](v7, "setInteractiveQoS:", [a3 isInteractiveQoS]);
      -[BWDeferredProcessingAnalyticsPayload setGraphPrepareDurationInMilliseconds:](v7, "setGraphPrepareDurationInMilliseconds:", [a3 prepareGraphNS] / 0xF4240uLL);
      -[BWDeferredProcessingAnalyticsPayload setJobDurationInMilliseconds:](v7, "setJobDurationInMilliseconds:", [a3 durationNS] / 0xF4240uLL);
      v9 = +[BWCoreAnalyticsReporter sharedInstance];

      return [(BWCoreAnalyticsReporter *)v9 sendEvent:v7];
    }
  }

  return result;
}

- (uint64_t)_ensureGraphForProcessingContainer:sensorRawPixelFormat:sensorRawDimensions:ultraHighResSensorRawDimensions:depthDataSourceDimensions:depthDataTargetDimensions:photoIdentifier:applicationID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_handleProcessedStillImage:error:settings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

@end