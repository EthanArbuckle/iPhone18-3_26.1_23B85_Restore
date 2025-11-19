@interface NSBundle
@end

@implementation NSBundle

void __63__NSBundle_GKAdditions___gkMainBundleIsGameCenterSystemProcess__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  if ([v1 _gkIsGameCenter] & 1) != 0 || (objc_msgSend(v1, "_gkIsGameCenterExtension") & 1) != 0 || (objc_msgSend(v1, "_gkIsPreferences") & 1) != 0 || (objc_msgSend(v1, "_gkIsGameDaemon"))
  {
    v0 = 1;
  }

  else
  {
    v0 = [v1 _gkIsKnownFirstParty];
  }

  _gkMainBundleIsGameCenterSystemProcess_isGameCenterSystemProcess = v0;
}

void __45__NSBundle_GKAdditions___gkIsKnownFirstParty__block_invoke()
{
  v5[18] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"com.apple.AppStore";
  v5[1] = @"com.apple.Arcade";
  v5[2] = @"com.apple.Messages";
  v5[3] = @"com.apple.TVAppStore";
  v5[4] = @"com.apple.AppStore.ProductPageExtension";
  v5[5] = @"com.apple.AppStore.SubscribePageExtension";
  v5[6] = @"com.apple.TVAppStore.AppStoreTopShelfExtension";
  v5[7] = @"com.apple.AppStore.Widgets";
  v5[8] = @"com.apple.Arcade.Widgets";
  v5[9] = @"com.apple.CopresenceCore";
  v5[10] = @"com.apple.RealityHUD";
  v5[11] = @"com.apple.GameCenterOverlay";
  v5[12] = @"com.apple.GameCenterRemoteAlert";
  v5[13] = @"com.apple.games-cli";
  v5[14] = @"com.apple.games";
  v5[15] = @"com.apple.games.ChallengesMessageExtension";
  v5[16] = @"com.apple.moltres";
  v5[17] = @"com.apple.moltres.ChallengesMessageExtension";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:18];
  v2 = [v0 setWithArray:v1];
  v3 = _gkIsKnownFirstParty_firstPartySetIdentifiers;
  _gkIsKnownFirstParty_firstPartySetIdentifiers = v2;

  v4 = *MEMORY[0x277D85DE8];
}

id __68__NSBundle_GKAdditions___gkSystemLocalizedStringForKey_value_table___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = MEMORY[0x277CBEBC0];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [a2 bundlePath];
  v16 = [v10 fileURLWithPath:v15];
  v17 = CFBundleCreate(0, v16);

  v18 = CFBundleCopyLocalizedStringForLocalization();
  CFRelease(v17);

  return v18;
}

void __66__NSBundle_GKAdditions___gkBundleIdentifierIsRelatedToContactsUI___block_invoke()
{
  v5[7] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"com.iosframeworksqa.GKContactsUITester";
  v5[1] = @"com.apple.mobilephone";
  v5[2] = @"com.apple.MobileSMS";
  v5[3] = @"com.apple.MobileAddressBook";
  v5[4] = @"com.apple.ContactsUI.ContactViewViewService";
  v5[5] = @"com.apple.ContactsUI.ContactsViewService";
  v5[6] = @"com.apple.ContactsUI";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:7];
  v2 = [v0 setWithArray:v1];
  v3 = _gkBundleIdentifierIsRelatedToContactsUI__contactsUIBundleIdentifiers;
  _gkBundleIdentifierIsRelatedToContactsUI__contactsUIBundleIdentifiers = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __53__NSBundle_GKAdditions___gkIsEligibleForOnboardingUI__block_invoke(uint64_t a1)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v9[0] = @"com.apple.AppStore";
  v9[1] = @"com.apple.TVAppStore";
  v9[2] = @"com.apple.GameCenterRemoteAlert";
  v9[3] = @"com.apple.RealityHUD";
  v9[4] = @"com.apple.MuseBuddy";
  v9[5] = @"com.apple.internal.appleAccountSetupTool";
  v9[6] = @"com.apple.systempreferences.AppleIDSettings";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:7];
  v4 = [v2 setWithArray:v3];

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = v5;
  if ((_GKIsRemoteUI & 1) != 0 || ([v5 _gkIsGameCenter] & 1) != 0 || (objc_msgSend(v6, "_gkIsPreferences") & 1) != 0 || (objc_msgSend(v6, "_gkIsContacts") & 1) != 0 || (objc_msgSend(v6, "_gkIsGameCenterExtension") & 1) != 0 || (objc_msgSend(v6, "_gkIsPurpleBuddy") & 1) != 0 || objc_msgSend(v6, "_gkIsAnyOverlayUI"))
  {
    _gkIsEligibleForOnboardingUI_isEligible = 0;
  }

  else
  {
    v8 = [*(a1 + 32) bundleIdentifier];
    _gkIsEligibleForOnboardingUI_isEligible = [v4 containsObject:v8] ^ 1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end