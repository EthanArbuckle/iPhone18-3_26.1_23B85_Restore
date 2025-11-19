@interface BWFigCaptureAttachedAccessoriesMonitor
+ (id)sharedAttachedAccessoriesMonitor;
+ (void)initialize;
- (BWFigCaptureAttachedAccessoriesMonitor)init;
- (void)accessoryConnectionDetached:(id)a3;
- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 forConnection:(id)a6;
- (void)dealloc;
@end

@implementation BWFigCaptureAttachedAccessoriesMonitor

+ (id)sharedAttachedAccessoriesMonitor
{
  if (sharedAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitorLockOnce != -1)
  {
    +[BWFigCaptureAttachedAccessoriesMonitor sharedAttachedAccessoriesMonitor];
  }

  return sharedAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitor;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

BWFigCaptureAttachedAccessoriesMonitor *__74__BWFigCaptureAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitor__block_invoke()
{
  sharedAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitorLock = FigSimpleMutexCreate();
  result = objc_alloc_init(BWFigCaptureAttachedAccessoriesMonitor);
  sharedAttachedAccessoriesMonitor_sharedAttachedAccessoriesMonitor = result;
  return result;
}

- (BWFigCaptureAttachedAccessoriesMonitor)init
{
  v5.receiver = self;
  v5.super_class = BWFigCaptureAttachedAccessoriesMonitor;
  v2 = [(BWFigCaptureAttachedAccessoriesMonitor *)&v5 init];
  if (v2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3052000000;
    v10 = __Block_byref_object_copy__42;
    v3 = getACCConnectionInfoClass_softClass;
    v11 = __Block_byref_object_dispose__42;
    v12 = getACCConnectionInfoClass_softClass;
    if (!getACCConnectionInfoClass_softClass)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __getACCConnectionInfoClass_block_invoke;
      v6[3] = &unk_1E798FC38;
      v6[4] = &v7;
      __getACCConnectionInfoClass_block_invoke(v6);
      v3 = v8[5];
    }

    _Block_object_dispose(&v7, 8);
    v2->_connectionInfoProvider = [v3 sharedInstance];
    v2->_notificationQueue = dispatch_queue_create("com.apple.bwgraph.sharedattachedaccessories.notification", 0);
    [(ACCConnectionInfo *)v2->_connectionInfoProvider registerDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(ACCConnectionInfo *)self->_connectionInfoProvider registerDelegate:0];

  v3.receiver = self;
  v3.super_class = BWFigCaptureAttachedAccessoriesMonitor;
  [(BWFigCaptureAttachedAccessoriesMonitor *)&v3 dealloc];
}

- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 forConnection:(id)a6
{
  if (dword_1ED8443B0)
  {
    v17 = 0;
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__BWFigCaptureAttachedAccessoriesMonitor_accessoryEndpointAttached_transportType_protocol_forConnection___block_invoke;
  block[3] = &unk_1E7998980;
  v14 = a4;
  v15 = a5;
  block[4] = self;
  block[5] = a3;
  block[6] = a6;
  dispatch_sync(notificationQueue, block);
}

uint64_t __105__BWFigCaptureAttachedAccessoriesMonitor_accessoryEndpointAttached_transportType_protocol_forConnection___block_invoke(uint64_t result)
{
  if (*(result + 56) != 13)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 60);
  v3 = v2 > 0xE;
  v4 = (1 << v2) & 0x4402;
  if (v3 || v4 == 0)
  {
    return result;
  }

  v6 = *(*(result + 32) + 8);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v7 = getkACCProperties_Endpoint_NFC_TypeSymbolLoc_ptr;
  v21 = getkACCProperties_Endpoint_NFC_TypeSymbolLoc_ptr;
  if (!getkACCProperties_Endpoint_NFC_TypeSymbolLoc_ptr)
  {
    v14[1] = MEMORY[0x1E69E9820];
    v14[2] = 3221225472;
    v14[3] = __getkACCProperties_Endpoint_NFC_TypeSymbolLoc_block_invoke;
    v14[4] = &unk_1E798FC38;
    v15 = &v18;
    v8 = CoreAccessoriesLibrary();
    v19[3] = dlsym(v8, "kACCProperties_Endpoint_NFC_Type");
    getkACCProperties_Endpoint_NFC_TypeSymbolLoc_ptr = *(v15[1] + 24);
    v7 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v7)
  {
    __105__BWFigCaptureAttachedAccessoriesMonitor_accessoryEndpointAttached_transportType_protocol_forConnection___block_invoke_cold_1();
  }

  result = [objc_msgSend(v6 accessoryPropertySync:*v7 forEndpoint:*(v1 + 40) connection:{*(v1 + 48)), "intValue"}];
  if ((result - 87) > 1)
  {
    if (result != 66)
    {
      return result;
    }

    if (*(*(v1 + 32) + 32))
    {
      if (dword_1ED8443B0)
      {
        goto LABEL_12;
      }

      return result;
    }

    if (dword_1ED8443B0)
    {
      v17 = 0;
      v16 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = 32;
LABEL_23:
    *(*(v1 + 32) + v12) = *(v1 + 48);
    v13 = @"NewPropertyValue";
    v14[0] = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }

  if (!*(*(v1 + 32) + 24))
  {
    if (dword_1ED8443B0)
    {
      v17 = 0;
      v16 = 0;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = 24;
    goto LABEL_23;
  }

  if (dword_1ED8443B0)
  {
LABEL_12:
    v17 = 0;
    v16 = 0;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)accessoryConnectionDetached:(id)a3
{
  if (dword_1ED8443B0)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__BWFigCaptureAttachedAccessoriesMonitor_accessoryConnectionDetached___block_invoke;
  block[3] = &unk_1E798F898;
  block[4] = a3;
  block[5] = self;
  dispatch_sync(notificationQueue, block);
}

uint64_t __70__BWFigCaptureAttachedAccessoriesMonitor_accessoryConnectionDetached___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*(*(a1 + 40) + 24)])
  {
    if (dword_1ED8443B0)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = 24;
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:*(*(a1 + 40) + 32)];
    if (!result)
    {
      return result;
    }

    if (dword_1ED8443B0)
    {
      v9 = 0;
      v8 = 0;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = 32;
  }

  *(*(a1 + 40) + v5) = 0;
  v6 = @"NewPropertyValue";
  v7 = MEMORY[0x1E695E110];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

void __105__BWFigCaptureAttachedAccessoriesMonitor_accessoryEndpointAttached_transportType_protocol_forConnection___block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *getkACCProperties_Endpoint_NFC_Type(void)") description:{@"BWFigCaptureAttachedAccessoriesMonitor.m", 33, @"%s", dlerror()}];
  __break(1u);
}

@end