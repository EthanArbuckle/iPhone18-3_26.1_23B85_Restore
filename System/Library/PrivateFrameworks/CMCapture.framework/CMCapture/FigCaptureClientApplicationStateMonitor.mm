@interface FigCaptureClientApplicationStateMonitor
+ (uint64_t)_applicationStateForBKSApplicationState:(int)a3 clientType:(int)a4 backgroundCameraAccess:;
+ (uint64_t)_applicationStateForClientLayoutState:(unsigned int)a3 clientType:(int)a4 backgroundCameraAccess:;
+ (void)initialize;
+ (void)startContinuityCaptureTerminationMonitorWithHandler:(id)a3;
+ (void)startPrewarmingMonitorWithHandler:(id)a3;
+ (void)stopPrewarmingMonitor;
- (FigCaptureClientApplicationStateMonitor)initWithClientAuditToken:(id *)a3 mediaEnvironment:(id)a4 forThirdPartyTorch:(BOOL)a5 applicationAndLayoutStateHandler:(id)a6;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)mediaEnvironment;
- (OS_tcc_identity)mediaEnvironmentTCCIdentity;
- (char)_initWithClient:(void *)a1;
- (uint64_t)_createAndObserveAVAudioSessionForBKSApplicationStateMonitoring;
- (uint64_t)_createAndObserveCMSessionForBKSApplicationStateMonitoring;
- (uint64_t)_resolveAggregateLayoutState;
- (uint64_t)_resolveApplicationIDForLayoutMonitoring;
- (uint64_t)_resolveApplicationState;
- (uint64_t)_updateBKSApplicationStateFromAVAudioSession;
- (uint64_t)_updateBKSApplicationStateFromCMSession;
- (uint64_t)loggingPrefix;
- (void)_deregisterAndReleaseAVAudioSession;
- (void)_deregisterAndReleaseCMSession;
- (void)_handleAVAudioSessionApplicationStateDidChangeNotification:(uint64_t)a1;
- (void)_handleAVAudioSessionMediaServicesWereResetNotification:(uint64_t)a1;
- (void)_handleBKSApplicationStateChange:;
- (void)_handleCMSessionApplicationStateDidChangeNotification:(uint64_t)a1;
- (void)_handleLayout:(uint64_t)a1;
- (void)_handleMediaEndowmentUpdate:(uint64_t)a1;
- (void)_handleVisibilityEndowmentUpdate:(uint64_t)a1;
- (void)_updateClientStateCondition:(void *)a3 newValue:;
- (void)_updateMediaEnvironmentWithEndowmentInfos:(uint64_t)a3 evaluateLayout:(uint64_t)a4;
- (void)dealloc;
- (void)deviceLockStateMonitor:(id)a3 didUpdateDeviceLockState:(BOOL)a4;
- (void)invalidate;
- (void)layoutMonitor:(id)a3 didUpdateLayout:(id)a4;
@end

@implementation FigCaptureClientApplicationStateMonitor

