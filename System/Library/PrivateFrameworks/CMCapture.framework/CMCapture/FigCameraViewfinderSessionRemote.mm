@interface FigCameraViewfinderSessionRemote
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (id)_initWithRemoteViewfinderSession:(id)a3 clientAuditToken:(id *)a4 usesPhotoOutput:(BOOL)a5 usesMovieFileOutput:(BOOL)a6 delegateStorage:(id)a7;
- (uint64_t)_setupStateMachine;
- (void)_movieRecordingDidFinish;
- (void)_movieRecordingDidStart;
- (void)_serverDied;
- (void)closePreviewStream;
- (void)dealloc;
- (void)openPreviewStreamWithOptions:(id)a3;
@end

@implementation FigCameraViewfinderSessionRemote

- (uint64_t)_setupStateMachine
{
  if (result)
  {
    v1 = result;
    v2 = [[FigStateMachine alloc] initWithLabel:@"FigCameraViewfinderSessionRemoteStateMachine" stateCount:4 initialState:1 owner:result];
    *(v1 + 64) = v2;
    [(FigStateMachine *)v2 setLabel:@"Idle" forState:1];
    [OUTLINED_FUNCTION_0_28() setLabel:@"OpeningPreviewStream" forState:2];
    [OUTLINED_FUNCTION_0_28() setLabel:@"StreamingPreview" forState:4];
    [OUTLINED_FUNCTION_0_28() setLabel:@"DetachedFromServer" forState:8];
    [OUTLINED_FUNCTION_0_28() markStateAsTerminal:8];
    [OUTLINED_FUNCTION_0_28() whenTransitioningToStates:9 callHandler:&__block_literal_global_155];
    [OUTLINED_FUNCTION_0_28() whenTransitioningFromState:2 toState:4 callHandler:&__block_literal_global_161];
    v3 = OUTLINED_FUNCTION_0_28();

    return [v3 whenTransitioningToStateFails:2 callHandler:&__block_literal_global_168];
  }

  return result;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (id)_initWithRemoteViewfinderSession:(id)a3 clientAuditToken:(id *)a4 usesPhotoOutput:(BOOL)a5 usesMovieFileOutput:(BOOL)a6 delegateStorage:(id)a7
{
  v15.receiver = self;
  v15.super_class = FigCameraViewfinderSessionRemote;
  v12 = [(FigCameraViewfinderSession *)&v15 initSubclass];
  if (v12)
  {
    *(v12 + 2) = a3;
    v14 = *&a4->var0[4];
    *(v12 + 24) = *a4->var0;
    *(v12 + 40) = v14;
    v12[56] = a5;
    v12[57] = a6;
    *(v12 + 1) = a7;
    *(v12 + 19) = 0;
    [(FigCameraViewfinderSessionRemote *)v12 _setupStateMachine];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCameraViewfinderSessionRemote;
  [(FigCameraViewfinderSession *)&v3 dealloc];
}

- (void)openPreviewStreamWithOptions:(id)a3
{
  if (dword_1ED8446F0)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(FigStateMachine *)self->_stateMachine transitionToState:2 fromState:1, v6, v7])
  {
    [(FigCameraViewfinderSessionRemoteObject *)self->_remoteViewfinderSession openPreviewStreamWithOptions:a3];
  }
}

- (void)closePreviewStream
{
  v3 = [(FigStateMachine *)self->_stateMachine currentState];
  if (v3 == 4 || v3 == 2)
  {
    remoteViewfinderSession = self->_remoteViewfinderSession;

    [(FigCameraViewfinderSessionRemoteObject *)remoteViewfinderSession closePreviewStream];
  }
}

uint64_t __54__FigCameraViewfinderSessionRemote__setupStateMachine__block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3 != 1)
  {
    v11 = v5;
    v12 = v6;
    v7 = *(a2 + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__FigCameraViewfinderSessionRemote__setupStateMachine__block_invoke_2;
    v9[3] = &unk_1E79908B8;
    v9[4] = a2;
    v10 = a5;
    return [v7 invokeDelegateCallbackWithBlock:v9];
  }

  return result;
}

uint64_t __54__FigCameraViewfinderSessionRemote__setupStateMachine__block_invoke_2(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (dword_1ED8446F0)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [a2 cameraViewfinderSession:*(a1 + 32) previewStreamDidCloseWithStatus:{*(a1 + 40), v6, v7}];
  }

  return result;
}

uint64_t __54__FigCameraViewfinderSessionRemote__setupStateMachine__block_invoke_159(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__FigCameraViewfinderSessionRemote__setupStateMachine__block_invoke_2_162;
  v4[3] = &unk_1E79908E0;
  v4[4] = a2;
  return [v2 invokeDelegateCallbackWithBlock:v4];
}

uint64_t __54__FigCameraViewfinderSessionRemote__setupStateMachine__block_invoke_2_162(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (dword_1ED8446F0)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [a2 cameraViewfinderSessionPreviewStreamDidOpen:{*(a1 + 32), v6, v7}];
  }

  return result;
}

uint64_t __54__FigCameraViewfinderSessionRemote__setupStateMachine__block_invoke_165(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 8)
  {
    v7[5] = v3;
    v7[6] = v4;
    v5 = *(a2 + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__FigCameraViewfinderSessionRemote__setupStateMachine__block_invoke_2_169;
    v7[3] = &unk_1E79908E0;
    v7[4] = a2;
    return [v5 invokeDelegateCallbackWithBlock:v7];
  }

  return result;
}

uint64_t __54__FigCameraViewfinderSessionRemote__setupStateMachine__block_invoke_2_169(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (dword_1ED8446F0)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [a2 cameraViewfinderSession:*(a1 + 32) previewStreamDidCloseWithStatus:{4294951005, v6, v7}];
  }

  return result;
}

- (void)_serverDied
{
  [(FigStateMachine *)self->_stateMachine transitionToState:8 errorStatus:4294951004];

  [(FigCameraViewfinderSessionRemote *)self _movieRecordingDidFinish];
}

- (void)_movieRecordingDidStart
{
  os_unfair_lock_lock(&self->_recordingMovieLock);
  recordingMovie = self->_recordingMovie;
  self->_recordingMovie = 1;
  os_unfair_lock_unlock(&self->_recordingMovieLock);
  if (!recordingMovie)
  {
    delegateStorage = self->super._delegateStorage;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__FigCameraViewfinderSessionRemote__movieRecordingDidStart__block_invoke;
    v5[3] = &unk_1E7990828;
    v5[4] = self;
    [(FigDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v5];
  }
}

uint64_t __59__FigCameraViewfinderSessionRemote__movieRecordingDidStart__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (dword_1ED8446F0)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [a2 cameraViewfinderSessionDidStartMovieRecording:{*(a1 + 32), v6, v7}];
  }

  return result;
}

- (void)_movieRecordingDidFinish
{
  os_unfair_lock_lock(&self->_recordingMovieLock);
  recordingMovie = self->_recordingMovie;
  self->_recordingMovie = 0;
  os_unfair_lock_unlock(&self->_recordingMovieLock);
  if (recordingMovie)
  {
    delegateStorage = self->super._delegateStorage;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__FigCameraViewfinderSessionRemote__movieRecordingDidFinish__block_invoke;
    v5[3] = &unk_1E7990828;
    v5[4] = self;
    [(FigDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v5];
  }
}

uint64_t __60__FigCameraViewfinderSessionRemote__movieRecordingDidFinish__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (dword_1ED8446F0)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [a2 cameraViewfinderSessionDidFinishMovieRecording:{*(a1 + 32), v6, v7}];
  }

  return result;
}

@end