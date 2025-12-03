@interface FigCameraViewfinderServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FigCameraViewfinderServer)init;
- (id)osStatePropertyList;
- (uint64_t)_remoteViewfinderForLocalViewfinder:(_DWORD *)viewfinder remotePID:;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionWillBegin:(id)begin;
- (void)cameraViewfinderSession:(id)session didCapturePhotoWithStatus:(int)status thumbnailData:(id)data timestamp:(id *)timestamp;
- (void)cameraViewfinderSession:(id)session previewStreamDidCloseWithStatus:(int)status;
- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)recording;
- (void)cameraViewfinderSessionDidStartMovieRecording:(id)recording;
- (void)cameraViewfinderSessionPreviewStreamDidOpen:(id)open;
- (void)dealloc;
@end

@implementation FigCameraViewfinderServer

- (FigCameraViewfinderServer)init
{
  v6.receiver = self;
  v6.super_class = FigCameraViewfinderServer;
  v2 = [(FigCameraViewfinderServer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.coremedia.cameraviewfinder"];
    [(NSXPCListener *)v3 setDelegate:v2];
    v2->_serviceListener = v3;
    v2->_connections = objc_opt_new();
    v2->_callbackQueue = FigDispatchQueueCreateWithPriority();
    v2->_osStateHandle = [[FigCaptureOSStateHandle alloc] initWithTitle:@"FigCameraViewfinderServer" queue:v2->_callbackQueue dataProvider:v2];
    [(NSXPCListener *)v2->_serviceListener resume];
    if (dword_1ED844190)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v2;
}

- (void)dealloc
{
  v6 = 0;
  v5 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();

  v4.receiver = self;
  v4.super_class = FigCameraViewfinderServer;
  [(FigCameraViewfinderServer *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(v30, 0, 32);
  }

  v7 = [FigCameraViewfinder clientIsAllowedToUseCameraViewfinder:v30];
  if (v7)
  {
    if (dword_1ED844190)
    {
      v32 = 0;
      v31 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v32;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v31))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v22 = 136315906;
        v23 = "[FigCameraViewfinderServer listener:shouldAcceptNewConnection:]";
        v24 = 2112;
        connectionCopy2 = listener;
        v26 = 1024;
        processIdentifier = [connection processIdentifier];
        v28 = 2112;
        connectionCopy = connection;
        LODWORD(v18) = 38;
        v17 = &v22;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [connection setExportedInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1F22C4508, v17, v18)}];
    v11 = +[FigCameraViewfinderLocal cameraViewfinder];
    callbackQueue = self->_callbackQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__FigCameraViewfinderServer_listener_shouldAcceptNewConnection___block_invoke;
    v21[3] = &unk_1E798F898;
    v21[4] = self;
    v21[5] = connection;
    fig_dispatch_async_autoreleasepool(callbackQueue, v21);
    [v11 setDelegate:self queue:self->_callbackQueue];
    [connection setExportedObject:v11];
    [connection setRemoteObjectInterface:{+[FigCameraViewfinderRemote remoteObjectCallbacksInterface](FigCameraViewfinderRemote, "remoteObjectCallbacksInterface")}];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__FigCameraViewfinderServer_listener_shouldAcceptNewConnection___block_invoke_2;
    v20[3] = &unk_1E798FD58;
    v20[4] = connection;
    v20[5] = v11;
    v20[6] = self;
    [connection setInvalidationHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__FigCameraViewfinderServer_listener_shouldAcceptNewConnection___block_invoke_2_70;
    v19[3] = &unk_1E798F870;
    v19[4] = connection;
    [connection setInterruptionHandler:v19];
    [connection resume];
  }

  else
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v32;
    if (os_log_type_enabled(v14, v31))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v22 = 136315394;
      v23 = "[FigCameraViewfinderServer listener:shouldAcceptNewConnection:]";
      v24 = 2112;
      connectionCopy2 = connection;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v7;
}

void __64__FigCameraViewfinderServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  if (dword_1ED844190)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 40) setDelegate:0 queue:{0, v6, v7}];
  [*(a1 + 40) stop];
  v3 = *(a1 + 48);
  v4 = *(v3 + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__FigCameraViewfinderServer_listener_shouldAcceptNewConnection___block_invoke_69;
  v8[3] = &unk_1E798F898;
  v5 = *(a1 + 32);
  v8[4] = v3;
  v8[5] = v5;
  fig_dispatch_async_autoreleasepool(v4, v8);
}