- (uint64_t)_resolveApplicationIDForLayoutMonitoring
{
  if (!a1)
  {
    return 0;
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  if ([*(a1 + 8) isSwiftPlaygroundsDevelopmentApp])
  {
    return 0x1F21854D0;
  }

  if (![*(a1 + 8) mediaEnvironment])
  {
    v7 = *(a1 + 8);
    if (*(a1 + 64) == 1)
    {
      v8 = [objc_msgSend(objc_msgSend(v7 "processHandle")];
    }

    else
    {
      v9 = [v7 clientType];
      v10 = *(a1 + 8);
      if (v9 == 3 && (v11 = [v10 isSecureCaptureExtension], v10 = *(a1 + 8), (v11 & 1) == 0))
      {
        v8 = [v10 xpcServiceRootHostApplicationID];
      }

      else
      {
        v8 = [v10 applicationID];
      }
    }

    v4 = v8;
    v32 = 0;
    if (FigCaptureAudiomxdSupportEnabled())
    {
      if ((*(a1 + 80) & 1) == 0)
      {
        goto LABEL_30;
      }

      v12 = [*(a1 + 24) getMXSessionProperty:*MEMORY[0x1E69B0190] error:&v32];
      if (v32)
      {
        OUTLINED_FUNCTION_24_10();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v30);
        OUTLINED_FUNCTION_4_0();
        if (v1)
        {
          [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_5_1();
        }

        goto LABEL_55;
      }

      v13 = [v12 intValue];
      if (!v13)
      {
LABEL_30:
        if ([*(a1 + 8) applicationIDToInheritAppStateFrom])
        {
          if (dword_1ED844110)
          {
            OUTLINED_FUNCTION_24_10();
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v18, v30);
            OUTLINED_FUNCTION_115_0();
            if (v20)
            {
              v21 = v19;
            }

            else
            {
              v21 = v31;
            }

            if (v21)
            {
              [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
              OUTLINED_FUNCTION_9_3();
              OUTLINED_FUNCTION_4_4();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_13_0();
          }

          [*(a1 + 8) setApplicationIDToInheritAppStateFrom:0];
          [*(a1 + 8) setPidToInheritAppStateFrom:0];
        }

        return v4;
      }
    }

    else
    {
      if ((*(a1 + 80) & 1) == 0)
      {
        goto LABEL_30;
      }

      v31 = 0;
      if (CMSessionCopyProperty())
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_30();
        if (v2)
        {
          v15 = MEMORY[0x1E696AEC0];
          [*(a1 + 8) pid];
          OUTLINED_FUNCTION_67_2();
          OUTLINED_FUNCTION_55_5();
          [v15 stringWithFormat:@"<%p[%d][%@]>"];
          OUTLINED_FUNCTION_53_6();
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_141();
        }

        goto LABEL_55;
      }

      v13 = [0 intValue];

      if (!v13)
      {
        goto LABEL_30;
      }
    }

    if (v13 == [*(a1 + 8) pidToInheritAppStateFrom])
    {
LABEL_40:
      if (dword_1ED844110)
      {
        OUTLINED_FUNCTION_24_10();
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v22, v30);
        OUTLINED_FUNCTION_115_0();
        if (v20)
        {
          v24 = v23;
        }

        else
        {
          v24 = v31;
        }

        if (v24)
        {
          [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
          [*(a1 + 8) applicationIDToInheritAppStateFrom];
          [*(a1 + 8) pidToInheritAppStateFrom];
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_18_13();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0();
      }

      v25 = [objc_msgSend(*(a1 + 8) "applicationIDToInheritAppStateFrom")];
      v26 = *(a1 + 8);
      if (v25)
      {
        return [v26 applicationID];
      }

      else
      {
        return [v26 applicationIDToInheritAppStateFrom];
      }
    }

    v16 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", v13), &v32}];
    if (!v32)
    {
      v17 = v16;
      while ([v16 hostProcess])
      {
        v16 = [v17 hostProcess];
        v17 = v16;
      }

      [*(a1 + 8) setPidToInheritAppStateFrom:{objc_msgSend(v17, "pid")}];
      [*(a1 + 8) setApplicationIDToInheritAppStateFrom:{objc_msgSend(objc_msgSend(v17, "bundle"), "identifier")}];
      goto LABEL_40;
    }

    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_30();
    if (v2)
    {
      [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_141();
    }

LABEL_55:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v4;
  }

  v6 = *(a1 + 8);

  return [v6 mediaEnvironmentBundleID];
}

- (uint64_t)loggingPrefix
{
  if (result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%d][%@]>", result, objc_msgSend(*(result + 8), "pid"), objc_msgSend(*(result + 8), "applicationID")];
  }

  return result;
}

- (uint64_t)_resolveAggregateLayoutState
{
  if (result)
  {
    v1 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    v2 = v1[25];
    if (v2 == 6)
    {
      return 6;
    }

    v3 = v1[27];
    if (v3 == 6)
    {
      return 6;
    }

    v4 = v1[29];
    if (v4 == 6)
    {
      return 6;
    }

    else if (v2 == 5 || v3 == 5 || v4 == 5)
    {
      return 5;
    }

    else if (v2 == 4 || v3 == 4 || v4 == 4)
    {
      return 4;
    }

    else if (v2 == 3 || v3 == 3 || v4 == 3)
    {
      return 3;
    }

    else if (v2 == 2 || v3 == 2 || v4 == 2)
    {
      if (v4 == 1)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      if (v2 == 1 || v3 == 1)
      {
        return 3;
      }

      else
      {
        return v13;
      }
    }

    else
    {
      return v3 == 1 && v4 == 1 && v2 == 1;
    }
  }

  return result;
}

- (uint64_t)_resolveApplicationState
{
  if (!a1)
  {
    return 0;
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(a1 + 80) == 1)
  {
    v2 = +[FigCaptureClientApplicationStateMonitor _applicationStateForBKSApplicationState:clientType:backgroundCameraAccess:](FigCaptureClientApplicationStateMonitor, *(a1 + 84), [*(a1 + 8) clientType], objc_msgSend(*(a1 + 8), "hasBackgroundCameraAccess"));
  }

  else
  {
    v2 = 2;
  }

  if ((*(a1 + 96) & 1) == 0 && (*(a1 + 105) & 1) == 0)
  {
    OUTLINED_FUNCTION_56_6();
    v7 = v7 && v2 == 2;
    if (!v7)
    {
LABEL_22:
      if (*(a1 + 152) == 1 && v2 == 2)
      {
        if (*(a1 + 153))
        {
          v2 = 1;
        }

        else
        {
          v2 = 2;
        }
      }

      goto LABEL_9;
    }

LABEL_39:
    v12 = [(FigCaptureClientApplicationStateMonitor *)a1 _resolveAggregateLayoutState];
    v2 = +[FigCaptureClientApplicationStateMonitor _applicationStateForClientLayoutState:clientType:backgroundCameraAccess:](FigCaptureClientApplicationStateMonitor, v12, [*(a1 + 8) clientType], objc_msgSend(*(a1 + 8), "hasBackgroundCameraAccess"));
    goto LABEL_22;
  }

  if (v2 == 2)
  {
    goto LABEL_39;
  }

  v2 = 1;
LABEL_9:
  if ([*(a1 + 8) clientType] == 3)
  {
    FigSimpleMutexLock();
    v3 = [objc_msgSend(qword_1ED844F40 objectForKeyedSubscript:{objc_msgSend(*(a1 + 8), "xpcServiceRootHostApplicationID")), "referencedObject"}];
    v4 = v3;
    if (v2 == 2)
    {
      if (!v3 || (v5 = [*(v3 + 8) pid], v5 == objc_msgSend(*(a1 + 8), "pid")) || (objc_msgSend(objc_msgSend(*(v4 + 8), "applicationID"), "isEqualToString:", 0x1F21852F0) & 1) != 0 || (objc_msgSend(objc_msgSend(*(a1 + 8), "applicationID"), "isEqualToString:", 0x1F21852F0) & 1) != 0 || (objc_msgSend(objc_msgSend(*(a1 + 8), "applicationID"), "isEqualToString:", 0x1F21855B0) & 1) != 0)
      {
        if ([*(a1 + 8) xpcServiceRootHostApplicationID])
        {
          v6 = [[FigWeakReference alloc] initWithReferencedObject:a1];
          [qword_1ED844F40 setObject:v6 forKeyedSubscript:{objc_msgSend(*(a1 + 8), "xpcServiceRootHostApplicationID")}];
        }

        else if (dword_1ED844110)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_115_0();
          if (v7)
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          if (v11)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%d][%@]>", a1, objc_msgSend(*(a1 + 8), "pid"), objc_msgSend(*(a1 + 8), "applicationID")];
            [*(a1 + 8) applicationID];
            [*(a1 + 8) pid];
            OUTLINED_FUNCTION_27_7();
            OUTLINED_FUNCTION_2_1();
            OUTLINED_FUNCTION_18_13();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_13_0();
        }

        v2 = 2;
      }

      else
      {
        [*(a1 + 8) xpcServiceRootHostApplicationID];
        [*(a1 + 8) applicationID];
        [*(a1 + 8) pid];
        [*(v4 + 8) applicationID];
        [*(v4 + 8) pid];
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        v2 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (v3 == a1)
      {
        [qword_1ED844F40 setObject:0 forKeyedSubscript:{objc_msgSend(*(a1 + 8), "xpcServiceRootHostApplicationID")}];
      }

      v2 = 1;
    }

    FigSimpleMutexUnlock();
  }

  return v2;
}

- (uint64_t)_createAndObserveAVAudioSessionForBKSApplicationStateMonitoring
{
  if (result)
  {
    v1 = result;
    if (FigCaptureAudiomxdSupportEnabled())
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureClient-%d", objc_msgSend(*(v1 + 8), "pid")];
      v3 = objc_alloc(MEMORY[0x1E698D710]);
      v4 = *(v1 + 8);
      if (v4)
      {
        [v4 auditToken];
      }

      else
      {
        memset(v16, 0, 32);
      }

      v5 = [v3 initSiblingSession:0xFFFFFFFFLL auditToken:v16 clientIdentifier:v2 autoReconnect:1];
      *(v1 + 24) = v5;
      if (!v5)
      {
        FigDebugAssert3();
        return 4294954510;
      }

      [FigWeakReference weakReferenceToObject:v1];
      OUTLINED_FUNCTION_32_7();
      v7 = [v6 addObserverForType:2 name:? block:?];
      if (v7)
      {
        *(v1 + 40) = v7;
        OUTLINED_FUNCTION_33_1();
        v9 = [v8 addObserverForType:1 name:? block:?];
        if (v9)
        {
          *(v1 + 48) = v9;
          [(FigCaptureClientApplicationStateMonitor *)v1 _updateBKSApplicationStateFromAVAudioSession];
          return 0;
        }

        v14 = OUTLINED_FUNCTION_20_9();
        OUTLINED_FUNCTION_29_4(v14);
        OUTLINED_FUNCTION_28_6();
        if (!v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = OUTLINED_FUNCTION_20_9();
        OUTLINED_FUNCTION_29_4(v12);
        OUTLINED_FUNCTION_28_6();
        if (!v13)
        {
LABEL_18:
          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_17_8();
          return 4294954510;
        }
      }

      OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_5_43();
      OUTLINED_FUNCTION_18_13();
      OUTLINED_FUNCTION_54_1();
      goto LABEL_18;
    }

    v10 = OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_29_4(v10);
    OUTLINED_FUNCTION_28_6();
    if (v11)
    {
      OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_5_43();
      OUTLINED_FUNCTION_18_13();
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_17_8();
    return 4294954514;
  }

  return result;
}

- (uint64_t)_updateBKSApplicationStateFromAVAudioSession
{
  if (result)
  {
    v2 = result;
    if (FigCaptureAudiomxdSupportEnabled())
    {
      FigSimpleMutexLock();
      v29 = 0;
      v3 = [*(v2 + 24) getMXSessionProperty:*MEMORY[0x1E69AFCA0] error:&v29];
      if (v29)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_115_0();
        if (v6)
        {
          v7 = v5;
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%d][%@]>", v2, objc_msgSend(*(v2 + 8), "pid"), objc_msgSend(*(v2 + 8), "applicationID")];
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_18_13();
        }

        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_13_0();
      }

      else
      {
        [v3 intValue];
        [FigCaptureClientApplicationStateMonitor _handleBKSApplicationStateChange:];
      }

      return FigSimpleMutexUnlock();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_61_3(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, *v28, v28[4], v29);
      OUTLINED_FUNCTION_39_7();
      if (v6)
      {
        v17 = v16;
      }

      else
      {
        v17 = v1;
      }

      if (v17)
      {
        [(FigCaptureClientApplicationStateMonitor *)v2 loggingPrefix];
        OUTLINED_FUNCTION_4_42();
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_1_4();
      return OUTLINED_FUNCTION_17_8();
    }
  }

  return result;
}

void __106__FigCaptureClientApplicationStateMonitor__createAndObserveAVAudioSessionForBKSApplicationStateMonitoring__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) referencedObject];
  [FigCaptureClientApplicationStateMonitor _handleAVAudioSessionApplicationStateDidChangeNotification:v3];

  objc_autoreleasePoolPop(v2);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
  }

  if (initialize_sLayoutMonitorOnceToken != -1)
  {
    +[FigCaptureClientApplicationStateMonitor initialize];
  }
}

