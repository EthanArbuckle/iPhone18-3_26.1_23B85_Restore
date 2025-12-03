@interface FigCameraViewfinderStream
+ (void)initialize;
- (FigCameraViewfinderStream)init;
- (int)enqueueVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (uint64_t)_setupStateMachine;
- (void)_handleEndpointsChanged:(uint64_t)changed;
- (void)_handleStreamsChanged:(void *)changed;
- (void)_setEndpoint:(uint64_t)endpoint;
- (void)_updateStreams;
- (void)close;
- (void)dealloc;
- (void)openWithDestination:(id)destination;
@end

@implementation FigCameraViewfinderStream

- (FigCameraViewfinderStream)init
{
  v4.receiver = self;
  v4.super_class = FigCameraViewfinderStream;
  v2 = [(FigCameraViewfinderStream *)&v4 init];
  if (v2)
  {
    v2->_delegateStorage = objc_alloc_init(FigDelegateStorage);
    v2->_frameCounter = [[FigCaptureFrameCounter alloc] initWithTitle:[(FigCameraViewfinderStream *)v2 description]];
    [(FigCameraViewfinderStream *)v2 _setupStateMachine];
    if (init_sEndpointManagerOnceToken != -1)
    {
      [FigCameraViewfinderStream init];
    }
  }

  return v2;
}

- (uint64_t)_setupStateMachine
{
  if (result)
  {
    v1 = result;
    v2 = [[FigStateMachine alloc] initWithLabel:@"FigCameraViewfinderStreamStateMachine" stateCount:4 initialState:1 owner:result];
    *(v1 + 16) = v2;
    [(FigStateMachine *)v2 setLabel:@"Idle" forState:1];
    [*(v1 + 16) setLabel:@"Activating" forState:2];
    [*(v1 + 16) setLabel:@"Active" forState:4];
    [*(v1 + 16) setLabel:@"Deactivating" forState:8];
    [*(v1 + 16) whenTransitioningToState:4 callHandler:&__block_literal_global_41];
    v3 = *(v1 + 16);

    return [v3 whenTransitioningToState:1 callHandler:&__block_literal_global_46];
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

const void *__33__FigCameraViewfinderStream_init__block_invoke()
{
  result = FigEndpointManagerForCameraPreviewGetShared();
  if (result)
  {
    result = CFRetain(result);
  }

  gEndpointManager = result;
  return result;
}

- (void)dealloc
{
  currentState = [(FigStateMachine *)self->_stateMachine currentState];

  self->_delegateStorage = 0;
  if (currentState >= 2)
  {
    if (currentState != 8)
    {
      [(FigCameraViewfinderStream *)self close];
    }

    [(FigStateMachine *)self->_stateMachine transitionToState:1];
  }

  displaySource = self->_displaySource;
  if (displaySource)
  {
    CFRelease(displaySource);
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
  }

  stream = self->_stream;
  if (stream)
  {
    CFRelease(stream);
  }

  v7.receiver = self;
  v7.super_class = FigCameraViewfinderStream;
  [(FigCameraViewfinderStream *)&v7 dealloc];
}

- (void)openWithDestination:(id)destination
{
  if (dword_1ED844170)
  {
    v35 = 0;
    v34 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(FigStateMachine *)self->_stateMachine transitionToState:2 fromState:1, v20, v22])
  {
    if (gEndpointManager)
    {
      v6 = [FigWeakReference weakReferenceToObject:self];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v8 = *MEMORY[0x1E6961890];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __49__FigCameraViewfinderStream_openWithDestination___block_invoke;
      v32[3] = &unk_1E798FC90;
      v32[4] = v6;
      self->_endpointsChangedNotificationToken = [defaultCenter addObserverForName:v8 object:gEndpointManager queue:0 usingBlock:v32];
      v9 = FigVirtualDisplaySourceCameraViewfinderStreamCreate(*MEMORY[0x1E695E480], &self->_displaySource);
      if (v9)
      {
        v13 = v9;
        v35 = 0;
        v34 = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v18 = v35;
        if (os_log_type_enabled(v17, v34))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v24 = 136315650;
          v25 = "[FigCameraViewfinderStream openWithDestination:]";
          v26 = 2048;
          selfCopy2 = self;
          v28 = 1024;
          LODWORD(destinationCopy) = v13;
          LODWORD(v23) = 28;
          v21 = &v24;
          _os_log_send_and_compose_impl();
        }
      }

      else
      {
        CMBaseObject = FigVirtualDisplaySourceGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v12 = v11(CMBaseObject, 0x1F21999F0, destination);
          if (!v12)
          {
            cvs_endpointManagerSetDisplaySource(self->_displaySource);
            return;
          }

          v13 = v12;
        }

        else
        {
          v13 = 4294954514;
        }

        v35 = 0;
        v34 = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = v35;
        if (os_log_type_enabled(v14, v34))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          v24 = 136315906;
          v25 = "[FigCameraViewfinderStream openWithDestination:]";
          v26 = 2048;
          selfCopy2 = self;
          v28 = 2112;
          destinationCopy = destination;
          v30 = 1024;
          v31 = v13;
          LODWORD(v23) = 38;
          v21 = &v24;
          _os_log_send_and_compose_impl();
        }
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_16;
    }

    if (![FigCameraViewfinderStream openWithDestination:v33])
    {
      v13 = v33[0];
LABEL_16:
      [(FigStateMachine *)self->_stateMachine transitionToState:1 errorStatus:v13, v21, v23];
    }
  }
}

