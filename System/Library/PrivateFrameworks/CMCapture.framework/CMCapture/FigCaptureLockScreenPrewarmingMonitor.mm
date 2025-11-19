@interface FigCaptureLockScreenPrewarmingMonitor
+ (void)initialize;
+ (void)start;
+ (void)stop;
- (uint64_t)_shouldPrewarmForHostTime:(uint64_t)result;
- (uint64_t)_startMonitoring;
- (void)_cancelDelayedPrewarmTimer;
- (void)_evaluatePrewarmingConditions;
- (void)_init;
- (void)_invalidate;
- (void)_prewarmAfterDelay:(uint64_t)a1;
- (void)_setIsPrewarming:(uint64_t)a1;
- (void)_stopMonitoring;
- (void)_updateActiveBiometricOperation:(uint64_t)a1;
- (void)_updateDeviceLockState;
- (void)dealloc;
- (void)layoutMonitor:(id)a3 didUpdateLayout:(id)a4;
@end

@implementation FigCaptureLockScreenPrewarmingMonitor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (void)start
{
  if (!sPrewarmingMonitor)
  {
    if (MGGetBoolAnswer())
    {
      sPrewarmingMonitor = [[FigCaptureLockScreenPrewarmingMonitor alloc] _init];
    }
  }
}

+ (void)stop
{
  [(FigCaptureLockScreenPrewarmingMonitor *)sPrewarmingMonitor _invalidate];

  sPrewarmingMonitor = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureLockScreenPrewarmingMonitor;
  [(FigCaptureLockScreenPrewarmingMonitor *)&v3 dealloc];
}

void __52__FigCaptureLockScreenPrewarmingMonitor__invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 20) == 1)
  {
    [(FigCaptureLockScreenPrewarmingMonitor *)v1 _stopMonitoring];
  }
}

void __60__FigCaptureLockScreenPrewarmingMonitor__prewarmAfterDelay___block_invoke_29()
{
  if (dword_1ED8440D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __97__FigCaptureLockScreenPrewarmingMonitor__registerForBiometricEnrollmentChangesAndStartMonitoring__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2 != 0;
  v3 = *(a1 + 32);
  if (*(v3 + 20) != v2)
  {
    *(v3 + 20) = v2;
    v4 = *(a1 + 32);
    if (a2)
    {
      [(FigCaptureLockScreenPrewarmingMonitor *)v4 _startMonitoring];
    }

    else
    {
      [(FigCaptureLockScreenPrewarmingMonitor *)v4 _stopMonitoring];
    }
  }
}

- (void)layoutMonitor:(id)a3 didUpdateLayout:(id)a4
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __71__FigCaptureLockScreenPrewarmingMonitor_layoutMonitor_didUpdateLayout___block_invoke;
  v9 = &unk_1E798F898;
  v10 = a3;
  v11 = self;
  if (self->_addingLayoutObserver)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      [FigCaptureLockScreenPrewarmingMonitor layoutMonitor:didUpdateLayout:];
    }

    v8(v7);
  }

  else
  {
    if (!_FigIsNotCurrentDispatchQueue())
    {
      [FigCaptureLockScreenPrewarmingMonitor layoutMonitor:didUpdateLayout:];
    }

    notifyQueue = self->_notifyQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__FigCaptureLockScreenPrewarmingMonitor_layoutMonitor_didUpdateLayout___block_invoke_2;
    v6[3] = &unk_1E7990390;
    v6[4] = self;
    v6[5] = v7;
    dispatch_sync(notifyQueue, v6);
  }
}

void __71__FigCaptureLockScreenPrewarmingMonitor_layoutMonitor_didUpdateLayout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isOnLockScreen];
  v3 = *(a1 + 40);
  if (*(v3 + 64) != v2)
  {
    *(v3 + 64) = v2;
    v4 = *(a1 + 40);

    [(FigCaptureLockScreenPrewarmingMonitor *)v4 _evaluatePrewarmingConditions];
  }
}

