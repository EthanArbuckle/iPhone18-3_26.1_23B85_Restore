@interface FigCaptureSourceVibeMitigation
+ (void)initialize;
- (FigCaptureSourceVibeMitigation)initWithFigCaptureSourceBackings:(id)backings;
- (uint64_t)_setupStateMachine;
- (uint64_t)_startMitigation;
- (void)_cancelCurrentTimer;
- (void)_handleVibeNotification:(uint64_t)notification userInfo:;
- (void)_registerNotifications;
- (void)_setupTimerWithDuration:(uint64_t)duration;
- (void)_stopMitigation;
- (void)dealloc;
@end

@implementation FigCaptureSourceVibeMitigation

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureSourceVibeMitigation)initWithFigCaptureSourceBackings:(id)backings
{
  v30.receiver = self;
  v30.super_class = FigCaptureSourceVibeMitigation;
  result = [(FigCaptureSourceVibeMitigation *)&v30 init];
  if (result)
  {
    v22 = result;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [backings countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      obj = backings;
      do
      {
        v8 = 0;
        v20 = v6;
        do
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(obj);
          }

          attributes = [*(*(&v26 + 1) + 8 * v8) attributes];
          v10 = [objc_msgSend(attributes objectForKeyedSubscript:{@"DeviceType", "intValue"}];
          if (v10 <= 0xA && ((1 << v10) & 0x4AC) != 0)
          {
            v12 = v10;
            v13 = [objc_msgSend(attributes objectForKeyedSubscript:{@"Position", "intValue"}];
            if ([objc_msgSend(attributes objectForKeyedSubscript:{0x1F21A0470), "BOOLValue"}])
            {
              v14 = v22;
              positions = v22->_positions;
              if (!positions)
              {
                positions = objc_alloc_init(MEMORY[0x1E695DF70]);
                v14 = v22;
                v22->_positions = positions;
              }

              if (!v14->_deviceTypes)
              {
                v14->_deviceTypes = objc_alloc_init(MEMORY[0x1E695DF70]);
                positions = v14->_positions;
              }

              -[NSMutableArray addObject:](positions, "addObject:", [MEMORY[0x1E696AD98] numberWithInt:v13]);
              -[NSMutableArray addObject:](v14->_deviceTypes, "addObject:", [MEMORY[0x1E696AD98] numberWithInt:v12]);
              v6 = v20;
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
      }

      while (v6);
    }

    if ([(NSMutableArray *)v22->_positions count])
    {
      v16 = dword_1ED844010 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v24 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(NSMutableArray *)v22->_positions count:v18])
    {
      v22->_vibeMitigationQueue = FigDispatchQueueCreateWithPriority();
      v22->_hapticDuration = 30;
      [(FigCaptureSourceVibeMitigation *)v22 _setupStateMachine];
      [(FigCaptureSourceVibeMitigation *)v22 _registerNotifications];
      v22->_mitigationWhileCameraStreamingSupported = 0;
      return v22;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_release(timer);
  }

  v4.receiver = self;
  v4.super_class = FigCaptureSourceVibeMitigation;
  [(FigCaptureSourceVibeMitigation *)&v4 dealloc];
}

uint64_t __52__FigCaptureSourceVibeMitigation__setupStateMachine__block_invoke(uint64_t a1, uint64_t a2)
{
  started = [(FigCaptureSourceVibeMitigation *)a2 _startMitigation];
  v5 = *(a1 + 32);
  if (started)
  {
    v6 = 1;
  }

  else
  {
    [(FigCaptureSourceVibeMitigation *)a2 _setupTimerWithDuration:?];
    v5 = *(a1 + 32);
    v6 = 4;
  }

  v7 = *(v5 + 64);

  return [v7 transitionToState:v6];
}

void __67__FigCaptureSourceVibeMitigation__handleVibeNotification_userInfo___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"HapticActuatorProtectionModeNotification_MinimalProtection"])
  {
    v2 = [*(*(a1 + 40) + 64) currentState];
    v3 = *(*(a1 + 40) + 64);
    if (v2 == 1)
    {
      v4 = 2;
    }

    else
    {
      if ([v3 currentState] != 8)
      {
        return;
      }

      v3 = *(*(a1 + 40) + 64);
      v4 = 4;
    }

    goto LABEL_9;
  }

  if ([*(a1 + 32) isEqualToString:@"HapticActuatorProtectionModeNotification_DefaultProtection"])
  {
    if ([*(*(a1 + 40) + 64) currentState] != 4)
    {
      return;
    }

    v3 = *(*(a1 + 40) + 64);
    v4 = 8;
LABEL_9:

    [v3 transitionToState:v4];
    return;
  }

  if ([*(a1 + 32) isEqualToString:@"HapticSequenceNotification_SequenceWillStart"])
  {
    if ([*(a1 + 48) objectForKeyedSubscript:@"SequenceDuration"])
    {
      if ([*(*(a1 + 40) + 64) currentState] == 4)
      {
        [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"SequenceDuration", "floatValue"}];
        if (v5 <= 0x257)
        {
          __67__FigCaptureSourceVibeMitigation__handleVibeNotification_userInfo___block_invoke_cold_1(v5, (a1 + 40));
        }
      }
    }
  }
}

