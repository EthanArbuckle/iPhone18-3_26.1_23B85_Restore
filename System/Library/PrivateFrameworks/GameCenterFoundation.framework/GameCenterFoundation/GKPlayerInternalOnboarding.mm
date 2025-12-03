@interface GKPlayerInternalOnboarding
- (BOOL)hasAcknowledgedLatestGDPR;
- (BOOL)shouldShowAnyOnboardingScreenForBundleIdentifier:(id)identifier IsUsingDefaultNickname:(BOOL)nickname isUsingDefaultPrivacyVisibility:(BOOL)visibility isUsingDefaultContactsIntegrationConsent:(BOOL)consent;
- (BOOL)shouldShowContactsIntegrationConsentScreenIsUsingDefaultContactsIntegrationConsent:(BOOL)consent;
- (BOOL)shouldShowFriendSuggestionsScreen;
- (BOOL)shouldShowPersonalizationScreenIsUsingDefaultNickname:(BOOL)nickname;
- (GKPlayerInternalOnboarding)initWithCoder:(id)coder;
- (GKPlayerInternalOnboarding)initWithLastWelcomeWhatsNewCopyVersionDisplayed:(unint64_t)displayed lastPrivacyNoticeVersionDisplayed:(unint64_t)versionDisplayed lastPersonalizationVersionDisplayed:(id)personalizationVersionDisplayed lastProfilePrivacyVersionDisplayed:(id)privacyVersionDisplayed lastFriendSuggestionsVersionDisplayed:(id)suggestionsVersionDisplayed lastContactsIntegrationConsentVersionDisplayed:(id)consentVersionDisplayed;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKPlayerInternalOnboarding

- (GKPlayerInternalOnboarding)initWithLastWelcomeWhatsNewCopyVersionDisplayed:(unint64_t)displayed lastPrivacyNoticeVersionDisplayed:(unint64_t)versionDisplayed lastPersonalizationVersionDisplayed:(id)personalizationVersionDisplayed lastProfilePrivacyVersionDisplayed:(id)privacyVersionDisplayed lastFriendSuggestionsVersionDisplayed:(id)suggestionsVersionDisplayed lastContactsIntegrationConsentVersionDisplayed:(id)consentVersionDisplayed
{
  personalizationVersionDisplayedCopy = personalizationVersionDisplayed;
  privacyVersionDisplayedCopy = privacyVersionDisplayed;
  suggestionsVersionDisplayedCopy = suggestionsVersionDisplayed;
  consentVersionDisplayedCopy = consentVersionDisplayed;
  v22.receiver = self;
  v22.super_class = GKPlayerInternalOnboarding;
  v18 = [(GKPlayerInternalOnboarding *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_lastWelcomeWhatsNewCopyVersionDisplayed = displayed;
    v18->_lastPrivacyNoticeVersionDisplayed = versionDisplayed;
    objc_storeStrong(&v18->_lastPersonalizationVersionDisplayed, personalizationVersionDisplayed);
    objc_storeStrong(&v19->_lastProfilePrivacyVersionDisplayed, privacyVersionDisplayed);
    objc_storeStrong(&v19->_lastFriendSuggestionsVersionDisplayed, suggestionsVersionDisplayed);
    objc_storeStrong(&v19->_lastContactsIntegrationConsentVersionDisplayed, consentVersionDisplayed);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[GKPlayerInternalOnboarding lastWelcomeWhatsNewCopyVersionDisplayed](self, "lastWelcomeWhatsNewCopyVersionDisplayed")}];
  [coderCopy encodeObject:v6 forKey:@"lastWelcomeWhatsNewCopyVersionDisplayed"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[GKPlayerInternalOnboarding lastPrivacyNoticeVersionDisplayed](self, "lastPrivacyNoticeVersionDisplayed")}];
  [coderCopy encodeObject:v7 forKey:@"lastPrivacyNoticeVersionDisplayed"];

  lastPersonalizationVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastPersonalizationVersionDisplayed];
  [coderCopy encodeObject:lastPersonalizationVersionDisplayed forKey:@"lastPersonalizationVersionDisplayed"];

  lastProfilePrivacyVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastProfilePrivacyVersionDisplayed];
  [coderCopy encodeObject:lastProfilePrivacyVersionDisplayed forKey:@"lastProfilePrivacyVersionDisplayed"];

  lastFriendSuggestionsVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastFriendSuggestionsVersionDisplayed];
  [coderCopy encodeObject:lastFriendSuggestionsVersionDisplayed forKey:@"lastFriendSuggestionsVersionDisplayed"];

  lastContactsIntegrationConsentVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastContactsIntegrationConsentVersionDisplayed];
  [coderCopy encodeObject:lastContactsIntegrationConsentVersionDisplayed forKey:@"lastContactsIntegrationConsentVersionDisplayed"];
}

