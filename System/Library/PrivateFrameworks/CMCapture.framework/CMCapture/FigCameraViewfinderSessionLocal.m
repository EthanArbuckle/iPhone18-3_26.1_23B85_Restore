@interface FigCameraViewfinderSessionLocal
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (id)_initWithOwningViewfinder:(id)a3 captureSessionProxy:(id)a4 delegateStorage:(id)a5;
- (uint64_t)_closePreviewStream;
- (uint64_t)_setupStateMachine;
- (void)_captureSessionDidCapturePhotoWithStatus:(int)a3 thumbnailData:(id)a4 timestamp:(id *)a5;
- (void)_captureSessionDidFinishMovieRecording;
- (void)_captureSessionDidStartMovieRecording;
- (void)_captureSessionDidStop;
- (void)cameraViewfinderStream:(id)a3 didCloseWithStatus:(int)a4;
- (void)cameraViewfinderStreamDidOpen:(id)a3;
- (void)captureSessionPreviewTapDidClose:(id)a3;
- (void)captureSessionPreviewTapDidOpen:(id)a3;
- (void)closePreviewStream;
- (void)dealloc;
- (void)openPreviewStreamWithOptions:(id)a3;
@end

@implementation FigCameraViewfinderSessionLocal

- (uint64_t)_setupStateMachine
{
  if (result)
  {
    v1 = result;
    v2 = [[FigStateMachine alloc] initWithLabel:@"FigCameraViewfinderSessionLocalStateMachine" stateCount:7 initialState:1 owner:result];
    *(v1 + 24) = v2;
    [(FigStateMachine *)v2 setLabel:@"Idle" forState:1];
    [OUTLINED_FUNCTION_0_54() setLabel:@"OpeningPreviewStream" forState:2];
    [OUTLINED_FUNCTION_0_54() setLabel:@"OpeningPreviewTap" forState:4];
    [OUTLINED_FUNCTION_0_54() setLabel:@"StreamingPreview" forState:8];
    [OUTLINED_FUNCTION_0_54() setLabel:@"ClosingPreviewTap" forState:16];
    [OUTLINED_FUNCTION_0_54() setLabel:@"ClosingPreviewStream" forState:32];
    [OUTLINED_FUNCTION_0_54() setLabel:@"SessionEnded" forState:64];
    [OUTLINED_FUNCTION_0_54() markStateAsTerminal:64];
    [OUTLINED_FUNCTION_0_54() setPerformsAtomicStateTransitions:0];
    [OUTLINED_FUNCTION_0_54() whenTransitioningToState:8 callHandler:&__block_literal_global_61];
    [OUTLINED_FUNCTION_0_54() whenTransitioningToStates:65 callHandler:&__block_literal_global_134];
    v3 = OUTLINED_FUNCTION_0_54();

    return [v3 whenTransitioningToStateFails:2 callHandler:&__block_literal_global_139];
  }

  return result;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  result = self->_captureSessionProxy;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result clientAuditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (id)_initWithOwningViewfinder:(id)a3 captureSessionProxy:(id)a4 delegateStorage:(id)a5
{
  if (a4)
  {
    v12.receiver = self;
    v12.super_class = FigCameraViewfinderSessionLocal;
    v8 = [(FigCameraViewfinderSession *)&v12 initSubclass];
    v9 = v8;
    if (v8)
    {
      [(FigCameraViewfinderSessionLocal *)v8 _setupStateMachine];
      objc_storeWeak(v9 + 2, a3);
      v9[5] = a4;
      v9[6] = [a4 identifier];
      v9[1] = a5;
      v9[8] = dispatch_queue_create("com.apple.coremedia.cameraviewfindersession.previewstream", 0);
      v10 = objc_alloc_init(FigCameraViewfinderStream);
      v9[7] = v10;
      [(FigCameraViewfinderStream *)v10 setDelegate:v9 queue:v9[8]];
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_viewfinder, 0);

  [(FigCameraViewfinderStream *)self->_previewStream setDelegate:0 queue:0];
  v3.receiver = self;
  v3.super_class = FigCameraViewfinderSessionLocal;
  [(FigCameraViewfinderSession *)&v3 dealloc];
}

- (void)openPreviewStreamWithOptions:(id)a3
{
  if (dword_1ED844150)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  previewStreamQueue = self->_previewStreamQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__FigCameraViewfinderSessionLocal_openPreviewStreamWithOptions___block_invoke;
  v7[3] = &unk_1E798F898;
  v7[4] = self;
  v7[5] = a3;
  fig_dispatch_async_autoreleasepool(previewStreamQueue, v7);
}

uint64_t __64__FigCameraViewfinderSessionLocal_openPreviewStreamWithOptions___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) transitionToState:2 fromState:1];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 56);
    v5 = [v3 objectForKeyedSubscript:@"PreviewStreamDestination"];

    return [v4 openWithDestination:v5];
  }

  return result;
}