uint64_t __50__FigCaptureSourceVibeMitigation__startMitigation__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  result = [*(*(a1 + 32) + 64) currentState];
  if (result == 4 && (a3 & 1) == 0)
  {
    if (dword_1ED844010)
    {
      v10 = 0;
      v9 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(*(a1 + 32) + 76) = 1;
    return [*(*(a1 + 32) + 64) transitionToState:{1, v7, v8}];
  }

  return result;
}

- (uint64_t)_setupStateMachine
{
  if (result)
  {
    v1 = result;
    v2 = [[FigStateMachine alloc] initWithLabel:@"FigCaptureSourceVibeMitigationStateMachine" stateCount:4 initialState:1 owner:result];
    *(v1 + 64) = v2;
    [(FigStateMachine *)v2 setPerformsAtomicStateTransitions:0];
    [*(v1 + 64) setLabel:@"Idle" forState:1];
    [*(v1 + 64) setLabel:@"Activating" forState:2];
    [*(v1 + 64) setLabel:@"Active" forState:4];
    [*(v1 + 64) setLabel:@"Deactivating" forState:8];
    v3 = *(v1 + 64);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__FigCaptureSourceVibeMitigation__setupStateMachine__block_invoke;
    v6[3] = &unk_1E798FD10;
    v6[4] = v1;
    [v3 whenTransitioningFromState:1 toState:2 callHandler:v6];
    [*(v1 + 64) whenTransitioningFromState:4 toState:8 callHandler:&__block_literal_global_6];
    [*(v1 + 64) whenTransitioningFromState:8 toState:1 callHandler:&__block_literal_global_29];
    [*(v1 + 64) whenTransitioningFromState:4 toState:1 callHandler:&__block_literal_global_31];
    v4 = *(v1 + 64);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__FigCaptureSourceVibeMitigation__setupStateMachine__block_invoke_5;
    v5[3] = &unk_1E798FD10;
    v5[4] = v1;
    return [v4 whenTransitioningFromState:8 toState:4 callHandler:v5];
  }

  return result;
}

- (void)_registerNotifications
{
  if (self)
  {
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, self, fcsvm_vibeNotificationCallback, @"HapticActuatorProtectionModeNotification_MinimalProtection", @"HapticEngineNotificationObject", CFNotificationSuspensionBehaviorDeliverImmediately);
    v3 = OUTLINED_FUNCTION_10_6();
    CFNotificationCenterAddObserver(v3, v4, v5, v6, v7, v8);
    v9 = OUTLINED_FUNCTION_10_6();

    CFNotificationCenterAddObserver(v9, v10, v11, v12, v13, v14);
  }
}

