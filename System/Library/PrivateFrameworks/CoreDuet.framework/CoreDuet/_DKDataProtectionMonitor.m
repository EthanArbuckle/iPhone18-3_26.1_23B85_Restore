@interface _DKDataProtectionMonitor
+ (id)sharedInstance;
- (BOOL)deviceIsLocked;
- (BOOL)deviceIsPasswordConfigured;
- (BOOL)isDataAvailableForClassC;
- (_DKDataProtectionMonitor)init;
- (id)registerStateChangeHandler:(uint64_t)a1;
- (uint64_t)isDataAvailableFor:(uint64_t)a1;
- (uint64_t)isDataAvailableForClassA;
- (void)dealloc;
- (void)deregisterStateChangeHandler:(uint64_t)a1;
- (void)handleKeyBagLockNotification;
@end

@implementation _DKDataProtectionMonitor

+ (id)sharedInstance
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___DKDataProtectionMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (sharedInstance_onceToken_4 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4, block);
  }

  v1 = sharedInstance_instance_1;

  return v1;
}

- (_DKDataProtectionMonitor)init
{
  v30.receiver = self;
  v30.super_class = _DKDataProtectionMonitor;
  v2 = [(_DKDataProtectionMonitor *)&v30 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    availableState = v2->_availableState;
    v2->_availableState = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.coreduet.dp.state", v7);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v8;

    v2->_deviceFormatedForContentProtection = 0;
    v10 = *MEMORY[0x1E696A378];
    v11 = MEMORY[0x1E695E118];
    [(NSMutableDictionary *)v2->_availableState setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696A378]];
    v12 = *MEMORY[0x1E696A388];
    [(NSMutableDictionary *)v2->_availableState setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A388]];
    v13 = *MEMORY[0x1E696A3A8];
    [(NSMutableDictionary *)v2->_availableState setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A3A8]];
    v14 = slMKBDeviceFormattedForContentProtection();
    v2->_deviceFormatedForContentProtection = v14 != 0;
    if (v14)
    {
      v16 = MEMORY[0x1E696AD98];
      v17 = ![(_DKDataProtectionMonitor *)v2 deviceIsLocked]|| ![(_DKDataProtectionMonitor *)v2 deviceIsPasswordConfigured];
      v18 = [v16 numberWithBool:v17];
      [(NSMutableDictionary *)v2->_availableState setObject:v18 forKeyedSubscript:v10];

      v19 = MEMORY[0x1E696AD98];
      v20 = slMKBDeviceUnlockedSinceBoot();
      v21 = 1;
      if (!v20)
      {
        v21 = ![(_DKDataProtectionMonitor *)v2 deviceIsPasswordConfigured];
      }

      v22 = [v19 numberWithBool:v21];
      [(NSMutableDictionary *)v2->_availableState setObject:v22 forKeyedSubscript:v12];

      [(NSMutableDictionary *)v2->_availableState setObject:MEMORY[0x1E695E118] forKeyedSubscript:v13];
      v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v24 = dispatch_queue_create("com.apple.coreduet.dp.notify", v23);
      notifyQueue = v2->_notifyQueue;
      v2->_notifyQueue = v24;

      v2->_notifyToken = 0;
      v2->_notifyEnabled = 1;
      objc_initWeak(&location, v2);
      v26 = v2->_notifyQueue;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __32___DKDataProtectionMonitor_init__block_invoke;
      v27[3] = &unk_1E7368E78;
      objc_copyWeak(&v28, &location);
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v2->_notifyToken, v26, v27);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

- (BOOL)deviceIsLocked
{
  if (!a1)
  {
    return 0;
  }

  v1 = slMGCopyAnswer(@"PasswordProtected", 0);
  v2 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

- (void)handleKeyBagLockNotification
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = _os_activity_create(&dword_191750000, "CoreDuet: _DKDataProtectionMonitor handleKeyBagLockNotification", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    os_activity_scope_leave(&state);

    state.opaque[0] = 0;
    state.opaque[1] = &state;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__26;
    v38 = __Block_byref_object_dispose__26;
    v39 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__26;
    v33 = __Block_byref_object_dispose__26;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__26;
    v27 = __Block_byref_object_dispose__26;
    v28 = [MEMORY[0x1E695DF90] dictionary];
    v3 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56___DKDataProtectionMonitor_handleKeyBagLockNotification__block_invoke;
    block[3] = &unk_1E736AA08;
    block[4] = a1;
    block[5] = &state;
    block[6] = &v29;
    block[7] = &v23;
    dispatch_sync(v3, block);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v24[5];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v41 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [v24[5] objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v7)];
          [v8 BOOLValue];

          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v9 = v30[5];
          v10 = [v9 countByEnumeratingWithState:&v14 objects:v40 count:16];
          if (v10)
          {
            v11 = *v15;
            do
            {
              v12 = 0;
              do
              {
                if (*v15 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
              }

              while (v10 != v12);
              v10 = [v9 countByEnumeratingWithState:&v14 objects:v40 count:16];
            }

            while (v10);
          }

          ++v7;
        }

        while (v7 != v5);
        v5 = [v4 countByEnumeratingWithState:&v18 objects:v41 count:16];
      }

      while (v5);
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&state, 8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)isDataAvailableForClassA
{
  if (result)
  {
    v1 = result;
    return ![(_DKDataProtectionMonitor *)result deviceIsLocked]|| ![(_DKDataProtectionMonitor *)v1 deviceIsPasswordConfigured];
  }

  return result;
}

- (BOOL)isDataAvailableForClassC
{
  if (result)
  {
    v1 = result;
    return slMKBDeviceUnlockedSinceBoot() || ![(_DKDataProtectionMonitor *)v1 deviceIsPasswordConfigured];
  }

  return result;
}

- (void)dealloc
{
  if (self->_notifyEnabled)
  {
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35___DKDataProtectionMonitor_dealloc__block_invoke;
    block[3] = &unk_1E7367440;
    block[4] = self;
    dispatch_sync(stateQueue, block);
  }

  v4.receiver = self;
  v4.super_class = _DKDataProtectionMonitor;
  [(_DKDataProtectionMonitor *)&v4 dealloc];
}

- (id)registerStateChangeHandler:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55___DKDataProtectionMonitor_registerStateChangeHandler___block_invoke;
    block[3] = &unk_1E7368368;
    block[4] = a1;
    v8 = v6;
    v12 = v8;
    v13 = v4;
    dispatch_sync(v7, block);
    v9 = v13;
    v5 = v8;
  }

  return v5;
}

- (BOOL)deviceIsPasswordConfigured
{
  if (!a1)
  {
    return 0;
  }

  v1 = slMGCopyAnswer(@"PasswordConfigured", 0);
  v2 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

- (uint64_t)isDataAvailableFor:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      v5 = *(a1 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47___DKDataProtectionMonitor_isDataAvailableFor___block_invoke;
      block[3] = &unk_1E7368808;
      block[4] = a1;
      v8 = v3;
      v9 = &v10;
      dispatch_sync(v5, block);
      LOBYTE(a1) = *(v11 + 24);

      _Block_object_dispose(&v10, 8);
    }

    else
    {
      LOBYTE(a1) = 1;
    }
  }

  return a1 & 1;
}

- (void)deregisterStateChangeHandler:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57___DKDataProtectionMonitor_deregisterStateChangeHandler___block_invoke;
    v6[3] = &unk_1E7367710;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

@end