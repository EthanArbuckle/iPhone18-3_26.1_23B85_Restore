@interface OBCapabilities
+ (id)sharedCapabilities;
- (BOOL)_eligibilityContextHasCountryPolicyChina:(id)china;
- (BOOL)_eligibilityCountryPolicyStringIsChina:(const char *)china;
- (BOOL)deviceSupportsGenerativeModels;
- (BOOL)eligibilityForGreymatterHasCountryPolicyChina;
- (BOOL)eligibleForChlorine;
- (BOOL)isWAPI;
- (NSNumber)overrideDeviceSupportsGenerativeModels;
- (NSNumber)overrideEligibilityForGreymatterHasCountryPolicyChina;
- (NSNumber)overrideEligibleForChlorine;
- (NSString)overrideAdditionalDisplayLanguage;
- (id)_potentialAdditionalDisplayLanguage;
- (id)additionalDisplayLanguageForDisplayLanguage:(id)language;
- (void)eligibilityForGreymatterHasCountryPolicyChina;
- (void)eligibleForChlorine;
- (void)setOverrideAdditionalDisplayLanguage:(id)language;
- (void)setOverrideDeviceSupportsGenerativeModels:(id)models;
- (void)setOverrideEligibilityForGreymatterHasCountryPolicyChina:(id)china;
- (void)setOverrideEligibleForChlorine:(id)chlorine;
@end

@implementation OBCapabilities

+ (id)sharedCapabilities
{
  if (sharedCapabilities_onceToken != -1)
  {
    +[OBCapabilities sharedCapabilities];
  }

  v3 = sharedCapabilities_sharedInstance;

  return v3;
}

- (BOOL)eligibleForChlorine
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  overrideEligibleForChlorine = selfCopy->_overrideEligibleForChlorine;
  if (overrideEligibleForChlorine)
  {
    bOOLValue = [(NSNumber *)overrideEligibleForChlorine BOOLValue];
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    domain_answer = os_eligibility_get_domain_answer();
    v6 = _OBLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(OBCapabilities *)domain_answer eligibleForChlorine];
    }

    return 0;
  }

  return bOOLValue;
}

uint64_t __36__OBCapabilities_sharedCapabilities__block_invoke()
{
  sharedCapabilities_sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isWAPI
{
  if (isWAPI_onceToken != -1)
  {
    [OBCapabilities isWAPI];
  }

  return isWAPI_wapi;
}

uint64_t __24__OBCapabilities_isWAPI__block_invoke()
{
  result = MGGetBoolAnswer();
  isWAPI_wapi = result;
  return result;
}

- (BOOL)deviceSupportsGenerativeModels
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  overrideDeviceSupportsGenerativeModels = selfCopy->_overrideDeviceSupportsGenerativeModels;
  if (overrideDeviceSupportsGenerativeModels)
  {
    bOOLValue = [(NSNumber *)overrideDeviceSupportsGenerativeModels BOOLValue];
    objc_sync_exit(selfCopy);

    return bOOLValue;
  }

  else
  {
    objc_sync_exit(selfCopy);

    return MGGetBoolAnswer();
  }
}

- (NSNumber)overrideDeviceSupportsGenerativeModels
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_overrideDeviceSupportsGenerativeModels;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setOverrideDeviceSupportsGenerativeModels:(id)models
{
  modelsCopy = models;
  obj = self;
  objc_sync_enter(obj);
  overrideDeviceSupportsGenerativeModels = obj->_overrideDeviceSupportsGenerativeModels;
  obj->_overrideDeviceSupportsGenerativeModels = modelsCopy;

  objc_sync_exit(obj);
}

- (NSNumber)overrideEligibleForChlorine
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_overrideEligibleForChlorine;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setOverrideEligibleForChlorine:(id)chlorine
{
  chlorineCopy = chlorine;
  obj = self;
  objc_sync_enter(obj);
  overrideEligibleForChlorine = obj->_overrideEligibleForChlorine;
  obj->_overrideEligibleForChlorine = chlorineCopy;

  objc_sync_exit(obj);
}

- (BOOL)eligibilityForGreymatterHasCountryPolicyChina
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  overrideEligibilityForGreymatterHasCountryPolicyChina = selfCopy->_overrideEligibilityForGreymatterHasCountryPolicyChina;
  if (overrideEligibilityForGreymatterHasCountryPolicyChina)
  {
    bOOLValue = [(NSNumber *)overrideEligibilityForGreymatterHasCountryPolicyChina BOOLValue];
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    domain_answer = os_eligibility_get_domain_answer();
    v6 = _OBLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(OBCapabilities *)domain_answer eligibilityForGreymatterHasCountryPolicyChina];
    }

    bOOLValue = [(OBCapabilities *)selfCopy _eligibilityContextHasCountryPolicyChina:0, 0];
  }

  return bOOLValue;
}

