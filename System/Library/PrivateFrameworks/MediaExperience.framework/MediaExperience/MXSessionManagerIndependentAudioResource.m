@interface MXSessionManagerIndependentAudioResource
+ (id)sharedInstance;
- (MXSessionManagerIndependentAudioResource)init;
- (id)copyIndependentInputAudioResourceSessionWithAudioSessionID:(unsigned int)a3;
- (id)copyMXCoreSessionIndependentInputAudioResourceList;
- (int)_beginInterruption:(id)a3 withSecTask:(__SecTask *)a4 andFlags:(unint64_t)a5;
- (int)_endInterruption:(id)a3 withSecTask:(__SecTask *)a4 andStatus:(id)a5;
- (void)addMXCoreSessionIndependentInputAudioResource:(id)a3;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)interruptAllIndependentInputAudioResourceSessions:(id)a3 interruptorName:(id)a4;
- (void)removeMXCoreSessionIndependentInputAudioResource:(id)a3;
- (void)resumeAllIndependentInputAudioResourceSessions:(id)a3 interruptorBundleID:(id)a4 interruptorName:(id)a5;
- (void)resumeIndependentInputAudioResourceSession:(id)a3 interruptorBundleID:(id)a4 interruptorName:(id)a5 status:(id)a6 fadeDuration:(id)a7;
@end

@implementation MXSessionManagerIndependentAudioResource

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[MXSessionManagerIndependentAudioResource sharedInstance];
  }

  return sharedInstance_sSharedInstance_3;
}

- (id)copyMXCoreSessionIndependentInputAudioResourceList
{
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock lock];
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList allObjects];
  objc_autoreleasePoolPop(v3);
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock unlock];
  return v4;
}

MXSessionManagerIndependentAudioResource *__58__MXSessionManagerIndependentAudioResource_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXSessionManagerIndependentAudioResource);
  sharedInstance_sSharedInstance_3 = result;
  return result;
}

- (MXSessionManagerIndependentAudioResource)init
{
  v4.receiver = self;
  v4.super_class = MXSessionManagerIndependentAudioResource;
  v2 = [(MXSessionManagerIndependentAudioResource *)&v4 init];
  if (v2)
  {
    v2->mMXCoreSessionIndependentInputAudioResourceList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v2->mMXCoreSessionIndependentInputAudioResourceListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  }

  return v2;
}

- (void)dealloc
{
  self->mMXCoreSessionIndependentInputAudioResourceList = 0;

  self->mMXCoreSessionIndependentInputAudioResourceListLock = 0;
  v3.receiver = self;
  v3.super_class = MXSessionManagerIndependentAudioResource;
  [(MXSessionManagerIndependentAudioResource *)&v3 dealloc];
}

- (void)addMXCoreSessionIndependentInputAudioResource:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock lock];
  [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList compact];
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock unlock];
  objc_destroyWeak(&location);
}

- (void)removeMXCoreSessionIndependentInputAudioResource:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock lock];
  for (i = 0; i < [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](self->mMXCoreSessionIndependentInputAudioResourceList pointerAtIndex:{i), "isEqual:", objc_loadWeak(&location)}])
    {
      [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList removePointerAtIndex:i];
      [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList compact];
      break;
    }
  }

  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock unlock];
  objc_destroyWeak(&location);
}

- (int)_beginInterruption:(id)a3 withSecTask:(__SecTask *)a4 andFlags:(unint64_t)a5
{
  [a3 activate];
  [a3 sendSessionConfigurationInfoToVA];
  return 0;
}

- (int)_endInterruption:(id)a3 withSecTask:(__SecTask *)a4 andStatus:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a3 deactivate];
  [a3 sendSessionConfigurationInfoToVA];
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)copyIndependentInputAudioResourceSessionWithAudioSessionID:(unsigned int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(MXSessionManagerIndependentAudioResource *)self copyMXCoreSessionIndependentInputAudioResourceList];
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

void __164__MXSessionManagerIndependentAudioResource_postInterruptionCommandNotification_interruptionCommand_interruptorName_interruptorBundleID_status_volumeChangeDuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  CMSMUtility_PostNotificationToSession(*(a1 + 32), @"Interruption");

  v3 = *(a1 + 32);
}

- (void)interruptAllIndependentInputAudioResourceSessions:(id)a3 interruptorName:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource copyMXCoreSessionIndependentInputAudioResourceList];
  v8 = CMSUtility_CopyFadeDuration(0, 0, 0);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        -[MXSessionManagerIndependentAudioResource interruptIndpendentInputAudioResourceSession:interruptorBundleID:interruptorName:fadeDuration:waitingToResume:](self, "interruptIndpendentInputAudioResourceSession:interruptorBundleID:interruptorName:fadeDuration:waitingToResume:", *(*(&v14 + 1) + 8 * v12), a3, a4, v8, [*(*(&v14 + 1) + 8 * v12) isPlaying]);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resumeIndependentInputAudioResourceSession:(id)a3 interruptorBundleID:(id)a4 interruptorName:(id)a5 status:(id)a6 fadeDuration:(id)a7
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a3 waitingToResume])
  {
    [a3 setWaitingToResume:0];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXSessionManagerIndependentAudioResource *)self postInterruptionCommandNotification:a3 interruptionCommand:1 interruptorName:a5 interruptorBundleID:a4 status:a6 volumeChangeDuration:a7, v15, v16];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resumeAllIndependentInputAudioResourceSessions:(id)a3 interruptorBundleID:(id)a4 interruptorName:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource copyMXCoreSessionIndependentInputAudioResourceList:v17];
  v11 = CMSUtility_CopyFadeDuration(0, 1, 0);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [(MXSessionManagerIndependentAudioResource *)self resumeIndependentInputAudioResourceSession:*(*(&v19 + 1) + 8 * i) interruptorBundleID:a4 interruptorName:a5 status:a3 fadeDuration:v11];
      }

      v13 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)dumpDebugInfo
{
  v27 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
  {
    if (dword_1EB75DE40)
    {
      v23 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = [(MXSessionManagerIndependentAudioResource *)self copyMXCoreSessionIndependentInputAudioResourceList:v14];
    if (dword_1EB75DE40)
    {
      v23 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:{16, v15, v17}];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v18 + 1) + 8 * i) dumpDebugInfo];
        }

        v7 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v7);
    }

    if (dword_1EB75DE40)
    {
      v23 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = v23;
      if (os_log_type_enabled(v10, type))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v25 = 136315138;
        v26 = "[MXSessionManagerIndependentAudioResource dumpDebugInfo]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end