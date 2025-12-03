@interface FigCameraViewfinderRemote
+ (id)cameraViewfinder;
+ (id)remoteObjectCallbacksInterface;
+ (void)initialize;
- (FigCameraViewfinderRemote)init;
- (uint64_t)_setupStateMachine;
- (uint64_t)_teardownRemoteViewfinderAndInvalidateXPCConnection;
- (void)_bringupXPCConnectionAndStartRemoteViewfinderWithOptions:(uint64_t)options;
- (void)_handleServerDeathWithOptions:(int)options reconnect:;
- (void)dealloc;
- (void)startWithOptions:(id)options;
- (void)stop;
- (void)viewfinderSession:(int64_t)session didCapturePhotoWithStatus:(int)status thumbnailData:(id)data timestamp:(id *)timestamp;
- (void)viewfinderSession:(int64_t)session previewStreamDidCloseWithStatus:(int)status;
- (void)viewfinderSessionDidBegin:(id)begin withIdentifier:(int64_t)identifier clientAuditTokenData:(id)data usesPhotoOutput:(BOOL)output usesMovieFileOutput:(BOOL)fileOutput;
- (void)viewfinderSessionDidEnd;
- (void)viewfinderSessionDidFinishMovieRecording:(int64_t)recording;
- (void)viewfinderSessionDidStartMovieRecording:(int64_t)recording;
- (void)viewfinderSessionPreviewStreamDidOpen:(int64_t)open;
- (void)viewfinderSessionWillBegin:(id)begin withIdentifier:(int64_t)identifier clientAuditTokenData:(id)data usesPhotoOutput:(BOOL)output usesMovieFileOutput:(BOOL)fileOutput;
@end

@implementation FigCameraViewfinderRemote

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)cameraViewfinder
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (FigCameraViewfinderRemote)init
{
  v4.receiver = self;
  v4.super_class = FigCameraViewfinderRemote;
  v2 = [(FigCameraViewfinder *)&v4 init];
  if (v2)
  {
    v2->_weakSessionTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v2->_connectionManagementQueue = dispatch_queue_create("com.apple.coremedia.cameraviewfinderremote.connectionmanagement", 0);
    [(FigCameraViewfinderRemote *)v2 _setupStateMachine];
  }

  return v2;
}

- (uint64_t)_setupStateMachine
{
  if (result)
  {
    v1 = result;
    v2 = [[FigStateMachine alloc] initWithLabel:@"FigCameraViewfinderRemoteStateMachine" stateCount:2 initialState:1 owner:result];
    *(v1 + 32) = v2;
    [(FigStateMachine *)v2 setLabel:@"Idle" forState:1];
    [*(v1 + 32) setLabel:@"Running" forState:2];
    v3 = *(v1 + 32);

    return [v3 setPerformsAtomicStateTransitions:0];
  }

  return result;
}

+ (id)remoteObjectCallbacksInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F225F018];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F22C44A8];
  [v2 setInterface:v3 forSelector:sel_viewfinderSessionWillBegin_withIdentifier_clientAuditTokenData_usesPhotoOutput_usesMovieFileOutput_ argumentIndex:0 ofReply:0];
  [v2 setInterface:v3 forSelector:sel_viewfinderSessionDidBegin_withIdentifier_clientAuditTokenData_usesPhotoOutput_usesMovieFileOutput_ argumentIndex:0 ofReply:0];
  return v2;
}

- (void)dealloc
{
  [(FigNSXPCConnection *)self->_connection invalidate];

  v3.receiver = self;
  v3.super_class = FigCameraViewfinderRemote;
  [(FigCameraViewfinder *)&v3 dealloc];
}

- (void)startWithOptions:(id)options
{
  if ([FigCameraViewfinder clientIsAllowedToUseCameraViewfinder:v14, FigCaptureGetCurrentProcessAuditToken(v14)])
  {
    connectionManagementQueue = self->_connectionManagementQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__FigCameraViewfinderRemote_startWithOptions___block_invoke;
    v9[3] = &unk_1E798F898;
    v9[4] = self;
    v9[5] = options;
    fig_dispatch_async_autoreleasepool(connectionManagementQueue, v9);
  }

  else
  {
    v16 = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = v16;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v15))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v10 = 136315394;
      v11 = "[FigCameraViewfinderRemote startWithOptions:]";
      v12 = 2048;
      selfCopy = self;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __46__FigCameraViewfinderRemote_startWithOptions___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) transitionToState:2 fromState:1])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [(FigCameraViewfinderRemote *)v2 _bringupXPCConnectionAndStartRemoteViewfinderWithOptions:v3];
  }
}

