@interface CESRSpeechProfileSettings
+ (BOOL)_isAssistantRequired;
+ (BOOL)_isDevicePowerConstrained;
+ (BOOL)_isDictationRequired;
+ (BOOL)_isSupportedAppIntentsIndexedEntityPartition:(id)partition speechProfileConfig:(id)config;
+ (BOOL)_shouldUpdateOnM11WatchForSets:(id)sets;
+ (BOOL)deviceHasFavorablePowerConditions;
+ (id)_requiredAssistantLocale;
+ (id)_requiredDictationLocales;
+ (id)defaultSettings;
+ (id)itemTypesRequiringImmediateUpdate;
+ (void)disableOverrideAcceptAllSets;
+ (void)enableOverrideAcceptAllSets;
- (id)_initWithAssistantLocale:(id)locale dictationLocales:(id)locales;
- (id)speechProfileConfig;
- (void)enumerateRequiredInstances:(id)instances;
- (void)updateRequiredLocales;
@end

@implementation CESRSpeechProfileSettings

- (id)speechProfileConfig
{
  speechProfileConfig = self->_speechProfileConfig;
  if (!speechProfileConfig)
  {
    v4 = objc_alloc_init(CESRSpeechProfileConfig);
    v5 = self->_speechProfileConfig;
    self->_speechProfileConfig = v4;

    speechProfileConfig = self->_speechProfileConfig;
  }

  return speechProfileConfig;
}

- (void)enumerateRequiredInstances:(id)instances
{
  v18 = *MEMORY[0x277D85DE8];
  instancesCopy = instances;
  if (self->_assistantLocale)
  {
    if ([(NSSet *)self->_dictationLocales containsObject:?])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    instancesCopy[2](instancesCopy, self->_assistantLocale, v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSSet *)self->_dictationLocales allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([(NSLocale *)v11 isEqual:self->_assistantLocale]& 1) == 0)
        {
          instancesCopy[2](instancesCopy, v11, 2);
        }
      }

      v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateRequiredLocales
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF0E8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[CESRSpeechProfileSettings updateRequiredLocales]";
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_DEFAULT, "%s Updating required locales...", buf, 0xCu);
  }

  _requiredAssistantLocale = [objc_opt_class() _requiredAssistantLocale];
  assistantLocale = self->_assistantLocale;
  self->_assistantLocale = _requiredAssistantLocale;

  v7 = self->_assistantLocale;
  v8 = *v3;
  v9 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = v8;
      localeIdentifier = [(NSLocale *)v7 localeIdentifier];
      *buf = 136315394;
      v30 = "[CESRSpeechProfileSettings updateRequiredLocales]";
      v31 = 2112;
      v32 = localeIdentifier;
      _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEFAULT, "%s Required Assistant locale: %@", buf, 0x16u);
    }
  }

  else if (v9)
  {
    *buf = 136315138;
    v30 = "[CESRSpeechProfileSettings updateRequiredLocales]";
    _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_DEFAULT, "%s No required Assistant locale.", buf, 0xCu);
  }

  _requiredDictationLocales = [objc_opt_class() _requiredDictationLocales];
  dictationLocales = self->_dictationLocales;
  self->_dictationLocales = _requiredDictationLocales;

  if (self->_dictationLocales)
  {
    array = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = self->_dictationLocales;
    v16 = [(NSSet *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          localeIdentifier2 = [*(*(&v24 + 1) + 8 * v19) localeIdentifier];
          [array addObject:localeIdentifier2];

          ++v19;
        }

        while (v17 != v19);
        v17 = [(NSSet *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    [array sortUsingSelector:sel_compare_];
    v21 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[CESRSpeechProfileSettings updateRequiredLocales]";
      v31 = 2112;
      v32 = array;
      _os_log_impl(&dword_225EEB000, v21, OS_LOG_TYPE_DEFAULT, "%s Required Dictation locales: %@", buf, 0x16u);
    }
  }

  else
  {
    v22 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[CESRSpeechProfileSettings updateRequiredLocales]";
      _os_log_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEFAULT, "%s No required Dictation locales.", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_initWithAssistantLocale:(id)locale dictationLocales:(id)locales
{
  localeCopy = locale;
  localesCopy = locales;
  v13.receiver = self;
  v13.super_class = CESRSpeechProfileSettings;
  v9 = [(CESRSpeechProfileSettings *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assistantLocale, locale);
    objc_storeStrong(&v10->_dictationLocales, locales);
    speechProfileConfig = v10->_speechProfileConfig;
    v10->_speechProfileConfig = 0;
  }

  return v10;
}

+ (BOOL)_isSupportedAppIntentsIndexedEntityPartition:(id)partition speechProfileConfig:(id)config
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CF9498];
  configCopy = config;
  v7 = [partition descriptorWithKey:v5];
  value = [v7 value];

  appEntityConfig = [configCopy appEntityConfig];

  if (![appEntityConfig overallAppEntityLimit])
  {
    v11 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
LABEL_7:
      v10 = 0;
      goto LABEL_8;
    }

    v18 = 136315138;
    v19 = "+[CESRSpeechProfileSettings _isSupportedAppIntentsIndexedEntityPartition:speechProfileConfig:]";
    v12 = "%s App Entity ingestion is disabled in config, AppIntentsIndexedEntity sets will be ignored.";
    v13 = v11;
    v14 = 12;
LABEL_10:
    _os_log_debug_impl(&dword_225EEB000, v13, OS_LOG_TYPE_DEBUG, v12, &v18, v14);
    goto LABEL_7;
  }

  if (([appEntityConfig isBundleIdSupported:value] & 1) == 0)
  {
    v15 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v18 = 136315394;
    v19 = "+[CESRSpeechProfileSettings _isSupportedAppIntentsIndexedEntityPartition:speechProfileConfig:]";
    v20 = 2112;
    v21 = value;
    v12 = "%s AppIntentsIndexedEntity partition from app=%@ is either not supported or explicitly deny-listed";
    v13 = v15;
    v14 = 22;
    goto LABEL_10;
  }

  v10 = 1;
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)disableOverrideAcceptAllSets
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accept %@", @"*"];

  CFPreferencesSetAppValue(v2, 0, @"com.apple.SpeechProfile");
}

