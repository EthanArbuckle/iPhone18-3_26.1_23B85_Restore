@interface EMInternalPreferences
+ (BOOL)_hasUserDefaultValueForKey:(id)key expectedValue:(id)value;
+ (BOOL)_preferenceEnabled:(unint64_t)enabled;
+ (BOOL)_userDefaultEnabledForKey:(id)key defaultValue:(BOOL)value;
+ (BOOL)preferenceEnabled:(unint64_t)enabled;
+ (OS_os_log)log;
+ (id)_testOverrideForPreference:(uint64_t)preference;
+ (id)_testingOverrideDictionary;
+ (id)defaultForPreference:(unint64_t)preference;
+ (id)observeChangesForPreference:(unint64_t)preference usingBlock:(id)block;
+ (void)_registerForDefaultChanges;
+ (void)clearPreferenceForTesting:(unint64_t)testing;
+ (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
+ (void)registerForDefaultChanges;
@end

@implementation EMInternalPreferences

+ (void)_registerForDefaultChanges
{
  v15 = *MEMORY[0x1E69E9840];
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v4 = 1;
  *&v5 = 134218242;
  v10 = v5;
  do
  {
    v6 = [EMInternalPreferences defaultForPreference:v4, v10];
    if (v6)
    {
      [em_userDefaults addObserver:self forKeyPath:v6 options:0 context:&kvoContext];
      v7 = +[EMInternalPreferences log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v10;
        selfCopy = self;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "EMInternalPreferences (%p) adding observer for key path %@ on defaults", buf, 0x16u);
      }
    }

    ++v4;
  }

  while (v4 != 63);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _userDefaultsDidChange, @"com.apple.mail.EMUserDefaultsDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v9 = *MEMORY[0x1E69E9840];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EMInternalPreferences_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_19 != -1)
  {
    dispatch_once(&log_onceToken_19, block);
  }

  v2 = log_log_19;

  return v2;
}

void __28__EMInternalPreferences_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_19;
  log_log_19 = v1;
}

+ (BOOL)preferenceEnabled:(unint64_t)enabled
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  areInternalSecurityPoliciesAllowed = [currentDevice areInternalSecurityPoliciesAllowed];

  if (areInternalSecurityPoliciesAllowed)
  {
    v7 = [(EMInternalPreferences *)self _testOverrideForPreference:enabled];
    v8 = v7;
    if (v7)
    {
      LOBYTE(v9) = [v7 BOOLValue];
    }

    else
    {
      v10 = atomic_load(&cachedFlags);
      if (!v10)
      {
        v11 = 1;
        v10 = 1;
        do
        {
          v12 = [EMInternalPreferences _preferenceEnabled:v11];
          v13 = 1 << v11;
          if (!v12)
          {
            v13 = 0;
          }

          v10 |= v13;
          ++v11;
        }

        while (v11 != 63);
        atomic_store(v10, &cachedFlags);
      }

      v9 = (v10 >> enabled) & 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (id)_testOverrideForPreference:(uint64_t)preference
{
  objc_opt_self();
  if (EFIsRunningUnitTests())
  {
    v5 = +[EMInternalPreferences _testingOverrideDictionary];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v3 = [v5 objectForKeyedSubscript:v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)registerForDefaultChanges
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EMInternalPreferences_registerForDefaultChanges__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (registerForDefaultChanges_onceToken != -1)
  {
    dispatch_once(&registerForDefaultChanges_onceToken, block);
  }
}

+ (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &kvoContext)
  {
    atomic_store(0, &cachedFlags);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___EMInternalPreferences;
    objc_msgSendSuper2(&v13, sel_observeValueForKeyPath_ofObject_change_context_, pathCopy, objectCopy, changeCopy, context);
  }
}

+ (id)observeChangesForPreference:(unint64_t)preference usingBlock:(id)block
{
  v4 = [EMInternalPreferences observeChangesForPreference:preference autoCancelToken:0 usingBlock:block];

  return v4;
}

void __80__EMInternalPreferences_observeChangesForPreference_autoCancelToken_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 BOOLValue];
  }

  else
  {
    [*(a1 + 40) preferenceEnabled:*(a1 + 48)];
  }

  v3 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
}

+ (BOOL)_preferenceEnabled:(unint64_t)enabled
{
  v5 = [self defaultForPreference:?];
  v6 = 0;
  if (enabled <= 0x3F)
  {
    if (((1 << enabled) & 0x7FFFFFFFFF7FFFFCLL) != 0)
    {
LABEL_3:
      LOBYTE(v6) = [self _userDefaultEnabledForKey:v5 defaultValue:v6];
      goto LABEL_4;
    }

    if (((1 << enabled) & 0x8000000000000001) == 0)
    {
      if (enabled != 23)
      {
        goto LABEL_4;
      }

      v6 = _os_feature_enabled_impl();
      goto LABEL_3;
    }

    v6 = +[EMInternalPreferences log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(EMInternalPreferences *)enabled _preferenceEnabled:v6];
    }

    LOBYTE(v6) = 0;
  }