uint64_t __53__FigCaptureClientApplicationStateMonitor_initialize__block_invoke()
{
  qword_1ED844F40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = FigSimpleMutexCreate();
  qword_1ED844F48 = result;
  return result;
}

- (void)invalidate
{
  if (self->_stateChangeLock)
  {
    FigSimpleMutexLock();
    self->_invalid = 1;
    FigSimpleMutexUnlock();
  }

  if ([(FigCaptureClientApplicationStateMonitorClient *)self->_client xpcServiceRootHostApplicationID])
  {
    FigSimpleMutexLock();
    v3 = [objc_msgSend(qword_1ED844F40 objectForKeyedSubscript:{-[FigCaptureClientApplicationStateMonitorClient xpcServiceRootHostApplicationID](self->_client, "xpcServiceRootHostApplicationID")), "referencedObject"}];
    if (v3 == self || v3 == 0)
    {
      [qword_1ED844F40 setObject:0 forKeyedSubscript:{-[FigCaptureClientApplicationStateMonitorClient xpcServiceRootHostApplicationID](self->_client, "xpcServiceRootHostApplicationID")}];
    }

    FigSimpleMutexUnlock();
  }

  if (FigCaptureAudiomxdSupportEnabled())
  {
    [(FigCaptureClientApplicationStateMonitor *)&self->super.isa _deregisterAndReleaseAVAudioSession];
  }

  else
  {
    [(FigCaptureClientApplicationStateMonitor *)self _deregisterAndReleaseCMSession];
  }

  [(FigCaptureClientApplicationStateMonitorClient *)self->_client invalidate];
  [(RBSProcessMonitor *)self->_mediaEndowmentMonitor invalidate];

  self->_mediaEndowmentMonitor = 0;
  [(RBSProcessMonitor *)self->_visibilityEndowmentMonitor invalidate];

  self->_visibilityEndowmentMonitor = 0;
  [(FigCaptureDisplayLayoutMonitor *)self->_displayLayoutMonitor removeLayoutObserver:self];

  self->_displayLayoutMonitor = 0;
  [(FigCaptureDisplayLayoutMonitor *)self->_externalDisplayLayoutMonitor removeLayoutObserver:self];

  self->_externalDisplayLayoutMonitor = 0;
  [(FigCaptureDisplayLayoutMonitor *)self->_continuityDisplayLayoutMonitor removeLayoutObserver:self];

  self->_continuityDisplayLayoutMonitor = 0;
}

- (void)dealloc
{
  [(FigCaptureClientApplicationStateMonitor *)self invalidate];

  if (self->_stateChangeLock)
  {
    FigSimpleMutexDestroy();
    self->_stateChangeLock = 0;
  }

  v3.receiver = self;
  v3.super_class = FigCaptureClientApplicationStateMonitor;
  [(FigCaptureClientApplicationStateMonitor *)&v3 dealloc];
}

- (NSString)mediaEnvironment
{
  v2 = [(FigCaptureClientApplicationStateMonitorClient *)self->_client mediaEnvironment];

  return v2;
}

- (OS_tcc_identity)mediaEnvironmentTCCIdentity
{
  v2 = [(FigCaptureClientApplicationStateMonitorClient *)self->_client mediaEnvironmentTCCIdentity];

  return v2;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(FigCaptureClientApplicationStateMonitorClient *)self->_client debugDescription];
  applicationState = self->_applicationState;
  v6 = @"--- Undefined application state ---";
  if (applicationState == 2)
  {
    v6 = @"Foregrounded";
  }

  if (applicationState == 1)
  {
    v7 = @"Backgrounded";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 stringWithFormat:@"%@, state: %@", v4, v7];
  v9 = [MEMORY[0x1E695DF70] array];
  if (self->_isBKSApplicationStateMonitoringRequiredForClient)
  {
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"bksAppState: %@", FigCaptureBKSApplicationStateToString(self->_bksApplicationState))}];
  }

  if (self->_isLayoutMonitoringRequiredForClient || self->_isExternalDisplayLayoutMonitoringRequiredForClient)
  {
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"layout: %@", FigCaptureClientLayoutStateToString(self->_aggregateLayoutState))}];
  }

  if (self->_isDeviceLockStateMonitoringRequiredForClient)
  {
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"device locked: %d", self->_deviceIsLocked)}];
  }

  [v8 appendFormat:@" (%@)", objc_msgSend(v9, "componentsJoinedByString:", @", ")];
  v10 = MEMORY[0x1E696AEC0];

  return [v10 stringWithString:v8];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureClientApplicationStateMonitor debugDescription](self, "debugDescription")];
}

void __106__FigCaptureClientApplicationStateMonitor__createAndObserveAVAudioSessionForBKSApplicationStateMonitoring__block_invoke_320(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) referencedObject];
  [FigCaptureClientApplicationStateMonitor _handleAVAudioSessionMediaServicesWereResetNotification:v3];

  objc_autoreleasePoolPop(v2);
}

void __101__FigCaptureClientApplicationStateMonitor__createAndObserveCMSessionForBKSApplicationStateMonitoring__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) referencedObject];
  [FigCaptureClientApplicationStateMonitor _handleCMSessionApplicationStateDidChangeNotification:v3];

  objc_autoreleasePoolPop(v2);
}

