@interface MXSessionManagerSidekick
+ (id)sharedInstance;
- (BOOL)isSomeOtherSessionPlaying:(id)playing;
- (MXSessionManagerSidekick)init;
- (id)copyMXCoreSessionForAudioSessionID:(unsigned int)d;
- (id)copyMXSessionList:(id)list;
- (int)postInterruptionEndedNotificationForAudioSessionID:(unsigned int)d resumable:(BOOL)resumable;
- (void)dealloc;
- (void)dumpCoreSessionList;
- (void)dumpVersionNumbersFromSidekickSessionBehavioursPlist;
- (void)postNotification:(id)notification toSession:(id)session payload:(id)payload;
- (void)registerMXCoreSessionSidekick:(id)sidekick;
- (void)unregisterMXCoreSessionSidekick:(id)sidekick;
@end

@implementation MXSessionManagerSidekick

- (void)dumpCoreSessionList
{
  v52 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  [(NSPointerArray *)self->mCoreSessionList addPointer:0];
  [(NSPointerArray *)self->mCoreSessionList compact];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  obj = self->mCoreSessionList;
  v32 = [(NSPointerArray *)obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v32)
  {
    v30 = *v41;
    do
    {
      v3 = 0;
      do
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v40 + 1) + 8 * v3);
        v5 = [(MXSessionManagerSidekick *)selfCopy copyMXSessionList:v4, v25, v27];
        if (dword_1EB75DE40)
        {
          v39 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v7 = v39;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v8 = v7;
          }

          else
          {
            v8 = v7 & 0xFFFFFFFE;
          }

          if (v8)
          {
            clientName = [v4 clientName];
            v10 = [v5 count];
            v45 = 136315650;
            v46 = "[MXSessionManagerSidekick dumpCoreSessionList]";
            v47 = 2114;
            v48 = clientName;
            v49 = 2048;
            v50 = v10;
            LODWORD(v28) = 32;
            v26 = &v45;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (dword_1EB75DE40)
          {
            v39 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v12 = v39;
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
              info = [v4 info];
              v45 = 136315394;
              v46 = "[MXSessionManagerSidekick dumpCoreSessionList]";
              v47 = 2114;
              v48 = info;
              LODWORD(v28) = 22;
              v26 = &v45;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v33 = v3;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v15 = [v5 countByEnumeratingWithState:&v34 objects:v44 count:{16, v26, v28}];
        if (v15)
        {
          v16 = v15;
          v17 = *v35;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(v5);
              }

              if (dword_1EB75DE40)
              {
                v19 = *(*(&v34 + 1) + 8 * i);
                v39 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v21 = v39;
                if (os_log_type_enabled(v20, type))
                {
                  v22 = v21;
                }

                else
                {
                  v22 = v21 & 0xFFFFFFFE;
                }

                if (v22)
                {
                  info2 = [v19 info];
                  v45 = 136315394;
                  v46 = "[MXSessionManagerSidekick dumpCoreSessionList]";
                  v47 = 2114;
                  v48 = info2;
                  LODWORD(v27) = 22;
                  v25 = &v45;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            v16 = [v5 countByEnumeratingWithState:&v34 objects:v44 count:16];
          }

          while (v16);
        }

        v3 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [(NSPointerArray *)obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v32);
  }

  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)selfCopy recursiveLock:v25] unlock];
  v24 = *MEMORY[0x1E69E9840];
}

- (void)dumpVersionNumbersFromSidekickSessionBehavioursPlist
{
  v26 = *MEMORY[0x1E69E9840];
  CelestialGetModelSpecificName();
  v2 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v2 && (v3 = v2, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (dword_1EB75DE40)
          {
            v8 = *(*(&v15 + 1) + 8 * i);
            v20 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v10 = v20;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v11 = v10;
            }

            else
            {
              v11 = v10 & 0xFFFFFFFE;
            }

            if (v11)
            {
              v12 = [v8 valueForKey:@"Version"];
              v21 = 136315394;
              v22 = "[MXSessionManagerSidekick dumpVersionNumbersFromSidekickSessionBehavioursPlist]";
              v23 = 2114;
              v24 = v12;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSomeOtherSessionPlaying:(id)playing
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  [(NSPointerArray *)self->mCoreSessionList addPointer:0];
  [(NSPointerArray *)self->mCoreSessionList compact];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  mCoreSessionList = self->mCoreSessionList;
  v6 = [(NSPointerArray *)mCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(mCoreSessionList);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v10 != playing && [*(*(&v14 + 1) + 8 * i) isPlaying] && (objc_msgSend(objc_msgSend(playing, "remoteDeviceID"), "isEqualToString:", objc_msgSend(v10, "remoteDeviceID")) & 1) != 0)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v7 = [(NSPointerArray *)mCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] unlock];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (MXSessionManagerSidekick)init
{
  if (gMXSessionManagerSidekick)
  {

    return gMXSessionManagerSidekick;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MXSessionManagerSidekick;
    v2 = [(MXSessionManagerSidekick *)&v6 init];
    if (v2)
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->_serialQueue = dispatch_queue_create("com.apple.mediaexperiencesession.Sidekick", v3);
      v2->_remoteDeviceIDToCoreSessionIDList = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      v2->_coreSessionIDToMXSessionList = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      v2->_recursiveLock = objc_alloc_init(MEMORY[0x1E696AE68]);
      v2->mCoreSessionList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __32__MXSessionManagerSidekick_init__block_invoke;
      v5[3] = &unk_1E7AE7CE0;
      v5[4] = v2;
      MXDebugInstallSysdiagnoseBlock(@"MXSessionManagerSidekickSessionList", v5);
    }

    gMXSessionManagerSidekick = v2;
  }

  return v2;
}

void __32__MXSessionManagerSidekick_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__MXSessionManagerSidekick_init__block_invoke_2;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = *(a1 + 32);
  MXDispatchAsync("[MXSessionManagerSidekick init]_block_invoke", "MXSessionManagerSidekick.m", 133, 0, 0, v2, v3);
}

