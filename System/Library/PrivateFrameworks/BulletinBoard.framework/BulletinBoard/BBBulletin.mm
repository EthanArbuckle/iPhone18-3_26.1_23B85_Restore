@interface BBBulletin
+ (id)_lifeAssertionAssociationSet;
+ (id)_observerAssociationSet;
+ (id)bulletinReferenceDateFromDate:(id)date;
+ (id)bulletinWithBulletin:(id)bulletin;
+ (id)validSortDescriptorsFromSortDescriptors:(id)descriptors;
+ (void)vetSortDescriptor:(id)descriptor;
- (BBBulletin)init;
- (BBBulletin)initWithCoder:(id)coder;
- (BBContent)content;
- (BBSectionIcon)sectionIcon;
- (BOOL)allowsAddingToLockScreenWhenUnlocked;
- (BOOL)allowsAutomaticRemovalFromLockScreen;
- (BOOL)allowsPersistentBannersInCarPlay;
- (BOOL)allowsSupplementaryActionsInCarPlay;
- (BOOL)canBeSilencedByMenuButtonPress;
- (BOOL)coalescesWhenLocked;
- (BOOL)hideDismissActionInCarPlay;
- (BOOL)inertWhenLocked;
- (BOOL)isCallNotification;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMessagingNotification;
- (BOOL)orderSectionUsingRecencyDate;
- (BOOL)playsMediaWhenRaised;
- (BOOL)playsSoundForModify;
- (BOOL)preservesUnlockActionCase;
- (BOOL)preventLock;
- (BOOL)prioritizeAtTopOfLockScreen;
- (BOOL)revealsAdditionalContentOnPresentation;
- (BOOL)shouldDismissBulletinWhenClosed;
- (BOOL)showsContactPhoto;
- (BOOL)showsDateInFloatingLockScreenAlert;
- (BOOL)showsSubtitle;
- (BOOL)showsUnreadIndicatorForNoticesFeed;
- (BOOL)suppressDelayForForwardedBulletins;
- (BOOL)suppressPresentationInAmbient;
- (BOOL)suppressesAlertsWhenAppIsActive;
- (BOOL)suppressesTitle;
- (BOOL)usesVariableLayout;
- (BOOL)visuallyIndicatesWhenDateIsInFuture;
- (NSAttributedString)attributedMessage;
- (NSAttributedString)summary;
- (NSSet)alertSuppressionAppIDs;
- (NSString)alternateActionLabel;
- (NSString)bannerAccessoryRemoteServiceBundleIdentifier;
- (NSString)bannerAccessoryRemoteViewControllerClassName;
- (NSString)fullAlternateActionLabel;
- (NSString)fullUnlockActionLabel;
- (NSString)hiddenPreviewsBodyPlaceholder;
- (NSString)message;
- (NSString)missedBannerDescriptionFormat;
- (NSString)publisherMatchID;
- (NSString)secondaryContentRemoteServiceBundleIdentifier;
- (NSString)secondaryContentRemoteViewControllerClassName;
- (NSString)sectionDisplayName;
- (NSString)subtitle;
- (NSString)subtypeSummaryFormat;
- (NSString)title;
- (NSString)topic;
- (NSString)unlockActionLabel;
- (id)_actionKeyForType:(int64_t)type;
- (id)_actionWithID:(id)d fromActions:(id)actions;
- (id)_allActions;
- (id)_allSupplementaryActions;
- (id)_responseForAction:(id)action;
- (id)_safeDescription:(BOOL)description;
- (id)_sectionParameters;
- (id)_sectionSubtypeParameters;
- (id)actionForResponse:(id)response;
- (id)actionWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)firstValidObserver;
- (id)lifeAssertions;
- (id)responseForAcknowledgeAction;
- (id)responseForAction:(id)action;
- (id)responseForButtonActionAtIndex:(unint64_t)index;
- (id)responseForDefaultAction;
- (id)responseForExpireAction;
- (id)responseForRaiseAction;
- (id)responseForSnoozeAction;
- (id)responseSendBlock;
- (id)shortDescription;
- (id)supplementaryActionsForLayout:(int64_t)layout;
- (id)syncHash;
- (int64_t)iPodOutAlertType;
- (int64_t)primaryAttachmentType;
- (unint64_t)hash;
- (unint64_t)messageNumberOfLines;
- (unint64_t)numberOfAdditionalAttachments;
- (unint64_t)numberOfAdditionalAttachmentsOfType:(int64_t)type;
- (unint64_t)privacySettings;
- (unint64_t)subtypePriority;
- (void)_fillOutCopy:(id)copy withZone:(_NSZone *)zone;
- (void)addLifeAssertion:(id)assertion;
- (void)addObserver:(id)observer;
- (void)copyAssociationsForBulletin:(id)bulletin;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAcknowledgeAction:(id)action;
- (void)setAlertSuppressionContexts:(id)contexts;
- (void)setAlternateAction:(id)action;
- (void)setAttributedMessage:(id)message;
- (void)setButtons:(id)buttons;
- (void)setDefaultAction:(id)action;
- (void)setDismissAction:(id)action;
- (void)setExpireAction:(id)action;
- (void)setFollowActivityAction:(id)action;
- (void)setHasPrivateContent:(BOOL)content;
- (void)setMessage:(id)message;
- (void)setRaiseAction:(id)action;
- (void)setSilenceAction:(id)action;
- (void)setSnoozeAction:(id)action;
- (void)setSubtitle:(id)subtitle;
- (void)setSummary:(id)summary;
- (void)setTitle:(id)title;
@end

@implementation BBBulletin

- (id)description
{
  v3 = BSIsBeingDebugged() ^ 1;

  return [(BBBulletin *)self _safeDescription:v3];
}

- (BBContent)content
{
  content = self->_content;
  if (!content)
  {
    v4 = objc_alloc_init(BBContent);
    v5 = self->_content;
    self->_content = v4;

    content = self->_content;
  }

  return content;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  bulletinID = [a2 bulletinID];
  v6 = 138412290;
  v7 = bulletinID;
  _os_log_debug_impl(&dword_241EFF000, selfCopy, OS_LOG_TYPE_DEBUG, "Deallocating %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)title
{
  content = [(BBBulletin *)self content];
  title = [content title];

  return title;
}

- (NSString)message
{
  content = [(BBBulletin *)self content];
  message = [content message];

  return message;
}

- (NSString)subtitle
{
  content = [(BBBulletin *)self content];
  subtitle = [content subtitle];

  return subtitle;
}

- (NSString)sectionDisplayName
{
  _sectionParameters = [(BBBulletin *)self _sectionParameters];
  displayName = [_sectionParameters displayName];

  return displayName;
}

- (id)_sectionParameters
{
  firstValidObserver = [(BBBulletin *)self firstValidObserver];
  sectionID = [(BBBulletin *)self sectionID];
  v5 = [firstValidObserver parametersForSectionID:sectionID];

  return v5;
}

- (id)firstValidObserver
{
  _observerAssociationSet = [objc_opt_class() _observerAssociationSet];
  objc_sync_enter(_observerAssociationSet);
  v4 = [_observerAssociationSet associatedObjectsForObject:self];
  objc_sync_exit(_observerAssociationSet);

  anyObject = [v4 anyObject];

  return anyObject;
}

+ (id)_observerAssociationSet
{
  if (_observerAssociationSet___onceToken != -1)
  {
    +[BBBulletin(Associations) _observerAssociationSet];
  }

  v3 = _observerAssociationSet___observerAssociationSet;

  return v3;
}

- (BBBulletin)init
{
  v8.receiver = self;
  v8.super_class = BBBulletin;
  v2 = [(BBBulletin *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = *(v2 + 38);
    *(v2 + 38) = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = *(v2 + 39);
    *(v2 + 39) = v5;

    *(v2 + 13) = 257;
    *(v2 + 9) = xmmword_241F7FD20;
    *(v2 + 7) = 0;
  }

  return v2;
}

- (NSAttributedString)summary
{
  content = [(BBBulletin *)self content];
  summary = [content summary];

  return summary;
}

- (NSString)hiddenPreviewsBodyPlaceholder
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  hiddenPreviewsBodyPlaceholder = [_sectionSubtypeParameters hiddenPreviewsBodyPlaceholder];

  return hiddenPreviewsBodyPlaceholder;
}

- (id)_sectionSubtypeParameters
{
  _sectionParameters = [(BBBulletin *)self _sectionParameters];
  v4 = [_sectionParameters parametersForSubtype:{-[BBBulletin sectionSubtype](self, "sectionSubtype")}];

  return v4;
}

- (NSString)subtypeSummaryFormat
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  subtypeSummaryFormat = [_sectionSubtypeParameters subtypeSummaryFormat];

  return subtypeSummaryFormat;
}

- (BBSectionIcon)sectionIcon
{
  icon = [(BBBulletin *)self icon];
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  sectionIconOverride = [_sectionSubtypeParameters sectionIconOverride];
  _sectionParameters = [(BBBulletin *)self _sectionParameters];
  icon2 = [_sectionParameters icon];
  v8 = icon2;
  if (sectionIconOverride)
  {
    v9 = sectionIconOverride;
  }

  else
  {
    v9 = icon2;
  }

  if (icon)
  {
    v10 = icon;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v10;
}

+ (id)_lifeAssertionAssociationSet
{
  if (_lifeAssertionAssociationSet___onceToken != -1)
  {
    +[BBBulletin(Associations) _lifeAssertionAssociationSet];
  }

  v3 = _lifeAssertionAssociationSet___lifeAssertionAssociationSet;

  return v3;
}

- (NSString)fullAlternateActionLabel
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  fullAlternateActionLabel = [_sectionSubtypeParameters fullAlternateActionLabel];

  return fullAlternateActionLabel;
}

- (NSString)fullUnlockActionLabel
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  fullUnlockActionLabel = [_sectionSubtypeParameters fullUnlockActionLabel];

  return fullUnlockActionLabel;
}

- (NSString)alternateActionLabel
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  alternateActionLabel = [_sectionSubtypeParameters alternateActionLabel];

  return alternateActionLabel;
}

- (NSString)unlockActionLabel
{
  unlockActionLabelOverride = [(BBBulletin *)self unlockActionLabelOverride];
  v4 = unlockActionLabelOverride;
  if (unlockActionLabelOverride)
  {
    unlockActionLabel = unlockActionLabelOverride;
  }

  else
  {
    _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
    unlockActionLabel = [_sectionSubtypeParameters unlockActionLabel];
  }

  return unlockActionLabel;
}

- (BOOL)allowsPersistentBannersInCarPlay
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  allowsPersistentBannersInCarPlay = [_sectionSubtypeParameters allowsPersistentBannersInCarPlay];

  return allowsPersistentBannersInCarPlay;
}

- (BOOL)inertWhenLocked
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  inertWhenLocked = [_sectionSubtypeParameters inertWhenLocked];

  return inertWhenLocked;
}

- (BOOL)allowsAutomaticRemovalFromLockScreen
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  allowsAutomaticRemovalFromLockScreen = [_sectionSubtypeParameters allowsAutomaticRemovalFromLockScreen];

  return allowsAutomaticRemovalFromLockScreen;
}

- (BOOL)prioritizeAtTopOfLockScreen
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  prioritizeAtTopOfLockScreen = [_sectionSubtypeParameters prioritizeAtTopOfLockScreen];

  return prioritizeAtTopOfLockScreen;
}

- (BOOL)canBeSilencedByMenuButtonPress
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  canBeSilencedByMenuButtonPress = [_sectionSubtypeParameters canBeSilencedByMenuButtonPress];

  return canBeSilencedByMenuButtonPress;
}

- (BOOL)suppressesAlertsWhenAppIsActive
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  suppressesAlertsWhenAppIsActive = [_sectionSubtypeParameters suppressesAlertsWhenAppIsActive];

  return suppressesAlertsWhenAppIsActive;
}

- (unint64_t)messageNumberOfLines
{
  _sectionParameters = [(BBBulletin *)self _sectionParameters];
  messageNumberOfLines = [_sectionParameters messageNumberOfLines];

  return messageNumberOfLines;
}

- (BOOL)revealsAdditionalContentOnPresentation
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  revealsAdditionalContentOnPresentation = [_sectionSubtypeParameters revealsAdditionalContentOnPresentation];

  return revealsAdditionalContentOnPresentation;
}

- (unint64_t)privacySettings
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  privacySettings = [_sectionSubtypeParameters privacySettings];

  return privacySettings;
}

- (BOOL)coalescesWhenLocked
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  coalescesWhenLocked = [_sectionSubtypeParameters coalescesWhenLocked];

  return coalescesWhenLocked;
}

- (BOOL)preventLock
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  preventLock = [_sectionSubtypeParameters preventLock];

  return preventLock;
}

- (BOOL)allowsSupplementaryActionsInCarPlay
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  allowsSupplementaryActionsInCarPlay = [_sectionSubtypeParameters allowsSupplementaryActionsInCarPlay];

  return allowsSupplementaryActionsInCarPlay;
}

