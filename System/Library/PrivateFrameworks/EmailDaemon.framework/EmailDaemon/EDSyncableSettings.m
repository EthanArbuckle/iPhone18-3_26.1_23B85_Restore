@interface EDSyncableSettings
- (EDSyncableSettings)init;
- (EDSyncableSettings)initWithDefaults:(id)a3 store:(id)a4;
- (id)_registerDefaultsObservers;
- (id)observeChangesForKey:(id)a3 cloudKey:(id)a4 conflictResolver:(id)a5;
- (id)syncableSettingsMap;
- (void)_changeActionForKey:(void *)a1;
- (void)_mergeExternalChangedKeys:(uint64_t)a1;
- (void)_mergeIntegerSetting:(void *)a3 cloudKey:(int)a4 isLocalChange:(void *)a5 newValue:;
- (void)_mergeLocalChangeForKey:(void *)a3 value:;
- (void)_mergeTrackingSettings:(void *)a3 cloudKey:(int)a4 isLocalChange:(void *)a5 newValue:;
- (void)_setChangeAction:(void *)a3 forKey:;
- (void)_storeChangedExternally:(id)a3;
- (void)beginSyncing;
- (void)dealloc;
@end

@implementation EDSyncableSettings

void ___ef_log_EDSyncableSettings_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDSyncableSettings");
  v1 = _ef_log_EDSyncableSettings_log;
  _ef_log_EDSyncableSettings_log = v0;
}

- (EDSyncableSettings)initWithDefaults:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = EDSyncableSettings;
  v9 = [(EDSyncableSettings *)&v19 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E699B7F0]);
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = [v10 initWithObject:v11];
    changeActionsByKey = v9->_changeActionsByKey;
    v9->_changeActionsByKey = v12;

    v14 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"EDSyncableSettings" qualityOfService:17];
    scheduler = v9->_scheduler;
    v9->_scheduler = v14;

    objc_storeStrong(&v9->_defaults, a3);
    objc_storeStrong(&v9->_store, a4);
    v16 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    cancelable = v9->_cancelable;
    v9->_cancelable = v16;
  }

  return v9;
}

- (EDSyncableSettings)init
{
  v3 = [MEMORY[0x1E695E000] em_userDefaults];
  v4 = [objc_alloc(MEMORY[0x1E696AFB8]) _initWithStoreIdentifier:@"com.apple.mail" usingEndToEndEncryption:1];
  v5 = [(EDSyncableSettings *)self initWithDefaults:v3 store:v4];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(EFManualCancelationToken *)self->_cancelable cancel];
  v4.receiver = self;
  v4.super_class = EDSyncableSettings;
  [(EDSyncableSettings *)&v4 dealloc];
}

- (void)beginSyncing
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__storeChangedExternally_ name:*MEMORY[0x1E696A9E8] object:self->_store];

  v4 = [(EDSyncableSettings *)self _registerDefaultsObservers];
  [(EFManualCancelationToken *)self->_cancelable addCancelable:v4];
  if (![(NSUbiquitousKeyValueStore *)self->_store synchronize])
  {
    v5 = _ef_log_EDSyncableSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [EDSyncableSettings beginSyncing];
    }
  }
}

- (id)_registerDefaultsObservers
{
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E699B7F8]) initWithLabel:@"EDSyncableSettings-Defaults"];
    objc_initWeak(&location, a1);
    v3 = [(EDSyncableSettings *)a1 syncableSettingsMap];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__EDSyncableSettings__registerDefaultsObservers__block_invoke;
    v8[3] = &unk_1E8257E08;
    objc_copyWeak(v10, &location);
    v10[1] = sel__registerDefaultsObservers;
    v8[4] = a1;
    v4 = v2;
    v9 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v8];

    v5 = v9;
    v6 = v4;

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __48__EDSyncableSettings__registerDefaultsObservers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"cloudKey"];
  v8 = [v6 objectForKeyedSubscript:@"mergeType"];
  v9 = [v8 unsignedIntegerValue];
  if (v9 == 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__EDSyncableSettings__registerDefaultsObservers__block_invoke_2;
    aBlock[3] = &unk_1E8257DB8;
    objc_copyWeak(&v20, (a1 + 48));
    v10 = _Block_copy(aBlock);
    objc_destroyWeak(&v20);
    if (!v10)
    {
LABEL_6:
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"EDSyncableSettings.m" lineNumber:117 description:{@"No merge block found for default %@", v5}];

      v10 = 0;
    }
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_6;
    }

    v10 = [v6 objectForKeyedSubscript:@"customMergeBlock"];
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v14 = a1 + 32;
  v12 = *(a1 + 32);
  v13 = *(v14 + 8);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__EDSyncableSettings__registerDefaultsObservers__block_invoke_3;
  v17[3] = &unk_1E8257DE0;
  v15 = v10;
  v18 = v15;
  v16 = [v12 observeChangesForKey:v5 cloudKey:v7 conflictResolver:v17];
  [v13 addCancelable:v16];
}

