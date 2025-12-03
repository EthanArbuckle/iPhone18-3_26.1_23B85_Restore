@interface CNEnvironment
+ (CNEnvironmentBase)defaultEnvironment;
+ (id)os_log;
- (BOOL)isCommLimitsEnabled;
- (BOOL)isExtendedGreenTeaDevice;
- (BOOL)isGreenTeaDevice;
- (BOOL)isInternalBuild;
- (BOOL)isKeychainEnabled;
- (CNEnvironment)init;
- (NSLocale)currentLocale;
- (NSString)currentCountryCode;
- (NSString)defaultCountryCode;
- (NSString)getCurrentRegionCode;
- (NSString)homeCountryCode;
- (_TtP18ContactsFoundation24CNKeychainFacadeProtocol_)keychainFacade;
- (id)valueForKey:(id)key onCacheMiss:(id)miss;
- (void)isExtendedGreenTeaDevice;
- (void)isGreenTeaDevice;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CNEnvironment

uint64_t __35__CNEnvironment_defaultEnvironment__block_invoke(uint64_t a1)
{
  defaultEnvironment_cn_once_object_3 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CNEnvironment)init
{
  v35.receiver = self;
  v35.super_class = CNEnvironment;
  v2 = [(CNEnvironment *)&v35 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNFileManager);
    fileManager = v2->_fileManager;
    v2->_fileManager = v3;

    v5 = +[CNUserDefaults standardPreferences];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v5;

    v7 = +[CNFeatureFlags currentFlags];
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v7;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v11 = bundleIdentifier;
    if (bundleIdentifier)
    {
      v12 = bundleIdentifier;
    }

    else
    {
      v12 = &stru_1EF441028;
    }

    objc_storeStrong(&v2->_mainBundleIdentifier, v12);

    v13 = +[CNSchedulerProvider defaultProvider];
    schedulerProvider = v2->_schedulerProvider;
    v2->_schedulerProvider = v13;

    v15 = +[CNTimeProvider defaultProvider];
    timeProvider = v2->_timeProvider;
    v2->_timeProvider = v15;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = defaultCenter;

    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    distributedNotificationCenter = v2->_distributedNotificationCenter;
    v2->_distributedNotificationCenter = defaultCenter2;

    v21 = objc_alloc_init(CNEntitlementVerifier);
    entitlementVerifier = v2->_entitlementVerifier;
    v2->_entitlementVerifier = v21;

    v23 = +[CNAuthorizationContext sharedInstance];
    authorizationContext = v2->_authorizationContext;
    v2->_authorizationContext = v23;

    v25 = +[CNLocalizationServices defaultServices];
    localizationServices = v2->_localizationServices;
    v2->_localizationServices = v25;

    v27 = objc_alloc_init(CNProbabilityUtility);
    probabilityUtility = v2->_probabilityUtility;
    v2->_probabilityUtility = v27;

    v29 = +[CNWatchdog defaultWatchdog];
    watchdog = v2->_watchdog;
    v2->_watchdog = v29;

    v31 = objc_opt_new();
    storage = v2->super._storage;
    v2->super._storage = v31;

    v33 = v2;
  }

  return v2;
}

+ (CNEnvironmentBase)defaultEnvironment
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CNEnvironment_defaultEnvironment__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultEnvironment_cn_once_token_3 != -1)
  {
    dispatch_once(&defaultEnvironment_cn_once_token_3, block);
  }

  v2 = defaultEnvironment_cn_once_object_3;

  return v2;
}

- (BOOL)isGreenTeaDevice
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__CNEnvironment_isGreenTeaDevice__block_invoke;
  v9[3] = &unk_1E6ED51B8;
  v9[4] = self;
  v3 = cn_objectResultWithObjectLock(self, v9);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__CNEnvironment_isGreenTeaDevice__block_invoke_2;
  v8[3] = &unk_1E6ED51B8;
  v8[4] = self;
  v4 = cn_objectResultWithObjectLock(self, v8);
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [(CNEnvironment *)v4 isGreenTeaDevice];
  }

  bOOLValue = [v3 BOOLValue];
  return bOOLValue;
}

id __33__CNEnvironment_isGreenTeaDevice__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    v4 = *(a1 + 32);
    v5 = *(v4 + 176);
    *(v4 + 176) = v3;

    v2 = *(*(a1 + 32) + 176);
  }

  return v2;
}

id __33__CNEnvironment_isGreenTeaDevice__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  if (!v2)
  {
    v3 = MGCopyAnswer();
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = v3;

    v2 = *(*(a1 + 32) + 152);
  }

  return v2;
}

uint64_t __23__CNEnvironment_os_log__block_invoke()
{
  os_log_cn_once_object_2 = os_log_create("com.apple.contacts.foundation", "CNEnvironment");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)os_log
{
  if (os_log_cn_once_token_2 != -1)
  {
    +[CNEnvironment os_log];
  }

  v3 = os_log_cn_once_object_2;

  return v3;
}

id __32__CNEnvironment_homeCountryCode__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[16];
  if (!v3)
  {
    v4 = [v2 getHomeCountryCode];
    v5 = *(a1 + 32);
    v6 = *(v5 + 128);
    *(v5 + 128) = v4;

    v3 = *(*(a1 + 32) + 128);
  }

  v7 = off_1EF4401C8;

  return v7(&__block_literal_global_4_3, v3);
}