+ (uint64_t)_applicationStateForBKSApplicationState:(int)a3 clientType:(int)a4 backgroundCameraAccess:
{
  objc_opt_self();
  result = 1;
  if (a2)
  {
    if (a2 == 4)
    {
      if (a4)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else if (a2 == 8)
    {
      if ((a3 - 3) >= 5)
      {
        return 2;
      }

      else
      {
        return dword_1AD055358[a3 - 3];
      }
    }
  }

  else if (((a3 - 6) & 0xFFFFFFFD) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }

  return result;
}

+ (uint64_t)_applicationStateForClientLayoutState:(unsigned int)a3 clientType:(int)a4 backgroundCameraAccess:
{
  objc_opt_self();
  result = 1;
  if (a3 <= 8)
  {
    if (((1 << a3) & 0x2E) != 0)
    {
      v8 = a2 - 2;
      if (a2 - 2) < 5 && ((0x17u >> v8))
      {
        return dword_1AD05536C[v8];
      }

      else if (a4)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      if (a2 == 6)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      if (((1 << a3) & 0x140) != 0)
      {
        return v9;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)layoutMonitor:(id)a3 didUpdateLayout:(id)a4
{
  if (!self->_invalid)
  {
    [FigCaptureClientApplicationStateMonitor _handleLayout:?];
  }
}

+ (void)startPrewarmingMonitorWithHandler:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F216ED50, 0x1F2185310, 0}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__FigCaptureClientApplicationStateMonitor_startPrewarmingMonitorWithHandler___block_invoke;
  v5[3] = &unk_1E79970C0;
  v5[4] = v4;
  v5[5] = a3;
  v6 = 1;
  sPrewarmingProcessMonitor = [MEMORY[0x1E69C75F8] monitorWithConfiguration:v5];
}

uint64_t __77__FigCaptureClientApplicationStateMonitor_startPrewarmingMonitorWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v4 setValues:1];
  v9 = *MEMORY[0x1E699F9D0];
  [v4 setEndowmentNamespaces:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v9, 1)}];
  [a2 setStateDescriptor:v4];
  v8 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifiers:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(a1 + 32))}];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v8, 1)}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__FigCaptureClientApplicationStateMonitor_startPrewarmingMonitorWithHandler___block_invoke_2;
  v6[3] = &unk_1E7997098;
  v6[4] = *(a1 + 40);
  v7 = *(a1 + 48);
  return [a2 setUpdateHandler:v6];
}

void __77__FigCaptureClientApplicationStateMonitor_startPrewarmingMonitorWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  [objc_msgSend(a3 "bundle")];
  if ([objc_msgSend(a4 "state")] == 4)
  {
    v6 = [objc_msgSend(a4 "state")];
    if ([v6 containsObject:*MEMORY[0x1E699F9D0]])
    {
      if (*(a1 + 32) && *(a1 + 40) == 1)
      {
        v7 = objc_autoreleasePoolPush();
        (*(*(a1 + 32) + 16))();

        objc_autoreleasePoolPop(v7);
      }
    }
  }
}

+ (void)stopPrewarmingMonitor
{
  [sPrewarmingProcessMonitor invalidate];

  sPrewarmingProcessMonitor = 0;
}

+ (void)startContinuityCaptureTerminationMonitorWithHandler:(id)a3
{
  if (!sContinuityCaptureProcessTerminationMonitor)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __95__FigCaptureClientApplicationStateMonitor_startContinuityCaptureTerminationMonitorWithHandler___block_invoke;
    v3[3] = &unk_1E7997110;
    v3[4] = a3;
    sContinuityCaptureProcessTerminationMonitor = [MEMORY[0x1E69C75F8] monitorWithConfiguration:v3];
  }
}

uint64_t __95__FigCaptureClientApplicationStateMonitor_startContinuityCaptureTerminationMonitorWithHandler___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(MEMORY[0x1E69C7630] "descriptor")];
  [a2 setEvents:1];
  v6[0] = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:0x1F21855B0];
  v6[1] = [MEMORY[0x1E69C7610] predicateMatchingJobLabel:0x1F2185250];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v6, 2)}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__FigCaptureClientApplicationStateMonitor_startContinuityCaptureTerminationMonitorWithHandler___block_invoke_2;
  v5[3] = &unk_1E79970E8;
  v5[4] = *(a1 + 32);
  return [a2 setUpdateHandler:v5];
}

void __95__FigCaptureClientApplicationStateMonitor_startContinuityCaptureTerminationMonitorWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_msgSend(objc_msgSend(a4 "exitEvent")];
  if (dword_1ED844110)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 32))
  {
    v7 = objc_autoreleasePoolPush();
    (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
    objc_autoreleasePoolPop(v7);
  }
}