- (void)closePreviewStream
{
  previewStreamQueue = self->_previewStreamQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__FigCameraViewfinderSessionLocal_closePreviewStream__block_invoke;
  v3[3] = &unk_1E798F870;
  v3[4] = self;
  fig_dispatch_async_autoreleasepool(previewStreamQueue, v3);
}

- (void)cameraViewfinderStreamDidOpen:(id)a3
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [FigCameraViewfinderSessionLocal cameraViewfinderStreamDidOpen:];
  }

  if ([(FigStateMachine *)self->_stateMachine transitionToState:4 fromState:2])
  {
    v4 = [(FigCaptureSessionProxy *)self->_captureSessionProxy openPreviewTapWithDelegate:self];
    if (v4)
    {
      v5 = v4;
      if ([(FigStateMachine *)self->_stateMachine transitionToState:32 fromState:4])
      {
        self->_previewStreamClosedErrorStatus = v5;
        previewStream = self->_previewStream;

        [(FigCameraViewfinderStream *)previewStream close];
      }
    }
  }
}

- (void)cameraViewfinderStream:(id)a3 didCloseWithStatus:(int)a4
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [FigCameraViewfinderSessionLocal cameraViewfinderStream:didCloseWithStatus:];
  }

  v6 = [(FigStateMachine *)self->_stateMachine currentState];
  if (v6 <= 7)
  {
    if (v6 == 2)
    {
LABEL_14:
      if (self->_ended)
      {
        v9 = 64;
      }

      else
      {
        v9 = 1;
      }

      if (self->_previewStreamClosedErrorStatus)
      {
        previewStreamClosedErrorStatus = self->_previewStreamClosedErrorStatus;
      }

      else
      {
        previewStreamClosedErrorStatus = a4;
      }

      self->_previewStreamClosedErrorStatus = previewStreamClosedErrorStatus;
      stateMachine = self->_stateMachine;

      [(FigStateMachine *)stateMachine transitionToState:v9 errorStatus:?];
      return;
    }

    if (v6 != 4)
    {
      return;
    }

LABEL_10:
    if ([(FigStateMachine *)self->_stateMachine transitionToState:16 fromStates:12])
    {
      self->_previewStreamClosed = 1;
      self->_previewStreamClosedErrorStatus = a4;
      v7 = self;
      captureSessionProxy = self->_captureSessionProxy;

      [(FigCaptureSessionProxy *)captureSessionProxy closePreviewTap];
    }

    return;
  }

  switch(v6)
  {
    case 8:
      goto LABEL_10;
    case 16:
      self->_previewStreamClosed = 1;
      self->_previewStreamClosedErrorStatus = a4;
      return;
    case 32:
      goto LABEL_14;
  }
}

- (void)captureSessionPreviewTapDidOpen:(id)a3
{
  previewStreamQueue = self->_previewStreamQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__FigCameraViewfinderSessionLocal_captureSessionPreviewTapDidOpen___block_invoke;
  v4[3] = &unk_1E798F870;
  v4[4] = self;
  fig_dispatch_async_autoreleasepool(previewStreamQueue, v4);
}

- (void)captureSessionPreviewTapDidClose:(id)a3
{
  previewStreamQueue = self->_previewStreamQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__FigCameraViewfinderSessionLocal_captureSessionPreviewTapDidClose___block_invoke;
  v4[3] = &unk_1E798F870;
  v4[4] = self;
  fig_dispatch_async_autoreleasepool(previewStreamQueue, v4);
}

void __68__FigCameraViewfinderSessionLocal_captureSessionPreviewTapDidClose___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) currentState] == 16)
  {
    v2 = *(a1 + 32);
    if (*(v2 + 72) == 1)
    {
      if (*(v2 + 32))
      {
        v3 = 64;
      }

      else
      {
        v3 = 1;
      }

      [*(v2 + 24) transitionToState:v3 errorStatus:*(v2 + 76)];
    }

    else if ([*(v2 + 24) transitionToState:32 fromState:16])
    {
      [*(*(a1 + 32) + 56) close];
    }
  }

  v4 = *(a1 + 32);
}

- (void)_captureSessionDidStop
{
  previewStreamQueue = self->_previewStreamQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__FigCameraViewfinderSessionLocal__captureSessionDidStop__block_invoke;
  v3[3] = &unk_1E798F870;
  v3[4] = self;
  fig_dispatch_async_autoreleasepool(previewStreamQueue, v3);
}

uint64_t __57__FigCameraViewfinderSessionLocal__captureSessionDidStop__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  result = [*(*(a1 + 32) + 24) transitionToState:64 fromState:1];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [(FigCameraViewfinderSessionLocal *)v3 _closePreviewStream];
  }

  return result;
}

