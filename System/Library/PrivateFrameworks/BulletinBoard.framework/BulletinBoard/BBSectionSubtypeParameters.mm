@interface BBSectionSubtypeParameters
- (BBSectionIcon)sectionIconOverride;
- (BBSectionSubtypeParameters)fallbackParameters;
- (BBSectionSubtypeParameters)initWithCoder:(id)coder;
- (BBSectionSubtypeParameters)initWithFallbackParameters:(id)parameters;
- (BOOL)allowsAddingToLockScreenWhenUnlocked;
- (BOOL)allowsAutomaticRemovalFromLockScreen;
- (BOOL)allowsPersistentBannersInCarPlay;
- (BOOL)allowsSupplementaryActionsInCarPlay;
- (BOOL)canBeSilencedByMenuButtonPress;
- (BOOL)coalescesWhenLocked;
- (BOOL)hideDismissActionInCarPlay;
- (BOOL)ignoresQuietMode;
- (BOOL)inertWhenLocked;
- (BOOL)isEqual:(id)equal;
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
- (void)encodeWithCoder:(id)coder;
- (void)setAlertSuppressionAppIDs:(id)ds;
- (void)setIPodOutAlertType:(int64_t)type;
- (void)setPrivacySettings:(unint64_t)settings;
- (void)setSectionIconOverride:(id)override;
- (void)setSubtypePriority:(unint64_t)priority;
@end

@implementation BBSectionSubtypeParameters

- (NSString)hiddenPreviewsBodyPlaceholder
{
  hiddenPreviewsBodyPlaceholder = self->_hiddenPreviewsBodyPlaceholder;
  if (hiddenPreviewsBodyPlaceholder)
  {
    hiddenPreviewsBodyPlaceholder = hiddenPreviewsBodyPlaceholder;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    hiddenPreviewsBodyPlaceholder = [WeakRetained hiddenPreviewsBodyPlaceholder];
  }

  return hiddenPreviewsBodyPlaceholder;
}

- (NSString)subtypeSummaryFormat
{
  subtypeSummaryFormat = self->_subtypeSummaryFormat;
  if (subtypeSummaryFormat)
  {
    subtypeSummaryFormat = subtypeSummaryFormat;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    subtypeSummaryFormat = [WeakRetained subtypeSummaryFormat];
  }

  return subtypeSummaryFormat;
}

- (BBSectionIcon)sectionIconOverride
{
  sectionIconOverride = self->_sectionIconOverride;
  if (sectionIconOverride)
  {
    sectionIconOverride = sectionIconOverride;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    sectionIconOverride = [WeakRetained sectionIconOverride];
  }

  return sectionIconOverride;
}

- (NSString)fullAlternateActionLabel
{
  fullAlternateActionLabel = self->_fullAlternateActionLabel;
  if (fullAlternateActionLabel)
  {
    fullAlternateActionLabel = fullAlternateActionLabel;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    fullAlternateActionLabel = [WeakRetained fullAlternateActionLabel];
  }

  return fullAlternateActionLabel;
}

- (NSString)fullUnlockActionLabel
{
  fullUnlockActionLabel = self->_fullUnlockActionLabel;
  if (fullUnlockActionLabel)
  {
    fullUnlockActionLabel = fullUnlockActionLabel;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    fullUnlockActionLabel = [WeakRetained fullUnlockActionLabel];
  }

  return fullUnlockActionLabel;
}

- (NSString)alternateActionLabel
{
  alternateActionLabel = self->_alternateActionLabel;
  if (alternateActionLabel)
  {
    alternateActionLabel = alternateActionLabel;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    alternateActionLabel = [WeakRetained alternateActionLabel];
  }

  return alternateActionLabel;
}

- (NSString)unlockActionLabel
{
  unlockActionLabel = self->_unlockActionLabel;
  if (unlockActionLabel)
  {
    unlockActionLabel = unlockActionLabel;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    unlockActionLabel = [WeakRetained unlockActionLabel];
  }

  return unlockActionLabel;
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
    allowsPersistentBannersInCarPlay = [WeakRetained allowsPersistentBannersInCarPlay];

    return allowsPersistentBannersInCarPlay;
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
    inertWhenLocked = [WeakRetained inertWhenLocked];

    return inertWhenLocked;
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
    allowsAutomaticRemovalFromLockScreen = [WeakRetained allowsAutomaticRemovalFromLockScreen];

    return allowsAutomaticRemovalFromLockScreen;
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
    prioritizeAtTopOfLockScreen = [WeakRetained prioritizeAtTopOfLockScreen];

    return prioritizeAtTopOfLockScreen;
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
    canBeSilencedByMenuButtonPress = [WeakRetained canBeSilencedByMenuButtonPress];

    return canBeSilencedByMenuButtonPress;
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
    suppressesAlertsWhenAppIsActive = [WeakRetained suppressesAlertsWhenAppIsActive];

    return suppressesAlertsWhenAppIsActive;
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
    revealsAdditionalContentOnPresentation = [WeakRetained revealsAdditionalContentOnPresentation];

    return revealsAdditionalContentOnPresentation;
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
    privacySettings = [WeakRetained privacySettings];

    return privacySettings;
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
    coalescesWhenLocked = [WeakRetained coalescesWhenLocked];

    return coalescesWhenLocked;
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
    preventLock = [WeakRetained preventLock];

    return preventLock;
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
    allowsSupplementaryActionsInCarPlay = [WeakRetained allowsSupplementaryActionsInCarPlay];

    return allowsSupplementaryActionsInCarPlay;
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
    playsMediaWhenRaised = [WeakRetained playsMediaWhenRaised];

    return playsMediaWhenRaised;
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
    hideDismissActionInCarPlay = [WeakRetained hideDismissActionInCarPlay];

    return hideDismissActionInCarPlay;
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
    suppressPresentationInAmbient = [WeakRetained suppressPresentationInAmbient];

    return suppressPresentationInAmbient;
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
    shouldDismissBulletinWhenClosed = [WeakRetained shouldDismissBulletinWhenClosed];

    return shouldDismissBulletinWhenClosed;
  }
}

- (BBSectionSubtypeParameters)initWithFallbackParameters:(id)parameters
{
  parametersCopy = parameters;
  v8.receiver = self;
  v8.super_class = BBSectionSubtypeParameters;
  v5 = [(BBSectionSubtypeParameters *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BBSectionSubtypeParameters *)v5 setFallbackParameters:parametersCopy];
  }

  return v6;
}