- (char)_initWithClient:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v37.receiver = a1;
  v37.super_class = FigCaptureClientApplicationStateMonitor;
  v4 = objc_msgSendSuper2(&v37, sel_init);
  if (v4)
  {
    *(v4 + 1) = a2;
    if (dword_1ED844110)
    {
      v36 = 0;
      v35 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_26_8(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_115_0();
      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = v2;
      }

      if (v8)
      {
        [*(v4 + 1) debugDescription];
        LODWORD(v32) = 136315394;
        OUTLINED_FUNCTION_5_43();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_48_7();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    *(v4 + 2) = FigSimpleMutexCreate();
    v9 = *(v4 + 1);
    if ([v9 clientType] == 5 || (objc_msgSend(objc_msgSend(v9, "applicationID"), "isEqualToString:", 0x1F2185170) & 1) != 0 || (objc_msgSend(objc_msgSend(v9, "applicationID"), "isEqualToString:", 0x1F21851F0) & 1) != 0)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v10 = [objc_msgSend(v9 "applicationID")] ^ 1;
    }

    v4[80] = v10;
    v4[96] = [*(v4 + 1) isForThirdPartyTorch] ^ 1;
    if ([*(v4 + 1) isForThirdPartyTorch])
    {
      v11 = 0;
    }

    else
    {
      v11 = MGGetBoolAnswer();
    }

    v4[105] = v11;
    v12 = *(v4 + 1);
    v13 = BWDeviceIsiPhone();
    v4[113] = ([v12 isForThirdPartyTorch] ^ 1) & v13;
    v14 = *(v4 + 1);
    if (v14)
    {
      [v14 auditToken];
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34[0] = v32;
    v34[1] = v33;
    v4[152] = FigCaptureClientIsFacemetricsd(v34);
    v15 = *(v4 + 1);
    if ([objc_msgSend(v15 "applicationID")] & 1) != 0 || (objc_msgSend(objc_msgSend(v15, "applicationID"), "isEqualToString:", @"com.apple.MailCompositionService") & 1) != 0 || (objc_msgSend(objc_msgSend(v15, "applicationID"), "isEqualToString:", @"com.apple.mobilenotes") & 1) != 0 || (objc_msgSend(objc_msgSend(v15, "applicationID"), "isEqualToString:", @"com.apple.PassbookUIService") & 1) != 0 || (objc_msgSend(objc_msgSend(v15, "applicationID"), "isEqualToString:", @"com.apple.Stickers.UserGenerated.MessagesExtension") & 1) != 0 || (objc_msgSend(objc_msgSend(v15, "applicationID"), "isEqualToString:", @"com.apple.Diagnostics"))
    {
      v16 = 1;
    }

    else
    {
      v16 = [objc_msgSend(v15 "applicationID")];
    }

    v4[64] = v16;
    *(v4 + 21) = 0;
    v4[88] = 0;
    *(v4 + 23) = 0;
    if ([*(v4 + 1) mediaEnvironment])
    {
      [*(v4 + 1) processHandle];
      OUTLINED_FUNCTION_32_7();
      *(v4 + 7) = [v23 rbsProcessMonitorForEndowmentNamespace:? serviceClass:? updateHandler:?];
      [objc_msgSend(MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", objc_msgSend(*(v4 + 1), "pid")), 0), "endowmentInfoForHandle"}];
      v24 = OUTLINED_FUNCTION_3_30();
      [(FigCaptureClientApplicationStateMonitor *)v24 _updateMediaEnvironmentWithEndowmentInfos:v25 evaluateLayout:0, v26, v27, v28, v29, v30];
    }

    OUTLINED_FUNCTION_57_5();
    if (v7)
    {
      if (FigCaptureAudiomxdSupportEnabled() ? [(FigCaptureClientApplicationStateMonitor *)v4 _createAndObserveAVAudioSessionForBKSApplicationStateMonitoring]: [(FigCaptureClientApplicationStateMonitor *)v4 _createAndObserveCMSessionForBKSApplicationStateMonitoring])
      {
        FigDebugAssert3();

        return 0;
      }
    }

    *(v4 + 31) = 0;
    *(v4 + 25) = 0;
    v4[104] = 0;
    if (v4[96] == 1)
    {
      v17 = +[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor];
      *(v4 + 16) = v17;
      [v17 addLayoutObserver:v4];
    }

    *(v4 + 27) = 0;
    v4[112] = 0;
    if (v4[105] == 1)
    {
      v18 = +[FigCaptureDisplayLayoutMonitor sharedExternalDisplayLayoutMonitor];
      *(v4 + 17) = v18;
      [v18 addLayoutObserver:v4];
    }

    *(v4 + 29) = 0;
    v4[120] = 0;
    OUTLINED_FUNCTION_56_6();
    if (v7)
    {
      v19 = +[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor];
      *(v4 + 18) = v19;
      [v19 addLayoutObserver:v4];
    }

    if (v4[64] == 1)
    {
      [*(v4 + 1) processHandle];
      OUTLINED_FUNCTION_33_1();
      *(v4 + 9) = [v20 rbsProcessMonitorForEndowmentNamespace:? serviceClass:? updateHandler:?];
    }

    *(v4 + 153) = 0;
    if (v4[152] == 1)
    {
      v21 = +[FigCaptureDeviceLockStateMonitor sharedDeviceLockStateMonitor];
      *(v4 + 20) = v21;
      [v21 addDeviceLockStateObserver:v4];
    }
  }

  return v4;
}

- (void)_handleMediaEndowmentUpdate:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    v3 = v2;
    v5 = v4;
    if (dword_1ED844110)
    {
      OUTLINED_FUNCTION_3_45();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_4_0();
      if (v1)
      {
        v7 = MEMORY[0x1E696AEC0];
        [*(v5 + 8) pid];
        OUTLINED_FUNCTION_63_4();
        OUTLINED_FUNCTION_51_6();
        [v7 stringWithFormat:@"<%p[%d][%@]>"];
        OUTLINED_FUNCTION_0_49();
        OUTLINED_FUNCTION_7_33();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    [objc_msgSend(v3 "state")];
    v8 = OUTLINED_FUNCTION_3_30();
    [(FigCaptureClientApplicationStateMonitor *)v8 _updateMediaEnvironmentWithEndowmentInfos:v9 evaluateLayout:1, v10, v11, v12, v13, v14];
    OUTLINED_FUNCTION_58_0();
  }
}

- (void)_updateMediaEnvironmentWithEndowmentInfos:(uint64_t)a3 evaluateLayout:(uint64_t)a4
{
  if (a1)
  {
    v9 = a3;
    v11 = a1;
    if (dword_1ED844110)
    {
      v12 = OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_58_8(v12);
      OUTLINED_FUNCTION_30();
      if (v8)
      {
        v13 = MEMORY[0x1E696AEC0];
        [*(v11 + 8) pid];
        OUTLINED_FUNCTION_67_2();
        OUTLINED_FUNCTION_55_5();
        [v13 stringWithFormat:@"<%p[%d][%@]>"];
        *v41 = 136315906;
        *&v41[4] = "[FigCaptureClientApplicationStateMonitor _updateMediaEnvironmentWithEndowmentInfos:evaluateLayout:]";
        OUTLINED_FUNCTION_27_7();
        *&v41[14] = v14;
        *&v41[22] = 2112;
        v45 = a2;
        LOWORD(v47) = 1024;
        *(&v47 + 2) = v9;
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_141();
      }

      OUTLINED_FUNCTION_2_4();
      a1 = OUTLINED_FUNCTION_56_0();
    }

    v15 = OUTLINED_FUNCTION_60_1(a1, a2, a3, a4, a5, a6, a7, a8, v33, v35, v37, v39, *v41, *&v41[8], *&v41[16], v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, 0);
    if (v15)
    {
      v16 = v15;
      v17 = v9;
      v18 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *(8 * i);
          isKindOfClass = [objc_msgSend(v8 "endowmentNamespace")];
          if (isKindOfClass)
          {
            isKindOfClass = [objc_msgSend(v8 "environment")];
            if (isKindOfClass)
            {
              v8 = [v8 endowment];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                v28 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B06F0]];
                goto LABEL_18;
              }
            }
          }
        }

        v16 = OUTLINED_FUNCTION_60_1(isKindOfClass, v21, v22, v23, v24, v25, v26, v27, v34, v36, v38, v40, v42, v43, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83);
        if (v16)
        {
          continue;
        }

        break;
      }

      v28 = 0;
LABEL_18:
      v9 = v17;
    }

    else
    {
      v28 = 0;
    }

    FigSimpleMutexLock();
    if ([*(v11 + 8) mediaEnvironmentBundleID] == v28 || (objc_msgSend(objc_msgSend(*(v11 + 8), "mediaEnvironmentBundleID"), "isEqualToString:", v28) & 1) != 0)
    {
      FigSimpleMutexUnlock();
    }

    else
    {
      if (dword_1ED844110)
      {
        v29 = OUTLINED_FUNCTION_46_6();
        OUTLINED_FUNCTION_58_8(v29);
        OUTLINED_FUNCTION_30();
        if (v8)
        {
          v30 = MEMORY[0x1E696AEC0];
          [*(v11 + 8) pid];
          OUTLINED_FUNCTION_67_2();
          OUTLINED_FUNCTION_55_5();
          [v30 stringWithFormat:@"<%p[%d][%@]>"];
          [*(v11 + 8) mediaEnvironmentBundleID];
          OUTLINED_FUNCTION_27_7();
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_141();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0();
      }

      [*(v11 + 8) setMediaEnvironmentBundleID:v28];
      if (v28)
      {
        [v28 UTF8String];
        v31 = tcc_identity_create();
        [*(v11 + 8) setMediaEnvironmentTCCIdentity:v31];
      }

      else
      {
        [*(v11 + 8) setMediaEnvironmentTCCIdentity:0];
      }

      FigSimpleMutexUnlock();
      if (v9)
      {
        [*(v11 + 128) currentLayout];
        v32 = OUTLINED_FUNCTION_3_30();
        [FigCaptureClientApplicationStateMonitor _handleLayout:v32];
      }
    }
  }
}

