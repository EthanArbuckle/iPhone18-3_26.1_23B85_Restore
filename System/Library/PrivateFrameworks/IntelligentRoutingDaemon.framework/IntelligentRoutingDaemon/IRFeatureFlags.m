@interface IRFeatureFlags
+ (id)sharedFeatureFlags;
- (BOOL)isAggressiveFilteringEnabled;
- (BOOL)isAutomaticControlFeatureEnabled;
- (BOOL)isAutomaticRoutingFeatureEnabled;
- (BOOL)isPickerPrioritizationFeatureEnabled;
- (BOOL)isServiceFeatureEnabled;
- (BOOL)isSuggestedControlFeatureEnabled;
- (BOOL)isSuggestedRoutingFeatureEnabled;
- (BOOL)isTVRemoteControlFeatureEnabled;
@end

@implementation IRFeatureFlags

+ (id)sharedFeatureFlags
{
  if (sharedFeatureFlags_onceToken != -1)
  {
    +[IRFeatureFlags sharedFeatureFlags];
  }

  v3 = sharedFeatureFlags_featureFlags;

  return v3;
}

- (BOOL)isAggressiveFilteringEnabled
{
  [(IRFeatureFlags *)self _checkForUnitTestingWithFeatureName:@"cilantro_show_less"];
  if (isAggressiveFilteringEnabled_onceToken != -1)
  {
    [IRFeatureFlags isAggressiveFilteringEnabled];
  }

  return isAggressiveFilteringEnabled_enabled;
}

uint64_t __36__IRFeatureFlags_sharedFeatureFlags__block_invoke()
{
  sharedFeatureFlags_featureFlags = objc_alloc_init(IRFeatureFlags);

  return MEMORY[0x2821F96F8]();
}

void __46__IRFeatureFlags_isAggressiveFilteringEnabled__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  isAggressiveFilteringEnabled_enabled = _os_feature_enabled_impl();
  v0 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    if (isAggressiveFilteringEnabled_enabled)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEFAULT, "[IRFeatureFlags] cilantro_show_less: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isServiceFeatureEnabled
{
  [(IRFeatureFlags *)self _checkForUnitTestingWithFeatureName:@"service"];
  if (isServiceFeatureEnabled_onceToken != -1)
  {
    [IRFeatureFlags isServiceFeatureEnabled];
  }

  return isServiceFeatureEnabled_enabled;
}

void __41__IRFeatureFlags_isServiceFeatureEnabled__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  isServiceFeatureEnabled_enabled = _os_feature_enabled_impl();
  v0 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    if (isServiceFeatureEnabled_enabled)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEFAULT, "[IRFeatureFlags] service: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPickerPrioritizationFeatureEnabled
{
  [(IRFeatureFlags *)self _checkForUnitTestingWithFeatureName:@"pickerPrioritization"];
  if (isPickerPrioritizationFeatureEnabled_onceToken != -1)
  {
    [IRFeatureFlags isPickerPrioritizationFeatureEnabled];
  }

  return isPickerPrioritizationFeatureEnabled_enabled;
}

void __54__IRFeatureFlags_isPickerPrioritizationFeatureEnabled__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  isPickerPrioritizationFeatureEnabled_enabled = _os_feature_enabled_impl();
  v0 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    if (isPickerPrioritizationFeatureEnabled_enabled)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEFAULT, "[IRFeatureFlags] pickerPrioritization: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSuggestedRoutingFeatureEnabled
{
  [(IRFeatureFlags *)self _checkForUnitTestingWithFeatureName:@"suggestedRouting"];
  if (isSuggestedRoutingFeatureEnabled_onceToken != -1)
  {
    [IRFeatureFlags isSuggestedRoutingFeatureEnabled];
  }

  return isSuggestedRoutingFeatureEnabled_enabled;
}

void __50__IRFeatureFlags_isSuggestedRoutingFeatureEnabled__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  isSuggestedRoutingFeatureEnabled_enabled = _os_feature_enabled_impl();
  v0 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    if (isSuggestedRoutingFeatureEnabled_enabled)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEFAULT, "[IRFeatureFlags] suggestedRouting: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAutomaticRoutingFeatureEnabled
{
  [(IRFeatureFlags *)self _checkForUnitTestingWithFeatureName:@"automaticRouting"];
  if (isAutomaticRoutingFeatureEnabled_onceToken != -1)
  {
    [IRFeatureFlags isAutomaticRoutingFeatureEnabled];
  }

  return isAutomaticRoutingFeatureEnabled_enabled;
}

void __50__IRFeatureFlags_isAutomaticRoutingFeatureEnabled__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  isAutomaticRoutingFeatureEnabled_enabled = _os_feature_enabled_impl();
  v0 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    if (isAutomaticRoutingFeatureEnabled_enabled)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEFAULT, "[IRFeatureFlags] automaticRouting: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSuggestedControlFeatureEnabled
{
  [(IRFeatureFlags *)self _checkForUnitTestingWithFeatureName:@"suggestedControl"];
  if (isSuggestedControlFeatureEnabled_onceToken != -1)
  {
    [IRFeatureFlags isSuggestedControlFeatureEnabled];
  }

  return isSuggestedControlFeatureEnabled_enabled;
}

void __50__IRFeatureFlags_isSuggestedControlFeatureEnabled__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  isSuggestedControlFeatureEnabled_enabled = _os_feature_enabled_impl();
  v0 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    if (isSuggestedControlFeatureEnabled_enabled)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEFAULT, "[IRFeatureFlags] suggestedControl: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAutomaticControlFeatureEnabled
{
  [(IRFeatureFlags *)self _checkForUnitTestingWithFeatureName:@"automaticControl"];
  if (isAutomaticControlFeatureEnabled_onceToken != -1)
  {
    [IRFeatureFlags isAutomaticControlFeatureEnabled];
  }

  return isAutomaticControlFeatureEnabled_enabled;
}

void __50__IRFeatureFlags_isAutomaticControlFeatureEnabled__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  isAutomaticControlFeatureEnabled_enabled = _os_feature_enabled_impl();
  v0 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    if (isAutomaticControlFeatureEnabled_enabled)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEFAULT, "[IRFeatureFlags] automaticControl: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTVRemoteControlFeatureEnabled
{
  [(IRFeatureFlags *)self _checkForUnitTestingWithFeatureName:@"tvRemoteControl"];
  if (isTVRemoteControlFeatureEnabled_onceToken != -1)
  {
    [IRFeatureFlags isTVRemoteControlFeatureEnabled];
  }

  return isTVRemoteControlFeatureEnabled_enabled;
}

void __49__IRFeatureFlags_isTVRemoteControlFeatureEnabled__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  isTVRemoteControlFeatureEnabled_enabled = _os_feature_enabled_impl();
  v0 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    if (isTVRemoteControlFeatureEnabled_enabled)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25543D000, v0, OS_LOG_TYPE_DEFAULT, "[IRFeatureFlags] tvRemoteControl: %@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end