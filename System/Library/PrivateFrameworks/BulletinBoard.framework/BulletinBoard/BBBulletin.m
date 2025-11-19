@interface BBBulletin
+ (id)_lifeAssertionAssociationSet;
+ (id)_observerAssociationSet;
+ (id)bulletinReferenceDateFromDate:(id)a3;
+ (id)bulletinWithBulletin:(id)a3;
+ (id)validSortDescriptorsFromSortDescriptors:(id)a3;
+ (void)vetSortDescriptor:(id)a3;
- (BBBulletin)init;
- (BBBulletin)initWithCoder:(id)a3;
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
- (BOOL)isEqual:(id)a3;
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
- (id)_actionKeyForType:(int64_t)a3;
- (id)_actionWithID:(id)a3 fromActions:(id)a4;
- (id)_allActions;
- (id)_allSupplementaryActions;
- (id)_responseForAction:(id)a3;
- (id)_safeDescription:(BOOL)a3;
- (id)_sectionParameters;
- (id)_sectionSubtypeParameters;
- (id)actionForResponse:(id)a3;
- (id)actionWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)firstValidObserver;
- (id)lifeAssertions;
- (id)responseForAcknowledgeAction;
- (id)responseForAction:(id)a3;
- (id)responseForButtonActionAtIndex:(unint64_t)a3;
- (id)responseForDefaultAction;
- (id)responseForExpireAction;
- (id)responseForRaiseAction;
- (id)responseForSnoozeAction;
- (id)responseSendBlock;
- (id)shortDescription;
- (id)supplementaryActionsForLayout:(int64_t)a3;
- (id)syncHash;
- (int64_t)iPodOutAlertType;
- (int64_t)primaryAttachmentType;
- (unint64_t)hash;
- (unint64_t)messageNumberOfLines;
- (unint64_t)numberOfAdditionalAttachments;
- (unint64_t)numberOfAdditionalAttachmentsOfType:(int64_t)a3;
- (unint64_t)privacySettings;
- (unint64_t)subtypePriority;
- (void)_fillOutCopy:(id)a3 withZone:(_NSZone *)a4;
- (void)addLifeAssertion:(id)a3;
- (void)addObserver:(id)a3;
- (void)copyAssociationsForBulletin:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAcknowledgeAction:(id)a3;
- (void)setAlertSuppressionContexts:(id)a3;
- (void)setAlternateAction:(id)a3;
- (void)setAttributedMessage:(id)a3;
- (void)setButtons:(id)a3;
- (void)setDefaultAction:(id)a3;
- (void)setDismissAction:(id)a3;
- (void)setExpireAction:(id)a3;
- (void)setFollowActivityAction:(id)a3;
- (void)setHasPrivateContent:(BOOL)a3;
- (void)setMessage:(id)a3;
- (void)setRaiseAction:(id)a3;
- (void)setSilenceAction:(id)a3;
- (void)setSnoozeAction:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setSummary:(id)a3;
- (void)setTitle:(id)a3;
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
  v3 = a1;
  v4 = [a2 bulletinID];
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEBUG, "Deallocating %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)title
{
  v2 = [(BBBulletin *)self content];
  v3 = [v2 title];

  return v3;
}

- (NSString)message
{
  v2 = [(BBBulletin *)self content];
  v3 = [v2 message];

  return v3;
}

- (NSString)subtitle
{
  v2 = [(BBBulletin *)self content];
  v3 = [v2 subtitle];

  return v3;
}

- (NSString)sectionDisplayName
{
  v2 = [(BBBulletin *)self _sectionParameters];
  v3 = [v2 displayName];

  return v3;
}

- (id)_sectionParameters
{
  v3 = [(BBBulletin *)self firstValidObserver];
  v4 = [(BBBulletin *)self sectionID];
  v5 = [v3 parametersForSectionID:v4];

  return v5;
}

- (id)firstValidObserver
{
  v3 = [objc_opt_class() _observerAssociationSet];
  objc_sync_enter(v3);
  v4 = [v3 associatedObjectsForObject:self];
  objc_sync_exit(v3);

  v5 = [v4 anyObject];

  return v5;
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
  v2 = [(BBBulletin *)self content];
  v3 = [v2 summary];

  return v3;
}

- (NSString)hiddenPreviewsBodyPlaceholder
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 hiddenPreviewsBodyPlaceholder];

  return v3;
}

- (id)_sectionSubtypeParameters
{
  v3 = [(BBBulletin *)self _sectionParameters];
  v4 = [v3 parametersForSubtype:{-[BBBulletin sectionSubtype](self, "sectionSubtype")}];

  return v4;
}

- (NSString)subtypeSummaryFormat
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 subtypeSummaryFormat];

  return v3;
}

- (BBSectionIcon)sectionIcon
{
  v3 = [(BBBulletin *)self icon];
  v4 = [(BBBulletin *)self _sectionSubtypeParameters];
  v5 = [v4 sectionIconOverride];
  v6 = [(BBBulletin *)self _sectionParameters];
  v7 = [v6 icon];
  v8 = v7;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (v3)
  {
    v10 = v3;
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
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 fullAlternateActionLabel];

  return v3;
}

- (NSString)fullUnlockActionLabel
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 fullUnlockActionLabel];

  return v3;
}

- (NSString)alternateActionLabel
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 alternateActionLabel];

  return v3;
}

- (NSString)unlockActionLabel
{
  v3 = [(BBBulletin *)self unlockActionLabelOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(BBBulletin *)self _sectionSubtypeParameters];
    v5 = [v6 unlockActionLabel];
  }

  return v5;
}

- (BOOL)allowsPersistentBannersInCarPlay
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 allowsPersistentBannersInCarPlay];

  return v3;
}

- (BOOL)inertWhenLocked
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 inertWhenLocked];

  return v3;
}

- (BOOL)allowsAutomaticRemovalFromLockScreen
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 allowsAutomaticRemovalFromLockScreen];

  return v3;
}

- (BOOL)prioritizeAtTopOfLockScreen
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 prioritizeAtTopOfLockScreen];

  return v3;
}

- (BOOL)canBeSilencedByMenuButtonPress
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 canBeSilencedByMenuButtonPress];

  return v3;
}

- (BOOL)suppressesAlertsWhenAppIsActive
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 suppressesAlertsWhenAppIsActive];

  return v3;
}

- (unint64_t)messageNumberOfLines
{
  v2 = [(BBBulletin *)self _sectionParameters];
  v3 = [v2 messageNumberOfLines];

  return v3;
}

- (BOOL)revealsAdditionalContentOnPresentation
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 revealsAdditionalContentOnPresentation];

  return v3;
}

- (unint64_t)privacySettings
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 privacySettings];

  return v3;
}

- (BOOL)coalescesWhenLocked
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 coalescesWhenLocked];

  return v3;
}

- (BOOL)preventLock
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 preventLock];

  return v3;
}

- (BOOL)allowsSupplementaryActionsInCarPlay
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 allowsSupplementaryActionsInCarPlay];

  return v3;
}

- (BOOL)playsMediaWhenRaised
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 playsMediaWhenRaised];

  return v3;
}

- (BOOL)hideDismissActionInCarPlay
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 hideDismissActionInCarPlay];

  return v3;
}

- (BOOL)suppressPresentationInAmbient
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 suppressPresentationInAmbient];

  return v3;
}

- (NSString)publisherMatchID
{
  v3 = [(BBBulletin *)self publisherBulletinID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(BBBulletin *)self recordID];
  }

  v6 = v5;

  return v6;
}

- (NSAttributedString)attributedMessage
{
  v2 = [(BBBulletin *)self content];
  v3 = [v2 attributedMessage];

  return v3;
}

- (BOOL)shouldDismissBulletinWhenClosed
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 shouldDismissBulletinWhenClosed];

  return v3;
}

+ (void)vetSortDescriptor:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = v3;
  if (vetSortDescriptor__onceToken != -1)
  {
    +[BBBulletin vetSortDescriptor:];
    v3 = v12;
  }

  v4 = [v3 key];
  if (([vetSortDescriptor__sKeyAllowedList containsObject:v4] & 1) == 0)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE660];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid sort descriptor key passed from BBDataProvider: %@ Only the following keys may be used: %@", v4, vetSortDescriptor__sKeyAllowedList];;
    v13[0] = @"sortDescriptor";
    v13[1] = @"offendingKey";
    v14[0] = v12;
    v14[1] = v4;
    v13[2] = @"allowedKeys";
    v14[2] = vetSortDescriptor__sKeyAllowedList;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v10 = [v6 exceptionWithName:v7 reason:v8 userInfo:v9];
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

+ (id)validSortDescriptorsFromSortDescriptors:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

+ (id)bulletinWithBulletin:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BBBulletin);
  [v3 _fillOutCopy:v4 withZone:MEMORY[0x245D05770]()];

  return v4;
}

+ (id)bulletinReferenceDateFromDate:(id)a3
{
  v3 = MEMORY[0x277CBEAB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDay:-7];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 dateByAddingComponents:v5 toDate:v4 options:0];

  return v7;
}