- (uint64_t)_createAndObserveCMSessionForBKSApplicationStateMonitoring
{
  if (!a1)
  {
    return 0;
  }

  if (FigCaptureAudiomxdSupportEnabled())
  {
    v15 = OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_29_4(v15);
    OUTLINED_FUNCTION_39_7();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = v1;
    }

    if (v18)
    {
      [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
      v29 = 136315394;
      OUTLINED_FUNCTION_5_43();
      OUTLINED_FUNCTION_9_14();
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_17_8();
    v13 = 4294954514;
    goto LABEL_28;
  }

  v4 = CMSessionCreate();
  if (v4)
  {
    v13 = v4;
    FigDebugAssert3();
    v36 = 0;
    v35 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_4_0();
    if (v2)
    {
      v29 = 136315650;
      v30 = "[FigCaptureClientApplicationStateMonitor _createAndObserveCMSessionForBKSApplicationStateMonitoring]";
      v31 = 2114;
      v32 = [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
      v33 = 1024;
      v34 = v13;
      OUTLINED_FUNCTION_5_1();
    }

    OUTLINED_FUNCTION_1_4();
    goto LABEL_27;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureClient-%d", objc_msgSend(*(a1 + 8), "pid")];
  v5 = CMSessionSetProperty();
  if (v5)
  {
    v13 = v5;
    v20 = OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_36_0(v20);
    OUTLINED_FUNCTION_22_9();
    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 8), "pid")}];
    v6 = CMSessionSetProperty();
    if (!v6)
    {
      memset(v28, 0, sizeof(v28));
      v7 = *(a1 + 8);
      if (v7)
      {
        [v7 auditToken];
      }

      [MEMORY[0x1E695DEF0] dataWithBytes:v28 length:32];
      v8 = CMSessionSetProperty();
      if (!v8)
      {
        v9 = [FigWeakReference weakReferenceToObject:a1];
        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        v11 = *MEMORY[0x1E69AFB00];
        v12 = *(a1 + 32);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __101__FigCaptureClientApplicationStateMonitor__createAndObserveCMSessionForBKSApplicationStateMonitoring__block_invoke;
        v27[3] = &unk_1E798FC90;
        v27[4] = v9;
        *(a1 + 40) = [v10 addObserverForName:v11 object:v12 queue:0 usingBlock:v27];
        [(FigCaptureClientApplicationStateMonitor *)a1 _updateBKSApplicationStateFromCMSession];
        return 0;
      }

      v13 = v8;
      v24 = OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_36_0(v24);
      OUTLINED_FUNCTION_22_9();
      if (!v25)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_65_3();
      v29 = 136315906;
      OUTLINED_FUNCTION_15_14();
      goto LABEL_31;
    }

    v13 = v6;
    v22 = OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_36_0(v22);
    OUTLINED_FUNCTION_22_9();
    if (v23)
    {
LABEL_22:
      OUTLINED_FUNCTION_65_3();
      v29 = 136315906;
      OUTLINED_FUNCTION_15_14();
LABEL_31:
      OUTLINED_FUNCTION_5_1();
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_1_4();
LABEL_27:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_28:
  v26 = *(a1 + 32);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 32) = 0;
  }

  return v13;
}

- (void)_handleVisibilityEndowmentUpdate:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    v3 = v2;
    if (dword_1ED844110)
    {
      OUTLINED_FUNCTION_3_45();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_4_0();
      if (v1)
      {
        v5 = MEMORY[0x1E696AEC0];
        [*(v3 + 8) pid];
        OUTLINED_FUNCTION_63_4();
        OUTLINED_FUNCTION_51_6();
        [v5 stringWithFormat:@"<%p[%d][%@]>"];
        OUTLINED_FUNCTION_0_49();
        OUTLINED_FUNCTION_7_33();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    if (*(v3 + 96) == 1)
    {
      [*(v3 + 128) currentLayout];
      v7 = OUTLINED_FUNCTION_3_30();
      [FigCaptureClientApplicationStateMonitor _handleLayout:v7];
    }

    if (*(v3 + 105) == 1)
    {
      [*(v3 + 136) currentLayout];
      v8 = OUTLINED_FUNCTION_3_30();
      [FigCaptureClientApplicationStateMonitor _handleLayout:v8];
    }

    OUTLINED_FUNCTION_56_6();
    if (v6)
    {
      [*(v3 + 144) currentLayout];
      v9 = OUTLINED_FUNCTION_3_30();
      [FigCaptureClientApplicationStateMonitor _handleLayout:v9];
    }

    OUTLINED_FUNCTION_58_0();
  }
}

- (FigCaptureClientApplicationStateMonitor)initWithClientAuditToken:(id *)a3 mediaEnvironment:(id)a4 forThirdPartyTorch:(BOOL)a5 applicationAndLayoutStateHandler:(id)a6
{
  v7 = a5;
  v11 = [FigCaptureClientApplicationStateMonitorClient alloc];
  v12 = *&a3->var0[4];
  v16[0] = *a3->var0;
  v16[1] = v12;
  v13 = [(FigCaptureClientApplicationStateMonitorClient *)v11 initWithAuditToken:v16 mediaEnvironment:a4 forThirdPartyTorch:v7 applicationAndLayoutStateHandler:a6];
  v14 = [(FigCaptureClientApplicationStateMonitor *)self _initWithClient:v13];

  return v14;
}