- (void)_captureSessionDidCapturePhotoWithStatus:(int)a3 thumbnailData:(id)a4 timestamp:(id *)a5
{
  if (!self->_ended)
  {
    delegateStorage = self->super._delegateStorage;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __100__FigCameraViewfinderSessionLocal__captureSessionDidCapturePhotoWithStatus_thumbnailData_timestamp___block_invoke;
    v6[3] = &unk_1E7997578;
    v7 = a3;
    v6[4] = self;
    v6[5] = a4;
    v8 = *a5;
    [(FigDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v6];
  }
}

uint64_t __100__FigCameraViewfinderSessionLocal__captureSessionDidCapturePhotoWithStatus_thumbnailData_timestamp___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 52);
    v9 = *(a1 + 68);
    return [a2 cameraViewfinderSession:v6 didCapturePhotoWithStatus:v5 thumbnailData:v7 timestamp:&v8];
  }

  return result;
}

- (void)_captureSessionDidStartMovieRecording
{
  if (!self->_ended)
  {
    delegateStorage = self->super._delegateStorage;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __72__FigCameraViewfinderSessionLocal__captureSessionDidStartMovieRecording__block_invoke;
    v3[3] = &unk_1E79908E0;
    v3[4] = self;
    [(FigDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v3];
  }
}

uint64_t __72__FigCameraViewfinderSessionLocal__captureSessionDidStartMovieRecording__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 cameraViewfinderSessionDidStartMovieRecording:v5];
  }

  return result;
}

- (void)_captureSessionDidFinishMovieRecording
{
  if (!self->_ended)
  {
    delegateStorage = self->super._delegateStorage;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __73__FigCameraViewfinderSessionLocal__captureSessionDidFinishMovieRecording__block_invoke;
    v3[3] = &unk_1E79908E0;
    v3[4] = self;
    [(FigDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v3];
  }
}

uint64_t __73__FigCameraViewfinderSessionLocal__captureSessionDidFinishMovieRecording__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 cameraViewfinderSessionDidFinishMovieRecording:v5];
  }

  return result;
}

uint64_t __53__FigCameraViewfinderSessionLocal__setupStateMachine__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__FigCameraViewfinderSessionLocal__setupStateMachine__block_invoke_2;
  v4[3] = &unk_1E79908E0;
  v4[4] = a2;
  return [v2 invokeDelegateCallbackWithBlock:v4];
}

uint64_t __53__FigCameraViewfinderSessionLocal__setupStateMachine__block_invoke_2(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 cameraViewfinderSessionPreviewStreamDidOpen:v5];
  }

  return result;
}

uint64_t __53__FigCameraViewfinderSessionLocal__setupStateMachine__block_invoke_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(a2 + 72) = 0;
  *(a2 + 76) = 0;
  if (a3 != 1)
  {
    v12 = v5;
    v13 = v6;
    if (a5 == -50)
    {
      v7 = -16290;
    }

    else
    {
      v7 = a5;
    }

    v8 = *(a2 + 8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__FigCameraViewfinderSessionLocal__setupStateMachine__block_invoke_4;
    v10[3] = &unk_1E79908B8;
    v10[4] = a2;
    v11 = v7;
    return [v8 invokeDelegateCallbackWithBlock:v10];
  }

  return result;
}

uint64_t __53__FigCameraViewfinderSessionLocal__setupStateMachine__block_invoke_4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [a2 cameraViewfinderSession:v5 previewStreamDidCloseWithStatus:v6];
  }

  return result;
}

uint64_t __53__FigCameraViewfinderSessionLocal__setupStateMachine__block_invoke_5(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 64)
  {
    v7[5] = v3;
    v7[6] = v4;
    v5 = *(a2 + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__FigCameraViewfinderSessionLocal__setupStateMachine__block_invoke_6;
    v7[3] = &unk_1E79908E0;
    v7[4] = a2;
    return [v5 invokeDelegateCallbackWithBlock:v7];
  }

  return result;
}

uint64_t __53__FigCameraViewfinderSessionLocal__setupStateMachine__block_invoke_6(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 cameraViewfinderSession:v5 previewStreamDidCloseWithStatus:4294951005];
  }

  return result;
}

- (uint64_t)_closePreviewStream
{
  if (result)
  {
    v1 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    result = [OUTLINED_FUNCTION_0_54() currentState];
    if (result == 8 || result == 4)
    {
      result = [OUTLINED_FUNCTION_0_54() transitionToState:16 fromStates:12];
      if (result)
      {
        v3 = v1;
        v4 = v1[5];

        return [v4 closePreviewTap];
      }
    }

    else if (result == 2)
    {
      result = [OUTLINED_FUNCTION_0_54() transitionToState:32 fromState:2];
      if (result)
      {
        v5 = v1[7];

        return [v5 close];
      }
    }
  }

  return result;
}

@end