@interface MBBehaviorOptions
+ (MBBehaviorOptions)sharedOptions;
- (BOOL)_getBoolOptionForKey:(id)a3 defaultValue:(BOOL)a4;
- (MBBehaviorOptions)init;
- (double)_getDoubleOptionForKey:(id)a3 defaultValue:(double)a4;
- (id)_behaviorOptionForKey:(id)a3;
- (id)_behaviorOptionForTopLevelKey:(id)a3;
- (id)_getArrayOptionForKey:(id)a3 defaultValue:(id)a4;
- (id)_getNumberOptionForKey:(id)a3;
- (id)_getStringOptionForKey:(id)a3 defaultValue:(id)a4;
- (id)_getStringOptionLockedForKey:(id)a3 defaultValue:(id)a4;
- (int)_getIntOptionForKey:(id)a3 defaultValue:(int)a4;
- (void)_setPref:(id)a3 forKey:(id)a4;
- (void)_startListeningForNotifications;
@end

@implementation MBBehaviorOptions

- (void)_startListeningForNotifications
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MBBehaviorOptions__startListeningForNotifications__block_invoke;
  v7[3] = &unk_1E8684618;
  v7[4] = self;
  v2 = MEMORY[0x1E12C58B0](v7, a2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MBBehaviorOptions__startListeningForNotifications__block_invoke_2;
  v5[3] = &unk_1E8684730;
  v6 = v2;
  v3 = _startListeningForNotifications_once;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&_startListeningForNotifications_once, v5);
  }
}

void __52__MBBehaviorOptions__startListeningForNotifications__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_INFO, "Looks like our prefs changed. Reloading.", buf, 2u);
    _MBLog(@"I ", "Looks like our prefs changed. Reloading.", v3, v4, v5, v6, v7, v8, v20);
  }

  CFPreferencesSynchronize(@"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);
  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v9 = [*(a1 + 32) cachedPrefsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MBBehaviorOptions__startListeningForNotifications__block_invoke_183;
  block[3] = &unk_1E8684708;
  block[4] = *(a1 + 32);
  block[5] = buf;
  dispatch_sync(v9, block);

  v10 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [*(v26 + 5) allKeys];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [*(v26 + 5) objectForKeyedSubscript:v15];
        v17 = [*(a1 + 32) _behaviorOptionForKey:v15];
        v18 = [v16 isEqual:v17];

        if ((v18 & 1) == 0)
        {
          [v10 addObject:v15];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __52__MBBehaviorOptions__startListeningForNotifications__block_invoke_183(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPrefs];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) cachedPrefs];
  [v6 removeAllObjects];
}

void __52__MBBehaviorOptions__startListeningForNotifications__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(17, 0);
  notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &_startListeningForNotifications_token, v2, *(a1 + 32));

  notify_register_dispatch("com.apple.mobilebackup.BehaviorOptionDidChange", &_startListeningForNotifications_token2, v2, *(a1 + 32));
}

- (MBBehaviorOptions)init
{
  v12.receiver = self;
  v12.super_class = MBBehaviorOptions;
  v2 = [(MBBehaviorOptions *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedPrefs = v2->_cachedPrefs;
    v2->_cachedPrefs = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.mobilebackup.behavioroptions", v5);
    cachedPrefsQueue = v2->_cachedPrefsQueue;
    v2->_cachedPrefsQueue = v6;

    [(MBBehaviorOptions *)v2 _startListeningForNotifications];
    CFPreferencesSynchronize(@"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);
    v8 = [@"com.apple.MobileBackup.BehaviorOptions" stringByAppendingPathExtension:@"plist"];
    v9 = [@"/var/mobile/Library/Preferences" stringByAppendingPathComponent:v8];
    plistPath = v2->_plistPath;
    v2->_plistPath = v9;
  }

  return v2;
}

+ (MBBehaviorOptions)sharedOptions
{
  if (sharedOptions_onceToken != -1)
  {
    +[MBBehaviorOptions sharedOptions];
  }

  v3 = sharedOptions_sSharedOptions;

  return v3;
}

uint64_t __34__MBBehaviorOptions_sharedOptions__block_invoke()
{
  sharedOptions_sSharedOptions = objc_alloc_init(MBBehaviorOptions);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_behaviorOptionForKey:(id)a3
{
  v4 = a3;
  v5 = [(MBBehaviorOptions *)self _behaviorOptionForTopLevelKey:v4];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = CFPreferencesCopyValue(@"BehaviorOptions", @"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);
    v8 = v7;
    if (v7)
    {
      v7 = [v7 objectForKeyedSubscript:v4];
    }

    v6 = v7;
  }

  return v6;
}

- (id)_behaviorOptionForTopLevelKey:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);

  return v3;
}

- (void)_setPref:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBBehaviorOptions *)self cachedPrefsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MBBehaviorOptions__setPref_forKey___block_invoke;
  block[3] = &unk_1E8684758;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);

  notify_post("com.apple.mobilebackup.BehaviorOptionDidChange");
}