- (NSString)homeCountryCode
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__CNEnvironment_homeCountryCode__block_invoke;
  v4[3] = &unk_1E6ED65D0;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

- (NSString)defaultCountryCode
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__CNEnvironment_defaultCountryCode__block_invoke;
  v4[3] = &unk_1E6ED51B8;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

id __35__CNEnvironment_defaultCountryCode__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[15];
  if (!v3)
  {
    v4 = [v2 getDefaultCountryCode];
    v5 = *(a1 + 32);
    v6 = *(v5 + 120);
    *(v5 + 120) = v4;

    v3 = *(*(a1 + 32) + 120);
  }

  return v3;
}

- (BOOL)isInternalBuild
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CNEnvironment_isInternalBuild__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __32__CNEnvironment_isInternalBuild__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:os_variant_has_internal_content()];
    v4 = *(a1 + 32);
    v5 = *(v4 + 160);
    *(v4 + 160) = v3;

    v2 = *(*(a1 + 32) + 160);
  }

  return v2;
}

- (NSString)currentCountryCode
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__CNEnvironment_currentCountryCode__block_invoke;
  v4[3] = &unk_1E6ED65D0;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

id __35__CNEnvironment_currentCountryCode__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[17];
  if (!v3)
  {
    v4 = [v2 getCurrentCountryCode];
    v5 = *(a1 + 32);
    v6 = *(v5 + 136);
    *(v5 + 136) = v4;

    v3 = *(*(a1 + 32) + 136);
  }

  v7 = off_1EF4401C8;

  return v7(&__block_literal_global_4_3, v3);
}

- (NSLocale)currentLocale
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__CNEnvironment_currentLocale__block_invoke;
  v4[3] = &unk_1E6ED51B8;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

id __30__CNEnvironment_currentLocale__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 144);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [MEMORY[0x1E695DF58] currentLocale];
  }

  return v2;
}

- (NSString)getCurrentRegionCode
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__CNEnvironment_getCurrentRegionCode__block_invoke;
  v4[3] = &unk_1E6ED51B8;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

id __37__CNEnvironment_getCurrentRegionCode__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  if (!v2)
  {
    v3 = MGCopyAnswer();
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = v3;

    v2 = *(*(a1 + 32) + 152);
  }

  return v2;
}

- (BOOL)isExtendedGreenTeaDevice
{
  isGreenTeaDevice = [(CNEnvironment *)self isGreenTeaDevice];
  getCurrentRegionCode = [(CNEnvironment *)self getCurrentRegionCode];
  v5 = getCurrentRegionCode;
  if (getCurrentRegionCode)
  {
    v6 = [getCurrentRegionCode caseInsensitiveCompare:@"CH"] == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = isGreenTeaDevice || v6;
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [(CNEnvironment *)v7 isExtendedGreenTeaDevice];
  }

  return v7;
}

- (BOOL)isCommLimitsEnabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__CNEnvironment_isCommLimitsEnabled__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __36__CNEnvironment_isCommLimitsEnabled__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[23];
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isCommLimitsEnabledImpl")}];
    v5 = *(a1 + 32);
    v6 = *(v5 + 184);
    *(v5 + 184) = v4;

    v3 = *(*(a1 + 32) + 184);
  }

  return v3;
}

- (BOOL)isKeychainEnabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CNEnvironment_isKeychainEnabled__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __34__CNEnvironment_isKeychainEnabled__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[24];
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isKeychainEnabledImpl")}];
    v5 = *(a1 + 32);
    v6 = *(v5 + 192);
    *(v5 + 192) = v4;

    v3 = *(*(a1 + 32) + 192);
  }

  return v3;
}

- (id)valueForKey:(id)key onCacheMiss:(id)miss
{
  keyCopy = key;
  missCopy = miss;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__CNEnvironment_valueForKey_onCacheMiss___block_invoke;
  v12[3] = &unk_1E6ED57B8;
  v12[4] = self;
  v13 = keyCopy;
  v14 = missCopy;
  v8 = missCopy;
  v9 = keyCopy;
  v10 = cn_objectResultWithObjectLock(self, v12);

  return v10;
}

id __41__CNEnvironment_valueForKey_onCacheMiss___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (!v2)
  {
    v3 = (*(a1[6] + 16))();
    [*(a1[4] + 8) setObject:v3 forKeyedSubscript:a1[5]];
  }

  return v3;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__CNEnvironment_setValue_forKey___block_invoke;
  v10[3] = &unk_1E6ED57E0;
  v10[4] = self;
  v11 = keyCopy;
  v12 = valueCopy;
  v8 = valueCopy;
  v9 = keyCopy;
  cn_runWithObjectLock(self, v10);
}

- (_TtP18ContactsFoundation24CNKeychainFacadeProtocol_)keychainFacade
{
  selfCopy = self;
  v3 = sub_185A745F8();

  return v3;
}

- (void)isGreenTeaDevice
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Is regulated SKU: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)isExtendedGreenTeaDevice
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = @"NO";
  if (self)
  {
    v2 = @"YES";
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Is regulated SKU: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end