@interface BBSectionSubtypeParameters
- (BBSectionIcon)sectionIconOverride;
- (BBSectionSubtypeParameters)fallbackParameters;
- (BBSectionSubtypeParameters)initWithCoder:(id)a3;
- (BBSectionSubtypeParameters)initWithFallbackParameters:(id)a3;
- (BOOL)allowsAddingToLockScreenWhenUnlocked;
- (BOOL)allowsAutomaticRemovalFromLockScreen;
- (BOOL)allowsPersistentBannersInCarPlay;
- (BOOL)allowsSupplementaryActionsInCarPlay;
- (BOOL)canBeSilencedByMenuButtonPress;
- (BOOL)coalescesWhenLocked;
- (BOOL)hideDismissActionInCarPlay;
- (BOOL)ignoresQuietMode;
- (BOOL)inertWhenLocked;
- (BOOL)isEqual:(id)a3;
- (BOOL)playsMediaWhenRaised;
- (BOOL)playsSoundForModify;
- (BOOL)preservesUnlockActionCase;
- (BOOL)preventLock;
- (BOOL)prioritizeAtTopOfLockScreen;
- (BOOL)revealsAdditionalContentOnPresentation;
- (BOOL)shouldDismissBulletinWhenClosed;
- (BOOL)showsContactPhoto;
- (BOOL)showsUnreadIndicatorForNoticesFeed;
- (BOOL)suppressDelayForForwardedBulletins;
- (BOOL)suppressPresentationInAmbient;
- (BOOL)suppressesAlertsWhenAppIsActive;
- (BOOL)suppressesTitle;
- (BOOL)visuallyIndicatesWhenDateIsInFuture;
- (NSString)alternateActionLabel;
- (NSString)bannerAccessoryRemoteServiceBundleIdentifier;
- (NSString)bannerAccessoryRemoteViewControllerClassName;
- (NSString)fullAlternateActionLabel;
- (NSString)fullUnlockActionLabel;
- (NSString)hiddenPreviewsBodyPlaceholder;
- (NSString)missedBannerDescriptionFormat;
- (NSString)secondaryContentRemoteServiceBundleIdentifier;
- (NSString)secondaryContentRemoteViewControllerClassName;
- (NSString)subtypeSummaryFormat;
- (NSString)topic;
- (NSString)unlockActionLabel;
- (int64_t)iPodOutAlertType;
- (unint64_t)hash;
- (unint64_t)privacySettings;
- (unint64_t)subtypePriority;
- (void)encodeWithCoder:(id)a3;
- (void)setAlertSuppressionAppIDs:(id)a3;
- (void)setIPodOutAlertType:(int64_t)a3;
- (void)setPrivacySettings:(unint64_t)a3;
- (void)setSectionIconOverride:(id)a3;
- (void)setSubtypePriority:(unint64_t)a3;
@end

@implementation BBSectionSubtypeParameters

- (NSString)hiddenPreviewsBodyPlaceholder
{
  hiddenPreviewsBodyPlaceholder = self->_hiddenPreviewsBodyPlaceholder;
  if (hiddenPreviewsBodyPlaceholder)
  {
    v3 = hiddenPreviewsBodyPlaceholder;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained hiddenPreviewsBodyPlaceholder];
  }

  return v3;
}

- (NSString)subtypeSummaryFormat
{
  subtypeSummaryFormat = self->_subtypeSummaryFormat;
  if (subtypeSummaryFormat)
  {
    v3 = subtypeSummaryFormat;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained subtypeSummaryFormat];
  }

  return v3;
}

- (BBSectionIcon)sectionIconOverride
{
  sectionIconOverride = self->_sectionIconOverride;
  if (sectionIconOverride)
  {
    v3 = sectionIconOverride;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained sectionIconOverride];
  }

  return v3;
}

- (NSString)fullAlternateActionLabel
{
  fullAlternateActionLabel = self->_fullAlternateActionLabel;
  if (fullAlternateActionLabel)
  {
    v3 = fullAlternateActionLabel;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained fullAlternateActionLabel];
  }

  return v3;
}

- (NSString)fullUnlockActionLabel
{
  fullUnlockActionLabel = self->_fullUnlockActionLabel;
  if (fullUnlockActionLabel)
  {
    v3 = fullUnlockActionLabel;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained fullUnlockActionLabel];
  }

  return v3;
}

- (NSString)alternateActionLabel
{
  alternateActionLabel = self->_alternateActionLabel;
  if (alternateActionLabel)
  {
    v3 = alternateActionLabel;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained alternateActionLabel];
  }

  return v3;
}

- (NSString)unlockActionLabel
{
  unlockActionLabel = self->_unlockActionLabel;
  if (unlockActionLabel)
  {
    v3 = unlockActionLabel;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained unlockActionLabel];
  }

  return v3;
}

- (BOOL)allowsPersistentBannersInCarPlay
{
  if (self->_boxedAllowsPersistentBannersInCarPlay)
  {
    boxedAllowsPersistentBannersInCarPlay = self->_boxedAllowsPersistentBannersInCarPlay;

    return [(NSNumber *)boxedAllowsPersistentBannersInCarPlay BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained allowsPersistentBannersInCarPlay];

    return v6;
  }
}

- (BOOL)inertWhenLocked
{
  if (self->_boxedInertWhenLocked)
  {
    boxedInertWhenLocked = self->_boxedInertWhenLocked;

    return [(NSNumber *)boxedInertWhenLocked BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained inertWhenLocked];

    return v6;
  }
}

- (BOOL)allowsAutomaticRemovalFromLockScreen
{
  if (self->_boxedAllowsAutomaticRemovalFromLockScreen)
  {
    boxedAllowsAutomaticRemovalFromLockScreen = self->_boxedAllowsAutomaticRemovalFromLockScreen;

    return [(NSNumber *)boxedAllowsAutomaticRemovalFromLockScreen BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained allowsAutomaticRemovalFromLockScreen];

    return v6;
  }
}

- (BOOL)prioritizeAtTopOfLockScreen
{
  if (self->_boxedPrioritizeAtTopOfLockScreen)
  {
    boxedPrioritizeAtTopOfLockScreen = self->_boxedPrioritizeAtTopOfLockScreen;

    return [(NSNumber *)boxedPrioritizeAtTopOfLockScreen BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained prioritizeAtTopOfLockScreen];

    return v6;
  }
}

- (BOOL)canBeSilencedByMenuButtonPress
{
  if (self->_boxedCanBeSilencedByMenuButtonPress)
  {
    boxedCanBeSilencedByMenuButtonPress = self->_boxedCanBeSilencedByMenuButtonPress;

    return [(NSNumber *)boxedCanBeSilencedByMenuButtonPress BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained canBeSilencedByMenuButtonPress];

    return v6;
  }
}

- (BOOL)suppressesAlertsWhenAppIsActive
{
  if (self->_boxedSuppressesAlertsWhenAppIsActive)
  {
    boxedSuppressesAlertsWhenAppIsActive = self->_boxedSuppressesAlertsWhenAppIsActive;

    return [(NSNumber *)boxedSuppressesAlertsWhenAppIsActive BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained suppressesAlertsWhenAppIsActive];

    return v6;
  }
}

- (BOOL)revealsAdditionalContentOnPresentation
{
  if (self->_boxedRevealsAdditionalContentOnPresentation)
  {
    boxedRevealsAdditionalContentOnPresentation = self->_boxedRevealsAdditionalContentOnPresentation;

    return [(NSNumber *)boxedRevealsAdditionalContentOnPresentation BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained revealsAdditionalContentOnPresentation];

    return v6;
  }
}

- (unint64_t)privacySettings
{
  if (self->_boxedPrivacySettings)
  {
    boxedPrivacySettings = self->_boxedPrivacySettings;

    return [(NSNumber *)boxedPrivacySettings unsignedIntegerValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained privacySettings];

    return v6;
  }
}

- (BOOL)coalescesWhenLocked
{
  if (self->_boxedCoalescesWhenLocked)
  {
    boxedCoalescesWhenLocked = self->_boxedCoalescesWhenLocked;

    return [(NSNumber *)boxedCoalescesWhenLocked BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained coalescesWhenLocked];

    return v6;
  }
}

- (BOOL)preventLock
{
  if (self->_boxedPreventLock)
  {
    boxedPreventLock = self->_boxedPreventLock;

    return [(NSNumber *)boxedPreventLock BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained preventLock];

    return v6;
  }
}

- (BOOL)allowsSupplementaryActionsInCarPlay
{
  if (self->_boxedAllowsSupplementaryActionsInCarPlay)
  {
    boxedAllowsSupplementaryActionsInCarPlay = self->_boxedAllowsSupplementaryActionsInCarPlay;

    return [(NSNumber *)boxedAllowsSupplementaryActionsInCarPlay BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained allowsSupplementaryActionsInCarPlay];

    return v6;
  }
}

- (BOOL)playsMediaWhenRaised
{
  if (self->_boxedPlaysMediaWhenRaised)
  {
    boxedPlaysMediaWhenRaised = self->_boxedPlaysMediaWhenRaised;

    return [(NSNumber *)boxedPlaysMediaWhenRaised BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained playsMediaWhenRaised];

    return v6;
  }
}

- (BOOL)hideDismissActionInCarPlay
{
  if (self->_boxedHideDismissActionInCarPlay)
  {
    boxedHideDismissActionInCarPlay = self->_boxedHideDismissActionInCarPlay;

    return [(NSNumber *)boxedHideDismissActionInCarPlay BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained hideDismissActionInCarPlay];

    return v6;
  }
}

- (BOOL)suppressPresentationInAmbient
{
  if (self->_boxedSuppressPresentationInAmbient)
  {
    boxedSuppressPresentationInAmbient = self->_boxedSuppressPresentationInAmbient;

    return [(NSNumber *)boxedSuppressPresentationInAmbient BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained suppressPresentationInAmbient];

    return v6;
  }
}

