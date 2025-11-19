@interface CBAgregateSettingsProvider
+ (id)sharedInstance;
- (CBAgregateSettingsProvider)initWithPreferences:(id)a3 andTrial:(id)a4;
- (unint64_t)aabUpdateStrategyType;
- (void)dealloc;
@end

@implementation CBAgregateSettingsProvider

+ (id)sharedInstance
{
  objc_sync_enter(a1);
  if (sharedInstance_onceToken_6 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6, &__block_literal_global_12);
  }

  v3 = sharedInstance__sharedObject_5;
  objc_sync_exit(a1);
  return v3;
}

CBAgregateSettingsProvider *__44__CBAgregateSettingsProvider_sharedInstance__block_invoke()
{
  result = [[CBAgregateSettingsProvider alloc] initWithPreferences:+[CBPreferencesSettingsProvider sharedInstance](CBPreferencesSettingsProvider andTrial:"sharedInstance"), +[CBTrialSettingsProvider sharedInstance]];
  sharedInstance__sharedObject_5 = result;
  return result;
}

- (CBAgregateSettingsProvider)initWithPreferences:(id)a3 andTrial:(id)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14.receiver = self;
  v14.super_class = CBAgregateSettingsProvider;
  v18 = [(CBAgregateSettingsProvider *)&v14 init];
  if (!v18)
  {
    return 0;
  }

  v4 = os_log_create("com.apple.CoreBrightness.CBAgregateSettingsProvider", "default");
  v18->_logHandle = v4;
  if (!v18->_logHandle)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    oslog = inited;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v9 = type;
      __os_log_helper_16_0_0(v11);
      _os_log_error_impl(&dword_1DE8E5000, log, v9, "Failed to create log handle for agregate settings provider", v11, 2u);
    }
  }

  v5 = MEMORY[0x1E69E5928](v16);
  v18->_preferencesSettingsProvider = v5;
  v6 = MEMORY[0x1E69E5928](v15);
  v18->_trialSettingsProvider = v6;
  return v18;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_preferencesSettingsProvider);
  *&v2 = MEMORY[0x1E69E5920](v5->_trialSettingsProvider).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBAgregateSettingsProvider;
  [(CBAgregateSettingsProvider *)&v3 dealloc];
}

- (unint64_t)aabUpdateStrategyType
{
  v9 = *MEMORY[0x1E69E9840];
  if (CBU_IsPad())
  {
    v7 = 0;
  }

  else if ([(CBPreferencesSettingsProvider *)self->_preferencesSettingsProvider specifiesAABCurveUpdateStrategy])
  {
    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
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
      updated = aabUpdateStrategyTypeToString([(CBPreferencesSettingsProvider *)self->_preferencesSettingsProvider aabUpdateStrategyType]);
      __os_log_helper_16_2_1_8_66(v8, updated);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "AAB curve update strategy overriden by preferences. Use %{public}@", v8, 0xCu);
    }

    v7 = [(CBPreferencesSettingsProvider *)self->_preferencesSettingsProvider aabUpdateStrategyType];
  }

  else
  {
    v7 = [(CBTrialSettingsProvider *)self->_trialSettingsProvider aabUpdateStrategyType];
  }

  *MEMORY[0x1E69E9840];
  return v7;
}

@end