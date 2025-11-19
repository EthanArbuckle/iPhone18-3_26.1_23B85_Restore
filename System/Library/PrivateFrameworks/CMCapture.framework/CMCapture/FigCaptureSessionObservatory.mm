@interface FigCaptureSessionObservatory
+ (id)sharedObservatory;
+ (void)initialize;
- (FigCaptureSessionObservatory)init;
- (id)osStatePropertyList;
- (uint64_t)_postMovieRecordingUpdateNotification:(const void *)a3 forCaptureSession:;
- (uint64_t)_registerObserver:(uint64_t)result;
- (unint64_t)_isSessionRecordingMovie:(unint64_t)result;
- (void)_captureSessionDidReconfigureWhileRunning:(char)a3 containsVideoSource:(char)a4 containsStillImageSink:(char)a5 containsMovieFileSink:;
- (void)_resetFigAssetWriterRecordingsCountForCaptureSession:(uint64_t)a1;
- (void)_setFigAssetWriterRecording:(CFTypeRef)cf forCaptureSession:;
- (void)_setMovieFileOutputRecording:(uint64_t)a3 sectionID:(CFTypeRef)cf forCaptureSession:;
- (void)_setStatus:(__int128 *)a3 clientAuditToken:(char)a4 containsVideoSource:(char)a5 containsStillImageSink:(char)a6 containsMovieFileSink:(CFTypeRef)cf forCaptureSession:;
- (void)captureSessionWasCreated:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation FigCaptureSessionObservatory

+ (id)sharedObservatory
{
  if (sharedObservatory_once != -1)
  {
    +[FigCaptureSessionObservatory sharedObservatory];
  }

  return sharedObservatory_sharedObservatory;
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

FigCaptureSessionObservatory *__49__FigCaptureSessionObservatory_sharedObservatory__block_invoke()
{
  result = objc_alloc_init(FigCaptureSessionObservatory);
  sharedObservatory_sharedObservatory = result;
  return result;
}

- (FigCaptureSessionObservatory)init
{
  v4.receiver = self;
  v4.super_class = FigCaptureSessionObservatory;
  v2 = [(FigCaptureSessionObservatory *)&v4 init];
  if (v2)
  {
    v2->_captureSessionsStorage = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:259 capacity:1];
    v2->_registeredObservers = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
    v2->_queue = FigDispatchQueueCreateWithPriority();
    if ([objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")])
    {
      v2->_attachedSessionManager = objc_alloc_init(FigCaptureSessionAttachedSessionManager);
    }

    v2->_osStateHandle = [[FigCaptureOSStateHandle alloc] initWithTitle:@"FigCaptureSessionObservatory" queue:v2->_queue dataProvider:v2];
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
  }

  return v2;
}

- (void)dealloc
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();

  v3.receiver = self;
  v3.super_class = FigCaptureSessionObservatory;
  [(FigCaptureSessionObservatory *)&v3 dealloc];
}

- (void)registerObserver:(id)a3
{
  if (a3)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __49__FigCaptureSessionObservatory_registerObserver___block_invoke;
    v4[3] = &unk_1E798F898;
    v4[4] = self;
    v4[5] = a3;
    fig_dispatch_async_autoreleasepool(queue, v4);
  }
}

- (void)unregisterObserver:(id)a3
{
  if (a3)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__FigCaptureSessionObservatory_unregisterObserver___block_invoke;
    v4[3] = &unk_1E798F898;
    v4[4] = self;
    v4[5] = a3;
    fig_dispatch_async_autoreleasepool(queue, v4);
  }
}

- (void)captureSessionWasCreated:(OpaqueFigCaptureSession *)a3
{
  if (a3)
  {
    CFRetain(a3);
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__FigCaptureSessionObservatory_captureSessionWasCreated___block_invoke;
    v6[3] = &unk_1E7990178;
    v6[4] = self;
    v6[5] = a3;
    fig_dispatch_async_autoreleasepool(queue, v6);
  }
}

void __57__FigCaptureSessionObservatory_captureSessionWasCreated___block_invoke(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x48uLL, 0x108004056F175C6uLL);
  NSMapInsert(*(*(a1 + 32) + 8), *(a1 + 40), v2);
  v3 = *(a1 + 40);

  CFRelease(v3);
}