- (unint64_t)hash
{
  v126 = [(BBBulletin *)self bulletinID];
  v3 = [v126 hash];
  v125 = [(BBBulletin *)self bulletinVersionID];
  v4 = [v125 hash] ^ v3;
  v124 = [(BBBulletin *)self sectionID];
  v5 = [v124 hash];
  v123 = [(BBBulletin *)self sectionBundlePath];
  v6 = v4 ^ v5 ^ [v123 hash];
  v122 = [(BBBulletin *)self universalSectionID];
  v7 = [v122 hash];
  v121 = [(BBBulletin *)self parentSectionID];
  v8 = v7 ^ [v121 hash];
  v120 = [(BBBulletin *)self subsectionIDs];
  v9 = v6 ^ v8 ^ [v120 hash];
  v119 = [(BBBulletin *)self recordID];
  v10 = [v119 hash];
  v118 = [(BBBulletin *)self publisherBulletinID];
  v11 = v10 ^ [v118 hash];
  v117 = [(BBBulletin *)self dismissalID];
  v12 = v11 ^ [v117 hash];
  v116 = [(BBBulletin *)self categoryID];
  v13 = v9 ^ v12 ^ [v116 hash];
  v115 = [(BBBulletin *)self threadID];
  v14 = [v115 hash];
  v114 = [(BBBulletin *)self eventBehavior];
  v15 = v14 ^ [v114 hash];
  v16 = v15 ^ [(BBBulletin *)self isHighlight];
  v17 = v16 ^ [(BBBulletin *)self priorityNotificationStatus];
  v18 = v13 ^ v17 ^ [(BBBulletin *)self notificationSummaryStatus];
  v19 = [(BBBulletin *)self sectionSubtype];
  v113 = [(BBBulletin *)self intentIDs];
  v20 = v19 ^ [v113 hash];
  v21 = v20 ^ [(BBBulletin *)self counter];
  v22 = v21 ^ [(BBBulletin *)self interruptionLevel];
  v23 = v22 ^ [(BBBulletin *)self contentPreviewSetting];
  v112 = [(BBBulletin *)self content];
  v24 = v18 ^ v23 ^ [v112 hash];
  v111 = [(BBBulletin *)self communicationContext];
  v25 = [v111 hash];
  v110 = [(BBBulletin *)self modalAlertContent];
  v26 = v25 ^ [v110 hash];
  v109 = [(BBBulletin *)self starkBannerContent];
  v27 = v26 ^ [v109 hash];
  v108 = [(BBBulletin *)self summaryArgument];
  v28 = v27 ^ [v108 hash];
  v29 = v28 ^ [(BBBulletin *)self summaryArgumentCount];
  v107 = [(BBBulletin *)self icon];
  v30 = v29 ^ [v107 hash];
  v31 = v24 ^ v30 ^ [(BBBulletin *)self hasCriticalIcon];
  v32 = [(BBBulletin *)self hasSubordinateIcon];
  v33 = v32 ^ [(BBBulletin *)self hasEventDate];
  v106 = [(BBBulletin *)self date];
  v34 = v33 ^ [v106 hash];
  v105 = [(BBBulletin *)self endDate];
  v35 = v34 ^ [v105 hash];
  v104 = [(BBBulletin *)self recencyDate];
  v36 = v35 ^ [v104 hash];
  v37 = v36 ^ [(BBBulletin *)self dateFormatStyle];
  v38 = v31 ^ v37 ^ [(BBBulletin *)self dateIsAllDay];
  v103 = [(BBBulletin *)self timeZone];
  v39 = [v103 hash];
  v102 = [(BBBulletin *)self accessoryIconMask];
  v40 = v39 ^ [v102 hash];
  v101 = [(BBBulletin *)self accessoryImage];
  v41 = v40 ^ [v101 hash];
  v42 = v41 ^ [(BBBulletin *)self clearable];
  v100 = [(BBBulletin *)self sound];
  v43 = v42 ^ [v100 hash];
  v44 = v43 ^ [(BBBulletin *)self turnsOnDisplay];
  v99 = [(BBBulletin *)self primaryAttachment];
  v45 = v44 ^ [v99 hash];
  v98 = [(BBBulletin *)self additionalAttachments];
  v46 = v45 ^ [v98 hash];
  v97 = [(BBBulletin *)self unlockActionLabelOverride];
  v47 = v38 ^ v46 ^ [v97 hash];
  v48 = [(BBBulletin *)self wantsFullscreenPresentation];
  v49 = v48 ^ [(BBBulletin *)self ignoresQuietMode];
  v50 = v49 ^ [(BBBulletin *)self ignoresDowntime];
  v51 = v50 ^ [(BBBulletin *)self preemptsPresentedAlert];
  v52 = v51 ^ [(BBBulletin *)self displaysActionsInline];
  v95 = [(BBBulletin *)self actions];
  v53 = v52 ^ [v95 hash];
  v94 = [(BBBulletin *)self buttons];
  v54 = v53 ^ [v94 hash];
  v93 = [(BBBulletin *)self supplementaryActionsByLayout];
  v55 = v54 ^ [v93 hash];
  v92 = [(BBBulletin *)self alertSuppressionContexts];
  v56 = v47 ^ v55 ^ [v92 hash];
  v91 = [(BBBulletin *)self context];
  v57 = [v91 hash];
  v90 = [(BBBulletin *)self expirationDate];
  v58 = v57 ^ [v90 hash];
  v59 = v58 ^ [(BBBulletin *)self expirationEvents];
  v89 = [(BBBulletin *)self lastInterruptDate];
  v60 = v59 ^ [v89 hash];
  v88 = [(BBBulletin *)self publicationDate];
  v61 = v60 ^ [v88 hash];
  v62 = v61 ^ [(BBBulletin *)self usesExternalSync];
  v63 = v62 ^ [(BBBulletin *)self isLoading];
  v64 = v63 ^ [(BBBulletin *)self preventAutomaticRemovalFromLockScreen];
  v65 = v64 ^ [(BBBulletin *)self lockScreenPriority];
  v66 = v65 ^ [(BBBulletin *)self backgroundStyle];
  v67 = [(BBBulletin *)self header];
  v96 = v56 ^ v66 ^ [v67 hash];
  v68 = [(BBBulletin *)self footer];
  v69 = [v68 hash];
  v70 = [(BBBulletin *)self threadSummary];
  v71 = v69 ^ [v70 hash];
  v72 = [(BBBulletin *)self spotlightIdentifier];
  v73 = v71 ^ [v72 hash];
  v74 = v73 ^ [(BBBulletin *)self realertCount];
  v75 = [(BBBulletin *)self alertSuppressionAppIDs_deprecated];
  v76 = v74 ^ [v75 hash];
  v77 = [(BBBulletin *)self contentType];
  v78 = v76 ^ [v77 hash];
  v79 = v78 ^ [(BBBulletin *)self screenCaptureProhibited];
  v80 = MEMORY[0x277CCABB0];
  [(BBBulletin *)self relevanceScore];
  v81 = [v80 numberWithFloat:?];
  v82 = v79 ^ [v81 hash];
  v83 = [(BBBulletin *)self filterCriteria];
  v84 = v82 ^ [v83 hash];

  v85 = [(BBBulletin *)self speechLanguage];
  v86 = v84 ^ [v85 hash];

  return v96 ^ v86;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
  v6 = [(BBBulletin *)self bulletinID];
  v226 = [(BBBulletin *)v5 bulletinID];
  v227 = v6;
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

  v10 = [(BBBulletin *)self sectionID];
  [(BBBulletin *)v5 sectionID];
  v196 = v197 = v10;
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

  v11 = [(BBBulletin *)self sectionBundlePath];
  [(BBBulletin *)v5 sectionBundlePath];
  v194 = v195 = v11;
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

  v12 = [(BBBulletin *)self universalSectionID];
  [(BBBulletin *)v5 universalSectionID];
  v192 = v193 = v12;
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

  v13 = [(BBBulletin *)self parentSectionID];
  [(BBBulletin *)v5 parentSectionID];
  v190 = v191 = v13;
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

  v14 = [(BBBulletin *)self subsectionIDs];
  [(BBBulletin *)v5 subsectionIDs];
  v188 = v189 = v14;
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

  v15 = [(BBBulletin *)self recordID];
  [(BBBulletin *)v5 recordID];
  v186 = v187 = v15;
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

  v16 = [(BBBulletin *)self publisherBulletinID];
  [(BBBulletin *)v5 publisherBulletinID];
  v184 = v185 = v16;
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

  v17 = [(BBBulletin *)self dismissalID];
  [(BBBulletin *)v5 dismissalID];
  v182 = v183 = v17;
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

  v18 = [(BBBulletin *)self categoryID];
  [(BBBulletin *)v5 categoryID];
  v180 = v181 = v18;
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

  v19 = [(BBBulletin *)self threadID];
  [(BBBulletin *)v5 threadID];
  v178 = v179 = v19;
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

  v223 = self;
  v20 = [(BBBulletin *)self eventBehavior];
  v21 = v5;
  [(BBBulletin *)v5 eventBehavior];
  v176 = v177 = v20;
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
    self = v223;
    goto LABEL_40;
  }

  v22 = [(BBBulletin *)self isHighlight];
  if (v22 != [(BBBulletin *)v5 isHighlight]|| (v23 = [(BBBulletin *)self priorityNotificationStatus], v23 != [(BBBulletin *)v5 priorityNotificationStatus]) || (v24 = [(BBBulletin *)self notificationSummaryStatus], v24 != [(BBBulletin *)v5 notificationSummaryStatus]))
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

  v25 = [(BBBulletin *)self peopleIDs];
  [(BBBulletin *)v5 peopleIDs];
  v174 = v175 = v25;
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

  v26 = [(BBBulletin *)self sectionSubtype];
  if (v26 != [(BBBulletin *)v5 sectionSubtype])
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

  v27 = [(BBBulletin *)self intentIDs];
  v172 = [(BBBulletin *)v5 intentIDs];
  v173 = v27;
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

  v28 = [(BBBulletin *)self counter];
  if (v28 != [(BBBulletin *)v5 counter]|| (v29 = [(BBBulletin *)self interruptionLevel], v29 != [(BBBulletin *)v5 interruptionLevel]) || (v30 = [(BBBulletin *)self contentPreviewSetting], v30 != [(BBBulletin *)v5 contentPreviewSetting]))
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

  v31 = [(BBBulletin *)self content];
  v170 = [(BBBulletin *)v5 content];
  v171 = v31;
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

  v32 = [(BBBulletin *)self modalAlertContent];
  v168 = [(BBBulletin *)v5 modalAlertContent];
  v169 = v32;
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

  v33 = [(BBBulletin *)self starkBannerContent];
  v166 = [(BBBulletin *)v5 starkBannerContent];
  v167 = v33;
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

  v34 = [(BBBulletin *)self communicationContext];
  v164 = [(BBBulletin *)v5 communicationContext];
  v165 = v34;
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

  v35 = [(BBBulletin *)self summaryArgument];
  v162 = [(BBBulletin *)v5 summaryArgument];
  v163 = v35;
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

  v36 = [(BBBulletin *)self summaryArgumentCount];
  if (v36 != [(BBBulletin *)v5 summaryArgumentCount])
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

  v37 = [(BBBulletin *)self icon];
  v160 = [(BBBulletin *)v5 icon];
  v161 = v37;
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

  v38 = [(BBBulletin *)self hasCriticalIcon];
  if (v38 != [(BBBulletin *)v5 hasCriticalIcon]|| (v39 = [(BBBulletin *)self hasSubordinateIcon], v39 != [(BBBulletin *)v5 hasSubordinateIcon]) || (v40 = [(BBBulletin *)self hasEventDate], v40 != [(BBBulletin *)v5 hasEventDate]))
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

  v65 = [(BBBulletin *)self date];
  v158 = [(BBBulletin *)v5 date];
  v159 = v65;
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

  v66 = [(BBBulletin *)self endDate];
  v156 = [(BBBulletin *)v21 endDate];
  v157 = v66;
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

  v67 = [(BBBulletin *)self recencyDate];
  v154 = [(BBBulletin *)v21 recencyDate];
  v155 = v67;
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

  v68 = [(BBBulletin *)v223 dateFormatStyle];
  if (v68 != [(BBBulletin *)v21 dateFormatStyle]|| (v69 = [(BBBulletin *)v223 dateIsAllDay], v69 != [(BBBulletin *)v21 dateIsAllDay]))
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

  v70 = [(BBBulletin *)v223 timeZone];
  v152 = [(BBBulletin *)v21 timeZone];
  v153 = v70;
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

  v71 = [(BBBulletin *)v223 accessoryIconMask];
  v150 = [(BBBulletin *)v21 accessoryIconMask];
  v151 = v71;
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

  v72 = [(BBBulletin *)v223 accessoryImage];
  v148 = [(BBBulletin *)v21 accessoryImage];
  v149 = v72;
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

  v73 = [(BBBulletin *)v223 clearable];
  if (v73 != [(BBBulletin *)v21 clearable])
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

  v74 = [(BBBulletin *)v223 sound];
  v146 = [(BBBulletin *)v21 sound];
  v147 = v74;
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

  v75 = [(BBBulletin *)v223 turnsOnDisplay];
  if (v75 != [(BBBulletin *)v21 turnsOnDisplay])
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

  v76 = [(BBBulletin *)v223 primaryAttachment];
  v144 = [(BBBulletin *)v21 primaryAttachment];
  v145 = v76;
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

  v77 = [(BBBulletin *)v223 additionalAttachments];
  v142 = [(BBBulletin *)v21 additionalAttachments];
  v143 = v77;
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

  v78 = [(BBBulletin *)v223 unlockActionLabelOverride];
  v140 = [(BBBulletin *)v21 unlockActionLabelOverride];
  v141 = v78;
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

  v79 = [(BBBulletin *)v223 wantsFullscreenPresentation];
  if (v79 != [(BBBulletin *)v21 wantsFullscreenPresentation]|| (v80 = [(BBBulletin *)v223 ignoresQuietMode], v80 != [(BBBulletin *)v21 ignoresQuietMode]) || (v81 = [(BBBulletin *)v223 ignoresDowntime], v81 != [(BBBulletin *)v21 ignoresDowntime]) || (v82 = [(BBBulletin *)v223 preemptsPresentedAlert], v82 != [(BBBulletin *)v21 preemptsPresentedAlert]) || (v83 = [(BBBulletin *)v223 displaysActionsInline], v83 != [(BBBulletin *)v21 displaysActionsInline]))
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

  v84 = [(BBBulletin *)v223 actions];
  v138 = [(BBBulletin *)v21 actions];
  v139 = v84;
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

  v85 = [(BBBulletin *)v223 buttons];
  v136 = [(BBBulletin *)v21 buttons];
  v137 = v85;
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

  v86 = [(BBBulletin *)v223 supplementaryActionsByLayout];
  v134 = [(BBBulletin *)v21 supplementaryActionsByLayout];
  v135 = v86;
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

  v87 = [(BBBulletin *)v223 alertSuppressionContexts];
  v132 = [(BBBulletin *)v21 alertSuppressionContexts];
  v133 = v87;
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

  v88 = [(BBBulletin *)v223 context];
  v130 = [(BBBulletin *)v21 context];
  v131 = v88;
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

  v89 = [(BBBulletin *)v223 expirationDate];
  v128 = [(BBBulletin *)v21 expirationDate];
  v129 = v89;
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

  v90 = [(BBBulletin *)v223 expirationEvents];
  if (v90 != [(BBBulletin *)v21 expirationEvents])
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

  v91 = [(BBBulletin *)v223 lastInterruptDate];
  v126 = [(BBBulletin *)v21 lastInterruptDate];
  v127 = v91;
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

  v92 = [(BBBulletin *)v223 publicationDate];
  v124 = [(BBBulletin *)v21 publicationDate];
  v125 = v92;
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

  v93 = [(BBBulletin *)v223 usesExternalSync];
  if (v93 != [(BBBulletin *)v21 usesExternalSync]|| (v94 = [(BBBulletin *)v223 isLoading], v94 != [(BBBulletin *)v21 isLoading]) || (v95 = [(BBBulletin *)v223 preventAutomaticRemovalFromLockScreen], v95 != [(BBBulletin *)v21 preventAutomaticRemovalFromLockScreen]) || (v96 = [(BBBulletin *)v223 lockScreenPriority], v96 != [(BBBulletin *)v21 lockScreenPriority]) || (v97 = [(BBBulletin *)v223 backgroundStyle], v97 != [(BBBulletin *)v21 backgroundStyle]))
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

  v98 = [(BBBulletin *)v223 header];
  v122 = [(BBBulletin *)v21 header];
  v123 = v98;
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

  v99 = [(BBBulletin *)v223 footer];
  v120 = [(BBBulletin *)v21 footer];
  v121 = v99;
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

  v100 = [(BBBulletin *)v223 threadSummary];
  v118 = [(BBBulletin *)v21 threadSummary];
  v119 = v100;
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

  v101 = [(BBBulletin *)v223 spotlightIdentifier];
  v116 = [(BBBulletin *)v21 spotlightIdentifier];
  v117 = v101;
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

  v102 = [(BBBulletin *)v223 realertCount];
  if (v102 != [(BBBulletin *)v21 realertCount])
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v7 = 0;
    goto LABEL_244;
  }

  v103 = [(BBBulletin *)v223 alertSuppressionAppIDs_deprecated];
  v114 = [(BBBulletin *)v21 alertSuppressionAppIDs_deprecated];
  v115 = v103;
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

  v104 = [(BBBulletin *)v223 contentType];
  v112 = [(BBBulletin *)v21 contentType];
  v113 = v104;
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

  v105 = [(BBBulletin *)v223 screenCaptureProhibited];
  if (v105 != [(BBBulletin *)v21 screenCaptureProhibited]|| ([(BBBulletin *)v223 relevanceScore], v107 = v106, [(BBBulletin *)v21 relevanceScore], v107 != v108))
  {
    v47 = 0;
    v7 = 0;
    goto LABEL_248;
  }

  self = v223;
  v109 = [(BBBulletin *)v223 filterCriteria];
  v5 = v21;
  v110 = [(BBBulletin *)v21 filterCriteria];
  v111 = v109;
  v7 = BSEqualObjects();
  v8 = v110;
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
  LODWORD(v223) = v7;
  if (v47)
  {
    v198 = v50;
    v51 = v4;
    v52 = self;
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
    self = v52;
    v4 = v51;
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

  if (v223)
  {
    v62 = [(BBBulletin *)self speechLanguage];
    v63 = [(BBBulletin *)v5 speechLanguage];
    v48 = BSEqualObjects();
  }

  else
  {
    v48 = 0;
  }

LABEL_136:
  return v48;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(BBBulletin *)self content];
  [v5 setTitle:v4];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(BBBulletin *)self content];
  [v5 setSubtitle:v4];
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  v5 = [(BBBulletin *)self content];
  [v5 setMessage:v4];
}