- (void)stop
{
  connectionManagementQueue = self->_connectionManagementQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__FigCameraViewfinderRemote_stop__block_invoke;
  v3[3] = &unk_1E798F870;
  v3[4] = self;
  fig_dispatch_async_autoreleasepool(connectionManagementQueue, v3);
}

uint64_t __33__FigCameraViewfinderRemote_stop__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) transitionToState:1 fromState:2];
  if (result)
  {
    [(FigCameraViewfinderRemote *)*(a1 + 32) _teardownRemoteViewfinderAndInvalidateXPCConnection];
    [*(*(a1 + 32) + 40) blockUntilInvalidateHandlerHasBeenCalled];
    v3 = *(a1 + 32);

    *(v3 + 40) = 0;
    v4 = *(a1 + 32);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [*(v4 + 24) objectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) _clientDisconnectedFromServer];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v7);
    }

    return [*(a1 + 32) viewfinderSessionDidEnd];
  }

  return result;
}

- (void)viewfinderSessionWillBegin:(id)begin withIdentifier:(int64_t)identifier clientAuditTokenData:(id)data usesPhotoOutput:(BOOL)output usesMovieFileOutput:(BOOL)fileOutput
{
  fileOutputCopy = fileOutput;
  outputCopy = output;
  v33 = 0u;
  v34 = 0u;
  [data getBytes:&v33 length:32];
  v12 = [FigCameraViewfinderSessionRemote alloc];
  delegateStorage = self->super._delegateStorage;
  v30[0] = v33;
  v30[1] = v34;
  v14 = [(FigCameraViewfinderSessionRemote *)v12 _initWithRemoteViewfinderSession:begin clientAuditToken:v30 usesPhotoOutput:outputCopy usesMovieFileOutput:fileOutputCopy delegateStorage:delegateStorage];
  -[NSMapTable setObject:forKey:](self->_weakSessionTable, "setObject:forKey:", v14, [MEMORY[0x1E696AD98] numberWithLongLong:identifier]);
  if (dword_1ED8446F0)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = v32;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v31))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v22 = 136315906;
      v23 = "[FigCameraViewfinderRemote viewfinderSessionWillBegin:withIdentifier:clientAuditTokenData:usesPhotoOutput:usesMovieFileOutput:]";
      v24 = 2048;
      selfCopy = self;
      v26 = 2114;
      delegate = [(FigCameraViewfinder *)self delegate];
      v28 = 2114;
      v29 = v14;
      LODWORD(v20) = 42;
      v19 = &v22;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18 = self->super._delegateStorage;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __128__FigCameraViewfinderRemote_viewfinderSessionWillBegin_withIdentifier_clientAuditTokenData_usesPhotoOutput_usesMovieFileOutput___block_invoke;
  v21[3] = &unk_1E7990800;
  v21[4] = self;
  v21[5] = v14;
  [(FigDelegateStorage *)v18 invokeDelegateCallbackWithBlock:v21, v19, v20];
}

uint64_t __128__FigCameraViewfinderRemote_viewfinderSessionWillBegin_withIdentifier_clientAuditTokenData_usesPhotoOutput_usesMovieFileOutput___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    [*(a1 + 32) setDelegateActiveViewfinderSession:*(a1 + 40)];
    if (dword_1ED8446F0)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [a2 cameraViewfinder:*(a1 + 32) viewfinderSessionWillBegin:{*(a1 + 40), v6, v7}];
  }

  return result;
}

