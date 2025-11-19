@interface BWCameraStreamingMonitor
+ (id)sharedCameraStreamingMonitor;
+ (void)initialize;
- (BWCameraStreamingMonitor)initWithMediaStatusDomainPublisher:(id)a3 msnReportingEnabled:(BOOL)a4 systemStatusReportingEnabled:(BOOL)a5 privacyAccountingAccessLogger:(id)a6;
- (uint64_t)_getClientInfoForTCCIdentity:(uint64_t)a3 clientPID:(int)a4 sessionIsPrewarming:;
- (uint64_t)_handleClientDeath:(uint64_t)result;
- (uint64_t)_informSystemStatusWithIsStreaming:(__int128 *)a3 clientAuditToken:(uint64_t)a4 mediaEnvironment:;
- (uint64_t)_updateCameraStreamingMonitorInfoWithStreaming:(char)a3 cameraAccessGranted:(uint64_t)a4 clientAuditToken:(uint64_t)a5 tccIdentity:(int)a6 updateStreamingStatus:(int)a7 updateAccessStatus:;
- (void)_informMediaSafetyNetWithIsStreaming:(uint64_t)a1 clientAuditToken:(int)a2;
- (void)_informPrivacyAccountingWithIsStreaming:(uint64_t)a3 clientInfo:(__int128 *)a4 clientAuditToken:(uint64_t)a5 tccIdentity:;
- (void)_updateActiveClientSessionsForSessionID:(uint64_t)a3 clientSession:(_OWORD *)a4 clientAuditToken:(uint64_t)a5 tccIdentity:(uint64_t)a6 mediaEnvironment:;
- (void)_updateClientInfoFromSetStreaming:(_OWORD *)a3 clientAuditToken:(uint64_t)a4 tccIdentity:;
- (void)_updateMicrophoneInterferenceMitigationRequirementIfNeededWithIsStreaming:(uint64_t)a1 deviceType:(unsigned int)a2 maxFrameRate:(float)a3 streamUniqueID:(uint64_t)a4 clientAuditToken:(void *)a5;
- (void)_updateSpeakerInterferenceMitigationRequirementIfNeededWithIsStreaming:(uint64_t)a1 deviceType:(unsigned int)a2 streamUniqueID:(int)a3 clientAuditToken:(void *)a4;
- (void)dealloc;
- (void)setCameraAccess:(BOOL)a3 deviceType:(int)a4 clientAuditToken:(id *)a5 tccIdentity:(id)a6 mediaEnvironment:(id)a7 completionHandler:(id)a8;
- (void)setSessionStateForSessionID:(id)a3 running:(BOOL)a4 containsVideoSource:(BOOL)a5 clientAuditToken:(id *)a6 tccIdentity:(id)a7 mediaEnvironment:(id)a8 sessionIsPrewarming:(BOOL)a9 completionHandler:(id)a10;
- (void)setStreaming:(BOOL)a3 deviceType:(int)a4 maxFrameRate:(float)a5 streamUniqueID:(id)a6 clientAuditToken:(id *)a7 tccIdentity:(id)a8 mediaEnvironment:(id)a9 completionHandler:(id)a10;
@end

@implementation BWCameraStreamingMonitor