- (void)setAttributedMessage:(id)a3
{
  v4 = a3;
  v5 = [(BBBulletin *)self content];
  [v5 setAttributedMessage:v4];
}

- (void)setSummary:(id)a3
{
  v4 = a3;
  v5 = [(BBBulletin *)self content];
  [v5 setSummary:v4];
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

- (void)setAlertSuppressionContexts:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  alertSuppressionContexts = self->_alertSuppressionContexts;
  self->_alertSuppressionContexts = 0;

  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v4;
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
  v2 = [(BBBulletin *)self primaryAttachment];
  v3 = [v2 type];

  return v3;
}

- (unint64_t)numberOfAdditionalAttachments
{
  v2 = [(BBBulletin *)self additionalAttachments];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)numberOfAdditionalAttachmentsOfType:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(BBBulletin *)self additionalAttachments];
  v5 = [v4 copy];

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

        if ([*(*(&v14 + 1) + 8 * i) type] == a3)
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

- (id)_actionKeyForType:(int64_t)a3
{
  if ((a3 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return off_278D2A568[a3 - 1];
  }
}

- (void)setDefaultAction:(id)a3
{
  v4 = a3;
  [v4 setActionType:1];
  actions = self->_actions;
  v6 = [v4 copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"default"];
}

- (void)setDismissAction:(id)a3
{
  v4 = a3;
  [v4 setActionType:8];
  actions = self->_actions;
  v6 = [v4 copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"dismiss"];
}

- (void)setAlternateAction:(id)a3
{
  v4 = a3;
  [v4 setActionType:2];
  actions = self->_actions;
  v6 = [v4 copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"alternate"];
}

- (void)setAcknowledgeAction:(id)a3
{
  v4 = a3;
  [v4 setActionType:3];
  actions = self->_actions;
  v6 = [v4 copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"acknowledge"];
}

- (void)setExpireAction:(id)a3
{
  v4 = a3;
  [v4 setActionType:5];
  actions = self->_actions;
  v6 = [v4 copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"expire"];
}

- (void)setSnoozeAction:(id)a3
{
  v4 = a3;
  [v4 setActionType:6];
  actions = self->_actions;
  v6 = [v4 copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"snooze"];
}

- (void)setRaiseAction:(id)a3
{
  v4 = a3;
  [v4 setActionType:9];
  actions = self->_actions;
  v6 = [v4 copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"raise"];
}

- (void)setFollowActivityAction:(id)a3
{
  v4 = a3;
  [v4 setActionType:11];
  actions = self->_actions;
  v6 = [v4 copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"follow-activity"];
}

- (void)setSilenceAction:(id)a3
{
  v4 = a3;
  [v4 setActionType:10];
  actions = self->_actions;
  v6 = [v4 copy];

  [(NSMutableDictionary *)actions setValue:v6 forKey:@"silence"];
}

- (id)actionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BBBulletin *)self _allActions];
  v6 = [(BBBulletin *)self _actionWithID:v4 fromActions:v5];

  return v6;
}

