@interface GKOnboardingController
+ (GKOnboardingController)shared;
+ (id)describePlayerComparisonsBetween:(id)a3 and:(id)a4;
- (GKOnboardingFlowDelegate)delegate;
- (id)landingViewControllerWithGameBundleId:(id)a3;
- (void)presentContactsIntegrationConsentScreen:(id)a3;
- (void)presentFriendSuggestionsScreen:(id)a3;
- (void)presentPersonalizationScreen:(id)a3;
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

- (id)landingViewControllerWithGameBundleId:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D0C138];
  v5 = a3;
  v6 = [v4 authenticatedLocalPlayers];
  v7 = [v6 firstObject];

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
    v14 = [v12 local];
    v15 = [GKOnboardingController describePlayerComparisonsBetween:v7 and:v14];
    v25 = 138412290;
    v26 = v15;
    _os_log_impl(&dword_24DE53000, v13, OS_LOG_TYPE_INFO, "landingViewController before update -- authFirst.internal VS local.internal\n%@", &v25, 0xCu);
  }

  v16 = [MEMORY[0x277D0C138] local];
  [v16 updateFromLocalPlayer:v7];

  if (!*v8)
  {
    v17 = GKOSLoggers();
  }

  v18 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
  {
    v19 = MEMORY[0x277D0C138];
    v20 = v18;
    v21 = [v19 local];
    v22 = [GKOnboardingController describePlayerComparisonsBetween:v7 and:v21];
    v25 = 138412290;
    v26 = v22;
    _os_log_impl(&dword_24DE53000, v20, OS_LOG_TYPE_INFO, "landingViewController after update -- authFirst.internal VS local.internal\n%@", &v25, 0xCu);
  }

  [(GKOnboardingController *)self setGameBundleId:v5];

  v23 = objc_alloc_init(GKWelcomeOnboardingViewController);

  return v23;
}

+ (id)describePlayerComparisonsBetween:(id)a3 and:(id)a4
{
  v43 = MEMORY[0x277CCACA8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = a3;
  v54 = [v7 internal];
  v53 = [v54 onboarding];
  v61 = [v5 numberWithUnsignedInteger:{objc_msgSend(v53, "lastWelcomeWhatsNewCopyVersionDisplayed")}];
  v8 = MEMORY[0x277CCABB0];
  v52 = [v6 internal];
  v51 = [v52 onboarding];
  v60 = [v8 numberWithUnsignedInteger:{objc_msgSend(v51, "lastWelcomeWhatsNewCopyVersionDisplayed")}];
  v9 = MEMORY[0x277CCABB0];
  v50 = [v7 internal];
  v49 = [v50 onboarding];
  v59 = [v9 numberWithUnsignedInteger:{objc_msgSend(v49, "lastPrivacyNoticeVersionDisplayed")}];
  v10 = MEMORY[0x277CCABB0];
  v48 = [v6 internal];
  v47 = [v48 onboarding];
  v58 = [v10 numberWithUnsignedInteger:{objc_msgSend(v47, "lastPrivacyNoticeVersionDisplayed")}];
  v46 = [v7 internal];
  v34 = [v46 isDefaultNickname];
  v45 = [v6 internal];
  v32 = [v45 isDefaultNickname];
  v42 = [v7 internal];
  v41 = [v42 onboarding];
  v56 = [v41 lastPersonalizationVersionDisplayed];
  v40 = [v6 internal];
  v39 = [v40 onboarding];
  v57 = [v39 lastPersonalizationVersionDisplayed];
  v38 = [v7 internal];
  v28 = [v38 isDefaultPrivacyVisibility];
  v37 = [v6 internal];
  v25 = [v37 isDefaultPrivacyVisibility];
  v36 = [v7 internal];
  v35 = [v36 onboarding];
  v55 = [v35 lastProfilePrivacyVersionDisplayed];
  v33 = [v6 internal];
  v31 = [v33 onboarding];
  v23 = [v31 lastProfilePrivacyVersionDisplayed];
  v30 = [v7 internal];
  v22 = [v30 isDefaultContactsIntegrationConsent];
  v29 = [v6 internal];
  v21 = [v29 isDefaultContactsIntegrationConsent];
  v27 = [v7 internal];
  v26 = [v27 onboarding];
  v11 = [v26 lastContactsIntegrationConsentVersionDisplayed];
  v24 = [v6 internal];
  v12 = [v24 onboarding];
  v13 = [v12 lastContactsIntegrationConsentVersionDisplayed];
  v14 = [v7 internal];

  v15 = [v14 onboarding];
  v16 = [v15 lastFriendSuggestionsVersionDisplayed];
  v17 = [v6 internal];

  v18 = [v17 onboarding];
  v19 = [v18 lastFriendSuggestionsVersionDisplayed];
  v44 = [v43 stringWithFormat:@" WhatsNew copy version %@ VS %@\n privacy notice version %@ VS %@\n nickname: default %d VS %d | version %@ VS %@\n profile privacy: default %d VS %d | version %@ VS %@\n contacts integration: default %d VS %d | version %@ VS %@ friend suggestions: version %@ VS %@", v61, v60, v59, v58, v34, v32, v56, v57, v28, v25, v55, v23, v22, v21, v11, v13, v16, v19];

  return v44;
}

- (void)presentFriendSuggestionsScreen:(id)a3
{
  v4 = a3;
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
  v8 = [(GKOnboardingController *)self gameBundleId];
  v9 = [(GKOnboardingFriendsSuggestionsViewController *)v7 initWithGameBundleId:v8];
  [(GKOnboardingController *)self presentViewController:v9 presentingViewController:v4];
}

- (void)presentContactsIntegrationConsentScreen:(id)a3
{
  v4 = a3;
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
  [(GKOnboardingController *)self presentViewController:v7 presentingViewController:v4];
}

- (void)presentPersonalizationScreen:(id)a3
{
  v4 = a3;
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
  [(GKOnboardingController *)self presentViewController:v7 presentingViewController:v4];
}

- (GKOnboardingFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end