- (BOOL)shouldDismissBulletinWhenClosed
{
  if (self->_boxedShouldDismissBulletinWhenClosed)
  {
    boxedShouldDismissBulletinWhenClosed = self->_boxedShouldDismissBulletinWhenClosed;

    return [(NSNumber *)boxedShouldDismissBulletinWhenClosed BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained shouldDismissBulletinWhenClosed];

    return v6;
  }
}

- (BBSectionSubtypeParameters)initWithFallbackParameters:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BBSectionSubtypeParameters;
  v5 = [(BBSectionSubtypeParameters *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BBSectionSubtypeParameters *)v5 setFallbackParameters:v4];
  }

  return v6;
}

- (NSString)topic
{
  topic = self->_topic;
  if (topic)
  {
    v3 = topic;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained topic];
  }

  return v3;
}

- (NSString)missedBannerDescriptionFormat
{
  missedBannerDescriptionFormat = self->_missedBannerDescriptionFormat;
  if (missedBannerDescriptionFormat)
  {
    v3 = missedBannerDescriptionFormat;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained missedBannerDescriptionFormat];
  }

  return v3;
}

- (void)setSectionIconOverride:(id)a3
{
  v5 = a3;
  sectionIconOverride = self->_sectionIconOverride;
  p_sectionIconOverride = &self->_sectionIconOverride;
  if (sectionIconOverride != v5)
  {
    v8 = v5;
    objc_storeStrong(p_sectionIconOverride, a3);
    v5 = v8;
  }
}

- (NSString)bannerAccessoryRemoteViewControllerClassName
{
  bannerAccessoryRemoteViewControllerClassName = self->_bannerAccessoryRemoteViewControllerClassName;
  if (bannerAccessoryRemoteViewControllerClassName)
  {
    v3 = bannerAccessoryRemoteViewControllerClassName;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained bannerAccessoryRemoteViewControllerClassName];
  }

  return v3;
}

- (NSString)bannerAccessoryRemoteServiceBundleIdentifier
{
  bannerAccessoryRemoteServiceBundleIdentifier = self->_bannerAccessoryRemoteServiceBundleIdentifier;
  if (bannerAccessoryRemoteServiceBundleIdentifier)
  {
    v3 = bannerAccessoryRemoteServiceBundleIdentifier;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained bannerAccessoryRemoteServiceBundleIdentifier];
  }

  return v3;
}

- (NSString)secondaryContentRemoteViewControllerClassName
{
  secondaryContentRemoteViewControllerClassName = self->_secondaryContentRemoteViewControllerClassName;
  if (secondaryContentRemoteViewControllerClassName)
  {
    v3 = secondaryContentRemoteViewControllerClassName;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained secondaryContentRemoteViewControllerClassName];
  }

  return v3;
}

- (NSString)secondaryContentRemoteServiceBundleIdentifier
{
  secondaryContentRemoteServiceBundleIdentifier = self->_secondaryContentRemoteServiceBundleIdentifier;
  if (secondaryContentRemoteServiceBundleIdentifier)
  {
    v3 = secondaryContentRemoteServiceBundleIdentifier;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v3 = [WeakRetained secondaryContentRemoteServiceBundleIdentifier];
  }

  return v3;
}

- (BOOL)preservesUnlockActionCase
{
  if (self->_boxedPreservesUnlockActionCase)
  {
    boxedPreservesUnlockActionCase = self->_boxedPreservesUnlockActionCase;

    return [(NSNumber *)boxedPreservesUnlockActionCase BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained preservesUnlockActionCase];

    return v6;
  }
}

- (BOOL)visuallyIndicatesWhenDateIsInFuture
{
  if (self->_boxedVisuallyIndicatesWhenDateIsInFuture)
  {
    boxedVisuallyIndicatesWhenDateIsInFuture = self->_boxedVisuallyIndicatesWhenDateIsInFuture;

    return [(NSNumber *)boxedVisuallyIndicatesWhenDateIsInFuture BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained visuallyIndicatesWhenDateIsInFuture];

    return v6;
  }
}

- (BOOL)ignoresQuietMode
{
  if (self->_boxedIgnoresQuietMode)
  {
    boxedIgnoresQuietMode = self->_boxedIgnoresQuietMode;

    return [(NSNumber *)boxedIgnoresQuietMode BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained ignoresQuietMode];

    return v6;
  }
}

- (BOOL)suppressesTitle
{
  if (self->_boxedSuppressesTitle)
  {
    boxedSuppressesTitle = self->_boxedSuppressesTitle;

    return [(NSNumber *)boxedSuppressesTitle BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained suppressesTitle];

    return v6;
  }
}

- (BOOL)showsUnreadIndicatorForNoticesFeed
{
  if (self->_boxedShowsUnreadIndicatorForNoticesFeed)
  {
    boxedShowsUnreadIndicatorForNoticesFeed = self->_boxedShowsUnreadIndicatorForNoticesFeed;

    return [(NSNumber *)boxedShowsUnreadIndicatorForNoticesFeed BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained showsUnreadIndicatorForNoticesFeed];

    return v6;
  }
}

- (BOOL)showsContactPhoto
{
  if (self->_boxedShowsContactPhoto)
  {
    boxedShowsContactPhoto = self->_boxedShowsContactPhoto;

    return [(NSNumber *)boxedShowsContactPhoto BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained showsContactPhoto];

    return v6;
  }
}

- (BOOL)playsSoundForModify
{
  if (self->_boxedPlaysSoundForModify)
  {
    boxedPlaysSoundForModify = self->_boxedPlaysSoundForModify;

    return [(NSNumber *)boxedPlaysSoundForModify BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained playsSoundForModify];

    return v6;
  }
}

- (unint64_t)subtypePriority
{
  if (self->_boxedSubtypePriority)
  {
    boxedSubtypePriority = self->_boxedSubtypePriority;

    return [(NSNumber *)boxedSubtypePriority unsignedIntegerValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained subtypePriority];

    return v6;
  }
}

- (int64_t)iPodOutAlertType
{
  if (self->_boxedIPodOutAlertType)
  {
    boxedIPodOutAlertType = self->_boxedIPodOutAlertType;

    return [(NSNumber *)boxedIPodOutAlertType integerValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained iPodOutAlertType];

    return v6;
  }
}

- (BOOL)allowsAddingToLockScreenWhenUnlocked
{
  if (self->_boxedAllowsAddingToLockScreenWhenUnlocked)
  {
    boxedAllowsAddingToLockScreenWhenUnlocked = self->_boxedAllowsAddingToLockScreenWhenUnlocked;

    return [(NSNumber *)boxedAllowsAddingToLockScreenWhenUnlocked BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained allowsAddingToLockScreenWhenUnlocked];

    return v6;
  }
}

- (void)setAlertSuppressionAppIDs:(id)a3
{
  v4 = [a3 count] != 0;

  [(BBSectionSubtypeParameters *)self setSuppressesAlertsWhenAppIsActive:v4];
}

- (BOOL)suppressDelayForForwardedBulletins
{
  if (self->_boxedSuppressDelayForForwardedBulletins)
  {
    boxedSuppressDelayForForwardedBulletins = self->_boxedSuppressDelayForForwardedBulletins;

    return [(NSNumber *)boxedSuppressDelayForForwardedBulletins BOOLValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    v6 = [WeakRetained suppressDelayForForwardedBulletins];

    return v6;
  }
}

- (void)setSubtypePriority:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(BBSectionSubtypeParameters *)self setBoxedSubtypePriority:v4];
}

- (void)setIPodOutAlertType:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(BBSectionSubtypeParameters *)self setBoxedIPodOutAlertType:v4];
}