- (id)_actionWithID:(id)a3 fromActions:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 actions];
          v14 = [(BBBulletin *)self _actionWithID:v6 fromActions:v13];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v15 = [v12 identifier];
          v16 = [v15 isEqualToString:v6];

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

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)supplementaryActionsForLayout:(int64_t)a3
{
  supplementaryActionsByLayout = self->_supplementaryActionsByLayout;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)supplementaryActionsByLayout objectForKey:v4];

  return v5;
}

- (id)_allSupplementaryActions
{
  v2 = [(NSMutableDictionary *)self->_supplementaryActionsByLayout allValues];
  v3 = [v2 bs_flatten];

  return v3;
}

- (id)_allActions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(NSMutableDictionary *)self->_actions allValues];
  [v3 addObjectsFromArray:v4];

  v5 = [(BBBulletin *)self _allSupplementaryActions];
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (void)setButtons:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [v4 count];
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

    v4 = v13;
  }
}

- (id)_responseForAction:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(BBResponse);
  v6 = [(BBBulletin *)self lifeAssertions];
  [(BBResponse *)v5 setLifeAssertions:v6];

  v7 = [(BBBulletin *)self responseSendBlock];
  [(BBResponse *)v5 setSendBlock:v7];

  v8 = [(BBBulletin *)self bulletinID];
  [(BBResponse *)v5 setBulletinID:v8];

  -[BBResponse setActionActivationMode:](v5, "setActionActivationMode:", [v4 activationMode]);
  -[BBResponse setActionBehavior:](v5, "setActionBehavior:", [v4 behavior]);
  -[BBResponse setActionType:](v5, "setActionType:", [v4 actionType]);
  v9 = [v4 identifier];
  [(BBResponse *)v5 setActionID:v9];

  v10 = [v4 launchURL];

  [(BBResponse *)v5 setActionLaunchURL:v10];

  return v5;
}

- (id)responseForAction:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [(BBBulletin *)self _responseForAction:v4];
LABEL_6:

  return v5;
}

- (id)responseForDefaultAction
{
  v3 = [(BBBulletin *)self defaultAction];
  v4 = [(BBBulletin *)self responseForAction:v3];

  return v4;
}

- (id)responseForAcknowledgeAction
{
  v3 = [(BBBulletin *)self acknowledgeAction];
  v4 = [(BBBulletin *)self responseForAction:v3];

  return v4;
}

- (id)responseForButtonActionAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_buttons count]<= a3)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_buttons objectAtIndex:a3];
    v6 = [v5 action];
    v7 = [(BBBulletin *)self _responseForAction:v6];

    v8 = [v5 identifier];
    if (v8)
    {
      [v7 setButtonID:v8];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v10 = [v9 stringValue];
      [v7 setButtonID:v10];
    }
  }

  return v7;
}

- (id)responseForSnoozeAction
{
  v3 = [(BBBulletin *)self snoozeAction];
  v4 = [(BBBulletin *)self responseForAction:v3];

  return v4;
}

- (id)responseForRaiseAction
{
  v3 = [(BBBulletin *)self raiseAction];
  v4 = [(BBBulletin *)self responseForAction:v3];

  return v4;
}

- (id)responseForExpireAction
{
  v3 = objc_alloc_init(BBResponse);
  v4 = [(BBBulletin *)self bulletinID];
  [(BBResponse *)v3 setBulletinID:v4];

  v5 = [(BBBulletin *)self expireAction];
  -[BBResponse setActionActivationMode:](v3, "setActionActivationMode:", [v5 activationMode]);

  [(BBResponse *)v3 setActionType:5];
  v6 = [(BBBulletin *)self expireAction];
  v7 = [v6 identifier];
  [(BBResponse *)v3 setActionID:v7];

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

- (id)actionForResponse:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    NSLog(&cfstr_BbbulletinHand.isa);
LABEL_9:
    v12 = 0;
    goto LABEL_24;
  }

  v5 = [(BBBulletin *)self bulletinID];
  v6 = [v4 bulletinID];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v13 = [(BBBulletin *)self bulletinID];
    v14 = [v4 bulletinID];
    NSLog(&cfstr_BbbulletinHand_0.isa, v13, v14);

    goto LABEL_9;
  }

  v8 = -[BBBulletin _actionKeyForType:](self, "_actionKeyForType:", [v4 actionType]);
  v9 = [v4 actionType];
  if (!v8)
  {
    NSLog(&cfstr_BbbulletinHand_1.isa, v9);
LABEL_11:
    v12 = 0;
    goto LABEL_23;
  }

  if (v9 == 7)
  {
    v10 = [v4 actionID];
    v11 = [(BBBulletin *)self _allSupplementaryActions];
    v12 = [(BBBulletin *)self _actionWithID:v10 fromActions:v11];

    goto LABEL_6;
  }

  if (![v8 isEqualToString:@"button"])
  {
    v12 = [(NSMutableDictionary *)self->_actions objectForKey:v8];
    goto LABEL_23;
  }

  v27 = v8;
  v10 = [v4 buttonID];
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
      v21 = [v20 identifier];
      v22 = [v21 isEqualToString:v10];

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

    v12 = [v20 action];

    if (!v12)
    {
      goto LABEL_29;
    }

    v8 = v27;
    goto LABEL_6;
  }

LABEL_21:

LABEL_29:
  v25 = [v10 integerValue];
  v8 = v27;
  if (v25 >= -[NSArray count](self->_buttons, "count") || (-[NSArray objectAtIndex:](self->_buttons, "objectAtIndex:", v25), v26 = objc_claimAutoreleasedReturnValue(), [v26 action], v12 = objc_claimAutoreleasedReturnValue(), v26, !v12))
  {
    NSLog(&cfstr_BbbulletinHand_2.isa, v10);

    goto LABEL_11;
  }

LABEL_6:

LABEL_23:
LABEL_24:

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_fillOutCopy:(id)a3 withZone:(_NSZone *)a4
{
  v64 = a3;
  v6 = [(BBBulletin *)self sectionID];
  [v64 setSectionID:v6];

  v7 = [(BBBulletin *)self sectionBundlePath];
  [v64 setSectionBundlePath:v7];

  v8 = [(BBBulletin *)self universalSectionID];
  [v64 setUniversalSectionID:v8];

  v9 = [(BBBulletin *)self parentSectionID];
  [v64 setParentSectionID:v9];

  v10 = [(BBBulletin *)self subsectionIDs];
  [v64 setSubsectionIDs:v10];

  v11 = [(BBBulletin *)self recordID];
  [v64 setRecordID:v11];

  v12 = [(BBBulletin *)self publisherBulletinID];
  [v64 setPublisherBulletinID:v12];

  v13 = [(BBBulletin *)self dismissalID];
  [v64 setDismissalID:v13];

  v14 = [(BBBulletin *)self categoryID];
  [v64 setCategoryID:v14];

  v15 = [(BBBulletin *)self threadID];
  [v64 setThreadID:v15];

  v16 = [(BBBulletin *)self eventBehavior];
  [v64 setEventBehavior:v16];

  [v64 setIsHighlight:{-[BBBulletin isHighlight](self, "isHighlight")}];
  [v64 setPriorityNotificationStatus:{-[BBBulletin priorityNotificationStatus](self, "priorityNotificationStatus")}];
  [v64 setNotificationSummaryStatus:{-[BBBulletin notificationSummaryStatus](self, "notificationSummaryStatus")}];
  v17 = [(BBBulletin *)self peopleIDs];
  [v64 setPeopleIDs:v17];

  [v64 setSectionSubtype:{-[BBBulletin sectionSubtype](self, "sectionSubtype")}];
  v18 = [(BBBulletin *)self intentIDs];
  [v64 setIntentIDs:v18];

  [v64 setCounter:{-[BBBulletin counter](self, "counter")}];
  [v64 setInterruptionLevel:{-[BBBulletin interruptionLevel](self, "interruptionLevel")}];
  [v64 setContentPreviewSetting:{-[BBBulletin contentPreviewSetting](self, "contentPreviewSetting")}];
  v19 = [(BBBulletin *)self content];
  v20 = [v19 copyWithZone:a4];
  [v64 setContent:v20];

  v21 = [(BBBulletin *)self modalAlertContent];
  v22 = [v21 copyWithZone:a4];
  [v64 setModalAlertContent:v22];

  v23 = [(BBBulletin *)self starkBannerContent];
  v24 = [v23 copyWithZone:a4];
  [v64 setStarkBannerContent:v24];

  v25 = [(BBBulletin *)self communicationContext];
  v26 = [v25 copyWithZone:a4];
  [v64 setCommunicationContext:v26];

  v27 = [(BBBulletin *)self summaryArgument];
  v28 = [v27 copyWithZone:a4];
  [v64 setSummaryArgument:v28];

  [v64 setSummaryArgumentCount:{-[BBBulletin summaryArgumentCount](self, "summaryArgumentCount")}];
  v29 = [(BBBulletin *)self icon];
  v30 = [v29 copyWithZone:a4];
  [v64 setIcon:v30];

  [v64 setHasCriticalIcon:{-[BBBulletin hasCriticalIcon](self, "hasCriticalIcon")}];
  [v64 setHasSubordinateIcon:{-[BBBulletin hasSubordinateIcon](self, "hasSubordinateIcon")}];
  [v64 setHasEventDate:{-[BBBulletin hasEventDate](self, "hasEventDate")}];
  v31 = [(BBBulletin *)self date];
  [v64 setDate:v31];

  v32 = [(BBBulletin *)self endDate];
  [v64 setEndDate:v32];

  v33 = [(BBBulletin *)self recencyDate];
  [v64 setRecencyDate:v33];

  [v64 setDateFormatStyle:{-[BBBulletin dateFormatStyle](self, "dateFormatStyle")}];
  [v64 setDateIsAllDay:{-[BBBulletin dateIsAllDay](self, "dateIsAllDay")}];
  v34 = [(BBBulletin *)self timeZone];
  [v64 setTimeZone:v34];

  v35 = [(BBBulletin *)self accessoryIconMask];
  [v64 setAccessoryIconMask:v35];

  v36 = [(BBBulletin *)self accessoryImage];
  [v64 setAccessoryImage:v36];

  [v64 setClearable:{-[BBBulletin clearable](self, "clearable")}];
  v37 = [(BBBulletin *)self sound];
  v38 = [v37 copyWithZone:a4];
  [v64 setSound:v38];

  [v64 setTurnsOnDisplay:{-[BBBulletin turnsOnDisplay](self, "turnsOnDisplay")}];
  v39 = [(BBBulletin *)self primaryAttachment];
  [v64 setPrimaryAttachment:v39];

  v40 = [(BBBulletin *)self additionalAttachments];
  [v64 setAdditionalAttachments:v40];

  v41 = [(BBBulletin *)self unlockActionLabelOverride];
  [v64 setUnlockActionLabelOverride:v41];

  [v64 setWantsFullscreenPresentation:{-[BBBulletin wantsFullscreenPresentation](self, "wantsFullscreenPresentation")}];
  [v64 setIgnoresQuietMode:{-[BBBulletin ignoresQuietMode](self, "ignoresQuietMode")}];
  [v64 setIgnoresDowntime:{-[BBBulletin ignoresDowntime](self, "ignoresDowntime")}];
  [v64 setPreemptsPresentedAlert:{-[BBBulletin preemptsPresentedAlert](self, "preemptsPresentedAlert")}];
  [v64 setDisplaysActionsInline:{-[BBBulletin displaysActionsInline](self, "displaysActionsInline")}];
  v42 = [(BBBulletin *)self actions];
  v43 = [v42 mutableCopy];
  [v64 setActions:v43];

  v44 = [(BBBulletin *)self buttons];
  [v64 setButtons:v44];

  v45 = [(BBBulletin *)self supplementaryActionsByLayout];
  [v64 setSupplementaryActionsByLayout:v45];

  v46 = [(BBBulletin *)self context];
  [v64 setContext:v46];

  v47 = [(BBBulletin *)self expirationDate];
  [v64 setExpirationDate:v47];

  [v64 setExpirationEvents:{-[BBBulletin expirationEvents](self, "expirationEvents")}];
  v48 = [(BBBulletin *)self alertSuppressionContexts];
  [v64 setAlertSuppressionContexts:v48];

  v49 = [(BBBulletin *)self bulletinID];
  [v64 setBulletinID:v49];

  v50 = [(BBBulletin *)self lastInterruptDate];
  [v64 setLastInterruptDate:v50];

  v51 = [(BBBulletin *)self publicationDate];
  [v64 setPublicationDate:v51];

  [v64 setUsesExternalSync:{-[BBBulletin usesExternalSync](self, "usesExternalSync")}];
  [v64 setLoading:{-[BBBulletin isLoading](self, "isLoading")}];
  [v64 setPreventAutomaticRemovalFromLockScreen:{-[BBBulletin preventAutomaticRemovalFromLockScreen](self, "preventAutomaticRemovalFromLockScreen")}];
  [v64 setLockScreenPriority:{-[BBBulletin lockScreenPriority](self, "lockScreenPriority")}];
  [v64 setBackgroundStyle:{-[BBBulletin backgroundStyle](self, "backgroundStyle")}];
  v52 = [(BBBulletin *)self header];
  [v64 setHeader:v52];

  v53 = [(BBBulletin *)self footer];
  [v64 setFooter:v53];

  v54 = [(BBBulletin *)self threadSummary];
  [v64 setThreadSummary:v54];

  v55 = [(BBBulletin *)self spotlightIdentifier];
  [v64 setSpotlightIdentifier:v55];

  if ([v64 isMemberOfClass:objc_opt_class()])
  {
    v56 = [(BBBulletin *)self bulletinVersionID];
    [v64 setBulletinVersionID:v56];

    v57 = [v64 bulletinVersionID];

    if (!v57)
    {
      v58 = [MEMORY[0x277CCAD78] UUID];
      v59 = [v58 UUIDString];
      [v64 setBulletinVersionID:v59];
    }
  }

  [v64 setRealertCount:{-[BBBulletin realertCount](self, "realertCount")}];
  v60 = [(BBBulletin *)self alertSuppressionAppIDs_deprecated];
  [v64 setAlertSuppressionAppIDs_deprecated:v60];

  v61 = [(BBBulletin *)self contentType];
  [v64 setContentType:v61];

  [v64 setScreenCaptureProhibited:{-[BBBulletin screenCaptureProhibited](self, "screenCaptureProhibited")}];
  v62 = [(BBBulletin *)self speechLanguage];
  [v64 setSpeechLanguage:v62];

  [(BBBulletin *)self relevanceScore];
  [v64 setRelevanceScore:?];
  v63 = [(BBBulletin *)self filterCriteria];
  [v64 setFilterCriteria:v63];

  [v64 copyAssociationsForBulletin:self];
}

- (void)setHasPrivateContent:(BOOL)a3
{
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  [(BBBulletin *)self setContentPreviewSetting:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(BBBulletin *)self _fillOutCopy:v5 withZone:a3];
  return v5;
}