- (BOOL)playsMediaWhenRaised
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  playsMediaWhenRaised = [_sectionSubtypeParameters playsMediaWhenRaised];

  return playsMediaWhenRaised;
}

- (BOOL)hideDismissActionInCarPlay
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  hideDismissActionInCarPlay = [_sectionSubtypeParameters hideDismissActionInCarPlay];

  return hideDismissActionInCarPlay;
}

- (BOOL)suppressPresentationInAmbient
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  suppressPresentationInAmbient = [_sectionSubtypeParameters suppressPresentationInAmbient];

  return suppressPresentationInAmbient;
}

- (NSString)publisherMatchID
{
  publisherBulletinID = [(BBBulletin *)self publisherBulletinID];
  v4 = publisherBulletinID;
  if (publisherBulletinID)
  {
    recordID = publisherBulletinID;
  }

  else
  {
    recordID = [(BBBulletin *)self recordID];
  }

  v6 = recordID;

  return v6;
}

- (NSAttributedString)attributedMessage
{
  content = [(BBBulletin *)self content];
  attributedMessage = [content attributedMessage];

  return attributedMessage;
}

- (BOOL)shouldDismissBulletinWhenClosed
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  shouldDismissBulletinWhenClosed = [_sectionSubtypeParameters shouldDismissBulletinWhenClosed];

  return shouldDismissBulletinWhenClosed;
}

+ (void)vetSortDescriptor:(id)descriptor
{
  v14[3] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v12 = descriptorCopy;
  if (vetSortDescriptor__onceToken != -1)
  {
    +[BBBulletin vetSortDescriptor:];
    descriptorCopy = v12;
  }

  v4 = [descriptorCopy key];
  if (([vetSortDescriptor__sKeyAllowedList containsObject:v4] & 1) == 0)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE660];
    vetSortDescriptor__sKeyAllowedList = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid sort descriptor key passed from BBDataProvider: %@ Only the following keys may be used: %@", v4, vetSortDescriptor__sKeyAllowedList];;
    v13[0] = @"sortDescriptor";
    v13[1] = @"offendingKey";
    v14[0] = v12;
    v14[1] = v4;
    v13[2] = @"allowedKeys";
    v14[2] = vetSortDescriptor__sKeyAllowedList;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v10 = [v6 exceptionWithName:v7 reason:vetSortDescriptor__sKeyAllowedList userInfo:v9];
    v11 = v10;

    objc_exception_throw(v10);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __32__BBBulletin_vetSortDescriptor___block_invoke()
{
  vetSortDescriptor__sKeyAllowedList = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28542E750];

  return MEMORY[0x2821F96F8]();
}

+ (id)validSortDescriptorsFromSortDescriptors:(id)descriptors
{
  v17 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = descriptorsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [BBBulletin vetSortDescriptor:v9];
        [v9 allowEvaluation];
        [v4 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)bulletinWithBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v4 = objc_alloc_init(BBBulletin);
  [bulletinCopy _fillOutCopy:v4 withZone:MEMORY[0x245D05770]()];

  return v4;
}

+ (id)bulletinReferenceDateFromDate:(id)date
{
  v3 = MEMORY[0x277CBEAB8];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setDay:-7];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar dateByAddingComponents:v5 toDate:dateCopy options:0];

  return v7;
}

- (unint64_t)hash
{
  bulletinID = [(BBBulletin *)self bulletinID];
  v3 = [bulletinID hash];
  bulletinVersionID = [(BBBulletin *)self bulletinVersionID];
  v4 = [bulletinVersionID hash] ^ v3;
  sectionID = [(BBBulletin *)self sectionID];
  v5 = [sectionID hash];
  sectionBundlePath = [(BBBulletin *)self sectionBundlePath];
  v6 = v4 ^ v5 ^ [sectionBundlePath hash];
  universalSectionID = [(BBBulletin *)self universalSectionID];
  v7 = [universalSectionID hash];
  parentSectionID = [(BBBulletin *)self parentSectionID];
  v8 = v7 ^ [parentSectionID hash];
  subsectionIDs = [(BBBulletin *)self subsectionIDs];
  v9 = v6 ^ v8 ^ [subsectionIDs hash];
  recordID = [(BBBulletin *)self recordID];
  v10 = [recordID hash];
  publisherBulletinID = [(BBBulletin *)self publisherBulletinID];
  v11 = v10 ^ [publisherBulletinID hash];
  dismissalID = [(BBBulletin *)self dismissalID];
  v12 = v11 ^ [dismissalID hash];
  categoryID = [(BBBulletin *)self categoryID];
  v13 = v9 ^ v12 ^ [categoryID hash];
  threadID = [(BBBulletin *)self threadID];
  v14 = [threadID hash];
  eventBehavior = [(BBBulletin *)self eventBehavior];
  v15 = v14 ^ [eventBehavior hash];
  v16 = v15 ^ [(BBBulletin *)self isHighlight];
  v17 = v16 ^ [(BBBulletin *)self priorityNotificationStatus];
  v18 = v13 ^ v17 ^ [(BBBulletin *)self notificationSummaryStatus];
  sectionSubtype = [(BBBulletin *)self sectionSubtype];
  intentIDs = [(BBBulletin *)self intentIDs];
  v20 = sectionSubtype ^ [intentIDs hash];
  v21 = v20 ^ [(BBBulletin *)self counter];
  v22 = v21 ^ [(BBBulletin *)self interruptionLevel];
  v23 = v22 ^ [(BBBulletin *)self contentPreviewSetting];
  content = [(BBBulletin *)self content];
  v24 = v18 ^ v23 ^ [content hash];
  communicationContext = [(BBBulletin *)self communicationContext];
  v25 = [communicationContext hash];
  modalAlertContent = [(BBBulletin *)self modalAlertContent];
  v26 = v25 ^ [modalAlertContent hash];
  starkBannerContent = [(BBBulletin *)self starkBannerContent];
  v27 = v26 ^ [starkBannerContent hash];
  summaryArgument = [(BBBulletin *)self summaryArgument];
  v28 = v27 ^ [summaryArgument hash];
  v29 = v28 ^ [(BBBulletin *)self summaryArgumentCount];
  icon = [(BBBulletin *)self icon];
  v30 = v29 ^ [icon hash];
  v31 = v24 ^ v30 ^ [(BBBulletin *)self hasCriticalIcon];
  hasSubordinateIcon = [(BBBulletin *)self hasSubordinateIcon];
  v33 = hasSubordinateIcon ^ [(BBBulletin *)self hasEventDate];
  date = [(BBBulletin *)self date];
  v34 = v33 ^ [date hash];
  endDate = [(BBBulletin *)self endDate];
  v35 = v34 ^ [endDate hash];
  recencyDate = [(BBBulletin *)self recencyDate];
  v36 = v35 ^ [recencyDate hash];
  v37 = v36 ^ [(BBBulletin *)self dateFormatStyle];
  v38 = v31 ^ v37 ^ [(BBBulletin *)self dateIsAllDay];
  timeZone = [(BBBulletin *)self timeZone];
  v39 = [timeZone hash];
  accessoryIconMask = [(BBBulletin *)self accessoryIconMask];
  v40 = v39 ^ [accessoryIconMask hash];
  accessoryImage = [(BBBulletin *)self accessoryImage];
  v41 = v40 ^ [accessoryImage hash];
  v42 = v41 ^ [(BBBulletin *)self clearable];
  sound = [(BBBulletin *)self sound];
  v43 = v42 ^ [sound hash];
  v44 = v43 ^ [(BBBulletin *)self turnsOnDisplay];
  primaryAttachment = [(BBBulletin *)self primaryAttachment];
  v45 = v44 ^ [primaryAttachment hash];
  additionalAttachments = [(BBBulletin *)self additionalAttachments];
  v46 = v45 ^ [additionalAttachments hash];
  unlockActionLabelOverride = [(BBBulletin *)self unlockActionLabelOverride];
  v47 = v38 ^ v46 ^ [unlockActionLabelOverride hash];
  wantsFullscreenPresentation = [(BBBulletin *)self wantsFullscreenPresentation];
  v49 = wantsFullscreenPresentation ^ [(BBBulletin *)self ignoresQuietMode];
  v50 = v49 ^ [(BBBulletin *)self ignoresDowntime];
  v51 = v50 ^ [(BBBulletin *)self preemptsPresentedAlert];
  v52 = v51 ^ [(BBBulletin *)self displaysActionsInline];
  actions = [(BBBulletin *)self actions];
  v53 = v52 ^ [actions hash];
  buttons = [(BBBulletin *)self buttons];
  v54 = v53 ^ [buttons hash];
  supplementaryActionsByLayout = [(BBBulletin *)self supplementaryActionsByLayout];
  v55 = v54 ^ [supplementaryActionsByLayout hash];
  alertSuppressionContexts = [(BBBulletin *)self alertSuppressionContexts];
  v56 = v47 ^ v55 ^ [alertSuppressionContexts hash];
  context = [(BBBulletin *)self context];
  v57 = [context hash];
  expirationDate = [(BBBulletin *)self expirationDate];
  v58 = v57 ^ [expirationDate hash];
  v59 = v58 ^ [(BBBulletin *)self expirationEvents];
  lastInterruptDate = [(BBBulletin *)self lastInterruptDate];
  v60 = v59 ^ [lastInterruptDate hash];
  publicationDate = [(BBBulletin *)self publicationDate];
  v61 = v60 ^ [publicationDate hash];
  v62 = v61 ^ [(BBBulletin *)self usesExternalSync];
  v63 = v62 ^ [(BBBulletin *)self isLoading];
  v64 = v63 ^ [(BBBulletin *)self preventAutomaticRemovalFromLockScreen];
  v65 = v64 ^ [(BBBulletin *)self lockScreenPriority];
  v66 = v65 ^ [(BBBulletin *)self backgroundStyle];
  header = [(BBBulletin *)self header];
  v96 = v56 ^ v66 ^ [header hash];
  footer = [(BBBulletin *)self footer];
  v69 = [footer hash];
  threadSummary = [(BBBulletin *)self threadSummary];
  v71 = v69 ^ [threadSummary hash];
  spotlightIdentifier = [(BBBulletin *)self spotlightIdentifier];
  v73 = v71 ^ [spotlightIdentifier hash];
  v74 = v73 ^ [(BBBulletin *)self realertCount];
  alertSuppressionAppIDs_deprecated = [(BBBulletin *)self alertSuppressionAppIDs_deprecated];
  v76 = v74 ^ [alertSuppressionAppIDs_deprecated hash];
  contentType = [(BBBulletin *)self contentType];
  v78 = v76 ^ [contentType hash];
  v79 = v78 ^ [(BBBulletin *)self screenCaptureProhibited];
  v80 = MEMORY[0x277CCABB0];
  [(BBBulletin *)self relevanceScore];
  v81 = [v80 numberWithFloat:?];
  v82 = v79 ^ [v81 hash];
  filterCriteria = [(BBBulletin *)self filterCriteria];
  v84 = v82 ^ [filterCriteria hash];

  speechLanguage = [(BBBulletin *)self speechLanguage];
  v86 = v84 ^ [speechLanguage hash];

  return v96 ^ v86;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v48 = 1;
    goto LABEL_136;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v48 = 0;
    goto LABEL_136;
  }

  v5 = equalCopy;
  bulletinID = [(BBBulletin *)self bulletinID];
  bulletinID2 = [(BBBulletin *)v5 bulletinID];
  v227 = bulletinID;
  v7 = BSEqualObjects();
  v225 = v7;
  if (!v7 || ([(BBBulletin *)self bulletinVersionID], v9 = objc_claimAutoreleasedReturnValue(), [(BBBulletin *)v5 bulletinVersionID], v200 = v9, v199 = objc_claimAutoreleasedReturnValue(), (v7 = BSEqualObjects()) == 0))
  {
    v224 = 0;
    v49 = 0;
    v50 = 0;
    v222 = 0uLL;
    v218 = 0;
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_40;
  }

  sectionID = [(BBBulletin *)self sectionID];
  [(BBBulletin *)v5 sectionID];
  v196 = v197 = sectionID;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v224 = 0x100000000;
    v49 = 0;
    v50 = 0;
    v222 = 0uLL;
    v218 = 0;
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_40;
  }

  sectionBundlePath = [(BBBulletin *)self sectionBundlePath];
  [(BBBulletin *)v5 sectionBundlePath];
  v194 = v195 = sectionBundlePath;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v49 = 0;
    v50 = 0;
    v222 = 0uLL;
    v218 = 0;
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    goto LABEL_40;
  }

  universalSectionID = [(BBBulletin *)self universalSectionID];
  [(BBBulletin *)v5 universalSectionID];
  v192 = v193 = universalSectionID;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v50 = 0;
    v222 = 0uLL;
    v218 = 0;
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    goto LABEL_40;
  }

  parentSectionID = [(BBBulletin *)self parentSectionID];
  [(BBBulletin *)v5 parentSectionID];
  v190 = v191 = parentSectionID;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v222 = 0uLL;
    v218 = 0;
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    v50 = 1;
    goto LABEL_40;
  }

  subsectionIDs = [(BBBulletin *)self subsectionIDs];
  [(BBBulletin *)v5 subsectionIDs];
  v188 = v189 = subsectionIDs;
  v7 = BSEqualObjects();
  if (!v7)
  {
    *(&v222 + 4) = 0;
    LODWORD(v222) = 0;
    v218 = 0;
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    v50 = 1;
    HIDWORD(v222) = 1;
    goto LABEL_40;
  }

  recordID = [(BBBulletin *)self recordID];
  [(BBBulletin *)v5 recordID];
  v186 = v187 = recordID;
  v7 = BSEqualObjects();
  if (!v7)
  {
    *&v222 = 0;
    v218 = 0;
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    v50 = 1;
    *(&v222 + 1) = 0x100000001;
    goto LABEL_40;
  }

  publisherBulletinID = [(BBBulletin *)self publisherBulletinID];
  [(BBBulletin *)v5 publisherBulletinID];
  v184 = v185 = publisherBulletinID;
  v7 = BSEqualObjects();
  if (!v7)
  {
    *&v222 = 0x100000000;
    v218 = 0;
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    v50 = 1;
    *(&v222 + 1) = 0x100000001;
    goto LABEL_40;
  }

  dismissalID = [(BBBulletin *)self dismissalID];
  [(BBBulletin *)v5 dismissalID];
  v182 = v183 = dismissalID;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v218 = 0;
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    v50 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    goto LABEL_40;
  }

  categoryID = [(BBBulletin *)self categoryID];
  [(BBBulletin *)v5 categoryID];
  v180 = v181 = categoryID;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v215 = 0;
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    v50 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v217 = 0;
    v218 = 1;
    goto LABEL_40;
  }

  threadID = [(BBBulletin *)self threadID];
  [(BBBulletin *)v5 threadID];
  v178 = v179 = threadID;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v205 = 0;
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    v50 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    goto LABEL_40;
  }

  selfCopy = self;
  eventBehavior = [(BBBulletin *)self eventBehavior];
  v21 = v5;
  [(BBBulletin *)v5 eventBehavior];
  v176 = v177 = eventBehavior;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