uint64_t __32__MXSessionManagerSidekick_init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) dumpCoreSessionList];
  v2 = *(a1 + 32);

  return [v2 dumpVersionNumbersFromSidekickSessionBehavioursPlist];
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  dispatch_release(self->_serialQueue);

  v4.receiver = self;
  v4.super_class = MXSessionManagerSidekick;
  [(MXSessionManagerSidekick *)&v4 dealloc];
  objc_autoreleasePoolPop(v3);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MXSessionManagerSidekick_sharedInstance__block_invoke;
  block[3] = &unk_1E7AE7CE0;
  block[4] = self;
  if (sharedInstance_onceToken_9 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9, block);
  }

  return gMXSessionManagerSidekick;
}

uint64_t __42__MXSessionManagerSidekick_sharedInstance__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___MXSessionManagerSidekick;
  result = [objc_msgSendSuper2(&v2 allocWithZone_];
  gMXSessionManagerSidekick = result;
  return result;
}

- (id)copyMXCoreSessionForAudioSessionID:(unsigned int)d
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  mCoreSessionList = self->mCoreSessionList;
  v6 = [(NSPointerArray *)mCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(mCoreSessionList);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 audioSessionID] == d)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSPointerArray *)mCoreSessionList countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] unlock];
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)registerMXCoreSessionSidekick:(id)sidekick
{
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  v5 = -[NSMapTable objectForKey:](-[MXSessionManagerSidekick remoteDeviceIDToCoreSessionIDList](self, "remoteDeviceIDToCoreSessionIDList"), "objectForKey:", [sidekick remoteDeviceID]);
  v6 = v5;
  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  }

  objc_initWeak(&location, sidekick);
  [v6 addPointer:objc_loadWeak(&location)];
  -[NSMapTable setObject:forKey:](-[MXSessionManagerSidekick remoteDeviceIDToCoreSessionIDList](self, "remoteDeviceIDToCoreSessionIDList"), "setObject:forKey:", v6, [sidekick remoteDeviceID]);
  [(NSPointerArray *)self->mCoreSessionList addPointer:objc_loadWeak(&location)];
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] unlock];
  if (!v5)
  {
  }

  objc_destroyWeak(&location);
}

- (void)unregisterMXCoreSessionSidekick:(id)sidekick
{
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  [(NSPointerArray *)self->mCoreSessionList addPointer:0];
  [(NSPointerArray *)self->mCoreSessionList compact];
  v5 = -[NSMapTable objectForKey:](-[MXSessionManagerSidekick remoteDeviceIDToCoreSessionIDList](self, "remoteDeviceIDToCoreSessionIDList"), "objectForKey:", [sidekick remoteDeviceID]);
  [v5 addPointer:0];
  [v5 compact];
  if (![v5 count])
  {
    -[NSMapTable removeObjectForKey:](-[MXSessionManagerSidekick remoteDeviceIDToCoreSessionIDList](self, "remoteDeviceIDToCoreSessionIDList"), "removeObjectForKey:", [sidekick remoteDeviceID]);
  }

  recursiveLock = [(MXSessionManagerSidekick *)self recursiveLock];

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (id)copyMXSessionList:(id)list
{
  v11 = *MEMORY[0x1E69E9840];
  if (list)
  {
    v5 = objc_autoreleasePoolPush();
    [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
    v6 = [-[NSMapTable objectForKey:](-[MXSessionManagerSidekick coreSessionIDToMXSessionList](self "coreSessionIDToMXSessionList")];
    [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] unlock];
    objc_autoreleasePoolPop(v5);
    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (int)postInterruptionEndedNotificationForAudioSessionID:(unsigned int)d resumable:(BOOL)resumable
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [(MXSessionManagerSidekick *)self copyMXCoreSessionForAudioSessionID:?];
  if (v6)
  {
    v7 = v6;
    if ([v6 isActive])
    {
      if (dword_1EB75DE40)
      {
        v16 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v10 = MXGetNotificationSenderQueue();
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __89__MXSessionManagerSidekick_postInterruptionEndedNotificationForAudioSessionID_resumable___block_invoke;
      v13[3] = &unk_1E7AEB958;
      resumableCopy = resumable;
      v13[4] = v7;
      v13[5] = self;
      MXDispatchAsync("[MXSessionManagerSidekick postInterruptionEndedNotificationForAudioSessionID:resumable:]", "MXSessionManagerSidekick.m", 287, 0, 0, v10, v13);
    }

    result = 0;
  }

  else
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = -15681;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __89__MXSessionManagerSidekick_postInterruptionEndedNotificationForAudioSessionID_resumable___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = @"resumable.MXSessionManager";
  }

  else
  {
    v2 = @"non-resumable.MXSessionManager";
  }

  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [v3 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 1), @"InterruptionCmd", @"MXSessionManager", @"InterruptorName", v2, @"Status", 0}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 40) postNotification:@"Interruption" toSession:*(a1 + 32) payload:{v4, v7, v8}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)postNotification:(id)notification toSession:(id)session payload:(id)payload
{
  v20 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v9 = [(MXSessionManagerSidekick *)self copyMXSessionList:session];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end