- (BBBulletin)initWithCoder:(id)a3
{
  v95[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v89.receiver = self;
  v89.super_class = BBBulletin;
  v5 = [(BBBulletin *)&v89 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bulletinID"];
    [(BBBulletin *)v5 setBulletinID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"versionID"];
    [(BBBulletin *)v5 setBulletinVersionID:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    [(BBBulletin *)v5 setSectionID:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionBundlePathKey"];
    [(BBBulletin *)v5 setSectionBundlePath:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"universalSectionID"];
    [(BBBulletin *)v5 setUniversalSectionID:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentSectionID"];
    [(BBBulletin *)v5 setParentSectionID:v11];

    v12 = MEMORY[0x277CBEB98];
    v95[0] = objc_opt_class();
    v95[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"subsectionIDs"];
    [(BBBulletin *)v5 setSubsectionIDs:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publisherRecordID"];
    [(BBBulletin *)v5 setRecordID:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publisherBulletinID"];
    [(BBBulletin *)v5 setPublisherBulletinID:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dismissalID"];
    [(BBBulletin *)v5 setDismissalID:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryID"];
    [(BBBulletin *)v5 setCategoryID:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadID"];
    [(BBBulletin *)v5 setThreadID:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventBehavior"];
    [(BBBulletin *)v5 setEventBehavior:v21];

    -[BBBulletin setIsHighlight:](v5, "setIsHighlight:", [v4 decodeBoolForKey:@"isHighlight"]);
    -[BBBulletin setPriorityNotificationStatus:](v5, "setPriorityNotificationStatus:", [v4 decodeIntegerForKey:@"priorityNotificationStatus"]);
    -[BBBulletin setNotificationSummaryStatus:](v5, "setNotificationSummaryStatus:", [v4 decodeIntegerForKey:@"notificationSummaryStatus"]);
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"peopleIDs"];
    [(BBBulletin *)v5 setPeopleIDs:v25];

    -[BBBulletin setSectionSubtype:](v5, "setSectionSubtype:", [v4 decodeIntegerForKey:@"sectionSubtype"]);
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"intentIDs"];
    [(BBBulletin *)v5 setIntentIDs:v29];

    -[BBBulletin setCounter:](v5, "setCounter:", [v4 decodeIntegerForKey:@"counter"]);
    -[BBBulletin setInterruptionLevel:](v5, "setInterruptionLevel:", [v4 decodeIntegerForKey:@"interruptionLevel"]);
    -[BBBulletin setContentPreviewSetting:](v5, "setContentPreviewSetting:", [v4 decodeIntegerForKey:@"contentPreviewSetting"]);
    [v4 decodeFloatForKey:@"relevanceScore"];
    [(BBBulletin *)v5 setRelevanceScore:?];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filterCriteria"];
    [(BBBulletin *)v5 setFilterCriteria:v30];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    [(BBBulletin *)v5 setContent:v31];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"communicationContext"];
    [(BBBulletin *)v5 setCommunicationContext:v32];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modalAlertContent"];
    [(BBBulletin *)v5 setModalAlertContent:v33];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"starkBannerContent"];
    [(BBBulletin *)v5 setStarkBannerContent:v34];

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summaryArgument"];
    [(BBBulletin *)v5 setSummaryArgument:v35];

    -[BBBulletin setSummaryArgumentCount:](v5, "setSummaryArgumentCount:", [v4 decodeIntegerForKey:@"summaryArgumentCount"]);
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    [(BBBulletin *)v5 setIcon:v36];

    -[BBBulletin setHasCriticalIcon:](v5, "setHasCriticalIcon:", [v4 decodeBoolForKey:@"hasCriticalIcon"]);
    -[BBBulletin setHasSubordinateIcon:](v5, "setHasSubordinateIcon:", [v4 decodeBoolForKey:@"hasSubordinateIcon"]);
    -[BBBulletin setHasEventDate:](v5, "setHasEventDate:", [v4 decodeBoolForKey:@"hasEventDate"]);
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [(BBBulletin *)v5 setDate:v37];

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(BBBulletin *)v5 setEndDate:v38];

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recencyDate"];
    [(BBBulletin *)v5 setRecencyDate:v39];

    -[BBBulletin setDateFormatStyle:](v5, "setDateFormatStyle:", [v4 decodeIntegerForKey:@"dateFormatStyle"]);
    -[BBBulletin setDateIsAllDay:](v5, "setDateIsAllDay:", [v4 decodeBoolForKey:@"allDay"]);
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    [(BBBulletin *)v5 setTimeZone:v40];

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIconMask"];
    [(BBBulletin *)v5 setAccessoryIconMask:v41];

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryImage"];
    [(BBBulletin *)v5 setAccessoryImage:v42];

    -[BBBulletin setClearable:](v5, "setClearable:", [v4 decodeBoolForKey:@"clearable"]);
    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sound"];
    [(BBBulletin *)v5 setSound:v43];

    -[BBBulletin setTurnsOnDisplay:](v5, "setTurnsOnDisplay:", [v4 decodeBoolForKey:@"turnsOnDisplay"]);
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unlockActionLabelOverride"];
    [(BBBulletin *)v5 setUnlockActionLabelOverride:v44];

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAttachment"];
    [(BBBulletin *)v5 setPrimaryAttachment:v45];

    v46 = MEMORY[0x277CBEB98];
    v47 = objc_opt_class();
    v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"additionalAttachments"];
    [(BBBulletin *)v5 setAdditionalAttachments:v49];

    -[BBBulletin setWantsFullscreenPresentation:](v5, "setWantsFullscreenPresentation:", [v4 decodeBoolForKey:@"wantsFullscreenPresentation"]);
    -[BBBulletin setIgnoresQuietMode:](v5, "setIgnoresQuietMode:", [v4 decodeBoolForKey:@"ignoresQuietMode"]);
    -[BBBulletin setIgnoresDowntime:](v5, "setIgnoresDowntime:", [v4 decodeBoolForKey:@"ignoresDowntime"]);
    -[BBBulletin setPreemptsPresentedAlert:](v5, "setPreemptsPresentedAlert:", [v4 decodeBoolForKey:@"preemptsPresentedAlert"]);
    -[BBBulletin setDisplaysActionsInline:](v5, "setDisplaysActionsInline:", [v4 decodeBoolForKey:@"displaysActionsInline"]);
    v50 = MEMORY[0x277CBEB98];
    v94[0] = objc_opt_class();
    v94[1] = objc_opt_class();
    v94[2] = objc_opt_class();
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:3];
    v52 = [v50 setWithArray:v51];
    v53 = [v4 decodeObjectOfClasses:v52 forKey:@"actions"];
    [(BBBulletin *)v5 setActions:v53];

    v54 = MEMORY[0x277CBEB98];
    v93[0] = objc_opt_class();
    v93[1] = objc_opt_class();
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v56 = [v54 setWithArray:v55];
    v57 = [v4 decodeObjectOfClasses:v56 forKey:@"buttons"];
    [(BBBulletin *)v5 setButtons:v57];

    v58 = MEMORY[0x277CBEB98];
    v92[0] = objc_opt_class();
    v92[1] = objc_opt_class();
    v92[2] = objc_opt_class();
    v92[3] = objc_opt_class();
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
    v60 = [v58 setWithArray:v59];
    v61 = [v4 decodeObjectOfClasses:v60 forKey:@"supplementaryActionsByLayout"];
    [(BBBulletin *)v5 setSupplementaryActionsByLayout:v61];

    v62 = MEMORY[0x277CBEB98];
    v91[0] = objc_opt_class();
    v91[1] = objc_opt_class();
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
    v64 = [v62 setWithArray:v63];
    v65 = [v4 decodeObjectOfClasses:v64 forKey:@"alertSuppressionContexts"];
    [(BBBulletin *)v5 setAlertSuppressionContexts:v65];

    v66 = BBAllowedClasses();
    v67 = [v4 decodeObjectOfClasses:v66 forKey:@"context"];
    [(BBBulletin *)v5 setContext:v67];

    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    [(BBBulletin *)v5 setExpirationDate:v68];

    -[BBBulletin setExpirationEvents:](v5, "setExpirationEvents:", [v4 decodeIntegerForKey:@"expirationEvents"]);
    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastInterruptDate"];
    [(BBBulletin *)v5 setLastInterruptDate:v69];

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicationDate"];
    [(BBBulletin *)v5 setPublicationDate:v70];

    -[BBBulletin setUsesExternalSync:](v5, "setUsesExternalSync:", [v4 decodeBoolForKey:@"usesExternalSync"]);
    -[BBBulletin setLoading:](v5, "setLoading:", [v4 decodeBoolForKey:@"loading"]);
    -[BBBulletin setPreventAutomaticRemovalFromLockScreen:](v5, "setPreventAutomaticRemovalFromLockScreen:", [v4 decodeBoolForKey:@"preventAutomaticRemovalFromLockScreen"]);
    -[BBBulletin setLockScreenPriority:](v5, "setLockScreenPriority:", [v4 decodeIntegerForKey:@"lockScreenPriority"]);
    -[BBBulletin setBackgroundStyle:](v5, "setBackgroundStyle:", [v4 decodeIntegerForKey:@"backgroundStyle"]);
    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"header"];
    [(BBBulletin *)v5 setHeader:v71];

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footer"];
    [(BBBulletin *)v5 setFooter:v72];

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadSummary"];
    [(BBBulletin *)v5 setThreadSummary:v73];

    v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spotlightIdentifier"];
    [(BBBulletin *)v5 setSpotlightIdentifier:v74];

    -[BBBulletin setRealertCount:](v5, "setRealertCount:", [v4 decodeIntegerForKey:@"realertCount"]);
    v75 = MEMORY[0x277CBEB98];
    v90[0] = objc_opt_class();
    v90[1] = objc_opt_class();
    v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    v77 = [v75 setWithArray:v76];
    v78 = [v4 decodeObjectOfClasses:v77 forKey:@"alertSuppressionIDs"];
    [(BBBulletin *)v5 setAlertSuppressionAppIDs_deprecated:v78];

    v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    [(BBBulletin *)v5 setContentType:v79];

    -[BBBulletin setScreenCaptureProhibited:](v5, "setScreenCaptureProhibited:", [v4 decodeBoolForKey:@"screenCaptureProhibited"]);
    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speechLanguage"];
    [(BBBulletin *)v5 setSpeechLanguage:v80];

    if ([v4 containsValueForKey:@"attachments"])
    {
      v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attachments"];
      if ([v81 primaryType])
      {
        v82 = objc_alloc_init(BBMutableAttachmentMetadata);
        -[BBMutableAttachmentMetadata setType:](v82, "setType:", [v81 primaryType]);
        [(BBBulletin *)v5 setPrimaryAttachment:v82];
      }

      for (i = 1; i != 7; ++i)
      {
        v84 = [MEMORY[0x277CBEB18] array];
        for (j = [v81 numberOfAdditionalAttachmentsOfType:i]; j; --j)
        {
          v86 = objc_alloc_init(BBMutableAttachmentMetadata);
          [(BBMutableAttachmentMetadata *)v86 setType:i];
          [v84 addObject:v86];
        }

        if ([v84 count])
        {
          [(BBBulletin *)v5 setAdditionalAttachments:v84];
        }
      }
    }

    if ([v4 containsValueForKey:@"hasPrivateContent"])
    {
      -[BBBulletin setHasPrivateContent:](v5, "setHasPrivateContent:", [v4 decodeBoolForKey:@"hasPrivateContent"]);
    }
  }

  v87 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BBBulletin *)self bulletinID];
  [v4 encodeObject:v5 forKey:@"bulletinID"];

  v6 = [(BBBulletin *)self sectionID];
  [v4 encodeObject:v6 forKey:@"sectionID"];

  v7 = [(BBBulletin *)self sectionBundlePath];
  [v4 encodeObject:v7 forKey:@"sectionBundlePathKey"];

  v8 = [(BBBulletin *)self universalSectionID];
  [v4 encodeObject:v8 forKey:@"universalSectionID"];

  v9 = [(BBBulletin *)self parentSectionID];
  [v4 encodeObject:v9 forKey:@"parentSectionID"];

  v10 = [(BBBulletin *)self subsectionIDs];
  [v4 encodeObject:v10 forKey:@"subsectionIDs"];

  v11 = [(BBBulletin *)self recordID];
  [v4 encodeObject:v11 forKey:@"publisherRecordID"];

  v12 = [(BBBulletin *)self publisherBulletinID];
  [v4 encodeObject:v12 forKey:@"publisherBulletinID"];

  v13 = [(BBBulletin *)self dismissalID];
  [v4 encodeObject:v13 forKey:@"dismissalID"];

  v14 = [(BBBulletin *)self categoryID];
  [v4 encodeObject:v14 forKey:@"categoryID"];

  v15 = [(BBBulletin *)self threadID];
  [v4 encodeObject:v15 forKey:@"threadID"];

  v16 = [(BBBulletin *)self eventBehavior];
  [v4 encodeObject:v16 forKey:@"eventBehavior"];

  [v4 encodeBool:-[BBBulletin isHighlight](self forKey:{"isHighlight"), @"isHighlight"}];
  [v4 encodeInteger:-[BBBulletin priorityNotificationStatus](self forKey:{"priorityNotificationStatus"), @"priorityNotificationStatus"}];
  [v4 encodeInteger:-[BBBulletin notificationSummaryStatus](self forKey:{"notificationSummaryStatus"), @"notificationSummaryStatus"}];
  v17 = [(BBBulletin *)self peopleIDs];
  [v4 encodeObject:v17 forKey:@"peopleIDs"];

  [v4 encodeInteger:-[BBBulletin sectionSubtype](self forKey:{"sectionSubtype"), @"sectionSubtype"}];
  v18 = [(BBBulletin *)self intentIDs];
  [v4 encodeObject:v18 forKey:@"intentIDs"];

  [v4 encodeInteger:-[BBBulletin counter](self forKey:{"counter"), @"counter"}];
  [v4 encodeInteger:-[BBBulletin interruptionLevel](self forKey:{"interruptionLevel"), @"interruptionLevel"}];
  [v4 encodeInteger:-[BBBulletin contentPreviewSetting](self forKey:{"contentPreviewSetting"), @"contentPreviewSetting"}];
  [(BBBulletin *)self relevanceScore];
  [v4 encodeFloat:@"relevanceScore" forKey:?];
  v19 = [(BBBulletin *)self filterCriteria];
  [v4 encodeObject:v19 forKey:@"filterCriteria"];

  v20 = [(BBBulletin *)self content];
  [v4 encodeObject:v20 forKey:@"content"];

  v21 = [(BBBulletin *)self modalAlertContent];
  [v4 encodeObject:v21 forKey:@"modalAlertContent"];

  v22 = [(BBBulletin *)self starkBannerContent];
  [v4 encodeObject:v22 forKey:@"starkBannerContent"];

  v23 = [(BBBulletin *)self communicationContext];
  [v4 encodeObject:v23 forKey:@"communicationContext"];

  v24 = [(BBBulletin *)self summaryArgument];
  [v4 encodeObject:v24 forKey:@"summaryArgument"];

  [v4 encodeInteger:-[BBBulletin summaryArgumentCount](self forKey:{"summaryArgumentCount"), @"summaryArgumentCount"}];
  v25 = [(BBBulletin *)self icon];
  [v4 encodeObject:v25 forKey:@"icon"];

  [v4 encodeBool:-[BBBulletin hasCriticalIcon](self forKey:{"hasCriticalIcon"), @"hasCriticalIcon"}];
  [v4 encodeBool:-[BBBulletin hasSubordinateIcon](self forKey:{"hasSubordinateIcon"), @"hasSubordinateIcon"}];
  [v4 encodeBool:-[BBBulletin hasEventDate](self forKey:{"hasEventDate"), @"hasEventDate"}];
  v26 = [(BBBulletin *)self date];
  [v4 encodeObject:v26 forKey:@"date"];

  v27 = [(BBBulletin *)self endDate];
  [v4 encodeObject:v27 forKey:@"endDate"];

  v28 = [(BBBulletin *)self recencyDate];
  [v4 encodeObject:v28 forKey:@"recencyDate"];

  [v4 encodeInteger:-[BBBulletin dateFormatStyle](self forKey:{"dateFormatStyle"), @"dateFormatStyle"}];
  [v4 encodeBool:-[BBBulletin dateIsAllDay](self forKey:{"dateIsAllDay"), @"allDay"}];
  v29 = [(BBBulletin *)self timeZone];
  [v4 encodeObject:v29 forKey:@"timeZone"];

  v30 = [(BBBulletin *)self accessoryIconMask];
  [v4 encodeObject:v30 forKey:@"accessoryIconMask"];

  v31 = [(BBBulletin *)self accessoryImage];
  [v4 encodeObject:v31 forKey:@"accessoryImage"];

  [v4 encodeBool:-[BBBulletin clearable](self forKey:{"clearable"), @"clearable"}];
  v32 = [(BBBulletin *)self sound];
  [v4 encodeObject:v32 forKey:@"sound"];

  [v4 encodeBool:-[BBBulletin turnsOnDisplay](self forKey:{"turnsOnDisplay"), @"turnsOnDisplay"}];
  v33 = [(BBBulletin *)self unlockActionLabelOverride];
  [v4 encodeObject:v33 forKey:@"unlockActionLabelOverride"];

  v34 = [(BBBulletin *)self primaryAttachment];
  [v4 encodeObject:v34 forKey:@"primaryAttachment"];

  v35 = [(BBBulletin *)self additionalAttachments];
  [v4 encodeObject:v35 forKey:@"additionalAttachments"];

  [v4 encodeBool:-[BBBulletin wantsFullscreenPresentation](self forKey:{"wantsFullscreenPresentation"), @"wantsFullscreenPresentation"}];
  [v4 encodeBool:-[BBBulletin ignoresQuietMode](self forKey:{"ignoresQuietMode"), @"ignoresQuietMode"}];
  [v4 encodeBool:-[BBBulletin ignoresDowntime](self forKey:{"ignoresDowntime"), @"ignoresDowntime"}];
  [v4 encodeBool:-[BBBulletin preemptsPresentedAlert](self forKey:{"preemptsPresentedAlert"), @"preemptsPresentedAlert"}];
  [v4 encodeBool:-[BBBulletin displaysActionsInline](self forKey:{"displaysActionsInline"), @"displaysActionsInline"}];
  v36 = [(BBBulletin *)self actions];
  [v4 encodeObject:v36 forKey:@"actions"];

  v37 = [(BBBulletin *)self buttons];
  [v4 encodeObject:v37 forKey:@"buttons"];

  v38 = [(BBBulletin *)self supplementaryActionsByLayout];
  [v4 encodeObject:v38 forKey:@"supplementaryActionsByLayout"];

  v39 = [(BBBulletin *)self alertSuppressionContexts];
  [v4 encodeObject:v39 forKey:@"alertSuppressionContexts"];

  v40 = [(BBBulletin *)self context];
  [v4 encodeObject:v40 forKey:@"context"];

  v41 = [(BBBulletin *)self expirationDate];
  [v4 encodeObject:v41 forKey:@"expirationDate"];

  [v4 encodeInteger:-[BBBulletin expirationEvents](self forKey:{"expirationEvents"), @"expirationEvents"}];
  v42 = [(BBBulletin *)self lastInterruptDate];
  [v4 encodeObject:v42 forKey:@"lastInterruptDate"];

  v43 = [(BBBulletin *)self publicationDate];
  [v4 encodeObject:v43 forKey:@"publicationDate"];

  v44 = [(BBBulletin *)self bulletinVersionID];
  [v4 encodeObject:v44 forKey:@"versionID"];

  [v4 encodeBool:-[BBBulletin usesExternalSync](self forKey:{"usesExternalSync"), @"usesExternalSync"}];
  [v4 encodeBool:-[BBBulletin isLoading](self forKey:{"isLoading"), @"loading"}];
  [v4 encodeBool:-[BBBulletin preventAutomaticRemovalFromLockScreen](self forKey:{"preventAutomaticRemovalFromLockScreen"), @"preventAutomaticRemovalFromLockScreen"}];
  [v4 encodeInteger:-[BBBulletin lockScreenPriority](self forKey:{"lockScreenPriority"), @"lockScreenPriority"}];
  [v4 encodeInteger:-[BBBulletin backgroundStyle](self forKey:{"backgroundStyle"), @"backgroundStyle"}];
  v45 = [(BBBulletin *)self header];
  [v4 encodeObject:v45 forKey:@"header"];

  v46 = [(BBBulletin *)self footer];
  [v4 encodeObject:v46 forKey:@"footer"];

  v47 = [(BBBulletin *)self threadSummary];
  [v4 encodeObject:v47 forKey:@"threadSummary"];

  v48 = [(BBBulletin *)self spotlightIdentifier];
  [v4 encodeObject:v48 forKey:@"spotlightIdentifier"];

  [v4 encodeInteger:-[BBBulletin realertCount](self forKey:{"realertCount"), @"realertCount"}];
  v49 = [(BBBulletin *)self alertSuppressionAppIDs_deprecated];
  [v4 encodeObject:v49 forKey:@"alertSuppressionIDs"];

  v50 = [(BBBulletin *)self contentType];
  [v4 encodeObject:v50 forKey:@"contentType"];

  [v4 encodeBool:-[BBBulletin screenCaptureProhibited](self forKey:{"screenCaptureProhibited"), @"screenCaptureProhibited"}];
  v51 = [(BBBulletin *)self speechLanguage];
  [v4 encodeObject:v51 forKey:@"speechLanguage"];
}