- (void)setPrivacySettings:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(BBSectionSubtypeParameters *)self setBoxedPrivacySettings:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v47 = 1;
    goto LABEL_115;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v47 = 0;
    goto LABEL_115;
  }

  v5 = v4;
  v6 = [(BBSectionSubtypeParameters *)self hiddenPreviewsBodyPlaceholder];
  v161 = [(BBSectionSubtypeParameters *)v5 hiddenPreviewsBodyPlaceholder];
  v162 = v6;
  v160 = BSEqualObjects();
  if (v160 && ([(BBSectionSubtypeParameters *)self subtypeSummaryFormat], v8 = objc_claimAutoreleasedReturnValue(), [(BBSectionSubtypeParameters *)v5 subtypeSummaryFormat], v144 = objc_claimAutoreleasedReturnValue(), v145 = v8, BSEqualObjects()))
  {
    v9 = [(BBSectionSubtypeParameters *)self topic];
    [(BBSectionSubtypeParameters *)v5 topic];
    v140 = v141 = v9;
    if (BSEqualObjects())
    {
      v10 = [(BBSectionSubtypeParameters *)self missedBannerDescriptionFormat];
      [(BBSectionSubtypeParameters *)v5 missedBannerDescriptionFormat];
      v138 = v139 = v10;
      if (BSEqualObjects())
      {
        v11 = [(BBSectionSubtypeParameters *)self fullUnlockActionLabel];
        [(BBSectionSubtypeParameters *)v5 fullUnlockActionLabel];
        v136 = v137 = v11;
        if (BSEqualObjects())
        {
          v12 = [(BBSectionSubtypeParameters *)self unlockActionLabel];
          [(BBSectionSubtypeParameters *)v5 unlockActionLabel];
          v134 = v135 = v12;
          if (BSEqualObjects())
          {
            v13 = [(BBSectionSubtypeParameters *)self fullAlternateActionLabel];
            v132 = [(BBSectionSubtypeParameters *)v5 fullAlternateActionLabel];
            v133 = v13;
            if (BSEqualObjects())
            {
              v14 = [(BBSectionSubtypeParameters *)self alternateActionLabel];
              v130 = [(BBSectionSubtypeParameters *)v5 alternateActionLabel];
              v131 = v14;
              if (BSEqualObjects())
              {
                v15 = [(BBSectionSubtypeParameters *)self boxedSuppressesAlertsWhenAppIsActive];
                v128 = [(BBSectionSubtypeParameters *)v5 boxedSuppressesAlertsWhenAppIsActive];
                v129 = v15;
                if (BSEqualObjects())
                {
                  v16 = [(BBSectionSubtypeParameters *)self sectionIconOverride];
                  v126 = [(BBSectionSubtypeParameters *)v5 sectionIconOverride];
                  v127 = v16;
                  if (BSEqualObjects())
                  {
                    v17 = [(BBSectionSubtypeParameters *)self boxedCoalescesWhenLocked];
                    v124 = [(BBSectionSubtypeParameters *)v5 boxedCoalescesWhenLocked];
                    v125 = v17;
                    if (BSEqualObjects())
                    {
                      v18 = [(BBSectionSubtypeParameters *)self boxedInertWhenLocked];
                      v122 = [(BBSectionSubtypeParameters *)v5 boxedInertWhenLocked];
                      v123 = v18;
                      if (BSEqualObjects())
                      {
                        v19 = [(BBSectionSubtypeParameters *)self boxedPreservesUnlockActionCase];
                        v142 = v5;
                        v120 = [(BBSectionSubtypeParameters *)v5 boxedPreservesUnlockActionCase];
                        v121 = v19;
                        if (BSEqualObjects())
                        {
                          v20 = [(BBSectionSubtypeParameters *)self boxedVisuallyIndicatesWhenDateIsInFuture];
                          v118 = [(BBSectionSubtypeParameters *)v5 boxedVisuallyIndicatesWhenDateIsInFuture];
                          v119 = v20;
                          if (BSEqualObjects())
                          {
                            v21 = [(BBSectionSubtypeParameters *)self boxedCanBeSilencedByMenuButtonPress];
                            v116 = [(BBSectionSubtypeParameters *)v5 boxedCanBeSilencedByMenuButtonPress];
                            v117 = v21;
                            if (BSEqualObjects())
                            {
                              v22 = [(BBSectionSubtypeParameters *)self boxedPreventLock];
                              v114 = [(BBSectionSubtypeParameters *)v5 boxedPreventLock];
                              v115 = v22;
                              if (BSEqualObjects())
                              {
                                v23 = [(BBSectionSubtypeParameters *)self boxedIgnoresQuietMode];
                                v112 = [(BBSectionSubtypeParameters *)v5 boxedIgnoresQuietMode];
                                v113 = v23;
                                if (BSEqualObjects())
                                {
                                  v24 = [(BBSectionSubtypeParameters *)self boxedSuppressesTitle];
                                  v110 = [(BBSectionSubtypeParameters *)v5 boxedSuppressesTitle];
                                  v111 = v24;
                                  if (BSEqualObjects())
                                  {
                                    v25 = [(BBSectionSubtypeParameters *)self boxedShowsUnreadIndicatorForNoticesFeed];
                                    v108 = [(BBSectionSubtypeParameters *)v5 boxedShowsUnreadIndicatorForNoticesFeed];
                                    v109 = v25;
                                    if (BSEqualObjects())
                                    {
                                      v26 = [(BBSectionSubtypeParameters *)self boxedShowsContactPhoto];
                                      v106 = [(BBSectionSubtypeParameters *)v5 boxedShowsContactPhoto];
                                      v107 = v26;
                                      if (BSEqualObjects())
                                      {
                                        v27 = [(BBSectionSubtypeParameters *)self boxedPlaysSoundForModify];
                                        v104 = [(BBSectionSubtypeParameters *)v142 boxedPlaysSoundForModify];
                                        v105 = v27;
                                        if (BSEqualObjects())
                                        {
                                          v28 = [(BBSectionSubtypeParameters *)self boxedSubtypePriority];
                                          v102 = [(BBSectionSubtypeParameters *)v142 boxedSubtypePriority];
                                          v103 = v28;
                                          if (BSEqualObjects())
                                          {
                                            v29 = [(BBSectionSubtypeParameters *)self boxedIPodOutAlertType];
                                            v100 = [(BBSectionSubtypeParameters *)v142 boxedIPodOutAlertType];
                                            v101 = v29;
                                            if (BSEqualObjects())
                                            {
                                              v30 = [(BBSectionSubtypeParameters *)self boxedAllowsAutomaticRemovalFromLockScreen];
                                              v98 = [(BBSectionSubtypeParameters *)v142 boxedAllowsAutomaticRemovalFromLockScreen];
                                              v99 = v30;
                                              if (BSEqualObjects())
                                              {
                                                v31 = [(BBSectionSubtypeParameters *)self boxedAllowsAddingToLockScreenWhenUnlocked];
                                                v96 = [(BBSectionSubtypeParameters *)v142 boxedAllowsAddingToLockScreenWhenUnlocked];
                                                v97 = v31;
                                                if (BSEqualObjects())
                                                {
                                                  v32 = [(BBSectionSubtypeParameters *)self boxedPrioritizeAtTopOfLockScreen];
                                                  v94 = [(BBSectionSubtypeParameters *)v142 boxedPrioritizeAtTopOfLockScreen];
                                                  v95 = v32;
                                                  if (BSEqualObjects())
                                                  {
                                                    v33 = [(BBSectionSubtypeParameters *)self boxedRevealsAdditionalContentOnPresentation];
                                                    v92 = [(BBSectionSubtypeParameters *)v142 boxedRevealsAdditionalContentOnPresentation];
                                                    v93 = v33;
                                                    if (BSEqualObjects())
                                                    {
                                                      v34 = [(BBSectionSubtypeParameters *)self boxedPrivacySettings];
                                                      v90 = [(BBSectionSubtypeParameters *)v142 boxedPrivacySettings];
                                                      v91 = v34;
                                                      if (BSEqualObjects())
                                                      {
                                                        v35 = [(BBSectionSubtypeParameters *)self boxedShouldDismissBulletinWhenClosed];
                                                        v88 = [(BBSectionSubtypeParameters *)v142 boxedShouldDismissBulletinWhenClosed];
                                                        v89 = v35;
                                                        if (BSEqualObjects())
                                                        {
                                                          v36 = [(BBSectionSubtypeParameters *)self boxedAllowsPersistentBannersInCarPlay];
                                                          v86 = [(BBSectionSubtypeParameters *)v142 boxedAllowsPersistentBannersInCarPlay];
                                                          v87 = v36;
                                                          if (BSEqualObjects())
                                                          {
                                                            v37 = [(BBSectionSubtypeParameters *)self boxedAllowsSupplementaryActionsInCarPlay];
                                                            v84 = [(BBSectionSubtypeParameters *)v142 boxedAllowsSupplementaryActionsInCarPlay];
                                                            v85 = v37;
                                                            if (BSEqualObjects())
                                                            {
                                                              v38 = [(BBSectionSubtypeParameters *)self boxedPlaysMediaWhenRaised];
                                                              v82 = [(BBSectionSubtypeParameters *)v142 boxedPlaysMediaWhenRaised];
                                                              v83 = v38;
                                                              if (BSEqualObjects())
                                                              {
                                                                v39 = [(BBSectionSubtypeParameters *)self boxedSuppressDelayForForwardedBulletins];
                                                                v80 = [(BBSectionSubtypeParameters *)v142 boxedSuppressDelayForForwardedBulletins];
                                                                v81 = v39;
                                                                if (BSEqualObjects())
                                                                {
                                                                  v40 = [(BBSectionSubtypeParameters *)self boxedHideDismissActionInCarPlay];
                                                                  v78 = [(BBSectionSubtypeParameters *)v142 boxedHideDismissActionInCarPlay];
                                                                  v79 = v40;
                                                                  if (BSEqualObjects())
                                                                  {
                                                                    v41 = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteViewControllerClassName];
                                                                    v76 = [(BBSectionSubtypeParameters *)v142 bannerAccessoryRemoteViewControllerClassName];
                                                                    v77 = v41;
                                                                    if (BSEqualObjects())
                                                                    {
                                                                      v42 = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteServiceBundleIdentifier];
                                                                      v74 = [(BBSectionSubtypeParameters *)v142 bannerAccessoryRemoteServiceBundleIdentifier];
                                                                      v75 = v42;
                                                                      if (BSEqualObjects())
                                                                      {
                                                                        v43 = [(BBSectionSubtypeParameters *)self secondaryContentRemoteViewControllerClassName];
                                                                        v72 = [(BBSectionSubtypeParameters *)v142 secondaryContentRemoteViewControllerClassName];
                                                                        v73 = v43;
                                                                        if (BSEqualObjects())
                                                                        {
                                                                          v44 = [(BBSectionSubtypeParameters *)self secondaryContentRemoteServiceBundleIdentifier];
                                                                          v70 = [(BBSectionSubtypeParameters *)v142 secondaryContentRemoteServiceBundleIdentifier];
                                                                          v71 = v44;
                                                                          if (BSEqualObjects())
                                                                          {
                                                                            v45 = [(BBSectionSubtypeParameters *)self boxedSuppressPresentationInAmbient];
                                                                            v5 = v142;
                                                                            v46 = [(BBSectionSubtypeParameters *)v142 boxedSuppressPresentationInAmbient];
                                                                            v69 = v45;
                                                                            v47 = BSEqualObjects();
                                                                            v7 = v46;
                                                                            v48 = 1;
                                                                            *(&v159 + 1) = 0x100000001;
                                                                            *&v159 = 0x100000001;
                                                                            v49 = 1;
                                                                            v50 = 1;
                                                                            v51 = 1;
                                                                            v52 = 1;
                                                                            v157 = 1;
                                                                            v155 = 0x100000001;
                                                                            v154 = 0x100000001;
                                                                            v153 = 0x100000001;
                                                                            v152 = 0x100000001;
                                                                            v151 = 0x100000001;
                                                                            v150 = 0x100000001;
                                                                            v149 = 0x100000001;
                                                                            v148 = 0x100000001;
                                                                            v147 = 0x100000001;
                                                                            *&v146[8] = 1;
                                                                            *v146 = 0x100000001;
                                                                            v156 = 1;
                                                                            v158 = 1;
                                                                            v53 = 1;
                                                                            v54 = 1;
                                                                            v55 = 1;
                                                                            v56 = 1;
                                                                            goto LABEL_46;
                                                                          }

                                                                          v48 = 0;
                                                                          v47 = 0;
                                                                          *(&v159 + 1) = 0x100000001;
                                                                          *&v159 = 0x100000001;
                                                                          v49 = 1;
                                                                          v50 = 1;
                                                                          v51 = 1;
                                                                          v52 = 1;
                                                                          v157 = 1;
                                                                          v155 = 0x100000001;
                                                                          v154 = 0x100000001;
                                                                          v153 = 0x100000001;
                                                                          v152 = 0x100000001;
                                                                          v151 = 0x100000001;
                                                                          v150 = 0x100000001;
                                                                          v149 = 0x100000001;
                                                                          v148 = 0x100000001;
                                                                          v147 = 0x100000001;
                                                                          *&v146[8] = 1;
                                                                          *v146 = 0x100000001;
                                                                          v156 = 1;
                                                                          v158 = 1;
                                                                          v53 = 1;
                                                                          v54 = 1;
                                                                          v55 = 1;
                                                                          v56 = 1;
                                                                        }

                                                                        else
                                                                        {
                                                                          v56 = 0;
                                                                          v48 = 0;
                                                                          v47 = 0;
                                                                          *(&v159 + 1) = 0x100000001;
                                                                          *&v159 = 0x100000001;
                                                                          v49 = 1;
                                                                          v50 = 1;
                                                                          v51 = 1;
                                                                          v52 = 1;
                                                                          v157 = 1;
                                                                          v155 = 0x100000001;
                                                                          v154 = 0x100000001;
                                                                          v153 = 0x100000001;
                                                                          v152 = 0x100000001;
                                                                          v151 = 0x100000001;
                                                                          v150 = 0x100000001;
                                                                          v149 = 0x100000001;
                                                                          v148 = 0x100000001;
                                                                          v147 = 0x100000001;
                                                                          *&v146[8] = 1;
                                                                          *v146 = 0x100000001;
                                                                          v156 = 1;
                                                                          v158 = 1;
                                                                          v53 = 1;
                                                                          v54 = 1;
                                                                          v55 = 1;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v55 = 0;
                                                                        v56 = 0;
                                                                        v48 = 0;
                                                                        v47 = 0;
                                                                        *(&v159 + 1) = 0x100000001;
                                                                        *&v159 = 0x100000001;
                                                                        v49 = 1;
                                                                        v50 = 1;
                                                                        v51 = 1;
                                                                        v52 = 1;
                                                                        v157 = 1;
                                                                        v155 = 0x100000001;
                                                                        v154 = 0x100000001;
                                                                        v153 = 0x100000001;
                                                                        v152 = 0x100000001;
                                                                        v151 = 0x100000001;
                                                                        v150 = 0x100000001;
                                                                        v149 = 0x100000001;
                                                                        v148 = 0x100000001;
                                                                        v147 = 0x100000001;
                                                                        *&v146[8] = 1;
                                                                        *v146 = 0x100000001;
                                                                        v156 = 1;
                                                                        v158 = 1;
                                                                        v53 = 1;
                                                                        v54 = 1;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v54 = 0;
                                                                      v55 = 0;
                                                                      v56 = 0;
                                                                      v48 = 0;
                                                                      v47 = 0;
                                                                      *(&v159 + 1) = 0x100000001;
                                                                      *&v159 = 0x100000001;
                                                                      v49 = 1;
                                                                      v50 = 1;
                                                                      v51 = 1;
                                                                      v52 = 1;
                                                                      v157 = 1;
                                                                      v155 = 0x100000001;
                                                                      v154 = 0x100000001;
                                                                      v153 = 0x100000001;
                                                                      v152 = 0x100000001;
                                                                      v151 = 0x100000001;
                                                                      v150 = 0x100000001;
                                                                      v149 = 0x100000001;
                                                                      v148 = 0x100000001;
                                                                      v147 = 0x100000001;
                                                                      *&v146[8] = 1;
                                                                      *v146 = 0x100000001;
                                                                      v156 = 1;
                                                                      v158 = 1;
                                                                      v53 = 1;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v53 = 0;
                                                                    v54 = 0;
                                                                    v55 = 0;
                                                                    v56 = 0;
                                                                    v48 = 0;
                                                                    v47 = 0;
                                                                    *(&v159 + 1) = 0x100000001;
                                                                    *&v159 = 0x100000001;
                                                                    v49 = 1;
                                                                    v50 = 1;
                                                                    v51 = 1;
                                                                    v52 = 1;
                                                                    v157 = 1;
                                                                    v155 = 0x100000001;
                                                                    v154 = 0x100000001;
                                                                    v153 = 0x100000001;
                                                                    v152 = 0x100000001;
                                                                    v151 = 0x100000001;
                                                                    v150 = 0x100000001;
                                                                    v149 = 0x100000001;
                                                                    v148 = 0x100000001;
                                                                    v147 = 0x100000001;
                                                                    *&v146[8] = 1;
                                                                    *v146 = 0x100000001;
                                                                    v156 = 1;
                                                                    v158 = 1;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v53 = 0;
                                                                  v54 = 0;
                                                                  v55 = 0;
                                                                  v56 = 0;
                                                                  v48 = 0;
                                                                  v47 = 0;
                                                                  *(&v159 + 1) = 0x100000001;
                                                                  v158 = 0;
                                                                  *&v159 = 0x100000001;
                                                                  v49 = 1;
                                                                  v50 = 1;
                                                                  v51 = 1;
                                                                  v52 = 1;
                                                                  v157 = 1;
                                                                  v155 = 0x100000001;
                                                                  v154 = 0x100000001;
                                                                  v153 = 0x100000001;
                                                                  v152 = 0x100000001;
                                                                  v151 = 0x100000001;
                                                                  v150 = 0x100000001;
                                                                  v149 = 0x100000001;
                                                                  v148 = 0x100000001;
                                                                  v147 = 0x100000001;
                                                                  *&v146[8] = 1;
                                                                  *v146 = 0x100000001;
                                                                  v156 = 1;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v53 = 0;
                                                                v54 = 0;
                                                                v55 = 0;
                                                                v56 = 0;
                                                                v48 = 0;
                                                                v47 = 0;
                                                                *(&v159 + 1) = 0x100000001;
                                                                v158 = 0;
                                                                *&v159 = 0x100000001;
                                                                v49 = 1;
                                                                v50 = 1;
                                                                v51 = 1;
                                                                v52 = 1;
                                                                v156 = 0;
                                                                v157 = 1;
                                                                v154 = 0x100000001;
                                                                v153 = 0x100000001;
                                                                v152 = 0x100000001;
                                                                v151 = 0x100000001;
                                                                v150 = 0x100000001;
                                                                v149 = 0x100000001;
                                                                v148 = 0x100000001;
                                                                v147 = 0x100000001;
                                                                *&v146[8] = 1;
                                                                *v146 = 0x100000001;
                                                                v155 = 0x100000001;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v53 = 0;
                                                              v54 = 0;
                                                              v55 = 0;
                                                              v56 = 0;
                                                              v48 = 0;
                                                              v47 = 0;
                                                              *(&v159 + 1) = 0x100000001;
                                                              v158 = 0;
                                                              *&v159 = 0x100000001;
                                                              v49 = 1;
                                                              v50 = 1;
                                                              v51 = 1;
                                                              v52 = 1;
                                                              v156 = 0;
                                                              v157 = 1;
                                                              v155 = 0x100000000;
                                                              v153 = 0x100000001;
                                                              v152 = 0x100000001;
                                                              v151 = 0x100000001;
                                                              v150 = 0x100000001;
                                                              v149 = 0x100000001;
                                                              v148 = 0x100000001;
                                                              v147 = 0x100000001;
                                                              *&v146[8] = 1;
                                                              *v146 = 0x100000001;
                                                              v154 = 0x100000001;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v154 = 0x100000000;
                                                            v53 = 0;
                                                            v54 = 0;
                                                            v55 = 0;
                                                            v56 = 0;
                                                            v48 = 0;
                                                            v47 = 0;
                                                            *(&v159 + 1) = 0x100000001;
                                                            v158 = 0;
                                                            *&v159 = 0x100000001;
                                                            v49 = 1;
                                                            v50 = 1;
                                                            v51 = 1;
                                                            v52 = 1;
                                                            v156 = 0;
                                                            v157 = 1;
                                                            v155 = 0x100000000;
                                                            v152 = 0x100000001;
                                                            v151 = 0x100000001;
                                                            v150 = 0x100000001;
                                                            v149 = 0x100000001;
                                                            v148 = 0x100000001;
                                                            v147 = 0x100000001;
                                                            *&v146[8] = 1;
                                                            *v146 = 0x100000001;
                                                            v153 = 0x100000001;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v153 = 0x100000000;
                                                          v154 = 0x100000000;
                                                          v53 = 0;
                                                          v54 = 0;
                                                          v55 = 0;
                                                          v56 = 0;
                                                          v48 = 0;
                                                          v47 = 0;
                                                          *(&v159 + 1) = 0x100000001;
                                                          v158 = 0;
                                                          *&v159 = 0x100000001;
                                                          v49 = 1;
                                                          v50 = 1;
                                                          v51 = 1;
                                                          v52 = 1;
                                                          v156 = 0;
                                                          v157 = 1;
                                                          v155 = 0x100000000;
                                                          v151 = 0x100000001;
                                                          v150 = 0x100000001;
                                                          v149 = 0x100000001;
                                                          v148 = 0x100000001;
                                                          v147 = 0x100000001;
                                                          *&v146[8] = 1;
                                                          *v146 = 0x100000001;
                                                          v152 = 0x100000001;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v152 = 0x100000000;
                                                        v153 = 0x100000000;
                                                        v154 = 0x100000000;
                                                        v53 = 0;
                                                        v54 = 0;
                                                        v55 = 0;
                                                        v56 = 0;
                                                        v48 = 0;
                                                        v47 = 0;
                                                        *(&v159 + 1) = 0x100000001;
                                                        v158 = 0;
                                                        *&v159 = 0x100000001;
                                                        v49 = 1;
                                                        v50 = 1;
                                                        v51 = 1;
                                                        v52 = 1;
                                                        v156 = 0;
                                                        v157 = 1;
                                                        v155 = 0x100000000;
                                                        v150 = 0x100000001;
                                                        v149 = 0x100000001;
                                                        v148 = 0x100000001;
                                                        v147 = 0x100000001;
                                                        *&v146[8] = 1;
                                                        *v146 = 0x100000001;
                                                        v151 = 0x100000001;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v151 = 0x100000000;
                                                      v152 = 0x100000000;
                                                      v153 = 0x100000000;
                                                      v154 = 0x100000000;
                                                      v53 = 0;
                                                      v54 = 0;
                                                      v55 = 0;
                                                      v56 = 0;
                                                      v48 = 0;
                                                      v47 = 0;
                                                      *(&v159 + 1) = 0x100000001;
                                                      v158 = 0;
                                                      *&v159 = 0x100000001;
                                                      v49 = 1;
                                                      v50 = 1;
                                                      v51 = 1;
                                                      v52 = 1;
                                                      v156 = 0;
                                                      v157 = 1;
                                                      v155 = 0x100000000;
                                                      v149 = 0x100000001;
                                                      v148 = 0x100000001;
                                                      v147 = 0x100000001;
                                                      *&v146[8] = 1;
                                                      *v146 = 0x100000001;
                                                      v150 = 0x100000001;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v150 = 0x100000000;
                                                    v151 = 0x100000000;
                                                    v152 = 0x100000000;
                                                    v153 = 0x100000000;
                                                    v154 = 0x100000000;
                                                    v53 = 0;
                                                    v54 = 0;
                                                    v55 = 0;
                                                    v56 = 0;
                                                    v48 = 0;
                                                    v47 = 0;
                                                    *(&v159 + 1) = 0x100000001;
                                                    v158 = 0;
                                                    *&v159 = 0x100000001;
                                                    v49 = 1;
                                                    v50 = 1;
                                                    v51 = 1;
                                                    v52 = 1;
                                                    v156 = 0;
                                                    v157 = 1;
                                                    v155 = 0x100000000;
                                                    v148 = 0x100000001;
                                                    v147 = 0x100000001;
                                                    *&v146[8] = 1;
                                                    *v146 = 0x100000001;
                                                    v149 = 0x100000001;
                                                  }
                                                }

                                                else
                                                {
                                                  v149 = 0x100000000;
                                                  v150 = 0x100000000;
                                                  v151 = 0x100000000;
                                                  v152 = 0x100000000;
                                                  v153 = 0x100000000;
                                                  v154 = 0x100000000;
                                                  v53 = 0;
                                                  v54 = 0;
                                                  v55 = 0;
                                                  v56 = 0;
                                                  v48 = 0;
                                                  v47 = 0;
                                                  *(&v159 + 1) = 0x100000001;
                                                  v158 = 0;
                                                  *&v159 = 0x100000001;
                                                  v49 = 1;
                                                  v50 = 1;
                                                  v51 = 1;
                                                  v52 = 1;
                                                  v156 = 0;
                                                  v157 = 1;
                                                  v155 = 0x100000000;
                                                  v147 = 0x100000001;
                                                  *&v146[8] = 1;
                                                  *v146 = 0x100000001;
                                                  v148 = 0x100000001;
                                                }
                                              }

                                              else
                                              {
                                                v148 = 0x100000000;
                                                v149 = 0x100000000;
                                                v150 = 0x100000000;
                                                v151 = 0x100000000;
                                                v152 = 0x100000000;
                                                v153 = 0x100000000;
                                                v154 = 0x100000000;
                                                v53 = 0;
                                                v54 = 0;
                                                v55 = 0;
                                                v56 = 0;
                                                v48 = 0;
                                                v47 = 0;
                                                *(&v159 + 1) = 0x100000001;
                                                v158 = 0;
                                                *&v159 = 0x100000001;
                                                v49 = 1;
                                                v50 = 1;
                                                v51 = 1;
                                                v52 = 1;
                                                v156 = 0;
                                                v157 = 1;
                                                v155 = 0x100000000;
                                                *&v146[8] = 1;
                                                *v146 = 0x100000001;
                                                v147 = 0x100000001;
                                              }
                                            }

                                            else
                                            {
                                              v147 = 0x100000000;
                                              v148 = 0x100000000;
                                              v149 = 0x100000000;
                                              v150 = 0x100000000;
                                              v151 = 0x100000000;
                                              v152 = 0x100000000;
                                              v153 = 0x100000000;
                                              v154 = 0x100000000;
                                              v53 = 0;
                                              v54 = 0;
                                              v55 = 0;
                                              v56 = 0;
                                              v48 = 0;
                                              v47 = 0;
                                              *(&v159 + 1) = 0x100000001;
                                              v158 = 0;
                                              *&v159 = 0x100000001;
                                              v49 = 1;
                                              v50 = 1;
                                              v51 = 1;
                                              v52 = 1;
                                              v156 = 0;
                                              v157 = 1;
                                              v155 = 0x100000000;
                                              *&v146[8] = 1;
                                              *v146 = 0x100000001;
                                            }
                                          }

                                          else
                                          {
                                            v147 = 0x100000000;
                                            v148 = 0x100000000;
                                            v149 = 0x100000000;
                                            v150 = 0x100000000;
                                            v151 = 0x100000000;
                                            v152 = 0x100000000;
                                            v153 = 0x100000000;
                                            v154 = 0x100000000;
                                            v53 = 0;
                                            v54 = 0;
                                            v55 = 0;
                                            v56 = 0;
                                            v48 = 0;
                                            v47 = 0;
                                            *(&v159 + 1) = 0x100000001;
                                            v158 = 0;
                                            *&v159 = 0x100000001;
                                            v49 = 1;
                                            v50 = 1;
                                            v51 = 1;
                                            v52 = 1;
                                            v156 = 0;
                                            v157 = 1;
                                            v155 = 0x100000000;
                                            *&v146[8] = 1;
                                            *v146 = 1;
                                          }
                                        }

                                        else
                                        {
                                          *v146 = 0;
                                          v147 = 0x100000000;
                                          v148 = 0x100000000;
                                          v149 = 0x100000000;
                                          v150 = 0x100000000;
                                          v151 = 0x100000000;
                                          v152 = 0x100000000;
                                          v153 = 0x100000000;
                                          v154 = 0x100000000;
                                          v53 = 0;
                                          v54 = 0;
                                          v55 = 0;
                                          v56 = 0;
                                          v48 = 0;
                                          v47 = 0;
                                          *(&v159 + 1) = 0x100000001;
                                          v158 = 0;
                                          *&v159 = 0x100000001;
                                          v49 = 1;
                                          v50 = 1;
                                          v51 = 1;
                                          v52 = 1;
                                          v156 = 0;
                                          v157 = 1;
                                          v155 = 0x100000000;
                                          *&v146[8] = 1;
                                        }
                                      }

                                      else
                                      {
                                        memset(v146, 0, sizeof(v146));
                                        v147 = 0x100000000;
                                        v148 = 0x100000000;
                                        v149 = 0x100000000;
                                        v150 = 0x100000000;
                                        v151 = 0x100000000;
                                        v152 = 0x100000000;
                                        v153 = 0x100000000;
                                        v154 = 0x100000000;
                                        v53 = 0;
                                        v54 = 0;
                                        v55 = 0;
                                        v56 = 0;
                                        v48 = 0;
                                        v47 = 0;
                                        *(&v159 + 1) = 0x100000001;
                                        v158 = 0;
                                        *&v159 = 0x100000001;
                                        v49 = 1;
                                        v50 = 1;
                                        v51 = 1;
                                        v52 = 1;
                                        v156 = 0;
                                        v157 = 1;
                                        v155 = 0x100000000;
                                      }
                                    }

                                    else
                                    {
                                      v147 = 0;
                                      memset(v146, 0, sizeof(v146));
                                      v148 = 0x100000000;
                                      v149 = 0x100000000;
                                      v150 = 0x100000000;
                                      v151 = 0x100000000;
                                      v152 = 0x100000000;
                                      v153 = 0x100000000;
                                      v154 = 0x100000000;
                                      v53 = 0;
                                      v54 = 0;
                                      v55 = 0;
                                      v56 = 0;
                                      v48 = 0;
                                      v47 = 0;
                                      *(&v159 + 1) = 0x100000001;
                                      v158 = 0;
                                      *&v159 = 0x100000001;
                                      v49 = 1;
                                      v50 = 1;
                                      v51 = 1;
                                      v52 = 1;
                                      v156 = 0;
                                      v157 = 1;
                                      v155 = 0x100000000;
                                    }
                                  }

                                  else
                                  {
                                    v147 = 0;
                                    v148 = 0;
                                    memset(v146, 0, sizeof(v146));
                                    v149 = 0x100000000;
                                    v150 = 0x100000000;
                                    v151 = 0x100000000;
                                    v152 = 0x100000000;
                                    v153 = 0x100000000;
                                    v154 = 0x100000000;
                                    v53 = 0;
                                    v54 = 0;
                                    v55 = 0;
                                    v56 = 0;
                                    v48 = 0;
                                    v47 = 0;
                                    *(&v159 + 1) = 0x100000001;
                                    v158 = 0;
                                    *&v159 = 0x100000001;
                                    v49 = 1;
                                    v50 = 1;
                                    v51 = 1;
                                    v52 = 1;
                                    v156 = 0;
                                    v157 = 1;
                                    v155 = 0x100000000;
                                  }
                                }

                                else
                                {
                                  v148 = 0;
                                  v149 = 0;
                                  v147 = 0;
                                  memset(v146, 0, sizeof(v146));
                                  v150 = 0x100000000;
                                  v151 = 0x100000000;
                                  v152 = 0x100000000;
                                  v153 = 0x100000000;
                                  v154 = 0x100000000;
                                  v53 = 0;
                                  v54 = 0;
                                  v55 = 0;
                                  v56 = 0;
                                  v48 = 0;
                                  v47 = 0;
                                  *(&v159 + 1) = 0x100000001;
                                  v158 = 0;
                                  *&v159 = 0x100000001;
                                  v49 = 1;
                                  v50 = 1;
                                  v51 = 1;
                                  v52 = 1;
                                  v156 = 0;
                                  v157 = 1;
                                  v155 = 0x100000000;
                                }
                              }

                              else
                              {
                                v149 = 0;
                                v150 = 0;
                                v147 = 0;
                                v148 = 0;
                                memset(v146, 0, sizeof(v146));
                                v151 = 0x100000000;
                                v152 = 0x100000000;
                                v153 = 0x100000000;
                                v154 = 0x100000000;
                                v53 = 0;
                                v54 = 0;
                                v55 = 0;
                                v56 = 0;
                                v48 = 0;
                                v47 = 0;
                                *(&v159 + 1) = 0x100000001;
                                v158 = 0;
                                *&v159 = 0x100000001;
                                v49 = 1;
                                v50 = 1;
                                v51 = 1;
                                v52 = 1;
                                v156 = 0;
                                v157 = 1;
                                v155 = 0x100000000;
                              }
                            }

                            else
                            {
                              v150 = 0;
                              v151 = 0;
                              v148 = 0;
                              v149 = 0;
                              v147 = 0;
                              memset(v146, 0, sizeof(v146));
                              v152 = 0x100000000;
                              v153 = 0x100000000;
                              v154 = 0x100000000;
                              v53 = 0;
                              v54 = 0;
                              v55 = 0;
                              v56 = 0;
                              v48 = 0;
                              v47 = 0;
                              *(&v159 + 1) = 0x100000001;
                              v158 = 0;
                              *&v159 = 0x100000001;
                              v49 = 1;
                              v50 = 1;
                              v51 = 1;
                              v52 = 1;
                              v156 = 0;
                              v157 = 1;
                              v155 = 0x100000000;
                            }
                          }

                          else
                          {
                            v151 = 0;
                            v152 = 0;
                            v149 = 0;
                            v150 = 0;
                            v147 = 0;
                            v148 = 0;
                            memset(v146, 0, sizeof(v146));
                            v153 = 0x100000000;
                            v154 = 0x100000000;
                            v53 = 0;
                            v54 = 0;
                            v55 = 0;
                            v56 = 0;
                            v48 = 0;
                            v47 = 0;
                            *(&v159 + 1) = 0x100000001;
                            v158 = 0;
                            *&v159 = 0x100000001;
                            v49 = 1;
                            v50 = 1;
                            v51 = 1;
                            v52 = 1;
                            v156 = 0;
                            v157 = 1;
                            v155 = 0x100000000;
                          }
                        }

                        else
                        {
                          v152 = 0;
                          v153 = 0;
                          v150 = 0;
                          v151 = 0;
                          v148 = 0;
                          v149 = 0;
                          v147 = 0;
                          memset(v146, 0, sizeof(v146));
                          v154 = 0x100000000;
                          v53 = 0;
                          v54 = 0;
                          v55 = 0;
                          v56 = 0;
                          v48 = 0;
                          v47 = 0;
                          *(&v159 + 1) = 0x100000001;
                          v158 = 0;
                          *&v159 = 0x100000001;
                          v49 = 1;
                          v50 = 1;
                          v51 = 1;
                          v52 = 1;
                          v156 = 0;
                          v157 = 1;
                          v155 = 0x100000000;
                        }

                        v5 = v142;
                      }

                      else
                      {
                        v153 = 0;
                        v154 = 0;
                        v151 = 0;
                        v152 = 0;
                        v149 = 0;
                        v150 = 0;
                        v147 = 0;
                        v148 = 0;
                        memset(v146, 0, sizeof(v146));
                        v53 = 0;
                        v54 = 0;
                        v55 = 0;
                        v56 = 0;
                        v48 = 0;
                        v47 = 0;
                        *(&v159 + 1) = 0x100000001;
                        v158 = 0;
                        *&v159 = 0x100000001;
                        v49 = 1;
                        v50 = 1;
                        v51 = 1;
                        v52 = 1;
                        v156 = 0;
                        v157 = 1;
                        v155 = 0x100000000;
                      }
                    }

                    else
                    {
                      v154 = 0;
                      v155 = 0;
                      v152 = 0;
                      v153 = 0;
                      v150 = 0;
                      v151 = 0;
                      v148 = 0;
                      v149 = 0;
                      v147 = 0;
                      memset(v146, 0, sizeof(v146));
                      v53 = 0;
                      v54 = 0;
                      v55 = 0;
                      v56 = 0;
                      v48 = 0;
                      v47 = 0;
                      *(&v159 + 1) = 0x100000001;
                      v158 = 0;
                      *&v159 = 0x100000001;
                      v49 = 1;
                      v50 = 1;
                      v51 = 1;
                      v52 = 1;
                      v156 = 0;
                      v157 = 1;
                    }
                  }

                  else
                  {
                    v156 = 0;
                    v157 = 0;
                    v154 = 0;
                    v155 = 0;
                    v152 = 0;
                    v153 = 0;
                    v150 = 0;
                    v151 = 0;
                    v148 = 0;
                    v149 = 0;
                    v147 = 0;
                    memset(v146, 0, sizeof(v146));
                    v53 = 0;
                    v54 = 0;
                    v55 = 0;
                    v56 = 0;
                    v48 = 0;
                    v47 = 0;
                    *(&v159 + 1) = 0x100000001;
                    v158 = 0;
                    *&v159 = 0x100000001;
                    v49 = 1;
                    v50 = 1;
                    v51 = 1;
                    v52 = 1;
                  }
                }

                else
                {
                  v52 = 0;
                  v156 = 0;
                  v157 = 0;
                  v154 = 0;
                  v155 = 0;
                  v152 = 0;
                  v153 = 0;
                  v150 = 0;
                  v151 = 0;
                  v148 = 0;
                  v149 = 0;
                  v147 = 0;
                  memset(v146, 0, sizeof(v146));
                  v53 = 0;
                  v54 = 0;
                  v55 = 0;
                  v56 = 0;
                  v48 = 0;
                  v47 = 0;
                  *(&v159 + 1) = 0x100000001;
                  v158 = 0;
                  *&v159 = 0x100000001;
                  v49 = 1;
                  v50 = 1;
                  v51 = 1;
                }
              }

              else
              {
                v51 = 0;
                v52 = 0;
                v156 = 0;
                v157 = 0;
                v154 = 0;
                v155 = 0;
                v152 = 0;
                v153 = 0;
                v150 = 0;
                v151 = 0;
                v148 = 0;
                v149 = 0;
                v147 = 0;
                memset(v146, 0, sizeof(v146));
                v53 = 0;
                v54 = 0;
                v55 = 0;
                v56 = 0;
                v48 = 0;
                v47 = 0;
                *(&v159 + 1) = 0x100000001;
                v158 = 0;
                *&v159 = 0x100000001;
                v49 = 1;
                v50 = 1;
              }
            }

            else
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v156 = 0;
              v157 = 0;
              v154 = 0;
              v155 = 0;
              v152 = 0;
              v153 = 0;
              v150 = 0;
              v151 = 0;
              v148 = 0;
              v149 = 0;
              v147 = 0;
              memset(v146, 0, sizeof(v146));
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v48 = 0;
              v47 = 0;
              *(&v159 + 1) = 0x100000001;
              v158 = 0;
              *&v159 = 0x100000001;
              v49 = 1;
            }
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v156 = 0;
            v157 = 0;
            v154 = 0;
            v155 = 0;
            v152 = 0;
            v153 = 0;
            v150 = 0;
            v151 = 0;
            v148 = 0;
            v149 = 0;
            v147 = 0;
            memset(v146, 0, sizeof(v146));
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v48 = 0;
            v47 = 0;
            *(&v159 + 1) = 0x100000001;
            v158 = 0;
            *&v159 = 0x100000001;
          }
        }

        else
        {
          v158 = 0;
          *&v159 = 0x100000000;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v156 = 0;
          v157 = 0;
          v154 = 0;
          v155 = 0;
          v152 = 0;
          v153 = 0;
          v150 = 0;
          v151 = 0;
          v148 = 0;
          v149 = 0;
          v147 = 0;
          memset(v146, 0, sizeof(v146));
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v48 = 0;
          v47 = 0;
          *(&v159 + 1) = 0x100000001;
        }
      }

      else
      {
        *&v159 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v156 = 0;
        v157 = 0;
        v154 = 0;
        v155 = 0;
        v152 = 0;
        v153 = 0;
        v150 = 0;
        v151 = 0;
        v148 = 0;
        v149 = 0;
        v147 = 0;
        memset(v146, 0, sizeof(v146));
        v158 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v48 = 0;
        v47 = 0;
        *(&v159 + 1) = 0x100000001;
      }
    }

    else
    {
      *(&v159 + 4) = 0;
      v158 = 0;
      LODWORD(v159) = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v156 = 0;
      v157 = 0;
      v154 = 0;
      v155 = 0;
      v152 = 0;
      v153 = 0;
      v150 = 0;
      v151 = 0;
      v148 = 0;
      v149 = 0;
      v147 = 0;
      memset(v146, 0, sizeof(v146));
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v48 = 0;
      v47 = 0;
      HIDWORD(v159) = 1;
    }
  }

  else
  {
    v159 = 0uLL;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v156 = 0;
    v157 = 0;
    v154 = 0;
    v155 = 0;
    v152 = 0;
    v153 = 0;
    v150 = 0;
    v151 = 0;
    v148 = 0;
    v149 = 0;
    v147 = 0;
    memset(v146, 0, sizeof(v146));
    v158 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v48 = 0;
    v47 = 0;
  }

LABEL_46:
  if (v48)
  {
    v143 = v4;
    v57 = v47;
    v58 = v52;
    v59 = v53;
    v60 = v51;
    v61 = v54;
    v62 = v5;
    v63 = v50;
    v64 = v55;
    v65 = v49;
    v66 = v56;

    v67 = v66;
    v49 = v65;
    v55 = v64;
    v50 = v63;
    v5 = v62;
    v54 = v61;
    v51 = v60;
    v53 = v59;
    v52 = v58;
    v47 = v57;
    v4 = v143;
    if (!v67)
    {
      goto LABEL_48;
    }
  }

  else if (!v56)
  {
LABEL_48:
    if (v55)
    {
      goto LABEL_49;
    }

    goto LABEL_118;
  }

  if (v55)
  {
LABEL_49:

    if (!v54)
    {
      goto LABEL_50;
    }

    goto LABEL_119;
  }

LABEL_118:
  if (!v54)
  {
LABEL_50:
    if (!v53)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_119:

  if (v53)
  {
LABEL_51:
  }

LABEL_52:
  if (v158)
  {
  }

  if (v156)
  {
  }

  if (v155)
  {
  }

  if (v154)
  {
  }

  if (v153)
  {
  }

  if (v152)
  {
  }

  if (v151)
  {
  }

  if (v150)
  {
  }

  if (v149)
  {
  }

  if (v148)
  {
  }

  if (v147)
  {
  }

  if (*&v146[4])
  {
  }

  if (*v146)
  {
  }

  if (*&v146[8])
  {
  }

  if (HIDWORD(v147))
  {
  }

  if (HIDWORD(v148))
  {
  }

  if (HIDWORD(v149))
  {
  }

  if (HIDWORD(v150))
  {
  }

  if (HIDWORD(v151))
  {
  }

  if (HIDWORD(v152))
  {
  }

  if (HIDWORD(v153))
  {
  }

  if (HIDWORD(v154))
  {
  }

  if (HIDWORD(v155))
  {
  }

  if (v157)
  {

    if (!v52)
    {
      goto LABEL_100;
    }
  }

  else if (!v52)
  {
LABEL_100:
    if (v51)
    {
      goto LABEL_101;
    }

    goto LABEL_123;
  }

  if (v51)
  {
LABEL_101:

    if (!v50)
    {
      goto LABEL_102;
    }

LABEL_124:

    if (!v49)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

LABEL_123:
  if (v50)
  {
    goto LABEL_124;
  }

LABEL_102:
  if (v49)
  {
LABEL_103:
  }

LABEL_104:
  if (v159)
  {
  }

  if (DWORD1(v159))
  {
  }

  if (DWORD2(v159))
  {
  }

  if (HIDWORD(v159))
  {
  }

  if (v160)
  {
  }

LABEL_115:
  return v47;
}

- (unint64_t)hash
{
  v81 = [(BBSectionSubtypeParameters *)self hiddenPreviewsBodyPlaceholder];
  v3 = [v81 hash];
  v80 = [(BBSectionSubtypeParameters *)self subtypeSummaryFormat];
  v4 = [v80 hash] ^ v3;
  v79 = [(BBSectionSubtypeParameters *)self topic];
  v5 = [v79 hash];
  v78 = [(BBSectionSubtypeParameters *)self missedBannerDescriptionFormat];
  v6 = v4 ^ v5 ^ [v78 hash];
  v77 = [(BBSectionSubtypeParameters *)self fullUnlockActionLabel];
  v7 = [v77 hash];
  v76 = [(BBSectionSubtypeParameters *)self unlockActionLabel];
  v8 = v7 ^ [v76 hash];
  v75 = [(BBSectionSubtypeParameters *)self fullAlternateActionLabel];
  v9 = v6 ^ v8 ^ [v75 hash];
  v74 = [(BBSectionSubtypeParameters *)self alternateActionLabel];
  v10 = [v74 hash];
  v73 = [(BBSectionSubtypeParameters *)self boxedSuppressesAlertsWhenAppIsActive];
  v11 = v10 ^ [v73 hash];
  v72 = [(BBSectionSubtypeParameters *)self sectionIconOverride];
  v12 = v11 ^ [v72 hash];
  v71 = [(BBSectionSubtypeParameters *)self boxedCoalescesWhenLocked];
  v13 = v9 ^ v12 ^ [v71 hash];
  v70 = [(BBSectionSubtypeParameters *)self boxedInertWhenLocked];
  v14 = [v70 hash];
  v69 = [(BBSectionSubtypeParameters *)self boxedPreservesUnlockActionCase];
  v15 = v14 ^ [v69 hash];
  v68 = [(BBSectionSubtypeParameters *)self boxedVisuallyIndicatesWhenDateIsInFuture];
  v16 = v15 ^ [v68 hash];
  v67 = [(BBSectionSubtypeParameters *)self boxedCanBeSilencedByMenuButtonPress];
  v17 = v16 ^ [v67 hash];
  v66 = [(BBSectionSubtypeParameters *)self boxedPreventLock];
  v18 = v13 ^ v17 ^ [v66 hash];
  v65 = [(BBSectionSubtypeParameters *)self boxedIgnoresQuietMode];
  v19 = [v65 hash];
  v64 = [(BBSectionSubtypeParameters *)self boxedSuppressesTitle];
  v20 = v19 ^ [v64 hash];
  v63 = [(BBSectionSubtypeParameters *)self boxedShowsUnreadIndicatorForNoticesFeed];
  v21 = v20 ^ [v63 hash];
  v62 = [(BBSectionSubtypeParameters *)self boxedShowsContactPhoto];
  v22 = v21 ^ [v62 hash];
  v61 = [(BBSectionSubtypeParameters *)self boxedPlaysSoundForModify];
  v23 = v22 ^ [v61 hash];
  v60 = [(BBSectionSubtypeParameters *)self boxedSubtypePriority];
  v24 = v18 ^ v23 ^ [v60 hash];
  v59 = [(BBSectionSubtypeParameters *)self boxedIPodOutAlertType];
  v25 = [v59 hash];
  v58 = [(BBSectionSubtypeParameters *)self boxedAllowsAutomaticRemovalFromLockScreen];
  v26 = v25 ^ [v58 hash];
  v57 = [(BBSectionSubtypeParameters *)self boxedAllowsAddingToLockScreenWhenUnlocked];
  v27 = v26 ^ [v57 hash];
  v56 = [(BBSectionSubtypeParameters *)self boxedPrioritizeAtTopOfLockScreen];
  v28 = v27 ^ [v56 hash];
  v55 = [(BBSectionSubtypeParameters *)self boxedRevealsAdditionalContentOnPresentation];
  v29 = v28 ^ [v55 hash];
  v53 = [(BBSectionSubtypeParameters *)self boxedAllowsPersistentBannersInCarPlay];
  v30 = v29 ^ [v53 hash];
  v52 = [(BBSectionSubtypeParameters *)self boxedAllowsSupplementaryActionsInCarPlay];
  v31 = v24 ^ v30 ^ [v52 hash];
  v51 = [(BBSectionSubtypeParameters *)self boxedPrivacySettings];
  v32 = [v51 hash];
  v33 = [(BBSectionSubtypeParameters *)self boxedShouldDismissBulletinWhenClosed];
  v34 = v32 ^ [v33 hash];
  v35 = [(BBSectionSubtypeParameters *)self boxedPlaysMediaWhenRaised];
  v36 = v34 ^ [v35 hash];
  v37 = [(BBSectionSubtypeParameters *)self boxedSuppressDelayForForwardedBulletins];
  v38 = v36 ^ [v37 hash];
  v39 = [(BBSectionSubtypeParameters *)self boxedHideDismissActionInCarPlay];
  v40 = v38 ^ [v39 hash];
  v41 = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteViewControllerClassName];
  v42 = v40 ^ [v41 hash];
  v43 = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteServiceBundleIdentifier];
  v44 = v42 ^ [v43 hash];
  v45 = [(BBSectionSubtypeParameters *)self secondaryContentRemoteViewControllerClassName];
  v54 = v31 ^ v44 ^ [v45 hash];
  v46 = [(BBSectionSubtypeParameters *)self secondaryContentRemoteServiceBundleIdentifier];
  v47 = [v46 hash];
  v48 = [(BBSectionSubtypeParameters *)self boxedSuppressPresentationInAmbient];
  v49 = v47 ^ [v48 hash];

  return v54 ^ v49;
}

- (BBSectionSubtypeParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = BBSectionSubtypeParameters;
  v5 = [(BBSectionSubtypeParameters *)&v46 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hiddenPreviewsBodyPlaceholder"];
    [(BBSectionSubtypeParameters *)v5 setHiddenPreviewsBodyPlaceholder:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtypeSummaryFormat"];
    [(BBSectionSubtypeParameters *)v5 setSubtypeSummaryFormat:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
    [(BBSectionSubtypeParameters *)v5 setTopic:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"missedBannerDescriptionFormat"];
    [(BBSectionSubtypeParameters *)v5 setMissedBannerDescriptionFormat:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullUnlockActionLabel"];
    [(BBSectionSubtypeParameters *)v5 setFullUnlockActionLabel:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unlockActionLabel"];
    [(BBSectionSubtypeParameters *)v5 setUnlockActionLabel:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAltnerateActionLabel"];
    [(BBSectionSubtypeParameters *)v5 setFullAlternateActionLabel:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternateActionLabel"];
    [(BBSectionSubtypeParameters *)v5 setAlternateActionLabel:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionIconOverride"];
    [(BBSectionSubtypeParameters *)v5 setSectionIconOverride:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bannerAccessoryRemoteViewControllerClassName"];
    [(BBSectionSubtypeParameters *)v5 setBannerAccessoryRemoteViewControllerClassName:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bannerAccessoryRemoteServiceBundleIdentifier"];
    [(BBSectionSubtypeParameters *)v5 setBannerAccessoryRemoteServiceBundleIdentifier:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryContentRemoteViewControllerClassName"];
    [(BBSectionSubtypeParameters *)v5 setSecondaryContentRemoteViewControllerClassName:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryContentRemoteServiceBundleIdentifier"];
    [(BBSectionSubtypeParameters *)v5 setSecondaryContentRemoteServiceBundleIdentifier:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suppressWhenActive"];
    [(BBSectionSubtypeParameters *)v5 setBoxedSuppressesAlertsWhenAppIsActive:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coalescesWhenLocked"];
    [(BBSectionSubtypeParameters *)v5 setBoxedCoalescesWhenLocked:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inertWhenLocked"];
    [(BBSectionSubtypeParameters *)v5 setBoxedInertWhenLocked:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preservesUnlockActionCase"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPreservesUnlockActionCase:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visuallyIndicatesWhenDateIsInFuture"];
    [(BBSectionSubtypeParameters *)v5 setBoxedVisuallyIndicatesWhenDateIsInFuture:v23];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"canBeSilencedByMenuButtonPress"];
    [(BBSectionSubtypeParameters *)v5 setBoxedCanBeSilencedByMenuButtonPress:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preventLock"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPreventLock:v25];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ignoresQuietMode"];
    [(BBSectionSubtypeParameters *)v5 setBoxedIgnoresQuietMode:v26];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suppressesTitle"];
    [(BBSectionSubtypeParameters *)v5 setBoxedSuppressesTitle:v27];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"showsUnreadIndicatorForNoticesFeed"];
    [(BBSectionSubtypeParameters *)v5 setBoxedShowsUnreadIndicatorForNoticesFeed:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"showsContactPhoto"];
    [(BBSectionSubtypeParameters *)v5 setBoxedShowsContactPhoto:v29];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playsSoundForModify"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPlaysSoundForModify:v30];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtypePriority"];
    [(BBSectionSubtypeParameters *)v5 setBoxedSubtypePriority:v31];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iPodOutAlertType"];
    [(BBSectionSubtypeParameters *)v5 setBoxedIPodOutAlertType:v32];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsAutomaticRemovalFromLockScreen"];
    [(BBSectionSubtypeParameters *)v5 setBoxedAllowsAutomaticRemovalFromLockScreen:v33];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsAddingToLockScreenWhenUnlocked"];
    [(BBSectionSubtypeParameters *)v5 setBoxedAllowsAddingToLockScreenWhenUnlocked:v34];

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prioritizeAtTopOfLockScreen"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPrioritizeAtTopOfLockScreen:v35];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"revealsAdditionalContentOnPresentation"];
    [(BBSectionSubtypeParameters *)v5 setBoxedRevealsAdditionalContentOnPresentation:v36];

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacySettings"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPrivacySettings:v37];

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shouldDismissBulletinWhenClosed"];
    [(BBSectionSubtypeParameters *)v5 setBoxedShouldDismissBulletinWhenClosed:v38];

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsPersistentBannersInCarPlay"];
    [(BBSectionSubtypeParameters *)v5 setBoxedAllowsPersistentBannersInCarPlay:v39];

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsSupplementaryActionsInCarPlay"];
    [(BBSectionSubtypeParameters *)v5 setBoxedAllowsSupplementaryActionsInCarPlay:v40];

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playsMediaWhenRaised"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPlaysMediaWhenRaised:v41];

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suppressDelayForForwardedBulletins"];
    [(BBSectionSubtypeParameters *)v5 setBoxedSuppressDelayForForwardedBulletins:v42];

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hideDismissActionInCarPlay"];
    [(BBSectionSubtypeParameters *)v5 setBoxedHideDismissActionInCarPlay:v43];

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suppressPresentationInAmbient"];
    [(BBSectionSubtypeParameters *)v5 setSuppressPresentationInAmbient:v44 != 0];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BBSectionSubtypeParameters *)self hiddenPreviewsBodyPlaceholder];
  [v4 encodeObject:v5 forKey:@"hiddenPreviewsBodyPlaceholder"];

  v6 = [(BBSectionSubtypeParameters *)self subtypeSummaryFormat];
  [v4 encodeObject:v6 forKey:@"subtypeSummaryFormat"];

  v7 = [(BBSectionSubtypeParameters *)self topic];
  [v4 encodeObject:v7 forKey:@"topic"];

  v8 = [(BBSectionSubtypeParameters *)self missedBannerDescriptionFormat];
  [v4 encodeObject:v8 forKey:@"missedBannerDescriptionFormat"];

  v9 = [(BBSectionSubtypeParameters *)self fullUnlockActionLabel];
  [v4 encodeObject:v9 forKey:@"fullUnlockActionLabel"];

  v10 = [(BBSectionSubtypeParameters *)self unlockActionLabel];
  [v4 encodeObject:v10 forKey:@"unlockActionLabel"];

  v11 = [(BBSectionSubtypeParameters *)self fullAlternateActionLabel];
  [v4 encodeObject:v11 forKey:@"fullAltnerateActionLabel"];

  v12 = [(BBSectionSubtypeParameters *)self alternateActionLabel];
  [v4 encodeObject:v12 forKey:@"alternateActionLabel"];

  v13 = [(BBSectionSubtypeParameters *)self sectionIconOverride];
  [v4 encodeObject:v13 forKey:@"sectionIconOverride"];

  v14 = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteViewControllerClassName];
  [v4 encodeObject:v14 forKey:@"bannerAccessoryRemoteViewControllerClassName"];

  v15 = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteServiceBundleIdentifier];
  [v4 encodeObject:v15 forKey:@"bannerAccessoryRemoteServiceBundleIdentifier"];

  v16 = [(BBSectionSubtypeParameters *)self secondaryContentRemoteViewControllerClassName];
  [v4 encodeObject:v16 forKey:@"secondaryContentRemoteViewControllerClassName"];

  v17 = [(BBSectionSubtypeParameters *)self secondaryContentRemoteServiceBundleIdentifier];
  [v4 encodeObject:v17 forKey:@"secondaryContentRemoteServiceBundleIdentifier"];

  v18 = [(BBSectionSubtypeParameters *)self boxedSuppressesAlertsWhenAppIsActive];
  [v4 encodeObject:v18 forKey:@"suppressWhenActive"];

  v19 = [(BBSectionSubtypeParameters *)self boxedCoalescesWhenLocked];
  [v4 encodeObject:v19 forKey:@"coalescesWhenLocked"];

  v20 = [(BBSectionSubtypeParameters *)self boxedInertWhenLocked];
  [v4 encodeObject:v20 forKey:@"inertWhenLocked"];

  v21 = [(BBSectionSubtypeParameters *)self boxedPreservesUnlockActionCase];
  [v4 encodeObject:v21 forKey:@"preservesUnlockActionCase"];

  v22 = [(BBSectionSubtypeParameters *)self boxedVisuallyIndicatesWhenDateIsInFuture];
  [v4 encodeObject:v22 forKey:@"visuallyIndicatesWhenDateIsInFuture"];

  v23 = [(BBSectionSubtypeParameters *)self boxedCanBeSilencedByMenuButtonPress];
  [v4 encodeObject:v23 forKey:@"canBeSilencedByMenuButtonPress"];

  v24 = [(BBSectionSubtypeParameters *)self boxedPreventLock];
  [v4 encodeObject:v24 forKey:@"preventLock"];

  v25 = [(BBSectionSubtypeParameters *)self boxedIgnoresQuietMode];
  [v4 encodeObject:v25 forKey:@"ignoresQuietMode"];

  v26 = [(BBSectionSubtypeParameters *)self boxedSuppressesTitle];
  [v4 encodeObject:v26 forKey:@"suppressesTitle"];

  v27 = [(BBSectionSubtypeParameters *)self boxedShowsUnreadIndicatorForNoticesFeed];
  [v4 encodeObject:v27 forKey:@"showsUnreadIndicatorForNoticesFeed"];

  v28 = [(BBSectionSubtypeParameters *)self boxedShowsContactPhoto];
  [v4 encodeObject:v28 forKey:@"showsContactPhoto"];

  v29 = [(BBSectionSubtypeParameters *)self boxedPlaysSoundForModify];
  [v4 encodeObject:v29 forKey:@"playsSoundForModify"];

  v30 = [(BBSectionSubtypeParameters *)self boxedSubtypePriority];
  [v4 encodeObject:v30 forKey:@"subtypePriority"];

  v31 = [(BBSectionSubtypeParameters *)self boxedIPodOutAlertType];
  [v4 encodeObject:v31 forKey:@"iPodOutAlertType"];

  v32 = [(BBSectionSubtypeParameters *)self boxedAllowsAutomaticRemovalFromLockScreen];
  [v4 encodeObject:v32 forKey:@"allowsAutomaticRemovalFromLockScreen"];

  v33 = [(BBSectionSubtypeParameters *)self boxedAllowsAddingToLockScreenWhenUnlocked];
  [v4 encodeObject:v33 forKey:@"allowsAddingToLockScreenWhenUnlocked"];

  v34 = [(BBSectionSubtypeParameters *)self boxedPrioritizeAtTopOfLockScreen];
  [v4 encodeObject:v34 forKey:@"prioritizeAtTopOfLockScreen"];

  v35 = [(BBSectionSubtypeParameters *)self boxedRevealsAdditionalContentOnPresentation];
  [v4 encodeObject:v35 forKey:@"revealsAdditionalContentOnPresentation"];

  v36 = [(BBSectionSubtypeParameters *)self boxedPrivacySettings];
  [v4 encodeObject:v36 forKey:@"privacySettings"];

  v37 = [(BBSectionSubtypeParameters *)self boxedShouldDismissBulletinWhenClosed];
  [v4 encodeObject:v37 forKey:@"shouldDismissBulletinWhenClosed"];

  v38 = [(BBSectionSubtypeParameters *)self boxedAllowsPersistentBannersInCarPlay];
  [v4 encodeObject:v38 forKey:@"allowsPersistentBannersInCarPlay"];

  v39 = [(BBSectionSubtypeParameters *)self boxedAllowsSupplementaryActionsInCarPlay];
  [v4 encodeObject:v39 forKey:@"allowsSupplementaryActionsInCarPlay"];

  v40 = [(BBSectionSubtypeParameters *)self boxedPlaysMediaWhenRaised];
  [v4 encodeObject:v40 forKey:@"playsMediaWhenRaised"];

  v41 = [(BBSectionSubtypeParameters *)self boxedSuppressDelayForForwardedBulletins];
  [v4 encodeObject:v41 forKey:@"suppressDelayForForwardedBulletins"];

  v42 = [(BBSectionSubtypeParameters *)self boxedHideDismissActionInCarPlay];
  [v4 encodeObject:v42 forKey:@"hideDismissActionInCarPlay"];

  v43 = [(BBSectionSubtypeParameters *)self boxedSuppressPresentationInAmbient];
  [v4 encodeObject:v43 forKey:@"suppressPresentationInAmbient"];
}

- (BBSectionSubtypeParameters)fallbackParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);

  return WeakRetained;
}

@end