@interface MXNowPlayingAppManager
+ (id)sharedInstance;
+ (void)actuallyWriteNowPlayingAppDisplayIDToDisk:(id)disk;
+ (void)processNowPlayingAppPIDChangeIfNeeded:(BOOL)needed;
- (BOOL)doesNowPlayingAppStackContain:(id)contain;
- (BOOL)resetNowPlayingAppIfNeeded:(unsigned int)needed allowedToBeNowPlaying:(BOOL)playing canBeNowPlayingApp:(BOOL)app;
- (MXNowPlayingAppManager)init;
- (id)copyTopOfNowPlayingAppStack;
- (unint64_t)nowPlayingAppStackSize;
- (void)clearNowPlayingAppStack;
- (void)dealloc;
- (void)dumpNowPlayingAppInfo;
- (void)popNowPlayingAppStack;
- (void)popNowPlayingAppStackOldestDisplayID;
- (void)populateNowPlayingAppStack:(id)stack hostProcessAttributionBundleID:(id)d;
- (void)pushToNowPlayingAppStack:(id)stack hostProcessAttributionBundleID:(id)d;
- (void)removeFromNowPlayingAppStack:(id)stack;
- (void)resetNowPlayingApp:(id)app;
- (void)resetNowPlayingAppToDefaultMusicApp;
- (void)saveNowPlayingAppStackToDisk;
- (void)setWriteNowPlayingAppToDiskTimer:(id)timer;
- (void)updateNowPlayingAppStackFromDisk;
- (void)writeNowPlayingAppInfoToDisk;
@end

@implementation MXNowPlayingAppManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[MXNowPlayingAppManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_7;
}

- (id)copyTopOfNowPlayingAppStack
{
  [(NSLock *)self->mLock lock];
  lastObject = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject];
  [(NSLock *)self->mLock unlock];
  return lastObject;
}

MXNowPlayingAppManager *__40__MXNowPlayingAppManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXNowPlayingAppManager);
  sharedInstance_sSharedInstance_7 = result;
  return result;
}