LABEL_149:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
LABEL_150:
    v5 = v21;
    v50 = 1;
    self = selfCopy;
    goto LABEL_40;
  }

  isHighlight = [(BBBulletin *)self isHighlight];
  if (isHighlight != [(BBBulletin *)v5 isHighlight]|| (v23 = [(BBBulletin *)self priorityNotificationStatus], v23 != [(BBBulletin *)v5 priorityNotificationStatus]) || (v24 = [(BBBulletin *)self notificationSummaryStatus], v24 != [(BBBulletin *)v5 notificationSummaryStatus]))
  {
    v214 = 0;
    v207 = 0;
    v216 = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
    goto LABEL_149;
  }

  peopleIDs = [(BBBulletin *)self peopleIDs];
  [(BBBulletin *)v5 peopleIDs];
  v174 = v175 = peopleIDs;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v207 = 0;
    v216 = 0;
    HIDWORD(v214) = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
LABEL_153:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    LODWORD(v214) = 1;
    goto LABEL_150;
  }

  sectionSubtype = [(BBBulletin *)self sectionSubtype];
  if (sectionSubtype != [(BBBulletin *)v5 sectionSubtype])
  {
    v207 = 0;
    v216 = 0;
    HIDWORD(v214) = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
    goto LABEL_153;
  }

  intentIDs = [(BBBulletin *)self intentIDs];
  intentIDs2 = [(BBBulletin *)v5 intentIDs];
  v173 = intentIDs;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v216 = 0;
    HIDWORD(v214) = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
LABEL_156:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    LODWORD(v214) = 1;
    v207 = 1;
    goto LABEL_150;
  }

  counter = [(BBBulletin *)self counter];
  if (counter != [(BBBulletin *)v5 counter]|| (v29 = [(BBBulletin *)self interruptionLevel], v29 != [(BBBulletin *)v5 interruptionLevel]) || (v30 = [(BBBulletin *)self contentPreviewSetting], v30 != [(BBBulletin *)v5 contentPreviewSetting]))
  {
    v216 = 0;
    HIDWORD(v214) = 0;
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
    goto LABEL_156;
  }

  content = [(BBBulletin *)self content];
  content2 = [(BBBulletin *)v5 content];
  v171 = content;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 1;
    v207 = 1;
    v216 = 1;
    goto LABEL_150;
  }

  modalAlertContent = [(BBBulletin *)self modalAlertContent];
  modalAlertContent2 = [(BBBulletin *)v5 modalAlertContent];
  v169 = modalAlertContent;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v213 = 0;
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    goto LABEL_150;
  }

  starkBannerContent = [(BBBulletin *)self starkBannerContent];
  starkBannerContent2 = [(BBBulletin *)v5 starkBannerContent];
  v167 = starkBannerContent;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v209 = 0;
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    goto LABEL_150;
  }

  communicationContext = [(BBBulletin *)self communicationContext];
  communicationContext2 = [(BBBulletin *)v5 communicationContext];
  v165 = communicationContext;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v204 = 0;
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    goto LABEL_150;
  }

  summaryArgument = [(BBBulletin *)self summaryArgument];
  summaryArgument2 = [(BBBulletin *)v5 summaryArgument];
  v163 = summaryArgument;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
LABEL_163:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    goto LABEL_150;
  }

  summaryArgumentCount = [(BBBulletin *)self summaryArgumentCount];
  if (summaryArgumentCount != [(BBBulletin *)v5 summaryArgumentCount])
  {
    v201 = 0;
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
    goto LABEL_163;
  }

  icon = [(BBBulletin *)self icon];
  icon2 = [(BBBulletin *)v5 icon];
  v161 = icon;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_165;
  }

  hasCriticalIcon = [(BBBulletin *)self hasCriticalIcon];
  if (hasCriticalIcon != [(BBBulletin *)v5 hasCriticalIcon]|| (v39 = [(BBBulletin *)self hasSubordinateIcon], v39 != [(BBBulletin *)v5 hasSubordinateIcon]) || (v40 = [(BBBulletin *)self hasEventDate], v40 != [(BBBulletin *)v5 hasEventDate]))
  {
    v212 = 0;
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
LABEL_165:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    goto LABEL_150;
  }

  date = [(BBBulletin *)self date];
  date2 = [(BBBulletin *)v5 date];
  v159 = date;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v210 = 0;
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    goto LABEL_150;
  }

  endDate = [(BBBulletin *)self endDate];
  endDate2 = [(BBBulletin *)v21 endDate];
  v157 = endDate;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v203 = 0;
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    goto LABEL_150;
  }

  recencyDate = [(BBBulletin *)self recencyDate];
  recencyDate2 = [(BBBulletin *)v21 recencyDate];
  v155 = recencyDate;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_175;
  }

  dateFormatStyle = [(BBBulletin *)selfCopy dateFormatStyle];
  if (dateFormatStyle != [(BBBulletin *)v21 dateFormatStyle]|| (v69 = [(BBBulletin *)selfCopy dateIsAllDay], v69 != [(BBBulletin *)v21 dateIsAllDay]))
  {
    v208 = 0;
    v206 = 0;
    memset(v211, 0, sizeof(v211));
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
LABEL_175:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    goto LABEL_150;
  }

  timeZone = [(BBBulletin *)selfCopy timeZone];
  timeZone2 = [(BBBulletin *)v21 timeZone];
  v153 = timeZone;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v208 = 0;
    v206 = 0;
    *v211 = 0;
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    goto LABEL_150;
  }

  accessoryIconMask = [(BBBulletin *)selfCopy accessoryIconMask];
  accessoryIconMask2 = [(BBBulletin *)v21 accessoryIconMask];
  v151 = accessoryIconMask;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v206 = 0;
    v208 = 0x100000000;
    *v211 = 0;
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    goto LABEL_150;
  }

  accessoryImage = [(BBBulletin *)selfCopy accessoryImage];
  accessoryImage2 = [(BBBulletin *)v21 accessoryImage];
  v149 = accessoryImage;
  v7 = BSEqualObjects();
  if (!v7)
  {
    LODWORD(v208) = 0;
    *v211 = 0;
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_184;
  }

  clearable = [(BBBulletin *)selfCopy clearable];
  if (clearable != [(BBBulletin *)v21 clearable])
  {
    LODWORD(v208) = 0;
    *v211 = 0;
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
LABEL_184:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    HIDWORD(v208) = 1;
    v206 = 1;
    goto LABEL_150;
  }

  sound = [(BBBulletin *)selfCopy sound];
  sound2 = [(BBBulletin *)v21 sound];
  v147 = sound;
  v7 = BSEqualObjects();
  if (!v7)
  {
    *v211 = 0;
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_189;
  }

  turnsOnDisplay = [(BBBulletin *)selfCopy turnsOnDisplay];
  if (turnsOnDisplay != [(BBBulletin *)v21 turnsOnDisplay])
  {
    *v211 = 0;
    v202 = 0;
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
LABEL_189:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v206 = 1;
    v208 = 0x100000001;
    goto LABEL_150;
  }

  primaryAttachment = [(BBBulletin *)selfCopy primaryAttachment];
  primaryAttachment2 = [(BBBulletin *)v21 primaryAttachment];
  v145 = primaryAttachment;
  v7 = BSEqualObjects();
  if (!v7)
  {
    *v211 = 0x100000000;
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    goto LABEL_150;
  }

  additionalAttachments = [(BBBulletin *)selfCopy additionalAttachments];
  additionalAttachments2 = [(BBBulletin *)v21 additionalAttachments];
  v143 = additionalAttachments;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v202 = 0;
    v217 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    goto LABEL_150;
  }

  unlockActionLabelOverride = [(BBBulletin *)selfCopy unlockActionLabelOverride];
  unlockActionLabelOverride2 = [(BBBulletin *)v21 unlockActionLabelOverride];
  v141 = unlockActionLabelOverride;
  v7 = BSEqualObjects();
  if (!v7)
  {
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_202;
  }

  wantsFullscreenPresentation = [(BBBulletin *)selfCopy wantsFullscreenPresentation];
  if (wantsFullscreenPresentation != [(BBBulletin *)v21 wantsFullscreenPresentation]|| (v80 = [(BBBulletin *)selfCopy ignoresQuietMode], v80 != [(BBBulletin *)v21 ignoresQuietMode]) || (v81 = [(BBBulletin *)selfCopy ignoresDowntime], v81 != [(BBBulletin *)v21 ignoresDowntime]) || (v82 = [(BBBulletin *)selfCopy preemptsPresentedAlert], v82 != [(BBBulletin *)v21 preemptsPresentedAlert]) || (v83 = [(BBBulletin *)selfCopy displaysActionsInline], v83 != [(BBBulletin *)v21 displaysActionsInline]))
  {
    memset(v219, 0, sizeof(v219));
    v217 = 0;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
LABEL_202:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    goto LABEL_150;
  }

  actions = [(BBBulletin *)selfCopy actions];
  actions2 = [(BBBulletin *)v21 actions];
  v139 = actions;
  v7 = BSEqualObjects();
  if (!v7)
  {
    *v220 = 0;
    v217 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    goto LABEL_150;
  }

  buttons = [(BBBulletin *)selfCopy buttons];
  buttons2 = [(BBBulletin *)v21 buttons];
  v137 = buttons;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v217 = 0;
    *v220 = 0x100000000;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    memset(v219, 0, sizeof(v219));
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    goto LABEL_150;
  }

  supplementaryActionsByLayout = [(BBBulletin *)selfCopy supplementaryActionsByLayout];
  supplementaryActionsByLayout2 = [(BBBulletin *)v21 supplementaryActionsByLayout];
  v135 = supplementaryActionsByLayout;
  v7 = BSEqualObjects();
  if (!v7)
  {
    *v219 = 0;
    *v220 = 0x100000000;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v217 = 0;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    goto LABEL_150;
  }

  alertSuppressionContexts = [(BBBulletin *)selfCopy alertSuppressionContexts];
  alertSuppressionContexts2 = [(BBBulletin *)v21 alertSuppressionContexts];
  v133 = alertSuppressionContexts;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v217 = 0;
    *v220 = 0x100000000;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v218 = 1;
    *v219 = 0x100000000;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    goto LABEL_150;
  }

  context = [(BBBulletin *)selfCopy context];
  context2 = [(BBBulletin *)v21 context];
  v131 = context;
  v7 = BSEqualObjects();
  if (!v7)
  {
    *v220 = 0x100000000;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    v221 = 0;
    *&v222 = 0x100000001;
    v217 = 0;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    goto LABEL_150;
  }

  expirationDate = [(BBBulletin *)selfCopy expirationDate];
  expirationDate2 = [(BBBulletin *)v21 expirationDate];
  v129 = expirationDate;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v221 = 0;
    *v220 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