+ (void)enableOverrideAcceptAllSets
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accept %@", @"*"];
  v3 = MEMORY[0x277CBEC38];

  CFPreferencesSetAppValue(v2, v3, @"com.apple.SpeechProfile");
}

+ (id)_requiredDictationLocales
{
  if ([self _isDictationRequired])
  {
    v2 = +[CESRUtilities installedDictationLocales];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)_requiredAssistantLocale
{
  if ([self _isAssistantRequired])
  {
    v2 = +[CESRUtilities installedAssistantLocale];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)_isDictationRequired
{
  v9 = *MEMORY[0x277D85DE8];
  if (!+[CESRUtilities isOfflineDictationSupported])
  {
    v3 = *MEMORY[0x277CEF0E8];
    v2 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
    if (!v2)
    {
      goto LABEL_9;
    }

    v7 = 136315138;
    v8 = "+[CESRSpeechProfileSettings _isDictationRequired]";
    v4 = "%s Offline Dictation is not supported.";
LABEL_8:
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, v4, &v7, 0xCu);
    LOBYTE(v2) = 0;
    goto LABEL_9;
  }

  if (!+[CESRUtilities isDictationEnabled])
  {
    v3 = *MEMORY[0x277CEF0E8];
    v2 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
    if (!v2)
    {
      goto LABEL_9;
    }

    v7 = 136315138;
    v8 = "+[CESRSpeechProfileSettings _isDictationRequired]";
    v4 = "%s Dictation is disabled in Settings.";
    goto LABEL_8;
  }

  LOBYTE(v2) = 1;
LABEL_9:
  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (BOOL)_isAssistantRequired
{
  v9 = *MEMORY[0x277D85DE8];
  if (+[CESRUtilities isSiriUODSupported])
  {
    if (!+[CESRUtilities isSiriUODWithASROnServerSupported])
    {
      if (+[CESRUtilities isAssistantEnabled])
      {
        LOBYTE(v3) = 1;
        goto LABEL_12;
      }

      v2 = *MEMORY[0x277CEF0E8];
      v3 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
      if (!v3)
      {
        goto LABEL_12;
      }

      v7 = 136315138;
      v8 = "+[CESRSpeechProfileSettings _isAssistantRequired]";
      v4 = "%s Siri is disabled in Settings.";
      goto LABEL_7;
    }

    v2 = *MEMORY[0x277CEF0E8];
    v3 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
    if (v3)
    {
      v7 = 136315138;
      v8 = "+[CESRSpeechProfileSettings _isAssistantRequired]";
      v4 = "%s Siri UOD with ASR on server is supported.";
LABEL_7:
      _os_log_impl(&dword_225EEB000, v2, OS_LOG_TYPE_INFO, v4, &v7, 0xCu);
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    v2 = *MEMORY[0x277CEF0E8];
    v3 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
    if (v3)
    {
      v7 = 136315138;
      v8 = "+[CESRSpeechProfileSettings _isAssistantRequired]";
      v4 = "%s Siri UOD is not supported.";
      goto LABEL_7;
    }
  }

LABEL_12:
  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)itemTypesRequiringImmediateUpdate
{
  if (itemTypesRequiringImmediateUpdate_onceToken != -1)
  {
    dispatch_once(&itemTypesRequiringImmediateUpdate_onceToken, &__block_literal_global_314);
  }

  v3 = itemTypesRequiringImmediateUpdate_highPriorityItemTypes;

  return v3;
}

uint64_t __62__CESRSpeechProfileSettings_itemTypesRequiringImmediateUpdate__block_invoke()
{
  itemTypesRequiringImmediateUpdate_highPriorityItemTypes = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2839523A8, &unk_2839523F0, &unk_283952408, &unk_2839523D8, &unk_283952420, &unk_283952438, &unk_283952450, 0}];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)_isDevicePowerConstrained
{
  v15 = *MEMORY[0x277D85DE8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  thermalState = [processInfo thermalState];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    v8 = @"NO";
    v10 = "+[CESRSpeechProfileSettings _isDevicePowerConstrained]";
    v9 = 136315650;
    if (isLowPowerModeEnabled)
    {
      v8 = @"YES";
    }

    v11 = 2048;
    v12 = thermalState;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_225EEB000, v5, OS_LOG_TYPE_DEBUG, "%s thermalState=%ld, isLowPowerModeEnabled=%@", &v9, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return (thermalState > 1) | isLowPowerModeEnabled & 1;
}

+ (BOOL)deviceHasFavorablePowerConditions
{
  if (+[CESRSpeechProfileSettings _isDevicePowerConstrained])
  {
    return 0;
  }

  return +[CESRSpeechProfileSettings _isDeviceChargingAboveThreshold];
}

+ (BOOL)_shouldUpdateOnM11WatchForSets:(id)sets
{
  v17 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  if (_shouldUpdateOnM11WatchForSets__onceToken != -1)
  {
    dispatch_once(&_shouldUpdateOnM11WatchForSets__onceToken, &__block_literal_global_369);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = setsCopy;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = _shouldUpdateOnM11WatchForSets__watchUpdatableItemTypes;
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "itemType", v12)}];
        LOBYTE(v8) = [v8 containsObject:v9];

        if (v8)
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __60__CESRSpeechProfileSettings__shouldUpdateOnM11WatchForSets___block_invoke()
{
  _shouldUpdateOnM11WatchForSets__watchUpdatableItemTypes = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2839523A8, &unk_2839523C0, &unk_2839523D8, 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)defaultSettings
{
  v3 = [self alloc];
  _requiredAssistantLocale = [self _requiredAssistantLocale];
  _requiredDictationLocales = [self _requiredDictationLocales];
  v6 = [v3 _initWithAssistantLocale:_requiredAssistantLocale dictationLocales:_requiredDictationLocales];

  return v6;
}

@end