uint64_t __71__FigCaptureLockScreenPrewarmingMonitor_layoutMonitor_didUpdateLayout___block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 66) == 1)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (void)_init
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = FigCaptureLockScreenPrewarmingMonitor;
  v1 = objc_msgSendSuper2(&v7, sel_init);
  if (v1)
  {
    v1[1] = FigDispatchQueueCreateWithPriority();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    OUTLINED_FUNCTION_3_72();
    v8[2] = v2;
    v8[3] = &unk_1E79997C0;
    v8[4] = v1;
    *(v1 + 4) = clspm_registerForNotifyName("com.apple.BiometricKit.enrollmentChanged", v3, v8);
    v5 = @"ExtendedDeviceLockState";
    v6 = MEMORY[0x1E695E118];
    v1[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  return v1;
}

- (void)_invalidate
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      notify_cancel(v2);
      *(a1 + 16) = 0;
      OUTLINED_FUNCTION_7_1();
      v5 = 3221225472;
      v6 = __52__FigCaptureLockScreenPrewarmingMonitor__invalidate__block_invoke;
      v7 = &unk_1E798F870;
      v8 = a1;
      dispatch_async(v3, block);
    }
  }
}

- (void)_stopMonitoring
{
  if (a1)
  {
    if (!OUTLINED_FUNCTION_10_38())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v2 = *(v1 + 48);
    if (v2)
    {
      notify_cancel(v2);
      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      notify_cancel(v3);
      *(v1 + 24) = 0;
      *(v1 + 32) = 0;
    }

    if (*(v1 + 66) == 1)
    {
      [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
      *(v1 + 64) = 0;
      *(v1 + 66) = 0;
    }

    [(FigCaptureLockScreenPrewarmingMonitor *)v1 _evaluatePrewarmingConditions];
  }
}

- (uint64_t)_startMonitoring
{
  if (result)
  {
    result = OUTLINED_FUNCTION_10_38();
    if (!result)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3();
    }

    if (*(v1 + 20) == 1 && !*(v1 + 24) && !*(v1 + 48) && (*(v1 + 66) & 1) == 0)
    {
      v2 = *(v1 + 8);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __57__FigCaptureLockScreenPrewarmingMonitor__startMonitoring__block_invoke;
      v5[3] = &unk_1E79997C0;
      v5[4] = v1;
      *(v1 + 24) = clspm_registerForNotifyName("com.apple.BiometricKit.activeOperation", v2, v5);
      v3 = *(v1 + 8);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __57__FigCaptureLockScreenPrewarmingMonitor__startMonitoring__block_invoke_2;
      v4[3] = &unk_1E79997C0;
      v4[4] = v1;
      *(v1 + 48) = clspm_registerForNotifyName("com.apple.mobile.keybagd.lock_status", v3, v4);
      *(v1 + 65) = 1;
      result = [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
      *(v1 + 65) = 256;
    }
  }

  return result;
}

- (void)_updateActiveBiometricOperation:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 28);
    if (v3 != a2)
    {
      *(a1 + 28) = a2;
      if (v3 == 2)
      {
        *(a1 + 32) = mach_absolute_time();
      }

      [(FigCaptureLockScreenPrewarmingMonitor *)a1 _evaluatePrewarmingConditions];
    }
  }
}

- (void)_updateDeviceLockState
{
  if (a1)
  {
    v2 = MKBGetDeviceLockState();
    v3 = *(a1 + 52);
    if (v2 != v3)
    {
      v4 = v2;
      if (((v2 < 7) & (0x46u >> v2)) == 0 && v3 <= 6 && ((0x39u >> v3) & 1) == 0)
      {
        *(a1 + 56) = mach_absolute_time();
      }

      *(a1 + 52) = v4;

      [(FigCaptureLockScreenPrewarmingMonitor *)a1 _evaluatePrewarmingConditions];
    }
  }
}

