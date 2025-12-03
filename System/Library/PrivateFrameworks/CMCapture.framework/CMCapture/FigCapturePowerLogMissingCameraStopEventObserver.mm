@interface FigCapturePowerLogMissingCameraStopEventObserver
- (uint64_t)_cameraAppIsForegroundInLayout:(uint64_t)result;
- (void)_cancelCameraAppStreamingTimer;
- (void)_checkCameraAppPowerEventsForAnyStreamingCameras;
- (void)_handleLayoutUpdate:(uint64_t)update;
- (void)_showTTRPromptIfNecessary;
- (void)_startCameraAppStreamingTimer;
- (void)dealloc;
- (void)initWithQueue:(void *)queue;
- (void)layoutMonitor:(id)monitor didUpdateLayout:(id)layout;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation FigCapturePowerLogMissingCameraStopEventObserver

- (void)startObserving
{
  if (self)
  {
    OUTLINED_FUNCTION_12_15(self);
    *(v1 + 16) = 1;
    [*(v1 + 24) addLayoutObserverWithoutImmediateCallback:v1];
    currentLayout = [*(v1 + 24) currentLayout];

    [(FigCapturePowerLogMissingCameraStopEventObserver *)v1 _handleLayoutUpdate:currentLayout];
  }
}

- (void)dealloc
{
  cameraAppStreamingTimer = self->_cameraAppStreamingTimer;
  if (cameraAppStreamingTimer)
  {
    dispatch_release(cameraAppStreamingTimer);
  }

  v4.receiver = self;
  v4.super_class = FigCapturePowerLogMissingCameraStopEventObserver;
  [(FigCapturePowerLogMissingCameraStopEventObserver *)&v4 dealloc];
}

- (void)layoutMonitor:(id)monitor didUpdateLayout:(id)layout
{
  dispatch_assert_queue_not_V2(self->_observerQueue);
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__FigCapturePowerLogMissingCameraStopEventObserver_layoutMonitor_didUpdateLayout___block_invoke;
  v7[3] = &unk_1E798F898;
  v7[4] = self;
  v7[5] = layout;
  dispatch_async(observerQueue, v7);
}

void __82__FigCapturePowerLogMissingCameraStopEventObserver_layoutMonitor_didUpdateLayout___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);

    [(FigCapturePowerLogMissingCameraStopEventObserver *)v4 _handleLayoutUpdate:v3];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)initWithQueue:(void *)queue
{
  if (!queue)
  {
    return 0;
  }

  v6.receiver = queue;
  v6.super_class = FigCapturePowerLogMissingCameraStopEventObserver;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  if (v3)
  {
    v3[1] = a2;
    v3[3] = +[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor];
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v3[6] = v4;
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ssZ"];
  }

  return v3;
}

- (void)stopObserving
{
  if (self)
  {
    OUTLINED_FUNCTION_12_15(self);
    *(v1 + 16) = 0;
    [*(v1 + 24) removeLayoutObserver:v1];
    *(v1 + 40) = 0;

    [(FigCapturePowerLogMissingCameraStopEventObserver *)v1 _cancelCameraAppStreamingTimer];
  }
}

- (void)_handleLayoutUpdate:(uint64_t)update
{
  if (update)
  {
    OUTLINED_FUNCTION_12_15(update);
    v4 = [(FigCapturePowerLogMissingCameraStopEventObserver *)v2 _cameraAppIsForegroundInLayout:a2];
    v5 = v4;
    if (*(v2 + 40) == 1 && (v4 & 1) == 0)
    {
      [(FigCapturePowerLogMissingCameraStopEventObserver *)v2 _startCameraAppStreamingTimer];
    }

    else if (v4)
    {
      [(FigCapturePowerLogMissingCameraStopEventObserver *)v2 _cancelCameraAppStreamingTimer];
    }

    *(v2 + 40) = v5;
  }
}

