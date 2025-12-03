@interface BioUserDefaults
+ (id)preferenceObjectForKey:(id)key;
+ (id)sharedInstance;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)setObject:(id)object forKey:(id)key;
- (BOOL)synchronize;
- (id)numberForKey:(id)key;
- (id)objectOfClass:(Class)class forKey:(id)key;
- (id)stateDictionary;
- (id)stringForKey:(id)key;
- (int)intForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (unint64_t)unsignedIntegerForKey:(id)key;
- (unsigned)unsignedIntForKey:(id)key;
- (void)registerDefaults:(id)defaults;
- (void)registerUpdateNotification:(id)notification;
- (void)unregisterUpdateNotification:(id)notification;
- (void)updateNotification;
@end

@implementation BioUserDefaults

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BioUserDefaults_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __33__BioUserDefaults_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerDefaults:(id)defaults
{
  defaultsCopy = defaults;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__BioUserDefaults_registerDefaults___block_invoke;
  block[3] = &unk_1E8303E78;
  block[4] = self;
  if (registerDefaults__onceToken != -1)
  {
    dispatch_once(&registerDefaults__onceToken, block);
  }

  v5 = self->_registeredDefaults;
  objc_sync_enter(v5);
  [(NSMutableDictionary *)self->_registeredDefaults addEntriesFromDictionary:defaultsCopy];
  objc_sync_exit(v5);
}

uint64_t __36__BioUserDefaults_registerDefaults___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)updateNotification
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = self->_updateBlocks;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_updateBlocks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)registerUpdateNotification:(id)notification
{
  notificationCopy = notification;
  v4 = self->_updateBlocks;
  objc_sync_enter(v4);
  updateBlocks = self->_updateBlocks;
  if (!updateBlocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_updateBlocks;
    self->_updateBlocks = v6;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, updateCallback, @"com.apple.ManagedConfiguration.profileListChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, updateCallback, @"com.apple.biometrickitd.userDefaultsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    updateBlocks = self->_updateBlocks;
  }

  v9 = MEMORY[0x1CCA736F0](notificationCopy);
  [(NSMutableArray *)updateBlocks addObject:v9];

  objc_sync_exit(v4);
}

- (void)unregisterUpdateNotification:(id)notification
{
  notificationCopy = notification;
  v4 = self->_updateBlocks;
  objc_sync_enter(v4);
  updateBlocks = self->_updateBlocks;
  v6 = MEMORY[0x1CCA736F0](notificationCopy);
  [(NSMutableArray *)updateBlocks removeObject:v6];

  v7 = self->_updateBlocks;
  if (v7 && ![(NSMutableArray *)v7 count])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"com.apple.ManagedConfiguration.profileListChanged", 0);
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"com.apple.biometrickitd.userDefaultsChanged", 0);
    v9 = self->_updateBlocks;
    self->_updateBlocks = 0;
  }

  objc_sync_exit(v4);
}

- (id)objectOfClass:(Class)class forKey:(id)key
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/com.apple.biometrickitd.plist"];
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  if (!v7)
  {
    v8 = CFPreferencesCopyValue(keyCopy, @"com.apple.biometrickitd", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
    if (v8)
    {
      v7 = v8;
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_22;
      }

      if (__osLog)
      {
        v9 = __osLog;
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = 136316162;
        v17 = "0";
        v18 = 2048;
        v19 = 0;
        v20 = 2080;
        v21 = &unk_1C82F52EE;
        v22 = 2080;
        v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BioUserDefaults.m";
        v24 = 1024;
        v25 = 178;
        _os_log_impl(&dword_1C82AD000, v9, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v16, 0x30u);
      }

      CFRelease(v7);
    }

    v7 = CFPreferencesCopyValue(keyCopy, @"com.apple.biometrickitd", @"mobile", *MEMORY[0x1E695E898]);
    if (!v7)
    {
LABEL_18:
      v11 = self->_registeredDefaults;
      objc_sync_enter(v11);
      v12 = [(NSMutableDictionary *)self->_registeredDefaults objectForKeyedSubscript:keyCopy];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = [(NSMutableDictionary *)self->_registeredDefaults objectForKeyedSubscript:keyCopy];
      }

      else
      {
        v7 = 0;
      }

      objc_sync_exit(v11);

      goto LABEL_22;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v10 = __osLog;
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = 136316162;
        v17 = "0";
        v18 = 2048;
        v19 = 0;
        v20 = 2080;
        v21 = &unk_1C82F52EE;
        v22 = 2080;
        v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BioUserDefaults.m";
        v24 = 1024;
        v25 = 196;
        _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v16, 0x30u);
      }

      CFRelease(v7);
      goto LABEL_18;
    }
  }