- (NSString)topic
{
  topic = self->_topic;
  if (topic)
  {
    topic = topic;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    topic = [WeakRetained topic];
  }

  return topic;
}

- (NSString)missedBannerDescriptionFormat
{
  missedBannerDescriptionFormat = self->_missedBannerDescriptionFormat;
  if (missedBannerDescriptionFormat)
  {
    missedBannerDescriptionFormat = missedBannerDescriptionFormat;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    missedBannerDescriptionFormat = [WeakRetained missedBannerDescriptionFormat];
  }

  return missedBannerDescriptionFormat;
}

- (void)setSectionIconOverride:(id)override
{
  overrideCopy = override;
  sectionIconOverride = self->_sectionIconOverride;
  p_sectionIconOverride = &self->_sectionIconOverride;
  if (sectionIconOverride != overrideCopy)
  {
    v8 = overrideCopy;
    objc_storeStrong(p_sectionIconOverride, override);
    overrideCopy = v8;
  }
}

- (NSString)bannerAccessoryRemoteViewControllerClassName
{
  bannerAccessoryRemoteViewControllerClassName = self->_bannerAccessoryRemoteViewControllerClassName;
  if (bannerAccessoryRemoteViewControllerClassName)
  {
    bannerAccessoryRemoteViewControllerClassName = bannerAccessoryRemoteViewControllerClassName;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    bannerAccessoryRemoteViewControllerClassName = [WeakRetained bannerAccessoryRemoteViewControllerClassName];
  }

  return bannerAccessoryRemoteViewControllerClassName;
}

- (NSString)bannerAccessoryRemoteServiceBundleIdentifier
{
  bannerAccessoryRemoteServiceBundleIdentifier = self->_bannerAccessoryRemoteServiceBundleIdentifier;
  if (bannerAccessoryRemoteServiceBundleIdentifier)
  {
    bannerAccessoryRemoteServiceBundleIdentifier = bannerAccessoryRemoteServiceBundleIdentifier;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    bannerAccessoryRemoteServiceBundleIdentifier = [WeakRetained bannerAccessoryRemoteServiceBundleIdentifier];
  }

  return bannerAccessoryRemoteServiceBundleIdentifier;
}

- (NSString)secondaryContentRemoteViewControllerClassName
{
  secondaryContentRemoteViewControllerClassName = self->_secondaryContentRemoteViewControllerClassName;
  if (secondaryContentRemoteViewControllerClassName)
  {
    secondaryContentRemoteViewControllerClassName = secondaryContentRemoteViewControllerClassName;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    secondaryContentRemoteViewControllerClassName = [WeakRetained secondaryContentRemoteViewControllerClassName];
  }

  return secondaryContentRemoteViewControllerClassName;
}

- (NSString)secondaryContentRemoteServiceBundleIdentifier
{
  secondaryContentRemoteServiceBundleIdentifier = self->_secondaryContentRemoteServiceBundleIdentifier;
  if (secondaryContentRemoteServiceBundleIdentifier)
  {
    secondaryContentRemoteServiceBundleIdentifier = secondaryContentRemoteServiceBundleIdentifier;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);
    secondaryContentRemoteServiceBundleIdentifier = [WeakRetained secondaryContentRemoteServiceBundleIdentifier];
  }

  return secondaryContentRemoteServiceBundleIdentifier;
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
    preservesUnlockActionCase = [WeakRetained preservesUnlockActionCase];

    return preservesUnlockActionCase;
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
    visuallyIndicatesWhenDateIsInFuture = [WeakRetained visuallyIndicatesWhenDateIsInFuture];

    return visuallyIndicatesWhenDateIsInFuture;
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
    ignoresQuietMode = [WeakRetained ignoresQuietMode];

    return ignoresQuietMode;
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
    suppressesTitle = [WeakRetained suppressesTitle];

    return suppressesTitle;
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
    showsUnreadIndicatorForNoticesFeed = [WeakRetained showsUnreadIndicatorForNoticesFeed];

    return showsUnreadIndicatorForNoticesFeed;
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
    showsContactPhoto = [WeakRetained showsContactPhoto];

    return showsContactPhoto;
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
    playsSoundForModify = [WeakRetained playsSoundForModify];

    return playsSoundForModify;
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
    subtypePriority = [WeakRetained subtypePriority];

    return subtypePriority;
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
    iPodOutAlertType = [WeakRetained iPodOutAlertType];

    return iPodOutAlertType;
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
    allowsAddingToLockScreenWhenUnlocked = [WeakRetained allowsAddingToLockScreenWhenUnlocked];

    return allowsAddingToLockScreenWhenUnlocked;
  }
}

- (void)setAlertSuppressionAppIDs:(id)ds
{
  v4 = [ds count] != 0;

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
    suppressDelayForForwardedBulletins = [WeakRetained suppressDelayForForwardedBulletins];

    return suppressDelayForForwardedBulletins;
  }
}

- (void)setSubtypePriority:(unint64_t)priority
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:priority];
  [(BBSectionSubtypeParameters *)self setBoxedSubtypePriority:v4];
}

- (void)setIPodOutAlertType:(int64_t)type
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [(BBSectionSubtypeParameters *)self setBoxedIPodOutAlertType:v4];
}