void __48__EDSyncableSettings__registerDefaultsObservers__block_invoke_2(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a5;
  v10 = a3;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(EDSyncableSettings *)WeakRetained _mergeIntegerSetting:v11 cloudKey:v10 isLocalChange:a4 newValue:v9];
}

- (void)_mergeIntegerSetting:(void *)a3 cloudKey:(int)a4 isLocalChange:(void *)a5 newValue:
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = @"cloud to device";
    if (a4)
    {
      v12 = @"device to cloud";
    }

    v13 = v12;
    if (v11 || a4)
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [v11 integerValue];
        v16 = _ef_log_EDSyncableSettings();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v26 = v9;
          v27 = 2114;
          v28 = v13;
          _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "syncing setting %{public}@ from %{public}@", buf, 0x16u);
        }

        if (a4)
        {
          v17 = *(a1 + 32);
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
          [v17 setObject:v18 forKey:v10];

          v19 = *(a1 + 16);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __75__EDSyncableSettings__mergeIntegerSetting_cloudKey_isLocalChange_newValue___block_invoke;
          v24[3] = &unk_1E8250260;
          v24[4] = a1;
          [v19 performBlock:v24];
        }

        else
        {
          [*(a1 + 24) setInteger:v15 forKey:v9];
        }
      }

      else if (v11)
      {
        v20 = _ef_log_EDSyncableSettings();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [EDSyncableSettings _mergeIntegerSetting:cloudKey:isLocalChange:newValue:];
        }
      }

      else
      {
        [*(a1 + 32) removeObjectForKey:v10];
        v21 = *(a1 + 16);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __75__EDSyncableSettings__mergeIntegerSetting_cloudKey_isLocalChange_newValue___block_invoke_2;
        v23[3] = &unk_1E8250260;
        v23[4] = a1;
        [v21 performBlock:v23];
      }
    }

    else
    {
      v14 = _ef_log_EDSyncableSettings();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v9;
        _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ was remove remotely", buf, 0xCu);
      }

      [*(a1 + 24) removeObjectForKey:v9];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __41__EDSyncableSettings_syncableSettingsMap__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E699AB98];
  v11[0] = @"cloudKey";
  v11[1] = @"mergeType";
  v12[0] = @"tp";
  v12[1] = &unk_1F45E6BC8;
  v11[2] = @"customMergeBlock";
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __41__EDSyncableSettings_syncableSettingsMap__block_invoke_45;
  v9 = &unk_1E8257DB8;
  objc_copyWeak(&v10, (a1 + 32));
  v1 = _Block_copy(&v6);
  v12[2] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:{3, v6, v7, v8, v9}];
  v14[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v4 = _MergedGlobals;
  _MergedGlobals = v3;

  objc_destroyWeak(&v10);
  v5 = *MEMORY[0x1E69E9840];
}

void __41__EDSyncableSettings_syncableSettingsMap__block_invoke_45(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a5;
  v10 = a3;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(EDSyncableSettings *)WeakRetained _mergeTrackingSettings:v11 cloudKey:v10 isLocalChange:a4 newValue:v9];
}

