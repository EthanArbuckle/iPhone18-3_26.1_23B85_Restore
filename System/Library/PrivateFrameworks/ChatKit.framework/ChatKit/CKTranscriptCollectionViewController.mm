@interface CKTranscriptCollectionViewController
+ (CGSize)defaultCollectionViewSize;
+ (id)initialTextEffectsState;
+ (id)logHandle;
+ (id)newTranscriptTextEffectCoordinatorForTranscriptCollectionViewController:(id)controller isInline:(BOOL)inline;
+ (id)offrampLearnMoreURL;
- (BOOL)_allowsEffectAutoPlayback;
- (BOOL)_canUseOpaqueMask;
- (BOOL)_isHistoryLoadingNeededForDirection:(int64_t)direction withTargetContentOffset:(CGPoint)offset forKeyboardNavigation:(BOOL)navigation;
- (BOOL)_isRecognizerScrubbingOnCurrentAudioMessageBalloon:(id)balloon;
- (BOOL)_pluginChatItem:(id)item hasControllerConformingToProtocol:(id)protocol;
- (BOOL)_selectedChatItemsHaveMultipleSenders:(id)senders;
- (BOOL)_textMessagePartItemHasValidLayout:(id)layout textBalloonView:(id)view;
- (BOOL)balloonTextViewIsSelected;
- (BOOL)canRaiseToListen;
- (BOOL)canRaiseToTalk;
- (BOOL)canStartNewTextAnimationsInTextEffectCoordinator:(id)coordinator;
- (BOOL)collectionView:(id)view shouldAllowSwipeForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionViewLayout:(id)layout hasPlayingOrPausedTextEffectForChatItem:(id)item indexPath:(id)path;
- (BOOL)hasRecentTouchForSendingPlugin:(id)plugin;
- (BOOL)isContentOffsetAtCurrentTime:(CGPoint)time;
- (BOOL)isContentOffsetBelowFutureMessages:(CGPoint)messages;
- (BOOL)isContentOffsetBelowTopOfLastMessage:(CGPoint)message;
- (BOOL)isContentOffsetDocked:(CGPoint)docked;
- (BOOL)isLoadMoreSpinnerAboutToBeVisibleForDirection:(int64_t)direction withTargetContentOffset:(CGPoint)offset;
- (BOOL)isLoadMoreSpinnerVisibleForDirection:(int64_t)direction;
- (BOOL)isReportingEnabled;
- (BOOL)isShowingTranscriptTimestamps;
- (BOOL)isTextEffectCoordinatorPaused;
- (BOOL)isVisiblePlugin:(id)plugin;
- (BOOL)pointIntersectsRepositionEnabledSticker:(CGPoint)sticker chatItem:(id)item;
- (BOOL)scrollToTopOfLastBubbleCellWithAnimationProperties:(id)properties;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (BOOL)shouldFreezeReplyDecorationsForCell:(id)cell;
- (BOOL)shouldPresentHawkingPromptForChatItem:(id)item;
- (BOOL)textEffectCoordinator:(id)coordinator textViewIdentifierIsCandidateForTextEffectPlayback:(id)playback;
- (BOOL)textEffectIsCandidateBalloonViewChecksForChatItem:(id)item;
- (BOOL)textEffectIsCandidateBalloonViewChecksForChatItem:(id)item balloonView:(id)view;
- (CGPoint)peekSampleTranslation;
- (CGPoint)topScrollPositionForIndexPath:(id)path;
- (CGRect)collectionViewAdjustedContentFrameWithKeyboard:(UIEdgeInsets)keyboard;
- (CGRect)convertedBoundsToCullFromView:(id)view;
- (CGSize)collectionViewSize;
- (CKBalloonEmphasisManager)balloonEmphasisManager;
- (CKFullScreenEffectManager)fullscreenEffectManager;
- (CKTranscriptCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets;
- (CKTranscriptCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets;
- (CKTranscriptCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets collectionViewSize:(CGSize)size;
- (CKTranscriptCollectionViewControllerDelegate)delegate;
- (IMChat)chat;
- (NSArray)associatedChatItems;
- (NSArray)chatItems;
- (NSDictionary)pluginSnapshots;
- (NSMutableArray)generativeContextHistory;
- (NSMutableArray)stickerGUIDsHiddenDuringStickerAddAnimation;
- (NSMutableSet)currentEffectDecorationViews;
- (NSString)transcriptIdentifier;
- (UIDragInteractionDelegate)dragInteractionDelegate;
- (UIEdgeInsets)_computedContentInsets;
- (UIEdgeInsets)marginInsets;
- (_NSRange)_loggingRangeForLatestChatItems:(id)items;
- (_NSRange)_loggingRangeForUpdates:(id)updates chatItemsCount:(int64_t)count;
- (double)_balloonHorizontalOffsetForParentChatItem:(id)item contentAlignmentRect:(CGRect)rect responsibleChatItems:(id *)items individualOffsets:(id *)offsets;
- (double)_fullMaxWidth;
- (double)_platformSpecificBottomContentOffset;
- (id)_buildRetryAlertWithMessage:(id)message sourceView:(id)view tryAgainAction:(id)action;
- (id)_buildStopSharingAlertWithMessage:(id)message sourceView:(id)view stopSharingAction:(id)action;
- (id)_chatItemForGUID:(id)d;
- (id)_chatItemLogSummaryForChatItems:(id)items withIndex:(int64_t)index;
- (id)_chatItemLogSummaryForChatItems:(id)items withUpdates:(id)updates;
- (id)_ckChatItemWithGUID:(id)d inSection:(unint64_t)section;
- (id)_collectionView:(id)view accessoriesForContextMenuWithConfiguration:(id)configuration layoutAnchor:(id *)anchor;
- (id)_collectionView:(id)view styleForContextMenuWithConfiguration:(id)configuration;
- (id)_currentTopChatItemForAggregateChatItem:(id)item;
- (id)_findUniqueIDForSCUIAnalyticsFromChatItem:(id)item;
- (id)_indexPathForTransfer:(id)transfer;
- (id)_indexPathOfCellContainingStampButton:(id)button;
- (id)_insertChatItemsInto:(id)into withIMChatItems:(id)items inserted:(id)inserted insertedUnreadMessage:(id *)message insertedLocalUnsentChatItem:(id *)item;
- (id)_itemGUIDsForItems:(id)items inIMChatItem:(id)item;
- (id)_itemProviderForSelectedChatItemsWithMultipleSenders:(id)senders;
- (id)_itemProviderForSelectedChatItemsWithSingleSender:(id)sender;
- (id)_latestChatItemsLogSummaryForChatItems:(id)items;
- (id)_mediaObjectsForOrganicChatItem:(id)item onIndexPath:(id)path;
- (id)_nextChatItemOfType:(Class)type afterIndex:(int64_t)index inChatItems:(id)items;
- (id)_previousChatItemOfType:(Class)type beforeIndex:(int64_t)index inChatItems:(id)items;
- (id)_sanitizeInsertedIndices:(id)indices inChatItems:(id)items withIMChatItems:(id)chatItems;
- (id)associatedChatItemForGUID:(id)d;
- (id)audioMessageMediaObjectsFromBalloonView:(id)view;
- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category;
- (id)balloonPluginForViewController:(id)controller;
- (id)balloonViewAtIndexPath:(id)path;
- (id)balloonViewForChatItem:(id)item;
- (id)balloonViewForChatItemGUID:(id)d getChatItem:(id *)item;
- (id)cellForAssociatedChatItem:(id)item;
- (id)cellForChatItem:(id)item;
- (id)chatItemAtIndexPath:(id)path;
- (id)chatItemForCell:(id)cell;
- (id)chatItemForGUID:(id)d;
- (id)collectionView:(id)view cellForCKChatItem:(id)item atIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view layout:(id)layout chatItemForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view layout:(id)layout chatItemForSupplementaryViewAtIndexPath:(id)path;
- (id)collectionViewLayout;
- (id)compositorDatasourceItemsForSection:(int64_t)section;
- (id)currentEffectForCollectionView:(id)view layout:(id)layout;
- (id)dataSourceWithCollectionView:(id)view;
- (id)generateConversationFooterActions:(id)actions;
- (id)generateSnapshotForCKChatItems:(id)items;
- (id)groupTypingIndicatorChatItem;
- (id)hawkingFailurePromptMessageForHandle:(id)handle;
- (id)imChatItems;
- (id)indexPathForBalloonView:(id)view;
- (id)indexPathForChatItemGUID:(id)d useAssociatedSection:(BOOL)section;
- (id)indexPathForLastItem;
- (id)indexPathForLastMessagePart;
- (id)indexPathForMessageGUID:(id)d messagePartIndex:(int64_t)index useAssociatedSection:(BOOL)section;
- (id)indexPathOfLastBubble;
- (id)indexPathOfParentChatItemForIndexPath:(id)path;
- (id)lastMessagePartChatItem;
- (id)latestScheduledMessageIndexPath;
- (id)layoutGroupForDatasourceItems:(id)items environment:(id)environment layoutItems:(id)layoutItems;
- (id)loadMoreItemIndexPathForDirection:(int64_t)direction;
- (id)logHandle;
- (id)makeHawkingPromptForMessage:(id)message toRecipient:(id)recipient fromSender:(id)sender withSMSOption:(BOOL)option;
- (id)mediaObjectsForCommSafetyReport:(id)report;
- (id)menuConfigurationForTranslationIndicatorCell:(id)cell;
- (id)messagePartForBalloonView:(id)view;
- (id)newChatItemWithIMChatItem:(id)item traitCollection:(id)collection transcriptBackgroundLuminance:(double)luminance;
- (id)newChatItemWithNotification:(id)notification;
- (id)newChatItemsWithIMChatItems:(id)items;
- (id)newChatItemsWithNotifications:(id)notifications;
- (id)printableViewController;
- (id)selectedChatItems;
- (id)selectedItems;
- (id)selectedMediaObjectForCommSafetyReport:(id)report;
- (id)sharingMenu;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)textEffectCoordinator:(id)coordinator explodeConfigurationForTextViewIdentifier:(id)identifier;
- (id)textEffectCoordinator:(id)coordinator highPriorityTextViewIdentifiersForUnplayedVisibleTextViewIdentifiers:(id)identifiers;
- (id)textEffectCoordinator:(id)coordinator textViewForTextViewIdentifier:(id)identifier;
- (id)toggleTimeStampAction;
- (id)toggleTimeStampOnlyContextMenuConfiguration;
- (id)transcriptBalloonCell:(id)cell customTextRenderingDisplayLinkForTextBalloonViewTextView:(id)view;
- (id)transcriptBalloonCell:(id)cell layoutAttributesForTextBalloonView:(id)view messageDisplayViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame proposedAttributes:(id)attributes;
- (id)transcriptCollectionView:(id)view preferredIndexPathForAssociatedItemAtPoint:(CGPoint)point;
- (id)visibleTextViewIdentifiersFor:(id)for;
- (int64_t)_computeDesiredScrollIntentForInsertedChatItems:(id)items insertedUnreadChatItem:(id)item insertedLocalUnsentChatItem:(id)chatItem;
- (int64_t)_moreHelpMenuOptions:(BOOL)options;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)desiredTranscriptScrollIntentForContentOffset:(CGPoint)offset;
- (int64_t)desiredTranscriptScrollIntentForCurrentContentOffset;
- (unint64_t)_indexOfBreadcrumbReplacingTranscriptPluginInChatItems:(id)items inserted:(id)inserted removed:(id)removed outIndexOfReplacedPlugin:(unint64_t *)plugin outIndexOfNewPlugin:(unint64_t *)newPlugin;
- (unint64_t)dateCellRequestedScheduledMessageCount:(id)count;
- (unint64_t)transcriptBalloonCell:(id)cell allowedLayoutActionForTextBalloonView:(id)view;
- (void)__configureVisibleMessagesCellsIncludingAssociatedCells:(BOOL)cells;
- (void)__raiseGestureRecognized:(id)recognized;
- (void)__updateCollectionViewLayout;
- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)notification;
- (void)_addAttachmentsToProvidersArray:(id)array forChatItems:(id)items;
- (void)_addChatItemsToGenerativeContextHistory:(id)history;
- (void)_addChatItemsToInputContextHistory:(id)history signalingResponseContextChangeIfNeeded:(BOOL)needed;
- (void)_animateAssociatedChatItemWithIndices:(id)indices;
- (void)_animateAvatarFromGroupTypingIndicatorToIncomingCell:(id)cell;
- (void)_animateChatItemInsertion:(id)insertion inserted:(id)inserted wantsScrollToBottom:(BOOL)bottom scrollToBottomDuration:(double *)duration;
- (void)_animateChatItemReload:(id)reload reload:(id)a4 associatedInserted:(id)inserted animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)_animateChatItemRemoval:(id)removal removed:(id)removed;
- (void)_animateStickerRepositionWithAssociatedChatItem:(id)item associatedCell:(id)cell associatedIndexPath:(id)path;
- (void)_collectionViewDidRestAsync:(BOOL)async;
- (void)_configureEditMarginInsetsForCell:(id)cell;
- (void)_configureScheduledDateCell:(id)cell forItemAtIndexPath:(id)path;
- (void)_conversationListFinishedMerging:(id)merging;
- (void)_createGenerativeContextHistory;
- (void)_deferredStartPlayback;
- (void)_deselectChatItemGuid:(id)guid;
- (void)_diffAssociatedItemsWithOldAssociatedItems:(id)items removedAssociatedIndexes:(id *)indexes insertedAssociatedIndexes:(id *)associatedIndexes;
- (void)_downgradeMessage:(id)message andDowngradeChat:(BOOL)chat;
- (void)_enumerateMediaObjectsForReportUsingBlock:(id)block;
- (void)_forceReloadChatItems;
- (void)_handleAssociatedMessageCellTapEvent:(id)event isDoubleTap:(BOOL)tap;
- (void)_handleAudioBalloonPreviewSuppressionStateForUntrustedSenders:(id)senders;
- (void)_handleAudioBalloonTapForIndexPath:(id)path;
- (void)_handleCommSafetyMessageSomeoneStatusButtonTappedForIndexPath:(id)path;
- (void)_handleCommSafetySensitiveReceiveStatusButtonTappedForIndexPath:(id)path;
- (void)_handleEditHistoryButtonTappedForIndexPath:(id)path;
- (void)_handleFailedCancelStatusButtonTappedForIndexPath:(id)path;
- (void)_handleFailedEditStatusButtonTappedForIndexPath:(id)path;
- (void)_handlePluginBreadcrumbingInChatItems:(id)items withIMChatItems:(id)chatItems inserted:(id)inserted removed:(id)removed completion:(id)completion;
- (void)_handlePollsAddChoiceButtonTappedForIndexPath:(id)path;
- (void)_handleScrollViewAtRestAfterMidScrollPagingEnablementChange;
- (void)_handleSendFullQualityButtonTappedForIndexPath:(id)path;
- (void)_handleSendViaSatelliteButtonTappedForIndexPath:(id)path;
- (void)_handleTapOnGroupActionChatItem:(id)item fromSender:(id)sender;
- (void)_handleTapOnGroupTitleChangeChatItem:(id)item;
- (void)_handleTapOnMessageRetractionChatItem:(id)item;
- (void)_handleTapOnParticipantChangeChatItem:(id)item;
- (void)_hideBalloonViewIfNecessaryForCell:(id)cell indexPath:(id)path;
- (void)_highlightCell:(id)cell animated:(BOOL)animated autoDismiss:(BOOL)dismiss;
- (void)_identifyIndicesNeedingCustomAnimationsForIMChatItems:(id)items inserted:(id)inserted removed:(id)removed;
- (void)_indicesOfReplyChatItemsToInsertWithoutFading:(id)fading inserted:(id)inserted outInsertIndices:(id *)indices;
- (void)_indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading:(id)fading inserted:(id)inserted removed:(id)removed outInsertIndices:(id *)indices outRemoveIndices:(id *)removeIndices;
- (void)_invalidateChatItemLayoutIfNeeded;
- (void)_loadMessagesIfNeededWithTargetContentOffset:(CGPoint)offset forKeyboardNavigation:(BOOL)navigation;
- (void)_logVisibleChatItems;
- (void)_messageParents;
- (void)_prepareTextEffectCoordinatorForCell:(id)cell forItem:(id)item atIndexPath:(id)path;
- (void)_presentCancelledScheduledMessageConfirmationAlertForMessage:(id)message;
- (void)_presentEditedMessageResendConfirmationAlertForMessage:(id)message;
- (void)_presentEditedScheduledMessageResendConfirmationAlertForMessage:(id)message;
- (void)_presentMessageCanNoLongerBeEditedAlert;
- (void)_presentMessageCanNoLongerBeRetractedAlert;
- (void)_presentOfframpDetonationAlert;
- (void)_presentRetractedMessageResendConfirmationAlertForIMChatItem:(id)item;
- (void)_prewarmBalloonControllers;
- (void)_prewarmChatBotAssets;
- (void)_prewarmLinkPresentations;
- (void)_prewarmLinkPresentationsWithChatItems:(id)items;
- (void)_prewarmMediaPreviews;
- (void)_prewarmTranscriptAssetsIfNecessary;
- (void)_quickActionPinButtonWasTapped:(id)tapped atIndexPath:(id)path chatItem:(id)item;
- (void)_quickActionSaveButtonWasTapped:(id)tapped atIndexPath:(id)path chatItem:(id)item;
- (void)_reattemptMessageCancellationForChatItem:(id)item;
- (void)_refreshLocationsForRecipientsIfNecessary;
- (void)_regenerateChatItemsIn:(id)in withIMChatItems:(id)items regenerate:(id)regenerate shouldShowBlackholeAlert:(BOOL *)alert;
- (void)_releaseActiveBalloonControllers;
- (void)_reloadChatItemAtIndexPath:(id)path;
- (void)_removeChatItemsFrom:(id)from removed:(id)removed;
- (void)_removeHighlightFromCell:(id)cell animated:(BOOL)animated;
- (void)_replayLastImpactEffectIfNotFromMe;
- (void)_reportJunkAlertControllerTitle:(id *)title message:(id *)message;
- (void)_requestChatItemLayoutInvalidation;
- (void)_resendEditedMessageForChatItem:(id)item;
- (void)_resendEditedScheduledMessageForChatItem:(id)item;
- (void)_resendFailedMessages;
- (void)_resendFailedPollVote:(id)vote forMessage:(id)message;
- (void)_resendMessage:(id)message;
- (void)_resendMessageRetractionForChatItem:(id)item;
- (void)_resizingEnd:(id)end;
- (void)_resizingStart:(id)start;
- (void)_saveMediaObjects:(id)objects withMomentShareURL:(id)l sender:(id)sender;
- (void)_searchForSelectedBalloonHack;
- (void)_selectChatItemGuid:(id)guid selectionState:(id)state;
- (void)_setHoldingWhilePresentingKeyboardForChatItem:(BOOL)item;
- (void)_showAutoDonationAlert:(id)alert forAppName:(id)name bundleID:(id)d;
- (void)_showBlockContactSelectionAlertFromView:(id)view;
- (void)_showLeaveConversationFromView:(id)view;
- (void)_showMoreHelp;
- (void)_startPlaybackWithIndexPaths:(id)paths;
- (void)_tearDownLiveBubbles;
- (void)_textMessagePartItem:(id)item textBalloonView:(id)view getHasValidOrigin:(BOOL *)origin getHasValidSize:(BOOL *)size;
- (void)_trackPhotoStackEvent:(id)event forStackBalloonView:(id)view transcriptOrientation:(char)orientation;
- (void)_updateAudioControllerForInserted:(id)inserted chatItems:(id)items;
- (void)_updateCollectionViewForChatItems:(id)items oldChatItems:(id)chatItems inserted:(id)inserted removed:(id)removed associatedInserted:(id *)associatedInserted associatedRemoved:(id *)associatedRemoved animationDuration:(double)duration animationCurve:(int64_t)self0 completion:(id)self1;
- (void)_updateCollectionViewSnapshotForChatItems:(id)items reloadingItemGUIDs:(id)ds animatingDifferences:(BOOL)differences associatedInserted:(id *)inserted associatedRemoved:(id *)removed completion:(id)completion;
- (void)_updateCommSafetySensitivityForContentAtIndexPath:(id)path shouldTargetAssociatedMessages:(BOOL)messages;
- (void)_updateEffectViewMessageRect:(id)rect effect:(id)effect;
- (void)_updateLayoutAndConfigureVisibleCells;
- (void)_updatePluginPlaybackManagerForInsertedChatItems:(id)items;
- (void)_updateSnapshotWithoutAnimation:(id)animation reloadingItemGUIDs:(id)ds completion:(id)completion;
- (void)_updateTranscriptChatItems:(id)items inserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate animated:(BOOL)animated completion:(id)completion;
- (void)_updateTranscriptChatItemsWithAnimation:(id)animation withIMChatItems:(id)items oldChatItems:(id)chatItems insertedChatItems:(id)insertedChatItems inserted:(id)inserted removed:(id)removed reload:(id)reload reloadItemGUIDs:(id)self0 desiredScrollIntent:(int64_t)self1 scrollToBottomDuration:(double *)self2 animationCurve:(int64_t)self3 completion:(id)self4;
- (void)_updateTranscriptChatItemsWithoutAnimation:(id)animation;
- (void)_updateTranscriptScrollIntentForContentOffset:(CGPoint)offset reason:(id)reason;
- (void)_updateTranscriptScrollIntentToBottomOrHistoryOrDockedBasedOnCurrentContentOffset;
- (void)_updatedMessageTintColor:(id)color;
- (void)addContentAnimationPauseReasons:(int64_t)reasons;
- (void)addressBookChanged:(id)changed;
- (void)adjustTargetContentOffsetToCurrentTimeIfNeeded:(CGPoint *)needed;
- (void)audioBalloonDidResize:(id)resize isExpanded:(BOOL)expanded;
- (void)audioBalloonScrubberDidChangeValue:(double)value;
- (void)audioBalloonScrubberWithRecognizer:(id)recognizer didChangeValue:(double)value;
- (void)audioController:(id)controller mediaObjectDidFinishPlaying:(id)playing;
- (void)audioController:(id)controller updateAudioBalloonsForTime:(double)time mediaObject:(id)object;
- (void)audioControllerDidPause:(id)pause;
- (void)audioControllerDidStop:(id)stop;
- (void)audioControllerPlayingDidChange:(id)change;
- (void)balloonView:(id)view carouselScrolledToIndex:(int64_t)index;
- (void)balloonView:(id)view mediaObjectDidFinishPlaying:(id)playing;
- (void)balloonView:(id)view selectedChipAction:(id)action;
- (void)balloonView:(id)view selectedSuggestedReply:(id)reply messageGUID:(id)d;
- (void)balloonView:(id)view userDidDragOutsideBalloonWithPoint:(CGPoint)point;
- (void)balloonView:(id)view willInsertPluginViewAsSubview:(id)subview;
- (void)balloonViewDidStopTextSelection:(id)selection;
- (void)balloonViewDoubleTapped:(id)tapped;
- (void)balloonViewLongTouched:(id)touched;
- (void)balloonViewSelected:(id)selected withModifierFlags:(int64_t)flags selectedText:(id)text;
- (void)balloonViewShowInlineReply:(id)reply;
- (void)balloonViewTapped:(id)tapped withModifierFlags:(int64_t)flags selectedText:(id)text;
- (void)balloonViewTextViewDidChangeSelection:(id)selection selectedText:(id)text textView:(id)view;
- (void)balloonViewTitleTapped:(id)tapped;
- (void)balloonViewWillDismissEditMenu:(id)menu;
- (void)beginEmphasisWithMessageGUID:(id)d;
- (void)beginHidingStickerWithGUIDDuringAddStickerAnimation:(id)animation;
- (void)beginPresentingChatItemForKeyboardPresentation:(id)presentation layoutAreaContentInsets:(UIEdgeInsets)insets completion:(id)completion;
- (void)chatItemControllerDidChangeAssociatedChatItemsWithChatItemDiff:(id)diff;
- (void)chatItemControllerDidInsertAssociatedChatItems;
- (void)chatItemControllerDidSetChatItems;
- (void)chatItemsDidChange:(id)change;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didRecognizePanGestureWithPoint:(CGPoint)point;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionViewDidInset:(id)inset;
- (void)collectionViewLayout:(id)layout sizeDidChange:(CGSize)change;
- (void)collectionViewLayoutRestingDidChange:(id)change;
- (void)collectionViewWillInset:(id)inset targetContentInset:(UIEdgeInsets *)contentInset;
- (void)collectionViewWillProgrammaticallyScroll:(id)scroll animated:(BOOL)animated;
- (void)collectionViewWillScroll:(id)scroll targetContentOffset:(CGPoint *)offset;
- (void)configureAssociatedCell:(id)cell forChatItem:(id)item atIndexPath:(id)path;
- (void)configureCell:(id)cell forCKChatItem:(id)item atIndexPath:(id)path animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)configurePluginChatItemForChatItemControllerWithChatItem:(id)item;
- (void)configureSpeakerButtonCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureTranscriptCell:(id)cell hidden:(BOOL)hidden;
- (void)connectivityChanged:(id)changed;
- (void)copyChatItemsToPasteboard:(id)pasteboard;
- (void)copySelectedChatItemsToPasteboard;
- (void)cullCellSubviews;
- (void)dateCellRequestedDeleteAllMessages:(id)messages;
- (void)dateCellRequestedScheduledMessageModification:(id)modification scheduleType:(unint64_t)type deliveryTime:(id)time;
- (void)dealloc;
- (void)deleteChatItems:(id)items sender:(id)sender;
- (void)deleteConversationPressedInTranscriptCell:(id)cell;
- (void)deleteSelectedChatItems:(id)items;
- (void)deselectAllBalloons;
- (void)didAskForMoreHelp:(id)help;
- (void)didBlockContact:(id)contact;
- (void)didBlockContacts:(id)contacts;
- (void)didConfirmForInterventionViewController:(id)controller;
- (void)didLeaveConversation:(id)conversation;
- (void)didPinchPhotoStackCell:(id)cell;
- (void)didShowContent:(id)content;
- (void)didTapBlockContactInBalloonView:(id)view;
- (void)didTapChipListFromNotificationExtensionWithBalloonView:(id)view;
- (void)didTapCommSafetyAttributionItemWithIndexPath:(id)path sender:(id)sender;
- (void)didTapPendingMomentSharePhotoStackBalloonView:(id)view;
- (void)didTapTranscriptActionButtonCell:(id)cell;
- (void)didTapTruncatedCaptionForRichCard:(id)card onBalloonView:(id)view;
- (void)didTapUnavailableMomentShareBalloonView:(id)view;
- (void)didTapWaysToGetHelp;
- (void)effectManager:(id)manager didStartEffect:(id)effect;
- (void)effectManager:(id)manager didStopEffect:(id)effect;
- (void)endHidingStickerWithGUIDDuringAddStickerAnimation:(id)animation;
- (void)endHoldingUpdatesAfterQuicklookCancelsDismiss;
- (void)endPresentingChatItemForKeyboardPresentation:(id)presentation completion:(id)completion;
- (void)enforceTranscriptScrollIntentWithAnimationProperties:(id)properties;
- (void)evidenceToReportWithContext:(id)context balloonView:(id)view completionHandler:(id)handler;
- (void)evidenceToReportWithContext:(id)context completionHandler:(id)handler;
- (void)evidenceToReportWithIndexPath:(id)path completionHandler:(id)handler;
- (void)fetchEarlierMessagesForConversation:(id)conversation;
- (void)fetchRecentMessagesForConversation:(id)conversation;
- (void)freezeReplyDecorationsIfNeededForCell:(id)cell;
- (void)hideTranscriptTimestampsIfNeeded;
- (void)highlightItemAtIndexPathWhenDisplayed:(id)displayed animated:(BOOL)animated autoDismiss:(BOOL)dismiss;
- (void)initiateSmartEmojiResponsesUpdateWithChatItems:(id)items;
- (void)installedAppsChanged:(id)changed;
- (void)interactionStartedFromPreviewItemControllerInBalloonView:(id)view;
- (void)interactionStartedWithPluginBalloonView:(id)view;
- (void)interactionStoppedFromPreviewItemControllerInBalloonView:(id)view;
- (void)invalidateChatItemLayoutWithNewBalloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets traitCollection:(id)collection transcriptBackgroundLuminance:(double)luminance;
- (void)keyTransparencyConversationViewControllerDidComplete:(id)complete;
- (void)keyTransparencyTranscriptCellDidRequestVerification:(id)verification;
- (void)keyTransparencyTranscriptCellDidSelectIgnoreFailures:(id)failures;
- (void)launchReaderViewForBalloonView:(id)view;
- (void)liveBalloonTouched:(id)touched;
- (void)liveViewController:(id)controller requestPresentationStyle:(unint64_t)style;
- (void)liveViewController:(id)controller sendCustomAcknowledgementPayload:(id)payload completionHandler:(id)handler;
- (void)liveViewController:(id)controller stagePayload:(id)payload skipShelf:(BOOL)shelf allowAllCommits:(BOOL)commits completionHandler:(id)handler;
- (void)liveViewController:(id)controller stageSticker:(id)sticker skipShelf:(BOOL)shelf allowAllCommits:(BOOL)commits completionHandler:(id)handler;
- (void)liveViewControllerDidUpdateMessageTintColor:(id)color;
- (void)loadEarlierMessages;
- (void)loadEarlierMessagesForConversation;
- (void)loadMessagesIfNeededSkipValidation;
- (void)loadRecentMessages;
- (void)loadRecentMessagesForConversation;
- (void)loadView;
- (void)locationShareBalloonViewIgnoreButtonTapped:(id)tapped;
- (void)locationShareBalloonViewShareButtonTapped:(id)tapped;
- (void)locationSharingClient:(id)client showShareLocationMenuWithBalloonPluginView:(id)view;
- (void)locationStringDidChange:(id)change;
- (void)makeTranslatedComposition:(id)composition from:(id)from to:(id)to completion:(id)completion;
- (void)multiwayCallStateChanged:(id)changed;
- (void)parentControllerDidBecomeActive;
- (void)performResumeDeferredSetup;
- (void)photoStackBalloonView:(id)view didChangeCurrentAssetReference:(id)reference isProgrammaticChange:(BOOL)change didChangeIndex:(BOOL)index;
- (void)photoStackBalloonView:(id)view photoStack:(id)stack didSelectAssetReference:(id)reference;
- (void)photoStackBalloonView:(id)view photoStackDidSelectAdditionalItems:(id)items;
- (void)playEffectsIfNecessaryWithInsertedUnreadMessage:(id)message insertedLocalUnsentChatItem:(id)item;
- (void)playFullscreenEffectIfNecessaryAutoplayingOutgoingEffect:(BOOL)effect autoplayingIncomingEffect:(BOOL)incomingEffect insertedUnreadMessage:(id)message insertedLocalUnsentChatItem:(id)item;
- (void)playImpactEffectIfNecessaryAutoplayingOutgoingEffect:(BOOL)effect autoplayingIncomingEffect:(BOOL)incomingEffect impactEffectChatItem:(id)item;
- (void)playbackSpeedDidChangeForAudioMessageBalloonView:(id)view playbackSpeed:(double)speed;
- (void)pluginPlaybackManagerDidStopPlayback:(id)playback;
- (void)preheatTranslator;
- (void)prepareForSuspend;
- (void)prepareTextEffectsForModalPresentation;
- (void)presentHawkingPromptForChatItem:(id)item;
- (void)presentMoreHelpMenu;
- (void)presentUserInterventionScreenForIndexPath:(id)path shouldTargetAssociatedItems:(BOOL)items;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)previewDidChange:(id)change;
- (void)prewarmTapbackPickerImages;
- (void)printTranscript;
- (void)quickActionButtonWasTapped:(id)tapped;
- (void)raiseGestureRecognized:(id)recognized;
- (void)reconfigureVisibleSpeakerButtonCells;
- (void)recoverJunkPressedInTranscriptCell:(id)cell;
- (void)reloadChatItemsAtIndexes:(id)indexes animated:(BOOL)animated completion:(id)completion;
- (void)reloadData;
- (void)removeContentAnimationPauseReasons:(int64_t)reasons;
- (void)removeEmphasisFromCurrentMessageWithAnimation:(BOOL)animation;
- (void)reportJunkAlertControllerActionHandler;
- (void)repromptLastBlackholeFailureIfNotPrompted;
- (void)saveHyperlinkBalloonViewData:(id)data withHyperlink:(id)hyperlink;
- (void)scrollToBottomAnimated:(BOOL)animated withDuration:(double)duration animationCurve:(int64_t)curve insertedUnreadMessage:(id)message insertedLocalUnsentChatItem:(id)item withCompletion:(id)completion;
- (void)scrollToCurrentTimeAnimated:(BOOL)animated withDuration:(double)duration animationCurve:(int64_t)curve withCompletion:(id)completion;
- (void)scrollTranscriptToEntryViewInsertionTimeWithAnimation:(BOOL)animation;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)selectChatItem:(id)item;
- (void)selectRangeWithIndexPath:(id)path;
- (void)selectSingleBalloonView:(id)view;
- (void)selectionManager:(id)manager didAddChatItem:(id)item selectionState:(id)state;
- (void)selectionManager:(id)manager didRemoveChatItem:(id)item;
- (void)sendAnimationManagerDidStopAnimation:(id)animation context:(id)context;
- (void)sendAnimationManagerWillStartAnimation:(id)animation context:(id)context;
- (void)setAppIntentsDataSource;
- (void)setChatItemHidden:(BOOL)hidden forChatItemGUID:(id)d;
- (void)setChatItems:(id)items;
- (void)setChatItems:(id)items removedAssociatedIndexes:(id *)indexes insertedAssociatedIndexes:(id *)associatedIndexes;
- (void)setDockingEnabled:(BOOL)enabled;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHiddenAssociatedItems:(id)items;
- (void)setHiddenAssociatedItemsForMessageEditing:(id)editing;
- (void)setHiddenBalloonViews:(id)views;
- (void)setHiddenItems:(id)items;
- (void)setNeedsChatItemLayoutInvalidation;
- (void)setPoppedBalloonGUIDHiddenUntilNextChatItemUpdate:(id)update;
- (void)setScrollAnchor:(double)anchor;
- (void)setSelectedItems:(id)items;
- (void)setShouldUseOpaqueMask:(BOOL)mask;
- (void)setShowingTranslatedText:(BOOL)text;
- (void)setTextEffectCoordinatorPaused:(BOOL)paused reason:(id)reason;
- (void)setTranscriptBackgroundColor:(id)color;
- (void)setTranscriptBackgroundLuminance:(double)luminance;
- (void)setTransitionedFromComposing:(BOOL)composing;
- (void)setTransitioningFromComposing:(BOOL)composing;
- (void)showGridForChatItem:(id)item;
- (void)showTranscriptTimestamps;
- (void)sizeFullTranscriptIfNecessary;
- (void)snapshotDidChange:(id)change;
- (void)startDownloadFor:(NSArray *)for completionHandler:(id)handler;
- (void)startDownloadingTranslationAssetsForLanguageCodes:(NSArray *)codes completion:(id)completion;
- (void)startFullscreenEffectIfNeededForChatItem:(id)item;
- (void)startPluginPlaybackAfterDelay:(double)delay;
- (void)stopFullscreenEffect;
- (void)stopPlayingAudio;
- (void)stopPluginPlayback;
- (void)textEffectCoordinator:(id)coordinator didChangeStateOfAnimator:(id)animator textView:(id)view;
- (void)textEffectCoordinator:(id)coordinator willRequestAnimatorUsing:(id)using;
- (void)toggleTimeStamp;
- (void)touchUpInsideCellLeaveConversationButton:(id)button;
- (void)touchUpInsideCellReportSpamButton:(id)button;
- (void)touchUpInsideCellSpeakerButton:(id)button;
- (void)touchUpInsideCellStampButton:(id)button;
- (void)touchUpInsideCellStatusButton:(id)button;
- (void)touchUpInsideNotifyAnywayButton:(id)button;
- (void)touchUpInsideShowHideTranslationButton:(id)button;
- (void)touchUpInsideUnknownSenderButton:(id)button forChatItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
- (void)transcriptBalloonCell:(id)cell didChangeRenderBoundsOfTextBalloonView:(id)view;
- (void)transcriptBalloonCell:(id)cell didEndBalloonSwipeWithDelta:(double)delta swipeVelocity:(CGPoint)velocity;
- (void)transcriptBalloonCell:(id)cell didTranslateBalloonByDelta:(double)delta;
- (void)transcriptBalloonCell:(id)cell textBalloonView:(id)view didChangeTextEffectPlaybackCandidateStatus:(BOOL)status;
- (void)transcriptCollectionView:(id)view shouldScrollToHighlightedMessage:(id)message;
- (void)transcriptMessageCell:(id)cell didTapMessageDeliveryFailureButton:(id)button;
- (void)transferRestored:(id)restored;
- (void)transferUpdated:(id)updated;
- (void)translationIndicatorCell:(id)cell didChangeTranslationVisibility:(BOOL)visibility;
- (void)translationIndicatorCellDidSelectStopTranslation:(id)translation;
- (void)tuConversationBalloonJoinButtonTapped:(id)tapped;
- (void)unloadCachedSizeAndReloadChatItemAtIndexPath:(id)path;
- (void)unsubscribeAlertControllerActionHandler;
- (void)updateAnimationPaused;
- (void)updateAssociatedItem:(id)item hidden:(BOOL)hidden;
- (void)updateBalloonEmphasisIfNeededWithCell:(id)cell chatItem:(id)item;
- (void)updateDockingMetricsIfNeeded;
- (void)updateDockingStateIfNeeded;
- (void)updateEffectViewMessageRects;
- (void)updateEmphasis;
- (void)updateLastAddressedHandleID:(id)d lastAddressedSIMID:(id)iD;
- (void)updateScrollIntentWithTrigger:(id)trigger activeKeyboardAppearanceAnimationProperties:(id)properties;
- (void)updateTargetAlphaForVisibleChatItems;
- (void)updateTextEffectsState:(id)state;
- (void)updateTranscript:(id)transcript animated:(BOOL)animated completion:(id)completion;
- (void)updateTranscriptBackgroundLuminanceToMatchBackgroundColor;
- (void)updateTranscriptChatItems:(id)items inserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate animated:(BOOL)animated checkFiltered:(BOOL)filtered completion:(id)self0;
- (void)updateTranscriptChatItems:(id)items inserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate animated:(BOOL)animated completion:(id)completion;
- (void)updateTranscriptScrollIntentForSendAnimationContext:(id)context;
- (void)updateTranscriptScrollIntentForUserScrollToContentOffset:(CGPoint)offset;
- (void)updateTranscriptScrollIntentToBottomOrHistoryBasedOnCurrentContentOffset;
- (void)verticallyScrollTranscriptByAmount:(double)amount animated:(BOOL)animated duration:(double)duration completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKTranscriptCollectionViewController

- (NSArray)chatItems
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070] isConsolidatedChatItemsEnabled];

  if (!isConsolidatedChatItemsEnabled)
  {
    chatItems = self->_chatItems;
    goto LABEL_15;
  }

  if (([(CKTranscriptCollectionViewController *)self isViewLoaded]& 1) != 0)
  {
    if (self->_chatItemController)
    {
      chatItemController = [(CKTranscriptCollectionViewController *)self chatItemController];
      chatItems = [chatItemController chatItems];

      goto LABEL_15;
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_14;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v11 = 0;
    v8 = "Accessing [CKTranscriptCollectionViewController chatItems] with consolidated chat items enabled = YES but without actually having a chatItemController. This not supported and indicates a programmer error. Returning an empty array as a fallback.";
    v9 = &v11;
    goto LABEL_12;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_13:

      goto LABEL_14;
    }

    v12 = 0;
    v8 = "Accessing [CKTranscriptCollectionViewController chatItems] with consolidated chat items enabled = YES is not supported before the view is actually loaded. This is a programmer error. Returning an empty array as a fallback. Please check why you are accessing the chat items that early.";
    v9 = &v12;
LABEL_12:
    _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
    goto LABEL_13;
  }

LABEL_14:
  chatItems = MEMORY[0x1E695E0F0];
LABEL_15:

  return chatItems;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKTranscriptCollectionViewController;
  [(CKTranscriptCollectionViewController *)&v13 viewDidLayoutSubviews];
  view = [(CKTranscriptCollectionViewController *)self view];
  [view bounds];
  v5 = v4;
  [(CKTranscriptCollectionViewController *)self lastViewWidthUsedToLayoutChatItems];
  v7 = CKFloatApproximatelyEqualToFloatWithTolerance(v5, v6, 0.00000999999975);

  if (!v7)
  {
    [(CKTranscriptCollectionViewController *)self _requestChatItemLayoutInvalidation];
    view2 = [(CKTranscriptCollectionViewController *)self view];
    [view2 bounds];
    [(CKTranscriptCollectionViewController *)self setLastViewWidthUsedToLayoutChatItems:v9];
  }

  [(CKTranscriptCollectionViewController *)self updateEffectViewMessageRects];
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate2 viewDidLayoutSubviewsForTranscriptCollectionViewController:self];
  }
}

- (void)updateEffectViewMessageRects
{
  v27 = *MEMORY[0x1E69E9840];
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  currentEffect = [fullscreenEffectManager currentEffect];

  if (currentEffect)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    currentEffectDecorationViews = [(CKTranscriptCollectionViewController *)self currentEffectDecorationViews];
    v6 = [currentEffectDecorationViews countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(currentEffectDecorationViews);
          }

          effectView = [*(*(&v21 + 1) + 8 * v9) effectView];
          [(CKTranscriptCollectionViewController *)self _updateEffectViewMessageRect:effectView effect:currentEffect];

          ++v9;
        }

        while (v7 != v9);
        v7 = [currentEffectDecorationViews countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v12 = [delegate transcriptCollectionViewControllerAdditionalFullscreenEffectViews:self];

    v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(CKTranscriptCollectionViewController *)self _updateEffectViewMessageRect:*(*(&v17 + 1) + 8 * v16++) effect:currentEffect];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

- (CKTranscriptCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKFullScreenEffectManager)fullscreenEffectManager
{
  fullscreenEffectManager = self->_fullscreenEffectManager;
  if (!fullscreenEffectManager)
  {
    v4 = objc_alloc_init(CKFullScreenEffectManager);
    v5 = self->_fullscreenEffectManager;
    self->_fullscreenEffectManager = v4;

    [(CKFullScreenEffectManager *)self->_fullscreenEffectManager setDelegate:self];
    fullscreenEffectManager = self->_fullscreenEffectManager;
  }

  return fullscreenEffectManager;
}

- (void)cullCellSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          balloonView = [v9 balloonView];
          [(CKTranscriptCollectionViewController *)self convertedBoundsToCullFromView:balloonView];
          [balloonView cullSubviewsWithVisibleBounds:?];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)updateDockingMetricsIfNeeded
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    if ([(CKTranscriptCollectionViewController *)self isDockingEnabled])
    {
      collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
      [collectionViewLayout collectionViewContentSize];
      v7 = v6;

      [(CKTranscriptCollectionViewController *)self _computedContentInsets];
      v9 = v8;
      collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView frame];
      v11 = CGRectGetHeight(v23) - v9;

      v12 = v11 * (v7 / v11 - floor(v7 / v11));
      collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView2 frame];
      v14 = -(CGRectGetHeight(v24) - v11);

      collectionView3 = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView3 _setInterpageSpacing:{0.0, v14}];

      collectionView4 = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView4 _setPagingOrigin:{0.0, v12}];
    }

    else
    {
      v16 = *MEMORY[0x1E695EFF8];
      v17 = *(MEMORY[0x1E695EFF8] + 8);
      collectionView5 = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView5 _setPagingOrigin:{v16, v17}];

      v19 = *MEMORY[0x1E695F060];
      v20 = *(MEMORY[0x1E695F060] + 8);
      collectionView4 = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView4 _setInterpageSpacing:{v19, v20}];
    }
  }
}

- (UIEdgeInsets)_computedContentInsets
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate2 transcriptCollectionViewControllerComputedInsets:self];
      v5 = v17;
      v7 = v18;
      v9 = v19;
      v11 = v20;
    }
  }

  v21 = v5;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (void)updateAnimationPaused
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setAnimationPauseReasons:{-[CKTranscriptCollectionViewController contentAnimationPauseReasons](self, "contentAnimationPauseReasons")}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)collectionViewLayout
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  return collectionViewLayout;
}

- (IMChat)chat
{
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  chat = [conversation chat];

  return chat;
}

- (int64_t)desiredTranscriptScrollIntentForCurrentContentOffset
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView contentOffset];
  v4 = [(CKTranscriptCollectionViewController *)self desiredTranscriptScrollIntentForContentOffset:?];

  return v4;
}

- (double)_platformSpecificBottomContentOffset
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v4 = +[CKUIBehavior sharedBehaviors];
  scrollToBottomStopsAtTopOfLastBubble = [v4 scrollToBottomStopsAtTopOfLastBubble];

  if (!scrollToBottomStopsAtTopOfLastBubble)
  {
LABEL_7:
    latestScheduledMessageIndexPath = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
    [(CKTranscriptCollectionViewController *)self _computedContentInsets];
    [collectionView __ck_bottomOffsetHidingIndexPath:latestScheduledMessageIndexPath computedInsets:?];
    goto LABEL_8;
  }

  indexPathOfLastBubble = [(CKTranscriptCollectionViewController *)self indexPathOfLastBubble];
  if (!indexPathOfLastBubble)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Missing reply view. Using bottom content offset instead.", v12, 2u);
    }

    goto LABEL_7;
  }

  latestScheduledMessageIndexPath = indexPathOfLastBubble;
  [(CKTranscriptCollectionViewController *)self topScrollPositionForIndexPath:indexPathOfLastBubble];
LABEL_8:
  v10 = v8;

  return v10;
}

- (id)latestScheduledMessageIndexPath
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__33;
  v12 = __Block_byref_object_dispose__33;
  v13 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__CKTranscriptCollectionViewController_latestScheduledMessageIndexPath__block_invoke;
  v5[3] = &unk_1E72F26A8;
  v5[4] = v6;
  v5[5] = &v8;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v5];

  v3 = v9[5];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);

  return v3;
}

void __71__CKTranscriptCollectionViewController_latestScheduledMessageIndexPath__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v12 messageItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "scheduleType"), v7, v8 == 2) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else if (*(*(*(a1 + 32) + 8) + 24))
  {
    goto LABEL_9;
  }

  *a4 = 1;
LABEL_9:
}

- (id)dataSourceWithCollectionView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__CKTranscriptCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke;
  v8[3] = &unk_1E72ECB28;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  v6 = [v5 initWithCollectionView:viewCopy cellProvider:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

id __81__CKTranscriptCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [*(a1 + 32) _ckChatItemWithGUID:v7 inSection:{objc_msgSend(v8, "section")}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = [WeakRetained collectionView:v9 cellForCKChatItem:v10 atIndexPath:v8];

  return v12;
}

- (id)generateSnapshotForCKChatItems:(id)items
{
  v60 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = +[CKTranscriptCollectionViewController logHandle];
  v5 = os_signpost_id_generate(v4);

  v6 = +[CKTranscriptCollectionViewController logHandle];
  v7 = v6;
  v39 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "generateTranscriptSnapshot", "", buf, 2u);
  }

  spid = v5;

  v40 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v40 appendSectionsWithIdentifiers:&unk_1F04E67F8];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = itemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        iMChatItem = [*(*(&v52 + 1) + 8 * i) IMChatItem];
        guid = [iMChatItem guid];
        [v8 addObject:guid];
      }

      v11 = [v9 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v11);
  }

  v16 = [v8 copy];
  [v40 appendItemsWithIdentifiers:v16];

  [v40 appendSectionsWithIdentifiers:&unk_1F04E6810];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v9;
  v18 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v49;
    v41 = *v49;
    do
    {
      v21 = 0;
      v42 = v19;
      do
      {
        if (*v49 != v20)
        {
          objc_enumerationMutation(obj);
        }

        iMChatItem2 = [*(*(&v48 + 1) + 8 * v21) IMChatItem];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v8;
          v24 = iMChatItem2;
          visibleAssociatedMessageChatItems = [v24 visibleAssociatedMessageChatItems];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v26 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v44 objects:v57 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v45;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v45 != v28)
                {
                  objc_enumerationMutation(visibleAssociatedMessageChatItems);
                }

                guid2 = [*(*(&v44 + 1) + 8 * j) guid];
                [v17 addObject:guid2];
              }

              v27 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v44 objects:v57 count:16];
            }

            while (v27);
          }

          messageHighlightChatItem = [v24 messageHighlightChatItem];
          v32 = messageHighlightChatItem;
          if (messageHighlightChatItem)
          {
            guid3 = [messageHighlightChatItem guid];
            [v17 addObject:guid3];
          }

          v8 = v23;
          v20 = v41;
          v19 = v42;
        }

        ++v21;
      }

      while (v21 != v19);
      v19 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v19);
  }

  v34 = [v17 copy];
  [v40 appendItemsWithIdentifiers:v34];

  v35 = +[CKTranscriptCollectionViewController logHandle];
  v36 = v35;
  if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v36, OS_SIGNPOST_INTERVAL_END, spid, "generateTranscriptSnapshot", "", buf, 2u);
  }

  return v40;
}

- (id)_ckChatItemWithGUID:(id)d inSection:(unint64_t)section
{
  dCopy = d;
  if (section == 1)
  {
    associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    goto LABEL_5;
  }

  if (!section)
  {
    associatedChatItems = [(CKTranscriptCollectionViewController *)self chatItems];
LABEL_5:
    v8 = associatedChatItems;
    v9 = [associatedChatItems __ck_chatItemWithGUID:dCopy];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)logHandle
{
  if (logHandle_onceToken != -1)
  {
    +[CKTranscriptCollectionViewController(DataSource) logHandle];
  }

  v3 = logHandle_sLogHandle;

  return v3;
}

void __61__CKTranscriptCollectionViewController_DataSource__logHandle__block_invoke()
{
  v0 = os_log_create("com.apple.Messages", "Transcript");
  v1 = logHandle_sLogHandle;
  logHandle_sLogHandle = v0;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

+ (CGSize)defaultCollectionViewSize
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)imChatItems
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  chatItems = [chat chatItems];

  return chatItems;
}

- (NSArray)associatedChatItems
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070] isConsolidatedChatItemsEnabled];

  if (!isConsolidatedChatItemsEnabled)
  {
    associatedChatItems = self->_associatedChatItems;
    goto LABEL_15;
  }

  if (([(CKTranscriptCollectionViewController *)self isViewLoaded]& 1) != 0)
  {
    if (self->_chatItemController)
    {
      chatItemController = [(CKTranscriptCollectionViewController *)self chatItemController];
      associatedChatItems = [chatItemController associatedChatItems];

      goto LABEL_15;
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_14;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v11 = 0;
    v8 = "Accessing [CKTranscriptCollectionViewController associatedChatItems] with consolidated chat items enabled = YES but without actually having a chatItemController. This not supported and indicates a programmer error. Returning an empty array as a fallback.";
    v9 = &v11;
    goto LABEL_12;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_13:

      goto LABEL_14;
    }

    v12 = 0;
    v8 = "Accessing [CKTranscriptCollectionViewController associatedChatItems] with consolidated chat items enabled = YES is not supported before the view is actually loaded. This is a programmer error. Returning an empty array as a fallback. Please check why you are accessing the chat items that early.";
    v9 = &v12;
LABEL_12:
    _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
    goto LABEL_13;
  }

LABEL_14:
  associatedChatItems = MEMORY[0x1E695E0F0];
LABEL_15:

  return associatedChatItems;
}

- (NSString)transcriptIdentifier
{
  transcriptIdentifier = self->_transcriptIdentifier;
  if (!transcriptIdentifier)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_transcriptIdentifier;
    self->_transcriptIdentifier = uUIDString;

    transcriptIdentifier = self->_transcriptIdentifier;
  }

  return transcriptIdentifier;
}

- (CKBalloonEmphasisManager)balloonEmphasisManager
{
  balloonEmphasisManager = self->_balloonEmphasisManager;
  if (!balloonEmphasisManager)
  {
    v4 = objc_opt_new();
    v5 = self->_balloonEmphasisManager;
    self->_balloonEmphasisManager = v4;

    balloonEmphasisManager = self->_balloonEmphasisManager;
  }

  return balloonEmphasisManager;
}

- (void)dealloc
{
  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateDisplayLink];

  IMIsRunningInUnitTesting();
  [(CKTranscriptCollectionViewController *)self _releaseActiveBalloonControllers];
  chat = [(CKConversation *)self->_conversation chat];
  [chat endHoldingChatItemsUpdatesForAllReasons];
  [(CKTranscriptCollectionView *)self->_collectionView setDelegate:0];
  [(CKTranscriptCollectionView *)self->_collectionView setDataSource:0];
  [(CKImpactEffectManager *)self->_impactEffectManager setDelegate:0];
  [(CKTranscriptCompositor *)self->_compositor setDelegate:0];
  [(CKTranscriptCompositor *)self->_compositor setCollectionView:0];
  [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator setDelegate:0];
  transcriptUpdateCompletion = self->_transcriptUpdateCompletion;
  if (transcriptUpdateCompletion)
  {
    self->_transcriptUpdateCompletion = 0;
  }

  v6.receiver = self;
  v6.super_class = CKTranscriptCollectionViewController;
  [(CKTranscriptCollectionViewController *)&v6 dealloc];
}

- (void)loadView
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = IMLogHandleForCategory();
  v5 = os_signpost_id_generate(v4);
  v6 = objc_alloc(MEMORY[0x1E69B1820]);
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  v8 = [v6 initWithLayoutContext:1 datasource:conversation];

  [v8 setDelegate:self];
  [(CKTranscriptCollectionViewController *)self setCompositor:v8];
  objc_initWeak(&location, self);
  v9 = [CKTranscriptCompositionalLayout alloc];
  v40 = MEMORY[0x1E69E9820];
  v41 = 3221225472;
  v42 = __48__CKTranscriptCollectionViewController_loadView__block_invoke;
  v43 = &unk_1E72F25E8;
  v10 = v4;
  v44 = v10;
  v45[1] = v5;
  objc_copyWeak(v45, &location);
  v11 = [(CKTranscriptCompositionalLayout *)v9 initWithSectionProvider:&v40];
  v12 = [(CKTranscriptCollectionViewController *)self chat:v40];
  -[CKTranscriptCompositionalLayout setChatStyle:](v11, "setChatStyle:", [v12 chatStyle]);

  [(CKTranscriptCollectionViewController *)self collectionViewSize];
  v14 = v13;
  [(CKTranscriptCollectionViewController *)self collectionViewSize];
  v16 = [[CKTranscriptCollectionView alloc] initWithFrame:v11 collectionViewLayout:0.0, 0.0, v14, v15];
  compositor = [(CKTranscriptCollectionViewController *)self compositor];

  if (compositor)
  {
    compositor2 = [(CKTranscriptCollectionViewController *)self compositor];
    [compositor2 setCollectionView:v16];
  }

  [(CKTranscriptCollectionView *)v16 setAutoresizingMask:18];
  transcriptBackgroundColor = [(CKTranscriptCollectionViewController *)self transcriptBackgroundColor];
  [(CKTranscriptCollectionView *)v16 setBackgroundColor:transcriptBackgroundColor];

  if (CKIsRunningInMessagesNotificationExtension())
  {
    v20 = 0;
  }

  else
  {
    conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
    handles = [conversation2 handles];
    v2 = [handles count] != 0;

    v20 = 2 * v2;
  }

  [(CKTranscriptCollectionView *)v16 setKeyboardDismissMode:v20];
  v23 = +[CKUIBehavior sharedBehaviors];
  -[CKTranscriptCollectionView setContentInsetAdjustmentBehavior:](v16, "setContentInsetAdjustmentBehavior:", [v23 transcriptContentInsetBehavior]);

  [(CKTranscriptCollectionView *)v16 setUpdateInsetBottomDuringKeyboardDismiss:1];
  [(CKTranscriptCollectionView *)v16 setAlwaysBounceVertical:1];
  [(CKTranscriptCollectionView *)v16 setAlwaysBounceHorizontal:[(CKTranscriptCollectionViewController *)self wantsDrawerLayout]];
  [(CKTranscriptCollectionView *)v16 setShowsHorizontalScrollIndicator:0];
  [(CKTranscriptCollectionView *)v16 setAutomaticallyAdjustsScrollIndicatorInsets:0];
  [(CKTranscriptCollectionView *)v16 _setAllowsVisibleCellUpdatesDuringUpdateAnimations:1];
  v24 = +[CKUIBehavior sharedBehaviors];
  theme = [v24 theme];
  -[CKTranscriptCollectionView setIndicatorStyle:](v16, "setIndicatorStyle:", [theme scrollIndicatorStyle]);

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(theme) = [mEMORY[0x1E69A8070] isDiffableTranscriptDataSourceEnabled];

  if (theme)
  {
    v27 = [(CKTranscriptCollectionViewController *)self dataSourceWithCollectionView:v16];
    [(CKTranscriptCollectionViewController *)self setDataSource:v27];
    [(CKTranscriptCollectionView *)v16 setDataSource:v27];
  }

  else
  {
    [(CKTranscriptCollectionView *)v16 setDataSource:self];
  }

  [(CKTranscriptCollectionView *)v16 setDelegate:self];
  v28 = +[CKUIBehavior sharedBehaviors];
  forceMinTranscriptMarginInsets = [v28 forceMinTranscriptMarginInsets];
  if (forceMinTranscriptMarginInsets)
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    [v2 minTranscriptMarginInsets];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self marginInsets];
  }

  [(CKEditableCollectionView *)v16 setMarginInsets:?];
  if (forceMinTranscriptMarginInsets)
  {
  }

  [(CKTranscriptCollectionView *)v16 setAccessibilityIdentifier:@"TranscriptCollectionView"];
  v30 = +[CKUIBehavior sharedBehaviors];
  isSizeConstrained = [v30 isSizeConstrained];

  if (isSizeConstrained)
  {
    [(CKTranscriptCollectionView *)v16 setShowsVerticalScrollIndicator:0];
  }

  [(CKTranscriptCollectionViewController *)self setView:v16];
  [(CKTranscriptCollectionViewController *)self setCollectionView:v16];
  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isDiffableTranscriptDataSourceEnabled = [mEMORY[0x1E69A8070]2 isDiffableTranscriptDataSourceEnabled];

  if (isDiffableTranscriptDataSourceEnabled)
  {
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v35 = [chatItems count] == 0;

    if (!v35)
    {
      chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
      [(CKTranscriptCollectionViewController *)self _updateTranscriptChatItemsWithoutAnimation:chatItems2];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
      v39 = _AXSReduceMotionAutoplayMessagesEffectsEnabled();
      *buf = 67109376;
      v48 = IsReduceMotionEnabled;
      v49 = 1024;
      v50 = v39;
      _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "AutoPlayback allowed? ReduceMotionEnabled:%d - AutoplayEffectsEnabled:%d", buf, 0xEu);
    }
  }

  objc_destroyWeak(v45);
  objc_destroyWeak(&location);
}

id __48__CKTranscriptCollectionViewController_loadView__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v16 = 134217984;
    v17 = a2;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "layoutSectionProvider", "Section %ld", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained compositor];
  v11 = [v10 layoutSectionForSection:a2 layoutEnvironment:v5];

  v12 = *(a1 + 32);
  v13 = v12;
  v14 = *(a1 + 48);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v16 = 134217984;
    v17 = a2;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v13, OS_SIGNPOST_INTERVAL_END, v14, "layoutSectionProvider", "Section %ld", &v16, 0xCu);
  }

  return v11;
}

- (void)viewDidLoad
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CKTranscriptCollectionViewController;
  [(CKTranscriptCollectionViewController *)&v14 viewDidLoad];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    v15[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v6 = [(CKTranscriptCollectionViewController *)self registerForTraitChanges:v5 withHandler:&__block_literal_global_100];
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070]2 isConsolidatedChatItemsEnabled];

  if (isConsolidatedChatItemsEnabled)
  {
    imChatItems = [(CKTranscriptCollectionViewController *)self imChatItems];
    v10 = [(CKTranscriptCollectionViewController *)self newChatItemsWithIMChatItems:imChatItems];

    v11 = [CKChatItemController alloc];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v13 = [(CKChatItemController *)v11 initForCollectionView:collectionView chatItems:v10 delegate:self];

    [(CKTranscriptCollectionViewController *)self setChatItemController:v13];
  }
}

void __51__CKTranscriptCollectionViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 transcriptTextEffectCoordinator];
  [v2 updateWithReason:@"UITraitActiveAppearance trait did change"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v24.receiver = self;
  v24.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v24 viewWillAppear:appear];
  date = [MEMORY[0x1E695DF00] date];
  [(CKTranscriptCollectionViewController *)self setTranscriptBecameVisibleTimestamp:date];

  +[CKAssociatedStickerChatItem clearTranscriptDisplayCaches];
  chat = [(CKTranscriptCollectionViewController *)self chat];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke;
  v22[3] = &unk_1E72EBA18;
  v6 = chat;
  v23 = v6;
  [(CKTranscriptCollectionViewController *)self updateTranscript:v22 animated:0 completion:0];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  chatIdentifier = [v6 chatIdentifier];
  [collectionView configureAppEntityForConversationId:chatIdentifier];

  if ([(CKTranscriptCollectionViewController *)self shouldLoadDefaultConversationViewingMessageCountOnAppear])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke_2;
    aBlock[3] = &unk_1E72EC3E8;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    transitionCoordinator = [(CKTranscriptCollectionViewController *)self transitionCoordinator];
    v11 = transitionCoordinator;
    if (transitionCoordinator)
    {
      [transitionCoordinator animateAlongsideTransition:0 completion:v9];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke_5;
      block[3] = &unk_1E72EBDB8;
      v20 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v12 = objc_alloc(MEMORY[0x1E69A82B0]);
  v13 = [v12 initWithObject:self title:@"CKTranscriptCollectionViewController-Visible" queue:MEMORY[0x1E69E96A0]];
  [(CKTranscriptCollectionViewController *)self setStateCaptureAssistant:v13];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyNavBarEnabled = [mEMORY[0x1E69A8070] isFindMyNavBarEnabled];

  if (isFindMyNavBarEnabled)
  {
    mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    chat2 = [conversation chat];
    [mEMORY[0x1E69A5B70] startTrackingLocationForChat:chat2];
  }
}

uint64_t __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke_3;
  v4[3] = &unk_1E72EBA18;
  v4[4] = v3;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke_4;
  v2[3] = &unk_1E72EBA18;
  return [v3 updateTranscript:v4 animated:0 completion:v2];
}

void __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v1 = +[CKUIBehavior sharedBehaviors];
  [v2 setLoadedMessageCount:{objc_msgSend(v1, "defaultConversationViewingMessageCount")}];
}

void __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke_4(uint64_t a1)
{
  v5 = +[CKScrollViewAnimationProperties unanimated];
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 scrollToBottomStopsAtTopOfLastBubble];

  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 scrollToTopOfLastBubbleCellWithAnimationProperties:v5];
  }

  else
  {
    [v4 scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v14.receiver = self;
  v14.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v14 viewWillDisappear:disappear];
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [fullscreenEffectManager beginHoldingUpdatesForKey:@"CKFullscreenUpdatesDisappeared"];

  fullscreenEffectManager2 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [fullscreenEffectManager2 stopFullscreenEffect];

  impactEffectManager = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  [impactEffectManager stopAllEffects];

  impactEffectManager2 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  [impactEffectManager2 setIsDisabled:1];

  [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:8];
  [(CKTranscriptCollectionViewController *)self _tearDownLiveBubbles];
  stateCaptureAssistant = [(CKTranscriptCollectionViewController *)self stateCaptureAssistant];
  [stateCaptureAssistant deregister];

  [(CKTranscriptCollectionViewController *)self setStateCaptureAssistant:0];
  [(CKTranscriptCollectionViewController *)self setTranscriptBecameVisibleTimestamp:0];
  +[CKAssociatedStickerChatItem clearTranscriptDisplayCaches];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyNavBarEnabled = [mEMORY[0x1E69A8070] isFindMyNavBarEnabled];

  if (isFindMyNavBarEnabled)
  {
    mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    chat = [conversation chat];
    [mEMORY[0x1E69A5B70] stopTrackingLocationForChat:chat];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v6 viewDidDisappear:disappear];
  if ([(CKTranscriptCollectionViewController *)self shouldEndShowingEditHistoryOnViewDisappearance])
  {
    chat = [(CKTranscriptCollectionViewController *)self chat];
    [chat endShowingEditHistoryForAllChatItems];
  }

  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateDisplayLink];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  selfCopy = self;
  delegate = [(CKTranscriptCollectionViewController *)selfCopy delegate];
  v12 = objc_opt_respondsToSelector();

  v13 = selfCopy;
  if ((v12 & 1) == 0 || (-[CKTranscriptCollectionViewController delegate](selfCopy, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), [v14 viewControllerForAlertPresentationFromTranscriptCollectionViewController:selfCopy], v13 = objc_claimAutoreleasedReturnValue(), selfCopy, v14, v13 == selfCopy))
  {
    v15.receiver = selfCopy;
    v15.super_class = CKTranscriptCollectionViewController;
    [(CKTranscriptCollectionViewController *)&v15 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)v13 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)setNeedsChatItemLayoutInvalidation
{
  v4[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__invalidateChatItemLayoutIfNeeded object:0];
  v4[0] = *MEMORY[0x1E695DA28];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [(CKTranscriptCollectionViewController *)self performSelector:sel__invalidateChatItemLayoutIfNeeded withObject:0 afterDelay:v3 inModes:0.0];
}

- (void)_invalidateChatItemLayoutIfNeeded
{
  [(CKTranscriptCollectionViewController *)self balloonMaxWidth];
  v4 = v3;
  [(CKTranscriptCollectionViewController *)self marginInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  traitCollection = [(CKTranscriptCollectionViewController *)self traitCollection];
  [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
  [(CKTranscriptCollectionViewController *)self invalidateChatItemLayoutWithNewBalloonMaxWidth:traitCollection marginInsets:v4 traitCollection:v6 transcriptBackgroundLuminance:v8, v10, v12, v13];
}

- (void)setTranscriptBackgroundColor:(id)color
{
  objc_storeStrong(&self->_transcriptBackgroundColor, color);
  colorCopy = color;
  [(CKTranscriptCollectionView *)self->_collectionView setBackgroundColor:colorCopy];
}

- (void)setTranscriptBackgroundLuminance:(double)luminance
{
  v3 = vabdd_f64(luminance, self->_transcriptBackgroundLuminance);
  self->_transcriptBackgroundLuminance = luminance;
  if (v3 > 0.01 && [(CKViewController *)self appeared])
  {

    [(CKTranscriptCollectionViewController *)self setNeedsChatItemLayoutInvalidation];
  }
}

- (void)updateTranscriptBackgroundLuminanceToMatchBackgroundColor
{
  [(UIColor *)self->_transcriptBackgroundColor alphaComponent];
  if (v3 != 0.0)
  {
    traitCollection = [(CKTranscriptCollectionViewController *)self traitCollection];
    v4 = [(UIColor *)self->_transcriptBackgroundColor resolvedColorWithTraitCollection:traitCollection];
    [v4 _luminance];
    [(CKTranscriptCollectionViewController *)self setTranscriptBackgroundLuminance:?];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v16.receiver = self;
  v16.super_class = CKTranscriptCollectionViewController;
  [CKTranscriptCollectionViewController setEditing:sel_setEditing_animated_ animated:?];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView setAllowsSelection:editingCopy];
  [collectionView setAllowsMultipleSelection:editingCopy];
  [collectionView _ck_setEditing:editingCopy animated:animatedCopy];
  [collectionView setAlwaysBounceHorizontal:{-[CKTranscriptCollectionViewController wantsDrawerLayout](self, "wantsDrawerLayout")}];
  if (editingCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__CKTranscriptCollectionViewController_setEditing_animated___block_invoke;
    v14[3] = &unk_1E72F0918;
    v15 = v8;
    selectionManager = v8;
    [chatItems enumerateObjectsUsingBlock:v14];

    [(CKTranscriptCollectionViewController *)self setHiddenItems:selectionManager];
    v11 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
    audioController = [v11 audioController];
    [audioController stop];
  }

  else
  {
    v13 = objc_opt_new();
    [(CKTranscriptCollectionViewController *)self setHiddenItems:v13];

    selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
    [selectionManager removeAllSelectedMessageGuids];
  }
}

void __60__CKTranscriptCollectionViewController_setEditing_animated___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 itemIsReplyCount] & 1) == 0)
  {
    [*(a1 + 32) addIndex:a3];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  chat = [(CKTranscriptCollectionViewController *)self chat];
  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [chat beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57E8]];
  [collectionView beginDisablingTranscriptDynamicsForReason:10];
  [collectionViewLayout setUseInitialLayoutAttributesForRotation:1];
  [collectionViewLayout setSizeForRotation:{width, height}];
  v18.receiver = self;
  v18.super_class = CKTranscriptCollectionViewController;
  [(CKTranscriptCollectionViewController *)&v18 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__CKTranscriptCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v14[3] = &unk_1E72F2630;
  v15 = chat;
  v16 = collectionView;
  v17 = collectionViewLayout;
  v11 = collectionViewLayout;
  v12 = collectionView;
  v13 = chat;
  [coordinatorCopy animateAlongsideTransition:0 completion:v14];
}

uint64_t __91__CKTranscriptCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(id *a1)
{
  [a1[4] endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57E8]];
  [a1[5] endDisablingTranscriptDynamicsForReason:10];
  [a1[6] setUseInitialLayoutAttributesForRotation:0];
  v2 = a1[6];
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);

  return [v2 setSizeForRotation:{v3, v4}];
}

- (double)_fullMaxWidth
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView bounds];
  v4 = v3;
  [collectionView marginInsets];
  v7 = v4 - (v5 + v6);
  [collectionView safeAreaInsets];
  v10 = v7 - (v8 + v9);

  return v10;
}

- (BOOL)_canUseOpaqueMask
{
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    v5 = [delegate2 transcriptCollectionViewControllerShouldForceOpaqueMask:self];

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  transcriptCanUseOpaqueMask = [v7 transcriptCanUseOpaqueMask];

  return transcriptCanUseOpaqueMask;
}

- (void)parentControllerDidBecomeActive
{
  v7.receiver = self;
  v7.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v7 parentControllerDidBecomeActive];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:@"potentially start a new animation because parentControllerDidBecomeActive"];
  }

  impactEffectManager = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  [impactEffectManager setIsDisabled:0];

  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [fullscreenEffectManager endHoldingUpdatesForKey:@"CKFullscreenUpdatesAppSuspension"];

  [(CKTranscriptCollectionViewController *)self setAllowsPluginPlayback:1];
  [(CKTranscriptCollectionViewController *)self pluginPlaybackDelay];
  [(CKTranscriptCollectionViewController *)self startPluginPlaybackAfterDelay:?];
}

- (void)prepareForSuspend
{
  v7.receiver = self;
  v7.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v7 prepareForSuspend];
  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateDisplayLink];

  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  currentEffect = [fullscreenEffectManager currentEffect];
  [currentEffect stopSoundEffect];

  fullscreenEffectManager2 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [fullscreenEffectManager2 beginHoldingUpdatesForKey:@"CKFullscreenUpdatesAppSuspension"];

  [(CKTranscriptCollectionViewController *)self setAllowsPluginPlayback:0];
  [(CKTranscriptCollectionViewController *)self stopPluginPlayback];
  [(CKTranscriptCollectionViewController *)self _tearDownLiveBubbles];
}

- (void)performResumeDeferredSetup
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v19 performResumeDeferredSetup];
  v3 = +[CKPreviewDispatchCache genmojiPreviewCache];
  [v3 resume];

  v4 = +[CKPreviewDispatchCache transcriptPreviewCache];
  [v4 resume];

  v5 = +[CKPreviewDispatchCache snapshotCache];
  [v5 resume];

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [chatItems copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          [v13 performHostAppResumeWithContext:transcriptIdentifier];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v13 viewDidAppear:appear];
  v4 = +[CKUIBehavior sharedBehaviors];
  shouldSizeInitialViewingMessageCount = [v4 shouldSizeInitialViewingMessageCount];

  if ((shouldSizeInitialViewingMessageCount & 1) == 0)
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    isUserInteractionEnabled = [collectionView isUserInteractionEnabled];

    if (isUserInteractionEnabled)
    {
      collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView2 flashScrollIndicators];
    }
  }

  [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:8];
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [fullscreenEffectManager endHoldingUpdatesForKey:@"CKFullscreenUpdatesDisappeared"];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    transcriptTextEffectCoordinator = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
    [transcriptTextEffectCoordinator updateWithReason:@"viewDidAppear"];
  }

  [(CKTranscriptCollectionViewController *)self setAppIntentsDataSource];
}

- (void)viewDidAppearDeferredSetup
{
  v16.receiver = self;
  v16.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v16 viewDidAppearDeferredSetup];
  [(CKTranscriptCollectionViewController *)self sizeFullTranscriptIfNecessary];
  v3 = +[CKPreviewDispatchCache genmojiPreviewCache];
  [v3 resume];

  v4 = +[CKPreviewDispatchCache transcriptPreviewCache];
  [v4 resume];

  v5 = +[CKPreviewDispatchCache snapshotCache];
  [v5 resume];

  if ([(CKTranscriptCollectionViewController *)self _allowsEffectAutoPlayback])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__CKTranscriptCollectionViewController_viewDidAppearDeferredSetup__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  [(CKTranscriptCollectionViewController *)self setAllowsPluginPlayback:1];
  [(CKTranscriptCollectionViewController *)self pluginPlaybackDelay];
  [(CKTranscriptCollectionViewController *)self startPluginPlaybackAfterDelay:?];
  [(CKTranscriptCollectionViewController *)self _prewarmBalloonControllers];
  [(CKTranscriptCollectionViewController *)self _prewarmMediaPreviews];
  [(CKTranscriptCollectionViewController *)self _prewarmLinkPresentations];
  [(CKTranscriptCollectionViewController *)self _prewarmTranscriptAssetsIfNecessary];
  [(CKTranscriptCollectionViewController *)self _prewarmChatBotAssets];
  if ([MEMORY[0x1E69A82A0] isInternationalSpamFilteringEnabled])
  {
    [(CKTranscriptCollectionViewController *)self repromptLastBlackholeFailureIfNotPrompted];
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = mEMORY[0x1E69DC668];
  if (!__CurrentTestName)
  {
    goto LABEL_8;
  }

  _launchTestName = [mEMORY[0x1E69DC668] _launchTestName];
  if (![v7 isRunningTest:_launchTestName])
  {
LABEL_9:

    goto LABEL_10;
  }

  shouldRecordExtendedLaunchTime = [v7 shouldRecordExtendedLaunchTime];

  if (shouldRecordExtendedLaunchTime)
  {
LABEL_8:
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__CKTranscriptCollectionViewController_viewDidAppearDeferredSetup__block_invoke_2;
    v13[3] = &unk_1E72EBA18;
    v14 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
    _launchTestName = v14;
    goto LABEL_9;
  }

LABEL_10:
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled && [(CKTranscriptCollectionViewController *)self _shouldMakeTextEffectStateReadyInViewDidAppearDeferredSetup])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__CKTranscriptCollectionViewController_viewDidAppearDeferredSetup__block_invoke_3;
    v12[3] = &unk_1E72EBA18;
    v12[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

uint64_t __66__CKTranscriptCollectionViewController_viewDidAppearDeferredSetup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) impactEffectManager];
  [v2 setIsDisabled:0];

  v3 = *(a1 + 32);

  return [v3 _replayLastImpactEffectIfNotFromMe];
}

void __66__CKTranscriptCollectionViewController_viewDidAppearDeferredSetup__block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [*(a1 + 32) _launchTestName];
  [v3 finishedTest:v2 extraResults:0];
}

- (void)_prewarmTranscriptAssetsIfNecessary
{
  if (CKIsRunningInMessages() || CKIsRunningInMessagesNotificationExtension() && (IMSharedHelperIsOlderDevice() & 1) == 0)
  {

    [(CKTranscriptCollectionViewController *)self prewarmTapbackPickerImages];
  }
}

- (CKTranscriptCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  delegateCopy = delegate;
  conversationCopy = conversation;
  [objc_opt_class() defaultCollectionViewSize];
  v17 = [(CKTranscriptCollectionViewController *)self initWithConversation:conversationCopy delegate:delegateCopy notifications:MEMORY[0x1E695E0F0] balloonMaxWidth:width marginInsets:top collectionViewSize:left, bottom, right, v15, v16];

  return v17;
}

- (CKTranscriptCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  notificationsCopy = notifications;
  delegateCopy = delegate;
  conversationCopy = conversation;
  [objc_opt_class() defaultCollectionViewSize];
  v20 = [(CKTranscriptCollectionViewController *)self initWithConversation:conversationCopy delegate:delegateCopy notifications:notificationsCopy balloonMaxWidth:width marginInsets:top collectionViewSize:left, bottom, right, v18, v19];

  return v20;
}

- (CKTranscriptCollectionViewController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets collectionViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  conversationCopy = conversation;
  delegateCopy = delegate;
  notificationsCopy = notifications;
  v73.receiver = self;
  v73.super_class = CKTranscriptCollectionViewController;
  v21 = [(CKTranscriptCollectionViewController *)&v73 initWithNibName:0 bundle:0];
  if (!v21)
  {
    goto LABEL_25;
  }

  v70 = notificationsCopy;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    chat = [conversationCopy chat];
    v25 = [chat supportsCapabilities:0x100000];

    if (v25)
    {
      v26 = [objc_opt_class() newTranscriptTextEffectCoordinatorForTranscriptCollectionViewController:v21 isInline:{-[CKTranscriptCollectionViewController isInline](v21, "isInline")}];
      transcriptTextEffectCoordinator = v21->_transcriptTextEffectCoordinator;
      v21->_transcriptTextEffectCoordinator = v26;

      [(CKTextEffectCoordinator *)v21->_transcriptTextEffectCoordinator setDelegate:v21];
      [(CKTextEffectCoordinator *)v21->_transcriptTextEffectCoordinator setConfigurationDelegate:v21];
      initialTextEffectsState = [objc_opt_class() initialTextEffectsState];
      textEffectsState = v21->_textEffectsState;
      v21->_textEffectsState = initialTextEffectsState;

      v30 = v21->_transcriptTextEffectCoordinator;
      textEffectsState = [(CKTranscriptCollectionViewController *)v21 textEffectsState];
      -[CKTextEffectCoordinator setPaused:includingAnimators:](v30, "setPaused:includingAnimators:", [textEffectsState isPaused], 1);
    }
  }

  v21->_collectionViewSize.width = width;
  v21->_collectionViewSize.height = height;
  v21->_lastViewWidthUsedToLayoutChatItems = width;
  dragManagerCurrentDraggedStickerID = v21->_dragManagerCurrentDraggedStickerID;
  v21->_dragManagerCurrentDraggedStickerID = 0;

  v33 = objc_alloc_init(CKTranscriptBackgroundScrollingObserver);
  transcriptBackgroundScrollingObserver = v21->_transcriptBackgroundScrollingObserver;
  v21->_transcriptBackgroundScrollingObserver = v33;

  transcriptIdentifier = [(CKTranscriptCollectionViewController *)v21 transcriptIdentifier];
  [(UIViewController *)v21 setBalloonBackdropGroupTraitOverrideWithUniqueContextString:?];
  v71 = delegateCopy;
  [(CKTranscriptCollectionViewController *)v21 setDelegate:delegateCopy];
  chat2 = [conversationCopy chat];
  [(CKTranscriptCollectionViewController *)v21 setConversation:conversationCopy];
  v36 = +[CKUIBehavior sharedBehaviors];
  theme = [v36 theme];
  transcriptBackgroundColor = [theme transcriptBackgroundColor];
  [(CKTranscriptCollectionViewController *)v21 setTranscriptBackgroundColor:transcriptBackgroundColor];

  [(CKTranscriptCollectionViewController *)v21 updateTranscriptBackgroundLuminanceToMatchBackgroundColor];
  [(CKTranscriptCollectionViewController *)v21 setBalloonMaxWidth:width];
  [(CKTranscriptCollectionViewController *)v21 setMarginInsets:top, left, bottom, right];
  [(CKTranscriptCollectionViewController *)v21 setShouldUseOpaqueMask:[(CKTranscriptCollectionViewController *)v21 _canUseOpaqueMask]];
  v39 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  audioController = [v39 audioController];
  [audioController setDelegate:v21];

  imChatItems = [(CKTranscriptCollectionViewController *)v21 imChatItems];
  if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_INFO, "Displaying content from chatItems", buf, 2u);
    }
  }

  v43 = [(CKTranscriptCollectionViewController *)v21 newChatItemsWithIMChatItems:imChatItems, imChatItems];
  v44 = +[CKUIBehavior sharedBehaviors];
  shouldSizeInitialViewingMessageCount = [v44 shouldSizeInitialViewingMessageCount];

  v46 = +[CKUIBehavior sharedBehaviors];
  initialConversationSizingMessageCount = [v46 initialConversationSizingMessageCount];

  if (shouldSizeInitialViewingMessageCount && initialConversationSizingMessageCount < [v43 count])
  {
    v48 = [v43 subarrayWithRange:{objc_msgSend(v43, "count") - initialConversationSizingMessageCount, initialConversationSizingMessageCount}];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)v21 setSizedFullTranscript:1];
    v48 = v43;
  }

  v49 = v48;
  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070]2 isConsolidatedChatItemsEnabled];

  if (isConsolidatedChatItemsEnabled)
  {
    chatItemController = [(CKTranscriptCollectionViewController *)v21 chatItemController];
    v53 = [chatItemController setChatItems:v49 completion:0];

    if (!shouldSizeInitialViewingMessageCount)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (![(CKTranscriptCollectionViewController *)v21 sizedFullTranscript])
    {
      [chat2 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A5790]];
    }

    goto LABEL_19;
  }

  [(CKTranscriptCollectionViewController *)v21 setChatItems:v49];
  if (shouldSizeInitialViewingMessageCount)
  {
    goto LABEL_17;
  }

LABEL_19:
  conversation = [(CKTranscriptCollectionViewController *)v21 conversation];
  chatItems = [(CKTranscriptCollectionViewController *)v21 chatItems];
  v56 = [conversation createInputContextHistoryWithChatItems:chatItems];
  inputContextHistory = v21->_inputContextHistory;
  v21->_inputContextHistory = v56;

  [(CKTranscriptCollectionViewController *)v21 _refreshLocationsForRecipientsIfNecessary];
  v58 = dispatch_group_create();
  [(CKTranscriptCollectionViewController *)v21 setUpdateAnimationGroup:v58];
  [(CKTranscriptCollectionViewController *)v21 setTranscriptUpdateAnimated:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v21 selector:sel_transferRestored_ name:@"CKFileTransferRestoredNotification" object:0];
  [defaultCenter addObserver:v21 selector:sel_previewDidChange_ name:@"CKPreviewDidChangeNotification" object:0];
  [defaultCenter addObserver:v21 selector:sel__adaptiveImageGlyphWasGeneratedNotification_ name:@"CKAdaptiveImageGlyphGeneratedNotification" object:0];
  [defaultCenter addObserver:v21 selector:sel_snapshotDidChange_ name:@"CKSnapshotChangedNotification" object:0];
  [defaultCenter addObserver:v21 selector:sel_locationStringDidChange_ name:@"CKLocationStringDidChangeNotification" object:0];
  [defaultCenter addObserver:v21 selector:sel_transferUpdated_ name:@"CKFileTransferUpdatedNotification" object:0];
  [defaultCenter addObserver:v21 selector:sel__transferCompleted_ name:@"CKFileTransferFinishedNotification" object:0];
  [defaultCenter addObserver:v21 selector:sel_addressBookChanged_ name:*MEMORY[0x1E69A6828] object:0];
  [defaultCenter addObserver:v21 selector:sel__conversationListFinishedMerging_ name:@"CKConversationListFinishedMergingChatsNotification" object:0];
  [defaultCenter addObserver:v21 selector:sel_installedAppsChanged_ name:*MEMORY[0x1E69A56D8] object:0];
  [defaultCenter addObserver:v21 selector:sel__updatedMessageTintColor_ name:*MEMORY[0x1E69A59F0] object:0];
  [defaultCenter addObserver:v21 selector:sel_snapshotTaken_ name:*MEMORY[0x1E69DDBA8] object:0];
  [defaultCenter addObserver:v21 selector:sel_multiwayCallStateChanged_ name:*MEMORY[0x1E69A5840] object:0];
  [defaultCenter addObserver:v21 selector:sel_connectivityChanged_ name:*MEMORY[0x1E69A56F8] object:0];
  if (chat2)
  {
    chatItemsDidChangeNotification = [objc_opt_class() chatItemsDidChangeNotification];
    [defaultCenter addObserver:v21 selector:sel_chatItemsDidChange_ name:chatItemsDidChangeNotification object:chat2];
  }

  v61 = objc_alloc_init(CKImpactEffectManager);
  [(CKImpactEffectManager *)v61 setDelegate:v21];
  [(CKTranscriptCollectionViewController *)v21 setImpactEffectManager:v61];
  [(CKTranscriptCollectionViewController *)v21 setIsPerformingRegenerateOrReloadOnlyUpdate:0];
  v21->_allowsPluginPlayback = 0;
  v21->_pluginPlaybackDelay = 0.1;
  v62 = objc_alloc_init(CKTranscriptBalloonSelectionManager);
  selectionManager = v21->_selectionManager;
  v21->_selectionManager = v62;

  [(CKTranscriptBalloonSelectionManager *)v21->_selectionManager setDelegate:v21];
  [(CKTranscriptBalloonSelectionManager *)v21->_selectionManager setDataSource:v21];
  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isDiffableTranscriptDataSourceEnabled = [mEMORY[0x1E69A8070]3 isDiffableTranscriptDataSourceEnabled];

  if (isDiffableTranscriptDataSourceEnabled)
  {
    viewIfLoaded = [(CKTranscriptCollectionViewController *)v21 viewIfLoaded];

    if (viewIfLoaded)
    {
      [(CKTranscriptCollectionViewController *)v21 _updateTranscriptChatItemsWithoutAnimation:v49];
    }
  }

  notificationsCopy = v70;
  delegateCopy = v71;
LABEL_25:

  return v21;
}

- (void)setHiddenItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (self->_hiddenItems != itemsCopy)
  {
    v6 = [(NSIndexSet *)itemsCopy copy];

    objc_storeStrong(&self->_hiddenItems, v6);
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__CKTranscriptCollectionViewController_setHiddenItems___block_invoke;
    v9[3] = &unk_1E72F2658;
    v9[4] = self;
    [visibleCells enumerateObjectsUsingBlock:v9];

    v5 = v6;
  }
}

void __55__CKTranscriptCollectionViewController_setHiddenItems___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 indexPathForCell:v7];

  if (![v4 section])
  {
    if ([*(*(a1 + 32) + 1144) containsIndex:{objc_msgSend(v4, "row")}])
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }

    v6 = [v7 contentView];
    [v6 setAlpha:v5];
  }
}

- (void)updateAssociatedItem:(id)item hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v14 = [(CKTranscriptCollectionViewController *)self cellForAssociatedChatItem:item];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v7 = [collectionView indexPathForCell:v14];

  if (v7)
  {
    hiddenAssociatedItems = [(CKTranscriptCollectionViewController *)self hiddenAssociatedItems];
    v9 = [hiddenAssociatedItems mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
    }

    v12 = v11;

    item = [v7 item];
    if (hiddenCopy)
    {
      [v12 addIndex:item];
    }

    else
    {
      [v12 removeIndex:item];
    }

    [(CKTranscriptCollectionViewController *)self setHiddenAssociatedItems:v12];
  }
}

- (void)setHiddenAssociatedItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (self->_hiddenAssociatedItems != itemsCopy)
  {
    v6 = [(NSIndexSet *)itemsCopy copy];

    objc_storeStrong(&self->_hiddenAssociatedItems, v6);
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__CKTranscriptCollectionViewController_setHiddenAssociatedItems___block_invoke;
    v9[3] = &unk_1E72F2658;
    v9[4] = self;
    [visibleCells enumerateObjectsUsingBlock:v9];

    v5 = v6;
  }
}

void __65__CKTranscriptCollectionViewController_setHiddenAssociatedItems___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 indexPathForCell:v8];

  v5 = [*(*(a1 + 32) + 1152) containsIndex:{objc_msgSend(v4, "row")}];
  if ([v4 section] == 1)
  {
    if (v5)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = [v8 contentView];
    [v7 setAlpha:v6];
  }
}

- (void)setHiddenAssociatedItemsForMessageEditing:(id)editing
{
  editingCopy = editing;
  v5 = editingCopy;
  if (self->_hiddenAssociatedItemsForMessageEditing != editingCopy)
  {
    v6 = [(NSIndexSet *)editingCopy copy];

    objc_storeStrong(&self->_hiddenAssociatedItemsForMessageEditing, v6);
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__CKTranscriptCollectionViewController_setHiddenAssociatedItemsForMessageEditing___block_invoke;
    v9[3] = &unk_1E72F2658;
    v9[4] = self;
    [visibleCells enumerateObjectsUsingBlock:v9];

    v5 = v6;
  }
}

void __82__CKTranscriptCollectionViewController_setHiddenAssociatedItemsForMessageEditing___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 indexPathForCell:v6];

  v5 = [*(*(a1 + 32) + 1160) containsIndex:{objc_msgSend(v4, "item")}];
  if ([v4 section] == 1 && v5 != objc_msgSend(v6, "isHidden"))
  {
    if ([v6 isHidden])
    {
      [v6 performReveal:0];
    }

    else
    {
      [v6 performHide:0];
    }
  }
}

- (void)setHiddenBalloonViews:(id)views
{
  viewsCopy = views;
  v5 = viewsCopy;
  if (self->_hiddenBalloonViews != viewsCopy)
  {
    v6 = [(NSIndexSet *)viewsCopy copy];

    objc_storeStrong(&self->_hiddenBalloonViews, v6);
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__CKTranscriptCollectionViewController_setHiddenBalloonViews___block_invoke;
    v9[3] = &unk_1E72F2658;
    v9[4] = self;
    [visibleCells enumerateObjectsUsingBlock:v9];

    v5 = v6;
  }
}

void __62__CKTranscriptCollectionViewController_setHiddenBalloonViews___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) collectionView];
    v4 = [v3 indexPathForCell:v7];

    v5 = [*(*(a1 + 32) + 1168) containsIndex:{objc_msgSend(v4, "item")}];
    v6 = [v7 balloonView];
    [v6 setHidden:v5];
  }
}

- (NSMutableArray)stickerGUIDsHiddenDuringStickerAddAnimation
{
  stickerGUIDsHiddenDuringStickerAddAnimation = self->_stickerGUIDsHiddenDuringStickerAddAnimation;
  if (!stickerGUIDsHiddenDuringStickerAddAnimation)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_stickerGUIDsHiddenDuringStickerAddAnimation;
    self->_stickerGUIDsHiddenDuringStickerAddAnimation = v4;

    stickerGUIDsHiddenDuringStickerAddAnimation = self->_stickerGUIDsHiddenDuringStickerAddAnimation;
  }

  return stickerGUIDsHiddenDuringStickerAddAnimation;
}

- (void)beginHidingStickerWithGUIDDuringAddStickerAnimation:(id)animation
{
  animationCopy = animation;
  stickerGUIDsHiddenDuringStickerAddAnimation = [(CKTranscriptCollectionViewController *)self stickerGUIDsHiddenDuringStickerAddAnimation];
  [stickerGUIDsHiddenDuringStickerAddAnimation addObject:animationCopy];

  v8 = [(CKTranscriptCollectionViewController *)self associatedChatItemForGUID:animationCopy];

  v6 = [(CKTranscriptCollectionViewController *)self cellForAssociatedChatItem:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    associatedItemView = [v6 associatedItemView];
    [associatedItemView setHidden:1];
  }
}

- (void)endHidingStickerWithGUIDDuringAddStickerAnimation:(id)animation
{
  animationCopy = animation;
  stickerGUIDsHiddenDuringStickerAddAnimation = [(CKTranscriptCollectionViewController *)self stickerGUIDsHiddenDuringStickerAddAnimation];
  [stickerGUIDsHiddenDuringStickerAddAnimation removeObject:animationCopy];

  v8 = [(CKTranscriptCollectionViewController *)self associatedChatItemForGUID:animationCopy];

  v6 = [(CKTranscriptCollectionViewController *)self cellForAssociatedChatItem:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    associatedItemView = [v6 associatedItemView];
    [associatedItemView setHidden:0];
  }
}

- (void)_highlightCell:(id)cell animated:(BOOL)animated autoDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  animatedCopy = animated;
  cellCopy = cell;
  if (objc_opt_respondsToSelector())
  {
    itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
    self->_itemIndexPathToHighlight = 0;

    v9 = +[CKUIBehavior sharedBehaviors];
    enableBalloonTextSelection = [v9 enableBalloonTextSelection];

    if (!enableBalloonTextSelection || dismissCopy)
    {
      balloonView = [cellCopy balloonView];
      [balloonView setHasHighlightOverlay:1 animated:animatedCopy autoDismiss:dismissCopy];
    }
  }
}

- (void)highlightItemAtIndexPathWhenDisplayed:(id)displayed animated:(BOOL)animated autoDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  animatedCopy = animated;
  displayedCopy = displayed;
  itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
  if (itemIndexPathToHighlight != displayedCopy)
  {
    v14 = displayedCopy;
    if (itemIndexPathToHighlight && self->_holdMessageEmphasisTillManuallyRemoved)
    {
      [(CKTranscriptCollectionViewController *)self removeEmphasisFromCurrentMessageWithAnimation:animatedCopy];
    }

    objc_storeStrong(&self->_itemIndexPathToHighlight, displayed);
    self->_holdMessageEmphasisTillManuallyRemoved = !dismissCopy;
    displayedCopy = v14;
    if (v14)
    {
      collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
      v12 = [collectionView cellForItemAtIndexPath:self->_itemIndexPathToHighlight];

      if (v12)
      {
        if (dismissCopy)
        {
          v13 = self->_itemIndexPathToHighlight;
          self->_itemIndexPathToHighlight = 0;
        }

        [(CKTranscriptCollectionViewController *)self _highlightCell:v12 animated:animatedCopy autoDismiss:dismissCopy];
      }

      displayedCopy = v14;
    }
  }
}

- (void)_removeHighlightFromCell:(id)cell animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  if (objc_opt_respondsToSelector())
  {
    itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
    self->_itemIndexPathToHighlight = 0;

    v7 = +[CKUIBehavior sharedBehaviors];
    enableBalloonTextSelection = [v7 enableBalloonTextSelection];

    if ((enableBalloonTextSelection & 1) == 0)
    {
      balloonView = [cellCopy balloonView];
      [balloonView setHasHighlightOverlay:0 animated:animatedCopy autoDismiss:0];
    }
  }
}

- (void)removeEmphasisFromCurrentMessageWithAnimation:(BOOL)animation
{
  if (self->_itemIndexPathToHighlight)
  {
    animationCopy = animation;
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [collectionView cellForItemAtIndexPath:self->_itemIndexPathToHighlight];

    if (v7)
    {
      itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
      self->_itemIndexPathToHighlight = 0;

      [(CKTranscriptCollectionViewController *)self _removeHighlightFromCell:v7 animated:animationCopy];
    }
  }
}

- (id)selectedItems
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  if ([chatItems count])
  {
    v5 = 0;
    do
    {
      v6 = [chatItems objectAtIndex:v5];
      iMChatItem = [v6 IMChatItem];
      guid = [iMChatItem guid];

      selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
      v10 = [selectionManager isMessageGuidSelected:guid];

      if (v10)
      {
        [indexSet addIndex:v5];
      }

      ++v5;
    }

    while (v5 < [chatItems count]);
  }

  return indexSet;
}

- (void)setSelectedItems:(id)items
{
  if (items)
  {
    itemsCopy = items;
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    [(CKTranscriptCollectionViewController *)self deselectAllBalloons];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__CKTranscriptCollectionViewController_setSelectedItems___block_invoke;
    v7[3] = &unk_1E72EF010;
    v8 = chatItems;
    selfCopy = self;
    v6 = chatItems;
    [itemsCopy enumerateIndexesUsingBlock:v7];
  }
}

void __57__CKTranscriptCollectionViewController_setSelectedItems___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) objectAtIndex:a2];
  v3 = [v7 IMChatItem];
  v4 = [v3 guid];

  v5 = [*(a1 + 40) selectionManager];
  v6 = [CKBalloonSelectionState balloonSelectionState:0];
  [v5 addSelectedMessageGuid:v4 selectionState:v6];
}

- (void)deleteSelectedChatItems:(id)items
{
  itemsCopy = items;
  selectedChatItems = [(CKTranscriptCollectionViewController *)self selectedChatItems];
  [(CKTranscriptCollectionViewController *)self deleteChatItems:selectedChatItems sender:itemsCopy];
}

- (id)_currentTopChatItemForAggregateChatItem:(id)item
{
  v3 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stackView = [v3 stackView];
    currentAssetReference = [stackView currentAssetReference];
    asset = [currentAssetReference asset];
    chatItem = [asset chatItem];
  }

  else
  {
    chatItem = 0;
  }

  return chatItem;
}

- (void)deleteChatItems:(id)items sender:(id)sender
{
  itemsCopy = items;
  senderCopy = sender;
  if ([itemsCopy count])
  {
    chat = [(CKTranscriptCollectionViewController *)self chat];
    [chat beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57B0]];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() & 1;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke;
    v19 = &unk_1E72F2680;
    selfCopy = self;
    v10 = itemsCopy;
    v23 = v9;
    v21 = v10;
    v22 = chat;
    v11 = chat;
    v12 = _Block_copy(&v16);
    v13 = CKIsRunningInMacCatalyst() != 0;
    v14 = objc_opt_new();
    [v14 setPresentationViewController:{self, v16, v17, v18, v19, selfCopy}];
    [v14 setMessagesCount:{objc_msgSend(v10, "count")}];
    [v14 setAlertControllerStyle:v13];
    [v14 setAlertsCompletedBlock:v12];
    [v14 setSender:senderCopy];
    v15 = [[CKConversationConfirmationAlertsController alloc] initWithConfiguration:v14];
    [(CKConversationConfirmationAlertsController *)v15 presentRecoverableMessageDeletionConfirmations];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController deleteChatItems:sender:];
    }
  }
}

void __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateAnimationGroup];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke_2;
  v4[3] = &unk_1E72F2680;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  dispatch_group_notify(v2, MEMORY[0x1E69E96A0], v4);
}

void __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) parentViewController];
  [v2 setEditing:0 animated:1];

  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke_3;
  v6[3] = &unk_1E72F2680;
  v6[4] = v3;
  v7 = *(a1 + 40);
  v9 = *(a1 + 56);
  v8 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke_582;
  v4[3] = &unk_1E72EBA18;
  v5 = *(a1 + 48);
  [v3 updateTranscript:v6 animated:1 completion:v4];
}

void __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke_3(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) delegate];
  [v2 transcriptCollectionViewController:*v1 willDeleteChatItems:*(a1 + 40)];

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 40);
  v37 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (v37)
  {
    v36 = *v46;
    *&v4 = 136316162;
    v33 = v4;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v45 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = v40;
          v6 = [v5 momentShareURL];

          if (v6 == 0 && (*(a1 + 56) & 1) != 0)
          {
            v7 = [*(a1 + 32) _currentTopChatItemForAggregateChatItem:v5];
            v8 = [v7 IMChatItem];
            if (v8)
            {
              [v3 addObject:v8];
            }
          }

          if (IMOSLoggingEnabled())
          {
            v9 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              v10 = [v5 IMChatItem];
              v11 = [v10 guid];
              v12 = [v5 IMChatItem];
              v13 = [v12 guid];
              v14 = *(a1 + 56);
              *buf = v33;
              v51 = "[CKTranscriptCollectionViewController deleteChatItems:sender:]_block_invoke_3";
              v52 = 2112;
              v53 = v11;
              v54 = 2112;
              v55 = v13;
              v56 = 1024;
              v57 = v6 != 0;
              v58 = 1024;
              v59 = v14;
              _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%s Targeting chatItem.guid for deletion: %@, given aggregateAttachmentChatItem.guid: %@. isMomentShare: %{BOOL}d, isKeyCommandDelete: %{BOOL}d", buf, 0x2Cu);
            }
          }
        }

        v38 = [v40 IMChatItem];
        if (v38)
        {
          [v3 addObject:?];
          v15 = [v40 visibleAssociatedMessageChatItems];
          v16 = [v15 mutableCopy];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v40 visibleAssociatedMessageChatItemsIncludingTapbacks];
            v18 = [v16 arrayByAddingObjectsFromArray:v17];
            v19 = [v18 mutableCopy];

            v16 = v19;
          }

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v20 = v16;
          v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v21)
          {
            v22 = *v42;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v42 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v41 + 1) + 8 * j);
                v25 = [v24 IMChatItem];
                [v3 addObject:v25];

                v26 = IMLogHandleForCategory();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  v27 = [v24 IMChatItem];
                  v28 = [v27 guid];
                  *buf = 136315394;
                  v51 = "[CKTranscriptCollectionViewController deleteChatItems:sender:]_block_invoke";
                  v52 = 2112;
                  v53 = v28;
                  _os_log_error_impl(&dword_19020E000, v26, OS_LOG_TYPE_ERROR, "%s adding associatedMessageChatItem.guid for deletion %@", buf, 0x16u);
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v21);
          }
        }

        else
        {
          v20 = IMLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v29 = [v40 IMChatItem];
            v30 = [v29 guid];
            *buf = 136315394;
            v51 = "[CKTranscriptCollectionViewController deleteChatItems:sender:]_block_invoke";
            v52 = 2112;
            v53 = v30;
            _os_log_error_impl(&dword_19020E000, v20, OS_LOG_TYPE_ERROR, "%s chatItem's underlying IMChatItem was nil. Will not delete chatItem.guid. %@", buf, 0x16u);
          }
        }
      }

      v37 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
    }

    while (v37);
  }

  v31 = IMLogHandleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke_3_cold_1(v3);
  }

  [*(a1 + 48) deleteChatItems:v3];
  if (CKIsRunningInMacCatalyst())
  {
    v32 = [*(a1 + 32) selectionManager];
    [v32 removeAllSelectedMessageGuids];
  }
}

void __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke_582(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57B0]];
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[CKTranscriptCollectionViewController deleteChatItems:sender:]_block_invoke";
      _os_log_impl(&dword_19020E000, v1, OS_LOG_TYPE_INFO, "%s requesting purge of default snapshot", &v3, 0xCu);
    }
  }

  v2 = objc_alloc_init(MEMORY[0x1E69D41A0]);
  [v2 deleteSnapshotsForApplicationIdentifier:@"com.apple.MobileSMS"];
  [v2 invalidate];
}

- (void)setTransitionedFromComposing:(BOOL)composing
{
  self->_transitionedFromComposing = composing;
  if (composing)
  {
    [(CKTranscriptCollectionViewController *)self setTransitioningFromComposing:0];
  }
}

- (NSDictionary)pluginSnapshots
{
  pluginSnapshots = self->_pluginSnapshots;
  if (!pluginSnapshots)
  {
    self->_pluginSnapshots = MEMORY[0x1E695E0F8];

    pluginSnapshots = self->_pluginSnapshots;
  }

  return pluginSnapshots;
}

- (void)setTransitioningFromComposing:(BOOL)composing
{
  v23 = *MEMORY[0x1E69E9840];
  self->_transitioningFromComposing = composing;
  if (composing)
  {
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = chatItems;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:v11, v18];
            iMChatItem = [v11 IMChatItem];
            guid = [iMChatItem guid];

            v15 = [v12 snapshotViewAfterScreenUpdates:0];
            [(NSDictionary *)v5 setObject:v15 forKeyedSubscript:guid];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    pluginSnapshots = self->_pluginSnapshots;
    self->_pluginSnapshots = v5;
  }

  else
  {
    v17 = self->_pluginSnapshots;
    self->_pluginSnapshots = MEMORY[0x1E695E0F8];
  }
}

- (void)setScrollAnchor:(double)anchor
{
  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout setAnchorYPosition:anchor];
}

- (void)__configureVisibleMessagesCellsIncludingAssociatedCells:(BOOL)cells
{
  isPaused = [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator isPaused];
  if (!isPaused)
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator setPaused:1 includingAnimators:0];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator reset];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__CKTranscriptCollectionViewController___configureVisibleMessagesCellsIncludingAssociatedCells___block_invoke;
  v6[3] = &unk_1E72ED8D8;
  v6[4] = self;
  cellsCopy = cells;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
  if (!isPaused && !+[CKApplicationState isResizing])
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator setPaused:0 includingAnimators:0];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:@"TranscriptCollectionViewController did configure visible cells"];
  }
}

void __96__CKTranscriptCollectionViewController___configureVisibleMessagesCellsIncludingAssociatedCells___block_invoke(uint64_t a1)
{
  v1 = a1;
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) collectionView];
  v3 = [*(v1 + 32) chatItems];
  v20 = [*(v1 + 32) associatedChatItems];
  v4 = [v2 indexPathsForVisibleItems];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v21 = v4;
    v19 = v1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v2 cellForItemAtIndexPath:v9];
        if (v10)
        {
          if (![v9 section])
          {
            v11 = [v3 objectAtIndexedSubscript:{objc_msgSend(v9, "item")}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = v2;
              v13 = v3;
              v14 = [v10 balloonView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = [v14 textView];
                [v15 ck_invalidateAllAnimators];

                v4 = v21;
              }

              v3 = v13;
              v2 = v12;
              v1 = v19;
            }

            [*(v1 + 32) configureCell:v10 forCKChatItem:v11 atIndexPath:v9 animated:0 animationDuration:3 animationCurve:0.0];
          }

          if (*(v1 + 40) == 1 && [v9 section] == 1)
          {
            v16 = [v9 item];
            v17 = v10;
            v18 = [v20 objectAtIndexedSubscript:v16];
            [*(v1 + 32) configureAssociatedCell:v17 forChatItem:v18 atIndexPath:v9];

            v4 = v21;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

- (void)__updateCollectionViewLayout
{
  isPaused = [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator isPaused];
  if (!isPaused)
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator setPaused:1 includingAnimators:0];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator reset];
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CKTranscriptCollectionViewController___updateCollectionViewLayout__block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  if (!isPaused && !+[CKApplicationState isResizing])
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator setPaused:0 includingAnimators:0];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:@"TranscriptCollectionViewController did update layout"];
  }
}

void __68__CKTranscriptCollectionViewController___updateCollectionViewLayout__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 reloadLayout];
  [v1 prepareLayout];
}

- (void)_updateLayoutAndConfigureVisibleCells
{
  [(CKTranscriptCollectionViewController *)self __updateCollectionViewLayout];

  [(CKTranscriptCollectionViewController *)self __configureVisibleMessagesCellsIncludingAssociatedCells:1];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CKTranscriptCollectionViewController;
  changeCopy = change;
  [(CKTranscriptCollectionViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CKTranscriptCollectionViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(CKTranscriptCollectionViewController *)self updateTranscriptBackgroundLuminanceToMatchBackgroundColor];
  }
}

- (void)_requestChatItemLayoutInvalidation
{
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewControllerNeedsChatItemLayoutInvalidation:self];
}

- (void)invalidateChatItemLayoutWithNewBalloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets traitCollection:(id)collection transcriptBackgroundLuminance:(double)luminance
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v32 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  [(CKTranscriptCollectionViewController *)self setBalloonMaxWidth:width];
  [(CKTranscriptCollectionViewController *)self setMarginInsets:top, left, bottom, right];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView setMarginInsets:{top, left, bottom, right}];

  notifications = [(CKTranscriptCollectionViewController *)self notifications];

  if (notifications)
  {
    notifications2 = [(CKTranscriptCollectionViewController *)self notifications];
    chatItems = [(CKTranscriptCollectionViewController *)self newChatItemsWithNotifications:notifications2];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070] isConsolidatedChatItemsEnabled];

    if (isConsolidatedChatItemsEnabled)
    {
      chatItemController = [(CKTranscriptCollectionViewController *)self chatItemController];
      [chatItemController setChatItemsUsingReloadDataWithoutAnimation:chatItems];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:chatItems];
    }
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self _fullMaxWidth];
    v22 = v21;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v23 = [chatItems countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(chatItems);
          }

          [*(*(&v27 + 1) + 8 * i) updateWithBalloonMaxWidth:collectionCopy fullMaxWidth:width transcriptTraitCollection:v22 transcriptBackgroundLuminance:luminance];
        }

        v24 = [chatItems countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v24);
    }
  }

  [(CKTranscriptCollectionViewController *)self _updateLayoutAndConfigureVisibleCells];
}

- (void)_resizingStart:(id)start
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView beginDisablingTranscriptDynamicsForReason:8];
}

- (void)_resizingEnd:(id)end
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView endDisablingTranscriptDynamicsForReason:8];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator setPaused:0 includingAnimators:0];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:@"TranscriptCollectionViewController _resizingEnd"];
  }
}

- (void)sizeFullTranscriptIfNecessary
{
  if (![(CKTranscriptCollectionViewController *)self sizedFullTranscript])
  {
    [(CKTranscriptCollectionViewController *)self setSizedFullTranscript:1];
    imChatItems = [(CKTranscriptCollectionViewController *)self imChatItems];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v5 = [imChatItems count];
    if (v5 >= [chatItems count])
    {
      v6 = [imChatItems subarrayWithRange:{0, objc_msgSend(imChatItems, "count") - objc_msgSend(chatItems, "count")}];
      array = chatItems;
    }

    else
    {
      v6 = imChatItems;
      array = [MEMORY[0x1E695DEC8] array];

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "ChatItems changed between collection view init and viewDidAppearDeferredSetup, resetting transcript state", buf, 2u);
        }
      }
    }

    notifications = [(CKTranscriptCollectionViewController *)self notifications];

    if (notifications)
    {
      notifications2 = [(CKTranscriptCollectionViewController *)self notifications];
      v11 = [(CKTranscriptCollectionViewController *)self newChatItemsWithNotifications:notifications2];
    }

    else
    {
      notifications2 = [(CKTranscriptCollectionViewController *)self newChatItemsWithIMChatItems:v6];
      v11 = [notifications2 arrayByAddingObjectsFromArray:array];
    }

    v12 = v11;

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070] isConsolidatedChatItemsEnabled];

    if (isConsolidatedChatItemsEnabled)
    {
      chatItemController = [(CKTranscriptCollectionViewController *)self chatItemController];
      [chatItemController setChatItemsUsingReloadDataWithoutAnimation:v12];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:v12];
      collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
      [collectionViewLayout reloadData];

      [(CKTranscriptCollectionViewController *)self reloadData];
    }

    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v18 = +[CKScrollViewAnimationProperties unanimated];
    [collectionView enforceTranscriptScrollIntentWithAnimationProperties:v18];
    chat = [(CKTranscriptCollectionViewController *)self chat];
    [chat endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A5790]];
    v20 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__CKTranscriptCollectionViewController_sizeFullTranscriptIfNecessary__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_after(v20, MEMORY[0x1E69E96A0], block);
  }
}

void __69__CKTranscriptCollectionViewController_sizeFullTranscriptIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 isUserInteractionEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) collectionView];
    [v4 flashScrollIndicators];
  }
}

- (void)_prewarmMediaPreviews
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "prewarm media previews", buf, 2u);
    }
  }

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CKTranscriptCollectionViewController__prewarmMediaPreviews__block_invoke;
  v7[3] = &unk_1E72EEC48;
  v7[4] = &v8;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v7];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(v9 + 6);
      *buf = 67109120;
      v13 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "prewarm media previews complete, %u warmed", buf, 8u);
    }
  }

  _Block_object_dispose(&v8, 8);
}

void __61__CKTranscriptCollectionViewController__prewarmMediaPreviews__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v3 = v9;
    v4 = [v3 mediaObject];
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 previewMaxWidth];
    v7 = v6;
    v8 = [v3 balloonOrientation];

    [v4 prewarmPreviewForWidth:v8 orientation:v7];
  }
}

- (void)_prewarmLinkPresentations
{
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  [(CKTranscriptCollectionViewController *)self _prewarmLinkPresentationsWithChatItems:chatItems];
}

- (void)_prewarmLinkPresentationsWithChatItems:(id)items
{
  v14 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "prewarm link presentations", buf, 2u);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CKTranscriptCollectionViewController__prewarmLinkPresentationsWithChatItems___block_invoke;
  v7[3] = &unk_1E72EEC48;
  v7[4] = &v8;
  [itemsCopy enumerateObjectsWithOptions:2 usingBlock:v7];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(v9 + 6);
      *buf = 67109120;
      v13 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "prewarm media previews complete, %u warmed", buf, 8u);
    }
  }

  _Block_object_dispose(&v8, 8);
}

void __79__CKTranscriptCollectionViewController__prewarmLinkPresentationsWithChatItems___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 IMChatItem];
    v4 = [v3 dataSource];
    v5 = [v4 pluginPayload];

    [v5 acceptPurgedTransfers];
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)_prewarmBalloonControllers
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v4 = [chatItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(chatItems);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v11 = [v9 extensibleViewForContext:transcriptIdentifier];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [chatItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_prewarmChatBotAssets
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v3 = [chatItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(chatItems);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 prewarmAssets];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [chatItems countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)reloadData
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView reloadData];

  [(CKTranscriptCollectionViewController *)self reconfigureVisibleSpeakerButtonCells];
}

- (void)updateTranscript:(id)transcript animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v36 = *MEMORY[0x1E69E9840];
  transcriptCopy = transcript;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (animatedCopy)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = _Block_copy(completionCopy);
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Update transcript animated:%@, completion:%@", buf, 0x16u);
    }
  }

  transcriptUpdateCompletion = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
  v14 = transcriptUpdateCompletion == 0;

  if (v14)
  {
    [(CKTranscriptCollectionViewController *)self setTranscriptUpdateCompletion:completionCopy];
  }

  else
  {
    transcriptUpdateCompletion2 = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__CKTranscriptCollectionViewController_updateTranscript_animated_completion___block_invoke;
    aBlock[3] = &unk_1E72EF038;
    v16 = completionCopy;
    v28 = v16;
    v17 = transcriptUpdateCompletion2;
    v29 = v17;
    v18 = _Block_copy(aBlock);
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        transcriptUpdateCompletion3 = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
        v20 = _Block_copy(transcriptUpdateCompletion3);
        v21 = _Block_copy(v16);
        v22 = _Block_copy(v18);
        *buf = 134218496;
        v31 = v20;
        v32 = 2048;
        v33 = v21;
        v34 = 2048;
        v35 = v22;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Update transcript while update is already in progress. Current completion: %p – new completion: %p - chained: %p", buf, 0x20u);
      }
    }

    [(CKTranscriptCollectionViewController *)self setTranscriptUpdateCompletion:v18];
  }

  [(CKTranscriptCollectionViewController *)self setTranscriptUpdateAnimated:animatedCopy];
  transcriptCopy[2](transcriptCopy);
  transcriptUpdateCompletion4 = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
  v24 = transcriptUpdateCompletion4 == 0;

  if (!v24)
  {
    transcriptUpdateCompletion5 = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
    transcriptUpdateCompletion5[2]();
  }

  [(CKTranscriptCollectionViewController *)self setTranscriptUpdateCompletion:0];
  [(CKTranscriptCollectionViewController *)self setTranscriptUpdateAnimated:1];
}

void __77__CKTranscriptCollectionViewController_updateTranscript_animated_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = _Block_copy(*(a1 + 32));
      v4 = _Block_copy(*(a1 + 40));
      v13 = 134218240;
      v14 = v3;
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Update transcript while update is already in progress – chained completion handler called. Completion: %p - innerCompletion: %p", &v13, 0x16u);
    }
  }

  if (*(a1 + 32))
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = _Block_copy(*(a1 + 32));
        v13 = 134217984;
        v14 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Update transcript while update is already in progress – chained completion handler called. Will call completion: %p", &v13, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = _Block_copy(*(a1 + 32));
        v13 = 134217984;
        v14 = v8;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Update transcript while update is already in progress – chained completion handler called. Did call completion: %p", &v13, 0xCu);
      }
    }
  }

  if (*(a1 + 40))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = _Block_copy(*(a1 + 40));
        v13 = 134217984;
        v14 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Update transcript while update is already in progress – chained completion handler called. Will call innerCompletion: %p", &v13, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = _Block_copy(*(a1 + 40));
        v13 = 134217984;
        v14 = v12;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Update transcript while update is already in progress – chained completion handler called. Did call innerCompletion: %p", &v13, 0xCu);
      }
    }
  }
}

- (void)scrollTranscriptToEntryViewInsertionTimeWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (animationCopy)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
      v8 = CKDebugNameForCKTranscriptScrollIntent([collectionView transcriptScrollIntent]);
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received request to figure out & scroll to latest desired time Animated: %@, currentIntent: %@", &v15, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained transcriptCollectionViewControllerWantsCurrentDesiredIntent:self];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = CKDebugNameForCKTranscriptScrollIntent(v10);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Delegate informed us that the desired intent is: %@", &v15, 0xCu);
    }
  }

  collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView2 setTranscriptScrollIntent:v10];

  if (animationCopy)
  {
    +[CKScrollViewAnimationProperties systemDefaultScrollAnimation];
  }

  else
  {
    +[CKScrollViewAnimationProperties unanimated];
  }
  v14 = ;
  [(CKTranscriptCollectionViewController *)self enforceTranscriptScrollIntentWithAnimationProperties:v14];
}

- (void)enforceTranscriptScrollIntentWithAnimationProperties:(id)properties
{
  v26 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v22 = 138543362;
    v23 = propertiesCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received request to enforce transcript scrollIntent. Animation: %{public}@", &v22, 0xCu);
  }

  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  transcriptScrollIntent = [collectionView transcriptScrollIntent];

  v8 = CKDebugNameForCKTranscriptScrollIntent(transcriptScrollIntent);
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v22 = 138543618;
    v23 = v8;
    v24 = 2114;
    v25 = propertiesCopy;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Enforcing transcript scroll intent %{public}@ with animation: %{public}@", &v22, 0x16u);
  }

  if (transcriptScrollIntent <= 1)
  {
    if (transcriptScrollIntent)
    {
      if (transcriptScrollIntent == 1)
      {
        [(CKTranscriptCollectionView *)self->_collectionView correctOverscrollIfNecessaryWithAnimationProperties:propertiesCopy];
      }

      goto LABEL_22;
    }

    WeakRetained = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
    collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
    [(CKTranscriptCollectionViewController *)self _computedContentInsets];
    [collectionView2 scrollToBottomHidingMessageAtIndexPath:WeakRetained computedInsets:propertiesCopy animationProperties:?];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  switch(transcriptScrollIntent)
  {
    case 2:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
      highlightedMessageScrollContext = [collectionView2 highlightedMessageScrollContext];
      [WeakRetained transcriptCollectionViewController:self shouldScrollToHighlightedMessage:highlightedMessageScrollContext];

      goto LABEL_20;
    case 6:
      v19 = +[CKUIBehavior sharedBehaviors];
      scrollToBottomStopsAtTopOfLastBubble = [v19 scrollToBottomStopsAtTopOfLastBubble];

      if (!scrollToBottomStopsAtTopOfLastBubble)
      {
        if (![(CKViewController *)self deferredAppeared])
        {
          v21 = +[CKScrollViewAnimationProperties unanimated];

          propertiesCopy = v21;
        }

        WeakRetained = [(CKTranscriptCollectionViewController *)self collectionView];
        [(CKTranscriptCollectionViewController *)self _computedContentInsets];
        [WeakRetained scrollToBottomWithAnimationProperties:propertiesCopy computedInsets:?];
        goto LABEL_21;
      }

      [(CKTranscriptCollectionViewController *)self scrollToTopOfLastBubbleCellWithAnimationProperties:propertiesCopy];
      break;
    case 9:
      WeakRetained = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
      deferredAppeared = [(CKViewController *)self deferredAppeared];
      if (!deferredAppeared)
      {
        v12 = +[CKScrollViewAnimationProperties unanimated];

        collectionView3 = [(CKTranscriptCollectionViewController *)self collectionView];
        [collectionView3 beginDisablingTranscriptDynamicsForReason:17];

        propertiesCopy = v12;
      }

      collectionView4 = [(CKTranscriptCollectionViewController *)self collectionView];
      collectionView5 = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView5 contentInset];
      [collectionView4 scrollToBottomHidingMessageAtIndexPath:WeakRetained computedInsets:propertiesCopy animationProperties:?];

      if (!deferredAppeared)
      {
        collectionView6 = [(CKTranscriptCollectionViewController *)self collectionView];
        [collectionView6 endDisablingTranscriptDynamicsForReason:17];
      }

      goto LABEL_21;
  }

LABEL_22:
}

- (void)stopPlayingAudio
{
  v3 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  audioController = [v3 audioController];
  [audioController stop];
}

- (BOOL)canRaiseToListen
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (+[CKRaiseGesture isRaiseGestureEnabled])
  {
    v3 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
    audioController = [v3 audioController];
    isPlaying = [audioController isPlaying];

    if (isPlaying)
    {
      *(v11 + 24) = 1;
    }

    else
    {
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__CKTranscriptCollectionViewController_canRaiseToListen__block_invoke;
      v9[3] = &unk_1E72EEC48;
      v9[4] = &v10;
      [chatItems enumerateObjectsWithOptions:2 usingBlock:v9];
    }
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __56__CKTranscriptCollectionViewController_canRaiseToListen__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v11;
  if (isKindOfClass)
  {
    v8 = v11;
    v9 = [v8 mediaObject];
    v10 = [v9 shouldSuppressPreview];

    if ((v10 & 1) == 0 && ([v8 isFromMe] & 1) == 0 && (objc_msgSend(v8, "isPlayed") & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }

    v7 = v11;
  }
}

- (BOOL)canRaiseToTalk
{
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  isStewieConversation = [conversation isStewieConversation];

  if (isStewieConversation)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v12 = 0;
        v6 = "Raise to talk disabled for Stewie";
        v7 = &v12;
LABEL_9:
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    return 0;
  }

  conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
  isReadOnlyChat = [conversation2 isReadOnlyChat];

  if (isReadOnlyChat)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v11 = 0;
        v6 = "Raise to talk disabled for read only chats";
        v7 = &v11;
        goto LABEL_9;
      }

LABEL_10:
    }

    return 0;
  }

  return +[CKRaiseGesture isRaiseGestureEnabled];
}

- (void)raiseGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  isBlockedByCommunicationLimits = [conversation isBlockedByCommunicationLimits];

  if ((isBlockedByCommunicationLimits & 1) == 0)
  {
    [(CKTranscriptCollectionViewController *)self __raiseGestureRecognized:recognizedCopy];
  }
}

- (void)__raiseGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  v5 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  audioController = [v5 audioController];

  LODWORD(v5) = [recognizedCopy isRecognized];
  if (v5)
  {
    if (audioController)
    {
      [(CKAudioController *)audioController setShouldUseSpeaker:0];
      if (![(CKAudioController *)audioController isPlaying])
      {
        [(CKAudioController *)audioController playAfterDelay:0.5];
      }
    }

    else
    {
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      __ck_indexesOfUnplayedAudioMessages = [chatItems __ck_indexesOfUnplayedAudioMessages];
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(__ck_indexesOfUnplayedAudioMessages, "count")}];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65__CKTranscriptCollectionViewController___raiseGestureRecognized___block_invoke;
      v14[3] = &unk_1E72F26D0;
      v15 = v9;
      v10 = v9;
      [chatItems enumerateObjectsAtIndexes:__ck_indexesOfUnplayedAudioMessages options:0 usingBlock:v14];
      v11 = [CKAudioController alloc];
      conversation = [(CKTranscriptCollectionViewController *)self conversation];
      audioController = [(CKAudioController *)v11 initWithMediaObjects:v10 conversation:conversation];

      [(CKAudioController *)audioController setDelegate:self];
      v13 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
      [v13 setAudioController:audioController];

      [(CKAudioController *)audioController setShouldUseSpeaker:0];
      [(CKAudioController *)audioController playAfterDelay:0.5];
    }
  }

  else
  {
    [(CKAudioController *)audioController pause];
  }
}

void __65__CKTranscriptCollectionViewController___raiseGestureRecognized___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mediaObject];
  [v2 addObject:v3];
}

- (void)setDockingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled && self->_dockingEnabled != enabledCopy)
  {
    self->_dockingEnabled = enabledCopy;
    [(CKTranscriptCollectionViewController *)self updateDockingMetricsIfNeeded];
    if (enabledCopy)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:3];
      [(CKTranscriptCollectionViewController *)self setDockingImpactGenerator:v7];
    }

    else
    {

      [(CKTranscriptCollectionViewController *)self setDockingImpactGenerator:0];
    }
  }
}

- (void)updateDockingStateIfNeeded
{
  if ([(CKTranscriptCollectionViewController *)self isDockingEnabled])
  {
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    v9 = v6;
    v10 = v5;
    v11 = v4;
    v12 = v3;
    if (v8)
    {
      delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate2 transcriptCollectionViewControllerComputedInsets:self];
      v12 = v14;
      v11 = v15;
      v10 = v16;
      v9 = v17;
    }

    delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
      v21 = [delegate4 transcriptCollectionViewControllerShouldSuppressDockingBehavior:self];
    }

    else
    {
      v21 = 0;
    }

    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    shouldAdjustContentOffsetForContentSizeChangeIfNeeded = [collectionView shouldAdjustContentOffsetForContentSizeChangeIfNeeded];

    collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
    v29 = collectionView2;
    if (v11 == v4 && v12 == v3 && v9 == v6 && v10 == v5)
    {
      goto LABEL_40;
    }

    v33 = v21 | shouldAdjustContentOffsetForContentSizeChangeIfNeeded;
    [collectionView2 __ck_bottomOffsetWithComputedInsets:{v12, v11, v10, v9}];
    v35 = v34;
    v36 = +[CKUIBehavior sharedBehaviors];
    [v36 transcriptDockingDisablementThreshold];
    v38 = v35 - v37;

    if ([v29 isPagingEnabled])
    {
      if (v33 || ([v29 contentOffset], v39 <= v38))
      {
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "Docking: disabled paging", buf, 2u);
          }
        }

        v41 = 0;
LABEL_31:
        [v29 setPagingEnabled:v41];
        self->_transcriptPagingEnablementChangedDuringScroll = 1;
LABEL_40:

        return;
      }
    }

    else if (v33)
    {
      goto LABEL_40;
    }

    if ([v29 isPagingEnabled])
    {
      goto LABEL_40;
    }

    [v29 contentOffset];
    if (v42 <= v38)
    {
      goto LABEL_40;
    }

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *v45 = 0;
        _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "Docking: enabled paging", v45, 2u);
      }
    }

    v41 = 1;
    goto LABEL_31;
  }

  collectionView3 = [(CKTranscriptCollectionViewController *)self collectionView];
  isPagingEnabled = [collectionView3 isPagingEnabled];

  if (isPagingEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v44 = 0;
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Docking: paging was enabled, but docking is disabled, so disabling paging", v44, 2u);
      }
    }

    collectionView4 = [(CKTranscriptCollectionViewController *)self collectionView];
    [collectionView4 setPagingEnabled:0];

    self->_transcriptPagingEnablementChangedDuringScroll = 1;
  }
}

- (NSMutableSet)currentEffectDecorationViews
{
  currentEffectDecorationViews = self->_currentEffectDecorationViews;
  if (!currentEffectDecorationViews)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = self->_currentEffectDecorationViews;
    self->_currentEffectDecorationViews = v4;

    currentEffectDecorationViews = self->_currentEffectDecorationViews;
  }

  return currentEffectDecorationViews;
}

- (void)startFullscreenEffectIfNeededForChatItem:(id)item
{
  itemCopy = item;
  messageItem = [itemCopy messageItem];
  unsentIsFromMeItem = [messageItem unsentIsFromMeItem];

  if (unsentIsFromMeItem)
  {
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate transcriptCollectionViewControllerWillBeginFullscreenEffectAnimationForOutgoingMessage:self];
  }

  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  textInputMode = [(CKTranscriptCollectionViewController *)self textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];
  [fullscreenEffectManager startFullscreenEffectForChatItem:itemCopy language:primaryLanguage];
}

- (void)stopFullscreenEffect
{
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [fullscreenEffectManager stopFullscreenEffect];
}

- (BOOL)isVisiblePlugin:(id)plugin
{
  v21 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(visibleCells);
        }

        v11 = [(CKTranscriptCollectionViewController *)self chatItemForCell:*(*(&v16 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bundleIdentifier = [v11 bundleIdentifier];
          v13 = [bundleIdentifier isEqualToString:pluginCopy];

          if (v13)
          {

            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)hasRecentTouchForSendingPlugin:(id)plugin
{
  pluginCopy = plugin;
  mostRecentlyTouchedPlugin = [(CKTranscriptCollectionViewController *)self mostRecentlyTouchedPlugin];
  v6 = [mostRecentlyTouchedPlugin isEqualToString:pluginCopy];

  return v6;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  chat = [(CKTranscriptCollectionViewController *)self chat];
  v5 = *MEMORY[0x1E69A57C0];
  if (([chat isHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57C0]] & 1) == 0)
  {
    [chat beginHoldingChatItemsUpdatesForReason:v5];
  }

  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView setTranscriptScrollIntent:5];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer locationInView:collectionView];
  v9 = v8;

  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout setAnchorYPosition:v9];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"transcriptCollectionViewWillBeginDragging" object:0];

  [(CKTranscriptCollectionViewController *)self stopPluginPlayback];
  [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:1];
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [draggingCopy contentOffset];
    [delegate2 transcriptCollectionViewController:self willBeginDragging:?];
  }

  groupTypingAvatarAnimationCoordinator = [(CKTranscriptCollectionViewController *)self groupTypingAvatarAnimationCoordinator];
  [groupTypingAvatarAnimationCoordinator endAnimation];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  offset->x = 0.0;
  [(CKTranscriptCollectionViewController *)self adjustTargetContentOffsetToCurrentTimeIfNeeded:offset];
  panGestureRecognizer = [draggingCopy panGestureRecognizer];
  _canPanVertically = [panGestureRecognizer _canPanVertically];

  if (_canPanVertically)
  {
    [(CKTranscriptCollectionViewController *)self updateTranscriptScrollIntentForUserScrollToContentOffset:offset->x, offset->y];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Not updating scroll intent for user drag gesture because vertical panning is disabled. Probably during a swipe to reply.", v26, 2u);
    }

    [(CKTranscriptCollectionViewController *)self _updateTranscriptScrollIntentToBottomOrHistoryOrDockedBasedOnCurrentContentOffset];
  }

  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout setTargetContentOffset:{offset->x, offset->y}];

  [(CKTranscriptCollectionViewController *)self _loadMessagesIfNeededWithTargetContentOffset:0 forKeyboardNavigation:offset->x, offset->y];
  isPagingEnabled = [draggingCopy isPagingEnabled];
  [draggingCopy _pageDecelerationTarget];
  v14 = CKFloatApproximatelyEqualToFloatWithTolerance(offset->y, v13, 1.0);
  if ([(CKTranscriptCollectionViewController *)self isDockingEnabled])
  {
    if (isPagingEnabled)
    {
      if (v14)
      {
        dockingImpactGenerator = [(CKTranscriptCollectionViewController *)self dockingImpactGenerator];
        [dockingImpactGenerator impactOccurred];

        delegate = [(CKTranscriptCollectionViewController *)self delegate];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          [draggingCopy _pageDecelerationTarget];
          v19 = v18;
          [draggingCopy __ck_bottomOffset];
          v21 = CKFloatApproximatelyEqualToFloatWithTolerance(v19, v20, 1.0);
          delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
          [delegate2 transcriptCollectionViewController:self dockedStateDidChange:v21];
        }
      }
    }
  }

  delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
    [draggingCopy contentOffset];
    [delegate4 transcriptCollectionViewController:self willEndDragging:offset withVelocity:? targetContentOffset:?];
  }
}

- (void)adjustTargetContentOffsetToCurrentTimeIfNeeded:(CGPoint *)needed
{
  if ([(CKTranscriptCollectionViewController *)self isContentOffsetAtCurrentTime:needed->x, needed->y])
  {
    latestScheduledMessageIndexPath = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    [(CKTranscriptCollectionViewController *)self _computedContentInsets];
    [collectionView __ck_bottomOffsetHidingIndexPath:latestScheduledMessageIndexPath computedInsets:?];
    needed->y = v6;
  }
}

- (BOOL)isContentOffsetAtCurrentTime:(CGPoint)time
{
  y = time.y;
  x = time.x;
  v21 = *MEMORY[0x1E69E9840];
  latestScheduledMessageIndexPath = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
  [(CKTranscriptCollectionViewController *)self _platformSpecificBottomContentOffset];
  v8 = v7;
  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  v10 = [collectionViewLayout layoutAttributesForItemAtIndexPath:latestScheduledMessageIndexPath];

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 largeTranscriptSpace];
  v13 = v12;

  [v10 frame];
  if (y >= v8 - v13 && y <= v8 + v14 * 0.75)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v22.x = x;
        v22.y = y;
        v17 = NSStringFromCGPoint(v22);
        v19 = 138412290;
        v20 = v17;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "We're currently at or around the currentTime offset, currentOffset: %@", &v19, 0xCu);
      }
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isContentOffsetDocked:(CGPoint)docked
{
  y = docked.y;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    v8 = [delegate2 transcriptCollectionViewControllerDockingEnabled:self];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
    v13 = [delegate4 transcriptCollectionViewControllerShouldSuppressDockingBehavior:self];
  }

  else
  {
    v13 = 1;
  }

  if (self->_transcriptPagingEnablementChangedDuringScroll)
  {
    if (([(CKViewController *)self deferredAppeared]| v9 | v13))
    {
      return 0;
    }
  }

  else if ((v9 | v13))
  {
    return 0;
  }

  [(CKTranscriptCollectionViewController *)self _computedContentInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView __ck_bottomOffsetWithComputedInsets:{v16, v18, v20, v22}];
  v25 = v24;

  v26 = +[CKUIBehavior sharedBehaviors];
  [v26 transcriptDockingDisablementThreshold];
  v28 = v25 + v27;

  return y >= v28;
}

- (BOOL)isContentOffsetBelowFutureMessages:(CGPoint)messages
{
  y = messages.y;
  v19 = *MEMORY[0x1E69E9840];
  latestScheduledMessageIndexPath = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
  v6 = latestScheduledMessageIndexPath;
  if (latestScheduledMessageIndexPath && [latestScheduledMessageIndexPath item])
  {
    [(CKTranscriptCollectionViewController *)self _platformSpecificBottomContentOffset];
    v8 = v7;
    v9 = v7 + -1.0;
    v10 = IMLogHandleForCategory();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    v12 = y >= v9;
    if (y < v9)
    {
      if (v11)
      {
        v15 = 134218240;
        v16 = y;
        v17 = 2048;
        v18 = v8;
        v13 = "Content offset of %.2f is above bottom offset %.2f.";
        goto LABEL_9;
      }
    }

    else if (v11)
    {
      v15 = 134218240;
      v16 = y;
      v17 = 2048;
      v18 = v8;
      v13 = "Content offset of %.2f is at/below the bottom offset of %.2f.";
LABEL_9:
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, v13, &v15, 0x16u);
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)isContentOffsetBelowTopOfLastMessage:(CGPoint)message
{
  y = message.y;
  v15 = *MEMORY[0x1E69E9840];
  [(CKTranscriptCollectionViewController *)self _platformSpecificBottomContentOffset];
  v5 = v4;
  v6 = v4 + 1.0;
  v7 = IMLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (y < v6)
  {
    if (v8)
    {
      v11 = 134218240;
      v12 = y;
      v13 = 2048;
      v14 = v5;
      v9 = "Content offset of %.2f is above top of last message offset %.2f.";
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v11 = 134218240;
    v12 = y;
    v13 = 2048;
    v14 = v5;
    v9 = "Content offset of %.2f is at/below the top of last message offset of %.2f.";
LABEL_6:
    _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, v9, &v11, 0x16u);
  }

  return y >= v6;
}

- (void)updateTranscriptScrollIntentForUserScrollToContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  transcriptScrollIntent = [collectionView transcriptScrollIntent];
  if (transcriptScrollIntent == 3)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [CKTranscriptCollectionViewController updateTranscriptScrollIntentForUserScrollToContentOffset:];
    }

    goto LABEL_7;
  }

  if (transcriptScrollIntent == 4)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [CKTranscriptCollectionViewController updateTranscriptScrollIntentForUserScrollToContentOffset:];
    }

LABEL_7:
  }

  [(CKTranscriptCollectionViewController *)self _updateTranscriptScrollIntentForContentOffset:@"User scroll" reason:x, y];
}

- (void)updateTranscriptScrollIntentToBottomOrHistoryBasedOnCurrentContentOffset
{
  [(CKTranscriptCollectionViewController *)self _updateTranscriptScrollIntentToBottomOrHistoryOrDockedBasedOnCurrentContentOffset];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  transcriptScrollIntent = [collectionView transcriptScrollIntent];

  if (transcriptScrollIntent == 9)
  {
    collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
    [collectionView2 setTranscriptScrollIntent:0];
  }
}

- (void)_updateTranscriptScrollIntentToBottomOrHistoryOrDockedBasedOnCurrentContentOffset
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  v7 = v6;

  [(CKTranscriptCollectionViewController *)self _updateTranscriptScrollIntentForContentOffset:@"Current content offset" reason:v5, v7];
}

- (void)_updateTranscriptScrollIntentForContentOffset:(CGPoint)offset reason:(id)reason
{
  y = offset.y;
  x = offset.x;
  v16 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v9 = [(CKTranscriptCollectionViewController *)self desiredTranscriptScrollIntentForContentOffset:x, y];
  [collectionView invalidateNeedsContentOffsetAdjustmentForNextContentSizeChange];
  v10 = CKDebugNameForCKTranscriptScrollIntent(v9);
  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = reasonCopy;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Updating scroll intent to %{public}@ reason: %{public}@", &v12, 0x16u);
  }

  [collectionView setTranscriptScrollIntent:v9];
}

- (int64_t)desiredTranscriptScrollIntentForContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v17 = *MEMORY[0x1E69E9840];
  v6 = +[CKUIBehavior sharedBehaviors];
  if ([v6 scrollToBottomStopsAtTopOfLastBubble])
  {
    v7 = [(CKTranscriptCollectionViewController *)self isContentOffsetBelowTopOfLastMessage:x, y];

    if (v7)
    {
      v8 = 7;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v8 = 1;
  if (![(CKTranscriptCollectionViewController *)self isLoadMoreSpinnerAboutToBeVisibleForDirection:1 withTargetContentOffset:x, y])
  {
    if ([(CKTranscriptCollectionViewController *)self isContentOffsetDocked:x, y])
    {
      v8 = 9;
    }

    else if ([(CKTranscriptCollectionViewController *)self isContentOffsetAtCurrentTime:x, y])
    {
      v8 = 0;
    }

    else if ([(CKTranscriptCollectionViewController *)self isContentOffsetBelowFutureMessages:x, y])
    {
      v8 = 6;
    }

    else
    {
      v8 = 1;
    }
  }

LABEL_13:
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = CKDebugNameForCKTranscriptScrollIntent(v8);
    v18.x = x;
    v18.y = y;
    v11 = NSStringFromCGPoint(v18);
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Calculated desiredTranscriptScrollIntent as %{public}@ for offset %{public}@", &v13, 0x16u);
  }

  return v8;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  chat = [(CKTranscriptCollectionViewController *)self chat];
  [chat endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57C0]];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  if ([collectionView transcriptScrollIntent] == 5)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController scrollViewDidEndDragging:willDecelerate:];
    }

    [(CKTranscriptCollectionViewController *)self _updateTranscriptScrollIntentToBottomOrHistoryOrDockedBasedOnCurrentContentOffset];
  }

  [draggingCopy contentOffset];
  if (v10 == 0.0 && ([draggingCopy isDragging] & 1) == 0)
  {
    [(CKTranscriptCollectionViewController *)self setPeeking:0];
  }

  [(CKTranscriptCollectionViewController *)self setPeekSampleTranslation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (!decelerate)
  {
    [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:1];
    [(CKTranscriptCollectionViewController *)self _collectionViewDidRestAsync:0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v40 = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  transcriptBackgroundScrollingObserver = self->_transcriptBackgroundScrollingObserver;
  [scrollCopy _verticalVelocity];
  [(CKTranscriptBackgroundScrollingObserver *)transcriptBackgroundScrollingObserver tick:?];
  if ([(CKTranscriptBackgroundScrollingObserver *)self->_transcriptBackgroundScrollingObserver shouldSendStartScrolling])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Should send START scrolling", &v36, 2u);
      }
    }

    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate2 transcriptCollectionViewController:self backgroundScrollVelocityThresholdChanged:1];
    }
  }

  if ([(CKTranscriptBackgroundScrollingObserver *)self->_transcriptBackgroundScrollingObserver shouldSendStopScrolling])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Should send STOP scrolling", &v36, 2u);
      }
    }

    delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate4 transcriptCollectionViewController:self backgroundScrollVelocityThresholdChanged:0];
    }
  }

  [scrollCopy contentOffset];
  if (v14 == 0.0 && ([scrollCopy isDragging] & 1) == 0)
  {
    [(CKTranscriptCollectionViewController *)self setPeeking:0];
  }

  groupTypingAvatarAnimationCoordinator = [(CKTranscriptCollectionViewController *)self groupTypingAvatarAnimationCoordinator];
  [groupTypingAvatarAnimationCoordinator updateAnimationWhileInflight];

  impactEffectManager = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  [impactEffectManager matchScrollViewOffset:scrollCopy];

  [(CKTranscriptCollectionViewController *)self cullCellSubviews];
  [(CKTranscriptCollectionViewController *)self clearRecentPluginTouch];
  delegate5 = [(CKTranscriptCollectionViewController *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate6 = [(CKTranscriptCollectionViewController *)self delegate];
    [scrollCopy contentOffset];
    [delegate6 transcriptCollectionViewController:self didScroll:?];
  }

  if (CKIsRunningInMacCatalyst())
  {
    v20 = +[CKUIBehavior sharedBehaviors];
    shouldUseDynamicScrolling = [v20 shouldUseDynamicScrolling];

    if (shouldUseDynamicScrolling)
    {
      if (([scrollCopy isDecelerating] & 1) == 0)
      {
        panGestureRecognizer = [scrollCopy panGestureRecognizer];
        v23 = [panGestureRecognizer state] > 0;

        if (v23)
        {
          panGestureRecognizer2 = [scrollCopy panGestureRecognizer];
          [panGestureRecognizer2 velocityInView:scrollCopy];
          v26 = v25;
          v28 = v27;

          collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
          collectionViewLayout = [collectionView collectionViewLayout];

          if ((v28 == 0.0) != [collectionViewLayout disableDynamicsWhileScrolling])
          {
            [collectionViewLayout setDisableDynamicsWhileScrolling:v28 == 0.0];
            if (IMOSLoggingEnabled())
            {
              v31 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v41.x = v26;
                v41.y = v28;
                v32 = NSStringFromCGPoint(v41);
                v33 = v32;
                v34 = @"NO";
                if (v28 == 0.0)
                {
                  v34 = @"YES";
                }

                v36 = 138412546;
                v37 = v34;
                v38 = 2112;
                v39 = v32;
                _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "Changing dynamicsDisabled on scroll to %@ - the scroll velocity is %@", &v36, 0x16u);
              }
            }
          }
        }
      }
    }
  }

  [(CKTranscriptCollectionViewController *)self updateDockingStateIfNeeded];
  presentedChatItemScrollOffset = [(CKTranscriptCollectionViewController *)self presentedChatItemScrollOffset];

  if (presentedChatItemScrollOffset)
  {
    [(CKTranscriptCollectionViewController *)self setPresentedChatItemScrollOffset:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:1];
  [(CKTranscriptCollectionViewController *)self _collectionViewDidRestAsync:0];
  if (self->_transcriptPagingEnablementChangedDuringScroll)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Docking: Scroll view finished decelerating after a mid-scroll paging enablement change, recalculating scroll intent.", v8, 2u);
      }
    }

    [(CKTranscriptCollectionViewController *)self _handleScrollViewAtRestAfterMidScrollPagingEnablementChange];
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator resetBackoffState];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:@"scrollViewDidEndDecelerating"];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:1];
  [(CKTranscriptCollectionViewController *)self _collectionViewDidRestAsync:0];
  if (self->_transcriptPagingEnablementChangedDuringScroll)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Docking: Scroll view finished programatic scroll animation after a mid-scroll paging enablement change, recalculating scroll intent.", v6, 2u);
      }
    }

    [(CKTranscriptCollectionViewController *)self _handleScrollViewAtRestAfterMidScrollPagingEnablementChange];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained transcriptCollectionViewControllerShouldShouldScrollToTopForStatusBarTap:self];

  v6 = IMLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Scrolling to top (probably because the user tapped status bar)", buf, 2u);
    }

    [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:1];
  }

  else
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Returning NO from scrollViewShouldScrollToTop", v9, 2u);
    }
  }

  return v5;
}

- (void)scrollViewDidScrollToTop:(id)top
{
  topCopy = top;
  [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:1];
  [topCopy contentOffset];
  v6 = v5;
  v8 = v7;

  [(CKTranscriptCollectionViewController *)self updateTranscriptScrollIntentForUserScrollToContentOffset:v6, v8];

  [(CKTranscriptCollectionViewController *)self _collectionViewDidRestAsync:1];
}

- (void)_handleScrollViewAtRestAfterMidScrollPagingEnablementChange
{
  [(CKTranscriptCollectionViewController *)self _updateTranscriptScrollIntentToBottomOrHistoryOrDockedBasedOnCurrentContentOffset];

  [(CKTranscriptCollectionViewController *)self setTranscriptPagingEnablementChangedDuringScroll:0];
}

- (void)_setHoldingWhilePresentingKeyboardForChatItem:(BOOL)item
{
  itemCopy = item;
  chat = [(CKTranscriptCollectionViewController *)self chat];
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  v6 = fullscreenEffectManager;
  if (itemCopy)
  {
    [fullscreenEffectManager beginHoldingUpdatesForKey:@"CKFullscreenUpdatesPresentingKeyboardForChatItem"];
    [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:16];
    [chat beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57B8]];
  }

  else
  {
    [fullscreenEffectManager endHoldingUpdatesForKey:@"CKFullscreenUpdatesPresentingKeyboardForChatItem"];
    [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:16];
    [chat endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57B8]];
  }
}

- (CGRect)collectionViewAdjustedContentFrameWithKeyboard:(UIEdgeInsets)keyboard
{
  right = keyboard.right;
  bottom = keyboard.bottom;
  left = keyboard.left;
  top = keyboard.top;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView adjustedContentInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:CKNonFlatDeviceOrientation() ignoreInputView:1];
  v17 = v13 + v16;
  [collectionView frame];
  v20 = v9 + v19;
  v22 = v21 - (v11 + v15);
  v24 = v23 - (v9 + v17);
  v25 = left + v11 + v18;
  v26 = top + v20;
  v27 = v22 - (left + right);
  v28 = v24 - (top + bottom);

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)beginPresentingChatItemForKeyboardPresentation:(id)presentation layoutAreaContentInsets:(UIEdgeInsets)insets completion:(id)completion
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  presentationCopy = presentation;
  completionCopy = completion;
  [(CKTranscriptCollectionViewController *)self _setHoldingWhilePresentingKeyboardForChatItem:1];
  [(CKTranscriptCollectionViewController *)self setIsPresentingChatItemForKeyboard:1];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView setIgnoresAutomaticScrollsTowardBottom:1];

  collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView2 setScrollEnabled:0];

  v15 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__CKTranscriptCollectionViewController_beginPresentingChatItemForKeyboardPresentation_layoutAreaContentInsets_completion___block_invoke;
  block[3] = &unk_1E72F2720;
  block[4] = self;
  v19 = presentationCopy;
  v21 = top;
  v22 = left;
  v23 = bottom;
  v24 = right;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = presentationCopy;
  dispatch_after(v15, MEMORY[0x1E69E96A0], block);
}

void __122__CKTranscriptCollectionViewController_beginPresentingChatItemForKeyboardPresentation_layoutAreaContentInsets_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 contentOffset];
  v48 = v4;
  v49 = v3;
  v5 = [*(a1 + 32) balloonViewForChatItem:*(a1 + 40)];
  v6 = [v2 window];
  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v5 superview];
  [v6 convertRect:v15 fromView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [*(a1 + 32) collectionViewAdjustedContentFrameWithKeyboard:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v2 window];
  v33 = [v2 superview];
  [v32 convertRect:v33 fromView:{v25, v27, v29, v31}];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  if (v19 >= v37)
  {
    v54.origin.x = v17;
    v54.origin.y = v19;
    v54.size.width = v21;
    v54.size.height = v23;
    MaxY = CGRectGetMaxY(v54);
    v55.origin.x = v35;
    v55.origin.y = v37;
    v55.size.width = v39;
    v55.size.height = v41;
    v44 = MaxY <= CGRectGetMaxY(v55);
    v42 = v19;
    if (!v44)
    {
      v56.origin.x = v35;
      v56.origin.y = v37;
      v56.size.width = v39;
      v56.size.height = v41;
      v42 = CGRectGetMaxY(v56) - v23;
    }
  }

  else
  {
    v42 = v37;
  }

  v45 = v19 - v42;
  if (v45 != 0.0)
  {
    v46 = [*(a1 + 32) collectionView];
    [v46 setScrollEnabled:1];

    v47 = *(a1 + 32);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __122__CKTranscriptCollectionViewController_beginPresentingChatItemForKeyboardPresentation_layoutAreaContentInsets_completion___block_invoke_2;
    v50[3] = &unk_1E72F26F8;
    v50[4] = v47;
    v52 = v49;
    v53 = v48;
    v51 = *(a1 + 48);
    [v47 verticallyScrollTranscriptByAmount:1 animated:v50 completion:v45];
  }
}

uint64_t __122__CKTranscriptCollectionViewController_beginPresentingChatItemForKeyboardPresentation_layoutAreaContentInsets_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 setScrollEnabled:1];

  v5 = *(a1 + 48);
  v3 = [MEMORY[0x1E696B098] valueWithBytes:&v5 objCType:"{CGPoint=dd}"];
  [*(a1 + 32) setPresentedChatItemScrollOffset:v3];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)endPresentingChatItemForKeyboardPresentation:(id)presentation completion:(id)completion
{
  completionCopy = completion;
  if ([(CKTranscriptCollectionViewController *)self isPresentingChatItemForKeyboard])
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    [collectionView setScrollEnabled:1];

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __96__CKTranscriptCollectionViewController_endPresentingChatItemForKeyboardPresentation_completion___block_invoke;
    v18 = &unk_1E72ED1C8;
    selfCopy = self;
    v20 = completionCopy;
    v7 = _Block_copy(&v15);
    v8 = [(CKTranscriptCollectionViewController *)self presentedChatItemScrollOffset:v15];

    if (v8)
    {
      presentedChatItemScrollOffset = [(CKTranscriptCollectionViewController *)self presentedChatItemScrollOffset];
      [presentedChatItemScrollOffset pointValue];
      v11 = v10;

      [(CKTranscriptCollectionViewController *)self setPresentedChatItemScrollOffset:0];
      collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView2 contentOffset];
      v14 = v13;

      [(CKTranscriptCollectionViewController *)self verticallyScrollTranscriptByAmount:1 animated:v7 completion:v11 - v14];
    }

    else
    {
      v7[2](v7);
    }
  }
}

void __96__CKTranscriptCollectionViewController_endPresentingChatItemForKeyboardPresentation_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setHoldingWhilePresentingKeyboardForChatItem:0];
  [*(a1 + 32) setIsPresentingChatItemForKeyboard:0];
  v2 = [*(a1 + 32) collectionView];
  [v2 setScrollEnabled:1];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__CKTranscriptCollectionViewController_endPresentingChatItemForKeyboardPresentation_completion___block_invoke_2;
  block[3] = &unk_1E72EBA18;
  block[4] = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

void __96__CKTranscriptCollectionViewController_endPresentingChatItemForKeyboardPresentation_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 setIgnoresAutomaticScrollsTowardBottom:0];
}

- (void)stopPluginPlayback
{
  pluginPlaybackManager = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];
  [pluginPlaybackManager stopPlayback];
}

- (void)startPluginPlaybackAfterDelay:(double)delay
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__deferredStartPlayback object:0];

  [(CKTranscriptCollectionViewController *)self performSelector:sel__deferredStartPlayback withObject:0 afterDelay:delay];
}

- (void)_deferredStartPlayback
{
  if ([(CKTranscriptCollectionViewController *)self allowsPluginPlayback])
  {
    pluginPlaybackManager = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];
    isPlayingBack = [pluginPlaybackManager isPlayingBack];

    if ((isPlayingBack & 1) == 0)
    {
      collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
      indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
      [(CKTranscriptCollectionViewController *)self _startPlaybackWithIndexPaths:indexPathsForVisibleItems];
    }
  }
}

- (void)_startPlaybackWithIndexPaths:(id)paths
{
  v33 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = pathsCopy;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v8 = *v25;
    *&v7 = 138412546;
    v22 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (![v10 section])
        {
          item = [v10 item];
          chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
          LODWORD(item) = item < [chatItems count];

          if (item)
          {
            chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
            v14 = [chatItems2 objectAtIndex:{objc_msgSend(v10, "item")}];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              iMChatItem = [v15 IMChatItem];
              wantsAutoPlayback = [iMChatItem wantsAutoPlayback];

              if (wantsAutoPlayback)
              {
                [array addObject:v15];
              }
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v18 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                chatItems3 = [(CKTranscriptCollectionViewController *)self chatItems];
                *buf = v22;
                v29 = v10;
                v30 = 2112;
                v31 = chatItems3;
                _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Attempted to access chatItems out of bounds (%@): %@", buf, 0x16u);
              }
            }

            IMLogBacktrace();
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  [array sortUsingComparator:&__block_literal_global_664_0];
  [(CKTranscriptCollectionViewController *)self stopPluginPlayback];
  v20 = [[CKPluginPlaybackManager alloc] initWithPluginItems:array];
  [(CKPluginPlaybackManager *)v20 setDelegate:self];
  pluginPlaybackManager = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];
  [pluginPlaybackManager setDelegate:0];

  [(CKTranscriptCollectionViewController *)self setPluginPlaybackManager:v20];
  [(CKPluginPlaybackManager *)v20 startPlayback];
}

BOOL __69__CKTranscriptCollectionViewController__startPlaybackWithIndexPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 message];
  v6 = [v5 messageID];
  v7 = [v4 message];

  v8 = v6 > [v7 messageID];
  return v8;
}

- (void)pluginPlaybackManagerDidStopPlayback:(id)playback
{
  playbackCopy = playback;
  pluginPlaybackManager = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];

  if (pluginPlaybackManager == playbackCopy)
  {

    [(CKTranscriptCollectionViewController *)self setPluginPlaybackManager:0];
  }
}

- (void)collectionViewLayoutRestingDidChange:(id)change
{
  changeCopy = change;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewControllerRestingStateDidChange:self];

  LODWORD(delegate) = [changeCopy isResting];
  if (delegate)
  {

    [(CKTranscriptCollectionViewController *)self _collectionViewDidRestAsync:1];
  }
}

- (BOOL)collectionViewLayout:(id)layout hasPlayingOrPausedTextEffectForChatItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    _textContainsIMTextEffect = [itemCopy _textContainsIMTextEffect];
    _translationSecondaryTextContainsIMTextEffect = [itemCopy _translationSecondaryTextContainsIMTextEffect];
    if ((_textContainsIMTextEffect & 1) != 0 || _translationSecondaryTextContainsIMTextEffect) && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = [(CKTranscriptCollectionViewController *)self cellForChatItem:itemCopy];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        balloonView = [v11 balloonView];
        if (balloonView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          textView = [balloonView textView];
          v14 = textView;
          if (textView)
          {
            LOBYTE(isExpressiveTextEnabled) = [textView ck_hasPlayingOrPausedTextAnimator];
          }

          else
          {
            LOBYTE(isExpressiveTextEnabled) = 0;
          }
        }

        else
        {
          LOBYTE(isExpressiveTextEnabled) = 0;
        }
      }

      else
      {
        LOBYTE(isExpressiveTextEnabled) = 0;
      }
    }

    else
    {
      LOBYTE(isExpressiveTextEnabled) = 0;
    }
  }

  return isExpressiveTextEnabled;
}

- (void)_collectionViewDidRestAsync:(BOOL)async
{
  if (async)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__CKTranscriptCollectionViewController__collectionViewDidRestAsync___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    [collectionView contentOffset];
    v6 = v5;
    v8 = v7;
    if ([collectionView transcriptScrollIntent] == 6)
    {
      [(CKTranscriptCollectionViewController *)self _computedContentInsets];
      [collectionView __ck_bottomOffsetWithComputedInsets:?];
      v6 = v9;
      v8 = v10;
    }

    [(CKTranscriptCollectionViewController *)self _loadMessagesIfNeededWithTargetContentOffset:0 forKeyboardNavigation:v6, v8];
  }

  [(CKTranscriptCollectionViewController *)self pluginPlaybackDelay];
  [(CKTranscriptCollectionViewController *)self startPluginPlaybackAfterDelay:?];
}

uint64_t __68__CKTranscriptCollectionViewController__collectionViewDidRestAsync___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = *(a1 + 32);

  return [v7 _loadMessagesIfNeededWithTargetContentOffset:0 forKeyboardNavigation:{v4, v6}];
}

- (id)compositorDatasourceItemsForSection:(int64_t)section
{
  if (section == 1)
  {
    associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    goto LABEL_5;
  }

  if (!section)
  {
    associatedChatItems = [(CKTranscriptCollectionViewController *)self chatItems];
LABEL_5:
    v4 = associatedChatItems;
    if (associatedChatItems)
    {
      v5 = associatedChatItems;
      v4 = v5;
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;

    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)layoutGroupForDatasourceItems:(id)items environment:(id)environment layoutItems:(id)layoutItems
{
  v34 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  environmentCopy = environment;
  layoutItemsCopy = layoutItems;
  if ([itemsCopy count] >= 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = itemsCopy;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v11)
    {
      v12 = 0;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          customLayoutGroupProviderClass = [*(*(&v23 + 1) + 8 * i) customLayoutGroupProviderClass];
          v16 = customLayoutGroupProviderClass;
          if (v12)
          {
            if (v12 != customLayoutGroupProviderClass)
            {
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v28 = "[CKTranscriptCollectionViewController layoutGroupForDatasourceItems:environment:layoutItems:]";
                  v29 = 2112;
                  v30 = v12;
                  v31 = 2112;
                  v32 = v16;
                  _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "CKTranscriptCollectionViewController - %s got a layout group with differing layout group classes, returning nil. Expected %@ got %@", buf, 0x20u);
                }
              }

              goto LABEL_25;
            }
          }

          else
          {
            v12 = customLayoutGroupProviderClass;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      if (v12)
      {
        v17 = objc_alloc_init(v12);
        v18 = [v17 layoutGroupForDatasourceItems:v10 environment:environmentCopy layoutItems:layoutItemsCopy];

        goto LABEL_26;
      }
    }

    else
    {
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v28 = "[CKTranscriptCollectionViewController layoutGroupForDatasourceItems:environment:layoutItems:]";
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKTranscriptCollectionViewController - %s got a nil layout group provider for items %@", buf, 0x16u);
      }
    }
  }

LABEL_25:
  v18 = 0;
LABEL_26:

  return v18;
}

- (void)collectionViewWillScroll:(id)scroll targetContentOffset:(CGPoint *)offset
{
  v53 = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  if ([scrollCopy isDragging] && !-[CKTranscriptCollectionViewController isPeeking](self, "isPeeking"))
  {
    panGestureRecognizer = [scrollCopy panGestureRecognizer];
    [panGestureRecognizer translationInView:scrollCopy];
    v22 = v21;
    v24 = v23;

    [(CKTranscriptCollectionViewController *)self peekSampleTranslation];
    v26 = v25;
    v28 = v27 - v22;
    layer = [scrollCopy layer];
    flipsHorizontalAxis = [layer flipsHorizontalAxis];

    if (flipsHorizontalAxis)
    {
      v28 = -v28;
    }

    if (v28 >= 20.0)
    {
      v31 = v26 - v24;
      v32 = v28;
      if (fabs(atan2f(v31, v32) * 57.2957795) < 5.0)
      {
        [(CKTranscriptCollectionViewController *)self setPeeking:1];
        v22 = 20.0 - v28;
        panGestureRecognizer2 = [scrollCopy panGestureRecognizer];
        [panGestureRecognizer2 setTranslation:scrollCopy inView:{20.0 - v28, v24}];
      }

      [(CKTranscriptCollectionViewController *)self setPeekSampleTranslation:v22, v24];
    }

    offset->x = 0.0;
    goto LABEL_24;
  }

  if (offset->x == 0.0)
  {
LABEL_24:
    v34 = 0.0;
    goto LABEL_38;
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  [scrollCopy marginInsets];
  [v7 transcriptDrawerMaxContentOffsetXForMarginInsets:?];
  v9 = v8;
  layer2 = [scrollCopy layer];
  flipsHorizontalAxis2 = [layer2 flipsHorizontalAxis];

  x = offset->x;
  if (flipsHorizontalAxis2)
  {
    v13 = -x;
    if (v9 <= v13)
    {
      v13 = v9;
    }

    if (v13 >= 0.0)
    {
      v14 = -v13;
    }

    else
    {
      v14 = -0.0;
    }

    offset->x = v14;
    if (CKMainScreenScale_once_39 != -1)
    {
      [CKTranscriptCollectionViewController collectionViewWillScroll:targetContentOffset:];
    }

    v15 = *&CKMainScreenScale_sMainScreenScale_39;
    if (*&CKMainScreenScale_sMainScreenScale_39 == 0.0)
    {
      v15 = 1.0;
    }

    v16 = floor(v14 * v15) / v15;
    v17 = 0.0;
    if (v16 != 0.0)
    {
      v17 = offset->x;
    }

    offset->x = v17;
    [v7 transcriptDrawerGestureAcceleration];
    v19 = -offset->x;
  }

  else
  {
    if (x >= v9)
    {
      x = v9;
    }

    if (x >= 0.0)
    {
      v35 = x;
    }

    else
    {
      v35 = 0.0;
    }

    offset->x = v35;
    if (CKMainScreenScale_once_39 != -1)
    {
      [CKTranscriptCollectionViewController collectionViewWillScroll:targetContentOffset:];
    }

    v36 = *&CKMainScreenScale_sMainScreenScale_39;
    if (*&CKMainScreenScale_sMainScreenScale_39 == 0.0)
    {
      v36 = 1.0;
    }

    v37 = floor(v35 * v36) / v36;
    v38 = 0.0;
    if (v37 != 0.0)
    {
      v38 = offset->x;
    }

    offset->x = v38;
    [v7 transcriptDrawerGestureAcceleration];
    v19 = offset->x;
  }

  v34 = fmin(v18 * (v19 / v9), 1.0);

LABEL_38:
  v39 = +[CKUIBehavior sharedBehaviors];
  if ([v39 disableTranscriptTimestamps])
  {

    goto LABEL_40;
  }

  if (offset->x == 0.0)
  {
    [scrollCopy contentOffset];
    v41 = v40;

    if (v41 == 0.0)
    {
LABEL_40:
      if (CKIsRunningInMacCatalyst())
      {
        [(CKTranscriptCollectionViewController *)self hideTranscriptTimestampsIfNeeded];
      }

      goto LABEL_55;
    }
  }

  else
  {
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  visibleCells = [scrollCopy visibleCells];
  v43 = [visibleCells countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v49;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v49 != v45)
        {
          objc_enumerationMutation(visibleCells);
        }

        v47 = *(*(&v48 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [(CKTranscriptCollectionViewController *)self freezeReplyDecorationsIfNeededForCell:v47];
          [v47 setDrawerPercentRevealed:v34];
        }
      }

      v44 = [visibleCells countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v44);
  }

LABEL_55:
}

- (void)freezeReplyDecorationsIfNeededForCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = cellCopy;
    [v4 setShouldFreezeReplyDecorationsForTimestampReveal:{-[CKTranscriptCollectionViewController shouldFreezeReplyDecorationsForCell:](self, "shouldFreezeReplyDecorationsForCell:", v4)}];
  }
}

- (BOOL)shouldFreezeReplyDecorationsForCell:(id)cell
{
  cellCopy = cell;
  chat = [(CKTranscriptCollectionViewController *)self chat];
  isGroupChat = [chat isGroupChat];

  if (isGroupChat)
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      v8 = [(CKTranscriptCollectionViewController *)self chatItemForCell:cellCopy];
      iMChatItem = [v8 IMChatItem];
      isFromMe = [iMChatItem isFromMe];

      if (isFromMe)
      {
        isKindOfClass = 0;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }
    }
  }

  return isKindOfClass & 1;
}

- (void)collectionViewWillProgrammaticallyScroll:(id)scroll animated:(BOOL)animated
{
  if (animated)
  {
    [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:1];
  }
}

- (void)transcriptCollectionView:(id)view shouldScrollToHighlightedMessage:(id)message
{
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transcriptCollectionViewController:self shouldScrollToHighlightedMessage:messageCopy];
}

- (BOOL)isShowingTranscriptTimestamps
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v4 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(visibleCells);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v7 drawerPercentRevealed];
          if (v8 > 0.0)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)hideTranscriptTimestampsIfNeeded
{
  if ([(CKTranscriptCollectionViewController *)self isShowingTranscriptTimestamps])
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];
    v5 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__CKTranscriptCollectionViewController_hideTranscriptTimestampsIfNeeded__block_invoke;
    v7[3] = &unk_1E72EBA18;
    v8 = visibleCells;
    v6 = visibleCells;
    [v5 animateWithDuration:0 delay:v7 options:0 animations:0.25 completion:0.0];
  }
}

void __72__CKTranscriptCollectionViewController_hideTranscriptTimestampsIfNeeded__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
          [v7 setShouldFreezeReplyDecorationsForTimestampReveal:{0, v8}];
          [v7 setDrawerPercentRevealed:0.0];
          [v7 layoutIfNeeded];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)showTranscriptTimestamps
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__CKTranscriptCollectionViewController_showTranscriptTimestamps__block_invoke;
  v2[3] = &unk_1E72EBA18;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v2 options:0 animations:0.25 completion:0.0];
}

void __64__CKTranscriptCollectionViewController_showTranscriptTimestamps__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) collectionView];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 visibleCells];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 32) freezeReplyDecorationsIfNeededForCell:v8];
          [v8 setDrawerPercentRevealed:1.0];
          [v8 layoutIfNeeded];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (id)newTranscriptTextEffectCoordinatorForTranscriptCollectionViewController:(id)controller isInline:(BOOL)inline
{
  inlineCopy = inline;
  controllerCopy = controller;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (!isExpressiveTextEnabled)
  {
    goto LABEL_3;
  }

  v8 = +[CKPrintController sharedInstance];
  isPrinting = [v8 isPrinting];

  if (isPrinting)
  {
    goto LABEL_3;
  }

  if (inlineCopy)
  {
    if (!+[_TtC7ChatKit23CKTextEffectCoordinator inlineRepliesTextEffectCoordinationDisabled])
    {
      v12 = @"transcript_inline";
LABEL_10:
      v10 = [[_TtC7ChatKit23CKTextEffectCoordinator alloc] initWithLogIdentifier:v12];
      [(CKTextEffectCoordinator *)v10 setDelegate:controllerCopy];
      goto LABEL_4;
    }
  }

  else if (!+[_TtC7ChatKit23CKTextEffectCoordinator transcriptTextEffectCoordinationDisabled])
  {
    v12 = @"transcript";
    goto LABEL_10;
  }

LABEL_3:
  v10 = 0;
LABEL_4:

  return v10;
}

- (void)_textMessagePartItem:(id)item textBalloonView:(id)view getHasValidOrigin:(BOOL *)origin getHasValidSize:(BOOL *)size
{
  viewCopy = view;
  itemCopy = item;
  [itemCopy size];
  v11 = v10;
  v13 = v12;
  [itemCopy translationSecondaryTextSize];
  v15 = v14;
  showTranslationAlternateText = [itemCopy showTranslationAlternateText];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

  if (isCAShapeLayerBalloonsEnabled)
  {
    [viewCopy tailInsetsForPillSize:{v11, v13}];
    v13 = v20 + v13 + v19;
  }

  [viewCopy _computedTextViewFrameForBoundsSize:{v11, v13}];
  v22 = v21;
  v24 = v23;
  v41 = v25;
  v27 = v26;
  textView = [viewCopy textView];
  [textView frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if (showTranslationAlternateText)
  {
    v37 = v15 + v24;
  }

  else
  {
    v37 = v24;
  }

  if (showTranslationAlternateText)
  {
    v38 = v27 - v15;
  }

  else
  {
    v38 = v27;
  }

  v39 = CKPointApproximatelyEqualToPointWithTolerance(v30, v32, v22, v37, 0.51);
  if (origin)
  {
    *origin = v39;
  }

  v40 = CKSizeApproximatelyEqualToSizeWithTolerance(v34, v36, v41, v38, 0.51);
  if (size)
  {
    *size = v40;
  }
}

- (id)textEffectCoordinator:(id)coordinator explodeConfigurationForTextViewIdentifier:(id)identifier
{
  v32 = 0;
  v4 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItemGUID:identifier getChatItem:&v32];
  v5 = v32;
  v6 = v5;
  if (v4 && v5 && ([v5 isFromMe] & 1) != 0 && (v30 = 0u, v31 = 0u, v28 = 0u, v29 = 0u, v26 = 0u, v27 = 0u, v24 = 0u, v25 = 0u, objc_msgSend(v4, "balloonDescriptor"), !BYTE2(v24) && BYTE8(v25) < 2u))
  {
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v9 = CKUITraitCollectionForBalloonDescriptor(&v16);
    v10 = +[CKUIBehavior sharedBehaviors];
    theme = [v10 theme];
    transcriptBackgroundColor = [theme transcriptBackgroundColor];
    v13 = [transcriptBackgroundColor resolvedColorForTraitCollection:v9];

    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v14 = v13;
    v15 = CKResolvedColorForBalloonDescriptor(&v16);
    v7 = [[_TtC7ChatKit32CKTextEffectExplodeConfiguration alloc] initWithSourceColor:v14 targetColor:v15];
  }

  else
  {
    v7 = +[_TtC7ChatKit32CKTextEffectExplodeConfiguration defaultConfiguration];
  }

  return v7;
}

- (id)visibleTextViewIdentifiersFor:(id)for
{
  v48 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained && (v5 = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0) && ((v7 = objc_loadWeakRetained(&self->_delegate), [v7 effectiveVisibleRectOfCollectionViewForTranscriptCollectionViewController:self], v9 = v8, v11 = v10, v13 = v12, v15 = v14, v7, v16 = *(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695F060] == v13) ? (v17 = v16 == v15) : (v17 = 0), !v17))
  {
    v18 = [(CKTranscriptCollectionViewController *)self collectionView:*MEMORY[0x1E695F060]];
    collectionViewLayout = [v18 collectionViewLayout];
    v20 = [collectionViewLayout layoutAttributesForElementsInRect:{v9, v11, v13, v15}];
    v21 = v20;
    if (v20 && [v20 count])
    {
      v39 = collectionViewLayout;
      v40 = v18;
      v42 = objc_opt_new();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v44;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v44 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v43 + 1) + 8 * i);
            indexPath = [v27 indexPath];
            if (indexPath)
            {
              if (![v27 representedElementCategory] && objc_msgSend(indexPath, "length") == 2 && objc_msgSend(indexPath, "item") != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(indexPath, "section"))
              {
                item = [indexPath item];
                chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
                v31 = [chatItems count];

                if (item < v31)
                {
                  v32 = [(CKTranscriptCollectionViewController *)self chatItemAtIndexPath:indexPath];
                  iMChatItem = [v32 IMChatItem];
                  guid = [iMChatItem guid];

                  if (guid)
                  {
                    _textContainsIMTextEffect = [v32 _textContainsIMTextEffect];
                    _translationSecondaryTextContainsIMTextEffect = [v32 _translationSecondaryTextContainsIMTextEffect];
                    if ((_textContainsIMTextEffect & 1) != 0 || _translationSecondaryTextContainsIMTextEffect)
                    {
                      if (_translationSecondaryTextContainsIMTextEffect)
                      {
                        v41 = [guid stringByAppendingString:@"-translation"];
                        [v42 addObject:v41];
                      }

                      if (_textContainsIMTextEffect)
                      {
                        [v42 addObject:guid];
                      }
                    }
                  }
                }
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v24);
      }

      v37 = [v42 copy];
      collectionViewLayout = v39;
      v18 = v40;
    }

    else
    {
      v37 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v37 = MEMORY[0x1E695E0F0];
  }

  return v37;
}

- (BOOL)textEffectCoordinator:(id)coordinator textViewIdentifierIsCandidateForTextEffectPlayback:(id)playback
{
  coordinatorCopy = coordinator;
  playbackCopy = playback;
  v8 = playbackCopy;
  if ([playbackCopy hasSuffix:@"-translation"])
  {
    v8 = [playbackCopy substringToIndex:{objc_msgSend(playbackCopy, "length") - objc_msgSend(@"-translation", "length")}];
  }

  v22 = 0;
  v9 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItemGUID:v8 getChatItem:&v22];
  v10 = v22;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      iMChatItem = [v11 IMChatItem];
      [v11 ageForTextEffectCoordination];
      if (v13 <= 1.0)
      {
        v15 = dispatch_time(0, ((1.0 - v13 + 0.1) * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __113__CKTranscriptCollectionViewController_textEffectCoordinator_textViewIdentifierIsCandidateForTextEffectPlayback___block_invoke;
        block[3] = &unk_1E72EB8D0;
        v20 = iMChatItem;
        v21 = coordinatorCopy;
        dispatch_after(v15, MEMORY[0x1E69E96A0], block);
      }

      else
      {
        if (CKReduceMotionAutoplayEnabled())
        {
          goto LABEL_7;
        }

        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *v18 = 0;
            _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Autoplay text effects disabled.", v18, 2u);
          }
        }

        if ([v11 isFromMe] && objc_msgSend(v11, "isRecentForTextEffectCoordinationWithinTimeInterval:", 3.0))
        {
LABEL_7:
          v14 = [(CKTranscriptCollectionViewController *)self textEffectIsCandidateBalloonViewChecksForChatItem:v11 balloonView:v9];
LABEL_11:

          goto LABEL_12;
        }
      }

      v14 = 0;
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

void __113__CKTranscriptCollectionViewController_textEffectCoordinator_textViewIdentifierIsCandidateForTextEffectPlayback___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) guid];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"item %@ was too young", v3];
  [*(a1 + 40) updateWithReason:v2];
}

- (BOOL)_textMessagePartItemHasValidLayout:(id)layout textBalloonView:(id)view
{
  v5 = 0;
  [(CKTranscriptCollectionViewController *)self _textMessagePartItem:layout textBalloonView:view getHasValidOrigin:&v5 + 1 getHasValidSize:&v5];
  return HIBYTE(v5) & v5 & 1;
}

- (BOOL)textEffectIsCandidateBalloonViewChecksForChatItem:(id)item balloonView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  if (!itemCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  isCandidateForTextEffectPlayback = 0;
  if (!viewCopy || (isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    isCandidateForTextEffectPlayback = 0;
    goto LABEL_10;
  }

  v10 = viewCopy;
  if ([(CKTranscriptCollectionViewController *)self _textMessagePartItemHasValidLayout:itemCopy textBalloonView:v10])
  {
    isCandidateForTextEffectPlayback = [v10 isCandidateForTextEffectPlayback];
  }

  else
  {
    isCandidateForTextEffectPlayback = 0;
  }

LABEL_10:
  return isCandidateForTextEffectPlayback;
}

- (BOOL)textEffectIsCandidateBalloonViewChecksForChatItem:(id)item
{
  itemCopy = item;
  v5 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:itemCopy];
  LOBYTE(self) = [(CKTranscriptCollectionViewController *)self textEffectIsCandidateBalloonViewChecksForChatItem:itemCopy balloonView:v5];

  return self;
}

- (id)textEffectCoordinator:(id)coordinator textViewForTextViewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [identifierCopy hasSuffix:@"-translation"];
  v7 = identifierCopy;
  if (v6)
  {
    v7 = [identifierCopy substringToIndex:{objc_msgSend(identifierCopy, "length") - objc_msgSend(@"-translation", "length")}];
  }

  v11 = 0;
  v8 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItemGUID:v7 getChatItem:&v11];
  v9 = 0;
  if (v8 && v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        [v8 translationSecondaryTextView];
      }

      else
      {
        [v8 textView];
      }
      v9 = ;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)textEffectCoordinator:(id)coordinator highPriorityTextViewIdentifiersForUnplayedVisibleTextViewIdentifiers:(id)identifiers
{
  v47 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  indexSet = [MEMORY[0x1E696AC90] indexSet];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = [v11 firstUnreadMessageItemGUIDForTranscriptCollectionViewController:self];

      if (v12)
      {
        chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
        v14 = [chatItems __ck_indexesOfPartsOfMessageWithGUID:v12];

        firstIndex = [v14 firstIndex];
        chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
        v17 = [chatItems2 count];

        if (firstIndex != 0x7FFFFFFFFFFFFFFFLL && v17 != 0x8000000000000000)
        {
          v18 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{firstIndex, v17 - 1 - firstIndex}];

          indexSet = v18;
        }
      }
    }
  }

  v19 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = identifiersCopy;
  v21 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v42;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v41 + 1) + 8 * i);
        v26 = [(CKTranscriptCollectionViewController *)self chatItemForGUID:v25];
        if (v26)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v26 isRecentForTextEffectCoordinationWithinTimeInterval:3.0])
            {
              [v19 addObject:v25];
            }
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v22);
  }

  if ([indexSet count])
  {
    chatItems3 = [(CKTranscriptCollectionViewController *)self chatItems];
    v28 = [chatItems3 objectsAtIndexes:indexSet];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v38;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(v29);
          }

          iMChatItem = [*(*(&v37 + 1) + 8 * j) IMChatItem];
          guid = [iMChatItem guid];

          if (guid && [v20 containsObject:guid])
          {
            [v19 addObject:guid];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v31);
    }
  }

  return v19;
}

- (BOOL)canStartNewTextAnimationsInTextEffectCoordinator:(id)coordinator
{
  viewIfLoaded = [(CKTranscriptCollectionViewController *)self viewIfLoaded];
  v5 = viewIfLoaded;
  if (viewIfLoaded)
  {
    window = [viewIfLoaded window];
    v7 = window;
    if (window)
    {
      windowScene = [window windowScene];
      if (windowScene)
      {
        traitCollection = [(CKTranscriptCollectionViewController *)self traitCollection];
        v10 = traitCollection;
        v11 = traitCollection && [traitCollection activeAppearance] && !+[CKApplicationState isResizing](CKApplicationState, "isResizing") && objc_msgSend(windowScene, "activationState") == 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)textEffectCoordinator:(id)coordinator willRequestAnimatorUsing:(id)using
{
  usingCopy = using;
  if ([MEMORY[0x1E69DD168] ck_supportsDynamicallyTogglingAllowsTextAnimations])
  {
    textView = [usingCopy textView];
    [textView setAllowsTextAnimations:1];
  }
}

- (void)textEffectCoordinator:(id)coordinator didChangeStateOfAnimator:(id)animator textView:(id)view
{
  animatorCopy = animator;
  viewCopy = view;
  if ([MEMORY[0x1E69DD168] ck_supportsDynamicallyTogglingAllowsTextAnimations])
  {
    state = [animatorCopy state];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];

    [collectionViewLayout reloadData];
    [collectionViewLayout invalidateLayout];
    if (state <= 1)
    {
      animation = [animatorCopy animation];
      [viewCopy setAllowsTextAnimations:{objc_msgSend(viewCopy, "ck_isLastTextAnimation:", animation) ^ 1}];
    }
  }
}

+ (id)initialTextEffectsState
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    v4 = objc_alloc_init(CKTranscriptTextEffectsState);
    [(CKTranscriptTextEffectsState *)v4 setIsReady:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateTextEffectsState:(id)state
{
  textEffectsState = self->_textEffectsState;
  if (textEffectsState)
  {
    stateCopy = state;
    isPaused = [(CKTranscriptTextEffectsState *)textEffectsState isPaused];
    stateCopy[2](stateCopy, self->_textEffectsState);

    isPaused2 = [(CKTranscriptTextEffectsState *)self->_textEffectsState isPaused];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator setPaused:isPaused2 includingAnimators:1];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"changed text effect state – isPausedBeforeUpdate: %i – isPaused: %i", isPaused, isPaused2];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:v8];
  }
}

- (BOOL)isTextEffectCoordinatorPaused
{
  if (!self->_transcriptTextEffectCoordinator)
  {
    return 1;
  }

  transcriptTextEffectCoordinator = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
  isPaused = [transcriptTextEffectCoordinator isPaused];

  return isPaused;
}

- (void)setTextEffectCoordinatorPaused:(BOOL)paused reason:(id)reason
{
  pausedCopy = paused;
  reasonCopy = reason;
  transcriptTextEffectCoordinator = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
  isPaused = [transcriptTextEffectCoordinator isPaused];

  reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"paused %d ↦ %d: %@", isPaused, pausedCopy, reasonCopy];

  transcriptTextEffectCoordinator2 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
  [transcriptTextEffectCoordinator2 setPaused:pausedCopy includingAnimators:1];

  transcriptTextEffectCoordinator3 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
  [transcriptTextEffectCoordinator3 updateWithReason:reasonCopy];
}

- (void)prepareTextEffectsForModalPresentation
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    transcriptTextEffectCoordinator = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
    [transcriptTextEffectCoordinator setPaused:1 includingAnimators:0];
    [transcriptTextEffectCoordinator reset];
    [(CKTranscriptCollectionViewController *)self __updateCollectionViewLayout];
    [(CKTranscriptCollectionViewController *)self __configureVisibleMessagesCellsIncludingAssociatedCells:0];
  }
}

void __72__CKTranscriptCollectionViewController_textEffectsEndTransitionSetReady__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setInTransition:0];
  [v2 setIsReady:1];
}

- (void)transcriptBalloonCell:(id)cell didChangeRenderBoundsOfTextBalloonView:(id)view
{
  v29 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  viewCopy = view;
  transcriptTextEffectCoordinator = self->_transcriptTextEffectCoordinator;
  if (transcriptTextEffectCoordinator && ![(CKTextEffectCoordinator *)transcriptTextEffectCoordinator isPaused])
  {
    textView = [viewCopy textView];
    attributedText = [textView attributedText];

    if ([attributedText ck_hasTextAnimation])
    {
      v11 = [(CKTranscriptCollectionViewController *)self chatItemForCell:cellCopy];
      if (v11)
      {
        v23 = attributedText;
        [viewCopy bounds];
        v13 = v12;
        v15 = v14;
        [cellCopy setNeedsLayout];
        visibleAssociatedMessageChatItems = [v11 visibleAssociatedMessageChatItems];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v17 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v25;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(visibleAssociatedMessageChatItems);
              }

              v21 = [(CKTranscriptCollectionViewController *)self cellForAssociatedChatItem:*(*(&v24 + 1) + 8 * i)];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
                [v22 setParentSize:{v13, v15}];
                [v22 setNeedsLayout];
              }
            }

            v18 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v18);
        }

        attributedText = v23;
      }
    }
  }
}

- (void)transcriptBalloonCell:(id)cell textBalloonView:(id)view didChangeTextEffectPlaybackCandidateStatus:(BOOL)status
{
  v6 = @"NO";
  if (status)
  {
    v6 = @"YES";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TextEffectPlaybackCandidateStatus did change to %@", view, v6];
  if (!+[CKApplicationState isResizing])
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:v7];
  }
}

- (unint64_t)transcriptBalloonCell:(id)cell allowedLayoutActionForTextBalloonView:(id)view
{
  viewCopy = view;
  if (self->_transcriptTextEffectCoordinator)
  {
    v7 = [(CKTranscriptCollectionViewController *)self chatItemForCell:cell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = 0;
      [(CKTranscriptCollectionViewController *)self _textMessagePartItem:v7 textBalloonView:viewCopy getHasValidOrigin:0 getHasValidSize:&v10];
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)transcriptBalloonCell:(id)cell customTextRenderingDisplayLinkForTextBalloonViewTextView:(id)view
{
  v4 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator:cell];
  customRenderDisplayLink = [v4 customRenderDisplayLink];

  return customRenderDisplayLink;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] || !-[CKTranscriptCollectionViewController isEditing](self, "isEditing"))
  {
    canBeSelectedInEditMode = 0;
  }

  else
  {
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v7 = [chatItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    canBeSelectedInEditMode = [v7 canBeSelectedInEditMode];
  }

  return canBeSelectedInEditMode;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  item = [pathCopy item];
  if (item >= 1)
  {
    v7 = item;
    if (item < [chatItems count])
    {
      v8 = [chatItems objectAtIndex:v7];
      iMChatItem = [v8 IMChatItem];
      guid = [iMChatItem guid];

      selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
      v12 = [CKBalloonSelectionState balloonSelectionState:0];
      [selectionManager addSelectedMessageGuid:guid selectionState:v12];
    }
  }

  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self didSelectItemAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  item = [pathCopy item];
  if (item >= 1)
  {
    v7 = item;
    if (item < [chatItems count])
    {
      v8 = [chatItems objectAtIndex:v7];
      iMChatItem = [v8 IMChatItem];
      guid = [iMChatItem guid];

      selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
      [selectionManager removeSelectedMessageGuid:guid];
    }
  }

  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self didDeselectItemAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (![pathCopy section] && !+[CKApplicationState isResizing](CKApplicationState, "isResizing"))
  {
    item = [pathCopy item];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    if (item < [chatItems count])
    {
      v12 = [chatItems objectAtIndex:item];
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

      if (isExpressiveTextEnabled)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [cellCopy setTextEffectsDelegate:0];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v12;
        [cellCopy frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [viewCopy bounds];
        v35.origin.x = v17;
        v35.origin.y = v19;
        v35.size.width = v21;
        v35.size.height = v23;
        if (!CGRectIntersectsRect(v34, v35))
        {
          transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v25 = [v15 extensibleViewControllerForContext:transcriptIdentifier];

          if (v25)
          {
            [v25 removeFromParentViewController];
          }

          iMChatItem = [v15 IMChatItem];
          isDataSourceInitialized = [iMChatItem isDataSourceInitialized];

          if (isDataSourceInitialized)
          {
            transcriptIdentifier2 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
            v29 = [v15 balloonControllerForContext:transcriptIdentifier2];

            if (objc_opt_respondsToSelector())
            {
              [v29 pluginContentViewDidDissapear];
            }
          }
        }

        transcriptIdentifier3 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
        [v15 relinquishBalloonControllerForContext:transcriptIdentifier3];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    balloonView = [cellCopy balloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [balloonView prepareForReuse];
    }
  }
}

- (void)_prepareTextEffectCoordinatorForCell:(id)cell forItem:(id)item atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  if (self->_transcriptTextEffectCoordinator)
  {
    if (!+[CKApplicationState isResizing])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [cellCopy setTextEffectsDelegate:self];
        _textContainsIMTextEffect = [itemCopy _textContainsIMTextEffect];
        _translationSecondaryTextContainsIMTextEffect = [itemCopy _translationSecondaryTextContainsIMTextEffect];
        if ((_textContainsIMTextEffect & 1) != 0 || _translationSecondaryTextContainsIMTextEffect)
        {
          objc_initWeak(&location, self);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __97__CKTranscriptCollectionViewController__prepareTextEffectCoordinatorForCell_forItem_atIndexPath___block_invoke;
          v13[3] = &unk_1E72ED950;
          objc_copyWeak(&v16, &location);
          v14 = pathCopy;
          v15 = itemCopy;
          dispatch_async(MEMORY[0x1E69E96A0], v13);

          objc_destroyWeak(&v16);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __97__CKTranscriptCollectionViewController__prepareTextEffectCoordinatorForCell_forItem_atIndexPath___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [WeakRetained transcriptTextEffectCoordinator];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1[4] section];
  v5 = [a1[4] item];
  v6 = [a1[5] IMChatItem];
  v7 = [v6 guid];
  v8 = [v3 stringWithFormat:@"willDisplayCell at index path: %lu|%lu - identifier: %@", v4, v5, v7];
  [v2 updateWithReason:v8];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v70[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  item = [pathCopy item];
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
      v11 = [associatedChatItems count];

      if (item < v11)
      {
        associatedChatItems2 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
        v13 = [associatedChatItems2 objectAtIndexedSubscript:item];

        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v15 = [chatItems count];

  if (item >= v15)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
  v13 = [chatItems2 objectAtIndexedSubscript:item];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    [(CKTranscriptCollectionViewController *)self _prepareTextEffectCoordinatorForCell:cellCopy forItem:v13 atIndexPath:pathCopy];
  }

LABEL_9:
  if (![pathCopy section])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
      v20 = [v13 balloonControllerForContext:transcriptIdentifier];

      if (objc_opt_respondsToSelector())
      {
        [v20 pluginContentViewWillAppear];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = cellCopy;
      delegate = [(CKTranscriptCollectionViewController *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
        [delegate2 transcriptCollectionViewController:self willDisplayStatusCell:v21];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cellCopy setDelegate:self];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cellCopy setDelegate:self];
    }
  }

  v69 = item;
  if ([(NSIndexPath *)self->_itemIndexPathToHighlight isEqual:pathCopy]&& !self->_holdMessageEmphasisTillManuallyRemoved)
  {
    [(CKTranscriptCollectionViewController *)self _highlightCell:cellCopy animated:0 autoDismiss:1];
    itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
    self->_itemIndexPathToHighlight = 0;
  }

  else if ([(NSIndexPath *)self->_itemIndexPathToHighlight isEqual:pathCopy]&& self->_holdMessageEmphasisTillManuallyRemoved)
  {
    [(CKTranscriptCollectionViewController *)self _highlightCell:cellCopy animated:0 autoDismiss:0];
  }

  [(CKTranscriptCollectionViewController *)self updateEmphasis];
  if (objc_opt_respondsToSelector())
  {
    v26 = +[CKUIBehavior sharedBehaviors];
    enableBalloonTextSelection = [v26 enableBalloonTextSelection];

    if (enableBalloonTextSelection)
    {
      iMChatItem = [v13 IMChatItem];
      guid = [iMChatItem guid];

      selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
      v31 = selectionManager;
      if (guid && [selectionManager isMessageGuidSelected:guid])
      {
        balloonView = [cellCopy balloonView];
        v33 = [v31 selectedStateForGuid:guid];
        [balloonView setSelected:1 withSelectionState:v33];
      }
    }
  }

  iMChatItem2 = [v13 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    message = [iMChatItem2 message];
    chat = [(CKTranscriptCollectionViewController *)self chat];
    lastIncomingFinishedMessage = [chat lastIncomingFinishedMessage];
    v38 = [lastIncomingFinishedMessage compare:message comparisonType:2];

    if (v38)
    {
      goto LABEL_42;
    }

    delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate3 transcriptCollectionViewControllerWillDisplayLastBalloon:self];

    impactEffectManager = [(CKTranscriptCollectionViewController *)self impactEffectManager];
    if ([impactEffectManager isAnimating])
    {
      impactEffectManager2 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
      animatingIdentifier = [impactEffectManager2 animatingIdentifier];
      v43 = [CKImpactEffectManager identifierShouldPlayInWindow:animatingIdentifier];

      if (v43)
      {
        v44 = 1;
LABEL_41:
        [cellCopy setHidden:v44];
LABEL_42:
        mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        if ([mEMORY[0x1E69A8070]2 isCatchUpEnabled])
        {
          delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
          v47 = objc_opt_respondsToSelector();

          if ((v47 & 1) == 0)
          {
LABEL_46:

            goto LABEL_47;
          }

          mEMORY[0x1E69A8070]2 = [(CKTranscriptCollectionViewController *)self delegate];
          guid2 = [message guid];
          [cellCopy frame];
          [mEMORY[0x1E69A8070]2 transcriptCollectionViewController:self willDisplayBalloonForGUID:guid2 withIndexPath:pathCopy withOriginY:v49];
        }

        goto LABEL_46;
      }
    }

    else
    {
    }

    v44 = 0;
    goto LABEL_41;
  }

LABEL_47:
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  currentEffect = [fullscreenEffectManager currentEffect];

  if (currentEffect)
  {
    if ([pathCopy section] == 1 || !objc_msgSend(pathCopy, "section") || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      chatItems3 = [(CKTranscriptCollectionViewController *)self chatItems];
      fullscreenEffectManager2 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
      currentEffect2 = [fullscreenEffectManager2 currentEffect];
      triggeringChatItem = [currentEffect2 triggeringChatItem];
      v56 = [chatItems3 indexOfObject:triggeringChatItem];

      fullscreenEffectManager3 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
      currentEffect3 = [fullscreenEffectManager3 currentEffect];
      v59 = currentEffect3;
      if (v69 == v56)
      {
        [currentEffect3 applyMessageFiltersToTriggeringCell:cellCopy];
      }

      else
      {
        v70[0] = cellCopy;
        v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
        [v59 applyMessageFiltersToCells:v60];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = cellCopy;
    [v61 setDelegate:self];
    balloonView2 = [v61 balloonView];
    if (balloonView2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = *MEMORY[0x1E69A7510];
        v64 = balloonView2;
        -[CKTranscriptCollectionViewController _trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:](self, "_trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:", v63, v64, [v13 transcriptOrientation]);
      }
    }
  }

  if (![pathCopy section])
  {
    hiddenChatItemGUIDs = [(CKTranscriptCollectionViewController *)self hiddenChatItemGUIDs];
    iMChatItem3 = [v13 IMChatItem];
    guid3 = [iMChatItem3 guid];
    v67 = [hiddenChatItemGUIDs containsObject:guid3];

    goto LABEL_71;
  }

  if ([pathCopy section] == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hiddenChatItemGUIDs = [v13 associatedMessageGUID];
      iMChatItem3 = [(CKTranscriptCollectionViewController *)self chatItemGUIDsOfHiddenTapbackPiles];
      v67 = [iMChatItem3 containsObject:hiddenChatItemGUIDs];
LABEL_71:

      goto LABEL_72;
    }
  }

  v67 = 0;
LABEL_72:
  [(CKTranscriptCollectionViewController *)self configureTranscriptCell:cellCopy hidden:v67];
}

- (void)collectionViewWillInset:(id)inset targetContentInset:(UIEdgeInsets *)contentInset
{
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewControllerWillInset:self targetContentInset:contentInset];
}

- (void)collectionViewDidInset:(id)inset
{
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewControllerDidInset:self];

  [(CKTranscriptCollectionViewController *)self updateDockingMetricsIfNeeded];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    v8 = +[CKPrintController sharedInstance];
    isPrinting = [v8 isPrinting];

    if ((isPrinting & 1) == 0)
    {
      associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
      goto LABEL_7;
    }
  }

  else if (!section)
  {
    associatedChatItems = [(CKTranscriptCollectionViewController *)self chatItems];
LABEL_7:
    v11 = associatedChatItems;
    v10 = [associatedChatItems count];

    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    item = [pathCopy item];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v10 = [chatItems count];

    if (item >= v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "item")}];
      v14 = [v11 stringWithFormat:@"[cellForItemAtIndexPath] Attempting to access chat item at invalid index (section: %@, item: %@)", v12, v13];

      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
      [v15 raise];
    }
  }

  if ([pathCopy section] == 1)
  {
    item2 = [pathCopy item];
    associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v18 = [associatedChatItems count];

    if (item2 >= v18)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "item")}];
      v22 = [v19 stringWithFormat:@"[cellForItemAtIndexPath] Attempting to access associated chat item at invalid index (section: %@, item: %@)", v20, v21];

      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
      [v23 raise];
    }
  }

  if (![pathCopy section])
  {
    chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
    v25 = [chatItems2 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
LABEL_11:
    v26 = v25;

    if (v26)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ([pathCopy section] == 1)
  {
    chatItems2 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v25 = [chatItems2 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    goto LABEL_11;
  }

LABEL_12:
  v27 = MEMORY[0x1E696AEC0];
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "item")}];
  v30 = [v27 stringWithFormat:@"[cellForItemAtIndexPath] Unable to retrieve chatItem for index (section: %@, item: %@), ", v28, v29];

  v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
  [v31 raise];

  v26 = 0;
LABEL_13:
  v32 = [(CKTranscriptCollectionViewController *)self collectionView:viewCopy cellForCKChatItem:v26 atIndexPath:pathCopy];

  return v32;
}

- (id)collectionView:(id)view cellForCKChatItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  cellIdentifier = [itemCopy cellIdentifier];
  [viewCopy registerClass:objc_msgSend(itemCopy forCellWithReuseIdentifier:{"cellClass"), cellIdentifier}];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKTranscriptCollectionViewController *)self configureAssociatedCell:v12 forChatItem:itemCopy atIndexPath:pathCopy];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self configureCell:v12 forCKChatItem:itemCopy atIndexPath:pathCopy animated:0 animationDuration:3 animationCurve:0.0];
  }

  return v12;
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  pathCopy = path;
  kindCopy = kind;
  v13 = +[CKFullscreenEffectDecorationView decorationViewKind];
  v14 = [kindCopy isEqualToString:v13];

  if (v14)
  {
    fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
    currentEffect = [fullscreenEffectManager currentEffect];

    effectViewClass = [currentEffect effectViewClass];
    collectionViewLayout = [viewCopy collectionViewLayout];
    v19 = [collectionViewLayout effectIndexForDecorationViewAtIndex:{objc_msgSend(pathCopy, "section")}];

    v20 = supplementaryViewCopy;
    currentEffectDecorationViews = [(CKTranscriptCollectionViewController *)self currentEffectDecorationViews];
    [currentEffectDecorationViews addObject:v20];

    [v20 setUserInteractionEnabled:0];
    v22 = [effectViewClass alloc];
    [v20 bounds];
    v23 = [v22 initWithFrame:?];
    [v23 setUserInteractionEnabled:0];
    [v23 setZIndex:v19];
    [v20 setupForEffectView:v23];
    [(CKTranscriptCollectionViewController *)self _updateEffectViewMessageRect:v23 effect:currentEffect];
    if ([currentEffect isForegroundEffect])
    {
      triggeringChatItem = [currentEffect triggeringChatItem];
      v25 = [(CKTranscriptCollectionViewController *)self cellForChatItem:triggeringChatItem];

      [viewCopy addSubview:v25];
      [viewCopy insertSubview:v20 belowSubview:v25];
    }

    triggeringChatItem2 = [currentEffect triggeringChatItem];
    v27 = [(CKTranscriptCollectionViewController *)self cellForChatItem:triggeringChatItem2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      balloonView = [v27 balloonView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        balloonView2 = [v27 balloonView];
        [balloonView2 bounds];
        v32 = v31;
        v34 = v33;
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen scale];
        v37 = v36;
        v43.width = v32;
        v43.height = v34;
        UIGraphicsBeginImageContextWithOptions(v43, 1, v37);

        balloonView3 = [v27 balloonView];
        balloonView4 = [v27 balloonView];
        [balloonView4 bounds];
        [balloonView3 drawViewHierarchyInRect:0 afterScreenUpdates:?];

        v40 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        [v23 setMessageImage:v40];
      }
    }

    [v23 startAnimation];
  }
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  supplementaryViewCopy = supplementaryView;
  kindCopy = kind;
  v9 = +[CKFullscreenEffectDecorationView decorationViewKind];
  v10 = [kindCopy isEqualToString:v9];

  if (v10)
  {
    v11 = supplementaryViewCopy;
    currentEffectDecorationViews = [(CKTranscriptCollectionViewController *)self currentEffectDecorationViews];
    [currentEffectDecorationViews removeObject:v11];

    [v11 tearDownEffectView];
  }
}

- (void)endHoldingUpdatesAfterQuicklookCancelsDismiss
{
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [fullscreenEffectManager endHoldingUpdatesForKey:@"CKFullscreenUpdatesDisappeared"];
}

- (void)_addChatItemsToGenerativeContextHistory:(id)history
{
  v38 = *MEMORY[0x1E69E9840];
  obj = history;
  selfCopy = self;
  if (self->_generativeContextHistory)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v4 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v34;
      v28 = @"CKGenerativeContextDisplayName";
      v29 = *v34;
      do
      {
        v7 = 0;
        v31 = v5;
        do
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v33 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            text = [v9 text];
            string = [text string];

            if ([string length])
            {
              messageItem = [v9 messageItem];
              time = [messageItem time];
              sender = [messageItem sender];
              v15 = MEMORY[0x193AF5D70]();

              if (![v15 length] && objc_msgSend(messageItem, "isFromMe"))
              {
                destinationCallerID = [messageItem destinationCallerID];
                v17 = MEMORY[0x193AF5D70]();

                v15 = v17;
              }

              dictionary = [MEMORY[0x1E695DF90] dictionary];
              v19 = dictionary;
              if (time)
              {
                [dictionary setObject:time forKey:@"CKGenerativeContextTimestamp"];
              }

              if (string)
              {
                [v19 setObject:string forKey:@"CKGenerativeContextText"];
              }

              if (v15)
              {
                [v19 setObject:v15 forKey:@"CKGenerativeContextHandle"];
              }

              sender2 = [v9 sender];
              cnContact = [sender2 cnContact];
              displayName = [cnContact displayName];

              if (displayName)
              {
                sender3 = [v9 sender];
                cnContact2 = [sender3 cnContact];
                displayName2 = [cnContact2 displayName];
                [v19 setObject:displayName2 forKey:v28];
              }

              generativeContextHistory = [(CKTranscriptCollectionViewController *)selfCopy generativeContextHistory];
              v27 = [v19 copy];
              [generativeContextHistory addObject:v27];

              v6 = v29;
              v5 = v31;
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v5);
    }
  }
}

- (void)_addChatItemsToInputContextHistory:(id)history signalingResponseContextChangeIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  historyCopy = history;
  inputContextHistory = [(CKTranscriptCollectionViewController *)self inputContextHistory];
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  v9 = [inputContextHistory addChatItems:historyCopy withConversation:conversation];

  if (v9 && neededCopy)
  {
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [activeKeyboard responseContextDidChange];
  }

  if (v9)
  {
    v11 = dispatch_time(0, 100000000);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __114__CKTranscriptCollectionViewController__addChatItemsToInputContextHistory_signalingResponseContextChangeIfNeeded___block_invoke;
    v12[3] = &unk_1E72EB8D0;
    v12[4] = self;
    v13 = historyCopy;
    dispatch_after(v11, MEMORY[0x1E69E96A0], v12);
  }
}

- (NSMutableArray)generativeContextHistory
{
  generativeContextHistory = self->_generativeContextHistory;
  if (!generativeContextHistory)
  {
    [(CKTranscriptCollectionViewController *)self _createGenerativeContextHistory];
    generativeContextHistory = self->_generativeContextHistory;
  }

  return generativeContextHistory;
}

- (void)_createGenerativeContextHistory
{
  array = [MEMORY[0x1E695DF70] array];
  generativeContextHistory = self->_generativeContextHistory;
  self->_generativeContextHistory = array;

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  [(CKTranscriptCollectionViewController *)self _addChatItemsToGenerativeContextHistory:chatItems];
}

- (void)_updateEffectViewMessageRect:(id)rect effect:(id)effect
{
  rectCopy = rect;
  effectCopy = effect;
  v7 = effectCopy;
  if (effectCopy)
  {
    triggeringChatItem = [effectCopy triggeringChatItem];
    v9 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:triggeringChatItem];

    if (v9)
    {
      [v7 setMessageOrientation:{objc_msgSend(v9, "orientation")}];
      [v9 center];
      v11 = v10;
      v13 = v12;
      superview = [v9 superview];
      superview2 = [rectCopy superview];
      [superview convertPoint:superview2 toView:{v11, v13}];
      v17 = v16;
      v19 = v18;

      superview3 = [v9 superview];
      [v9 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      superview4 = [rectCopy superview];
      [superview3 convertRect:superview4 toView:{v22, v24, v26, v28}];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      if ([v7 shouldDrawOverNavigationBar])
      {
        [(CKFullscreenEffectView *)self->_topEffectView setFocusPoint:v17, v19];
        [(CKFullscreenEffectView *)self->_topEffectView setMessageRect:v31, v33, v35, v37];
        -[CKFullscreenEffectView setMessageOrientation:](self->_topEffectView, "setMessageOrientation:", [v9 orientation]);
      }

      [rectCopy setFocusPoint:{v17, v19}];
      [rectCopy setMessageRect:{v31, v33, v35, v37}];
      [rectCopy setMessageOrientation:{objc_msgSend(v9, "orientation")}];
    }
  }
}

- (id)collectionView:(id)view layout:(id)layout chatItemForItemAtIndexPath:(id)path
{
  pathCopy = path;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  item = [pathCopy item];

  v9 = [chatItems objectAtIndex:item];

  return v9;
}

- (id)collectionView:(id)view layout:(id)layout chatItemForSupplementaryViewAtIndexPath:(id)path
{
  pathCopy = path;
  associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
  item = [pathCopy item];

  v9 = [associatedChatItems objectAtIndex:item];

  return v9;
}

- (id)chatItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy section])
  {
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    goto LABEL_5;
  }

  if ([pathCopy section] == 1)
  {
    chatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
LABEL_5:
    v6 = chatItems;
    v7 = [chatItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)collectionViewLayout:(id)layout sizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  [(CKTranscriptCollectionViewController *)self updateDockingMetricsIfNeeded];
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self collectionViewContentSizeDidChange:{width, height}];
}

- (id)currentEffectForCollectionView:(id)view layout:(id)layout
{
  v5 = [(CKTranscriptCollectionViewController *)self delegate:view];
  v6 = [v5 transcriptCollectionViewControllerShouldLayoutFullscreenEffects:self];

  if (v6)
  {
    fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
    currentEffect = [fullscreenEffectManager currentEffect];
  }

  else
  {
    currentEffect = 0;
  }

  return currentEffect;
}

- (void)didTapBlockContactInBalloonView:(id)view
{
  v4 = MEMORY[0x1E69A8008];
  viewCopy = view;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance logPrivatizedUIInteractionEvent:6];

  v7 = [(CKTranscriptCollectionViewController *)self messagePartForBalloonView:viewCopy];

  message = [v7 message];
  sender = [message sender];

  if (!sender)
  {
    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    recipients = [conversation recipients];
    firstObject = [recipients firstObject];

    sender = [firstObject defaultIMHandle];
  }

  [(CKTranscriptCollectionViewController *)self _blockHandle:sender];
}

- (void)didTapWaysToGetHelp
{
  mEMORY[0x1E69A8008] = [MEMORY[0x1E69A8008] sharedInstance];
  [mEMORY[0x1E69A8008] logPrivatizedUIInteractionEvent:4];

  [(CKTranscriptCollectionViewController *)self _showMoreHelp];
}

- (BOOL)isReportingEnabled
{
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  chat = [conversation chat];
  if ([chat hasCommSafetySensitiveMessageFromSomeoneElse])
  {
    conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
    chat2 = [conversation2 chat];
    iMessageService = [MEMORY[0x1E69A5C90] iMessageService];
    if ([chat2 hasMessageFromService:iMessageService])
    {
      v8 = IMIsRunningInMessages();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)balloonViewTapped:(id)tapped withModifierFlags:(int64_t)flags selectedText:(id)text
{
  v52 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  textCopy = text;
  v10 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:tappedCopy];
  if ([v10 section] == 1)
  {
    v11 = +[CKUIBehavior sharedBehaviors];
    canTapAssociatedAcknowledgment = [v11 canTapAssociatedAcknowledgment];

    if (canTapAssociatedAcknowledgment)
    {
      associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
      item = [v10 item];
      if (item >= [associatedChatItems count])
      {
        if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "item")}];
            v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(associatedChatItems, "count")}];
            v46 = 136315650;
            v47 = "[CKTranscriptCollectionViewController balloonViewTapped:withModifierFlags:selectedText:]";
            v48 = 2112;
            v49 = v36;
            v50 = 2112;
            v51 = v37;
            _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "%s Got tap on balloon not in current associated chat items range. idx %@ count %@", &v46, 0x20u);
          }
        }
      }

      else
      {
        v15 = [associatedChatItems objectAtIndex:{objc_msgSend(v10, "item")}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [(CKTranscriptCollectionViewController *)self indexPathOfParentChatItemForIndexPath:v10];
          collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
          v18 = [collectionView cellForItemAtIndexPath:v16];

          balloonView = [v18 balloonView];

          delegate = [(CKTranscriptCollectionViewController *)self delegate];
          [delegate transcriptCollectionViewController:self balloonView:balloonView longPressedForItemWithIndexPath:v16];

          tappedCopy = balloonView;
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        LOWORD(v46) = 0;
        _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "Tapping associated index paths not supported", &v46, 2u);
      }
    }

    goto LABEL_36;
  }

  if (([(CKTranscriptCollectionViewController *)self isEditing]& 1) != 0)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKTranscriptCollectionViewController *)self _presentOfframpDetonationAlert];
    goto LABEL_10;
  }

  if ([tappedCopy conformsToProtocol:&unk_1F05F5318])
  {
    [(CKTranscriptCollectionViewController *)self _handleAudioBalloonTapForIndexPath:v10];
    v21 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = tappedCopy;
    if ([v38 isObscured])
    {
      if ([(CKTranscriptCollectionViewController *)self canInteractWithObscuredItem])
      {
        mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
        enablementGroup = [mEMORY[0x1E69A7FC8] enablementGroup];

        if (enablementGroup == 2)
        {
          delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
          [delegate2 transcriptCollectionViewController:self viewedCommSafetyItemWithIndexPath:v10];

          chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
          v43 = [chatItems objectAtIndex:{objc_msgSend(v10, "item")}];

          [v38 revealSensitiveContent:{objc_msgSend(v43, "itemIsReplyContextPreview")}];
          commSafetyTransferGUID = [v43 commSafetyTransferGUID];
          [CKCommSafetyAnalytics recordObscuredViewRemovedWithIdentifier:commSafetyTransferGUID];

          v21 = 0;
LABEL_46:

          goto LABEL_11;
        }

        [(CKTranscriptCollectionViewController *)self _handleCommSafetySensitiveReceiveStatusButtonTappedForIndexPath:v10];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        mediaObject = [v38 mediaObject];
        [(CKTranscriptCollectionViewController *)self balloonView:v38 mediaObjectDidFinishPlaying:mediaObject];
      }
    }

    v21 = 1;
    goto LABEL_46;
  }

LABEL_10:
  v21 = 1;
LABEL_11:
  chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
  item2 = [v10 item];
  if (item2 >= [chatItems2 count])
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "item")}];
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(chatItems2, "count")}];
        v46 = 136315650;
        v47 = "[CKTranscriptCollectionViewController balloonViewTapped:withModifierFlags:selectedText:]";
        v48 = 2112;
        v49 = v33;
        v50 = 2112;
        v51 = v34;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "%s Got tap on balloon not in current chat items range. idx %@ chatItems.count %@", &v46, 0x20u);
      }
    }
  }

  else
  {
    v24 = [chatItems2 objectAtIndex:{objc_msgSend(v10, "item")}];
    delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
    v26 = [delegate3 transcriptCollectionViewController:self balloonView:tappedCopy shouldSelectChatItem:v24];

    if (flags || v26)
    {
      [(CKTranscriptCollectionViewController *)self balloonViewSelected:tappedCopy withModifierFlags:flags selectedText:textCopy];
    }

    else
    {
      v27 = +[CKUIBehavior sharedBehaviors];
      enableBalloonTextSelection = [v27 enableBalloonTextSelection];

      if (enableBalloonTextSelection)
      {
        selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
        [selectionManager removeAllSelectedMessageGuids];
      }

      if (v21)
      {
        delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
        [delegate4 transcriptCollectionViewController:self balloonView:tappedCopy tappedForChatItem:v24];
      }
    }
  }

LABEL_36:
}

- (void)saveHyperlinkBalloonViewData:(id)data withHyperlink:(id)hyperlink
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  hyperlinkCopy = hyperlink;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [&unk_1F04E6A20 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(&unk_1F04E6A20);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        absoluteString = [hyperlinkCopy absoluteString];
        LOBYTE(v12) = [absoluteString containsString:v12];

        if (v12)
        {
          v14 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:dataCopy];
          chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
          v16 = [chatItems objectAtIndex:{objc_msgSend(v14, "item")}];
          delegate = [(CKTranscriptCollectionViewController *)self delegate];
          v18 = objc_opt_respondsToSelector();

          if (v18)
          {
            delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
            [delegate2 transcriptCollectionViewController:self saveLastTappedChatItemWithDataDetector:v16];
          }

          goto LABEL_13;
        }
      }

      v9 = [&unk_1F04E6A20 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_handleAudioBalloonPreviewSuppressionStateForUntrustedSenders:(id)senders
{
  sendersCopy = senders;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [sendersCopy row];
  if (v6 < [chatItems count])
  {
    chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
    v8 = [chatItems2 objectAtIndexedSubscript:{objc_msgSend(sendersCopy, "row")}];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_18:

        goto LABEL_19;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Handling audio balloon tapped for invalid chatItem.", v13, 2u);
      }

LABEL_17:

      goto LABEL_18;
    }

    v9 = v8;
    mediaObject = [v9 mediaObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = mediaObject;
      if (([v11 hasBeenPlayed]& 1) == 0)
      {
        [v11 setHasBeenPlayed:1];
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_16:

        goto LABEL_17;
      }

      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Handling audio balloon tapped for invalid mediaObject.", v12, 2u);
      }
    }

    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Handling audio balloon tapped for invalid indexPath.", buf, 2u);
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)_handleAudioBalloonTapForIndexPath:(id)path
{
  v35 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  item = [pathCopy item];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  audioController = [v7 audioController];

  currentMediaObject = [audioController currentMediaObject];
  transfer = [currentMediaObject transfer];
  v11 = [chatItems __ck_indexOfTransfer:transfer];

  [(CKTranscriptCollectionViewController *)self _handleAudioBalloonPreviewSuppressionStateForUntrustedSenders:pathCopy];
  if (v11 == item)
  {
    if ([audioController isPlaying])
    {
      [audioController pause];
    }

    else
    {
      v17 = CKAudioPlaybackSpeakerEnabled();
      [audioController setShouldUseSpeaker:v17];
      v18 = 1.0;
      if (v17)
      {
        v18 = 0.0;
      }

      [audioController playAfterDelay:v18];
    }
  }

  else
  {
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v13 = [delegate transcriptCollectionViewControllerShouldPlayAudio:self];

    if (v13)
    {
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [audioController stop];

        audioController = 0;
      }

      v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v15 = [chatItems objectAtIndex:item];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        if ([v16 isFromMe] & 1) != 0 || (objc_msgSend(v16, "isPlayed"))
        {
          [v14 addIndex:item];
        }

        else
        {
          __ck_indexesOfUnplayedAudioMessages = [chatItems __ck_indexesOfUnplayedAudioMessages];
          [v14 addIndexes:__ck_indexesOfUnplayedAudioMessages];

          [v14 removeIndexesInRange:{0, item}];
        }

        if ([v14 count])
        {
          v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __75__CKTranscriptCollectionViewController__handleAudioBalloonTapForIndexPath___block_invoke;
          v29[3] = &unk_1E72F2768;
          v30 = v21;
          v22 = v21;
          [chatItems enumerateObjectsAtIndexes:v14 options:0 usingBlock:v29];
          v23 = [CKAudioController alloc];
          conversation = [(CKTranscriptCollectionViewController *)self conversation];
          v25 = [(CKAudioController *)v23 initWithMediaObjects:v22 conversation:conversation];

          [(CKAudioController *)v25 setDelegate:self];
          v26 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
          [v26 setAudioController:v25];

          v27 = CKAudioPlaybackSpeakerEnabled();
          [(CKAudioController *)v25 setShouldUseSpeaker:v27];
          v28 = 1.0;
          if (v27)
          {
            v28 = 0.0;
          }

          [(CKAudioController *)v25 playAfterDelay:v28];

          audioController = v25;
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v32 = item;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Handling audio balloon tapped for indexPath that returned an invalid chatItem type. Index: %lu, ChatItem: %@", buf, 0x16u);
          }
        }

        v16 = 0;
      }
    }
  }
}

void __75__CKTranscriptCollectionViewController__handleAudioBalloonTapForIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mediaObject];
  [v2 addObject:v3];
}

- (void)_presentOfframpDetonationAlert
{
  v3 = IMSharedUtilitiesFrameworkBundle();
  v13 = [v3 localizedStringForKey:@"LOCKDOWN_ATTACHMENT_BALLOON_ALERT_TITLE" value:&stru_1F04268F8 table:@"IMSharedUtilities-Offramp"];

  v4 = IMSharedUtilitiesFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"LOCKDOWN_ATTACHMENT_BALLOON_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"IMSharedUtilities-Offramp"];

  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v8 = [CKAlertAction actionWithTitle:v7 style:1 handler:0];

  v9 = IMSharedUtilitiesFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"LOCKDOWN_ATTACHMENT_BALLOON_ALERT_LEARN_MORE_BUTTON" value:&stru_1F04268F8 table:@"IMSharedUtilities-Offramp"];

  v11 = [CKAlertAction actionWithTitle:v10 style:0 handler:&__block_literal_global_851];
  v12 = [CKAlertController alertControllerWithTitle:v13 message:v5 preferredStyle:1];
  [v12 addAction:v8];
  [v12 addAction:v11];
  [(CKTranscriptCollectionViewController *)self presentViewController:v12 animated:1 completion:0];
}

void __70__CKTranscriptCollectionViewController__presentOfframpDetonationAlert__block_invoke()
{
  v1 = +[CKTranscriptCollectionViewController offrampLearnMoreURL];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openURL:v1 configuration:0 completionHandler:0];
}

+ (id)offrampLearnMoreURL
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"offramp-learn-more-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Received offramp learn more URL from server: %@", &v8, 0xCu);
      }
    }

    v5 = v3;
  }

  else
  {
    v5 = @"https://support.apple.com/kb/HT212650";
  }

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];

  return v6;
}

- (void)audioBalloonScrubberDidChangeValue:(double)value
{
  v4 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  audioController = [v4 audioController];

  [audioController setCurrentTime:value];
}

- (void)audioBalloonDidResize:(id)resize isExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:resize];
  item = [v9 item];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [chatItems objectAtIndex:item];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setIsExpanded:expandedCopy];
  }

  [(CKTranscriptCollectionViewController *)self unloadCachedSizeAndReloadChatItemAtIndexPath:v9];
}

- (void)launchReaderViewForBalloonView:(id)view
{
  viewCopy = view;
  v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];
  item = [v9 item];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [chatItems objectAtIndex:item];

  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self balloonView:viewCopy didRequestReaderViewControllerForChatItem:v7];
}

- (void)balloonView:(id)view selectedChipAction:(id)action
{
  actionCopy = action;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate2 transcriptCollectionViewController:self selectedChipAction:actionCopy];
  }
}

- (void)didTapChipListFromNotificationExtensionWithBalloonView:(id)view
{
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate2 launchAppFromExtensionWith:self];
  }
}

- (void)balloonView:(id)view selectedSuggestedReply:(id)reply messageGUID:(id)d
{
  replyCopy = reply;
  dCopy = d;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate2 transcriptCollectionViewController:self selectedSuggestedReply:replyCopy messageGUID:dCopy];
  }
}

- (void)didTapTruncatedCaptionForRichCard:(id)card onBalloonView:(id)view
{
  cardCopy = card;
  viewCopy = view;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate2 transcriptCollectionViewController:self didTapTruncatedCaptionForRichCard:cardCopy onBalloonView:viewCopy];
  }
}

- (void)balloonView:(id)view carouselScrolledToIndex:(int64_t)index
{
  v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:view];
  item = [v6 item];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v9 = [chatItems objectAtIndex:item];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    suggestedRepliesChatItemGUIDPrefix = [MEMORY[0x1E69A5CB0] suggestedRepliesChatItemGUIDPrefix];
    iMChatItem = [v9 IMChatItem];
    guid = [iMChatItem guid];
    v13 = [suggestedRepliesChatItemGUIDPrefix stringByAppendingString:guid];
    v14 = [(CKTranscriptCollectionViewController *)self chatItemForGUID:v13];

    if ([v14 selectedIndex] != index && v14)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__CKTranscriptCollectionViewController_balloonView_carouselScrolledToIndex___block_invoke;
      block[3] = &unk_1E72EBC38;
      block[4] = self;
      v24 = v14;
      indexCopy = index;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    richCardCountChatItemGUIDPrefix = [MEMORY[0x1E69A5C60] richCardCountChatItemGUIDPrefix];
    iMChatItem2 = [v9 IMChatItem];
    guid2 = [iMChatItem2 guid];
    v18 = [richCardCountChatItemGUIDPrefix stringByAppendingString:guid2];
    v19 = [(CKTranscriptCollectionViewController *)self chatItemForGUID:v18];

    if (v19 && [v19 selectedRichCardIndex] != index)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __76__CKTranscriptCollectionViewController_balloonView_carouselScrolledToIndex___block_invoke_2;
      v20[3] = &unk_1E72EBC38;
      v20[4] = self;
      v21 = v19;
      indexCopy2 = index;
      dispatch_async(MEMORY[0x1E69E96A0], v20);
    }
  }
}

void __76__CKTranscriptCollectionViewController_balloonView_carouselScrolledToIndex___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) chat];
  v2 = [*(a1 + 40) IMChatItem];
  [v3 setSelectedIndexOnCarouselChatItem:v2 selectedIndex:*(a1 + 48)];
}

void __76__CKTranscriptCollectionViewController_balloonView_carouselScrolledToIndex___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) chat];
  v2 = [*(a1 + 40) IMChatItem];
  [v3 setSelectedIndexOnCarouselChatItem:v2 selectedIndex:*(a1 + 48)];
}

- (BOOL)_isRecognizerScrubbingOnCurrentAudioMessageBalloon:(id)balloon
{
  balloonCopy = balloon;
  v4 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  audioController = [v4 audioController];

  view = [balloonCopy view];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mediaObject = [view mediaObject];
    currentMediaObject = [audioController currentMediaObject];
    v9 = [mediaObject isEqual:currentMediaObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)audioBalloonScrubberWithRecognizer:(id)recognizer didChangeValue:(double)value
{
  recognizerCopy = recognizer;
  if ([(CKTranscriptCollectionViewController *)self _isRecognizerScrubbingOnCurrentAudioMessageBalloon:recognizerCopy])
  {
    v7 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
    audioController = [v7 audioController];

    state = [recognizerCopy state];
    if (state == 2)
    {
      [audioController layoutViewsForScrubbingTime:value];
    }

    else
    {
      if (state == 1)
      {
        [audioController layoutViewsForScrubbingTime:value];
        if ([audioController isPlaying])
        {
          [(CKTranscriptCollectionViewController *)self setAudioControllerWasPlayingBeforeScrub:1];
          [audioController pause];
        }

        else
        {
          [(CKTranscriptCollectionViewController *)self setAudioControllerWasPlayingBeforeScrub:0];
        }

        collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
        v11 = collectionView;
        v12 = 0;
      }

      else
      {
        [audioController setCurrentTime:value];
        if ([(CKTranscriptCollectionViewController *)self audioControllerWasPlayingBeforeScrub])
        {
          [audioController play];
        }

        collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
        v11 = collectionView;
        v12 = 1;
      }

      [collectionView setScrollEnabled:v12];
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    audioController = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(audioController, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_19020E000, audioController, OS_LOG_TYPE_INFO, "Attempted to scrub audio message balloon that is not currently being played.", v13, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)playbackSpeedDidChangeForAudioMessageBalloonView:(id)view playbackSpeed:(double)speed
{
  v30[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  audioController = [v7 audioController];

  [audioController setPlaybackSpeed:speed];
  v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];
  item = [v9 item];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v12 = [chatItems objectAtIndex:item];

  v30[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [CKChatItem unloadSizesOfChatItems:v13];

  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout reloadLayout];

  chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
  currentMediaObject = [audioController currentMediaObject];
  transfer = [currentMediaObject transfer];
  v18 = [chatItems2 __ck_indexOfTransfer:transfer];

  if (v18 == item)
  {
    if (([audioController isPlaying] & 1) == 0)
    {
      v19 = CKAudioPlaybackSpeakerEnabled();
      [audioController setShouldUseSpeaker:v19];
      v20 = 1.0;
      if (v19)
      {
        v20 = 0.0;
      }

      [audioController playAfterDelay:v20];
    }
  }

  else
  {
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v22 = [delegate transcriptCollectionViewControllerShouldPlayAudio:self];

    if (v22)
    {
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [audioController stop];

        audioController = 0;
      }

      v23 = [(CKTranscriptCollectionViewController *)self audioMessageMediaObjectsFromBalloonView:viewCopy];
      if ([v23 count])
      {
        v24 = [CKAudioController alloc];
        conversation = [(CKTranscriptCollectionViewController *)self conversation];
        v26 = [(CKAudioController *)v24 initWithMediaObjects:v23 conversation:conversation];

        [(CKAudioController *)v26 setDelegate:self];
        v27 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
        [v27 setAudioController:v26];

        v28 = CKAudioPlaybackSpeakerEnabled();
        [(CKAudioController *)v26 setShouldUseSpeaker:v28];
        v29 = 1.0;
        if (v28)
        {
          v29 = 0.0;
        }

        [(CKAudioController *)v26 playAfterDelay:v29];
        [(CKAudioController *)v26 setPlaybackSpeed:speed];
        audioController = v26;
      }
    }
  }
}

- (id)audioMessageMediaObjectsFromBalloonView:(id)view
{
  v4 = MEMORY[0x1E696AD50];
  viewCopy = view;
  v6 = objc_alloc_init(v4);
  v7 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];

  item = [v7 item];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v10 = [chatItems objectAtIndex:item];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([v11 isFromMe] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(v11, "isPlayed"))
  {
    [v6 addIndex:item];
  }

  else
  {
    chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
    __ck_indexesOfUnplayedAudioMessages = [chatItems2 __ck_indexesOfUnplayedAudioMessages];
    [v6 addIndexes:__ck_indexesOfUnplayedAudioMessages];

    [v6 removeIndexesInRange:{0, item}];
  }

  if ([v6 count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    chatItems3 = [(CKTranscriptCollectionViewController *)self chatItems];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__CKTranscriptCollectionViewController_audioMessageMediaObjectsFromBalloonView___block_invoke;
    v19[3] = &unk_1E72F0918;
    v20 = v12;
    v14 = v12;
    [chatItems3 enumerateObjectsAtIndexes:v6 options:0 usingBlock:v19];

    v15 = [v14 copy];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

void __80__CKTranscriptCollectionViewController_audioMessageMediaObjectsFromBalloonView___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v5 mediaObject];
    [v3 addObject:v4];
  }
}

- (void)liveBalloonTouched:(id)touched
{
  touchedCopy = touched;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = touchedCopy;
  if (isKindOfClass)
  {
    v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:touchedCopy];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v8 = [collectionView cellForItemAtIndexPath:v6];

    v9 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bundleIdentifier = [v9 bundleIdentifier];
      [(CKTranscriptCollectionViewController *)self setMostRecentlyTouchedPlugin:bundleIdentifier];
    }

    v5 = touchedCopy;
  }
}

- (void)interactionStartedWithPluginBalloonView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [collectionView cellForItemAtIndexPath:v5];

    v8 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      syndicationBehavior = [v8 syndicationBehavior];
      isHighlighted = [v8 isHighlighted];
      syndicationType = [v8 syndicationType];
      if (syndicationBehavior == 1 && (isHighlighted & 1) == 0 && !syndicationType)
      {
        iMChatItem = [v8 IMChatItem];
        dataSource = [iMChatItem dataSource];
        pluginPayload = [dataSource pluginPayload];

        mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
        v16 = [mEMORY[0x1E69A5AD0] dataSourceForPluginPayload:pluginPayload];

        richLinkMetadata = [v16 richLinkMetadata];
        collaborationMetadata = [richLinkMetadata collaborationMetadata];

        canPerformQuickAction = [v8 canPerformQuickAction];
        if ((canPerformQuickAction & 1) != 0 || collaborationMetadata)
        {
          v20 = collaborationMetadata != 0;
          v21 = dispatch_time(0, 100000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __80__CKTranscriptCollectionViewController_interactionStartedWithPluginBalloonView___block_invoke;
          block[3] = &unk_1E72ED5C0;
          v25 = canPerformQuickAction;
          v26 = v20;
          v23 = v8;
          selfCopy = self;
          dispatch_after(v21, MEMORY[0x1E69E96A0], block);
        }
      }
    }
  }
}

void __80__CKTranscriptCollectionViewController_interactionStartedWithPluginBalloonView___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) IMChatItem];
      v4 = [v3 guid];
      v5 = v4;
      v6 = @"NO";
      v7 = *(a1 + 49);
      if (*(a1 + 48))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      *v14 = 138412802;
      if (v7)
      {
        v6 = @"YES";
      }

      *&v14[4] = v4;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Sending syndication action Interacted with item for chatItem with guid %@. canPerformQuickAction: %@, supportsCollaboration: %@", v14, 0x20u);
    }
  }

  v9 = [*(a1 + 40) chat];
  v10 = [*(a1 + 32) IMChatItem];
  v11 = [v10 guid];
  v12 = [*(a1 + 32) messagePartRange];
  [v9 sendSyndicationAction:64 forMessagePartGUID:v11 syndicatedMessagePartRange:{v12, v13}];
}

- (void)balloonViewLongTouched:(id)touched
{
  touchedCopy = touched;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:touchedCopy];
  [delegate transcriptCollectionViewController:self balloonView:touchedCopy longPressedForItemWithIndexPath:v5];
}

- (void)balloonViewShowInlineReply:(id)reply
{
  replyCopy = reply;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:replyCopy];
  v6 = +[CKInlineReplyTransitionProperties defaultProperties];
  [delegate transcriptCollectionViewController:self balloonView:replyCopy showInlineReplyForItemWithIndexPath:v5 withReplyTransitionProperties:v6];
}

- (void)balloonViewDoubleTapped:(id)tapped
{
  v17 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = tappedCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received balloonViewDoubleTapped: callback for balloonView %@", &v13, 0xCu);
    }
  }

  if (!CKIsRunningInMacCatalyst())
  {
    v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:tappedCopy];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        delegate = [(CKTranscriptCollectionViewController *)self delegate];
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = delegate;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Calling into delegate to handle balloon double tap with indexPath %@, delegate: %@", &v13, 0x16u);
      }
    }

    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate2 transcriptCollectionViewController:self balloonView:tappedCopy doubleTappedItemAtIndexPath:v6];
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:tappedCopy];
    item = [v6 item];
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v10 = [chatItems objectAtIndex:item];
    [delegate2 transcriptCollectionViewController:self balloonView:tappedCopy tappedForChatItem:v10];

LABEL_13:
  }
}

- (void)balloonViewSelected:(id)selected withModifierFlags:(int64_t)flags selectedText:(id)text
{
  selectedCopy = selected;
  textCopy = text;
  v9 = +[CKUIBehavior sharedBehaviors];
  enableBalloonTextSelection = [v9 enableBalloonTextSelection];

  if (enableBalloonTextSelection)
  {
    [(CKTranscriptCollectionViewController *)self _searchForSelectedBalloonHack];
    selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
    v12 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:selectedCopy];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    item = [v12 item];
    if ((item & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    v15 = item;
    if (item >= [chatItems count])
    {
      goto LABEL_25;
    }

    v16 = [chatItems objectAtIndex:v15];
    iMChatItem = [v16 IMChatItem];
    guid = [iMChatItem guid];

    if ([selectionManager isMessageGuidSelected:guid])
    {
      if (flags == 0x100000)
      {
        [selectionManager removeSelectedMessageGuid:guid];
        goto LABEL_24;
      }

      if (flags != 0x20000)
      {
        selectedGuidCount = [selectionManager selectedGuidCount];
        [selectionManager removeAllSelectedMessageGuids];
        if (selectedGuidCount < 2)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (flags == 0x100000)
      {
        trackedGuid = [selectionManager trackedGuid];

        if (trackedGuid)
        {
          trackedGuid2 = [selectionManager trackedGuid];
          v22 = [selectionManager selectedStateForGuid:trackedGuid2];

          if (v22)
          {
            style = [v22 style];
          }

          else
          {
            style = 0;
          }
        }

        else
        {
          style = 0;
        }

        v24 = style;
        goto LABEL_23;
      }

      if (flags != 0x20000)
      {
        if (![textCopy length])
        {
          [selectionManager removeAllSelectedMessageGuids];
LABEL_18:
          v24 = 0;
LABEL_23:
          v25 = [CKBalloonSelectionState balloonSelectionState:v24];
          [selectionManager addSelectedMessageGuid:guid selectionState:v25];
        }

LABEL_24:

LABEL_25:
        goto LABEL_26;
      }
    }

    [(CKTranscriptCollectionViewController *)self selectRangeWithIndexPath:v12];
    goto LABEL_24;
  }

LABEL_26:
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v27 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:selectedCopy];
  [delegate transcriptCollectionViewController:self balloonView:selectedCopy selectedItemAtIndexPath:v27];
}

- (id)selectedChatItems
{
  v21 = *MEMORY[0x1E69E9840];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  array = [MEMORY[0x1E695DF70] array];
  selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = chatItems;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        iMChatItem = [v11 IMChatItem];
        guid = [iMChatItem guid];
        v14 = [selectionManager isMessageGuidSelected:guid];

        if (v14)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)groupTypingIndicatorChatItem
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  reverseObjectEnumerator = [chatItems reverseObjectEnumerator];

  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)balloonTextViewIsSelected
{
  v12 = *MEMORY[0x1E69E9840];
  [(CKTranscriptCollectionViewController *)self selectedChatItems];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_selectChatItemGuid:(id)guid selectionState:(id)state
{
  guidCopy = guid;
  stateCopy = state;
  if (([(CKTranscriptCollectionViewController *)self isEditing]& 1) == 0)
  {
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v8 = [chatItems __ck_chatItemWithGUID:guidCopy];

    v9 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      balloonView = [v9 balloonView];
      [balloonView setSelected:1 withSelectionState:stateCopy];
    }
  }
}

- (void)_deselectChatItemGuid:(id)guid
{
  guidCopy = guid;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [chatItems __ck_chatItemWithGUID:guidCopy];

  v6 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    balloonView = [v6 balloonView];
    [balloonView setSelected:0 withSelectionState:0];
  }
}

- (void)balloonViewTextViewDidChangeSelection:(id)selection selectedText:(id)text textView:(id)view
{
  selectionCopy = selection;
  viewCopy = view;
  if ([text length])
  {
    v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:selectionCopy];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    item = [v9 item];
    if ((item & 0x8000000000000000) == 0)
    {
      v12 = item;
      if (item < [chatItems count])
      {
        v13 = [chatItems objectAtIndex:v12];
        iMChatItem = [v13 IMChatItem];
        guid = [iMChatItem guid];

        selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
        selectedRange = [viewCopy selectedRange];
        v19 = [CKBalloonSelectionState balloonSelectionState:1 textSelectionRange:selectedRange, v18];
        [selectionManager trackSelectedGuid:guid selectionState:v19];

        selectionManager2 = [(CKTranscriptCollectionViewController *)self selectionManager];
        [selectionManager2 removeAllSelectedMessageGuidsExceptTrackedGuid];
      }
    }
  }
}

- (void)balloonViewWillDismissEditMenu:(id)menu
{
  menuCopy = menu;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate2 transcriptCollectionViewController:self balloonViewWillDismissEditMenu:menuCopy];
  }
}

- (void)balloonView:(id)view userDidDragOutsideBalloonWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];
  v10 = [chatItems objectAtIndex:{objc_msgSend(v9, "item")}];
  iMChatItem = [v10 IMChatItem];
  guid = [iMChatItem guid];

  [collectionView convertPoint:viewCopy fromView:{x, y}];
  v14 = v13;
  v16 = v15;
  collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
  v18 = [collectionView2 indexPathForItemAtPoint:{v14, v16}];

  if (v18 && ![v18 section] && objc_msgSend(v18, "item") >= 1)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    item = [v18 item];
    if (item >= [v9 item])
    {
      item2 = [v9 item];
      if (item2 < [v18 item])
      {
        for (i = [v9 item]; i <= objc_msgSend(v18, "item"); ++i)
        {
          v27 = [chatItems objectAtIndex:i];
          iMChatItem2 = [v27 IMChatItem];
          guid2 = [iMChatItem2 guid];

          if (([guid2 isEqualToString:guid] & 1) == 0)
          {
            v30 = [CKBalloonSelectionState balloonSelectionState:1];
            [dictionary setObject:v30 forKey:guid2];
          }
        }
      }
    }

    else
    {
      for (j = [v18 item]; j <= objc_msgSend(v9, "item"); ++j)
      {
        v21 = [chatItems objectAtIndex:j];
        iMChatItem3 = [v21 IMChatItem];
        guid3 = [iMChatItem3 guid];

        if (([guid3 isEqualToString:guid] & 1) == 0)
        {
          v24 = [CKBalloonSelectionState balloonSelectionState:1];
          [dictionary setObject:v24 forKey:guid3];
        }
      }
    }

    selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
    [selectionManager setSelectedGuids:dictionary];
  }
}

- (void)balloonView:(id)view willInsertPluginViewAsSubview:(id)subview
{
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  subviewCopy = subview;
  v8 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];
  v9 = [v8 row];
  if (v8)
  {
    v10 = v9;
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v12 = [chatItems count];

    if (v10 < v12)
    {
      chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
      v14 = [chatItems2 objectAtIndex:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v21 = 134217984;
            v22 = v10;
            _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Inserting plugin view as subview at index %li, resulting in a call to [CKTranscriptBalloonPluginController contentViewController].", &v21, 0xCu);
          }
        }

        transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
        v17 = [v14 contentViewControllerForContext:transcriptIdentifier];

        parentViewController = [v17 parentViewController];
        v19 = parentViewController;
        if (parentViewController)
        {
          if (parentViewController != self)
          {
            [(CKTranscriptCollectionViewController *)parentViewController removeChildViewController:v17];
            [(CKTranscriptCollectionViewController *)self addChildViewController:v17];
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = 134217984;
                v22 = v10;
                _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Re-parented chat item content view controller for chat item at index:%li", &v21, 0xCu);
              }
            }
          }
        }
      }
    }
  }
}

- (void)quickActionButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Quick save button tapped.", buf, 2u);
    }
  }

  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33;
  v25 = __Block_byref_object_dispose__33;
  v26 = 0;
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CKTranscriptCollectionViewController_quickActionButtonWasTapped___block_invoke;
  v17[3] = &unk_1E72F2790;
  v8 = collectionView;
  v18 = v8;
  v9 = tappedCopy;
  v19 = v9;
  v20 = buf;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v17];

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v11 = *(v22 + 5);
  if (!v11 || [v11 item] < 0 || (v12 = objc_msgSend(*(v22 + 5), "item"), v12 >= objc_msgSend(chatItems, "count")))
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController quickActionButtonWasTapped:];
    }
  }

  else
  {
    v13 = [chatItems objectAtIndex:{objc_msgSend(*(v22 + 5), "item")}];
    if (([v13 canPerformQuickAction]& 1) != 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v15 = *(v22 + 5);
      if (isKindOfClass)
      {
        [(CKTranscriptCollectionViewController *)self _quickActionPinButtonWasTapped:v9 atIndexPath:v15 chatItem:v13];
      }

      else
      {
        [(CKTranscriptCollectionViewController *)self _quickActionSaveButtonWasTapped:v9 atIndexPath:v15 chatItem:v13];
      }
    }

    else
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController quickActionButtonWasTapped:];
      }
    }
  }

  _Block_object_dispose(buf, 8);
}

void __67__CKTranscriptCollectionViewController_quickActionButtonWasTapped___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) cellForItemAtIndexPath:?];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 quickActionButton];
    v9 = *(a1 + 40);

    if (v8 == v9)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)_quickActionPinButtonWasTapped:(id)tapped atIndexPath:(id)path chatItem:(id)item
{
  v32 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  pathCopy = path;
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = itemCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Request to Pin chat item: %@", buf, 0xCu);
    }
  }

  v12 = tappedCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__CKTranscriptCollectionViewController__quickActionPinButtonWasTapped_atIndexPath_chatItem___block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  v13 = v12;
  v29 = v13;
  v14 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __92__CKTranscriptCollectionViewController__quickActionPinButtonWasTapped_atIndexPath_chatItem___block_invoke_2;
  v26[3] = &unk_1E72EC088;
  v15 = v13;
  v27 = v15;
  v16 = _Block_copy(v26);
  v14[2](v14);
  v17 = dispatch_time(0, 100000000);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__CKTranscriptCollectionViewController__quickActionPinButtonWasTapped_atIndexPath_chatItem___block_invoke_3;
  v21[3] = &unk_1E72F1C80;
  v22 = itemCopy;
  selfCopy = self;
  v24 = v15;
  v25 = v16;
  v18 = itemCopy;
  v19 = v16;
  v20 = v15;
  dispatch_after(v17, MEMORY[0x1E69E96A0], v21);
}

uint64_t __92__CKTranscriptCollectionViewController__quickActionPinButtonWasTapped_atIndexPath_chatItem___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 3;
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return [v2 setState:v3 animated:v4];
}

void __92__CKTranscriptCollectionViewController__quickActionPinButtonWasTapped_atIndexPath_chatItem___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) isHighlighted];
  v3 = [*(a1 + 40) chat];
  v4 = [*(a1 + 32) IMChatItem];
  v5 = [v4 guid];
  v7 = [*(a1 + 32) messagePartRange];
  if (v2)
  {
    v8 = 8;
  }

  else
  {
    v8 = 4;
  }

  [v3 sendSyndicationAction:v8 forMessagePartGUID:v5 syndicatedMessagePartRange:{v7, v6}];

  (*(*(a1 + 56) + 16))();
  v9 = [*(a1 + 32) IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [*(a1 + 32) IMChatItem];
    v20 = [v11 messageItem];

    v12 = [v20 swyAppName];
    v13 = [v20 swyBundleID];
    v14 = v13;
    if (v12 && v13)
    {
      v15 = [MEMORY[0x1E69A8288] sharedManager];
      v16 = v15;
      if (v2)
      {
        [v15 decrementPinCountForBundleID:v14];
      }

      else
      {
        [v15 incrementPinCountForBundleID:v14];

        v17 = [MEMORY[0x1E69A8288] sharedManager];
        v18 = [v17 getPinCountForBundleID:v14];

        v19 = [MEMORY[0x1E69A8288] isSharedWithYouEnabledForApplicationWithBundleID:v14];
        if (v18 >= 3 && (v19 & 1) == 0)
        {
          [*(a1 + 40) _showAutoDonationAlert:*(a1 + 48) forAppName:v12 bundleID:v14];
        }
      }
    }
  }
}

- (void)_showAutoDonationAlert:(id)alert forAppName:(id)name bundleID:(id)d
{
  alertCopy = alert;
  nameCopy = name;
  dCopy = d;
  if ([nameCopy length] && objc_msgSend(dCopy, "length"))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"SHARED_WITH_YOU_AUTO_DONATION_ALERT" value:&stru_1F04268F8 table:@"ChatKit"];
    nameCopy = [v11 stringWithFormat:v13, nameCopy, nameCopy];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v17 = @"\u200F";
    }

    else
    {
      v17 = @"\u200E";
    }

    v18 = [(__CFString *)v17 stringByAppendingString:nameCopy];

    v19 = [CKAlertController alertControllerWithTitle:v18 message:0 preferredStyle:0];
    v20 = CKFrameworkBundle();
    v21 = [v20 localizedStringForKey:@"SHARED_WITH_YOU_OK_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __83__CKTranscriptCollectionViewController__showAutoDonationAlert_forAppName_bundleID___block_invoke;
    v27[3] = &unk_1E72EC710;
    v28 = dCopy;
    selfCopy = self;
    v22 = [CKAlertAction actionWithTitle:v21 style:0 handler:v27];
    [v19 addAction:v22];

    v23 = CKFrameworkBundle();
    v24 = [v23 localizedStringForKey:@"SHARED_WITH_YOU_CANCEL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v25 = [CKAlertAction actionWithTitle:v24 style:1 handler:0];
    [v19 addAction:v25];

    popoverPresentationController = [v19 popoverPresentationController];
    [popoverPresentationController setSourceView:alertCopy];

    [(CKTranscriptCollectionViewController *)self presentViewController:v19 animated:1 completion:0];
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController _showAutoDonationAlert:forAppName:bundleID:];
    }
  }
}

void __83__CKTranscriptCollectionViewController__showAutoDonationAlert_forAppName_bundleID___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E69A8288] setSharedWithYouEnabled:1 forApplicationWithBundleID:*(a1 + 32)];
  v2 = [*(a1 + 40) collectionView];
  [v2 reloadData];
}

- (void)_quickActionSaveButtonWasTapped:(id)tapped atIndexPath:(id)path chatItem:(id)item
{
  v26 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  pathCopy = path;
  itemCopy = item;
  v11 = [(CKTranscriptCollectionViewController *)self balloonViewAtIndexPath:pathCopy];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = *MEMORY[0x1E69A7540];
      v13 = v11;
      -[CKTranscriptCollectionViewController _trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:](self, "_trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:", v12, v13, [itemCopy transcriptOrientation]);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = itemCopy;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Request to quick save chat item: %@", buf, 0xCu);
    }
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(CKTranscriptCollectionViewController *)self _mediaObjectsForOrganicChatItem:itemCopy onIndexPath:pathCopy];
    if ([v16 count])
    {
      [v15 addObjectsFromArray:v16];
      momentShareURL = CKMomentShareURLForMediaObjects(v16);
    }

    else
    {
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController _quickActionSaveButtonWasTapped:atIndexPath:chatItem:];
      }

      momentShareURL = 0;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = itemCopy;
    mediaObject = [v16 mediaObject];
    if (mediaObject)
    {
      [v15 addObject:mediaObject];
      v23 = mediaObject;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      momentShareURL = CKMomentShareURLForMediaObjects(v19);
    }

    else
    {
      momentShareURL = 0;
    }

LABEL_23:
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = itemCopy;
    momentShareURL = [v16 momentShareURL];
    mediaObjects = [v16 mediaObjects];

    if (mediaObjects)
    {
      mediaObjects2 = [v16 mediaObjects];
      [v15 addObjectsFromArray:mediaObjects2];
    }

    goto LABEL_23;
  }

  momentShareURL = 0;
LABEL_24:
  [(CKTranscriptCollectionViewController *)self _saveMediaObjects:v15 withMomentShareURL:momentShareURL sender:tappedCopy];
}

- (id)_mediaObjectsForOrganicChatItem:(id)item onIndexPath:(id)path
{
  v46 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  pathCopy = path;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  if (!pathCopy || [pathCopy item] < 0 || (v8 = objc_msgSend(pathCopy, "item"), v8 >= objc_msgSend(chatItems, "count")))
  {
    v18 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v9 addObject:itemCopy];
    layoutRecipe = [itemCopy layoutRecipe];
    groupIdentifier = [layoutRecipe groupIdentifier];

    item = [pathCopy item];
    if (item >= 1)
    {
      v12 = item + 1;
      while (1)
      {
        v13 = [chatItems objectAtIndex:{v12 - 2, itemCopy}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v14 = v13;
        layoutRecipe2 = [v14 layoutRecipe];
        groupIdentifier2 = [layoutRecipe2 groupIdentifier];
        v17 = [groupIdentifier isEqualToString:groupIdentifier2];

        if ((v17 & 1) == 0)
        {

          break;
        }

        [v9 addObject:v14];

        if (--v12 < 2)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_16:
    for (i = [pathCopy item] + 1; i < objc_msgSend(chatItems, "count"); ++i)
    {
      v21 = [chatItems objectAtIndex:i];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v22 = v21;
      layoutRecipe3 = [v22 layoutRecipe];
      groupIdentifier3 = [layoutRecipe3 groupIdentifier];
      v25 = [groupIdentifier isEqualToString:groupIdentifier3];

      if ((v25 & 1) == 0)
      {

LABEL_22:
        break;
      }

      [v9 addObject:v22];
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        *buf = 138412546;
        v43 = v27;
        v44 = 2112;
        v45 = groupIdentifier;
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Quick saving all %@ chat items in organic layout group with identifier %@", buf, 0x16u);
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = v9;
    v29 = [v28 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v29)
    {
      v30 = *v38;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v37 + 1) + 8 * j);
          mediaObject = [v32 mediaObject];

          if (mediaObject)
          {
            mediaObject2 = [v32 mediaObject];
            [v18 addObject:mediaObject2];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v29);
    }
  }

  return v18;
}

- (void)_saveMediaObjects:(id)objects withMomentShareURL:(id)l sender:(id)sender
{
  objectsCopy = objects;
  lCopy = l;
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = senderCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__CKTranscriptCollectionViewController__saveMediaObjects_withMomentShareURL_sender___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    v12 = v11;
    v27 = v12;
    v13 = _Block_copy(aBlock);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __84__CKTranscriptCollectionViewController__saveMediaObjects_withMomentShareURL_sender___block_invoke_2;
    v24[3] = &unk_1E72EBA18;
    v14 = v12;
    v25 = v14;
    v15 = _Block_copy(v24);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __84__CKTranscriptCollectionViewController__saveMediaObjects_withMomentShareURL_sender___block_invoke_3;
    v22 = &unk_1E72EC088;
    v16 = v14;
    v23 = v16;
    v17 = _Block_copy(&v19);
    if (lCopy)
    {
      v15[2](v15);
      if (CKSaveMomentShareFromURL(lCopy, 0, v17))
      {
LABEL_11:

        goto LABEL_12;
      }

      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController _saveMediaObjects:withMomentShareURL:sender:];
      }
    }

    else
    {
      v18 = [CKUtilities quickSaveConfirmationAlertForMediaObjects:objectsCopy momentShareURL:0 popoverSource:v16 metricsSource:*MEMORY[0x1E69A7660] cancelHandler:v13 preSaveHandler:v15 postSaveHandler:v17, v19, v20, v21, v22];
      if (v18)
      {
        [(CKTranscriptCollectionViewController *)self presentViewController:v18 animated:1 completion:0];
      }
    }

    goto LABEL_11;
  }

  v16 = IMLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [CKTranscriptCollectionViewController _saveMediaObjects:withMomentShareURL:sender:];
  }

LABEL_12:
}

uint64_t __84__CKTranscriptCollectionViewController__saveMediaObjects_withMomentShareURL_sender___block_invoke_3(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 3;
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return [v2 setState:v3 animated:v4];
}

- (void)_handleAssociatedMessageCellTapEvent:(id)event isDoubleTap:(BOOL)tap
{
  tapCopy = tap;
  eventCopy = event;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v7 = [collectionView indexPathForCell:eventCopy];

  associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
  v9 = [associatedChatItems objectAtIndex:{objc_msgSend(v7, "row")}];

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  associatedChatItemGUID = [v9 associatedChatItemGUID];
  associatedMessageRange = [v9 associatedMessageRange];
  v14 = [chatItems ck_indexOfChatItemContainingIMChatItemGUID:associatedChatItemGUID associatedMessageRange:{associatedMessageRange, v13}];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AC88] indexPathForItem:v14 inSection:0];
    v16 = [(CKTranscriptCollectionViewController *)self balloonViewAtIndexPath:v15];
    if (v16)
    {
      delegate = [(CKTranscriptCollectionViewController *)self delegate];
      v18 = delegate;
      if (tapCopy)
      {
        [delegate transcriptCollectionViewController:self balloonView:v16 doubleTappedItemAtIndexPath:v15];
      }

      else
      {
        [delegate transcriptCollectionViewController:self balloonView:v16 longPressedForItemWithIndexPath:v15];
      }
    }
  }
}

- (void)liveViewController:(id)controller requestPresentationStyle:(unint64_t)style
{
  v26 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [chatItems countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (!v7)
  {
LABEL_11:

LABEL_14:
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = controllerCopy;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "CKTranscriptCollectionViewController - Did not find a CKTranscriptPluginChatItem object to call transcriptCollectionViewController:balloonView:didRequestPresentationStyle:forChatItem:allowAllStyles: for viewController %@", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

  v8 = *v20;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v20 != v8)
    {
      objc_enumerationMutation(chatItems);
    }

    v10 = *(*(&v19 + 1) + 8 * v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = v10;
    transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v13 = [v11 extensibleViewControllerForContext:transcriptIdentifier];
    v14 = v13 == controllerCopy;

    if (v14)
    {
      break;
    }

LABEL_9:
    if (v7 == ++v9)
    {
      v7 = [chatItems countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v15 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:v11];
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self balloonView:v15 didRequestPresentationStyle:style forChatItem:v11 allowAllStyles:1];

LABEL_18:
}

- (void)liveViewController:(id)controller stagePayload:(id)payload skipShelf:(BOOL)shelf allowAllCommits:(BOOL)commits completionHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  v14 = [(CKTranscriptCollectionViewController *)self balloonPluginForViewController:controller];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__CKTranscriptCollectionViewController_liveViewController_stagePayload_skipShelf_allowAllCommits_completionHandler___block_invoke;
  block[3] = &unk_1E72F27B8;
  shelfCopy = shelf;
  block[4] = self;
  v19 = payloadCopy;
  commitsCopy = commits;
  v20 = v14;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = v14;
  v17 = payloadCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __116__CKTranscriptCollectionViewController_liveViewController_stagePayload_skipShelf_allowAllCommits_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v8 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) identifier];
  v6 = *(a1 + 65);
  if (v2 == 1)
  {
    v9 = 0;
    [v8 transcriptCollectionViewController:v3 balloonViewDidRequestCommitPayload:v4 forPlugin:v5 allowAllCommits:v6 error:&v9];
    v7 = v9;

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [v8 transcriptCollectionViewController:v3 balloonViewDidRequestStartEditingPayload:v4 forPlugin:v5 allowAllCommits:v6 completionHandler:*(a1 + 56)];
  }
}

- (void)liveViewController:(id)controller sendCustomAcknowledgementPayload:(id)payload completionHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  v10 = [(CKTranscriptCollectionViewController *)self balloonPluginForViewController:controller];
  extensionIdentifier = [v10 extensionIdentifier];
  v12 = IMBalloonExtensionIDWithSuffix();
  v13 = [extensionIdentifier isEqualToString:v12];

  v14 = @"Other";
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__CKTranscriptCollectionViewController_liveViewController_sendCustomAcknowledgementPayload_completionHandler___block_invoke;
  block[3] = &unk_1E72EDAE0;
  block[4] = self;
  v19 = payloadCopy;
  if (v13)
  {
    v14 = @"Polls";
  }

  v20 = v10;
  v21 = v14;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = v10;
  v17 = payloadCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __110__CKTranscriptCollectionViewController_liveViewController_sendCustomAcknowledgementPayload_completionHandler___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) identifier];
    v13 = 0;
    [v4 transcriptCollectionViewController:v5 balloonViewDidRequestSendCustomAcknowledgementPayload:v6 forPlugin:v7 error:&v13];
    v8 = v13;

    v9 = [MEMORY[0x1E69A8168] sharedInstance];
    v10 = *MEMORY[0x1E69A7388];
    v11 = *(a1 + 56);
    v14 = *MEMORY[0x1E69A7380];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v9 trackEvent:v10 withDictionary:v12];
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 64) + 16))();
}

- (void)liveViewController:(id)controller stageSticker:(id)sticker skipShelf:(BOOL)shelf allowAllCommits:(BOOL)commits completionHandler:(id)handler
{
  stickerCopy = sticker;
  handlerCopy = handler;
  v13 = [(CKTranscriptCollectionViewController *)self balloonPluginForViewController:controller];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__CKTranscriptCollectionViewController_liveViewController_stageSticker_skipShelf_allowAllCommits_completionHandler___block_invoke;
  block[3] = &unk_1E72F27E0;
  block[4] = self;
  v18 = stickerCopy;
  commitsCopy = commits;
  v19 = v13;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = v13;
  v16 = stickerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __116__CKTranscriptCollectionViewController_liveViewController_stageSticker_skipShelf_allowAllCommits_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) identifier];
  v6 = *(a1 + 64);
  v8 = 0;
  [v2 transcriptCollectionViewController:v3 balloonViewDidRequestCommitSticker:v4 forPlugin:v5 allowAllCommits:v6 error:&v8];
  v7 = v8;

  (*(*(a1 + 56) + 16))();
}

- (void)liveViewControllerDidUpdateMessageTintColor:(id)color
{
  v23 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [chatItems countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {
LABEL_11:

LABEL_16:
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController liveViewControllerDidUpdateMessageTintColor:];
    }

    goto LABEL_18;
  }

  v7 = v6;
  v8 = *v19;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v19 != v8)
    {
      objc_enumerationMutation(chatItems);
    }

    v10 = *(*(&v18 + 1) + 8 * v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = v10;
    transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v13 = [v11 extensibleViewControllerForContext:transcriptIdentifier];

    if (v13 == colorCopy)
    {
      break;
    }

LABEL_9:
    if (v7 == ++v9)
    {
      v7 = [chatItems countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v14 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v11];
  if (v14)
  {
    iMChatItem = [v11 IMChatItem];
    guid = [iMChatItem guid];

    v17 = [(CKTranscriptCollectionViewController *)self indexPathForChatItemGUID:guid];
    [(CKTranscriptCollectionViewController *)self configureCell:v14 forCKChatItem:v11 atIndexPath:v17 animated:0 animationDuration:3 animationCurve:0.0];
  }

LABEL_18:
}

- (void)interactionStartedFromPreviewItemControllerInBalloonView:(id)view
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView beginHoldingContentOffsetUpdatesForReason:@"TranscriptPreviewItem"];
}

- (void)interactionStoppedFromPreviewItemControllerInBalloonView:(id)view
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView endHoldingContentOffsetUpdatesForReason:@"TranscriptPreviewItem"];
}

- (void)balloonViewDidStopTextSelection:(id)selection
{
  v14 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:selectionCopy];
  v7 = [chatItems objectAtIndex:{objc_msgSend(v6, "item")}];
  iMChatItem = [v7 IMChatItem];
  guid = [iMChatItem guid];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = guid;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Did stop text selection: %@", &v12, 0xCu);
    }
  }

  selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
  [selectionManager removeSelectedMessageGuid:guid];
}

- (void)tuConversationBalloonJoinButtonTapped:(id)tapped
{
  v11 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = tappedCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Processing join button tapped from balloonView: %@", &v9, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = tappedCopy;
    chat = [(CKTranscriptCollectionViewController *)self chat];
    tuConversationUUID = [v6 tuConversationUUID];

    [chat joinExistingTUConversationWithUUID:tuConversationUUID];
  }

  else
  {
    chat = IMLogHandleForCategory();
    if (os_log_type_enabled(chat, OS_LOG_TYPE_FAULT))
    {
      [CKTranscriptCollectionViewController tuConversationBalloonJoinButtonTapped:];
    }
  }
}

- (void)balloonView:(id)view mediaObjectDidFinishPlaying:(id)playing
{
  playingCopy = playing;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  transfer = [playingCopy transfer];

  v8 = [chatItems __ck_indexOfTransfer:transfer];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [chatItems objectAtIndex:v8];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 isPlayed] & 1) == 0 && (objc_msgSend(v9, "isFromMe") & 1) == 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __80__CKTranscriptCollectionViewController_balloonView_mediaObjectDidFinishPlaying___block_invoke;
      v10[3] = &unk_1E72EB8D0;
      v10[4] = self;
      v11 = v9;
      [(CKTranscriptCollectionViewController *)self updateTranscript:v10 animated:1 completion:0];
    }
  }
}

void __80__CKTranscriptCollectionViewController_balloonView_mediaObjectDidFinishPlaying___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) chat];
  v2 = [*(a1 + 40) IMChatItem];
  [v3 markChatItemAsPlayed:v2];
}

- (void)photoStackBalloonView:(id)view photoStack:(id)stack didSelectAssetReference:(id)reference
{
  viewCopy = view;
  referenceCopy = reference;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];
    v11 = v10;
    if (v10)
    {
      item = [v10 item];
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v14 = [chatItems count];

      if (item < v14)
      {
        chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
        v16 = [chatItems2 objectAtIndex:{objc_msgSend(v11, "item")}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
          [delegate2 transcriptCollectionViewController:self didTapPhotoStackForChatItem:v16 assetReference:referenceCopy];

          -[CKTranscriptCollectionViewController _trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:](self, "_trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:", *MEMORY[0x1E69A7550], viewCopy, [v16 transcriptOrientation]);
        }
      }
    }
  }
}

- (void)photoStackBalloonView:(id)view didChangeCurrentAssetReference:(id)reference isProgrammaticChange:(BOOL)change didChangeIndex:(BOOL)index
{
  indexCopy = index;
  viewCopy = view;
  if (indexCopy && !change)
  {
    v17 = viewCopy;
    v10 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];
    v11 = v10;
    if (v10)
    {
      item = [v10 item];
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v14 = [chatItems count];

      if (item < v14)
      {
        chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
        v16 = [chatItems2 objectAtIndex:{objc_msgSend(v11, "item")}];

        -[CKTranscriptCollectionViewController _trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:](self, "_trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:", *MEMORY[0x1E69A7548], v17, [v16 transcriptOrientation]);
      }
    }

    viewCopy = v17;
  }
}

- (void)photoStackBalloonView:(id)view photoStackDidSelectAdditionalItems:(id)items
{
  viewCopy = view;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = viewCopy;
  if (v6)
  {
    v8 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];
    v9 = v8;
    if (v8)
    {
      item = [v8 item];
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v12 = [chatItems count];

      if (item < v12)
      {
        chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
        v14 = [chatItems2 objectAtIndex:{objc_msgSend(v9, "item")}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
          [delegate2 transcriptCollectionViewController:self didTapPhotoStackAdditionalItemsForChatItem:v14];
        }
      }
    }

    v7 = viewCopy;
  }
}

- (void)didTapPendingMomentSharePhotoStackBalloonView:(id)view
{
  viewCopy = view;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = viewCopy;
  if (v5)
  {
    v7 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:viewCopy];
    v8 = v7;
    if (v7)
    {
      item = [v7 item];
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v11 = [chatItems count];

      if (item < v11)
      {
        chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
        v13 = [chatItems2 objectAtIndex:{objc_msgSend(v8, "item")}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
          [delegate2 transcriptCollectionViewController:self didTapPendingMomentShareForChatItem:v13];
        }
      }
    }

    v6 = viewCopy;
  }
}

- (void)didTapUnavailableMomentShareBalloonView:(id)view
{
  v4 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:view];
  v5 = v4;
  if (v4)
  {
    item = [v4 item];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v8 = [chatItems count];

    if (item < v8)
    {
      chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
      v10 = [chatItems2 objectAtIndex:{objc_msgSend(v5, "item")}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        momentShareURL = [v10 momentShareURL];
        if (momentShareURL)
        {
          defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __80__CKTranscriptCollectionViewController_didTapUnavailableMomentShareBalloonView___block_invoke;
          v14[3] = &unk_1E72F2808;
          v15 = momentShareURL;
          [defaultWorkspace openURL:v15 configuration:0 completionHandler:v14];

          v13 = v15;
        }

        else
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [CKTranscriptCollectionViewController didTapUnavailableMomentShareBalloonView:];
          }
        }
      }
    }
  }
}

void __80__CKTranscriptCollectionViewController_didTapUnavailableMomentShareBalloonView___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80__CKTranscriptCollectionViewController_didTapUnavailableMomentShareBalloonView___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (void)locationShareBalloonViewIgnoreButtonTapped:(id)tapped
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  [chat markAllLocationShareItemsAsUnactionable];
}

- (void)locationShareBalloonViewShareButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v4 = [CKAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__CKTranscriptCollectionViewController_locationShareBalloonViewShareButtonTapped___block_invoke;
  aBlock[3] = &unk_1E72ED838;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"SHARE_LOCATION_ONE_HOUR" value:&stru_1F04268F8 table:@"ChatKit"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __82__CKTranscriptCollectionViewController_locationShareBalloonViewShareButtonTapped___block_invoke_2;
  v28[3] = &unk_1E72EC218;
  v8 = v5;
  v29 = v8;
  v9 = [CKAlertAction actionWithTitle:v7 style:0 handler:v28];
  [v4 addAction:v9];

  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"SHARE_LOCATION_EOD" value:&stru_1F04268F8 table:@"ChatKit"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __82__CKTranscriptCollectionViewController_locationShareBalloonViewShareButtonTapped___block_invoke_3;
  v26[3] = &unk_1E72EC218;
  v12 = v8;
  v27 = v12;
  v13 = [CKAlertAction actionWithTitle:v11 style:0 handler:v26];
  [v4 addAction:v13];

  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"SHARE_INDEFINITELY" value:&stru_1F04268F8 table:@"ChatKit"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __82__CKTranscriptCollectionViewController_locationShareBalloonViewShareButtonTapped___block_invoke_4;
  v24[3] = &unk_1E72EC218;
  v25 = v12;
  v16 = v12;
  v17 = [CKAlertAction actionWithTitle:v15 style:0 handler:v24];
  [v4 addAction:v17];

  v18 = CKFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v20 = [CKAlertAction actionWithTitle:v19 style:1 handler:0];
  [v4 addAction:v20];

  popoverPresentationController = [v4 popoverPresentationController];
  [popoverPresentationController setSourceView:tappedCopy];

  [(CKTranscriptCollectionViewController *)self presentViewController:v4 animated:1 completion:0];
}

void __82__CKTranscriptCollectionViewController_locationShareBalloonViewShareButtonTapped___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) conversation];
  v5 = [v4 chat];
  [v5 shareLocationWithDuration:a2];

  v6 = [*(a1 + 32) chat];
  [v6 markAllLocationShareItemsAsUnactionable];
}

- (id)sharingMenu
{
  v37[3] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CKTranscriptCollectionViewController_sharingMenu__block_invoke;
  aBlock[3] = &unk_1E72EC988;
  objc_copyWeak(&v35, &location);
  v2 = _Block_copy(aBlock);
  v3 = MEMORY[0x1E69DC628];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SHARE_LOCATION_ONE_HOUR" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __51__CKTranscriptCollectionViewController_sharingMenu__block_invoke_2;
  v32[3] = &unk_1E72EF7B0;
  v7 = v2;
  v33 = v7;
  v8 = [v3 actionWithTitle:v5 image:v6 identifier:0 handler:v32];

  v9 = MEMORY[0x1E69DC628];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"SHARE_LOCATION_EOD" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __51__CKTranscriptCollectionViewController_sharingMenu__block_invoke_3;
  v30[3] = &unk_1E72EF7B0;
  v13 = v7;
  v31 = v13;
  v14 = [v9 actionWithTitle:v11 image:v12 identifier:0 handler:v30];

  v15 = MEMORY[0x1E69DC628];
  v16 = CKFrameworkBundle();
  v17 = [v16 localizedStringForKey:@"SHARE_INDEFINITELY" value:&stru_1F04268F8 table:@"ChatKit"];
  v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"infinity"];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __51__CKTranscriptCollectionViewController_sharingMenu__block_invoke_4;
  v28 = &unk_1E72EF7B0;
  v19 = v13;
  v29 = v19;
  v20 = [v15 actionWithTitle:v17 image:v18 identifier:0 handler:&v25];

  v21 = MEMORY[0x1E69DCC60];
  v37[0] = v8;
  v37[1] = v14;
  v37[2] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:{3, v25, v26, v27, v28}];
  v23 = [v21 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v22];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  return v23;
}

void __51__CKTranscriptCollectionViewController_sharingMenu__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained conversation];
  v6 = [v5 chat];
  [v6 shareLocationWithDuration:a2];

  v8 = objc_loadWeakRetained((a1 + 32));
  v7 = [v8 chat];
  [v7 markAllLocationShareItemsAsUnactionable];
}

- (void)locationSharingClient:(id)client showShareLocationMenuWithBalloonPluginView:(id)view
{
  viewCopy = view;
  v5 = [CKAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__CKTranscriptCollectionViewController_locationSharingClient_showShareLocationMenuWithBalloonPluginView___block_invoke;
  aBlock[3] = &unk_1E72ED838;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"SHARE_LOCATION_ONE_HOUR" value:&stru_1F04268F8 table:@"ChatKit"];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __105__CKTranscriptCollectionViewController_locationSharingClient_showShareLocationMenuWithBalloonPluginView___block_invoke_2;
  v40[3] = &unk_1E72EC218;
  v9 = v6;
  v41 = v9;
  v10 = [CKAlertAction actionWithTitle:v8 style:0 handler:v40];
  [v5 addAction:v10];

  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"SHARE_LOCATION_EOD" value:&stru_1F04268F8 table:@"ChatKit"];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __105__CKTranscriptCollectionViewController_locationSharingClient_showShareLocationMenuWithBalloonPluginView___block_invoke_3;
  v38[3] = &unk_1E72EC218;
  v13 = v9;
  v39 = v13;
  v14 = [CKAlertAction actionWithTitle:v12 style:0 handler:v38];
  [v5 addAction:v14];

  v15 = CKFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"SHARE_INDEFINITELY" value:&stru_1F04268F8 table:@"ChatKit"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __105__CKTranscriptCollectionViewController_locationSharingClient_showShareLocationMenuWithBalloonPluginView___block_invoke_4;
  v36[3] = &unk_1E72EC218;
  v17 = v13;
  v37 = v17;
  v18 = [CKAlertAction actionWithTitle:v16 style:0 handler:v36];
  [v5 addAction:v18];

  v19 = CKFrameworkBundle();
  v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v21 = [CKAlertAction actionWithTitle:v20 style:1 handler:0];
  [v5 addAction:v21];

  if (!CKIsRunningInMacCatalyst())
  {
    popoverPresentationController = [v5 popoverPresentationController];
    view = [(CKTranscriptCollectionViewController *)self view];
    [popoverPresentationController setSourceView:view];

    popoverPresentationController2 = [v5 popoverPresentationController];
    view2 = [(CKTranscriptCollectionViewController *)self view];
    [viewCopy frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    superview = [viewCopy superview];
    [view2 convertRect:superview fromView:{v27, v29, v31, v33}];
    [popoverPresentationController2 setSourceRect:?];
  }

  [(CKTranscriptCollectionViewController *)self presentViewController:v5 animated:1 completion:0];
}

void __105__CKTranscriptCollectionViewController_locationSharingClient_showShareLocationMenuWithBalloonPluginView___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) conversation];
  v3 = [v4 chat];
  [v3 shareLocationWithDuration:a2];
}

- (void)balloonViewTitleTapped:(id)tapped
{
  v5 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:tapped];
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self balloonViewTitleTappedForItemWithIndexPath:v5];
}

- (void)audioController:(id)controller mediaObjectDidFinishPlaying:(id)playing
{
  playingCopy = playing;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  transfer = [playingCopy transfer];
  v8 = [chatItems __ck_indexOfTransfer:transfer];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [chatItems objectAtIndex:v8];
    if (([v9 isFromMe] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 isPlayed] & 1) == 0)
      {
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __84__CKTranscriptCollectionViewController_audioController_mediaObjectDidFinishPlaying___block_invoke;
        v24 = &unk_1E72EB8D0;
        selfCopy = self;
        v26 = v9;
        [(CKTranscriptCollectionViewController *)self updateTranscript:&v21 animated:1 completion:0];
      }
    }

    v10 = [(CKTranscriptCollectionViewController *)self chatItems:v21];

    transfer2 = [playingCopy transfer];
    v12 = [v10 __ck_indexOfTransfer:transfer2];

    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v14 = [MEMORY[0x1E696AC88] indexPathForItem:v12 inSection:0];
    v15 = [collectionView cellForItemAtIndexPath:v14];
    v16 = v15;
    if (v15 && [v15 isAudioMessage])
    {
      balloonView = [v16 balloonView];
      [balloonView setTime:0.0];
      [balloonView setPlaying:0];
      [balloonView setPlayed:1];
      [balloonView prepareForDisplayIfNeeded];
    }

    chatItems = v10;
  }

  __CurrentTestName = [(CKTranscriptCollectionViewController *)self __CurrentTestName];
  v19 = [__CurrentTestName isEqualToString:@"AudioBalloonPlayBack"];

  if (v19)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"kAudioBalloonViewPlaybackDidFinishNotification" object:0];
  }
}

void __84__CKTranscriptCollectionViewController_audioController_mediaObjectDidFinishPlaying___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) chat];
  v2 = [*(a1 + 40) IMChatItem];
  [v3 markChatItemAsPlayed:v2];
}

- (void)audioController:(id)controller updateAudioBalloonsForTime:(double)time mediaObject:(id)object
{
  controllerCopy = controller;
  objectCopy = object;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  transfer = [objectCopy transfer];

  v11 = [chatItems __ck_indexOfTransfer:transfer];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
    v14 = [collectionView cellForItemAtIndexPath:v13];
    v15 = v14;
    if (v14 && [v14 isAudioMessage])
    {
      balloonView = [v15 balloonView];
      [balloonView setTime:time];
      [balloonView setPlaying:{objc_msgSend(controllerCopy, "isPlaying")}];
      [balloonView prepareForDisplayIfNeeded];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [controllerCopy stop];
      }
    }

    v17 = [chatItems objectAtIndex:v11];
    mediaObject = [v17 mediaObject];
    transferGUID = [mediaObject transferGUID];
    [(CKTranscriptCollectionViewController *)self setSpeakerTransferGUID:transferGUID];

    [(CKTranscriptCollectionViewController *)self reconfigureVisibleSpeakerButtonCells];
  }

  __CurrentTestName = [(CKTranscriptCollectionViewController *)self __CurrentTestName];
  v21 = [__CurrentTestName isEqualToString:@"AudioBalloonPlayBack"];

  if (v21)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = defaultCenter;
    if (time == 0.0)
    {
      [defaultCenter postNotificationName:@"kAudioBalloonViewPlaybackWillStartNotification" object:0];
    }
  }
}

- (void)audioControllerDidPause:(id)pause
{
  pauseCopy = pause;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  currentMediaObject = [pauseCopy currentMediaObject];
  transfer = [currentMediaObject transfer];
  v7 = [chatItems __ck_indexOfTransfer:transfer];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:0];
    v10 = [collectionView cellForItemAtIndexPath:v9];
    v11 = v10;
    if (v10 && [v10 isAudioMessage])
    {
      balloonView = [v11 balloonView];
      [balloonView setPlaying:0];
      [balloonView prepareForDisplayIfNeeded];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [pauseCopy stop];
      }
    }
  }
}

- (void)audioControllerDidStop:(id)stop
{
  stopCopy = stop;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  currentMediaObject = [stopCopy currentMediaObject];

  transfer = [currentMediaObject transfer];
  v7 = [chatItems __ck_indexOfTransfer:transfer];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:0];
    v10 = [collectionView cellForItemAtIndexPath:v9];
    v11 = v10;
    if (v10 && [v10 isAudioMessage])
    {
      balloonView = [v11 balloonView];
      [balloonView setTime:0.0];
      [balloonView setPlaying:0];
      [balloonView prepareForDisplayIfNeeded];
    }
  }

  v13 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  audioController = [v13 audioController];
  [audioController setDelegate:0];

  v15 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  [v15 setAudioController:0];
}

- (void)audioControllerPlayingDidChange:(id)change
{
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewControllerPlayingAudioDidChange:self];
}

- (id)avatarView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category
{
  v35 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  propertiesCopy = properties;
  if ([category isEqualToString:*MEMORY[0x1E695D070]])
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = propertiesCopy;
    obj = propertiesCopy;
    v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      v12 = *MEMORY[0x1E695C208];
      v27 = *MEMORY[0x1E695C330];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = [v14 key];
          v16 = [v15 isEqualToString:v12];

          if (v16)
          {
            value = [v14 value];
          }

          else
          {
            v18 = [v14 key];
            v19 = [v18 isEqualToString:v27];

            if (v19)
            {
              value2 = [v14 value];
              value = [value2 stringValue];
            }

            else
            {
              value = 0;
            }
          }

          v21 = IMStripFormattingFromAddress();

          preferredHandle = [viewCopy preferredHandle];
          v23 = IMStripFormattingFromAddress();
          v24 = MEMORY[0x193AF6640](v21, v23);

          if (v24)
          {
            [v8 insertObject:v14 atIndex:0];
          }

          else
          {
            [v8 addObject:v14];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }

    propertiesCopy = v26;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)effectManager:(id)manager didStartEffect:(id)effect
{
  v91 = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  if (effectCopy)
  {
    chat = [(CKTranscriptCollectionViewController *)self chat];
    triggeringChatItem = [effectCopy triggeringChatItem];
    iMChatItem = [triggeringChatItem IMChatItem];
    [chat markChatItemAsPlayedExpressiveSend:iMChatItem];

    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];
    v11 = [visibleCells mutableCopy];

    if ([effectCopy effectIsDark])
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v86 objects:v90 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v87;
        do
        {
          v16 = 0;
          do
          {
            if (*v87 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v86 + 1) + 8 * v16);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v17 setShouldConfigureForDarkFSM:1];
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v86 objects:v90 count:16];
        }

        while (v14);
      }
    }

    [effectCopy playSoundEffect];
    fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
    [fullscreenEffectManager beginHoldingUpdatesForKey:@"CKFullscreenUpdatesPlaying"];

    [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:4];
    [(CKTranscriptCollectionViewController *)self setShouldUseOpaqueMask:0];
    triggeringChatItem2 = [effectCopy triggeringChatItem];
    v20 = [(CKTranscriptCollectionViewController *)self cellForChatItem:triggeringChatItem2];

    [v11 removeObject:v20];
    if ([v11 count])
    {
      [effectCopy applyMessageFiltersToCells:v11];
    }

    if (v20)
    {
      fullscreenEffectManager2 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
      currentEffect = [fullscreenEffectManager2 currentEffect];
      [currentEffect applyMessageFiltersToTriggeringCell:v20];
    }

    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v24 = [delegate transcriptCollectionViewController:self shouldSetupFullscreenEffectUI:effectCopy];

    if (v24)
    {
      backgroundColor = [effectCopy backgroundColor];
      if (backgroundColor)
      {
        view = [(CKTranscriptCollectionViewController *)self view];
        backgroundColor2 = [view backgroundColor];
        v28 = [backgroundColor2 isEqual:backgroundColor];

        if ((v28 & 1) == 0)
        {
          v29 = MEMORY[0x1E69DD250];
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 3221225472;
          v84[2] = __69__CKTranscriptCollectionViewController_effectManager_didStartEffect___block_invoke;
          v84[3] = &unk_1E72EB8D0;
          v84[4] = self;
          v85 = backgroundColor;
          [v29 animateWithDuration:v84 animations:0 completion:0.3];
        }
      }

      if ([effectCopy shouldDrawOverNavigationBar] && CKIsRunningInMessages())
      {
        delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
        v31 = [delegate2 transcriptCollectionViewControllerOuterEffectPresentingView:self];

        v32 = objc_alloc([effectCopy effectViewClass]);
        view2 = [(CKTranscriptCollectionViewController *)self view];
        [view2 bounds];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        view3 = [(CKTranscriptCollectionViewController *)self view];
        [v31 convertRect:view3 fromView:{v35, v37, v39, v41}];
        v43 = [v32 initWithFrame:?];

        [v43 setZIndex:3];
        [v43 setUserInteractionEnabled:0];
        [v31 addSubview:v43];
        v44 = +[CKUIBehavior sharedBehaviors];
        LODWORD(view3) = [v44 shouldHideStatusBarForFullScreenEffects];

        if (view3)
        {
          statusBar = [*MEMORY[0x1E69DDA98] statusBar];
          [statusBar setHidden:1 animated:1];
        }

        [(CKTranscriptCollectionViewController *)self setTopEffectView:v43];
        [(CKTranscriptCollectionViewController *)self _updateEffectViewMessageRect:v43 effect:effectCopy];
        triggeringChatItem3 = [effectCopy triggeringChatItem];
        v47 = [(CKTranscriptCollectionViewController *)self cellForChatItem:triggeringChatItem3];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          balloonView = [v47 balloonView];
          v49 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v47];
          objc_opt_class();
          v83 = v49;
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v49 transcriptOrientation] == 2)
            {
              balloonView = balloonView;
              wantsGradient = [balloonView wantsGradient];
              v51 = balloonView;
              if (wantsGradient)
              {
                v82 = balloonView;
                balloonView = CKBalloonViewForClass([v49 balloonViewClass]);
                [balloonView configureForMessagePart:v49];
                [balloonView setInvisibleInkEffectEnabled:0];
                [balloonView setCanUseOpaqueMask:0];
                if (objc_opt_respondsToSelector())
                {
                  gradientReferenceView = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
                  [balloonView setGradientReferenceView:gradientReferenceView];
                }

                [balloonView setNeedsPrepareForDisplay];
                [balloonView prepareForDisplayIfNeeded];
                [v82 bounds];
                [balloonView setFrame:?];
                [balloonView layoutIfNeeded];
                gradientReferenceView2 = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
                [gradientReferenceView2 gradientFrame];
                v55 = v54;
                v57 = v56;
                v59 = v58;
                v61 = v60;

                gradientReferenceView3 = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
                [gradientReferenceView3 convertRect:v82 toView:{v55, v57, v59, v61}];
                v64 = v63;
                v66 = v65;
                v68 = v67;
                v70 = v69;

                if (objc_opt_respondsToSelector())
                {
                  [balloonView setGradientOverrideFrame:{v64, v66, v68, v70}];
                }

                [balloonView layoutIfNeeded];

                v51 = v82;
              }
            }
          }

          [balloonView bounds];
          v73 = v72;
          v74 = v71;
          if (v72 == *MEMORY[0x1E695F060] && v71 == *(MEMORY[0x1E695F060] + 8))
          {
            v75 = IMLogHandleForCategory();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              [CKTranscriptCollectionViewController effectManager:didStartEffect:];
            }
          }

          else
          {
            mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen scale];
            v78 = v77;
            v92.width = v73;
            v92.height = v74;
            UIGraphicsBeginImageContextWithOptions(v92, 0, v78);

            [balloonView bounds];
            [balloonView drawViewHierarchyInRect:1 afterScreenUpdates:?];
            v75 = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            [v43 setMessageImage:v75];
          }
        }

        [v43 startAnimation];
      }
    }

    collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
    collectionViewLayout = [collectionView2 collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    collectionView3 = [(CKTranscriptCollectionViewController *)self collectionView];
    [collectionView3 reloadData];
  }
}

void __69__CKTranscriptCollectionViewController_effectManager_didStartEffect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:*(a1 + 40)];
}

- (void)effectManager:(id)manager didStopEffect:(id)effect
{
  v40 = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  v6 = effectCopy;
  if (effectCopy)
  {
    if ([effectCopy effectIsDark])
    {
      collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
      visibleCells = [collectionView visibleCells];
      v9 = [visibleCells mutableCopy];

      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v35 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v36;
        do
        {
          v14 = 0;
          do
          {
            if (*v36 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v35 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 setShouldConfigureForDarkFSM:0];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v12);
      }
    }

    __CurrentTestName = [(CKTranscriptCollectionViewController *)self __CurrentTestName];

    if (__CurrentTestName)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CKEffectManagerEffectDidEndForPPT" object:self];
    }

    collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
    visibleCells2 = [collectionView2 visibleCells];
    [v6 clearMessageFiltersFromCells:visibleCells2];

    [v6 stopSoundEffect];
    collectionView3 = [(CKTranscriptCollectionViewController *)self collectionView];
    [collectionView3 reloadData];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__CKTranscriptCollectionViewController_effectManager_didStopEffect___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v21 = _Block_copy(aBlock);
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v23 = [delegate transcriptCollectionViewController:self shouldCleanupFullscreenEffectUI:v6];

    if (!v23)
    {
      goto LABEL_20;
    }

    topEffectView = [(CKTranscriptCollectionViewController *)self topEffectView];
    [topEffectView stopAnimation];

    topEffectView2 = [(CKTranscriptCollectionViewController *)self topEffectView];
    [topEffectView2 removeFromSuperview];

    [(CKTranscriptCollectionViewController *)self setTopEffectView:0];
    v26 = +[CKUIBehavior sharedBehaviors];
    shouldHideStatusBarForFullScreenEffects = [v26 shouldHideStatusBarForFullScreenEffects];

    if (shouldHideStatusBarForFullScreenEffects)
    {
      statusBar = [*MEMORY[0x1E69DDA98] statusBar];
      [statusBar setHidden:0 animated:1];
    }

    backgroundColor = [v6 backgroundColor];

    if (backgroundColor)
    {
      v30 = MEMORY[0x1E69DD250];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __68__CKTranscriptCollectionViewController_effectManager_didStopEffect___block_invoke_2;
      v33[3] = &unk_1E72EBA18;
      v33[4] = self;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __68__CKTranscriptCollectionViewController_effectManager_didStopEffect___block_invoke_3;
      v31[3] = &unk_1E72ED1F0;
      v32 = v21;
      [v30 animateWithDuration:v33 animations:v31 completion:0.5];
    }

    else
    {
LABEL_20:
      v21[2](v21);
    }
  }
}

void __68__CKTranscriptCollectionViewController_effectManager_didStopEffect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldUseOpaqueMask:{objc_msgSend(*(a1 + 32), "_canUseOpaqueMask")}];
  [*(a1 + 32) removeContentAnimationPauseReasons:4];
  v2 = [*(a1 + 32) fullscreenEffectManager];
  [v2 endHoldingUpdatesForKey:@"CKFullscreenUpdatesPlaying"];
}

void __68__CKTranscriptCollectionViewController_effectManager_didStopEffect___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v2 = [*(a1 + 32) transcriptBackgroundColor];
  [v3 setBackgroundColor:v2];
}

- (void)sendAnimationManagerWillStartAnimation:(id)animation context:(id)context
{
  contextCopy = context;
  [(CKTranscriptCollectionViewController *)self setShouldUseOpaqueMask:0];
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [fullscreenEffectManager beginHoldingUpdatesForKey:@"CKFullscreenUpdatesImpactAnimation"];

  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self willBeginImpactEffectAnimationWithSendAnimationContext:contextCopy];
}

- (void)sendAnimationManagerDidStopAnimation:(id)animation context:(id)context
{
  contextCopy = context;
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  currentEffect = [fullscreenEffectManager currentEffect];

  if (!currentEffect)
  {
    [(CKTranscriptCollectionViewController *)self setShouldUseOpaqueMask:[(CKTranscriptCollectionViewController *)self _canUseOpaqueMask]];
  }

  fullscreenEffectManager2 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [fullscreenEffectManager2 endHoldingUpdatesForKey:@"CKFullscreenUpdatesImpactAnimation"];

  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self didEndImpactEffectAnimationWithSendAnimationContext:contextCopy];

  [(CKTranscriptCollectionViewController *)self setHiddenBalloonViews:0];

  [(CKTranscriptCollectionViewController *)self reloadData];
}

- (void)setPoppedBalloonGUIDHiddenUntilNextChatItemUpdate:(id)update
{
  updateCopy = update;
  poppedBalloonGUIDHiddenUntilNextChatItemUpdate = self->_poppedBalloonGUIDHiddenUntilNextChatItemUpdate;
  v7 = updateCopy;
  if (poppedBalloonGUIDHiddenUntilNextChatItemUpdate != updateCopy)
  {
    if (poppedBalloonGUIDHiddenUntilNextChatItemUpdate)
    {
      [(CKTranscriptCollectionViewController *)self setChatItemHidden:0 forChatItemGUID:?];
    }

    objc_storeStrong(&self->_poppedBalloonGUIDHiddenUntilNextChatItemUpdate, update);
    if (self->_poppedBalloonGUIDHiddenUntilNextChatItemUpdate)
    {
      [(CKTranscriptCollectionViewController *)self setChatItemHidden:1 forChatItemGUID:?];
    }
  }
}

- (void)transcriptBalloonCell:(id)cell didTranslateBalloonByDelta:(double)delta
{
  v22 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CKTranscriptCollectionViewController_transcriptBalloonCell_didTranslateBalloonByDelta___block_invoke;
  aBlock[3] = &unk_1E72F2830;
  aBlock[4] = self;
  *&aBlock[5] = delta;
  v7 = _Block_copy(aBlock);
  v8 = [(CKTranscriptCollectionViewController *)self chatItemForCell:cellCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  visibleAssociatedMessageChatItems = [v8 visibleAssociatedMessageChatItems];
  v10 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
        }

        v7[2](v7, *(*(&v16 + 1) + 8 * v13++), delta);
      }

      while (v11 != v13);
      v11 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  messageHighlightChatItem = [v8 messageHighlightChatItem];

  if (messageHighlightChatItem)
  {
    messageHighlightChatItem2 = [v8 messageHighlightChatItem];
    (v7)[2](v7, messageHighlightChatItem2, delta);
  }
}

void __89__CKTranscriptCollectionViewController_transcriptBalloonCell_didTranslateBalloonByDelta___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) cellForAssociatedChatItem:a2];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 40);
      v4 = v5;
      [v4 setSwipeToReplyDelta:v3];
      [v4 setNeedsLayout];
      [v4 layoutIfNeeded];
    }
  }
}

- (void)transcriptBalloonCell:(id)cell didEndBalloonSwipeWithDelta:(double)delta swipeVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v33 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v10 = [(CKTranscriptCollectionViewController *)self chatItemForCell:cellCopy];
  iMChatItem = [v10 IMChatItem];
  guid = [iMChatItem guid];

  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  visibleAssociatedMessageChatItems = [v10 visibleAssociatedMessageChatItems];
  v14 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
        }

        iMChatItem2 = [*(*(&v27 + 1) + 8 * v17) IMChatItem];
        guid2 = [iMChatItem2 guid];
        [array addObject:guid2];

        ++v17;
      }

      while (v15 != v17);
      v15 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v15);
  }

  balloonView = [cellCopy balloonView];
  v21 = objc_alloc_init(CKInlineReplyTransitionProperties);
  [(CKInlineReplyTransitionProperties *)v21 setInitialBalloonOffsetX:delta];
  v31 = guid;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [(CKInlineReplyTransitionProperties *)v21 setChatItemGUIDs:v22];

  v23 = [array copy];
  [(CKInlineReplyTransitionProperties *)v21 setAssociatedChatItemGUIDs:v23];

  [(CKInlineReplyTransitionProperties *)v21 setSwipeVelocity:x, y];
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v25 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:balloonView];
  [delegate transcriptCollectionViewController:self balloonView:balloonView showInlineReplyForItemWithIndexPath:v25 withReplyTransitionProperties:v21];
}

- (id)transcriptBalloonCell:(id)cell layoutAttributesForTextBalloonView:(id)view messageDisplayViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame proposedAttributes:(id)attributes
{
  cellCopy = cell;
  viewCopy = view;
  attributesCopy = attributes;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    v15 = [(CKTranscriptCollectionViewController *)self chatItemForCell:cellCopy];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        textView = [viewCopy textView];
        ck_hasPlayingOrPausedTextAnimator = [textView ck_hasPlayingOrPausedTextAnimator];

        if (ck_hasPlayingOrPausedTextAnimator)
        {
          [viewCopy alignmentRectInsets];
          v49 = v19;
          v50 = v18;
          v21 = v20;
          v23 = v22;
          [viewCopy textAlignmentInsets];
          v47 = v25;
          v48 = v24;
          v27 = v26;
          v29 = v28;
          textView2 = [viewCopy textView];
          [textView2 _customRenderBounds];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v52.origin.x = v32;
          v52.origin.y = v34;
          v52.size.width = v36;
          v52.size.height = v38;
          v39 = v23 - v29 + v21 - v27 + CGRectGetWidth(v52);
          v53.origin.x = v32;
          v53.origin.y = v34;
          v53.size.width = v36;
          v53.size.height = v38;
          [attributesCopy setMessageDisplayViewSize:{v39, v49 - v47 + v50 - v48 + CGRectGetHeight(v53)}];
          [attributesCopy setWantsFrameClamping:0];
        }

        else
        {
          [v15 size];
          v41 = v40;
          v43 = v42;
          [viewCopy tailInsetsForPillSize:?];
          [attributesCopy setMessageDisplayViewSize:{v41, v45 + v43 + v44}];
        }
      }
    }
  }

  return attributesCopy;
}

- (void)didTapTranscriptActionButtonCell:(id)cell
{
  v44 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__33;
  v38 = __Block_byref_object_dispose__33;
  v39 = 0;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __73__CKTranscriptCollectionViewController_didTapTranscriptActionButtonCell___block_invoke;
  v30[3] = &unk_1E72F2790;
  v7 = collectionView;
  v31 = v7;
  v8 = cellCopy;
  v32 = v8;
  v33 = &v34;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v30];

  v9 = v35[5];
  if (v9)
  {
    v10 = MEMORY[0x1E696AC88];
    item = [v9 item];
    v12 = [v10 indexPathForItem:item + 1 inSection:{objc_msgSend(v35[5], "section")}];
    v13 = [(CKTranscriptCollectionViewController *)self balloonViewAtIndexPath:v12];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v15 = [chatItems objectAtIndex:{objc_msgSend(v12, "item")}];

    if (v15 && v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v13;
        delegate = [(CKTranscriptCollectionViewController *)self delegate];
        v18 = objc_opt_respondsToSelector();

        if (v18)
        {
          delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
          currentAssetReference = [v16 currentAssetReference];
          [delegate2 transcriptCollectionViewController:self didTapPhotoStackButtonForChatItem:v15 assetReference:currentAssetReference];
        }

        transcriptOrientation = [v15 transcriptOrientation];
        [(CKTranscriptCollectionViewController *)self _trackPhotoStackEvent:*MEMORY[0x1E69A7508] forStackBalloonView:v16 transcriptOrientation:transcriptOrientation];

LABEL_20:
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate3 transcriptCollectionViewController:self didTapPhotoStackButtonForPendingMomentShareChatItem:v15];
        }

        goto LABEL_20;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        attributedText = [v8 attributedText];
        string = [attributedText string];
        v29 = v35[5];
        *buf = 138412546;
        v41 = string;
        v42 = 2112;
        v43 = v29;
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Failed to locate balloon view for action button: %@, index path: %@", buf, 0x16u);
      }
    }

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      attributedText2 = [v8 attributedText];
      string2 = [attributedText2 string];
      *buf = 138412290;
      v41 = string2;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Failed to look up index path for action button: %@", buf, 0xCu);
    }
  }

LABEL_21:

  _Block_object_dispose(&v34, 8);
}

void __73__CKTranscriptCollectionViewController_didTapTranscriptActionButtonCell___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [*(a1 + 32) cellForItemAtIndexPath:?];
  if (v7 == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)showGridForChatItem:(id)item
{
  v14 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate3 = v5;
      delegate = [(CKTranscriptCollectionViewController *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
        currentAssetReference = [delegate3 currentAssetReference];
        [delegate2 transcriptCollectionViewController:self didTapPhotoStackButtonForChatItem:itemCopy assetReference:currentAssetReference];
      }

LABEL_9:

      goto LABEL_15;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate3 transcriptCollectionViewController:self didTapPhotoStackButtonForPendingMomentShareChatItem:itemCopy];
      }

      goto LABEL_9;
    }
  }

  if (!v5 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = itemCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to locate balloon view for chatItem: %@", &v12, 0xCu);
    }
  }

LABEL_15:
}

- (void)didPinchPhotoStackCell:(id)cell
{
  v31 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__33;
  v27 = __Block_byref_object_dispose__33;
  v28 = 0;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__CKTranscriptCollectionViewController_didPinchPhotoStackCell___block_invoke;
  v19[3] = &unk_1E72F2790;
  v7 = collectionView;
  v20 = v7;
  v8 = cellCopy;
  v21 = v8;
  v22 = &v23;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v19];

  if (v24[5])
  {
    v9 = [(CKTranscriptCollectionViewController *)self balloonViewAtIndexPath:?];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v11 = [chatItems objectAtIndex:{objc_msgSend(v24[5], "item")}];

    if (v11 && v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      delegate = [(CKTranscriptCollectionViewController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
        currentAssetReference = [v9 currentAssetReference];
        [delegate2 transcriptCollectionViewController:self didPinchPhotoStackForChatItem:v11 assetReference:currentAssetReference];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = v24[5];
        *buf = 138412290;
        v30 = v17;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Failed to locate balloon view for transcriptPhotoStackCell, index path: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Failed to look up index path for transcriptPhotoStackCell", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

void __63__CKTranscriptCollectionViewController_didPinchPhotoStackCell___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [*(a1 + 32) cellForItemAtIndexPath:?];
  if (v7 == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)recoverJunkPressedInTranscriptCell:(id)cell
{
  v17[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v5 = CKIsRunningInMacCatalyst() != 0;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __75__CKTranscriptCollectionViewController_recoverJunkPressedInTranscriptCell___block_invoke;
  v14 = &unk_1E72EC460;
  objc_copyWeak(&v15, &location);
  v6 = _Block_copy(&v11);
  v7 = objc_opt_new();
  [v7 setPresentationViewController:{self, v11, v12, v13, v14}];
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  v17[0] = conversation;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v7 setTargetConversations:v9];

  [v7 setAlertControllerStyle:v5];
  [v7 setAlertsCompletedBlock:v6];
  v10 = [[CKConversationConfirmationAlertsController alloc] initWithConfiguration:v7];
  [(CKConversationConfirmationAlertsController *)v10 presentRecoverJunkConversationConfirmations];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __75__CKTranscriptCollectionViewController_recoverJunkPressedInTranscriptCell___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained conversation];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 delegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 transcriptCollectionViewController:v5 requestRecoverJunkConversation:v6];
}

- (unint64_t)dateCellRequestedScheduledMessageCount:(id)count
{
  v4 = [(CKTranscriptCollectionViewController *)self chatItemForCell:count];
  chat = [(CKTranscriptCollectionViewController *)self chat];
  iMChatItem = [v4 IMChatItem];
  v7 = [chat messagesForScheduledMessageSectionWithTranscriptItem:iMChatItem];

  v8 = [v7 count];
  return v8;
}

- (void)dateCellRequestedScheduledMessageModification:(id)modification scheduleType:(unint64_t)type deliveryTime:(id)time
{
  timeCopy = time;
  v13 = [(CKTranscriptCollectionViewController *)self chatItemForCell:modification];
  chat = [(CKTranscriptCollectionViewController *)self chat];
  iMChatItem = [v13 IMChatItem];
  v11 = [chat messagesForScheduledMessageSectionWithTranscriptItem:iMChatItem];

  chat2 = [(CKTranscriptCollectionViewController *)self chat];
  [chat2 editScheduledMessageItems:v11 scheduleType:type deliveryTime:timeCopy];
}

- (void)dateCellRequestedDeleteAllMessages:(id)messages
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(CKTranscriptCollectionViewController *)self chatItemForCell:messages];
  chat = [(CKTranscriptCollectionViewController *)self chat];
  iMChatItem = [v4 IMChatItem];
  v7 = [chat messagesForScheduledMessageSectionWithTranscriptItem:iMChatItem];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        chat2 = [(CKTranscriptCollectionViewController *)self chat];
        [chat2 cancelScheduledMessageItem:v13 cancelType:1];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)deleteConversationPressedInTranscriptCell:(id)cell
{
  v17[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v5 = CKIsRunningInMacCatalyst() != 0;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __82__CKTranscriptCollectionViewController_deleteConversationPressedInTranscriptCell___block_invoke;
  v14 = &unk_1E72EC460;
  objc_copyWeak(&v15, &location);
  v6 = _Block_copy(&v11);
  v7 = objc_opt_new();
  [v7 setPresentationViewController:{self, v11, v12, v13, v14}];
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  v17[0] = conversation;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v7 setTargetConversations:v9];

  [v7 setAlertControllerStyle:v5];
  [v7 setAlertsCompletedBlock:v6];
  v10 = [[CKConversationConfirmationAlertsController alloc] initWithConfiguration:v7];
  [(CKConversationConfirmationAlertsController *)v10 presentPermanentJunkConversationDeletionConfirmations];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __82__CKTranscriptCollectionViewController_deleteConversationPressedInTranscriptCell___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained conversation];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 delegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 transcriptCollectionViewController:v5 requestDeleteJunkConversation:v6];
}

- (void)keyTransparencyTranscriptCellDidRequestVerification:(id)verification
{
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  [CKKeyTransparencyErrorUtilities showKTContactVerificationUIForConversation:conversation fromViewController:self];
}

- (void)keyTransparencyTranscriptCellDidSelectIgnoreFailures:(id)failures
{
  failuresCopy = failures;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  chat = [conversation chat];
  v6 = [CKKeyTransparencyErrorUtilities ktClearWarningAlertControllerForChat:chat confirmationHandler:0];

  if (!CKIsRunningInMacCatalyst() && +[CKUtilities isIpad])
  {
    popoverPresentationController = [v6 popoverPresentationController];
    actionButton = [failuresCopy actionButton];
    [popoverPresentationController setSourceView:actionButton];
    [actionButton bounds];
    [popoverPresentationController setSourceRect:?];
  }

  [(CKTranscriptCollectionViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)keyTransparencyConversationViewControllerDidComplete:(id)complete
{
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  chat = [conversation chat];
  [chat fetchKTStatus];

  [(CKTranscriptCollectionViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_967_1];
}

- (BOOL)_allowsEffectAutoPlayback
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  isStewieChat = [chat isStewieChat];

  if (isStewieChat)
  {
    return 0;
  }

  return CKReduceMotionAutoplayEnabled();
}

- (BOOL)_pluginChatItem:(id)item hasControllerConformingToProtocol:(id)protocol
{
  v5 = MEMORY[0x1E69A5AD0];
  protocolCopy = protocol;
  itemCopy = item;
  sharedInstance = [v5 sharedInstance];
  type = [itemCopy type];

  v10 = [sharedInstance balloonPluginForBundleID:type];
  bubbleClass = [v10 bubbleClass];

  LOBYTE(v10) = [bubbleClass conformsToProtocol:protocolCopy];
  return v10;
}

- (void)configureCell:(id)cell forCKChatItem:(id)item atIndexPath:(id)path animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  LODWORD(v213) = animated;
  v238 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    if (![pathCopy section])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = cellCopy;
        [v16 setTextEffectsDelegate:self];
      }
    }
  }

  [(CKTranscriptCollectionViewController *)self _configureEditMarginInsetsForCell:cellCopy, v213];
  item = [pathCopy item];
  traitCollection = [(CKTranscriptCollectionViewController *)self traitCollection];
  [itemCopy setTranscriptTraitCollection:traitCollection];

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isDiffableTranscriptDataSourceEnabled = [mEMORY[0x1E69A8070]2 isDiffableTranscriptDataSourceEnabled];

  if ((isDiffableTranscriptDataSourceEnabled & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cellCopy setMayReparentPluginViews:{-[CKTranscriptCollectionViewController isPerformingRegenerateOrReloadOnlyUpdate](self, "isPerformingRegenerateOrReloadOnlyUpdate") ^ 1}];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v221 = itemCopy;
    transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v21 = [v221 extensibleViewControllerForContext:transcriptIdentifier];

    if (v21)
    {
      parentViewController = [v21 parentViewController];
      if (parentViewController)
      {
      }

      else
      {
        view = [v21 view];
        window = [view window];

        if (window)
        {
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              view2 = [v21 view];
              view3 = [v21 view];
              superview = [view3 superview];
              view4 = [(CKTranscriptCollectionViewController *)self view];
              *buf = 138413314;
              v229 = v21;
              v230 = 2112;
              v231 = view2;
              v232 = 2112;
              v233 = superview;
              v234 = 2112;
              selfCopy = self;
              v236 = 2112;
              v237 = view4;
              _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Adding detached view controller %@ (view:%@, superview:%@) to transcript collection view controller %@ (view:%@)", buf, 0x34u);
            }
          }

          view5 = [v21 view];
          [view5 removeFromSuperview];
        }
      }

      [(CKTranscriptCollectionViewController *)self addChildViewController:v21];
    }
  }

  else
  {
    v221 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [itemCopy isFromMe] ^ 1;
  }

  else
  {
    v31 = 1;
  }

  v32 = +[CKUIBehavior sharedBehaviors];
  if ([v32 shouldShowContactPhotosInTranscript])
  {
    chat = [(CKTranscriptCollectionViewController *)self chat];
    v34 = [chat chatStyle] != 45;
  }

  else
  {
    v34 = 0;
  }

  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMergeBusinessSenderIndiaEnabled = [mEMORY[0x1E69A8070]3 isMergeBusinessSenderIndiaEnabled];

  if (isMergeBusinessSenderIndiaEnabled)
  {
    chat2 = [(CKTranscriptCollectionViewController *)self chat];
    isMergedBusinessThread = [chat2 isMergedBusinessThread];

    v34 = v34 | isMergedBusinessThread;
  }

  if (objc_opt_respondsToSelector())
  {
    [cellCopy setChatEligibleForContactImage:v34];
  }

  if (v34)
  {
    if (objc_opt_respondsToSelector())
    {
      [cellCopy setWantsContactImageLayout:v31];
    }

    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        hasTail = [itemCopy hasTail];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          hasTail = [itemCopy shouldShowGroupAvatar];
        }

        isLastItem = v31 & hasTail;
        if (isLastItem == 1)
        {
          contact = [itemCopy contact];
        }

        else
        {
          contact = 0;
        }

        sender = [itemCopy sender];
        v43 = [sender ID];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          transcriptIdentifier2 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v45 = [itemCopy balloonControllerForContext:transcriptIdentifier2];

          if (objc_opt_respondsToSelector())
          {
            wantsTranscriptGroupMonograms = [v45 wantsTranscriptGroupMonograms];
          }

          else
          {
            wantsTranscriptGroupMonograms = 0;
          }

          isLastItem = isLastItem & wantsTranscriptGroupMonograms;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = itemCopy;
          v48 = v47;
          if (isLastItem)
          {
            layoutRecipe = [v47 layoutRecipe];
            isLastItem = [layoutRecipe isLastItem];
          }
        }

        [cellCopy setShowAvatarView:isLastItem withContact:contact preferredHandle:v43 messageCellAvatarDelegate:self];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = cellCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v52 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:objc_opt_class() beforeIndex:item inChatItems:chatItems];
      v53 = [(CKTranscriptCollectionViewController *)self _nextChatItemOfType:objc_opt_class() afterIndex:item inChatItems:chatItems];
      v54 = v53;
      v55 = 0;
      if (v52 && v53)
      {
        if (([v53 itemIsReply] & 1) != 0 || objc_msgSend(v54, "itemIsReplyCount"))
        {
          iMChatItem = [v52 IMChatItem];
          threadGroupIdentifier = [iMChatItem threadGroupIdentifier];

          iMChatItem2 = [v54 IMChatItem];
          threadIdentifier = [iMChatItem2 threadIdentifier];

          v55 = [threadGroupIdentifier isEqualToString:threadIdentifier];
        }

        else
        {
          v55 = 0;
        }
      }
    }

    else
    {
      chatItems = IMLogHandleForCategory();
      if (os_log_type_enabled(chatItems, OS_LOG_TYPE_ERROR))
      {
        [(CKTranscriptCollectionViewController *)itemCopy configureCell:chatItems forCKChatItem:v60 atIndexPath:v61 animated:v62 animationDuration:v63 animationCurve:v64, v65];
      }

      v55 = 0;
    }

    [v50 setWantsOffsetForReplyLine:v55];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v66 = cellCopy;
    [(CKTranscriptCollectionViewController *)self _configureScheduledDateCell:v66 forItemAtIndexPath:pathCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67 = cellCopy;
    fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
    currentEffect = [fullscreenEffectManager currentEffect];
    effectIsDark = [currentEffect effectIsDark];

    [v67 setShouldConfigureForDarkFSM:effectIsDark];
    transcriptIdentifier3 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    [v67 configureForChatItem:itemCopy context:transcriptIdentifier3 animated:v214 animationDuration:curve animationCurve:duration];

    [v67 setAnimationDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v72 = cellCopy;
    balloonView = [v72 balloonView];
    traitCollection2 = [(CKTranscriptCollectionViewController *)self traitCollection];
    [balloonView updateBalloonForTraitCollection:traitCollection2];

    [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
    [balloonView setBackgroundLuminance:?];
    [v72 setBalloonCellDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v75 = cellCopy;
    [v75 setFailureButtonDelegate:self];
  }

  if (v221)
  {
    transcriptIdentifier4 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v77 = [v221 extensibleViewControllerForContext:transcriptIdentifier4];

    if (v77)
    {
      transcriptIdentifier5 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
      v79 = [v221 extensibleViewForContext:transcriptIdentifier5];

      if (objc_opt_respondsToSelector())
      {
        [v79 configureForDisplay];
      }

      [v77 didMoveToParentViewController:self];
      if (objc_opt_respondsToSelector())
      {
        [v77 setDelegate:self];
      }

      if (objc_opt_respondsToSelector())
      {
        [v77 setTintColorDelegate:self];
      }
    }
  }

  [cellCopy contentAlignmentRect];
  [(CKTranscriptCollectionViewController *)self _balloonHorizontalOffsetForParentChatItem:itemCopy contentAlignmentRect:0 responsibleChatItems:0 individualOffsets:?];
  v81 = v80;
  [(CKTranscriptCollectionViewController *)self marginInsets];
  v83 = v82;
  v85 = v84;
  v86 = +[CKUIBehavior sharedBehaviors];
  [v86 minTranscriptMarginInsets];
  v88 = v87;
  v90 = v89;

  if ([itemCopy transcriptOrientation])
  {
    if ([itemCopy transcriptOrientation] == 2)
    {
      if (v85 >= v90)
      {
        v91 = v85;
      }

      else
      {
        v91 = v90;
      }

      v92 = v81 + v91;
      if (v92 <= 0.0)
      {
        v81 = v92;
      }

      else
      {
        v81 = 0.0;
      }
    }
  }

  else
  {
    if (v83 >= v88)
    {
      v93 = v83;
    }

    else
    {
      v93 = v88;
    }

    v81 = fmax(v81 - v93, 0.0);
  }

  [cellCopy setAssociatedItemOffset:v81];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setMayReparentPluginViews:1];
  }

  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  isFeatureEnabled = [mEMORY[0x1E69A7FC8] isFeatureEnabled];

  if (isFeatureEnabled)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      balloonView2 = [cellCopy balloonView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v97 = balloonView2;
        [v97 setObscurableBalloonDelegate:self];
        [v97 updateObscuredStateForChatItem:itemCopy];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    previousPluginChatItem = [itemCopy previousPluginChatItem];
    if (previousPluginChatItem)
    {
      snapshotOfPluginBeingReplacedByBreadcrumb = [(CKTranscriptCollectionViewController *)self snapshotOfPluginBeingReplacedByBreadcrumb];
      [cellCopy setPreviousPluginSnapshot:snapshotOfPluginBeingReplacedByBreadcrumb];
    }
  }

  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView marginInsets];
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transcriptIdentifier6 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v109 = [itemCopy balloonControllerForContext:transcriptIdentifier6];

    LOBYTE(transcriptIdentifier6) = [v109 wantsTranscriptTimestampDrawer];
    if ((transcriptIdentifier6 & 1) == 0)
    {
LABEL_108:
      v110 = 0;
      goto LABEL_111;
    }
  }

  else if (![itemCopy wantsDrawerLayout])
  {
    goto LABEL_108;
  }

  v111 = +[CKUIBehavior sharedBehaviors];
  [v111 transcriptDrawerWidthForMarginInsets:{v101, v103, v105, v107}];
  v110 = v107 <= v112 - v107;

LABEL_111:
  [cellCopy setWantsDrawerLayout:v110];
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    [cellCopy setIsRetractionStamp:objc_opt_isKindOfClass() & 1];
  }

  if (objc_opt_respondsToSelector())
  {
    notifyAnywayButton = [cellCopy notifyAnywayButton];
    [notifyAnywayButton addTarget:self action:sel_touchUpInsideNotifyAnywayButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    toggleButton = [cellCopy toggleButton];
    [toggleButton addTarget:self action:sel_touchUpInsideShowHideTranslationButton_ forControlEvents:64];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setDelegate:self];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [itemCopy wantsAddToContactsButton])
  {
    v115 = itemCopy;
    if (objc_opt_respondsToSelector() & 1) != 0 && (-[CKTranscriptCollectionViewController delegate](self, "delegate"), v116 = objc_claimAutoreleasedReturnValue(), v117 = objc_opt_respondsToSelector(), v116, (v117) && (-[CKTranscriptCollectionViewController delegate](self, "delegate"), v118 = objc_claimAutoreleasedReturnValue(), [v118 transcriptCollectionViewController:self addToContactsMenuForSenderChatItem:v115], v119 = objc_claimAutoreleasedReturnValue(), v118, v119))
    {
      [cellCopy setPrimaryButtonMenu:v119];
    }

    else if (objc_opt_respondsToSelector())
    {
      objc_initWeak(buf, self);
      v225[0] = MEMORY[0x1E69E9820];
      v225[1] = 3221225472;
      v225[2] = __122__CKTranscriptCollectionViewController_configureCell_forCKChatItem_atIndexPath_animated_animationDuration_animationCurve___block_invoke;
      v225[3] = &unk_1E72F2858;
      objc_copyWeak(&v227, buf);
      v226 = v115;
      [cellCopy setOnButtonTapBlock:v225];

      objc_destroyWeak(&v227);
      objc_destroyWeak(buf);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    statusButton = [cellCopy statusButton];
    [statusButton addTarget:self action:sel_touchUpInsideCellStatusButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    stampButton = [cellCopy stampButton];
    [stampButton addTarget:self action:sel_touchUpInsideCellStampButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    reportSpamButton = [cellCopy reportSpamButton];
    [reportSpamButton addTarget:self action:sel_touchUpInsideCellReportSpamButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    leaveConversationButton = [cellCopy leaveConversationButton];
    v124 = leaveConversationButton == 0;

    if (!v124)
    {
      leaveConversationButton2 = [cellCopy leaveConversationButton];
      [leaveConversationButton2 addTarget:self action:sel_touchUpInsideCellLeaveConversationButton_ forControlEvents:64];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    buttonsContainer = [cellCopy buttonsContainer];
    v127 = buttonsContainer == 0;

    if (!v127)
    {
      conversation = [(CKTranscriptCollectionViewController *)self conversation];
      v129 = [(CKTranscriptCollectionViewController *)self generateConversationFooterActions:conversation];

      buttonsContainer2 = [cellCopy buttonsContainer];
      [buttonsContainer2 configureWithActions:v129];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    blockContactButton = [cellCopy blockContactButton];
    [blockContactButton addTarget:self action:sel_touchUpInsideCellBlockContactButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, self);
    v223[0] = MEMORY[0x1E69E9820];
    v223[1] = 3221225472;
    v223[2] = __122__CKTranscriptCollectionViewController_configureCell_forCKChatItem_atIndexPath_animated_animationDuration_animationCurve___block_invoke_2;
    v223[3] = &unk_1E72F2880;
    objc_copyWeak(&v224, buf);
    [cellCopy setQuickActionButtonTappedCallback:v223];
    objc_destroyWeak(&v224);
    objc_destroyWeak(buf);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (item != 0)) == 1)
  {
    v132 = cellCopy;
    chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
    v134 = item - 1;
    v135 = [chatItems2 objectAtIndex:item - 1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      do
      {
        v159 = v134;
        v136 = [chatItems2 objectAtIndex:v134];

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v161 = v134-- != 0;
        v135 = v136;
      }

      while ((v161 & ~isKindOfClass & 1) != 0);
      if (!v159)
      {
        itemIsReplyContextPreview = 0;
        goto LABEL_149;
      }
    }

    else
    {
      v136 = v135;
    }

    [v136 size];
    [v132 setPrevBalloonWidth:?];
    itemIsReplyContextPreview = [v136 itemIsReplyContextPreview];
LABEL_149:
    [v132 setPreviousBalloonIsReplyContextPreview:itemIsReplyContextPreview];
  }

  collectionView2 = +[CKUIBehavior sharedBehaviors];
  if ([collectionView2 disableTranscriptTimestamps])
  {
LABEL_153:

    goto LABEL_154;
  }

  v139 = objc_opt_respondsToSelector();

  if (v139)
  {
    collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
    [collectionView2 marginInsets];
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v147 = v146;
    [collectionView2 contentOffset];
    v149 = v148;
    v150 = +[CKUIBehavior sharedBehaviors];
    [v150 transcriptDrawerMaxContentOffsetXForMarginInsets:{v141, v143, v145, v147}];
    [cellCopy setDrawerPercentRevealed:v149 / v151];

    goto LABEL_153;
  }

LABEL_154:
  mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070]4 isGroupTypingIndicatorsEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v153 = objc_opt_isKindOfClass();

      if ((v153 & 1) == 0)
      {
        goto LABEL_190;
      }

      chat3 = [(CKTranscriptCollectionViewController *)self chat];
      mEMORY[0x1E69A8070]4 = [chat3 typingTrackingController];

      v155 = cellCopy;
      if (v155)
      {
        currentTypingHandles = [mEMORY[0x1E69A8070]4 currentTypingHandles];
        handleToRemoveViaAnimation = [mEMORY[0x1E69A8070]4 handleToRemoveViaAnimation];

        v157 = IMOSLoggingEnabled();
        if (handleToRemoveViaAnimation)
        {
          if (v157)
          {
            v158 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v229 = currentTypingHandles;
              _os_log_impl(&dword_19020E000, v158, OS_LOG_TYPE_INFO, "Preparing for group typing avatar animation with new handles: %@", buf, 0xCu);
            }
          }

          [v155 prepareForAvatarAnimationWithNewHandles:currentTypingHandles];
        }

        else
        {
          if (v157)
          {
            v163 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v229 = currentTypingHandles;
              _os_log_impl(&dword_19020E000, v163, OS_LOG_TYPE_INFO, "Setting group typing avatars with new handles: %@", buf, 0xCu);
            }
          }

          if ([currentTypingHandles count] == 1)
          {
            pluginPayloads = [mEMORY[0x1E69A8070]4 pluginPayloads];
            firstObject = [currentTypingHandles firstObject];
            v166 = [firstObject ID];
            v167 = [pluginPayloads objectForKey:v166];

            pluginBundleID = [v167 pluginBundleID];
            type = [v167 type];
            typingIndicatorIcon = [v167 typingIndicatorIcon];
            v171 = [CKTypingPluginChatItem indicatorLayerForPluginBundleID:pluginBundleID type:type typingIndicatorData:typingIndicatorIcon];
          }

          else
          {
            v171 = 0;
          }

          [v155 setTypingHandles:currentTypingHandles pluginIconLayer:v171 shouldAnimateRemovals:1];
        }

        [v155 setGroupAvatarViewFromCurrentViewController];
        if (IMOSLoggingEnabled())
        {
          v172 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
          {
            recursiveDescription = [v155 recursiveDescription];
            superview2 = [v155 superview];
            recursiveDescription2 = [superview2 recursiveDescription];
            subviews = [v155 subviews];
            *buf = 138412802;
            v229 = recursiveDescription;
            v230 = 2112;
            v231 = recursiveDescription2;
            v232 = 2112;
            v233 = subviews;
            _os_log_impl(&dword_19020E000, v172, OS_LOG_TYPE_INFO, "Setting content view for groupCollectionViewCell:%@ ; superview:%@ ; subviews:%@", buf, 0x20u);
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v162 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v162, OS_LOG_TYPE_INFO, "groupCollectionViewCell is nil.", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v177 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
        {
          subviews2 = [v155 subviews];
          *buf = 138412290;
          v229 = subviews2;
          _os_log_impl(&dword_19020E000, v177, OS_LOG_TYPE_INFO, "Returning cell subview = %@", buf, 0xCu);
        }
      }
    }
  }

LABEL_190:
  if (objc_opt_respondsToSelector())
  {
    balloonView3 = [cellCopy balloonView];
    if (objc_opt_respondsToSelector())
    {
      gradientReferenceView = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
      [balloonView3 setGradientReferenceView:gradientReferenceView];
    }

    [balloonView3 setCanUseOpaqueMask:{-[CKTranscriptCollectionViewController shouldUseOpaqueMask](self, "shouldUseOpaqueMask")}];
    mEMORY[0x1E69A8070]5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isSwipeToReplyEnabled = [mEMORY[0x1E69A8070]5 isSwipeToReplyEnabled];

    if (isSwipeToReplyEnabled && !CKIsRunningInMessagesNotificationExtension() && !CKIsRunningInMessagesNotificationViewService())
    {
      longPressGestureRecognizer = [balloonView3 longPressGestureRecognizer];
      panGestureRecognizer = [collectionView panGestureRecognizer];
      [longPressGestureRecognizer requireGestureRecognizerToFail:panGestureRecognizer];
    }

    v185 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
    audioController = [v185 audioController];

    if ([balloonView3 isAudioMessage])
    {
      v186 = balloonView3;
      currentMediaObject = [audioController currentMediaObject];
      transferGUID = [currentMediaObject transferGUID];
      mediaObject = [itemCopy mediaObject];
      transferGUID2 = [mediaObject transferGUID];
      v191 = [transferGUID isEqualToString:transferGUID2];

      if (v191)
      {
        [audioController currentMediaObjectTime];
        [v186 setTime:?];
        isPlaying = [audioController isPlaying];
      }

      else
      {
        [v186 setTime:0.0];
        isPlaying = 0;
      }

      [v186 setPlaying:{isPlaying, audioController}];
      [(CKTranscriptCollectionViewController *)self configureSpeakerButtonCell:cellCopy forItemAtIndexPath:pathCopy];
    }

    [balloonView3 setDelegate:{self, audioController}];
    [balloonView3 prepareForDisplayIfNeeded];
    [collectionView bounds];
    [collectionView convertRect:balloonView3 toView:?];
    [balloonView3 cullSubviewsWithVisibleBounds:?];
    v193 = +[CKPrintController sharedInstance];
    isPrinting = [v193 isPrinting];

    if ((isPrinting & 1) == 0)
    {
      delegate = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate transcriptCollectionViewController:self targetAlphaForChatItem:itemCopy];
      v197 = v196;

      if (v197 != -1.0)
      {
        [balloonView3 setAlpha:v197];
      }
    }

    v198 = +[CKApplicationState isResizing];
    dragInteraction = [balloonView3 dragInteraction];

    if (dragInteraction)
    {
      v200 = 1;
    }

    else
    {
      v200 = v198;
    }

    if ((v200 & 1) == 0)
    {
      v201 = objc_alloc(MEMORY[0x1E69DC988]);
      dragInteractionDelegate = [(CKTranscriptCollectionViewController *)self dragInteractionDelegate];
      v203 = [v201 initWithDelegate:dragInteractionDelegate];

      [balloonView3 setDragInteraction:v203];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [cellCopy startAnimatingActivityIndicator];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setAnimationPauseReasons:{-[CKTranscriptCollectionViewController contentAnimationPauseReasons](self, "contentAnimationPauseReasons")}];
  }

  hiddenItems = [(CKTranscriptCollectionViewController *)self hiddenItems];
  v205 = [hiddenItems containsIndex:{objc_msgSend(pathCopy, "item")}];

  if (v205)
  {
    v206 = 0.0;
  }

  else
  {
    v206 = 1.0;
  }

  contentView = [cellCopy contentView];
  [contentView setAlpha:v206];

  [(CKTranscriptCollectionViewController *)self _hideBalloonViewIfNecessaryForCell:cellCopy indexPath:pathCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(CKTranscriptCollectionViewController *)self transitioningFromComposing])
  {
    iMChatItem3 = [itemCopy IMChatItem];
    guid = [iMChatItem3 guid];

    pluginSnapshots = [(CKTranscriptCollectionViewController *)self pluginSnapshots];
    v211 = [pluginSnapshots objectForKeyedSubscript:guid];
  }

  else
  {
    v211 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    balloonView4 = [cellCopy balloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [balloonView4 setPluginSnapshotView:v211];
    }
  }
}

void __122__CKTranscriptCollectionViewController_configureCell_forCKChatItem_atIndexPath_animated_animationDuration_animationCurve___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained touchUpInsideUnknownSenderButton:v3 forChatItem:*(a1 + 32)];
}

void __122__CKTranscriptCollectionViewController_configureCell_forCKChatItem_atIndexPath_animated_animationDuration_animationCurve___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained quickActionButtonWasTapped:v3];
}

- (id)_nextChatItemOfType:(Class)type afterIndex:(int64_t)index inChatItems:(id)items
{
  itemsCopy = items;
  v7 = [itemsCopy count];
  v8 = index + 1;
  if (v8 >= v7)
  {
    v11 = 0;
  }

  else
  {
    v9 = v7;
    do
    {
      v10 = [itemsCopy objectAtIndexedSubscript:v8];
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
        ++v8;
      }
    }

    while (!v11 && v8 < v9);
  }

  return v11;
}

- (id)_previousChatItemOfType:(Class)type beforeIndex:(int64_t)index inChatItems:(id)items
{
  v5 = index - 1;
  if (index < 1)
  {
    v8 = 0;
  }

  else
  {
    do
    {
      v7 = [items objectAtIndexedSubscript:v5];
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
        --v5;
      }
    }

    while (!v8 && (v5 & 0x8000000000000000) == 0);
  }

  return v8;
}

- (void)_hideBalloonViewIfNecessaryForCell:(id)cell indexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  hiddenBalloonViews = [(CKTranscriptCollectionViewController *)self hiddenBalloonViews];
  if ([hiddenBalloonViews count])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    hiddenBalloonViews2 = [(CKTranscriptCollectionViewController *)self hiddenBalloonViews];
    v10 = [hiddenBalloonViews2 containsIndex:{objc_msgSend(pathCopy, "item")}];

    hiddenBalloonViews = [cellCopy balloonView];
    [hiddenBalloonViews setHidden:v10];
  }

LABEL_5:
}

- (void)_configureEditMarginInsetsForCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = cellCopy;
  if (isKindOfClass)
  {
    v6 = cellCopy;
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    [v6 _ck_setEditing:{objc_msgSend(collectionView, "_ck_isEditing")}];

    v8 = +[CKUIBehavior sharedBehaviors];
    if ([v8 forceMinTranscriptMarginInsets])
    {
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 minTranscriptMarginInsets];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self marginInsets];
      v11 = v18;
      v13 = v19;
      v15 = v20;
      v17 = v21;
    }

    [v6 setMarginInsets:{v11, v13, v15, v17}];
    v5 = cellCopy;
  }
}

- (void)configureAssociatedCell:(id)cell forChatItem:(id)item atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  [(CKTranscriptCollectionViewController *)self _configureEditMarginInsetsForCell:cellCopy];
  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  v12 = [collectionViewLayout layoutAttributesForItemAtIndexPath:pathCopy];

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  associatedChatItemGUID = [itemCopy associatedChatItemGUID];
  associatedMessageRange = [itemCopy associatedMessageRange];
  v17 = [chatItems ck_indexOfChatItemContainingIMChatItemGUID:associatedChatItemGUID associatedMessageRange:{associatedMessageRange, v16}];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
    v19 = [chatItems2 objectAtIndex:v17];

    [cellCopy contentAlignmentRect];
    v82 = 0;
    v83 = 0;
    [(CKTranscriptCollectionViewController *)self _balloonHorizontalOffsetForParentChatItem:v19 contentAlignmentRect:&v83 responsibleChatItems:&v82 individualOffsets:?];
    v21 = v20;
    v22 = v83;
    v23 = v82;
    if (v21 != 0.0)
    {
      [(CKTranscriptCollectionViewController *)self marginInsets];
      v25 = v24;
      v27 = v26;
      v28 = +[CKUIBehavior sharedBehaviors];
      [v28 minTranscriptMarginInsets];
      v30 = v29;
      v32 = v31;

      if (v25 >= v30)
      {
        v30 = v25;
      }

      if (v27 < v32)
      {
        v27 = v32;
      }

      if ([v19 transcriptOrientation])
      {
        if ([v19 transcriptOrientation] == 2)
        {
          if (v21 + v27 <= 0.0)
          {
            v21 = v21 + v27;
          }

          else
          {
            v21 = 0.0;
          }
        }
      }

      else
      {
        v21 = fmax(v21 - v30, 0.0);
      }

      if ([v22 containsObject:itemCopy])
      {
        v33 = [v23 objectAtIndex:{objc_msgSend(v22, "indexOfObject:", itemCopy)}];
        [v33 doubleValue];
        v35 = v34;

        if ([v19 transcriptOrientation])
        {
          if ([v19 transcriptOrientation] == 2)
          {
            if (v27 + v35 <= 0.0)
            {
              v35 = v27 + v35;
            }

            else
            {
              v35 = 0.0;
            }
          }
        }

        else
        {
          v35 = fmax(v35 - v30, 0.0);
        }

        v21 = v21 + v21 - v35;
      }

      [cellCopy setCumulativeAssociatedOffset:v21];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cellCopy setParentIsFromMe:{objc_msgSend(v19, "isFromMe")}];
    }

    [v19 stickerReactionInsets];
    [cellCopy setStickerReactionInsetsForParent:?];
  }

  [v12 parentChatItemSize];
  [cellCopy setParentSize:?];
  [v12 parentRotationOffset];
  [cellCopy setParentRotationOffset:?];
  [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
  [cellCopy setTranscriptBackgroundLuminance:?];
  transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
  [cellCopy configureForChatItem:itemCopy context:transcriptIdentifier animated:0 animationDuration:3 animationCurve:0.0];

  [cellCopy setDelegate:self];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView marginInsets];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = 0;
  if ([itemCopy wantsDrawerLayout])
  {
    v47 = +[CKUIBehavior sharedBehaviors];
    [v47 transcriptDrawerWidthForMarginInsets:{v39, v41, v43, v45}];
    v46 = v45 <= v48 - v45;
  }

  [cellCopy setWantsDrawerLayout:v46];
  v49 = +[CKUIBehavior sharedBehaviors];
  if ([v49 shouldShowContactPhotosInTranscript])
  {
    chat = [(CKTranscriptCollectionViewController *)self chat];
    if ([chat chatStyle] == 45)
    {
      v51 = 0;
    }

    else
    {
      v51 = [itemCopy parentMessageIsFromMe] ^ 1;
    }
  }

  else
  {
    v51 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [cellCopy setWantsContactImageLayout:v51];
  }

  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self targetAlphaForChatItem:itemCopy];
  v54 = v53;

  if (v54 != -1.0)
  {
    if (objc_opt_respondsToSelector())
    {
      balloonView = [cellCopy balloonView];
      if (objc_opt_respondsToSelector())
      {
        gradientReferenceView = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
        [balloonView setGradientReferenceView:gradientReferenceView];
      }

      [balloonView setCanUseOpaqueMask:{-[CKTranscriptCollectionViewController _canUseOpaqueMask](self, "_canUseOpaqueMask")}];
      [balloonView setDelegate:self];
      [balloonView prepareForDisplayIfNeeded];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_43;
      }

      balloonView = [cellCopy imageView];
    }

    [balloonView setAlpha:v54];
  }

LABEL_43:
  collectionView2 = +[CKUIBehavior sharedBehaviors];
  if (([collectionView2 disableTranscriptTimestamps] & 1) == 0)
  {
    v58 = objc_opt_respondsToSelector();

    if ((v58 & 1) == 0)
    {
      goto LABEL_47;
    }

    collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
    [collectionView2 marginInsets];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    [collectionView2 contentOffset];
    v68 = v67;
    v69 = +[CKUIBehavior sharedBehaviors];
    [v69 transcriptDrawerMaxContentOffsetXForMarginInsets:{v60, v62, v64, v66}];
    [cellCopy setDrawerPercentRevealed:v68 / v70];
  }

LABEL_47:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setFailureButtonDelegate:self];
  }

  [(CKTranscriptCollectionViewController *)self setHiddenAssociatedItemsForMessageEditing:self->_hiddenAssociatedItemsForMessageEditing];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v71 = cellCopy;
    guid = [itemCopy guid];
    stickerGUIDsHiddenDuringStickerAddAnimation = [(CKTranscriptCollectionViewController *)self stickerGUIDsHiddenDuringStickerAddAnimation];
    v74 = [stickerGUIDsHiddenDuringStickerAddAnimation containsObject:guid];

    if (v74)
    {
      associatedItemView = [v71 associatedItemView];
      [associatedItemView setHidden:1];
    }

    v76 = objc_alloc(MEMORY[0x1E69DC988]);
    dragInteractionDelegate = [(CKTranscriptCollectionViewController *)self dragInteractionDelegate];
    v78 = [v76 initWithDelegate:dragInteractionDelegate];

    associatedItemView2 = [v71 associatedItemView];
    [associatedItemView2 setInteractions:MEMORY[0x1E695E0F0]];

    associatedItemView3 = [v71 associatedItemView];
    [associatedItemView3 addInteraction:v78];

    associatedItemView4 = [v71 associatedItemView];
    [associatedItemView4 setUserInteractionEnabled:1];
  }
}

- (double)_balloonHorizontalOffsetForParentChatItem:(id)item contentAlignmentRect:(CGRect)rect responsibleChatItems:(id *)items individualOffsets:(id *)offsets
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v65 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  visibleAssociatedMessageChatItems = [itemCopy visibleAssociatedMessageChatItems];
  v10 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v10)
  {
    v11 = v10;
    v53 = 0;
    v12 = *v61;
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = 0.0;
    do
    {
      v16 = 0;
      v48 = v11;
      do
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
        }

        v17 = *(*(&v60 + 1) + 8 * v16);
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        if (v17)
        {
          [v17 geometryDescriptor];
        }

        transcriptOrientation = [itemCopy transcriptOrientation];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 isReaction])
        {
          [itemCopy size];
          v20 = v19;
          v22 = v21;
          [itemCopy stickerReactionInsets];
          [CKAssociatedMessageChatItem locationForStickerReactionWithParentFrame:v53 reactionIndex:transcriptOrientation == 2 parentIsFromMe:v13 insets:v14, v20, v22, v23, v24, v25, v26];
          v28 = v27;
          if (transcriptOrientation == 2)
          {
            if (v27 > v20)
            {
              v29 = v27 - v20;
              [array addObject:v17];
              v30 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
              [array2 addObject:v30];

              if (v29 >= v15)
              {
                v15 = v29;
              }
            }
          }

          else if (!transcriptOrientation && v27 < 0.0)
          {
            [array addObject:v17];
            v31 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
            [array2 addObject:v31];

            if (v28 < v15)
            {
              v15 = v28;
            }
          }

          ++v53;
          v11 = v48;
        }

        if ((v56 - 12) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          [v17 size];
          v33 = v32;
          v35 = v34;
          [itemCopy size];
          v37 = v36;
          v39 = v38;
          transcriptOrientation2 = [v17 transcriptOrientation];
          v54[0] = v56;
          v54[1] = v57;
          v54[2] = v58;
          v55 = v59;
          [CKAssociatedStickerChatItem computeHorizontalStickerFrameOffset:v54 parentSize:transcriptOrientation2 forPositioningWithinContentAlignmentRect:v13 geometryDescriptor:v14 forTranscriptOrientation:v33, v35, v37, v39, *&x, *&y, *&width, *&height];
          v42 = v41;
          if (transcriptOrientation == 2)
          {
            if (v41 < 0.0)
            {
              [array addObject:v17];
              v44 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
              [array2 addObject:v44];
            }

            if (v42 < v15)
            {
              v15 = v42;
            }
          }

          else if (!transcriptOrientation)
          {
            if (v41 > 0.0)
            {
              [array addObject:v17];
              v43 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
              [array2 addObject:v43];
            }

            if (v42 >= v15)
            {
              v15 = v42;
            }
          }
        }

        ++v16;
      }

      while (v11 != v16);
      v11 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v11);
  }

  else
  {
    v15 = 0.0;
  }

  if (items)
  {
    *items = [array copy];
  }

  if (offsets)
  {
    *offsets = [array2 copy];
  }

  return v15;
}

- (void)_indicesOfReplyChatItemsToInsertWithoutFading:(id)fading inserted:(id)inserted outInsertIndices:(id *)indices
{
  v13 = *MEMORY[0x1E69E9840];
  fadingCopy = fading;
  insertedCopy = inserted;
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __112__CKTranscriptCollectionViewController__indicesOfReplyChatItemsToInsertWithoutFading_inserted_outInsertIndices___block_invoke;
  v11[3] = &unk_1E72F28A8;
  v10 = v9;
  v12 = v10;
  [fadingCopy enumerateObjectsAtIndexes:insertedCopy options:0 usingBlock:v11];

  if (indices)
  {
    *indices = [v10 copy];
  }
}

void __112__CKTranscriptCollectionViewController__indicesOfReplyChatItemsToInsertWithoutFading_inserted_outInsertIndices___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 itemIsReply] & 1) != 0 || objc_msgSend(v5, "itemIsReplyContextPreview"))
  {
    [*(a1 + 32) addIndex:a3];
  }
}

- (void)_indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading:(id)fading inserted:(id)inserted removed:(id)removed outInsertIndices:(id *)indices outRemoveIndices:(id *)removeIndices
{
  v74 = *MEMORY[0x1E69E9840];
  fadingCopy = fading;
  insertedCopy = inserted;
  removedCopy = removed;
  removeIndicesCopy = removeIndices;
  indicesCopy = indices;
  if (indices | removeIndices)
  {
    v48 = removedCopy;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke;
    v69[3] = &unk_1E72F28A8;
    v15 = dictionary;
    v70 = v15;
    [fadingCopy enumerateObjectsAtIndexes:insertedCopy options:0 usingBlock:v69];

    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke_1043;
    v67[3] = &unk_1E72F0918;
    indexSet = dictionary2;
    v68 = indexSet;
    [chatItems enumerateObjectsAtIndexes:v48 options:0 usingBlock:v67];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v17)
    {
      v18 = *v64;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v64 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v63 + 1) + 8 * i);
          v21 = [indexSet objectForKey:v20];
          if (!v21)
          {

            goto LABEL_37;
          }

          v22 = [obj objectForKey:v20];
          v23 = [v22 count];
          v24 = [v21 count];
          if (v23 >= v24)
          {
            v23 = v24;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v73 = 0;
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke_1044;
          v59[3] = &unk_1E72F28D0;
          v60 = array;
          v61 = buf;
          v62 = v23;
          [v22 enumerateIndexesWithOptions:2 usingBlock:v59];
          *(*&buf[8] + 24) = 0;
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke_2;
          v55[3] = &unk_1E72F28D0;
          v56 = array2;
          v57 = buf;
          v58 = v23;
          [v21 enumerateIndexesWithOptions:2 usingBlock:v55];

          _Block_object_dispose(buf, 8);
        }

        v17 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    if ([array2 count] && IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(array2, "count")}];
        *buf = 138412546;
        *&buf[4] = v26;
        *&buf[12] = 2112;
        *&buf[14] = array2;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "The indices to remove unconsumed breadcrumbs are (count: %@): %@", buf, 0x16u);
      }
    }

    if ([array count] && IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(array2, "count")}];
        *buf = 138412546;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = array;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "The indices to insert unconsumed breadcrumbs are (count: %@): %@", buf, 0x16u);
      }
    }

    obj = [MEMORY[0x1E696AD50] indexSet];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    if ([array count])
    {
      v29 = 0;
      do
      {
        v30 = [array objectAtIndexedSubscript:v29];
        unsignedIntegerValue = [v30 unsignedIntegerValue];

        v32 = [array2 objectAtIndexedSubscript:v29];
        unsignedIntegerValue2 = [v32 unsignedIntegerValue];

        v34 = [fadingCopy objectAtIndexedSubscript:unsignedIntegerValue];
        chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
        v36 = [chatItems2 objectAtIndexedSubscript:unsignedIntegerValue2];
        iMChatItem = [v36 IMChatItem];

        LODWORD(chatItems2) = [v34 isFromMe];
        if (chatItems2 == [iMChatItem isFromMe])
        {
          v38 = unsignedIntegerValue2 + 1;
          while (v38 <= unsignedIntegerValue)
          {
            chatItems3 = [(CKTranscriptCollectionViewController *)self chatItems];
            v40 = v38 < [chatItems3 count];

            if (!v40)
            {
              break;
            }

            chatItems4 = [(CKTranscriptCollectionViewController *)self chatItems];
            v42 = [chatItems4 objectAtIndex:v38];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            ++v38;
            if (isKindOfClass)
            {
              goto LABEL_31;
            }
          }

          [obj addIndex:unsignedIntegerValue];
          [indexSet addIndex:unsignedIntegerValue2];
        }

LABEL_31:

        ++v29;
      }

      while (v29 < [array count]);
    }

    if (indicesCopy)
    {
      v44 = obj;
      *indicesCopy = obj;
    }

    if (removeIndicesCopy)
    {
      v45 = indexSet;
      *removeIndicesCopy = indexSet;
    }

LABEL_37:

    removedCopy = v48;
  }
}

void __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v10;
  if (isKindOfClass)
  {
    v7 = [v10 dataSource];
    v8 = [v7 sessionGUID];

    v9 = [*(a1 + 32) objectForKey:v8];
    if (!v9)
    {
      v9 = [MEMORY[0x1E696AD50] indexSet];
    }

    [v9 addIndex:a3];
    [*(a1 + 32) setObject:v9 forKey:v8];

    v6 = v10;
  }
}

void __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke_1043(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v12;
  if (isKindOfClass)
  {
    v8 = [v12 IMChatItem];
    v9 = [v8 dataSource];
    v10 = [v9 sessionGUID];

    v11 = [*(a1 + 32) objectForKey:v10];
    if (!v11)
    {
      v11 = [MEMORY[0x1E696AD50] indexSet];
    }

    [v11 addIndex:a3];
    [*(a1 + 32) setObject:v11 forKey:v10];

    v7 = v12;
  }
}

void __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke_1044(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v5 addObject:v6];

  if (++*(*(a1[5] + 8) + 24) >= a1[6])
  {
    *a3 = 1;
  }
}

void __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke_2(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v5 addObject:v6];

  if (++*(*(a1[5] + 8) + 24) >= a1[6])
  {
    *a3 = 1;
  }
}

- (unint64_t)_indexOfBreadcrumbReplacingTranscriptPluginInChatItems:(id)items inserted:(id)inserted removed:(id)removed outIndexOfReplacedPlugin:(unint64_t *)plugin outIndexOfNewPlugin:(unint64_t *)newPlugin
{
  itemsCopy = items;
  insertedCopy = inserted;
  removedCopy = removed;
  if (plugin)
  {
    *plugin = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (newPlugin)
  {
    *newPlugin = 0x7FFFFFFFFFFFFFFFLL;
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0x7FFFFFFFFFFFFFFFLL;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__33;
  v46[4] = __Block_byref_object_dispose__33;
  v47 = 0;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v16 = [chatItems count];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __157__CKTranscriptCollectionViewController__indexOfBreadcrumbReplacingTranscriptPluginInChatItems_inserted_removed_outIndexOfReplacedPlugin_outIndexOfNewPlugin___block_invoke;
  v41[3] = &unk_1E72F28F8;
  v45 = v16;
  v17 = chatItems;
  v42 = v17;
  v43 = &v48;
  v44 = v46;
  [removedCopy enumerateIndexesWithOptions:2 usingBlock:v41];
  v18 = v49[3];
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = v18;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __157__CKTranscriptCollectionViewController__indexOfBreadcrumbReplacingTranscriptPluginInChatItems_inserted_removed_outIndexOfReplacedPlugin_outIndexOfNewPlugin___block_invoke_2;
    v31[3] = &unk_1E72F2920;
    v33 = v36;
    v20 = itemsCopy;
    v32 = v20;
    v34 = v46;
    v35 = &v37;
    [insertedCopy enumerateIndexesUsingBlock:v31];
    if (v38[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __157__CKTranscriptCollectionViewController__indexOfBreadcrumbReplacingTranscriptPluginInChatItems_inserted_removed_outIndexOfReplacedPlugin_outIndexOfNewPlugin___block_invoke_3;
      v22[3] = &unk_1E72F2920;
      v24 = &v37;
      v23 = v20;
      v25 = v46;
      v26 = &v27;
      [insertedCopy enumerateIndexesWithOptions:2 usingBlock:v22];
      if (plugin)
      {
        *plugin = v49[3];
      }

      if (newPlugin)
      {
        *newPlugin = v28[3];
      }

      v19 = v38[3];

      _Block_object_dispose(&v27, 8);
    }

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(&v37, 8);
  }

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&v48, 8);

  return v19;
}

void __157__CKTranscriptCollectionViewController__indexOfBreadcrumbReplacingTranscriptPluginInChatItems_inserted_removed_outIndexOfReplacedPlugin_outIndexOfNewPlugin___block_invoke(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*(a1 + 56) > a2)
  {
    v7 = [*(a1 + 32) objectAtIndex:a2];
    v12 = [v7 IMChatItem];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 40) + 8) + 24) = a2;
      v8 = [v12 dataSource];
      v9 = [v8 sessionGUID];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *a3 = 1;
    }
  }
}

void __157__CKTranscriptCollectionViewController__indexOfBreadcrumbReplacingTranscriptPluginInChatItems_inserted_removed_outIndexOfReplacedPlugin_outIndexOfNewPlugin___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(*(*(a1 + 40) + 8) + 24) == a2)
  {
    v10 = [*(a1 + 32) objectAtIndex:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v10 dataSource];
      v8 = [v7 sessionGUID];
      v9 = [v8 isEqualToString:*(*(*(a1 + 48) + 8) + 40)];

      if (v9)
      {
        *(*(*(a1 + 56) + 8) + 24) = a2;
        *a3 = 1;
      }
    }
  }
}

void __157__CKTranscriptCollectionViewController__indexOfBreadcrumbReplacingTranscriptPluginInChatItems_inserted_removed_outIndexOfReplacedPlugin_outIndexOfNewPlugin___block_invoke_3(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*(*(*(a1 + 40) + 8) + 24) >= a2)
  {
    *a3 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) objectAtIndex:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v9 dataSource];
      v7 = [v6 sessionGUID];
      v8 = [v7 isEqualToString:*(*(*(a1 + 48) + 8) + 40)];

      if (v8)
      {
        *(*(*(a1 + 56) + 8) + 24) = a2;
        *a3 = 1;
      }
    }
  }
}

- (void)_updatePluginPlaybackManagerForInsertedChatItems:(id)items
{
  v53 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if ([itemsCopy count] && !self->_notifications)
  {
    pluginPlaybackManager = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];
    if (pluginPlaybackManager)
    {
      v34 = itemsCopy;
      v5 = [MEMORY[0x1E695DFA8] set];
      collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
      indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v9 = indexPathsForVisibleItems;
      v10 = [v9 countByEnumeratingWithState:&v41 objects:v52 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v42;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v42 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v41 + 1) + 8 * i);
            if (![v14 section])
            {
              item = [v14 item];
              if (item >= [chatItems count])
              {
                v16 = IMLogHandleForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v19 = [chatItems count];
                  *buf = 136315650;
                  v47 = "[CKTranscriptCollectionViewController _updatePluginPlaybackManagerForInsertedChatItems:]";
                  v48 = 2112;
                  v49 = v14;
                  v50 = 2048;
                  v51 = v19;
                  _os_log_error_impl(&dword_19020E000, v16, OS_LOG_TYPE_ERROR, "%s visible IndexPath: %@, out of chatItem bounds: %lu", buf, 0x20u);
                }
              }

              else
              {
                v16 = [chatItems objectAtIndex:{objc_msgSend(v14, "item")}];
                iMChatItem = [v16 IMChatItem];
                guid = [iMChatItem guid];

                if (guid)
                {
                  [v5 addObject:guid];
                }
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v41 objects:v52 count:16];
        }

        while (v11);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      itemsCopy = v34;
      v20 = v34;
      v21 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v33 = chatItems;
        v35 = 0;
        v23 = *v38;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v37 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              iMChatItem2 = [v25 IMChatItem];
              guid2 = [iMChatItem2 guid];
              v28 = [v5 containsObject:guid2];

              if (v28)
              {
                v29 = v25;
                iMChatItem3 = [v29 IMChatItem];
                wantsAutoPlayback = [iMChatItem3 wantsAutoPlayback];

                if (wantsAutoPlayback)
                {
                  [pluginPlaybackManager addPluginItem:v29];
                  v35 = 1;
                }
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v22);
        v32 = v35 ^ 1;
        chatItems = v33;
        itemsCopy = v34;
      }

      else
      {
        v32 = 1;
      }

      if (([pluginPlaybackManager isPlayingBack] & 1) == 0 && (v32 & 1) == 0)
      {
        [pluginPlaybackManager startPlayback];
      }
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self pluginPlaybackDelay];
      [(CKTranscriptCollectionViewController *)self startPluginPlaybackAfterDelay:?];
    }
  }
}

- (void)reloadChatItemsAtIndexes:(id)indexes animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  indexesCopy = indexes;
  imChatItems = [(CKTranscriptCollectionViewController *)self imChatItems];
  indexSet = [MEMORY[0x1E696AC90] indexSet];
  indexSet2 = [MEMORY[0x1E696AC90] indexSet];
  indexSet3 = [MEMORY[0x1E696AC90] indexSet];
  [(CKTranscriptCollectionViewController *)self updateTranscriptChatItems:imChatItems inserted:indexSet removed:indexSet2 reload:indexesCopy regenerate:indexSet3 animated:animatedCopy completion:completionCopy];
}

- (void)updateTranscriptChatItems:(id)items inserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate animated:(BOOL)animated checkFiltered:(BOOL)filtered completion:(id)self0
{
  animatedCopy = animated;
  v43 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  insertedCopy = inserted;
  removedCopy = removed;
  reloadCopy = reload;
  regenerateCopy = regenerate;
  selfCopy = self;
  v21 = regenerateCopy;
  completionCopy = completion;
  if (filtered)
  {
    v36 = animatedCopy;
    chat = [(CKTranscriptCollectionViewController *)selfCopy chat];
    if (![chat isFiltered])
    {

LABEL_15:
      animatedCopy = v36;
      goto LABEL_16;
    }

    [(CKTranscriptCollectionViewController *)selfCopy chat];
    v24 = v34 = selfCopy;
    [v24 account];
    v25 = v35 = itemsCopy;
    service = [v25 service];
    v27 = [service supportsCapability:*MEMORY[0x1E69A7948]];

    itemsCopy = v35;
    selfCopy = v34;

    animatedCopy = v36;
    if ((v27 & 1) == 0)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v28 = v35;
      v29 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v39;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v39 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v38 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v33 setShouldDisplayRichLink:0];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v30);
      }

      selfCopy = v34;
      itemsCopy = v35;
      goto LABEL_15;
    }
  }

LABEL_16:
  [(CKTranscriptCollectionViewController *)selfCopy updateTranscriptChatItems:itemsCopy inserted:insertedCopy removed:removedCopy reload:reloadCopy regenerate:v21 animated:animatedCopy completion:completionCopy];
}

- (void)updateTranscriptChatItems:(id)items inserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  itemsCopy = items;
  insertedCopy = inserted;
  removedCopy = removed;
  reloadCopy = reload;
  regenerateCopy = regenerate;
  completionCopy = completion;
  [(CKTranscriptCollectionViewController *)self _updateTranscriptChatItems:itemsCopy inserted:insertedCopy removed:removedCopy reload:reloadCopy regenerate:regenerateCopy animated:animatedCopy completion:completionCopy];
}

- (void)_updateTranscriptChatItems:(id)items inserted:(id)inserted removed:(id)removed reload:(id)reload regenerate:(id)regenerate animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v99 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  insertedCopy = inserted;
  removedCopy = removed;
  reloadCopy = reload;
  regenerateCopy = regenerate;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      chat = [(CKTranscriptCollectionViewController *)self chat];
      v18 = chat;
      v19 = @"NO";
      if (animatedCopy)
      {
        v19 = @"YES";
      }

      *buf = 138412546;
      v92 = v19;
      v93 = 2112;
      v94 = chat;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Beginning to update transcript chatItems (animated: %@) for chat: %@", buf, 0x16u);
    }
  }

  isInline = [(CKTranscriptCollectionViewController *)self isInline];
  v21 = IMOSLoggingEnabled();
  if (isInline)
  {
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      chat2 = [(CKTranscriptCollectionViewController *)self chat];
      inlineReplyController = [chat2 inlineReplyController];
      v23 = MEMORY[0x1E696AD98];
      imChatItems = [(CKTranscriptCollectionViewController *)self imChatItems];
      v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(imChatItems, "count")}];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
      v27 = MEMORY[0x1E696AD98];
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(chatItems, "count")}];
      *buf = 138413058;
      v92 = inlineReplyController;
      v93 = 2112;
      v94 = v25;
      v95 = 2112;
      v96 = v26;
      v97 = 2112;
      v98 = v29;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "\tTranscript Type: Inline, inlineReplyController: %@, self.imChatItems<IMChatItem *>.count:%@, imChatItems<IMChatItem *>.count:%@, self.chatItems<CKChatItem *>.count:%@", buf, 0x2Au);
    }
  }

  else
  {
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v30 = MEMORY[0x1E696AD98];
      imChatItems2 = [(CKTranscriptCollectionViewController *)self imChatItems];
      v32 = [v30 numberWithUnsignedInteger:{objc_msgSend(imChatItems2, "count")}];
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
      v34 = MEMORY[0x1E696AD98];
      chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
      v36 = [v34 numberWithUnsignedInteger:{objc_msgSend(chatItems2, "count")}];
      *buf = 138412802;
      v92 = v32;
      v93 = 2112;
      v94 = v33;
      v95 = 2112;
      v96 = v36;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "\tTranscript Type: Standard, self.imChatItems<IMChatItem *>.count:%@, imChatItems<IMChatItem *>.count:%@, self.chatItems<CKChatItem *>.count:%@", buf, 0x20u);
    }
  }

LABEL_16:
  array = [MEMORY[0x1E695DF70] array];
  if ([(__CFString *)insertedCopy count])
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = insertedCopy;
        _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "\tinserted: %@", buf, 0xCu);
      }
    }

    [array addObject:insertedCopy];
  }

  if ([(__CFString *)removedCopy count])
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = removedCopy;
        _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "\tremoved: %@", buf, 0xCu);
      }
    }

    [array addObject:removedCopy];
  }

  if ([(__CFString *)reloadCopy count])
  {
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = reloadCopy;
        _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "\treload: %@", buf, 0xCu);
      }
    }

    [array addObject:reloadCopy];
  }

  if ([(__CFString *)regenerateCopy count])
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = regenerateCopy;
        _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "\tregenerate: %@", buf, 0xCu);
      }
    }

    [array addObject:regenerateCopy];
  }

  v42 = [(CKTranscriptCollectionViewController *)self _itemGUIDsForItems:reloadCopy inIMChatItem:itemsCopy];
  imChatItems3 = [(CKTranscriptCollectionViewController *)self imChatItems];
  v44 = [imChatItems3 count];
  v45 = v44 == [itemsCopy count];

  if (!v45)
  {
    v46 = IMLogHandleForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController _updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }
  }

  itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
  self->_itemIndexPathToHighlight = 0;

  if ([(CKTranscriptCollectionViewController *)self sizedFullTranscript])
  {
    view = [(CKTranscriptCollectionViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    if ([windowScene activationState])
    {
      v51 = CKIsRunningUnitTests() != 0;

      LOBYTE(animatedCopy) = v51 && animatedCopy;
    }

    else
    {
    }

    chatItems3 = [(CKTranscriptCollectionViewController *)self chatItems];
    v55 = [chatItems3 mutableCopy];

    if ([(__CFString *)insertedCopy count]|| [(__CFString *)removedCopy count])
    {
      v56 = 0;
    }

    else if ([(__CFString *)reloadCopy count])
    {
      v56 = 1;
    }

    else
    {
      v56 = [(__CFString *)regenerateCopy count]!= 0;
    }

    [(CKTranscriptCollectionViewController *)self setIsPerformingRegenerateOrReloadOnlyUpdate:v56];
    if (![(CKTranscriptCollectionViewController *)self isPerformingRegenerateOrReloadOnlyUpdate])
    {
      v57 = [(CKTranscriptCollectionViewController *)self _chatItemLogSummaryForChatItems:v55 withUpdates:array];
      v58 = -[CKTranscriptCollectionViewController _loggingRangeForUpdates:chatItemsCount:](self, "_loggingRangeForUpdates:chatItemsCount:", array, [v55 count]);
      v60 = v59;
      if (IMOSLoggingEnabled())
      {
        v61 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v100.location = v58;
          v100.length = v60;
          v62 = NSStringFromRange(v100);
          *buf = 138412290;
          v92 = v62;
          _os_log_impl(&dword_19020E000, v61, OS_LOG_TYPE_INFO, "↱ chatItems range before update:\n %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v55, "count")}];
          *buf = 138412546;
          v92 = v64;
          v93 = 2112;
          v94 = v57;
          _os_log_impl(&dword_19020E000, v63, OS_LOG_TYPE_INFO, "↱ %@ chatItems before update:\n %@", buf, 0x16u);
        }
      }
    }

    v65 = [(CKTranscriptCollectionViewController *)self _sanitizeInsertedIndices:insertedCopy inChatItems:v55 withIMChatItems:itemsCopy];

    v66 = IMLogHandleForCategory();
    v67 = os_signpost_id_generate(v66);
    v68 = v66;
    v69 = v68;
    if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19020E000, v69, OS_SIGNPOST_INTERVAL_BEGIN, v67, "handlePluginBreadcrumbingInChatItems_all", "", buf, 2u);
    }

    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __122__CKTranscriptCollectionViewController__updateTranscriptChatItems_inserted_removed_reload_regenerate_animated_completion___block_invoke;
    v79[3] = &unk_1E72F2948;
    v80 = v69;
    v81 = v55;
    v89 = v67;
    selfCopy = self;
    v83 = itemsCopy;
    v84 = regenerateCopy;
    v90 = animatedCopy;
    v85 = v42;
    v88 = completionCopy;
    v86 = reloadCopy;
    v87 = array;
    v70 = v55;
    v71 = v69;
    [(CKTranscriptCollectionViewController *)self _handlePluginBreadcrumbingInChatItems:v70 withIMChatItems:v83 inserted:v65 removed:removedCopy completion:v79];

    insertedCopy = v65;
  }

  else if (IMOSLoggingEnabled())
  {
    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138412290;
      v92 = callStackSymbols;
      _os_log_impl(&dword_19020E000, v52, OS_LOG_TYPE_INFO, "Chat items changed before full transcript was sized\n %@", buf, 0xCu);
    }
  }
}

void __122__CKTranscriptCollectionViewController__updateTranscriptChatItems_inserted_removed_reload_regenerate_animated_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v52 = a4;
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 104);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "handlePluginBreadcrumbingInChatItems_completionHandler", "", buf, 2u);
  }

  v51 = [*(a1 + 40) copy];
  [*(a1 + 48) _removeChatItemsFrom:*(a1 + 40) removed:v52];
  v12 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v61 = 0;
  v62 = v7;
  v15 = [v12 _insertChatItemsInto:v13 withIMChatItems:v14 inserted:v8 insertedUnreadMessage:&v62 insertedLocalUnsentChatItem:&v61];
  v16 = v62;

  v17 = v61;
  v60 = 0;
  [*(a1 + 48) _regenerateChatItemsIn:*(a1 + 40) withIMChatItems:*(a1 + 56) regenerate:*(a1 + 64) shouldShowBlackholeAlert:&v60];
  [*(a1 + 48) _updateAudioControllerForInserted:v8 chatItems:*(a1 + 40)];
  [*(a1 + 48) _prewarmLinkPresentationsWithChatItems:v15];
  [*(a1 + 48) _addChatItemsToInputContextHistory:v15 signalingResponseContextChangeIfNeeded:1];
  [*(a1 + 48) _addChatItemsToGenerativeContextHistory:v15];
  v18 = [*(a1 + 48) _computeDesiredScrollIntentForInsertedChatItems:v15 insertedUnreadChatItem:v16 insertedLocalUnsentChatItem:v17];
  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 transcriptScrollToBottomDuration];
  v21 = v20;

  v59 = v21;
  if (*(a1 + 112))
  {
    [*(a1 + 48) _updateTranscriptChatItemsWithAnimation:*(a1 + 40) withIMChatItems:*(a1 + 56) oldChatItems:v51 insertedChatItems:v15 inserted:v8 removed:v52 reload:*(a1 + 80) reloadItemGUIDs:*(a1 + 72) desiredScrollIntent:v18 scrollToBottomDuration:&v59 animationCurve:0 completion:*(a1 + 96)];
  }

  else
  {
    v22 = [MEMORY[0x1E69A8070] sharedInstance];
    v23 = [v22 isDiffableTranscriptDataSourceEnabled];

    v25 = *(a1 + 40);
    v24 = *(a1 + 48);
    if (v23)
    {
      [v24 _updateSnapshotWithoutAnimation:v25 reloadingItemGUIDs:*(a1 + 72) completion:*(a1 + 96)];
    }

    else
    {
      [v24 _updateTranscriptChatItemsWithoutAnimation:v25];
    }
  }

  if (v18 == 6)
  {
    v31 = *(a1 + 48);
    v32 = *(a1 + 112);
    v33 = v59;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __122__CKTranscriptCollectionViewController__updateTranscriptChatItems_inserted_removed_reload_regenerate_animated_completion___block_invoke_2;
    v53[3] = &unk_1E72EB880;
    v53[4] = v31;
    v54 = v16;
    v55 = v17;
    [v31 scrollToBottomAnimated:v32 withDuration:0 animationCurve:v54 insertedUnreadMessage:v55 insertedLocalUnsentChatItem:v53 withCompletion:v33];
    v29 = &v54;
    v30 = &v55;
  }

  else
  {
    if (v18)
    {
      goto LABEL_14;
    }

    v26 = *(a1 + 48);
    v27 = *(a1 + 112);
    v28 = v59;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __122__CKTranscriptCollectionViewController__updateTranscriptChatItems_inserted_removed_reload_regenerate_animated_completion___block_invoke_1049;
    v56[3] = &unk_1E72EB880;
    v56[4] = v26;
    v57 = v16;
    v58 = v17;
    [v26 scrollToCurrentTimeAnimated:v27 withDuration:0 animationCurve:v56 withCompletion:v28];
    v29 = &v57;
    v30 = &v58;
  }

LABEL_14:
  if (v60 == 1)
  {
    [*(a1 + 48) repromptLastBlackholeFailureIfNotPrompted];
  }

  [*(a1 + 48) setPoppedBalloonGUIDHiddenUntilNextChatItemUpdate:0];
  if (([*(a1 + 48) isPerformingRegenerateOrReloadOnlyUpdate] & 1) == 0)
  {
    v34 = [*(a1 + 48) _chatItemLogSummaryForChatItems:*(a1 + 40) withUpdates:*(a1 + 88)];
    v35 = [*(a1 + 48) _loggingRangeForUpdates:*(a1 + 88) chatItemsCount:{objc_msgSend(*(a1 + 40), "count")}];
    v37 = v36;
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v68.location = v35;
        v68.length = v37;
        v39 = NSStringFromRange(v68);
        *buf = 138412290;
        v64 = v39;
        _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "↳ chatItems range after update:\n %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
        *buf = 138412546;
        v64 = v41;
        v65 = 2112;
        v66 = v34;
        _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "↳ %@ chatItems after update:\n %@", buf, 0x16u);
      }
    }
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    v42 = [MEMORY[0x1E69A8070] sharedInstance];
    v43 = [v42 isDiffableTranscriptDataSourceEnabled];

    if ((v43 & 1) == 0)
    {
      v44 = *(a1 + 96);
      if (v44)
      {
        (*(v44 + 16))();
      }
    }
  }

  v45 = *(a1 + 32);
  v46 = v45;
  v47 = *(a1 + 104);
  if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v46, OS_SIGNPOST_INTERVAL_END, v47, "handlePluginBreadcrumbingInChatItems_completionHandler", "", buf, 2u);
  }

  v48 = *(a1 + 32);
  v49 = v48;
  v50 = *(a1 + 104);
  if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v49, OS_SIGNPOST_INTERVAL_END, v50, "handlePluginBreadcrumbingInChatItems_all", "", buf, 2u);
  }
}

- (void)_updateTranscriptChatItemsWithAnimation:(id)animation withIMChatItems:(id)items oldChatItems:(id)chatItems insertedChatItems:(id)insertedChatItems inserted:(id)inserted removed:(id)removed reload:(id)reload reloadItemGUIDs:(id)self0 desiredScrollIntent:(int64_t)self1 scrollToBottomDuration:(double *)self2 animationCurve:(int64_t)self3 completion:(id)self4
{
  v76 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  itemsCopy = items;
  chatItemsCopy = chatItems;
  insertedChatItemsCopy = insertedChatItems;
  insertedCopy = inserted;
  removedCopy = removed;
  reloadCopy = reload;
  dsCopy = ds;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: _updateTranscriptChatItemsWithAnimation", buf, 0xCu);
    }
  }

  dispatch_group_enter(updateAnimationGroup);
  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(animationCopy, "count")}];
      *buf = 138412290;
      selfCopy4 = v28;
      _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Preparing to animate transcript updates, chatItems (count): %@", buf, 0xCu);
    }
  }

  chat = [(CKTranscriptCollectionViewController *)self chat];
  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [chat beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A5780]];
  [collectionViewLayout setHoldingBoundsInvalidation:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __236__CKTranscriptCollectionViewController__updateTranscriptChatItemsWithAnimation_withIMChatItems_oldChatItems_insertedChatItems_inserted_removed_reload_reloadItemGUIDs_desiredScrollIntent_scrollToBottomDuration_animationCurve_completion___block_invoke;
  block[3] = &unk_1E72F1580;
  v31 = animationCopy;
  v69 = v31;
  v55 = collectionViewLayout;
  v70 = v55;
  v54 = chat;
  v71 = v54;
  selfCopy2 = self;
  v52 = insertedChatItemsCopy;
  v73 = v52;
  v32 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(updateAnimationGroup, MEMORY[0x1E69E96A0], block);

  [(CKTranscriptCollectionViewController *)self _animateChatItemRemoval:chatItemsCopy removed:removedCopy];
  [(CKTranscriptCollectionViewController *)self _identifyIndicesNeedingCustomAnimationsForIMChatItems:itemsCopy inserted:insertedCopy removed:removedCopy];
  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: collectionViewUpdateCompletion", buf, 0xCu);
    }
  }

  dispatch_group_enter(updateAnimationGroup);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __236__CKTranscriptCollectionViewController__updateTranscriptChatItemsWithAnimation_withIMChatItems_oldChatItems_insertedChatItems_inserted_removed_reload_reloadItemGUIDs_desiredScrollIntent_scrollToBottomDuration_animationCurve_completion___block_invoke_1052;
  aBlock[3] = &unk_1E72EDA68;
  aBlock[4] = self;
  v34 = updateAnimationGroup;
  v66 = v34;
  v53 = completionCopy;
  v67 = v53;
  v35 = _Block_copy(aBlock);
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isDiffableTranscriptDataSourceEnabled = [mEMORY[0x1E69A8070] isDiffableTranscriptDataSourceEnabled];

  if (isDiffableTranscriptDataSourceEnabled)
  {
    v63 = 0;
    v64 = 0;
    [(CKTranscriptCollectionViewController *)self _updateCollectionViewSnapshotForChatItems:v31 reloadingItemGUIDs:dsCopy animatingDifferences:1 associatedInserted:&v64 associatedRemoved:&v63 completion:v35];
    v38 = &v63;
    v39 = &v64;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    [(CKTranscriptCollectionViewController *)self _updateCollectionViewForChatItems:v31 oldChatItems:chatItemsCopy inserted:insertedCopy removed:removedCopy associatedInserted:&v62 associatedRemoved:&v61 animationDuration:*duration animationCurve:curve completion:v35];
    v38 = &v61;
    v39 = &v62;
  }

  v40 = *v39;
  v41 = *v38;
  [(CKTranscriptCollectionViewController *)self _animateChatItemReload:v31 reload:reloadCopy associatedInserted:v40 animationDuration:curve animationCurve:*duration];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __236__CKTranscriptCollectionViewController__updateTranscriptChatItemsWithAnimation_withIMChatItems_oldChatItems_insertedChatItems_inserted_removed_reload_reloadItemGUIDs_desiredScrollIntent_scrollToBottomDuration_animationCurve_completion___block_invoke_1053;
  v60[3] = &unk_1E72EBA18;
  v60[4] = self;
  v42 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(v34, MEMORY[0x1E69E96A0], v60);

  v44 = intent == 6 || intent == 0;
  [(CKTranscriptCollectionViewController *)self _animateChatItemInsertion:v31 inserted:insertedCopy wantsScrollToBottom:v44 scrollToBottomDuration:duration];
  [(CKTranscriptCollectionViewController *)self _animateAssociatedChatItemWithIndices:v40];
  [(CKTranscriptCollectionViewController *)self reconfigureVisibleSpeakerButtonCells];
  if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: _updateTranscriptChatItemsWithAnimation", buf, 0xCu);
    }
  }

  dispatch_group_leave(v34);
  if ([insertedCopy count] || objc_msgSend(v40, "count") || objc_msgSend(reloadCopy, "count"))
  {
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v47 = objc_opt_respondsToSelector();

    if (v47)
    {
      delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate2 transcriptCollectionViewController:self didInsertChatItems:insertedCopy associatedChatItems:v40];
    }
  }

  if ([removedCopy count] || objc_msgSend(v41, "count") || objc_msgSend(reloadCopy, "count"))
  {
    delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
    v50 = objc_opt_respondsToSelector();

    if (v50)
    {
      delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate4 transcriptCollectionViewController:self didRemoveChatItems:removedCopy associatedChatItems:v41];
    }
  }
}

uint64_t __236__CKTranscriptCollectionViewController__updateTranscriptChatItemsWithAnimation_withIMChatItems_oldChatItems_insertedChatItems_inserted_removed_reload_reloadItemGUIDs_desiredScrollIntent_scrollToBottomDuration_animationCurve_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Completed animating transcript updates, performing clean up. chatItems (count): %@", &v9, 0xCu);
    }
  }

  v4 = *(a1 + 40);
  v5 = objc_opt_new();
  [v4 setIndicesOfChatItemsToBeRemovedWithoutFading:v5];

  v6 = *(a1 + 40);
  v7 = objc_opt_new();
  [v6 setIndicesOfChatItemsToBeInsertedWithoutFading:v7];

  [*(a1 + 40) setHoldingBoundsInvalidation:0];
  [*(a1 + 48) endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A5780]];
  return [*(a1 + 56) _updatePluginPlaybackManagerForInsertedChatItems:*(a1 + 64)];
}

void __236__CKTranscriptCollectionViewController__updateTranscriptChatItemsWithAnimation_withIMChatItems_oldChatItems_insertedChatItems_inserted_removed_reload_reloadItemGUIDs_desiredScrollIntent_scrollToBottomDuration_animationCurve_completion___block_invoke_1052(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: collectionViewUpdateCompletion", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = [*(a1 + 32) delegate];
  [v5 transcriptCollectionViewControllerPerformBatchUpdateCompleted:*(a1 + 32)];
}

- (void)_updateSnapshotWithoutAnimation:(id)animation reloadingItemGUIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__CKTranscriptCollectionViewController__updateSnapshotWithoutAnimation_reloadingItemGUIDs_completion___block_invoke;
  v10[3] = &unk_1E72ED1C8;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(CKTranscriptCollectionViewController *)self _updateCollectionViewSnapshotForChatItems:animation reloadingItemGUIDs:ds animatingDifferences:0 associatedInserted:0 associatedRemoved:0 completion:v10];
}

uint64_t __102__CKTranscriptCollectionViewController__updateSnapshotWithoutAnimation_reloadingItemGUIDs_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reconfigureVisibleSpeakerButtonCells];
  [*(a1 + 32) setIsPerformingRegenerateOrReloadOnlyUpdate:0];
  v2 = [*(a1 + 32) delegate];
  [v2 transcriptCollectionViewControllerPerformBatchUpdateCompleted:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_updateTranscriptChatItemsWithoutAnimation:(id)animation
{
  animationCopy = animation;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isDiffableTranscriptDataSourceEnabled = [mEMORY[0x1E69A8070] isDiffableTranscriptDataSourceEnabled];

  if (isDiffableTranscriptDataSourceEnabled)
  {
    [(CKTranscriptCollectionViewController *)self _updateSnapshotWithoutAnimation:animationCopy reloadingItemGUIDs:MEMORY[0x1E695E0F0] completion:0];
  }

  else
  {
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070]2 isConsolidatedChatItemsEnabled];

    if (isConsolidatedChatItemsEnabled)
    {
      chatItemController = [(CKTranscriptCollectionViewController *)self chatItemController];
      [chatItemController setChatItemsUsingReloadDataWithoutAnimation:animationCopy];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:animationCopy removedAssociatedIndexes:0 insertedAssociatedIndexes:0];
      [(CKTranscriptCollectionViewController *)self reloadData];
    }

    [(CKTranscriptCollectionViewController *)self setIsPerformingRegenerateOrReloadOnlyUpdate:0];
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate transcriptCollectionViewControllerPerformBatchUpdateCompleted:self];
  }
}

- (id)_itemGUIDsForItems:(id)items inIMChatItem:(id)item
{
  itemsCopy = items;
  itemCopy = item;
  if ([itemsCopy count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __72__CKTranscriptCollectionViewController__itemGUIDsForItems_inIMChatItem___block_invoke;
    v14 = &unk_1E72EF010;
    v15 = itemCopy;
    v16 = v7;
    v8 = v7;
    [itemsCopy enumerateIndexesUsingBlock:&v11];
    array = [v8 copy];
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

void __72__CKTranscriptCollectionViewController__itemGUIDsForItems_inIMChatItem___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) count];
  if (a2 == 0x7FFFFFFFFFFFFFFFLL || v5 <= a2)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __72__CKTranscriptCollectionViewController__itemGUIDsForItems_inIMChatItem___block_invoke_cold_1(v4);
    }
  }

  else
  {
    v6 = [*v4 objectAtIndexedSubscript:a2];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [*(a1 + 32) objectAtIndexedSubscript:a2];
      v8 = [v10 guid];
      [*(a1 + 40) addObject:v8];
    }
  }
}

- (void)_removeChatItemsFrom:(id)from removed:(id)removed
{
  v13 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  removedCopy = removed;
  if ([removedCopy count])
  {
    [fromCopy removeObjectsAtIndexes:removedCopy];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(fromCopy, "count")}];
        v9 = 138412546;
        v10 = removedCopy;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Removed chatItems at indices: %@, chatItems (count): %@", &v9, 0x16u);
      }
    }
  }
}

- (id)_insertChatItemsInto:(id)into withIMChatItems:(id)items inserted:(id)inserted insertedUnreadMessage:(id *)message insertedLocalUnsentChatItem:(id *)item
{
  v55 = *MEMORY[0x1E69E9840];
  intoCopy = into;
  itemsCopy = items;
  insertedCopy = inserted;
  if ([insertedCopy count])
  {
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v16 = [delegate traitCollectionForTranscriptCollectionViewController:self];

    [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
    v18 = v17;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__33;
    v49 = __Block_byref_object_dispose__33;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__33;
    v43 = __Block_byref_object_dispose__33;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__33;
    v37 = __Block_byref_object_dispose__33;
    array = [MEMORY[0x1E695DF70] array];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __136__CKTranscriptCollectionViewController__insertChatItemsInto_withIMChatItems_inserted_insertedUnreadMessage_insertedLocalUnsentChatItem___block_invoke;
    v26[3] = &unk_1E72F2970;
    v26[4] = self;
    v19 = v16;
    v27 = v19;
    v32 = v18;
    v20 = intoCopy;
    v28 = v20;
    v29 = &v33;
    v30 = &v45;
    v31 = &v39;
    [itemsCopy enumerateObjectsAtIndexes:insertedCopy options:0 usingBlock:v26];
    v21 = +[CKChatItemSizeCache sharedInstance];
    [v21 invalidateCachedSizeForChatItems:v34[5] reason:@"transcript_insert"];

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
        *buf = 138412546;
        v52 = insertedCopy;
        v53 = 2112;
        v54 = v23;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Inserted chatItems at indices: %@, chatItems (count): %@", buf, 0x16u);
      }
    }

    *message = v46[5];
    *item = v40[5];
    v24 = [v34[5] copy];

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v39, 8);

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  return v24;
}

void __136__CKTranscriptCollectionViewController__insertChatItemsInto_withIMChatItems_inserted_insertedUnreadMessage_insertedLocalUnsentChatItem___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [*(a1 + 32) newChatItemWithIMChatItem:v30 traitCollection:*(a1 + 40) transcriptBackgroundLuminance:*(a1 + 80)];
    [*(a1 + 48) insertObject:v5 atIndex:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v30;
      v7 = [v6 message];
      v8 = [v6 messageItem];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
      if (!*(*(*(a1 + 64) + 8) + 40) && ([v7 isFromMe] & 1) == 0 && (objc_msgSend(v7, "isRead") & 1) == 0 && (objc_msgSend(v7, "isTypingMessage") & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
        }
      }

      if ([v8 unsentIsFromMeItem])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(*(a1 + 72) + 8) + 40), v5);
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v30;
      if ([v9 offerState] != 2)
      {
        v10 = [MEMORY[0x1E69A5B70] sharedInstance];
        v11 = [v9 sender];
        v12 = [v10 findMyLocationForHandle:v11];

        v13 = [v12 fmfLocation];
        v14 = v13;
        if (!v13 || ([v13 location], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, objc_msgSend(MEMORY[0x1E695DF00], "date"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "timestamp"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "timeIntervalSinceDate:", v18), v20 = v19, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "locationValidInterval"), v23 = v22, v21, v18, v17, v16, v20 > v23))
        {
          v24 = [MEMORY[0x1E69DC668] sharedApplication];
          v25 = [v24 applicationState];

          if (!v25)
          {
            v26 = [MEMORY[0x1E69A5B70] sharedInstance];
            v27 = [v9 sender];
            v28 = [*(a1 + 32) conversation];
            v29 = [v28 chat];
            [v26 refreshLocationForHandle:v27 inChat:v29];
          }
        }
      }
    }
  }
}

- (void)_regenerateChatItemsIn:(id)in withIMChatItems:(id)items regenerate:(id)regenerate shouldShowBlackholeAlert:(BOOL *)alert
{
  v42 = *MEMORY[0x1E69E9840];
  inCopy = in;
  itemsCopy = items;
  regenerateCopy = regenerate;
  if ([regenerateCopy count])
  {
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v14 = [delegate traitCollectionForTranscriptCollectionViewController:self];

    [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
    v16 = v15;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v17 = objc_opt_new();
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __115__CKTranscriptCollectionViewController__regenerateChatItemsIn_withIMChatItems_regenerate_shouldShowBlackholeAlert___block_invoke;
    v27 = &unk_1E72F2998;
    selfCopy = self;
    v18 = v14;
    v29 = v18;
    v33 = v16;
    v19 = v17;
    v30 = v19;
    v20 = inCopy;
    v31 = v20;
    v32 = &v34;
    [itemsCopy enumerateObjectsAtIndexes:regenerateCopy options:0 usingBlock:&v24];
    v21 = [CKChatItemSizeCache sharedInstance:v24];
    [v21 invalidateCachedSizeForChatItems:v19 reason:@"transcript_regenerate"];

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
        *buf = 138412546;
        v39 = regenerateCopy;
        v40 = 2112;
        v41 = v23;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Regenerated chatItems at indices: %@, chatItems (count): %@", buf, 0x16u);
      }
    }

    *alert = *(v35 + 24);

    _Block_object_dispose(&v34, 8);
  }
}

void __115__CKTranscriptCollectionViewController__regenerateChatItemsIn_withIMChatItems_regenerate_shouldShowBlackholeAlert___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v8;
  if (isKindOfClass)
  {
    v7 = [*(a1 + 32) newChatItemWithIMChatItem:v8 traitCollection:*(a1 + 40) transcriptBackgroundLuminance:*(a1 + 72)];
    [*(a1 + 48) addObject:v7];
    [*(a1 + 56) replaceObjectAtIndex:a3 withObject:v7];
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) shouldPresentHawkingPromptForChatItem:v8];
    }

    v6 = v8;
  }
}

- (void)_updateAudioControllerForInserted:(id)inserted chatItems:(id)items
{
  insertedCopy = inserted;
  itemsCopy = items;
  v7 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  audioController = [v7 audioController];

  if (audioController)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__CKTranscriptCollectionViewController__updateAudioControllerForInserted_chatItems___block_invoke;
    v9[3] = &unk_1E72EF010;
    v10 = itemsCopy;
    v11 = audioController;
    [insertedCopy enumerateIndexesUsingBlock:v9];
  }
}

void __84__CKTranscriptCollectionViewController__updateAudioControllerForInserted_chatItems___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = [*(a1 + 32) objectAtIndex:a2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v10;
  if (isKindOfClass)
  {
    v5 = v10;
    v6 = [v5 mediaObject];
    v7 = [v6 shouldSuppressPreview];

    if ((v7 & 1) == 0 && ([v5 isFromMe] & 1) == 0 && (objc_msgSend(v5, "isPlayed") & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [v5 mediaObject];
      [v8 addMediaObject:v9];
    }

    v4 = v10;
  }
}

- (void)_updateCollectionViewSnapshotForChatItems:(id)items reloadingItemGUIDs:(id)ds animatingDifferences:(BOOL)differences associatedInserted:(id *)inserted associatedRemoved:(id *)removed completion:(id)completion
{
  differencesCopy = differences;
  v51 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dsCopy = ds;
  completionCopy = completion;
  updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  dataSource = [(CKTranscriptCollectionViewController *)self dataSource];
  [collectionView beginDisablingTranscriptDynamicsForReason:1];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(ds) = [mEMORY[0x1E69A8070] isConsolidatedChatItemsEnabled];

  if (ds)
  {
    chatItemController = [(CKTranscriptCollectionViewController *)self chatItemController];
    v17 = [chatItemController setChatItems:itemsCopy completion:0];

    inserted = [v17 inserted];
    removed = [v17 removed];
  }

  else
  {
    v47 = 0;
    v48 = 0;
    [(CKTranscriptCollectionViewController *)self setChatItems:itemsCopy removedAssociatedIndexes:&v48 insertedAssociatedIndexes:&v47];
    removed = v48;
    inserted = v47;
  }

  v20 = [(CKTranscriptCollectionViewController *)self generateSnapshotForCKChatItems:itemsCopy];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: will call applySnapshot", buf, 0xCu);
    }
  }

  dispatch_group_enter(updateAnimationGroup);
  [collectionViewLayout reloadData];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __170__CKTranscriptCollectionViewController__updateCollectionViewSnapshotForChatItems_reloadingItemGUIDs_animatingDifferences_associatedInserted_associatedRemoved_completion___block_invoke;
  v37[3] = &unk_1E72F29C0;
  v22 = collectionView;
  v38 = v22;
  v23 = collectionViewLayout;
  v39 = v23;
  selfCopy2 = self;
  v24 = updateAnimationGroup;
  v41 = v24;
  v25 = completionCopy;
  v45 = v25;
  v26 = dsCopy;
  v42 = v26;
  v27 = v20;
  v43 = v27;
  v28 = dataSource;
  v44 = v28;
  v46 = differencesCopy;
  [v28 applySnapshot:v27 animatingDifferences:differencesCopy completion:v37];
  if (inserted)
  {
    v29 = inserted;
    *inserted = inserted;
  }

  if (removed)
  {
    v30 = removed;
    *removed = removed;
  }
}

void __170__CKTranscriptCollectionViewController__updateCollectionViewSnapshotForChatItems_reloadingItemGUIDs_animatingDifferences_associatedInserted_associatedRemoved_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __170__CKTranscriptCollectionViewController__updateCollectionViewSnapshotForChatItems_reloadingItemGUIDs_animatingDifferences_associatedInserted_associatedRemoved_completion___block_invoke_2;
  aBlock[3] = &unk_1E72EDAE0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = *(a1 + 48);
  v4 = *(&v10 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v15 = v10;
  v14 = v5;
  v16 = *(a1 + 88);
  v6 = _Block_copy(aBlock);
  if ([*(a1 + 64) count] && objc_msgSend(*(a1 + 48), "isPerformingRegenerateOrReloadOnlyUpdate"))
  {
    [*(a1 + 72) reloadItemsWithIdentifiers:*(a1 + 64)];
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    v9 = *(a1 + 96);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __170__CKTranscriptCollectionViewController__updateCollectionViewSnapshotForChatItems_reloadingItemGUIDs_animatingDifferences_associatedInserted_associatedRemoved_completion___block_invoke_1068;
    v11[3] = &unk_1E72EBDB8;
    v12 = v6;
    [v7 applySnapshot:v8 animatingDifferences:v9 completion:v11];
  }

  else
  {
    v6[2](v6);
  }
}

uint64_t __170__CKTranscriptCollectionViewController__updateCollectionViewSnapshotForChatItems_reloadingItemGUIDs_animatingDifferences_associatedInserted_associatedRemoved_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) endDisablingTranscriptDynamicsForReason:1];
  [*(a1 + 40) clearParentInitialIndexesAndFinalOffsets];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: will call applySnapshot", &v5, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 56));
  return (*(*(a1 + 64) + 16))();
}

- (void)_updateCollectionViewForChatItems:(id)items oldChatItems:(id)chatItems inserted:(id)inserted removed:(id)removed associatedInserted:(id *)associatedInserted associatedRemoved:(id *)associatedRemoved animationDuration:(double)duration animationCurve:(int64_t)self0 completion:(id)self1
{
  v78 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  chatItemsCopy = chatItems;
  insertedCopy = inserted;
  removedCopy = removed;
  completionCopy = completion;
  group = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView beginDisablingTranscriptDynamicsForReason:0];
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__33;
  v74 = __Block_byref_object_dispose__33;
  v75 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__33;
  v68 = __Block_byref_object_dispose__33;
  v69 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__33;
  v62[4] = __Block_byref_object_dispose__33;
  v63 = 0;
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  objc_initWeak(&location, collectionView);
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: will call performBatchUpdates", buf, 0xCu);
    }
  }

  dispatch_group_enter(group);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke;
  v48[3] = &unk_1E72F2A88;
  v48[4] = self;
  v31 = itemsCopy;
  v49 = v31;
  v57 = &v70;
  v58 = &v64;
  v59 = v62;
  v33 = insertedCopy;
  v50 = v33;
  v32 = chatItemsCopy;
  v51 = v32;
  objc_copyWeak(&v60, &location);
  v24 = removedCopy;
  v52 = v24;
  v53 = collectionViewLayout;
  v54 = v21;
  v55 = v22;
  v56 = collectionView;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_8;
  v39[3] = &unk_1E72F2AB0;
  v45 = v62;
  v39[4] = self;
  v25 = v56;
  v40 = v25;
  durationCopy = duration;
  curveCopy = curve;
  v26 = v53;
  v41 = v26;
  v27 = v54;
  v42 = v27;
  v28 = v55;
  v43 = v28;
  v29 = completionCopy;
  v44 = v29;
  [v25 performBatchUpdates:v48 completion:v39];

  objc_destroyWeak(&v60);
  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: will call performBatchUpdates", buf, 0xCu);
    }
  }

  dispatch_group_leave(group);
  *associatedInserted = v71[5];
  *associatedRemoved = v65[5];
  objc_destroyWeak(&location);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
}

void __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) associatedChatItems];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isConsolidatedChatItemsEnabled];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 chatItemController];
    v7 = [v6 setChatItems:*(a1 + 40) completion:0];

    v8 = [v7 inserted];
    v9 = *(*(a1 + 104) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v7 removed];
    v12 = *(*(a1 + 112) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = [v7 parentItemsToReload];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_2;
    v72[3] = &unk_1E72EF010;
    v72[4] = *(a1 + 32);
    v73 = v14;
    v16 = v14;
    [v15 enumerateIndexesUsingBlock:v72];

    v17 = [v16 copy];
    v18 = *(*(a1 + 120) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  else
  {
    v20 = *(a1 + 40);
    v21 = *(*(a1 + 112) + 8);
    v22 = *(v21 + 40);
    v23 = *(*(a1 + 104) + 8);
    v70 = *(v23 + 40);
    v71 = v22;
    [v5 setChatItems:v20 removedAssociatedIndexes:&v71 insertedAssociatedIndexes:&v70];
    objc_storeStrong((v21 + 40), v71);
    v24 = v70;
    v7 = *(v23 + 40);
    *(v23 + 40) = v24;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = *(*(*(a1 + 112) + 8) + 40);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_3;
  v63[3] = &unk_1E72F29E8;
  v27 = v2;
  v64 = v27;
  v65 = *(a1 + 40);
  v66 = *(a1 + 48);
  v67 = *(a1 + 56);
  objc_copyWeak(&v69, (a1 + 128));
  v28 = v25;
  v68 = v28;
  [v26 enumerateIndexesUsingBlock:v63];
  v29 = [*(a1 + 32) associatedChatItems];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_4;
  aBlock[3] = &unk_1E72F2A10;
  v30 = v29;
  v58 = v30;
  v31 = v27;
  v59 = v31;
  v60 = *(a1 + 56);
  v61 = *(a1 + 64);
  v62 = *(a1 + 72);
  v32 = _Block_copy(aBlock);
  v33 = *(*(*(a1 + 104) + 8) + 40);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_5;
  v54[3] = &unk_1E72F2A38;
  v34 = v32;
  v56 = v34;
  v55 = *(a1 + 80);
  [v33 enumerateIndexesUsingBlock:v54];
  v35 = *(*(*(a1 + 112) + 8) + 40);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_6;
  v51[3] = &unk_1E72F2A38;
  v36 = v34;
  v53 = v36;
  v52 = *(a1 + 88);
  [v35 enumerateIndexesUsingBlock:v51];
  v37 = *(a1 + 96);
  v38 = [*(a1 + 48) __ck_indexPathItemsInSection:0];
  [v37 insertItemsAtIndexPaths:v38];

  v39 = *(a1 + 96);
  v40 = [*(a1 + 64) __ck_indexPathItemsInSection:0];
  [v39 deleteItemsAtIndexPaths:v40];

  v41 = *(a1 + 96);
  v42 = [*(*(*(a1 + 104) + 8) + 40) __ck_indexPathItemsInSection:1];
  [v41 insertItemsAtIndexPaths:v42];

  v43 = *(a1 + 96);
  v44 = [*(*(*(a1 + 112) + 8) + 40) __ck_indexPathItemsInSection:1];
  [v43 deleteItemsAtIndexPaths:v44];

  [*(a1 + 96) reloadData];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_7;
  v46[3] = &unk_1E72F2A60;
  v45 = v31;
  v47 = v45;
  v48 = *(a1 + 40);
  objc_copyWeak(&v50, (a1 + 128));
  v49 = *(a1 + 72);
  [v28 enumerateKeysAndObjectsUsingBlock:v46];

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v69);
}

void __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) chatItems];
  v7 = [v4 objectAtIndexedSubscript:a2];

  v5 = [v7 IMChatItem];
  v6 = [v5 guid];

  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v22 = [*(a1 + 32) objectAtIndex:a2];
  v4 = *(a1 + 40);
  v5 = [v22 associatedChatItemGUID];
  v6 = [v22 associatedMessageRange];
  v8 = [v4 ck_indexOfChatItemContainingIMChatItemGUID:v5 associatedMessageRange:{v6, v7}];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL && ([*(a1 + 48) containsIndex:v8] & 1) == 0)
  {
    v9 = *(a1 + 56);
    v10 = [v22 associatedChatItemGUID];
    v11 = [v22 associatedMessageRange];
    v13 = [v9 ck_indexOfChatItemContainingIMChatItemGUID:v10 associatedMessageRange:{v11, v12}];

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v15 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:0];
    v16 = [WeakRetained cellForItemAtIndexPath:v15];

    if (v16)
    {
      v17 = *(a1 + 64);
      v18 = MEMORY[0x1E696AD98];
      [v16 frame];
      v20 = [v18 numberWithDouble:v19];
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      [v17 setObject:v20 forKey:v21];
    }
  }
}

void __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v22 = a3;
  v7 = 40;
  if (a4)
  {
    v7 = 32;
  }

  v8 = [*(a1 + v7) objectAtIndex:a2];
  v9 = *(a1 + 48);
  v10 = [v8 associatedChatItemGUID];
  v11 = [v8 associatedMessageRange];
  v13 = [v9 ck_indexOfChatItemContainingIMChatItemGUID:v10 associatedMessageRange:{v11, v12}];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL && ([*(a1 + 56) containsIndex:v13] & 1) == 0)
  {
    [*(a1 + 64) setInitialIndex:v13 forParentOfAssociatedItemInsertedAtIndex:a2];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
  }

  else
  {
    objc_opt_class();
    v14 = objc_opt_isKindOfClass() ^ 1;
  }

  v15 = [v8 isFromMe];
  if ((v14 & 1) == 0 && (v15 & 1) == 0)
  {
    if (a4)
    {
      v16 = [v8 guid];
      v17 = v16;
      if (!v16)
      {
LABEL_17:

        goto LABEL_18;
      }

      v18 = [v16 copy];
    }

    else
    {
      v19 = [v8 IMChatItem];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_18;
      }

      v17 = [v8 IMChatItem];
      v18 = [v17 associatedMessageGUID];
    }

    v21 = v18;
    [v22 addObject:v18];

    goto LABEL_17;
  }

LABEL_18:
}

void __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectAtIndex:{objc_msgSend(v18, "unsignedIntegerValue")}];
  v7 = *(a1 + 40);
  v8 = [v6 associatedChatItemGUID];
  v9 = [v6 associatedMessageRange];
  v11 = [v7 ck_indexOfChatItemContainingIMChatItemGUID:v8 associatedMessageRange:{v9, v10}];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v13 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
  v14 = [WeakRetained cellForItemAtIndexPath:v13];

  if (v14)
  {
    [v5 doubleValue];
    v16 = v15;
    [v14 frame];
    [*(a1 + 48) setVerticalOffset:objc_msgSend(v18 forParentOfAssociatedItemDeletedAtIndex:{"unsignedIntegerValue"), v16 - v17}];
  }
}

uint64_t __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_8(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v2 = *(*(*(a1 + 80) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v51;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v51 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v50 + 1) + 8 * i);
        v8 = [*(a1 + 32) chatItemForGUID:v7];
        if (v8)
        {
          v9 = [*(a1 + 32) indexPathForChatItemGUID:v7];
          if (v9)
          {
            v10 = [*(a1 + 40) cellForItemAtIndexPath:v9];
            if (v10)
            {
              [*(a1 + 32) configureCell:v10 forCKChatItem:v8 atIndexPath:v9 animated:0 animationDuration:*(a1 + 96) animationCurve:*(a1 + 88)];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v4);
  }

  v11 = [*(a1 + 32) collectionView];
  [v11 endDisablingTranscriptDynamicsForReason:0];

  [*(a1 + 48) clearParentInitialIndexesAndFinalOffsets];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = [*(a1 + 56) copy];
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v47;
    v16 = 0x1E69A5000uLL;
    obj = v12;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(a1 + 32) associatedChatItemForGUID:*(*(&v46 + 1) + 8 * j)];
        v19 = [v18 IMChatItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v21 = [v18 IMChatItem];
          v22 = [v21 _isRecentForTapbackBackgroundAnimationWithinTimeInterval:3.0];

          if (v22)
          {
            v23 = [*(a1 + 32) delegate];
            v24 = *(a1 + 32);
            v25 = [v18 associatedMessageGUID];
            [v24 chatItemForGUID:v25];
            v26 = v15;
            v28 = v27 = v16;
            [v23 transcriptCollectionViewControllerDidAddTapback:v24 tapbackChatItem:v28];

            v16 = v27;
            v15 = v26;

            v12 = obj;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v14);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obja = [*(a1 + 64) copy];
  v29 = [obja countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v43;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obja);
        }

        v33 = [*(a1 + 32) chatItemForGUID:*(*(&v42 + 1) + 8 * k)];
        v34 = [*(a1 + 32) delegate];
        v35 = *(a1 + 32);
        v36 = [v33 IMChatItem];
        v37 = [v36 guid];
        v38 = [v35 chatItemForGUID:v37];
        [v34 transcriptCollectionViewControllerDidRemoveTapback:v35 tapbackChatItem:v38];
      }

      v30 = [obja countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v30);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handlePluginBreadcrumbingInChatItems:(id)items withIMChatItems:(id)chatItems inserted:(id)inserted removed:(id)removed completion:(id)completion
{
  itemsCopy = items;
  chatItemsCopy = chatItems;
  insertedCopy = inserted;
  removedCopy = removed;
  completionCopy = completion;
  v104 = 0;
  v105 = 0;
  v17 = [(CKTranscriptCollectionViewController *)self _indexOfBreadcrumbReplacingTranscriptPluginInChatItems:chatItemsCopy inserted:insertedCopy removed:removedCopy outIndexOfReplacedPlugin:&v105 outIndexOfNewPlugin:&v104];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL || v105 == 0x7FFFFFFFFFFFFFFFLL || v104 == 0x7FFFFFFFFFFFFFFFLL)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070] isConsolidatedChatItemsEnabled];

    if (isConsolidatedChatItemsEnabled)
    {
      chatItemController = [(CKTranscriptCollectionViewController *)self chatItemController];
      v44 = [chatItemController setChatItems:itemsCopy completion:0];

      if (!completionCopy)
      {
        goto LABEL_27;
      }
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:itemsCopy];
      if (!completionCopy)
      {
        goto LABEL_27;
      }
    }

    completionCopy[2](completionCopy, 0, insertedCopy, removedCopy);
    goto LABEL_27;
  }

  v18 = v17;
  v67 = completionCopy;
  v68 = removedCopy;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v70 = insertedCopy;
  CKSeparateInsertionsAndDeletions(removedCopy, insertedCopy, v105, v17, &v103, &v102, &v101, &v100);
  v72 = itemsCopy;
  v19 = v103;
  v20 = v102;
  v71 = v101;
  v21 = v100;
  [(CKTranscriptCollectionViewController *)self collectionView];
  v23 = v22 = chatItemsCopy;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v25 = [delegate traitCollectionForTranscriptCollectionViewController:self];

  [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
  v27 = v26;
  v28 = [MEMORY[0x1E696AC88] indexPathForItem:v105 inSection:0];
  v66 = v23;
  v29 = v23;
  chatItemsCopy = v22;
  v30 = [v29 cellForItemAtIndexPath:v28];

  v65 = v30;
  balloonView = [v30 balloonView];
  snapshot = [balloonView snapshot];
  v64 = balloonView;
  [balloonView frame];
  [snapshot setFrame:?];
  v63 = snapshot;
  [(CKTranscriptCollectionViewController *)self setSnapshotOfPluginBeingReplacedByBreadcrumb:snapshot];
  v33 = [v72 objectAtIndex:v105];
  [v72 removeObjectsAtIndexes:v19];
  v34 = [chatItemsCopy objectAtIndex:v18];
  objc_opt_class();
  v69 = v25;
  v62 = v34;
  if (objc_opt_isKindOfClass())
  {
    v55 = v19;
    v35 = [(CKTranscriptCollectionViewController *)self newChatItemWithIMChatItem:v34 traitCollection:v25 transcriptBackgroundLuminance:v27];
    [v35 setPreviousPluginChatItem:v33];
    v58 = v35;
    [v72 insertObject:v35 atIndex:{objc_msgSend(v20, "firstIndex")}];
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = v104;
    v36 = v21;
    v37 = [v21 countOfIndexesInRange:0];
    v97[3] -= v37;
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke;
    v95[3] = &unk_1E72F2AD8;
    v95[4] = &v96;
    [v71 enumerateIndexesUsingBlock:v95];
    v38 = v66;
    completionCopy = v67;
    removedCopy = v68;
    v39 = [v20 mutableCopy];
    [v39 addIndex:v97[3]];
    v57 = [v39 copy];
    v54 = v39;

    [chatItemsCopy objectAtIndex:v104];
    v53 = v40 = v55;
    message = [v53 message];
    v61 = [chatItemsCopy objectAtIndex:v104];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [(CKTranscriptCollectionViewController *)self newChatItemWithIMChatItem:v61 traitCollection:v69 transcriptBackgroundLuminance:v27];
      [v59 setIsAppearing:1];
      [v72 insertObject:v59 atIndex:v97[3]];
      if ([message isFromMe] & 1) != 0 || (objc_msgSend(message, "isRead"))
      {
        v56 = 0;
      }

      else
      {
        v56 = v59;
      }

      v46 = [v36 mutableCopy];
      [v46 removeIndex:v104];
      v51 = v46;
      v52 = [v71 mutableCopy];
      [v52 shiftIndexesStartingAtIndex:v97[3] by:1];
      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      LODWORD(v46) = [mEMORY[0x1E69A8070]2 isDiffableTranscriptDataSourceEnabled];

      if (v46)
      {
        v48 = [(CKTranscriptCollectionViewController *)self generateSnapshotForCKChatItems:v72];
        dataSource = [(CKTranscriptCollectionViewController *)self dataSource];
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_2;
        v85[3] = &unk_1E72F2B00;
        v86 = v58;
        selfCopy = self;
        v88 = v59;
        v89 = v66;
        v90 = v57;
        v94 = v67;
        v91 = v56;
        v92 = v51;
        v93 = v52;
        [dataSource applySnapshotUsingReloadData:v48 completion:v85];
      }

      else
      {
        v50 = MEMORY[0x1E69DD250];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_1074;
        v73[3] = &unk_1E72F2B50;
        v74 = v66;
        selfCopy2 = self;
        v76 = v72;
        v77 = v55;
        v78 = v57;
        v79 = v58;
        v80 = v59;
        v84 = v67;
        v81 = v56;
        v82 = v51;
        v83 = v52;
        [v50 performWithoutAnimation:v73];

        v48 = v74;
      }
    }

    else
    {
      if (v67)
      {
        v67[2](v67, 0, v70, v68);
      }

      v56 = 0;
    }

    _Block_object_dispose(&v96, 8);
    v45 = v56;
    v20 = v57;
  }

  else
  {
    v40 = v19;
    v36 = v21;
    completionCopy = v67;
    if (v67)
    {
      removedCopy = v68;
      v67[2](v67, 0, v70, v68);
      v45 = 0;
      v38 = v66;
    }

    else
    {
      v45 = 0;
      v38 = v66;
      removedCopy = v68;
    }
  }

  itemsCopy = v72;
  insertedCopy = v70;
LABEL_27:
}

uint64_t __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 > a2)
  {
    *(v2 + 24) = v3 + 1;
  }

  return result;
}

void __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPreviousPluginChatItem:0];
  [*(a1 + 40) setSnapshotOfPluginBeingReplacedByBreadcrumb:0];
  [*(a1 + 48) setIsAppearing:0];
  v2 = *(a1 + 56);
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(*(a1 + 64) inSection:{"firstIndex"), 0}];
  v4 = [v2 cellForItemAtIndexPath:v3];

  if (v4)
  {
    v5 = [*(a1 + 40) updateAnimationGroup];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 40);
        *buf = 134217984;
        v13 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in applySnapshotUsingReloadData – will call performInsertion:", buf, 0xCu);
      }
    }

    dispatch_group_enter(v5);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_1073;
    v10[3] = &unk_1E72ECCA8;
    v10[4] = *(a1 + 40);
    v11 = v5;
    v8 = v5;
    [v4 performInsertion:v10];
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  }
}

void __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_1073(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in applySnapshotUsingReloadData – will call performInsertion:", &v4, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_1074(uint64_t a1)
{
  v2 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_2_1075;
  v21[3] = &unk_1E72F1580;
  v10 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v10;
  *(&v7 + 1) = v3;
  v22 = v7;
  v23 = v6;
  v24 = *(a1 + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_3;
  v11[3] = &unk_1E72F2B28;
  v8 = *(a1 + 72);
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v14 = *(a1 + 80);
  v15 = *(a1 + 32);
  v16 = *(a1 + 64);
  v20 = *(a1 + 112);
  v17 = *(a1 + 88);
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  [v2 performBatchUpdates:v21 completion:v11];
}

void __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_2_1075(uint64_t a1)
{
  v2 = [*(a1 + 32) associatedChatItems];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isConsolidatedChatItemsEnabled];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 chatItemController];
    v7 = [v6 setChatItems:*(a1 + 40) completion:0];

    v8 = [v7 inserted];
    v9 = [v7 removed];
  }

  else
  {
    [v5 setChatItems:*(a1 + 40)];
    v10 = *(a1 + 32);
    v19 = 0;
    v20 = 0;
    [v10 _diffAssociatedItemsWithOldAssociatedItems:v2 removedAssociatedIndexes:&v20 insertedAssociatedIndexes:&v19];
    v9 = v20;
    v8 = v19;
  }

  v11 = *(a1 + 48);
  v12 = [v9 __ck_indexPathItemsInSection:1];
  [v11 deleteItemsAtIndexPaths:v12];

  v13 = *(a1 + 48);
  v14 = [v8 __ck_indexPathItemsInSection:1];
  [v13 insertItemsAtIndexPaths:v14];

  v15 = *(a1 + 48);
  v16 = [*(a1 + 56) __ck_indexPathItemsInSection:0];
  [v15 deleteItemsAtIndexPaths:v16];

  v17 = *(a1 + 48);
  v18 = [*(a1 + 64) __ck_indexPathItemsInSection:0];
  [v17 insertItemsAtIndexPaths:v18];

  [*(a1 + 48) reloadData];
}

void __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPreviousPluginChatItem:0];
  [*(a1 + 40) setSnapshotOfPluginBeingReplacedByBreadcrumb:0];
  [*(a1 + 48) setIsAppearing:0];
  v2 = *(a1 + 56);
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(*(a1 + 64) inSection:{"firstIndex"), 0}];
  v4 = [v2 cellForItemAtIndexPath:v3];

  if (v4)
  {
    v5 = [*(a1 + 40) updateAnimationGroup];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 40);
        *buf = 134217984;
        v13 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in _handlePluginBreadcrumbingInChatItems – will call performInsertion:", buf, 0xCu);
      }
    }

    dispatch_group_enter(v5);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_1076;
    v10[3] = &unk_1E72ECCA8;
    v10[4] = *(a1 + 40);
    v11 = v5;
    v8 = v5;
    [v4 performInsertion:v10];
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  }
}

void __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_1076(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in _handlePluginBreadcrumbingInChatItems – will call performInsertion:", &v4, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_animateChatItemRemoval:(id)removal removed:(id)removed
{
  v23 = *MEMORY[0x1E69E9840];
  removalCopy = removal;
  removedCopy = removed;
  if ([removedCopy count])
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(removalCopy, "count")}];
        *buf = 138412546;
        v20 = removedCopy;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "  Animating removal of chatItems at indices: %@, oldchatItems (count): %@", buf, 0x16u);
      }
    }

    updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v12 = +[CKChatItemSizeCache sharedInstance];
    [v12 invalidateCachedSizeForChatItems:removalCopy reason:@"transcript_animated_removal"];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__CKTranscriptCollectionViewController__animateChatItemRemoval_removed___block_invoke;
    v15[3] = &unk_1E72F2B78;
    v16 = collectionView;
    selfCopy = self;
    v18 = updateAnimationGroup;
    v13 = updateAnimationGroup;
    v14 = collectionView;
    [removalCopy enumerateObjectsAtIndexes:removedCopy options:0 usingBlock:v15];
  }
}

void __72__CKTranscriptCollectionViewController__animateChatItemRemoval_removed___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v8 = [v6 cellForItemAtIndexPath:v7];

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        *buf = 134217984;
        v15 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in _animateChatItemRemoval – will call performRemoval:", buf, 0xCu);
      }
    }

    dispatch_group_enter(*(a1 + 48));
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__CKTranscriptCollectionViewController__animateChatItemRemoval_removed___block_invoke_1080;
    v12[3] = &unk_1E72ECCA8;
    v11 = *(a1 + 48);
    v12[4] = *(a1 + 40);
    v13 = v11;
    [v8 performRemoval:v12];
  }
}

void __72__CKTranscriptCollectionViewController__animateChatItemRemoval_removed___block_invoke_1080(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in _animateChatItemRemoval – will call performRemoval:", &v4, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_animateChatItemReload:(id)reload reload:(id)a4 associatedInserted:(id)inserted animationDuration:(double)duration animationCurve:(int64_t)curve
{
  v33 = *MEMORY[0x1E69E9840];
  reloadCopy = reload;
  v13 = a4;
  insertedCopy = inserted;
  if ([v13 count])
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(reloadCopy, "count")}];
        *buf = 138412546;
        v30 = v13;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "  Animating reload of chatItems at indices: %@, chatItems (count): %@", buf, 0x16u);
      }
    }

    updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v19 = [reloadCopy objectsAtIndexes:v13];
    v20 = +[CKChatItemSizeCache sharedInstance];
    [v20 invalidateCachedSizeForChatItems:v19 reason:@"transcript_animated_reload"];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke;
    v23[3] = &unk_1E72F2BC8;
    v23[4] = self;
    v24 = collectionView;
    v25 = updateAnimationGroup;
    durationCopy = duration;
    curveCopy = curve;
    v26 = insertedCopy;
    v21 = updateAnimationGroup;
    v22 = collectionView;
    [reloadCopy enumerateObjectsAtIndexes:v13 options:0 usingBlock:v23];
  }
}

void __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke(uint64_t a1, void *a2)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 IMChatItem];
  v5 = [v4 guid];

  if (v5)
  {
    v6 = [*(a1 + 32) indexPathForChatItemGUID:v5];
    if (v6)
    {
      v7 = [*(a1 + 40) cellForItemAtIndexPath:v6];
      v8 = objc_opt_class();
      if ([v8 isEqual:objc_opt_class()])
      {
        v9 = objc_opt_class();
        if ([v9 isEqual:objc_opt_class()])
        {
          v10 = *(a1 + 40);
          v73[0] = v6;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
          [v10 reloadItemsAtIndexPaths:v11];

          v12 = [*(a1 + 40) cellForItemAtIndexPath:v6];

          v7 = v12;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = *(a1 + 40);
          v72 = v6;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
          [v13 reloadItemsAtIndexPaths:v14];

          v15 = [*(a1 + 40) cellForItemAtIndexPath:v6];

          v7 = v15;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = *(a1 + 40);
          v71 = v6;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
          [v16 reloadItemsAtIndexPaths:v17];

          v18 = [*(a1 + 40) cellForItemAtIndexPath:v6];

          v7 = v18;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = *(a1 + 40);
          v70 = v6;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
          [v19 reloadItemsAtIndexPaths:v20];

          v21 = [*(a1 + 40) cellForItemAtIndexPath:v6];

          v7 = v21;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = *(a1 + 40);
          v69 = v6;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
          [v22 reloadItemsAtIndexPaths:v23];

          v24 = [*(a1 + 40) cellForItemAtIndexPath:v6];

          v7 = v24;
        }
      }

      if (v7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 itemIsReply])
        {
          [v7 setSuppressAnimationsForLineUpdates:1];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v3 failed])
            {
              [v7 setSuppressAnimationsForFailureBadgeUpdate:1];
            }
          }
        }

        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = *(a1 + 32);
            *buf = 134217984;
            v64 = v26;
            _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in _animateChatItemReload – will call performReload:", buf, 0xCu);
          }
        }

        dispatch_group_enter(*(a1 + 48));
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_1092;
        v56[3] = &unk_1E72F1508;
        v27 = v7;
        v28 = *(a1 + 32);
        v57 = v27;
        v58 = v28;
        v59 = v3;
        v29 = v6;
        v60 = v29;
        v61 = *(a1 + 64);
        v62 = *(a1 + 72);
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_2;
        v54[3] = &unk_1E72ECCA8;
        v54[4] = *(a1 + 32);
        v55 = *(a1 + 48);
        [v27 performReload:v56 completion:v54];
        if (![v29 section])
        {
          v30 = [*(a1 + 32) chatItems];
          v31 = [v30 objectAtIndexedSubscript:{objc_msgSend(v29, "item")}];

          v32 = [v31 visibleAssociatedMessageChatItems];
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_1093;
          v50[3] = &unk_1E72F2BA0;
          v50[4] = *(a1 + 32);
          v51 = *(a1 + 56);
          v52 = *(a1 + 48);
          v53 = v27;
          [v32 enumerateObjectsUsingBlock:v50];

          v33 = [v31 messageHighlightChatItem];
          if (v33)
          {
            v34 = MEMORY[0x1E696AC88];
            v35 = [*(a1 + 32) associatedChatItems];
            v36 = [v34 indexPathForItem:objc_msgSend(v35 inSection:{"indexOfObject:", v33), 1}];

            if (([*(a1 + 56) containsIndex:{objc_msgSend(v36, "row")}] & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v37 = [*(a1 + 40) cellForItemAtIndexPath:v36];
                if (v37)
                {
                  v38 = [*(a1 + 32) collectionViewLayout];
                  [v38 updateAssociatedLayoutAttributesIfNecessary];

                  if (IMOSLoggingEnabled())
                  {
                    v39 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                    {
                      v40 = *(a1 + 32);
                      *buf = 134217984;
                      v64 = v40;
                      _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in _animateChatItemReload – will call performReload: on CKAssociatedMessageTranscriptCell", buf, 0xCu);
                    }
                  }

                  dispatch_group_enter(*(a1 + 48));
                  v46[0] = MEMORY[0x1E69E9820];
                  v46[1] = 3221225472;
                  v46[2] = __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_1097;
                  v46[3] = &unk_1E72EBEF8;
                  v46[4] = *(a1 + 32);
                  v37 = v37;
                  v47 = v37;
                  v48 = v33;
                  v49 = v36;
                  v44[0] = MEMORY[0x1E69E9820];
                  v44[1] = 3221225472;
                  v44[2] = __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_2_1098;
                  v44[3] = &unk_1E72ECCA8;
                  v44[4] = *(a1 + 32);
                  v45 = *(a1 + 48);
                  [v37 performReload:v46 completion:v44];
                }
              }

              else
              {
                v37 = IMLogHandleForCategory();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v41 = objc_opt_class();
                  v42 = NSStringFromClass(v41);
                  v43 = [v31 messageHighlightChatItem];
                  *buf = 138412802;
                  v64 = v36;
                  v65 = 2112;
                  v66 = v42;
                  v67 = 2112;
                  v68 = v43;
                  _os_log_error_impl(&dword_19020E000, v37, OS_LOG_TYPE_ERROR, "2 Cell for indexPath %@ was of type %@, expected CKAssociatedMessageTranscriptCell. Not reloading. cellChatItem.messageHighlightChatItem: %@", buf, 0x20u);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_1092(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);

  return [v3 configureCell:v4 forCKChatItem:v5 atIndexPath:v6 animated:v2 >= 5.0 animationDuration:v8 animationCurve:v7];
}

void __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in _animateChatItemReload – will call performReload:", &v4, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_1093(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) associatedChatItems];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = MEMORY[0x1E696AC88];
    v7 = [*(a1 + 32) associatedChatItems];
    v8 = [v6 indexPathForItem:objc_msgSend(v7 inSection:{"indexOfObject:", v3), 1}];

    if (([*(a1 + 40) containsIndex:{objc_msgSend(v8, "row")}] & 1) == 0)
    {
      v9 = [*(a1 + 32) cellForAssociatedChatItem:v3];
      if (v9)
      {
        v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v11 = [v10 isStickerRepositioningEnabled];

        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 chatItemIsStickerReposition])
        {
          [*(a1 + 32) _animateStickerRepositionWithAssociatedChatItem:v3 associatedCell:v9 associatedIndexPath:v8];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = [*(a1 + 32) collectionViewLayout];
            [v12 updateAssociatedLayoutAttributesIfNecessary];

            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = *(a1 + 32);
                *buf = 134217984;
                v23 = v14;
                _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in _animateChatItemReload – will call performReload: to configureAssociatedCell", buf, 0xCu);
              }
            }

            dispatch_group_enter(*(a1 + 48));
            v15 = *(a1 + 56);
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_1094;
            v18[3] = &unk_1E72EBEF8;
            v18[4] = *(a1 + 32);
            v19 = v9;
            v20 = v3;
            v21 = v8;
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_2_1095;
            v16[3] = &unk_1E72ECCA8;
            v16[4] = *(a1 + 32);
            v17 = *(a1 + 48);
            [v15 performReload:v18 completion:v16];
          }
        }
      }
    }
  }
}

void __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_2_1095(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in _animateChatItemReload – will call performReload: to configureAssociatedCell", &v4, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke_2_1098(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in _animateChatItemReload – will call performReload: on CKAssociatedMessageTranscriptCell", &v4, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_animateAvatarFromGroupTypingIndicatorToIncomingCell:(id)cell
{
  v73 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v72 = cellCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Preparing for group typing avatar animation for incoming cell: %@", buf, 0xCu);
    }
  }

  chat = [(CKTranscriptCollectionViewController *)self chat];
  typingTrackingController = [chat typingTrackingController];

  handleToRemoveViaAnimation = [typingTrackingController handleToRemoveViaAnimation];
  if (handleToRemoveViaAnimation)
  {
    v9 = [(CKTranscriptCollectionViewController *)self chatItemForCell:cellCopy];
    sender = [v9 sender];
    v11 = [handleToRemoveViaAnimation isEqual:sender];

    if (v11)
    {
      groupTypingIndicatorChatItem = [(CKTranscriptCollectionViewController *)self groupTypingIndicatorChatItem];
      if (!groupTypingIndicatorChatItem)
      {
LABEL_11:

        goto LABEL_12;
      }

      v13 = objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
LABEL_9:

        goto LABEL_11;
      }

      groupTypingAvatarAnimationCoordinator = [(CKTranscriptCollectionViewController *)self groupTypingAvatarAnimationCoordinator];
      v15 = groupTypingAvatarAnimationCoordinator == 0;

      if (!v15)
      {
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = cellCopy;
        contactImageView = [v13 contactImageView];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          contactImageView2 = [v13 contactImageView];
          v18 = [(CKTranscriptCollectionViewController *)self cellForChatItem:groupTypingIndicatorChatItem];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v59 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v72 = v18;
                _os_log_impl(&dword_19020E000, v59, OS_LOG_TYPE_INFO, "possibleGroupTypingCell is not a CKTranscriptGroupTypingIndicatorCell: %@", buf, 0xCu);
              }
            }

            goto LABEL_11;
          }

          v66 = v18;
          layer = [v66 layer];
          presentationLayer = [layer presentationLayer];
          contactImageView3 = [v66 contactImageView];
          layer2 = [contactImageView3 layer];
          presentationLayer2 = [layer2 presentationLayer];
          [presentationLayer2 frame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;
          collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
          superview = [collectionView superview];
          layer3 = [superview layer];
          [presentationLayer convertRect:layer3 toLayer:{v21, v23, v25, v27}];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;

          [v66 lastRemovedContactImageFrame];
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v74.origin.x = v32;
          v74.origin.y = v34;
          v74.size.width = v36;
          v74.size.height = v38;
          v75 = CGRectOffset(v74, v40, v42);
          x = v75.origin.x;
          y = v75.origin.y;
          updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
          if (IMOSLoggingEnabled())
          {
            v50 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v50, OS_LOG_TYPE_INFO, "Creating avatar animation coordinator.", buf, 2u);
            }
          }

          v51 = [CKGroupTypingAvatarAnimationCoordinator alloc];
          collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
          contacts = [contactImageView2 contacts];
          firstObject = [contacts firstObject];
          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 3221225472;
          v67[2] = __93__CKTranscriptCollectionViewController__animateAvatarFromGroupTypingIndicatorToIncomingCell___block_invoke;
          v67[3] = &unk_1E72EB880;
          v68 = typingTrackingController;
          selfCopy = self;
          v70 = updateAnimationGroup;
          v54 = updateAnimationGroup;
          v55 = [(CKGroupTypingAvatarAnimationCoordinator *)v51 initToCell:v13 fromTypingCell:v66 hostingView:collectionView2 fromFrame:firstObject senderContact:v67 completion:x, y, v44, v46];
          [(CKTranscriptCollectionViewController *)self setGroupTypingAvatarAnimationCoordinator:v55];

          dispatch_group_enter(v54);
          groupTypingAvatarAnimationCoordinator2 = [(CKTranscriptCollectionViewController *)self groupTypingAvatarAnimationCoordinator];
          [groupTypingAvatarAnimationCoordinator2 animate];

          goto LABEL_9;
        }

        if (IMOSLoggingEnabled())
        {
          v57 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            contactImageView4 = [v13 contactImageView];
            *buf = 138412290;
            v72 = contactImageView4;
            _os_log_impl(&dword_19020E000, v57, OS_LOG_TYPE_INFO, "toCell does not have a CKAvatarView contactImageView: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_11;
        }

        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v72 = cellCopy;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Incoming cell is not a CKTranscriptMessageCell: %@", buf, 0xCu);
        }
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

void __93__CKTranscriptCollectionViewController__animateAvatarFromGroupTypingIndicatorToIncomingCell___block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Avatar animation completed.", v3, 2u);
    }
  }

  [*(a1 + 32) resetHandleToRemoveViaAnimation];
  [*(a1 + 40) setGroupTypingAvatarAnimationCoordinator:0];
  dispatch_group_leave(*(a1 + 48));
}

- (void)_animateChatItemInsertion:(id)insertion inserted:(id)inserted wantsScrollToBottom:(BOOL)bottom scrollToBottomDuration:(double *)duration
{
  bottomCopy = bottom;
  v49 = *MEMORY[0x1E69E9840];
  insertionCopy = insertion;
  insertedCopy = inserted;
  if ([insertedCopy count])
  {
    v33 = bottomCopy;
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        if ([(CKTranscriptCollectionViewController *)self isInline])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(insertionCopy, "count")}];
        *buf = 138412802;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = insertedCopy;
        *&buf[22] = 2112;
        v46 = v13;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "\t(Inline: %@) Animating insertion of chatItems at indices: %@, chatItems (count): %@", buf, 0x20u);
      }
    }

    updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy__33;
    v47 = __Block_byref_object_dispose__33;
    array = [MEMORY[0x1E695DF70] array];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __118__CKTranscriptCollectionViewController__animateChatItemInsertion_inserted_wantsScrollToBottom_scrollToBottomDuration___block_invoke;
    v42[3] = &unk_1E72ED100;
    v16 = collectionView;
    v43 = v16;
    v44 = buf;
    [insertionCopy enumerateObjectsAtIndexes:insertedCopy options:0 usingBlock:v42];
    v17 = [*(*&buf[8] + 40) indexesOfObjectsPassingTest:&__block_literal_global_1103];
    if (![v17 count])
    {
      insertionAnimationType = 0;
      firstIndex = 0x7FFFFFFFFFFFFFFFLL;
      v20 = 0.0;
      goto LABEL_15;
    }

    lastIndex = [v17 lastIndex];
    v19 = [*(*&buf[8] + 40) objectAtIndex:lastIndex];
    v20 = 0.0;
    if (![v19 isReply] || (objc_msgSend(v19, "isFromMe") & 1) != 0)
    {
      insertionAnimationType = 0;
      firstIndex = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:

LABEL_15:
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v41[3] = CACurrentMediaTime();
      v23 = *(*&buf[8] + 40);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __118__CKTranscriptCollectionViewController__animateChatItemInsertion_inserted_wantsScrollToBottom_scrollToBottomDuration___block_invoke_3;
      v35[3] = &unk_1E72F2C10;
      v37 = v41;
      v38 = insertionAnimationType;
      v39 = v20;
      v35[4] = self;
      v40 = firstIndex;
      v24 = updateAnimationGroup;
      v36 = v24;
      [v23 enumerateObjectsUsingBlock:v35];

      _Block_object_dispose(v41, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_16;
    }

    insertionAnimationType = [v19 insertionAnimationType];
    [v19 insertionDurationForInsertionType:insertionAnimationType];
    v20 = v25;
    if ([v17 count] < 2)
    {
      firstIndex = 0x7FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        goto LABEL_13;
      }

      v29 = 0.0;
      if (insertionAnimationType == 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      firstIndex = [v17 firstIndex];
      v26 = [*(*&buf[8] + 40) objectAtIndex:firstIndex];
      isReplyContextPreview = [v26 isReplyContextPreview];
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      if (isReplyContextPreview)
      {
        v28 = firstIndex;
      }

      v32 = v28;

      if (!v33 || insertionAnimationType == 2)
      {
        firstIndex = v32;
        goto LABEL_13;
      }

      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = 0.0;
        firstIndex = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = +[CKUIBehavior sharedBehaviors];
        [v30 fadeInReplyPreviewAnimationDuration];
        v29 = v31;
      }
    }

    *duration = v20 + v29;
    goto LABEL_13;
  }

LABEL_16:
}

void __118__CKTranscriptCollectionViewController__animateChatItemInsertion_inserted_wantsScrollToBottom_scrollToBottomDuration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v7 = [v4 cellForItemAtIndexPath:v5];

  v6 = v7;
  if (v7)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
    v6 = v7;
  }
}

uint64_t __118__CKTranscriptCollectionViewController__animateChatItemInsertion_inserted_wantsScrollToBottom_scrollToBottomDuration___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __118__CKTranscriptCollectionViewController__animateChatItemInsertion_inserted_wantsScrollToBottom_scrollToBottomDuration___block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  [v5 setInsertionType:*(a1 + 56)];
  [v5 setInsertionDuration:*(a1 + 64)];
  [v5 setInsertionBeginTime:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 32) _animateAvatarFromGroupTypingIndicatorToIncomingCell:v5];
  if (*(a1 + 72) != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 setInsertingWithReplyPreview:1];
    [v5 setInsertingBeforeReplyPreview:*(a1 + 72) > a3];
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 134217984;
      v12 = v7;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in _animateChatItemInsertion – will call performInsertion:", buf, 0xCu);
    }
  }

  dispatch_group_enter(*(a1 + 40));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __118__CKTranscriptCollectionViewController__animateChatItemInsertion_inserted_wantsScrollToBottom_scrollToBottomDuration___block_invoke_1104;
  v9[3] = &unk_1E72ECCA8;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v5 performInsertion:v9];
}

void __118__CKTranscriptCollectionViewController__animateChatItemInsertion_inserted_wantsScrollToBottom_scrollToBottomDuration___block_invoke_1104(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in _animateChatItemInsertion – will call performInsertion:", &v4, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_animateAssociatedChatItemWithIndices:(id)indices
{
  indicesCopy = indices;
  if ([indicesCopy count])
  {
    updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v8 = [delegate currentlyFocusedChatItemForTapbackInTranscriptCollectionViewController:self];

    tapbacksChatItem = [v8 tapbacksChatItem];
    associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__CKTranscriptCollectionViewController__animateAssociatedChatItemWithIndices___block_invoke;
    v14[3] = &unk_1E72F2B78;
    v15 = collectionView;
    v16 = updateAnimationGroup;
    v17 = tapbacksChatItem;
    v11 = tapbacksChatItem;
    v12 = updateAnimationGroup;
    v13 = collectionView;
    [associatedChatItems enumerateObjectsAtIndexes:indicesCopy options:0 usingBlock:v14];
  }
}

void __78__CKTranscriptCollectionViewController__animateAssociatedChatItemWithIndices___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:1];
  v8 = [v6 cellForItemAtIndexPath:v7];

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v24 = a3;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Entering updateAnimationGroup: in _animateAssociatedChatItemWithIndices at index: %lu", buf, 0xCu);
      }
    }

    dispatch_group_enter(*(a1 + 40));
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __78__CKTranscriptCollectionViewController__animateAssociatedChatItemWithIndices___block_invoke_1105;
    v20 = &unk_1E72EFB08;
    v22 = a3;
    v21 = *(a1 + 40);
    v10 = _Block_copy(&v17);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v5 IMChatItem];
      v12 = [v11 guid];
      v13 = [*(a1 + 48) IMChatItem];
      v14 = [v13 guid];
      v15 = [v12 isEqual:v14];

      if (v15 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v24 = a3;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Skipping insertion animation for index: %lu", buf, 0xCu);
        }
      }

      [v8 performInsertion:v10 animated:v15 ^ 1u];
    }

    else
    {
      [v8 performInsertion:{v10, v17, v18, v19, v20}];
    }
  }
}

void __78__CKTranscriptCollectionViewController__animateAssociatedChatItemWithIndices___block_invoke_1105(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Leaving updateAnimationGroup: in _animateAssociatedChatItemWithIndices at index: %lu", &v4, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_animateStickerRepositionWithAssociatedChatItem:(id)item associatedCell:(id)cell associatedIndexPath:(id)path
{
  v40[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  cellCopy = cell;
  pathCopy = path;
  associatedItemView = [cellCopy associatedItemView];
  updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  v40[0] = itemCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [CKChatItem unloadSizesOfChatItems:v13];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in _animateStickerRepositionWithAssociatedChatItem", buf, 0xCu);
    }
  }

  dispatch_group_enter(updateAnimationGroup);
  currentStickerRepositionIsLocalReposition = [itemCopy currentStickerRepositionIsLocalReposition];
  [itemCopy clearStickerRepositionLocalState];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__CKTranscriptCollectionViewController__animateStickerRepositionWithAssociatedChatItem_associatedCell_associatedIndexPath___block_invoke;
  aBlock[3] = &unk_1E72F2C38;
  aBlock[4] = self;
  v16 = cellCopy;
  v31 = v16;
  v17 = associatedItemView;
  v32 = v17;
  v18 = itemCopy;
  v33 = v18;
  v19 = pathCopy;
  v34 = v19;
  v36 = currentStickerRepositionIsLocalReposition;
  v37 = 0;
  v20 = updateAnimationGroup;
  v35 = v20;
  v21 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = [v17 image];
    v21[2](v21, image);
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E69DCA78]);
    [v17 bounds];
    v26 = [v23 initWithSize:{v24, v25}];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __123__CKTranscriptCollectionViewController__animateStickerRepositionWithAssociatedChatItem_associatedCell_associatedIndexPath___block_invoke_1111;
    v28[3] = &unk_1E72EBBE8;
    v29 = v17;
    v27 = [v26 imageWithActions:v28];

    v21[2](v21, v27);
    image = v29;
  }
}

void __123__CKTranscriptCollectionViewController__animateStickerRepositionWithAssociatedChatItem_associatedCell_associatedIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(CKBalloonImageView);
  [(CKBalloonImageView *)v4 setContentMode:1];
  [(CKBalloonImageView *)v4 setImage:v3];
  v5 = [*(a1 + 32) view];
  [v5 addSubview:v4];

  v6 = *(a1 + 40);
  [*(a1 + 48) center];
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) view];
  [v6 convertPoint:v11 toView:{v8, v10}];
  [(CKBalloonImageView *)v4 setCenter:?];

  [*(a1 + 48) bounds];
  [(CKBalloonImageView *)v4 setBounds:?];
  memset(&v28, 0, sizeof(v28));
  v12 = [*(a1 + 48) layer];
  v13 = v12;
  if (v12)
  {
    [v12 transform];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  CATransform3DGetAffineTransform(&transform, &v29);
  CGAffineTransformDecompose(&v28, &transform);

  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeRotation(&transform, v28.rotation);
  *&v29.m11 = *&transform.a;
  *&v29.m13 = *&transform.c;
  *&v29.m21 = *&transform.tx;
  CATransform3DMakeAffineTransform(&v26, &v29);
  v14 = [(CKBalloonImageView *)v4 layer];
  v29 = v26;
  [v14 setTransform:&v29];

  [*(a1 + 40) setHidden:1];
  [*(a1 + 48) setHidden:1];
  [*(a1 + 56) refreshMediaObjectForStickerRepositioning];
  v15 = [*(a1 + 32) collectionViewLayout];
  [v15 updateAssociatedLayoutAttributesIfNecessary];

  [*(a1 + 32) configureAssociatedCell:*(a1 + 40) forChatItem:*(a1 + 56) atIndexPath:*(a1 + 64)];
  [*(a1 + 40) setNeedsLayout];
  if ((*(a1 + 80) & 1) != 0 || *(a1 + 81) == 1)
  {
    [*(a1 + 40) setHidden:0];
    [*(a1 + 48) setHidden:0];
    [(CKBalloonImageView *)v4 removeFromSuperview];
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        LODWORD(v29.m11) = 134217984;
        *(&v29.m11 + 4) = v17;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in _animateStickerRepositionWithAssociatedChatItem - isLocalReposition || isWatchOS", &v29, 0xCu);
      }
    }

    dispatch_group_leave(*(a1 + 72));
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __123__CKTranscriptCollectionViewController__animateStickerRepositionWithAssociatedChatItem_associatedCell_associatedIndexPath___block_invoke_1108;
    v20[3] = &unk_1E72F1580;
    v21 = v4;
    v22 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 32);
    v23 = v18;
    v24 = v19;
    v25 = *(a1 + 72);
    [(UIView *)v21 ck_performHideAnimated:1 completion:v20];
  }
}

void __123__CKTranscriptCollectionViewController__animateStickerRepositionWithAssociatedChatItem_associatedCell_associatedIndexPath___block_invoke_1108(id *a1)
{
  v2 = a1[5];
  [a1[6] center];
  v4 = v3;
  v6 = v5;
  v7 = [a1[7] view];
  [v2 convertPoint:v7 toView:{v4, v6}];
  [a1[4] setCenter:?];

  [a1[6] bounds];
  [a1[4] setBounds:?];
  memset(&v23, 0, sizeof(v23));
  v8 = [a1[6] layer];
  v9 = v8;
  if (v8)
  {
    [v8 transform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  CATransform3DGetAffineTransform(&transform, &v21);
  CGAffineTransformDecompose(&v23, &transform);

  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeRotation(&transform, v23.rotation);
  *&v21.m11 = *&transform.a;
  *&v21.m13 = *&transform.c;
  *&v21.m21 = *&transform.tx;
  CATransform3DMakeAffineTransform(&v20, &v21);
  v10 = [a1[4] layer];
  v21 = v20;
  [v10 setTransform:&v21];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __123__CKTranscriptCollectionViewController__animateStickerRepositionWithAssociatedChatItem_associatedCell_associatedIndexPath___block_invoke_2;
  v16[3] = &unk_1E72F1580;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  *&v14 = a1[4];
  *(&v14 + 1) = a1[7];
  *&v15 = v12;
  *(&v15 + 1) = v13;
  v17 = v15;
  v18 = v14;
  v19 = a1[8];
  [v11 ck_performRevealAnimated:1 completion:v16];
}

void __123__CKTranscriptCollectionViewController__animateStickerRepositionWithAssociatedChatItem_associatedCell_associatedIndexPath___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setHidden:0];
  [*(a1 + 40) setHidden:0];
  [*(a1 + 48) removeFromSuperview];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 56);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in _animateStickerRepositionWithAssociatedChatItem - ck_performRevealAnimated completion", &v4, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

uint64_t __123__CKTranscriptCollectionViewController__animateStickerRepositionWithAssociatedChatItem_associatedCell_associatedIndexPath___block_invoke_1111(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}

- (id)_sanitizeInsertedIndices:(id)indices inChatItems:(id)items withIMChatItems:(id)chatItems
{
  v29 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  itemsCopy = items;
  chatItemsCopy = chatItems;
  v11 = indicesCopy;
  v12 = v11;
  if ([(__CFString *)v11 count])
  {
    firstIndex = [(__CFString *)v11 firstIndex];
    v12 = v11;
    if (firstIndex > [itemsCopy count])
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        if ([(CKTranscriptCollectionViewController *)self isInline])
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
        v23 = 138412802;
        v24 = v21;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v22;
        _os_log_error_impl(&dword_19020E000, v14, OS_LOG_TYPE_ERROR, "(Inline: %@) Attempted to insert at indices: %@ into chatItems (count): %@", &v23, 0x20u);
      }

      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController _sanitizeInsertedIndices:? inChatItems:? withIMChatItems:?];
      }

      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController _sanitizeInsertedIndices:chatItemsCopy inChatItems:? withIMChatItems:?];
      }

      v17 = [itemsCopy count];
      lastIndex = [(__CFString *)v11 lastIndex];
      v12 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v17, lastIndex - v17 + 1}];

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          v24 = v12;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "\tRevised indices for inserting: %@", &v23, 0xCu);
        }
      }
    }
  }

  return v12;
}

- (void)_identifyIndicesNeedingCustomAnimationsForIMChatItems:(id)items inserted:(id)inserted removed:(id)removed
{
  v33 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  insertedCopy = inserted;
  removedCopy = removed;
  if ([insertedCopy count] || objc_msgSend(removedCopy, "count"))
  {
    v25 = 0;
    v26 = 0;
    [(CKTranscriptCollectionViewController *)self _indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading:itemsCopy inserted:insertedCopy removed:removedCopy outInsertIndices:&v26 outRemoveIndices:&v25];
    v11 = v26;
    v12 = v25;
    if ([v12 count] && IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
        *buf = 138412546;
        v28 = v14;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "The indices to remove WITHOUT animation are (count: %@): %@", buf, 0x16u);
      }
    }

    collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
    [collectionViewLayout setIndicesOfChatItemsToBeRemovedWithoutFading:v12];

    if ([v11 count] && IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
        *buf = 138412546;
        v28 = v17;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "The indices to insert WITHOUT animation are (count: %@): %@", buf, 0x16u);
      }
    }

    collectionViewLayout2 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
    [collectionViewLayout2 setIndicesOfChatItemsToBeInsertedWithoutFading:v11];

    v24 = 0;
    [(CKTranscriptCollectionViewController *)self _indicesOfReplyChatItemsToInsertWithoutFading:itemsCopy inserted:insertedCopy outInsertIndices:&v24];
    v19 = v24;
    if ([v19 count] && IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        if ([(CKTranscriptCollectionViewController *)self isInline])
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
        *buf = 138412802;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        v31 = 2112;
        v32 = v19;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "(Inline: %@) The indices of reply items to insert with custom animation are (count: %@): %@", buf, 0x20u);
      }
    }

    collectionViewLayout3 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
    [collectionViewLayout3 setIndicesOfReplyChatItemsToBeInserted:v19];
  }
}

- (id)indexPathForMessageGUID:(id)d messagePartIndex:(int64_t)index useAssociatedSection:(BOOL)section
{
  sectionCopy = section;
  dCopy = d;
  if (sectionCopy)
  {
    [(CKTranscriptCollectionViewController *)self associatedChatItems];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self chatItems];
  }
  v9 = ;
  v10 = v9;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 __ck_indexesOfPartsOfMessageWithGUID:dCopy];
    firstIndex = [v11 firstIndex];
  }

  else
  {
    firstIndex = [v9 __ck_indexOfPartOfMessageGUID:dCopy withMessagePartIndex:index];
  }

  if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForRow:firstIndex inSection:sectionCopy];
  }

  return v13;
}

- (id)indexPathForChatItemGUID:(id)d useAssociatedSection:(BOOL)section
{
  sectionCopy = section;
  dCopy = d;
  if (sectionCopy)
  {
    [(CKTranscriptCollectionViewController *)self associatedChatItems];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self chatItems];
  }
  v7 = ;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __86__CKTranscriptCollectionViewController_indexPathForChatItemGUID_useAssociatedSection___block_invoke;
  v14 = &unk_1E72ED100;
  v8 = dCopy;
  v15 = v8;
  v16 = &v17;
  [v7 enumerateObjectsUsingBlock:&v11];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:v18[3] inSection:{sectionCopy, v11, v12, v13, v14}];

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __86__CKTranscriptCollectionViewController_indexPathForChatItemGUID_useAssociatedSection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 IMChatItem];
  v8 = [v7 guid];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)updateTranscriptScrollIntentForSendAnimationContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = contextCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received request to update the transcriptScrollIntent for the sendAnimationContext: %@", &v14, 0xCu);
    }
  }

  messages = [contextCopy messages];
  v7 = [messages __imArrayByFilteringWithBlock:&__block_literal_global_1116];
  firstObject = [v7 firstObject];
  v9 = firstObject == 0;

  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v11 = collectionView;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = 6;
  }

  [collectionView setTranscriptScrollIntent:v12];

  v13 = +[CKScrollViewAnimationProperties systemDefaultScrollAnimation];
  [(CKTranscriptCollectionViewController *)self enforceTranscriptScrollIntentWithAnimationProperties:v13];
}

- (int64_t)_computeDesiredScrollIntentForInsertedChatItems:(id)items insertedUnreadChatItem:(id)item insertedLocalUnsentChatItem:(id)chatItem
{
  v31 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemCopy = item;
  chatItemCopy = chatItem;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  transcriptScrollIntent = [collectionView transcriptScrollIntent];

  if ([itemsCopy count])
  {
    lastObject = [itemsCopy lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([lastObject isFromMe])
      {
        v14 = 9;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 9;
    }

    if (!transcriptScrollIntent)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 9;
    if (!transcriptScrollIntent)
    {
      goto LABEL_12;
    }
  }

  if (transcriptScrollIntent == 9)
  {
    if ([(CKViewController *)self deferredAppeared])
    {
      v15 = v14;
    }

    else
    {
      v15 = 9;
    }

LABEL_19:
    if (!chatItemCopy)
    {
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  v15 = transcriptScrollIntent;
  if (transcriptScrollIntent != 6)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (!chatItemCopy)
  {
LABEL_32:
    v15 = transcriptScrollIntent;
    goto LABEL_33;
  }

  messageItem = [chatItemCopy messageItem];
  scheduleType = [messageItem scheduleType];

  if (scheduleType == 2)
  {
    v15 = 6;
  }

  else
  {
    v15 = 0;
  }

LABEL_20:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = [WeakRetained transcriptCollectionViewControllerShouldScrollToBottomForLocalSentMessage:self];

  if ((v19 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = CKDebugNameForCKTranscriptScrollIntent(v15);
        v27 = 138412290;
        v28 = v25;
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Short-circuiting to not scroll to %@ because of a reply transcript being up.", &v27, 0xCu);
      }
    }

    goto LABEL_32;
  }

  messageItem2 = [chatItemCopy messageItem];
  scheduleType2 = [messageItem2 scheduleType];

  if (scheduleType2 == 2)
  {
    v15 = 6;
  }

  else
  {
    v15 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = CKDebugNameForCKTranscriptScrollIntent(v15);
      v27 = 138412546;
      v28 = v23;
      v29 = 2112;
      v30 = chatItemCopy;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Computed new scrollIntent %@ for newly inserted unsent chatItem: %@.", &v27, 0x16u);
    }
  }

LABEL_33:

  return v15;
}

- (void)scrollToCurrentTimeAnimated:(BOOL)animated withDuration:(double)duration animationCurve:(int64_t)curve withCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView setTranscriptScrollIntent:0];

  updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in scrollToCurrentTimeAnimated", buf, 0xCu);
    }
  }

  dispatch_group_enter(updateAnimationGroup);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __111__CKTranscriptCollectionViewController_scrollToCurrentTimeAnimated_withDuration_animationCurve_withCompletion___block_invoke;
  v16[3] = &unk_1E72F2CA8;
  v16[4] = self;
  v17 = updateAnimationGroup;
  animatedCopy = animated;
  v18 = completionCopy;
  curveCopy = curve;
  durationCopy = duration;
  v14 = updateAnimationGroup;
  v15 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

void __111__CKTranscriptCollectionViewController_scrollToCurrentTimeAnimated_withDuration_animationCurve_withCompletion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 transcriptScrollIntent];

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 134217984;
        v22 = v5;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in scrollToCurrentTimeAnimated – transcriptScrollIntent != CKTranscriptScrollIntentCurrentTime", buf, 0xCu);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v6 = [*(a1 + 32) collectionView];
  v7 = [v6 isScrollEnabled];

  if ((v7 & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        *buf = 134217984;
        v22 = v12;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in scrollToCurrentTimeAnimated – !isScrollEnabled", buf, 0xCu);
      }

      goto LABEL_12;
    }

LABEL_13:
    dispatch_group_leave(*(a1 + 40));
    return;
  }

  if (*(a1 + 72) == 1)
  {
    v8 = *(a1 + 56) << 16;
    v9 = MEMORY[0x1E69DD250];
    v10 = *(a1 + 64);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __111__CKTranscriptCollectionViewController_scrollToCurrentTimeAnimated_withDuration_animationCurve_withCompletion___block_invoke_1117;
    v19[3] = &unk_1E72EBA18;
    v11 = *(a1 + 40);
    v20 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __111__CKTranscriptCollectionViewController_scrollToCurrentTimeAnimated_withDuration_animationCurve_withCompletion___block_invoke_2;
    v16[3] = &unk_1E72F2C80;
    v16[4] = v20;
    v17 = v11;
    v18 = *(a1 + 48);
    [v9 animateWithDuration:v8 delay:v19 options:v16 animations:v10 completion:0.0];
  }

  else
  {
    v13 = +[CKScrollViewAnimationProperties unanimated];
    [*(a1 + 32) enforceTranscriptScrollIntentWithAnimationProperties:v13];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        *buf = 134217984;
        v22 = v15;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in scrollToCurrentTimeAnimated – enforceTranscriptScrollIntentWithAnimationProperties unanimated", buf, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
    dispatch_group_leave(*(a1 + 40));
  }
}

void __111__CKTranscriptCollectionViewController_scrollToCurrentTimeAnimated_withDuration_animationCurve_withCompletion___block_invoke_1117(uint64_t a1)
{
  v2 = +[CKScrollViewAnimationProperties inheritedAnimation];
  [*(a1 + 32) enforceTranscriptScrollIntentWithAnimationProperties:v2];
}

void __111__CKTranscriptCollectionViewController_scrollToCurrentTimeAnimated_withDuration_animationCurve_withCompletion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 134217984;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in scrollToCurrentTimeAnimated – enforceTranscriptScrollIntentWithAnimationProperties completion", buf, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__CKTranscriptCollectionViewController_scrollToCurrentTimeAnimated_withDuration_animationCurve_withCompletion___block_invoke_1118;
  block[3] = &unk_1E72EBDB8;
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)scrollToBottomAnimated:(BOOL)animated withDuration:(double)duration animationCurve:(int64_t)curve insertedUnreadMessage:(id)message insertedLocalUnsentChatItem:(id)item withCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  itemCopy = item;
  completionCopy = completion;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView setTranscriptScrollIntent:6];
  updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in scrollToBottomAnimated", buf, 0xCu);
    }
  }

  dispatch_group_enter(updateAnimationGroup);
  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __156__CKTranscriptCollectionViewController_scrollToBottomAnimated_withDuration_animationCurve_insertedUnreadMessage_insertedLocalUnsentChatItem_withCompletion___block_invoke;
  v22[3] = &unk_1E72F2CD0;
  objc_copyWeak(v25, buf);
  v23 = updateAnimationGroup;
  v24 = completionCopy;
  animatedCopy = animated;
  v25[1] = *&duration;
  v25[2] = curve;
  v20 = updateAnimationGroup;
  v21 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v22);

  objc_destroyWeak(v25);
  objc_destroyWeak(buf);
}

void __156__CKTranscriptCollectionViewController_scrollToBottomAnimated_withDuration_animationCurve_insertedUnreadMessage_insertedLocalUnsentChatItem_withCompletion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained collectionView];
    v5 = v4;
    if (!v4)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Leave updateAnimationGroup: in scrollToBottomAnimated – collection view deallocated", buf, 2u);
        }
      }

      v19 = *(a1 + 40);
      if (v19)
      {
        (*(v19 + 16))();
      }

      goto LABEL_39;
    }

    if ([v4 transcriptScrollIntent] != 6)
    {
      v20 = *(a1 + 40);
      if (v20)
      {
        (*(v20 + 16))();
      }

      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v28 = v3;
          _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in scrollToBottomAnimated – transcriptScrollIntent != CKTranscriptScrollIntentBelowFutureMessages", buf, 0xCu);
        }
      }

      goto LABEL_39;
    }

    v6 = [v3 delegate];
    [v6 transcriptCollectionViewControllerWillScrollToBottom:v3];

    if ([v5 isScrollEnabled])
    {
      [v5 layoutIfNeeded];
      [v3 _computedContentInsets];
      [v5 __ck_bottomOffsetWithComputedInsets:?];
      v8 = v7;
      v10 = v9;
      [v5 contentOffset];
      if (v12 != v8 || v11 != v10)
      {
        if (*(a1 + 72) == 1)
        {
          v13 = [CKScrollViewAnimationProperties animatedWithDuration:*(a1 + 64) animationCurve:*(a1 + 56)];
          [v5 setContentOffset:v13 animationProperties:{v8, v10}];
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v28 = v3;
              _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in scrollToBottomAnimated - content offset change timer", buf, 0xCu);
            }
          }

          dispatch_group_enter(*(a1 + 32));
          v15 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __156__CKTranscriptCollectionViewController_scrollToBottomAnimated_withDuration_animationCurve_insertedUnreadMessage_insertedLocalUnsentChatItem_withCompletion___block_invoke_1119;
          v24[3] = &unk_1E72ED1C8;
          v25 = *(a1 + 32);
          v26 = *(a1 + 40);
          dispatch_after(v15, MEMORY[0x1E69E96A0], v24);

LABEL_35:
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v28 = v3;
              _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in scrollToBottomAnimated - without changing content offset", buf, 0xCu);
            }
          }

LABEL_39:
          dispatch_group_leave(*(a1 + 32));

          goto LABEL_40;
        }

        [v5 setContentOffset:{v8, v10}];
      }
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      (*(v22 + 16))();
    }

    goto LABEL_35;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))();
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Leave updateAnimationGroup: in scrollToBottomAnimated – self deallocated", buf, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
LABEL_40:
}

uint64_t __156__CKTranscriptCollectionViewController_scrollToBottomAnimated_withDuration_animationCurve_insertedUnreadMessage_insertedLocalUnsentChatItem_withCompletion___block_invoke_1119(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Leave updateAnimationGroup: in scrollToBottomAnimated - content offset change timer", v4, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)scrollToTopOfLastBubbleCellWithAnimationProperties:(id)properties
{
  propertiesCopy = properties;
  if ([(CKTranscriptCollectionView *)self->_collectionView isScrollEnabled])
  {
    indexPathOfLastBubble = [(CKTranscriptCollectionViewController *)self indexPathOfLastBubble];
    v6 = indexPathOfLastBubble != 0;
    if (indexPathOfLastBubble)
    {
      collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
      [(CKTranscriptCollectionViewController *)self topScrollPositionForIndexPath:indexPathOfLastBubble];
      [collectionView setContentOffset:propertiesCopy animationProperties:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathOfLastBubble
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__CKTranscriptCollectionViewController_indexPathOfLastBubble__block_invoke;
  v5[3] = &unk_1E72EEC48;
  v5[4] = &v6;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __61__CKTranscriptCollectionViewController_indexPathOfLastBubble__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

- (CGPoint)topScrollPositionForIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView __ck_offsetForTopOfCellAtIndexPath:pathCopy hidingCellAtIndexPath:0];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)playEffectsIfNecessaryWithInsertedUnreadMessage:(id)message insertedLocalUnsentChatItem:(id)item
{
  messageCopy = message;
  itemCopy = item;
  if (messageCopy)
  {
    _allowsEffectAutoPlayback = [(CKTranscriptCollectionViewController *)self _allowsEffectAutoPlayback];
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _allowsEffectAutoPlayback = 0;
    if (itemCopy)
    {
LABEL_3:
      delegate = [(CKTranscriptCollectionViewController *)self delegate];
      if ([delegate transcriptCollectionViewControllerPlaybackForOutgoingEffectsIsAllowed:self])
      {
        message = [itemCopy message];
        expressiveSendStyleID = [message expressiveSendStyleID];
        if (expressiveSendStyleID)
        {
          _allowsEffectAutoPlayback2 = 1;
        }

        else
        {
          _allowsEffectAutoPlayback2 = [(CKTranscriptCollectionViewController *)self _allowsEffectAutoPlayback];
        }
      }

      else
      {
        _allowsEffectAutoPlayback2 = 0;
      }

      if (_allowsEffectAutoPlayback)
      {
        goto LABEL_13;
      }

LABEL_8:
      v12 = 0;
      goto LABEL_21;
    }
  }

  _allowsEffectAutoPlayback2 = 0;
  if (!_allowsEffectAutoPlayback)
  {
    goto LABEL_8;
  }

LABEL_13:
  iMChatItem = [messageCopy IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    message2 = [iMChatItem message];
    expressiveSendStyleID2 = [message2 expressiveSendStyleID];
    if ([CKImpactEffectManager identifierIsAnimatedImpactEffect:expressiveSendStyleID2])
    {
      v12 = messageCopy;
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v17 = [chatItems indexOfObject:v12];

      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:v17];
        [(CKTranscriptCollectionViewController *)self setHiddenBalloonViews:v18];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_21:
  [(CKTranscriptCollectionViewController *)self playImpactEffectIfNecessaryAutoplayingOutgoingEffect:_allowsEffectAutoPlayback2 autoplayingIncomingEffect:_allowsEffectAutoPlayback impactEffectChatItem:v12];
  [(CKTranscriptCollectionViewController *)self playFullscreenEffectIfNecessaryAutoplayingOutgoingEffect:_allowsEffectAutoPlayback2 autoplayingIncomingEffect:_allowsEffectAutoPlayback insertedUnreadMessage:messageCopy insertedLocalUnsentChatItem:itemCopy];
}

- (void)playImpactEffectIfNecessaryAutoplayingOutgoingEffect:(BOOL)effect autoplayingIncomingEffect:(BOOL)incomingEffect impactEffectChatItem:(id)item
{
  incomingEffectCopy = incomingEffect;
  effectCopy = effect;
  v20[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v9 = itemCopy;
  if (effectCopy || incomingEffectCopy)
  {
    if (itemCopy)
    {
      presentedViewController = [(CKTranscriptCollectionViewController *)self presentedViewController];

      if (!presentedViewController)
      {
        iMChatItem = [v9 IMChatItem];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          message = [iMChatItem message];
          message2 = [v9 message];
          expressiveSendStyleID = [message2 expressiveSendStyleID];
          v15 = [CKImpactEffectManager identifierShouldPlayInWindow:expressiveSendStyleID];

          if (!v15)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __140__CKTranscriptCollectionViewController_playImpactEffectIfNecessaryAutoplayingOutgoingEffect_autoplayingIncomingEffect_impactEffectChatItem___block_invoke;
            block[3] = &unk_1E72EBA18;
            block[4] = self;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }

          impactEffectManager = [(CKTranscriptCollectionViewController *)self impactEffectManager];
          v20[0] = message;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
          [impactEffectManager animateMessages:v17];

          chat = [(CKTranscriptCollectionViewController *)self chat];
          [chat markChatItemAsPlayedExpressiveSend:iMChatItem];
        }
      }
    }
  }
}

- (void)playFullscreenEffectIfNecessaryAutoplayingOutgoingEffect:(BOOL)effect autoplayingIncomingEffect:(BOOL)incomingEffect insertedUnreadMessage:(id)message insertedLocalUnsentChatItem:(id)item
{
  incomingEffectCopy = incomingEffect;
  effectCopy = effect;
  messageCopy = message;
  itemCopy = item;
  if (effectCopy)
  {
    selfCopy2 = self;
    v13 = itemCopy;
LABEL_9:
    [(CKTranscriptCollectionViewController *)selfCopy2 startFullscreenEffectIfNeededForChatItem:v13];
    goto LABEL_10;
  }

  if (incomingEffectCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Calling startFullscreenEffectIfNeededForChatItem for incomingEffect", v15, 2u);
      }
    }

    selfCopy2 = self;
    v13 = messageCopy;
    goto LABEL_9;
  }

LABEL_10:
}

- (id)newChatItemsWithNotifications:(id)notifications
{
  v18 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseObjectEnumerator = [notificationsCopy reverseObjectEnumerator];
  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = [(CKTranscriptCollectionViewController *)self newChatItemWithNotification:*(*(&v13 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)newChatItemWithNotification:(id)notification
{
  notificationCopy = notification;
  [(CKTranscriptCollectionViewController *)self _fullMaxWidth];
  [(CKTranscriptCollectionViewController *)self balloonMaxWidth];
  v5 = [CKChatItem chatItemWithNotification:"chatItemWithNotification:balloonMaxWidth:fullMaxWidth:" balloonMaxWidth:notificationCopy fullMaxWidth:?];

  return v5;
}

- (id)newChatItemsWithIMChatItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v8 = [delegate traitCollectionForTranscriptCollectionViewController:self];

  [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
  v10 = v9;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(CKTranscriptCollectionViewController *)a2 newChatItemsWithIMChatItems:v16];
        }

        v17 = [(CKTranscriptCollectionViewController *)self newChatItemWithIMChatItem:v16 traitCollection:v8 transcriptBackgroundLuminance:v10, v19];
        if (v17)
        {
          [v6 addObject:v17];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  return v6;
}

- (id)newChatItemWithIMChatItem:(id)item traitCollection:(id)collection transcriptBackgroundLuminance:(double)luminance
{
  itemCopy = item;
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKTranscriptCollectionViewController *)self _fullMaxWidth];
    v11 = v10;
    [(CKTranscriptCollectionViewController *)self balloonMaxWidth];
    v13 = [CKChatItem chatItemWithIMChatItem:itemCopy balloonMaxWidth:collectionCopy fullMaxWidth:[(CKTranscriptCollectionViewController *)self isInline] transcriptTraitCollection:v12 transcriptBackgroundLuminance:v11 overlayLayout:luminance];
    transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    [v13 setTranscriptIdentifier:transcriptIdentifier];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_diffAssociatedItemsWithOldAssociatedItems:(id)items removedAssociatedIndexes:(id *)indexes insertedAssociatedIndexes:(id *)associatedIndexes
{
  itemsCopy = items;
  associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
  array = associatedChatItems;
  if (itemsCopy)
  {
    if (associatedChatItems)
    {
      goto LABEL_3;
    }
  }

  else
  {
    itemsCopy = [MEMORY[0x1E695DF70] array];
    if (array)
    {
      goto LABEL_3;
    }
  }

  array = [MEMORY[0x1E695DF70] array];
LABEL_3:
  v11 = [array differenceFromArray:itemsCopy withOptions:0 usingEquivalenceTest:&__block_literal_global_1129];
  IMIndexesFromOrderedCollectionDifference();
  v12 = 0;
  v13 = 0;
  v14 = v13;
  if (indexes)
  {
    v15 = v13;
    *indexes = v14;
  }

  if (associatedIndexes)
  {
    v16 = v12;
    *associatedIndexes = v12;
  }
}

- (void)setChatItems:(id)items removedAssociatedIndexes:(id *)indexes insertedAssociatedIndexes:(id *)associatedIndexes
{
  itemsCopy = items;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070] isConsolidatedChatItemsEnabled];

  if ((isConsolidatedChatItemsEnabled & 1) == 0)
  {
    associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v12 = [associatedChatItems copy];

    [(CKTranscriptCollectionViewController *)self setChatItems:itemsCopy];
    v16 = 0;
    [(CKTranscriptCollectionViewController *)self _diffAssociatedItemsWithOldAssociatedItems:v12 removedAssociatedIndexes:indexes insertedAssociatedIndexes:&v16];
    v13 = v16;
    if ([v13 count])
    {
      delegate = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate transcriptCollectionViewControllerDidInsertAssociatedChatItem:self];
    }

    if (associatedIndexes)
    {
      v15 = v13;
      *associatedIndexes = v13;
    }
  }
}

- (void)setChatItems:(id)items
{
  v47 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070] isConsolidatedChatItemsEnabled];

  if ((isConsolidatedChatItemsEnabled & 1) == 0)
  {
    if ([(CKTranscriptCollectionViewController *)self isSettingChatItems])
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [CKTranscriptCollectionViewController setChatItems:];
      }
    }

    [(CKTranscriptCollectionViewController *)self setSettingChatItems:1];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = MEMORY[0x1E696AD98];
        chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
        v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(chatItems, "count")}];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](itemsCopy, "count")}];
        *buf = 138412546;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Setting chatItems, existing count: %@, new count: %@", buf, 0x16u);
      }
    }

    if (self->_chatItems == itemsCopy)
    {
      goto LABEL_21;
    }

    v13 = [(NSArray *)itemsCopy copy];
    chatItems = self->_chatItems;
    self->_chatItems = v13;

    chat = [(CKTranscriptCollectionViewController *)self chat];
    if (!CKIsRunningUnitTests())
    {
      lastFinishedMessageID = [chat lastFinishedMessageID];
      lastFinishedMessageDate = [chat lastFinishedMessageDate];
      [chat __ck_updateWatermarkToMessageID:lastFinishedMessageID date:lastFinishedMessageDate];
    }

    array = [MEMORY[0x1E695DF70] array];
    speakerTransferGUID = [(CKTranscriptCollectionViewController *)self speakerTransferGUID];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0x7FFFFFFFFFFFFFFFLL;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __53__CKTranscriptCollectionViewController_setChatItems___block_invoke;
    v29[3] = &unk_1E72F2D18;
    v20 = speakerTransferGUID;
    v34 = buf;
    v35 = &v41;
    v36 = &v37;
    v30 = v20;
    selfCopy = self;
    v21 = array;
    v32 = v21;
    v22 = v13;
    v33 = v22;
    [(NSArray *)v22 enumerateObjectsUsingBlock:v29];
    [(CKTranscriptCollectionViewController *)self setAssociatedChatItems:v21];
    if (*(*&buf[8] + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = v42[3];
      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v38[3];
        *(*&buf[8] + 24) = v24;
        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = v20;
          v20 = 0;
LABEL_20:

          [(CKTranscriptCollectionViewController *)self setSpeakerTransferGUID:v20];
          delegate = [(CKTranscriptCollectionViewController *)self delegate];
          [delegate transcriptCollectionViewControllerDidSetChatItems:self];

          _Block_object_dispose(&v37, 8);
          _Block_object_dispose(&v41, 8);
          _Block_object_dispose(buf, 8);

LABEL_21:
          [(CKTranscriptCollectionViewController *)self setSettingChatItems:0];
          goto LABEL_22;
        }
      }

      else
      {
        *(*&buf[8] + 24) = v23;
      }
    }

    v25 = [(NSArray *)self->_chatItems objectAtIndex:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v25;
      mediaObject = [v25 mediaObject];
      transferGUID = [mediaObject transferGUID];

      v20 = transferGUID;
    }

    goto LABEL_20;
  }

LABEL_22:
}

void __53__CKTranscriptCollectionViewController_setChatItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 mediaObject];
    v8 = [v7 shouldSuppressPreview];

    if ((v8 & 1) == 0)
    {
      v9 = *(a1 + 32);
      v10 = [v6 mediaObject];
      v11 = [v10 transferGUID];
      LODWORD(v9) = [v9 isEqualToString:v11];

      if (v9)
      {
        *(*(*(a1 + 64) + 8) + 24) = a3;
      }

      if (([v6 isFromMe] & 1) == 0)
      {
        if (*(*(*(a1 + 72) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && ([v6 isPlayed] & 1) == 0)
        {
          *(*(*(a1 + 72) + 8) + 24) = a3;
        }

        *(*(*(a1 + 80) + 8) + 24) = a3;
      }
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v12 = [*(a1 + 40) conversation];
    v13 = [v12 chat];
    v6 = [v13 guid];

    v14 = [*(a1 + 40) conversation];
    v15 = [v14 recipientStrings];

    v16 = [*(a1 + 40) conversation];
    v17 = [v16 isBusinessConversation];
    v18 = [*(a1 + 40) transcriptIdentifier];
    [v5 configureWithConversationID:v6 recipients:v15 isBusiness:v17 context:v18];
  }

LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v5;
    v20 = v19;
    if (*(a1 + 48))
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v21 = [v19 visibleAssociatedMessageChatItems];
      v22 = [v21 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v51;
        do
        {
          v25 = 0;
          do
          {
            if (*v51 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(a1 + 48) addObject:*(*(&v50 + 1) + 8 * v25++)];
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v23);
      }

      v26 = [v20 messageHighlightChatItem];

      if (v26)
      {
        v27 = *(a1 + 48);
        v28 = [v20 messageHighlightChatItem];
        [v27 addObject:v28];
      }
    }

    if (!a3)
    {
      goto LABEL_40;
    }

    v29 = [v20 visibleAssociatedMessageChatItems];
    v30 = [v29 count];

    if (!v30)
    {
      goto LABEL_40;
    }

    v31 = [*(a1 + 56) objectAtIndex:a3 - 1];
    v32 = [v20 IMChatItem];
    v33 = [v32 contiguousType];

    v34 = [v31 IMChatItem];
    v35 = [v34 contiguousType];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v33 & 0xFE) != 2)
    {
LABEL_39:

LABEL_40:
      goto LABEL_41;
    }

    v36 = v31;
    v37 = [v36 visibleAssociatedMessageChatItems];
    v38 = [v37 count];

    if (v38)
    {
      v39 = +[CKUIBehavior sharedBehaviors];
      [v39 messageAcknowledgmentTranscriptBalloonRelativePosition];
      v41 = v40;

      [v36 size];
      v43 = v41 + v42;
      [v20 size];
      v45 = v43 < v44 - v41;
    }

    else
    {
      v45 = 0;
    }

    [v20 size];
    v47 = v46;
    [v36 size];
    if (v45 || v47 < v48)
    {
      if (v35 == 2)
      {
        [v36 setContiguousTypeOverride:3];
        v49 = 0;
        goto LABEL_37;
      }

      if (v35 == 1)
      {
        v49 = v33 == 2;
        [v36 setContiguousTypeOverride:0];
LABEL_37:
        [v20 setContiguousTypeOverride:v49];
      }
    }

    goto LABEL_39;
  }

LABEL_41:
}

- (void)loadEarlierMessagesForConversation
{
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  [conversation loadMoreMessages];
}

- (void)fetchEarlierMessagesForConversation:(id)conversation
{
  conversationCopy = conversation;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  [conversation fetchMoreMessages:conversationCopy];
}

- (void)loadRecentMessagesForConversation
{
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  [conversation loadMoreMessagesAfterLastMessage];
}

- (void)fetchRecentMessagesForConversation:(id)conversation
{
  conversationCopy = conversation;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  [conversation fetchMoreMessagesAfterLastMessage:conversationCopy];
}

- (void)loadEarlierMessages
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[CKTranscriptCollectionViewController loadEarlierMessages]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  [(CKTranscriptCollectionViewController *)self setIsLoadingMoreMessages:1];
  v4 = IMLogHandleForCategory();
  v5 = os_signpost_id_generate(v4);
  v6 = v4;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "historyLoading", "", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__CKTranscriptCollectionViewController_loadEarlierMessages__block_invoke;
  v9[3] = &unk_1E72F2D90;
  v9[4] = self;
  v10 = v7;
  v11 = v5;
  v8 = v7;
  [(CKTranscriptCollectionViewController *)self fetchEarlierMessagesForConversation:v9];
}

void __59__CKTranscriptCollectionViewController_loadEarlierMessages__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) collectionView];
  v5 = [*(a1 + 32) collectionViewLayout];
  [v4 contentOffset];
  v7 = v6;
  v9 = v8;
  [v4 contentSize];
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 40);
  v15 = v14;
  v16 = *(a1 + 48);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "updateTranscript", "", buf, 2u);
  }

  v17 = *(a1 + 32);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __59__CKTranscriptCollectionViewController_loadEarlierMessages__block_invoke_1130;
  v36[3] = &unk_1E72F2D40;
  v37 = v4;
  v39 = v3;
  v18 = *(a1 + 40);
  v20 = *(a1 + 40);
  v19 = *(a1 + 48);
  v38 = v18;
  v40 = v19;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __59__CKTranscriptCollectionViewController_loadEarlierMessages__block_invoke_1131;
  v26[3] = &unk_1E72F2D68;
  v31 = v7;
  v32 = v9;
  v33 = v11;
  v34 = v13;
  v27 = v5;
  v28 = v37;
  v29 = *(a1 + 32);
  v21 = v20;
  v22 = *(a1 + 48);
  v30 = v21;
  v35 = v22;
  v23 = v37;
  v24 = v5;
  v25 = v3;
  [v17 updateTranscript:v36 animated:0 completion:v26];
}

void __59__CKTranscriptCollectionViewController_loadEarlierMessages__block_invoke_1130(uint64_t a1)
{
  [*(a1 + 32) beginDisablingTranscriptDynamicsForReason:11];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "updateTranscript", "", v5, 2u);
  }
}

void __59__CKTranscriptCollectionViewController_loadEarlierMessages__block_invoke_1131(uint64_t a1)
{
  [*(a1 + 32) prepareLayout];
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  [*(a1 + 32) collectionViewContentSize];
  [*(a1 + 40) setContentOffset:{v2, v3 + v4 - *(a1 + 88)}];
  [*(a1 + 48) setIsLoadingMoreMessages:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CKTranscriptCollectionViewController_loadEarlierMessages__block_invoke_2;
  block[3] = &unk_1E72EBC38;
  v8 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 96);
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__CKTranscriptCollectionViewController_loadEarlierMessages__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) endDisablingTranscriptDynamicsForReason:11];
  v2 = *(a1 + 40);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "historyLoading", "", v5, 2u);
  }
}

- (void)loadRecentMessages
{
  [(CKTranscriptCollectionViewController *)self setIsLoadingMoreMessages:1];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__CKTranscriptCollectionViewController_loadRecentMessages__block_invoke;
  v3[3] = &unk_1E72F2478;
  v3[4] = self;
  [(CKTranscriptCollectionViewController *)self fetchRecentMessagesForConversation:v3];
}

void __58__CKTranscriptCollectionViewController_loadRecentMessages__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CKTranscriptCollectionViewController_loadRecentMessages__block_invoke_2;
  v7[3] = &unk_1E72EBDB8;
  v8 = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CKTranscriptCollectionViewController_loadRecentMessages__block_invoke_3;
  v5[3] = &unk_1E72EBA18;
  v6 = *(a1 + 32);
  v4 = v3;
  [v6 updateTranscript:v7 animated:0 completion:v5];
}

- (void)_loadMessagesIfNeededWithTargetContentOffset:(CGPoint)offset forKeyboardNavigation:(BOOL)navigation
{
  navigationCopy = navigation;
  y = offset.y;
  x = offset.x;
  if ([(CKTranscriptCollectionViewController *)self _isHistoryLoadingNeededForDirection:0 withTargetContentOffset:navigation forKeyboardNavigation:?])
  {
    [(CKTranscriptCollectionViewController *)self loadEarlierMessages];
  }

  if ([(CKTranscriptCollectionViewController *)self _isHistoryLoadingNeededForDirection:1 withTargetContentOffset:navigationCopy forKeyboardNavigation:x, y])
  {

    [(CKTranscriptCollectionViewController *)self loadRecentMessages];
  }
}

- (BOOL)_isHistoryLoadingNeededForDirection:(int64_t)direction withTargetContentOffset:(CGPoint)offset forKeyboardNavigation:(BOOL)navigation
{
  y = offset.y;
  x = offset.x;
  if (-[CKTranscriptCollectionViewController isLoadingMoreMessages](self, "isLoadingMoreMessages", direction, navigation) || (-[CKTranscriptCollectionViewController chat](self, "chat"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A5780]], v9, (v10 & 1) != 0) || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "showsLoadMoreItem"), v11, !v12) || (-[CKTranscriptCollectionViewController __CurrentTestName](self, "__CurrentTestName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v14))
  {
    LOBYTE(v15) = 0;
  }

  else if ([(CKTranscriptCollectionViewController *)self isLoadMoreSpinnerVisibleForDirection:direction]|| (v15 = [(CKTranscriptCollectionViewController *)self isLoadMoreSpinnerAboutToBeVisibleForDirection:direction withTargetContentOffset:x, y]))
  {
    LOBYTE(v15) = 1;
  }

  return v15;
}

- (void)loadMessagesIfNeededSkipValidation
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  v7 = v6;

  [(CKTranscriptCollectionViewController *)self _loadMessagesIfNeededWithTargetContentOffset:1 forKeyboardNavigation:v5, v7];
}

- (id)loadMoreItemIndexPathForDirection:(int64_t)direction
{
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = chatItems;
  if (direction == 1)
  {
    lastObject = [chatItems lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 count] - 1;
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (!direction)
  {
    lastObject = [chatItems firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 0;
LABEL_7:
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:0];
LABEL_9:

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)isLoadMoreSpinnerVisibleForDirection:(int64_t)direction
{
  if (![(CKViewController *)self appeared])
  {
    return 0;
  }

  v5 = [(CKTranscriptCollectionViewController *)self loadMoreItemIndexPathForDirection:direction];
  if (v5)
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [collectionView cellForItemAtIndexPath:v5];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isLoadMoreSpinnerAboutToBeVisibleForDirection:(int64_t)direction withTargetContentOffset:(CGPoint)offset
{
  y = offset.y;
  v7 = [(CKTranscriptCollectionViewController *)self loadMoreItemIndexPathForDirection:offset.x];
  if (v7)
  {
    collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    [collectionView frame];
    v11 = v10;

    v12 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v7];
    [v12 frame];
    if (direction == 1)
    {
      if (y + v11 < CGRectGetMinY(*&v13) - v11)
      {
LABEL_5:
        v17 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else if (direction || y > v11 + CGRectGetMaxY(*&v13))
    {
      goto LABEL_5;
    }

    v17 = 1;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (id)lastMessagePartChatItem
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__CKTranscriptCollectionViewController_lastMessagePartChatItem__block_invoke;
  v5[3] = &unk_1E72EEC48;
  v5[4] = &v6;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __63__CKTranscriptCollectionViewController_lastMessagePartChatItem__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)indexPathForLastMessagePart
{
  lastMessagePartChatItem = [(CKTranscriptCollectionViewController *)self lastMessagePartChatItem];
  v4 = lastMessagePartChatItem;
  if (lastMessagePartChatItem)
  {
    iMChatItem = [lastMessagePartChatItem IMChatItem];
    guid = [iMChatItem guid];
    v7 = [(CKTranscriptCollectionViewController *)self indexPathForChatItemGUID:guid];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)indexPathForLastItem
{
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  __ck_indexPathForLastItem = [collectionView __ck_indexPathForLastItem];

  return __ck_indexPathForLastItem;
}

- (id)indexPathForBalloonView:(id)view
{
  viewCopy = view;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__33;
  v19 = __Block_byref_object_dispose__33;
  v20 = 0;
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CKTranscriptCollectionViewController_indexPathForBalloonView___block_invoke;
  v11[3] = &unk_1E72F2790;
  v7 = collectionView;
  v12 = v7;
  v8 = viewCopy;
  v13 = v8;
  v14 = &v15;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __64__CKTranscriptCollectionViewController_indexPathForBalloonView___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = [*(a1 + 32) cellForItemAtIndexPath:?];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    v6 = [v4 balloonView];

    if (v5 == v6)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }
  }
}

- (id)messagePartForBalloonView:(id)view
{
  v4 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:view];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [chatItems objectAtIndex:{objc_msgSend(v4, "item")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)balloonPluginForViewController:(id)controller
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [chatItems countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(chatItems);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v12 = [v10 extensibleViewControllerForContext:transcriptIdentifier];

          if (v12 == controllerCopy)
          {
            mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
            iMChatItem = [v10 IMChatItem];
            type = [iMChatItem type];
            v18 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:type];

            v14 = v18;
            goto LABEL_17;
          }
        }
      }

      v6 = [chatItems countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = controllerCopy;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKTranscriptCollectionViewController could not find balloon plugin corresponding to viewController %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (id)balloonViewAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (objc_opt_respondsToSelector())
  {
    balloonView = [v6 balloonView];
  }

  else
  {
    balloonView = 0;
  }

  return balloonView;
}

- (id)balloonViewForChatItemGUID:(id)d getChatItem:(id *)item
{
  dCopy = d;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__CKTranscriptCollectionViewController_balloonViewForChatItemGUID_getChatItem___block_invoke;
  v18[3] = &unk_1E72F2DB8;
  v8 = dCopy;
  v19 = v8;
  v9 = [chatItems indexOfObjectPassingTest:v18];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    balloonView = 0;
  }

  else
  {
    chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
    v12 = [chatItems2 objectAtIndexedSubscript:v9];

    v13 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v15 = [collectionView cellForItemAtIndexPath:v13];

    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      balloonView = [v15 balloonView];
      if (item)
      {
        v16 = v12;
        *item = v12;
      }
    }

    else
    {
      balloonView = 0;
    }
  }

  return balloonView;
}

uint64_t __79__CKTranscriptCollectionViewController_balloonViewForChatItemGUID_getChatItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 IMChatItem];
  v7 = [v6 guid];

  if (v7)
  {
    v8 = [*(a1 + 32) isEqualToString:v7];
    *a4 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)balloonViewForChatItem:(id)item
{
  iMChatItem = [item IMChatItem];
  guid = [iMChatItem guid];
  v6 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItemGUID:guid getChatItem:0];

  return v6;
}

- (id)cellForChatItem:(id)item
{
  itemCopy = item;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [chatItems indexOfObject:itemCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    v7 = [collectionView cellForItemAtIndexPath:v9];
  }

  return v7;
}

- (id)chatItemForCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  if ([v6 section])
  {
    [(CKTranscriptCollectionViewController *)self associatedChatItems];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self chatItems];
  }
  v7 = ;
  item = [v6 item];
  if ((item & 0x8000000000000000) != 0 || (v9 = item, item >= [v7 count]))
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 objectAtIndex:v9];
  }

  return v10;
}

- (id)chatItemForGUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [chatItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(chatItems);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        iMChatItem = [v9 IMChatItem];
        guid = [iMChatItem guid];
        v12 = [guid isEqualToString:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [chatItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)associatedChatItemForGUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
  v6 = [associatedChatItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(associatedChatItems);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        iMChatItem = [v9 IMChatItem];
        guid = [iMChatItem guid];
        v12 = [guid isEqualToString:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [associatedChatItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)cellForAssociatedChatItem:(id)item
{
  itemCopy = item;
  associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
  v6 = [associatedChatItems indexOfObject:itemCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:1];
    v7 = [collectionView cellForItemAtIndexPath:v9];
  }

  return v7;
}

- (void)updateTargetAlphaForVisibleChatItems
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v9];
        delegate = [(CKTranscriptCollectionViewController *)self delegate];
        [delegate transcriptCollectionViewController:self targetAlphaForChatItem:v10];
        v13 = v12;

        if (v13 != -1.0)
        {
          if (objc_opt_respondsToSelector())
          {
            balloonView = [v9 balloonView];
          }

          else
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_12;
            }

            balloonView = [v9 imageView];
          }

          v15 = balloonView;
          [balloonView setAlpha:v13];
        }

LABEL_12:
      }

      v6 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)selectChatItem:(id)item
{
  itemCopy = item;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [chatItems indexOfObject:itemCopy];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0];
    [collectionView selectItemAtIndexPath:v7 animated:0 scrollPosition:0];

    selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
    iMChatItem = [itemCopy IMChatItem];
    guid = [iMChatItem guid];
    v11 = [CKBalloonSelectionState balloonSelectionState:0];
    [selectionManager addSelectedMessageGuid:guid selectionState:v11];
  }
}

- (void)updateLastAddressedHandleID:(id)d lastAddressedSIMID:(id)iD
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  chat = [conversation chat];
  [chat setLastAddressedHandleID:dCopy];

  conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
  chat2 = [conversation2 chat];
  [chat2 setLastAddressedSIMID:iDCopy];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      conversation3 = [(CKTranscriptCollectionViewController *)self conversation];
      chat3 = [conversation3 chat];
      guid = [chat3 guid];
      v16 = 138412290;
      v17 = guid;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "We just updated the last addressed handle and sim id for chat %@ so refreshing service for sending.", &v16, 0xCu);
    }
  }

  [(CKConversation *)self->_conversation refreshServiceForSending];
}

- (void)touchUpInsideNotifyAnywayButton:(id)button
{
  v25 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  chat = [conversation chat];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      guid = [chat guid];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = guid;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "User selected notify anyway button in chat %@", &buf, 0xCu);
    }
  }

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__33;
  v23 = __Block_byref_object_dispose__33;
  v24 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__CKTranscriptCollectionViewController_touchUpInsideNotifyAnywayButton___block_invoke;
  v17[3] = &unk_1E72EEC48;
  v17[4] = &buf;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v17];
  v10 = *(*(&buf + 1) + 40);
  if (v10)
  {
    iMChatItem = [v10 IMChatItem];
    [chat markChatItemAsNotifyRecipient:iMChatItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = *(*(&buf + 1) + 40);
      message = [v12 message];
      if (message)
      {
        impactEffectManager = [(CKTranscriptCollectionViewController *)self impactEffectManager];
        v19 = message;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
        [impactEffectManager animateMessages:v15 withEffectIdentifier:@"com.apple.MobileSMS.expressivesend.loud" beginAnimationFromTranscriptPresentedState:1];
      }
    }
  }

  else
  {
    iMChatItem = IMLogHandleForCategory();
    if (os_log_type_enabled(iMChatItem, OS_LOG_TYPE_ERROR))
    {
      guid2 = [chat guid];
      [(CKTranscriptCollectionViewController *)guid2 touchUpInsideNotifyAnywayButton:v18];
    }
  }

  _Block_object_dispose(&buf, 8);
}

void __72__CKTranscriptCollectionViewController_touchUpInsideNotifyAnywayButton___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [v9 message];
    if ([v10 isFromMe] && !objc_msgSend(v10, "scheduleType"))
    {
      if (([v10 wasDeliveredQuietly] & 1) == 0 && IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v10 guid];
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Sending a notify recipient command for a message which had not received a delivered quietly receipt yet. Message: %@", &v13, 0xCu);
        }
      }

      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)translationIndicatorCell:(id)cell didChangeTranslationVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  chat = [(CKTranscriptCollectionViewController *)self chat];
  [chat setShowingTranslatedText:visibilityCopy];
}

- (void)translationIndicatorCellDidSelectStopTranslation:(id)translation
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  chat2 = [(CKTranscriptCollectionViewController *)self chat];
  translationLanguageCode = [chat2 translationLanguageCode];
  [chat setAutomaticallyTranslate:0 languageCode:translationLanguageCode userLanguageCode:0];
}

- (id)menuConfigurationForTranslationIndicatorCell:(id)cell
{
  v4 = objc_alloc_init(CKAutomaticTranslationIndicatorCellMenuConfiguration);
  chat = [(CKTranscriptCollectionViewController *)self chat];
  translationLanguageCode = [chat translationLanguageCode];
  [(CKAutomaticTranslationIndicatorCellMenuConfiguration *)v4 setLocalLanguageCode:translationLanguageCode];

  chat2 = [(CKTranscriptCollectionViewController *)self chat];
  userTranslationLanguageCode = [chat2 userTranslationLanguageCode];
  [(CKAutomaticTranslationIndicatorCellMenuConfiguration *)v4 setRecipientLanguageCode:userTranslationLanguageCode];

  chat3 = [(CKTranscriptCollectionViewController *)self chat];
  -[CKAutomaticTranslationIndicatorCellMenuConfiguration setLocalLanguageSelected:](v4, "setLocalLanguageSelected:", [chat3 isShowingTranslationText]);

  return v4;
}

- (void)touchUpInsideShowHideTranslationButton:(id)button
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  chat2 = [(CKTranscriptCollectionViewController *)self chat];
  translationLanguageCode = [chat2 translationLanguageCode];
  v7 = [chat checkTranslationLanguageStatusForLanguageCode:translationLanguageCode];

  chat3 = [(CKTranscriptCollectionViewController *)self chat];
  chat4 = [(CKTranscriptCollectionViewController *)self chat];
  userTranslationLanguageCode = [chat4 userTranslationLanguageCode];
  v11 = [chat3 checkTranslationLanguageStatusForLanguageCode:userTranslationLanguageCode];

  v34 = [MEMORY[0x1E695DFA8] set];
  chat5 = [(CKTranscriptCollectionViewController *)self chat];
  if (![chat5 shouldShowIncomingTranslationIndicator])
  {
LABEL_8:

    goto LABEL_9;
  }

  chat6 = [(CKTranscriptCollectionViewController *)self chat];
  isAutomaticTranslationEnabled = [chat6 isAutomaticTranslationEnabled];

  if ((isAutomaticTranslationEnabled & 1) == 0)
  {
    chat7 = [(CKTranscriptCollectionViewController *)self chat];
    chat5 = [chat7 incomingTranslationLanguageCode];

    chat8 = [(CKTranscriptCollectionViewController *)self chat];
    v17 = [chat8 checkTranslationLanguageStatusForLanguageCode:chat5];

    if (v17 <= 1)
    {
      if (chat5)
      {
        chat9 = [(CKTranscriptCollectionViewController *)self chat];
        usersPreferredLanguageIdentifier = [chat9 usersPreferredLanguageIdentifier];

        if (usersPreferredLanguageIdentifier)
        {
          chat10 = [(CKTranscriptCollectionViewController *)self chat];
          usersPreferredLanguageIdentifier2 = [chat10 usersPreferredLanguageIdentifier];
          [v34 addObject:usersPreferredLanguageIdentifier2];
        }
      }
    }

    chat11 = [(CKTranscriptCollectionViewController *)self chat];
    chat12 = [(CKTranscriptCollectionViewController *)self chat];
    usersPreferredLanguageIdentifier3 = [chat12 usersPreferredLanguageIdentifier];
    [chat11 setAutomaticallyTranslate:1 languageCode:chat5 userLanguageCode:usersPreferredLanguageIdentifier3];

    goto LABEL_8;
  }

LABEL_9:
  if (v7 < 2 || v11 <= 1)
  {
    chat13 = [(CKTranscriptCollectionViewController *)self chat];
    translationLanguageCode2 = [chat13 translationLanguageCode];

    if (translationLanguageCode2 && v7 <= 1)
    {
      chat14 = [(CKTranscriptCollectionViewController *)self chat];
      translationLanguageCode3 = [chat14 translationLanguageCode];
      [v34 addObject:translationLanguageCode3];
    }

    chat15 = [(CKTranscriptCollectionViewController *)self chat];
    userTranslationLanguageCode2 = [chat15 userTranslationLanguageCode];

    if (userTranslationLanguageCode2 && v11 <= 1)
    {
      chat16 = [(CKTranscriptCollectionViewController *)self chat];
      userTranslationLanguageCode3 = [chat16 userTranslationLanguageCode];
      [v34 addObject:userTranslationLanguageCode3];
    }
  }

  if ([v34 count])
  {
    allObjects = [v34 allObjects];
    [(CKTranscriptCollectionViewController *)self startDownloadingTranslationAssetsForLanguageCodes:allObjects completion:&__block_literal_global_1137];
  }
}

- (void)setShowingTranslatedText:(BOOL)text
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  hideShowPendingAnimations = [collectionView hideShowPendingAnimations];
  [hideShowPendingAnimations addObject:uUID];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CKTranscriptCollectionViewController_setShowingTranslatedText___block_invoke;
  v11[3] = &unk_1E72ED8D8;
  v11[4] = self;
  textCopy = text;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CKTranscriptCollectionViewController_setShowingTranslatedText___block_invoke_2;
  v9[3] = &unk_1E72EB8D0;
  v9[4] = self;
  v10 = uUID;
  v8 = uUID;
  [(CKTranscriptCollectionViewController *)self updateTranscript:v11 animated:1 completion:v9];
}

void __65__CKTranscriptCollectionViewController_setShowingTranslatedText___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v3 = [v2 chat];

  [*(a1 + 32) setReloadingTranslationChatItems:1];
  [v3 setShowingTranslatedText:*(a1 + 40)];
}

uint64_t __65__CKTranscriptCollectionViewController_setShowingTranslatedText___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 hideShowPendingAnimations];
  [v3 removeObject:*(a1 + 40)];

  v4 = *(a1 + 32);

  return [v4 setReloadingTranslationChatItems:0];
}

- (void)touchUpInsideUnknownSenderButton:(id)button forChatItem:(id)item
{
  buttonCopy = button;
  itemCopy = item;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate2 transcriptCollectionViewController:self unknownSenderButtonTapped:buttonCopy forChatItem:itemCopy];
  }
}

- (void)transcriptMessageCell:(id)cell didTapMessageDeliveryFailureButton:(id)button
{
  v214 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  buttonCopy = button;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v199 = 0;
  v200 = &v199;
  v201 = 0x3032000000;
  v202 = __Block_byref_object_copy__33;
  v203 = __Block_byref_object_dispose__33;
  v204 = 0;
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v195[0] = MEMORY[0x1E69E9820];
  v195[1] = 3221225472;
  v195[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke;
  v195[3] = &unk_1E72F2790;
  v160 = collectionView;
  v196 = v160;
  v165 = buttonCopy;
  v197 = v165;
  v198 = &v199;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v195];

  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  if ([v200[5] section])
  {
    [(CKTranscriptCollectionViewController *)self associatedChatItems];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self chatItems];
  }
  v9 = ;
  v168 = [v9 objectAtIndex:{objc_msgSend(v200[5], "item")}];

  iMChatItem = [v168 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    message = [iMChatItem message];
  }

  else
  {
    message = 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (!stewieEnabled)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([conversation chat], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isStewieEmergencyChat"), v13, !v14))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      chat = [conversation chat];
      isStewieRoadsideChat = [chat isStewieRoadsideChat];

      if (isStewieRoadsideChat)
      {
        stewieConversationID = [iMChatItem stewieConversationID];
        mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
        mostRecentlyUsedConversationForRoadside = [mEMORY[0x1E69A5B00] mostRecentlyUsedConversationForRoadside];

        mEMORY[0x1E69A5B00]2 = [MEMORY[0x1E69A5B00] sharedInstance];
        mostRecentlyUsedRoadsideChatIdentifier = [mEMORY[0x1E69A5B00]2 mostRecentlyUsedRoadsideChatIdentifier];

        if (stewieConversationID != mostRecentlyUsedConversationForRoadside)
        {
LABEL_166:

          goto LABEL_167;
        }

        mEMORY[0x1E69A5B00]3 = [MEMORY[0x1E69A5B00] sharedInstance];
        if (![(__CFString *)mEMORY[0x1E69A5B00]3 isStewieRoadsideActive])
        {
LABEL_165:

          goto LABEL_166;
        }

        conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
        chat2 = [conversation2 chat];
        chatIdentifier = [chat2 chatIdentifier];
        v29 = [chatIdentifier isEqualToString:mostRecentlyUsedRoadsideChatIdentifier];

        if (!v29)
        {
          goto LABEL_167;
        }
      }
    }

LABEL_18:
    conversation3 = [(CKTranscriptCollectionViewController *)self conversation];
    chat3 = [conversation3 chat];
    mostRecentlyUsedRoadsideChatIdentifier = [chat3 lastAddressedSIMID];

    conversation4 = [(CKTranscriptCollectionViewController *)self conversation];
    chat4 = [conversation4 chat];
    lastAddressedHandleID = [chat4 lastAddressedHandleID];

    if (lastAddressedHandleID && [(__CFString *)lastAddressedHandleID length])
    {
      mEMORY[0x1E69A5B00]3 = lastAddressedHandleID;
    }

    else
    {
      conversation5 = [(CKTranscriptCollectionViewController *)self conversation];
      chat5 = [conversation5 chat];
      account = [chat5 account];
      mEMORY[0x1E69A5B00]3 = [account strippedLogin];

      conversation6 = [(CKTranscriptCollectionViewController *)self conversation];
      chat6 = [conversation6 chat];
      [chat6 setLastAddressedHandleID:mEMORY[0x1E69A5B00]3];

      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v207 = mEMORY[0x1E69A5B00]3;
          _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "No last addressed handle or simId on chat, using handle from account %@", buf, 0xCu);
        }
      }
    }

    __ck_isiMessage = [message __ck_isiMessage];
    if ([message scheduleType] == 2 && (v41 = objc_msgSend(message, "scheduleState"), v41 <= 5))
    {
      v151 = 0x36u >> v41;
    }

    else
    {
      LOBYTE(v151) = 0;
    }

    error = [message error];
    code = [error code];
    v148 = code == 43;

    if ([v168 canSendAsTextMessage] && objc_msgSend(MEMORY[0x1E69A5CA0], "smsEnabled"))
    {
      conversation7 = [(CKTranscriptCollectionViewController *)self conversation];
      isBusinessConversation = [conversation7 isBusinessConversation];

      v157 = isBusinessConversation ^ 1;
    }

    else
    {
      v157 = 0;
    }

    IsEmail = IMStringIsEmail();
    mEMORY[0x1E69A5B00]4 = [MEMORY[0x1E69A5B00] sharedInstance];
    if ([mEMORY[0x1E69A5B00]4 isSatelliteConnectionActive])
    {
      conversation8 = [(CKTranscriptCollectionViewController *)self conversation];
      chat7 = [conversation8 chat];
      account2 = [chat7 account];
      service = [account2 service];
      satelliteSMSService = [MEMORY[0x1E69A5CA0] satelliteSMSService];
      v52 = service == satelliteSMSService;

      if (!v52 || ![v168 canSendAsTextMessageOverSatellite] || !objc_msgSend(MEMORY[0x1E69A5CA0], "smsEnabled"))
      {
        v153 = 0;
LABEL_41:
        if (IMOSLoggingEnabled())
        {
          v53 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = @"NO";
            if (v153)
            {
              v54 = @"YES";
            }

            *buf = 138412290;
            v207 = v54;
            _os_log_impl(&dword_19020E000, v53, OS_LOG_TYPE_INFO, "Send as text over satellite :%@", buf, 0xCu);
          }
        }

        if (IMSharedHelperDeviceHasMultipleSubscriptions() && ([mostRecentlyUsedRoadsideChatIdentifier length] || -[__CFString length](mEMORY[0x1E69A5B00]3, "length")))
        {
          mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
          ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
          v57 = [ctSubscriptionInfo __im_switchSubscriptionContextFromPhoneNumber:mEMORY[0x1E69A5B00]3 simID:mostRecentlyUsedRoadsideChatIdentifier];

          conversation9 = [(CKTranscriptCollectionViewController *)self conversation];
          sendingService = [conversation9 sendingService];
          conversation10 = [(CKTranscriptCollectionViewController *)self conversation];
          chat8 = [conversation10 chat];
          v62 = [sendingService __ck_isSendingAllowedForChat:chat8];

          if (IMOSLoggingEnabled())
          {
            v63 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v64 = @"NO";
              *buf = 138413058;
              v207 = mEMORY[0x1E69A5B00]3;
              if (v62)
              {
                v64 = @"YES";
              }

              v208 = 2112;
              v209 = mostRecentlyUsedRoadsideChatIdentifier;
              v210 = 2112;
              v211 = v57;
              v212 = 2112;
              v213 = v64;
              _os_log_impl(&dword_19020E000, v63, OS_LOG_TYPE_INFO, "Last addressed handle: %@ last simID %@. New context to switch to for resend: %@. Sending allowed: %@", buf, 0x2Au);
            }
          }

          labelID = [v57 labelID];
          v66 = labelID;
          if (v62 && [labelID length] && (objc_msgSend(v66, "isEqualToString:", mostRecentlyUsedRoadsideChatIdentifier) & 1) == 0 && (objc_msgSend(v57, "phoneNumber"), v67 = objc_claimAutoreleasedReturnValue(), IMNormalizePhoneNumber(), v68 = objc_claimAutoreleasedReturnValue(), IMNormalizePhoneNumber(), v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v68, "isEqualToString:", v69), v69, v68, v67, (v70 & 1) == 0))
          {
            v156 = v66;
            phoneNumber = [v57 phoneNumber];
            v139 = MEMORY[0x1E696AEC0];
            v140 = CKFrameworkBundle();
            v141 = [v140 localizedStringForKey:@"TRY_AGAIN_WITH_SIM" value:&stru_1F04268F8 table:@"ChatKit"];
            label = [v57 label];
            v142 = [v139 stringWithFormat:v141, label];

            mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
            LODWORD(v139) = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

            if (v139)
            {
              v145 = @"\u200F";
            }

            else
            {
              v145 = @"\u200E";
            }

            v146 = [(__CFString *)v145 stringByAppendingString:v142];

            v162 = v146;
          }

          else
          {
            v162 = 0;
            phoneNumber = 0;
            v156 = 0;
          }
        }

        else
        {
          v162 = 0;
          phoneNumber = 0;
          v156 = 0;
        }

        if (code == 43 && (IsEmail & 1 | ((v157 & 1) == 0) || [conversation isToEmailAddress]))
        {
          if (IMOSLoggingEnabled())
          {
            v71 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v71, OS_LOG_TYPE_INFO, "Hawking: Can't downgrade to SMS, showing non-cellular blackhole message.", buf, 2u);
            }
          }

          [(CKTranscriptCollectionViewController *)self presentHawkingPromptForChatItem:iMChatItem];
LABEL_164:

          goto LABEL_165;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v149 = iMChatItem;
          dataSource = [v149 dataSource];
          bundleID = [dataSource bundleID];
          v74 = IMBalloonExtensionIDWithSuffix();
          v75 = [bundleID isEqualToString:v74];

          if (v75)
          {
            v193 = 0u;
            v194 = 0u;
            v191 = 0u;
            v192 = 0u;
            visibleAssociatedMessageChatItems = [v149 visibleAssociatedMessageChatItems];
            v77 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v191 objects:v205 count:16];
            if (v77)
            {
              v78 = *v192;
              while (2)
              {
                for (i = 0; i != v77; ++i)
                {
                  if (*v192 != v78)
                  {
                    objc_enumerationMutation(visibleAssociatedMessageChatItems);
                  }

                  v80 = *(*(&v191 + 1) + 8 * i);
                  if ([v80 isFromMe] && objc_msgSend(v80, "failed"))
                  {
                    v164 = v80;
                    goto LABEL_86;
                  }
                }

                v77 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v191 objects:v205 count:16];
                if (v77)
                {
                  continue;
                }

                break;
              }
            }

            v164 = 0;
LABEL_86:

LABEL_87:
            if (code == 43)
            {
              v81 = CKFrameworkBundle();
              v155 = [v81 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_RESEND_AS_SMS" value:&stru_1F04268F8 table:@"ChatKit"];

              v82 = CKFrameworkBundle();
              fallbackSendString = [v82 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_MESSAGE_LEARN_MORE" value:&stru_1F04268F8 table:@"ChatKit"];
              v154 = 0;
              v150 = 0;
              v83 = 0;
              v84 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_89:

LABEL_111:
              v101 = +[CKUIBehavior sharedBehaviors];
              [v101 isSizeConstrained];

              if (code == 43)
              {
                mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
                [mEMORY[0x1E69A8168] trackSpamEvent:9];

                v103 = CKFrameworkBundle();
                v152 = [v103 localizedStringForKey:@"HAWKING_FAILURE_ACTION_SHEET_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

                v104 = [(CKTranscriptCollectionViewController *)self hawkingFailurePromptMessageForHandle:mEMORY[0x1E69A5B00]3];
              }

              else
              {
                if (v164)
                {
                  v105 = CKFrameworkBundle();
                  v152 = [v105 localizedStringForKey:@"POLLS_VOTE_FAILED" value:&stru_1F04268F8 table:@"ChatKit"];

                  v106 = CKFrameworkBundle();
                  v104 = [v106 localizedStringForKey:@"POLLS_VOTE_FAILED_ALERT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
                }

                else
                {
                  if (__ck_isiMessage)
                  {
                    if ((v151 & 1) != 0 && ([message time], v107 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DF00], "now"), v108 = objc_claimAutoreleasedReturnValue(), v109 = objc_msgSend(v107, "compare:", v108) == 1, v108, v107, v109))
                    {
                      if (v155)
                      {
                        chat9 = [conversation chat];
                        allParticipantsBlocked = [chat9 allParticipantsBlocked];

                        if (allParticipantsBlocked)
                        {
                          if (CKIsRunningInMacCatalyst())
                          {
                            v106 = CKFrameworkBundle();
                            [v106 localizedStringForKey:@"SCHEDULED_MESSAGE_FAILURE_DESCRIPTION_BLOCKED_SCHEDULE_AGAIN_MAC" value:&stru_1F04268F8 table:@"ChatKit"];
                          }

                          else
                          {
                            v106 = CKFrameworkBundle();
                            [v106 localizedStringForKey:@"SCHEDULED_MESSAGE_FAILURE_DESCRIPTION_BLOCKED_SCHEDULE_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];
                          }
                        }

                        else if (CKIsRunningInMacCatalyst())
                        {
                          v106 = CKFrameworkBundle();
                          [v106 localizedStringForKey:@"SCHEDULED_MESSAGE_FAILURE_DESCRIPTION_SCHEDULE_AGAIN_MAC" value:&stru_1F04268F8 table:@"ChatKit"];
                        }

                        else
                        {
                          v106 = CKFrameworkBundle();
                          [v106 localizedStringForKey:@"SCHEDULED_MESSAGE_FAILURE_DESCRIPTION_SCHEDULE_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];
                        }
                        v152 = ;
                      }

                      else
                      {
                        v106 = CKFrameworkBundle();
                        v152 = [v106 localizedStringForKey:@"SCHEDULED_MESSAGE_FAILURE_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
                      }
                    }

                    else
                    {
                      v106 = CKFrameworkBundle();
                      v152 = [v106 localizedStringForKey:@"MADRID_FAILURE_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
                    }
                  }

                  else
                  {
                    v106 = CKFrameworkBundle();
                    v152 = [v106 localizedStringForKey:@"FULL_FAILURE_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
                  }

                  v104 = 0;
                }
              }

              v112 = [CKAlertController alertControllerWithTitle:v152 message:v104 preferredStyle:0];
              if (v155)
              {
                v187[0] = MEMORY[0x1E69E9820];
                v187[1] = 3221225472;
                v187[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1204;
                v187[3] = &unk_1E72ED750;
                v190 = v148;
                v188 = message;
                selfCopy = self;
                v113 = [CKAlertAction actionWithTitle:v155 style:0 handler:v187];
                [v112 addAction:v113];
              }

              if (fallbackSendString)
              {
                v182[0] = MEMORY[0x1E69E9820];
                v182[1] = 3221225472;
                v182[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1205;
                v182[3] = &unk_1E72F2DE0;
                v185 = v83;
                v183 = message;
                selfCopy2 = self;
                v186 = v84;
                v114 = [CKAlertAction actionWithTitle:fallbackSendString style:0 handler:v182];
                [v112 addAction:v114];
              }

              v115 = _os_feature_enabled_impl();
              if (v154)
              {
                v116 = v115;
              }

              else
              {
                v116 = 0;
              }

              if (v116 == 1)
              {
                if (IMOSLoggingEnabled())
                {
                  v117 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19020E000, v117, OS_LOG_TYPE_INFO, "Failed to send possibly due to static key mismatch, prompting user to verify again", buf, 2u);
                  }
                }

                v181[0] = MEMORY[0x1E69E9820];
                v181[1] = 3221225472;
                v181[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1213;
                v181[3] = &unk_1E72EBFE8;
                v181[4] = self;
                v118 = [CKAlertAction actionWithTitle:v154 style:0 handler:v181];
                [v112 addAction:v118];
              }

              HasMultipleSubscriptions = IMSharedHelperDeviceHasMultipleSubscriptions();
              if (v162)
              {
                v120 = HasMultipleSubscriptions;
              }

              else
              {
                v120 = 0;
              }

              if (v120 == 1)
              {
                if (IMOSLoggingEnabled())
                {
                  v121 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v207 = phoneNumber;
                    _os_log_impl(&dword_19020E000, v121, OS_LOG_TYPE_INFO, "Resending message with %@", buf, 0xCu);
                  }
                }

                v177[0] = MEMORY[0x1E69E9820];
                v177[1] = 3221225472;
                v177[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1214;
                v177[3] = &unk_1E72EC6C0;
                v177[4] = self;
                v178 = phoneNumber;
                v179 = v156;
                v180 = message;
                v122 = [CKAlertAction actionWithTitle:v162 style:0 handler:v177];
                [v112 addAction:v122];
              }

              if (!CKIsRunningInMacCatalyst())
              {
                if (v150)
                {
                  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
                  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

                  if (isInternalInstall)
                  {
                    v174[0] = MEMORY[0x1E69E9820];
                    v174[1] = 3221225472;
                    v174[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_2;
                    v174[3] = &unk_1E72EC710;
                    v175 = message;
                    selfCopy3 = self;
                    v125 = [CKAlertAction actionWithTitle:v150 style:0 handler:v174];
                    [v112 addAction:v125];
                  }
                }
              }

              if (v164 && [v164 isFromMe])
              {
                v126 = CKFrameworkBundle();
                v127 = [v126 localizedStringForKey:@"TRY_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];
                v171[0] = MEMORY[0x1E69E9820];
                v171[1] = 3221225472;
                v171[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_3;
                v171[3] = &unk_1E72EC1A0;
                v171[4] = self;
                v172 = v164;
                v173 = message;
                v128 = [CKAlertAction actionWithTitle:v127 style:0 handler:v171];
                [v112 addAction:v128];
              }

              actions = [v112 actions];
              v130 = [actions count] == 0;

              if (v130)
              {
                [v112 setPreferredStyle:1];
              }

              actions2 = [v112 actions];
              if ([actions2 count])
              {
                v132 = CKFrameworkBundle();
                [v132 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
              }

              else
              {
                v132 = CKFrameworkBundle();
                [v132 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
              }
              v133 = ;
              v134 = [CKAlertAction actionWithTitle:v133 style:1 handler:0];
              [v112 addAction:v134];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v135 = v165;
                popoverPresentationController = [v112 popoverPresentationController];
                [v135 frame];
                [popoverPresentationController setSourceRect:?];

                popoverPresentationController2 = [v112 popoverPresentationController];
                superview = [v135 superview];
                [popoverPresentationController2 setSourceView:superview];
              }

              [(CKTranscriptCollectionViewController *)self presentViewController:v112 animated:1 completion:0];

              goto LABEL_164;
            }

            if (v164)
            {
              v154 = 0;
              v155 = 0;
              fallbackSendString = 0;
              v150 = 0;
              v83 = 0x7FFFFFFFFFFFFFFFLL;
              v84 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_111;
            }

            chat10 = [conversation chat];
            if ([chat10 canSend])
            {
              conversation11 = [(CKTranscriptCollectionViewController *)self conversation];
              sendingService2 = [conversation11 sendingService];
              conversation12 = [(CKTranscriptCollectionViewController *)self conversation];
              chat11 = [conversation12 chat];
              v90 = [sendingService2 __ck_isSendingAllowedForChat:chat11];

              if ((v151 & 1) == 0)
              {
                if (!v90)
                {
                  goto LABEL_100;
                }

LABEL_99:
                v94 = CKFrameworkBundle();
                v155 = [v94 localizedStringForKey:@"TRY_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];

                v95 = 0;
LABEL_101:
                v96 = CKFrameworkBundle();
                v150 = [v96 localizedStringForKey:@"Tap-to-Radar" value:&stru_1F04268F8 table:@"ChatKit"];

                if (v157)
                {
                  fallbackSendString = [conversation fallbackSendString];
                  v83 = 1;
                }

                else
                {
                  fallbackSendString = 0;
                  v83 = 0x7FFFFFFFFFFFFFFFLL;
                }

                if ((v153 & v95) == 1)
                {
                  v97 = CKFrameworkBundle();
                  v98 = [v97 localizedStringForKey:@"OFFER_TO_SEND_VIA_SATELLITE_SMS" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];

                  v84 = 1;
                  fallbackSendString = v98;
                }

                else
                {
                  v84 = 0x7FFFFFFFFFFFFFFFLL;
                }

                if (!_os_feature_enabled_impl() || (-[CKTranscriptCollectionViewController chat](self, "chat"), v99 = objc_claimAutoreleasedReturnValue(), v100 = [v99 ktStatus] == 16, v99, !v100))
                {
                  v154 = 0;
                  goto LABEL_111;
                }

                v82 = CKFrameworkBundle();
                v154 = [v82 localizedStringForKey:@"KT_VERIFY_CONVERSATION_DROPDOWN_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
                goto LABEL_89;
              }
            }

            else
            {

              if ((v151 & 1) == 0)
              {
                goto LABEL_100;
              }

              LOBYTE(v90) = 0;
            }

            time = [message time];
            v92 = [MEMORY[0x1E695DF00] now];
            v93 = [time compare:v92];

            if (((v93 != -1) & v90) != 0)
            {
              goto LABEL_99;
            }

LABEL_100:
            v155 = 0;
            v95 = 1;
            goto LABEL_101;
          }
        }

        else
        {
          v149 = 0;
        }

        v164 = 0;
        goto LABEL_87;
      }

      mEMORY[0x1E69A5B00]4 = [(CKTranscriptCollectionViewController *)self conversation];
      v153 = [mEMORY[0x1E69A5B00]4 isBusinessConversation] ^ 1;
    }

    else
    {
      v153 = 0;
    }

    goto LABEL_41;
  }

  stewieConversationID2 = [iMChatItem stewieConversationID];
  mEMORY[0x1E69A5B00]5 = [MEMORY[0x1E69A5B00] sharedInstance];
  mostRecentlyUsedConversationForEmergency = [mEMORY[0x1E69A5B00]5 mostRecentlyUsedConversationForEmergency];

  if (stewieConversationID2 == mostRecentlyUsedConversationForEmergency)
  {
    mEMORY[0x1E69A5B00]6 = [MEMORY[0x1E69A5B00] sharedInstance];
    isStewieEmergencyActive = [mEMORY[0x1E69A5B00]6 isStewieEmergencyActive];

    if (isStewieEmergencyActive)
    {
      goto LABEL_18;
    }
  }

LABEL_167:

  _Block_object_dispose(&v199, 8);
}

void __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) cellForItemAtIndexPath:?];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 failureButton];
    v9 = *(a1 + 40);

    if (v8 == v9)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1204(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isLocatingMessage])
  {
    v4 = [*(a1 + 40) conversation];
    v5 = [v4 chat];
    v6 = [v5 canSendCurrentLocationMessage];

    if (v6)
    {
      v7 = [*(a1 + 40) conversation];
      v8 = [v7 chat];
      [v8 sendCurrentLocationMessage];
    }
  }

  else if ([*(a1 + 32) isFromMe])
  {
    v9 = *(a1 + 48);
    v10 = IMOSLoggingEnabled();
    if (v9 == 1)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 32);
          v21 = 138412290;
          v22 = v12;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Hawking: Original message blackholed, sending message as SMS. %@", &v21, 0xCu);
        }
      }

      v13 = [MEMORY[0x1E69A8168] sharedInstance];
      [v13 trackSpamEvent:10];

      [*(a1 + 40) _downgradeMessage:*(a1 + 32) andDowngradeChat:1];
    }

    else
    {
      if (v10)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 32);
          v21 = 138412290;
          v22 = v17;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Resending message as iMessage. %@", &v21, 0xCu);
        }
      }

      v18 = [*(*(a1 + 40) + 1072) chat];
      v19 = [v18 isStewieChat];

      v20 = *(a1 + 40);
      if (v19)
      {
        [v20 _resendFailedMessages];
      }

      else
      {
        [v20 _resendMessage:*(a1 + 32)];
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v21 = 138412290;
      v22 = v15;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "This message wasn't from me, why are we trying to re-send it? %@", &v21, 0xCu);
    }
  }
}

void __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1205(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4 == 1)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 32);
        *buf = 138412290;
        v12 = v9;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "Resending message as SMS. %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v10 = *(a1 + 32);
      _CKLog();
    }

    [*(a1 + 40) _downgradeMessage:{*(a1 + 32), v10}];
  }

  else if (!v4)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(19);
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "Hawking: Sending user to Hawking KB article", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    v7 = [MEMORY[0x1E69A82A0] internationalSpamFilterLearnMoreURL];
    [v6 openURL:v7 withCompletionHandler:0];
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 40) _resendMessage:*(a1 + 32)];
  }
}

void __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1213(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  [CKKeyTransparencyErrorUtilities showKTContactVerificationUIForConversation:v2 fromViewController:*(a1 + 32)];
}

uint64_t __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1214(uint64_t a1)
{
  [*(a1 + 32) updateLastAddressedHandleID:*(a1 + 40) lastAddressedSIMID:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);

  return [v2 _resendMessage:v3];
}

void __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) conversation];
  v2 = [v3 chat];
  [CKTapToRadar launchTapToRadarForFailedMessage:v1 inChat:v2];
}

- (id)_indexPathOfCellContainingStampButton:(id)button
{
  buttonCopy = button;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__33;
  v19 = __Block_byref_object_dispose__33;
  v20 = 0;
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__CKTranscriptCollectionViewController__indexPathOfCellContainingStampButton___block_invoke;
  v11[3] = &unk_1E72F2790;
  v7 = collectionView;
  v12 = v7;
  v8 = buttonCopy;
  v13 = v8;
  v14 = &v15;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __78__CKTranscriptCollectionViewController__indexPathOfCellContainingStampButton___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) cellForItemAtIndexPath:?];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 stampButton];
    if ([v8 containsButton:*(a1 + 40)])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)touchUpInsideCellStampButton:(id)button
{
  buttonCopy = button;
  if (CKIsRunningInMessagesNotificationExtension())
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController touchUpInsideCellStampButton:];
    }
  }

  else
  {
    v5 = [(CKTranscriptCollectionViewController *)self _indexPathOfCellContainingStampButton:buttonCopy];
    if (v5)
    {
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v7 = [chatItems objectAtIndex:{-[NSObject item](v5, "item")}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CKTranscriptCollectionViewController *)self _handleTapOnMessageRetractionChatItem:v7];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CKTranscriptCollectionViewController *)self _handleTapOnParticipantChangeChatItem:v7];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CKTranscriptCollectionViewController *)self _handleTapOnGroupActionChatItem:v7 fromSender:buttonCopy];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CKTranscriptCollectionViewController *)self _handleTapOnGroupTitleChangeChatItem:v7];
        }
      }

      else
      {
        v8 = IMLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [CKTranscriptCollectionViewController touchUpInsideCellStampButton:];
        }
      }
    }

    else
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController touchUpInsideCellStampButton:];
      }
    }
  }
}

- (void)touchUpInsideCellStatusButton:(id)button
{
  v115[1] = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  if (CKIsRunningInMessagesNotificationExtension())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "touchUpInsideCellStatusButton inside an extension, early returning", buf, 2u);
      }
    }
  }

  else
  {
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    *buf = 0;
    v105 = buf;
    v106 = 0x3032000000;
    v107 = __Block_byref_object_copy__33;
    v108 = __Block_byref_object_dispose__33;
    v109 = 0;
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __70__CKTranscriptCollectionViewController_touchUpInsideCellStatusButton___block_invoke;
    v100[3] = &unk_1E72F2790;
    v89 = collectionView;
    v101 = v89;
    v7 = buttonCopy;
    v102 = v7;
    v103 = buf;
    [indexPathsForVisibleItems enumerateObjectsUsingBlock:v100];

    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v90 = [chatItems objectAtIndex:{objc_msgSend(*(v105 + 5), "item")}];

    v9 = v90;
    if (*(v105 + 5))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v88 = v90;
        switch([v88 buttonType])
        {
          case 1:
            v46 = objc_opt_class();
            item = [*(v105 + 5) item];
            chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
            v49 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v46 beforeIndex:item inChatItems:chatItems2];

            v98[0] = MEMORY[0x1E69E9820];
            v98[1] = 3221225472;
            v98[2] = __70__CKTranscriptCollectionViewController_touchUpInsideCellStatusButton___block_invoke_2;
            v98[3] = &unk_1E72EB8D0;
            v98[4] = self;
            delegate4 = v49;
            v99 = delegate4;
            [(CKTranscriptCollectionViewController *)self updateTranscript:v98 animated:1 completion:0];

            goto LABEL_123;
          case 2:
            v52 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
            audioController = [v52 audioController];

            if (audioController)
            {
              [audioController stop];
            }

            chatItems3 = [(CKTranscriptCollectionViewController *)self chatItems];
            __ck_indexesOfUnplayedAudioMessages = [chatItems3 __ck_indexesOfUnplayedAudioMessages];
            v56 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(__ck_indexesOfUnplayedAudioMessages, "count")}];
            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __70__CKTranscriptCollectionViewController_touchUpInsideCellStatusButton___block_invoke_3;
            v96[3] = &unk_1E72F26D0;
            v57 = v56;
            v97 = v57;
            [chatItems3 enumerateObjectsAtIndexes:__ck_indexesOfUnplayedAudioMessages options:0 usingBlock:v96];
            v58 = [CKAudioController alloc];
            conversation = [(CKTranscriptCollectionViewController *)self conversation];
            delegate4 = [(CKAudioController *)v58 initWithMediaObjects:v57 conversation:conversation];

            [(CKAudioController *)delegate4 setDelegate:self];
            v60 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
            [v60 setAudioController:delegate4];

            v61 = CKAudioPlaybackSpeakerEnabled();
            [(CKAudioController *)delegate4 setShouldUseSpeaker:v61];
            v62 = 1.0;
            if (v61)
            {
              v62 = 0.0;
            }

            [(CKAudioController *)delegate4 playAfterDelay:v62];

            goto LABEL_123;
          case 3:
            delegate = [(CKTranscriptCollectionViewController *)self delegate];
            v14 = objc_opt_respondsToSelector();

            if ((v14 & 1) == 0)
            {
              goto LABEL_124;
            }

            v15 = objc_opt_class();
            item2 = [*(v105 + 5) item];
            chatItems4 = [(CKTranscriptCollectionViewController *)self chatItems];
            delegate4 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v15 beforeIndex:item2 inChatItems:chatItems4];

            v19 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:delegate4];
            if (v19)
            {
              v20 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v19];
            }

            else
            {
              v20 = 0;
            }

            delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
            [delegate2 transcriptCollectionViewController:self didTapAttributionButtonForChatItem:v88 parentIndexPath:v20 sender:v7];

            goto LABEL_123;
          case 4:
            delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
            v51 = objc_opt_respondsToSelector();

            if ((v51 & 1) == 0)
            {
              goto LABEL_124;
            }

            delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
            [(CKAudioController *)delegate4 transcriptCollectionViewController:self didTapPluginStatusButtonForChatItem:v88];
            goto LABEL_123;
          case 5:
            mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
            [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A76E0]];

            delegate4 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
            if (([(CKAudioController *)delegate4 isAnimating]& 1) != 0)
            {
              goto LABEL_123;
            }

            fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
            currentEffect = [fullscreenEffectManager currentEffect];
            v24 = currentEffect == 0;

            if (!v24)
            {
              goto LABEL_124;
            }

            item3 = [*(v105 + 5) item];
            v26 = item3 - 1;
            if (item3 < 1)
            {
              goto LABEL_116;
            }

            v27 = 0;
            do
            {
              chatItems5 = [(CKTranscriptCollectionViewController *)self chatItems];
              delegate4 = [chatItems5 objectAtIndex:v26];

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v26 -= (isKindOfClass & 1) == 0;
              v27 = delegate4;
            }

            while (!(isKindOfClass & 1 | (v26 < 0)));
            if (isKindOfClass)
            {
              iMChatItem = [(CKAudioController *)delegate4 IMChatItem];
              message = [iMChatItem message];

              text = [message text];
              LODWORD(iMChatItem) = [text ck_containsIMTextEffect];
              if ((iMChatItem & [(CKTranscriptCollectionViewController *)self textEffectIsCandidateBalloonViewChecksForChatItem:delegate4]) == 1)
              {
                iMChatItem2 = [(CKAudioController *)delegate4 IMChatItem];
                guid = [iMChatItem2 guid];

                v35 = [[CKTextEffectCoordinatorContinuationState alloc] initWithTextViewIdentifier:guid locationInAttributedText:0 ignoreTextViewEligibilityCheck:1];
                transcriptTextEffectCoordinator = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
                [transcriptTextEffectCoordinator resetAndContinueFromState:v35];

                v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Replay button tapped for identifier %@", guid];
                transcriptTextEffectCoordinator2 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
                [transcriptTextEffectCoordinator2 updateWithReason:v37];
              }

              expressiveSendStyleID = [message expressiveSendStyleID];
              if ([expressiveSendStyleID containsString:*MEMORY[0x1E69A7080]])
              {
                impactEffectManager = [(CKTranscriptCollectionViewController *)self impactEffectManager];
                message2 = [(CKAudioController *)delegate4 message];
                v115[0] = message2;
                primaryLanguage = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:1];
                [impactEffectManager animateMessages:primaryLanguage];
              }

              else
              {
                if (IMOSLoggingEnabled())
                {
                  v87 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                  {
                    *v113 = 136315138;
                    v114 = "[CKTranscriptCollectionViewController touchUpInsideCellStatusButton:]";
                    _os_log_impl(&dword_19020E000, v87, OS_LOG_TYPE_INFO, "%s - Triggering FSM from replay action", v113, 0xCu);
                  }
                }

                impactEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
                message2 = [(CKTranscriptCollectionViewController *)self textInputMode];
                primaryLanguage = [message2 primaryLanguage];
                [impactEffectManager startFullscreenEffectForChatItem:delegate4 language:primaryLanguage];
              }
            }

            goto LABEL_123;
          case 6:
            if (([(CKTranscriptCollectionViewController *)self isEditing]& 1) != 0)
            {
              goto LABEL_124;
            }

            delegate5 = [(CKTranscriptCollectionViewController *)self delegate];
            v45 = objc_opt_respondsToSelector();

            if ((v45 & 1) == 0)
            {
              goto LABEL_124;
            }

            delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
            [(CKAudioController *)delegate4 transcriptCollectionViewController:self didTapReplyCountStatusButtonForChatItem:v88];
            goto LABEL_123;
          case 7:
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            chat = [(CKTranscriptCollectionViewController *)self chat];
            delegate4 = [chat participants];

            v64 = [(CKAudioController *)delegate4 countByEnumeratingWithState:&v92 objects:v110 count:16];
            if (!v64)
            {
              goto LABEL_123;
            }

            v65 = 0;
            v66 = *v93;
            v67 = MEMORY[0x1E695E0F0];
            do
            {
              for (i = 0; i != v64; ++i)
              {
                if (*v93 != v66)
                {
                  objc_enumerationMutation(delegate4);
                }

                v69 = MEMORY[0x1E69A7FD0];
                v70 = [*(*(&v92 + 1) + 8 * i) cnContactWithKeys:v67];
                LOBYTE(v69) = [v69 isCNContactAKnownContact:v70];

                v65 |= v69;
              }

              v64 = [(CKAudioController *)delegate4 countByEnumeratingWithState:&v92 objects:v110 count:16];
            }

            while (v64);

            if ((v65 & 1) == 0)
            {
              goto LABEL_124;
            }

            item4 = [*(v105 + 5) item];
            v72 = item4 - 1;
            if (item4 < 1)
            {
LABEL_116:
              delegate4 = 0;
            }

            else
            {
              v73 = 0;
              do
              {
                chatItems6 = [(CKTranscriptCollectionViewController *)self chatItems];
                delegate4 = [chatItems6 objectAtIndex:v72];

                objc_opt_class();
                v75 = objc_opt_isKindOfClass();
                v72 -= (v75 & 1) == 0;
                v73 = delegate4;
              }

              while (!(v75 & 1 | (v72 < 0)));
              if (v75)
              {
                iMChatItem3 = [v88 IMChatItem];
                if ([iMChatItem3 syndicationStatus] == 1)
                {
                  iMChatItem4 = [(CKAudioController *)delegate4 IMChatItem];
                  guid2 = [iMChatItem4 guid];

                  iMChatItem5 = [(CKAudioController *)delegate4 IMChatItem];
                  messagePartRange = [iMChatItem5 messagePartRange];
                  v82 = v81;

                  chat2 = [(CKTranscriptCollectionViewController *)self chat];
                  [chat2 sendSyndicationAction:32 forMessagePartGUID:guid2 syndicatedMessagePartRange:{messagePartRange, v82}];
                }
              }
            }

LABEL_123:

            goto LABEL_124;
          case 8:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_99;
            }

            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "User selected Not Edited status item, prompting to resend edit", v113, 2u);
            }

            goto LABEL_98;
          case 9:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_99;
            }

            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "User selected Delivered - Not Edited status item, prompting to resend edit", v113, 2u);
            }

            goto LABEL_98;
          case 10:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_99;
            }

            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "User selected Delivered Quietly - Not Edited status item, prompting to resend edit", v113, 2u);
            }

            goto LABEL_98;
          case 11:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_99;
            }

            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "User selected Read - Not Edited status item, prompting to resend edit", v113, 2u);
            }

LABEL_98:

LABEL_99:
            [(CKTranscriptCollectionViewController *)self _handleFailedEditStatusButtonTappedForIndexPath:*(v105 + 5)];
            goto LABEL_124;
          case 12:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_108;
            }

            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "User selected Edited status item, showing edit history", v113, 2u);
            }

            goto LABEL_107;
          case 13:
            if (IMOSLoggingEnabled())
            {
              v43 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                *v113 = 0;
                _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "User selected Send Full Quality status item, trying to send full quality image", v113, 2u);
              }
            }

            [(CKTranscriptCollectionViewController *)self _handleSendFullQualityButtonTappedForIndexPath:*(v105 + 5)];
            goto LABEL_124;
          case 14:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_108;
            }

            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "User selected Delivered - Edited status item, showing edit history", v113, 2u);
            }

            goto LABEL_107;
          case 15:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_108;
            }

            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "User selected Delivered Quietly - Edited status item, showing edit history", v113, 2u);
            }

            goto LABEL_107;
          case 16:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_108;
            }

            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "User selected Read - Edited status item, showing edit history", v113, 2u);
            }

            goto LABEL_107;
          case 17:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_108;
            }

            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "User selected Hide Edits status item, hiding edit history", v113, 2u);
            }

            goto LABEL_107;
          case 18:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_108;
            }

            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "User selected Delivered - Hide Edits status item, hiding edit history", v113, 2u);
            }

            goto LABEL_107;
          case 19:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_108;
            }

            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "User selected Delivered Quietly - Hide Edits status item, hiding edit history", v113, 2u);
            }

            goto LABEL_107;
          case 20:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_108;
            }

            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v113 = 0;
              _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "User selected Read - Hide Edits status item, hiding edit history", v113, 2u);
            }

LABEL_107:

LABEL_108:
            [(CKTranscriptCollectionViewController *)self _handleEditHistoryButtonTappedForIndexPath:*(v105 + 5)];
LABEL_124:

            v9 = v90;
            break;
          case 21:
            if (IMOSLoggingEnabled())
            {
              v84 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
              {
                *v113 = 0;
                _os_log_impl(&dword_19020E000, v84, OS_LOG_TYPE_INFO, "User selected Send Via Satellite  status item, trying to send message now", v113, 2u);
              }
            }

            [(CKTranscriptCollectionViewController *)self _handleSendViaSatelliteButtonTappedForIndexPath:*(v105 + 5)];
            delegate4 = [MEMORY[0x1E69A8168] sharedInstance];
            v111 = *MEMORY[0x1E69A77B8];
            v112 = &unk_1F04E7D28;
            v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
            [(CKAudioController *)delegate4 trackEvent:*MEMORY[0x1E69A7690] withDictionary:v85];

            goto LABEL_123;
          case 23:
            if (IMOSLoggingEnabled())
            {
              v11 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                *v113 = 0;
                _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "User selected Not Cancelled status item, prompting to retry cancellation", v113, 2u);
              }
            }

            [(CKTranscriptCollectionViewController *)self _handleFailedCancelStatusButtonTappedForIndexPath:*(v105 + 5)];
            goto LABEL_124;
          case 24:
          case 25:
          case 26:
          case 27:
            [(CKTranscriptCollectionViewController *)self _handlePollsAddChoiceButtonTappedForIndexPath:*(v105 + 5)];
            goto LABEL_124;
          default:
            goto LABEL_124;
        }
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void __70__CKTranscriptCollectionViewController_touchUpInsideCellStatusButton___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) cellForItemAtIndexPath:?];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 statusButton];
    if ([v8 containsButton:*(a1 + 40)])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void __70__CKTranscriptCollectionViewController_touchUpInsideCellStatusButton___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) chat];
  v2 = [*(a1 + 40) IMChatItem];
  [v3 markChatItemAsSaved:v2];
}

void __70__CKTranscriptCollectionViewController_touchUpInsideCellStatusButton___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mediaObject];
  [v2 addObject:v3];
}

- (void)_handlePollsAddChoiceButtonTappedForIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_class();
  item = [pathCopy item];

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v5 beforeIndex:item inChatItems:chatItems];

  iMChatItem = [v8 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = iMChatItem;
    dataSource = [v10 dataSource];
    bundleID = [dataSource bundleID];
    v13 = IMBalloonExtensionIDWithSuffix();
    v14 = [bundleID isEqualToString:v13];

    if (v14)
    {
      delegate = [(CKTranscriptCollectionViewController *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __86__CKTranscriptCollectionViewController__handlePollsAddChoiceButtonTappedForIndexPath___block_invoke;
        v18[3] = &unk_1E72EB8D0;
        v18[4] = self;
        v10 = v10;
        v19 = v10;
        dispatch_async(MEMORY[0x1E69E96A0], v18);
      }
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CKChatController transcriptCollectionViewController:selectedPollAddChoice:];
      }
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController _handlePollsAddChoiceButtonTappedForIndexPath:];
    }
  }
}

void __86__CKTranscriptCollectionViewController__handlePollsAddChoiceButtonTappedForIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transcriptCollectionViewController:*(a1 + 32) selectedPollAddChoice:*(a1 + 40)];
}

- (void)_handleEditHistoryButtonTappedForIndexPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = objc_opt_class();
  item = [pathCopy item];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v5 beforeIndex:item inChatItems:chatItems];

  iMChatItem = [v8 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = iMChatItem;
    guid = [v10 guid];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = guid;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "User selected show edit history button for chatItemGUID: %@", &v18, 0xCu);
      }
    }

    chat = [(CKTranscriptCollectionViewController *)self chat];
    v14 = [chat isShowingEditHistoryForChatItemGUID:guid];
    v15 = IMOSLoggingEnabled();
    if (v14)
    {
      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = guid;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Requested end showing edit history for chatItemGUID: %@", &v18, 0xCu);
        }
      }

      [chat endShowingEditHistoryForChatItemGUID:guid];
    }

    else
    {
      if (v15)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = guid;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Requested begin showing edit history for chatItemGUID: %@", &v18, 0xCu);
        }
      }

      [chat beginShowingEditHistoryForChatItemGUID:guid];
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController _handleEditHistoryButtonTappedForIndexPath:];
    }
  }
}

- (void)_handleSendFullQualityButtonTappedForIndexPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isLQMHQEnabled = [mEMORY[0x1E69A8070] isLQMHQEnabled];

  if (isLQMHQEnabled)
  {
    v7 = objc_opt_class();
    item = [pathCopy item];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v10 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v7 beforeIndex:item inChatItems:chatItems];

    iMChatItem = [v10 IMChatItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = iMChatItem;
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          guid = [v12 guid];
          v19 = 138412290;
          v20 = guid;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "User selected send full quality button for chatItemGUID: %@", &v19, 0xCu);
        }
      }

      chat = [(CKTranscriptCollectionViewController *)self chat];
      messageItem = [v12 messageItem];
      fileTransferGUIDs = [messageItem fileTransferGUIDs];
      v18 = [fileTransferGUIDs count] == 0;

      if (!v18)
      {
        [chat sendHQAttachmentsForMessage:messageItem];
      }
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController _handleEditHistoryButtonTappedForIndexPath:];
      }
    }
  }
}

- (void)_handleFailedEditStatusButtonTappedForIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_class();
  item = [pathCopy item];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v5 beforeIndex:item inChatItems:chatItems];

  iMChatItem = [v8 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = iMChatItem;
    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    if ([v10 scheduleType]== 2)
    {
      if ([v10 scheduleState]== 2)
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Message is a scheduled message, presenting a resend confirmation alert to the user", buf, 2u);
          }
        }

        [(CKTranscriptCollectionViewController *)self _presentEditedScheduledMessageResendConfirmationAlertForMessage:v10];
      }

      goto LABEL_27;
    }

    canEditMessageText = [v10 canEditMessageText];
    supportsMessageEditing = [conversation supportsMessageEditing];
    v15 = IMOSLoggingEnabled();
    if (canEditMessageText)
    {
      if (supportsMessageEditing)
      {
        if (v15)
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *v20 = 0;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Message is still editable, presenting a resend confirmation alert to the user", v20, 2u);
          }
        }

        [(CKTranscriptCollectionViewController *)self _presentEditedMessageResendConfirmationAlertForMessage:v10];
        goto LABEL_27;
      }

      if (!v15)
      {
        goto LABEL_26;
      }

      v17 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *v21 = 0;
      v18 = "Cannot resend edit to message. Conversation no longer supports editing. Presenting an explanatory alert to the user";
      v19 = v21;
    }

    else
    {
      if (!v15)
      {
LABEL_26:
        [(CKTranscriptCollectionViewController *)self _presentMessageCanNoLongerBeEditedAlert];
LABEL_27:

        goto LABEL_28;
      }

      v17 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
LABEL_25:

        goto LABEL_26;
      }

      v22 = 0;
      v18 = "Cannot resend edit to message. Message is no longer editable, presenting an explanatory alert to the user";
      v19 = &v22;
    }

    _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, v18, v19, 2u);
    goto LABEL_25;
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CKTranscriptCollectionViewController _handleEditHistoryButtonTappedForIndexPath:];
  }

LABEL_28:
}

- (void)_handleFailedCancelStatusButtonTappedForIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_class();
  item = [pathCopy item];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v5 beforeIndex:item inChatItems:chatItems];

  iMChatItem = [v8 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = iMChatItem;
    if ([v10 scheduleType]== 2 && [v10 scheduleState]== 2)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Message is still scheduled, presenting a resend confirmtion alert to the user.", v13, 2u);
        }
      }

      [(CKTranscriptCollectionViewController *)self _presentCancelledScheduledMessageConfirmationAlertForMessage:v10];
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController _handleFailedCancelStatusButtonTappedForIndexPath:];
      }
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController _handleEditHistoryButtonTappedForIndexPath:];
    }
  }
}

- (void)_handleSendViaSatelliteButtonTappedForIndexPath:(id)path
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__CKTranscriptCollectionViewController__handleSendViaSatelliteButtonTappedForIndexPath___block_invoke;
  v3[3] = &unk_1E72EBA18;
  v3[4] = self;
  [(CKTranscriptCollectionViewController *)self updateTranscript:v3 animated:0 completion:&__block_literal_global_1239_0];
}

- (void)_presentMessageCanNoLongerBeEditedAlert
{
  v3 = CKFrameworkBundle();
  v10 = [v3 localizedStringForKey:@"MESSAGE_NOT_EDITED_AND_NO_LONGER_EDITABLE_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"MESSAGE_NOT_EDITED_AND_NO_LONGER_EDITABLE_ALERT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

  v6 = [CKAlertController alertControllerWithTitle:v10 message:v5 preferredStyle:1];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"CONTINUE" value:&stru_1F04268F8 table:@"ChatKit"];

  v9 = [CKAlertAction actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];
  [(CKTranscriptCollectionViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_presentEditedMessageResendConfirmationAlertForMessage:(id)message
{
  messageCopy = message;
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"MESSAGE_NOT_EDITED_RETRY_EDIT_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"MESSAGE_NOT_EDITED_RETRY_EDIT_ALERT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

  v9 = [CKAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:CKIsRunningInMacCatalyst() != 0];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"TRY_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__CKTranscriptCollectionViewController__presentEditedMessageResendConfirmationAlertForMessage___block_invoke;
  v17[3] = &unk_1E72F2E08;
  objc_copyWeak(&v19, &location);
  v12 = messageCopy;
  v18 = v12;
  v13 = [CKAlertAction actionWithTitle:v11 style:0 handler:v17];
  [v9 addAction:v13];
  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];

  v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:0];
  [v9 addAction:v16];
  [(CKTranscriptCollectionViewController *)self presentViewController:v9 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __95__CKTranscriptCollectionViewController__presentEditedMessageResendConfirmationAlertForMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resendEditedMessageForChatItem:*(a1 + 32)];
}

- (void)_resendEditedMessageForChatItem:(id)item
{
  itemCopy = item;
  messageItem = [itemCopy messageItem];
  index = [itemCopy index];

  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  [conversation resendEditedMessageItem:messageItem forPartIndex:index];
}

- (void)_handleTapOnGroupActionChatItem:(id)item fromSender:(id)sender
{
  itemCopy = item;
  senderCopy = sender;
  if ([itemCopy failed])
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Tapped on CKGroupActionChatItem denoting a failed action. Showing alert controller.", buf, 2u);
    }

    guid = [(CKTranscriptCollectionViewController *)self cellForChatItem:itemCopy];
    errorText = [itemCopy errorText];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __83__CKTranscriptCollectionViewController__handleTapOnGroupActionChatItem_fromSender___block_invoke;
    v21 = &unk_1E72EC710;
    v22 = itemCopy;
    selfCopy = self;
    v11 = [(CKTranscriptCollectionViewController *)self _buildRetryAlertWithMessage:errorText sourceView:guid tryAgainAction:&v18];

    [(CKTranscriptCollectionViewController *)self presentViewController:v11 animated:1 completion:0, v18, v19, v20, v21];
    v12 = v22;
  }

  else
  {
    if ([itemCopy actionType] != 5)
    {
      goto LABEL_11;
    }

    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Tapped on CKGroupActionChatItem denoting a sensitive transcript background. Triggering menu.", buf, 2u);
    }

    iMChatItem = [itemCopy IMChatItem];
    guid = [iMChatItem guid];

    v12 = [(CKTranscriptCollectionViewController *)self indexPathForChatItemGUID:guid];
    delegate = [(CKTranscriptCollectionViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate2 transcriptCollectionViewController:self didTapAttributionLinkTextForChatItem:itemCopy atIndexPath:v12 sender:senderCopy];
    }
  }

LABEL_11:
}

void __83__CKTranscriptCollectionViewController__handleTapOnGroupActionChatItem_fromSender___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fileTransferGUIDs];
  v4 = [v2 firstObject];

  v3 = [*(a1 + 40) chat];
  [v3 sendGroupPhotoUpdate:v4];
}

- (void)_handleTapOnParticipantChangeChatItem:(id)item
{
  itemCopy = item;
  if ([itemCopy failed])
  {
    v5 = [(CKTranscriptCollectionViewController *)self cellForChatItem:itemCopy];
    errorText = [itemCopy errorText];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __78__CKTranscriptCollectionViewController__handleTapOnParticipantChangeChatItem___block_invoke;
    v11 = &unk_1E72EC710;
    v12 = itemCopy;
    selfCopy = self;
    v7 = [(CKTranscriptCollectionViewController *)self _buildRetryAlertWithMessage:errorText sourceView:v5 tryAgainAction:&v8];

    [(CKTranscriptCollectionViewController *)self presentViewController:v7 animated:1 completion:0, v8, v9, v10, v11];
  }
}

void __78__CKTranscriptCollectionViewController__handleTapOnParticipantChangeChatItem___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) handle];

  if (v2)
  {
    v3 = [*(a1 + 32) changeType];
    if (v3 == 1)
    {
      v4 = [*(a1 + 40) conversation];
      v5 = [*(a1 + 32) handle];
      v7 = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
      [v4 removeRecipientHandles:v6];
    }

    else
    {
      if (v3)
      {
        return;
      }

      v4 = [*(a1 + 40) conversation];
      v5 = [*(a1 + 32) handle];
      v8[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      [v4 addRecipientHandles:v6];
    }
  }
}

- (void)_handleTapOnGroupTitleChangeChatItem:(id)item
{
  itemCopy = item;
  if ([itemCopy failed])
  {
    v5 = [(CKTranscriptCollectionViewController *)self cellForChatItem:itemCopy];
    errorText = [itemCopy errorText];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __77__CKTranscriptCollectionViewController__handleTapOnGroupTitleChangeChatItem___block_invoke;
    v11 = &unk_1E72EC710;
    selfCopy = self;
    v13 = itemCopy;
    v7 = [(CKTranscriptCollectionViewController *)self _buildRetryAlertWithMessage:errorText sourceView:v5 tryAgainAction:&v8];

    [(CKTranscriptCollectionViewController *)self presentViewController:v7 animated:1 completion:0, v8, v9, v10, v11, selfCopy];
  }
}

void __77__CKTranscriptCollectionViewController__handleTapOnGroupTitleChangeChatItem___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) chat];
  v2 = [*(a1 + 40) title];
  [v3 setDisplayName:v2];
}

- (id)_buildStopSharingAlertWithMessage:(id)message sourceView:(id)view stopSharingAction:(id)action
{
  actionCopy = action;
  viewCopy = view;
  v9 = [CKAlertController alertControllerWithTitle:0 message:message preferredStyle:0];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [CKAlertAction actionWithTitle:v11 style:1 handler:0];

  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"TS_STOP_SHARING_ACTION_ALERT" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
  v15 = [CKAlertAction actionWithTitle:v14 style:2 handler:actionCopy];

  [v9 addAction:v12];
  [v9 addAction:v15];
  popoverPresentationController = [v9 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [viewCopy bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  popoverPresentationController2 = [v9 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v18, v20, v22, v24}];

  return v9;
}

- (id)_buildRetryAlertWithMessage:(id)message sourceView:(id)view tryAgainAction:(id)action
{
  actionCopy = action;
  viewCopy = view;
  messageCopy = message;
  v10 = [CKAlertController alertControllerWithTitle:0 message:messageCopy preferredStyle:CKIsRunningInMacCatalyst() != 0];

  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"TRY_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];
  v13 = [CKAlertAction actionWithTitle:v12 style:0 handler:actionCopy];

  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:0];

  [v10 addAction:v16];
  [v10 addAction:v13];
  popoverPresentationController = [v10 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [viewCopy bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  popoverPresentationController2 = [v10 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v19, v21, v23, v25}];

  return v10;
}

- (void)_handleTapOnMessageRetractionChatItem:(id)item
{
  itemCopy = item;
  iMChatItem = [itemCopy IMChatItem];
  if ([iMChatItem isFailedRetraction])
  {
    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    canRetryFailedRetraction = [iMChatItem canRetryFailedRetraction];
    supportsMessageEditing = [conversation supportsMessageEditing];
    v9 = IMOSLoggingEnabled();
    if (canRetryFailedRetraction)
    {
      if (supportsMessageEditing)
      {
        if (v9)
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *v15 = 0;
            _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Message is still editable, presenting a resend confirmation alert to the user", v15, 2u);
          }
        }

        [(CKTranscriptCollectionViewController *)self _presentRetractedMessageResendConfirmationAlertForIMChatItem:iMChatItem];
        goto LABEL_22;
      }

      if (v9)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v16 = 0;
          v13 = "Cannot resend edit to message. Conversation no longer supports editing. Presenting an explanatory alert to the user";
          v14 = v16;
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    else if (v9)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = 0;
        v13 = "Cannot resend edit to message. Message does not support retrying retraction, presenting an explanatory alert to the user";
        v14 = &v17;
LABEL_19:
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, v13, v14, 2u);
      }

LABEL_20:
    }

    [(CKTranscriptCollectionViewController *)self _presentMessageCanNoLongerBeRetractedAlert];
LABEL_22:

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "User selected a message retraction chat item that is not a failed retraction, ignoring selection", buf, 2u);
    }
  }

LABEL_23:
}

- (void)_presentMessageCanNoLongerBeRetractedAlert
{
  v3 = CKFrameworkBundle();
  v10 = [v3 localizedStringForKey:@"MESSAGE_NOT_RETRACTED_AND_NO_LONGER_RETRACTABLE_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"MESSAGE_NOT_RETRACTED_AND_NO_LONGER_RETRACTABLE_ALERT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

  v6 = [CKAlertController alertControllerWithTitle:v10 message:v5 preferredStyle:1];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"CONTINUE" value:&stru_1F04268F8 table:@"ChatKit"];

  v9 = [CKAlertAction actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];
  [(CKTranscriptCollectionViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_presentRetractedMessageResendConfirmationAlertForIMChatItem:(id)item
{
  itemCopy = item;
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"MESSAGE_NOT_RETRACTED_RETRY_RETRACTION_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"MESSAGE_NOT_RETRACTED_RETRY_RETRACTION_ALERT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

  v9 = [CKAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:CKIsRunningInMacCatalyst() != 0];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"TRY_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __101__CKTranscriptCollectionViewController__presentRetractedMessageResendConfirmationAlertForIMChatItem___block_invoke;
  v17[3] = &unk_1E72F2E08;
  objc_copyWeak(&v19, &location);
  v12 = itemCopy;
  v18 = v12;
  v13 = [CKAlertAction actionWithTitle:v11 style:0 handler:v17];
  [v9 addAction:v13];
  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];

  v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:0];
  [v9 addAction:v16];
  [(CKTranscriptCollectionViewController *)self presentViewController:v9 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __101__CKTranscriptCollectionViewController__presentRetractedMessageResendConfirmationAlertForIMChatItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resendMessageRetractionForChatItem:*(a1 + 32)];
}

- (void)_resendMessageRetractionForChatItem:(id)item
{
  itemCopy = item;
  messageItem = [itemCopy messageItem];
  partIndex = [itemCopy partIndex];

  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  [conversation resendEditedMessageItem:messageItem forPartIndex:partIndex];
}

- (void)_presentEditedScheduledMessageResendConfirmationAlertForMessage:(id)message
{
  messageCopy = message;
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"SCHEDULED_MESSAGE_NOT_EDITED_RETRY_EDIT_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"SCHEDULED_MESSAGE_NOT_EDITED_RETRY_EDIT_ALERT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

  v9 = [CKAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:CKIsRunningInMacCatalyst() != 0];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"TRY_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __104__CKTranscriptCollectionViewController__presentEditedScheduledMessageResendConfirmationAlertForMessage___block_invoke;
  v17[3] = &unk_1E72F2E08;
  objc_copyWeak(&v19, &location);
  v12 = messageCopy;
  v18 = v12;
  v13 = [CKAlertAction actionWithTitle:v11 style:0 handler:v17];
  [v9 addAction:v13];
  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];

  v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:0];
  [v9 addAction:v16];
  [(CKTranscriptCollectionViewController *)self presentViewController:v9 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __104__CKTranscriptCollectionViewController__presentEditedScheduledMessageResendConfirmationAlertForMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resendEditedScheduledMessageForChatItem:*(a1 + 32)];
}

- (void)_resendEditedScheduledMessageForChatItem:(id)item
{
  itemCopy = item;
  messageItem = [itemCopy messageItem];
  index = [itemCopy index];

  v6 = [messageItem historyForMessagePart:index];
  lastObject = [v6 lastObject];
  messagePartText = [lastObject messagePartText];

  chat = [(CKTranscriptCollectionViewController *)self chat];
  [chat editScheduledMessageItem:messageItem atPartIndex:index withNewPartText:messagePartText newPartTranslation:0];
}

- (void)_presentCancelledScheduledMessageConfirmationAlertForMessage:(id)message
{
  messageCopy = message;
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"SCHEDULED_MESSAGE_NOT_RETRACTED_RETRY_RETRACTION_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"SCHEDULED_MESSAGE_NOT_RETRACTED_RETRY_RETRACTION_ALERT_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

  v9 = [CKAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:CKIsRunningInMacCatalyst() != 0];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"TRY_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __101__CKTranscriptCollectionViewController__presentCancelledScheduledMessageConfirmationAlertForMessage___block_invoke;
  v17[3] = &unk_1E72F2E08;
  objc_copyWeak(&v19, &location);
  v12 = messageCopy;
  v18 = v12;
  v13 = [CKAlertAction actionWithTitle:v11 style:0 handler:v17];
  [v9 addAction:v13];
  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];

  v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:0];
  [v9 addAction:v16];
  [(CKTranscriptCollectionViewController *)self presentViewController:v9 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __101__CKTranscriptCollectionViewController__presentCancelledScheduledMessageConfirmationAlertForMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reattemptMessageCancellationForChatItem:*(a1 + 32)];
}

- (void)_reattemptMessageCancellationForChatItem:(id)item
{
  itemCopy = item;
  chat = [(CKTranscriptCollectionViewController *)self chat];
  [chat retractMessagePart:itemCopy];
}

- (void)_handleCommSafetyMessageSomeoneStatusButtonTappedForIndexPath:(id)path
{
  v4 = MEMORY[0x1E69A8008];
  pathCopy = path;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance logPrivatizedUIInteractionEvent:1];

  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewController:self showMessageSomeoneForItemWithIndexPath:pathCopy];
}

- (void)_handleCommSafetySensitiveReceiveStatusButtonTappedForIndexPath:(id)path
{
  v4 = MEMORY[0x1E69A8008];
  pathCopy = path;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance logPrivatizedUIInteractionEvent:0];

  [(CKTranscriptCollectionViewController *)self presentUserInterventionScreenForIndexPath:pathCopy shouldTargetAssociatedItems:0];
}

- (void)touchUpInsideCellSpeakerButton:(id)button
{
  buttonCopy = button;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__33;
  v20 = __Block_byref_object_dispose__33;
  v21 = 0;
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CKTranscriptCollectionViewController_touchUpInsideCellSpeakerButton___block_invoke;
  v12[3] = &unk_1E72F2790;
  v7 = collectionView;
  v13 = v7;
  v8 = buttonCopy;
  v14 = v8;
  v15 = &v16;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v12];

  if (v17[5])
  {
    v9 = CKAudioPlaybackSpeakerEnabled();
    CKSetAudioPlaybackSpeakerEnabled();
    v10 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
    audioController = [v10 audioController];
    [audioController setShouldUseSpeaker:v9 ^ 1u];
  }

  _Block_object_dispose(&v16, 8);
}

void __71__CKTranscriptCollectionViewController_touchUpInsideCellSpeakerButton___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) cellForItemAtIndexPath:?];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 speakerButton];
    v9 = *(a1 + 40);

    if (v8 == v9)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)touchUpInsideCellLeaveConversationButton:(id)button
{
  buttonCopy = button;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Pressed button in transcript to leave chat", v7, 2u);
    }
  }

  view = [(CKTranscriptCollectionViewController *)self view];
  [(CKTranscriptCollectionViewController *)self _showLeaveConversationFromView:view];
}

- (void)touchUpInsideCellReportSpamButton:(id)button
{
  buttonCopy = button;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__33;
  v55 = __Block_byref_object_dispose__33;
  v56 = 0;
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __74__CKTranscriptCollectionViewController_touchUpInsideCellReportSpamButton___block_invoke;
  v47[3] = &unk_1E72F2790;
  v7 = collectionView;
  v48 = v7;
  v8 = buttonCopy;
  v49 = v8;
  v50 = &v51;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v47];

  if (v52[5])
  {
    if (CKIsRunningInMessagesNotificationExtension())
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Touching up inside a messages spam extension", buf, 2u);
        }
      }
    }

    else
    {
      v10 = [v7 cellForItemAtIndexPath:v52[5]];
      if ([v10 showReportSMSSpam])
      {
        delegate = [(CKTranscriptCollectionViewController *)self delegate];
        [delegate transcriptCollectionViewControllerDisplaySMSSpamReporting:self];
      }

      else
      {
        delegate = [v10 reportSpamButton];
        v44 = 0;
        v45 = 0;
        [(CKTranscriptCollectionViewController *)self _reportJunkAlertControllerTitle:&v45 message:&v44];
        v12 = v45;
        v39 = v44;
        v40 = v12;
        v13 = [CKAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v12 preferredStyle:?];
        chat = [(CKTranscriptCollectionViewController *)self chat];
        canUnsubscribe = [chat canUnsubscribe];

        if (canUnsubscribe)
        {
          v16 = CKFrameworkBundle();
          v17 = [v16 localizedStringForKey:@"UNSUBSCRIBE_SPAM_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __74__CKTranscriptCollectionViewController_touchUpInsideCellReportSpamButton___block_invoke_1292;
          v43[3] = &unk_1E72EBFE8;
          v43[4] = self;
          v18 = [CKAlertAction actionWithTitle:v17 style:0 handler:v43];
          [v13 addAction:v18];
        }

        v19 = CKFrameworkBundle();
        v20 = [v19 localizedStringForKey:@"REPORT_SPAM_ALERT_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __74__CKTranscriptCollectionViewController_touchUpInsideCellReportSpamButton___block_invoke_1296;
        v42[3] = &unk_1E72EBFE8;
        v42[4] = self;
        v21 = [CKAlertAction actionWithTitle:v20 style:2 handler:v42];
        [v13 addAction:v21];

        v22 = CKFrameworkBundle();
        v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __74__CKTranscriptCollectionViewController_touchUpInsideCellReportSpamButton___block_invoke_1297;
        v41[3] = &unk_1E72EBFE8;
        v41[4] = self;
        v24 = [CKAlertAction actionWithTitle:v23 style:1 handler:v41];
        [v13 addAction:v24];

        popoverPresentationController = [v13 popoverPresentationController];
        [popoverPresentationController setPermittedArrowDirections:3];

        popoverPresentationController2 = [v13 popoverPresentationController];
        view = [(CKTranscriptCollectionViewController *)self view];
        [delegate frame];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        superview = [delegate superview];
        [view convertRect:superview fromView:{v29, v31, v33, v35}];
        [popoverPresentationController2 setSourceRect:?];

        popoverPresentationController3 = [v13 popoverPresentationController];
        view2 = [(CKTranscriptCollectionViewController *)self view];
        [popoverPresentationController3 setSourceView:view2];

        [(CKTranscriptCollectionViewController *)self presentViewController:v13 animated:1 completion:0];
      }
    }
  }

  _Block_object_dispose(&v51, 8);
}

void __74__CKTranscriptCollectionViewController_touchUpInsideCellReportSpamButton___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [*(a1 + 32) cellForItemAtIndexPath:?];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 reportSpamButton];
    v9 = *(a1 + 40);

    if (v8 == v9)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void __74__CKTranscriptCollectionViewController_touchUpInsideCellReportSpamButton___block_invoke_1292(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "User requested to unsubscribe.", v5, 2u);
    }
  }

  [*(a1 + 32) unsubscribeAlertControllerActionHandler];
}

void __74__CKTranscriptCollectionViewController_touchUpInsideCellReportSpamButton___block_invoke_1296(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "User requested to send report of junk message.", v5, 2u);
    }
  }

  [*(a1 + 32) reportJunkAlertControllerActionHandler];
}

void __74__CKTranscriptCollectionViewController_touchUpInsideCellReportSpamButton___block_invoke_1297(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isReportJunkEverywhereEnabled];

  v15 = [*(a1 + 32) chat];
  v4 = [v15 account];
  v5 = [v4 service];
  v6 = [v5 supportsCapability:*MEMORY[0x1E69A7A20]];
  v7 = v6;
  if (v3)
  {

    if (!v7)
    {
      return;
    }

    v8 = [MEMORY[0x1E69A8168] sharedInstance];
    v15 = v8;
    v9 = *MEMORY[0x1E69A7350];
    v10 = &unk_1F04E9208;
  }

  else
  {
    if ((v6 & 1) == 0)
    {

      goto LABEL_10;
    }

    v11 = MEMORY[0x1E69A7F70];
    v12 = [*(a1 + 32) chat];
    v13 = [v12 lastFinishedMessageItem];
    v14 = [*(a1 + 32) chat];
    LODWORD(v11) = [v11 isReportJunkServiceAllowedForMessageItem:v13 junkChatStyle:{objc_msgSend(v14, "chatStyle")}];

    if (!v11)
    {
      return;
    }

    v8 = [MEMORY[0x1E69A8168] sharedInstance];
    v15 = v8;
    v9 = *MEMORY[0x1E69A7350];
    v10 = &unk_1F04E9230;
  }

  [v8 trackEvent:v9 withDictionary:v10];
LABEL_10:
}

- (void)reportJunkAlertControllerActionHandler
{
  v12[1] = *MEMORY[0x1E69E9840];
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  shouldPresentSpamReasonPicker = [conversation shouldPresentSpamReasonPicker];

  if (shouldPresentSpamReasonPicker)
  {
    v5 = [CKReportSpamReasonContoller alloc];
    conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
    v12[0] = conversation2;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__CKTranscriptCollectionViewController_reportJunkAlertControllerActionHandler__block_invoke;
    v11[3] = &unk_1E72EBA18;
    v11[4] = self;
    v8 = [(CKReportSpamReasonContoller *)v5 initWithConversations:v7 didReportBlock:v11];

    v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
    [v9 setModalPresentationStyle:2];
    [(CKTranscriptCollectionViewController *)self presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    conversation3 = [(CKTranscriptCollectionViewController *)self conversation];
    [CKAlertControllerActionHelper reportJunkWithConversation:conversation3];

    im_dispatch_after();
  }
}

uint64_t __78__CKTranscriptCollectionViewController_reportJunkAlertControllerActionHandler__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CKTranscriptCollectionViewController_reportJunkAlertControllerActionHandler__block_invoke_2;
  v3[3] = &unk_1E72EBA18;
  v3[4] = v1;
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __78__CKTranscriptCollectionViewController_reportJunkAlertControllerActionHandler__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transcriptCollectionViewControllerReportSpamButtonTapped:*(a1 + 32)];
}

void __78__CKTranscriptCollectionViewController_reportJunkAlertControllerActionHandler__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transcriptCollectionViewControllerReportSpamButtonTapped:*(a1 + 32)];
}

- (void)unsubscribeAlertControllerActionHandler
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  [chat unsubscribe];

  im_dispatch_after();
}

void __79__CKTranscriptCollectionViewController_unsubscribeAlertControllerActionHandler__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transcriptCollectionViewControllerUnsubscribeButtonTapped:*(a1 + 32)];
}

- (void)_reportJunkAlertControllerTitle:(id *)title message:(id *)message
{
  v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
  chat = [(CKTranscriptCollectionViewController *)self chat];
  isChatBot = [chat isChatBot];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x1E69A8070] isReportJunkEverywhereEnabled];

  chat2 = [(CKTranscriptCollectionViewController *)self chat];
  account = [chat2 account];
  service = [account service];
  v14 = [service supportsCapability:*MEMORY[0x1E69A7A20]];
  if (isReportJunkEverywhereEnabled)
  {
    v15 = v14 | isChatBot;

    if (v15)
    {
      v16 = MEMORY[0x1E69A7F58];
      chat3 = [(CKTranscriptCollectionViewController *)self chat];
      lastFinishedMessageItem = [chat3 lastFinishedMessageItem];
      destinationCallerID = [lastFinishedMessageItem destinationCallerID];
      lastAddressedSIMID = [v16 carrierNameForPhoneNumber:destinationCallerID];

      if (![lastAddressedSIMID length])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v14)
    {
      v21 = MEMORY[0x1E69A7F70];
      chat4 = [(CKTranscriptCollectionViewController *)self chat];
      [chat4 lastFinishedMessageItem];
      titleCopy = title;
      v24 = v23 = message;
      chat5 = [(CKTranscriptCollectionViewController *)self chat];
      v26 = [v21 isReportJunkServiceAllowedForMessageItem:v24 junkChatStyle:{objc_msgSend(chat5, "chatStyle")}] | isChatBot;

      message = v23;
      title = titleCopy;

      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (!isChatBot)
      {
        goto LABEL_12;
      }
    }

    v27 = MEMORY[0x1E69A7F58];
    chat6 = [(CKTranscriptCollectionViewController *)self chat];
    lastFinishedMessageItem2 = [chat6 lastFinishedMessageItem];
    destinationCallerID2 = [lastFinishedMessageItem2 destinationCallerID];
    lastAddressedSIMID = [v27 carrierNameForPhoneNumber:destinationCallerID2];

    if (lastAddressedSIMID)
    {
LABEL_10:
      [v72 addObject:lastAddressedSIMID];
LABEL_11:
      v31 = 1;
      goto LABEL_21;
    }
  }

LABEL_12:
  chat7 = [(CKTranscriptCollectionViewController *)self chat];
  isRCS = [chat7 isRCS];

  if (!isRCS)
  {
    v31 = 0;
    goto LABEL_22;
  }

  chat8 = [(CKTranscriptCollectionViewController *)self chat];
  lastAddressedSIMID = [chat8 lastAddressedSIMID];

  chat9 = [(CKTranscriptCollectionViewController *)self chat];
  lastAddressedHandleID = [chat9 lastAddressedHandleID];

  mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
  v39 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:lastAddressedSIMID phoneNumber:lastAddressedHandleID];

  if (v39 && ([MEMORY[0x1E69A7F50] sharedManager], v40 = objc_claimAutoreleasedReturnValue(), -[CKTranscriptCollectionViewController chat](self, "chat"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "networkSupportsSpamReportingForContext:isChatBot:", v39, objc_msgSend(v41, "isChatBot")), v41, v40, v42))
  {
    v43 = MEMORY[0x1E69A7F58];
    chat10 = [(CKTranscriptCollectionViewController *)self chat];
    lastFinishedMessageItem3 = [chat10 lastFinishedMessageItem];
    destinationCallerID3 = [lastFinishedMessageItem3 destinationCallerID];
    v47 = [v43 carrierNameForPhoneNumber:destinationCallerID3];

    v31 = v47 != 0;
    if (v47)
    {
      [v72 addObject:v47];
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_21:
LABEL_22:
  v48 = CKFrameworkBundle();
  v49 = [v48 localizedStringForKey:@"APPLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v72 addObject:v49];

  v50 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v72];
  if (CKIsRunningInMacCatalyst())
  {
    v51 = CKFrameworkBundle();
    *title = [v51 localizedStringForKey:@"REPORT_SPAM_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    if (v31)
    {
      v52 = MEMORY[0x1E696AEC0];
      v53 = CKFrameworkBundle();
      v54 = [v53 localizedStringForKey:@"REPORT_JUNK_CONVERSATION_ALERT_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v55 = [v52 stringWithFormat:v54, v50];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v58 = @"\u200F";
      }

      else
      {
        v58 = @"\u200E";
      }

      v59 = [(__CFString *)v58 stringByAppendingString:v55];

      v60 = v59;
      *message = v59;
      goto LABEL_36;
    }

    v70 = CKFrameworkBundle();
    *message = [v70 localizedStringForKey:@"REPORT_JUNK_CONVERSATION_ALERT_BUTTON_TITLE_CARRIER" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    if (v31)
    {
      v61 = MEMORY[0x1E696AEC0];
      v62 = CKFrameworkBundle();
      v63 = [v62 localizedStringForKey:@"REPORT_JUNK_CONVERSATION_ALERT_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v64 = [v61 stringWithFormat:v63, v50];

      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection2 == 1)
      {
        v67 = @"\u200F";
      }

      else
      {
        v67 = @"\u200E";
      }

      v68 = [(__CFString *)v67 stringByAppendingString:v64];

      v69 = v68;
      *title = v68;
      goto LABEL_36;
    }

    v70 = CKFrameworkBundle();
    *title = [v70 localizedStringForKey:@"REPORT_JUNK_CONVERSATION_ALERT_BUTTON_TITLE_CARRIER" value:&stru_1F04268F8 table:@"ChatKit"];
  }

LABEL_36:
}

- (void)_messageParents
{
  mEMORY[0x1E69A5B40] = [MEMORY[0x1E69A5B40] sharedInstance];
  [mEMORY[0x1E69A5B40] getOpenChatURLWith:&__block_literal_global_1332];
}

void __55__CKTranscriptCollectionViewController__messageParents__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC668];
  v3 = a2;
  v4 = [v2 sharedApplication];
  [v4 openURL:v3 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)_showMoreHelp
{
  v15 = +[CKCommSafetyHelper waysToGetHelpURL];
  v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
  nonPersistentDataStore = [MEMORY[0x1E69853B8] nonPersistentDataStore];
  [v3 setWebsiteDataStore:nonPersistentDataStore];
  v5 = objc_alloc(MEMORY[0x1E69853A0]);
  v6 = [v5 initWithFrame:v3 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v7 = objc_alloc(MEMORY[0x1E696AF68]);
  v8 = [MEMORY[0x1E695DFF8] URLWithString:v15];
  v9 = [v7 initWithURL:v8];

  v10 = [v6 loadRequest:v9];
  v11 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v11 setView:v6];
  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissMoreHelpView_];
  navigationItem = [v11 navigationItem];
  [navigationItem setRightBarButtonItem:v12];

  v14 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v11];
  [v14 setModalPresentationStyle:2];
  [(CKTranscriptCollectionViewController *)self presentViewController:v14 animated:1 completion:0];
}

void __53__CKTranscriptCollectionViewController__blockHandle___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A7F20] sharedBlockList];
  v3 = [*(a1 + 32) cnContact];
  [v2 blockContact:v3];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CKTranscriptCollectionViewController__blockHandle___block_invoke_2;
  block[3] = &unk_1E72EBA18;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __53__CKTranscriptCollectionViewController__blockHandle___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__CKTranscriptCollectionViewController__blockHandle___block_invoke_3;
  v3[3] = &unk_1E72EBA18;
  v3[4] = v1;
  return [v1 updateTranscript:v3 animated:0 completion:0];
}

- (void)_showLeaveConversationFromView:(id)view
{
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"LEAVE_CONVERSATION_CONFIRMATION_SHORT" value:&stru_1F04268F8 table:@"ChatKit"];

  v6 = [CKAlertController alertControllerWithTitle:0 message:v5 preferredStyle:CKIsRunningInMacCatalyst() != 0];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"LEAVE_CONVERSATION_SHORT" value:&stru_1F04268F8 table:@"ChatKit"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CKTranscriptCollectionViewController__showLeaveConversationFromView___block_invoke;
  v13[3] = &unk_1E72EBFE8;
  v13[4] = self;
  v9 = [CKAlertAction actionWithTitle:v8 style:2 handler:v13];
  [v6 addAction:v9];

  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [CKAlertAction actionWithTitle:v11 style:1 handler:0];
  [v6 addAction:v12];

  [(CKTranscriptCollectionViewController *)self presentViewController:v6 animated:1 completion:0];
}

uint64_t __71__CKTranscriptCollectionViewController__showLeaveConversationFromView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v3 = [v2 chat];
  [v3 leave];

  v4 = [*(a1 + 32) conversation];
  v5 = [v4 chat];
  v6 = [v5 hasRecipientsFollowingLocation];

  if (v6)
  {
    v7 = MEMORY[0x1E69DC650];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"STOP_SHARING_ON_DELETE_OR_LEAVE_BODY" value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [v7 alertControllerWithTitle:0 message:v9 preferredStyle:1];

    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"YES" value:&stru_1F04268F8 table:@"ChatKit"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__CKTranscriptCollectionViewController__showLeaveConversationFromView___block_invoke_2;
    v20[3] = &unk_1E72EBFE8;
    v20[4] = *(a1 + 32);
    v13 = [CKAlertAction actionWithTitle:v12 style:0 handler:v20];
    [v10 addAction:v13];

    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"NO" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:0];
    [v10 addAction:v16];

    [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
  }

  v17 = *(a1 + 32);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__CKTranscriptCollectionViewController__showLeaveConversationFromView___block_invoke_3;
  v19[3] = &unk_1E72EBA18;
  v19[4] = v17;
  return [v17 updateTranscript:v19 animated:0 completion:0];
}

void __71__CKTranscriptCollectionViewController__showLeaveConversationFromView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) conversation];
  v1 = [v2 chat];
  [v1 stopSharingLocation];
}

- (void)_showBlockContactSelectionAlertFromView:(id)view
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = IMSharedUtilitiesFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"BLOCK_CONTACT_BUTTON_TITLE" value:&stru_1F04268F8 table:@"CommSafetyLocalizable"];
  v6 = [CKAlertController alertControllerWithTitle:v5 message:0 preferredStyle:CKIsRunningInMacCatalyst() != 0];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  recipients = [conversation recipients];

  obj = recipients;
  v9 = [recipients countByEnumeratingWithState:&v31 objects:v35 count:16];
  v10 = 0x1E72E4000uLL;
  if (v9)
  {
    v11 = v9;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        name = [v14 name];
        v16 = name;
        if (name)
        {
          displayID = name;
        }

        else
        {
          [v14 defaultIMHandle];
          v18 = v12;
          v19 = v6;
          selfCopy = self;
          v22 = v21 = v10;
          displayID = [v22 displayID];

          v10 = v21;
          self = selfCopy;
          v6 = v19;
          v12 = v18;
        }

        v23 = *(v10 + 1824);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __80__CKTranscriptCollectionViewController__showBlockContactSelectionAlertFromView___block_invoke;
        v30[3] = &unk_1E72EC710;
        v30[4] = self;
        v30[5] = v14;
        v24 = [v23 actionWithTitle:displayID style:2 handler:v30];
        [v6 addAction:v24];
      }

      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  v25 = *(v10 + 1824);
  v26 = CKFrameworkBundle();
  v27 = [v26 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v28 = [v25 actionWithTitle:v27 style:1 handler:0];
  [v6 addAction:v28];

  [(CKTranscriptCollectionViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __80__CKTranscriptCollectionViewController__showBlockContactSelectionAlertFromView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) defaultIMHandle];
  [v1 _blockHandle:v2];
}

- (void)addContentAnimationPauseReasons:(int64_t)reasons
{
  contentAnimationPauseReasons = self->_contentAnimationPauseReasons;
  self->_contentAnimationPauseReasons = contentAnimationPauseReasons | reasons;
  if (contentAnimationPauseReasons)
  {
    v4 = 1;
  }

  else
  {
    v4 = reasons == 0;
  }

  if (!v4)
  {
    [(CKTranscriptCollectionViewController *)self updateAnimationPaused];
  }
}

- (void)removeContentAnimationPauseReasons:(int64_t)reasons
{
  contentAnimationPauseReasons = self->_contentAnimationPauseReasons;
  v4 = contentAnimationPauseReasons & ~reasons;
  self->_contentAnimationPauseReasons = v4;
  if (contentAnimationPauseReasons)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(CKTranscriptCollectionViewController *)self updateAnimationPaused];
  }
}

- (CGRect)convertedBoundsToCullFromView:(id)view
{
  viewCopy = view;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView bounds];
  [collectionView convertRect:viewCopy toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_releaseActiveBalloonControllers
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v4 = [chatItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(chatItems);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v11 = [v9 extensibleViewControllerForContext:transcriptIdentifier];

          parentViewController = [v11 parentViewController];
          v13 = parentViewController;
          if (v11)
          {
            v14 = parentViewController == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14 || parentViewController == self)
          {
            transcriptIdentifier2 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
            [v9 releaseBalloonControllerIfNeededForContext:transcriptIdentifier2];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [chatItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

- (void)repromptLastBlackholeFailureIfNotPrompted
{
  lastMessagePartChatItem = [(CKTranscriptCollectionViewController *)self lastMessagePartChatItem];
  v4 = lastMessagePartChatItem;
  if (lastMessagePartChatItem)
  {
    iMChatItem = [lastMessagePartChatItem IMChatItem];
    if ([(CKTranscriptCollectionViewController *)self shouldPresentHawkingPromptForChatItem:iMChatItem])
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Hawking: Found blackholed message that hasn't been prompted", v7, 2u);
        }
      }

      [(CKTranscriptCollectionViewController *)self presentHawkingPromptForChatItem:iMChatItem];
    }
  }
}

- (BOOL)shouldPresentHawkingPromptForChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    message = [itemCopy message];
    presentedViewController = [(CKTranscriptCollectionViewController *)self presentedViewController];
    if (presentedViewController)
    {
    }

    else
    {
      __CurrentTestName = [(CKTranscriptCollectionViewController *)self __CurrentTestName];

      if (!__CurrentTestName)
      {
        isFromMe = [message isFromMe];
        error = [message error];
        code = [error code];

        __ck_isiMessage = [message __ck_isiMessage];
        if (isFromMe)
        {
          if (code == 43)
          {
            if (__ck_isiMessage)
            {
              conversation = [(CKTranscriptCollectionViewController *)self conversation];
              chat = [conversation chat];
              v16 = [chat valueForChatProperty:*MEMORY[0x1E69A5D28]];

              if (!v16 || ([message time], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "compare:", v17), v17, v16, v18 == -1))
              {
                v7 = 1;
                goto LABEL_7;
              }
            }
          }
        }
      }
    }

    v7 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)presentHawkingPromptForChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = itemCopy;
  if (isKindOfClass)
  {
    message = [itemCopy message];
    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    recipient = [conversation recipient];
    iDSCanonicalAddress = [recipient IDSCanonicalAddress];
    v10 = MEMORY[0x193AF5D70]();

    conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
    chat = [conversation2 chat];
    lastAddressedHandleID = [chat lastAddressedHandleID];

    v14 = MEMORY[0x193AF5D70](lastAddressedHandleID);
    IsEmail = IMStringIsEmail();
    if ([message __ck_isiMessage] && objc_msgSend(MEMORY[0x1E69A5CA0], "smsEnabled"))
    {
      conversation3 = [(CKTranscriptCollectionViewController *)self conversation];
      isBusinessConversation = [conversation3 isBusinessConversation];

      v18 = isBusinessConversation | IsEmail;
    }

    else
    {
      v18 = 1;
    }

    mEMORY[0x1E69A7F60] = [MEMORY[0x1E69A7F60] sharedManager];
    isMessagesTheDefaultTextApp = [mEMORY[0x1E69A7F60] isMessagesTheDefaultTextApp];

    if (v18)
    {
      v21 = 0;
    }

    else
    {
      conversation4 = [(CKTranscriptCollectionViewController *)self conversation];
      v21 = ([conversation4 isToEmailAddress] ^ 1) & isMessagesTheDefaultTextApp;
    }

    v23 = [(CKTranscriptCollectionViewController *)self makeHawkingPromptForMessage:message toRecipient:v10 fromSender:v14 withSMSOption:v21];
    [(CKTranscriptCollectionViewController *)self presentViewController:v23 animated:1 completion:0];
    conversation5 = [(CKTranscriptCollectionViewController *)self conversation];
    chat2 = [conversation5 chat];
    time = [message time];
    [chat2 setValue:time forChatProperty:*MEMORY[0x1E69A5D28]];

    v5 = itemCopy;
  }
}

- (id)makeHawkingPromptForMessage:(id)message toRecipient:(id)recipient fromSender:(id)sender withSMSOption:(BOOL)option
{
  optionCopy = option;
  v49 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  recipientCopy = recipient;
  senderCopy = sender;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = messageCopy;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Hawking: Showing non-cellular blackhole prompt for message (%@)", buf, 0xCu);
    }
  }

  if (IMStringIsEmail())
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_TITLE_%@" value:&stru_1F04268F8 table:@"ChatKit"];
    recipientCopy = [v13 stringWithFormat:v15, recipientCopy];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    LODWORD(v14) = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

    if (v14)
    {
      v18 = @"\u200F";
    }

    else
    {
      v18 = @"\u200E";
    }

    v19 = [(__CFString *)v18 stringByAppendingString:recipientCopy];
  }

  else
  {
    recipientCopy = IMFormattedDisplayStringForNumber();
    v20 = MEMORY[0x1E696AEC0];
    v21 = CKFrameworkBundle();
    v22 = [v21 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_TITLE_%@" value:&stru_1F04268F8 table:@"ChatKit"];
    v23 = [v20 stringWithFormat:v22, recipientCopy];

    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    LODWORD(v21) = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection] == 1;

    if (v21)
    {
      v25 = @"\u200F";
    }

    else
    {
      v25 = @"\u200E";
    }

    v19 = [(__CFString *)v25 stringByAppendingString:v23];
  }

  v26 = [(CKTranscriptCollectionViewController *)self hawkingFailurePromptMessageForHandle:senderCopy];
  v27 = [(CKAlertController *)CKBlackholeAlertController alertControllerWithTitle:v19 message:v26 preferredStyle:1];

  v28 = CKFrameworkBundle();
  v29 = [v28 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_RESEND_AS_SMS" value:&stru_1F04268F8 table:@"ChatKit"];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __105__CKTranscriptCollectionViewController_makeHawkingPromptForMessage_toRecipient_fromSender_withSMSOption___block_invoke;
  v44[3] = &unk_1E72EC710;
  v30 = messageCopy;
  v45 = v30;
  selfCopy = self;
  v31 = [CKAlertAction actionWithTitle:v29 style:0 handler:v44];

  v32 = CKFrameworkBundle();
  v33 = [v32 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_MESSAGE_LEARN_MORE" value:&stru_1F04268F8 table:@"ChatKit"];
  v34 = [CKAlertAction actionWithTitle:v33 style:0 handler:&__block_literal_global_1375_0];

  v35 = CKFrameworkBundle();
  v36 = v35;
  if (optionCopy)
  {
    v37 = [v35 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v38 = [CKAlertAction actionWithTitle:v37 style:0 handler:0];

    [v27 addAction:v31];
    [v27 setPreferredAction:v31];
  }

  else
  {
    v39 = [v35 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
    v38 = [CKAlertAction actionWithTitle:v39 style:0 handler:0];
  }

  [v27 addAction:v34];
  [v27 addAction:v38];
  preferredAction = [v27 preferredAction];
  v41 = preferredAction == 0;

  if (v41)
  {
    [v27 setPreferredAction:v38];
  }

  return v27;
}

void __105__CKTranscriptCollectionViewController_makeHawkingPromptForMessage_toRecipient_fromSender_withSMSOption___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Hawking: Original message blackholed, sending message as SMS. %@", &v7, 0xCu);
    }
  }

  v6 = [MEMORY[0x1E69A8168] sharedInstance];
  [v6 trackSpamEvent:10];

  [*(a1 + 40) _downgradeMessage:*(a1 + 32) andDowngradeChat:1];
}

void __105__CKTranscriptCollectionViewController_makeHawkingPromptForMessage_toRecipient_fromSender_withSMSOption___block_invoke_1373(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Hawking: Sending user to Hawking KB article", v6, 2u);
    }
  }

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [MEMORY[0x1E69A82A0] internationalSpamFilterLearnMoreURL];
  [v4 openURL:v5 withCompletionHandler:0];
}

- (id)hawkingFailurePromptMessageForHandle:(id)handle
{
  handleCopy = handle;
  v4 = MEMORY[0x193AF5D70]();
  IsEmail = IMStringIsEmail();

  if (IsEmail)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_MESSAGE_EMAIL_ADDRESS_%@" value:&stru_1F04268F8 table:@"ChatKit"];
    v9 = [v6 stringWithFormat:v8, v4];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v12 = @"\u200F";
    }

    else
    {
      v12 = @"\u200E";
    }

    v13 = [(__CFString *)v12 stringByAppendingString:v9];
  }

  else
  {
    v9 = IMFormattedDisplayStringForNumber();
    v14 = MEMORY[0x1E696AEC0];
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_MESSAGE_PHONE_NUMBER_%@" value:&stru_1F04268F8 table:@"ChatKit"];
    v17 = [v14 stringWithFormat:v16, v9];

    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection2 == 1)
    {
      v20 = @"\u200F";
    }

    else
    {
      v20 = @"\u200E";
    }

    v13 = [(__CFString *)v20 stringByAppendingString:v17];
  }

  return v13;
}

- (void)_replayLastImpactEffectIfNotFromMe
{
  v64 = *MEMORY[0x1E69E9840];
  presentedViewController = [(CKTranscriptCollectionViewController *)self presentedViewController];
  if (!presentedViewController)
  {
    __CurrentTestName = [(CKTranscriptCollectionViewController *)self __CurrentTestName];

    if (__CurrentTestName || IMSharedHelperIsOlderDevice() && CKIsRunningInMessagesNotificationExtension())
    {
      return;
    }

    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    lastMessagePartChatItem = [(CKTranscriptCollectionViewController *)self lastMessagePartChatItem];
    if (lastMessagePartChatItem)
    {
      v7 = [(CKTranscriptCollectionViewController *)self cellForChatItem:lastMessagePartChatItem];
      v8 = v7;
      if (v7)
      {
        [v7 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        superview = [v8 superview];
        [collectionView convertRect:superview fromView:{v10, v12, v14, v16}];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [collectionView contentOffset];
        v27 = v26;
        [collectionView frame];
        v29 = v28;
        [collectionView frame];
        v67.size.height = v30;
        v67.origin.x = 0.0;
        v66.origin.x = v19;
        v66.origin.y = v21;
        v66.size.width = v23;
        v66.size.height = v25;
        v67.origin.y = v27;
        v67.size.width = v29;
        if (CGRectIntersectsRect(v66, v67))
        {
          chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
          lastObject = [chatItems lastObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {

            goto LABEL_31;
          }

          iMChatItem = [lastMessagePartChatItem IMChatItem];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            message = [iMChatItem message];
            isFromMe = [message isFromMe];
            timeExpressiveSendPlayed = [message timeExpressiveSendPlayed];

            if (timeExpressiveSendPlayed)
            {
              v38 = 1;
            }

            else
            {
              v38 = isFromMe;
            }

            if (v38 == 1 && (-[CKTranscriptCollectionViewController playedLastImpactEffectForTransitionFromComposing](self, "playedLastImpactEffectForTransitionFromComposing") || !-[CKTranscriptCollectionViewController transitionedFromComposing](self, "transitionedFromComposing") || (-[CKTranscriptCollectionViewController delegate](self, "delegate"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 transcriptCollectionViewControllerPlaybackForOutgoingEffectsIsAllowed:self], v39, !v40)))
            {
              if (IMOSLoggingEnabled())
              {
                v43 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v47 = timeExpressiveSendPlayed != 0;
                  playedLastImpactEffectForTransitionFromComposing = [(CKTranscriptCollectionViewController *)self playedLastImpactEffectForTransitionFromComposing];
                  transitionedFromComposing = [(CKTranscriptCollectionViewController *)self transitionedFromComposing];
                  delegate = [(CKTranscriptCollectionViewController *)self delegate];
                  *buf = 67110144;
                  v55 = isFromMe;
                  v56 = 1024;
                  v57 = v47;
                  v58 = 1024;
                  v59 = playedLastImpactEffectForTransitionFromComposing;
                  v60 = 1024;
                  v61 = transitionedFromComposing;
                  v62 = 1024;
                  v63 = [delegate transcriptCollectionViewControllerPlaybackForOutgoingEffectsIsAllowed:self];
                  _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "Not starting FSM. messageIsFromMe: %d - effectHasBeenPlayed: %d - playedLastImpactForTransitionFromComposing: %d - transitionedFromComposing: %d - playbackAllowed: %d", buf, 0x20u);
                }
              }
            }

            else
            {
              if (isFromMe)
              {
                [(CKTranscriptCollectionViewController *)self setPlayedLastImpactEffectForTransitionFromComposing:1];
              }

              expressiveSendStyleID = [message expressiveSendStyleID];
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __74__CKTranscriptCollectionViewController__replayLastImpactEffectIfNotFromMe__block_invoke;
              block[3] = &unk_1E72F1580;
              v49 = expressiveSendStyleID;
              selfCopy = self;
              v51 = message;
              v52 = iMChatItem;
              v53 = lastMessagePartChatItem;
              v42 = expressiveSendStyleID;
              dispatch_async(MEMORY[0x1E69E96A0], block);
            }
          }
        }
      }
    }

LABEL_31:

    return;
  }
}

uint64_t __74__CKTranscriptCollectionViewController__replayLastImpactEffectIfNotFromMe__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([CKImpactEffectManager identifierIsAnimatedImpactEffect:*(a1 + 32)])
  {
    [*(a1 + 40) setHiddenBalloonViews:0];
    v2 = [*(a1 + 40) impactEffectManager];
    v9[0] = *(a1 + 48);
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v2 animateMessages:v3];

    v4 = [*(a1 + 40) chat];
    [v4 markChatItemAsPlayedExpressiveSend:*(a1 + 56)];
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[CKTranscriptCollectionViewController _replayLastImpactEffectIfNotFromMe]_block_invoke";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s - Replaying last effect", &v7, 0xCu);
    }
  }

  return [*(a1 + 40) startFullscreenEffectIfNeededForChatItem:*(a1 + 64)];
}

- (void)_downgradeMessage:(id)message andDowngradeChat:(BOOL)chat
{
  chatCopy = chat;
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (messageCopy)
  {
    v7 = messageCopy;
    if ([messageCopy __ck_isSMS])
    {
      [(CKTranscriptCollectionViewController *)self _resendMessage:v7];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(29);
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          guid = [v7 guid];
          conversation = [(CKTranscriptCollectionViewController *)self conversation];
          *buf = 138412546;
          v19 = guid;
          v20 = 2112;
          v21 = conversation;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Manually downgrading message with GUID {%@} -- conversation:%@", buf, 0x16u);
        }
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_CKShouldLogExternal())
        {
          guid2 = [v7 guid];
          [(CKTranscriptCollectionViewController *)self conversation];
          v15 = v14 = guid2;
          _CKLogExternal();
        }
      }

      v12 = [(CKConversation *)self->_conversation chat:v14];
      [v12 downgradeMessage:v7 manualDowngrade:1 downgradeChat:chatCopy];

      __ck_downgradedMessage = [v7 __ck_downgradedMessage];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __75__CKTranscriptCollectionViewController__downgradeMessage_andDowngradeChat___block_invoke;
      v16[3] = &unk_1E72EB8D0;
      v16[4] = self;
      v17 = __ck_downgradedMessage;
      v7 = __ck_downgradedMessage;
      [(CKTranscriptCollectionViewController *)self updateTranscript:v16 animated:0 completion:0];
    }
  }
}

void __75__CKTranscriptCollectionViewController__downgradeMessage_andDowngradeChat___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 1072);
  v3 = [MEMORY[0x1E69A5C90] smsService];
  [v2 sendMessage:v1 onService:v3 newComposition:0];
}

- (void)_resendMessage:(id)message
{
  v13 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (messageCopy)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(27);
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = messageCopy;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "Resending message %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__CKTranscriptCollectionViewController__resendMessage___block_invoke;
    v9[3] = &unk_1E72EB8D0;
    v9[4] = self;
    v10 = messageCopy;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__CKTranscriptCollectionViewController__resendMessage___block_invoke_2;
    v6[3] = &unk_1E72EB8D0;
    v7 = v10;
    selfCopy = self;
    [(CKTranscriptCollectionViewController *)self updateTranscript:v9 animated:0 completion:v6];
  }
}

void __55__CKTranscriptCollectionViewController__resendMessage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 1072);
  v3 = [v2 sendingService];
  [v2 retryMessage:v1 onService:v3];
}

void __55__CKTranscriptCollectionViewController__resendMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v3 = [v2 code];

  if (v3 == 43)
  {
    v5 = [*(a1 + 40) conversation];
    v4 = [v5 chat];
    [v4 refreshServiceForSending];
  }
}

- (void)_resendFailedPollVote:(id)vote forMessage:(id)message
{
  if (vote && message)
  {
    dataSource = [vote dataSource];
    pluginPayload = [dataSource pluginPayload];

    v6 = pluginPayload;
    if (pluginPayload)
    {
      v7 = MEMORY[0x1E696AEC0];
      associatedMessageGUID = [pluginPayload associatedMessageGUID];
      v9 = [v7 stringWithFormat:@"bp:%@", associatedMessageGUID];

      v10 = [(CKTranscriptCollectionViewController *)self chatItemForGUID:v9];
      if (v10)
      {
        v11 = [MEMORY[0x1E69A5AE0] configureMessageSummaryInfoForChatItem:v10];
        v12 = MEMORY[0x1E69A5BD8];
        data = [pluginPayload data];
        associatedMessageGUID2 = [pluginPayload associatedMessageGUID];
        pluginBundleID = [pluginPayload pluginBundleID];
        v16 = [v12 customAcknowledgementMessageWithPayloadData:data associatedMessageGUID:associatedMessageGUID2 balloonBundleID:pluginBundleID messageSummaryInfo:v11 threadIdentifier:0];

        [(CKTranscriptCollectionViewController *)self _resendMessage:v16];
      }

      v6 = pluginPayload;
    }
  }
}

- (void)_resendFailedMessages
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __61__CKTranscriptCollectionViewController__resendFailedMessages__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(27);
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v16 = v6;
            _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Resending Stewie message %@", buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          v10 = v6;
          _CKLog();
        }

        v8 = *(*(a1 + 40) + 1072);
        v9 = [v8 sendingService];
        [v8 retryMessage:v6 onService:v9];
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v3);
  }
}

- (void)transferRestored:(id)restored
{
  v21 = *MEMORY[0x1E69E9840];
  restoredCopy = restored;
  object = [restoredCopy object];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [chatItems __ck_indexOfTransfer:object];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    object2 = [restoredCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      object3 = [restoredCopy object];
      chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
      v12 = [chatItems2 containsObject:object3];

      if (v12)
      {
        [(CKTranscriptCollectionViewController *)self reloadData];
      }
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:v7];
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v18 = object;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_DEBUG, "Transfer %@ restored. Reload indexes %@.", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v15 = object;
      v16 = v13;
      _CKLog();
    }

    [chatItems __ck_unloadSizesAtIndexes:{v13, v15, v16}];
    [(CKTranscriptCollectionViewController *)self reloadData];
  }
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v19[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __76__CKTranscriptCollectionViewController_stateDictionaryForDiagnosticsRequest__block_invoke;
  v16 = &unk_1E72F0918;
  v17 = v3;
  v5 = v3;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:&v13];

  [(CKTranscriptCollectionViewController *)self _logVisibleChatItems:v13];
  v18[0] = @"debugDescription";
  v6 = [(CKTranscriptCollectionViewController *)self debugDescription];
  v19[0] = v6;
  v19[1] = v5;
  v18[1] = @"bottomChatItems";
  v18[2] = @"chat";
  chat = [(CKTranscriptCollectionViewController *)self chat];
  stateDictionaryForDiagnosticsRequest = [chat stateDictionaryForDiagnosticsRequest];
  v9 = stateDictionaryForDiagnosticsRequest;
  v10 = @"nil";
  if (stateDictionaryForDiagnosticsRequest)
  {
    v10 = stateDictionaryForDiagnosticsRequest;
  }

  v19[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

  return v11;
}

void __76__CKTranscriptCollectionViewController_stateDictionaryForDiagnosticsRequest__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 IMChatItem];
  v4 = [v3 guid];

  if ([*(a1 + 32) count] <= 0x31)
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = v8;
    v10 = @"nil";
    if (v4)
    {
      v10 = v4;
    }

    v11 = [v6 stringWithFormat:@"%@: %@", v8, v10];
    [v5 addObject:v11];
  }
}

- (void)_logVisibleChatItems
{
  v109 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    if ([(CKTranscriptCollectionViewController *)self isViewLoaded])
    {
      view = [(CKTranscriptCollectionViewController *)self view];
      window = [view window];

      if (window)
      {
        array = [MEMORY[0x1E695DF70] array];
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
        indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

        v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v100 objects:v108 count:16];
        if (v8)
        {
          v9 = *v101;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v101 != v9)
              {
                objc_enumerationMutation(indexPathsForVisibleItems);
              }

              v11 = *(*(&v100 + 1) + 8 * i);
              if ([v11 item] < 0 || (v12 = objc_msgSend(v11, "item"), -[CKTranscriptCollectionViewController chatItems](self, "chatItems"), v13 = objc_claimAutoreleasedReturnValue(), LOBYTE(v12) = v12 < objc_msgSend(v13, "count"), v13, (v12 & 1) == 0))
              {
                if (IMOSLoggingEnabled())
                {
                  v18 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "index path out of bounds. Continuing", buf, 2u);
                  }
                }
              }

              else
              {
                chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
                v15 = [chatItems objectAtIndex:{objc_msgSend(v11, "item")}];

                iMChatItem = [v15 IMChatItem];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass & [objc_opt_class() instancesRespondToSelector:sel_message])
                {
                  [array addObject:v15];
                }
              }
            }

            v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v100 objects:v108 count:16];
          }

          while (v8);
        }

        [array sortUsingComparator:&__block_literal_global_1432_0];
        v89 = objc_alloc_init(MEMORY[0x1E696AD60]);
        if ([array count])
        {
          v19 = 0;
          do
          {
            v20 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v85 = [array objectAtIndex:v19];
            collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
            visibleCells = [collectionView2 visibleCells];
            v87 = [visibleCells objectAtIndex:v19];

            iMChatItem2 = [v85 IMChatItem];
            message = [iMChatItem2 message];

            if ([message isFromMe])
            {
              v25 = @"\t\t\t\t\t\t\t\t\t\t";
            }

            else
            {
              v25 = &stru_1F04268F8;
            }

            text = [message text];
            string = [text string];

            if ([string length] <= 2)
            {
              v28 = string;
            }

            else
            {
              v28 = [string substringWithRange:{0, 3}];
            }

            [v89 appendString:@"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n"];
            [v20 appendString:@"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n"];
            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@id: %lld   message: %@\n", v25, objc_msgSend(message, "messageID"), message];
            [v89 appendString:v29];

            v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@id: %lld   message: %@\n", v25, objc_msgSend(message, "messageID"), message];
            [v20 appendString:v30];

            v31 = MEMORY[0x1E696AEC0];
            fileTransferGUIDs = [message fileTransferGUIDs];
            v33 = [v31 stringWithFormat:@"%@fileTransferGUIDs: %@\n", v25, fileTransferGUIDs];
            [v89 appendString:v33];

            v34 = MEMORY[0x1E696AEC0];
            fileTransferGUIDs2 = [message fileTransferGUIDs];
            v36 = [v34 stringWithFormat:@"%@fileTransferGUIDs: %@\n", v25, fileTransferGUIDs2];
            [v20 appendString:v36];

            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@associated cell: %p\n", v25, v87];
            [v89 appendString:v37];

            v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@associated cell: %p\n", v25, v87];
            [v20 appendString:v38];

            v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@redacted text: %@\n", v25, v28];
            [v89 appendString:v39];

            v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@redacted text: %@\n", v25, v28];
            [v20 appendString:v40];

            v41 = MEMORY[0x1E696AEC0];
            text2 = [message text];
            string2 = [text2 string];
            v44 = [v41 stringWithFormat:@"%@Text CharacterCount: %tu\n", v25, objc_msgSend(string2, "length")];
            [v89 appendString:v44];

            v45 = MEMORY[0x1E696AEC0];
            text3 = [message text];
            string3 = [text3 string];
            v48 = [v45 stringWithFormat:@"%@Text CharacterCount: %tu\n", v25, objc_msgSend(string3, "length")];
            [v20 appendString:v48];

            v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n\n"];
            [v89 appendString:v49];

            v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n\n\n"];
            [v20 appendString:v50];

            if (IMOSLoggingEnabled())
            {
              v51 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v107 = v20;
                _os_log_impl(&dword_19020E000, v51, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
              }
            }

            ++v19;
          }

          while (v19 < [array count]);
        }

        view2 = [(CKTranscriptCollectionViewController *)self view];
        recursiveDescription = [view2 recursiveDescription];

        v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        windows = [mEMORY[0x1E69DC668] windows];

        v56 = [windows countByEnumeratingWithState:&v96 objects:v105 count:16];
        if (v56)
        {
          v57 = *v97;
          do
          {
            for (j = 0; j != v56; ++j)
            {
              if (*v97 != v57)
              {
                objc_enumerationMutation(windows);
              }

              v59 = *(*(&v96 + 1) + 8 * j);
              v60 = MEMORY[0x1E696AEC0];
              recursiveDescription2 = [v59 recursiveDescription];
              v62 = [v60 stringWithFormat:@"Showing hierarchy for window   %@\n%@", v59, recursiveDescription2];

              [v53 addObject:v62];
            }

            v56 = [windows countByEnumeratingWithState:&v96 objects:v105 count:16];
          }

          while (v56);
        }

        currentFirstResponder = [MEMORY[0x1E69DCE60] currentFirstResponder];
        parentViewController = [(CKTranscriptCollectionViewController *)self parentViewController];
        v65 = parentViewController == currentFirstResponder;

        if (v65)
        {
          parentViewController2 = [(CKTranscriptCollectionViewController *)self parentViewController];
          inputAccessoryView = [parentViewController2 inputAccessoryView];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            inputAccessoryView = currentFirstResponder;
          }

          else
          {
            inputAccessoryView = 0;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && IMOSLoggingEnabled())
        {
          v67 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            delegate = [inputAccessoryView delegate];
            *buf = 138412290;
            v107 = delegate;
            _os_log_impl(&dword_19020E000, v67, OS_LOG_TYPE_INFO, "inputAccessory's delegate  %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v69 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
          }
        }

        if (IMOSLoggingEnabled())
        {
          v70 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            date = [MEMORY[0x1E695DF00] date];
            *buf = 138412290;
            v107 = date;
            _os_log_impl(&dword_19020E000, v70, OS_LOG_TYPE_INFO, "Timestamp\t\t%@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v72 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v107 = currentFirstResponder;
            _os_log_impl(&dword_19020E000, v72, OS_LOG_TYPE_INFO, "Current Responder\t\t%@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v73 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v107 = inputAccessoryView;
            _os_log_impl(&dword_19020E000, v73, OS_LOG_TYPE_INFO, "inputAccessory\t\t%@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
            *buf = 138412290;
            v107 = chatItems2;
            _os_log_impl(&dword_19020E000, v74, OS_LOG_TYPE_INFO, "All chatitems\t\t%@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v76 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v107 = v89;
            _os_log_impl(&dword_19020E000, v76, OS_LOG_TYPE_INFO, "Visible GUIDS\t\t%@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v77 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v107 = recursiveDescription;
            _os_log_impl(&dword_19020E000, v77, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v78 = v53;
        v79 = [v78 countByEnumeratingWithState:&v92 objects:v104 count:16];
        if (v79)
        {
          v80 = *v93;
          do
          {
            for (k = 0; k != v79; ++k)
            {
              if (*v93 != v80)
              {
                objc_enumerationMutation(v78);
              }

              v82 = *(*(&v92 + 1) + 8 * k);
              if (IMOSLoggingEnabled())
              {
                v83 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v107 = v82;
                  _os_log_impl(&dword_19020E000, v83, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                }
              }
            }

            v79 = [v78 countByEnumeratingWithState:&v92 objects:v104 count:16];
          }

          while (v79);
        }

        if (IMOSLoggingEnabled())
        {
          v84 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
          }
        }
      }
    }
  }
}

BOOL __60__CKTranscriptCollectionViewController__logVisibleChatItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 message];
  v6 = [v5 messageID];
  v7 = [v4 message];

  v8 = v6 > [v7 messageID];
  return v8;
}

- (void)previewDidChange:(id)change
{
  v33[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  object2 = [changeCopy object];
  object3 = object2;
  if (isKindOfClass)
  {
    transfer = [object2 transfer];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v12 = [chatItems __ck_indexOfTransfer:transfer];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [associatedChatItems __ck_indexOfTransfer:transfer];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_21:

        goto LABEL_22;
      }

      v14 = v13;
      v15 = [associatedChatItems objectAtIndex:v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        guid = [transfer guid];
        v32 = v16;
        LODWORD(v16) = [v16 containsTransferGUID:guid];

        if (v16)
        {
          if (![object3 cachedValidPreviewExists])
          {
            v31 = IMLogHandleForCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [CKTranscriptCollectionViewController previewDidChange:transfer];
            }

            goto LABEL_21;
          }

          v18 = [MEMORY[0x1E696AC88] indexPathForItem:v14 inSection:1];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = [MEMORY[0x1E696AC88] indexPathForItem:v14 inSection:1];
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696AC88] indexPathForItem:v12 inSection:0];
    }

    [(CKTranscriptCollectionViewController *)self unloadCachedSizeAndReloadChatItemAtIndexPath:v18];

    goto LABEL_21;
  }

  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  object3 = [changeCopy object];
  if (v19)
  {
    chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
    v21 = [chatItems2 containsObject:object3];

    if (v21)
    {
      [(CKTranscriptCollectionViewController *)self reloadData];
    }

    goto LABEL_23;
  }

  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    object3 = [changeCopy object];
    chatItems3 = [(CKTranscriptCollectionViewController *)self chatItems];
    v24 = [chatItems3 containsObject:object3];

    if (!v24)
    {
      goto LABEL_23;
    }

    chatItems4 = [(CKTranscriptCollectionViewController *)self chatItems];
    iMChatItem = [object3 IMChatItem];
    guid2 = [iMChatItem guid];
    v28 = [chatItems4 __ck_indexOfChatItemWithGUID:guid2];

    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    transfer = [MEMORY[0x1E696AC88] indexPathForItem:v28 inSection:0];
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    v33[0] = transfer;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    [collectionView reloadItemsAtIndexPaths:v30];

LABEL_22:
LABEL_23:
  }
}

- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)notification
{
  v34 = *MEMORY[0x1E69E9840];
  object = [notification object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferGUID = [object transferGUID];
    if ([transferGUID length])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __84__CKTranscriptCollectionViewController__adaptiveImageGlyphWasGeneratedNotification___block_invoke;
      v29[3] = &unk_1E72F2B78;
      v9 = transferGUID;
      v30 = v9;
      v10 = v6;
      v31 = v10;
      v11 = v7;
      v32 = v11;
      [chatItems enumerateObjectsUsingBlock:v29];
      associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __84__CKTranscriptCollectionViewController__adaptiveImageGlyphWasGeneratedNotification___block_invoke_2;
      v25[3] = &unk_1E72ED7C8;
      v26 = v9;
      v13 = v10;
      v27 = v13;
      v14 = v11;
      v28 = v14;
      [associatedChatItems enumerateObjectsUsingBlock:v25];
      if ([v13 count])
      {
        v15 = [v13 copy];
        [CKChatItem unloadSizesOfChatItems:v15];
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v22;
        do
        {
          v20 = 0;
          do
          {
            if (*v22 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [(CKTranscriptCollectionViewController *)self unloadCachedSizeAndReloadChatItemAtIndexPath:*(*(&v21 + 1) + 8 * v20++), v21];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
        }

        while (v18);
      }
    }
  }
}

void __84__CKTranscriptCollectionViewController__adaptiveImageGlyphWasGeneratedNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v10;
  if (isKindOfClass)
  {
    v7 = v10;
    v8 = [v7 transferGUIDsInMessagePartText];
    if ([v8 containsObject:*(a1 + 32)])
    {
      [*(a1 + 40) addObject:v7];
      v9 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
      [*(a1 + 48) addObject:v9];
      [v7 unloadTranscriptText];
    }

    v6 = v10;
  }
}

void __84__CKTranscriptCollectionViewController__adaptiveImageGlyphWasGeneratedNotification___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 acknowledgments];
    v7 = v6;
    v8 = MEMORY[0x1E695E0F0];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v5 messageAcknowledgmentChatItem];
    v7 = v10;
    if (!v10)
    {
      v11 = MEMORY[0x1E695E0F0];
      goto LABEL_9;
    }

    v25[0] = v10;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
LABEL_8:
    v11 = v9;
LABEL_9:

    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v14 = v12;
  if (v13)
  {
    v15 = v13;
    v16 = *v21;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v20 + 1) + 8 * i) fileTransferGUIDs];
        v19 = [v18 containsObject:*(a1 + 32)];

        if (v19)
        {

          [*(a1 + 40) addObject:v5];
          v14 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:1];
          [*(a1 + 48) addObject:v14];
          goto LABEL_21;
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v14 = v12;
  }

LABEL_21:
}

- (void)snapshotDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"CKSnapshotChangedMessageGUIDKey"];

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CKTranscriptCollectionViewController_snapshotDidChange___block_invoke;
  v10[3] = &unk_1E72F2DB8;
  v7 = v5;
  v11 = v7;
  v8 = [chatItems indexOfObjectPassingTest:v10];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:0];
    [(CKTranscriptCollectionViewController *)self unloadCachedSizeAndReloadChatItemAtIndexPath:v9];
  }
}

uint64_t __58__CKTranscriptCollectionViewController_snapshotDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 message];
    v5 = [v4 guid];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)locationStringDidChange:(id)change
{
  object = [change object];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  transfer = [object transfer];
  v6 = [chatItems __ck_indexOfTransfer:transfer];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v6];
    [chatItems __ck_unloadSizesAtIndexes:v7];
    [chatItems __ck_unloadTranscriptTextAtIndexes:v7];
    [(CKTranscriptCollectionViewController *)self reloadData];
  }
}

- (void)unloadCachedSizeAndReloadChatItemAtIndexPath:(id)path
{
  v36[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  currentEffect = [fullscreenEffectManager currentEffect];
  if (currentEffect)
  {

LABEL_9:
    goto LABEL_10;
  }

  impactEffectManager = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  isAnimating = [impactEffectManager isAnimating];

  if ((isAnimating & 1) == 0)
  {
    fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(pathCopy, "item")}];
    if ([pathCopy section])
    {
      if ([pathCopy section] == 1)
      {
        associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
        [associatedChatItems __ck_unloadSizesAtIndexes:v9];

        v36[0] = pathCopy;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        [fullscreenEffectManager reloadItemsAtIndexPaths:v11];

        [(CKTranscriptCollectionViewController *)self reloadData];
      }
    }

    else
    {
      collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
      collectionViewLayout = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
      [collectionView contentOffset];
      v15 = v14;
      v17 = v16;
      [collectionView contentSize];
      v19 = v18;
      v21 = v20;
      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      [chatItems __ck_unloadSizesAtIndexes:v9];

      indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
      v24 = [indexPathsForVisibleItems containsObject:pathCopy];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __85__CKTranscriptCollectionViewController_unloadCachedSizeAndReloadChatItemAtIndexPath___block_invoke;
      v27[3] = &unk_1E72F2E78;
      v35 = v24;
      v28 = collectionViewLayout;
      v31 = v15;
      v32 = v17;
      v33 = v19;
      v34 = v21;
      v29 = pathCopy;
      v30 = collectionView;
      v25 = collectionView;
      v26 = collectionViewLayout;
      [(CKTranscriptCollectionViewController *)self reloadChatItemsAtIndexes:v9 animated:v24 completion:v27];
    }

    goto LABEL_9;
  }

LABEL_10:
}

void __85__CKTranscriptCollectionViewController_unloadCachedSizeAndReloadChatItemAtIndexPath___block_invoke(uint64_t a1)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    [*(a1 + 32) prepareLayout];
    v7 = [*(a1 + 32) layoutAttributesForItemAtIndexPath:*(a1 + 40)];
    [v7 frame];
    MaxY = CGRectGetMaxY(v8);
    v4 = *(a1 + 64);
    if (MaxY < v4)
    {
      v5 = *(a1 + 56);
      [*(a1 + 32) collectionViewContentSize];
      [*(a1 + 48) setContentOffset:0 animated:{v5, v4 + v6 - *(a1 + 80)}];
    }
  }
}

- (void)_reloadChatItemAtIndexPath:(id)path
{
  v13[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  currentEffect = [fullscreenEffectManager currentEffect];
  if (currentEffect)
  {

LABEL_9:
    goto LABEL_10;
  }

  impactEffectManager = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  isAnimating = [impactEffectManager isAnimating];

  if ((isAnimating & 1) == 0)
  {
    fullscreenEffectManager = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(pathCopy, "item")}];
    if ([pathCopy section])
    {
      if ([pathCopy section] == 1)
      {
        associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
        [associatedChatItems __ck_unloadSizesAtIndexes:v9];

        v13[0] = pathCopy;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        [fullscreenEffectManager reloadItemsAtIndexPaths:v11];

        [(CKTranscriptCollectionViewController *)self reloadData];
      }
    }

    else
    {
      indexPathsForVisibleItems = [fullscreenEffectManager indexPathsForVisibleItems];
      -[CKTranscriptCollectionViewController reloadChatItemsAtIndexes:animated:](self, "reloadChatItemsAtIndexes:animated:", v9, [indexPathsForVisibleItems containsObject:pathCopy]);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)transferUpdated:(id)updated
{
  object = [updated object];
  v4 = [(CKTranscriptCollectionViewController *)self _indexPathForTransfer:?];
  if (v4)
  {
    error = [object error];
    v6 = error;
    if (!error)
    {
      if (![object isFileDataReady])
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    domain = [error domain];
    if ([domain isEqualToString:@"IMFileTransferErrorDomain"])
    {
      code = [v6 code];

      if (code == 25)
      {
        v9 = @"ERR_TRANSFER_EXPIRED_TITLE";
        goto LABEL_12;
      }
    }

    else
    {
    }

    domain2 = [v6 domain];
    if (![domain2 isEqualToString:@"IMFileTransferErrorDomain"])
    {
      v12 = 0;
      goto LABEL_14;
    }

    code2 = [v6 code];

    if (code2 != 26)
    {
      v12 = 0;
      goto LABEL_15;
    }

    v9 = @"ERR_TRANSFER_NO_NETWORK_TITLE";
LABEL_12:
    domain2 = CKFrameworkBundle();
    v12 = [domain2 localizedStringForKey:v9 value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_14:

LABEL_15:
    v13 = CKFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];

    v15 = CKCreateAlertControllerWithError(0, v12, 0, v14, 0);
    if (v15)
    {
      [(CKTranscriptCollectionViewController *)self presentViewController:v15 animated:1 completion:0];
    }

    [object isFileDataReady];
LABEL_18:
    [(CKTranscriptCollectionViewController *)self unloadCachedSizeAndReloadChatItemAtIndexPath:v4];
LABEL_19:
  }
}

- (id)_indexPathForTransfer:(id)transfer
{
  transferCopy = transfer;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [chatItems __ck_indexOfTransfer:transferCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    associatedChatItems = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v8 = [associatedChatItems __ck_indexOfTransfer:transferCopy];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:1];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
  }

  return v9;
}

- (void)_forceReloadChatItems
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Force reloading all chat items", buf, 2u);
    }
  }

  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [chatItems countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(chatItems);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 unloadTranscriptText];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }
          }
        }

        [v3 addObject:v8];
      }

      v5 = [chatItems countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  [CKChatItem unloadSizesOfChatItems:v3];
  [(CKTranscriptCollectionViewController *)self reloadData];
}

- (void)addressBookChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CKTranscriptCollectionViewController_addressBookChanged___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_conversationListFinishedMerging:(id)merging
{
  v17 = *MEMORY[0x1E69E9840];
  mergingCopy = merging;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  v6 = +[CKConversationList sharedConversationList];
  chat = [conversation chat];
  guid = [chat guid];
  v9 = [v6 conversationForExistingChatWithGUID:guid];

  if (v9)
  {
    if (conversation != v9)
    {
      [(CKTranscriptCollectionViewController *)self setConversation:v9];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v14 = v9;
          v15 = 2112;
          v16 = conversation;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Conversation list performed re-merge, updating transcript conversation to %@ from %@", buf, 0x16u);
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__CKTranscriptCollectionViewController__conversationListFinishedMerging___block_invoke;
      block[3] = &unk_1E72EBA18;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (conversation && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = conversation;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKTranscriptCollectionViewController attempted to replace conversation after re-merge, but couldn't find a new conversation to replace %@", buf, 0xCu);
    }
  }
}

- (void)printTranscript
{
  printInfo = [MEMORY[0x1E69C5A10] printInfo];
  [printInfo setOutputType:0];
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  hasDisplayName = [conversation hasDisplayName];
  conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
  v7 = conversation2;
  if (hasDisplayName)
  {
    [conversation2 displayName];
  }

  else
  {
    [conversation2 name];
  }
  v8 = ;

  [printInfo setJobName:v8];
  v9 = [CKTranscriptPrintPageRenderer alloc];
  printableViewController = [(CKTranscriptCollectionViewController *)self printableViewController];
  v11 = [(CKTranscriptPrintPageRenderer *)v9 initWithTranscriptCollectionViewController:printableViewController];

  mEMORY[0x1E69C5A18] = [MEMORY[0x1E69C5A18] sharedPrintController];
  [mEMORY[0x1E69C5A18] setPrintInfo:printInfo];
  [mEMORY[0x1E69C5A18] setPrintPageRenderer:v11];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__CKTranscriptCollectionViewController_printTranscript__block_invoke;
  v13[3] = &unk_1E72F2EA0;
  v13[4] = self;
  [mEMORY[0x1E69C5A18] presentAnimated:1 completionHandler:v13];
}

void __55__CKTranscriptCollectionViewController_printTranscript__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (a3)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (v8)
      {
        v10 = @"YES";
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "UIPrintInteractionController completed: [%@], error: [%@]", &v13, 0x16u);
    }
  }

  v12 = +[CKPrintController sharedInstance];
  [v12 clearAvatarCache];

  [*(a1 + 32) reloadData];
}

- (id)printableViewController
{
  v3 = +[CKPrintController sharedInstance];
  [v3 setPrinting:1];

  v4 = [CKPrintTranscriptCollectionViewController alloc];
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  [(CKTranscriptCollectionViewController *)self balloonMaxWidth];
  v7 = v6;
  [(CKTranscriptCollectionViewController *)self marginInsets];
  v12 = [(CKPrintTranscriptCollectionViewController *)v4 initWithConversation:conversation delegate:0 balloonMaxWidth:v7 marginInsets:v8, v9, v10, v11];

  v13 = +[CKUIBehavior sharedBehaviors];
  -[CKTranscriptCollectionViewController setShouldLoadDefaultConversationViewingMessageCountOnAppear:](v12, "setShouldLoadDefaultConversationViewingMessageCountOnAppear:", [v13 shouldLoadInitialViewingMessageCount]);

  [(CKPrintTranscriptCollectionViewController *)v12 updateUIContents];
  v14 = +[CKPrintController sharedInstance];
  [v14 setPrinting:0];

  return v12;
}

- (void)installedAppsChanged:(id)changed
{
  v48 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [chatItems countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v42;
    v8 = *MEMORY[0x1E69A6A18];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(chatItems);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bundleIdentifier = [v10 bundleIdentifier];
          v12 = [bundleIdentifier isEqualToString:v8];

          v6 |= v12 ^ 1;
        }
      }

      v5 = [chatItems countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v5);

    if (v6)
    {
      [(CKTranscriptCollectionViewController *)self _releaseActiveBalloonControllers];
      [(CKTranscriptCollectionViewController *)self reloadData];
      v13 = objc_opt_new();
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
      v15 = [chatItems2 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v15)
      {
        v16 = *v37;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(chatItems2);
            }

            v18 = *(*(&v36 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 addObject:v18];
            }
          }

          v15 = [chatItems2 countByEnumeratingWithState:&v36 objects:v46 count:16];
        }

        while (v15);
      }

      [CKChatItem unloadSizesOfChatItems:v13];
      v19 = +[CKChatItemSizeCache sharedInstance];
      [v19 invalidateCachedSizeForGUIDPrefix:@"bp:" reason:@"installedAppsChanged"];

      conversation = [(CKTranscriptCollectionViewController *)self conversation];
      chat = [conversation chat];
      guid = [chat guid];

      recipientStrings = [conversation recipientStrings];
      isBusinessConversation = [conversation isBusinessConversation];
      transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v26 = v13;
      v27 = [v26 countByEnumeratingWithState:&v32 objects:v45 count:16];
      if (v27)
      {
        v28 = *v33;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v32 + 1) + 8 * k) configureWithConversationID:guid recipients:recipientStrings isBusiness:isBusinessConversation context:transcriptIdentifier];
          }

          v27 = [v26 countByEnumeratingWithState:&v32 objects:v45 count:16];
        }

        while (v27);
      }

      goto LABEL_33;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Not reloading transcript due to installedAppsChanged:, no relevant plugins loaded in transcript", buf, 2u);
    }
  }

LABEL_33:
}

- (void)_updatedMessageTintColor:(id)color
{
  v45 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  userInfo = [colorCopy userInfo];
  v38 = [userInfo objectForKey:*MEMORY[0x1E69A5A48]];

  object = [colorCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = 0;
    goto LABEL_36;
  }

  object2 = [colorCopy object];
  v9 = object2;
  if (object2 && [object2 length])
  {
    v36 = v9;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    selfCopy = self;
    obj = [(CKTranscriptCollectionViewController *)self chatItems];
    v10 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (!v10)
    {
LABEL_18:

LABEL_29:
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController _updatedMessageTintColor:];
      }

      v9 = v36;
      goto LABEL_35;
    }

    v11 = v10;
    v12 = *v41;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v41 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v40 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
        iMChatItem = [v15 IMChatItem];
        v17 = iMChatItem;
        if (v38)
        {
          dataSource = [iMChatItem dataSource];
          pluginPayload = [dataSource pluginPayload];

          mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
          v21 = [mEMORY[0x1E69A5AD0] dataSourceForPluginPayload:pluginPayload];

          if (v21)
          {
            stagingContext = [v21 stagingContext];
            transientIdentifier = [stagingContext transientIdentifier];
            v24 = [v38 isEqualToString:transientIdentifier];

            if (v24)
            {
              v27 = IMLogHandleForCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "_updatedMessageTintColor: Found a CKTranscriptPluginChatItem object using transient identifier", buf, 2u);
              }

              v28 = v15;
              goto LABEL_26;
            }
          }
        }

        else
        {
          guid = [iMChatItem guid];
          v26 = [guid isEqualToString:v36];

          if (v26)
          {
            v29 = IMLogHandleForCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "_updatedMessageTintColor: Found a CKTranscriptPluginChatItem object using messageGUID", buf, 2u);
            }

            v30 = v15;
LABEL_26:

            if (!v15)
            {
              goto LABEL_29;
            }

            v31 = [(CKTranscriptCollectionViewController *)selfCopy cellForChatItem:v15];
            if (v31)
            {
              iMChatItem2 = [v15 IMChatItem];
              guid2 = [iMChatItem2 guid];

              v34 = [(CKTranscriptCollectionViewController *)selfCopy indexPathForChatItemGUID:guid2];
              [(CKTranscriptCollectionViewController *)selfCopy configureCell:v31 forCKChatItem:v15 atIndexPath:v34 animated:0 animationDuration:3 animationCurve:0.0];
            }

            else
            {
              guid2 = IMLogHandleForCategory();
              if (os_log_type_enabled(guid2, OS_LOG_TYPE_ERROR))
              {
                [CKTranscriptCollectionViewController _updatedMessageTintColor:];
              }
            }

            v9 = v36;

LABEL_35:
            break;
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }
    }
  }

LABEL_36:
}

- (void)multiwayCallStateChanged:(id)changed
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [chatItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(chatItems);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [chatItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [CKChatItem unloadSizesOfChatItems:v4];
  [(CKTranscriptCollectionViewController *)self reloadData];
}

- (void)chatItemsDidChange:(id)change
{
  v77 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v4 = IMLogHandleForCategory();
  v5 = os_signpost_id_generate(v4);
  v6 = v4;
  v7 = v6;
  spid = v5;
  v49 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "chatItemsDidChange_ChatKit", "", buf, 2u);
  }

  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate2 transcriptCollectionViewControllerWillUpdateTranscriptChatItems:self];
  }

  userInfo = [changeCopy userInfo];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__33;
  v65 = __Block_byref_object_dispose__33;
  v66 = [userInfo objectForKey:*MEMORY[0x1E69A5750]];
  v12 = [userInfo objectForKey:*MEMORY[0x1E69A5778]];
  v13 = [userInfo objectForKey:*MEMORY[0x1E69A5770]];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__33;
  v59 = __Block_byref_object_dispose__33;
  v60 = [userInfo objectForKey:*MEMORY[0x1E69A5768]];
  v14 = [userInfo objectForKey:*MEMORY[0x1E69A5760]];
  v15 = [userInfo objectForKey:*MEMORY[0x1E69A5758]];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v17 = [chatItems count];
  LODWORD(v17) = v17 < [v14 count];

  if (v17)
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      isInline = [(CKTranscriptCollectionViewController *)self isInline];
      v38 = @"NO";
      if (isInline)
      {
        v38 = @"YES";
      }

      v43 = v38;
      v39 = MEMORY[0x1E696AD98];
      chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
      v46 = [v39 numberWithUnsignedInteger:{objc_msgSend(chatItems2, "count")}];
      v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      chat = [(CKTranscriptCollectionViewController *)self chat];
      chat2 = [(CKTranscriptCollectionViewController *)self chat];
      guid = [chat2 guid];
      *buf = 138413314;
      v68 = v43;
      v69 = 2112;
      v70 = v46;
      v71 = 2112;
      v72 = v45;
      v73 = 2112;
      v74 = chat;
      v75 = 2112;
      v76 = guid;
      _os_log_error_impl(&dword_19020E000, v18, OS_LOG_TYPE_ERROR, "(Inline: %@) Invalid self.chatItems.count: %@, compared to oldItems.count: %@ for chat: %@, guid: %@", buf, 0x34u);
    }

    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController chatItemsDidChange:];
    }

    v20 = [(CKTranscriptCollectionViewController *)self newChatItemsWithIMChatItems:v14];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConsolidatedChatItemsEnabled = [mEMORY[0x1E69A8070] isConsolidatedChatItemsEnabled];

    if (isConsolidatedChatItemsEnabled)
    {
      chatItemController = [(CKTranscriptCollectionViewController *)self chatItemController];
      [chatItemController setChatItemsUsingReloadDataWithoutAnimation:v20];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:v20];
    }
  }

  notifications = [(CKTranscriptCollectionViewController *)self notifications];

  if (notifications)
  {
    chatItems3 = [(CKTranscriptCollectionViewController *)self chatItems];
    v26 = [chatItems3 copy];

    v27 = v56[5];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __59__CKTranscriptCollectionViewController_chatItemsDidChange___block_invoke;
    v51[3] = &unk_1E72F2EC8;
    v28 = v26;
    v52 = v28;
    v53 = &v61;
    v54 = &v55;
    [v15 enumerateObjectsAtIndexes:v27 options:0 usingBlock:v51];
  }

  v29 = _Block_copy(self->_transcriptUpdateCompletion);
  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = _Block_copy(v29);
      *buf = 134217984;
      v68 = v31;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "ChatItemsDidChange – will consume completion handler: %p", buf, 0xCu);
    }
  }

  [(CKTranscriptCollectionViewController *)self setTranscriptUpdateCompletion:0];
  LOBYTE(v42) = 1;
  [(CKTranscriptCollectionViewController *)self updateTranscriptChatItems:v15 inserted:v62[5] removed:v12 reload:v13 regenerate:v56[5] animated:[(CKTranscriptCollectionViewController *)self isTranscriptUpdateAnimated] checkFiltered:v42 completion:v29];
  delegate3 = [(CKTranscriptCollectionViewController *)self delegate];
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    delegate4 = [(CKTranscriptCollectionViewController *)self delegate];
    [delegate4 transcriptCollectionViewControllerDidUpdateTranscriptChatItems:self];
  }

  v35 = v7;
  v36 = v35;
  if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v36, OS_SIGNPOST_INTERVAL_END, spid, "chatItemsDidChange_ChatKit", "", buf, 2u);
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);
}

void __59__CKTranscriptCollectionViewController_chatItemsDidChange___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v6 = a1[4];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __59__CKTranscriptCollectionViewController_chatItemsDidChange___block_invoke_2;
  v16 = &unk_1E72ED100;
  v7 = v5;
  v17 = v7;
  v18 = &v19;
  [v6 enumerateObjectsUsingBlock:&v13];
  if ((v20[3] & 1) == 0)
  {
    v8 = objc_alloc(MEMORY[0x1E696AD50]);
    v9 = [v8 initWithIndexSet:{*(*(a1[5] + 8) + 40), v13, v14, v15, v16}];
    [v9 addIndex:a3];
    objc_storeStrong((*(a1[5] + 8) + 40), v9);
    v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:*(*(a1[6] + 8) + 40)];
    [v10 removeIndex:a3];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  _Block_object_dispose(&v19, 8);
}

void __59__CKTranscriptCollectionViewController_chatItemsDidChange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 itemGUID];
  v9 = [v7 IMChatItem];

  v10 = [v9 itemGUID];
  v11 = [v8 isEqualToString:v10];

  if (v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)connectivityChanged:(id)changed
{
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "connectivityChanged", v7, 2u);
    }
  }

  chat = [(CKTranscriptCollectionViewController *)self chat];
  [chat refreshServiceForSending];
}

- (void)_tearDownLiveBubbles
{
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v4 = [chatItems copy];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__CKTranscriptCollectionViewController__tearDownLiveBubbles__block_invoke;
  v5[3] = &unk_1E72F0918;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __60__CKTranscriptCollectionViewController__tearDownLiveBubbles__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v7 IMChatItem];
    v4 = [v3 isDataSourceInitialized];

    if (v4)
    {
      v5 = [*(a1 + 32) transcriptIdentifier];
      v6 = [v7 balloonControllerForContext:v5];

      if (objc_opt_respondsToSelector())
      {
        [v6 pluginContentViewWillDisappear];
      }
    }
  }
}

- (void)_refreshLocationsForRecipientsIfNecessary
{
  v34 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  applicationState = [mEMORY[0x1E69DC668] applicationState];

  if (!applicationState)
  {
    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    v7 = [v5 initWithCapacity:{objc_msgSend(conversation, "recipientCount")}];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v9 = [chatItems countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        v12 = 0;
        do
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(chatItems);
          }

          v13 = *(*(&v28 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sender = [v13 sender];
            [v7 addObject:sender];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [chatItems countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * v19);
          mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
          conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
          chat = [conversation2 chat];
          [mEMORY[0x1E69A5B70] refreshLocationForHandle:v20 inChat:chat];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v17);
    }
  }
}

- (void)_configureScheduledDateCell:(id)cell forItemAtIndexPath:(id)path
{
  v27 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  [cellCopy setDelegate:self];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v9 = [chatItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    chat = [(CKTranscriptCollectionViewController *)self chat];
    iMChatItem = [v10 IMChatItem];
    v13 = [chat messagesForScheduledMessageSectionWithTranscriptItem:iMChatItem];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          if ([v19 scheduleState] == 1 || objc_msgSend(v19, "scheduleState") == 2)
          {

            v20 = [cellCopy _ck_isEditing] ^ 1;
            goto LABEL_13;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
LABEL_13:
    [cellCopy setDisplayEditButton:{v20, v22}];
    date = [v10 date];
    [cellCopy setDate:date];
  }
}

- (void)reconfigureVisibleSpeakerButtonCells
{
  v16 = *MEMORY[0x1E69E9840];
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [collectionView cellForItemAtIndexPath:v9];
        [(CKTranscriptCollectionViewController *)self configureSpeakerButtonCell:v10 forItemAtIndexPath:v9];
      }

      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)configureSpeakerButtonCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    v8 = [chatItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = cellCopy;
      v10 = v8;
      [v9 setSpeakerHidden:1];
      [v9 setSpeakerEnabled:CKAudioPlaybackSpeakerEnabled()];
      hasMessageAcknowledgment = [v10 hasMessageAcknowledgment];

      [v9 setAdjustSpeakerForAcknowledgment:hasMessageAcknowledgment];
      speakerButton = [v9 speakerButton];

      [speakerButton addTarget:self action:sel_touchUpInsideCellSpeakerButton_ forControlEvents:64];
    }
  }
}

- (void)setShouldUseOpaqueMask:(BOOL)mask
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_shouldUseOpaqueMask != mask)
  {
    maskCopy = mask;
    self->_shouldUseOpaqueMask = mask;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v6 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(visibleCells);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            balloonView = [v10 balloonView];
            [balloonView setCanUseOpaqueMask:maskCopy];
            [balloonView prepareForDisplayIfNeeded];
            [v10 setNeedsLayout];
            [v10 layoutIfNeeded];
          }
        }

        v7 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)verticallyScrollTranscriptByAmount:(double)amount animated:(BOOL)animated duration:(double)duration completion:(id)completion
{
  animatedCopy = animated;
  v37 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  collectionView = [(CKTranscriptCollectionViewController *)self collectionView];
  isScrollEnabled = [collectionView isScrollEnabled];

  if ((isScrollEnabled & 1) == 0)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController verticallyScrollTranscriptByAmount:animated:duration:completion:];
    }
  }

  collectionView2 = [(CKTranscriptCollectionViewController *)self collectionView];
  [collectionView2 contentOffset];
  v16 = v15;
  v18 = v17 + amount;
  if (animatedCopy)
  {
    collectionView3 = [(CKTranscriptCollectionViewController *)self collectionView];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      updateAnimationGroup = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          selfCopy = self;
          _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in verticallyScrollTranscriptByAmount", buf, 0xCu);
        }
      }

      dispatch_group_enter(updateAnimationGroup);
      collectionView4 = [(CKTranscriptCollectionViewController *)self collectionView];
      collectionView5 = [(CKTranscriptCollectionViewController *)self collectionView];
      [collectionView5 _contentOffsetAnimationDuration];
      v26 = v25;

      [collectionView4 beginDisablingTranscriptDynamicsForReason:13];
      [collectionView4 _setContentOffsetAnimationDuration:duration];
      [collectionView4 setContentOffset:1 animated:{v16, v18}];
      [collectionView4 _setContentOffsetAnimationDuration:v26];
      v27 = dispatch_time(0, (duration * 1000000000.0));
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __104__CKTranscriptCollectionViewController_verticallyScrollTranscriptByAmount_animated_duration_completion___block_invoke;
      v30[3] = &unk_1E72EDE00;
      v31 = collectionView4;
      selfCopy2 = self;
      v33 = updateAnimationGroup;
      v34 = completionCopy;
      v28 = updateAnimationGroup;
      v29 = collectionView4;
      dispatch_after(v27, MEMORY[0x1E69E96A0], v30);
    }
  }

  else
  {
    [collectionView2 setContentOffset:{v15, v18}];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __104__CKTranscriptCollectionViewController_verticallyScrollTranscriptByAmount_animated_duration_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) endDisablingTranscriptDynamicsForReason:13];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: in verticallyScrollTranscriptByAmount", &v5, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 48));
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deselectAllBalloons
{
  v16 = *MEMORY[0x1E69E9840];
  selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
  [selectionManager removeAllSelectedMessageGuids];

  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [chatItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(chatItems);
        }

        v9 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:*(*(&v11 + 1) + 8 * v8)];
        v10 = v9;
        if (v9)
        {
          [v9 setSelected:0 withSelectionState:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [chatItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)selectionManager:(id)manager didAddChatItem:(id)item selectionState:(id)state
{
  stateCopy = state;
  iMChatItem = [item IMChatItem];
  guid = [iMChatItem guid];
  [(CKTranscriptCollectionViewController *)self _selectChatItemGuid:guid selectionState:stateCopy];
}

- (void)selectionManager:(id)manager didRemoveChatItem:(id)item
{
  iMChatItem = [item IMChatItem];
  guid = [iMChatItem guid];
  [(CKTranscriptCollectionViewController *)self _deselectChatItemGuid:guid];
}

- (id)_chatItemForGUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(CKTranscriptCollectionViewController *)self chatItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        iMChatItem = [v9 IMChatItem];
        guid = [iMChatItem guid];
        v12 = [dCopy isEqualToString:guid];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)selectRangeWithIndexPath:(id)path
{
  pathCopy = path;
  selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
  trackedGuid = [selectionManager trackedGuid];

  if (trackedGuid)
  {
    trackedGuid2 = [selectionManager trackedGuid];
    v8 = [(CKTranscriptCollectionViewController *)self _chatItemForGUID:trackedGuid2];
    v9 = [selectionManager selectedStateForGuid:trackedGuid2];
    v40 = v8;
    v39 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:v8];
    v10 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:?];
    chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
    item = [v10 item];
    item2 = [pathCopy item];
    if (item >= item2)
    {
      v14 = item2;
    }

    else
    {
      v14 = item;
    }

    v38 = v10;
    item3 = [v10 item];
    v41 = pathCopy;
    item4 = [pathCopy item];
    if (item3 <= item4)
    {
      v17 = item4;
    }

    else
    {
      v17 = item3;
    }

    [selectionManager removeAllSelectedMessageGuids];
    v37 = v14;
    if (v14 <= v17)
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v31 = [chatItems objectAtIndex:v14];
        iMChatItem = [v31 IMChatItem];
        guid = [iMChatItem guid];

        v18 = v14;
        if (([guid isEqualToString:trackedGuid2] & 1) == 0)
        {
          v34 = +[CKBalloonSelectionState balloonSelectionState:](CKBalloonSelectionState, "balloonSelectionState:", [v9 style]);
          [selectionManager addSelectedMessageGuid:guid selectionState:v34];

          v18 = v30;
        }

        ++v14;
        v30 = v18;
      }

      while (v14 <= v17);
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 style] == 1)
    {
      v35 = [v39 updateTextSelectionState:v9 forTextSelectionArea:v18 == v37];
      [selectionManager trackSelectedGuid:trackedGuid2 selectionState:v35];
    }

    else
    {
      [selectionManager trackSelectedGuid:trackedGuid2 selectionState:v9];
    }

    pathCopy = v41;
  }

  else
  {
    trackedGuid2 = [(CKTranscriptCollectionViewController *)self selectedItems];
    firstIndex = [trackedGuid2 firstIndex];
    lastIndex = [trackedGuid2 lastIndex];
    if (firstIndex == 0x7FFFFFFFFFFFFFFFLL || (v21 = lastIndex, lastIndex == 0x7FFFFFFFFFFFFFFFLL))
    {
      [selectionManager removeAllSelectedMessageGuids];
      v36 = IMLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController selectRangeWithIndexPath:];
      }
    }

    else
    {
      item5 = [pathCopy item];
      if (item5 <= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = item5;
      }

      if (item5 <= v21)
      {
        firstIndex = item5;
      }

      [selectionManager removeAllSelectedMessageGuids];
      chatItems2 = [(CKTranscriptCollectionViewController *)self chatItems];
      if (firstIndex <= v23)
      {
        v25 = v23 + 1;
        do
        {
          if (firstIndex >= [chatItems2 count])
          {
            break;
          }

          v26 = [chatItems2 objectAtIndex:firstIndex];
          iMChatItem2 = [v26 IMChatItem];
          guid2 = [iMChatItem2 guid];

          v29 = [CKBalloonSelectionState balloonSelectionState:0];
          [selectionManager addSelectedMessageGuid:guid2 selectionState:v29];

          ++firstIndex;
        }

        while (v25 != firstIndex);
      }
    }
  }
}

- (BOOL)_selectedChatItemsHaveMultipleSenders:(id)senders
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = senders;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  v4 = 0;
  if (v3)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          sender = [v8 sender];
          if (v4)
          {
            v10 = [v4 ID];
            v11 = [sender ID];
            v12 = [v10 isEqualToString:v11];

            if ((v12 & 1) == 0)
            {

              LOBYTE(v3) = 1;
              goto LABEL_14;
            }
          }

          v4 = sender;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

- (void)_addAttachmentsToProvidersArray:(id)array forChatItems:(id)items
{
  arrayCopy = array;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__CKTranscriptCollectionViewController__addAttachmentsToProvidersArray_forChatItems___block_invoke;
  v7[3] = &unk_1E72F0918;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [items enumerateObjectsUsingBlock:v7];
}

void __85__CKTranscriptCollectionViewController__addAttachmentsToProvidersArray_forChatItems___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mediaObject];
    v5 = [v4 pasteboardItemProvider];
    [*(a1 + 32) addObject:v5];
LABEL_3:

    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v6 = [v4 transcriptIdentifier];
    v5 = [v4 pluginDisplayContainerForContext:v6];

    v7 = [v5 pluginPayload];
    v8 = [v7 pluginBundleID];
    v9 = [v8 isEqualToString:*MEMORY[0x1E69A6A18]];

    if ((v9 & 1) == 0)
    {
      v10 = [v5 pasteboardItemProvider];
      [*(a1 + 32) addObject:v10];
    }

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 aggregateChatItems];
  v11 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v4);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) mediaObject];
        v16 = [v15 pasteboardItemProvider];
        [*(a1 + 32) addObject:v16];
      }

      v12 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

LABEL_4:

LABEL_5:
}

- (id)_itemProviderForSelectedChatItemsWithMultipleSenders:(id)senders
{
  sendersCopy = senders;
  array = [MEMORY[0x1E695DF70] array];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__33;
  v27[4] = __Block_byref_object_dispose__33;
  v28 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
  selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__CKTranscriptCollectionViewController__itemProviderForSelectedChatItemsWithMultipleSenders___block_invoke;
  v17[3] = &unk_1E72F2EF0;
  v21 = &v23;
  v22 = v27;
  v8 = v6;
  v18 = v8;
  v9 = selectionManager;
  v19 = v9;
  v10 = sendersCopy;
  v20 = v10;
  [v10 enumerateObjectsUsingBlock:v17];
  if (v24[3])
  {
    v11 = off_1E72E4860;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Based on the content of the message, we do not need to serialize the copied item as an attributed string. Using plain string serialization only.", v16, 2u);
      }
    }

    v11 = off_1E72E54B0;
  }

  v13 = [objc_alloc(*v11) initWithAttributedString:v8];
  v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v13];
  [array addObject:v14];
  [(CKTranscriptCollectionViewController *)self _addAttachmentsToProvidersArray:array forChatItems:v10];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);

  return array;
}

void __93__CKTranscriptCollectionViewController__itemProviderForSelectedChatItemsWithMultipleSenders___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = a3;
    v6 = v5;
    v7 = [v6 sender];
    v8 = *(*(*(a1 + 64) + 8) + 40);
    if (!v8 || ([v8 ID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "ID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, (v11 & 1) == 0))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = CKFrameworkBundle();
      v14 = [v13 localizedStringForKey:@"COPY_SENDER_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
      v15 = [v7 fullName];
      v16 = [v12 stringWithFormat:v14, v15];

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v17 = *(a1 + 32);
        v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\r"];
        [v17 appendAttributedString:v18];
      }

      v19 = *(a1 + 32);
      v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16];
      [v19 appendAttributedString:v20];

      v21 = *(a1 + 32);
      v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\r"];
      [v21 appendAttributedString:v22];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
    v23 = [v6 IMChatItem];
    v24 = [v23 guid];

    v25 = CKFrameworkBundle();
    v26 = [v25 localizedStringForKey:@"COPY_CONTENT_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
    v27 = [*(a1 + 40) selectedStateForGuid:v24];
    v28 = [v27 textSelectionRange];
    v30 = [v6 rtfDocumentItemsWithFormatString:v26 selectedTextRange:{v28, v29}];

    if (v30)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v32)
      {
        v33 = *v42;
        do
        {
          v34 = 0;
          do
          {
            if (*v42 != v33)
            {
              objc_enumerationMutation(v31);
            }

            [*(a1 + 32) appendAttributedString:*(*(&v41 + 1) + 8 * v34++)];
          }

          while (v32 != v34);
          v32 = [v31 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v32);
      }
    }

    if ([*(a1 + 48) count] - 1 > v40)
    {
      v35 = *(a1 + 32);
      v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\r"];
      [v35 appendAttributedString:v36];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138412290;
      v46 = v39;
      _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "Skipped pasteboard items of type: %@", buf, 0xCu);
    }
  }
}

- (id)_itemProviderForSelectedChatItemsWithSingleSender:(id)sender
{
  senderCopy = sender;
  array = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
  selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __90__CKTranscriptCollectionViewController__itemProviderForSelectedChatItemsWithSingleSender___block_invoke;
  v24[3] = &unk_1E72F2F18;
  v28 = &v29;
  v8 = selectionManager;
  v25 = v8;
  v9 = v6;
  v26 = v9;
  v10 = senderCopy;
  v27 = v10;
  [v10 enumerateObjectsUsingBlock:v24];
  ck_attributedStringByRemovingUnsupportedCompositionAttributes = [v9 ck_attributedStringByRemovingUnsupportedCompositionAttributes];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v12 = [ck_attributedStringByRemovingUnsupportedCompositionAttributes length];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__CKTranscriptCollectionViewController__itemProviderForSelectedChatItemsWithSingleSender___block_invoke_1510;
  v19[3] = &unk_1E72F12E0;
  v19[4] = &v20;
  [ck_attributedStringByRemovingUnsupportedCompositionAttributes enumerateAttributesInRange:0 options:v12 usingBlock:{0, v19}];
  if (*(v21 + 24) == 1)
  {
    *(v30 + 24) = 1;
LABEL_4:
    v13 = off_1E72E4860;
    goto LABEL_10;
  }

  if (v30[3])
  {
    goto LABEL_4;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Based on the content of the message, we do not need to serialize the copied item as an attributed string. Using plain string serialization only.", v18, 2u);
    }
  }

  v13 = off_1E72E54B0;
LABEL_10:
  v15 = [objc_alloc(*v13) initWithAttributedString:ck_attributedStringByRemovingUnsupportedCompositionAttributes];
  v16 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v15];
  [array addObject:v16];
  [(CKTranscriptCollectionViewController *)self _addAttachmentsToProvidersArray:array forChatItems:v10];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v29, 8);

  return array;
}

void __90__CKTranscriptCollectionViewController__itemProviderForSelectedChatItemsWithSingleSender___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 IMChatItem];
    v8 = [v7 guid];

    v9 = [*(a1 + 32) selectedStateForGuid:v8];
    v10 = [v9 textSelectionRange];
    v12 = [v6 rtfDocumentItemsWithFormatString:0 selectedTextRange:{v10, v11}];

    if (v12)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v14)
      {
        v15 = *v23;
        do
        {
          v16 = 0;
          do
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [*(a1 + 40) appendAttributedString:{*(*(&v22 + 1) + 8 * v16++), v22}];
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v14);
      }
    }

    if ([*(a1 + 48) count] - 1 > a3)
    {
      v17 = *(a1 + 40);
      v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\r"];
      [v17 appendAttributedString:v18];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138412290;
      v27 = v21;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Skipped pasteboard items of type: %@", buf, 0xCu);
    }
  }
}

uint64_t __90__CKTranscriptCollectionViewController__itemProviderForSelectedChatItemsWithSingleSender___block_invoke_1510(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  *a5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (void)_searchForSelectedBalloonHack
{
  v22 = *MEMORY[0x1E69E9840];
  [(CKTranscriptCollectionViewController *)self chatItems];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:v8, v17];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            textView = [v9 textView];
            selectedRange = [textView selectedRange];
            if (v12)
            {
              v13 = [CKBalloonSelectionState balloonSelectionState:1 textSelectionRange:selectedRange, v12];
              selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
              iMChatItem = [v8 IMChatItem];
              guid = [iMChatItem guid];
              [selectionManager trackSelectedGuid:guid selectionState:v13];

              goto LABEL_14;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)copySelectedChatItemsToPasteboard
{
  [(CKTranscriptCollectionViewController *)self _searchForSelectedBalloonHack];
  selectedChatItems = [(CKTranscriptCollectionViewController *)self selectedChatItems];
  if ([selectedChatItems count])
  {
    [(CKTranscriptCollectionViewController *)self copyChatItemsToPasteboard:selectedChatItems];
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "SelectedChatItems unexpectedly has zero selected items", v5, 2u);
    }
  }
}

- (void)copyChatItemsToPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  if ([(CKTranscriptCollectionViewController *)self _selectedChatItemsHaveMultipleSenders:pasteboardCopy])
  {
    [(CKTranscriptCollectionViewController *)self _itemProviderForSelectedChatItemsWithMultipleSenders:pasteboardCopy];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self _itemProviderForSelectedChatItemsWithSingleSender:pasteboardCopy];
  }
  v6 = ;

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setItemProviders:v6];
}

- (void)selectSingleBalloonView:(id)view
{
  v13 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:view];
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  item = [v13 item];
  if ((item & 0x8000000000000000) == 0)
  {
    v6 = item;
    if (item < [chatItems count])
    {
      v7 = [chatItems objectAtIndex:v6];
      iMChatItem = [v7 IMChatItem];
      guid = [iMChatItem guid];

      selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
      [selectionManager removeAllSelectedMessageGuids];

      selectionManager2 = [(CKTranscriptCollectionViewController *)self selectionManager];
      v12 = [CKBalloonSelectionState balloonSelectionState:0];
      [selectionManager2 addSelectedMessageGuid:guid selectionState:v12];
    }
  }
}

- (BOOL)collectionView:(id)view shouldAllowSwipeForItemAtIndexPath:(id)path
{
  v5 = [(CKTranscriptCollectionViewController *)self chatItemAtIndexPath:path];
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  v7 = [conversation canReplyToChatItem:v5];

  return v7;
}

- (id)transcriptCollectionView:(id)view preferredIndexPathForAssociatedItemAtPoint:(CGPoint)point
{
  v5 = [view hitTest:0 withEvent:{point.x, point.y}];
  ck_superBalloonView = [v5 ck_superBalloonView];
  v7 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:ck_superBalloonView];

  return v7;
}

- (void)collectionView:(id)view didRecognizePanGestureWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  [viewCopy contentSize];
  v7 = v6;
  [viewCopy bounds];
  v8 = viewCopy;
  if (v7 >= v9)
  {
    window = [viewCopy window];
    [window convertPoint:viewCopy fromView:{x, y}];
    v12 = v11;

    window2 = [viewCopy window];
    [window2 bounds];
    v15 = v14;

    [viewCopy contentOffset];
    v17 = v16;
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 balloonSelectionScrollThresholdTop];
    v20 = v19;

    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 balloonSelectionScrollThresholdBottom];
    v23 = v22;

    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 balloonSelectionMaxScrollSpeed];
    v26 = v25;

    if (v12 < v20)
    {
      v27 = +[CKUIBehavior sharedBehaviors];
      [v27 balloonSelectionLoadMoreSpinnerHeight];
      v29 = v28;

      v8 = viewCopy;
      if (v17 <= -v29)
      {
        goto LABEL_31;
      }

      if (v26 >= v20 - v12)
      {
        v30 = v20 - v12;
      }

      else
      {
        v30 = v26;
      }

      chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
      if (v30 >= 0.0)
      {
        v32 = 0.0;
        v33 = 1;
        do
        {
          v34 = [viewCopy indexPathForItemAtPoint:{x, v59 - v32}];
          item = [v34 item];
          if ((item & 0x8000000000000000) == 0)
          {
            v36 = item;
            if (item < [chatItems count])
            {
              v37 = [chatItems objectAtIndex:v36];
              iMChatItem = [v37 IMChatItem];
              guid = [iMChatItem guid];

              selectionManager = [(CKTranscriptCollectionViewController *)self selectionManager];
              v41 = [selectionManager isMessageGuidSelected:guid];

              if ((v41 & 1) == 0)
              {
                selectionManager2 = [(CKTranscriptCollectionViewController *)self selectionManager];
                v43 = [CKBalloonSelectionState balloonSelectionState:1];
                [selectionManager2 addSelectedMessageGuid:guid selectionState:v43];
              }
            }
          }

          v32 = v33++;
        }

        while (v30 >= v32);
      }

      v44 = -v30;
      goto LABEL_16;
    }

    v8 = viewCopy;
    if (v12 > v15 - v23)
    {
      [viewCopy frame];
      v8 = viewCopy;
      if (v17 < v7 - v45)
      {
        if (v26 >= v23 - (v15 - v12))
        {
          v44 = v23 - (v15 - v12);
        }

        else
        {
          v44 = v26;
        }

        chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
        if (v44 >= 0.0)
        {
          v46 = 0.0;
          v47 = 1;
          do
          {
            v48 = [viewCopy indexPathForItemAtPoint:{x, v60 + v46}];
            item2 = [v48 item];
            if ((item2 & 0x8000000000000000) == 0)
            {
              v50 = item2;
              if (item2 < [chatItems count])
              {
                v51 = [chatItems objectAtIndex:v50];
                iMChatItem2 = [v51 IMChatItem];
                guid2 = [iMChatItem2 guid];

                selectionManager3 = [(CKTranscriptCollectionViewController *)self selectionManager];
                v55 = [selectionManager3 isMessageGuidSelected:guid2];

                if ((v55 & 1) == 0)
                {
                  selectionManager4 = [(CKTranscriptCollectionViewController *)self selectionManager];
                  v57 = [CKBalloonSelectionState balloonSelectionState:1];
                  [selectionManager4 addSelectedMessageGuid:guid2 selectionState:v57];
                }
              }
            }

            v46 = v47++;
          }

          while (v44 >= v46);
        }

LABEL_16:
        [(CKTranscriptCollectionViewController *)self verticallyScrollTranscriptByAmount:1 animated:0 completion:v44];

        v8 = viewCopy;
      }
    }
  }

LABEL_31:
}

- (void)_trackPhotoStackEvent:(id)event forStackBalloonView:(id)view transcriptOrientation:(char)orientation
{
  v34[6] = *MEMORY[0x1E69E9840];
  if (event && view)
  {
    orientationCopy = orientation;
    viewCopy = view;
    eventCopy = event;
    currentAssetReference = [viewCopy currentAssetReference];
    asset = [currentAssetReference asset];
    mediaType = [asset mediaType];
    dataSourceManager = [viewCopy dataSourceManager];

    mediaObjectDataSource = [dataSourceManager mediaObjectDataSource];

    mediaObjects = [mediaObjectDataSource mediaObjects];
    v15 = [mediaObjects count];

    v29 = currentAssetReference;
    if (mediaObjectDataSource)
    {
      [mediaObjectDataSource indexPathForAssetReference:{currentAssetReference, currentAssetReference}];
      v16 = v32;
    }

    else
    {
      v16 = 0;
    }

    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    recipients = [conversation recipients];
    v19 = [recipients count];

    v20 = *MEMORY[0x1E69A7518];
    v34[0] = eventCopy;
    v21 = *MEMORY[0x1E69A7520];
    v33[0] = v20;
    v33[1] = v21;
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
    v34[1] = v22;
    v33[2] = *MEMORY[0x1E69A7528];
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:mediaType];
    v34[2] = v23;
    v33[3] = *MEMORY[0x1E69A7530];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    v34[3] = v24;
    v33[4] = *MEMORY[0x1E69A7558];
    v25 = [MEMORY[0x1E696AD98] numberWithChar:orientationCopy];
    v34[4] = v25;
    v33[5] = *MEMORY[0x1E69A7538];
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
    v34[5] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:6];

    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];

    [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7500] withDictionary:v27];
  }
}

- (id)_chatItemLogSummaryForChatItems:(id)items withUpdates:(id)updates
{
  updatesCopy = updates;
  itemsCopy = items;
  v8 = -[CKTranscriptCollectionViewController _loggingRangeForUpdates:chatItemsCount:](self, "_loggingRangeForUpdates:chatItemsCount:", updatesCopy, [itemsCopy count]);
  v10 = v9;

  v11 = [itemsCopy subarrayWithRange:{v8, v10}];

  v12 = [(CKTranscriptCollectionViewController *)self _chatItemLogSummaryForChatItems:v11 withIndex:v8];

  return v12;
}

- (id)_latestChatItemsLogSummaryForChatItems:(id)items
{
  itemsCopy = items;
  v5 = [(CKTranscriptCollectionViewController *)self _loggingRangeForLatestChatItems:itemsCopy];
  v7 = [itemsCopy subarrayWithRange:{v5, v6}];

  v8 = [(CKTranscriptCollectionViewController *)self _chatItemLogSummaryForChatItems:v7 withIndex:v5];

  return v8;
}

- (id)_chatItemLogSummaryForChatItems:(id)items withIndex:(int64_t)index
{
  v38 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateStyle:1];
  v30 = v7;
  [v7 setTimeStyle:1];
  string = [MEMORY[0x1E696AD60] string];
  v9 = MEMORY[0x1E696AEC0];
  chat = [(CKTranscriptCollectionViewController *)self chat];
  guid = [chat guid];
  v12 = [v9 stringWithFormat:@"chat: %@\n", guid];

  v29 = v12;
  [string appendString:v12];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = itemsCopy;
  v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        itemIsFromMe = [v16 itemIsFromMe];
        v18 = @" ";
        if (itemIsFromMe)
        {
          v18 = @"\t";
        }

        v19 = MEMORY[0x1E696AEC0];
        v20 = v18;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        iMChatItem = [v16 IMChatItem];
        guid2 = [iMChatItem guid];
        v25 = [v19 stringWithFormat:@"\t%3lu:%@<%@ : %@> ", index, v20, v22, guid2];

        [string appendString:v25];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          date = [v16 date];
          v27 = [v30 stringFromDate:date];

          [string appendString:v27];
        }

        [string appendString:@"\n"];
        ++index;
      }

      v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  return string;
}

- (_NSRange)_loggingRangeForUpdates:(id)updates chatItemsCount:(int64_t)count
{
  v31 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [updatesCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v27;
    countCopy3 = count;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(updatesCopy);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        lastIndex = [v12 lastIndex];
        countCopy2 = [v12 count] + lastIndex;
        if (countCopy2 >= count)
        {
          countCopy2 = count;
        }

        if (v8 <= countCopy2)
        {
          v8 = countCopy2;
        }

        firstIndex = [v12 firstIndex];
        if (countCopy3 >= firstIndex)
        {
          countCopy3 = firstIndex;
        }
      }

      v7 = [updatesCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    countCopy3 = count;
  }

  v16 = v8 - countCopy3;
  v17 = count - 1;
  if (count - 1 >= v8 - 10)
  {
    v18 = v8 - 10;
  }

  else
  {
    v18 = count - 1;
  }

  if (v16 == 10)
  {
    v18 = countCopy3;
  }

  v19 = (v8 - 10) & ~((v8 - 10) >> 63);
  if (v8 >= v17)
  {
    v17 = v8;
  }

  else
  {
    v19 = countCopy3;
  }

  if (v16 <= 9)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  if (v16 <= 9)
  {
    v21 = v17;
  }

  else
  {
    v21 = v8;
  }

  v22 = (v21 - v20) & ~((v21 - v20) >> 63);
  if (v22 >= 10)
  {
    v23 = 10;
  }

  else
  {
    v23 = v22;
  }

  v24 = v20;
  v25 = v23;
  result.length = v25;
  result.location = v24;
  return result;
}

- (_NSRange)_loggingRangeForLatestChatItems:(id)items
{
  itemsCopy = items;
  v4 = [itemsCopy count];
  v5 = [itemsCopy count];

  if (v4 >= 0xB)
  {
    v6 = v5 - 11;
  }

  else
  {
    v6 = 0;
  }

  if (v4 >= 0xB)
  {
    v7 = 10;
  }

  else
  {
    v7 = v5;
  }

  result.length = v7;
  result.location = v6;
  return result;
}

- (void)chatItemControllerDidSetChatItems
{
  chat = [(CKTranscriptCollectionViewController *)self chat];
  if (!CKIsRunningUnitTests())
  {
    lastFinishedMessageID = [chat lastFinishedMessageID];
    lastFinishedMessageDate = [chat lastFinishedMessageDate];
    [chat __ck_updateWatermarkToMessageID:lastFinishedMessageID date:lastFinishedMessageDate];
  }

  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewControllerDidSetChatItems:self];
}

- (void)chatItemControllerDidInsertAssociatedChatItems
{
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewControllerDidInsertAssociatedChatItem:self];
}

- (void)chatItemControllerDidChangeAssociatedChatItemsWithChatItemDiff:(id)diff
{
  diffCopy = diff;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  [delegate transcriptCollectionViewControllerDidChangeAssociatedChatItem:self chatItemDiff:diffCopy];
}

- (void)configurePluginChatItemForChatItemControllerWithChatItem:(id)item
{
  itemCopy = item;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  chat = [conversation chat];
  guid = [chat guid];

  conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
  recipientStrings = [conversation2 recipientStrings];

  conversation3 = [(CKTranscriptCollectionViewController *)self conversation];
  isBusinessConversation = [conversation3 isBusinessConversation];
  transcriptIdentifier = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
  [itemCopy configureWithConversationID:guid recipients:recipientStrings isBusiness:isBusinessConversation context:transcriptIdentifier];
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIDragInteractionDelegate)dragInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dragInteractionDelegate);

  return WeakRetained;
}

- (CGSize)collectionViewSize
{
  width = self->_collectionViewSize.width;
  height = self->_collectionViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)peekSampleTranslation
{
  x = self->_peekSampleTranslation.x;
  y = self->_peekSampleTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)presentUserInterventionScreenForIndexPath:(id)path shouldTargetAssociatedItems:(BOOL)items
{
  itemsCopy = items;
  pathCopy = path;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v13 = [chatItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  v8 = [CKCommSafetyReceiveContext contextWithIndexPath:pathCopy shouldTargetAssociatedMessages:itemsCopy];

  v9 = [(CKTranscriptCollectionViewController *)self _findUniqueIDForSCUIAnalyticsFromChatItem:v13];
  v10 = CKCommSafetyReceiveContextDictionary(v8, v9);

  if ([(CKTranscriptCollectionViewController *)self isReportingEnabled])
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x1E69CA8E8] viewControllerWithWorkflow:0 contextDictionary:v10 options:v11];
  [v12 setInterventionDelegate:self];
  [(CKTranscriptCollectionViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)didTapCommSafetyAttributionItemWithIndexPath:(id)path sender:(id)sender
{
  v24[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  senderCopy = sender;
  if ([(CKTranscriptCollectionViewController *)self _supportsStickersSensitiveContentContextMenu])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = senderCopy;
      v9 = [(CKTranscriptCollectionViewController *)self hasCommSafetyNotViewableAssociatedItems:pathCopy];
      v10 = [(CKTranscriptCollectionViewController *)self hasSensitiveBackgroundAtIndexPath:pathCopy];
      v11 = CKFrameworkBundle();
      v12 = v11;
      if (v10)
      {
        v13 = @"SAFETY_MENU_CONTENT_KIND_BACKGROUND";
      }

      else
      {
        v13 = @"SAFETY_MENU_CONTENT_KIND_STICKERS";
      }

      if (v10)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v15 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit-Civic"];

      v24[0] = pathCopy;
      v23[0] = @"CKSensitiveContentIndexPathKey";
      v23[1] = @"CKSensitiveContentTargetsAssociatedItemsKey";
      v16 = [MEMORY[0x1E696AD98] numberWithBool:v9 && !v10];
      v23[2] = *MEMORY[0x1E69CA920];
      v24[1] = v16;
      v24[2] = v15;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

      v18 = [MEMORY[0x1E69CA8F0] menuWithDelegate:self contextDictionary:v17 additionalOptions:{-[CKTranscriptCollectionViewController _moreHelpMenuOptions:](self, "_moreHelpMenuOptions:", v9 | v10)}];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v18];
      [CKCommSafetyAnalytics recordContextMenuButtonTappedWithContentType:1 subContentType:v14 direction:2 options:0 isBlurred:[(CKTranscriptCollectionViewController *)self isItemViewableAtIndexPath:pathCopy]^ 1 identifier:v19];
      [v8 popCommSafetyMenu:v18];
    }
  }

  else
  {
    mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
    enablementGroup = [mEMORY[0x1E69A7FC8] enablementGroup];

    if (enablementGroup == 2)
    {
      delegate = [(CKTranscriptCollectionViewController *)self delegate];
      [delegate transcriptCollectionViewController:self viewedCommSafetyAssociatedItemsWithIndexPath:pathCopy];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self presentUserInterventionScreenForIndexPath:pathCopy shouldTargetAssociatedItems:1];
    }
  }
}

- (int64_t)_moreHelpMenuOptions:(BOOL)options
{
  optionsCopy = options;
  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  recipients = [conversation recipients];
  v7 = [recipients count];

  conversation2 = [(CKTranscriptCollectionViewController *)self conversation];
  recipients2 = [conversation2 recipients];
  v10 = [recipients2 count];

  isReportingEnabled = [(CKTranscriptCollectionViewController *)self isReportingEnabled];
  v12 = 96;
  if (!isReportingEnabled)
  {
    v12 = 0;
  }

  if (optionsCopy)
  {
    v13 = v12 | 0x80;
  }

  else
  {
    v13 = v12;
  }

  chat = [(CKTranscriptCollectionViewController *)self chat];
  isBusinessChat = [chat isBusinessChat];

  v16 = 1;
  if (v7 > 1)
  {
    v16 = 2;
  }

  v17 = v13 | v16;
  if (v10 > 2)
  {
    v17 |= 4uLL;
  }

  if (isBusinessChat)
  {
    return v13;
  }

  else
  {
    return v17;
  }
}

- (void)presentMoreHelpMenu
{
  mEMORY[0x1E69A8008] = [MEMORY[0x1E69A8008] sharedInstance];
  [mEMORY[0x1E69A8008] logPrivatizedUIInteractionEvent:2];

  v4 = [MEMORY[0x1E69CA8F8] menuWithOptions:{-[CKTranscriptCollectionViewController _moreHelpMenuOptions:](self, "_moreHelpMenuOptions:", 0)}];
  [CKCommSafetyAnalytics recordWaysToGetHelpTappedWithOptions:0];
  [v4 setMenuDelegate:self];
  [(CKTranscriptCollectionViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)didConfirmForInterventionViewController:(id)controller
{
  controllerCopy = controller;
  contextDictionary = [controllerCopy contextDictionary];
  v6 = +[CKCommSafetyReceiveContext contextKey];
  v11 = [contextDictionary objectForKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(CKTranscriptCollectionViewController *)self _dismissInterventionController:controllerCopy];

  indexPath = [v8 indexPath];

  if (indexPath)
  {
    indexPath2 = [v8 indexPath];
    -[CKTranscriptCollectionViewController _updateCommSafetySensitivityForContentAtIndexPath:shouldTargetAssociatedMessages:](self, "_updateCommSafetySensitivityForContentAtIndexPath:shouldTargetAssociatedMessages:", indexPath2, [v8 shouldTargetAssociatedMessages]);
  }
}

- (void)_updateCommSafetySensitivityForContentAtIndexPath:(id)path shouldTargetAssociatedMessages:(BOOL)messages
{
  messagesCopy = messages;
  pathCopy = path;
  delegate = [(CKTranscriptCollectionViewController *)self delegate];
  v8 = delegate;
  if (messagesCopy)
  {
    [delegate transcriptCollectionViewController:self viewedCommSafetyAssociatedItemsWithIndexPath:pathCopy];
  }

  else
  {
    [delegate transcriptCollectionViewController:self viewedCommSafetyItemWithIndexPath:pathCopy];
  }
}

- (void)evidenceToReportWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [context objectForKeyedSubscript:@"CKSensitiveContentIndexPathKey"];
  [(CKTranscriptCollectionViewController *)self evidenceToReportWithIndexPath:v7 completionHandler:handlerCopy];
}

- (void)evidenceToReportWithContext:(id)context balloonView:(id)view completionHandler:(id)handler
{
  handlerCopy = handler;
  if (view)
  {
    view = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:view];
  }

  [(CKTranscriptCollectionViewController *)self evidenceToReportWithIndexPath:view completionHandler:handlerCopy];
}

- (void)evidenceToReportWithIndexPath:(id)path completionHandler:(id)handler
{
  handlerCopy = handler;
  v17 = [(CKTranscriptCollectionViewController *)self selectedMediaObjectForCommSafetyReport:path];
  v7 = [(CKTranscriptCollectionViewController *)self mediaObjectsForCommSafetyReport:?];
  if ([v7 count])
  {
    v8 = [MEMORY[0x1E69A5BD0] me];
    bestIMHandle = [v8 bestIMHandle];

    v10 = objc_alloc(MEMORY[0x1E69CA910]);
    v11 = objc_opt_respondsToSelector();
    v12 = v10;
    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    chat = [conversation chat];
    if (v11)
    {
      v15 = [v12 initWithVictimHandle:bestIMHandle media:v7 selectedMediaObject:v17 chat:chat];
    }

    else
    {
      v15 = [v12 initWithVictimHandle:bestIMHandle sensitiveContentMedia:v7 chat:chat];
    }

    v16 = v15;

    handlerCopy[2](handlerCopy, v16, 0);
    handlerCopy = v16;
  }

  else
  {
    bestIMHandle = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, bestIMHandle);
  }
}

- (void)_enumerateMediaObjectsForReportUsingBlock:(id)block
{
  blockCopy = block;
  chatItems = [(CKTranscriptCollectionViewController *)self chatItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__CKTranscriptCollectionViewController_UserSafety___enumerateMediaObjectsForReportUsingBlock___block_invoke;
  v7[3] = &unk_1E72F48D0;
  v8 = blockCopy;
  v6 = blockCopy;
  [chatItems enumerateObjectsWithOptions:2 usingBlock:v7];
}

void __94__CKTranscriptCollectionViewController_UserSafety___enumerateMediaObjectsForReportUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v7 = [v10 IMChatItem];
  if ([v7 supportsCommunicationSafety])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = *(a1 + 32);
        v9 = [v10 mediaObject];
        (*(v8 + 16))(v8, v9, a3, a4);
      }
    }
  }
}

- (id)_findUniqueIDForSCUIAnalyticsFromChatItem:(id)item
{
  itemCopy = item;
  commSafetyTransferGUID = [itemCopy commSafetyTransferGUID];

  if (commSafetyTransferGUID)
  {
    commSafetyTransferGUID2 = [itemCopy commSafetyTransferGUID];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    conversation = [(CKTranscriptCollectionViewController *)self conversation];
    transcriptBackgroundGUID = [conversation transcriptBackgroundGUID];
LABEL_7:
    commSafetyTransferGUID2 = transcriptBackgroundGUID;

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    conversation = [itemCopy transferGUIDsInMessagePartText];
    transcriptBackgroundGUID = [conversation firstObject];
    goto LABEL_7;
  }

  commSafetyTransferGUID2 = 0;
LABEL_9:

  return commSafetyTransferGUID2;
}

- (void)didAskForMoreHelp:(id)help
{
  mEMORY[0x1E69A8008] = [MEMORY[0x1E69A8008] sharedInstance];
  [mEMORY[0x1E69A8008] logPrivatizedUIInteractionEvent:4];

  [(CKTranscriptCollectionViewController *)self _showMoreHelp];
}

- (void)didShowContent:(id)content
{
  contentCopy = content;
  v4 = objc_opt_respondsToSelector();
  v5 = contentCopy;
  if (v4)
  {
    v6 = [contentCopy performSelector:sel_contextDictionary];
    v7 = [v6 objectForKeyedSubscript:@"CKSensitiveContentIndexPathKey"];
    v8 = [v6 objectForKeyedSubscript:@"CKSensitiveContentTargetsAssociatedItemsKey"];
    bOOLValue = [v8 BOOLValue];

    mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
    enablementGroup = [mEMORY[0x1E69A7FC8] enablementGroup];

    if (enablementGroup == 2)
    {
      [(CKTranscriptCollectionViewController *)self _updateCommSafetySensitivityForContentAtIndexPath:v7 shouldTargetAssociatedMessages:bOOLValue];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self presentUserInterventionScreenForIndexPath:v7 shouldTargetAssociatedItems:bOOLValue];
    }

    v5 = contentCopy;
  }
}

- (void)didBlockContact:(id)contact
{
  mEMORY[0x1E69A8008] = [MEMORY[0x1E69A8008] sharedInstance];
  [mEMORY[0x1E69A8008] logPrivatizedUIInteractionEvent:6];

  conversation = [(CKTranscriptCollectionViewController *)self conversation];
  recipients = [conversation recipients];
  firstObject = [recipients firstObject];

  defaultIMHandle = [firstObject defaultIMHandle];
  [(CKTranscriptCollectionViewController *)self _blockHandle:defaultIMHandle];
}

- (void)didBlockContacts:(id)contacts
{
  mEMORY[0x1E69A8008] = [MEMORY[0x1E69A8008] sharedInstance];
  [mEMORY[0x1E69A8008] logPrivatizedUIInteractionEvent:6];

  view = [(CKTranscriptCollectionViewController *)self view];
  [(CKTranscriptCollectionViewController *)self _showBlockContactSelectionAlertFromView:view];
}

- (void)didLeaveConversation:(id)conversation
{
  mEMORY[0x1E69A8008] = [MEMORY[0x1E69A8008] sharedInstance];
  [mEMORY[0x1E69A8008] logPrivatizedUIInteractionEvent:5];

  view = [(CKTranscriptCollectionViewController *)self view];
  [(CKTranscriptCollectionViewController *)self _showLeaveConversationFromView:view];
}

- (void)initiateSmartEmojiResponsesUpdateWithChatItems:(id)items
{
  sub_190863204();
  v4 = sub_190D57180();
  selfCopy = self;
  sub_190862404(v4);
}

- (void)prewarmTapbackPickerImages
{
  if (qword_1EAD456B0 != -1)
  {
    swift_once();
  }

  if (qword_1EAD45500 != -1)
  {

    swift_once();
  }
}

- (void)updateScrollIntentWithTrigger:(id)trigger activeKeyboardAppearanceAnimationProperties:(id)properties
{
  swift_unknownObjectRetain();
  propertiesCopy = properties;
  selfCopy = self;
  sub_19088A664(trigger, properties);
  swift_unknownObjectRelease();
}

- (BOOL)pointIntersectsRepositionEnabledSticker:(CGPoint)sticker chatItem:(id)item
{
  y = sticker.y;
  x = sticker.x;
  itemCopy = item;
  selfCopy = self;
  LOBYTE(self) = CKTranscriptCollectionViewController.pointIntersectsRepositionEnabledSticker(_:chatItem:)(__PAIR128__(*&y, *&x), itemCopy);

  return self & 1;
}

- (void)toggleTimeStamp
{
  selfCopy = self;
  isShowingTranscriptTimestamps = [(CKTranscriptCollectionViewController *)selfCopy isShowingTranscriptTimestamps];
  v3 = &selRef_hideTranscriptTimestampsIfNeeded;
  if (!isShowingTranscriptTimestamps)
  {
    v3 = &selRef_showTranscriptTimestamps;
  }

  [selfCopy *v3];
}

- (id)toggleTimeStampAction
{
  selfCopy = self;
  CKTranscriptCollectionViewController.toggleTimeStampAction()(v3);
  v5 = v4;

  return v5;
}

- (id)toggleTimeStampOnlyContextMenuConfiguration
{
  selfCopy = self;
  v3.super.isa = CKTranscriptCollectionViewController.toggleTimeStampOnlyContextMenuConfiguration()().super.isa;

  return v3.super.isa;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sub_190D51C00();
  v9 = sub_190D57180();
  viewCopy = view;
  selfCopy = self;
  v12 = CKTranscriptCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(viewCopy, v9, __PAIR128__(*&y, *&x));

  return v12;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19089C0C4(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (id)_collectionView:(id)view accessoriesForContextMenuWithConfiguration:(id)configuration layoutAnchor:(id *)anchor
{
  selfCopy = self;
  viewCopy = view;
  configurationCopy = configuration;
  v10 = sub_19089C228(configuration);

  if (v10)
  {
    sub_1902188FC(0, &qword_1EAD55488);
    v11 = sub_190D57160();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_collectionView:(id)view styleForContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_19089C3C0(configuration);

  return v9;
}

- (void)preheatTranslator
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_190D572E0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_190D572A0();
  selfCopy = self;
  v8 = sub_190D57290();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = selfCopy;
  sub_190857E08(0, 0, v5, &unk_190DF1F20, v9);
}

- (void)makeTranslatedComposition:(id)composition from:(id)from to:(id)to completion:(id)completion
{
  v9 = sub_190D519C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v16 = _Block_copy(completion);
  sub_190D51970();
  sub_190D51970();
  _Block_copy(v16);
  compositionCopy = composition;
  selfCopy = self;
  sub_190B00D14(compositionCopy, v15, v12, selfCopy, v16);
  _Block_release(v16);
  _Block_release(v16);

  v19 = *(v10 + 8);
  v19(v12, v9);
  v19(v15, v9);
}

- (void)configureTranscriptCell:(id)cell hidden:(BOOL)hidden
{
  cellCopy = cell;
  selfCopy = self;
  sub_190B29EB4(cell, hidden);
}

- (void)setChatItemHidden:(BOOL)hidden forChatItemGUID:(id)d
{
  v6 = sub_190D56F10();
  v8 = v7;
  selfCopy = self;
  sub_190B29A14(hidden, v6, v8);
}

- (id)generateConversationFooterActions:(id)actions
{
  actionsCopy = actions;
  selfCopy = self;
  CKTranscriptCollectionViewController.generateConversationFooterActions(conversation:)();

  type metadata accessor for FooterButtonAction();
  v6 = sub_190D57160();

  return v6;
}

- (void)setAppIntentsDataSource
{
  selfCopy = self;
  collectionView = [(CKTranscriptCollectionViewController *)selfCopy collectionView];
  sub_190BE5A00();
  swift_unknownObjectRetain();
  sub_190D577C0();
}

- (void)beginEmphasisWithMessageGUID:(id)d
{
  sub_190D56F10();
  selfCopy = self;
  sub_190C37BA4();
}

- (void)updateEmphasis
{
  selfCopy = self;
  sub_190C380A0();
}

- (void)updateBalloonEmphasisIfNeededWithCell:(id)cell chatItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  selfCopy = self;
  sub_190C38B74(cellCopy, itemCopy);
}

- (void)startDownloadingTranslationAssetsForLanguageCodes:(NSArray *)codes completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = codes;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_190D572E0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_190E00720;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_190E00728;
  v14[5] = v13;
  codesCopy = codes;
  selfCopy = self;
  sub_190C798DC(0, 0, v9, &unk_190E00730, v14);
}

- (void)startDownloadFor:(NSArray *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_190D572E0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_190E00708;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_190DD75C0;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_190C798DC(0, 0, v9, &unk_190DD75C8, v14);
}

- (id)indexPathOfParentChatItemForIndexPath:(id)path
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  sub_190D51BC0();
  selfCopy = self;
  CKTranscriptCollectionViewController.indexPathOfParentChatItem(indexPath:)(v7, v10);

  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = (*(v5 + 48))(v10, 1, v4);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_190D51BB0();
    v12(v10, v4);
    v14 = v15;
  }

  return v14;
}

- (id)selectedMediaObjectForCommSafetyReport:(id)report
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  if (report)
  {
    sub_190D51BC0();
    v8 = sub_190D51C00();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_190D51C00();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  v11 = CKTranscriptCollectionViewController.selectedMediaObjectForCommSafetyReport(selectedIndexPath:)(v7);

  sub_19098D840(v7);

  return v11;
}

- (id)mediaObjectsForCommSafetyReport:(id)report
{
  reportCopy = report;
  selfCopy = self;
  CKTranscriptCollectionViewController.mediaObjectsForCommSafetyReport(selectedMediaObject:)(report);

  sub_1902188FC(0, &qword_1EAD466C0);
  sub_190D28F04();
  v7 = sub_190D57400();

  return v7;
}

void __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke_3_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)scrollViewDidEndDragging:willDecelerate:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)collectionView:cellForItemAtIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)quickActionButtonWasTapped:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_showAutoDonationAlert:forAppName:bundleID:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  OUTLINED_FUNCTION_9_0(&dword_19020E000, v1, v1, "Not showing SWY alert. AppName: %@ BundleID: %@", v2);
}

- (void)_quickActionSaveButtonWasTapped:atIndexPath:chatItem:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_saveMediaObjects:withMomentShareURL:sender:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_saveMediaObjects:withMomentShareURL:sender:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)liveViewControllerDidUpdateMessageTintColor:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)didTapUnavailableMomentShareBalloonView:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __80__CKTranscriptCollectionViewController_didTapUnavailableMomentShareBalloonView___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  OUTLINED_FUNCTION_9_0(&dword_19020E000, a3, a3, "Failed to open moment share URL: %@, error: %@", &v4);
}

- (void)effectManager:didStartEffect:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configureCell:(uint64_t)a3 forCKChatItem:(uint64_t)a4 atIndexPath:(uint64_t)a5 animated:(uint64_t)a6 animationDuration:(uint64_t)a7 animationCurve:(uint64_t)a8 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_11_0(&dword_19020E000, a2, a3, "Configuring a CKTranscriptStatusCell with an invalid chat item of type: %@", a5, a6, a7, a8, 2u);
  if (a1)
  {
  }
}

- (void)updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_19020E000, v4, v5, "  collectionView: %@ items", v6);
}

- (void)updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_19020E000, v4, v5, "  imChatItems (count): %@", v6);
}

- (void)updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:.cold.7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:.cold.9()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_19020E000, v4, v5, "  chatItems (count): %@", v6);
}

- (void)_updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __72__CKTranscriptCollectionViewController__itemGUIDsForItems_inIMChatItem___block_invoke_cold_1(id *a1)
{
  [*a1 count];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_updateCollectionViewForChatItems:oldChatItems:inserted:removed:associatedInserted:associatedRemoved:animationDuration:animationCurve:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateCollectionViewForChatItems:(uint64_t)a3 oldChatItems:inserted:removed:associatedInserted:associatedRemoved:animationDuration:animationCurve:completion:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_1(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_9_0(&dword_19020E000, v6, v4, "  chat: %@, exception: %@", v5);
}

- (void)_updateCollectionViewForChatItems:(void *)a1 oldChatItems:(uint64_t)a2 inserted:removed:associatedInserted:associatedRemoved:animationDuration:animationCurve:completion:.cold.3(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_0(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_19020E000, v3, v4, "collectionView: %@ items", v5);
}

- (void)_updateCollectionViewForChatItems:oldChatItems:inserted:removed:associatedInserted:associatedRemoved:animationDuration:animationCurve:completion:.cold.4()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_3_1(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_9_0(&dword_19020E000, v7, v5, "oldChatItems (count): %@, items:\n %@", v6);
}

- (void)_updateCollectionViewForChatItems:oldChatItems:inserted:removed:associatedInserted:associatedRemoved:animationDuration:animationCurve:completion:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_updateCollectionViewForChatItems:oldChatItems:inserted:removed:associatedInserted:associatedRemoved:animationDuration:animationCurve:completion:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_updateCollectionViewForChatItems:oldChatItems:inserted:removed:associatedInserted:associatedRemoved:animationDuration:animationCurve:completion:.cold.7()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_3_1(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_9_0(&dword_19020E000, v7, v5, "newChatItems (count): %@, items:\n %@", v6);
}

- (void)_sanitizeInsertedIndices:(void *)a1 inChatItems:withIMChatItems:.cold.1(void *a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [a1 collectionView];
  v3 = [v1 numberWithInteger:{objc_msgSend(v2, "numberOfItemsInSection:", 0)}];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_0(&dword_19020E000, v4, v5, "\tcollectionView: %@ items", v6, v7, v8, v9, v10);
}

- (void)_sanitizeInsertedIndices:(void *)a1 inChatItems:withIMChatItems:.cold.2(void *a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)newChatItemsWithIMChatItems:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a1 object:a2 file:@"CKTranscriptCollectionViewController.m" lineNumber:10101 description:{@"Detected chat item with invalid type. Expected %@ to be an instance of %@.", a3, v8}];
}

- (void)touchUpInsideNotifyAnywayButton:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_0(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_19020E000, v3, v4, "Could not find chat item to notify in chat %@", v5);
}

- (void)touchUpInsideCellStampButton:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)touchUpInsideCellStampButton:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)touchUpInsideCellStampButton:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handlePollsAddChoiceButtonTappedForIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleEditHistoryButtonTappedForIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleFailedCancelStatusButtonTappedForIndexPath:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)previewDidChange:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 guid];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_updatedMessageTintColor:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updatedMessageTintColor:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)chatItemsDidChange:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)verticallyScrollTranscriptByAmount:animated:duration:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)selectRangeWithIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end