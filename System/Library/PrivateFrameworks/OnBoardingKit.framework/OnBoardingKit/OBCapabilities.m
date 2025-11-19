@interface OBCapabilities
+ (id)sharedCapabilities;
- (BOOL)_eligibilityContextHasCountryPolicyChina:(id)a3;
- (BOOL)_eligibilityCountryPolicyStringIsChina:(const char *)a3;
- (BOOL)deviceSupportsGenerativeModels;
- (BOOL)eligibilityForGreymatterHasCountryPolicyChina;
- (BOOL)eligibleForChlorine;
- (BOOL)isWAPI;
- (NSNumber)overrideDeviceSupportsGenerativeModels;
- (NSNumber)overrideEligibilityForGreymatterHasCountryPolicyChina;
- (NSNumber)overrideEligibleForChlorine;
- (NSString)overrideAdditionalDisplayLanguage;
- (id)_potentialAdditionalDisplayLanguage;
- (id)additionalDisplayLanguageForDisplayLanguage:(id)a3;
- (void)eligibilityForGreymatterHasCountryPolicyChina;
- (void)eligibleForChlorine;
- (void)setOverrideAdditionalDisplayLanguage:(id)a3;
- (void)setOverrideDeviceSupportsGenerativeModels:(id)a3;
- (void)setOverrideEligibilityForGreymatterHasCountryPolicyChina:(id)a3;
- (void)setOverrideEligibleForChlorine:(id)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  overrideEligibleForChlorine = v2->_overrideEligibleForChlorine;
  if (overrideEligibleForChlorine)
  {
    v4 = [(NSNumber *)overrideEligibleForChlorine BOOLValue];
    objc_sync_exit(v2);
  }

  else
  {
    objc_sync_exit(v2);

    domain_answer = os_eligibility_get_domain_answer();
    v6 = _OBLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(OBCapabilities *)domain_answer eligibleForChlorine];
    }

    return 0;
  }

  return v4;
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
  v2 = self;
  objc_sync_enter(v2);
  overrideDeviceSupportsGenerativeModels = v2->_overrideDeviceSupportsGenerativeModels;
  if (overrideDeviceSupportsGenerativeModels)
  {
    v4 = [(NSNumber *)overrideDeviceSupportsGenerativeModels BOOLValue];
    objc_sync_exit(v2);

    return v4;
  }

  else
  {
    objc_sync_exit(v2);

    return MGGetBoolAnswer();
  }
}

- (NSNumber)overrideDeviceSupportsGenerativeModels
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_overrideDeviceSupportsGenerativeModels;
  objc_sync_exit(v2);

  return v3;
}

- (void)setOverrideDeviceSupportsGenerativeModels:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  overrideDeviceSupportsGenerativeModels = obj->_overrideDeviceSupportsGenerativeModels;
  obj->_overrideDeviceSupportsGenerativeModels = v4;

  objc_sync_exit(obj);
}

- (NSNumber)overrideEligibleForChlorine
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_overrideEligibleForChlorine;
  objc_sync_exit(v2);

  return v3;
}

- (void)setOverrideEligibleForChlorine:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  overrideEligibleForChlorine = obj->_overrideEligibleForChlorine;
  obj->_overrideEligibleForChlorine = v4;

  objc_sync_exit(obj);
}

- (BOOL)eligibilityForGreymatterHasCountryPolicyChina
{
  v2 = self;
  objc_sync_enter(v2);
  overrideEligibilityForGreymatterHasCountryPolicyChina = v2->_overrideEligibilityForGreymatterHasCountryPolicyChina;
  if (overrideEligibilityForGreymatterHasCountryPolicyChina)
  {
    v4 = [(NSNumber *)overrideEligibilityForGreymatterHasCountryPolicyChina BOOLValue];
    objc_sync_exit(v2);
  }

  else
  {
    objc_sync_exit(v2);

    domain_answer = os_eligibility_get_domain_answer();
    v6 = _OBLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(OBCapabilities *)domain_answer eligibilityForGreymatterHasCountryPolicyChina];
    }

    v4 = [(OBCapabilities *)v2 _eligibilityContextHasCountryPolicyChina:0, 0];
  }

  return v4;
}