- (void)_mergeTrackingSettings:(void *)a3 cloudKey:(int)a4 isLocalChange:(void *)a5 newValue:
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (!a1)
  {
    goto LABEL_20;
  }

  v12 = [*(a1 + 24) integerForKey:v9];
  if (v11 || a4)
  {
    v14 = @"cloud to device";
    if (a4)
    {
      v14 = @"device to cloud";
    }

    v13 = v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = [v11 integerValue];
      v16 = _ef_log_EDSyncableSettings();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = v13;
          _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "syncing tracking protection setting from %{public}@", buf, 0xCu);
        }

        if (a4)
        {
          v22 = *(a1 + 32);
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
          [v22 setObject:v23 forKey:v10];

          v24 = *(a1 + 16);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __77__EDSyncableSettings__mergeTrackingSettings_cloudKey_isLocalChange_newValue___block_invoke;
          v25[3] = &unk_1E8250260;
          v25[4] = a1;
          [v24 performBlock:v25];
        }

        else
        {
          [*(a1 + 24) setInteger:v15 forKey:v9];
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [EDSyncableSettings _mergeTrackingSettings:cloudKey:isLocalChange:newValue:];
      }
    }

    else
    {
      v18 = _ef_log_EDSyncableSettings();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [EDSyncableSettings _mergeTrackingSettings:cloudKey:isLocalChange:newValue:];
      }
    }
  }

  else
  {
    v13 = _ef_log_EDSyncableSettings();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "skipping syncing tracking protection setting from cloud to device with no new value", buf, 2u);
    }
  }

  LOBYTE(v15) = v12;
LABEL_17:

  v19 = [a1 proxyChangeHandler];
  v20 = v19;
  if (v19)
  {
    (*(v19 + 16))(v19, (v15 & 4) == 0);
  }

LABEL_20:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_storeChangedExternally:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];
  v7 = [v6 integerValue];

  if (v7 == 2)
  {
    v8 = _ef_log_EDSyncableSettings();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EDSyncableSettings _storeChangedExternally:];
    }
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];
    v9 = _ef_log_EDSyncableSettings();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "received external KVS change event: %ld, changed keys=%{public}@", buf, 0x16u);
    }

    if (v7 > 3 || v7 == 2)
    {
      v12 = _ef_log_EDSyncableSettings();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [EDSyncableSettings _storeChangedExternally:];
      }
    }

    else
    {
      scheduler = self->_scheduler;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __46__EDSyncableSettings__storeChangedExternally___block_invoke;
      v14[3] = &unk_1E8250128;
      v14[4] = self;
      v8 = v8;
      v15 = v8;
      [(EFAssertableScheduler *)scheduler performSyncBlock:v14];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_mergeExternalChangedKeys:(uint64_t)a1
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    [*(a1 + 16) assertIsExecuting:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__EDSyncableSettings__mergeExternalChangedKeys___block_invoke;
    aBlock[3] = &unk_1E8251F88;
    aBlock[4] = a1;
    v4 = _Block_copy(aBlock);
    if ([v3 count])
    {
      v17 = 0;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v6)
      {
        v7 = *v14;
LABEL_5:
        v8 = 0;
        while (1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = [*(a1 + 32) objectForKey:{v9, v13}];
          v4[2](v4, v9, v10, &v17);

          if (v17)
          {
            break;
          }

          if (v6 == ++v8)
          {
            v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
            if (v6)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }

    else
    {
      v11 = [*(a1 + 32) dictionaryRepresentation];
      [v11 enumerateKeysAndObjectsUsingBlock:v4];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __48__EDSyncableSettings__mergeExternalChangedKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [(EDSyncableSettings *)*(a1 + 32) _changeActionForKey:a2];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v7, 0);
  }
}

- (void)_changeActionForKey:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__45;
    v14 = __Block_byref_object_dispose__45;
    v15 = 0;
    v5 = a1[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__EDSyncableSettings__changeActionForKey___block_invoke;
    v7[3] = &unk_1E8251838;
    v9 = &v10;
    v8 = v3;
    [v5 performWhileLocked:v7];
    a1 = _Block_copy(v11[5]);

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

- (void)_mergeLocalChangeForKey:(void *)a3 value:
{
  v8 = a2;
  v5 = a3;
  if (a1)
  {
    [*(a1 + 16) assertIsExecuting:1];
    v6 = [(EDSyncableSettings *)a1 _changeActionForKey:v8];
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, v5, 1);
    }
  }
}

void __42__EDSyncableSettings__changeActionForKey___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_setChangeAction:(void *)a3 forKey:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__EDSyncableSettings__setChangeAction_forKey___block_invoke;
    v9[3] = &unk_1E8257E30;
    v10 = v6;
    v11 = v5;
    [v8 performWhileLocked:v9];
  }
}

