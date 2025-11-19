@interface _CDSiriLearningSettings
+ (id)sharedInstance;
+ (id)uncachedAllLearningDisabledBundleIDs;
- (BOOL)isLearningDisabledForBundleID:(id)a3;
- (NSArray)allLearningDisabledBundleIDs;
- (id)_unsafe_allLearningDisabledBundleIDs;
- (id)allLearningDisabledBundleIDs;
- (id)notificationQueue;
- (void)_startWithCallback:(int)a3 invokeCallbackNow:;
- (void)_unsafe_clearAllLearningDisabledBundleIDs;
- (void)setDelegates:(uint64_t)a1;
- (void)startSanitizingInteractionStore:(id)a3;
- (void)startSanitizingKnowledgeStore:(id)a3;
- (void)stopSanitizing;
@end

@implementation _CDSiriLearningSettings

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___CDSiriLearningSettings_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_manager;

  return v2;
}

- (NSArray)allLearningDisabledBundleIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  if (self)
  {
    v2 = self;
    if (self->_hasPrefsAccess)
    {
      v3 = [(_CDSiriLearningSettings *)self notificationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55___CDSiriLearningSettings_allLearningDisabledBundleIDs__block_invoke;
      block[3] = &unk_1E7367398;
      block[4] = v2;
      block[5] = &v6;
      dispatch_sync(v3, block);

      self = v7[5];
    }

    else
    {
      self = 0;
    }
  }

  [(_CDSiriLearningSettings *)self allLearningDisabledBundleIDs:&v11];
  return v12;
}

- (id)allLearningDisabledBundleIDs
{
  v6 = MEMORY[0x1E695E0F0];
  if (a1)
  {
    v6 = a1;
  }

  *a4 = v6;
  v7 = v6;
  _Block_object_dispose(a2, 8);

  return v7;
}

- (id)notificationQueue
{
  if (a1)
  {
    if (qword_1EADBD5D0 != -1)
    {
      dispatch_once(&qword_1EADBD5D0, &__block_literal_global_14);
    }

    a1 = _MergedGlobals_0;
    v1 = vars8;
  }

  return a1;
}

- (id)_unsafe_allLearningDisabledBundleIDs
{
  if (a1)
  {
    v2 = [(_CDSiriLearningSettings *)a1 notificationQueue];
    dispatch_assert_queue_V2(v2);

    v3 = [*(a1 + 24) copy];
    if (!v3)
    {
      v4 = +[_CDSiriLearningSettings uncachedAllLearningDisabledBundleIDs];
      v3 = [v4 sortedArrayUsingComparator:&__block_literal_global_24];

      if (*(a1 + 12) != -1)
      {
        objc_storeStrong((a1 + 24), v3);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)uncachedAllLearningDisabledBundleIDs
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");

  return v0;
}

- (void)_unsafe_clearAllLearningDisabledBundleIDs
{
  if (a1)
  {
    v2 = [(_CDSiriLearningSettings *)a1 notificationQueue];
    dispatch_assert_queue_V2(v2);

    v3 = a1[3];
    a1[3] = 0;
  }
}

- (void)setDelegates:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (BOOL)isLearningDisabledForBundleID:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (self && v4 && self->_hasPrefsAccess)
  {
    v7 = [(_CDSiriLearningSettings *)self allLearningDisabledBundleIDs];
    v6 = [v7 _cd_containsSiriLearningBundleId:v5];
  }

  return v6;
}

- (void)_startWithCallback:(int)a3 invokeCallbackNow:
{
  v5 = a2;
  if (a1 && *(a1 + 8) == 1)
  {
    os_unfair_lock_lock((a1 + 16));
    v6 = *(a1 + 32);
    v7 = MEMORY[0x193B00C50](v5);
    [v6 addObject:v7];

    if (*(a1 + 12) == -1)
    {
      v9 = [(_CDSiriLearningSettings *)a1 notificationQueue];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __64___CDSiriLearningSettings__startWithCallback_invokeCallbackNow___block_invoke;
      handler[3] = &unk_1E73687B8;
      handler[4] = a1;
      notify_register_dispatch("com.apple.suggestions.settingsChanged", (a1 + 12), v9, handler);
    }

    v8 = [a1 allLearningDisabledBundleIDs];
    os_unfair_lock_unlock((a1 + 16));
    if (a3)
    {
      v10 = [(_CDSiriLearningSettings *)a1 notificationQueue];
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14();
      v12 = __64___CDSiriLearningSettings__startWithCallback_invokeCallbackNow___block_invoke_29;
      v13 = &unk_1E7367818;
      v15 = v5;
      v14 = v8;
      dispatch_sync(v10, block);
    }
  }
}

- (void)startSanitizingKnowledgeStore:(id)a3
{
  v4 = a3;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_14();
  v8 = __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke;
  v9 = &unk_1E7368D20;
  v10 = v5;
  v6 = v5;
  [(_CDSiriLearningSettings *)self _startWithCallback:v7 invokeCallbackNow:0];
}

- (void)startSanitizingInteractionStore:(id)a3
{
  v4 = a3;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_14();
  v8 = __59___CDSiriLearningSettings_startSanitizingInteractionStore___block_invoke;
  v9 = &unk_1E7368D20;
  v10 = v5;
  v6 = v5;
  [(_CDSiriLearningSettings *)self _startWithCallback:v7 invokeCallbackNow:1];
}

- (void)stopSanitizing
{
  if (self && self->_hasPrefsAccess)
  {
    os_unfair_lock_lock(&self->_lock);
    notifyToken = self->_notifyToken;
    if (notifyToken != -1)
    {
      notify_cancel(notifyToken);
      self->_notifyToken = -1;
      v4 = [(_CDSiriLearningSettings *)self notificationQueue];
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14();
      v7 = __41___CDSiriLearningSettings_stopSanitizing__block_invoke;
      v8 = &unk_1E7367440;
      v9 = self;
      dispatch_async(v5, block);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

@end