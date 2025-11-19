@interface GKPlayerInternalOnboarding
- (BOOL)hasAcknowledgedLatestGDPR;
- (BOOL)shouldShowAnyOnboardingScreenForBundleIdentifier:(id)a3 IsUsingDefaultNickname:(BOOL)a4 isUsingDefaultPrivacyVisibility:(BOOL)a5 isUsingDefaultContactsIntegrationConsent:(BOOL)a6;
- (BOOL)shouldShowContactsIntegrationConsentScreenIsUsingDefaultContactsIntegrationConsent:(BOOL)a3;
- (BOOL)shouldShowFriendSuggestionsScreen;
- (BOOL)shouldShowPersonalizationScreenIsUsingDefaultNickname:(BOOL)a3;
- (GKPlayerInternalOnboarding)initWithCoder:(id)a3;
- (GKPlayerInternalOnboarding)initWithLastWelcomeWhatsNewCopyVersionDisplayed:(unint64_t)a3 lastPrivacyNoticeVersionDisplayed:(unint64_t)a4 lastPersonalizationVersionDisplayed:(id)a5 lastProfilePrivacyVersionDisplayed:(id)a6 lastFriendSuggestionsVersionDisplayed:(id)a7 lastContactsIntegrationConsentVersionDisplayed:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKPlayerInternalOnboarding

- (GKPlayerInternalOnboarding)initWithLastWelcomeWhatsNewCopyVersionDisplayed:(unint64_t)a3 lastPrivacyNoticeVersionDisplayed:(unint64_t)a4 lastPersonalizationVersionDisplayed:(id)a5 lastProfilePrivacyVersionDisplayed:(id)a6 lastFriendSuggestionsVersionDisplayed:(id)a7 lastContactsIntegrationConsentVersionDisplayed:(id)a8
{
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = GKPlayerInternalOnboarding;
  v18 = [(GKPlayerInternalOnboarding *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_lastWelcomeWhatsNewCopyVersionDisplayed = a3;
    v18->_lastPrivacyNoticeVersionDisplayed = a4;
    objc_storeStrong(&v18->_lastPersonalizationVersionDisplayed, a5);
    objc_storeStrong(&v19->_lastProfilePrivacyVersionDisplayed, a6);
    objc_storeStrong(&v19->_lastFriendSuggestionsVersionDisplayed, a7);
    objc_storeStrong(&v19->_lastContactsIntegrationConsentVersionDisplayed, a8);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[GKPlayerInternalOnboarding lastWelcomeWhatsNewCopyVersionDisplayed](self, "lastWelcomeWhatsNewCopyVersionDisplayed")}];
  [v5 encodeObject:v6 forKey:@"lastWelcomeWhatsNewCopyVersionDisplayed"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[GKPlayerInternalOnboarding lastPrivacyNoticeVersionDisplayed](self, "lastPrivacyNoticeVersionDisplayed")}];
  [v5 encodeObject:v7 forKey:@"lastPrivacyNoticeVersionDisplayed"];

  v8 = [(GKPlayerInternalOnboarding *)self lastPersonalizationVersionDisplayed];
  [v5 encodeObject:v8 forKey:@"lastPersonalizationVersionDisplayed"];

  v9 = [(GKPlayerInternalOnboarding *)self lastProfilePrivacyVersionDisplayed];
  [v5 encodeObject:v9 forKey:@"lastProfilePrivacyVersionDisplayed"];

  v10 = [(GKPlayerInternalOnboarding *)self lastFriendSuggestionsVersionDisplayed];
  [v5 encodeObject:v10 forKey:@"lastFriendSuggestionsVersionDisplayed"];

  v11 = [(GKPlayerInternalOnboarding *)self lastContactsIntegrationConsentVersionDisplayed];
  [v5 encodeObject:v11 forKey:@"lastContactsIntegrationConsentVersionDisplayed"];
}

