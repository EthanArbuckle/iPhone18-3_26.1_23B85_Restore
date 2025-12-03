@interface MXMediaEndowmentManager
+ (id)sharedInstance;
- (MXMediaEndowmentManager)init;
- (id)getHostProcessAttributions:(int)attributions;
- (int)grantMediaEndowment:(int)endowment environmentID:(id)d endowmentPayload:(id)payload;
- (int)revokeMediaEndowment:(int)endowment environmentID:(id)d;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)handleEndowmentTreeUpdate;
- (void)iterateEndowmentTree:(id)tree rootPID:(id)d environment:(id)environment endowmentLinks:(id)links;
- (void)loadMediaEndowments;
- (void)processStateUpdateHandler:(id)handler process:(id)process update:(id)update;
- (void)refreshAssertions;
- (void)refreshDomainAssertions:(id)assertions currentlyActivePIDs:(id)ds;
- (void)refreshEndowmentTrees;
- (void)storeMediaEndowments;
@end

@implementation MXMediaEndowmentManager

uint64_t __31__MXMediaEndowmentManager_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = +[MXMediaEndowmentManager sharedInstance];

  return [(MXMediaEndowmentManager *)v7 processStateUpdateHandler:a2 process:a3 update:a4];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[MXMediaEndowmentManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_2;
}

uint64_t __44__MXMediaEndowmentManager_refreshAssertions__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E695DFA8] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v18 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v18)
  {
    v17 = *v34;
    do
    {
      v2 = 0;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v2;
        v3 = *(*(&v33 + 1) + 8 * v2);
        if ([v3 isPlaying])
        {
          v4 = [objc_msgSend(v3 "clientPID")];
          if (v4)
          {
            v5 = v4;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v20 = *(*(a1 + 32) + 40);
            v23 = [v20 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v23)
            {
              v21 = *v30;
              do
              {
                v6 = 0;
                do
                {
                  if (*v30 != v21)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v24 = v6;
                  v7 = *(*(&v29 + 1) + 8 * v6);
                  v8 = [*(*(a1 + 32) + 40) objectForKey:v7];
                  v25 = 0u;
                  v26 = 0u;
                  v27 = 0u;
                  v28 = 0u;
                  v9 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
                  if (v9)
                  {
                    v10 = v9;
                    v11 = *v26;
                    do
                    {
                      for (i = 0; i != v10; ++i)
                      {
                        if (*v26 != v11)
                        {
                          objc_enumerationMutation(v8);
                        }

                        v13 = [v8 objectForKey:*(*(&v25 + 1) + 8 * i)];
                        if ([v13 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v5)}] && objc_msgSend(v3, "isPlaying"))
                        {
                          [v1 addObject:v7];
                          [v1 addObjectsFromArray:{objc_msgSend(v13, "allObjects")}];
                        }
                      }

                      v10 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
                    }

                    while (v10);
                  }

                  v6 = v24 + 1;
                }

                while (v24 + 1 != v23);
                v23 = [v20 countByEnumeratingWithState:&v29 objects:v38 count:16];
              }

              while (v23);
            }
          }
        }

        v2 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v18);
  }

  result = [*(a1 + 32) refreshDomainAssertions:@"MediaPlayback" currentlyActivePIDs:v1];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)refreshAssertions
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MXMediaEndowmentManager_refreshAssertions__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchAsync("[MXMediaEndowmentManager refreshAssertions]", "MX_MediaEndowmentManager.m", 658, 0, 0, mSerialQueue, v3);
}

MXMediaEndowmentManager *__41__MXMediaEndowmentManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXMediaEndowmentManager);
  sharedInstance_sSharedInstance_2 = result;
  return result;
}