LABEL_22:

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [(BioUserDefaults *)self objectOfClass:objc_opt_class() forKey:keyCopy];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (int)intForKey:(id)key
{
  keyCopy = key;
  v5 = [(BioUserDefaults *)self objectOfClass:objc_opt_class() forKey:keyCopy];

  intValue = [v5 intValue];
  return intValue;
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [(BioUserDefaults *)self objectOfClass:objc_opt_class() forKey:keyCopy];

  integerValue = [v5 integerValue];
  return integerValue;
}

- (unsigned)unsignedIntForKey:(id)key
{
  keyCopy = key;
  v5 = [(BioUserDefaults *)self objectOfClass:objc_opt_class() forKey:keyCopy];

  unsignedIntValue = [v5 unsignedIntValue];
  return unsignedIntValue;
}

- (unint64_t)unsignedIntegerForKey:(id)key
{
  keyCopy = key;
  v5 = [(BioUserDefaults *)self objectOfClass:objc_opt_class() forKey:keyCopy];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  v5 = [(BioUserDefaults *)self objectOfClass:objc_opt_class() forKey:keyCopy];

  return v5;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = [(BioUserDefaults *)self objectOfClass:objc_opt_class() forKey:keyCopy];

  return v5;
}

- (BOOL)setObject:(id)object forKey:(id)key
{
  v4 = *MEMORY[0x1E695E8A0];
  v5 = *MEMORY[0x1E695E8B0];
  CFPreferencesSetValue(key, object, @"com.apple.biometrickitd", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
  return CFPreferencesSynchronize(@"com.apple.biometrickitd", v4, v5) != 0;
}

+ (id)preferenceObjectForKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v4 = *MEMORY[0x1E695E8A0];
  v5 = *MEMORY[0x1E695E8B0];
  CFPreferencesSynchronize(@"com.apple.biometrickitd", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
  v6 = CFPreferencesCopyValue(keyCopy, @"com.apple.biometrickitd", v4, v5);
  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_17;
    }

    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = "0";
      v15 = 2048;
      v16 = 0;
      v17 = 2080;
      v18 = &unk_1C82F52EE;
      v19 = 2080;
      v20 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BioUserDefaults.m";
      v21 = 1024;
      v22 = 322;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v13, 0x30u);
    }

    CFRelease(v7);
  }

  v9 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.biometrickitd", @"mobile", *MEMORY[0x1E695E898]);
  v7 = CFPreferencesCopyValue(keyCopy, @"com.apple.biometrickitd", @"mobile", v9);
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v10 = __osLog;
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136316162;
        v14 = "0";
        v15 = 2048;
        v16 = 0;
        v17 = 2080;
        v18 = &unk_1C82F52EE;
        v19 = 2080;
        v20 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BioUserDefaults.m";
        v21 = 1024;
        v22 = 338;
        _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v13, 0x30u);
      }

      CFRelease(v7);
      v7 = 0;
    }
  }

LABEL_17:

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)stateDictionary
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF20];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/Library/Managed Preferences/mobile/com.apple.biometrickitd.plist"];
  v5 = [v3 dictionaryWithContentsOfURL:v4 error:0];

  v6 = *MEMORY[0x1E695E8A0];
  v7 = *MEMORY[0x1E695E8B0];
  CFPreferencesSynchronize(@"com.apple.biometrickitd", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
  v8 = CFPreferencesCopyKeyList(@"com.apple.biometrickitd", v6, v7);
  v9 = CFPreferencesCopyMultiple(v8, @"com.apple.biometrickitd", v6, v7);
  if (v8)
  {
    CFRelease(v8);
  }

  v10 = *MEMORY[0x1E695E898];
  v11 = CFPreferencesCopyKeyList(@"com.apple.biometrickitd", @"mobile", *MEMORY[0x1E695E898]);
  v12 = CFPreferencesCopyMultiple(v11, @"com.apple.biometrickitd", @"mobile", v10);
  if (v11)
  {
    CFRelease(v11);
  }

  registeredDefaults = @"<none>";
  if (v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = @"<none>";
  }

  v20[0] = @"profilePlist";
  v20[1] = @"defaults";
  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = @"<none>";
  }

  v21[0] = v14;
  v21[1] = v15;
  v20[2] = @"mobileDefaults";
  v20[3] = @"registeredDefaults";
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = @"<none>";
  }

  if (self->_registeredDefaults)
  {
    registeredDefaults = self->_registeredDefaults;
  }

  v21[2] = v16;
  v21[3] = registeredDefaults;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)synchronize
{
  v2 = CFPreferencesSynchronize(@"com.apple.biometrickitd", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
  v3 = CFPreferencesSynchronize(@"com.apple.biometrickitd", @"mobile", *MEMORY[0x1E695E898]);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

@end