- (id)_safeDescription:(BOOL)a3
{
  v30 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  v37 = [(BBBulletin *)self bulletinID];
  v36 = [(BBBulletin *)self bulletinVersionID];
  v35 = [(BBBulletin *)self sectionID];
  v27 = [(BBBulletin *)self sectionSubtype];
  v34 = [(BBBulletin *)self publisherBulletinID];
  v33 = [(BBBulletin *)self categoryID];
  if (a3)
  {
    v32 = @"<redacted>";
    v5 = @"<redacted>";
  }

  else
  {
    v32 = [(BBBulletin *)self threadID];
    v5 = [(BBBulletin *)self peopleIDs];
  }

  v6 = [(BBBulletin *)self communicationContext];
  v28 = v6;
  if (v6)
  {
    v7 = a3;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    v8 = @"<redacted>";
  }

  else
  {
    v8 = @"(null)";
  }

  v26 = v7;
  v31 = v5;
  if (!v7)
  {
    v8 = [(BBBulletin *)self communicationContext];
  }

  v9 = [(BBBulletin *)self recordID];
  v10 = [(BBBulletin *)self intentIDs];
  if (a3)
  {
    v11 = @"<redacted>";
  }

  else
  {
    v11 = [(BBBulletin *)self content];
  }

  v12 = [(BBBulletin *)self date];
  v13 = [(BBBulletin *)self sound];
  v14 = [(BBBulletin *)self interruptionLevel];
  [(BBBulletin *)self relevanceScore];
  v16 = v15;
  v17 = [(BBBulletin *)self filterCriteria];
  v18 = [v30 stringWithFormat:@"<%@: %p ID: %@; versionID: %@> {\n\t%@ / subtype = %ld\n\tPublisher Bulletin ID: %@\n\tCategory ID: %@\n\tThread ID: %@\n\tPeople IDs: %@\n\tCommunication Context: %@\n\tRecord ID: %@\n\tIntent IDs: %@\n\tContent: %@\n\tDate: %@\n\tSound: %@\n\tInterruption Level: %lu\n\t Relevance Score: %.2f\n\t Filter Criteria: %@", v29, self, v37, v36, v35, v27, v34, v33, v32, v31, v8, v9, v10, v11, v12, v13, v14, *&v16, v17];;

  if (a3)
  {
    v19 = v28;
  }

  else
  {

    if (!v26)
    {
    }

    v10 = v28;
    v9 = v31;
    v19 = v32;
  }

  v20 = [(BBBulletin *)self subsectionIDs];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [(BBBulletin *)self subsectionIDs];
    v23 = [v18 stringByAppendingFormat:@"\n\tSubsections: %@", v22];

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
  v3 = [objc_opt_class() _lifeAssertionAssociationSet];
  objc_sync_enter(v3);
  v4 = [v3 associatedObjectsForObject:self];
  objc_sync_exit(v3);

  v5 = [v4 allObjects];

  return v5;
}

