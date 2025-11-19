@interface CKVTaskSettings
+ (id)defaultSettings;
- (BOOL)isEvaluationEnabled;
- (BOOL)isEvaluationWithProfile;
- (BOOL)isTaskCoalescenceDisabled;
- (BOOL)isTaskEnabled:(unsigned __int16)a3 reason:(unsigned __int16)a4;
- (CKVTaskSettings)init;
- (CKVTaskSettings)initWithLocalization:(id)a3;
- (void)setEvaluationEnabled:(BOOL)a3;
- (void)setEvaluationWithProfile:(BOOL)a3;
- (void)setTaskCoalescenceDisabled:(BOOL)a3;
@end

@implementation CKVTaskSettings

- (BOOL)isTaskEnabled:(unsigned __int16)a3 reason:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  if (!+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    v10 = CKVTaskIdDescription(v5);
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

    v13 = [v12 BOOLValue];

    LOBYTE(v8) = v13;
    return v8;
  }

LABEL_2:
  if (v4 != 15 && v4 != 17 && [(CKVTaskSettings *)self isEvaluationWithProfile])
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

  if (v5 <= 7)
  {
    LOBYTE(v8) = 0;
    if (v5 > 3)
    {
      if (v5 > 5)
      {
        if (v5 != 6)
        {
          return v8;
        }
      }

      else
      {
        if (v5 != 4)
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
      if (v5 <= 1)
      {
        if (!v5)
        {
          return v8;
        }

        if (v5 != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_47;
      }

      if (v5 == 2)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (v5 <= 100)
    {
      if (v5 > 9)
      {
        if (v5 == 10)
        {

          LOBYTE(v8) = _os_feature_enabled_impl();
          return v8;
        }

        if (v5 != 11)
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
          v19 = v5;
          _os_log_error_impl(&dword_1C8683000, v14, OS_LOG_TYPE_ERROR, "%s Unexpected taskId: %u", buf, 0x12u);
          goto LABEL_8;
        }
      }

      LOBYTE(v8) = +[CKVAssistantSettingsBridge isSiriUODSupported];
      return v8;
    }

    if ((v5 - 101) < 3)
    {
      goto LABEL_47;
    }

    if (v5 != 104)
    {
      if (v5 != 105)
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

- (void)setEvaluationWithProfile:(BOOL)a3
{
  if (!+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    atomic_store(a3, &self->_evaluationWithProfileEnabled);
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

- (void)setEvaluationEnabled:(BOOL)a3
{
  if (!+[CKVAssistantSettingsBridge isCustomerInstall])
  {
    atomic_store(a3, &self->_evaluationEnabled);
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

- (void)setTaskCoalescenceDisabled:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];
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
    v2 = [v3 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (CKVTaskSettings)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVTaskSettings)initWithLocalization:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKVTaskSettings;
  v6 = [(CKVTaskSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localization, a3);
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