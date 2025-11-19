@interface GKLocalPlayer(Onboarding)
- (uint64_t)hasAcknowledgedLatestGDPR;
- (uint64_t)shouldShowAnyOnboardingScreen;
- (uint64_t)shouldShowAnyOnboardingScreenForBundleIdentifier:()Onboarding;
- (uint64_t)shouldShowContactsIntegrationConsentScreen;
- (uint64_t)shouldShowFriendSuggestionsScreen;
- (uint64_t)shouldShowPersonalizationScreen;
@end

@implementation GKLocalPlayer(Onboarding)

- (uint64_t)shouldShowPersonalizationScreen
{
  v2 = [a1 internal];
  v3 = [v2 onboarding];
  v4 = [a1 internal];
  v5 = [v3 shouldShowPersonalizationScreenIsUsingDefaultNickname:{objc_msgSend(v4, "isDefaultNickname")}];

  return v5;
}

- (uint64_t)hasAcknowledgedLatestGDPR
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 localInternal];
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  v3 = *MEMORY[0x277D0C2B8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B8], OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [v1 playerID];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_24E4A8000, v4, OS_LOG_TYPE_INFO, "Getting GDPR state for player: %@", &v9, 0xCu);
  }

  v6 = [v1 onboarding];
  v7 = [v6 hasAcknowledgedLatestGDPR];

  return v7;
}

- (uint64_t)shouldShowFriendSuggestionsScreen
{
  v1 = [a1 internal];
  v2 = [v1 onboarding];
  v3 = [v2 shouldShowFriendSuggestionsScreen];

  return v3;
}

- (uint64_t)shouldShowContactsIntegrationConsentScreen
{
  v2 = [a1 internal];
  v3 = [v2 onboarding];
  v4 = [a1 internal];
  v5 = [v3 shouldShowContactsIntegrationConsentScreenIsUsingDefaultContactsIntegrationConsent:{objc_msgSend(v4, "isDefaultContactsIntegrationConsent")}];

  return v5;
}

- (uint64_t)shouldShowAnyOnboardingScreen
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [a1 shouldShowAnyOnboardingScreenForBundleIdentifier:v3];

  return v4;
}

- (uint64_t)shouldShowAnyOnboardingScreenForBundleIdentifier:()Onboarding
{
  v4 = a3;
  v5 = [a1 internal];
  v6 = [v5 onboarding];
  v7 = [a1 internal];
  v8 = [v7 isDefaultNickname];
  v9 = [a1 internal];
  v10 = [v9 isDefaultPrivacyVisibility];
  v11 = [a1 internal];
  v12 = [v6 shouldShowAnyOnboardingScreenForBundleIdentifier:v4 IsUsingDefaultNickname:v8 isUsingDefaultPrivacyVisibility:v10 isUsingDefaultContactsIntegrationConsent:{objc_msgSend(v11, "isDefaultContactsIntegrationConsent")}];

  return v12;
}

@end