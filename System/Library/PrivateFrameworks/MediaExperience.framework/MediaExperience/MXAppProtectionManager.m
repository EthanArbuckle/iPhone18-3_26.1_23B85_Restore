@interface MXAppProtectionManager
+ (id)sharedInstance;
- (MXAppProtectionManager)init;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)cancelLockedAppRemovalFromNowPlayingAppStack:(id)a3;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)handlePlayingStateChangedForNowPlayingApp:(id)a3 isCurrentlyPlaying:(BOOL)a4;
- (void)scheduleLockedAppRemovalFromNowPlayingAppStack:(id)a3;
@end

@implementation MXAppProtectionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[MXAppProtectionManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_11;
}

MXAppProtectionManager *__40__MXAppProtectionManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXAppProtectionManager);
  sharedInstance_sSharedInstance_11 = result;
  return result;
}

- (MXAppProtectionManager)init
{
  v7.receiver = self;
  v7.super_class = MXAppProtectionManager;
  v2 = [(MXAppProtectionManager *)&v7 init];
  if (v2)
  {
    if (MX_FeatureFlags_IsProtectedAppsEnabled())
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->mSerialQueue = dispatch_queue_create("com.apple.mediaexperience.AppProtectionManager", v3);
      v2->mLockedApps = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v2->mLockedAppsToBeRemovedFromNowPlayingAppStack = objc_alloc_init(MEMORY[0x1E695DF70]);
      mSerialQueue = v2->mSerialQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __30__MXAppProtectionManager_init__block_invoke;
      v6[3] = &unk_1E7AE7CE0;
      v6[4] = v2;
      MXDispatchAsync("[MXAppProtectionManager init]", "MX_AppProtectionManager.m", 85, 0, 0, mSerialQueue, v6);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

uint64_t __30__MXAppProtectionManager_init__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__10;
  v2 = getAPSubjectClass_softClass;
  v20 = __Block_byref_object_dispose__10;
  v21 = getAPSubjectClass_softClass;
  if (!getAPSubjectClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getAPSubjectClass_block_invoke;
    v26 = &unk_1E7AE73A0;
    v27 = &v16;
    __getAPSubjectClass_block_invoke(&v23);
    v2 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  *(*(a1 + 32) + 32) = [objc_msgSend(v2 "subjectMonitorRegistry")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__10;
  v3 = getAPApplicationClass_softClass;
  v20 = __Block_byref_object_dispose__10;
  v21 = getAPApplicationClass_softClass;
  if (!getAPApplicationClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getAPApplicationClass_block_invoke;
    v26 = &unk_1E7AE73A0;
    v27 = &v16;
    __getAPApplicationClass_block_invoke(&v23);
    v3 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  v4 = [v3 lockedApplications];
  result = [v4 countByEnumeratingWithState:&v12 objects:v22 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) bundleIdentifier];
        if (v9)
        {
          [*(*(a1 + 32) + 16) addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v12 objects:v22 count:16];
      v6 = result;
    }

    while (result);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  mSerialQueue = self->mSerialQueue;
  if (mSerialQueue)
  {
    dispatch_release(mSerialQueue);
    self->mSerialQueue = 0;
  }

  self->mLockedApps = 0;
  self->mLockedAppsToBeRemovedFromNowPlayingAppStack = 0;
  [(APSubjectMonitorSubscription *)self->mSubjectMonitor invalidate];
  self->mSubjectMonitor = 0;
  v4.receiver = self;
  v4.super_class = MXAppProtectionManager;
  [(MXAppProtectionManager *)&v4 dealloc];
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  mSerialQueue = self->mSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__MXAppProtectionManager_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v5[3] = &unk_1E7AEA340;
  v5[4] = a3;
  v5[5] = self;
  MXDispatchSync("[MXAppProtectionManager appProtectionSubjectsChanged:forSubscription:]", "MX_AppProtectionManager.m", 132, 0, 0, mSerialQueue, v5);
}

uint64_t __71__MXAppProtectionManager_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = [v7 bundleIdentifier];
        v9 = [*(*(a1 + 40) + 16) containsObject:v8];
        if ([v7 isLocked])
        {
          if ((v9 & 1) == 0)
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [*(*(a1 + 40) + 16) addObject:{v8, v15, v16}];
            v12 = CMSMNP_CopyNowPlayingAppSession();
            v13 = CMSUtility_CopyBundleID(v12);
            if (([v13 isEqualToString:v8] & 1) == 0)
            {
              [*(a1 + 40) scheduleLockedAppRemovalFromNowPlayingAppStack:v8];
            }
          }
        }

        else if (v9)
        {
          if (dword_1EB75DE40)
          {
            v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [*(*(a1 + 40) + 16) removeObject:{v8, v15, v16}];
          [*(a1 + 40) cancelLockedAppRemovalFromNowPlayingAppStack:v8];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v4 = result;
    }

    while (result);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handlePlayingStateChangedForNowPlayingApp:(id)a3 isCurrentlyPlaying:(BOOL)a4
{
  v7 = a3;
  mSerialQueue = self->mSerialQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__MXAppProtectionManager_handlePlayingStateChangedForNowPlayingApp_isCurrentlyPlaying___block_invoke;
  v9[3] = &unk_1E7AEB958;
  v9[4] = self;
  v9[5] = a3;
  v10 = a4;
  MXDispatchAsync("[MXAppProtectionManager handlePlayingStateChangedForNowPlayingApp:isCurrentlyPlaying:]", "MX_AppProtectionManager.m", 176, 0, 0, mSerialQueue, v9);
}

void __87__MXAppProtectionManager_handlePlayingStateChangedForNowPlayingApp_isCurrentlyPlaying___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      [v2 cancelLockedAppRemovalFromNowPlayingAppStack:v3];
    }

    else
    {
      [v2 scheduleLockedAppRemovalFromNowPlayingAppStack:v3];
    }
  }

  v4 = *(a1 + 40);
}

