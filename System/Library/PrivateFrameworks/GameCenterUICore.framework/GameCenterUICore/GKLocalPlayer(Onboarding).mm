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
  internal = [self internal];
  onboarding = [internal onboarding];
  internal2 = [self internal];
  v5 = [onboarding shouldShowPersonalizationScreenIsUsingDefaultNickname:{objc_msgSend(internal2, "isDefaultNickname")}];

  return v5;
}

- (uint64_t)hasAcknowledgedLatestGDPR
{
  v11 = *MEMORY[0x277D85DE8];
  localInternal = [self localInternal];
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  v3 = *MEMORY[0x277D0C2B8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B8], OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    playerID = [localInternal playerID];
    v9 = 138412290;
    v10 = playerID;
    _os_log_impl(&dword_24E4A8000, v4, OS_LOG_TYPE_INFO, "Getting GDPR state for player: %@", &v9, 0xCu);
  }

  onboarding = [localInternal onboarding];
  hasAcknowledgedLatestGDPR = [onboarding hasAcknowledgedLatestGDPR];

  return hasAcknowledgedLatestGDPR;
}

- (uint64_t)shouldShowFriendSuggestionsScreen
{
  internal = [self internal];
  onboarding = [internal onboarding];
  shouldShowFriendSuggestionsScreen = [onboarding shouldShowFriendSuggestionsScreen];

  return shouldShowFriendSuggestionsScreen;
}

- (uint64_t)shouldShowContactsIntegrationConsentScreen
{
  internal = [self internal];
  onboarding = [internal onboarding];
  internal2 = [self internal];
  v5 = [onboarding shouldShowContactsIntegrationConsentScreenIsUsingDefaultContactsIntegrationConsent:{objc_msgSend(internal2, "isDefaultContactsIntegrationConsent")}];

  return v5;
}

- (uint64_t)shouldShowAnyOnboardingScreen
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [self shouldShowAnyOnboardingScreenForBundleIdentifier:bundleIdentifier];

  return v4;
}

- (uint64_t)shouldShowAnyOnboardingScreenForBundleIdentifier:()Onboarding
{
  v4 = a3;
  internal = [self internal];
  onboarding = [internal onboarding];
  internal2 = [self internal];
  isDefaultNickname = [internal2 isDefaultNickname];
  internal3 = [self internal];
  isDefaultPrivacyVisibility = [internal3 isDefaultPrivacyVisibility];
  internal4 = [self internal];
  v12 = [onboarding shouldShowAnyOnboardingScreenForBundleIdentifier:v4 IsUsingDefaultNickname:isDefaultNickname isUsingDefaultPrivacyVisibility:isDefaultPrivacyVisibility isUsingDefaultContactsIntegrationConsent:{objc_msgSend(internal4, "isDefaultContactsIntegrationConsent")}];

  return v12;
}

@end