+ (id)sharedCameraStreamingMonitor
{
  if (sharedCameraStreamingMonitor_sOnceToken != -1)
  {
    +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
  }

  return sharedCameraStreamingMonitor_sSharedBWCameraStreamingMonitor;
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

- (BWCameraStreamingMonitor)initWithMediaStatusDomainPublisher:(id)a3 msnReportingEnabled:(BOOL)a4 systemStatusReportingEnabled:(BOOL)a5 privacyAccountingAccessLogger:(id)a6
{
  v7 = a5;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BWCameraStreamingMonitor;
  v10 = [(BWCameraStreamingMonitor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    if (v7)
    {
      v10->_systemStatusReportingEnabled = v7;
      v10->_mediaStatusDomainPublisher = a3;
      FigCaptureGetCurrentProcessAuditToken(&v16);
      if (FigCaptureClientHasEntitlement(&v16, @"com.apple.systemstatus.activityattribution"))
      {
        *&v16 = 0;
        *(&v16 + 1) = &v16;
        v17 = 0x3052000000;
        v18 = __Block_byref_object_copy__36;
        v12 = getSTDynamicActivityAttributionPublisherClass_softClass;
        v19 = __Block_byref_object_dispose__36;
        v20 = getSTDynamicActivityAttributionPublisherClass_softClass;
        if (!getSTDynamicActivityAttributionPublisherClass_softClass)
        {
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __getSTDynamicActivityAttributionPublisherClass_block_invoke;
          v15[3] = &unk_1E798FC38;
          v15[4] = &v16;
          __getSTDynamicActivityAttributionPublisherClass_block_invoke(v15);
          v12 = *(*(&v16 + 1) + 40);
        }

        _Block_object_dispose(&v16, 8);
        [v12 setCurrentAttributionKey:0 andApp:0x1F2185490];
      }
    }

    if (v8)
    {
      v11->_msnReportingEnabled = v8;
    }

    v11->_activeStreamUniqueIDsByClientPID = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v11->_cameraStreamingMonitorQueue = FigDispatchQueueCreateWithPriority();
    v11->_clientInfoByPID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_managedClientInfoByBundleID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_privacyAccountingAccessLogger = a6;
    v11->_clientSessionsBySessionID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_activeClientSessionIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCameraStreamingMonitor;
  [(BWCameraStreamingMonitor *)&v3 dealloc];
}

void __97__BWCameraStreamingMonitor__informSystemStatusWithIsStreaming_clientAuditToken_mediaEnvironment___block_invoke(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    v11 = [objc_msgSend(*(a1 + 40) "extensionPointIdentifier")];
    v12 = *(a1 + 64);
    v54 = *(a1 + 48);
    v55 = v12;
    if (!FigCaptureAuditTokenIsValid(&v54) || (v11 & 1) != 0)
    {
      if (v11)
      {
        v28 = objc_alloc(getSTExecutableIdentityClass());
        v29 = *(a1 + 64);
        v54 = *(a1 + 48);
        v55 = v29;
        v30 = [v28 initWithAuditToken:&v54];
        v31 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v30];
        v32 = [objc_alloc(getSTExecutableIdentityClass()) initWithApplicationBundleIdentifier:{objc_msgSend(*(a1 + 40), "extensionContainingAppBundleIdentifier")}];
        v33 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v32];
        v34 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v33 activeEntity:v31];
        if (dword_1ED8443D0)
        {
          LODWORD(v47) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [a2 setCameraCaptureAttributions:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", v34, v43, v44)}];
      }

      else
      {
        v39 = [objc_alloc(getSTExecutableIdentityClass()) initWithApplicationBundleIdentifier:0x1F216ED50];
        v40 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v39];
        v41 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v40];
        if (dword_1ED8443D0)
        {
          LODWORD(v47) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [a2 setCameraCaptureAttributions:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", v41, v43, v44)}];
      }

      return;
    }

    if (dword_1ED8443D0)
    {
      LODWORD(v47) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
LABEL_25:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_26:
    v36 = MEMORY[0x1E695DFD8];
    STActivityAttributionClass = getSTActivityAttributionClass();
    v38 = *(a1 + 64);
    v54 = *(a1 + 48);
    v55 = v38;
    [a2 setCameraCaptureAttributions:{objc_msgSend(v36, "setWithObject:", objc_msgSend(STActivityAttributionClass, "attributionWithAuditToken:", &v54))}];
    return;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = [objc_msgSend(*(a1 + 40) "rbsProcessHandle")];
  v5 = [v4 countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (!v5)
  {
LABEL_20:
    if (dword_1ED8443D0)
    {
      LODWORD(v47) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v6 = v5;
  v7 = *v51;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v51 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v50 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "endowmentNamespace")])
    {
      if ([objc_msgSend(v9 "environment")])
      {
        v10 = [v9 endowment];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v50 objects:v49 count:16];
      if (v6)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69B06E8]];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69B06F8]];
  if (!v14)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v17 = objc_alloc(getSTExecutableIdentityClass());
  v18 = *(a1 + 64);
  v54 = *(a1 + 48);
  v55 = v18;
  v19 = [v17 initWithAuditToken:&v54];
  v20 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v19];
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v47 = v21;
  v48 = v21;
  [v14 getBytes:&v47 length:32];
  v54 = v47;
  v55 = v48;
  FigCaptureGetPIDFromAuditToken(&v54);
  v22 = objc_alloc(getSTExecutableIdentityClass());
  v54 = v47;
  v55 = v48;
  v23 = [v22 initWithAuditToken:&v54];
  v24 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutableIdentity:v23 website:v16];
  v25 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v24 activeEntity:v20];
  if (dword_1ED8443D0)
  {
    *type = 0;
    v45 = OS_LOG_TYPE_DEFAULT;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 setCameraCaptureAttributions:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", v25, v43, v44)}];
}

uint64_t __97__BWCameraStreamingMonitor__informSystemStatusWithIsStreaming_clientAuditToken_mediaEnvironment___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E695DFD8] set];

  return [a2 setCameraCaptureAttributions:v3];
}

void __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke_2;
  v4[3] = &unk_1E798F898;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke_4;
  v4[3] = &unk_1E798F898;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

- (void)setStreaming:(BOOL)a3 deviceType:(int)a4 maxFrameRate:(float)a5 streamUniqueID:(id)a6 clientAuditToken:(id *)a7 tccIdentity:(id)a8 mediaEnvironment:(id)a9 completionHandler:(id)a10
{
  if ((a4 - 17) > 3)
  {
    cameraStreamingMonitorQueue = self->_cameraStreamingMonitorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __144__BWCameraStreamingMonitor_setStreaming_deviceType_maxFrameRate_streamUniqueID_clientAuditToken_tccIdentity_mediaEnvironment_completionHandler___block_invoke;
    block[3] = &unk_1E799B828;
    v12 = *&a7->var0[4];
    v14 = *a7->var0;
    v15 = v12;
    v18 = a3;
    block[4] = self;
    block[5] = a6;
    v16 = a4;
    v17 = a5;
    block[6] = a8;
    block[7] = a10;
    dispatch_async(cameraStreamingMonitorQueue, block);
  }

  else
  {
    if (dword_1ED8443D0)
    {
      v20 = 0;
      v19 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a10)
    {
      (*(a10 + 2))(a10, a2, *&a5);
    }
  }
}