void __143__FigCaptureSessionObservatory__setStatus_clientAuditToken_containsVideoSource_containsStillImageSink_containsMovieFileSink_forCaptureSession___block_invoke(uint64_t a1)
{
  v2 = NSMapGet(*(*(a1 + 32) + 8), *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = *v2;
    v5 = *(a1 + 48);
    if (*v2 == v5)
    {
      v6 = v2[2];
      v83 = v2[1];
      v84 = v6;
      v7 = *(a1 + 68);
      *v74 = *(a1 + 52);
      *&v74[16] = v7;
      if (FigCaptureAuditTokenProcessesAreEqual(&v83, v74) && *(v3 + 48) == *(a1 + 84) && *(v3 + 49) == *(a1 + 85) && *(v3 + 50) == *(a1 + 86))
      {
        goto LABEL_47;
      }

      v4 = *v3;
      v5 = *(a1 + 48);
    }

    *v3 = v5;
    v8 = *(a1 + 68);
    v3[1] = *(a1 + 52);
    v3[2] = v8;
    *(v3 + 48) = *(a1 + 84);
    *(v3 + 49) = *(a1 + 85);
    *(v3 + 50) = *(a1 + 86);
    if (dword_1ED844070)
    {
      v86 = 0;
      v85 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v86;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v85))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = FigCaptureSessionStatusToString(*(a1 + 48));
        v14 = *(a1 + 68);
        v83 = *(a1 + 52);
        v84 = v14;
        PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v83);
        v16 = *(a1 + 84);
        v17 = *(a1 + 85);
        v18 = *(a1 + 86);
        *v74 = 136316674;
        *&v74[4] = "[FigCaptureSessionObservatory _setStatus:clientAuditToken:containsVideoSource:containsStillImageSink:containsMovieFileSink:forCaptureSession:]_block_invoke";
        *&v74[12] = 2048;
        *&v74[14] = v12;
        *&v74[22] = 2080;
        *&v74[24] = v13;
        v75 = 1024;
        v76 = PIDFromAuditToken;
        v77 = 1024;
        v78 = v16;
        v79 = 1024;
        v80 = v17;
        v81 = 1024;
        v82 = v18;
        LODWORD(v58) = 56;
        v57 = v74;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      if (v19 == 2)
      {
        if (!v4)
        {
          v36 = *(a1 + 32);
          v37 = *(v36 + 32) + 1;
          *(v36 + 32) = v37;
          *(v3 + 1) = v37;
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v38 = *(*(a1 + 32) + 16);
        v39 = [v38 countByEnumeratingWithState:&v65 objects:v64 count:{16, v57, v58}];
        if (v39)
        {
          v40 = v39;
          v41 = *v66;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v66 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v65 + 1) + 8 * i);
              v44 = [FigCaptureSessionProxy alloc];
              v45 = *(a1 + 40);
              v46 = *(v3 + 1);
              v47 = *(v3 + 48);
              v48 = *(v3 + 49);
              v49 = *(v3 + 50);
              v50 = v3[2];
              v83 = v3[1];
              v84 = v50;
              v51 = [(FigCaptureSessionProxy *)v44 initWithFigCaptureSession:v45 identifier:v46 clientAuditToken:&v83 containsVideoSource:v47 containsStillImageSink:v48 containsMovieFileSink:v49];
              if (v51)
              {
                [v43 captureSessionDidStart:v51];
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v65 objects:v64 count:16];
          }

          while (v40);
        }
      }

      else if (v19 == 1)
      {
        v20 = *(a1 + 32);
        v21 = *(v20 + 32) + 1;
        *(v20 + 32) = v21;
        *(v3 + 1) = v21;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v22 = *(*(a1 + 32) + 16);
        v23 = [v22 countByEnumeratingWithState:&v70 objects:v69 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v71;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v71 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v70 + 1) + 8 * j);
              v28 = [FigCaptureSessionProxy alloc];
              v29 = *(a1 + 40);
              v30 = *(v3 + 1);
              v31 = *(v3 + 48);
              v32 = *(v3 + 49);
              v33 = *(v3 + 50);
              v34 = v3[2];
              v83 = v3[1];
              v84 = v34;
              v35 = [(FigCaptureSessionProxy *)v28 initWithFigCaptureSession:v29 identifier:v30 clientAuditToken:&v83 containsVideoSource:v31 containsStillImageSink:v32 containsMovieFileSink:v33];
              if (v35)
              {
                [v27 captureSessionWillStart:v35];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v70 objects:v69 count:16];
          }

          while (v24);
        }
      }
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v52 = *(*(a1 + 32) + 16);
      v53 = [v52 countByEnumeratingWithState:&v60 objects:v59 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v61;
        do
        {
          for (k = 0; k != v54; ++k)
          {
            if (*v61 != v55)
            {
              objc_enumerationMutation(v52);
            }

            [*(*(&v60 + 1) + 8 * k) captureSessionDidStop:{*(v3 + 1), v57, v58}];
          }

          v54 = [v52 countByEnumeratingWithState:&v60 objects:v59 count:16];
        }

        while (v54);
      }
    }
  }

