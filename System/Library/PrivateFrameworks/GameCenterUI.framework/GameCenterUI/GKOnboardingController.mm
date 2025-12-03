@interface GKOnboardingController
+ (GKOnboardingController)shared;
+ (id)describePlayerComparisonsBetween:(id)between and:(id)and;
- (GKOnboardingFlowDelegate)delegate;
- (id)landingViewControllerWithGameBundleId:(id)id;
- (void)presentContactsIntegrationConsentScreen:(id)screen;
- (void)presentFriendSuggestionsScreen:(id)screen;
- (void)presentPersonalizationScreen:(id)screen;
@end

@implementation GKOnboardingController

+ (GKOnboardingController)shared
{
  if (shared_onceToken != -1)
  {
    +[GKOnboardingController shared];
  }

  v3 = shared_sShared;

  return v3;
}

uint64_t __32__GKOnboardingController_shared__block_invoke()
{
  shared_sShared = objc_alloc_init(GKOnboardingController);

  return MEMORY[0x2821F96F8]();
}

- (id)landingViewControllerWithGameBundleId:(id)id
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D0C138];
  idCopy = id;
  authenticatedLocalPlayers = [v4 authenticatedLocalPlayers];
  firstObject = [authenticatedLocalPlayers firstObject];

  v8 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v9 = GKOSLoggers();
  }

  v10 = MEMORY[0x277D0C2B8];
  v11 = *MEMORY[0x277D0C2B8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B8], OS_LOG_TYPE_INFO))
  {
    v12 = MEMORY[0x277D0C138];
    v13 = v11;
    local = [v12 local];
    v15 = [GKOnboardingController describePlayerComparisonsBetween:firstObject and:local];
    v25 = 138412290;
    v26 = v15;
    _os_log_impl(&dword_24DE53000, v13, OS_LOG_TYPE_INFO, "landingViewController before update -- authFirst.internal VS local.internal\n%@", &v25, 0xCu);
  }

  local2 = [MEMORY[0x277D0C138] local];
  [local2 updateFromLocalPlayer:firstObject];

  if (!*v8)
  {
    v17 = GKOSLoggers();
  }

  v18 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
  {
    v19 = MEMORY[0x277D0C138];
    v20 = v18;
    local3 = [v19 local];
    v22 = [GKOnboardingController describePlayerComparisonsBetween:firstObject and:local3];
    v25 = 138412290;
    v26 = v22;
    _os_log_impl(&dword_24DE53000, v20, OS_LOG_TYPE_INFO, "landingViewController after update -- authFirst.internal VS local.internal\n%@", &v25, 0xCu);
  }

  [(GKOnboardingController *)self setGameBundleId:idCopy];

  v23 = objc_alloc_init(GKWelcomeOnboardingViewController);

  return v23;
}