- (MXNowPlayingAppManager)init
{
  v4.receiver = self;
  v4.super_class = MXNowPlayingAppManager;
  v2 = [(MXNowPlayingAppManager *)&v4 init];
  if (v2)
  {
    v2->mLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_nowPlayingAppDisplayID = 0;
    v2->_nowPlayingAppStopTime = 0;
    v2->_writeNowPlayingAppToDiskTimer = 0;
    v2->mNowPlayingAppDisplayIDStack = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->mNowPlayingAppHostProcessAttributionBundleID = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  self->_nowPlayingAppDisplayID = 0;

  self->_nowPlayingAppStopTime = 0;
  self->_writeNowPlayingAppToDiskTimer = 0;

  self->mNowPlayingAppDisplayIDStack = 0;
  self->mNowPlayingAppHostProcessAttributionBundleID = 0;

  self->mLock = 0;
  v3.receiver = self;
  v3.super_class = MXNowPlayingAppManager;
  [(MXNowPlayingAppManager *)&v3 dealloc];
}

- (void)setWriteNowPlayingAppToDiskTimer:(id)timer
{
  [(NSLock *)self->mLock lock];
  writeNowPlayingAppToDiskTimer = self->_writeNowPlayingAppToDiskTimer;
  if (writeNowPlayingAppToDiskTimer)
  {
    dispatch_source_cancel(writeNowPlayingAppToDiskTimer);
    v6 = self->_writeNowPlayingAppToDiskTimer;
    if (v6)
    {
      dispatch_release(v6);
      self->_writeNowPlayingAppToDiskTimer = 0;
    }
  }

  self->_writeNowPlayingAppToDiskTimer = timer;
  mLock = self->mLock;

  [(NSLock *)mLock unlock];
}

+ (void)actuallyWriteNowPlayingAppDisplayIDToDisk:(id)disk
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppDisplayID", disk);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)processNowPlayingAppPIDChangeIfNeeded:(BOOL)needed
{
  if (needed)
  {
    CMSMUtility_UpdateSharePlayVolumeBehaviours();
    CMSMNotificationUtility_PostNowPlayingAppPIDDidChange();
    CMSMNotificationUtility_PostNowPlayingAppDidChange();
    CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange();
    [+[MXSessionManager sharedInstance](MXSessionManager updateSupportedOutputChannelLayouts];
  }

  CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange();

  CMSMNotificationUtility_PostNowPlayingAppStackDidChange();
}

- (void)writeNowPlayingAppInfoToDisk
{
  v3 = MXGetSerialQueue();
  v4 = MXDispatchUtilityCreateOneShotTimer(5.0, "[MXNowPlayingAppManager writeNowPlayingAppInfoToDisk]", "MXNowPlayingAppManager.m", 192, 0, 0, v3, &__block_literal_global_38, 0, 0);

  [(MXNowPlayingAppManager *)self setWriteNowPlayingAppToDiskTimer:v4];
}

uint64_t __54__MXNowPlayingAppManager_writeNowPlayingAppInfoToDisk__block_invoke()
{
  +[MXNowPlayingAppManager actuallyWriteNowPlayingAppDisplayIDToDisk:](MXNowPlayingAppManager, "actuallyWriteNowPlayingAppDisplayIDToDisk:", [+[MXNowPlayingAppManager nowPlayingAppDisplayID] sharedInstance];
  if (MX_FeatureFlags_IsNowPlayingAppStackEnabled())
  {
    [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager saveNowPlayingAppStackToDisk];
  }

  v0 = +[MXNowPlayingAppManager sharedInstance];

  return [(MXNowPlayingAppManager *)v0 setWriteNowPlayingAppToDiskTimer:0];
}

- (void)resetNowPlayingAppToDefaultMusicApp
{
  -[MXNowPlayingAppManager setNowPlayingAppDisplayID:](self, "setNowPlayingAppDisplayID:", [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp]);
  [(MXNowPlayingAppManager *)self setNowPlayingAppPID:0];

  [(MXNowPlayingAppManager *)self setNowPlayingAppStopTime:0];
}

- (void)resetNowPlayingApp:(id)app
{
  v8 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsNowPlayingAppStackEnabled())
  {
    copyTopOfNowPlayingAppStack = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager copyTopOfNowPlayingAppStack];
    [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager popNowPlayingAppStack];
    copyTopOfNowPlayingAppStack2 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager copyTopOfNowPlayingAppStack];
  }

  else
  {
    copyTopOfNowPlayingAppStack = [(MXNowPlayingAppManager *)self nowPlayingAppDisplayID];
    copyTopOfNowPlayingAppStack2 = [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp];
    [(MXNowPlayingAppManager *)self resetNowPlayingAppToDefaultMusicApp];
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)resetNowPlayingAppIfNeeded:(unsigned int)needed allowedToBeNowPlaying:(BOOL)playing canBeNowPlayingApp:(BOOL)app
{
  appCopy = app;
  playingCopy = playing;
  v18 = *MEMORY[0x1E69E9840];
  nowPlayingAppDisplayID = [(MXNowPlayingAppManager *)self nowPlayingAppDisplayID];
  defaultMusicApp = [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp];
  v11 = [(NSString *)nowPlayingAppDisplayID isEqualToString:defaultMusicApp];
  if (MX_FeatureFlags_IsNowPlayingAppStackEnabled())
  {
    if ([-[MXNowPlayingAppManager copyTopOfNowPlayingAppStack](self "copyTopOfNowPlayingAppStack")])
    {
      v12 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppStackSize]== 1;
    }

    else
    {
      v12 = 0;
    }

    v11 &= v12;
  }

  if (!needed || v11)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = 0;
  }

  else
  {
    if (needed == 3 && !playingCopy)
    {
      v13 = @"of new interruption style";
LABEL_22:
      [(MXNowPlayingAppManager *)self resetNowPlayingApp:v13];
      [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
      result = 1;
      goto LABEL_23;
    }

    if (needed == 4 && !appCopy)
    {
      v13 = @"of canBeNowPlayingApp changed to false";
      goto LABEL_22;
    }

    if (needed == 2)
    {
      v13 = @"app went into background";
      goto LABEL_22;
    }

    IsNowPlayingAppStackEnabled = MX_FeatureFlags_IsNowPlayingAppStackEnabled();
    result = 0;
    if (needed == 7 && IsNowPlayingAppStackEnabled)
    {
      v13 = @"Now Playing app stack is being popped";
      goto LABEL_22;
    }
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)nowPlayingAppStackSize
{
  [(NSLock *)self->mLock lock];
  v3 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack count];
  [(NSLock *)self->mLock unlock];
  return v3;
}