LABEL_47:
  CFRelease(*(a1 + 40));
}

void __139__FigCaptureSessionObservatory__captureSessionDidReconfigureWhileRunning_containsVideoSource_containsStillImageSink_containsMovieFileSink___block_invoke(uint64_t a1)
{
  v2 = NSMapGet(*(*(a1 + 32) + 8), *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    if (*v2 == 2)
    {
      v4 = *(a1 + 48);
      if (v2[48] != v4 || v2[49] != *(a1 + 49) || v2[50] != *(a1 + 50))
      {
        v2[48] = v4;
        v2[49] = *(a1 + 49);
        v2[50] = *(a1 + 50);
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v5 = *(*(a1 + 32) + 16);
        v6 = [v5 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v22;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v22 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v21 + 1) + 8 * i);
              v11 = [FigCaptureSessionProxy alloc];
              v12 = *(a1 + 40);
              v13 = *(v3 + 1);
              v14 = v3[48];
              v15 = v3[49];
              v16 = v3[50];
              v17 = *(v3 + 2);
              v19[0] = *(v3 + 1);
              v19[1] = v17;
              v18 = [(FigCaptureSessionProxy *)v11 initWithFigCaptureSession:v12 identifier:v13 clientAuditToken:v19 containsVideoSource:v14 containsStillImageSink:v15 containsMovieFileSink:v16];
              [v10 captureSessionDidReconfigureWhileRunning:v18];
            }

            v7 = [v5 countByEnumeratingWithState:&v21 objects:v20 count:16];
          }

          while (v7);
        }
      }
    }
  }

  CFRelease(*(a1 + 40));
}

- (id)osStatePropertyList
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  captureSessionsStorage = self->_captureSessionsStorage;
  v5 = [(NSMapTable *)captureSessionsStorage countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(captureSessionsStorage);
        }

        [v3 setObject:FigCaptureSessionGetOSStateData(*(*(&v11 + 1) + 8 * v8) forKeyedSubscript:{0), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"FigCaptureSession-%p", *(*(&v11 + 1) + 8 * v8))}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMapTable *)captureSessionsStorage countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v3;
}