- (void)viewfinderSessionDidBegin:(id)begin withIdentifier:(int64_t)identifier clientAuditTokenData:(id)data usesPhotoOutput:(BOOL)output usesMovieFileOutput:(BOOL)fileOutput
{
  fileOutputCopy = fileOutput;
  outputCopy = output;
  v13 = -[NSMapTable objectForKey:](self->_weakSessionTable, "objectForKey:", [MEMORY[0x1E696AD98] numberWithLongLong:identifier]);
  if (!v13)
  {
    v27 = 0u;
    v28 = 0u;
    [data getBytes:&v27 length:32];
    v14 = [FigCameraViewfinderSessionRemote alloc];
    delegateStorage = self->super._delegateStorage;
    *v24 = v27;
    *&v24[16] = v28;
    v13 = [(FigCameraViewfinderSessionRemote *)v14 _initWithRemoteViewfinderSession:begin clientAuditToken:v24 usesPhotoOutput:outputCopy usesMovieFileOutput:fileOutputCopy delegateStorage:delegateStorage];
    -[NSMapTable setObject:forKey:](self->_weakSessionTable, "setObject:forKey:", v13, [MEMORY[0x1E696AD98] numberWithLongLong:identifier]);
  }

  if (dword_1ED8446F0)
  {
    v30 = 0;
    v29 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = v30;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v29))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      delegate = [(FigCameraViewfinder *)self delegate];
      *v24 = 136315906;
      *&v24[4] = "[FigCameraViewfinderRemote viewfinderSessionDidBegin:withIdentifier:clientAuditTokenData:usesPhotoOutput:usesMovieFileOutput:]";
      *&v24[12] = 2048;
      *&v24[14] = self;
      *&v24[22] = 2114;
      *&v24[24] = delegate;
      v25 = 2114;
      v26 = v13;
      LODWORD(v22) = 42;
      v21 = v24;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v20 = self->super._delegateStorage;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __127__FigCameraViewfinderRemote_viewfinderSessionDidBegin_withIdentifier_clientAuditTokenData_usesPhotoOutput_usesMovieFileOutput___block_invoke;
  v23[3] = &unk_1E7990800;
  v23[4] = self;
  v23[5] = v13;
  [(FigDelegateStorage *)v20 invokeDelegateCallbackWithBlock:v23, v21, v22];
}

uint64_t __127__FigCameraViewfinderRemote_viewfinderSessionDidBegin_withIdentifier_clientAuditTokenData_usesPhotoOutput_usesMovieFileOutput___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) setDelegateActiveViewfinderSession:*(a1 + 40)];
  if (dword_1ED8446F0)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [a2 cameraViewfinder:*(a1 + 32) viewfinderSessionDidBegin:{*(a1 + 40), v6, v7}];
}

- (void)viewfinderSessionDidEnd
{
  if (dword_1ED8446F0)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  delegateStorage = self->super._delegateStorage;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__FigCameraViewfinderRemote_viewfinderSessionDidEnd__block_invoke;
  v7[3] = &unk_1E7990828;
  v7[4] = self;
  [(FigDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v7, v5, v6];
}

void __52__FigCameraViewfinderRemote_viewfinderSessionDidEnd__block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) delegateActiveViewfinderSession];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) setDelegateActiveViewfinderSession:0];
    if (dword_1ED8446F0)
    {
      v10 = 0;
      v9 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [a2 cameraViewfinder:*(a1 + 32) viewfinderSessionDidEnd:{v5, v7, v8}];
  }
}

- (void)viewfinderSession:(int64_t)session didCapturePhotoWithStatus:(int)status thumbnailData:(id)data timestamp:(id *)timestamp
{
  v10 = -[NSMapTable objectForKey:](self->_weakSessionTable, "objectForKey:", [MEMORY[0x1E696AD98] numberWithLongLong:session]);
  if (v10)
  {
    delegateStorage = self->super._delegateStorage;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__FigCameraViewfinderRemote_viewfinderSession_didCapturePhotoWithStatus_thumbnailData_timestamp___block_invoke;
    v12[3] = &unk_1E7990850;
    statusCopy = status;
    v12[4] = self;
    v12[5] = v10;
    v12[6] = data;
    v14 = *&timestamp->var0;
    var3 = timestamp->var3;
    [(FigDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v12];
  }
}

uint64_t __97__FigCameraViewfinderRemote_viewfinderSession_didCapturePhotoWithStatus_thumbnailData_timestamp___block_invoke(uint64_t a1, void *a2)
{
  if (dword_1ED8446F0)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = *(a1 + 60);
  v12 = *(a1 + 76);
  return [a2 cameraViewfinderSession:v6 didCapturePhotoWithStatus:v5 thumbnailData:v7 timestamp:{&v11, v9, v10}];
}

- (void)viewfinderSessionPreviewStreamDidOpen:(int64_t)open
{
  v3 = -[NSMapTable objectForKey:](self->_weakSessionTable, "objectForKey:", [MEMORY[0x1E696AD98] numberWithLongLong:open]);

  [v3 _previewStreamDidOpen];
}

- (void)viewfinderSession:(int64_t)session previewStreamDidCloseWithStatus:(int)status
{
  v4 = *&status;
  v5 = -[NSMapTable objectForKey:](self->_weakSessionTable, "objectForKey:", [MEMORY[0x1E696AD98] numberWithLongLong:session]);

  [v5 _previewStreamDidCloseWithStatus:v4];
}

- (void)viewfinderSessionDidStartMovieRecording:(int64_t)recording
{
  v3 = -[NSMapTable objectForKey:](self->_weakSessionTable, "objectForKey:", [MEMORY[0x1E696AD98] numberWithLongLong:recording]);

  [v3 _movieRecordingDidStart];
}

- (void)viewfinderSessionDidFinishMovieRecording:(int64_t)recording
{
  v3 = -[NSMapTable objectForKey:](self->_weakSessionTable, "objectForKey:", [MEMORY[0x1E696AD98] numberWithLongLong:recording]);

  [v3 _movieRecordingDidFinish];
}

void __86__FigCameraViewfinderRemote__bringupXPCConnectionAndStartRemoteViewfinderWithOptions___block_invoke(int8x16_t *a1)
{
  v1 = vextq_s8(a1[2], a1[2], 8uLL);
  v2 = *(a1[2].i64[0] + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __86__FigCameraViewfinderRemote__bringupXPCConnectionAndStartRemoteViewfinderWithOptions___block_invoke_2;
  v3[3] = &unk_1E798FD58;
  v4 = v1;
  v5 = a1[3].i64[0];
  fig_dispatch_async_autoreleasepool(v2, v3);
}

void __86__FigCameraViewfinderRemote__bringupXPCConnectionAndStartRemoteViewfinderWithOptions___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) explicitlyInvalidated] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);

    [(FigCameraViewfinderRemote *)v2 _handleServerDeathWithOptions:v3 reconnect:0];
  }
}