- (void)_evaluatePrewarmingConditions
{
  if (a1)
  {
    mach_absolute_time();
    v2 = [FigCaptureLockScreenPrewarmingMonitor _shouldPrewarmForHostTime:a1];

    [(FigCaptureLockScreenPrewarmingMonitor *)a1 _setIsPrewarming:v2];
  }
}

- (uint64_t)_shouldPrewarmForHostTime:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v2 = *(v1 + 67);
    v3 = (*(v1 + 52) > 6u) | (0x39u >> *(v1 + 52));
    v4 = *(v1 + 64);
    v5 = ((FigHostTimeToNanoseconds() / 1000) / 1000000.0) < 0.5;
    v6 = *(v1 + 28);
    v7 = FigHostTimeToNanoseconds();
    result = 0;
    if (v3 & 1) != 0 && (v4 & 1) != 0 && ((v5 | v2))
    {
      return (v6 != 2) & ((((v7 / 1000) / 1000000.0) < 0.5) | v2);
    }
  }

  return result;
}

- (void)_setIsPrewarming:(uint64_t)a1
{
  if (a1)
  {
    if (!OUTLINED_FUNCTION_10_38())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (*(v2 + 67) != a2)
    {
      *(v2 + 67) = a2;
      if (a2)
      {
        if (dword_1ED8440D0)
        {
          v4 = OUTLINED_FUNCTION_6_54();
          v5 = OUTLINED_FUNCTION_8_5(v4);
          if (OUTLINED_FUNCTION_6(v5))
          {
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_4_63();
          }

          OUTLINED_FUNCTION_1_92();
        }

        [(FigCaptureLockScreenPrewarmingMonitor *)v2 _prewarmAfterDelay:?];
      }

      else
      {
        if (*(v2 + 72))
        {
          if (dword_1ED8440D0)
          {
            v6 = OUTLINED_FUNCTION_6_54();
            v7 = OUTLINED_FUNCTION_8_5(v6);
            if (OUTLINED_FUNCTION_6(v7))
            {
              OUTLINED_FUNCTION_5();
              OUTLINED_FUNCTION_4_63();
            }

            OUTLINED_FUNCTION_1_92();
          }

          [(FigCaptureLockScreenPrewarmingMonitor *)v2 _cancelDelayedPrewarmTimer];
        }

        *(v2 + 56) = 0;
        *(v2 + 32) = 0;
      }
    }
  }
}

- (void)_prewarmAfterDelay:(uint64_t)a1
{
  if (a1)
  {
    if (!OUTLINED_FUNCTION_10_38())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    [(FigCaptureLockScreenPrewarmingMonitor *)v2 _cancelDelayedPrewarmTimer];
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 8));
    v5 = dispatch_time(0, (a2 * 1000000000.0));
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, (a2 * 0.1 * 1000000000.0));
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__FigCaptureLockScreenPrewarmingMonitor__prewarmAfterDelay___block_invoke;
    handler[3] = &unk_1E798F870;
    handler[4] = v2;
    dispatch_source_set_event_handler(v4, handler);
    *(v2 + 72) = v4;
    dispatch_activate(v4);
  }
}

- (void)_cancelDelayedPrewarmTimer
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      dispatch_source_cancel(v2);

      *(a1 + 72) = 0;
    }
  }
}

uint64_t __60__FigCaptureLockScreenPrewarmingMonitor__prewarmAfterDelay___block_invoke(uint64_t a1)
{
  if (dword_1ED8440D0)
  {
    v2 = OUTLINED_FUNCTION_6_54();
    v3 = OUTLINED_FUNCTION_8_5(v2);
    if (OUTLINED_FUNCTION_6(v3))
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_63();
    }

    OUTLINED_FUNCTION_1_92();
  }

  [(FigCaptureLockScreenPrewarmingMonitor *)*(a1 + 32) _cancelDelayedPrewarmTimer];
  [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  return [(FigCaptureLockScreenPrewarmingMonitor *)*(a1 + 32) _setIsPrewarming:?];
}

- (uint64_t)layoutMonitor:didUpdateLayout:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)layoutMonitor:didUpdateLayout:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

@end