- (GKPlayerInternalOnboarding)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = GKPlayerInternalOnboarding;
  v5 = [(GKPlayerInternalOnboarding *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastWelcomeWhatsNewCopyVersionDisplayed"];
    v5->_lastWelcomeWhatsNewCopyVersionDisplayed = [v6 unsignedIntValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastPrivacyNoticeVersionDisplayed"];
    v5->_lastPrivacyNoticeVersionDisplayed = [v7 unsignedIntValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastPersonalizationVersionDisplayed"];
    lastPersonalizationVersionDisplayed = v5->_lastPersonalizationVersionDisplayed;
    v5->_lastPersonalizationVersionDisplayed = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastProfilePrivacyVersionDisplayed"];
    lastProfilePrivacyVersionDisplayed = v5->_lastProfilePrivacyVersionDisplayed;
    v5->_lastProfilePrivacyVersionDisplayed = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFriendSuggestionsVersionDisplayed"];
    lastFriendSuggestionsVersionDisplayed = v5->_lastFriendSuggestionsVersionDisplayed;
    v5->_lastFriendSuggestionsVersionDisplayed = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastContactsIntegrationConsentVersionDisplayed"];
    lastContactsIntegrationConsentVersionDisplayed = v5->_lastContactsIntegrationConsentVersionDisplayed;
    v5->_lastContactsIntegrationConsentVersionDisplayed = v14;
  }

  return v5;
}

- (BOOL)shouldShowPersonalizationScreenIsUsingDefaultNickname:(BOOL)nickname
{
  nicknameCopy = nickname;
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
    LOBYTE(nicknameCopy) = 0;
    goto LABEL_17;
  }

  v8 = +[GKPreferences shared];
  if ([v8 isProfileModificationRestricted])
  {
    v9 = +[GKPreferences shared];
    isProfilePrivacyModificationRestricted = [v9 isProfilePrivacyModificationRestricted];

    if (isProfilePrivacyModificationRestricted)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  lastPersonalizationVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastPersonalizationVersionDisplayed];
  v12 = [lastPersonalizationVersionDisplayed length];

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
      lastPersonalizationVersionDisplayed2 = [(GKPlayerInternalOnboarding *)self lastPersonalizationVersionDisplayed];
      v22 = 138412290;
      v23 = lastPersonalizationVersionDisplayed2;
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
    if (nicknameCopy)
    {
      v21 = @"YES";
    }

    v22 = 138412290;
    v23 = v21;
    _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "shouldShowPersonalizationScreen? %@", &v22, 0xCu);
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return nicknameCopy;
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
  isFriendRequestsRestricted = [v3 isFriendRequestsRestricted];

  if (isFriendRequestsRestricted)
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
    lastFriendSuggestionsVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastFriendSuggestionsVersionDisplayed];
    v9 = [lastFriendSuggestionsVersionDisplayed length];
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
      lastFriendSuggestionsVersionDisplayed2 = [(GKPlayerInternalOnboarding *)self lastFriendSuggestionsVersionDisplayed];
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = lastFriendSuggestionsVersionDisplayed2;
      _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "shouldShowFriendSuggestionsScreen? %@ -- lastFriendSuggestionsVersionDisplayed=%@", &v17, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)shouldShowContactsIntegrationConsentScreenIsUsingDefaultContactsIntegrationConsent:(BOOL)consent
{
  consentCopy = consent;
  v18 = *MEMORY[0x277D85DE8];
  lastContactsIntegrationConsentVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastContactsIntegrationConsentVersionDisplayed];
  v6 = [lastContactsIntegrationConsentVersionDisplayed length];

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
      lastContactsIntegrationConsentVersionDisplayed2 = [(GKPlayerInternalOnboarding *)self lastContactsIntegrationConsentVersionDisplayed];
      v16 = 138412290;
      v17 = lastContactsIntegrationConsentVersionDisplayed2;
      _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "shouldShowContactsIntegrationConsentScreen? NO -- lastContactsIntegrationConsentVersionDisplayed=%@", &v16, 0xCu);
    }

    LOBYTE(consentCopy) = 0;
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
      if (consentCopy)
      {
        v13 = @"YES";
      }

      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "shouldShowContactsIntegrationConsentScreen? %@", &v16, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return consentCopy;
}

- (BOOL)shouldShowAnyOnboardingScreenForBundleIdentifier:(id)identifier IsUsingDefaultNickname:(BOOL)nickname isUsingDefaultPrivacyVisibility:(BOOL)visibility isUsingDefaultContactsIntegrationConsent:(BOOL)consent
{
  identifierCopy = identifier;
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
  lastPersonalizationVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastPersonalizationVersionDisplayed];
  lastProfilePrivacyVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastProfilePrivacyVersionDisplayed];
  lastFriendSuggestionsVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastFriendSuggestionsVersionDisplayed];
  lastContactsIntegrationConsentVersionDisplayed = [(GKPlayerInternalOnboarding *)self lastContactsIntegrationConsentVersionDisplayed];
  v10 = [v3 stringByAppendingFormat:@"{\n\t\tlastWelcomeWhatsNewCopyVersionDisplayed: %@\n\t\tlastPrivacyNoticeVersionDisplayed: %@\n\t\tlastPersonalizationVersionDisplayed: %@\n\t\tlastProfilePrivacyVersionDisplayed: %@\n\t\tlastFriendSuggestionsVersionDisplayed: %@\n\t\tlastContactsIntegrationConsentVersionDisplayed: %@\n}", v4, v5, lastPersonalizationVersionDisplayed, lastProfilePrivacyVersionDisplayed, lastFriendSuggestionsVersionDisplayed, lastContactsIntegrationConsentVersionDisplayed];

  return v10;
}

@end