- (BOOL)_eligibilityContextHasCountryPolicyChina:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = xpc_dictionary_get_array(v4, "OS_ELIGIBILITY_CONTEXT_COUNTRY_POLICY");
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

- (BOOL)_eligibilityCountryPolicyStringIsChina:(const char *)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v4 = [v3 componentsSeparatedByString:@"_"];
  v5 = [v4 firstObject];

  if ([v5 isEqualToString:@"CN"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"CHN"];
  }

  return v6;
}

- (NSNumber)overrideEligibilityForGreymatterHasCountryPolicyChina
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_overrideEligibilityForGreymatterHasCountryPolicyChina;
  objc_sync_exit(v2);

  return v3;
}

- (void)setOverrideEligibilityForGreymatterHasCountryPolicyChina:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  overrideEligibilityForGreymatterHasCountryPolicyChina = obj->_overrideEligibilityForGreymatterHasCountryPolicyChina;
  obj->_overrideEligibilityForGreymatterHasCountryPolicyChina = v4;

  objc_sync_exit(obj);
}

- (id)additionalDisplayLanguageForDisplayLanguage:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _OBLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage displayLanguage %@", &v18, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  if (v6->_overrideAdditionalDisplayLanguage)
  {
    v7 = _OBLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      overrideAdditionalDisplayLanguage = v6->_overrideAdditionalDisplayLanguage;
      v18 = 138412290;
      v19 = overrideAdditionalDisplayLanguage;
      _os_log_impl(&dword_1B4FB6000, v7, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage returning _overrideAdditionalDisplayLanguage %@", &v18, 0xCu);
    }

    v9 = v6->_overrideAdditionalDisplayLanguage;
    objc_sync_exit(v6);
  }

  else
  {
    objc_sync_exit(v6);

    v9 = [(OBCapabilities *)v6 _potentialAdditionalDisplayLanguage];
    if (v9)
    {
      v10 = v4;
      if (!v10)
      {
        v11 = _OBLoggingFacility();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [MEMORY[0x1E695DF58] currentLocale];
          v13 = [v12 languageCode];
          v18 = 138412290;
          v19 = v13;
          _os_log_impl(&dword_1B4FB6000, v11, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage languageCode %@", &v18, 0xCu);
        }

        v14 = [MEMORY[0x1E695DF58] currentLocale];
        v10 = [v14 languageCode];
      }

      v15 = _OBLoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1B4FB6000, v15, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage additionalDisplayLanguage %@ resolvedDisplayLanguage %@", &v18, 0x16u);
      }

      if ([(NSString *)v9 isEqualToString:v10])
      {

        v9 = 0;
      }
    }

    v6 = _OBLoggingFacility();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1B4FB6000, &v6->super, OS_LOG_TYPE_DEFAULT, "additionalDisplayLanguageForDisplayLanguage returning %@", &v18, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_potentialAdditionalDisplayLanguage
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _OBLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    v4 = [v3 languageIdentifier];
    v8 = 138412290;
    v9 = v4;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_overrideAdditionalDisplayLanguage;
  objc_sync_exit(v2);

  return v3;
}

- (void)setOverrideAdditionalDisplayLanguage:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  overrideAdditionalDisplayLanguage = obj->_overrideAdditionalDisplayLanguage;
  obj->_overrideAdditionalDisplayLanguage = v4;

  objc_sync_exit(obj);
}

- (void)eligibleForChlorine
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B4FB6000, a2, OS_LOG_TYPE_ERROR, "Failed to get eligibility for chlorine with error %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)eligibilityForGreymatterHasCountryPolicyChina
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B4FB6000, a2, OS_LOG_TYPE_ERROR, "Failed to get eligibility for greymatter with error %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end