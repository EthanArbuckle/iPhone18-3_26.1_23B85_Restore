@interface CESRSpeechProfileConfig
+ (id)_defaultConfigFilePath;
- (BOOL)_parseJsonObject:(id)a3;
- (CESRSpeechProfileConfig)init;
- (id)_init;
@end

@implementation CESRSpeechProfileConfig

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CESRSpeechProfileConfig;
  return [(CESRSpeechProfileConfig *)&v3 init];
}

- (BOOL)_parseJsonObject:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    self->_version = [v6 intValue];
    v7 = [[CESRDirectDonationConfig alloc] initWithJsonObject:v5];
    directDonationConfig = self->_directDonationConfig;
    self->_directDonationConfig = v7;

    if (self->_directDonationConfig)
    {
      v9 = [[CESRAppEntityConfig alloc] initWithJsonObject:v5];
      appEntityConfig = self->_appEntityConfig;
      self->_appEntityConfig = v9;

      if (self->_appEntityConfig)
      {
        v11 = [[CESRContextualEntityConfig alloc] initWithJsonObject:v5];
        contextualEntityConfig = self->_contextualEntityConfig;
        self->_contextualEntityConfig = v11;

        if (self->_contextualEntityConfig)
        {
          v13 = [[CESREntityCleanupConfig alloc] initWithJsonObject:v5];
          entityCleanupConfig = self->_entityCleanupConfig;
          self->_entityCleanupConfig = v13;

          if (self->_entityCleanupConfig)
          {
            trialNamespace = self->_trialNamespace;
            self->_trialNamespace = @"SIRI_SPEECH_SV_SPEECH_PROFILE";

            v16 = 1;
LABEL_19:

            goto LABEL_20;
          }

          v17 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
          {
            v21 = 136315138;
            v22 = "[CESRSpeechProfileConfig _parseJsonObject:]";
            v18 = "%s Failed to parse Entity Cleanup config.";
            goto LABEL_17;
          }

LABEL_18:
          v16 = 0;
          goto LABEL_19;
        }

        v17 = *MEMORY[0x277CEF0E8];
        if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        v21 = 136315138;
        v22 = "[CESRSpeechProfileConfig _parseJsonObject:]";
        v18 = "%s Failed to parse Contextual Entity config.";
      }

      else
      {
        v17 = *MEMORY[0x277CEF0E8];
        if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        v21 = 136315138;
        v22 = "[CESRSpeechProfileConfig _parseJsonObject:]";
        v18 = "%s Failed to parse App Entity config.";
      }
    }

    else
    {
      v17 = *MEMORY[0x277CEF0E8];
      if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v21 = 136315138;
      v22 = "[CESRSpeechProfileConfig _parseJsonObject:]";
      v18 = "%s Failed to parse Direct Donation config.";
    }

LABEL_17:
    _os_log_error_impl(&dword_225EEB000, v17, OS_LOG_TYPE_ERROR, v18, &v21, 0xCu);
    goto LABEL_18;
  }

  v16 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (CESRSpeechProfileConfig)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CESRSpeechProfileConfig;
  v2 = [(CESRSpeechProfileConfig *)&v16 init];
  v3 = v2;
  if (!v2)
  {
LABEL_12:
    v12 = v3;
    goto LABEL_13;
  }

  v2->_loadedFromTrial = 0;
  v4 = [CESRTrialConfigLoader configJSONForTrialFactor:@"speech_profile_config" trialNamespace:@"SIRI_SPEECH_SV_SPEECH_PROFILE"];
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[CESRSpeechProfileConfig init]";
    _os_log_debug_impl(&dword_225EEB000, v6, OS_LOG_TYPE_DEBUG, "%s Trying to parse config...", buf, 0xCu);
  }

  v7 = [(CESRSpeechProfileConfig *)v3 _parseJsonObject:v4];
  v3->_loadedFromTrial = v7;
  if (v7)
  {
    v8 = v4;
LABEL_9:
    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[CESRSpeechProfileConfig init]";
      _os_log_impl(&dword_225EEB000, v11, OS_LOG_TYPE_INFO, "%s Successfully loaded Speech Profile Config.", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[CESRSpeechProfileConfig init]";
    _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s Initial parse from Trial config failed. Trying to load default config directly...", buf, 0xCu);
  }

  v10 = +[CESRSpeechProfileConfig _defaultConfigFilePath];
  v8 = [CESRTrialConfigLoader configAtPath:v10];

  if ([(CESRSpeechProfileConfig *)v3 _parseJsonObject:v8])
  {
    goto LABEL_9;
  }

  v15 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v18 = "[CESRSpeechProfileConfig init]";
    _os_log_error_impl(&dword_225EEB000, v15, OS_LOG_TYPE_ERROR, "%s Failed to parse Speech Profile config file - likely it's malformed.", buf, 0xCu);
  }

  v12 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_defaultConfigFilePath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 bundlePath];

  v4 = [v3 stringByAppendingPathComponent:@"assets_SIRI_SPEECH_SV_SPEECH_PROFILE/SpeechProfileConfig.json"];

  return v4;
}

@end