void __37__MBBehaviorOptions__setPref_forKey___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(*(a1 + 32), *(a1 + 40), @"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(@"com.apple.MobileBackup.BehaviorOptions", @"mobile", v2);
  v3 = [*(a1 + 48) cachedPrefs];
  [v3 removeAllObjects];
}

- (id)_getNumberOptionForKey:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v5 = [(MBBehaviorOptions *)self cachedPrefsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MBBehaviorOptions__getNumberOptionForKey___block_invoke;
  block[3] = &unk_1E8684780;
  v13 = &v14;
  block[4] = self;
  v6 = v4;
  v12 = v6;
  dispatch_sync(v5, block);

  v7 = v15[5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
  }

  else
  {
    v8 = v15[5];
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __44__MBBehaviorOptions__getNumberOptionForKey___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cachedPrefs];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) _behaviorOptionForKey:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_8:
        v21 = *(*(*(a1 + 48) + 8) + 40);
        v22 = [*(a1 + 32) cachedPrefs];
        [v22 setObject:v21 forKeyedSubscript:*(a1 + 40)];

        goto LABEL_9;
      }

      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 40);
        v11 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_ERROR, "For key %@, found value %@ which was not a NSNumber.  Ignoring.", buf, 0x16u);
        v24 = *(*(*(a1 + 48) + 8) + 40);
        _MBLog(@"E ", "For key %@, found value %@ which was not a NSNumber.  Ignoring.", v12, v13, v14, v15, v16, v17, *(a1 + 40));
      }
    }

    v18 = [MEMORY[0x1E695DFB0] null];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    goto LABEL_8;
  }

LABEL_9:
  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)_getBoolOptionForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = [(MBBehaviorOptions *)self _getNumberOptionForKey:a3];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      a4 = [v5 BOOLValue];
    }
  }

  return a4;
}

- (int)_getIntOptionForKey:(id)a3 defaultValue:(int)a4
{
  v5 = [(MBBehaviorOptions *)self _getNumberOptionForKey:a3];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      a4 = [v5 intValue];
    }
  }

  return a4;
}

- (double)_getDoubleOptionForKey:(id)a3 defaultValue:(double)a4
{
  v5 = [(MBBehaviorOptions *)self _getNumberOptionForKey:a3];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v5 doubleValue];
      a4 = v6;
    }
  }

  return a4;
}

- (id)_getStringOptionLockedForKey:(id)a3 defaultValue:(id)a4
{
  v5 = a3;
  v6 = [(MBBehaviorOptions *)self cachedPrefs];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = [(MBBehaviorOptions *)self _behaviorOptionForKey:v5];
    if (v8)
    {
      v7 = v8;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v7 length])
      {
        v9 = [MEMORY[0x1E695DFB0] null];

        v7 = v9;
      }
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
    }

    v10 = [(MBBehaviorOptions *)self cachedPrefs];
    [v10 setObject:v7 forKeyedSubscript:v5];
  }

  return v7;
}

- (id)_getStringOptionForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v8 = [(MBBehaviorOptions *)self cachedPrefsQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__MBBehaviorOptions__getStringOptionForKey_defaultValue___block_invoke;
  v15[3] = &unk_1E86847A8;
  v18 = &v19;
  v15[4] = self;
  v9 = v6;
  v16 = v9;
  v10 = v7;
  v17 = v10;
  dispatch_sync(v8, v15);

  v11 = v10;
  if (v20[5])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = v10;
    if ((isKindOfClass & 1) == 0)
    {
      v11 = v20[5];
    }
  }

  v13 = v11;

  _Block_object_dispose(&v19, 8);

  return v13;
}

uint64_t __57__MBBehaviorOptions__getStringOptionForKey_defaultValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getStringOptionLockedForKey:*(a1 + 40) defaultValue:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_getArrayOptionForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v8 = [(MBBehaviorOptions *)self cachedPrefsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MBBehaviorOptions__getArrayOptionForKey_defaultValue___block_invoke;
  block[3] = &unk_1E8684780;
  v16 = &v17;
  block[4] = self;
  v9 = v6;
  v15 = v9;
  dispatch_sync(v8, block);

  v10 = v7;
  if (v18[5])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = v7;
    if ((isKindOfClass & 1) == 0)
    {
      v10 = v18[5];
    }
  }

  v12 = v10;

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __56__MBBehaviorOptions__getArrayOptionForKey_defaultValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPrefs];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) _behaviorOptionForTopLevelKey:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (!*(*(*(a1 + 48) + 8) + 40) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = [*(a1 + 32) cachedPrefs];
    [v13 setObject:v12 forKeyedSubscript:*(a1 + 40)];
  }
}

@end