void __49__FigCameraViewfinderStream_openWithDestination___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  -[FigCameraViewfinderStream _handleEndpointsChanged:]([*(a1 + 32) referencedObject], a2);

  objc_autoreleasePoolPop(v4);
}

- (void)close
{
  if (dword_1ED844170)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(FigStateMachine *)self->_stateMachine transitionToState:8 fromStates:6, v6, v7]&& self->_endpoint)
  {
    displaySource = self->_displaySource;
    if (displaySource)
    {
      CFRelease(displaySource);
      self->_displaySource = 0;
    }

    cvs_endpointManagerSetDisplaySource(0);
    [(FigCameraViewfinderStream *)self _setEndpoint:?];
    stream = self->_stream;
    if (stream)
    {
      CFRelease(stream);
      self->_stream = 0;
    }
  }
}

- (int)enqueueVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (!buffer)
  {
    [FigCameraViewfinderStream enqueueVideoSampleBuffer:?];
    return time.value;
  }

  if ([(FigStateMachine *)self->_stateMachine currentState]!= 4)
  {
    [FigCameraViewfinderStream enqueueVideoSampleBuffer:?];
    return time.value;
  }

  if (self->_displaySource)
  {
    v5 = CMGetAttachment(buffer, *off_1E798A430, 0);
    memset(&rect, 0, sizeof(rect));
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetPresentationTimeStamp(&v21, buffer);
    if (v5)
    {
      CGRectMakeWithDictionaryRepresentation(v5, &rect);
      ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
      CVPixelBufferGetWidth(ImageBuffer);
      CVPixelBufferGetHeight(ImageBuffer);
      FigCaptureMetadataUtilitiesDenormalizeCropRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
      Width = v10;
      rect.origin.x = v7;
      rect.origin.y = v8;
      rect.size.width = v10;
      rect.size.height = Height;
    }

    else
    {
      v13 = CMSampleBufferGetImageBuffer(buffer);
      Width = CVPixelBufferGetWidth(v13);
      Height = CVPixelBufferGetHeight(v13);
      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      rect.size.width = Width;
      rect.size.height = Height;
      v8 = 0.0;
      v7 = 0.0;
    }

    v15 = FigVirtualDisplaySourceCameraViewfinderStreamEnqueueFrame(v7, v8, Width, Height, self->_displaySource, buffer);
    if (v15)
    {
      v20 = 0;
      v19 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      frameCounter = self->_frameCounter;
      time = v21;
      [(FigCaptureFrameCounter *)frameCounter incrementWithPTS:&time];
    }
  }

  else
  {
    LODWORD(rect.origin.x) = 0;
    LOBYTE(v21.value) = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return v15;
}

uint64_t __47__FigCameraViewfinderStream__setupStateMachine__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a2 + 48) start];
  v3 = *(a2 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_2;
  v5[3] = &unk_1E7990650;
  v5[4] = a2;
  return [v3 invokeDelegateCallbackWithBlock:v5];
}

uint64_t __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_2(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 cameraViewfinderStreamDidOpen:v5];
  }

  return result;
}

uint64_t __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if ([*(a2 + 48) started])
  {
    [*(a2 + 48) stop];
  }

  if (a3 == 2)
  {
    if (*(a2 + 40))
    {
      cvs_endpointManagerSetDisplaySource(0);
      v8 = *(a2 + 40);
      if (v8)
      {
        CFRelease(v8);
        *(a2 + 40) = 0;
      }
    }

    v9 = *(a2 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a2 + 24) = 0;
    }

    v10 = *(a2 + 32);
    if (v10)
    {
      CFRelease(v10);
      *(a2 + 32) = 0;
    }
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  *(a2 + 56) = 0;
  v11 = *(a2 + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_4;
  v13[3] = &unk_1E7990678;
  v13[4] = a2;
  v14 = a5;
  return [v11 invokeDelegateCallbackWithBlock:v13];
}

