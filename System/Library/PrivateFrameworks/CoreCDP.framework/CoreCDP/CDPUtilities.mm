@interface CDPUtilities
+ (BOOL)BOOLFromAKConfigurations:(id)configurations;
+ (BOOL)canEnableMultiUserManatee;
+ (BOOL)deferSOSFromSignIn;
+ (BOOL)isADPInBuddyEnabled;
+ (BOOL)isBuddyFinished;
+ (BOOL)isICSCHarmonizationEnabled;
+ (BOOL)isInternalBuild;
+ (BOOL)isNaturalUIEnabled;
+ (BOOL)isSEPBasedICSCHealingEnabled;
+ (BOOL)isSolariumEnabled;
+ (BOOL)isVirtualMachine;
+ (BOOL)readPreferencesFor:(id)for;
+ (BOOL)shouldCentralizeRPDFlow;
+ (BOOL)shouldClearRKCacheAfterGeneration;
+ (BOOL)shouldUseNewMacOSRPDFlow;
+ (void)deferSOSFromSignIn;
+ (void)fetchRPDProbationDurationConfigsWithCompletion:(id)completion;
+ (void)isICSCHarmonizationEnabled;
+ (void)isManateeNotificationOnFirstUnlockEnabledUsingURLBag:(id)bag completion:(id)completion;
+ (void)isWalrusStatusMismatchDetectionEnabledWithCompletion:(id)completion;
+ (void)shouldCentralizeRPDFlow;
+ (void)shouldUseNewMacOSRPDFlow;
+ (void)sosCompatibilityEnabled;
@end

@implementation CDPUtilities

+ (BOOL)canEnableMultiUserManatee
{
  v2 = +[CDPUtilities isMultiUserManateeFeatureEnabled];
  if (v2)
  {
    LOBYTE(v2) = !+[CDPUtilities isAudioAccessory];
  }

  return v2;
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[CDPUtilities isInternalBuild];
  }

  return _isInternalBuild;
}

+ (BOOL)isVirtualMachine
{
  if (isVirtualMachine_onceToken != -1)
  {
    +[CDPUtilities isVirtualMachine];
  }

  return isVirtualMachine_result;
}

uint64_t __31__CDPUtilities_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_ui();
  _isInternalBuild = result;
  return result;
}

+ (BOOL)deferSOSFromSignIn
{
  v2 = _os_feature_enabled_impl();
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[CDPUtilities deferSOSFromSignIn];
  }

  return v2;
}

+ (BOOL)shouldCentralizeRPDFlow
{
  if ([self readPreferencesFor:@"CentralizedRPDFlow"])
  {
    return 1;
  }

  if ([self BOOLFromAKConfigurations:@"disableRPDCentralization"])
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[CDPUtilities shouldCentralizeRPDFlow];
    }

    v3 = 0;
  }

  else
  {
    v3 = _os_feature_enabled_impl();
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[CDPUtilities shouldCentralizeRPDFlow];
    }
  }

  return v3;
}

+ (BOOL)shouldUseNewMacOSRPDFlow
{
  v2 = _os_feature_enabled_impl();
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[CDPUtilities shouldUseNewMacOSRPDFlow];
  }

  return v2;
}

+ (BOOL)isICSCHarmonizationEnabled
{
  if ([self readPreferencesFor:@"SwiftUIRemoteSecretFlow"])
  {
    return 1;
  }

  if ([self BOOLFromAKConfigurations:@"disableiCSCHarmonizationFlow"])
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[CDPUtilities isICSCHarmonizationEnabled];
    }

    v3 = 0;
  }

  else
  {
    v3 = _os_feature_enabled_impl();
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[CDPUtilities isICSCHarmonizationEnabled];
    }
  }

  return v3;
}

+ (BOOL)BOOLFromAKConfigurations:(id)configurations
{
  v3 = MEMORY[0x1E698DDF8];
  configurationsCopy = configurations;
  sharedBag = [v3 sharedBag];
  v6 = [sharedBag configurationAtKey:configurationsCopy];

  if (v6)
  {
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 intValue] == 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __32__CDPUtilities_isVirtualMachine__block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    isVirtualMachine_result = v2 != 0;
  }

  return result;
}

+ (BOOL)readPreferencesFor:(id)for
{
  forCopy = for;
  if ([self isInternalBuild])
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(forCopy, @"com.apple.corecdp", &keyExistsAndHasValidFormat);
    v6 = AppBooleanValue != 0;
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CDPUtilities *)forCopy readPreferencesFor:v7];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldClearRKCacheAfterGeneration
{
  if (shouldClearRKCacheAfterGeneration_once != -1)
  {
    +[CDPUtilities shouldClearRKCacheAfterGeneration];
  }

  return shouldClearRKCacheAfterGeneration_shouldClear;
}

void __49__CDPUtilities_shouldClearRKCacheAfterGeneration__block_invoke()
{
  v0 = +[CDPUtilities isInternalBuild];
  if (v0)
  {
    LOBYTE(v0) = _os_feature_enabled_impl();
  }

  shouldClearRKCacheAfterGeneration_shouldClear = v0;
  v1 = _CDPLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __49__CDPUtilities_shouldClearRKCacheAfterGeneration__block_invoke_cold_1();
  }
}

+ (BOOL)isBuddyFinished
{
  result = isBuddyFinished__buddyFinished;
  if ((isBuddyFinished__buddyFinished & 1) == 0)
  {
    result = _BYSetupAssistantNeedsToRun() ^ 1;
    isBuddyFinished__buddyFinished = result;
  }

  return result;
}

