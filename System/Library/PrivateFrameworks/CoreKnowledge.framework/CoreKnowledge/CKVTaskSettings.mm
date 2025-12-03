@interface CKVTaskSettings
+ (id)defaultSettings;
- (BOOL)isEvaluationEnabled;
- (BOOL)isEvaluationWithProfile;
- (BOOL)isTaskCoalescenceDisabled;
- (BOOL)isTaskEnabled:(unsigned __int16)enabled reason:(unsigned __int16)reason;
- (CKVTaskSettings)init;
- (CKVTaskSettings)initWithLocalization:(id)localization;
- (void)setEvaluationEnabled:(BOOL)enabled;
- (void)setEvaluationWithProfile:(BOOL)profile;
- (void)setTaskCoalescenceDisabled:(BOOL)disabled;
@end

@implementation CKVTaskSettings

- (BOOL)isTaskEnabled:(unsigned __int16)enabled reason:(unsigned __int16)reason
{
  reasonCopy = reason;
  enabledCopy = enabled;
  v20 = *MEMORY[0x1E69E9840];
  if (!+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v10 = CKVTaskIdDescription(enabledCopy);
    v11 = _BOOLValueForKey([MEMORY[0x1E696AEC0] stringWithFormat:@"Task %@", @"*"]);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = _BOOLValueForKey([MEMORY[0x1E696AEC0] stringWithFormat:@"Task %@", v10]);

      if (!v12)
      {
        goto LABEL_2;
      }
    }

    bOOLValue = [v12 BOOLValue];

    LOBYTE(v8) = bOOLValue;
    return v8;
  }

LABEL_2:
  if (reasonCopy != 15 && reasonCopy != 17 && [(CKVTaskSettings *)self isEvaluationWithProfile])
  {
    v7 = CKLogContextVocabulary;
    v8 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
    if (!v8)
    {
      return v8;
    }

    *buf = 136315138;
    v17 = "[CKVTaskSettings isTaskEnabled:reason:]";
    v9 = "%s Evaluation with profile is enabled, blocking all real task events.";
    goto LABEL_7;
  }

  if (enabledCopy <= 7)
  {
    LOBYTE(v8) = 0;
    if (enabledCopy > 3)
    {
      if (enabledCopy > 5)
      {
        if (enabledCopy != 6)
        {
          return v8;
        }
      }

      else
      {
        if (enabledCopy != 4)
        {
          return v8;
        }

        if (_os_feature_enabled_impl())
        {
          v7 = CKLogContextVocabulary;
          v8 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
          if (!v8)
          {
            return v8;
          }

          *buf = 136315138;
          v17 = "[CKVTaskSettings isTaskEnabled:reason:]";
          v9 = "%s homed direct donation FF enabled";
LABEL_7:
          _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
LABEL_8:
          LOBYTE(v8) = 0;
          return v8;
        }
      }
    }

    else
    {
      if (enabledCopy <= 1)
      {
        if (!enabledCopy)
        {
          return v8;
        }

        if (enabledCopy != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_47;
      }

      if (enabledCopy == 2)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (enabledCopy <= 100)
    {
      if (enabledCopy > 9)
      {
        if (enabledCopy == 10)
        {

          LOBYTE(v8) = _os_feature_enabled_impl();
          return v8;
        }

        if (enabledCopy != 11)
        {
LABEL_38:
          v14 = CKLogContextVocabulary;
          v8 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR);
          if (!v8)
          {
            return v8;
          }

          *buf = 136315394;
          v17 = "[CKVTaskSettings isTaskEnabled:reason:]";
          v18 = 1024;
          v19 = enabledCopy;
          _os_log_error_impl(&dword_1C8683000, v14, OS_LOG_TYPE_ERROR, "%s Unexpected taskId: %u", buf, 0x12u);
          goto LABEL_8;
        }
      }

      LOBYTE(v8) = +[CKVAssistantSettingsBridge isSiriUODSupported];
      return v8;
    }

    if ((enabledCopy - 101) < 3)
    {
      goto LABEL_47;
    }

    if (enabledCopy != 104)
    {
      if (enabledCopy != 105)
      {
        goto LABEL_38;
      }

LABEL_47:
      LOBYTE(v8) = 1;
      return v8;
    }
  }

  if (+[CKVAssistantSettingsBridge isSiriUODSupported])
  {
    goto LABEL_47;
  }

  LOBYTE(v8) = +[CKVAssistantSettingsBridge isASRSupported];
  return v8;
}

- (void)setEvaluationWithProfile:(BOOL)profile
{
  if (!+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    atomic_store(profile, &self->_evaluationWithProfileEnabled);
  }
}

- (BOOL)isEvaluationWithProfile
{
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v3 = 0;
  }

  else
  {
    v3 = atomic_load(&self->_evaluationWithProfileEnabled);
  }

  return v3 & 1;
}

- (void)setEvaluationEnabled:(BOOL)enabled
{
  if (!+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    atomic_store(enabled, &self->_evaluationEnabled);
  }
}

- (BOOL)isEvaluationEnabled
{
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v3 = 0;
  }

  else
  {
    v3 = atomic_load(&self->_evaluationEnabled);
  }

  return v3 & 1;
}

- (void)setTaskCoalescenceDisabled:(BOOL)disabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:disabled];
  v4 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "_setValueForKey";
    v7 = 2112;
    v8 = v3;
    v9 = 2112;
    v10 = @"Disable Coalescence";
    _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s Setting value: %@ for key: %@", &v5, 0x20u);
  }

  CFPreferencesSetAppValue(@"Disable Coalescence", v3, @"com.apple.IntelligenceTasks");
}

- (BOOL)isTaskCoalescenceDisabled
{
  if (+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    return 0;
  }

  v3 = _BOOLValueForKey(@"Disable Coalescence");
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (CKVTaskSettings)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVTaskSettings)initWithLocalization:(id)localization
{
  localizationCopy = localization;
  v9.receiver = self;
  v9.super_class = CKVTaskSettings;
  v6 = [(CKVTaskSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localization, localization);
  }

  return v7;
}

+ (id)defaultSettings
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[CKVLocalization defaultLocalization];
  v4 = [v2 initWithLocalization:v3];

  return v4;
}

@end