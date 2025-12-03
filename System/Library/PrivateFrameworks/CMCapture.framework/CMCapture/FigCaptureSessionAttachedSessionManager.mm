@interface FigCaptureSessionAttachedSessionManager
+ (void)initialize;
- (FigCaptureSessionAttachedSessionManager)init;
- (uint64_t)_generateStateLog;
- (uint64_t)_stopAttachedSessionsAndRemoveHostSession:(uint64_t)result;
- (uint64_t)attachToRunningSession:(uint64_t)session;
- (void)_startNextSession;
- (void)sessionDidReconfigure:(uint64_t)reconfigure;
- (void)sessionDidStartRunning:(char)running sessionContainsVideoSource:(char)source sessionContainsCameraSource:;
- (void)sessionDidStopRunning:(char)running captureDeviceStolen:(char)stolen sessionIsEligibleToAttach:(char)attach clientStartedSession:;
- (void)sessionInvalidated:(uint64_t)invalidated;
@end

@implementation FigCaptureSessionAttachedSessionManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureSessionAttachedSessionManager)init
{
  v5.receiver = self;
  v5.super_class = FigCaptureSessionAttachedSessionManager;
  v2 = [(FigCaptureSessionAttachedSessionManager *)&v5 init];
  if (v2)
  {
    if (dword_1EB58E660)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v2->_queue = dispatch_queue_create("com.apple.coremedia.capturesessionattachedsessionmanager", 0);
    v2->_attachedSessions = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_detachingSessions = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_sessionsToStart = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_incompatibleSessions = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (uint64_t)_generateStateLog
{
  if (result)
  {
    if (dword_1EB58E660)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void __65__FigCaptureSessionAttachedSessionManager_sessionDidReconfigure___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  if (dword_1EB58E660)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ++*(*(a1 + 32) + 72);
  v4 = *(a1 + 32);
  if (*(a1 + 40) == *(v4 + 8))
  {
    __65__FigCaptureSessionAttachedSessionManager_sessionDidReconfigure___block_invoke_cold_1(v4, v2, v6);
    v4 = v6[0];
  }

  [(FigCaptureSessionAttachedSessionManager *)v4 _generateStateLog];
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }
}

void __62__FigCaptureSessionAttachedSessionManager_sessionInvalidated___block_invoke(uint64_t a1)
{
  [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  ++*(*(a1 + 32) + 72);
  if (dword_1EB58E660)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(*(a1 + 32) + 56) removeObject:{*(a1 + 40), v6, v7}];
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (v4 == *(a1 + 40))
  {
    if (v4)
    {
      CFRelease(*(v3 + 16));
      *(*(a1 + 32) + 16) = 0;
      v3 = *(a1 + 32);
    }

    [(FigCaptureSessionAttachedSessionManager *)v3 _startNextSession];
    v3 = *(a1 + 32);
  }

  [(FigCaptureSessionAttachedSessionManager *)v3 _generateStateLog];
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }
}

- (uint64_t)attachToRunningSession:(uint64_t)session
{
  if (session)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = *(session + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__FigCaptureSessionAttachedSessionManager_attachToRunningSession___block_invoke;
    block[3] = &unk_1E79973C8;
    block[5] = &v6;
    block[6] = a2;
    block[4] = session;
    dispatch_sync(v2, block);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t __66__FigCaptureSessionAttachedSessionManager_attachToRunningSession___block_invoke(uint64_t *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  if (!v3 && dword_1EB58E660)
  {
    v4 = OUTLINED_FUNCTION_6_42();
    v5 = OUTLINED_FUNCTION_96(v4);
    if (OUTLINED_FUNCTION_6(v5))
    {
      OUTLINED_FUNCTION_14_20();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_4_48();
      OUTLINED_FUNCTION_16_22();
    }

    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_17_8();
    v2 = a1[4];
    v3 = *(v2 + 8);
  }

  if (v3)
  {
    [(FigCaptureSessionAttachedSessionManager *)v2 _generateStateLog];
    if (dword_1EB58E660)
    {
      v6 = OUTLINED_FUNCTION_6_42();
      v7 = OUTLINED_FUNCTION_96(v6);
      if (OUTLINED_FUNCTION_6(v7))
      {
        OUTLINED_FUNCTION_14_20();
        OUTLINED_FUNCTION_0_55();
        OUTLINED_FUNCTION_4_48();
        OUTLINED_FUNCTION_16_22();
      }

      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_17_8();
    }

    v8 = FigCaptureSessionAttachSession(*(a1[4] + 8), a1[6]);
    if (v8 == 2)
    {
      [*(a1[4] + 48) removeObject:a1[6]];
      if (([*(a1[4] + 56) containsObject:a1[6]] & 1) == 0)
      {
        [*(a1[4] + 56) addObject:a1[6]];
      }

      if (!dword_1EB58E660)
      {
        goto LABEL_28;
      }

      v13 = OUTLINED_FUNCTION_6_42();
      v14 = OUTLINED_FUNCTION_96(v13);
      if (!OUTLINED_FUNCTION_6(v14))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v8 != 1)
      {
        if (!v8 && dword_1EB58E660)
        {
          v9 = OUTLINED_FUNCTION_6_42();
          v10 = OUTLINED_FUNCTION_96(v9);
          if (OUTLINED_FUNCTION_6(v10))
          {
            OUTLINED_FUNCTION_14_20();
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_4_48();
            OUTLINED_FUNCTION_16_22();
          }

          OUTLINED_FUNCTION_1_65();
          OUTLINED_FUNCTION_17_8();
        }

        return [(FigCaptureSessionAttachedSessionManager *)a1[4] _generateStateLog];
      }

      *(*(a1[5] + 8) + 24) = 1;
      if (([*(a1[4] + 32) containsObject:a1[6]] & 1) == 0)
      {
        [*(a1[4] + 32) addObject:a1[6]];
      }

      if (!dword_1EB58E660)
      {
LABEL_28:
        OUTLINED_FUNCTION_15_19();
        return [(FigCaptureSessionAttachedSessionManager *)a1[4] _generateStateLog];
      }

      v11 = OUTLINED_FUNCTION_6_42();
      v12 = OUTLINED_FUNCTION_96(v11);
      if (!OUTLINED_FUNCTION_6(v12))
      {
LABEL_27:
        OUTLINED_FUNCTION_1_65();
        OUTLINED_FUNCTION_17_8();
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_14_20();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_4_48();
    OUTLINED_FUNCTION_16_22();
    goto LABEL_27;
  }

  return [(FigCaptureSessionAttachedSessionManager *)a1[4] _generateStateLog];
}

- (void)sessionDidStartRunning:(char)running sessionContainsVideoSource:(char)source sessionContainsCameraSource:
{
  if (self)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    OUTLINED_FUNCTION_7_1();
    v10 = 3221225472;
    v11 = __121__FigCaptureSessionAttachedSessionManager_sessionDidStartRunning_sessionContainsVideoSource_sessionContainsCameraSource___block_invoke;
    v12 = &unk_1E7997620;
    selfCopy = self;
    v14 = cf;
    runningCopy = running;
    sourceCopy = source;
    fig_dispatch_async_autoreleasepool(v8, v9);
  }
}

void __121__FigCaptureSessionAttachedSessionManager_sessionDidStartRunning_sessionContainsVideoSource_sessionContainsCameraSource___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
    if (dword_1EB58E660)
    {
      v2 = OUTLINED_FUNCTION_9_31();
      v3 = OUTLINED_FUNCTION_29_4(v2);
      if (OUTLINED_FUNCTION_6(v3))
      {
        OUTLINED_FUNCTION_14_20();
        OUTLINED_FUNCTION_17_19();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_4_48();
        OUTLINED_FUNCTION_54_1();
      }

      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_17_8();
    }

    OUTLINED_FUNCTION_15_19();
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    if (v5 || *(a1 + 49) != 1)
    {
      if (*(a1 + 48) == 1)
      {
        if (dword_1EB58E660)
        {
          v9 = OUTLINED_FUNCTION_9_31();
          v10 = OUTLINED_FUNCTION_29_4(v9);
          if (OUTLINED_FUNCTION_6(v10))
          {
            OUTLINED_FUNCTION_14_20();
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_4_48();
            OUTLINED_FUNCTION_54_1();
          }

          OUTLINED_FUNCTION_1_65();
          OUTLINED_FUNCTION_17_8();
          v4 = *(a1 + 32);
          v5 = *(v4 + 8);
        }

        v11 = *(a1 + 40);
        *(v4 + 8) = v11;
        if (v11)
        {
          CFRetain(v11);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _stopAttachedSessionsAndRemoveHostSession:?];
        [*(*(a1 + 32) + 48) addObjectsFromArray:*(*(a1 + 32) + 56)];
        [*(*(a1 + 32) + 56) removeAllObjects];
      }
    }

    else
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v6 = CFRetain(v6);
        v4 = *(a1 + 32);
      }

      *(v4 + 8) = v6;
      if (dword_1EB58E660)
      {
        v7 = OUTLINED_FUNCTION_9_31();
        v8 = OUTLINED_FUNCTION_29_4(v7);
        if (OUTLINED_FUNCTION_6(v8))
        {
          OUTLINED_FUNCTION_14_20();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_4_48();
          OUTLINED_FUNCTION_54_1();
        }

        OUTLINED_FUNCTION_1_65();
        OUTLINED_FUNCTION_17_8();
      }
    }

    [OUTLINED_FUNCTION_21_17() removeObject:?];
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    if (*(a1 + 40) == v13)
    {
      if (dword_1EB58E660)
      {
        v14 = OUTLINED_FUNCTION_9_31();
        v15 = OUTLINED_FUNCTION_29_4(v14);
        if (OUTLINED_FUNCTION_6(v15))
        {
          OUTLINED_FUNCTION_14_20();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_4_48();
          OUTLINED_FUNCTION_54_1();
        }

        OUTLINED_FUNCTION_1_65();
        OUTLINED_FUNCTION_17_8();
        v12 = *(a1 + 32);
        v13 = *(v12 + 16);
      }

      if (v13)
      {
        CFRelease(v13);
        *(*(a1 + 32) + 16) = 0;
        v12 = *(a1 + 32);
      }
    }

    [(FigCaptureSessionAttachedSessionManager *)v12 _startNextSession];
  }

  [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
  }
}