- (MXMediaEndowmentManager)init
{
  v7.receiver = self;
  v7.super_class = MXMediaEndowmentManager;
  v2 = [(MXMediaEndowmentManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->mSerialQueue = dispatch_queue_create("com.apple.mediaexperience.MediaEndowmentManager", v3);
    v2->mEndowments = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->mEndowmentPayloads = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->mEndowmentTrees = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->mMediaPlaybackAssertions = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [MEMORY[0x1E69C75F8] monitorWithConfiguration:&__block_literal_global_6];
    v2->mProcessMonitor = v4;
    v5 = v4;
  }

  return v2;
}

uint64_t __31__MXMediaEndowmentManager_init__block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C7630] descriptor];
  [v3 setEndowmentNamespaces:&unk_1F28AF590];
  [v3 setValues:32];
  [a2 setStateDescriptor:v3];
  v4 = NSClassFromString(&cfstr_Rbsprocessever.isa);
  v7[0] = [(objc_class *)v4 performSelector:NSSelectorFromString(&cfstr_Everythingpred.isa)];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 1)}];
  result = [a2 setUpdateHandler:&__block_literal_global_18];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v36 = *MEMORY[0x1E69E9840];
  mSerialQueue = self->mSerialQueue;
  if (mSerialQueue)
  {
    dispatch_release(mSerialQueue);
    self->mSerialQueue = 0;
  }

  [(RBSProcessMonitor *)self->mProcessMonitor invalidate];

  self->mProcessMonitor = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  mEndowments = self->mEndowments;
  v5 = [(NSMutableDictionary *)mEndowments countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(mEndowments);
        }

        v9 = [(NSMutableDictionary *)self->mEndowments objectForKey:*(*(&v29 + 1) + 8 * i)];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v26;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [objc_msgSend(v9 objectForKey:{*(*(&v25 + 1) + 8 * j)), "invalidate"}];
            }

            v11 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
          }

          while (v11);
        }
      }

      v6 = [(NSMutableDictionary *)mEndowments countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  self->mEndowments = 0;
  self->mEndowmentPayloads = 0;

  self->mEndowmentTrees = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  mMediaPlaybackAssertions = self->mMediaPlaybackAssertions;
  v15 = [(NSMutableDictionary *)mMediaPlaybackAssertions countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(mMediaPlaybackAssertions);
        }

        [-[NSMutableDictionary objectForKey:](self->mMediaPlaybackAssertions objectForKey:{*(*(&v21 + 1) + 8 * k)), "invalidate"}];
      }

      v16 = [(NSMutableDictionary *)mMediaPlaybackAssertions countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v16);
  }

  self->mMediaPlaybackAssertions = 0;
  v20.receiver = self;
  v20.super_class = MXMediaEndowmentManager;
  [(MXMediaEndowmentManager *)&v20 dealloc];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)iterateEndowmentTree:(id)tree rootPID:(id)d environment:(id)environment endowmentLinks:(id)links
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [links countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(links);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [-[NSMutableDictionary objectForKey:](self->mEndowmentTrees objectForKey:{d), "objectForKey:", environment}];
        [v15 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v14, "targetPid"))}];
        -[MXMediaEndowmentManager iterateEndowmentTree:rootPID:environment:endowmentLinks:](self, "iterateEndowmentTree:rootPID:environment:endowmentLinks:", tree, d, environment, [tree childrenLinks:v14]);
        ++v13;
      }

      while (v11 != v13);
      v11 = [links countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)refreshEndowmentTrees
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__MXMediaEndowmentManager_refreshEndowmentTrees__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchAsync("[MXMediaEndowmentManager refreshEndowmentTrees]", "MX_MediaEndowmentManager.m", 279, 0, 0, mSerialQueue, v3);
}

uint64_t __48__MXMediaEndowmentManager_refreshEndowmentTrees__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C7580] endowmentTreeForNamespace:@"com.apple.mediaexperience.session-Media"];
  [*(*(a1 + 32) + 40) removeAllObjects];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v2 rootLinks];
  v3 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "targetPid")}];
        if (![*(*(a1 + 32) + 40) objectForKey:v8])
        {
          [*(*(a1 + 32) + 40) setObject:objc_msgSend(MEMORY[0x1E695DF90] forKey:{"dictionary"), v8}];
        }

        v9 = [*(*(a1 + 32) + 40) objectForKey:v8];
        [v9 setObject:objc_msgSend(MEMORY[0x1E695DFA8] forKey:{"set"), objc_msgSend(v7, "targetEnvironment")}];
        [*(a1 + 32) iterateEndowmentTree:v2 rootPID:v8 environment:objc_msgSend(v7 endowmentLinks:{"targetEnvironment"), objc_msgSend(v2, "childrenLinks:", v7)}];
      }

      v4 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v4);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [*(*(a1 + 32) + 24) allKeys];
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * j);
        if (![*(*(a1 + 32) + 40) objectForKey:v15])
        {
          v16 = [*(*(a1 + 32) + 24) objectForKey:v15];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v28;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v28 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [objc_msgSend(v16 objectForKey:{*(*(&v27 + 1) + 8 * k)), "invalidate"}];
              }

              v18 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v18);
          }

          if (dword_1EB75DE60)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [*(*(a1 + 32) + 24) removeObjectForKey:{v15, v24, v25}];
          [*(*(a1 + 32) + 32) removeObjectForKey:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v12);
  }

  result = [*(a1 + 32) storeMediaEndowments];
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleEndowmentTreeUpdate
{
  [(MXMediaEndowmentManager *)self refreshEndowmentTrees];

  [(MXMediaEndowmentManager *)self refreshAssertions];
}