LABEL_234:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[4] = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    v217 = 1;
    goto LABEL_150;
  }

  expirationEvents = [(BBBulletin *)selfCopy expirationEvents];
  if (expirationEvents != [(BBBulletin *)v21 expirationEvents])
  {
    v221 = 0;
    *v220 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
    goto LABEL_234;
  }

  lastInterruptDate = [(BBBulletin *)selfCopy lastInterruptDate];
  lastInterruptDate2 = [(BBBulletin *)v21 lastInterruptDate];
  v127 = lastInterruptDate;
  v7 = BSEqualObjects();
  if (!v7)
  {
    *v220 = 0x100000000;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    v217 = 1;
    v221 = 1;
    goto LABEL_150;
  }

  publicationDate = [(BBBulletin *)selfCopy publicationDate];
  publicationDate2 = [(BBBulletin *)v21 publicationDate];
  v125 = publicationDate;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
LABEL_238:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    v217 = 1;
    v221 = 1;
    *v220 = 0x100000001;
    goto LABEL_150;
  }

  usesExternalSync = [(BBBulletin *)selfCopy usesExternalSync];
  if (usesExternalSync != [(BBBulletin *)v21 usesExternalSync]|| (v94 = [(BBBulletin *)selfCopy isLoading], v94 != [(BBBulletin *)v21 isLoading]) || (v95 = [(BBBulletin *)selfCopy preventAutomaticRemovalFromLockScreen], v95 != [(BBBulletin *)v21 preventAutomaticRemovalFromLockScreen]) || (v96 = [(BBBulletin *)selfCopy lockScreenPriority], v96 != [(BBBulletin *)v21 lockScreenPriority]) || (v97 = [(BBBulletin *)selfCopy backgroundStyle], v97 != [(BBBulletin *)v21 backgroundStyle]))
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
    goto LABEL_238;
  }

  header = [(BBBulletin *)selfCopy header];
  header2 = [(BBBulletin *)v21 header];
  v123 = header;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    v217 = 1;
    v221 = 1;
    *v220 = 0x100000001;
    v41 = 1;
    goto LABEL_150;
  }

  footer = [(BBBulletin *)selfCopy footer];
  footer2 = [(BBBulletin *)v21 footer];
  v121 = footer;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    v217 = 1;
    v221 = 1;
    *v220 = 0x100000001;
    v41 = 1;
    v42 = 1;
    goto LABEL_150;
  }

  threadSummary = [(BBBulletin *)selfCopy threadSummary];
  threadSummary2 = [(BBBulletin *)v21 threadSummary];
  v119 = threadSummary;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    v217 = 1;
    v221 = 1;
    *v220 = 0x100000001;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    goto LABEL_150;
  }

  spotlightIdentifier = [(BBBulletin *)selfCopy spotlightIdentifier];
  spotlightIdentifier2 = [(BBBulletin *)v21 spotlightIdentifier];
  v117 = spotlightIdentifier;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
LABEL_244:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    v217 = 1;
    v221 = 1;
    *v220 = 0x100000001;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    goto LABEL_150;
  }

  realertCount = [(BBBulletin *)selfCopy realertCount];
  if (realertCount != [(BBBulletin *)v21 realertCount])
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
    goto LABEL_244;
  }

  alertSuppressionAppIDs_deprecated = [(BBBulletin *)selfCopy alertSuppressionAppIDs_deprecated];
  alertSuppressionAppIDs_deprecated2 = [(BBBulletin *)v21 alertSuppressionAppIDs_deprecated];
  v115 = alertSuppressionAppIDs_deprecated;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v46 = 0;
    v47 = 0;
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    v217 = 1;
    v221 = 1;
    *v220 = 0x100000001;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    goto LABEL_150;
  }

  contentType = [(BBBulletin *)selfCopy contentType];
  contentType2 = [(BBBulletin *)v21 contentType];
  v113 = contentType;
  v7 = BSEqualObjects();
  if (!v7)
  {
    v47 = 0;
LABEL_248:
    v224 = 0x100000001;
    v49 = 1;
    *(&v222 + 1) = 0x100000001;
    *&v222 = 0x100000001;
    v218 = 1;
    v215 = 1;
    v205 = 1;
    v214 = 0x100000001;
    v207 = 1;
    v216 = 1;
    v213 = 1;
    v209 = 1;
    v204 = 1;
    v201 = 1;
    v212 = 1;
    v210 = 1;
    v203 = 1;
    *&v211[8] = 1;
    v208 = 0x100000001;
    v206 = 1;
    *v211 = 0x100000001;
    v202 = 1;
    *&v220[8] = 1;
    *&v219[8] = 1;
    *v219 = 0x100000001;
    v217 = 1;
    v221 = 1;
    *v220 = 0x100000001;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v46 = 1;
    goto LABEL_150;
  }

  screenCaptureProhibited = [(BBBulletin *)selfCopy screenCaptureProhibited];
  if (screenCaptureProhibited != [(BBBulletin *)v21 screenCaptureProhibited]|| ([(BBBulletin *)selfCopy relevanceScore], v107 = v106, [(BBBulletin *)v21 relevanceScore], v107 != v108))
  {
    v47 = 0;
    v7 = 0;
    goto LABEL_248;
  }

  self = selfCopy;
  filterCriteria = [(BBBulletin *)selfCopy filterCriteria];
  v5 = v21;
  filterCriteria2 = [(BBBulletin *)v21 filterCriteria];
  v111 = filterCriteria;
  v7 = BSEqualObjects();
  v8 = filterCriteria2;
  v47 = 1;
  v224 = 0x100000001;
  v49 = 1;
  v50 = 1;
  *(&v222 + 1) = 0x100000001;
  *&v222 = 0x100000001;
  v218 = 1;
  v215 = 1;
  v205 = 1;
  v214 = 0x100000001;
  v207 = 1;
  v216 = 1;
  v213 = 1;
  v209 = 1;
  v204 = 1;
  v201 = 1;
  v212 = 1;
  v210 = 1;
  v203 = 1;
  *&v211[8] = 1;
  v208 = 0x100000001;
  v206 = 1;
  *v211 = 0x100000001;
  v202 = 1;
  *&v220[8] = 1;
  *&v219[8] = 1;
  *v219 = 0x100000001;
  v217 = 1;
  v221 = 1;
  *v220 = 0x100000001;
  v41 = 1;
  v42 = 1;
  v43 = 1;
  v44 = 1;
  v45 = 1;
  v46 = 1;
LABEL_40:
  LODWORD(selfCopy) = v7;
  if (v47)
  {
    v198 = v50;
    v51 = equalCopy;
    selfCopy2 = self;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v57 = v5;
    v58 = v49;
    v59 = v45;
    v60 = v46;

    v61 = v60;
    v45 = v59;
    v49 = v58;
    v5 = v57;
    v44 = v56;
    v43 = v55;
    v42 = v54;
    v41 = v53;
    self = selfCopy2;
    equalCopy = v51;
    v50 = v198;
    if (!v61)
    {
      goto LABEL_42;
    }
  }

  else if (!v46)
  {
LABEL_42:
    if (v45)
    {
      goto LABEL_43;
    }

    goto LABEL_126;
  }

  if (v45)
  {
LABEL_43:

    if (!v44)
    {
      goto LABEL_44;
    }

    goto LABEL_127;
  }

LABEL_126:
  if (!v44)
  {
LABEL_44:
    if (v43)
    {
      goto LABEL_45;
    }

    goto LABEL_128;
  }

LABEL_127:

  if (v43)
  {
LABEL_45:

    if (!v42)
    {
      goto LABEL_46;
    }

    goto LABEL_129;
  }

LABEL_128:
  if (!v42)
  {
LABEL_46:
    if (!v41)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_129:

  if (v41)
  {
LABEL_47:
  }

LABEL_48:
  if (*v220)
  {
  }

  if (v221)
  {
  }

  if (v217)
  {
  }

  if (*v219)
  {
  }

  if (*&v219[4])
  {
  }

  if (*&v219[8])
  {
  }

  if (*&v220[4])
  {
  }

  if (*&v220[8])
  {
  }

  if (v202)
  {
  }

  if (*v211)
  {
  }

  if (*&v211[4])
  {
  }

  if (v208)
  {
  }

  if (v206)
  {
  }

  if (HIDWORD(v208))
  {
  }

  if (*&v211[8])
  {
  }

  if (v203)
  {
  }

  if (v210)
  {
  }

  if (v212)
  {
  }

  if (v201)
  {
  }

  if (v204)
  {
  }

  if (v209)
  {
  }

  if (v213)
  {
  }

  if (HIDWORD(v214))
  {
  }

  if (v216)
  {
  }

  if (v207)
  {
  }

  if (v214)
  {
  }

  if (v205)
  {
  }

  if (v215)
  {
  }

  if (v218)
  {
  }

  if (v222)
  {
  }

  if (DWORD1(v222))
  {
  }

  if (DWORD2(v222))
  {
  }

  if (HIDWORD(v222))
  {

    if (!v50)
    {
      goto LABEL_114;
    }

LABEL_132:

    if (!v49)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  if (v50)
  {
    goto LABEL_132;
  }

LABEL_114:
  if (v49)
  {
LABEL_115:
  }

LABEL_116:
  if (v224)
  {
  }

  if (HIDWORD(v224))
  {
  }

  if (v225)
  {
  }

  if (selfCopy)
  {
    speechLanguage = [(BBBulletin *)self speechLanguage];
    speechLanguage2 = [(BBBulletin *)v5 speechLanguage];
    v48 = BSEqualObjects();
  }

  else
  {
    v48 = 0;
  }

LABEL_136:
  return v48;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  content = [(BBBulletin *)self content];
  [content setTitle:titleCopy];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  content = [(BBBulletin *)self content];
  [content setSubtitle:subtitleCopy];
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  content = [(BBBulletin *)self content];
  [content setMessage:messageCopy];
}

- (void)setAttributedMessage:(id)message
{
  messageCopy = message;
  content = [(BBBulletin *)self content];
  [content setAttributedMessage:messageCopy];
}

- (void)setSummary:(id)summary
{
  summaryCopy = summary;
  content = [(BBBulletin *)self content];
  [content setSummary:summaryCopy];
}

- (BOOL)isMessagingNotification
{
  if ([(NSString *)self->_contentType isEqualToString:@"BBBulletinContentTypeMessagingDirect"])
  {
    return 1;
  }

  contentType = self->_contentType;

  return [(NSString *)contentType isEqualToString:@"BBBulletinContentTypeMessagingGroup"];
}

- (BOOL)isCallNotification
{
  if ([(NSString *)self->_contentType isEqualToString:@"BBBulletinContentTypeIncomingCall"]|| [(NSString *)self->_contentType isEqualToString:@"BBBulletinContentTypeMissedCall"]|| [(NSString *)self->_contentType isEqualToString:@"BBBulletinContentTypeVoicemail"])
  {
    return 1;
  }

  contentType = self->_contentType;

  return [(NSString *)contentType isEqualToString:@"BBBulletinContentTypeCallOther"];
}

- (void)setAlertSuppressionContexts:(id)contexts
{
  v22 = *MEMORY[0x277D85DE8];
  contextsCopy = contexts;
  alertSuppressionContexts = self->_alertSuppressionContexts;
  self->_alertSuppressionContexts = 0;

  if (contextsCopy)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(contextsCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = contextsCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 copy];
            [v6 addObject:v13];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:v6];
    v15 = self->_alertSuppressionContexts;
    self->_alertSuppressionContexts = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (int64_t)primaryAttachmentType
{
  primaryAttachment = [(BBBulletin *)self primaryAttachment];
  type = [primaryAttachment type];

  return type;
}

- (unint64_t)numberOfAdditionalAttachments
{
  additionalAttachments = [(BBBulletin *)self additionalAttachments];
  v3 = [additionalAttachments count];

  return v3;
}

- (unint64_t)numberOfAdditionalAttachmentsOfType:(int64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  additionalAttachments = [(BBBulletin *)self additionalAttachments];
  v5 = [additionalAttachments copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * i) type] == type)
        {
          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_actionKeyForType:(int64_t)type
{
  if ((type - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return off_278D2A568[type - 1];
  }
}

- (void)setDefaultAction:(id)action
{
  actionCopy = action;
  [actionCopy setActionType:1];
  actions = self->_actions;
  v6 = [actionCopy copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"default"];
}

- (void)setDismissAction:(id)action
{
  actionCopy = action;
  [actionCopy setActionType:8];
  actions = self->_actions;
  v6 = [actionCopy copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"dismiss"];
}

- (void)setAlternateAction:(id)action
{
  actionCopy = action;
  [actionCopy setActionType:2];
  actions = self->_actions;
  v6 = [actionCopy copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"alternate"];
}

- (void)setAcknowledgeAction:(id)action
{
  actionCopy = action;
  [actionCopy setActionType:3];
  actions = self->_actions;
  v6 = [actionCopy copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"acknowledge"];
}

- (void)setExpireAction:(id)action
{
  actionCopy = action;
  [actionCopy setActionType:5];
  actions = self->_actions;
  v6 = [actionCopy copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"expire"];
}

- (void)setSnoozeAction:(id)action
{
  actionCopy = action;
  [actionCopy setActionType:6];
  actions = self->_actions;
  v6 = [actionCopy copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"snooze"];
}

- (void)setRaiseAction:(id)action
{
  actionCopy = action;
  [actionCopy setActionType:9];
  actions = self->_actions;
  v6 = [actionCopy copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"raise"];
}

- (void)setFollowActivityAction:(id)action
{
  actionCopy = action;
  [actionCopy setActionType:11];
  actions = self->_actions;
  v6 = [actionCopy copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"follow-activity"];
}

- (void)setSilenceAction:(id)action
{
  actionCopy = action;
  [actionCopy setActionType:10];
  actions = self->_actions;
  v6 = [actionCopy copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"silence"];
}

- (id)actionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _allActions = [(BBBulletin *)self _allActions];
  v6 = [(BBBulletin *)self _actionWithID:identifierCopy fromActions:_allActions];

  return v6;
}

- (id)_actionWithID:(id)d fromActions:(id)actions
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  actionsCopy = actions;
  v8 = [actionsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(actionsCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          actions = [v12 actions];
          v14 = [(BBBulletin *)self _actionWithID:dCopy fromActions:actions];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
          identifier = [v12 identifier];
          v16 = [identifier isEqualToString:dCopy];

          if (v16)
          {
            v14 = v12;
            if (v14)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v9 = [actionsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)supplementaryActionsForLayout:(int64_t)layout
{
  supplementaryActionsByLayout = self->_supplementaryActionsByLayout;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:layout];
  v5 = [(NSMutableDictionary *)supplementaryActionsByLayout objectForKey:v4];

  return v5;
}

- (id)_allSupplementaryActions
{
  allValues = [(NSMutableDictionary *)self->_supplementaryActionsByLayout allValues];
  bs_flatten = [allValues bs_flatten];

  return bs_flatten;
}

- (id)_allActions
{
  array = [MEMORY[0x277CBEB18] array];
  allValues = [(NSMutableDictionary *)self->_actions allValues];
  [array addObjectsFromArray:allValues];

  _allSupplementaryActions = [(BBBulletin *)self _allSupplementaryActions];
  [array addObjectsFromArray:_allSupplementaryActions];

  return array;
}

- (void)setButtons:(id)buttons
{
  buttonsCopy = buttons;
  if (buttonsCopy)
  {
    v13 = buttonsCopy;
    v5 = [buttonsCopy count];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5];
      for (i = 0; i != v6; ++i)
      {
        v9 = [v13 objectAtIndex:i];
        v10 = [v9 copy];

        [v7 addObject:v10];
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v7];
    buttons = self->_buttons;
    self->_buttons = v11;

    buttonsCopy = v13;
  }
}

- (id)_responseForAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(BBResponse);
  lifeAssertions = [(BBBulletin *)self lifeAssertions];
  [(BBResponse *)v5 setLifeAssertions:lifeAssertions];

  responseSendBlock = [(BBBulletin *)self responseSendBlock];
  [(BBResponse *)v5 setSendBlock:responseSendBlock];

  bulletinID = [(BBBulletin *)self bulletinID];
  [(BBResponse *)v5 setBulletinID:bulletinID];

  -[BBResponse setActionActivationMode:](v5, "setActionActivationMode:", [actionCopy activationMode]);
  -[BBResponse setActionBehavior:](v5, "setActionBehavior:", [actionCopy behavior]);
  -[BBResponse setActionType:](v5, "setActionType:", [actionCopy actionType]);
  identifier = [actionCopy identifier];
  [(BBResponse *)v5 setActionID:identifier];

  launchURL = [actionCopy launchURL];

  [(BBResponse *)v5 setActionLaunchURL:launchURL];

  return v5;
}

- (id)responseForAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    NSLog(&cfstr_SErrorYouCanTS.isa, "[BBBulletin responseForAction:]");
LABEL_4:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [(BBBulletin *)self _responseForAction:actionCopy];
LABEL_6:

  return v5;
}