- (uint64_t)_stopAttachedSessionsAndRemoveHostSession:(uint64_t)result
{
  if (result)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = result;
    obj = *(result + 32);
    v3 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v23;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          if (dword_1EB58E660)
          {
            v20 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v9 = v20;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v10 = v9;
            }

            else
            {
              v10 = v9 & 0xFFFFFFFE;
            }

            if (v10)
            {
              v15 = 136315394;
              v16 = "[FigCaptureSessionAttachedSessionManager _stopAttachedSessionsAndRemoveHostSession:]";
              v17 = 2112;
              v18 = v7;
              LODWORD(v12) = 22;
              v11 = &v15;
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigCaptureSessionStopAttachedSession(v7, a2);
        }

        v4 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v4);
    }

    [*(v13 + 40) addObjectsFromArray:{*(v13 + 32), v11, v12}];
    return [*(v13 + 32) removeAllObjects];
  }

  return result;
}

- (void)_startNextSession
{
  if (self)
  {
    if (!*(self + 16))
    {
      firstObject = [*(self + 48) firstObject];
      *(self + 16) = firstObject;
      if (firstObject)
      {
        if (dword_1EB58E660)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v4 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_6(v4))
          {
            OUTLINED_FUNCTION_0_55();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_17_8();
          firstObject = *(self + 16);
        }

        FigCaptureSessionStartDetachedSession(firstObject);
        *(self + 24) = *(self + 72);
      }
    }
  }
}