- (void)processStateUpdateHandler:(id)handler process:(id)process update:(id)update
{
  v12 = *MEMORY[0x1E69E9840];
  previousState = [objc_msgSend(objc_msgSend(update previousState];
  v7 = [objc_msgSend(objc_msgSend(update "state")];
  if (previousState)
  {
    if ((v7 & 1) == 0)
    {
      if (dword_1EB75DE60)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    if (dword_1EB75DE60)
    {
LABEL_7:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_8:
    [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager handleEndowmentTreeUpdate:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (int)grantMediaEndowment:(int)endowment environmentID:(id)d endowmentPayload:(id)payload
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = [payload objectForKey:@"AuditToken"];
  v10 = [payload objectForKey:@"BundleID"];
  if (endowment && d && (v9 ? (v11 = v10 == 0) : (v11 = 1), !v11))
  {
    mSerialQueue = self->mSerialQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__MXMediaEndowmentManager_grantMediaEndowment_environmentID_endowmentPayload___block_invoke;
    v17[3] = &unk_1E7AE7D08;
    endowmentCopy = endowment;
    v17[4] = self;
    v17[5] = d;
    v17[7] = v10;
    v17[8] = &v21;
    v17[6] = payload;
    MXDispatchSync("[MXMediaEndowmentManager grantMediaEndowment:environmentID:endowmentPayload:]", "MX_MediaEndowmentManager.m", 368, 0, 0, mSerialQueue, v17);
    v13 = *(v22 + 6);
  }

  else
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = -15681;
  }

  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void __78__MXMediaEndowmentManager_grantMediaEndowment_environmentID_endowmentPayload___block_invoke(uint64_t a1)
{
  v23[18] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 72)];
  if ([objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "objectForKey:", *(a1 + 40)}])
  {
    if (dword_1EB75DE60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2, v18, v20), "objectForKey:", *(a1 + 40)), "invalidate"}];
    [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "removeObjectForKey:", *(a1 + 40)}];
    [objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{v2), "removeObjectForKey:", *(a1 + 40)}];
  }

  v4 = [MEMORY[0x1E69C7640] targetWithPid:*(a1 + 72) environmentIdentifier:*(a1 + 40)];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [MEMORY[0x1E69C7578] grantWithNamespace:@"com.apple.mediaexperience.session-Media" endowment:*(a1 + 48)];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [MEMORY[0x1E69C7530] attributeWithCompletionPolicy:1];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{originator:com.apple.mediaexperience, bundleID:%@ clientPID:%d, environmentID:%@}", *(a1 + 56), *(a1 + 72), *(a1 + 40)];
  v11 = objc_alloc(MEMORY[0x1E69C7548]);
  v23[0] = v7;
  v23[1] = v9;
  v12 = [v11 initWithExplanation:v10 target:v5 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v23, 2)}];
  if (v12)
  {
    v13 = v12;
    if (([v12 acquireWithError:&v22] & 1) == 0)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(*(*(a1 + 64) + 8) + 24) = -15687;
    }

    if (!*(*(*(a1 + 64) + 8) + 24))
    {
      if (dword_1EB75DE60)
      {
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (![*(*(a1 + 32) + 24) objectForKey:{v2, v19, v21}])
      {
        [*(*(a1 + 32) + 24) setObject:objc_msgSend(MEMORY[0x1E695DF90] forKey:{"dictionary"), v2}];
        [*(*(a1 + 32) + 32) setObject:objc_msgSend(MEMORY[0x1E695DF90] forKey:{"dictionary"), v2}];
      }

      [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "setObject:forKey:", v13, *(a1 + 40)}];
      [objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{v2), "setObject:forKey:", *(a1 + 48), *(a1 + 40)}];
      [*(a1 + 32) refreshEndowmentTrees];
    }
  }

  else
  {
LABEL_11:
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 64) + 8) + 24) = -15687;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (int)revokeMediaEndowment:(int)endowment environmentID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (endowment && d)
  {
    mSerialQueue = self->mSerialQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__MXMediaEndowmentManager_revokeMediaEndowment_environmentID___block_invoke;
    v9[3] = &unk_1E7AE7D30;
    endowmentCopy = endowment;
    v9[4] = self;
    v9[5] = d;
    v9[6] = &v13;
    MXDispatchSync("[MXMediaEndowmentManager revokeMediaEndowment:environmentID:]", "MX_MediaEndowmentManager.m", 462, 0, 0, mSerialQueue, v9);
    v5 = *(v14 + 6);
  }

  else
  {
    v12 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = -15681;
  }

  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __62__MXMediaEndowmentManager_revokeMediaEndowment_environmentID___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v3 = [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "objectForKey:", *(a1 + 40)}];
  if (v3)
  {
    [v3 invalidate];
    if (dword_1EB75DE60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2, v8, v9), "removeObjectForKey:", *(a1 + 40)}];
    [objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{v2), "removeObjectForKey:", *(a1 + 40)}];
    if (![objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "count"}])
    {
      [*(*(a1 + 32) + 24) removeObjectForKey:v2];
      [*(*(a1 + 32) + 32) removeObjectForKey:v2];
    }

    result = [*(a1 + 32) refreshEndowmentTrees];
  }

  else
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 48) + 8) + 24) = -15685;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)getHostProcessAttributions:(int)attributions
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mSerialQueue = self->mSerialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MXMediaEndowmentManager_getHostProcessAttributions___block_invoke;
  v8[3] = &unk_1E7AE7D58;
  attributionsCopy = attributions;
  v8[4] = self;
  v8[5] = v5;
  MXDispatchSync("[MXMediaEndowmentManager getHostProcessAttributions:]", "MX_MediaEndowmentManager.m", 497, 0, 0, mSerialQueue, v8);
  if (![v5 count])
  {

    v5 = 0;
  }

  return v5;
}