- (void)_deregisterAndReleaseAVAudioSession
{
  if (a1)
  {
    if (FigCaptureAudiomxdSupportEnabled())
    {
      if (a1[3])
      {
        OUTLINED_FUNCTION_57_5();
        if (v3)
        {
          [v2 removeObserverForType:2 observer:a1[5] name:*MEMORY[0x1E69AFB00]];

          a1[5] = 0;
          [a1[3] removeObserverForType:1 observer:a1[6] name:*MEMORY[0x1E698D5C0]];

          a1[6] = 0;
          v2 = a1[3];
        }

        a1[3] = 0;
      }
    }

    else
    {
      v4 = OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_8_5(v4);
      OUTLINED_FUNCTION_28_6();
      if (v5)
      {
        OUTLINED_FUNCTION_50_7();
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_18_13();
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_17_8();
    }
  }
}

- (void)_deregisterAndReleaseCMSession
{
  if (a1)
  {
    if (FigCaptureAudiomxdSupportEnabled())
    {
      v4 = OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_8_5(v4);
      OUTLINED_FUNCTION_28_6();
      if (v5)
      {
        OUTLINED_FUNCTION_50_7();
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_18_13();
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_17_8();
    }

    else if (*(a1 + 32))
    {
      OUTLINED_FUNCTION_57_5();
      if (!v3 || ([objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")], *(a1 + 40), *(a1 + 40) = 0, (v2 = *(a1 + 32)) != 0))
      {
        CFRelease(v2);
        *(a1 + 32) = 0;
      }
    }
  }
}

- (void)_handleAVAudioSessionApplicationStateDidChangeNotification:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    v3 = v2;
    v5 = v4;
    v6 = [v2 name];
    if ([v6 isEqualToString:*MEMORY[0x1E69AFB00]])
    {
      if (dword_1ED844110)
      {
        OUTLINED_FUNCTION_3_45();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
        OUTLINED_FUNCTION_4_0();
        if (v1)
        {
          v8 = MEMORY[0x1E696AEC0];
          [*(v5 + 8) pid];
          [*(v5 + 8) applicationID];
          [v8 stringWithFormat:@"<%p[%d][%@]>"];
          OUTLINED_FUNCTION_0_49();
          OUTLINED_FUNCTION_7_33();
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_34_8();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      v9 = [v3 userInfo];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69AFA50]];
      if (v10)
      {
        v11 = v10;
        FigSimpleMutexLock();
        if ((*(v5 + 168) & 1) == 0)
        {
          [v11 intValue];
          [FigCaptureClientApplicationStateMonitor _handleBKSApplicationStateChange:];
        }

        FigSimpleMutexUnlock();
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_6_37();
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_26_8(v14);
      OUTLINED_FUNCTION_22_9();
      if (!v15)
      {
LABEL_16:
        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_13_0();
LABEL_11:
        OUTLINED_FUNCTION_58_0();
        return;
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_37();
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_26_8(v12);
      OUTLINED_FUNCTION_22_9();
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_64_4();
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_48_7();
    goto LABEL_16;
  }
}

- (void)_handleAVAudioSessionMediaServicesWereResetNotification:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    v3 = v2;
    v5 = [v4 name];
    if ([v5 isEqualToString:*MEMORY[0x1E698D5C0]])
    {
      if (dword_1ED844110)
      {
        OUTLINED_FUNCTION_3_45();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
        OUTLINED_FUNCTION_4_0();
        if (v1)
        {
          v7 = MEMORY[0x1E696AEC0];
          [*(v3 + 8) pid];
          OUTLINED_FUNCTION_63_4();
          OUTLINED_FUNCTION_51_6();
          [v7 stringWithFormat:@"<%p[%d][%@]>"];
          OUTLINED_FUNCTION_0_49();
          OUTLINED_FUNCTION_7_33();
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_34_8();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      [(FigCaptureClientApplicationStateMonitor *)v3 _updateBKSApplicationStateFromAVAudioSession];
    }

    else
    {
      OUTLINED_FUNCTION_6_37();
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_26_8(v8);
      OUTLINED_FUNCTION_22_9();
      if (v9)
      {
        OUTLINED_FUNCTION_65_3();
        OUTLINED_FUNCTION_0_49();
        OUTLINED_FUNCTION_7_33();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_48_7();
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_13_0();
    }

    OUTLINED_FUNCTION_58_0();
  }
}

- (void)_handleCMSessionApplicationStateDidChangeNotification:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    v3 = v2;
    v5 = v4;
    v6 = [v2 name];
    if ([v6 isEqualToString:*MEMORY[0x1E69AFB00]])
    {
      if (dword_1ED844110)
      {
        OUTLINED_FUNCTION_3_45();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
        OUTLINED_FUNCTION_4_0();
        if (v1)
        {
          v8 = MEMORY[0x1E696AEC0];
          [*(v5 + 8) pid];
          [*(v5 + 8) applicationID];
          [v8 stringWithFormat:@"<%p[%d][%@]>"];
          [v3 name];
          OUTLINED_FUNCTION_27_7();
          OUTLINED_FUNCTION_7_33();
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_34_8();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      v9 = [v3 userInfo];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69AFA50]];
      if (v10)
      {
        v11 = v10;
        FigSimpleMutexLock();
        if ((*(v5 + 168) & 1) == 0)
        {
          [v11 intValue];
          [FigCaptureClientApplicationStateMonitor _handleBKSApplicationStateChange:];
        }

        FigSimpleMutexUnlock();
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_6_37();
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_26_8(v14);
      OUTLINED_FUNCTION_22_9();
      if (!v15)
      {
LABEL_16:
        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_13_0();
LABEL_11:
        OUTLINED_FUNCTION_58_0();
        return;
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_37();
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_26_8(v12);
      OUTLINED_FUNCTION_22_9();
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_64_4();
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_48_7();
    goto LABEL_16;
  }
}

- (uint64_t)_updateBKSApplicationStateFromCMSession
{
  if (result)
  {
    v3 = result;
    if (FigCaptureAudiomxdSupportEnabled())
    {
      v6 = OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_61_3(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, *v27, v27[4], v28);
      OUTLINED_FUNCTION_39_7();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = v1;
      }

      if (v16)
      {
        [(FigCaptureClientApplicationStateMonitor *)v3 loggingPrefix];
        OUTLINED_FUNCTION_4_42();
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_1_4();
      return OUTLINED_FUNCTION_17_8();
    }

    else
    {
      FigSimpleMutexLock();
      if (CMSessionCopyProperty())
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_4_0();
        if (v2)
        {
          v5 = MEMORY[0x1E696AEC0];
          [*(v3 + 8) pid];
          OUTLINED_FUNCTION_63_4();
          OUTLINED_FUNCTION_51_6();
          [v5 stringWithFormat:@"<%p[%d][%@]>"];
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_5_1();
        }

        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_39_0();
      }

      else
      {
        [0 intValue];
        [FigCaptureClientApplicationStateMonitor _handleBKSApplicationStateChange:];
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

- (void)_handleBKSApplicationStateChange:
{
  OUTLINED_FUNCTION_59_0();
  if (!v1)
  {
LABEL_6:
    OUTLINED_FUNCTION_58_0();
    return;
  }

  v3 = v2;
  v4 = v1;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(v4 + 80) != 1)
  {
    OUTLINED_FUNCTION_3_45();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_19_3(os_log_and_send_and_compose_flags_and_os_log_type);
    OUTLINED_FUNCTION_4_0();
    if (v0)
    {
      v6 = MEMORY[0x1E696AEC0];
      [*(v4 + 8) pid];
      [*(v4 + 8) applicationID];
      [v6 stringWithFormat:@"<%p[%d][%@]>"];
      OUTLINED_FUNCTION_4_42();
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_34_8();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_39_0();
    goto LABEL_6;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  OUTLINED_FUNCTION_58_0();

  [(FigCaptureClientApplicationStateMonitor *)v7 _updateClientStateCondition:v8 newValue:v9];
}

- (void)_updateClientStateCondition:(void *)a3 newValue:
{
  if (!a1 || (*(a1 + 168) & 1) != 0)
  {
    return;
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  if (a1 + 84 == a2)
  {
    [a3 unsignedIntValue];
    OUTLINED_FUNCTION_38_8();
    if ((!v10 || (*(a1 + 88) & 1) == 0) && dword_1ED844110)
    {
      v11 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v11);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
        v26 = OUTLINED_FUNCTION_106_0();
        FigCaptureBKSApplicationStateToString(v26);
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    *(a1 + 84) = a3;
    v12 = 88;
  }

  else if (a1 + 100 == a2)
  {
    [a3 intValue];
    OUTLINED_FUNCTION_38_8();
    if ((!v10 || (*(a1 + 104) & 1) == 0) && dword_1ED844110)
    {
      v13 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v13);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
        v27 = OUTLINED_FUNCTION_106_0();
        FigCaptureClientLayoutStateToString(v27);
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    *(a1 + 100) = a3;
    v12 = 104;
  }

  else if (a1 + 108 == a2)
  {
    [a3 intValue];
    OUTLINED_FUNCTION_38_8();
    if ((!v10 || (*(a1 + 112) & 1) == 0) && dword_1ED844110)
    {
      v14 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v14);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
        v28 = OUTLINED_FUNCTION_106_0();
        FigCaptureClientLayoutStateToString(v28);
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    *(a1 + 108) = a3;
    v12 = 112;
  }

  else if (a1 + 116 == a2)
  {
    [a3 intValue];
    OUTLINED_FUNCTION_38_8();
    if ((!v10 || (*(a1 + 120) & 1) == 0) && dword_1ED844110)
    {
      v15 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v15);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
        v29 = OUTLINED_FUNCTION_106_0();
        FigCaptureClientLayoutStateToString(v29);
        OUTLINED_FUNCTION_8_27();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    *(a1 + 116) = a3;
    v12 = 120;
  }

  else
  {
    v8 = (a1 + 153);
    if (a1 + 153 != a2)
    {
      OUTLINED_FUNCTION_3_45();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_60_2(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_30();
      if (v4)
      {
        [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_141();
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_56_0();
      return;
    }

    v16 = [a3 BOOLValue];
    if ((*v8 != v16 || (*(a1 + 154) & 1) == 0) && dword_1ED844110)
    {
      v17 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_19_3(v17);
      OUTLINED_FUNCTION_4_0();
      if (v3)
      {
        [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_34_8();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    *v8 = v16;
    v12 = 154;
  }

  *(a1 + v12) = 1;
  OUTLINED_FUNCTION_57_5();
  if ((!v10 || *(a1 + 88) == 1) && (*(a1 + 96) != 1 || *(a1 + 104) == 1) && (*(a1 + 105) != 1 || *(a1 + 112) == 1))
  {
    OUTLINED_FUNCTION_56_6();
    if ((!v10 || *(a1 + 120) == 1) && (*(a1 + 152) != 1 || *(a1 + 154) == 1))
    {
      v18 = [(FigCaptureClientApplicationStateMonitor *)a1 _resolveApplicationState];
      v19 = [(FigCaptureClientApplicationStateMonitor *)a1 _resolveAggregateLayoutState];
      v20 = *(a1 + 92);
      v21 = v20 == 2 && *(a1 + 124) != v19;
      if (v20 != v18 || v21)
      {
        *(a1 + 92) = v18;
        *(a1 + 124) = v19;
        if (dword_1ED844110)
        {
          OUTLINED_FUNCTION_6_37();
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v22, v30);
          OUTLINED_FUNCTION_115_0();
          if (v10)
          {
            v24 = v23;
          }

          else
          {
            v24 = v31;
          }

          if (v24)
          {
            [(FigCaptureClientApplicationStateMonitor *)a1 loggingPrefix];
            FigCaptureClientLayoutStateToString(*(a1 + 124));
            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_18_13();
            OUTLINED_FUNCTION_48_7();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_13_0();
        }

        v25 = [*(a1 + 8) applicationAndLayoutStateHandler];
        (*(v25 + 16))(v25, [*(a1 + 8) pid], *(a1 + 92), *(a1 + 124));
      }
    }
  }
}

- (void)_handleLayout:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = v3;
    if (*(v3 + 168))
    {
LABEL_3:
      OUTLINED_FUNCTION_58_0();
      return;
    }

    v5 = v2;
    FigSimpleMutexLock();
    v6 = [(FigCaptureClientApplicationStateMonitor *)v4 _resolveApplicationIDForLayoutMonitoring];
    if (dword_1ED844110)
    {
      v7 = OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_60_2(v7);
      OUTLINED_FUNCTION_30();
      if (v1)
      {
        v8 = MEMORY[0x1E696AEC0];
        [*(v4 + 8) pid];
        OUTLINED_FUNCTION_67_2();
        OUTLINED_FUNCTION_55_5();
        [v8 stringWithFormat:@"<%p[%d][%@]>"];
        FigCaptureDisplayTypeName([v5 displayType]);
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_141();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0();
    }

    if ([v5 isPaymentServiceVisible])
    {
      v9 = 6;
LABEL_29:
      v14 = [objc_msgSend(*(v4 + 8) "applicationID")];
      v15 = [v5 displayType];
      if (v15 <= 2)
      {
        if (((v9 == 3) & v14) != 0)
        {
          v16 = 2;
        }

        else
        {
          v16 = v9;
        }

        -[FigCaptureClientApplicationStateMonitor _updateClientStateCondition:newValue:](v4, v4 + 8 * v15 + 100, [MEMORY[0x1E696AD98] numberWithInt:v16]);
      }

      FigSimpleMutexUnlock();
      goto LABEL_3;
    }

    if ([*(v4 + 8) clientType] == 5)
    {
      v10 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(*(v4 + 8), "avconferenceClientApplicationIDs")}];
      v11 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(v5, "foregroundApps")}];
      [v11 intersectSet:v10];
      if ([v11 count])
      {
        if ([objc_msgSend(v5 "foregroundApps")] <= 1)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v13 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(v5, "pipApps")}];
        [v13 intersectSet:v10];
        v9 = 4 * ([v13 count] != 0);
      }

      goto LABEL_29;
    }

    if ([objc_msgSend(*(v4 + 8) "applicationID")])
    {
      if ([*(v4 + 128) isOnLockScreen] && !objc_msgSend(objc_msgSend(*(v4 + 8), "xpcServiceRootHostApplicationID"), "isEqualToString:", 0x1F21855F0))
      {
        v9 = 0;
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    if ([objc_msgSend(*(v4 + 8) "applicationID")])
    {
      v12 = [v5 isSiriVisible];
    }

    else
    {
      if (![objc_msgSend(*(v4 + 8) "applicationID")])
      {
        if (![objc_msgSend(v5 "foregroundApps")])
        {
          if ([objc_msgSend(v5 "obscuredApps")])
          {
            v9 = 5;
          }

          else if ([objc_msgSend(v5 "pipApps")])
          {
            v9 = 4;
          }

          else
          {
            v9 = [objc_msgSend(v5 "foregroundApps")] != 0;
          }

          goto LABEL_29;
        }

        if ([objc_msgSend(v5 "foregroundApps")] != 1)
        {
          if ([objc_msgSend(v5 "foregroundApps")] <= 1)
          {
            v9 = 0;
          }

          else
          {
            v9 = 3;
          }

          goto LABEL_29;
        }

LABEL_19:
        v9 = 2;
        goto LABEL_29;
      }

      v12 = [v5 isPaymentServiceIDVerifierVisible];
    }

    if (v12)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_29;
  }
}

- (void)deviceLockStateMonitor:(id)a3 didUpdateDeviceLockState:(BOOL)a4
{
  v4 = a4;
  FigSimpleMutexLock();
  -[FigCaptureClientApplicationStateMonitor _updateClientStateCondition:newValue:](self, &self->_deviceIsLocked, [MEMORY[0x1E696AD98] numberWithBool:v4]);

  FigSimpleMutexUnlock();
}

@end