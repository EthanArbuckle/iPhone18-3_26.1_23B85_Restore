@interface CESRAudioSamplingConfigManager
+ (id)sharedManager;
- (BOOL)shouldSampleFromConfigForProductType:(int64_t)type language:(id)language;
- (CESRAudioSamplingConfigManager)initWithAudioSamplingConfigDict:(id)dict;
- (id)_createConfigFromProductType:(int64_t)type;
- (void)loadConfigs;
@end

@implementation CESRAudioSamplingConfigManager

- (BOOL)shouldSampleFromConfigForProductType:(int64_t)type language:(id)language
{
  v32 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  if (languageCopy)
  {
    v7 = languageCopy;
    audioSamplingConfigDict = self->_audioSamplingConfigDict;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v10 = [(NSMutableDictionary *)audioSamplingConfigDict objectForKey:v9];

    if (v10)
    {
      v11 = MEMORY[0x22AA73B90](v7);
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v7;
      }

      v14 = v13;

      v15 = [[CESRSamplingDimension alloc] initWithAsrLocale:v14];
      v16 = [v10 getSamplingRateFromDimension:v15];
      v17 = v16;
      if (v16)
      {
        [v16 floatValue];
        v18 = [CESRAudioSamplingUtilities isUniformlySampledWithSamplingRate:?];
        v19 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
        {
          v20 = v19;
          [v17 floatValue];
          v26 = 136315650;
          v27 = "[CESRAudioSamplingConfigManager shouldSampleFromConfigForProductType:language:]";
          v28 = 2048;
          v29 = v21;
          v30 = 1024;
          v31 = v18;
          _os_log_debug_impl(&dword_225EEB000, v20, OS_LOG_TYPE_DEBUG, "%s Sampled with sampling rate = %lf, sampled result = %d", &v26, 0x1Cu);
        }
      }

      else
      {
        v23 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
        {
          v26 = 136315138;
          v27 = "[CESRAudioSamplingConfigManager shouldSampleFromConfigForProductType:language:]";
          _os_log_debug_impl(&dword_225EEB000, v23, OS_LOG_TYPE_DEBUG, "%s No Sampling Rate Returned", &v26, 0xCu);
        }

        LOBYTE(v18) = 1;
      }

      v7 = v14;
    }

    else
    {
      v22 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        v26 = 136315138;
        v27 = "[CESRAudioSamplingConfigManager shouldSampleFromConfigForProductType:language:]";
        _os_log_debug_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEBUG, "%s No Sampling Config Available", &v26, 0xCu);
      }

      LOBYTE(v18) = 1;
    }
  }

  else
  {
    LOBYTE(v18) = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_createConfigFromProductType:(int64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  if (type)
  {
    if (type != 1)
    {
      v10 = 0;
      goto LABEL_16;
    }

    v3 = @"com.apple.siri.asr.assistant.audio.sampling";
  }

  else
  {
    v3 = @"com.apple.siri.asr.dictation.audio.sampling";
  }

  v4 = MEMORY[0x277CEF0E8];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315394;
    v14 = "[CESRAudioSamplingConfigManager _createConfigFromProductType:]";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_225EEB000, v5, OS_LOG_TYPE_DEBUG, "%s Loading Sampling Config for Factor Name: %@", &v13, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CDCE98]);
  v7 = [v6 installedAudioSamplingConfigWithAssetName:v3];

  v8 = *v4;
  v9 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      v13 = 136315650;
      v14 = "[CESRAudioSamplingConfigManager _createConfigFromProductType:]";
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v7;
      _os_log_debug_impl(&dword_225EEB000, v8, OS_LOG_TYPE_DEBUG, "%s File Path for Factor Name: %@ is %@", &v13, 0x20u);
    }

    v10 = [[CESRAudioSamplingConfig alloc] initWithConfigPath:v7];
  }

  else
  {
    if (v9)
    {
      v13 = 136315394;
      v14 = "[CESRAudioSamplingConfigManager _createConfigFromProductType:]";
      v15 = 2112;
      v16 = v3;
      _os_log_debug_impl(&dword_225EEB000, v8, OS_LOG_TYPE_DEBUG, "%s No File Path for Factor Name: %@", &v13, 0x16u);
    }

    v10 = 0;
  }

LABEL_16:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)loadConfigs
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = [(CESRAudioSamplingConfigManager *)self _createConfigFromProductType:v3];
    if (v6)
    {
      audioSamplingConfigDict = self->_audioSamplingConfigDict;
      v8 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      [(NSMutableDictionary *)audioSamplingConfigDict setObject:v6 forKey:v8];
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
}

- (CESRAudioSamplingConfigManager)initWithAudioSamplingConfigDict:(id)dict
{
  dictCopy = dict;
  v11.receiver = self;
  v11.super_class = CESRAudioSamplingConfigManager;
  v6 = [(CESRAudioSamplingConfigManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (dictCopy)
    {
      objc_storeStrong(&v6->_audioSamplingConfigDict, dict);
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      audioSamplingConfigDict = v7->_audioSamplingConfigDict;
      v7->_audioSamplingConfigDict = dictionary;

      [(CESRAudioSamplingConfigManager *)v7 loadConfigs];
    }
  }

  return v7;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_2944 != -1)
  {
    dispatch_once(&sharedManager_onceToken_2944, &__block_literal_global_2945);
  }

  v3 = sharedManager_sharedMyManager_2946;

  return v3;
}

uint64_t __47__CESRAudioSamplingConfigManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(CESRAudioSamplingConfigManager);
  v1 = sharedManager_sharedMyManager_2946;
  sharedManager_sharedMyManager_2946 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end