@interface CBBOLTSProvider
- (CBBOLTSProvider)initWithQueue:(id)a3;
- (void)dealloc;
- (void)loadBOLTSModule;
- (void)newBOLTSModule;
@end

@implementation CBBOLTSProvider

- (CBBOLTSProvider)initWithQueue:(id)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12.receiver = self;
  v12.super_class = CBBOLTSProvider;
  v15 = [(CBModule *)&v12 initWithQueue:a3];
  if (!v15)
  {
    return v15;
  }

  v3 = os_log_create("com.apple.CoreBrightness.CBBOLTSProvider", "default");
  v15->super._logHandle = v3;
  if (v15->super._logHandle)
  {
    v4 = +[CBAgregateSettingsProvider sharedInstance];
    v15->_settingsProvider = v4;
    return v15;
  }

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
    v7 = type;
    __os_log_helper_16_0_0(v9);
    _os_log_error_impl(&dword_1DE8E5000, log, v7, "failed to create log handle", v9, 2u);
  }

  MEMORY[0x1E69E5920](v15);
  return 0;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_boltsModule)
  {
    boltsModule = v5->_boltsModule;
    if (boltsModule)
    {
      (*(*boltsModule + 8))(boltsModule);
    }

    v5->_boltsModule = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBBOLTSProvider;
  [(CBModule *)&v3 dealloc];
}

- (void)newBOLTSModule
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = self;
  v9 = a2;
  v8 = 0;
  settingsProvider = self->_settingsProvider;
  if (objc_opt_respondsToSelector())
  {
    if ([(CBAdaptiveAutoBrightnessSettingsProvider *)v10->_settingsProvider getMLABModelPath])
    {
      v3 = [(CBAdaptiveAutoBrightnessSettingsProvider *)v10->_settingsProvider getMLABModelPath];
      CBBOLTS::createFromUncompiledModelPath(v3, v4);
    }
  }

  v5 = +[MLAB URLOfModelInThisBundle];
  CBBOLTS::createUsingModelURL(v5, v6);
}

- (void)loadBOLTSModule
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = self;
  v18 = a2;
  if (self->_boltsModule)
  {
    v17 = +[MLAB URLOfModelInThisBundle];
    settingsProvider = v19->_settingsProvider;
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CBAdaptiveAutoBrightnessSettingsProvider *)v19->_settingsProvider getMLABModelPath];
      if (v16)
      {
        v15 = CBBOLTS::compileModel(v16, v3);
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          if (v19->super._logHandle)
          {
            logHandle = v19->super._logHandle;
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

          v14 = logHandle;
          v13 = 16;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            log = v14;
            type = v13;
            __os_log_helper_16_0_0(v12);
            _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to compile supplied model, falling back to using bundled model", v12, 2u);
          }
        }
      }
    }

    if (CBBOLTS::switchModel(v19->_boltsModule, v17))
    {
      if (v19->super._logHandle)
      {
        v5 = v19->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v4 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v4 = init_default_corebrightness_log();
        }

        v5 = v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v20, v17);
        _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "BOLTS switched to a new model: %@", v20, 0xCu);
      }
    }

    else
    {
      if (v19->super._logHandle)
      {
        v7 = v19->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v6 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v6 = init_default_corebrightness_log();
        }

        v7 = v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v21, v17);
        _os_log_error_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_ERROR, "Failed to switch to a new model: %@", v21, 0xCu);
      }
    }
  }

  else
  {
    v19->_boltsModule = [(CBBOLTSProvider *)v19 newBOLTSModule];
  }

  *MEMORY[0x1E69E9840];
}

@end