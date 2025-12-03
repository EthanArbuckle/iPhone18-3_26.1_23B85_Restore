@interface GKPrivacyContentVersion
+ (unint64_t)currentGamesPrivacyNoticeVersion;
+ (unint64_t)currentVersion;
+ (unint64_t)versionForIdentifier:(id)identifier;
@end

@implementation GKPrivacyContentVersion

+ (unint64_t)currentVersion
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__GKPrivacyContentVersion_currentVersion__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentVersion_onceToken != -1)
  {
    dispatch_once(&currentVersion_onceToken, block);
  }

  return currentVersion_result;
}

+ (unint64_t)currentGamesPrivacyNoticeVersion
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__GKPrivacyContentVersion_currentGamesPrivacyNoticeVersion__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentGamesPrivacyNoticeVersion_onceToken != -1)
  {
    dispatch_once(&currentGamesPrivacyNoticeVersion_onceToken, block);
  }

  return currentGamesPrivacyNoticeVersion_result;
}

uint64_t __41__GKPrivacyContentVersion_currentVersion__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getOBPrivacyGameCenterIdentifierSymbolLoc_ptr;
  v8 = getOBPrivacyGameCenterIdentifierSymbolLoc_ptr;
  if (!getOBPrivacyGameCenterIdentifierSymbolLoc_ptr)
  {
    v3 = OnBoardingKitLibrary();
    v6[3] = dlsym(v3, "OBPrivacyGameCenterIdentifier");
    getOBPrivacyGameCenterIdentifierSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    __41__GKPrivacyContentVersion_currentVersion__block_invoke_cold_1();
  }

  result = [v1 versionForIdentifier:*v2];
  currentVersion_result = result;
  return result;
}

uint64_t __59__GKPrivacyContentVersion_currentGamesPrivacyNoticeVersion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) versionForIdentifier:@"com.apple.onboarding.games"];
  currentGamesPrivacyNoticeVersion_result = result;
  return result;
}

+ (unint64_t)versionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v4 = getOBBundleClass_softClass;
  v21 = getOBBundleClass_softClass;
  if (!getOBBundleClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getOBBundleClass_block_invoke;
    v16 = &unk_2785DF380;
    v17 = &v18;
    __getOBBundleClass_block_invoke(&v13);
    v4 = v19[3];
  }

  v5 = v4;
  _Block_object_dispose(&v18, 8);
  v6 = [v4 bundleWithIdentifier:identifierCopy];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v7 = getOBPrivacyFlowClass_softClass;
  v21 = getOBPrivacyFlowClass_softClass;
  if (!getOBPrivacyFlowClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getOBPrivacyFlowClass_block_invoke;
    v16 = &unk_2785DF380;
    v17 = &v18;
    __getOBPrivacyFlowClass_block_invoke(&v13);
    v7 = v19[3];
  }

  v8 = v7;
  _Block_object_dispose(&v18, 8);
  v9 = [v7 flowWithBundle:v6];
  contentVersion = [v9 contentVersion];
  if (contentVersion <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = contentVersion;
  }

  return v11;
}

void __41__GKPrivacyContentVersion_currentVersion__block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getOBPrivacyGameCenterIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"GKSoftLinkedClassesFoundation.h" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

@end