- (uint64_t)_startMitigation
{
  if (result)
  {
    v2 = result;
    v65[0] = 0;
    if (*(result + 77) == 1)
    {
      *(result + 32) = 0;
      v3 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    }

    else
    {
      v4 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
      v5 = getpid();
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __50__FigCaptureSourceVibeMitigation__startMitigation__block_invoke;
      v64[3] = &unk_1E798FD80;
      v64[4] = v2;
      v33 = v64;
      *(v2 + 32) = [v4 registerClientWithPID:v5 clientDescription:@"FigCaptureSourceVibeMitigation" clientPriority:2 canStealFromClientsWithSamePriority:0 deviceSharingWithOtherClientsAllowed:0 clientType:3 deviceAvailabilityChangedHandler:?];
      v3 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    }

    *(v2 + 40) = v3;
    if (v3)
    {
      v6 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
      *(v2 + 48) = v6;
      if (v65[0])
      {
        v7 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
        OUTLINED_FUNCTION_13_7(v7, v8);
        v9 = *(v2 + 40);
        if (v9)
        {
          CFRelease(v9);
          *(v2 + 40) = 0;
        }

LABEL_9:
        OUTLINED_FUNCTION_2_9();
        FigDebugAssert3();
        return v65[0];
      }

      if (!*(v2 + 40) || !v6)
      {
        goto LABEL_9;
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = v6;
      v10 = [v6 countByEnumeratingWithState:&v60 objects:v59 count:16];
      if (!v10)
      {
        return v65[0];
      }

      v12 = v10;
      v13 = *v61;
      v37 = *off_1E798C270;
      *&v11 = 136315394;
      *v36 = v11;
      *&v11 = 136315650;
      *v35 = v11;
LABEL_14:
      v14 = 0;
      while (1)
      {
        if (*v61 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v60 + 1) + 8 * v14);
        if (*(v2 + 77) == 1)
        {
          if (dword_1ED844010)
          {
            OUTLINED_FUNCTION_4_18();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_14_2(os_log_and_send_and_compose_flags_and_os_log_type, v17, v18, v19, v20, v21, v22, v23, v33, v34, v35[0], v35[1], v36[0], v36[1], v37, obj, *v39, *&v39[8], *&v39[16], v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
            OUTLINED_FUNCTION_8_10();
            if (v1)
            {
              *v39 = v36[0];
              *&v39[4] = "[FigCaptureSourceVibeMitigation _startMitigation]";
              *&v39[12] = 2112;
              *&v39[14] = [v15 portType];
              OUTLINED_FUNCTION_1_20();
              OUTLINED_FUNCTION_12_5();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7_10();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v15 setVibeMitigationEnabled:1];
          goto LABEL_30;
        }

        v65[0] = [*(*(&v60 + 1) + 8 * v14) setPropertyIfSupported:v37 value:MEMORY[0x1E695E118]];
        if (v65[0])
        {
          break;
        }

        if (dword_1ED844010)
        {
          OUTLINED_FUNCTION_4_18();
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_14_2(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0], v35[1], v36[0], v36[1], v37, obj, *v39, *&v39[8], *&v39[16], v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          OUTLINED_FUNCTION_8_10();
          if (v1)
          {
            *v39 = v36[0];
            *&v39[4] = "[FigCaptureSourceVibeMitigation _startMitigation]";
            *&v39[12] = 2112;
            *&v39[14] = [v15 portType];
            OUTLINED_FUNCTION_1_20();
            OUTLINED_FUNCTION_12_5();
            _os_log_send_and_compose_impl();
          }

          goto LABEL_29;
        }

LABEL_30:
        if (v12 == ++v14)
        {
          v12 = [obj countByEnumeratingWithState:&v60 objects:v59 count:16];
          if (!v12)
          {
            return v65[0];
          }

          goto LABEL_14;
        }
      }

      OUTLINED_FUNCTION_4_18();
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, BYTE3(type));
      OUTLINED_FUNCTION_8_10();
      if (v1)
      {
        *v39 = v35[0];
        *&v39[4] = "[FigCaptureSourceVibeMitigation _startMitigation]";
        *&v39[12] = 2112;
        *&v39[14] = [v15 portType];
        *&v39[22] = 1024;
        LODWORD(v40) = v65[0];
        OUTLINED_FUNCTION_1_20();
        _os_log_send_and_compose_impl();
      }

LABEL_29:
      OUTLINED_FUNCTION_7_10();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_30;
    }

    return v65[0];
  }

  return result;
}

- (void)_setupTimerWithDuration:(uint64_t)duration
{
  if (duration)
  {
    [(FigCaptureSourceVibeMitigation *)duration _cancelCurrentTimer];
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(duration + 24));
    *(duration + 56) = v4;
    v5 = dispatch_time(0, 1000000000 * a2);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = *(duration + 56);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__FigCaptureSourceVibeMitigation__setupTimerWithDuration___block_invoke;
    handler[3] = &unk_1E798F870;
    handler[4] = duration;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(*(duration + 56));
  }
}

