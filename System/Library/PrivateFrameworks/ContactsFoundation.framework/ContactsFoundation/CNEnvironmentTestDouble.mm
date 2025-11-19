@interface CNEnvironmentTestDouble
- (CNEnvironmentTestDouble)init;
- (_TtP18ContactsFoundation24CNKeychainFacadeProtocol_)keychainFacade;
- (void)setAuthorizationContext:(id)a3;
- (void)setCommLimitsEnabled:(BOOL)a3;
- (void)setCurrentCountryCode:(id)a3;
- (void)setCurrentLocale:(id)a3;
- (void)setCurrentRegionCode:(id)a3;
- (void)setDefaultCountryCode:(id)a3;
- (void)setDistributedNotificationCenter:(id)a3;
- (void)setEntitlementVerifier:(id)a3;
- (void)setFeatureFlags:(id)a3;
- (void)setFileManager:(id)a3;
- (void)setGreenTeaDevice:(BOOL)a3;
- (void)setHomeCountryCode:(id)a3;
- (void)setInternalBuild:(BOOL)a3;
- (void)setKeychainEnabled:(BOOL)a3;
- (void)setKeychainFacade:(id)a3;
- (void)setLocalizationServices:(id)a3;
- (void)setMainBundleIdentifier:(id)a3;
- (void)setNotificationCenter:(id)a3;
- (void)setProbabilityUtility:(id)a3;
- (void)setSchedulerProvider:(id)a3;
- (void)setTimeProvider:(id)a3;
- (void)setUserDefaults:(id)a3;
- (void)setWatchdog:(id)a3;
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

- (void)setFileManager:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CNEnvironmentTestDouble_setFileManager___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setUserDefaults:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CNEnvironmentTestDouble_setUserDefaults___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setFeatureFlags:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CNEnvironmentTestDouble_setFeatureFlags___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setSchedulerProvider:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CNEnvironmentTestDouble_setSchedulerProvider___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setTimeProvider:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CNEnvironmentTestDouble_setTimeProvider___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setNotificationCenter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CNEnvironmentTestDouble_setNotificationCenter___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setDistributedNotificationCenter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CNEnvironmentTestDouble_setDistributedNotificationCenter___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setEntitlementVerifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CNEnvironmentTestDouble_setEntitlementVerifier___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setAuthorizationContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CNEnvironmentTestDouble_setAuthorizationContext___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setLocalizationServices:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CNEnvironmentTestDouble_setLocalizationServices___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setProbabilityUtility:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CNEnvironmentTestDouble_setProbabilityUtility___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setWatchdog:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CNEnvironmentTestDouble_setWatchdog___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  cn_runWithObjectLock(self, v6);
}

- (void)setMainBundleIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CNEnvironmentTestDouble_setMainBundleIdentifier___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)setDefaultCountryCode:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CNEnvironmentTestDouble_setDefaultCountryCode___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)setHomeCountryCode:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CNEnvironmentTestDouble_setHomeCountryCode___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)setCurrentCountryCode:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CNEnvironmentTestDouble_setCurrentCountryCode___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)setCurrentLocale:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CNEnvironmentTestDouble_setCurrentLocale___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)setInternalBuild:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CNEnvironmentTestDouble_setInternalBuild___block_invoke;
  v3[3] = &unk_1E6ED82B0;
  v3[4] = self;
  v4 = a3;
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

- (void)setGreenTeaDevice:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__CNEnvironmentTestDouble_setGreenTeaDevice___block_invoke;
  v3[3] = &unk_1E6ED82B0;
  v3[4] = self;
  v4 = a3;
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

- (void)setCurrentRegionCode:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CNEnvironmentTestDouble_setCurrentRegionCode___block_invoke;
  v6[3] = &unk_1E6ED5168;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)setCommLimitsEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__CNEnvironmentTestDouble_setCommLimitsEnabled___block_invoke;
  v3[3] = &unk_1E6ED82B0;
  v3[4] = self;
  v4 = a3;
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

- (void)setKeychainEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__CNEnvironmentTestDouble_setKeychainEnabled___block_invoke;
  v3[3] = &unk_1E6ED82B0;
  v3[4] = self;
  v4 = a3;
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
  v2 = self;
  v3 = sub_185A74888();

  return v3;
}

- (void)setKeychainFacade:(id)a3
{
  swift_unknownObjectRetain_n();
  v6 = self;
  v5 = sub_185A7E904();
  [(CNEnvironment *)v6 setValue:a3 forKey:v5];
  swift_unknownObjectRelease_n();
}

@end