- (void)addLifeAssertion:(id)a3
{
  v5 = a3;
  v4 = [objc_opt_class() _lifeAssertionAssociationSet];
  objc_sync_enter(v4);
  [v4 associateObject:v5 withObject:self];
  objc_sync_exit(v4);
}

uint64_t __51__BBBulletin_Associations___observerAssociationSet__block_invoke()
{
  _observerAssociationSet___observerAssociationSet = +[BBAssociationSet setWithWeakAssociation];

  return MEMORY[0x2821F96F8]();
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = [objc_opt_class() _observerAssociationSet];
  objc_sync_enter(v4);
  [v4 associateObject:v5 withObject:self];
  objc_sync_exit(v4);
}

- (void)copyAssociationsForBulletin:(id)a3
{
  v8 = a3;
  v4 = [objc_opt_class() _lifeAssertionAssociationSet];
  v5 = [objc_opt_class() _observerAssociationSet];
  v6 = v4;
  objc_sync_enter(v6);
  [v6 copyAssociationsForObject:v8 toObject:self];
  objc_sync_exit(v6);

  v7 = v5;
  objc_sync_enter(v7);
  [v7 copyAssociationsForObject:v8 toObject:self];
  objc_sync_exit(v7);
}

- (BOOL)showsSubtitle
{
  v2 = [(BBBulletin *)self _sectionParameters];
  v3 = [v2 showsSubtitle];

  return v3;
}

- (BOOL)usesVariableLayout
{
  v2 = [(BBBulletin *)self _sectionParameters];
  v3 = [v2 usesVariableLayout];

  return v3;
}

- (BOOL)orderSectionUsingRecencyDate
{
  v2 = [(BBBulletin *)self _sectionParameters];
  v3 = [v2 orderSectionUsingRecencyDate];

  return v3;
}

- (BOOL)showsDateInFloatingLockScreenAlert
{
  v2 = [(BBBulletin *)self _sectionParameters];
  v3 = [v2 showsDateInFloatingLockScreenAlert];

  return v3;
}

- (NSString)topic
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 topic];

  return v3;
}

- (NSString)missedBannerDescriptionFormat
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 missedBannerDescriptionFormat];

  return v3;
}

- (NSSet)alertSuppressionAppIDs
{
  if ([(BBBulletin *)self suppressesAlertsWhenAppIsActive])
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [(BBBulletin *)self sectionID];
    v5 = [v3 setWithObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)preservesUnlockActionCase
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 preservesUnlockActionCase];

  return v3;
}

- (BOOL)visuallyIndicatesWhenDateIsInFuture
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 visuallyIndicatesWhenDateIsInFuture];

  return v3;
}

- (BOOL)suppressesTitle
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 suppressesTitle];

  return v3;
}

- (BOOL)showsUnreadIndicatorForNoticesFeed
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 showsUnreadIndicatorForNoticesFeed];

  return v3;
}

- (BOOL)showsContactPhoto
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 showsContactPhoto];

  return v3;
}

- (BOOL)playsSoundForModify
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 playsSoundForModify];

  return v3;
}

- (unint64_t)subtypePriority
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 subtypePriority];

  return v3;
}

- (int64_t)iPodOutAlertType
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 iPodOutAlertType];

  return v3;
}

- (NSString)bannerAccessoryRemoteViewControllerClassName
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 bannerAccessoryRemoteViewControllerClassName];

  return v3;
}

- (NSString)bannerAccessoryRemoteServiceBundleIdentifier
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 bannerAccessoryRemoteServiceBundleIdentifier];

  return v3;
}

- (NSString)secondaryContentRemoteViewControllerClassName
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 secondaryContentRemoteViewControllerClassName];

  return v3;
}

- (NSString)secondaryContentRemoteServiceBundleIdentifier
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 secondaryContentRemoteServiceBundleIdentifier];

  return v3;
}

- (BOOL)allowsAddingToLockScreenWhenUnlocked
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 allowsAddingToLockScreenWhenUnlocked];

  return v3;
}

- (BOOL)suppressDelayForForwardedBulletins
{
  v2 = [(BBBulletin *)self _sectionSubtypeParameters];
  v3 = [v2 suppressDelayForForwardedBulletins];

  return v3;
}

- (id)syncHash
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(BBBulletin *)self title];
  if (v4)
  {
    [v3 appendString:v4];
  }

  v5 = [(BBBulletin *)self subtitle];
  if (v5)
  {
    [v3 appendString:v5];
  }

  v6 = [(BBBulletin *)self message];
  if (v6)
  {
    [v3 appendString:v6];
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