- (void)_stopMitigation
{
  if (self)
  {
    [(FigCaptureSourceVibeMitigation *)self _cancelCurrentTimer];
    v10 = *(self + 48);
    if (v10 && *(self + 40))
    {
      if ((*(self + 76) & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_16_8(v2, v3, v4, v5, v6, v7, v8, v9, v47, v49, v51, v53, v54, v56, v58, v60, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109);
        if (v11)
        {
          v13 = v11;
          v14 = MEMORY[0];
          v64 = *off_1E798C270;
          *&v12 = 136315394;
          *v59 = v12;
          *&v12 = 136315650;
          *v52 = v12;
          do
          {
            v15 = 0;
            v57 = v13;
            do
            {
              if (MEMORY[0] != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(8 * v15);
              if (*(self + 77) == 1)
              {
                if (dword_1ED844010)
                {
                  OUTLINED_FUNCTION_3_10();
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  OUTLINED_FUNCTION_15_2(os_log_and_send_and_compose_flags_and_os_log_type, v18, v19, v20, v21, v22, v23, v24, v48, v50, v52[0], v52[1], v55, v57, v59[0], v59[1], v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
                  OUTLINED_FUNCTION_29();
                  [v16 portType];
                  LODWORD(v66) = v59[0];
                  OUTLINED_FUNCTION_6_8();
                  OUTLINED_FUNCTION_0_16();
                  OUTLINED_FUNCTION_12_5();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_5_15();
                  OUTLINED_FUNCTION_11_6();
                }

                v25 = [v16 setVibeMitigationEnabled:0];
              }

              else
              {
                v25 = [objc_msgSend(*(8 * v15) "supportedProperties")];
                if (v25)
                {
                  v25 = [v16 setProperty:v64 value:MEMORY[0x1E695E110]];
                  if (v25)
                  {
                    v33 = v25;
                    OUTLINED_FUNCTION_3_10();
                    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v34, BYTE3(type));
                    OUTLINED_FUNCTION_29();
                    [v16 portType];
                    LODWORD(v66) = v52[0];
                    OUTLINED_FUNCTION_6_8();
                    HIWORD(v70) = 1024;
                    LODWORD(v72) = v33;
                    OUTLINED_FUNCTION_0_16();
                    _os_log_send_and_compose_impl();
                    OUTLINED_FUNCTION_5_15();
                    v25 = OUTLINED_FUNCTION_11_6();
                    v13 = v57;
                  }

                  else if (dword_1ED844010)
                  {
                    OUTLINED_FUNCTION_3_10();
                    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    OUTLINED_FUNCTION_15_2(v35, v36, v37, v38, v39, v40, v41, v42, v48, v50, v52[0], v52[1], v55, v57, v59[0], v59[1], v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
                    OUTLINED_FUNCTION_29();
                    [v16 portType];
                    LODWORD(v66) = v59[0];
                    OUTLINED_FUNCTION_6_8();
                    OUTLINED_FUNCTION_0_16();
                    OUTLINED_FUNCTION_12_5();
                    _os_log_send_and_compose_impl();
                    OUTLINED_FUNCTION_5_15();
                    v25 = OUTLINED_FUNCTION_11_6();
                  }
                }
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = OUTLINED_FUNCTION_16_8(v25, v26, v27, v28, v29, v30, v31, v32, v48, v50, v52[0], v52[1], v55, v57, v59[0], v59[1], v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, type, v110);
          }

          while (v13);
        }
      }

      v43 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
      OUTLINED_FUNCTION_13_7(v43, v44);
      v45 = *(self + 40);
      if (v45)
      {
        CFRelease(v45);
        *(self + 40) = 0;
      }

      v46 = *(self + 48);
      if (v46)
      {
        CFRelease(v46);
        *(self + 48) = 0;
      }

      *(self + 32) = 0;
      *(self + 76) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_9();
      FigDebugAssert3();
    }
  }
}

- (void)_handleVibeNotification:(uint64_t)notification userInfo:
{
  if (self)
  {
    v3 = *(self + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__FigCaptureSourceVibeMitigation__handleVibeNotification_userInfo___block_invoke;
    block[3] = &unk_1E798FD58;
    block[4] = a2;
    block[5] = self;
    block[6] = notification;
    dispatch_async(v3, block);
  }
}

- (void)_cancelCurrentTimer
{
  if (self)
  {
    v2 = *(self + 56);
    if (v2)
    {
      dispatch_source_cancel(v2);

      *(self + 56) = 0;
    }
  }
}

@end