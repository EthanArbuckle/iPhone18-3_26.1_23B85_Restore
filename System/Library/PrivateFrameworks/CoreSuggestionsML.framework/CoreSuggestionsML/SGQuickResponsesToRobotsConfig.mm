@interface SGQuickResponsesToRobotsConfig
+ (id)sharedInstance;
- (SGQuickResponsesToRobotsConfig)initWithDictionary:(id)dictionary;
@end

@implementation SGQuickResponsesToRobotsConfig

- (SGQuickResponsesToRobotsConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesToRobotsConfig.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"params"}];
  }

  v30.receiver = self;
  v30.super_class = SGQuickResponsesToRobotsConfig;
  v6 = [(SGQuickResponsesToRobotsConfig *)&v30 init];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"ENABLE_FEATURE"];
    v6->_enableFeature = [v7 BOOLValue];

    if (v6->_enableFeature)
    {
      v8 = [dictionaryCopy objectForKeyedSubscript:@"RULES_DICT"];
      supportedKeysAndContext = v6->_supportedKeysAndContext;
      v6->_supportedKeysAndContext = v8;

      v10 = objc_alloc(MEMORY[0x277CBEB98]);
      v11 = [dictionaryCopy objectForKeyedSubscript:@"TRIGGER_WORDS"];
      v12 = [v10 initWithArray:v11];
      triggerWords = v6->_triggerWords;
      v6->_triggerWords = v12;

      v14 = objc_alloc(MEMORY[0x277CBEB98]);
      v15 = [dictionaryCopy objectForKeyedSubscript:@"GENERAL_CONTEXT_WORDS"];
      v16 = [v14 initWithArray:v15];
      generalContextWords = v6->_generalContextWords;
      v6->_generalContextWords = v16;

      v18 = [dictionaryCopy objectForKeyedSubscript:@"LEFT_CONTEXT"];
      v6->_leftContext = [v18 unsignedIntValue];

      v19 = [dictionaryCopy objectForKeyedSubscript:@"RIGHT_CONTEXT"];
      v6->_rightContext = [v19 unsignedIntValue];

      v20 = [dictionaryCopy objectForKeyedSubscript:@"GENERAL_CONTEXT_LEFT"];
      v6->_generalContextLeft = [v20 unsignedIntValue];

      v21 = [dictionaryCopy objectForKeyedSubscript:@"GENERAL_CONTEXT_RIGHT"];
      v6->_generalContextRight = [v21 unsignedIntValue];

      v22 = [dictionaryCopy objectForKeyedSubscript:@"TRIGGER_CONTEXT"];
      v6->_triggerContext = [v22 unsignedIntValue];

      v23 = [dictionaryCopy objectForKeyedSubscript:@"RELAX_CONTEXT"];
      v6->_relaxContext = [v23 BOOLValue];

      v24 = [dictionaryCopy objectForKeyedSubscript:@"USE_GENERAL_CONTEXT"];
      v6->_useGeneralContext = [v24 BOOLValue];

      v25 = [dictionaryCopy objectForKeyedSubscript:@"INSIGNIFICANT_SENDER"];
      v6->_insignificantSender = [v25 BOOLValue];

      v26 = [dictionaryCopy objectForKeyedSubscript:@"CAPS_WORDS_RATIO_MAX"];
      [v26 floatValue];
      v6->_capsWordsRatioMax = v27;
    }
  }

  return v6;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_1065);
  }

  v3 = sharedInstance__sharedConfig;

  return v3;
}

void __48__SGQuickResponsesToRobotsConfig_sharedInstance__block_invoke()
{
  v0 = +[SGDefaultAssets responseToRobotParams];
  if (v0)
  {
    v1 = [[SGQuickResponsesToRobotsConfig alloc] initWithDictionary:v0];
    v2 = sharedInstance__sharedConfig;
    sharedInstance__sharedConfig = v1;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Responses to Robots config file not found", v3, 2u);
  }
}

@end