- (id)responseForDefaultAction
{
  defaultAction = [(BBBulletin *)self defaultAction];
  v4 = [(BBBulletin *)self responseForAction:defaultAction];

  return v4;
}

- (id)responseForAcknowledgeAction
{
  acknowledgeAction = [(BBBulletin *)self acknowledgeAction];
  v4 = [(BBBulletin *)self responseForAction:acknowledgeAction];

  return v4;
}

- (id)responseForButtonActionAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_buttons count]<= index)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_buttons objectAtIndex:index];
    action = [v5 action];
    v7 = [(BBBulletin *)self _responseForAction:action];

    identifier = [v5 identifier];
    if (identifier)
    {
      [v7 setButtonID:identifier];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
      stringValue = [v9 stringValue];
      [v7 setButtonID:stringValue];
    }
  }

  return v7;
}

- (id)responseForSnoozeAction
{
  snoozeAction = [(BBBulletin *)self snoozeAction];
  v4 = [(BBBulletin *)self responseForAction:snoozeAction];

  return v4;
}

- (id)responseForRaiseAction
{
  raiseAction = [(BBBulletin *)self raiseAction];
  v4 = [(BBBulletin *)self responseForAction:raiseAction];

  return v4;
}

- (id)responseForExpireAction
{
  v3 = objc_alloc_init(BBResponse);
  bulletinID = [(BBBulletin *)self bulletinID];
  [(BBResponse *)v3 setBulletinID:bulletinID];

  expireAction = [(BBBulletin *)self expireAction];
  -[BBResponse setActionActivationMode:](v3, "setActionActivationMode:", [expireAction activationMode]);

  [(BBResponse *)v3 setActionType:5];
  expireAction2 = [(BBBulletin *)self expireAction];
  identifier = [expireAction2 identifier];
  [(BBResponse *)v3 setActionID:identifier];

  return v3;
}

- (id)responseSendBlock
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__BBBulletin_responseSendBlock__block_invoke;
  v5[3] = &unk_278D2A548;
  v5[4] = self;
  v2 = MEMORY[0x245D05D40](v5, a2);
  v3 = MEMORY[0x245D05D40]();

  return v3;
}

void __31__BBBulletin_responseSendBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 firstValidObserver];
  [v4 sendResponse:v3];
}

- (id)actionForResponse:(id)response
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (!responseCopy)
  {
    NSLog(&cfstr_BbbulletinHand.isa);
LABEL_9:
    action = 0;
    goto LABEL_24;
  }

  bulletinID = [(BBBulletin *)self bulletinID];
  bulletinID2 = [responseCopy bulletinID];
  v7 = [bulletinID isEqualToString:bulletinID2];

  if ((v7 & 1) == 0)
  {
    bulletinID3 = [(BBBulletin *)self bulletinID];
    bulletinID4 = [responseCopy bulletinID];
    NSLog(&cfstr_BbbulletinHand_0.isa, bulletinID3, bulletinID4);

    goto LABEL_9;
  }

  v8 = -[BBBulletin _actionKeyForType:](self, "_actionKeyForType:", [responseCopy actionType]);
  actionType = [responseCopy actionType];
  if (!v8)
  {
    NSLog(&cfstr_BbbulletinHand_1.isa, actionType);
LABEL_11:
    action = 0;
    goto LABEL_23;
  }

  if (actionType == 7)
  {
    actionID = [responseCopy actionID];
    _allSupplementaryActions = [(BBBulletin *)self _allSupplementaryActions];
    action = [(BBBulletin *)self _actionWithID:actionID fromActions:_allSupplementaryActions];

    goto LABEL_6;
  }

  if (![v8 isEqualToString:@"button"])
  {
    action = [(NSMutableDictionary *)self->_actions objectForKey:v8];
    goto LABEL_23;
  }

  v27 = v8;
  actionID = [responseCopy buttonID];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = self->_buttons;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
LABEL_15:
    v19 = 0;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v28 + 1) + 8 * v19);
      identifier = [v20 identifier];
      v22 = [identifier isEqualToString:actionID];

      if (v22)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v17)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    action = [v20 action];

    if (!action)
    {
      goto LABEL_29;
    }

    v8 = v27;
    goto LABEL_6;
  }

LABEL_21:

LABEL_29:
  integerValue = [actionID integerValue];
  v8 = v27;
  if (integerValue >= -[NSArray count](self->_buttons, "count") || (-[NSArray objectAtIndex:](self->_buttons, "objectAtIndex:", integerValue), v26 = objc_claimAutoreleasedReturnValue(), [v26 action], action = objc_claimAutoreleasedReturnValue(), v26, !action))
  {
    NSLog(&cfstr_BbbulletinHand_2.isa, actionID);

    goto LABEL_11;
  }

LABEL_6:

LABEL_23:
LABEL_24:

  v23 = *MEMORY[0x277D85DE8];

  return action;
}