- (void)_cancelCameraAppStreamingTimer
{
  if (self)
  {
    OUTLINED_FUNCTION_12_15(self);
    v2 = *(v1 + 32);
    if (v2)
    {
      if (dword_1ED844470)
      {
        v3 = OUTLINED_FUNCTION_2_34();
        v4 = OUTLINED_FUNCTION_8_5(v3);
        if (OUTLINED_FUNCTION_6(v4))
        {
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_18_2();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
        v2 = *(v1 + 32);
      }

      dispatch_source_cancel(v2);
      dispatch_release(*(v1 + 32));
      *(v1 + 32) = 0;
    }
  }
}

- (void)_startCameraAppStreamingTimer
{
  if (self)
  {
    OUTLINED_FUNCTION_12_15(self);
    if (*(v1 + 32))
    {
      [(FigCapturePowerLogMissingCameraStopEventObserver *)v1 _cancelCameraAppStreamingTimer];
    }

    if (dword_1ED844470)
    {
      v2 = OUTLINED_FUNCTION_2_34();
      v3 = OUTLINED_FUNCTION_8_5(v2);
      if (OUTLINED_FUNCTION_6(v3))
      {
        v8 = 136315394;
        v9 = "[FigCapturePowerLogMissingCameraStopEventObserver _startCameraAppStreamingTimer]";
        v10 = 1024;
        v11 = 30;
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_17_8();
    }

    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v1 + 8));
    *(v1 + 32) = v4;
    v5 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x29A2241AF62C0000uLL);
    v6 = *(v1 + 32);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __81__FigCapturePowerLogMissingCameraStopEventObserver__startCameraAppStreamingTimer__block_invoke;
    handler[3] = &unk_1E798F870;
    handler[4] = v1;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(*(v1 + 32));
  }
}

void __81__FigCapturePowerLogMissingCameraStopEventObserver__startCameraAppStreamingTimer__block_invoke(uint64_t a1)
{
  if (dword_1ED844470)
  {
    v2 = OUTLINED_FUNCTION_2_34();
    v3 = OUTLINED_FUNCTION_8_5(v2);
    if (OUTLINED_FUNCTION_6(v3))
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_18_2();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
  }

  [(FigCapturePowerLogMissingCameraStopEventObserver *)*(a1 + 32) _cancelCameraAppStreamingTimer];
  [(FigCapturePowerLogMissingCameraStopEventObserver *)*(a1 + 32) _checkCameraAppPowerEventsForAnyStreamingCameras];
}

- (void)_checkCameraAppPowerEventsForAnyStreamingCameras
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    v2 = -[FigCapturePowerLogMissingCameraStopEventObserver _cameraAppIsForegroundInLayout:](self, [*(self + 24) currentLayout]);
    if (dword_1ED844470)
    {
      OUTLINED_FUNCTION_3_28();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v15))
      {
        v4 = v16;
      }

      else
      {
        v4 = v16 & 0xFFFFFFFE;
      }

      if (v4)
      {
        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ((v2 & 1) == 0)
    {
      if (qword_1ED844EA8)
      {
        if (dword_1ED844470)
        {
          OUTLINED_FUNCTION_3_28();
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v14 = os_log_type_enabled(v13, v15);
          if (OUTLINED_FUNCTION_5_2(v14))
          {
            OUTLINED_FUNCTION_5_29();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_16_1();
        }
      }

      else
      {
        v5 = cpls_portTypesReportedStreamingForCameraApp();
        if ([v5 count])
        {
          OUTLINED_FUNCTION_13_14();
          v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
          if (v6)
          {
            v7 = v6;
            v8 = MEMORY[0];
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (MEMORY[0] != v8)
                {
                  objc_enumerationMutation(v5);
                }

                v15 = OS_LOG_TYPE_DEFAULT;
                v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_1_4();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              OUTLINED_FUNCTION_13_14();
              v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v7);
          }

          OUTLINED_FUNCTION_3_28();
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = os_log_type_enabled(v11, v15);
          if (OUTLINED_FUNCTION_6(v12))
          {
            OUTLINED_FUNCTION_5_29();
            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_17_8();
          [(FigCapturePowerLogMissingCameraStopEventObserver *)self _showTTRPromptIfNecessary];
        }
      }
    }
  }
}

- (uint64_t)_cameraAppIsForegroundInLayout:(uint64_t)result
{
  if (result)
  {
    if ([objc_msgSend(a2 "foregroundApps")] & 1) != 0 || (objc_msgSend(objc_msgSend(a2, "transitioningApps"), "containsObject:", 0x1F216ED50) & 1) != 0 || (objc_msgSend(objc_msgSend(a2, "foregroundApps"), "containsObject:", 0x1F2185310))
    {
      return 1;
    }

    else
    {
      transitioningApps = [a2 transitioningApps];

      return [transitioningApps containsObject:0x1F2185310];
    }
  }

  return result;
}

- (void)_showTTRPromptIfNecessary
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    if (FigDebugIsInternalBuild())
    {
      v8 = 0;
      v7 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v2 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_5_2(v2))
      {
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16_1();
      v6[0] = 0;
      LODWORD(v5) = 2;
      v3 = _os_log_send_and_compose_impl();
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v3, [qword_1ED844E98 description], 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Common/FigCapturePowerLogSupport.m", 701, @"LastShownDate:FigCapturePowerLogSupport.m:701", @"LastShownBuild:FigCapturePowerLogSupport.m:701", 0);
      free(v3);
    }
  }
}

@end