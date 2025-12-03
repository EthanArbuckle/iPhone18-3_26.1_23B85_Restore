@interface CNEnvironmentTestDouble
- (CNEnvironmentTestDouble)init;
- (_TtP18ContactsFoundation24CNKeychainFacadeProtocol_)keychainFacade;
- (void)setAuthorizationContext:(id)context;
- (void)setCommLimitsEnabled:(BOOL)enabled;
- (void)setCurrentCountryCode:(id)code;
- (void)setCurrentLocale:(id)locale;
- (void)setCurrentRegionCode:(id)code;
- (void)setDefaultCountryCode:(id)code;
- (void)setDistributedNotificationCenter:(id)center;
- (void)setEntitlementVerifier:(id)verifier;
- (void)setFeatureFlags:(id)flags;
- (void)setFileManager:(id)manager;
- (void)setGreenTeaDevice:(BOOL)device;
- (void)setHomeCountryCode:(id)code;
- (void)setInternalBuild:(BOOL)build;
- (void)setKeychainEnabled:(BOOL)enabled;
- (void)setKeychainFacade:(id)facade;
- (void)setLocalizationServices:(id)services;
- (void)setMainBundleIdentifier:(id)identifier;
- (void)setNotificationCenter:(id)center;
- (void)setProbabilityUtility:(id)utility;
- (void)setSchedulerProvider:(id)provider;
- (void)setTimeProvider:(id)provider;
- (void)setUserDefaults:(id)defaults;
- (void)setWatchdog:(id)watchdog;
@end

@implementation CNEnvironmentTestDouble

- (CNEnvironmentTestDouble)init
{
  v7.receiver = self;
  v7.super_class = CNEnvironmentTestDouble;
  v2 = [(CNEnvironment *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNProbabilityUtilityTestDouble);
    probabilityUtility = v2->super._probabilityUtility;
    v2->super._probabilityUtility = v3;

    v5 = v2;
  }

  return v2;
}

- (void)setFileManager:(id)manager
{
  managerCopy = manager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CNEnvironmentTestDouble_setFileManager___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = managerCopy;
  v5 = managerCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CNEnvironmentTestDouble_setUserDefaults___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = defaultsCopy;
  v5 = defaultsCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CNEnvironmentTestDouble_setFeatureFlags___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = flagsCopy;
  v5 = flagsCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CNEnvironmentTestDouble_setSchedulerProvider___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = providerCopy;
  v5 = providerCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setTimeProvider:(id)provider
{
  providerCopy = provider;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CNEnvironmentTestDouble_setTimeProvider___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = providerCopy;
  v5 = providerCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setNotificationCenter:(id)center
{
  centerCopy = center;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CNEnvironmentTestDouble_setNotificationCenter___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = centerCopy;
  v5 = centerCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setDistributedNotificationCenter:(id)center
{
  centerCopy = center;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CNEnvironmentTestDouble_setDistributedNotificationCenter___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = centerCopy;
  v5 = centerCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setEntitlementVerifier:(id)verifier
{
  verifierCopy = verifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CNEnvironmentTestDouble_setEntitlementVerifier___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = verifierCopy;
  v5 = verifierCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setAuthorizationContext:(id)context
{
  contextCopy = context;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CNEnvironmentTestDouble_setAuthorizationContext___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = contextCopy;
  v5 = contextCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setLocalizationServices:(id)services
{
  servicesCopy = services;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CNEnvironmentTestDouble_setLocalizationServices___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = servicesCopy;
  v5 = servicesCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setProbabilityUtility:(id)utility
{
  utilityCopy = utility;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CNEnvironmentTestDouble_setProbabilityUtility___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = utilityCopy;
  v5 = utilityCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setWatchdog:(id)watchdog
{
  watchdogCopy = watchdog;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CNEnvironmentTestDouble_setWatchdog___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = watchdogCopy;
  v5 = watchdogCopy;
  cn_runWithObjectLock(self, v6);
}

- (void)setMainBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CNEnvironmentTestDouble_setMainBundleIdentifier___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  cn_runWithObjectLock(self, v6);
}

uint64_t __51__CNEnvironmentTestDouble_setMainBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setDefaultCountryCode:(id)code
{
  codeCopy = code;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CNEnvironmentTestDouble_setDefaultCountryCode___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = codeCopy;
  v5 = codeCopy;
  cn_runWithObjectLock(self, v6);
}

uint64_t __49__CNEnvironmentTestDouble_setDefaultCountryCode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setHomeCountryCode:(id)code
{
  codeCopy = code;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CNEnvironmentTestDouble_setHomeCountryCode___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = codeCopy;
  v5 = codeCopy;
  cn_runWithObjectLock(self, v6);
}

void __46__CNEnvironmentTestDouble_setHomeCountryCode___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) copy];
  v2 = off_1EF4401A8(&__block_literal_global_2_2, v5);
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
}

- (void)setCurrentCountryCode:(id)code
{
  codeCopy = code;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CNEnvironmentTestDouble_setCurrentCountryCode___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = codeCopy;
  v5 = codeCopy;
  cn_runWithObjectLock(self, v6);
}

void __49__CNEnvironmentTestDouble_setCurrentCountryCode___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) copy];
  v2 = off_1EF4401A8(&__block_literal_global_2_2, v5);
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;
}

- (void)setCurrentLocale:(id)locale
{
  localeCopy = locale;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CNEnvironmentTestDouble_setCurrentLocale___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = localeCopy;
  v5 = localeCopy;
  cn_runWithObjectLock(self, v6);
}

uint64_t __44__CNEnvironmentTestDouble_setCurrentLocale___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setInternalBuild:(BOOL)build
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CNEnvironmentTestDouble_setInternalBuild___block_invoke;
  v3[3] = &unk_1E6ED82B0;
  v3[4] = self;
  buildCopy = build;
  cn_runWithObjectLock(self, v3);
}

