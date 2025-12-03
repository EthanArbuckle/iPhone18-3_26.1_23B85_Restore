@interface CBKeyboardPreferencesManager
+ (BOOL)getBoolPreference:(BOOL *)preference forKey:(id)key;
+ (BOOL)getFloatPreference:(float *)preference forKey:(id)key;
+ (BOOL)getIntPreference:(int *)preference forKey:(id)key;
+ (BOOL)setBoolPreference:(BOOL)preference forKey:(id)key;
+ (BOOL)setFloatPreference:(float)preference forKey:(id)key;
+ (BOOL)setIntPreference:(int)preference forKey:(id)key;
+ (id)copyPreferenceForKey:(id)key keyboardID:(unint64_t)d;
+ (id)sharedInstance;
- (BOOL)setPreference:(id)preference forKey:(id)key;
- (CBKeyboardPreferencesManager)init;
- (id)copyAllPrefereneces;
- (id)copyPreferenceForKey:(id)key;
- (void)dealloc;
@end

@implementation CBKeyboardPreferencesManager

+ (id)sharedInstance
{
  selfCopy = self;
  v10 = a2;
  objc_sync_enter(self);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __46__CBKeyboardPreferencesManager_sharedInstance__block_invoke;
  v8 = &unk_1E867B480;
  v9 = selfCopy;
  v13 = &sharedInstance_onceToken_3;
  v12 = &v4;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(v13, v12);
  }

  objc_sync_exit(self);
  return sharedInstance__sharedObject_2;
}

uint64_t __46__CBKeyboardPreferencesManager_sharedInstance__block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___CBKeyboardPreferencesManager;
  result = [objc_msgSendSuper2(&v2 alloc)];
  sharedInstance__sharedObject_2 = result;
  return result;
}

- (CBKeyboardPreferencesManager)init
{
  selfCopy = self;
  v22 = a2;
  v21.receiver = self;
  v21.super_class = CBKeyboardPreferencesManager;
  selfCopy = [(CBKeyboardPreferencesManager *)&v21 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v2 = os_log_create("com.apple.CoreBrightness.KeyboardPreferencesManager", "default");
  selfCopy->_logHandle = v2;
  if (!selfCopy->_logHandle)
  {
    v13 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v20 = v13;
    v19 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v18, 2u);
    }
  }

  v3 = dispatch_queue_create("com.apple.CoreBrightness.KeyboardPreferencesManager", 0);
  selfCopy->_queue = v3;
  if (selfCopy->_queue)
  {
    v14 = [CBPreferencesHandler copyPreferenceForAllUsersForKey:@"KeyboardBacklight"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v14];
      selfCopy->_preferences = v4;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      selfCopy->_preferences = v5;
    }

    MEMORY[0x1E69E5920](v14);
    return selfCopy;
  }

  if (selfCopy->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v17 = logHandle;
  v16 = 16;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = v17;
    v8 = v16;
    __os_log_helper_16_0_0(v15);
    _os_log_error_impl(&dword_1DE8E5000, v7, v8, "failed to create dispatch queue", v15, 2u);
  }

  MEMORY[0x1E69E5920](selfCopy);
  selfCopy = 0;
  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
    selfCopy->_queue = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_preferences).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBKeyboardPreferencesManager;
  [(CBKeyboardPreferencesManager *)&v3 dealloc];
}

- (BOOL)setPreference:(id)preference forKey:(id)key
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v27 = a2;
  preferenceCopy = preference;
  keyCopy = key;
  v20 = 0;
  v21 = &v20;
  v22 = 0x20000000;
  v23 = 32;
  v24 = 0;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v19 = logHandle;
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v29, keyCopy, preferenceCopy);
    _os_log_impl(&dword_1DE8E5000, v19, v18, "Set preference %@ = %@", v29, 0x16u);
  }

  queue = selfCopy->_queue;
  block = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __53__CBKeyboardPreferencesManager_setPreference_forKey___block_invoke;
  v13 = &unk_1E867B4A8;
  v14 = selfCopy;
  v15 = preferenceCopy;
  v16 = keyCopy;
  v17 = &v20;
  dispatch_sync(queue, &block);
  v6 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