- (uint64_t)_registerObserver:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_1_8();
      LODWORD(v39) = 0;
      FigDebugAssert3();
    }

    v4 = [*(v3 + 16) addObject:{a2, v39}];
    v5 = *(v3 + 8);
    result = OUTLINED_FUNCTION_13_27(v4, v6, v7, v8, v9, v10);
    if (result)
    {
      v11 = result;
      v12 = MEMORY[0];
      do
      {
        v13 = 0;
        do
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(8 * v13);
          v15 = *NSMapGet(*(v3 + 8), v14);
          if (v15 == 2)
          {
            v25 = [FigCaptureSessionProxy alloc];
            v24 = OUTLINED_FUNCTION_6_46(v25, v26, v27, v28, v29, v30, v31, v32, v40, v41, v42, v43);
            [a2 captureSessionDidStart:v24];
          }

          else
          {
            if (v15 != 1)
            {
              goto LABEL_14;
            }

            v16 = [FigCaptureSessionProxy alloc];
            v24 = OUTLINED_FUNCTION_6_46(v16, v17, v18, v19, v20, v21, v22, v23, v40, v41, v42, v43);
            [a2 captureSessionWillStart:v24];
          }

LABEL_14:
          v33 = [(FigCaptureSessionObservatory *)v3 _isSessionRecordingMovie:v14];
          if (v33)
          {
            v33 = [(FigCaptureSessionObservatory *)v3 _postMovieRecordingUpdateNotification:v14 forCaptureSession:?];
          }

          ++v13;
        }

        while (v11 != v13);
        result = OUTLINED_FUNCTION_13_27(v33, v34, v35, v36, v37, v38);
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

- (unint64_t)_isSessionRecordingMovie:(unint64_t)result
{
  if (result)
  {
    v3 = result;
    dispatch_assert_queue_V2(*(result + 24));
    result = NSMapGet(*(v3 + 8), a2);
    if (result)
    {
      v4 = result;
      return [*(result + 56) count] || *(v4 + 64) > 0;
    }
  }

  return result;
}

- (uint64_t)_postMovieRecordingUpdateNotification:(const void *)a3 forCaptureSession:
{
  if (result)
  {
    v5 = result;
    dispatch_assert_queue_V2(*(result + 24));
    result = NSMapGet(*(v5 + 8), a3);
    if (result)
    {
      v13 = result;
      v14 = *(v5 + 16);
      result = OUTLINED_FUNCTION_0_0(result, v6, v7, v8, v9, v10, v11, v12, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, 0);
      if (result)
      {
        v15 = result;
        v16 = MEMORY[0];
        do
        {
          v17 = 0;
          do
          {
            if (MEMORY[0] != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(8 * v17);
            v19 = *(v13 + 8);
            if (a2)
            {
              v20 = [v18 captureSessionDidStartMovieRecording:v19];
            }

            else
            {
              v20 = [v18 captureSessionDidFinishMovieRecording:v19];
            }

            ++v17;
          }

          while (v15 != v17);
          result = OUTLINED_FUNCTION_0_0(v20, v21, v22, v23, v24, v25, v26, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v60);
          v15 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)_setStatus:(__int128 *)a3 clientAuditToken:(char)a4 containsVideoSource:(char)a5 containsStillImageSink:(char)a6 containsMovieFileSink:(CFTypeRef)cf forCaptureSession:
{
  if (a1)
  {
    CFRetain(cf);
    OUTLINED_FUNCTION_7_1();
    v17 = 3221225472;
    v14 = a3[1];
    v23 = *a3;
    v18 = __143__FigCaptureSessionObservatory__setStatus_clientAuditToken_containsVideoSource_containsStillImageSink_containsMovieFileSink_forCaptureSession___block_invoke;
    v19 = &unk_1E7998510;
    v20 = a1;
    v21 = cf;
    v22 = a2;
    v24 = v14;
    v25 = a4;
    v26 = a5;
    v27 = a6;
    fig_dispatch_async_autoreleasepool(v15, v16);
  }
}

- (void)_captureSessionDidReconfigureWhileRunning:(char)a3 containsVideoSource:(char)a4 containsStillImageSink:(char)a5 containsMovieFileSink:
{
  if (a1)
  {
    CFRetain(cf);
    OUTLINED_FUNCTION_7_1();
    v12 = 3221225472;
    v13 = __139__FigCaptureSessionObservatory__captureSessionDidReconfigureWhileRunning_containsVideoSource_containsStillImageSink_containsMovieFileSink___block_invoke;
    v14 = &unk_1E7997648;
    v15 = a1;
    v16 = cf;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    fig_dispatch_async_autoreleasepool(v10, v11);
  }
}

- (void)_setMovieFileOutputRecording:(uint64_t)a3 sectionID:(CFTypeRef)cf forCaptureSession:
{
  if (a1)
  {
    if (a3)
    {
      CFRetain(cf);
      v8 = *(a1 + 24);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __89__FigCaptureSessionObservatory__setMovieFileOutputRecording_sectionID_forCaptureSession___block_invoke;
      v9[3] = &unk_1E7998820;
      v9[5] = a3;
      v9[6] = cf;
      v10 = a2;
      v9[4] = a1;
      fig_dispatch_async_autoreleasepool(v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_1_8();
      FigDebugAssert3();
    }
  }
}

void __89__FigCaptureSessionObservatory__setMovieFileOutputRecording_sectionID_forCaptureSession___block_invoke(uint64_t a1)
{
  v2 = NSMapGet(*(*(a1 + 32) + 8), *(a1 + 48));
  if (v2)
  {
    v3 = v2;
    v4 = [(FigCaptureSessionObservatory *)*(a1 + 32) _isSessionRecordingMovie:?];
    v5 = *(v3 + 7);
    if (*(a1 + 56) == 1)
    {
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        *(v3 + 7) = v5;
      }

      [v5 addObject:*(a1 + 40)];
    }

    else
    {
      [v5 removeObject:*(a1 + 40)];
      if (![*(v3 + 7) count])
      {

        *(v3 + 7) = 0;
      }
    }

    v6 = [(FigCaptureSessionObservatory *)*(a1 + 32) _isSessionRecordingMovie:?];
    if (v4 != v6)
    {
      [(FigCaptureSessionObservatory *)*(a1 + 32) _postMovieRecordingUpdateNotification:v6 forCaptureSession:*(a1 + 48)];
    }
  }

  v7 = *(a1 + 48);

  CFRelease(v7);
}

- (void)_setFigAssetWriterRecording:(CFTypeRef)cf forCaptureSession:
{
  if (a1)
  {
    CFRetain(cf);
    OUTLINED_FUNCTION_7_1();
    v8 = 3221225472;
    v9 = __78__FigCaptureSessionObservatory__setFigAssetWriterRecording_forCaptureSession___block_invoke;
    v10 = &unk_1E7991948;
    v11 = a1;
    v12 = cf;
    v13 = a2;
    fig_dispatch_async_autoreleasepool(v6, v7);
  }
}

void __78__FigCaptureSessionObservatory__setFigAssetWriterRecording_forCaptureSession___block_invoke(uint64_t a1)
{
  v2 = NSMapGet(*(*(a1 + 32) + 8), *(a1 + 40));
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  if ((*v2 - 3) < 0xFFFFFFFE)
  {
    goto LABEL_10;
  }

  v4 = [(FigCaptureSessionObservatory *)*(a1 + 32) _isSessionRecordingMovie:?];
  v5 = *(v3 + 8);
  if (*(a1 + 48) == 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    *(v3 + 8) = v5 - 1;
    if (v5 > 0)
    {
      goto LABEL_8;
    }

    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v9, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CameraViewfinder/FigCaptureSessionObserver.m", 614, @"LastShownDate:FigCaptureSessionObserver.m:614", @"LastShownBuild:FigCaptureSessionObserver.m:614", 0);
    free(v9);
    v6 = 0;
  }

  *(v3 + 8) = v6;
LABEL_8:
  v10 = [(FigCaptureSessionObservatory *)*(a1 + 32) _isSessionRecordingMovie:?];
  if (v4 != v10)
  {
    [(FigCaptureSessionObservatory *)*(a1 + 32) _postMovieRecordingUpdateNotification:v10 forCaptureSession:*(a1 + 40)];
  }

LABEL_10:
  CFRelease(*(a1 + 40));
}

- (void)_resetFigAssetWriterRecordingsCountForCaptureSession:(uint64_t)a1
{
  if (a1)
  {
    CFRetain(cf);
    v4 = *(a1 + 24);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __85__FigCaptureSessionObservatory__resetFigAssetWriterRecordingsCountForCaptureSession___block_invoke;
    v5[3] = &unk_1E7990178;
    v5[4] = a1;
    v5[5] = cf;
    fig_dispatch_async_autoreleasepool(v4, v5);
  }
}

void __85__FigCaptureSessionObservatory__resetFigAssetWriterRecordingsCountForCaptureSession___block_invoke(uint64_t a1)
{
  v2 = NSMapGet(*(*(a1 + 32) + 8), *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = [(FigCaptureSessionObservatory *)*(a1 + 32) _isSessionRecordingMovie:?];
    v3[8] = 0;
    v5 = [(FigCaptureSessionObservatory *)*(a1 + 32) _isSessionRecordingMovie:?];
    if (v4 != v5)
    {
      [(FigCaptureSessionObservatory *)*(a1 + 32) _postMovieRecordingUpdateNotification:v5 forCaptureSession:*(a1 + 40)];
    }
  }

  v6 = *(a1 + 40);

  CFRelease(v6);
}

@end