uint64_t __47__FigCameraViewfinderStream__setupStateMachine__block_invoke_4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [a2 cameraViewfinderStream:v5 didCloseWithStatus:v6];
  }

  return result;
}

void __42__FigCameraViewfinderStream__setEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  -[FigCameraViewfinderStream _handleStreamsChanged:]([*(a1 + 32) referencedObject], a2);

  objc_autoreleasePoolPop(v4);
}

- (void)_handleEndpointsChanged:(uint64_t)changed
{
  if (changed)
  {
    v26[0] = 0;
    if (dword_1ED844170)
    {
      OUTLINED_FUNCTION_2_26();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v2 = v24;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v24))
      {
        v6 = v25;
      }

      else
      {
        v6 = v25 & 0xFFFFFFFE;
      }

      if (v6)
      {
        OUTLINED_FUNCTION_15_7();
        OUTLINED_FUNCTION_4_24();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    userInfo = [a2 userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69718F0]];
    if (!v8 || v8 == *(changed + 40))
    {
      userInfo2 = [a2 userInfo];
      v10 = [objc_msgSend(userInfo2 objectForKeyedSubscript:{*MEMORY[0x1E69718F8]), "intValue"}];
      if (v10)
      {
        v16 = v10;
        OUTLINED_FUNCTION_0_8();
        LODWORD(v23) = v20;
      }

      else
      {
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v13 = v12(CMBaseObject, *MEMORY[0x1E69618A0], *MEMORY[0x1E695E480], v26);
          if (!v13)
          {
            if (dword_1ED844170)
            {
              OUTLINED_FUNCTION_2_26();
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              if (os_log_type_enabled(v14, v24))
              {
                v15 = v25;
              }

              else
              {
                v15 = v25 & 0xFFFFFFFE;
              }

              if (v15)
              {
                OUTLINED_FUNCTION_15_7();
                OUTLINED_FUNCTION_3_20();
                OUTLINED_FUNCTION_5();
                OUTLINED_FUNCTION_8_0();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (v26[0] && CFArrayGetCount(v26[0]) >= 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v26[0], 0);
              [(FigCameraViewfinderStream *)changed _setEndpoint:?];
              goto LABEL_23;
            }

            [(FigCameraViewfinderStream *)changed _setEndpoint:?];
            if ([*(changed + 16) transitionToState:1 fromStates:14])
            {
LABEL_23:
              if (v26[0])
              {
                CFRelease(v26[0]);
              }

              return;
            }

            OUTLINED_FUNCTION_2_26();
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (OUTLINED_FUNCTION_16_11(v18))
            {
              v19 = v2;
            }

            else
            {
              v19 = v2 & 0xFFFFFFFE;
            }

            if (!v19)
            {
LABEL_41:
              OUTLINED_FUNCTION_13_0();
              goto LABEL_23;
            }

            [*(changed + 16) currentStateLabel];
            [*(changed + 16) labelForState:2];
            [*(changed + 16) labelForState:4];
            [*(changed + 16) labelForState:8];
            OUTLINED_FUNCTION_15_7();
            OUTLINED_FUNCTION_4_24();
            OUTLINED_FUNCTION_5();
LABEL_37:
            OUTLINED_FUNCTION_8_0();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_14_5();
            goto LABEL_41;
          }

          v16 = v13;
        }

        else
        {
          v16 = 4294954514;
        }

        OUTLINED_FUNCTION_0_8();
        LODWORD(v23) = v16;
      }

      FigDebugAssert3();
      [*(changed + 16) transitionToState:1 errorStatus:{v16, v23}];
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_8();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2_26();
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v22 = OUTLINED_FUNCTION_16_11(v21);
    if (!OUTLINED_FUNCTION_5_24(v22))
    {
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_3_20();
    OUTLINED_FUNCTION_5();
    goto LABEL_37;
  }
}

- (void)_setEndpoint:(uint64_t)endpoint
{
  if (endpoint)
  {
    v4 = *(endpoint + 24);
    if (v4 != a2)
    {
      if (v4)
      {
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        *(endpoint + 64) = 0;
        v5 = *(endpoint + 24);
      }

      else
      {
        v5 = 0;
      }

      *(endpoint + 24) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      if (a2)
      {
        v6 = [FigWeakReference weakReferenceToObject:endpoint];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v8 = *MEMORY[0x1E6961940];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __42__FigCameraViewfinderStream__setEndpoint___block_invoke;
        v9[3] = &unk_1E798FC90;
        v9[4] = v6;
        *(endpoint + 64) = [defaultCenter addObserverForName:v8 object:a2 queue:0 usingBlock:v9];
        [(FigCameraViewfinderStream *)endpoint _updateStreams];
      }
    }
  }
}

- (void)_handleStreamsChanged:(void *)changed
{
  if (changed)
  {
    if (dword_1ED844170)
    {
      v4 = OUTLINED_FUNCTION_11_13();
      v5 = os_log_type_enabled(v4, v10);
      if (OUTLINED_FUNCTION_5_24(v5))
      {
        OUTLINED_FUNCTION_4_24();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    userInfo = [a2 userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6961910]];
    if (!v7 || ([v7 BOOLValue] & 1) != 0)
    {
      [(FigCameraViewfinderStream *)changed _updateStreams];
    }

    else
    {
      if (dword_1ED844170)
      {
        v8 = OUTLINED_FUNCTION_11_13();
        if (os_log_type_enabled(v8, v10))
        {
          v9 = v11;
        }

        else
        {
          v9 = v11 & 0xFFFFFFFE;
        }

        if (v9)
        {
          OUTLINED_FUNCTION_4_24();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_8_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [changed close];
    }
  }
}

- (void)_updateStreams
{
  if (self)
  {
    v89[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v3 || (v4 = *MEMORY[0x1E695E480], v5 = v3(CMBaseObject, *MEMORY[0x1E6962268], *MEMORY[0x1E695E480], v89), v5))
    {
      OUTLINED_FUNCTION_0_8();
      FigDebugAssert3();
      goto LABEL_38;
    }

    v13 = &unk_1ED844000;
    if (dword_1ED844170)
    {
      v14 = OUTLINED_FUNCTION_6_19();
      v15 = OUTLINED_FUNCTION_12_10(v14);
      if (OUTLINED_FUNCTION_5_24(v15))
      {
        LODWORD(v44) = 136315650;
        *(&v44 + 4) = "[FigCameraViewfinderStream _updateStreams]";
        OUTLINED_FUNCTION_3_20();
        v49 = v16;
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_14_5();
      }

      OUTLINED_FUNCTION_2_4();
      v5 = OUTLINED_FUNCTION_13_0();
    }

    v17 = v89[0];
    v18 = OUTLINED_FUNCTION_17_4(v5, v6, v7, v8, v9, v10, v11, v12, v40, v42, v44, *(&v44 + 1), v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, 0);
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0];
      v21 = *MEMORY[0x1E69625C8];
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(8 * i);
          v88[0] = 0;
          v24 = FigEndpointStreamGetCMBaseObject();
          v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v25)
          {
            v25(v24, v21, v4, v88);
          }

          v33 = FigCFEqual();
          v34 = v88[0];
          if (v33)
          {
            if (v88[0])
            {
              CFRelease(v88[0]);
            }

            goto LABEL_24;
          }

          if (v88[0])
          {
            CFRelease(v88[0]);
          }
        }

        v19 = OUTLINED_FUNCTION_17_4(v34, v26, v27, v28, v29, v30, v31, v32, v41, v43, v45, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87);
        if (v19)
        {
          continue;
        }

        break;
      }

      v23 = 0;
LABEL_24:
      v13 = &unk_1ED844000;
    }

    else
    {
      v23 = 0;
    }

    if (v13[92])
    {
      v35 = OUTLINED_FUNCTION_6_19();
      v36 = OUTLINED_FUNCTION_12_10(v35);
      if (OUTLINED_FUNCTION_5_24(v36))
      {
        OUTLINED_FUNCTION_3_20();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_14_5();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    v37 = *(self + 32);
    if (!v23 || v37)
    {
      *(self + 32) = v23;
      if (!v23)
      {
        if (!v37)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    else
    {
      [*(self + 16) transitionToState:4 fromState:2];
      if (v13[92])
      {
        v38 = OUTLINED_FUNCTION_6_19();
        v39 = OUTLINED_FUNCTION_12_10(v38);
        if (OUTLINED_FUNCTION_5_24(v39))
        {
          OUTLINED_FUNCTION_4_24();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_14_5();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0();
      }

      v37 = *(self + 32);
      *(self + 32) = v23;
    }

    CFRetain(v23);
    if (!v37)
    {
LABEL_38:
      if (v89[0])
      {
        CFRelease(v89[0]);
      }

      return;
    }

LABEL_37:
    CFRelease(v37);
    goto LABEL_38;
  }
}

- (BOOL)openWithDestination:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

- (uint64_t)enqueueVideoSampleBuffer:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)enqueueVideoSampleBuffer:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end