- (void)scheduleLockedAppRemovalFromNowPlayingAppStack:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([+[MXNowPlayingAppManager doesNowPlayingAppStackContain:"doesNowPlayingAppStackContain:"]
  {
    mLockedAppsToBeRemovedFromNowPlayingAppStack = self->mLockedAppsToBeRemovedFromNowPlayingAppStack;
    v13 = a3;
    v14[0] = [MEMORY[0x1E695DF00] now];
    -[NSMutableArray addObject:](mLockedAppsToBeRemovedFromNowPlayingAppStack, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1]);
    if (dword_1EB75DE40)
    {
      v12 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = dispatch_time(0, 30000000000);
    mSerialQueue = self->mSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MXAppProtectionManager_scheduleLockedAppRemovalFromNowPlayingAppStack___block_invoke;
    block[3] = &unk_1E7AEBCA0;
    block[4] = self;
    block[5] = 30;
    dispatch_after(v7, mSerialQueue, block);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __73__MXAppProtectionManager_scheduleLockedAppRemovalFromNowPlayingAppStack___block_invoke(uint64_t a1)
{
  v1 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v2;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v15 = v1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [objc_msgSend(v7 "allKeys")];
        v9 = [objc_msgSend(v7 "allValues")];
        [objc_msgSend(MEMORY[0x1E695DF00] "now")];
        if (v10 >= *(v1 + 40))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v1 = v15;
          }

          [*(*(v1 + 32) + 24) removeObject:{v7, v13, v14}];
          [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager removeFromNowPlayingAppStack:"removeFromNowPlayingAppStack:", v8];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)cancelLockedAppRemovalFromNowPlayingAppStack:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableArray *)self->mLockedAppsToBeRemovedFromNowPlayingAppStack copy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v9 "allKeys")])
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(NSMutableArray *)self->mLockedAppsToBeRemovedFromNowPlayingAppStack removeObject:v9, v12, v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)dumpDebugInfo
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__MXAppProtectionManager_dumpDebugInfo__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchSync("[MXAppProtectionManager dumpDebugInfo]", "MX_AppProtectionManager.m", 250, 0, 0, mSerialQueue, v3);
}

void __39__MXAppProtectionManager_dumpDebugInfo__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v46 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v46 setDateFormat:@"YYYY-MM-dd HH:mm:ss:ms"];
  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = a1;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v64 count:{16, v39, v42}];
  if (v5)
  {
    v6 = v5;
    v7 = *v52;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (dword_1EB75DE40)
        {
          v9 = *(*(&v51 + 1) + 8 * i);
          v56 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v11 = v56;
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
            v57 = 136315394;
            v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
            v59 = 2114;
            v60 = v9;
            LODWORD(v43) = 22;
            v40 = &v57;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v6);
  }

  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v56;
    if (os_log_type_enabled(v13, type))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v57 = 136315138;
      v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
      LODWORD(v43) = 12;
      v40 = &v57;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v56 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = v56;
      if (os_log_type_enabled(v16, type))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v57 = 136315138;
        v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
        LODWORD(v43) = 12;
        v40 = &v57;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = *(*(v45 + 32) + 24);
  v20 = [v19 countByEnumeratingWithState:&v47 objects:v63 count:{16, v40, v43}];
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v47 + 1) + 8 * j);
        v25 = [objc_msgSend(v24 allKeys];
        v26 = [objc_msgSend(v24 "allValues")];
        if (dword_1EB75DE40)
        {
          v27 = v26;
          v56 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v29 = v56;
          if (os_log_type_enabled(v28, type))
          {
            v30 = v29;
          }

          else
          {
            v30 = v29 & 0xFFFFFFFE;
          }

          if (v30)
          {
            v31 = [v46 stringFromDate:v27];
            v57 = 136315650;
            v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
            v59 = 2114;
            v60 = v25;
            v61 = 2114;
            v62 = v31;
            LODWORD(v44) = 32;
            v41 = &v57;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v21);
  }

  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v33 = v56;
    if (os_log_type_enabled(v32, type))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 0xFFFFFFFE;
    }

    if (v34)
    {
      v57 = 136315138;
      v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = v56;
    if (os_log_type_enabled(v35, type))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (v37)
    {
      v57 = 136315138;
      v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v38 = *MEMORY[0x1E69E9840];
}

@end