- (void)sessionDidStopRunning:(char)running captureDeviceStolen:(char)stolen sessionIsEligibleToAttach:(char)attach clientStartedSession:
{
  if (self)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    OUTLINED_FUNCTION_7_1();
    v12 = 3221225472;
    v13 = __132__FigCaptureSessionAttachedSessionManager_sessionDidStopRunning_captureDeviceStolen_sessionIsEligibleToAttach_clientStartedSession___block_invoke;
    v14 = &unk_1E7997648;
    selfCopy = self;
    v16 = cf;
    runningCopy = running;
    stolenCopy = stolen;
    attachCopy = attach;
    fig_dispatch_async_autoreleasepool(v10, v11);
  }
}

void __132__FigCaptureSessionAttachedSessionManager_sessionDidStopRunning_captureDeviceStolen_sessionIsEligibleToAttach_clientStartedSession___block_invoke(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    goto LABEL_43;
  }

  [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  if (dword_1EB58E660)
  {
    v3 = OUTLINED_FUNCTION_7_37();
    v4 = OUTLINED_FUNCTION_96(v3);
    if (OUTLINED_FUNCTION_6(v4))
    {
      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_17_19();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_48();
      OUTLINED_FUNCTION_16_22();
    }

    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_17_8();
  }

  OUTLINED_FUNCTION_15_19();
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if ((*(a1 + 50) & 1) == 0)
  {
    [*(v6 + 32) removeObject:v5];
    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
    [OUTLINED_FUNCTION_21_17() removeObject:?];
    [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 16);
    if (v7)
    {
      if (v7 == v5)
      {
        CFRelease(v7);
        *(*(a1 + 32) + 16) = 0;
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
      }
    }
  }

  v8 = [*(v6 + 40) containsObject:v5];
  v9 = v8;
  if (v8)
  {
    if (dword_1EB58E660)
    {
      v10 = OUTLINED_FUNCTION_7_37();
      if (OUTLINED_FUNCTION_26_8(v10))
      {
        v11 = v1;
      }

      else
      {
        v11 = v1 & 0xFFFFFFFE;
      }

      if (v11)
      {
        OUTLINED_FUNCTION_19_16();
        OUTLINED_FUNCTION_0_55();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
        v1 = v25;
      }

      OUTLINED_FUNCTION_1_65();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  }

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v12 == *(v13 + 16))
  {
    if (dword_1EB58E660)
    {
      v15 = OUTLINED_FUNCTION_7_37();
      if (OUTLINED_FUNCTION_26_8(v15))
      {
        v16 = v1;
      }

      else
      {
        v16 = v1 & 0xFFFFFFFE;
      }

      if (v16)
      {
        OUTLINED_FUNCTION_19_16();
        OUTLINED_FUNCTION_0_55();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_65();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
    }

    [*(v13 + 48) removeObject:v12];
    v13 = *(a1 + 32);
    v17 = *(v13 + 16);
    if (v17)
    {
      CFRelease(v17);
      *(*(a1 + 32) + 16) = 0;
      v13 = *(a1 + 32);
    }

    v14 = *(v13 + 72) != *(v13 + 24) + 1;
    if (v9)
    {
      goto LABEL_34;
    }

LABEL_32:
    if (*(a1 + 48) != 1 || *(a1 + 49) != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  v14 = 1;
  if ((v9 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (([*(v13 + 56) containsObject:*(a1 + 40)] & 1) == 0)
  {
    if (dword_1EB58E660)
    {
      v18 = OUTLINED_FUNCTION_7_37();
      v19 = OUTLINED_FUNCTION_96(v18);
      if (OUTLINED_FUNCTION_6(v19))
      {
        OUTLINED_FUNCTION_19_16();
        OUTLINED_FUNCTION_0_55();
        OUTLINED_FUNCTION_4_48();
        OUTLINED_FUNCTION_16_22();
      }

      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_17_8();
    }

    if (([OUTLINED_FUNCTION_21_17() containsObject:?] & 1) == 0)
    {
      [OUTLINED_FUNCTION_21_17() addObject:?];
    }
  }

LABEL_41:
  v20 = *(a1 + 32);
  v21 = *(v20 + 8);
  if (*(a1 + 40) != v21)
  {
    if (!v14)
    {
      goto LABEL_43;
    }

    goto LABEL_53;
  }

  if (dword_1EB58E660)
  {
    v23 = OUTLINED_FUNCTION_7_37();
    v24 = OUTLINED_FUNCTION_96(v23);
    if (OUTLINED_FUNCTION_6(v24))
    {
      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_4_48();
      OUTLINED_FUNCTION_16_22();
    }

    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_17_8();
    v20 = *(a1 + 32);
    v21 = *(v20 + 8);
  }

  if (v21)
  {
    CFRelease(v21);
    *(*(a1 + 32) + 8) = 0;
    v20 = *(a1 + 32);
  }

  [(FigCaptureSessionAttachedSessionManager *)v20 _stopAttachedSessionsAndRemoveHostSession:?];
  if (v14)
  {
LABEL_53:
    [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _startNextSession];
  }

LABEL_43:
  [(FigCaptureSessionAttachedSessionManager *)*(a1 + 32) _generateStateLog];
  v22 = *(a1 + 40);
  if (v22)
  {
    CFRelease(v22);
  }
}

- (void)sessionDidReconfigure:(uint64_t)reconfigure
{
  if (reconfigure)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    v4 = OUTLINED_FUNCTION_11_27();
    v5[1] = 3221225472;
    v5[2] = __65__FigCaptureSessionAttachedSessionManager_sessionDidReconfigure___block_invoke;
    v5[3] = &unk_1E7990178;
    v5[4] = reconfigure;
    v5[5] = cf;
    fig_dispatch_async_autoreleasepool(v4, v5);
  }
}

- (void)sessionInvalidated:(uint64_t)invalidated
{
  if (invalidated)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    v4 = OUTLINED_FUNCTION_11_27();
    v5[1] = 3221225472;
    v5[2] = __62__FigCaptureSessionAttachedSessionManager_sessionInvalidated___block_invoke;
    v5[3] = &unk_1E7990178;
    v5[4] = invalidated;
    v5[5] = cf;
    fig_dispatch_async_autoreleasepool(v4, v5);
  }
}

void __65__FigCaptureSessionAttachedSessionManager_sessionDidReconfigure___block_invoke_cold_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  [(FigCaptureSessionAttachedSessionManager *)a1 _stopAttachedSessionsAndRemoveHostSession:?];
  [*(*a2 + 48) addObjectsFromArray:*(*a2 + 56)];
  [*(*a2 + 56) removeAllObjects];
  [(FigCaptureSessionAttachedSessionManager *)*a2 _startNextSession];
  *a3 = *a2;
}

@end