- (BOOL)_eligibilityContextHasCountryPolicyChina:(id)china
{
  chinaCopy = china;
  v5 = chinaCopy;
  if (chinaCopy)
  {
    v6 = xpc_dictionary_get_array(chinaCopy, "OS_ELIGIBILITY_CONTEXT_COUNTRY_POLICY");
    v7 = v6;
    if (v6)
    {
      count = xpc_array_get_count(v6);
      if (count)
      {
        v9 = count;
        v10 = 0;
        v11 = 1;
        do
        {
          string = xpc_array_get_string(v7, v10);
          if (string && [(OBCapabilities *)self _eligibilityCountryPolicyStringIsChina:string])
          {
            break;
          }

          v11 = ++v10 < v9;
        }

        while (v9 != v10);
        goto LABEL_13;
      }
    }

    else
    {
      v13 = xpc_dictionary_get_string(v5, "OS_ELIGIBILITY_CONTEXT_COUNTRY_POLICY");
      if (v13)
      {
        v11 = [(OBCapabilities *)self _eligibilityCountryPolicyStringIsChina:v13];
LABEL_13:

        goto LABEL_14;
      }
    }

    v11 = 0;
    goto LABEL_13;
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (BOOL)_eligibilityCountryPolicyStringIsChina:(const char *)china
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:china];
  v4 = [v3 componentsSeparatedByString:@"_"];
  firstObject = [v4 firstObject];

  if ([firstObject isEqualToString:@"CN"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [firstObject isEqualToString:@"CHN"];
  }

  return v6;
}

- (NSNumber)overrideEligibilityForGreymatterHasCountryPolicyChina
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_overrideEligibilityForGreymatterHasCountryPolicyChina;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setOverrideEligibilityForGreymatterHasCountryPolicyChina:(id)china
{
  chinaCopy = china;
  obj = self;
  objc_sync_enter(obj);
  overrideEligibilityForGreymatterHasCountryPolicyChina = obj->_overrideEligibilityForGreymatterHasCountryPolicyChina;
  obj->_overrideEligibilityForGreymatterHasCountryPolicyChina = chinaCopy;

  objc_sync_exit(obj);
}

- (id)additionalDisplayLanguageForDisplayLanguage:(id)language
{
  v22 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v5 = _OBLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = languageCopy;
    _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage displayLanguage %@", &v18, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_overrideAdditionalDisplayLanguage)
  {
    v7 = _OBLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      overrideAdditionalDisplayLanguage = selfCopy->_overrideAdditionalDisplayLanguage;
      v18 = 138412290;
      v19 = overrideAdditionalDisplayLanguage;
      _os_log_impl(&dword_1B4FB6000, v7, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage returning _overrideAdditionalDisplayLanguage %@", &v18, 0xCu);
    }

    _potentialAdditionalDisplayLanguage = selfCopy->_overrideAdditionalDisplayLanguage;
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    _potentialAdditionalDisplayLanguage = [(OBCapabilities *)selfCopy _potentialAdditionalDisplayLanguage];
    if (_potentialAdditionalDisplayLanguage)
    {
      languageCode2 = languageCopy;
      if (!languageCode2)
      {
        v11 = _OBLoggingFacility();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          currentLocale = [MEMORY[0x1E695DF58] currentLocale];
          languageCode = [currentLocale languageCode];
          v18 = 138412290;
          v19 = languageCode;
          _os_log_impl(&dword_1B4FB6000, v11, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage languageCode %@", &v18, 0xCu);
        }

        currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
        languageCode2 = [currentLocale2 languageCode];
      }

      v15 = _OBLoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = _potentialAdditionalDisplayLanguage;
        v20 = 2112;
        v21 = languageCode2;
        _os_log_impl(&dword_1B4FB6000, v15, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage additionalDisplayLanguage %@ resolvedDisplayLanguage %@", &v18, 0x16u);
      }

      if ([(NSString *)_potentialAdditionalDisplayLanguage isEqualToString:languageCode2])
      {

        _potentialAdditionalDisplayLanguage = 0;
      }
    }

    selfCopy = _OBLoggingFacility();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = _potentialAdditionalDisplayLanguage;
      _os_log_impl(&dword_1B4FB6000, &selfCopy->super, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage returning %@", &v18, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return _potentialAdditionalDisplayLanguage;
}

- (id)_potentialAdditionalDisplayLanguage
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _OBLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    languageIdentifier = [currentLocale languageIdentifier];
    v8 = 138412290;
    v9 = languageIdentifier;
    _os_log_impl(&dword_1B4FB6000, v2, OS_LOG_TYPE_DEFAULT, "_potentialAdditionalDisplayLanguage languageIdentifier %@", &v8, 0xCu);
  }

  v5 = _OBLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = 0;
    _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "_potentialAdditionalDisplayLanguage returning %@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NSString)overrideAdditionalDisplayLanguage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_overrideAdditionalDisplayLanguage;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setOverrideAdditionalDisplayLanguage:(id)language
{
  languageCopy = language;
  obj = self;
  objc_sync_enter(obj);
  overrideAdditionalDisplayLanguage = obj->_overrideAdditionalDisplayLanguage;
  obj->_overrideAdditionalDisplayLanguage = languageCopy;

  objc_sync_exit(obj);
}

- (void)eligibleForChlorine
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_1B4FB6000, a2, OS_LOG_TYPE_ERROR, "Failed to get eligibility for chlorine with error %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)eligibilityForGreymatterHasCountryPolicyChina
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_1B4FB6000, a2, OS_LOG_TYPE_ERROR, "Failed to get eligibility for greymatter with error %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end