+ (void)isWalrusStatusMismatchDetectionEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  if (+[CDPUtilities isInternalBuild]&& CFPreferencesGetAppBooleanValue(@"disableWalrusStatusMismatchDetectionEnabled", @"com.apple.corecdp", 0))
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[CDPUtilities isWalrusStatusMismatchDetectionEnabledWithCompletion:];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__CDPUtilities_isWalrusStatusMismatchDetectionEnabledWithCompletion___block_invoke;
    v6[3] = &unk_1E869D6C8;
    v7 = completionCopy;
    [mEMORY[0x1E698DDF8] requestNewURLBagIfNecessaryWithCompletion:v6];
  }
}

void __69__CDPUtilities_isWalrusStatusMismatchDetectionEnabledWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __69__CDPUtilities_isWalrusStatusMismatchDetectionEnabledWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E698DDF8] sharedBag];
    v7 = [v6 configurationAtKey:@"isWalrusStatusMismatchDetectionEnabled"];

    if (v7)
    {
      objc_opt_class();
      v8 = v7;
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      [v9 intValue];
    }

    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __69__CDPUtilities_isWalrusStatusMismatchDetectionEnabledWithCompletion___block_invoke_cold_2();
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (void)fetchRPDProbationDurationConfigsWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__CDPUtilities_fetchRPDProbationDurationConfigsWithCompletion___block_invoke;
  v6[3] = &unk_1E869D628;
  v7 = completionCopy;
  v5 = completionCopy;
  [mEMORY[0x1E698DDF8] configurationValueForKey:@"rpd-probation-cfgs" completion:v6];
}

void __63__CDPUtilities_fetchRPDProbationDurationConfigsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Received rpdProbationDurationConfigs = %{public}@, error: %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isSEPBasedICSCHealingEnabled
{
  if (isSEPBasedICSCHealingEnabled_once != -1)
  {
    +[CDPUtilities isSEPBasedICSCHealingEnabled];
  }

  return isSEPBasedICSCHealingEnabled_enabled;
}

void __44__CDPUtilities_isSEPBasedICSCHealingEnabled__block_invoke()
{
  isSEPBasedICSCHealingEnabled_enabled = _os_feature_enabled_impl();
  v0 = _CDPLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __44__CDPUtilities_isSEPBasedICSCHealingEnabled__block_invoke_cold_1();
  }
}

+ (BOOL)isNaturalUIEnabled
{
  if (isNaturalUIEnabled_predicate != -1)
  {
    +[CDPUtilities isNaturalUIEnabled];
  }

  if (isNaturalUIEnabled_allowFeature != 1)
  {
    return 0;
  }

  return [self isSolariumEnabled];
}

uint64_t __34__CDPUtilities_isNaturalUIEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  isNaturalUIEnabled_allowFeature = result;
  return result;
}

+ (BOOL)isSolariumEnabled
{
  if (isSolariumEnabled_predicate != -1)
  {
    +[CDPUtilities isSolariumEnabled];
  }

  return isSolariumEnabled_allowFeature;
}

uint64_t __33__CDPUtilities_isSolariumEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  isSolariumEnabled_allowFeature = result;
  return result;
}

+ (BOOL)isADPInBuddyEnabled
{
  if (isADPInBuddyEnabled_once != -1)
  {
    +[CDPUtilities isADPInBuddyEnabled];
  }

  return isADPInBuddyEnabled_enabled;
}

void __35__CDPUtilities_isADPInBuddyEnabled__block_invoke()
{
  isADPInBuddyEnabled_enabled = _os_feature_enabled_impl();
  v0 = _CDPLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __35__CDPUtilities_isADPInBuddyEnabled__block_invoke_cold_1();
  }
}

+ (void)isManateeNotificationOnFirstUnlockEnabledUsingURLBag:(id)bag completion:(id)completion
{
  bagCopy = bag;
  completionCopy = completion;
  if ([self readPreferencesFor:@"ManateeNotificationFirstUnlockKillSwitch"])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__CDPUtilities_isManateeNotificationOnFirstUnlockEnabledUsingURLBag_completion___block_invoke;
    v8[3] = &unk_1E869DEC8;
    v9 = completionCopy;
    [bagCopy configurationValueForKey:@"disableManateeNotificationOnFirstUnlock" fromCache:1 completion:v8];
  }
}

void __80__CDPUtilities_isManateeNotificationOnFirstUnlockEnabledUsingURLBag_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__CDPUtilities_isManateeNotificationOnFirstUnlockEnabledUsingURLBag_completion___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 intValue];
      v10 = *(a1 + 32);
      if (!v10)
      {
        goto LABEL_7;
      }

      v9 = *(v10 + 16);
      goto LABEL_6;
    }

    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__CDPUtilities_isManateeNotificationOnFirstUnlockEnabledUsingURLBag_completion___block_invoke_cold_2();
    }
  }

  else
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__CDPUtilities_isManateeNotificationOnFirstUnlockEnabledUsingURLBag_completion___block_invoke_cold_3();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 16);
LABEL_6:
    v9();
  }

LABEL_7:
}

+ (void)deferSOSFromSignIn
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)sosCompatibilityEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "deferSOSFromSignInAndSOSCompatible: error=%@ when checking for SOS compatibility mode.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)shouldCentralizeRPDFlow
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)shouldUseNewMacOSRPDFlow
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)isICSCHarmonizationEnabled
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)readPreferencesFor:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_1DED99000, log, OS_LOG_TYPE_DEBUG, "Preferences value for key %@ is %{BOOL}d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __49__CDPUtilities_shouldClearRKCacheAfterGeneration__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)isWalrusStatusMismatchDetectionEnabledWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__CDPUtilities_isWalrusStatusMismatchDetectionEnabledWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __69__CDPUtilities_isWalrusStatusMismatchDetectionEnabledWithCompletion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __44__CDPUtilities_isSEPBasedICSCHealingEnabled__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __35__CDPUtilities_isADPInBuddyEnabled__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end