uint64_t __54__MXMediaEndowmentManager_getHostProcessAttributions___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(*(a1 + 32) + 40);
  result = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  v16 = result;
  if (result)
  {
    v15 = *v22;
    do
    {
      v3 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v21 + 1) + 8 * v3);
        v5 = [*(*(a1 + 32) + 40) objectForKey:v4];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v18;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v18 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v17 + 1) + 8 * i);
              v11 = [v5 objectForKey:v10];
              if ([v11 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *(a1 + 48))}])
              {
                v12 = [objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{v4), "objectForKey:", v10}];
                if (v12)
                {
                  [*(a1 + 40) addObject:v12];
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v7);
        }

        ++v3;
      }

      while (v3 != v16);
      result = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      v16 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)storeMediaEndowments
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->mEndowments;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v15 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [(NSMutableDictionary *)self->mEndowments objectForKey:v6];
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v7 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEndowmentPayloads forKey:{"objectForKey:", v6), "objectForKey:", *(*(&v17 + 1) + 8 * j)), *(*(&v17 + 1) + 8 * j)}];
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }

        [v16 setObject:v7 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", v6)}];
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"mediaEndowments", v16);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)loadMediaEndowments
{
  v49 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if (v2 > 45.0)
  {
    v3 = MXCFPreferencesCopyPreference(@"mediaEndowments");
    v27 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v27 setNumberStyle:1];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v3;
    v24 = [v3 countByEnumeratingWithState:&v33 objects:v48 count:16];
    if (!v24)
    {
      goto LABEL_27;
    }

    v23 = *v34;
    while (1)
    {
      v4 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v4;
        v5 = *(*(&v33 + 1) + 8 * v4);
        v6 = [obj objectForKey:{v5, v21, v22}];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v29 objects:v47 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v30;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v30 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v29 + 1) + 8 * i);
              v12 = [v6 objectForKey:{v11, v21, v22}];
              if (-[MXMediaEndowmentManager grantMediaEndowment:environmentID:endowmentPayload:](self, "grantMediaEndowment:environmentID:endowmentPayload:", [objc_msgSend(v27 numberFromString:{v5), "unsignedIntValue"}], v11, v12))
              {
                v38 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v14 = v38;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v15 = v14;
                }

                else
                {
                  v15 = v14 & 0xFFFFFFFE;
                }

                if (v15)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                v38 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v17 = v38;
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
LABEL_22:
                  v39 = 136315906;
                  v40 = "[MXMediaEndowmentManager loadMediaEndowments]";
                  v41 = 2114;
                  v42 = v5;
                  v43 = 2114;
                  v44 = v11;
                  v45 = 2114;
                  v46 = v12;
                  LODWORD(v22) = 42;
                  v21 = &v39;
                  _os_log_send_and_compose_impl();
                }
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v8 = [v6 countByEnumeratingWithState:&v29 objects:v47 count:16];
          }

          while (v8);
        }

        v4 = v26 + 1;
      }

      while (v26 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v33 objects:v48 count:16];
      if (!v24)
      {
LABEL_27:

        [(MXMediaEndowmentManager *)self refreshEndowmentTrees];
        goto LABEL_30;
      }
    }
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"mediaEndowments", 0);
  if (dword_1EB75DE60)
  {
    v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_30:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)refreshDomainAssertions:(id)assertions currentlyActivePIDs:(id)ds
{
  v65 = *MEMORY[0x1E69E9840];
  obj = [MEMORY[0x1E695DFA8] set];
  if ([assertions isEqualToString:@"MediaPlayback"])
  {
    mMediaPlaybackAssertions = self->mMediaPlaybackAssertions;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v7 = [ds countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v52;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v52 != v9)
          {
            objc_enumerationMutation(ds);
          }

          v11 = *(*(&v51 + 1) + 8 * i);
          if (![(NSMutableDictionary *)mMediaPlaybackAssertions objectForKey:v11, v34, v36])
          {
            v50 = 0;
            assertions = [MEMORY[0x1E696AEC0] stringWithFormat:@"{originator:com.apple.mediaexperience, clientPID:%@ DomainName:%@}", v11, assertions];
            v13 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.mediaexperience" name:assertions];
            v14 = objc_alloc(MEMORY[0x1E69C7548]);
            v15 = [MEMORY[0x1E69C7640] targetWithPid:{objc_msgSend(v11, "unsignedIntValue")}];
            v63 = v13;
            v16 = [v14 initWithExplanation:assertions target:v15 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v63, 1)}];
            if ([v16 acquireWithError:&v50])
            {
              if (dword_1EB75DE60)
              {
                *v49 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [(NSMutableDictionary *)mMediaPlaybackAssertions setObject:v16 forKey:v11, v34, v36];
            }

            else
            {
              *v49 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }

        v8 = [ds countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v8);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = [(NSMutableDictionary *)mMediaPlaybackAssertions countByEnumeratingWithState:&v44 objects:v56 count:16, v34, v36];
    if (v19)
    {
      v20 = v19;
      v21 = *v45;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(mMediaPlaybackAssertions);
          }

          v23 = *(*(&v44 + 1) + 8 * j);
          if (([ds containsObject:v23] & 1) == 0)
          {
            [obj addObject:v23];
          }
        }

        v20 = [(NSMutableDictionary *)mMediaPlaybackAssertions countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v20);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = [obj countByEnumeratingWithState:&v40 objects:v55 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v40 + 1) + 8 * k);
          [-[NSMutableDictionary objectForKey:](mMediaPlaybackAssertions objectForKey:{v28), "invalidate"}];
          if (dword_1EB75DE60)
          {
            LODWORD(v50) = 0;
            v49[0] = OS_LOG_TYPE_DEFAULT;
            v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v30 = v50;
            if (os_log_type_enabled(v29, v49[0]))
            {
              v31 = v30;
            }

            else
            {
              v31 = v30 & 0xFFFFFFFE;
            }

            if (v31)
            {
              v57 = 136315650;
              v58 = "[MXMediaEndowmentManager refreshDomainAssertions:currentlyActivePIDs:]";
              v59 = 2114;
              assertionsCopy = assertions;
              v61 = 2114;
              v62 = v28;
              LODWORD(v37) = 32;
              v35 = &v57;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(NSMutableDictionary *)mMediaPlaybackAssertions removeObjectForKey:v28, v35, v37];
        }

        v25 = [obj countByEnumeratingWithState:&v40 objects:v55 count:16];
      }

      while (v25);
    }
  }

  else
  {
    LODWORD(v50) = 0;
    v49[0] = OS_LOG_TYPE_DEFAULT;
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)dumpDebugInfo
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__MXMediaEndowmentManager_dumpDebugInfo__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchSync("[MXMediaEndowmentManager dumpDebugInfo]", "MX_MediaEndowmentManager.m", 720, 0, 0, mSerialQueue, v3);
}

