@interface MXSessionManagerSecure
+ (id)sharedInstance;
- (BOOL)isSessionWithAudioModeActive:(id)a3;
- (MXSessionManagerSecure)init;
- (id)copyActiveSessionsInfoForAdditiveRouting;
- (id)copyMXCoreSessionSecureList;
- (id)copySessionWithAudioSessionID:(unsigned int)a3;
- (int)_beginInterruption:(id)a3 withSecTask:(__SecTask *)a4 andFlags:(unint64_t)a5;
- (int)_endInterruption:(id)a3 withSecTask:(__SecTask *)a4 andStatus:(id)a5;
- (unint64_t)addMXCoreSessionSecure:(id)a3;
- (unint64_t)removeMXCoreSessionSecure:(id)a3;
- (void)dealloc;
- (void)dumpDebugInfo;
@end

@implementation MXSessionManagerSecure

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MXSessionManagerSecure sharedInstance];
  }

  return sharedInstance_sSharedInstance;
}

MXSessionManagerSecure *__40__MXSessionManagerSecure_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXSessionManagerSecure);
  sharedInstance_sSharedInstance = result;
  return result;
}

- (MXSessionManagerSecure)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MXSessionManagerSecure;
  v2 = [(MXSessionManagerSecure *)&v6 init];
  if (v2)
  {
    if (CMSMDeviceState_DeviceHasExclaveCapability())
    {
      v2->mMXCoreSessionSecureList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
      v2->mMXCoreSessionSecureListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v2 = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  self->mMXCoreSessionSecureList = 0;

  self->mMXCoreSessionSecureListLock = 0;
  v3.receiver = self;
  v3.super_class = MXSessionManagerSecure;
  [(MXSessionManagerSecure *)&v3 dealloc];
}

- (unint64_t)addMXCoreSessionSecure:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)self->mMXCoreSessionSecureListLock lock];
  [(NSPointerArray *)self->mMXCoreSessionSecureList addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)self->mMXCoreSessionSecureList compact];
  v4 = [(NSPointerArray *)self->mMXCoreSessionSecureList count];
  [(NSLock *)self->mMXCoreSessionSecureListLock unlock];
  objc_destroyWeak(&location);
  return v4;
}

- (unint64_t)removeMXCoreSessionSecure:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)self->mMXCoreSessionSecureListLock lock];
  for (i = 0; i < [(NSPointerArray *)self->mMXCoreSessionSecureList count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](self->mMXCoreSessionSecureList pointerAtIndex:{i), "isEqual:", objc_loadWeak(&location)}])
    {
      [(NSPointerArray *)self->mMXCoreSessionSecureList removePointerAtIndex:i];
      [(NSPointerArray *)self->mMXCoreSessionSecureList compact];
      break;
    }
  }

  v5 = [(NSPointerArray *)self->mMXCoreSessionSecureList count];
  [(NSLock *)self->mMXCoreSessionSecureListLock unlock];
  objc_destroyWeak(&location);
  return v5;
}

- (id)copyMXCoreSessionSecureList
{
  [(NSLock *)self->mMXCoreSessionSecureListLock lock];
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSPointerArray *)self->mMXCoreSessionSecureList allObjects];
  objc_autoreleasePoolPop(v3);
  [(NSLock *)self->mMXCoreSessionSecureListLock unlock];
  return v4;
}

- (int)_beginInterruption:(id)a3 withSecTask:(__SecTask *)a4 andFlags:(unint64_t)a5
{
  v9 = *MEMORY[0x1E69E9840];
  [a3 setIsActive:{1, a4, a5}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSUtility_CreateReporterIDIfNeeded(a3);
  result = [a3 sendSessionConfigurationInfoToVA];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)_endInterruption:(id)a3 withSecTask:(__SecTask *)a4 andStatus:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  [a3 setIsActive:{0, a4, a5}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [a3 sendSessionConfigurationInfoToVA];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copySessionWithAudioSessionID:(unsigned int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManagerSecure *)self copyMXCoreSessionSecureList];
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
        if ([v9 audioSessionID] == a3)
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

- (id)copyActiveSessionsInfoForAdditiveRouting
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(MXSessionManagerSecure *)self copyMXCoreSessionSecureList];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 isActive])
        {
          v9 = [v8 additiveRoutingInfo];
          if (v9)
          {
            [v15 addObject:v9];
          }

          else
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)isSessionWithAudioModeActive:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManagerSecure *)self copyMXCoreSessionSecureList];
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
        if ([v9 isActive] && (objc_msgSend(v9, "hasAudioMode:", a3) & 1) != 0)
        {
          v10 = 1;
          goto LABEL_12;
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

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dumpDebugInfo
{
  v28 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = [(MXSessionManagerSecure *)self copyMXCoreSessionSecureList:v15];
  v5 = CMSMUtility_CopyPrioritizedListBasedOnPlayingAndActiveState(v4);
  if (dword_1EB75DE40)
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:{16, v16, v18}];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * i) dumpDebugInfo];
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  if (dword_1EB75DE40)
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v24;
    if (os_log_type_enabled(v11, type))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v26 = 136315138;
      v27 = "[MXSessionManagerSecure dumpDebugInfo]";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end