- (void)setCameraAccess:(BOOL)a3 deviceType:(int)a4 clientAuditToken:(id *)a5 tccIdentity:(id)a6 mediaEnvironment:(id)a7 completionHandler:(id)a8
{
  cameraStreamingMonitorQueue = self->_cameraStreamingMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__BWCameraStreamingMonitor_setCameraAccess_deviceType_clientAuditToken_tccIdentity_mediaEnvironment_completionHandler___block_invoke;
  block[3] = &unk_1E799B850;
  v9 = *&a5->var0[4];
  v11 = *a5->var0;
  v12 = v9;
  v13 = a3;
  block[4] = self;
  block[5] = a6;
  block[6] = a7;
  block[7] = a8;
  dispatch_async(cameraStreamingMonitorQueue, block);
}

- (void)setSessionStateForSessionID:(id)a3 running:(BOOL)a4 containsVideoSource:(BOOL)a5 clientAuditToken:(id *)a6 tccIdentity:(id)a7 mediaEnvironment:(id)a8 sessionIsPrewarming:(BOOL)a9 completionHandler:(id)a10
{
  cameraStreamingMonitorQueue = self->_cameraStreamingMonitorQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v11 = *&a6->var0[4];
  v13 = *a6->var0;
  v12[2] = __168__BWCameraStreamingMonitor_setSessionStateForSessionID_running_containsVideoSource_clientAuditToken_tccIdentity_mediaEnvironment_sessionIsPrewarming_completionHandler___block_invoke;
  v12[3] = &unk_1E799B878;
  v14 = v11;
  v12[4] = self;
  v12[5] = a3;
  v15 = a9;
  v16 = a4;
  v17 = a5;
  v12[6] = a7;
  v12[7] = a8;
  v12[8] = a10;
  dispatch_async(cameraStreamingMonitorQueue, v12);
}

BWCameraStreamingMonitor *__56__BWCameraStreamingMonitor_sharedCameraStreamingMonitor__block_invoke()
{
  result = SystemStatusLibraryCore();
  if (result && (result = getSTActivityAttributionClass()) != 0)
  {
    result = getSTMediaStatusDomainPublisherClass();
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  if (MEMORY[0x1EEE8C550])
  {
    v2 = MEMORY[0x1EEE8C558] == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || MEMORY[0x1EEE8C560] == 0 || MEMORY[0x1EEE8C568] == 0;
  v5 = !v4;
  if (!v4 || v1)
  {
    if (v1)
    {
      v6 = [objc_alloc(getSTMediaStatusDomainPublisherClass()) init];
    }

    else
    {
      v6 = 0;
    }

    result = -[BWCameraStreamingMonitor initWithMediaStatusDomainPublisher:msnReportingEnabled:systemStatusReportingEnabled:privacyAccountingAccessLogger:]([BWCameraStreamingMonitor alloc], "initWithMediaStatusDomainPublisher:msnReportingEnabled:systemStatusReportingEnabled:privacyAccountingAccessLogger:", v6, v5, v1, [getPAAccessLoggerClass() sharedInstance]);
    sharedCameraStreamingMonitor_sSharedBWCameraStreamingMonitor = result;
  }

  return result;
}

- (uint64_t)_handleClientDeath:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  if (!OUTLINED_FUNCTION_30_12())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "pid")}];
  v5 = [objc_msgSend(a2 "bundle")];
  v6 = (v2 + 48);
  if (![*(v2 + 48) objectForKeyedSubscript:v5])
  {
    v9 = *(v2 + 40);
    v8 = (v2 + 40);
    v10 = [v9 objectForKeyedSubscript:v4];
    if (v10)
    {
      *(v10 + 10) = 1;
    }

    result = [*v8 objectForKeyedSubscript:v4];
    if (result)
    {
      v6 = v8;
      v5 = v4;
      if (*(result + 8))
      {
        return result;
      }
    }

    else
    {
      v6 = v8;
      v5 = v4;
    }

    goto LABEL_16;
  }

  v7 = [*v6 objectForKeyedSubscript:v5];
  if (v7)
  {
    *(v7 + 10) = 1;
  }

  result = [*v6 objectForKeyedSubscript:v5];
  if (!result || (*(result + 8) & 1) == 0)
  {
LABEL_16:
    v11 = *v6;

    return [v11 removeObjectForKey:v5];
  }

  return result;
}

