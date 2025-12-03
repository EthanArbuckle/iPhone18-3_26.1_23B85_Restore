@interface MXSessionManagerBase
+ (id)copyAllMXCoreSessionList;
+ (id)copySessionWithAudioObjectID:(unsigned int)d;
+ (id)copySessionWithMXCoreSessionID:(unint64_t)d;
+ (id)copySessionsShadowingAudioSessionID:(unsigned int)d withShadowingOptions:(unsigned int)options fromSessionList:(id)list;
+ (void)dumpDebugInfo;
+ (void)setGreenTeaLoggerRecordingState:(id)state state:(BOOL)a4;
@end

@implementation MXSessionManagerBase

+ (id)copyAllMXCoreSessionList
{
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  copyMXCoreSessionSecureList = [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure copyMXCoreSessionSecureList];
  copyMXCoreSessionIndependentInputAudioResourceList = [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource copyMXCoreSessionIndependentInputAudioResourceList];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v5 addObjectsFromArray:copyMXCoreSessionList];

  [v5 addObjectsFromArray:copyMXCoreSessionSecureList];
  [v5 addObjectsFromArray:copyMXCoreSessionIndependentInputAudioResourceList];

  return v5;
}

+ (id)copySessionWithMXCoreSessionID:(unint64_t)d
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[MXSessionManagerBase copyAllMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v9 "ID")] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)copySessionWithAudioObjectID:(unsigned int)d
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[MXSessionManagerBase copyAllMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 audioObjectID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)copySessionsShadowingAudioSessionID:(unsigned int)d withShadowingOptions:(unsigned int)options fromSessionList:(id)list
{
  v5 = 0;
  v21 = *MEMORY[0x1E69E9840];
  if (d && options)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [list countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(list);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 shadowingAudioSessionID] == d && (objc_msgSend(v13, "shadowingAudioSessionOptions") & options) != 0)
          {
            [v5 addObject:v13];
          }
        }

        v10 = [list countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    if (![v5 count])
    {

      v5 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (void)setGreenTeaLoggerRecordingState:(id)state state:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  if (setGreenTeaLoggerRecordingState_state__onceToken != -1)
  {
    +[MXSessionManagerBase setGreenTeaLoggerRecordingState:state:];
  }

  if (setGreenTeaLoggerRecordingState_state__greenTeaLogger)
  {
    CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
    if (CTGreenTeaOsLogHandle)
    {
      v7 = CTGreenTeaOsLogHandle;
      if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
      {
        v8 = "stopped";
        if (v4)
        {
          v8 = "started";
        }

        v10 = 138412546;
        stateCopy = state;
        v12 = 2080;
        v13 = v8;
        _os_log_impl(&dword_1B17A2000, v7, OS_LOG_TYPE_INFO, "Client %@ has %s recording", &v10, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __62__MXSessionManagerBase_setGreenTeaLoggerRecordingState_state___block_invoke()
{
  result = ct_green_tea_logger_create();
  setGreenTeaLoggerRecordingState_state__greenTeaLogger = result;
  return result;
}

+ (void)dumpDebugInfo
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end