+ (id)describePlayerComparisonsBetween:(id)between and:(id)and
{
  v43 = MEMORY[0x277CCACA8];
  v5 = MEMORY[0x277CCABB0];
  andCopy = and;
  betweenCopy = between;
  internal = [betweenCopy internal];
  onboarding = [internal onboarding];
  v61 = [v5 numberWithUnsignedInteger:{objc_msgSend(onboarding, "lastWelcomeWhatsNewCopyVersionDisplayed")}];
  v8 = MEMORY[0x277CCABB0];
  internal2 = [andCopy internal];
  onboarding2 = [internal2 onboarding];
  v60 = [v8 numberWithUnsignedInteger:{objc_msgSend(onboarding2, "lastWelcomeWhatsNewCopyVersionDisplayed")}];
  v9 = MEMORY[0x277CCABB0];
  internal3 = [betweenCopy internal];
  onboarding3 = [internal3 onboarding];
  v59 = [v9 numberWithUnsignedInteger:{objc_msgSend(onboarding3, "lastPrivacyNoticeVersionDisplayed")}];
  v10 = MEMORY[0x277CCABB0];
  internal4 = [andCopy internal];
  onboarding4 = [internal4 onboarding];
  v58 = [v10 numberWithUnsignedInteger:{objc_msgSend(onboarding4, "lastPrivacyNoticeVersionDisplayed")}];
  internal5 = [betweenCopy internal];
  isDefaultNickname = [internal5 isDefaultNickname];
  internal6 = [andCopy internal];
  isDefaultNickname2 = [internal6 isDefaultNickname];
  internal7 = [betweenCopy internal];
  onboarding5 = [internal7 onboarding];
  lastPersonalizationVersionDisplayed = [onboarding5 lastPersonalizationVersionDisplayed];
  internal8 = [andCopy internal];
  onboarding6 = [internal8 onboarding];
  lastPersonalizationVersionDisplayed2 = [onboarding6 lastPersonalizationVersionDisplayed];
  internal9 = [betweenCopy internal];
  isDefaultPrivacyVisibility = [internal9 isDefaultPrivacyVisibility];
  internal10 = [andCopy internal];
  isDefaultPrivacyVisibility2 = [internal10 isDefaultPrivacyVisibility];
  internal11 = [betweenCopy internal];
  onboarding7 = [internal11 onboarding];
  lastProfilePrivacyVersionDisplayed = [onboarding7 lastProfilePrivacyVersionDisplayed];
  internal12 = [andCopy internal];
  onboarding8 = [internal12 onboarding];
  lastProfilePrivacyVersionDisplayed2 = [onboarding8 lastProfilePrivacyVersionDisplayed];
  internal13 = [betweenCopy internal];
  isDefaultContactsIntegrationConsent = [internal13 isDefaultContactsIntegrationConsent];
  internal14 = [andCopy internal];
  isDefaultContactsIntegrationConsent2 = [internal14 isDefaultContactsIntegrationConsent];
  internal15 = [betweenCopy internal];
  onboarding9 = [internal15 onboarding];
  lastContactsIntegrationConsentVersionDisplayed = [onboarding9 lastContactsIntegrationConsentVersionDisplayed];
  internal16 = [andCopy internal];
  onboarding10 = [internal16 onboarding];
  lastContactsIntegrationConsentVersionDisplayed2 = [onboarding10 lastContactsIntegrationConsentVersionDisplayed];
  internal17 = [betweenCopy internal];

  onboarding11 = [internal17 onboarding];
  lastFriendSuggestionsVersionDisplayed = [onboarding11 lastFriendSuggestionsVersionDisplayed];
  internal18 = [andCopy internal];

  onboarding12 = [internal18 onboarding];
  lastFriendSuggestionsVersionDisplayed2 = [onboarding12 lastFriendSuggestionsVersionDisplayed];
  v44 = [v43 stringWithFormat:@" WhatsNew copy version %@ VS %@\n privacy notice version %@ VS %@\n nickname: default %d VS %d | version %@ VS %@\n profile privacy: default %d VS %d | version %@ VS %@\n contacts integration: default %d VS %d | version %@ VS %@ friend suggestions: version %@ VS %@", v61, v60, v59, v58, isDefaultNickname, isDefaultNickname2, lastPersonalizationVersionDisplayed, lastPersonalizationVersionDisplayed2, isDefaultPrivacyVisibility, isDefaultPrivacyVisibility2, lastProfilePrivacyVersionDisplayed, lastProfilePrivacyVersionDisplayed2, isDefaultContactsIntegrationConsent, isDefaultContactsIntegrationConsent2, lastContactsIntegrationConsentVersionDisplayed, lastContactsIntegrationConsentVersionDisplayed2, lastFriendSuggestionsVersionDisplayed, lastFriendSuggestionsVersionDisplayed2];

  return v44;
}

- (void)presentFriendSuggestionsScreen:(id)screen
{
  screenCopy = screen;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B8], OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "presentFriendSuggestionsScreen", v10, 2u);
  }

  v7 = [GKOnboardingFriendsSuggestionsViewController alloc];
  gameBundleId = [(GKOnboardingController *)self gameBundleId];
  v9 = [(GKOnboardingFriendsSuggestionsViewController *)v7 initWithGameBundleId:gameBundleId];
  [(GKOnboardingController *)self presentViewController:v9 presentingViewController:screenCopy];
}

- (void)presentContactsIntegrationConsentScreen:(id)screen
{
  screenCopy = screen;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B8], OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "presentContactsIntegrationConsentScreen", v8, 2u);
  }

  v7 = objc_alloc_init(GKContactsIntegrationConsentViewController);
  [(GKOnboardingController *)self presentViewController:v7 presentingViewController:screenCopy];
}

- (void)presentPersonalizationScreen:(id)screen
{
  screenCopy = screen;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B8], OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "presentPersonalizationScreen", v8, 2u);
  }

  v7 = objc_alloc_init(GKOnboardingProfileCreationViewController);
  [(GKOnboardingController *)self presentViewController:v7 presentingViewController:screenCopy];
}

- (GKOnboardingFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end