uint64_t __40__MXMediaEndowmentManager_dumpDebugInfo__block_invoke(uint64_t a1)
{
  v180 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE60)
  {
    v165 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v165 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  obj = *(*(a1 + 32) + 24);
  v126 = [obj countByEnumeratingWithState:&v160 objects:v179 count:{16, v101, v108}];
  if (v126)
  {
    v123 = *v161;
    do
    {
      v3 = 0;
      do
      {
        if (*v161 != v123)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v160 + 1) + 8 * v3);
        v5 = [*(*(a1 + 32) + 24) objectForKey:{v4, v102, v109}];
        if (dword_1EB75DE60)
        {
          v165 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v7 = v165;
          if (os_log_type_enabled(v6, type))
          {
            v8 = v7;
          }

          else
          {
            v8 = v7 & 0xFFFFFFFE;
          }

          if (v8)
          {
            v172 = 136315394;
            v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            v174 = 2114;
            v175 = v4;
            LODWORD(v110) = 22;
            v103 = &v172;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v129 = v3;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v9 = [v5 countByEnumeratingWithState:&v156 objects:v178 count:{16, v103, v110}];
        if (v9)
        {
          v10 = v9;
          v11 = *v157;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v157 != v11)
              {
                objc_enumerationMutation(v5);
              }

              if (dword_1EB75DE60)
              {
                v13 = *(*(&v156 + 1) + 8 * i);
                v165 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v15 = v165;
                if (os_log_type_enabled(v14, type))
                {
                  v16 = v15;
                }

                else
                {
                  v16 = v15 & 0xFFFFFFFE;
                }

                if (v16)
                {
                  v17 = [objc_msgSend(v5 objectForKey:{v13), "explanation"}];
                  v172 = 136315650;
                  v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                  v174 = 2114;
                  v175 = v13;
                  v176 = 2114;
                  v177 = v17;
                  LODWORD(v109) = 32;
                  v102 = &v172;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            v10 = [v5 countByEnumeratingWithState:&v156 objects:v178 count:16];
          }

          while (v10);
        }

        if (dword_1EB75DE60)
        {
          v165 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = v165;
          if (os_log_type_enabled(v18, type))
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 & 0xFFFFFFFE;
          }

          if (v20)
          {
            v172 = 136315138;
            v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            LODWORD(v109) = 12;
            v102 = &v172;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        ++v3;
      }

      while ((v129 + 1) != v126);
      v126 = [obj countByEnumeratingWithState:&v160 objects:v179 count:16];
    }

    while (v126);
  }

  if (dword_1EB75DE60)
  {
    v165 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v22 = v165;
    if (os_log_type_enabled(v21, type))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v172 = 136315138;
      v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
      LODWORD(v109) = 12;
      v102 = &v172;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v165 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v25 = v165;
      if (os_log_type_enabled(v24, type))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v172 = 136315138;
        v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
        LODWORD(v109) = 12;
        v102 = &v172;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v115 = *(*(a1 + 32) + 32);
  v117 = [v115 countByEnumeratingWithState:&v152 objects:v171 count:{16, v102, v109}];
  if (v117)
  {
    v116 = *v153;
    do
    {
      v27 = 0;
      do
      {
        if (*v153 != v116)
        {
          v28 = v27;
          objc_enumerationMutation(v115);
          v27 = v28;
        }

        v118 = v27;
        v29 = *(*(&v152 + 1) + 8 * v27);
        v127 = [*(*(a1 + 32) + 32) objectForKey:{v29, v104, v111}];
        if (dword_1EB75DE60)
        {
          v165 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = v165;
          if (os_log_type_enabled(v30, type))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            v172 = 136315394;
            v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            v174 = 2114;
            v175 = v29;
            LODWORD(v112) = 22;
            v105 = &v172;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v124 = [v127 countByEnumeratingWithState:&v148 objects:v170 count:{16, v105, v112}];
        if (v124)
        {
          obja = *v149;
          do
          {
            v33 = 0;
            do
            {
              if (*v149 != obja)
              {
                objc_enumerationMutation(v127);
              }

              v130 = v33;
              v34 = *(*(&v148 + 1) + 8 * v33);
              if (dword_1EB75DE60)
              {
                v165 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v36 = v165;
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
                  v172 = 136315394;
                  v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                  v174 = 2114;
                  v175 = v34;
                  LODWORD(v111) = 22;
                  v104 = &v172;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v38 = [v127 objectForKey:{v34, v104, v111}];
              v144 = 0u;
              v145 = 0u;
              v146 = 0u;
              v147 = 0u;
              v39 = [v38 countByEnumeratingWithState:&v144 objects:v169 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v145;
                do
                {
                  for (j = 0; j != v40; ++j)
                  {
                    if (*v145 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    if (dword_1EB75DE60)
                    {
                      v43 = *(*(&v144 + 1) + 8 * j);
                      v165 = 0;
                      type = OS_LOG_TYPE_DEFAULT;
                      v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v45 = v165;
                      if (os_log_type_enabled(v44, type))
                      {
                        v46 = v45;
                      }

                      else
                      {
                        v46 = v45 & 0xFFFFFFFE;
                      }

                      if (v46)
                      {
                        v47 = [v38 objectForKey:v43];
                        v172 = 136315650;
                        v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                        v174 = 2114;
                        v175 = v43;
                        v176 = 2114;
                        v177 = v47;
                        LODWORD(v111) = 32;
                        v104 = &v172;
                        _os_log_send_and_compose_impl();
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }
                  }

                  v40 = [v38 countByEnumeratingWithState:&v144 objects:v169 count:16];
                }

                while (v40);
              }

              if (dword_1EB75DE60)
              {
                v165 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v49 = v165;
                if (os_log_type_enabled(v48, type))
                {
                  v50 = v49;
                }

                else
                {
                  v50 = v49 & 0xFFFFFFFE;
                }

                if (v50)
                {
                  v172 = 136315138;
                  v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                  LODWORD(v111) = 12;
                  v104 = &v172;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v33 = v130 + 1;
            }

            while (v130 + 1 != v124);
            v124 = [v127 countByEnumeratingWithState:&v148 objects:v170 count:16];
          }

          while (v124);
        }

        if (dword_1EB75DE60)
        {
          v165 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v52 = v165;
          if (os_log_type_enabled(v51, type))
          {
            v53 = v52;
          }

          else
          {
            v53 = v52 & 0xFFFFFFFE;
          }

          if (v53)
          {
            v172 = 136315138;
            v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            LODWORD(v111) = 12;
            v104 = &v172;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v27 = v118 + 1;
      }

      while (v118 + 1 != v117);
      v117 = [v115 countByEnumeratingWithState:&v152 objects:v171 count:16];
    }

    while (v117);
  }

  if (dword_1EB75DE60)
  {
    v165 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v55 = v165;
    if (os_log_type_enabled(v54, type))
    {
      v56 = v55;
    }

    else
    {
      v56 = v55 & 0xFFFFFFFE;
    }

    if (v56)
    {
      v172 = 136315138;
      v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
      LODWORD(v111) = 12;
      v104 = &v172;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v165 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v58 = v165;
      if (os_log_type_enabled(v57, type))
      {
        v59 = v58;
      }

      else
      {
        v59 = v58 & 0xFFFFFFFE;
      }

      if (v59)
      {
        v172 = 136315138;
        v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
        LODWORD(v111) = 12;
        v104 = &v172;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  objb = *(*(a1 + 32) + 40);
  v128 = [objb countByEnumeratingWithState:&v140 objects:v168 count:{16, v104, v111}];
  if (v128)
  {
    v125 = *v141;
    do
    {
      v60 = 0;
      do
      {
        if (*v141 != v125)
        {
          objc_enumerationMutation(objb);
        }

        v61 = *(*(&v140 + 1) + 8 * v60);
        v62 = [*(*(a1 + 32) + 40) objectForKey:{v61, v106, v113}];
        if (dword_1EB75DE60)
        {
          v165 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v64 = v165;
          if (os_log_type_enabled(v63, type))
          {
            v65 = v64;
          }

          else
          {
            v65 = v64 & 0xFFFFFFFE;
          }

          if (v65)
          {
            v172 = 136315394;
            v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            v174 = 2114;
            v175 = v61;
            LODWORD(v114) = 22;
            v107 = &v172;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v131 = v60;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v66 = [v62 countByEnumeratingWithState:&v136 objects:v167 count:{16, v107, v114}];
        if (v66)
        {
          v67 = v66;
          v68 = *v137;
          do
          {
            for (k = 0; k != v67; ++k)
            {
              if (*v137 != v68)
              {
                objc_enumerationMutation(v62);
              }

              if (dword_1EB75DE60)
              {
                v70 = *(*(&v136 + 1) + 8 * k);
                v165 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v72 = v165;
                if (os_log_type_enabled(v71, type))
                {
                  v73 = v72;
                }

                else
                {
                  v73 = v72 & 0xFFFFFFFE;
                }

                if (v73)
                {
                  v74 = [objc_msgSend(objc_msgSend(v62 objectForKey:{v70), "allObjects"), "componentsJoinedByString:", @", "}];
                  v172 = 136315650;
                  v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                  v174 = 2114;
                  v175 = v70;
                  v176 = 2114;
                  v177 = v74;
                  LODWORD(v113) = 32;
                  v106 = &v172;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            v67 = [v62 countByEnumeratingWithState:&v136 objects:v167 count:16];
          }

          while (v67);
        }

        if (dword_1EB75DE60)
        {
          v165 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v76 = v165;
          if (os_log_type_enabled(v75, type))
          {
            v77 = v76;
          }

          else
          {
            v77 = v76 & 0xFFFFFFFE;
          }

          if (v77)
          {
            v172 = 136315138;
            v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            LODWORD(v113) = 12;
            v106 = &v172;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v60 = v131 + 1;
      }

      while ((v131 + 1) != v128);
      v128 = [objb countByEnumeratingWithState:&v140 objects:v168 count:16];
    }

    while (v128);
  }

  if (dword_1EB75DE60)
  {
    v165 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v79 = v165;
    if (os_log_type_enabled(v78, type))
    {
      v80 = v79;
    }

    else
    {
      v80 = v79 & 0xFFFFFFFE;
    }

    if (v80)
    {
      v172 = 136315138;
      v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
      LODWORD(v113) = 12;
      v106 = &v172;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v165 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v81 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v82 = v165;
      if (os_log_type_enabled(v81, type))
      {
        v83 = v82;
      }

      else
      {
        v83 = v82 & 0xFFFFFFFE;
      }

      if (v83)
      {
        v172 = 136315138;
        v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
        LODWORD(v113) = 12;
        v106 = &v172;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v84 = *(*(a1 + 32) + 48);
  result = [v84 countByEnumeratingWithState:&v132 objects:v166 count:{16, v106, v113}];
  if (result)
  {
    v86 = result;
    v87 = *v133;
    do
    {
      v88 = 0;
      do
      {
        if (*v133 != v87)
        {
          objc_enumerationMutation(v84);
        }

        if (dword_1EB75DE60)
        {
          v89 = *(*(&v132 + 1) + 8 * v88);
          v165 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v91 = v165;
          if (os_log_type_enabled(v90, type))
          {
            v92 = v91;
          }

          else
          {
            v92 = v91 & 0xFFFFFFFE;
          }

          if (v92)
          {
            v93 = [objc_msgSend(*(*(a1 + 32) + 48) objectForKey:{v89), "explanation"}];
            v172 = 136315650;
            v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            v174 = 2114;
            v175 = v89;
            v176 = 2114;
            v177 = v93;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        ++v88;
      }

      while (v86 != v88);
      result = [v84 countByEnumeratingWithState:&v132 objects:v166 count:16];
      v86 = result;
    }

    while (result);
  }

  if (dword_1EB75DE60)
  {
    v165 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v95 = v165;
    if (os_log_type_enabled(v94, type))
    {
      v96 = v95;
    }

    else
    {
      v96 = v95 & 0xFFFFFFFE;
    }

    if (v96)
    {
      v172 = 136315138;
      v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v165 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v98 = v165;
      if (os_log_type_enabled(v97, type))
      {
        v99 = v98;
      }

      else
      {
        v99 = v98 & 0xFFFFFFFE;
      }

      if (v99)
      {
        v172 = 136315138;
        v173 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
        _os_log_send_and_compose_impl();
      }

      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v100 = *MEMORY[0x1E69E9840];
  return result;
}

@end