void __86__FigCameraViewfinderRemote__bringupXPCConnectionAndStartRemoteViewfinderWithOptions___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __86__FigCameraViewfinderRemote__bringupXPCConnectionAndStartRemoteViewfinderWithOptions___block_invoke_4;
  v3[3] = &unk_1E798F898;
  v4 = v1;
  fig_dispatch_async_autoreleasepool(v2, v3);
}

- (void)_bringupXPCConnectionAndStartRemoteViewfinderWithOptions:(uint64_t)options
{
  if (options)
  {
    v4 = [[FigNSXPCConnection alloc] initWithMachServiceName:@"com.apple.coremedia.cameraviewfinder" options:4096];
    -[FigNSXPCConnection setRemoteObjectInterface:](v4, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F22C4508]);
    -[FigNSXPCConnection setExportedInterface:](v4, "setExportedInterface:", [objc_opt_class() remoteObjectCallbacksInterface]);
    [(FigNSXPCConnection *)v4 setExportedObject:options];
    v5 = FigDispatchQueueCreateWithPriority();
    [(FigNSXPCConnection *)v4 _setQueue:v5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__FigCameraViewfinderRemote__bringupXPCConnectionAndStartRemoteViewfinderWithOptions___block_invoke;
    v8[3] = &unk_1E798FD58;
    v8[4] = options;
    v8[5] = v4;
    v8[6] = a2;
    [(FigNSXPCConnection *)v4 setInvalidationHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __86__FigCameraViewfinderRemote__bringupXPCConnectionAndStartRemoteViewfinderWithOptions___block_invoke_3;
    v7[3] = &unk_1E798F898;
    v7[4] = options;
    v7[5] = a2;
    [(FigNSXPCConnection *)v4 setInterruptionHandler:v7];
    *(options + 40) = v4;
    [(FigNSXPCConnection *)v4 resume];
    v6 = [(FigNSXPCConnection *)v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_27];
    *(options + 56) = v6;
    [v6 startWithOptions:a2];
  }
}

- (uint64_t)_teardownRemoteViewfinderAndInvalidateXPCConnection
{
  if (result)
  {
    v1 = result;
    [*(result + 56) stop];

    *(v1 + 56) = 0;
    v2 = *(v1 + 40);

    return [v2 invalidate];
  }

  return result;
}

- (void)_handleServerDeathWithOptions:(int)options reconnect:
{
  if (self)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      v14 = v3;
      LODWORD(v13) = 0;
      FigDebugAssert3();
    }

    if ([self[4] currentState] == 2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      objectEnumerator = [self[3] objectEnumerator];
      v8 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            [*(*(&v16 + 1) + 8 * v11++) _serverDied];
          }

          while (v9 != v11);
          v9 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v15 count:16];
        }

        while (v9);
      }

      [self viewfinderSessionDidEnd];
      if (options)
      {

        v12 = [self[5] remoteObjectProxyWithErrorHandler:&__block_literal_global_122];
        self[7] = v12;
        [v12 startWithOptions:a2];
      }

      else if ([self[4] transitionToState:1 fromState:2])
      {
        [self[7] stop];

        self[7] = 0;
        [self[5] invalidate];

        self[5] = 0;
      }
    }
  }
}

@end