LABEL_4:

  return v6;
}

+ (id)defaultForPreference:(unint64_t)preference
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  areInternalSecurityPoliciesAllowed = [currentDevice areInternalSecurityPoliciesAllowed];

  if (areInternalSecurityPoliciesAllowed)
  {
    v6 = 0;
    switch(preference)
    {
      case 0uLL:
      case 0x3FuLL:
        v7 = +[EMInternalPreferences log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [EMInternalPreferences defaultForPreference:v7];
        }

        goto LABEL_6;
      case 2uLL:
        v8 = EMUserDefaultForceInMemoryThreading;
        goto LABEL_68;
      case 3uLL:
        v8 = EMUserDefaultForceAccountIsManaged;
        goto LABEL_68;
      case 4uLL:
        v8 = EMUserDefaultShowDebugInfo;
        goto LABEL_68;
      case 5uLL:
        v8 = EMUserDefaultShowSearchRelevanceInfo;
        goto LABEL_68;
      case 6uLL:
        v8 = EMUserDefaultFavoriteFlagColorMailbox;
        goto LABEL_68;
      case 7uLL:
        v8 = EMUserDefaultAdditionalPointerInteractions;
        goto LABEL_68;
      case 8uLL:
        v8 = EMUserDefaultRemoteContentRequestShortInterval;
        goto LABEL_68;
      case 9uLL:
        v8 = EMUserDefaultAlwaysVerifyServerProvidedRemoteContentLinks;
        goto LABEL_68;
      case 0xAuLL:
        v8 = EMUserDefaultLogRemoteContentLinksUnredacted;
        goto LABEL_68;
      case 0xBuLL:
        v8 = EMUserDefaultDisableSnapshotInvalidation;
        goto LABEL_68;
      case 0xCuLL:
        v8 = EMUserDefaultDisableInitialMessageSelection;
        goto LABEL_68;
      case 0xDuLL:
        v8 = EMUserDefaultDisableStateRestoration;
        goto LABEL_68;
      case 0xEuLL:
        v8 = EMUserDefaultDisableServerSideSearch;
        goto LABEL_68;
      case 0xFuLL:
        v8 = EMUserDefaultRemindMeDebugDate;
        goto LABEL_68;
      case 0x10uLL:
        v8 = EMUserDefaultSuggestionsFollowUpDebugStartDate;
        goto LABEL_68;
      case 0x11uLL:
        v8 = EMUserDefaultSuggestionsFollowUpDebugEndDate;
        goto LABEL_68;
      case 0x12uLL:
        v8 = EMUserDefaultIgnoreBIMIAllowlist;
        goto LABEL_68;
      case 0x13uLL:
        v8 = EMUserDefaultAlertOnBlankCell;
        goto LABEL_68;
      case 0x14uLL:
        v8 = EMUserDefaultShouldBlockXPCQueue;
        goto LABEL_68;
      case 0x15uLL:
        v8 = EMUserDefaultShouldBlockSQLQueries;
        goto LABEL_68;
      case 0x16uLL:
        v8 = EMUserDefaultIndexingTurboMode;
        goto LABEL_68;
      case 0x17uLL:
        v8 = EMUserDefaultAdoptMessageSecurity;
        goto LABEL_68;
      case 0x18uLL:
        v8 = EMUserDefaultEncryptedMailMostSecure;
        goto LABEL_68;
      case 0x19uLL:
        v8 = EMUserDefaultSignUsingPKCS7MIME;
        goto LABEL_68;
      case 0x1AuLL:
        v8 = EMUserDefaultSkipEncryptedMailDeviceCheck;
        goto LABEL_68;
      case 0x1BuLL:
        v8 = EMUserDefaultForceAdvertiseGCMCapability;
        goto LABEL_68;
      case 0x1CuLL:
        v8 = EMUserDefaultForceAdvertiseSubjectEncryptionCapability;
        goto LABEL_68;
      case 0x1DuLL:
        v8 = EMUserDefaultForceEncryptWithGCM;
        goto LABEL_68;
      case 0x1EuLL:
        v8 = EMUserDefaultForceEncryptSubject;
        goto LABEL_68;
      case 0x1FuLL:
        v8 = EMUserDefaultSendSignEncryptSigned;
        goto LABEL_68;
      case 0x20uLL:
        v8 = EMUserDefaultForceMiniTip;
        goto LABEL_68;
      case 0x21uLL:
        v8 = EMUserDefaultDisableIndexing;
        goto LABEL_68;
      case 0x22uLL:
        v8 = EMUserDefaultDisableQueryLogSubmission;
        goto LABEL_68;
      case 0x23uLL:
        v8 = EMUserDefaultVerifyMessageBodyWithDKIM;
        goto LABEL_68;
      case 0x24uLL:
        v8 = EMUserDefaultShouldIgnoreLocaleRestrictions;
        goto LABEL_68;
      case 0x25uLL:
        v8 = EMUserDefaultShowCategorizationState;
        goto LABEL_68;
      case 0x26uLL:
        v8 = EMUserDefaultDisableGroupingInCommerceMailbox;
        goto LABEL_68;
      case 0x27uLL:
        v8 = EMUserDefaultShouldIgnoreBlackPearlRestrictions;
        goto LABEL_68;
      case 0x28uLL:
        v8 = EMUserDefaultForceCollapsedSenderHeader;
        goto LABEL_68;
      case 0x29uLL:
        v8 = EMUserDefaultDigestScrollsToNewest;
        goto LABEL_68;
      case 0x2AuLL:
        v8 = EMUserDefaultDropToChangeCategories;
        goto LABEL_68;
      case 0x2BuLL:
        v8 = EMUserDefaultShowCategoryAsTimeSensitiveImage;
        goto LABEL_68;
      case 0x2CuLL:
        v8 = EMUserDefaultSimulateDelayedFreeSpaceStatus;
        goto LABEL_68;
      case 0x2DuLL:
        v8 = EMUserDefaultUseFlaggedForCYUInsteadOfUrgent;
        goto LABEL_68;
      case 0x2EuLL:
        v8 = EMUserDefaultRemoveTimeLimitForHighlights;
        goto LABEL_68;
      case 0x2FuLL:
        v8 = EMUserDefaultDynamicallyUpdateGeneratedSummaries;
        goto LABEL_68;
      case 0x30uLL:
        v8 = EMUserDefaultHideMaildIndexedResults;
        goto LABEL_68;
      case 0x31uLL:
        v8 = EMUserDefaultHideSearchIndexerResults;
        goto LABEL_68;
      case 0x32uLL:
        v8 = EMUserDefaultGenerateFakeSummaries;
        goto LABEL_68;
      case 0x33uLL:
        v8 = EMUserDefaultGenerateFakeManualSummaries;
        goto LABEL_68;
      case 0x34uLL:
        v8 = EMUserDefaultOverrideAsGreymatterSupportedDevice;
        goto LABEL_68;
      case 0x35uLL:
        v8 = EMUserDefaultOverrideGreymatterAvailability;
        goto LABEL_68;
      case 0x36uLL:
        v8 = EMUserDefaultAllowFilterBySender;
        goto LABEL_68;
      case 0x37uLL:
        v8 = EMUserDefaultShowFCSFeedbackOptions;
        goto LABEL_68;
      case 0x38uLL:
        v8 = EMUserDefaultShimmerHighlightsWhenAppearing;
        goto LABEL_68;
      case 0x39uLL:
        v8 = EMUserDefaultSimulateSensitiveContentSummarizationError;
        goto LABEL_68;
      case 0x3AuLL:
        v8 = EMUserDefaultAddLogoOriginBadges;
        goto LABEL_68;
      case 0x3BuLL:
        v8 = EMUserDefaultAllowBIMILogosInGroupedSenders;
        goto LABEL_68;
      case 0x3CuLL:
        v8 = EMUserDefaultPreferBIMIOverBrandedMail;
        goto LABEL_68;
      case 0x3DuLL:
        v8 = EMUserDefaultForceDisplayOfAllModernBanners;
        goto LABEL_68;
      case 0x3EuLL:
        v8 = EMUserDefaultIncludeFakeInstantAnswer;
LABEL_68:
        v6 = *v8;
        break;
      default:
        break;
    }
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_userDefaultEnabledForKey:(id)key defaultValue:(BOOL)value
{
  keyCopy = key;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v7 = [em_userDefaults valueForKey:keyCopy];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    value = [v7 BOOLValue];
  }

  return value;
}

+ (BOOL)_hasUserDefaultValueForKey:(id)key expectedValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v8 = [em_userDefaults stringForKey:keyCopy];

  if (valueCopy | v8)
  {
    v9 = [valueCopy isEqual:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)_testingOverrideDictionary
{
  v0 = objc_opt_self();
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__testingOverrideDictionary object:v0 file:@"EMInternalPreferences.m" lineNumber:347 description:{@"%s can only be called from unit tests", "+[EMInternalPreferences _testingOverrideDictionary]"}];
  }

  if (_testingOverrideDictionary_onceToken != -1)
  {
    +[EMInternalPreferences _testingOverrideDictionary];
  }

  v1 = _testingOverrideDictionary_testingOverrideDictionary;

  return v1;
}

void __51__EMInternalPreferences__testingOverrideDictionary__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _testingOverrideDictionary_testingOverrideDictionary;
  _testingOverrideDictionary_testingOverrideDictionary = v0;
}

+ (void)clearPreferenceForTesting:(unint64_t)testing
{
  v5 = +[EMInternalPreferences _testingOverrideDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:testing];
  [v5 setObject:0 forKeyedSubscript:v4];
}

+ (void)_preferenceEnabled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Reading invalid preference: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end