uint64_t __64__FigCameraViewfinderServer_listener_shouldAcceptNewConnection___block_invoke_2_70()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionWillBegin:(id)begin
{
  memset(v15, 0, sizeof(v15));
  if (begin)
  {
    [begin clientAuditToken];
  }

  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:32];
  v14 = -1;
  v8 = [(FigCameraViewfinderServer *)self _remoteViewfinderForLocalViewfinder:viewfinder remotePID:&v14];
  if (dword_1ED844190)
  {
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v8 viewfinderSessionWillBegin:begin withIdentifier:objc_msgSend(begin clientAuditTokenData:"identifier" usesPhotoOutput:v10 usesMovieFileOutput:{v11), v7, objc_msgSend(begin, "usesPhotoOutput"), objc_msgSend(begin, "usesMovieFileOutput")}];
}

- (uint64_t)_remoteViewfinderForLocalViewfinder:(_DWORD *)viewfinder remotePID:
{
  result = 0;
  if (self && a2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = *(self + 16);
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          if ([objc_msgSend(v12 "exportedObject")])
          {
            if (viewfinder)
            {
              *viewfinder = [v12 processIdentifier];
            }

            return [v12 remoteObjectProxy];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = *(self + 16);
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      while (1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (!--v15)
        {
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v17 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    FigLogBacktrace();
    return 0;
  }

  return result;
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin
{
  memset(v15, 0, sizeof(v15));
  if (begin)
  {
    [begin clientAuditToken];
  }

  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:32];
  v14 = -1;
  v8 = [(FigCameraViewfinderServer *)self _remoteViewfinderForLocalViewfinder:viewfinder remotePID:&v14];
  if (dword_1ED844190)
  {
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v8 viewfinderSessionDidBegin:begin withIdentifier:objc_msgSend(begin clientAuditTokenData:"identifier" usesPhotoOutput:v10 usesMovieFileOutput:{v11), v7, objc_msgSend(begin, "usesPhotoOutput"), objc_msgSend(begin, "usesMovieFileOutput")}];
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end
{
  v10 = -1;
  v4 = [(FigCameraViewfinderServer *)self _remoteViewfinderForLocalViewfinder:viewfinder remotePID:&v10];
  if (dword_1ED844190)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v4 viewfinderSessionDidEnd];
}

- (id)osStatePropertyList
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_connections, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  connections = self->_connections;
  v5 = [(NSMutableArray *)connections countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(connections);
        }

        [v3 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * v8++), "description")}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)connections countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  v10 = @"connections";
  v11 = v3;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
}

- (void)cameraViewfinderSession:(id)session didCapturePhotoWithStatus:(int)status thumbnailData:(id)data timestamp:(id *)timestamp
{
  v8 = *&status;
  viewfinder = [session viewfinder];
  if (self)
  {
    self = [(FigCameraViewfinderServer *)self _remoteViewfinderForLocalViewfinder:viewfinder remotePID:0];
  }

  identifier = [session identifier];
  v13 = *&timestamp->var0;
  var3 = timestamp->var3;
  [(FigCameraViewfinderServer *)self viewfinderSession:identifier didCapturePhotoWithStatus:v8 thumbnailData:data timestamp:&v13];
}

- (void)cameraViewfinderSessionPreviewStreamDidOpen:(id)open
{
  v5 = OUTLINED_FUNCTION_0_89(self, a2, open);
  if (v4)
  {
    v4 = OUTLINED_FUNCTION_1_103(v5);
  }

  identifier = [v3 identifier];

  [v4 viewfinderSessionPreviewStreamDidOpen:identifier];
}

- (void)cameraViewfinderSession:(id)session previewStreamDidCloseWithStatus:(int)status
{
  v4 = *&status;
  viewfinder = [session viewfinder];
  if (self)
  {
    self = [(FigCameraViewfinderServer *)self _remoteViewfinderForLocalViewfinder:viewfinder remotePID:0];
  }

  identifier = [session identifier];

  [(FigCameraViewfinderServer *)self viewfinderSession:identifier previewStreamDidCloseWithStatus:v4];
}

- (void)cameraViewfinderSessionDidStartMovieRecording:(id)recording
{
  v5 = OUTLINED_FUNCTION_0_89(self, a2, recording);
  if (v4)
  {
    v4 = OUTLINED_FUNCTION_1_103(v5);
  }

  identifier = [v3 identifier];

  [v4 viewfinderSessionDidStartMovieRecording:identifier];
}

- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)recording
{
  v5 = OUTLINED_FUNCTION_0_89(self, a2, recording);
  if (v4)
  {
    v4 = OUTLINED_FUNCTION_1_103(v5);
  }

  identifier = [v3 identifier];

  [v4 viewfinderSessionDidFinishMovieRecording:identifier];
}

@end