BOOL __53__CBKeyboardPreferencesManager_setPreference_forKey___block_invoke(void *a1)
{
  [*(a1[4] + 24) setObject:a1[5] forKey:a1[6]];
  result = [CBPreferencesHandler storePreferenceForAllUsersForKey:@"KeyboardBacklight" andValue:*(a1[4] + 24)];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (id)copyPreferenceForKey:(id)key
{
  v27 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v24 = a2;
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 1375731712;
  v19 = 48;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __53__CBKeyboardPreferencesManager_copyPreferenceForKey___block_invoke;
  v12 = &unk_1E867BCF8;
  v13 = selfCopy;
  v15 = &v16;
  keyCopy2 = key;
  dispatch_sync(queue, &block);
  if (selfCopy->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v26, keyCopy, v17[5]);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Copy preference %@ = %@", v26, 0x16u);
  }

  v5 = v17[5];
  _Block_object_dispose(&v16, 8);
  *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __53__CBKeyboardPreferencesManager_copyPreferenceForKey___block_invoke(void *a1)
{
  if (!*(a1[4] + 24))
  {
    *(a1[4] + 24) = [CBPreferencesHandler copyPreferenceForAllUsersForKey:@"KeyboardBacklight"];
  }

  *(*(a1[6] + 8) + 40) = [*(a1[4] + 24) objectForKey:a1[5]];
  return MEMORY[0x1E69E5928](*(*(a1[6] + 8) + 40));
}

- (id)copyAllPrefereneces
{
  selfCopy = self;
  v19 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 1375731712;
  v15 = 48;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __51__CBKeyboardPreferencesManager_copyAllPrefereneces__block_invoke;
  v9 = &unk_1E867B7F0;
  v11 = &v12;
  v10 = selfCopy;
  dispatch_sync(queue, &block);
  v4 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t __51__CBKeyboardPreferencesManager_copyAllPrefereneces__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (BOOL)setIntPreference:(int)preference forKey:(id)key
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:preference];
  v6 = [CBKeyboardPreferencesManager setPreference:v5 forKey:key];
  MEMORY[0x1E69E5920](v5);
  return v6;
}

+ (BOOL)setFloatPreference:(float)preference forKey:(id)key
{
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v5 = preference;
  v7 = [v4 initWithFloat:v5];
  v8 = [CBKeyboardPreferencesManager setPreference:v7 forKey:key];
  MEMORY[0x1E69E5920](v7);
  return v8;
}

+ (BOOL)setBoolPreference:(BOOL)preference forKey:(id)key
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:preference];
  v6 = [CBKeyboardPreferencesManager setPreference:v5 forKey:key];
  MEMORY[0x1E69E5920](v5);
  return v6;
}

+ (BOOL)getIntPreference:(int *)preference forKey:(id)key
{
  v6 = 0;
  v5 = [CBKeyboardPreferencesManager copyPreferenceForKey:key];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *preference = [v5 intValue];
      v6 = 1;
    }
  }

  MEMORY[0x1E69E5920](v5);
  return v6 & 1;
}

+ (BOOL)getFloatPreference:(float *)preference forKey:(id)key
{
  v7 = 0;
  v6 = [CBKeyboardPreferencesManager copyPreferenceForKey:key];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      *preference = v4;
      v7 = 1;
    }
  }

  MEMORY[0x1E69E5920](v6);
  return v7 & 1;
}

+ (BOOL)getBoolPreference:(BOOL *)preference forKey:(id)key
{
  v6 = 0;
  v5 = [CBKeyboardPreferencesManager copyPreferenceForKey:key];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *preference = [v5 BOOLValue];
      v6 = 1;
    }
  }

  MEMORY[0x1E69E5920](v5);
  return v6 & 1;
}

+ (id)copyPreferenceForKey:(id)key keyboardID:(unint64_t)d
{
  v8 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", d];
  v6 = [+[CBKeyboardPreferencesManager sharedInstance](CBKeyboardPreferencesManager copyPreferenceForKey:"copyPreferenceForKey:", v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 objectForKey:key];
    v8 = MEMORY[0x1E69E5928](v4);
  }

  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v6);
  return v8;
}

@end