- (void)_fillOutCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  sectionID = [(BBBulletin *)self sectionID];
  [copyCopy setSectionID:sectionID];

  sectionBundlePath = [(BBBulletin *)self sectionBundlePath];
  [copyCopy setSectionBundlePath:sectionBundlePath];

  universalSectionID = [(BBBulletin *)self universalSectionID];
  [copyCopy setUniversalSectionID:universalSectionID];

  parentSectionID = [(BBBulletin *)self parentSectionID];
  [copyCopy setParentSectionID:parentSectionID];

  subsectionIDs = [(BBBulletin *)self subsectionIDs];
  [copyCopy setSubsectionIDs:subsectionIDs];

  recordID = [(BBBulletin *)self recordID];
  [copyCopy setRecordID:recordID];

  publisherBulletinID = [(BBBulletin *)self publisherBulletinID];
  [copyCopy setPublisherBulletinID:publisherBulletinID];

  dismissalID = [(BBBulletin *)self dismissalID];
  [copyCopy setDismissalID:dismissalID];

  categoryID = [(BBBulletin *)self categoryID];
  [copyCopy setCategoryID:categoryID];

  threadID = [(BBBulletin *)self threadID];
  [copyCopy setThreadID:threadID];

  eventBehavior = [(BBBulletin *)self eventBehavior];
  [copyCopy setEventBehavior:eventBehavior];

  [copyCopy setIsHighlight:{-[BBBulletin isHighlight](self, "isHighlight")}];
  [copyCopy setPriorityNotificationStatus:{-[BBBulletin priorityNotificationStatus](self, "priorityNotificationStatus")}];
  [copyCopy setNotificationSummaryStatus:{-[BBBulletin notificationSummaryStatus](self, "notificationSummaryStatus")}];
  peopleIDs = [(BBBulletin *)self peopleIDs];
  [copyCopy setPeopleIDs:peopleIDs];

  [copyCopy setSectionSubtype:{-[BBBulletin sectionSubtype](self, "sectionSubtype")}];
  intentIDs = [(BBBulletin *)self intentIDs];
  [copyCopy setIntentIDs:intentIDs];

  [copyCopy setCounter:{-[BBBulletin counter](self, "counter")}];
  [copyCopy setInterruptionLevel:{-[BBBulletin interruptionLevel](self, "interruptionLevel")}];
  [copyCopy setContentPreviewSetting:{-[BBBulletin contentPreviewSetting](self, "contentPreviewSetting")}];
  content = [(BBBulletin *)self content];
  v20 = [content copyWithZone:zone];
  [copyCopy setContent:v20];

  modalAlertContent = [(BBBulletin *)self modalAlertContent];
  v22 = [modalAlertContent copyWithZone:zone];
  [copyCopy setModalAlertContent:v22];

  starkBannerContent = [(BBBulletin *)self starkBannerContent];
  v24 = [starkBannerContent copyWithZone:zone];
  [copyCopy setStarkBannerContent:v24];

  communicationContext = [(BBBulletin *)self communicationContext];
  v26 = [communicationContext copyWithZone:zone];
  [copyCopy setCommunicationContext:v26];

  summaryArgument = [(BBBulletin *)self summaryArgument];
  v28 = [summaryArgument copyWithZone:zone];
  [copyCopy setSummaryArgument:v28];

  [copyCopy setSummaryArgumentCount:{-[BBBulletin summaryArgumentCount](self, "summaryArgumentCount")}];
  icon = [(BBBulletin *)self icon];
  v30 = [icon copyWithZone:zone];
  [copyCopy setIcon:v30];

  [copyCopy setHasCriticalIcon:{-[BBBulletin hasCriticalIcon](self, "hasCriticalIcon")}];
  [copyCopy setHasSubordinateIcon:{-[BBBulletin hasSubordinateIcon](self, "hasSubordinateIcon")}];
  [copyCopy setHasEventDate:{-[BBBulletin hasEventDate](self, "hasEventDate")}];
  date = [(BBBulletin *)self date];
  [copyCopy setDate:date];

  endDate = [(BBBulletin *)self endDate];
  [copyCopy setEndDate:endDate];

  recencyDate = [(BBBulletin *)self recencyDate];
  [copyCopy setRecencyDate:recencyDate];

  [copyCopy setDateFormatStyle:{-[BBBulletin dateFormatStyle](self, "dateFormatStyle")}];
  [copyCopy setDateIsAllDay:{-[BBBulletin dateIsAllDay](self, "dateIsAllDay")}];
  timeZone = [(BBBulletin *)self timeZone];
  [copyCopy setTimeZone:timeZone];

  accessoryIconMask = [(BBBulletin *)self accessoryIconMask];
  [copyCopy setAccessoryIconMask:accessoryIconMask];

  accessoryImage = [(BBBulletin *)self accessoryImage];
  [copyCopy setAccessoryImage:accessoryImage];

  [copyCopy setClearable:{-[BBBulletin clearable](self, "clearable")}];
  sound = [(BBBulletin *)self sound];
  v38 = [sound copyWithZone:zone];
  [copyCopy setSound:v38];

  [copyCopy setTurnsOnDisplay:{-[BBBulletin turnsOnDisplay](self, "turnsOnDisplay")}];
  primaryAttachment = [(BBBulletin *)self primaryAttachment];
  [copyCopy setPrimaryAttachment:primaryAttachment];

  additionalAttachments = [(BBBulletin *)self additionalAttachments];
  [copyCopy setAdditionalAttachments:additionalAttachments];

  unlockActionLabelOverride = [(BBBulletin *)self unlockActionLabelOverride];
  [copyCopy setUnlockActionLabelOverride:unlockActionLabelOverride];

  [copyCopy setWantsFullscreenPresentation:{-[BBBulletin wantsFullscreenPresentation](self, "wantsFullscreenPresentation")}];
  [copyCopy setIgnoresQuietMode:{-[BBBulletin ignoresQuietMode](self, "ignoresQuietMode")}];
  [copyCopy setIgnoresDowntime:{-[BBBulletin ignoresDowntime](self, "ignoresDowntime")}];
  [copyCopy setPreemptsPresentedAlert:{-[BBBulletin preemptsPresentedAlert](self, "preemptsPresentedAlert")}];
  [copyCopy setDisplaysActionsInline:{-[BBBulletin displaysActionsInline](self, "displaysActionsInline")}];
  actions = [(BBBulletin *)self actions];
  v43 = [actions mutableCopy];
  [copyCopy setActions:v43];

  buttons = [(BBBulletin *)self buttons];
  [copyCopy setButtons:buttons];

  supplementaryActionsByLayout = [(BBBulletin *)self supplementaryActionsByLayout];
  [copyCopy setSupplementaryActionsByLayout:supplementaryActionsByLayout];

  context = [(BBBulletin *)self context];
  [copyCopy setContext:context];

  expirationDate = [(BBBulletin *)self expirationDate];
  [copyCopy setExpirationDate:expirationDate];

  [copyCopy setExpirationEvents:{-[BBBulletin expirationEvents](self, "expirationEvents")}];
  alertSuppressionContexts = [(BBBulletin *)self alertSuppressionContexts];
  [copyCopy setAlertSuppressionContexts:alertSuppressionContexts];

  bulletinID = [(BBBulletin *)self bulletinID];
  [copyCopy setBulletinID:bulletinID];

  lastInterruptDate = [(BBBulletin *)self lastInterruptDate];
  [copyCopy setLastInterruptDate:lastInterruptDate];

  publicationDate = [(BBBulletin *)self publicationDate];
  [copyCopy setPublicationDate:publicationDate];

  [copyCopy setUsesExternalSync:{-[BBBulletin usesExternalSync](self, "usesExternalSync")}];
  [copyCopy setLoading:{-[BBBulletin isLoading](self, "isLoading")}];
  [copyCopy setPreventAutomaticRemovalFromLockScreen:{-[BBBulletin preventAutomaticRemovalFromLockScreen](self, "preventAutomaticRemovalFromLockScreen")}];
  [copyCopy setLockScreenPriority:{-[BBBulletin lockScreenPriority](self, "lockScreenPriority")}];
  [copyCopy setBackgroundStyle:{-[BBBulletin backgroundStyle](self, "backgroundStyle")}];
  header = [(BBBulletin *)self header];
  [copyCopy setHeader:header];

  footer = [(BBBulletin *)self footer];
  [copyCopy setFooter:footer];

  threadSummary = [(BBBulletin *)self threadSummary];
  [copyCopy setThreadSummary:threadSummary];

  spotlightIdentifier = [(BBBulletin *)self spotlightIdentifier];
  [copyCopy setSpotlightIdentifier:spotlightIdentifier];

  if ([copyCopy isMemberOfClass:objc_opt_class()])
  {
    bulletinVersionID = [(BBBulletin *)self bulletinVersionID];
    [copyCopy setBulletinVersionID:bulletinVersionID];

    bulletinVersionID2 = [copyCopy bulletinVersionID];

    if (!bulletinVersionID2)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [copyCopy setBulletinVersionID:uUIDString];
    }
  }

  [copyCopy setRealertCount:{-[BBBulletin realertCount](self, "realertCount")}];
  alertSuppressionAppIDs_deprecated = [(BBBulletin *)self alertSuppressionAppIDs_deprecated];
  [copyCopy setAlertSuppressionAppIDs_deprecated:alertSuppressionAppIDs_deprecated];

  contentType = [(BBBulletin *)self contentType];
  [copyCopy setContentType:contentType];

  [copyCopy setScreenCaptureProhibited:{-[BBBulletin screenCaptureProhibited](self, "screenCaptureProhibited")}];
  speechLanguage = [(BBBulletin *)self speechLanguage];
  [copyCopy setSpeechLanguage:speechLanguage];

  [(BBBulletin *)self relevanceScore];
  [copyCopy setRelevanceScore:?];
  filterCriteria = [(BBBulletin *)self filterCriteria];
  [copyCopy setFilterCriteria:filterCriteria];

  [copyCopy copyAssociationsForBulletin:self];
}

- (void)setHasPrivateContent:(BOOL)content
{
  if (content)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  [(BBBulletin *)self setContentPreviewSetting:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(BBBulletin *)self _fillOutCopy:v5 withZone:zone];
  return v5;
}