- (void)setPrivacySettings:(unint64_t)settings
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:settings];
  [(BBSectionSubtypeParameters *)self setBoxedPrivacySettings:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v5 = equalCopy;
  hiddenPreviewsBodyPlaceholder = [(BBSectionSubtypeParameters *)self hiddenPreviewsBodyPlaceholder];
  hiddenPreviewsBodyPlaceholder2 = [(BBSectionSubtypeParameters *)v5 hiddenPreviewsBodyPlaceholder];
  v162 = hiddenPreviewsBodyPlaceholder;
  v160 = BSEqualObjects();
  if (v160 && ([(BBSectionSubtypeParameters *)self subtypeSummaryFormat], v8 = objc_claimAutoreleasedReturnValue(), [(BBSectionSubtypeParameters *)v5 subtypeSummaryFormat], v144 = objc_claimAutoreleasedReturnValue(), v145 = v8, BSEqualObjects()))
  {
    topic = [(BBSectionSubtypeParameters *)self topic];
    [(BBSectionSubtypeParameters *)v5 topic];
    v140 = v141 = topic;
    if (BSEqualObjects())
    {
      missedBannerDescriptionFormat = [(BBSectionSubtypeParameters *)self missedBannerDescriptionFormat];
      [(BBSectionSubtypeParameters *)v5 missedBannerDescriptionFormat];
      v138 = v139 = missedBannerDescriptionFormat;
      if (BSEqualObjects())
      {
        fullUnlockActionLabel = [(BBSectionSubtypeParameters *)self fullUnlockActionLabel];
        [(BBSectionSubtypeParameters *)v5 fullUnlockActionLabel];
        v136 = v137 = fullUnlockActionLabel;
        if (BSEqualObjects())
        {
          unlockActionLabel = [(BBSectionSubtypeParameters *)self unlockActionLabel];
          [(BBSectionSubtypeParameters *)v5 unlockActionLabel];
          v134 = v135 = unlockActionLabel;
          if (BSEqualObjects())
          {
            fullAlternateActionLabel = [(BBSectionSubtypeParameters *)self fullAlternateActionLabel];
            fullAlternateActionLabel2 = [(BBSectionSubtypeParameters *)v5 fullAlternateActionLabel];
            v133 = fullAlternateActionLabel;
            if (BSEqualObjects())
            {
              alternateActionLabel = [(BBSectionSubtypeParameters *)self alternateActionLabel];
              alternateActionLabel2 = [(BBSectionSubtypeParameters *)v5 alternateActionLabel];
              v131 = alternateActionLabel;
              if (BSEqualObjects())
              {
                boxedSuppressesAlertsWhenAppIsActive = [(BBSectionSubtypeParameters *)self boxedSuppressesAlertsWhenAppIsActive];
                boxedSuppressesAlertsWhenAppIsActive2 = [(BBSectionSubtypeParameters *)v5 boxedSuppressesAlertsWhenAppIsActive];
                v129 = boxedSuppressesAlertsWhenAppIsActive;
                if (BSEqualObjects())
                {
                  sectionIconOverride = [(BBSectionSubtypeParameters *)self sectionIconOverride];
                  sectionIconOverride2 = [(BBSectionSubtypeParameters *)v5 sectionIconOverride];
                  v127 = sectionIconOverride;
                  if (BSEqualObjects())
                  {
                    boxedCoalescesWhenLocked = [(BBSectionSubtypeParameters *)self boxedCoalescesWhenLocked];
                    boxedCoalescesWhenLocked2 = [(BBSectionSubtypeParameters *)v5 boxedCoalescesWhenLocked];
                    v125 = boxedCoalescesWhenLocked;
                    if (BSEqualObjects())
                    {
                      boxedInertWhenLocked = [(BBSectionSubtypeParameters *)self boxedInertWhenLocked];
                      boxedInertWhenLocked2 = [(BBSectionSubtypeParameters *)v5 boxedInertWhenLocked];
                      v123 = boxedInertWhenLocked;
                      if (BSEqualObjects())
                      {
                        boxedPreservesUnlockActionCase = [(BBSectionSubtypeParameters *)self boxedPreservesUnlockActionCase];
                        v142 = v5;
                        boxedPreservesUnlockActionCase2 = [(BBSectionSubtypeParameters *)v5 boxedPreservesUnlockActionCase];
                        v121 = boxedPreservesUnlockActionCase;
                        if (BSEqualObjects())
                        {
                          boxedVisuallyIndicatesWhenDateIsInFuture = [(BBSectionSubtypeParameters *)self boxedVisuallyIndicatesWhenDateIsInFuture];
                          boxedVisuallyIndicatesWhenDateIsInFuture2 = [(BBSectionSubtypeParameters *)v5 boxedVisuallyIndicatesWhenDateIsInFuture];
                          v119 = boxedVisuallyIndicatesWhenDateIsInFuture;
                          if (BSEqualObjects())
                          {
                            boxedCanBeSilencedByMenuButtonPress = [(BBSectionSubtypeParameters *)self boxedCanBeSilencedByMenuButtonPress];
                            boxedCanBeSilencedByMenuButtonPress2 = [(BBSectionSubtypeParameters *)v5 boxedCanBeSilencedByMenuButtonPress];
                            v117 = boxedCanBeSilencedByMenuButtonPress;
                            if (BSEqualObjects())
                            {
                              boxedPreventLock = [(BBSectionSubtypeParameters *)self boxedPreventLock];
                              boxedPreventLock2 = [(BBSectionSubtypeParameters *)v5 boxedPreventLock];
                              v115 = boxedPreventLock;
                              if (BSEqualObjects())
                              {
                                boxedIgnoresQuietMode = [(BBSectionSubtypeParameters *)self boxedIgnoresQuietMode];
                                boxedIgnoresQuietMode2 = [(BBSectionSubtypeParameters *)v5 boxedIgnoresQuietMode];
                                v113 = boxedIgnoresQuietMode;
                                if (BSEqualObjects())
                                {
                                  boxedSuppressesTitle = [(BBSectionSubtypeParameters *)self boxedSuppressesTitle];
                                  boxedSuppressesTitle2 = [(BBSectionSubtypeParameters *)v5 boxedSuppressesTitle];
                                  v111 = boxedSuppressesTitle;
                                  if (BSEqualObjects())
                                  {
                                    boxedShowsUnreadIndicatorForNoticesFeed = [(BBSectionSubtypeParameters *)self boxedShowsUnreadIndicatorForNoticesFeed];
                                    boxedShowsUnreadIndicatorForNoticesFeed2 = [(BBSectionSubtypeParameters *)v5 boxedShowsUnreadIndicatorForNoticesFeed];
                                    v109 = boxedShowsUnreadIndicatorForNoticesFeed;
                                    if (BSEqualObjects())
                                    {
                                      boxedShowsContactPhoto = [(BBSectionSubtypeParameters *)self boxedShowsContactPhoto];
                                      boxedShowsContactPhoto2 = [(BBSectionSubtypeParameters *)v5 boxedShowsContactPhoto];
                                      v107 = boxedShowsContactPhoto;
                                      if (BSEqualObjects())
                                      {
                                        boxedPlaysSoundForModify = [(BBSectionSubtypeParameters *)self boxedPlaysSoundForModify];
                                        boxedPlaysSoundForModify2 = [(BBSectionSubtypeParameters *)v142 boxedPlaysSoundForModify];
                                        v105 = boxedPlaysSoundForModify;
                                        if (BSEqualObjects())
                                        {
                                          boxedSubtypePriority = [(BBSectionSubtypeParameters *)self boxedSubtypePriority];
                                          boxedSubtypePriority2 = [(BBSectionSubtypeParameters *)v142 boxedSubtypePriority];
                                          v103 = boxedSubtypePriority;
                                          if (BSEqualObjects())
                                          {
                                            boxedIPodOutAlertType = [(BBSectionSubtypeParameters *)self boxedIPodOutAlertType];
                                            boxedIPodOutAlertType2 = [(BBSectionSubtypeParameters *)v142 boxedIPodOutAlertType];
                                            v101 = boxedIPodOutAlertType;
                                            if (BSEqualObjects())
                                            {
                                              boxedAllowsAutomaticRemovalFromLockScreen = [(BBSectionSubtypeParameters *)self boxedAllowsAutomaticRemovalFromLockScreen];
                                              boxedAllowsAutomaticRemovalFromLockScreen2 = [(BBSectionSubtypeParameters *)v142 boxedAllowsAutomaticRemovalFromLockScreen];
                                              v99 = boxedAllowsAutomaticRemovalFromLockScreen;
                                              if (BSEqualObjects())
                                              {
                                                boxedAllowsAddingToLockScreenWhenUnlocked = [(BBSectionSubtypeParameters *)self boxedAllowsAddingToLockScreenWhenUnlocked];
                                                boxedAllowsAddingToLockScreenWhenUnlocked2 = [(BBSectionSubtypeParameters *)v142 boxedAllowsAddingToLockScreenWhenUnlocked];
                                                v97 = boxedAllowsAddingToLockScreenWhenUnlocked;
                                                if (BSEqualObjects())
                                                {
                                                  boxedPrioritizeAtTopOfLockScreen = [(BBSectionSubtypeParameters *)self boxedPrioritizeAtTopOfLockScreen];
                                                  boxedPrioritizeAtTopOfLockScreen2 = [(BBSectionSubtypeParameters *)v142 boxedPrioritizeAtTopOfLockScreen];
                                                  v95 = boxedPrioritizeAtTopOfLockScreen;
                                                  if (BSEqualObjects())
                                                  {
                                                    boxedRevealsAdditionalContentOnPresentation = [(BBSectionSubtypeParameters *)self boxedRevealsAdditionalContentOnPresentation];
                                                    boxedRevealsAdditionalContentOnPresentation2 = [(BBSectionSubtypeParameters *)v142 boxedRevealsAdditionalContentOnPresentation];
                                                    v93 = boxedRevealsAdditionalContentOnPresentation;
                                                    if (BSEqualObjects())
                                                    {
                                                      boxedPrivacySettings = [(BBSectionSubtypeParameters *)self boxedPrivacySettings];
                                                      boxedPrivacySettings2 = [(BBSectionSubtypeParameters *)v142 boxedPrivacySettings];
                                                      v91 = boxedPrivacySettings;
                                                      if (BSEqualObjects())
                                                      {
                                                        boxedShouldDismissBulletinWhenClosed = [(BBSectionSubtypeParameters *)self boxedShouldDismissBulletinWhenClosed];
                                                        boxedShouldDismissBulletinWhenClosed2 = [(BBSectionSubtypeParameters *)v142 boxedShouldDismissBulletinWhenClosed];
                                                        v89 = boxedShouldDismissBulletinWhenClosed;
                                                        if (BSEqualObjects())
                                                        {
                                                          boxedAllowsPersistentBannersInCarPlay = [(BBSectionSubtypeParameters *)self boxedAllowsPersistentBannersInCarPlay];
                                                          boxedAllowsPersistentBannersInCarPlay2 = [(BBSectionSubtypeParameters *)v142 boxedAllowsPersistentBannersInCarPlay];
                                                          v87 = boxedAllowsPersistentBannersInCarPlay;
                                                          if (BSEqualObjects())
                                                          {
                                                            boxedAllowsSupplementaryActionsInCarPlay = [(BBSectionSubtypeParameters *)self boxedAllowsSupplementaryActionsInCarPlay];
                                                            boxedAllowsSupplementaryActionsInCarPlay2 = [(BBSectionSubtypeParameters *)v142 boxedAllowsSupplementaryActionsInCarPlay];
                                                            v85 = boxedAllowsSupplementaryActionsInCarPlay;
                                                            if (BSEqualObjects())
                                                            {
                                                              boxedPlaysMediaWhenRaised = [(BBSectionSubtypeParameters *)self boxedPlaysMediaWhenRaised];
                                                              boxedPlaysMediaWhenRaised2 = [(BBSectionSubtypeParameters *)v142 boxedPlaysMediaWhenRaised];
                                                              v83 = boxedPlaysMediaWhenRaised;
                                                              if (BSEqualObjects())
                                                              {
                                                                boxedSuppressDelayForForwardedBulletins = [(BBSectionSubtypeParameters *)self boxedSuppressDelayForForwardedBulletins];
                                                                boxedSuppressDelayForForwardedBulletins2 = [(BBSectionSubtypeParameters *)v142 boxedSuppressDelayForForwardedBulletins];
                                                                v81 = boxedSuppressDelayForForwardedBulletins;
                                                                if (BSEqualObjects())
                                                                {
                                                                  boxedHideDismissActionInCarPlay = [(BBSectionSubtypeParameters *)self boxedHideDismissActionInCarPlay];
                                                                  boxedHideDismissActionInCarPlay2 = [(BBSectionSubtypeParameters *)v142 boxedHideDismissActionInCarPlay];
                                                                  v79 = boxedHideDismissActionInCarPlay;
                                                                  if (BSEqualObjects())
                                                                  {
                                                                    bannerAccessoryRemoteViewControllerClassName = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteViewControllerClassName];
                                                                    bannerAccessoryRemoteViewControllerClassName2 = [(BBSectionSubtypeParameters *)v142 bannerAccessoryRemoteViewControllerClassName];
                                                                    v77 = bannerAccessoryRemoteViewControllerClassName;
                                                                    if (BSEqualObjects())
                                                                    {
                                                                      bannerAccessoryRemoteServiceBundleIdentifier = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteServiceBundleIdentifier];
                                                                      bannerAccessoryRemoteServiceBundleIdentifier2 = [(BBSectionSubtypeParameters *)v142 bannerAccessoryRemoteServiceBundleIdentifier];
                                                                      v75 = bannerAccessoryRemoteServiceBundleIdentifier;
                                                                      if (BSEqualObjects())
                                                                      {
                                                                        secondaryContentRemoteViewControllerClassName = [(BBSectionSubtypeParameters *)self secondaryContentRemoteViewControllerClassName];
                                                                        secondaryContentRemoteViewControllerClassName2 = [(BBSectionSubtypeParameters *)v142 secondaryContentRemoteViewControllerClassName];
                                                                        v73 = secondaryContentRemoteViewControllerClassName;
                                                                        if (BSEqualObjects())
                                                                        {
                                                                          secondaryContentRemoteServiceBundleIdentifier = [(BBSectionSubtypeParameters *)self secondaryContentRemoteServiceBundleIdentifier];
                                                                          secondaryContentRemoteServiceBundleIdentifier2 = [(BBSectionSubtypeParameters *)v142 secondaryContentRemoteServiceBundleIdentifier];
                                                                          v71 = secondaryContentRemoteServiceBundleIdentifier;
                                                                          if (BSEqualObjects())
                                                                          {
                                                                            boxedSuppressPresentationInAmbient = [(BBSectionSubtypeParameters *)self boxedSuppressPresentationInAmbient];
                                                                            v5 = v142;
                                                                            boxedSuppressPresentationInAmbient2 = [(BBSectionSubtypeParameters *)v142 boxedSuppressPresentationInAmbient];
                                                                            v69 = boxedSuppressPresentationInAmbient;
                                                                            v47 = BSEqualObjects();
                                                                            v7 = boxedSuppressPresentationInAmbient2;
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
    v143 = equalCopy;
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
    equalCopy = v143;
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
  hiddenPreviewsBodyPlaceholder = [(BBSectionSubtypeParameters *)self hiddenPreviewsBodyPlaceholder];
  v3 = [hiddenPreviewsBodyPlaceholder hash];
  subtypeSummaryFormat = [(BBSectionSubtypeParameters *)self subtypeSummaryFormat];
  v4 = [subtypeSummaryFormat hash] ^ v3;
  topic = [(BBSectionSubtypeParameters *)self topic];
  v5 = [topic hash];
  missedBannerDescriptionFormat = [(BBSectionSubtypeParameters *)self missedBannerDescriptionFormat];
  v6 = v4 ^ v5 ^ [missedBannerDescriptionFormat hash];
  fullUnlockActionLabel = [(BBSectionSubtypeParameters *)self fullUnlockActionLabel];
  v7 = [fullUnlockActionLabel hash];
  unlockActionLabel = [(BBSectionSubtypeParameters *)self unlockActionLabel];
  v8 = v7 ^ [unlockActionLabel hash];
  fullAlternateActionLabel = [(BBSectionSubtypeParameters *)self fullAlternateActionLabel];
  v9 = v6 ^ v8 ^ [fullAlternateActionLabel hash];
  alternateActionLabel = [(BBSectionSubtypeParameters *)self alternateActionLabel];
  v10 = [alternateActionLabel hash];
  boxedSuppressesAlertsWhenAppIsActive = [(BBSectionSubtypeParameters *)self boxedSuppressesAlertsWhenAppIsActive];
  v11 = v10 ^ [boxedSuppressesAlertsWhenAppIsActive hash];
  sectionIconOverride = [(BBSectionSubtypeParameters *)self sectionIconOverride];
  v12 = v11 ^ [sectionIconOverride hash];
  boxedCoalescesWhenLocked = [(BBSectionSubtypeParameters *)self boxedCoalescesWhenLocked];
  v13 = v9 ^ v12 ^ [boxedCoalescesWhenLocked hash];
  boxedInertWhenLocked = [(BBSectionSubtypeParameters *)self boxedInertWhenLocked];
  v14 = [boxedInertWhenLocked hash];
  boxedPreservesUnlockActionCase = [(BBSectionSubtypeParameters *)self boxedPreservesUnlockActionCase];
  v15 = v14 ^ [boxedPreservesUnlockActionCase hash];
  boxedVisuallyIndicatesWhenDateIsInFuture = [(BBSectionSubtypeParameters *)self boxedVisuallyIndicatesWhenDateIsInFuture];
  v16 = v15 ^ [boxedVisuallyIndicatesWhenDateIsInFuture hash];
  boxedCanBeSilencedByMenuButtonPress = [(BBSectionSubtypeParameters *)self boxedCanBeSilencedByMenuButtonPress];
  v17 = v16 ^ [boxedCanBeSilencedByMenuButtonPress hash];
  boxedPreventLock = [(BBSectionSubtypeParameters *)self boxedPreventLock];
  v18 = v13 ^ v17 ^ [boxedPreventLock hash];
  boxedIgnoresQuietMode = [(BBSectionSubtypeParameters *)self boxedIgnoresQuietMode];
  v19 = [boxedIgnoresQuietMode hash];
  boxedSuppressesTitle = [(BBSectionSubtypeParameters *)self boxedSuppressesTitle];
  v20 = v19 ^ [boxedSuppressesTitle hash];
  boxedShowsUnreadIndicatorForNoticesFeed = [(BBSectionSubtypeParameters *)self boxedShowsUnreadIndicatorForNoticesFeed];
  v21 = v20 ^ [boxedShowsUnreadIndicatorForNoticesFeed hash];
  boxedShowsContactPhoto = [(BBSectionSubtypeParameters *)self boxedShowsContactPhoto];
  v22 = v21 ^ [boxedShowsContactPhoto hash];
  boxedPlaysSoundForModify = [(BBSectionSubtypeParameters *)self boxedPlaysSoundForModify];
  v23 = v22 ^ [boxedPlaysSoundForModify hash];
  boxedSubtypePriority = [(BBSectionSubtypeParameters *)self boxedSubtypePriority];
  v24 = v18 ^ v23 ^ [boxedSubtypePriority hash];
  boxedIPodOutAlertType = [(BBSectionSubtypeParameters *)self boxedIPodOutAlertType];
  v25 = [boxedIPodOutAlertType hash];
  boxedAllowsAutomaticRemovalFromLockScreen = [(BBSectionSubtypeParameters *)self boxedAllowsAutomaticRemovalFromLockScreen];
  v26 = v25 ^ [boxedAllowsAutomaticRemovalFromLockScreen hash];
  boxedAllowsAddingToLockScreenWhenUnlocked = [(BBSectionSubtypeParameters *)self boxedAllowsAddingToLockScreenWhenUnlocked];
  v27 = v26 ^ [boxedAllowsAddingToLockScreenWhenUnlocked hash];
  boxedPrioritizeAtTopOfLockScreen = [(BBSectionSubtypeParameters *)self boxedPrioritizeAtTopOfLockScreen];
  v28 = v27 ^ [boxedPrioritizeAtTopOfLockScreen hash];
  boxedRevealsAdditionalContentOnPresentation = [(BBSectionSubtypeParameters *)self boxedRevealsAdditionalContentOnPresentation];
  v29 = v28 ^ [boxedRevealsAdditionalContentOnPresentation hash];
  boxedAllowsPersistentBannersInCarPlay = [(BBSectionSubtypeParameters *)self boxedAllowsPersistentBannersInCarPlay];
  v30 = v29 ^ [boxedAllowsPersistentBannersInCarPlay hash];
  boxedAllowsSupplementaryActionsInCarPlay = [(BBSectionSubtypeParameters *)self boxedAllowsSupplementaryActionsInCarPlay];
  v31 = v24 ^ v30 ^ [boxedAllowsSupplementaryActionsInCarPlay hash];
  boxedPrivacySettings = [(BBSectionSubtypeParameters *)self boxedPrivacySettings];
  v32 = [boxedPrivacySettings hash];
  boxedShouldDismissBulletinWhenClosed = [(BBSectionSubtypeParameters *)self boxedShouldDismissBulletinWhenClosed];
  v34 = v32 ^ [boxedShouldDismissBulletinWhenClosed hash];
  boxedPlaysMediaWhenRaised = [(BBSectionSubtypeParameters *)self boxedPlaysMediaWhenRaised];
  v36 = v34 ^ [boxedPlaysMediaWhenRaised hash];
  boxedSuppressDelayForForwardedBulletins = [(BBSectionSubtypeParameters *)self boxedSuppressDelayForForwardedBulletins];
  v38 = v36 ^ [boxedSuppressDelayForForwardedBulletins hash];
  boxedHideDismissActionInCarPlay = [(BBSectionSubtypeParameters *)self boxedHideDismissActionInCarPlay];
  v40 = v38 ^ [boxedHideDismissActionInCarPlay hash];
  bannerAccessoryRemoteViewControllerClassName = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteViewControllerClassName];
  v42 = v40 ^ [bannerAccessoryRemoteViewControllerClassName hash];
  bannerAccessoryRemoteServiceBundleIdentifier = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteServiceBundleIdentifier];
  v44 = v42 ^ [bannerAccessoryRemoteServiceBundleIdentifier hash];
  secondaryContentRemoteViewControllerClassName = [(BBSectionSubtypeParameters *)self secondaryContentRemoteViewControllerClassName];
  v54 = v31 ^ v44 ^ [secondaryContentRemoteViewControllerClassName hash];
  secondaryContentRemoteServiceBundleIdentifier = [(BBSectionSubtypeParameters *)self secondaryContentRemoteServiceBundleIdentifier];
  v47 = [secondaryContentRemoteServiceBundleIdentifier hash];
  boxedSuppressPresentationInAmbient = [(BBSectionSubtypeParameters *)self boxedSuppressPresentationInAmbient];
  v49 = v47 ^ [boxedSuppressPresentationInAmbient hash];

  return v54 ^ v49;
}

- (BBSectionSubtypeParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = BBSectionSubtypeParameters;
  v5 = [(BBSectionSubtypeParameters *)&v46 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hiddenPreviewsBodyPlaceholder"];
    [(BBSectionSubtypeParameters *)v5 setHiddenPreviewsBodyPlaceholder:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtypeSummaryFormat"];
    [(BBSectionSubtypeParameters *)v5 setSubtypeSummaryFormat:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
    [(BBSectionSubtypeParameters *)v5 setTopic:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"missedBannerDescriptionFormat"];
    [(BBSectionSubtypeParameters *)v5 setMissedBannerDescriptionFormat:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullUnlockActionLabel"];
    [(BBSectionSubtypeParameters *)v5 setFullUnlockActionLabel:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unlockActionLabel"];
    [(BBSectionSubtypeParameters *)v5 setUnlockActionLabel:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAltnerateActionLabel"];
    [(BBSectionSubtypeParameters *)v5 setFullAlternateActionLabel:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternateActionLabel"];
    [(BBSectionSubtypeParameters *)v5 setAlternateActionLabel:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionIconOverride"];
    [(BBSectionSubtypeParameters *)v5 setSectionIconOverride:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bannerAccessoryRemoteViewControllerClassName"];
    [(BBSectionSubtypeParameters *)v5 setBannerAccessoryRemoteViewControllerClassName:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bannerAccessoryRemoteServiceBundleIdentifier"];
    [(BBSectionSubtypeParameters *)v5 setBannerAccessoryRemoteServiceBundleIdentifier:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryContentRemoteViewControllerClassName"];
    [(BBSectionSubtypeParameters *)v5 setSecondaryContentRemoteViewControllerClassName:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryContentRemoteServiceBundleIdentifier"];
    [(BBSectionSubtypeParameters *)v5 setSecondaryContentRemoteServiceBundleIdentifier:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suppressWhenActive"];
    [(BBSectionSubtypeParameters *)v5 setBoxedSuppressesAlertsWhenAppIsActive:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coalescesWhenLocked"];
    [(BBSectionSubtypeParameters *)v5 setBoxedCoalescesWhenLocked:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inertWhenLocked"];
    [(BBSectionSubtypeParameters *)v5 setBoxedInertWhenLocked:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preservesUnlockActionCase"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPreservesUnlockActionCase:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visuallyIndicatesWhenDateIsInFuture"];
    [(BBSectionSubtypeParameters *)v5 setBoxedVisuallyIndicatesWhenDateIsInFuture:v23];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canBeSilencedByMenuButtonPress"];
    [(BBSectionSubtypeParameters *)v5 setBoxedCanBeSilencedByMenuButtonPress:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preventLock"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPreventLock:v25];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ignoresQuietMode"];
    [(BBSectionSubtypeParameters *)v5 setBoxedIgnoresQuietMode:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suppressesTitle"];
    [(BBSectionSubtypeParameters *)v5 setBoxedSuppressesTitle:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showsUnreadIndicatorForNoticesFeed"];
    [(BBSectionSubtypeParameters *)v5 setBoxedShowsUnreadIndicatorForNoticesFeed:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showsContactPhoto"];
    [(BBSectionSubtypeParameters *)v5 setBoxedShowsContactPhoto:v29];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playsSoundForModify"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPlaysSoundForModify:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtypePriority"];
    [(BBSectionSubtypeParameters *)v5 setBoxedSubtypePriority:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iPodOutAlertType"];
    [(BBSectionSubtypeParameters *)v5 setBoxedIPodOutAlertType:v32];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowsAutomaticRemovalFromLockScreen"];
    [(BBSectionSubtypeParameters *)v5 setBoxedAllowsAutomaticRemovalFromLockScreen:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowsAddingToLockScreenWhenUnlocked"];
    [(BBSectionSubtypeParameters *)v5 setBoxedAllowsAddingToLockScreenWhenUnlocked:v34];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prioritizeAtTopOfLockScreen"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPrioritizeAtTopOfLockScreen:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"revealsAdditionalContentOnPresentation"];
    [(BBSectionSubtypeParameters *)v5 setBoxedRevealsAdditionalContentOnPresentation:v36];

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacySettings"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPrivacySettings:v37];

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shouldDismissBulletinWhenClosed"];
    [(BBSectionSubtypeParameters *)v5 setBoxedShouldDismissBulletinWhenClosed:v38];

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowsPersistentBannersInCarPlay"];
    [(BBSectionSubtypeParameters *)v5 setBoxedAllowsPersistentBannersInCarPlay:v39];

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowsSupplementaryActionsInCarPlay"];
    [(BBSectionSubtypeParameters *)v5 setBoxedAllowsSupplementaryActionsInCarPlay:v40];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playsMediaWhenRaised"];
    [(BBSectionSubtypeParameters *)v5 setBoxedPlaysMediaWhenRaised:v41];

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suppressDelayForForwardedBulletins"];
    [(BBSectionSubtypeParameters *)v5 setBoxedSuppressDelayForForwardedBulletins:v42];

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hideDismissActionInCarPlay"];
    [(BBSectionSubtypeParameters *)v5 setBoxedHideDismissActionInCarPlay:v43];

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suppressPresentationInAmbient"];
    [(BBSectionSubtypeParameters *)v5 setSuppressPresentationInAmbient:v44 != 0];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hiddenPreviewsBodyPlaceholder = [(BBSectionSubtypeParameters *)self hiddenPreviewsBodyPlaceholder];
  [coderCopy encodeObject:hiddenPreviewsBodyPlaceholder forKey:@"hiddenPreviewsBodyPlaceholder"];

  subtypeSummaryFormat = [(BBSectionSubtypeParameters *)self subtypeSummaryFormat];
  [coderCopy encodeObject:subtypeSummaryFormat forKey:@"subtypeSummaryFormat"];

  topic = [(BBSectionSubtypeParameters *)self topic];
  [coderCopy encodeObject:topic forKey:@"topic"];

  missedBannerDescriptionFormat = [(BBSectionSubtypeParameters *)self missedBannerDescriptionFormat];
  [coderCopy encodeObject:missedBannerDescriptionFormat forKey:@"missedBannerDescriptionFormat"];

  fullUnlockActionLabel = [(BBSectionSubtypeParameters *)self fullUnlockActionLabel];
  [coderCopy encodeObject:fullUnlockActionLabel forKey:@"fullUnlockActionLabel"];

  unlockActionLabel = [(BBSectionSubtypeParameters *)self unlockActionLabel];
  [coderCopy encodeObject:unlockActionLabel forKey:@"unlockActionLabel"];

  fullAlternateActionLabel = [(BBSectionSubtypeParameters *)self fullAlternateActionLabel];
  [coderCopy encodeObject:fullAlternateActionLabel forKey:@"fullAltnerateActionLabel"];

  alternateActionLabel = [(BBSectionSubtypeParameters *)self alternateActionLabel];
  [coderCopy encodeObject:alternateActionLabel forKey:@"alternateActionLabel"];

  sectionIconOverride = [(BBSectionSubtypeParameters *)self sectionIconOverride];
  [coderCopy encodeObject:sectionIconOverride forKey:@"sectionIconOverride"];

  bannerAccessoryRemoteViewControllerClassName = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteViewControllerClassName];
  [coderCopy encodeObject:bannerAccessoryRemoteViewControllerClassName forKey:@"bannerAccessoryRemoteViewControllerClassName"];

  bannerAccessoryRemoteServiceBundleIdentifier = [(BBSectionSubtypeParameters *)self bannerAccessoryRemoteServiceBundleIdentifier];
  [coderCopy encodeObject:bannerAccessoryRemoteServiceBundleIdentifier forKey:@"bannerAccessoryRemoteServiceBundleIdentifier"];

  secondaryContentRemoteViewControllerClassName = [(BBSectionSubtypeParameters *)self secondaryContentRemoteViewControllerClassName];
  [coderCopy encodeObject:secondaryContentRemoteViewControllerClassName forKey:@"secondaryContentRemoteViewControllerClassName"];

  secondaryContentRemoteServiceBundleIdentifier = [(BBSectionSubtypeParameters *)self secondaryContentRemoteServiceBundleIdentifier];
  [coderCopy encodeObject:secondaryContentRemoteServiceBundleIdentifier forKey:@"secondaryContentRemoteServiceBundleIdentifier"];

  boxedSuppressesAlertsWhenAppIsActive = [(BBSectionSubtypeParameters *)self boxedSuppressesAlertsWhenAppIsActive];
  [coderCopy encodeObject:boxedSuppressesAlertsWhenAppIsActive forKey:@"suppressWhenActive"];

  boxedCoalescesWhenLocked = [(BBSectionSubtypeParameters *)self boxedCoalescesWhenLocked];
  [coderCopy encodeObject:boxedCoalescesWhenLocked forKey:@"coalescesWhenLocked"];

  boxedInertWhenLocked = [(BBSectionSubtypeParameters *)self boxedInertWhenLocked];
  [coderCopy encodeObject:boxedInertWhenLocked forKey:@"inertWhenLocked"];

  boxedPreservesUnlockActionCase = [(BBSectionSubtypeParameters *)self boxedPreservesUnlockActionCase];
  [coderCopy encodeObject:boxedPreservesUnlockActionCase forKey:@"preservesUnlockActionCase"];

  boxedVisuallyIndicatesWhenDateIsInFuture = [(BBSectionSubtypeParameters *)self boxedVisuallyIndicatesWhenDateIsInFuture];
  [coderCopy encodeObject:boxedVisuallyIndicatesWhenDateIsInFuture forKey:@"visuallyIndicatesWhenDateIsInFuture"];

  boxedCanBeSilencedByMenuButtonPress = [(BBSectionSubtypeParameters *)self boxedCanBeSilencedByMenuButtonPress];
  [coderCopy encodeObject:boxedCanBeSilencedByMenuButtonPress forKey:@"canBeSilencedByMenuButtonPress"];

  boxedPreventLock = [(BBSectionSubtypeParameters *)self boxedPreventLock];
  [coderCopy encodeObject:boxedPreventLock forKey:@"preventLock"];

  boxedIgnoresQuietMode = [(BBSectionSubtypeParameters *)self boxedIgnoresQuietMode];
  [coderCopy encodeObject:boxedIgnoresQuietMode forKey:@"ignoresQuietMode"];

  boxedSuppressesTitle = [(BBSectionSubtypeParameters *)self boxedSuppressesTitle];
  [coderCopy encodeObject:boxedSuppressesTitle forKey:@"suppressesTitle"];

  boxedShowsUnreadIndicatorForNoticesFeed = [(BBSectionSubtypeParameters *)self boxedShowsUnreadIndicatorForNoticesFeed];
  [coderCopy encodeObject:boxedShowsUnreadIndicatorForNoticesFeed forKey:@"showsUnreadIndicatorForNoticesFeed"];

  boxedShowsContactPhoto = [(BBSectionSubtypeParameters *)self boxedShowsContactPhoto];
  [coderCopy encodeObject:boxedShowsContactPhoto forKey:@"showsContactPhoto"];

  boxedPlaysSoundForModify = [(BBSectionSubtypeParameters *)self boxedPlaysSoundForModify];
  [coderCopy encodeObject:boxedPlaysSoundForModify forKey:@"playsSoundForModify"];

  boxedSubtypePriority = [(BBSectionSubtypeParameters *)self boxedSubtypePriority];
  [coderCopy encodeObject:boxedSubtypePriority forKey:@"subtypePriority"];

  boxedIPodOutAlertType = [(BBSectionSubtypeParameters *)self boxedIPodOutAlertType];
  [coderCopy encodeObject:boxedIPodOutAlertType forKey:@"iPodOutAlertType"];

  boxedAllowsAutomaticRemovalFromLockScreen = [(BBSectionSubtypeParameters *)self boxedAllowsAutomaticRemovalFromLockScreen];
  [coderCopy encodeObject:boxedAllowsAutomaticRemovalFromLockScreen forKey:@"allowsAutomaticRemovalFromLockScreen"];

  boxedAllowsAddingToLockScreenWhenUnlocked = [(BBSectionSubtypeParameters *)self boxedAllowsAddingToLockScreenWhenUnlocked];
  [coderCopy encodeObject:boxedAllowsAddingToLockScreenWhenUnlocked forKey:@"allowsAddingToLockScreenWhenUnlocked"];

  boxedPrioritizeAtTopOfLockScreen = [(BBSectionSubtypeParameters *)self boxedPrioritizeAtTopOfLockScreen];
  [coderCopy encodeObject:boxedPrioritizeAtTopOfLockScreen forKey:@"prioritizeAtTopOfLockScreen"];

  boxedRevealsAdditionalContentOnPresentation = [(BBSectionSubtypeParameters *)self boxedRevealsAdditionalContentOnPresentation];
  [coderCopy encodeObject:boxedRevealsAdditionalContentOnPresentation forKey:@"revealsAdditionalContentOnPresentation"];

  boxedPrivacySettings = [(BBSectionSubtypeParameters *)self boxedPrivacySettings];
  [coderCopy encodeObject:boxedPrivacySettings forKey:@"privacySettings"];

  boxedShouldDismissBulletinWhenClosed = [(BBSectionSubtypeParameters *)self boxedShouldDismissBulletinWhenClosed];
  [coderCopy encodeObject:boxedShouldDismissBulletinWhenClosed forKey:@"shouldDismissBulletinWhenClosed"];

  boxedAllowsPersistentBannersInCarPlay = [(BBSectionSubtypeParameters *)self boxedAllowsPersistentBannersInCarPlay];
  [coderCopy encodeObject:boxedAllowsPersistentBannersInCarPlay forKey:@"allowsPersistentBannersInCarPlay"];

  boxedAllowsSupplementaryActionsInCarPlay = [(BBSectionSubtypeParameters *)self boxedAllowsSupplementaryActionsInCarPlay];
  [coderCopy encodeObject:boxedAllowsSupplementaryActionsInCarPlay forKey:@"allowsSupplementaryActionsInCarPlay"];

  boxedPlaysMediaWhenRaised = [(BBSectionSubtypeParameters *)self boxedPlaysMediaWhenRaised];
  [coderCopy encodeObject:boxedPlaysMediaWhenRaised forKey:@"playsMediaWhenRaised"];

  boxedSuppressDelayForForwardedBulletins = [(BBSectionSubtypeParameters *)self boxedSuppressDelayForForwardedBulletins];
  [coderCopy encodeObject:boxedSuppressDelayForForwardedBulletins forKey:@"suppressDelayForForwardedBulletins"];

  boxedHideDismissActionInCarPlay = [(BBSectionSubtypeParameters *)self boxedHideDismissActionInCarPlay];
  [coderCopy encodeObject:boxedHideDismissActionInCarPlay forKey:@"hideDismissActionInCarPlay"];

  boxedSuppressPresentationInAmbient = [(BBSectionSubtypeParameters *)self boxedSuppressPresentationInAmbient];
  [coderCopy encodeObject:boxedSuppressPresentationInAmbient forKey:@"suppressPresentationInAmbient"];
}

- (BBSectionSubtypeParameters)fallbackParameters
{
  WeakRetained = objc_loadWeakRetained(&self->_fallbackParameters);

  return WeakRetained;
}

@end