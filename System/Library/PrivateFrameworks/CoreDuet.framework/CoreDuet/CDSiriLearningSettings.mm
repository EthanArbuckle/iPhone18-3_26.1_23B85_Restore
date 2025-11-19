@interface CDSiriLearningSettings
@end

@implementation CDSiriLearningSettings

uint64_t __55___CDSiriLearningSettings_allLearningDisabledBundleIDs__block_invoke(uint64_t a1)
{
  v2 = [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_allLearningDisabledBundleIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __44___CDSiriLearningSettings_notificationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.coreduet.siriLearningTracker", v2);
  v1 = _MergedGlobals_0;
  _MergedGlobals_0 = v0;
}

void __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = _os_activity_create(&dword_191750000, "CoreDuet: _CDSiriLearningSettings startSanitizingKnowledgeStore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    os_activity_scope_leave(&state);

    v5 = [(_DKQuery *)_DKEventQuery predicateForEventsWithStreamNames:&unk_1F05EF3B0];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [_DKQuery predicateForEventsWithBundleID:*(*(&v21 + 1) + 8 * v11)];
          [v6 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v9);
    }

    v13 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v6];
    v14 = MEMORY[0x1E696AB28];
    v26[0] = v5;
    v26[1] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];

    v17 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke_2;
    v19[3] = &unk_1E7368CF8;
    v20 = v7;
    [v17 deleteAllEventsMatchingPredicate:v16 responseQueue:0 withCompletion:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = +[_CDLogging knowledgeChannel];
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke_2_cold_1(a1, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 134218242;
    v11 = a2;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "Deleted %tu objects for newly-disabled learning bundles: %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __59___CDSiriLearningSettings_startSanitizingInteractionStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v28 = a1;
  v7 = [*(a1 + 32) metadataForKey:@"SiriCanLearnFromAppBlacklist"];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if ([v6 isEqual:v10])
  {
    v11 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v6;
      _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "allDisabledBundles equals persistedDisabledBundles (%{public}@); bailing", buf, 0xCu);
    }
  }

  else
  {
    v26 = v6;
    v27 = v5;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v6;
    v12 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      v15 = 0x1E7366000uLL;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          if ([v10 _cd_containsSiriLearningBundleId:v17])
          {
            v19 = [*(v15 + 648) interactionChannel];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v36 = v17;
              _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, "newly disabled bundle %{public}@ is already in persistedDisabledBundles; skipping", buf, 0xCu);
            }
          }

          else
          {
            v20 = *(v28 + 32);
            v30 = 0;
            v21 = [v20 deleteInteractionsWithBundleId:v17 error:&v30];
            v19 = v30;
            v22 = v15;
            v23 = [*(v15 + 648) interactionChannel];
            v24 = v23;
            if (v19)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v36 = v17;
                _os_log_error_impl(&dword_191750000, v24, OS_LOG_TYPE_ERROR, "Failed to delete interactions for disabled learning bundle: %{public}@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v36 = v21;
              v37 = 2114;
              v38 = v17;
              _os_log_impl(&dword_191750000, v24, OS_LOG_TYPE_DEFAULT, "Deleted %tu interactions for newly-disabled learning bundle: %{public}@", buf, 0x16u);
            }

            v15 = v22;
          }

          objc_autoreleasePoolPop(v18);
        }

        v13 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v13);
    }

    [*(v28 + 32) setMetadata:obj forKey:@"SiriCanLearnFromAppBlacklist"];
    v6 = v26;
    v5 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __41___CDSiriLearningSettings_sharedInstance__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_manager;
  sharedInstance_manager = v1;

  if (sharedInstance_manager)
  {
    *(sharedInstance_manager + 12) = 0xFFFFFFFFLL;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  [(_CDSiriLearningSettings *)sharedInstance_manager setDelegates:v3];

  getpid();
  v4 = *MEMORY[0x1E69E9BD0];
  v5 = sandbox_check();
  v6 = +[_CDLogging knowledgeChannel];
  v7 = v6;
  if (v5 == -1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      *buf = 67109120;
      v13 = v11;
      _os_log_error_impl(&dword_191750000, v7, OS_LOG_TYPE_ERROR, "Error checking preferences access (errno %{darwin.errno}d). Attempting checks but they may not work.", buf, 8u);
    }

LABEL_9:

    v8 = sharedInstance_manager;
    if (sharedInstance_manager)
    {
      v9 = 1;
LABEL_15:
      *(v8 + 8) = v9;
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "Process has access to preferences for Siri Learning toggles.", buf, 2u);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_191750000, v7, OS_LOG_TYPE_ERROR, "Unable to access preferences for Siri Learning toggles. Disabling checks.", buf, 2u);
  }

  v8 = sharedInstance_manager;
  if (sharedInstance_manager)
  {
    v9 = 0;
    goto LABEL_15;
  }

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
}

void __64___CDSiriLearningSettings__startWithCallback_invokeCallbackNow___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v27 = "com.apple.suggestions.settingsChanged";
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_DEFAULT, "Handling callback for %{public}s", buf, 0xCu);
  }

  v3 = [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_allLearningDisabledBundleIDs];
  [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_clearAllLearningDisabledBundleIDs];
  v4 = [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_allLearningDisabledBundleIDs];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64___CDSiriLearningSettings__startWithCallback_invokeCallbackNow___block_invoke_26;
  v23[3] = &unk_1E7368CD0;
  v5 = v3;
  v24 = v5;
  v6 = [v4 _pas_filteredArrayWithTest:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64___CDSiriLearningSettings__startWithCallback_invokeCallbackNow___block_invoke_2;
  v21[3] = &unk_1E7368CD0;
  v7 = v4;
  v22 = v7;
  v8 = [v5 _pas_filteredArrayWithTest:v21];
  v9 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = v6;
    v28 = 2114;
    v29 = v8;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_DEFAULT, "Learning toggled. New disabled: %{public}@. New enabled: %{public}@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[4];
  }

  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v17 + 1) + 8 * v15) + 16))(*(*(&v17 + 1) + 8 * v15));
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __41___CDSiriLearningSettings_stopSanitizing__block_invoke(uint64_t a1)
{
  [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_clearAllLearningDisabledBundleIDs];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return [v3 removeAllObjects];
}

void __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Failed to delete objects for disabled learning bundles: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end