- (BBBulletin)initWithCoder:(id)coder
{
  v95[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v89.receiver = self;
  v89.super_class = BBBulletin;
  v5 = [(BBBulletin *)&v89 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bulletinID"];
    [(BBBulletin *)v5 setBulletinID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"versionID"];
    [(BBBulletin *)v5 setBulletinVersionID:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    [(BBBulletin *)v5 setSectionID:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionBundlePathKey"];
    [(BBBulletin *)v5 setSectionBundlePath:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"universalSectionID"];
    [(BBBulletin *)v5 setUniversalSectionID:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentSectionID"];
    [(BBBulletin *)v5 setParentSectionID:v11];

    v12 = MEMORY[0x277CBEB98];
    v95[0] = objc_opt_class();
    v95[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"subsectionIDs"];
    [(BBBulletin *)v5 setSubsectionIDs:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publisherRecordID"];
    [(BBBulletin *)v5 setRecordID:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publisherBulletinID"];
    [(BBBulletin *)v5 setPublisherBulletinID:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dismissalID"];
    [(BBBulletin *)v5 setDismissalID:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryID"];
    [(BBBulletin *)v5 setCategoryID:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadID"];
    [(BBBulletin *)v5 setThreadID:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventBehavior"];
    [(BBBulletin *)v5 setEventBehavior:v21];

    -[BBBulletin setIsHighlight:](v5, "setIsHighlight:", [coderCopy decodeBoolForKey:@"isHighlight"]);
    -[BBBulletin setPriorityNotificationStatus:](v5, "setPriorityNotificationStatus:", [coderCopy decodeIntegerForKey:@"priorityNotificationStatus"]);
    -[BBBulletin setNotificationSummaryStatus:](v5, "setNotificationSummaryStatus:", [coderCopy decodeIntegerForKey:@"notificationSummaryStatus"]);
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"peopleIDs"];
    [(BBBulletin *)v5 setPeopleIDs:v25];

    -[BBBulletin setSectionSubtype:](v5, "setSectionSubtype:", [coderCopy decodeIntegerForKey:@"sectionSubtype"]);
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"intentIDs"];
    [(BBBulletin *)v5 setIntentIDs:v29];

    -[BBBulletin setCounter:](v5, "setCounter:", [coderCopy decodeIntegerForKey:@"counter"]);
    -[BBBulletin setInterruptionLevel:](v5, "setInterruptionLevel:", [coderCopy decodeIntegerForKey:@"interruptionLevel"]);
    -[BBBulletin setContentPreviewSetting:](v5, "setContentPreviewSetting:", [coderCopy decodeIntegerForKey:@"contentPreviewSetting"]);
    [coderCopy decodeFloatForKey:@"relevanceScore"];
    [(BBBulletin *)v5 setRelevanceScore:?];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterCriteria"];
    [(BBBulletin *)v5 setFilterCriteria:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    [(BBBulletin *)v5 setContent:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"communicationContext"];
    [(BBBulletin *)v5 setCommunicationContext:v32];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modalAlertContent"];
    [(BBBulletin *)v5 setModalAlertContent:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"starkBannerContent"];
    [(BBBulletin *)v5 setStarkBannerContent:v34];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summaryArgument"];
    [(BBBulletin *)v5 setSummaryArgument:v35];

    -[BBBulletin setSummaryArgumentCount:](v5, "setSummaryArgumentCount:", [coderCopy decodeIntegerForKey:@"summaryArgumentCount"]);
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    [(BBBulletin *)v5 setIcon:v36];

    -[BBBulletin setHasCriticalIcon:](v5, "setHasCriticalIcon:", [coderCopy decodeBoolForKey:@"hasCriticalIcon"]);
    -[BBBulletin setHasSubordinateIcon:](v5, "setHasSubordinateIcon:", [coderCopy decodeBoolForKey:@"hasSubordinateIcon"]);
    -[BBBulletin setHasEventDate:](v5, "setHasEventDate:", [coderCopy decodeBoolForKey:@"hasEventDate"]);
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [(BBBulletin *)v5 setDate:v37];

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(BBBulletin *)v5 setEndDate:v38];

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recencyDate"];
    [(BBBulletin *)v5 setRecencyDate:v39];

    -[BBBulletin setDateFormatStyle:](v5, "setDateFormatStyle:", [coderCopy decodeIntegerForKey:@"dateFormatStyle"]);
    -[BBBulletin setDateIsAllDay:](v5, "setDateIsAllDay:", [coderCopy decodeBoolForKey:@"allDay"]);
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    [(BBBulletin *)v5 setTimeZone:v40];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIconMask"];
    [(BBBulletin *)v5 setAccessoryIconMask:v41];

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryImage"];
    [(BBBulletin *)v5 setAccessoryImage:v42];

    -[BBBulletin setClearable:](v5, "setClearable:", [coderCopy decodeBoolForKey:@"clearable"]);
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sound"];
    [(BBBulletin *)v5 setSound:v43];

    -[BBBulletin setTurnsOnDisplay:](v5, "setTurnsOnDisplay:", [coderCopy decodeBoolForKey:@"turnsOnDisplay"]);
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unlockActionLabelOverride"];
    [(BBBulletin *)v5 setUnlockActionLabelOverride:v44];

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAttachment"];
    [(BBBulletin *)v5 setPrimaryAttachment:v45];

    v46 = MEMORY[0x277CBEB98];
    v47 = objc_opt_class();
    v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"additionalAttachments"];
    [(BBBulletin *)v5 setAdditionalAttachments:v49];

    -[BBBulletin setWantsFullscreenPresentation:](v5, "setWantsFullscreenPresentation:", [coderCopy decodeBoolForKey:@"wantsFullscreenPresentation"]);
    -[BBBulletin setIgnoresQuietMode:](v5, "setIgnoresQuietMode:", [coderCopy decodeBoolForKey:@"ignoresQuietMode"]);
    -[BBBulletin setIgnoresDowntime:](v5, "setIgnoresDowntime:", [coderCopy decodeBoolForKey:@"ignoresDowntime"]);
    -[BBBulletin setPreemptsPresentedAlert:](v5, "setPreemptsPresentedAlert:", [coderCopy decodeBoolForKey:@"preemptsPresentedAlert"]);
    -[BBBulletin setDisplaysActionsInline:](v5, "setDisplaysActionsInline:", [coderCopy decodeBoolForKey:@"displaysActionsInline"]);
    v50 = MEMORY[0x277CBEB98];
    v94[0] = objc_opt_class();
    v94[1] = objc_opt_class();
    v94[2] = objc_opt_class();
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:3];
    v52 = [v50 setWithArray:v51];
    v53 = [coderCopy decodeObjectOfClasses:v52 forKey:@"actions"];
    [(BBBulletin *)v5 setActions:v53];

    v54 = MEMORY[0x277CBEB98];
    v93[0] = objc_opt_class();
    v93[1] = objc_opt_class();
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v56 = [v54 setWithArray:v55];
    v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"buttons"];
    [(BBBulletin *)v5 setButtons:v57];

    v58 = MEMORY[0x277CBEB98];
    v92[0] = objc_opt_class();
    v92[1] = objc_opt_class();
    v92[2] = objc_opt_class();
    v92[3] = objc_opt_class();
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
    v60 = [v58 setWithArray:v59];
    v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"supplementaryActionsByLayout"];
    [(BBBulletin *)v5 setSupplementaryActionsByLayout:v61];

    v62 = MEMORY[0x277CBEB98];
    v91[0] = objc_opt_class();
    v91[1] = objc_opt_class();
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
    v64 = [v62 setWithArray:v63];
    v65 = [coderCopy decodeObjectOfClasses:v64 forKey:@"alertSuppressionContexts"];
    [(BBBulletin *)v5 setAlertSuppressionContexts:v65];

    v66 = BBAllowedClasses();
    v67 = [coderCopy decodeObjectOfClasses:v66 forKey:@"context"];
    [(BBBulletin *)v5 setContext:v67];

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    [(BBBulletin *)v5 setExpirationDate:v68];

    -[BBBulletin setExpirationEvents:](v5, "setExpirationEvents:", [coderCopy decodeIntegerForKey:@"expirationEvents"]);
    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastInterruptDate"];
    [(BBBulletin *)v5 setLastInterruptDate:v69];

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicationDate"];
    [(BBBulletin *)v5 setPublicationDate:v70];

    -[BBBulletin setUsesExternalSync:](v5, "setUsesExternalSync:", [coderCopy decodeBoolForKey:@"usesExternalSync"]);
    -[BBBulletin setLoading:](v5, "setLoading:", [coderCopy decodeBoolForKey:@"loading"]);
    -[BBBulletin setPreventAutomaticRemovalFromLockScreen:](v5, "setPreventAutomaticRemovalFromLockScreen:", [coderCopy decodeBoolForKey:@"preventAutomaticRemovalFromLockScreen"]);
    -[BBBulletin setLockScreenPriority:](v5, "setLockScreenPriority:", [coderCopy decodeIntegerForKey:@"lockScreenPriority"]);
    -[BBBulletin setBackgroundStyle:](v5, "setBackgroundStyle:", [coderCopy decodeIntegerForKey:@"backgroundStyle"]);
    v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"header"];
    [(BBBulletin *)v5 setHeader:v71];

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footer"];
    [(BBBulletin *)v5 setFooter:v72];

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadSummary"];
    [(BBBulletin *)v5 setThreadSummary:v73];

    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spotlightIdentifier"];
    [(BBBulletin *)v5 setSpotlightIdentifier:v74];

    -[BBBulletin setRealertCount:](v5, "setRealertCount:", [coderCopy decodeIntegerForKey:@"realertCount"]);
    v75 = MEMORY[0x277CBEB98];
    v90[0] = objc_opt_class();
    v90[1] = objc_opt_class();
    v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    v77 = [v75 setWithArray:v76];
    v78 = [coderCopy decodeObjectOfClasses:v77 forKey:@"alertSuppressionIDs"];
    [(BBBulletin *)v5 setAlertSuppressionAppIDs_deprecated:v78];

    v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    [(BBBulletin *)v5 setContentType:v79];

    -[BBBulletin setScreenCaptureProhibited:](v5, "setScreenCaptureProhibited:", [coderCopy decodeBoolForKey:@"screenCaptureProhibited"]);
    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speechLanguage"];
    [(BBBulletin *)v5 setSpeechLanguage:v80];

    if ([coderCopy containsValueForKey:@"attachments"])
    {
      v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachments"];
      if ([v81 primaryType])
      {
        v82 = objc_alloc_init(BBMutableAttachmentMetadata);
        -[BBMutableAttachmentMetadata setType:](v82, "setType:", [v81 primaryType]);
        [(BBBulletin *)v5 setPrimaryAttachment:v82];
      }

      for (i = 1; i != 7; ++i)
      {
        array = [MEMORY[0x277CBEB18] array];
        for (j = [v81 numberOfAdditionalAttachmentsOfType:i]; j; --j)
        {
          v86 = objc_alloc_init(BBMutableAttachmentMetadata);
          [(BBMutableAttachmentMetadata *)v86 setType:i];
          [array addObject:v86];
        }

        if ([array count])
        {
          [(BBBulletin *)v5 setAdditionalAttachments:array];
        }
      }
    }

    if ([coderCopy containsValueForKey:@"hasPrivateContent"])
    {
      -[BBBulletin setHasPrivateContent:](v5, "setHasPrivateContent:", [coderCopy decodeBoolForKey:@"hasPrivateContent"]);
    }
  }

  v87 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bulletinID = [(BBBulletin *)self bulletinID];
  [coderCopy encodeObject:bulletinID forKey:@"bulletinID"];

  sectionID = [(BBBulletin *)self sectionID];
  [coderCopy encodeObject:sectionID forKey:@"sectionID"];

  sectionBundlePath = [(BBBulletin *)self sectionBundlePath];
  [coderCopy encodeObject:sectionBundlePath forKey:@"sectionBundlePathKey"];

  universalSectionID = [(BBBulletin *)self universalSectionID];
  [coderCopy encodeObject:universalSectionID forKey:@"universalSectionID"];

  parentSectionID = [(BBBulletin *)self parentSectionID];
  [coderCopy encodeObject:parentSectionID forKey:@"parentSectionID"];

  subsectionIDs = [(BBBulletin *)self subsectionIDs];
  [coderCopy encodeObject:subsectionIDs forKey:@"subsectionIDs"];

  recordID = [(BBBulletin *)self recordID];
  [coderCopy encodeObject:recordID forKey:@"publisherRecordID"];

  publisherBulletinID = [(BBBulletin *)self publisherBulletinID];
  [coderCopy encodeObject:publisherBulletinID forKey:@"publisherBulletinID"];

  dismissalID = [(BBBulletin *)self dismissalID];
  [coderCopy encodeObject:dismissalID forKey:@"dismissalID"];

  categoryID = [(BBBulletin *)self categoryID];
  [coderCopy encodeObject:categoryID forKey:@"categoryID"];

  threadID = [(BBBulletin *)self threadID];
  [coderCopy encodeObject:threadID forKey:@"threadID"];

  eventBehavior = [(BBBulletin *)self eventBehavior];
  [coderCopy encodeObject:eventBehavior forKey:@"eventBehavior"];

  [coderCopy encodeBool:-[BBBulletin isHighlight](self forKey:{"isHighlight"), @"isHighlight"}];
  [coderCopy encodeInteger:-[BBBulletin priorityNotificationStatus](self forKey:{"priorityNotificationStatus"), @"priorityNotificationStatus"}];
  [coderCopy encodeInteger:-[BBBulletin notificationSummaryStatus](self forKey:{"notificationSummaryStatus"), @"notificationSummaryStatus"}];
  peopleIDs = [(BBBulletin *)self peopleIDs];
  [coderCopy encodeObject:peopleIDs forKey:@"peopleIDs"];

  [coderCopy encodeInteger:-[BBBulletin sectionSubtype](self forKey:{"sectionSubtype"), @"sectionSubtype"}];
  intentIDs = [(BBBulletin *)self intentIDs];
  [coderCopy encodeObject:intentIDs forKey:@"intentIDs"];

  [coderCopy encodeInteger:-[BBBulletin counter](self forKey:{"counter"), @"counter"}];
  [coderCopy encodeInteger:-[BBBulletin interruptionLevel](self forKey:{"interruptionLevel"), @"interruptionLevel"}];
  [coderCopy encodeInteger:-[BBBulletin contentPreviewSetting](self forKey:{"contentPreviewSetting"), @"contentPreviewSetting"}];
  [(BBBulletin *)self relevanceScore];
  [coderCopy encodeFloat:@"relevanceScore" forKey:?];
  filterCriteria = [(BBBulletin *)self filterCriteria];
  [coderCopy encodeObject:filterCriteria forKey:@"filterCriteria"];

  content = [(BBBulletin *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  modalAlertContent = [(BBBulletin *)self modalAlertContent];
  [coderCopy encodeObject:modalAlertContent forKey:@"modalAlertContent"];

  starkBannerContent = [(BBBulletin *)self starkBannerContent];
  [coderCopy encodeObject:starkBannerContent forKey:@"starkBannerContent"];

  communicationContext = [(BBBulletin *)self communicationContext];
  [coderCopy encodeObject:communicationContext forKey:@"communicationContext"];

  summaryArgument = [(BBBulletin *)self summaryArgument];
  [coderCopy encodeObject:summaryArgument forKey:@"summaryArgument"];

  [coderCopy encodeInteger:-[BBBulletin summaryArgumentCount](self forKey:{"summaryArgumentCount"), @"summaryArgumentCount"}];
  icon = [(BBBulletin *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  [coderCopy encodeBool:-[BBBulletin hasCriticalIcon](self forKey:{"hasCriticalIcon"), @"hasCriticalIcon"}];
  [coderCopy encodeBool:-[BBBulletin hasSubordinateIcon](self forKey:{"hasSubordinateIcon"), @"hasSubordinateIcon"}];
  [coderCopy encodeBool:-[BBBulletin hasEventDate](self forKey:{"hasEventDate"), @"hasEventDate"}];
  date = [(BBBulletin *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  endDate = [(BBBulletin *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  recencyDate = [(BBBulletin *)self recencyDate];
  [coderCopy encodeObject:recencyDate forKey:@"recencyDate"];

  [coderCopy encodeInteger:-[BBBulletin dateFormatStyle](self forKey:{"dateFormatStyle"), @"dateFormatStyle"}];
  [coderCopy encodeBool:-[BBBulletin dateIsAllDay](self forKey:{"dateIsAllDay"), @"allDay"}];
  timeZone = [(BBBulletin *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"timeZone"];

  accessoryIconMask = [(BBBulletin *)self accessoryIconMask];
  [coderCopy encodeObject:accessoryIconMask forKey:@"accessoryIconMask"];

  accessoryImage = [(BBBulletin *)self accessoryImage];
  [coderCopy encodeObject:accessoryImage forKey:@"accessoryImage"];

  [coderCopy encodeBool:-[BBBulletin clearable](self forKey:{"clearable"), @"clearable"}];
  sound = [(BBBulletin *)self sound];
  [coderCopy encodeObject:sound forKey:@"sound"];

  [coderCopy encodeBool:-[BBBulletin turnsOnDisplay](self forKey:{"turnsOnDisplay"), @"turnsOnDisplay"}];
  unlockActionLabelOverride = [(BBBulletin *)self unlockActionLabelOverride];
  [coderCopy encodeObject:unlockActionLabelOverride forKey:@"unlockActionLabelOverride"];

  primaryAttachment = [(BBBulletin *)self primaryAttachment];
  [coderCopy encodeObject:primaryAttachment forKey:@"primaryAttachment"];

  additionalAttachments = [(BBBulletin *)self additionalAttachments];
  [coderCopy encodeObject:additionalAttachments forKey:@"additionalAttachments"];

  [coderCopy encodeBool:-[BBBulletin wantsFullscreenPresentation](self forKey:{"wantsFullscreenPresentation"), @"wantsFullscreenPresentation"}];
  [coderCopy encodeBool:-[BBBulletin ignoresQuietMode](self forKey:{"ignoresQuietMode"), @"ignoresQuietMode"}];
  [coderCopy encodeBool:-[BBBulletin ignoresDowntime](self forKey:{"ignoresDowntime"), @"ignoresDowntime"}];
  [coderCopy encodeBool:-[BBBulletin preemptsPresentedAlert](self forKey:{"preemptsPresentedAlert"), @"preemptsPresentedAlert"}];
  [coderCopy encodeBool:-[BBBulletin displaysActionsInline](self forKey:{"displaysActionsInline"), @"displaysActionsInline"}];
  actions = [(BBBulletin *)self actions];
  [coderCopy encodeObject:actions forKey:@"actions"];

  buttons = [(BBBulletin *)self buttons];
  [coderCopy encodeObject:buttons forKey:@"buttons"];

  supplementaryActionsByLayout = [(BBBulletin *)self supplementaryActionsByLayout];
  [coderCopy encodeObject:supplementaryActionsByLayout forKey:@"supplementaryActionsByLayout"];

  alertSuppressionContexts = [(BBBulletin *)self alertSuppressionContexts];
  [coderCopy encodeObject:alertSuppressionContexts forKey:@"alertSuppressionContexts"];

  context = [(BBBulletin *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  expirationDate = [(BBBulletin *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  [coderCopy encodeInteger:-[BBBulletin expirationEvents](self forKey:{"expirationEvents"), @"expirationEvents"}];
  lastInterruptDate = [(BBBulletin *)self lastInterruptDate];
  [coderCopy encodeObject:lastInterruptDate forKey:@"lastInterruptDate"];

  publicationDate = [(BBBulletin *)self publicationDate];
  [coderCopy encodeObject:publicationDate forKey:@"publicationDate"];

  bulletinVersionID = [(BBBulletin *)self bulletinVersionID];
  [coderCopy encodeObject:bulletinVersionID forKey:@"versionID"];

  [coderCopy encodeBool:-[BBBulletin usesExternalSync](self forKey:{"usesExternalSync"), @"usesExternalSync"}];
  [coderCopy encodeBool:-[BBBulletin isLoading](self forKey:{"isLoading"), @"loading"}];
  [coderCopy encodeBool:-[BBBulletin preventAutomaticRemovalFromLockScreen](self forKey:{"preventAutomaticRemovalFromLockScreen"), @"preventAutomaticRemovalFromLockScreen"}];
  [coderCopy encodeInteger:-[BBBulletin lockScreenPriority](self forKey:{"lockScreenPriority"), @"lockScreenPriority"}];
  [coderCopy encodeInteger:-[BBBulletin backgroundStyle](self forKey:{"backgroundStyle"), @"backgroundStyle"}];
  header = [(BBBulletin *)self header];
  [coderCopy encodeObject:header forKey:@"header"];

  footer = [(BBBulletin *)self footer];
  [coderCopy encodeObject:footer forKey:@"footer"];

  threadSummary = [(BBBulletin *)self threadSummary];
  [coderCopy encodeObject:threadSummary forKey:@"threadSummary"];

  spotlightIdentifier = [(BBBulletin *)self spotlightIdentifier];
  [coderCopy encodeObject:spotlightIdentifier forKey:@"spotlightIdentifier"];

  [coderCopy encodeInteger:-[BBBulletin realertCount](self forKey:{"realertCount"), @"realertCount"}];
  alertSuppressionAppIDs_deprecated = [(BBBulletin *)self alertSuppressionAppIDs_deprecated];
  [coderCopy encodeObject:alertSuppressionAppIDs_deprecated forKey:@"alertSuppressionIDs"];

  contentType = [(BBBulletin *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];

  [coderCopy encodeBool:-[BBBulletin screenCaptureProhibited](self forKey:{"screenCaptureProhibited"), @"screenCaptureProhibited"}];
  speechLanguage = [(BBBulletin *)self speechLanguage];
  [coderCopy encodeObject:speechLanguage forKey:@"speechLanguage"];
}

- (id)_safeDescription:(BOOL)description
{
  v30 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  bulletinID = [(BBBulletin *)self bulletinID];
  bulletinVersionID = [(BBBulletin *)self bulletinVersionID];
  sectionID = [(BBBulletin *)self sectionID];
  sectionSubtype = [(BBBulletin *)self sectionSubtype];
  publisherBulletinID = [(BBBulletin *)self publisherBulletinID];
  categoryID = [(BBBulletin *)self categoryID];
  if (description)
  {
    threadID = @"<redacted>";
    peopleIDs = @"<redacted>";
  }

  else
  {
    threadID = [(BBBulletin *)self threadID];
    peopleIDs = [(BBBulletin *)self peopleIDs];
  }

  communicationContext = [(BBBulletin *)self communicationContext];
  v28 = communicationContext;
  if (communicationContext)
  {
    descriptionCopy = description;
  }

  else
  {
    descriptionCopy = 1;
  }

  if (communicationContext)
  {
    communicationContext2 = @"<redacted>";
  }

  else
  {
    communicationContext2 = @"(null)";
  }

  v26 = descriptionCopy;
  v31 = peopleIDs;
  if (!descriptionCopy)
  {
    communicationContext2 = [(BBBulletin *)self communicationContext];
  }

  recordID = [(BBBulletin *)self recordID];
  intentIDs = [(BBBulletin *)self intentIDs];
  if (description)
  {
    content = @"<redacted>";
  }

  else
  {
    content = [(BBBulletin *)self content];
  }

  date = [(BBBulletin *)self date];
  sound = [(BBBulletin *)self sound];
  interruptionLevel = [(BBBulletin *)self interruptionLevel];
  [(BBBulletin *)self relevanceScore];
  v16 = v15;
  filterCriteria = [(BBBulletin *)self filterCriteria];
  v18 = [v30 stringWithFormat:@"<%@: %p ID: %@; versionID: %@> {\n\t%@ / subtype = %ld\n\tPublisher Bulletin ID: %@\n\tCategory ID: %@\n\tThread ID: %@\n\tPeople IDs: %@\n\tCommunication Context: %@\n\tRecord ID: %@\n\tIntent IDs: %@\n\tContent: %@\n\tDate: %@\n\tSound: %@\n\tInterruption Level: %lu\n\t Relevance Score: %.2f\n\t Filter Criteria: %@", v29, self, bulletinID, bulletinVersionID, sectionID, sectionSubtype, publisherBulletinID, categoryID, threadID, v31, communicationContext2, recordID, intentIDs, content, date, sound, interruptionLevel, *&v16, filterCriteria];;

  if (description)
  {
    v19 = v28;
  }

  else
  {

    if (!v26)
    {
    }

    intentIDs = v28;
    recordID = v31;
    v19 = threadID;
  }

  subsectionIDs = [(BBBulletin *)self subsectionIDs];
  v21 = [subsectionIDs count];

  if (v21)
  {
    subsectionIDs2 = [(BBBulletin *)self subsectionIDs];
    v23 = [v18 stringByAppendingFormat:@"\n\tSubsections: %@", subsectionIDs2];

    v18 = v23;
  }

  v24 = [v18 stringByAppendingString:@"\n}"];

  return v24;
}

- (id)shortDescription
{
  if (self->_sectionID || self->_bulletinID)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    intentIDs = self->_intentIDs;
    [v3 stringWithFormat:@"<%@: %p; [%@] bulletinID: %@; publisherBulletinID: %@, categoryID:%@, threadID:%@, peopleIDs:%@, recordID: %@; intentIDs: %@; revisionID: %@>", v4, self, self->_sectionID, self->_bulletinID, self->_publisherBulletinID, self->_categoryID, self->_threadID, self->_peopleIDs, self->_publisherRecordID, intentIDs, self->_bulletinVersionID];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p; (no identifying details)>", objc_opt_class(), self, v8, v9, v10, v11, v12, v13, v14, v15, v16];
  }
  v6 = ;

  return v6;
}

uint64_t __56__BBBulletin_Associations___lifeAssertionAssociationSet__block_invoke()
{
  _lifeAssertionAssociationSet___lifeAssertionAssociationSet = +[BBAssociationSet setWithStrongAssociation];

  return MEMORY[0x2821F96F8]();
}

- (id)lifeAssertions
{
  _lifeAssertionAssociationSet = [objc_opt_class() _lifeAssertionAssociationSet];
  objc_sync_enter(_lifeAssertionAssociationSet);
  v4 = [_lifeAssertionAssociationSet associatedObjectsForObject:self];
  objc_sync_exit(_lifeAssertionAssociationSet);

  allObjects = [v4 allObjects];

  return allObjects;
}

- (void)addLifeAssertion:(id)assertion
{
  assertionCopy = assertion;
  _lifeAssertionAssociationSet = [objc_opt_class() _lifeAssertionAssociationSet];
  objc_sync_enter(_lifeAssertionAssociationSet);
  [_lifeAssertionAssociationSet associateObject:assertionCopy withObject:self];
  objc_sync_exit(_lifeAssertionAssociationSet);
}

uint64_t __51__BBBulletin_Associations___observerAssociationSet__block_invoke()
{
  _observerAssociationSet___observerAssociationSet = +[BBAssociationSet setWithWeakAssociation];

  return MEMORY[0x2821F96F8]();
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  _observerAssociationSet = [objc_opt_class() _observerAssociationSet];
  objc_sync_enter(_observerAssociationSet);
  [_observerAssociationSet associateObject:observerCopy withObject:self];
  objc_sync_exit(_observerAssociationSet);
}

- (void)copyAssociationsForBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  _lifeAssertionAssociationSet = [objc_opt_class() _lifeAssertionAssociationSet];
  _observerAssociationSet = [objc_opt_class() _observerAssociationSet];
  v6 = _lifeAssertionAssociationSet;
  objc_sync_enter(v6);
  [v6 copyAssociationsForObject:bulletinCopy toObject:self];
  objc_sync_exit(v6);

  v7 = _observerAssociationSet;
  objc_sync_enter(v7);
  [v7 copyAssociationsForObject:bulletinCopy toObject:self];
  objc_sync_exit(v7);
}

- (BOOL)showsSubtitle
{
  _sectionParameters = [(BBBulletin *)self _sectionParameters];
  showsSubtitle = [_sectionParameters showsSubtitle];

  return showsSubtitle;
}

- (BOOL)usesVariableLayout
{
  _sectionParameters = [(BBBulletin *)self _sectionParameters];
  usesVariableLayout = [_sectionParameters usesVariableLayout];

  return usesVariableLayout;
}

- (BOOL)orderSectionUsingRecencyDate
{
  _sectionParameters = [(BBBulletin *)self _sectionParameters];
  orderSectionUsingRecencyDate = [_sectionParameters orderSectionUsingRecencyDate];

  return orderSectionUsingRecencyDate;
}

- (BOOL)showsDateInFloatingLockScreenAlert
{
  _sectionParameters = [(BBBulletin *)self _sectionParameters];
  showsDateInFloatingLockScreenAlert = [_sectionParameters showsDateInFloatingLockScreenAlert];

  return showsDateInFloatingLockScreenAlert;
}

- (NSString)topic
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  topic = [_sectionSubtypeParameters topic];

  return topic;
}

- (NSString)missedBannerDescriptionFormat
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  missedBannerDescriptionFormat = [_sectionSubtypeParameters missedBannerDescriptionFormat];

  return missedBannerDescriptionFormat;
}

- (NSSet)alertSuppressionAppIDs
{
  if ([(BBBulletin *)self suppressesAlertsWhenAppIsActive])
  {
    v3 = MEMORY[0x277CBEB98];
    sectionID = [(BBBulletin *)self sectionID];
    v5 = [v3 setWithObject:sectionID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)preservesUnlockActionCase
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  preservesUnlockActionCase = [_sectionSubtypeParameters preservesUnlockActionCase];

  return preservesUnlockActionCase;
}

- (BOOL)visuallyIndicatesWhenDateIsInFuture
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  visuallyIndicatesWhenDateIsInFuture = [_sectionSubtypeParameters visuallyIndicatesWhenDateIsInFuture];

  return visuallyIndicatesWhenDateIsInFuture;
}

- (BOOL)suppressesTitle
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  suppressesTitle = [_sectionSubtypeParameters suppressesTitle];

  return suppressesTitle;
}

- (BOOL)showsUnreadIndicatorForNoticesFeed
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  showsUnreadIndicatorForNoticesFeed = [_sectionSubtypeParameters showsUnreadIndicatorForNoticesFeed];

  return showsUnreadIndicatorForNoticesFeed;
}

- (BOOL)showsContactPhoto
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  showsContactPhoto = [_sectionSubtypeParameters showsContactPhoto];

  return showsContactPhoto;
}

- (BOOL)playsSoundForModify
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  playsSoundForModify = [_sectionSubtypeParameters playsSoundForModify];

  return playsSoundForModify;
}

- (unint64_t)subtypePriority
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  subtypePriority = [_sectionSubtypeParameters subtypePriority];

  return subtypePriority;
}

- (int64_t)iPodOutAlertType
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  iPodOutAlertType = [_sectionSubtypeParameters iPodOutAlertType];

  return iPodOutAlertType;
}

- (NSString)bannerAccessoryRemoteViewControllerClassName
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  bannerAccessoryRemoteViewControllerClassName = [_sectionSubtypeParameters bannerAccessoryRemoteViewControllerClassName];

  return bannerAccessoryRemoteViewControllerClassName;
}

- (NSString)bannerAccessoryRemoteServiceBundleIdentifier
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  bannerAccessoryRemoteServiceBundleIdentifier = [_sectionSubtypeParameters bannerAccessoryRemoteServiceBundleIdentifier];

  return bannerAccessoryRemoteServiceBundleIdentifier;
}

- (NSString)secondaryContentRemoteViewControllerClassName
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  secondaryContentRemoteViewControllerClassName = [_sectionSubtypeParameters secondaryContentRemoteViewControllerClassName];

  return secondaryContentRemoteViewControllerClassName;
}

- (NSString)secondaryContentRemoteServiceBundleIdentifier
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  secondaryContentRemoteServiceBundleIdentifier = [_sectionSubtypeParameters secondaryContentRemoteServiceBundleIdentifier];

  return secondaryContentRemoteServiceBundleIdentifier;
}

- (BOOL)allowsAddingToLockScreenWhenUnlocked
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  allowsAddingToLockScreenWhenUnlocked = [_sectionSubtypeParameters allowsAddingToLockScreenWhenUnlocked];

  return allowsAddingToLockScreenWhenUnlocked;
}

- (BOOL)suppressDelayForForwardedBulletins
{
  _sectionSubtypeParameters = [(BBBulletin *)self _sectionSubtypeParameters];
  suppressDelayForForwardedBulletins = [_sectionSubtypeParameters suppressDelayForForwardedBulletins];

  return suppressDelayForForwardedBulletins;
}

- (id)syncHash
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  title = [(BBBulletin *)self title];
  if (title)
  {
    [v3 appendString:title];
  }

  subtitle = [(BBBulletin *)self subtitle];
  if (subtitle)
  {
    [v3 appendString:subtitle];
  }

  message = [(BBBulletin *)self message];
  if (message)
  {
    [v3 appendString:message];
  }

  v7 = [v3 dataUsingEncoding:4];
  CC_MD5([v7 bytes], objc_msgSend(v7, "length"), md);
  v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v8 appendFormat:@"%02x", md[i]];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

@end