void __46__EDSyncableSettings__setChangeAction_forKey___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 40) copy];
  v4 = _Block_copy(v3);
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 32)];
}

- (id)observeChangesForKey:(id)a3 cloudKey:(id)a4 conflictResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke;
  aBlock[3] = &unk_1E8257E58;
  v11 = v8;
  v32 = v11;
  v22 = v10;
  v34 = v22;
  v12 = v9;
  v33 = v12;
  v13 = _Block_copy(aBlock);
  [(EDSyncableSettings *)self _setChangeAction:v13 forKey:v11];
  [(EDSyncableSettings *)self _setChangeAction:v13 forKey:v12];
  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E699B7F8];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke_2;
  v26[3] = &unk_1E8255188;
  objc_copyWeak(&v29, &location);
  v15 = v11;
  v27 = v15;
  v16 = v12;
  v28 = v16;
  v17 = [v14 tokenWithLabel:v15 cancelationBlock:v26];
  defaults = self->_defaults;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke_3;
  v23[3] = &unk_1E8257E80;
  objc_copyWeak(&v25, &location);
  v19 = v15;
  v24 = v19;
  v20 = [(NSUserDefaults *)defaults ef_observeKeyPath:v19 options:5 autoCancelToken:0 usingBlock:v23];
  [v17 addCancelable:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  return v17;
}

void __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke(void *a1, void *a2)
{
  v12 = a2;
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];
  v5 = [v4 objectForKeyedSubscript:a1[4]];

  if (!v5)
  {
    if ((*(*MEMORY[0x1E699B750] + 16))())
    {

      v12 = 0;
    }

    v6 = [MEMORY[0x1E696AF00] currentThread];
    v7 = [v6 threadDictionary];
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:a1[4]];

    v8 = a1[5];
    v9 = a1[4];
    (*(a1[6] + 16))();
    v10 = [MEMORY[0x1E696AF00] currentThread];
    v11 = [v10 threadDictionary];
    [v11 setObject:0 forKeyedSubscript:a1[4]];
  }
}

void __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke_2(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(EDSyncableSettings *)WeakRetained _setChangeAction:a1[4] forKey:?];
  [(EDSyncableSettings *)WeakRetained _setChangeAction:a1[5] forKey:?];
}

void __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x1E696AF00] currentThread];
    v6 = [v5 threadDictionary];
    v7 = (a1 + 32);
    v8 = [v6 objectForKeyedSubscript:*(a1 + 32)];

    if (v8)
    {
      v9 = _ef_log_EDSyncableSettings();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke_3_cold_1(v7);
      }
    }

    else
    {
      v10 = WeakRetained[2];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke_51;
      v11[3] = &unk_1E8255188;
      objc_copyWeak(&v14, (a1 + 40));
      v12 = *v7;
      v13 = v3;
      [v10 performSyncBlock:v11];

      objc_destroyWeak(&v14);
    }
  }
}

void __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  [(EDSyncableSettings *)WeakRetained _mergeLocalChangeForKey:v2 value:v3];
}

- (id)syncableSettingsMap
{
  if (val)
  {
    objc_initWeak(&location, val);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __41__EDSyncableSettings_syncableSettingsMap__block_invoke;
    v3[3] = &unk_1E8250808;
    objc_copyWeak(&v4, &location);
    if (qword_1EDC942A8 != -1)
    {
      dispatch_once(&qword_1EDC942A8, v3);
    }

    v1 = _MergedGlobals;
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (void)_mergeIntegerSetting:cloudKey:isLocalChange:newValue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_1C61EF000, v1, OS_LOG_TYPE_ERROR, "Unexpected object set when syncing %{public}@ from %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_mergeTrackingSettings:cloudKey:isLocalChange:newValue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_mergeTrackingSettings:cloudKey:isLocalChange:newValue:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_storeChangedExternally:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __69__EDSyncableSettings_observeChangesForKey_cloudKey_conflictResolver___block_invoke_3_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end