- (uint64_t)_informSystemStatusWithIsStreaming:(__int128 *)a3 clientAuditToken:(uint64_t)a4 mediaEnvironment:
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (*(result + 33) != 1)
  {
    return result;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!a2)
  {
    if (dword_1ED8443D0)
    {
      OUTLINED_FUNCTION_18_27();
      v14 = OUTLINED_FUNCTION_14_36();
      if (os_log_type_enabled(v14, v36))
      {
        v15 = v37;
      }

      else
      {
        v15 = v37 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v30 = 136315138;
        v31 = "[BWCameraStreamingMonitor _informSystemStatusWithIsStreaming:clientAuditToken:mediaEnvironment:]";
        LODWORD(v21) = 12;
        v20 = &v30;
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = *(v4 + 16);
    v18 = &__block_literal_global_56;
    return [v19 updateVolatileDataWithBlock:{v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29}];
  }

  v8 = a3[1];
  v34 = *a3;
  v35 = v8;
  if (!FigCaptureAuditTokenIsValid(&v34))
  {
    v10 = 0;
    goto LABEL_21;
  }

  v9 = a3[1];
  v34 = *a3;
  v35 = v9;
  v10 = [FigCaptureProcessHandle handleForAuditToken:&v34 error:0];
  if (v10)
  {
LABEL_21:
    v16 = *(v4 + 16);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __97__BWCameraStreamingMonitor__informSystemStatusWithIsStreaming_clientAuditToken_mediaEnvironment___block_invoke;
    v25 = &unk_1E799B7B8;
    v26 = a4;
    v27 = v10;
    v17 = a3[1];
    v28 = *a3;
    v29 = v17;
    v18 = &v22;
    v19 = v16;
    return [v19 updateVolatileDataWithBlock:{v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29}];
  }

  OUTLINED_FUNCTION_18_27();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v12 = v37;
  if (!os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v36))
  {
    v12 &= ~1u;
  }

  if (v12)
  {
    v13 = a3[1];
    v34 = *a3;
    v35 = v13;
    v30 = 136315394;
    v31 = "[BWCameraStreamingMonitor _informSystemStatusWithIsStreaming:clientAuditToken:mediaEnvironment:]";
    v32 = 1024;
    PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v34);
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (void)_informMediaSafetyNetWithIsStreaming:(uint64_t)a1 clientAuditToken:(int)a2
{
  if (a1 && *(a1 + 32) == 1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_4_79();
    FigCaptureGetPIDFromAuditToken(v3);
    if (a2)
    {
      OUTLINED_FUNCTION_4_79();
      if (FigCaptureAuditTokenIsValid(v4))
      {
        OUTLINED_FUNCTION_4_79();
        v6 = FigCaptureCopyClientCodeSigningIdentifier(v5);
      }

      else
      {
        v6 = CFRetain(@"com.apple.camera");
      }

      v9 = v6;
      if (dword_1ED8443D0)
      {
        OUTLINED_FUNCTION_18_27();
        v10 = OUTLINED_FUNCTION_14_36();
        v11 = os_log_type_enabled(v10, v15);
        if (OUTLINED_FUNCTION_12(v11))
        {
          OUTLINED_FUNCTION_6_72();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_2_102();
          OUTLINED_FUNCTION_141();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      MSNMonitorSetCameraState();
      OUTLINED_FUNCTION_4_79();
      if (FigCaptureClientIsRunningInXCTest(v12))
      {
        MSNMonitorSetXCTestExceptionState();
        if (!v9)
        {
          return;
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_4_79();
      if (FigCaptureClientIsNonStandard(v13) && (OUTLINED_FUNCTION_4_79(), !FigCaptureClientIsAVConferenced(v14)))
      {
        CFStringGetCStringPtr(v9, 0x600u);
      }

      else
      {
        MSNMonitorSetXCTestExceptionState();
      }

      MSNMonitorSetCameraNonStandardCameraClient();
      if (v9)
      {
LABEL_23:
        CFStringGetCStringPtr(v9, 0x600u);
        MSNMonitorSetLastCameraClient();
        CFRelease(v9);
      }
    }

    else
    {
      if (dword_1ED8443D0)
      {
        OUTLINED_FUNCTION_18_27();
        v7 = OUTLINED_FUNCTION_14_36();
        if (os_log_type_enabled(v7, v15))
        {
          v8 = v16;
        }

        else
        {
          v8 = v16 & 0xFFFFFFFE;
        }

        if (v8)
        {
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_2_102();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MSNMonitorSetCameraState();
      MSNMonitorSetXCTestExceptionState();
      MSNMonitorSetCameraNonStandardCameraClient();
    }
  }
}

- (void)_informPrivacyAccountingWithIsStreaming:(uint64_t)a3 clientInfo:(__int128 *)a4 clientAuditToken:(uint64_t)a5 tccIdentity:
{
  if (a1)
  {
    v11 = a4[1];
    v40 = *a4;
    v41 = v11;
    FigCaptureGetPIDFromAuditToken(&v40);
    if (a2)
    {
      if (!a3)
      {
        goto LABEL_13;
      }

      v12 = *(a3 + 24);
      if (v12)
      {
        [v12 end];
        objc_setProperty_nonatomic(a3, v13, 0, 24);
      }

      v14 = *(a3 + 16);
      if (v14)
      {
        [v14 auditToken];
        if (FigCaptureClientIsRunningInMediaserverd(&v40))
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_13:
        v40 = 0u;
        v41 = 0u;
        if (FigCaptureClientIsRunningInMediaserverd(&v40))
        {
          goto LABEL_26;
        }

        if (!a3)
        {
          goto LABEL_24;
        }
      }

      v17 = *(a3 + 16);
      if (v17)
      {
        [v17 auditToken];
        goto LABEL_25;
      }

LABEL_24:
      v40 = 0u;
      v41 = 0u;
LABEL_25:
      if (!FigCaptureClientIsAVConferenced(&v40))
      {
        if (!a5)
        {
          v32 = a4[1];
          v40 = *a4;
          v41 = v32;
          if (!FigCaptureAuditTokenIsValid(&v40))
          {
            PATCCAccessClass = getPATCCAccessClass();
            v28 = [PATCCAccessClass accessWithAccessor:objc_msgSend(objc_alloc(getPAApplicationClass()) forService:{"initWithBundleID:", 0x1F216ED50), *MEMORY[0x1E69D5520]}];
            if (dword_1ED8443D0)
            {
              v36 = OUTLINED_FUNCTION_7_63();
              if (OUTLINED_FUNCTION_8_4(v36))
              {
                v37 = v5;
              }

              else
              {
                v37 = v5 & 0xFFFFFFFE;
              }

              if (v37)
              {
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_5();
                OUTLINED_FUNCTION_2_102();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_33;
          }

          if (dword_1ED8443D0)
          {
            OUTLINED_FUNCTION_112();
            v33 = OUTLINED_FUNCTION_77();
            v34 = OUTLINED_FUNCTION_15_1(v33);
            if (OUTLINED_FUNCTION_12(v34))
            {
              OUTLINED_FUNCTION_6_72();
              OUTLINED_FUNCTION_5();
              OUTLINED_FUNCTION_2_102();
              OUTLINED_FUNCTION_141();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_39_0();
          }

          v38 = getPATCCAccessClass();
          if (a3 && (v39 = *(a3 + 16)) != 0)
          {
            [v39 auditToken];
          }

          else
          {
            v40 = 0u;
            v41 = 0u;
          }

          v27 = [v38 accessWithAuditToken:&v40 forService:*MEMORY[0x1E69D5520]];
LABEL_32:
          v28 = v27;
LABEL_33:
          v29 = [*(a1 + 56) beginIntervalForAccess:v28];
          if (!a3)
          {
            return;
          }

          v22 = v29;
          v21 = a3;
          goto LABEL_35;
        }

        tcc_identity_get_identifier();
        [OUTLINED_FUNCTION_8() stringWithUTF8String:?];
        if (dword_1ED8443D0)
        {
          v30 = OUTLINED_FUNCTION_7_63();
          if (OUTLINED_FUNCTION_8_4(v30))
          {
            v31 = v5;
          }

          else
          {
            v31 = v5 & 0xFFFFFFFE;
          }

          if (v31)
          {
            OUTLINED_FUNCTION_78();
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_2_102();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v25 = getPATCCAccessClass();
        v26 = [objc_alloc(getPAApplicationClass()) initWithTCCIdentity:a5];
LABEL_31:
        v27 = [v25 accessWithAccessor:v26 forService:*MEMORY[0x1E69D5520]];
        goto LABEL_32;
      }

LABEL_26:
      if (dword_1ED8443D0)
      {
        OUTLINED_FUNCTION_112();
        v23 = OUTLINED_FUNCTION_77();
        v24 = OUTLINED_FUNCTION_15_1(v23);
        if (OUTLINED_FUNCTION_12(v24))
        {
          OUTLINED_FUNCTION_6_72();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_2_102();
          OUTLINED_FUNCTION_141();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      v25 = getPATCCAccessClass();
      v26 = [getPAApplicationClass() applicationWithType:0 identifier:0x1F2185490];
      goto LABEL_31;
    }

    if (a5)
    {
      [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
      if (dword_1ED8443D0)
      {
        OUTLINED_FUNCTION_112();
        v15 = OUTLINED_FUNCTION_77();
        v16 = os_log_type_enabled(v15, v42);
        if (OUTLINED_FUNCTION_5_24(v16))
        {
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_2_102();
LABEL_20:
          _os_log_send_and_compose_impl();
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

    else if (dword_1ED8443D0)
    {
      OUTLINED_FUNCTION_112();
      v18 = OUTLINED_FUNCTION_77();
      v19 = os_log_type_enabled(v18, v42);
      if (OUTLINED_FUNCTION_5_24(v19))
      {
        OUTLINED_FUNCTION_6_72();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_2_102();
        goto LABEL_20;
      }

LABEL_21:
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!a3)
    {
      [0 end];
      return;
    }

    [*(a3 + 24) end];
    v21 = a3;
    v22 = 0;
LABEL_35:
    objc_setProperty_nonatomic(v21, v20, v22, 24);
  }
}

- (uint64_t)_updateCameraStreamingMonitorInfoWithStreaming:(char)a3 cameraAccessGranted:(uint64_t)a4 clientAuditToken:(uint64_t)a5 tccIdentity:(int)a6 updateStreamingStatus:(int)a7 updateAccessStatus:
{
  if (!result)
  {
    return result;
  }

  v12 = result;
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v28 = 0;
  OUTLINED_FUNCTION_20_23();
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v13);
  OUTLINED_FUNCTION_20_23();
  PIDVersionFromAuditToken = FigCaptureGetPIDVersionFromAuditToken(v15);
  v17 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E69C75E0] error:{"identifierWithPid:", PIDFromAuditToken), &v28}];
  if (a5)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
    result = [*(v12 + 48) objectForKeyedSubscript:v18];
    v19 = result;
    if (!result)
    {
      v19 = [[BWCameraStreamingMonitorClientInfo alloc] initWithProcessHandle:v17];
      [*(v12 + 48) setObject:v19 forKeyedSubscript:v18];
      if (v19)
      {
        v20 = v19[2];
      }

      else
      {
        v20 = 0;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke;
      v26[3] = &unk_1E799B800;
      v26[4] = v12;
      v21 = v26;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v22 = [*(v12 + 40) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}];
  if (!v22)
  {
    v19 = [[BWCameraStreamingMonitorClientInfo alloc] initWithProcessHandle:v17];
    [*(v12 + 40) setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}];
    if (v19)
    {
      v20 = v19[2];
    }

    else
    {
      v20 = 0;
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __165__BWCameraStreamingMonitor__updateCameraStreamingMonitorInfoWithStreaming_cameraAccessGranted_clientAuditToken_tccIdentity_updateStreamingStatus_updateAccessStatus___block_invoke_3;
    v25[3] = &unk_1E799B800;
    v25[4] = v12;
    v21 = v25;
LABEL_25:
    result = [v20 monitorForDeath:v21];
    if (!a6)
    {
LABEL_18:
      if (a7)
      {
        if (v19)
        {
          *(v19 + 9) = a3;
        }
      }

      return result;
    }

LABEL_16:
    if (!v19)
    {
      return result;
    }

    *(v19 + 8) = a2;
    goto LABEL_18;
  }

  v19 = v22;
  OUTLINED_FUNCTION_20_23();
  result = FigCaptureAuditTokenIsValid(v23);
  if (!result)
  {
    goto LABEL_15;
  }

  v24 = v19[2];
  if (v24)
  {
    [v24 auditToken];
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  result = FigCaptureGetPIDVersionFromAuditToken(v27);
  if (PIDVersionFromAuditToken == result)
  {
LABEL_15:
    if (!a6)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  return result;
}

- (void)_updateClientInfoFromSetStreaming:(_OWORD *)a3 clientAuditToken:(uint64_t)a4 tccIdentity:
{
  if (a1)
  {
    if (!OUTLINED_FUNCTION_30_12())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v8 = a3[1];
    v19[0] = *a3;
    v19[1] = v8;
    PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v19);
    if (a4)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
      v11 = *(v4 + 48);
    }

    else
    {
      v12 = *(v4 + 40);
      v10 = [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
      v11 = v12;
    }

    v13 = [v11 objectForKeyedSubscript:v10];
    if (v13)
    {
      if ((*(v13 + 8) & 1) == 0 && *(v13 + 9) & 1 | (PIDFromAuditToken == -1) && a2)
      {
        if (a4)
        {
          tcc_identity_get_identifier();
          v14 = [OUTLINED_FUNCTION_8() stringWithUTF8String:?];
          if (![*(v4 + 48) objectForKeyedSubscript:v14])
          {
            return;
          }

          OUTLINED_FUNCTION_26_20();
          if (!v15)
          {
            return;
          }

          v16 = *(v4 + 48);
          v17 = v14;
LABEL_20:
          [v16 removeObjectForKey:v17];
          return;
        }

        if ([*(v4 + 40) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}])
        {
          OUTLINED_FUNCTION_26_20();
          if (v15)
          {
            v18 = *(v4 + 40);
            v17 = [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
            v16 = v18;
            goto LABEL_20;
          }
        }
      }
    }
  }
}

- (void)_updateSpeakerInterferenceMitigationRequirementIfNeededWithIsStreaming:(uint64_t)a1 deviceType:(unsigned int)a2 streamUniqueID:(int)a3 clientAuditToken:(void *)a4
{
  if (a1)
  {
    if (FigCaptureSpeakerInterferenceMitigationIsSupported())
    {
      v7 = [a4 isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:1"];
      if ((a3 - 21) <= 0xFFFFFFFB)
      {
        if (v7)
        {

          FigCaptureSpeakerSetInterferenceMitigationIsRequired(a2, 0);
        }
      }
    }
  }
}

- (void)_updateMicrophoneInterferenceMitigationRequirementIfNeededWithIsStreaming:(uint64_t)a1 deviceType:(unsigned int)a2 maxFrameRate:(float)a3 streamUniqueID:(uint64_t)a4 clientAuditToken:(void *)a5
{
  if (a1 && FigCaptureMicrophoneInterferenceMitigationIsSupported() && [a5 isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:0"])
  {
    if (a3 >= 120.0)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    FigCaptureMicrophoneSetInterferenceMitigationIsRequired(v8, 0);
  }
}

- (uint64_t)_getClientInfoForTCCIdentity:(uint64_t)a3 clientPID:(int)a4 sessionIsPrewarming:
{
  if (!result)
  {
    return result;
  }

  if (!OUTLINED_FUNCTION_30_12())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_6:
    [MEMORY[0x1E696AD98] numberWithInt:a3];
    result = [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
    if (result || !a4)
    {
      return result;
    }

    v9 = *(v4 + 40);
    v8 = &unk_1F2246348;
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
  v9 = *(v4 + 48);
LABEL_9:

  return [v9 objectForKeyedSubscript:v8];
}

- (void)_updateActiveClientSessionsForSessionID:(uint64_t)a3 clientSession:(_OWORD *)a4 clientAuditToken:(uint64_t)a5 tccIdentity:(uint64_t)a6 mediaEnvironment:
{
  if (!a1)
  {
    return;
  }

  if (!OUTLINED_FUNCTION_30_12())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v10 = a4[1];
  v50[0] = *a4;
  v50[1] = v10;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v50);
  if (dword_1ED8443D0)
  {
    v52 = 0;
    v51 = OS_LOG_TYPE_DEFAULT;
    v11 = OUTLINED_FUNCTION_29_16();
    v12 = v52;
    if (os_log_type_enabled(v11, v51))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      if (a3)
      {
        v14 = *(a3 + 28);
        v15 = *(a3 + 29);
        v16 = *(a3 + 8);
        if (v16)
        {
          LODWORD(v16) = *(v16 + 9);
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
        LODWORD(v16) = 0;
      }

      v44 = 136315906;
      v45 = "[BWCameraStreamingMonitor _updateActiveClientSessionsForSessionID:clientSession:clientAuditToken:tccIdentity:mediaEnvironment:]";
      v46 = 1024;
      *v47 = v14;
      *&v47[4] = 1024;
      *&v47[6] = v15;
      v48 = 1024;
      v49 = v16;
      LODWORD(v41) = 30;
      v40 = &v44;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a3 || *(a3 + 28) != 1)
  {
LABEL_24:
    if (![OUTLINED_FUNCTION_23_21() containsObject:?])
    {
      goto LABEL_27;
    }

    v19 = a3;
    [OUTLINED_FUNCTION_23_21() removeObject:?];
    if ([*(v6 + 72) count])
    {
      goto LABEL_26;
    }

    v24 = OUTLINED_FUNCTION_5_73();
    [(BWCameraStreamingMonitor *)v24 _informSystemStatusWithIsStreaming:v25 clientAuditToken:a6 mediaEnvironment:?];
    v26 = OUTLINED_FUNCTION_22_22();
    [(BWCameraStreamingMonitor *)v26 _informPrivacyAccountingWithIsStreaming:v27 clientInfo:v28 clientAuditToken:a5 tccIdentity:?];
    v29 = OUTLINED_FUNCTION_5_73();
    [BWCameraStreamingMonitor _informMediaSafetyNetWithIsStreaming:v29 clientAuditToken:0];
    if (a5)
    {
      tcc_identity_get_identifier();
      v30 = [OUTLINED_FUNCTION_7() stringWithUTF8String:?];
      if (![*(v6 + 48) objectForKeyedSubscript:v30])
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_26_20();
      if (!v31)
      {
        goto LABEL_26;
      }

      v32 = *(v6 + 48);
      v33 = v30;
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
      if (![OUTLINED_FUNCTION_7() objectForKeyedSubscript:?])
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_26_20();
      if (!v31)
      {
        goto LABEL_26;
      }

      [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
      v32 = OUTLINED_FUNCTION_7();
    }

    [v32 removeObjectForKey:{v33, v40, v41}];
LABEL_26:

    goto LABEL_27;
  }

  if (*(a3 + 29) == 1)
  {
    v17 = *(a3 + 8);
    if (v17)
    {
      if (*(v17 + 9) == 1)
      {
        if (![OUTLINED_FUNCTION_23_21() containsObject:?])
        {
          [OUTLINED_FUNCTION_23_21() addObject:?];
          v34 = OUTLINED_FUNCTION_5_73();
          [(BWCameraStreamingMonitor *)v34 _informSystemStatusWithIsStreaming:v35 clientAuditToken:a6 mediaEnvironment:?];
          v36 = OUTLINED_FUNCTION_22_22();
          [(BWCameraStreamingMonitor *)v36 _informPrivacyAccountingWithIsStreaming:v37 clientInfo:v38 clientAuditToken:a5 tccIdentity:?];
          v39 = OUTLINED_FUNCTION_5_73();
          [BWCameraStreamingMonitor _informMediaSafetyNetWithIsStreaming:v39 clientAuditToken:1];
          goto LABEL_27;
        }

        if ((*(a3 + 28) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }
  }

  if (*(a3 + 29) != 1)
  {
    goto LABEL_24;
  }

  v18 = *(a3 + 8);
  if (!v18 || (*(v18 + 9) & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  if (dword_1ED8443D0)
  {
    v52 = 0;
    v51 = OS_LOG_TYPE_DEFAULT;
    v20 = OUTLINED_FUNCTION_29_16();
    v21 = v52;
    if (os_log_type_enabled(v20, v51))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v23 = [*(v6 + 72) componentsJoinedByString:{@", "}];
      v44 = 136315394;
      v45 = "[BWCameraStreamingMonitor _updateActiveClientSessionsForSessionID:clientSession:clientAuditToken:tccIdentity:mediaEnvironment:]";
      v46 = 2112;
      *v47 = v23;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t __144__BWCameraStreamingMonitor_setStreaming_deviceType_maxFrameRate_streamUniqueID_clientAuditToken_tccIdentity_mediaEnvironment_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v34 = *(a1 + 64);
  v35 = v2;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v34);
  [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
  v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  if (dword_1ED8443D0)
  {
    v5 = OUTLINED_FUNCTION_7_63();
    v6 = OUTLINED_FUNCTION_15_1(v5);
    if (OUTLINED_FUNCTION_12(v6))
    {
      *v33 = 136315906;
      *&v33[4] = "[BWCameraStreamingMonitor setStreaming:deviceType:maxFrameRate:streamUniqueID:clientAuditToken:tccIdentity:mediaEnvironment:completionHandler:]_block_invoke";
      *&v33[12] = 1024;
      *&v33[14] = *(a1 + 104);
      *&v33[18] = 2112;
      *&v33[20] = *(a1 + 40);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0();
  }

  [BWCameraStreamingMonitor _updateSpeakerInterferenceMitigationRequirementIfNeededWithIsStreaming:*(a1 + 104) deviceType:*(a1 + 96) streamUniqueID:*(a1 + 40) clientAuditToken:?];
  [BWCameraStreamingMonitor _updateMicrophoneInterferenceMitigationRequirementIfNeededWithIsStreaming:*(a1 + 104) deviceType:*(a1 + 100) maxFrameRate:v7 streamUniqueID:*(a1 + 40) clientAuditToken:?];
  if (*(a1 + 104) == 1)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DFA8] set];
      [*(*(a1 + 32) + 8) setObject:v4 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}];
    }

    v13 = [MEMORY[0x1E695DFD8] setWithSet:v4];
    [v4 addObject:*(a1 + 40)];
    if (![v13 count] && objc_msgSend(v4, "count"))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 104);
      v21 = *(a1 + 48);
      v22 = *(a1 + 80);
      v34 = *(a1 + 64);
      v35 = v22;
      OUTLINED_FUNCTION_27_16(v19, v20, v14, v15, v21, v16, v17, v18, v31, v32, *v33, *&v33[8], *&v33[16]);
LABEL_19:
      v28 = *(a1 + 32);
      v29 = *(a1 + 48);
      v30 = *(a1 + 80);
      v34 = *(a1 + 64);
      v35 = v30;
      [(BWCameraStreamingMonitor *)v28 _updateClientInfoFromSetStreaming:&v34 clientAuditToken:v29 tccIdentity:?];
    }
  }

  else
  {
    if (v4)
    {
      [v4 removeObject:*(a1 + 40)];
      if ([v4 count])
      {
        goto LABEL_13;
      }

      [MEMORY[0x1E696AD98] numberWithInt:PIDFromAuditToken];
      [OUTLINED_FUNCTION_8() removeObjectForKey:?];
      v24 = *(a1 + 104);
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 48);
    v27 = *(a1 + 80);
    v34 = *(a1 + 64);
    v35 = v27;
    OUTLINED_FUNCTION_27_16(v25, v24 & 1, v8, v9, v26, v10, v11, v12, v31, v32, *v33, *&v33[8], *&v33[16]);
    if (![*(*(a1 + 32) + 8) count])
    {
      goto LABEL_19;
    }
  }

LABEL_13:
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __119__BWCameraStreamingMonitor_setCameraAccess_deviceType_clientAuditToken_tccIdentity_mediaEnvironment_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v39 = *(a1 + 64);
  v40 = v2;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v39);
  if (dword_1ED8443D0)
  {
    OUTLINED_FUNCTION_18_27();
    v4 = OUTLINED_FUNCTION_14_36();
    v5 = os_log_type_enabled(v4, v41);
    if (OUTLINED_FUNCTION_5_24(v5))
    {
      v6 = *(a1 + 96);
      v33 = 136315650;
      v34 = "[BWCameraStreamingMonitor setCameraAccess:deviceType:clientAuditToken:tccIdentity:mediaEnvironment:completionHandler:]_block_invoke";
      v35 = 1024;
      v36 = v6;
      v37 = 1024;
      v38 = PIDFromAuditToken;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 80);
  v39 = *(a1 + 64);
  v40 = v10;
  [(BWCameraStreamingMonitor *)v8 _updateCameraStreamingMonitorInfoWithStreaming:v7 cameraAccessGranted:&v39 clientAuditToken:v9 tccIdentity:0 updateStreamingStatus:1 updateAccessStatus:?];
  if (*(a1 + 96) == 1)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 80);
    v39 = *(a1 + 64);
    v40 = v15;
    [(BWCameraStreamingMonitor *)v13 _updateClientInfoFromSetStreaming:&v39 clientAuditToken:v14 tccIdentity:?];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [*(*(a1 + 32) + 64) allValues];
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        v20 = 0;
        do
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * v20);
          if (v21)
          {
            if (*(v21 + 24) != PIDFromAuditToken)
            {
              goto LABEL_16;
            }

            v22 = *(v21 + 16);
            goto LABEL_19;
          }

          if (!PIDFromAuditToken)
          {
            v22 = 0;
LABEL_19:
            v23 = *(a1 + 32);
            v24 = *(a1 + 40);
            v25 = *(a1 + 48);
            v26 = *(a1 + 80);
            v39 = *(a1 + 64);
            v40 = v26;
            [(BWCameraStreamingMonitor *)v23 _updateActiveClientSessionsForSessionID:v22 clientSession:v21 clientAuditToken:&v39 tccIdentity:v24 mediaEnvironment:v25];
          }

LABEL_16:
          ++v20;
        }

        while (v18 != v20);
        v27 = [v16 countByEnumeratingWithState:&v29 objects:v28 count:16];
        v18 = v27;
      }

      while (v27);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, v11);
  }

  return result;
}

uint64_t __168__BWCameraStreamingMonitor_setSessionStateForSessionID_running_containsVideoSource_clientAuditToken_tccIdentity_mediaEnvironment_sessionIsPrewarming_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  v16 = *(a1 + 72);
  v17 = v2;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v16);
  v4 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v6 = v4;
    *(v4 + 28) = *(a1 + 105);
    *(v4 + 29) = *(a1 + 106);
  }

  else
  {
    v5 = [(BWCameraStreamingMonitor *)*(a1 + 32) _getClientInfoForTCCIdentity:PIDFromAuditToken clientPID:*(a1 + 104) sessionIsPrewarming:?];
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = [[BWCameraStreamingMonitorClientSession alloc] initWithClientInfo:v5 sessionID:*(a1 + 40) clientPID:PIDFromAuditToken running:*(a1 + 105) containsVideoSource:*(a1 + 106)];
    [*(*(a1 + 32) + 64) setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }

  if (dword_1ED8443D0)
  {
    OUTLINED_FUNCTION_18_27();
    v7 = OUTLINED_FUNCTION_14_36();
    v8 = v19;
    if (os_log_type_enabled(v7, v18))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      [*(*(a1 + 32) + 72) componentsJoinedByString:{@", "}];
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0();
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 88);
  v16 = *(a1 + 72);
  v17 = v14;
  [(BWCameraStreamingMonitor *)v10 _updateActiveClientSessionsForSessionID:v11 clientSession:v6 clientAuditToken:&v16 tccIdentity:v12 mediaEnvironment:v13];
  if ((*(a1 + 105) & 1) == 0)
  {
    [*(*(a1 + 32) + 64) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

LABEL_14:
  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end