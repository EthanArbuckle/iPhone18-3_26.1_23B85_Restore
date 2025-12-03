@interface CBTrialSettingsProvider
+ (CBTrialSettingsProvider)sharedInstance;
- (CBTrialSettingsProvider)init;
- (id)getMLABModelPath;
- (unint64_t)aabUpdateStrategyType;
- (void)dealloc;
- (void)registerAutoBrightnessSettingsUpdateHandler:(id)handler;
- (void)unregisterAutoBrightnessSettingsUpdateHandler;
@end

@implementation CBTrialSettingsProvider

- (CBTrialSettingsProvider)init
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = CBTrialSettingsProvider;
  selfCopy = [(CBTrialSettingsProvider *)&v7 init];
  if (!selfCopy)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69DB518] clientWithIdentifier:226];
  v3 = MEMORY[0x1E69E5928](v2);
  selfCopy->_client = v3;
  v4 = [(TRIClient *)selfCopy->_client experimentIdentifiersWithNamespaceName:@"COREOS_BRIGHTNESS_AUTO_BRIGHTNESS"];
  v5 = MEMORY[0x1E69E5928](v4);
  selfCopy->_experimentIdentifiers = v5;
  selfCopy->_notificationToken = 0;
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_notificationToken);
  MEMORY[0x1E69E5920](selfCopy->_experimentIdentifiers);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_client).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBTrialSettingsProvider;
  [(CBTrialSettingsProvider *)&v3 dealloc];
}

+ (CBTrialSettingsProvider)sharedInstance
{
  objc_sync_enter(self);
  if (sharedInstance_onceToken_7 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7, &__block_literal_global_15);
  }

  v3 = sharedInstance__sharedObject_6;
  objc_sync_exit(self);
  return v3;
}

CBTrialSettingsProvider *__41__CBTrialSettingsProvider_sharedInstance__block_invoke()
{
  result = objc_alloc_init(CBTrialSettingsProvider);
  sharedInstance__sharedObject_6 = result;
  return result;
}

- (id)getMLABModelPath
{
  v3 = [-[TRIClient levelForFactor:withNamespaceName:](self->_client levelForFactor:@"Aether" withNamespaceName:{@"COREOS_BRIGHTNESS_AUTO_BRIGHTNESS", "fileValue"}];
  if ([v3 hasPath])
  {
    return [v3 path];
  }

  else
  {
    return 0;
  }
}

- (void)registerAutoBrightnessSettingsUpdateHandler:(id)handler
{
  selfCopy = self;
  v14 = a2;
  handlerCopy = handler;
  [(CBTrialSettingsProvider *)self unregisterAutoBrightnessSettingsUpdateHandler];
  client = selfCopy->_client;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__CBTrialSettingsProvider_registerAutoBrightnessSettingsUpdateHandler___block_invoke;
  v10 = &unk_1E867D138;
  v11 = selfCopy;
  v12 = handlerCopy;
  v4 = [(TRIClient *)client addUpdateHandlerForNamespaceName:@"COREOS_BRIGHTNESS_AUTO_BRIGHTNESS" usingBlock:?];
  v5 = MEMORY[0x1E69E5928](v4);
  selfCopy->_notificationToken = v5;
}

uint64_t __71__CBTrialSettingsProvider_registerAutoBrightnessSettingsUpdateHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) refresh];
  if (*(*(a1 + 32) + 24))
  {
    MEMORY[0x1E69E5920](*(*(a1 + 32) + 24));
  }

  v1 = [*(*(a1 + 32) + 8) experimentIdentifiersWithNamespaceName:@"COREOS_BRIGHTNESS_AUTO_BRIGHTNESS"];
  *(*(a1 + 32) + 24) = MEMORY[0x1E69E5928](v1);
  return (*(*(a1 + 40) + 16))();
}

- (void)unregisterAutoBrightnessSettingsUpdateHandler
{
  if (self->_notificationToken)
  {
    [(TRIClient *)self->_client removeUpdateHandlerForToken:self->_notificationToken];
    MEMORY[0x1E69E5920](self->_notificationToken);
  }
}

- (unint64_t)aabUpdateStrategyType
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = [(TRIClient *)self->_client levelForFactor:@"CBAABCurveUpdateStrategyType" withNamespaceName:@"COREOS_BRIGHTNESS_AUTO_BRIGHTNESS"];
  if (v7)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      updated = aabUpdateStrategyTypeToString_0([v7 longValue]);
      __os_log_helper_16_2_1_8_64(v10, updated);
      _os_log_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_DEFAULT, "Trial settings: %@", v10, 0xCu);
    }

    longValue = [v7 longValue];
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v5 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v5 = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v3 = aabUpdateStrategyTypeToString_0(2);
      __os_log_helper_16_2_1_8_64(v9, v3);
      _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Trial is not set => use default: %@", v9, 0xCu);
    }

    longValue = 2;
  }

  *MEMORY[0x1E69E9840];
  return longValue;
}

@end