- (GKPlayerInternalOnboarding)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = GKPlayerInternalOnboarding;
  v5 = [(GKPlayerInternalOnboarding *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastWelcomeWhatsNewCopyVersionDisplayed"];
    v5->_lastWelcomeWhatsNewCopyVersionDisplayed = [v6 unsignedIntValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastPrivacyNoticeVersionDisplayed"];
    v5->_lastPrivacyNoticeVersionDisplayed = [v7 unsignedIntValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastPersonalizationVersionDisplayed"];
    lastPersonalizationVersionDisplayed = v5->_lastPersonalizationVersionDisplayed;
    v5->_lastPersonalizationVersionDisplayed = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastProfilePrivacyVersionDisplayed"];
    lastProfilePrivacyVersionDisplayed = v5->_lastProfilePrivacyVersionDisplayed;
    v5->_lastProfilePrivacyVersionDisplayed = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFriendSuggestionsVersionDisplayed"];
    lastFriendSuggestionsVersionDisplayed = v5->_lastFriendSuggestionsVersionDisplayed;
    v5->_lastFriendSuggestionsVersionDisplayed = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastContactsIntegrationConsentVersionDisplayed"];
    lastContactsIntegrationConsentVersionDisplayed = v5->_lastContactsIntegrationConsentVersionDisplayed;
    v5->_lastContactsIntegrationConsentVersionDisplayed = v14;
  }

  return v5;
}

- (BOOL)shouldShowPersonalizationScreenIsUsingDefaultNickname:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = +[GKPreferences shared];
  if ([v5 isAccountModificationRestricted])
  {

LABEL_3:
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "shouldShowPersonalizationScreen? NO -- Avatar & Nickname and Profile Privacy Changes are restricted.", &v22, 2u);
    }

LABEL_16:
    LOBYTE(v3) = 0;
    goto LABEL_17;
  }

  v8 = +[GKPreferences shared];
  if ([v8 isProfileModificationRestricted])
  {
    v9 = +[GKPreferences shared];
    v10 = [v9 isProfilePrivacyModificationRestricted];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v11 = [(GKPlayerInternalOnboarding *)self lastPersonalizationVersionDisplayed];
  v12 = [v11 length];

  if (v12)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [(GKPlayerInternalOnboarding *)self lastPersonalizationVersionDisplayed];
      v22 = 138412290;
      v23 = v16;
      _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "shouldShowPersonalizationScreen? NO -- lastPersonalizationVersionDisplayed=%@", &v22, 0xCu);
    }

    goto LABEL_16;
  }

  if (!os_log_GKGeneral)
  {
    v19 = GKOSLoggers();
  }

  v20 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v21 = @"NO";
    if (v3)
    {
      v21 = @"YES";
    }

    v22 = 138412290;
    v23 = v21;
    _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "shouldShowPersonalizationScreen? %@", &v22, 0xCu);
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)hasAcknowledgedLatestGDPR
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[GKPrivacyContentVersion currentVersion];
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithUnsignedInteger:{-[GKPlayerInternalOnboarding lastPrivacyNoticeVersionDisplayed](self, "lastPrivacyNoticeVersionDisplayed")}];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "hasAcknowledgedLatestGDPR Local State=%@ VS OBPrivacyFlow=%@", &v12, 0x16u);
  }

  result = [(GKPlayerInternalOnboarding *)self lastPrivacyNoticeVersionDisplayed]>= v3;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldShowFriendSuggestionsScreen
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[GKPreferences shared];
  v4 = [v3 isFriendRequestsRestricted];

  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "shouldShowFriendSuggestionsScreen? NO -- Adding Friends is restricted.", &v17, 2u);
    }

    v7 = 0;
  }

  else
  {
    v8 = [(GKPlayerInternalOnboarding *)self lastFriendSuggestionsVersionDisplayed];
    v9 = [v8 length];
    v7 = v9 == 0;

    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      if (v9)
      {
        v12 = @"NO";
      }

      else
      {
        v12 = @"YES";
      }

      v13 = v11;
      v14 = [(GKPlayerInternalOnboarding *)self lastFriendSuggestionsVersionDisplayed];
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "shouldShowFriendSuggestionsScreen? %@ -- lastFriendSuggestionsVersionDisplayed=%@", &v17, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)shouldShowContactsIntegrationConsentScreenIsUsingDefaultContactsIntegrationConsent:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(GKPlayerInternalOnboarding *)self lastContactsIntegrationConsentVersionDisplayed];
  v6 = [v5 length];

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [(GKPlayerInternalOnboarding *)self lastContactsIntegrationConsentVersionDisplayed];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "shouldShowContactsIntegrationConsentScreen? NO -- lastContactsIntegrationConsentVersionDisplayed=%@", &v16, 0xCu);
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKOnboarding;
    if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (v3)
      {
        v13 = @"YES";
      }

      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "shouldShowContactsIntegrationConsentScreen? %@", &v16, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)shouldShowAnyOnboardingScreenForBundleIdentifier:(id)a3 IsUsingDefaultNickname:(BOOL)a4 isUsingDefaultPrivacyVisibility:(BOOL)a5 isUsingDefaultContactsIntegrationConsent:(BOOL)a6
{
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKOnboarding;
  if (os_log_type_enabled(os_log_GKOnboarding, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "shouldShowAnyOnboardingScreen? NO, in favor of the new onboarding in the overlay.", v10, 2u);
  }

  return 0;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = GKPlayerInternalOnboarding;
  v3 = [(GKPlayerInternalOnboarding *)&v12 description];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[GKPlayerInternalOnboarding lastWelcomeWhatsNewCopyVersionDisplayed](self, "lastWelcomeWhatsNewCopyVersionDisplayed")}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[GKPlayerInternalOnboarding lastPrivacyNoticeVersionDisplayed](self, "lastPrivacyNoticeVersionDisplayed")}];
  v6 = [(GKPlayerInternalOnboarding *)self lastPersonalizationVersionDisplayed];
  v7 = [(GKPlayerInternalOnboarding *)self lastProfilePrivacyVersionDisplayed];
  v8 = [(GKPlayerInternalOnboarding *)self lastFriendSuggestionsVersionDisplayed];
  v9 = [(GKPlayerInternalOnboarding *)self lastContactsIntegrationConsentVersionDisplayed];
  v10 = [v3 stringByAppendingFormat:@"{\n\t\tlastWelcomeWhatsNewCopyVersionDisplayed: %@\n\t\tlastPrivacyNoticeVersionDisplayed: %@\n\t\tlastPersonalizationVersionDisplayed: %@\n\t\tlastProfilePrivacyVersionDisplayed: %@\n\t\tlastFriendSuggestionsVersionDisplayed: %@\n\t\tlastContactsIntegrationConsentVersionDisplayed: %@\n}", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end