- (BOOL)doesNowPlayingAppStackContain:(id)contain
{
  v12 = *MEMORY[0x1E69E9840];
  if (contain)
  {
    [(NSLock *)self->mLock lock];
    v5 = [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID objectForKey:contain];
    if (v5)
    {
      containCopy = v5;
    }

    else
    {
      containCopy = contain;
    }

    v7 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack containsObject:containCopy];
    [(NSLock *)self->mLock unlock];
    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (void)pushToNowPlayingAppStack:(id)stack hostProcessAttributionBundleID:(id)d
{
  v39 = *MEMORY[0x1E69E9840];
  if (stack)
  {
    nowPlayingAppStackSize = [(MXNowPlayingAppManager *)self nowPlayingAppStackSize];
    [(NSLock *)self->mLock lock];
    [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeObject:stack];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    mNowPlayingAppHostProcessAttributionBundleID = self->mNowPlayingAppHostProcessAttributionBundleID;
    v9 = [(NSMutableDictionary *)mNowPlayingAppHostProcessAttributionBundleID countByEnumeratingWithState:&v22 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(mNowPlayingAppHostProcessAttributionBundleID);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([stack isEqualToString:{-[NSMutableDictionary objectForKey:](self->mNowPlayingAppHostProcessAttributionBundleID, "objectForKey:", v13)}])
          {
            [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeObjectForKey:v13];
            goto LABEL_12;
          }
        }

        v10 = [(NSMutableDictionary *)mNowPlayingAppHostProcessAttributionBundleID countByEnumeratingWithState:&v22 objects:v38 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack addObject:stack];
    if (d)
    {
      [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID setObject:stack forKey:d];
    }

    [(NSLock *)self->mLock unlock];
    if (dword_1EB75DE40)
    {
      v27 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = v27;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        nowPlayingAppStackSize2 = [(MXNowPlayingAppManager *)self nowPlayingAppStackSize];
        v28 = 136316162;
        v29 = "[MXNowPlayingAppManager pushToNowPlayingAppStack:hostProcessAttributionBundleID:]";
        v30 = 2114;
        stackCopy = stack;
        v32 = 2114;
        dCopy = d;
        v34 = 2048;
        v35 = nowPlayingAppStackSize;
        v36 = 2048;
        v37 = nowPlayingAppStackSize2;
        LODWORD(v21) = 52;
        v20 = &v28;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(MXNowPlayingAppManager *)self nowPlayingAppStackSize:v20]>= 6)
    {
      [(MXNowPlayingAppManager *)self popNowPlayingAppStackOldestDisplayID];
    }

    [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
  }

  else
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)popNowPlayingAppStack
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->mLock lock];
  if (dword_1EB75DE40)
  {
    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(NSMutableArray *)self->mNowPlayingAppDisplayIDStack count:v12])
  {
    lastObject = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject];
    [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeObject:lastObject];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    mNowPlayingAppHostProcessAttributionBundleID = self->mNowPlayingAppHostProcessAttributionBundleID;
    v6 = [(NSMutableDictionary *)mNowPlayingAppHostProcessAttributionBundleID countByEnumeratingWithState:&v14 objects:v20 count:16];
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
            objc_enumerationMutation(mNowPlayingAppHostProcessAttributionBundleID);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([lastObject isEqualToString:{-[NSMutableDictionary objectForKey:](self->mNowPlayingAppHostProcessAttributionBundleID, "objectForKey:", v10)}])
          {
            [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeObjectForKey:v10];
            goto LABEL_14;
          }
        }

        v7 = [(NSMutableDictionary *)mNowPlayingAppHostProcessAttributionBundleID countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_14:
  if (![(NSMutableArray *)self->mNowPlayingAppDisplayIDStack count])
  {
    -[NSMutableArray addObject:](self->mNowPlayingAppDisplayIDStack, "addObject:", [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp]);
  }

  [(MXNowPlayingAppManager *)self setNowPlayingAppDisplayID:[(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject]];
  [(MXNowPlayingAppManager *)self setNowPlayingAppPID:0];
  [(MXNowPlayingAppManager *)self setNowPlayingAppStopTime:0];
  [(NSLock *)self->mLock unlock];
  [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeFromNowPlayingAppStack:(id)stack
{
  v15 = *MEMORY[0x1E69E9840];
  if (stack)
  {
    [(NSLock *)self->mLock lock];
    lastObject = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject];
    v6 = [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID objectForKey:stack];
    if (v6)
    {
      stackCopy = v6;
    }

    else
    {
      stackCopy = stack;
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeObject:stackCopy, v13, v14];
    [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeObjectForKey:stack];
    if (![(NSMutableArray *)self->mNowPlayingAppDisplayIDStack count])
    {
      -[NSMutableArray addObject:](self->mNowPlayingAppDisplayIDStack, "addObject:", [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp]);
    }

    lastObject2 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject];
    v11 = [lastObject2 isEqualToString:lastObject];
    if ((v11 & 1) == 0)
    {
      [(MXNowPlayingAppManager *)self setNowPlayingAppDisplayID:lastObject2];
      [(MXNowPlayingAppManager *)self setNowPlayingAppPID:0];
      [(MXNowPlayingAppManager *)self setNowPlayingAppStopTime:0];
    }

    [(NSLock *)self->mLock unlock];
    [MXNowPlayingAppManager processNowPlayingAppPIDChangeIfNeeded:v11 ^ 1u];
    [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
  }

  else
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)populateNowPlayingAppStack:(id)stack hostProcessAttributionBundleID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [stack countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(stack);
        }

        -[MXNowPlayingAppManager pushToNowPlayingAppStack:hostProcessAttributionBundleID:](self, "pushToNowPlayingAppStack:hostProcessAttributionBundleID:", *(*(&v12 + 1) + 8 * v10), [d objectForKey:*(*(&v12 + 1) + 8 * v10)]);
        ++v10;
      }

      while (v8 != v10);
      v8 = [stack countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (![(MXNowPlayingAppManager *)self nowPlayingAppStackSize])
  {
    -[MXNowPlayingAppManager pushToNowPlayingAppStack:hostProcessAttributionBundleID:](self, "pushToNowPlayingAppStack:hostProcessAttributionBundleID:", [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp], 0);
  }

  [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)popNowPlayingAppStackOldestDisplayID
{
  [(NSLock *)self->mLock lock];
  v3 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack objectAtIndex:0];
  [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeObjectForKey:v3];
  [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeObject:v3];
  mLock = self->mLock;

  [(NSLock *)mLock unlock];
}

- (void)saveNowPlayingAppStackToDisk
{
  v5 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->mLock lock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppDisplayIDStack", self->mNowPlayingAppDisplayIDStack);
  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppHostProcessAttributionBundleID", self->mNowPlayingAppHostProcessAttributionBundleID);
  [(NSLock *)self->mLock unlock];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)clearNowPlayingAppStack
{
  [(NSLock *)self->mLock lock];
  [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeAllObjects];
  [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeAllObjects];
  mLock = self->mLock;

  [(NSLock *)mLock unlock];
}

- (void)updateNowPlayingAppStackFromDisk
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = MXCFPreferencesCopyPreference(@"nowPlayingAppDisplayIDStack");
  v5 = MXCFPreferencesCopyPreference(@"nowPlayingAppHostProcessAttributionBundleID");
  [(MXNowPlayingAppManager *)self clearNowPlayingAppStack];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!v5)
    {
LABEL_7:
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  [(MXNowPlayingAppManager *)self populateNowPlayingAppStack:v4 hostProcessAttributionBundleID:v5, v9, v10];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dumpNowPlayingAppInfo
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->mLock lock];
  v3 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack copy];
  v4 = [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID copy];
  [(NSLock *)self->mLock unlock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  CMSMDebugUtility_PrintCollection(v3);
  if (dword_1EB75DE40)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDebugUtility_PrintDictionary(v4);
  if (dword_1EB75DE40)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end