uint64_t __44__CNEnvironmentTestDouble_setInternalBuild___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setGreenTeaDevice:(BOOL)device
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__CNEnvironmentTestDouble_setGreenTeaDevice___block_invoke;
  v3[3] = &unk_1E6ED82B0;
  v3[4] = self;
  deviceCopy = device;
  cn_runWithObjectLock(self, v3);
}

uint64_t __45__CNEnvironmentTestDouble_setGreenTeaDevice___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setCurrentRegionCode:(id)code
{
  codeCopy = code;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CNEnvironmentTestDouble_setCurrentRegionCode___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = codeCopy;
  v5 = codeCopy;
  cn_runWithObjectLock(self, v6);
}

void __48__CNEnvironmentTestDouble_setCurrentRegionCode___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) copy];
  v2 = off_1EF4401A8(&__block_literal_global_2_2, v5);
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;
}

- (void)setCommLimitsEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__CNEnvironmentTestDouble_setCommLimitsEnabled___block_invoke;
  v3[3] = &unk_1E6ED82B0;
  v3[4] = self;
  enabledCopy = enabled;
  cn_runWithObjectLock(self, v3);
}

uint64_t __48__CNEnvironmentTestDouble_setCommLimitsEnabled___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setKeychainEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__CNEnvironmentTestDouble_setKeychainEnabled___block_invoke;
  v3[3] = &unk_1E6ED82B0;
  v3[4] = self;
  enabledCopy = enabled;
  cn_runWithObjectLock(self, v3);
}

uint64_t __46__CNEnvironmentTestDouble_setKeychainEnabled___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (_TtP18ContactsFoundation24CNKeychainFacadeProtocol_)keychainFacade
{
  selfCopy = self;
  v3 = sub_185A74888();

  return v3;
}

- (void)setKeychainFacade:(id)facade
{
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v5 = sub_185A7E904();
  [(CNEnvironment *)selfCopy setValue:facade forKey:v5];
  swift_unknownObjectRelease_n();
}

@end