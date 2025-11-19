@interface CKTranscriptCollectionViewController
+ (CGSize)defaultCollectionViewSize;
+ (id)initialTextEffectsState;
+ (id)logHandle;
+ (id)newTranscriptTextEffectCoordinatorForTranscriptCollectionViewController:(id)a3 isInline:(BOOL)a4;
+ (id)offrampLearnMoreURL;
- (BOOL)_allowsEffectAutoPlayback;
- (BOOL)_canUseOpaqueMask;
- (BOOL)_isHistoryLoadingNeededForDirection:(int64_t)a3 withTargetContentOffset:(CGPoint)a4 forKeyboardNavigation:(BOOL)a5;
- (BOOL)_isRecognizerScrubbingOnCurrentAudioMessageBalloon:(id)a3;
- (BOOL)_pluginChatItem:(id)a3 hasControllerConformingToProtocol:(id)a4;
- (BOOL)_selectedChatItemsHaveMultipleSenders:(id)a3;
- (BOOL)_textMessagePartItemHasValidLayout:(id)a3 textBalloonView:(id)a4;
- (BOOL)balloonTextViewIsSelected;
- (BOOL)canRaiseToListen;
- (BOOL)canRaiseToTalk;
- (BOOL)canStartNewTextAnimationsInTextEffectCoordinator:(id)a3;
- (BOOL)collectionView:(id)a3 shouldAllowSwipeForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionViewLayout:(id)a3 hasPlayingOrPausedTextEffectForChatItem:(id)a4 indexPath:(id)a5;
- (BOOL)hasRecentTouchForSendingPlugin:(id)a3;
- (BOOL)isContentOffsetAtCurrentTime:(CGPoint)a3;
- (BOOL)isContentOffsetBelowFutureMessages:(CGPoint)a3;
- (BOOL)isContentOffsetBelowTopOfLastMessage:(CGPoint)a3;
- (BOOL)isContentOffsetDocked:(CGPoint)a3;
- (BOOL)isLoadMoreSpinnerAboutToBeVisibleForDirection:(int64_t)a3 withTargetContentOffset:(CGPoint)a4;
- (BOOL)isLoadMoreSpinnerVisibleForDirection:(int64_t)a3;
- (BOOL)isReportingEnabled;
- (BOOL)isShowingTranscriptTimestamps;
- (BOOL)isTextEffectCoordinatorPaused;
- (BOOL)isVisiblePlugin:(id)a3;
- (BOOL)pointIntersectsRepositionEnabledSticker:(CGPoint)a3 chatItem:(id)a4;
- (BOOL)scrollToTopOfLastBubbleCellWithAnimationProperties:(id)a3;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (BOOL)shouldFreezeReplyDecorationsForCell:(id)a3;
- (BOOL)shouldPresentHawkingPromptForChatItem:(id)a3;
- (BOOL)textEffectCoordinator:(id)a3 textViewIdentifierIsCandidateForTextEffectPlayback:(id)a4;
- (BOOL)textEffectIsCandidateBalloonViewChecksForChatItem:(id)a3;
- (BOOL)textEffectIsCandidateBalloonViewChecksForChatItem:(id)a3 balloonView:(id)a4;
- (CGPoint)peekSampleTranslation;
- (CGPoint)topScrollPositionForIndexPath:(id)a3;
- (CGRect)collectionViewAdjustedContentFrameWithKeyboard:(UIEdgeInsets)a3;
- (CGRect)convertedBoundsToCullFromView:(id)a3;
- (CGSize)collectionViewSize;
- (CKBalloonEmphasisManager)balloonEmphasisManager;
- (CKFullScreenEffectManager)fullscreenEffectManager;
- (CKTranscriptCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 balloonMaxWidth:(double)a5 marginInsets:(UIEdgeInsets)a6;
- (CKTranscriptCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7;
- (CKTranscriptCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7 collectionViewSize:(CGSize)a8;
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
- (_NSRange)_loggingRangeForLatestChatItems:(id)a3;
- (_NSRange)_loggingRangeForUpdates:(id)a3 chatItemsCount:(int64_t)a4;
- (double)_balloonHorizontalOffsetForParentChatItem:(id)a3 contentAlignmentRect:(CGRect)a4 responsibleChatItems:(id *)a5 individualOffsets:(id *)a6;
- (double)_fullMaxWidth;
- (double)_platformSpecificBottomContentOffset;
- (id)_buildRetryAlertWithMessage:(id)a3 sourceView:(id)a4 tryAgainAction:(id)a5;
- (id)_buildStopSharingAlertWithMessage:(id)a3 sourceView:(id)a4 stopSharingAction:(id)a5;
- (id)_chatItemForGUID:(id)a3;
- (id)_chatItemLogSummaryForChatItems:(id)a3 withIndex:(int64_t)a4;
- (id)_chatItemLogSummaryForChatItems:(id)a3 withUpdates:(id)a4;
- (id)_ckChatItemWithGUID:(id)a3 inSection:(unint64_t)a4;
- (id)_collectionView:(id)a3 accessoriesForContextMenuWithConfiguration:(id)a4 layoutAnchor:(id *)a5;
- (id)_collectionView:(id)a3 styleForContextMenuWithConfiguration:(id)a4;
- (id)_currentTopChatItemForAggregateChatItem:(id)a3;
- (id)_findUniqueIDForSCUIAnalyticsFromChatItem:(id)a3;
- (id)_indexPathForTransfer:(id)a3;
- (id)_indexPathOfCellContainingStampButton:(id)a3;
- (id)_insertChatItemsInto:(id)a3 withIMChatItems:(id)a4 inserted:(id)a5 insertedUnreadMessage:(id *)a6 insertedLocalUnsentChatItem:(id *)a7;
- (id)_itemGUIDsForItems:(id)a3 inIMChatItem:(id)a4;
- (id)_itemProviderForSelectedChatItemsWithMultipleSenders:(id)a3;
- (id)_itemProviderForSelectedChatItemsWithSingleSender:(id)a3;
- (id)_latestChatItemsLogSummaryForChatItems:(id)a3;
- (id)_mediaObjectsForOrganicChatItem:(id)a3 onIndexPath:(id)a4;
- (id)_nextChatItemOfType:(Class)a3 afterIndex:(int64_t)a4 inChatItems:(id)a5;
- (id)_previousChatItemOfType:(Class)a3 beforeIndex:(int64_t)a4 inChatItems:(id)a5;
- (id)_sanitizeInsertedIndices:(id)a3 inChatItems:(id)a4 withIMChatItems:(id)a5;
- (id)associatedChatItemForGUID:(id)a3;
- (id)audioMessageMediaObjectsFromBalloonView:(id)a3;
- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5;
- (id)balloonPluginForViewController:(id)a3;
- (id)balloonViewAtIndexPath:(id)a3;
- (id)balloonViewForChatItem:(id)a3;
- (id)balloonViewForChatItemGUID:(id)a3 getChatItem:(id *)a4;
- (id)cellForAssociatedChatItem:(id)a3;
- (id)cellForChatItem:(id)a3;
- (id)chatItemAtIndexPath:(id)a3;
- (id)chatItemForCell:(id)a3;
- (id)chatItemForGUID:(id)a3;
- (id)collectionView:(id)a3 cellForCKChatItem:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 layout:(id)a4 chatItemForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 layout:(id)a4 chatItemForSupplementaryViewAtIndexPath:(id)a5;
- (id)collectionViewLayout;
- (id)compositorDatasourceItemsForSection:(int64_t)a3;
- (id)currentEffectForCollectionView:(id)a3 layout:(id)a4;
- (id)dataSourceWithCollectionView:(id)a3;
- (id)generateConversationFooterActions:(id)a3;
- (id)generateSnapshotForCKChatItems:(id)a3;
- (id)groupTypingIndicatorChatItem;
- (id)hawkingFailurePromptMessageForHandle:(id)a3;
- (id)imChatItems;
- (id)indexPathForBalloonView:(id)a3;
- (id)indexPathForChatItemGUID:(id)a3 useAssociatedSection:(BOOL)a4;
- (id)indexPathForLastItem;
- (id)indexPathForLastMessagePart;
- (id)indexPathForMessageGUID:(id)a3 messagePartIndex:(int64_t)a4 useAssociatedSection:(BOOL)a5;
- (id)indexPathOfLastBubble;
- (id)indexPathOfParentChatItemForIndexPath:(id)a3;
- (id)lastMessagePartChatItem;
- (id)latestScheduledMessageIndexPath;
- (id)layoutGroupForDatasourceItems:(id)a3 environment:(id)a4 layoutItems:(id)a5;
- (id)loadMoreItemIndexPathForDirection:(int64_t)a3;
- (id)logHandle;
- (id)makeHawkingPromptForMessage:(id)a3 toRecipient:(id)a4 fromSender:(id)a5 withSMSOption:(BOOL)a6;
- (id)mediaObjectsForCommSafetyReport:(id)a3;
- (id)menuConfigurationForTranslationIndicatorCell:(id)a3;
- (id)messagePartForBalloonView:(id)a3;
- (id)newChatItemWithIMChatItem:(id)a3 traitCollection:(id)a4 transcriptBackgroundLuminance:(double)a5;
- (id)newChatItemWithNotification:(id)a3;
- (id)newChatItemsWithIMChatItems:(id)a3;
- (id)newChatItemsWithNotifications:(id)a3;
- (id)printableViewController;
- (id)selectedChatItems;
- (id)selectedItems;
- (id)selectedMediaObjectForCommSafetyReport:(id)a3;
- (id)sharingMenu;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)textEffectCoordinator:(id)a3 explodeConfigurationForTextViewIdentifier:(id)a4;
- (id)textEffectCoordinator:(id)a3 highPriorityTextViewIdentifiersForUnplayedVisibleTextViewIdentifiers:(id)a4;
- (id)textEffectCoordinator:(id)a3 textViewForTextViewIdentifier:(id)a4;
- (id)toggleTimeStampAction;
- (id)toggleTimeStampOnlyContextMenuConfiguration;
- (id)transcriptBalloonCell:(id)a3 customTextRenderingDisplayLinkForTextBalloonViewTextView:(id)a4;
- (id)transcriptBalloonCell:(id)a3 layoutAttributesForTextBalloonView:(id)a4 messageDisplayViewFrame:(CGRect)a5 inContainerFrame:(CGRect)a6 proposedAttributes:(id)a7;
- (id)transcriptCollectionView:(id)a3 preferredIndexPathForAssociatedItemAtPoint:(CGPoint)a4;
- (id)visibleTextViewIdentifiersFor:(id)a3;
- (int64_t)_computeDesiredScrollIntentForInsertedChatItems:(id)a3 insertedUnreadChatItem:(id)a4 insertedLocalUnsentChatItem:(id)a5;
- (int64_t)_moreHelpMenuOptions:(BOOL)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)desiredTranscriptScrollIntentForContentOffset:(CGPoint)a3;
- (int64_t)desiredTranscriptScrollIntentForCurrentContentOffset;
- (unint64_t)_indexOfBreadcrumbReplacingTranscriptPluginInChatItems:(id)a3 inserted:(id)a4 removed:(id)a5 outIndexOfReplacedPlugin:(unint64_t *)a6 outIndexOfNewPlugin:(unint64_t *)a7;
- (unint64_t)dateCellRequestedScheduledMessageCount:(id)a3;
- (unint64_t)transcriptBalloonCell:(id)a3 allowedLayoutActionForTextBalloonView:(id)a4;
- (void)__configureVisibleMessagesCellsIncludingAssociatedCells:(BOOL)a3;
- (void)__raiseGestureRecognized:(id)a3;
- (void)__updateCollectionViewLayout;
- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)a3;
- (void)_addAttachmentsToProvidersArray:(id)a3 forChatItems:(id)a4;
- (void)_addChatItemsToGenerativeContextHistory:(id)a3;
- (void)_addChatItemsToInputContextHistory:(id)a3 signalingResponseContextChangeIfNeeded:(BOOL)a4;
- (void)_animateAssociatedChatItemWithIndices:(id)a3;
- (void)_animateAvatarFromGroupTypingIndicatorToIncomingCell:(id)a3;
- (void)_animateChatItemInsertion:(id)a3 inserted:(id)a4 wantsScrollToBottom:(BOOL)a5 scrollToBottomDuration:(double *)a6;
- (void)_animateChatItemReload:(id)a3 reload:(id)a4 associatedInserted:(id)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)_animateChatItemRemoval:(id)a3 removed:(id)a4;
- (void)_animateStickerRepositionWithAssociatedChatItem:(id)a3 associatedCell:(id)a4 associatedIndexPath:(id)a5;
- (void)_collectionViewDidRestAsync:(BOOL)a3;
- (void)_configureEditMarginInsetsForCell:(id)a3;
- (void)_configureScheduledDateCell:(id)a3 forItemAtIndexPath:(id)a4;
- (void)_conversationListFinishedMerging:(id)a3;
- (void)_createGenerativeContextHistory;
- (void)_deferredStartPlayback;
- (void)_deselectChatItemGuid:(id)a3;
- (void)_diffAssociatedItemsWithOldAssociatedItems:(id)a3 removedAssociatedIndexes:(id *)a4 insertedAssociatedIndexes:(id *)a5;
- (void)_downgradeMessage:(id)a3 andDowngradeChat:(BOOL)a4;
- (void)_enumerateMediaObjectsForReportUsingBlock:(id)a3;
- (void)_forceReloadChatItems;
- (void)_handleAssociatedMessageCellTapEvent:(id)a3 isDoubleTap:(BOOL)a4;
- (void)_handleAudioBalloonPreviewSuppressionStateForUntrustedSenders:(id)a3;
- (void)_handleAudioBalloonTapForIndexPath:(id)a3;
- (void)_handleCommSafetyMessageSomeoneStatusButtonTappedForIndexPath:(id)a3;
- (void)_handleCommSafetySensitiveReceiveStatusButtonTappedForIndexPath:(id)a3;
- (void)_handleEditHistoryButtonTappedForIndexPath:(id)a3;
- (void)_handleFailedCancelStatusButtonTappedForIndexPath:(id)a3;
- (void)_handleFailedEditStatusButtonTappedForIndexPath:(id)a3;
- (void)_handlePluginBreadcrumbingInChatItems:(id)a3 withIMChatItems:(id)a4 inserted:(id)a5 removed:(id)a6 completion:(id)a7;
- (void)_handlePollsAddChoiceButtonTappedForIndexPath:(id)a3;
- (void)_handleScrollViewAtRestAfterMidScrollPagingEnablementChange;
- (void)_handleSendFullQualityButtonTappedForIndexPath:(id)a3;
- (void)_handleSendViaSatelliteButtonTappedForIndexPath:(id)a3;
- (void)_handleTapOnGroupActionChatItem:(id)a3 fromSender:(id)a4;
- (void)_handleTapOnGroupTitleChangeChatItem:(id)a3;
- (void)_handleTapOnMessageRetractionChatItem:(id)a3;
- (void)_handleTapOnParticipantChangeChatItem:(id)a3;
- (void)_hideBalloonViewIfNecessaryForCell:(id)a3 indexPath:(id)a4;
- (void)_highlightCell:(id)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5;
- (void)_identifyIndicesNeedingCustomAnimationsForIMChatItems:(id)a3 inserted:(id)a4 removed:(id)a5;
- (void)_indicesOfReplyChatItemsToInsertWithoutFading:(id)a3 inserted:(id)a4 outInsertIndices:(id *)a5;
- (void)_indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading:(id)a3 inserted:(id)a4 removed:(id)a5 outInsertIndices:(id *)a6 outRemoveIndices:(id *)a7;
- (void)_invalidateChatItemLayoutIfNeeded;
- (void)_loadMessagesIfNeededWithTargetContentOffset:(CGPoint)a3 forKeyboardNavigation:(BOOL)a4;
- (void)_logVisibleChatItems;
- (void)_messageParents;
- (void)_prepareTextEffectCoordinatorForCell:(id)a3 forItem:(id)a4 atIndexPath:(id)a5;
- (void)_presentCancelledScheduledMessageConfirmationAlertForMessage:(id)a3;
- (void)_presentEditedMessageResendConfirmationAlertForMessage:(id)a3;
- (void)_presentEditedScheduledMessageResendConfirmationAlertForMessage:(id)a3;
- (void)_presentMessageCanNoLongerBeEditedAlert;
- (void)_presentMessageCanNoLongerBeRetractedAlert;
- (void)_presentOfframpDetonationAlert;
- (void)_presentRetractedMessageResendConfirmationAlertForIMChatItem:(id)a3;
- (void)_prewarmBalloonControllers;
- (void)_prewarmChatBotAssets;
- (void)_prewarmLinkPresentations;
- (void)_prewarmLinkPresentationsWithChatItems:(id)a3;
- (void)_prewarmMediaPreviews;
- (void)_prewarmTranscriptAssetsIfNecessary;
- (void)_quickActionPinButtonWasTapped:(id)a3 atIndexPath:(id)a4 chatItem:(id)a5;
- (void)_quickActionSaveButtonWasTapped:(id)a3 atIndexPath:(id)a4 chatItem:(id)a5;
- (void)_reattemptMessageCancellationForChatItem:(id)a3;
- (void)_refreshLocationsForRecipientsIfNecessary;
- (void)_regenerateChatItemsIn:(id)a3 withIMChatItems:(id)a4 regenerate:(id)a5 shouldShowBlackholeAlert:(BOOL *)a6;
- (void)_releaseActiveBalloonControllers;
- (void)_reloadChatItemAtIndexPath:(id)a3;
- (void)_removeChatItemsFrom:(id)a3 removed:(id)a4;
- (void)_removeHighlightFromCell:(id)a3 animated:(BOOL)a4;
- (void)_replayLastImpactEffectIfNotFromMe;
- (void)_reportJunkAlertControllerTitle:(id *)a3 message:(id *)a4;
- (void)_requestChatItemLayoutInvalidation;
- (void)_resendEditedMessageForChatItem:(id)a3;
- (void)_resendEditedScheduledMessageForChatItem:(id)a3;
- (void)_resendFailedMessages;
- (void)_resendFailedPollVote:(id)a3 forMessage:(id)a4;
- (void)_resendMessage:(id)a3;
- (void)_resendMessageRetractionForChatItem:(id)a3;
- (void)_resizingEnd:(id)a3;
- (void)_resizingStart:(id)a3;
- (void)_saveMediaObjects:(id)a3 withMomentShareURL:(id)a4 sender:(id)a5;
- (void)_searchForSelectedBalloonHack;
- (void)_selectChatItemGuid:(id)a3 selectionState:(id)a4;
- (void)_setHoldingWhilePresentingKeyboardForChatItem:(BOOL)a3;
- (void)_showAutoDonationAlert:(id)a3 forAppName:(id)a4 bundleID:(id)a5;
- (void)_showBlockContactSelectionAlertFromView:(id)a3;
- (void)_showLeaveConversationFromView:(id)a3;
- (void)_showMoreHelp;
- (void)_startPlaybackWithIndexPaths:(id)a3;
- (void)_tearDownLiveBubbles;
- (void)_textMessagePartItem:(id)a3 textBalloonView:(id)a4 getHasValidOrigin:(BOOL *)a5 getHasValidSize:(BOOL *)a6;
- (void)_trackPhotoStackEvent:(id)a3 forStackBalloonView:(id)a4 transcriptOrientation:(char)a5;
- (void)_updateAudioControllerForInserted:(id)a3 chatItems:(id)a4;
- (void)_updateCollectionViewForChatItems:(id)a3 oldChatItems:(id)a4 inserted:(id)a5 removed:(id)a6 associatedInserted:(id *)a7 associatedRemoved:(id *)a8 animationDuration:(double)a9 animationCurve:(int64_t)a10 completion:(id)a11;
- (void)_updateCollectionViewSnapshotForChatItems:(id)a3 reloadingItemGUIDs:(id)a4 animatingDifferences:(BOOL)a5 associatedInserted:(id *)a6 associatedRemoved:(id *)a7 completion:(id)a8;
- (void)_updateCommSafetySensitivityForContentAtIndexPath:(id)a3 shouldTargetAssociatedMessages:(BOOL)a4;
- (void)_updateEffectViewMessageRect:(id)a3 effect:(id)a4;
- (void)_updateLayoutAndConfigureVisibleCells;
- (void)_updatePluginPlaybackManagerForInsertedChatItems:(id)a3;
- (void)_updateSnapshotWithoutAnimation:(id)a3 reloadingItemGUIDs:(id)a4 completion:(id)a5;
- (void)_updateTranscriptChatItems:(id)a3 inserted:(id)a4 removed:(id)a5 reload:(id)a6 regenerate:(id)a7 animated:(BOOL)a8 completion:(id)a9;
- (void)_updateTranscriptChatItemsWithAnimation:(id)a3 withIMChatItems:(id)a4 oldChatItems:(id)a5 insertedChatItems:(id)a6 inserted:(id)a7 removed:(id)a8 reload:(id)a9 reloadItemGUIDs:(id)a10 desiredScrollIntent:(int64_t)a11 scrollToBottomDuration:(double *)a12 animationCurve:(int64_t)a13 completion:(id)a14;
- (void)_updateTranscriptChatItemsWithoutAnimation:(id)a3;
- (void)_updateTranscriptScrollIntentForContentOffset:(CGPoint)a3 reason:(id)a4;
- (void)_updateTranscriptScrollIntentToBottomOrHistoryOrDockedBasedOnCurrentContentOffset;
- (void)_updatedMessageTintColor:(id)a3;
- (void)addContentAnimationPauseReasons:(int64_t)a3;
- (void)addressBookChanged:(id)a3;
- (void)adjustTargetContentOffsetToCurrentTimeIfNeeded:(CGPoint *)a3;
- (void)audioBalloonDidResize:(id)a3 isExpanded:(BOOL)a4;
- (void)audioBalloonScrubberDidChangeValue:(double)a3;
- (void)audioBalloonScrubberWithRecognizer:(id)a3 didChangeValue:(double)a4;
- (void)audioController:(id)a3 mediaObjectDidFinishPlaying:(id)a4;
- (void)audioController:(id)a3 updateAudioBalloonsForTime:(double)a4 mediaObject:(id)a5;
- (void)audioControllerDidPause:(id)a3;
- (void)audioControllerDidStop:(id)a3;
- (void)audioControllerPlayingDidChange:(id)a3;
- (void)balloonView:(id)a3 carouselScrolledToIndex:(int64_t)a4;
- (void)balloonView:(id)a3 mediaObjectDidFinishPlaying:(id)a4;
- (void)balloonView:(id)a3 selectedChipAction:(id)a4;
- (void)balloonView:(id)a3 selectedSuggestedReply:(id)a4 messageGUID:(id)a5;
- (void)balloonView:(id)a3 userDidDragOutsideBalloonWithPoint:(CGPoint)a4;
- (void)balloonView:(id)a3 willInsertPluginViewAsSubview:(id)a4;
- (void)balloonViewDidStopTextSelection:(id)a3;
- (void)balloonViewDoubleTapped:(id)a3;
- (void)balloonViewLongTouched:(id)a3;
- (void)balloonViewSelected:(id)a3 withModifierFlags:(int64_t)a4 selectedText:(id)a5;
- (void)balloonViewShowInlineReply:(id)a3;
- (void)balloonViewTapped:(id)a3 withModifierFlags:(int64_t)a4 selectedText:(id)a5;
- (void)balloonViewTextViewDidChangeSelection:(id)a3 selectedText:(id)a4 textView:(id)a5;
- (void)balloonViewTitleTapped:(id)a3;
- (void)balloonViewWillDismissEditMenu:(id)a3;
- (void)beginEmphasisWithMessageGUID:(id)a3;
- (void)beginHidingStickerWithGUIDDuringAddStickerAnimation:(id)a3;
- (void)beginPresentingChatItemForKeyboardPresentation:(id)a3 layoutAreaContentInsets:(UIEdgeInsets)a4 completion:(id)a5;
- (void)chatItemControllerDidChangeAssociatedChatItemsWithChatItemDiff:(id)a3;
- (void)chatItemControllerDidInsertAssociatedChatItems;
- (void)chatItemControllerDidSetChatItems;
- (void)chatItemsDidChange:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 didRecognizePanGestureWithPoint:(CGPoint)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionViewDidInset:(id)a3;
- (void)collectionViewLayout:(id)a3 sizeDidChange:(CGSize)a4;
- (void)collectionViewLayoutRestingDidChange:(id)a3;
- (void)collectionViewWillInset:(id)a3 targetContentInset:(UIEdgeInsets *)a4;
- (void)collectionViewWillProgrammaticallyScroll:(id)a3 animated:(BOOL)a4;
- (void)collectionViewWillScroll:(id)a3 targetContentOffset:(CGPoint *)a4;
- (void)configureAssociatedCell:(id)a3 forChatItem:(id)a4 atIndexPath:(id)a5;
- (void)configureCell:(id)a3 forCKChatItem:(id)a4 atIndexPath:(id)a5 animated:(BOOL)a6 animationDuration:(double)a7 animationCurve:(int64_t)a8;
- (void)configurePluginChatItemForChatItemControllerWithChatItem:(id)a3;
- (void)configureSpeakerButtonCell:(id)a3 forItemAtIndexPath:(id)a4;
- (void)configureTranscriptCell:(id)a3 hidden:(BOOL)a4;
- (void)connectivityChanged:(id)a3;
- (void)copyChatItemsToPasteboard:(id)a3;
- (void)copySelectedChatItemsToPasteboard;
- (void)cullCellSubviews;
- (void)dateCellRequestedDeleteAllMessages:(id)a3;
- (void)dateCellRequestedScheduledMessageModification:(id)a3 scheduleType:(unint64_t)a4 deliveryTime:(id)a5;
- (void)dealloc;
- (void)deleteChatItems:(id)a3 sender:(id)a4;
- (void)deleteConversationPressedInTranscriptCell:(id)a3;
- (void)deleteSelectedChatItems:(id)a3;
- (void)deselectAllBalloons;
- (void)didAskForMoreHelp:(id)a3;
- (void)didBlockContact:(id)a3;
- (void)didBlockContacts:(id)a3;
- (void)didConfirmForInterventionViewController:(id)a3;
- (void)didLeaveConversation:(id)a3;
- (void)didPinchPhotoStackCell:(id)a3;
- (void)didShowContent:(id)a3;
- (void)didTapBlockContactInBalloonView:(id)a3;
- (void)didTapChipListFromNotificationExtensionWithBalloonView:(id)a3;
- (void)didTapCommSafetyAttributionItemWithIndexPath:(id)a3 sender:(id)a4;
- (void)didTapPendingMomentSharePhotoStackBalloonView:(id)a3;
- (void)didTapTranscriptActionButtonCell:(id)a3;
- (void)didTapTruncatedCaptionForRichCard:(id)a3 onBalloonView:(id)a4;
- (void)didTapUnavailableMomentShareBalloonView:(id)a3;
- (void)didTapWaysToGetHelp;
- (void)effectManager:(id)a3 didStartEffect:(id)a4;
- (void)effectManager:(id)a3 didStopEffect:(id)a4;
- (void)endHidingStickerWithGUIDDuringAddStickerAnimation:(id)a3;
- (void)endHoldingUpdatesAfterQuicklookCancelsDismiss;
- (void)endPresentingChatItemForKeyboardPresentation:(id)a3 completion:(id)a4;
- (void)enforceTranscriptScrollIntentWithAnimationProperties:(id)a3;
- (void)evidenceToReportWithContext:(id)a3 balloonView:(id)a4 completionHandler:(id)a5;
- (void)evidenceToReportWithContext:(id)a3 completionHandler:(id)a4;
- (void)evidenceToReportWithIndexPath:(id)a3 completionHandler:(id)a4;
- (void)fetchEarlierMessagesForConversation:(id)a3;
- (void)fetchRecentMessagesForConversation:(id)a3;
- (void)freezeReplyDecorationsIfNeededForCell:(id)a3;
- (void)hideTranscriptTimestampsIfNeeded;
- (void)highlightItemAtIndexPathWhenDisplayed:(id)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5;
- (void)initiateSmartEmojiResponsesUpdateWithChatItems:(id)a3;
- (void)installedAppsChanged:(id)a3;
- (void)interactionStartedFromPreviewItemControllerInBalloonView:(id)a3;
- (void)interactionStartedWithPluginBalloonView:(id)a3;
- (void)interactionStoppedFromPreviewItemControllerInBalloonView:(id)a3;
- (void)invalidateChatItemLayoutWithNewBalloonMaxWidth:(double)a3 marginInsets:(UIEdgeInsets)a4 traitCollection:(id)a5 transcriptBackgroundLuminance:(double)a6;
- (void)keyTransparencyConversationViewControllerDidComplete:(id)a3;
- (void)keyTransparencyTranscriptCellDidRequestVerification:(id)a3;
- (void)keyTransparencyTranscriptCellDidSelectIgnoreFailures:(id)a3;
- (void)launchReaderViewForBalloonView:(id)a3;
- (void)liveBalloonTouched:(id)a3;
- (void)liveViewController:(id)a3 requestPresentationStyle:(unint64_t)a4;
- (void)liveViewController:(id)a3 sendCustomAcknowledgementPayload:(id)a4 completionHandler:(id)a5;
- (void)liveViewController:(id)a3 stagePayload:(id)a4 skipShelf:(BOOL)a5 allowAllCommits:(BOOL)a6 completionHandler:(id)a7;
- (void)liveViewController:(id)a3 stageSticker:(id)a4 skipShelf:(BOOL)a5 allowAllCommits:(BOOL)a6 completionHandler:(id)a7;
- (void)liveViewControllerDidUpdateMessageTintColor:(id)a3;
- (void)loadEarlierMessages;
- (void)loadEarlierMessagesForConversation;
- (void)loadMessagesIfNeededSkipValidation;
- (void)loadRecentMessages;
- (void)loadRecentMessagesForConversation;
- (void)loadView;
- (void)locationShareBalloonViewIgnoreButtonTapped:(id)a3;
- (void)locationShareBalloonViewShareButtonTapped:(id)a3;
- (void)locationSharingClient:(id)a3 showShareLocationMenuWithBalloonPluginView:(id)a4;
- (void)locationStringDidChange:(id)a3;
- (void)makeTranslatedComposition:(id)a3 from:(id)a4 to:(id)a5 completion:(id)a6;
- (void)multiwayCallStateChanged:(id)a3;
- (void)parentControllerDidBecomeActive;
- (void)performResumeDeferredSetup;
- (void)photoStackBalloonView:(id)a3 didChangeCurrentAssetReference:(id)a4 isProgrammaticChange:(BOOL)a5 didChangeIndex:(BOOL)a6;
- (void)photoStackBalloonView:(id)a3 photoStack:(id)a4 didSelectAssetReference:(id)a5;
- (void)photoStackBalloonView:(id)a3 photoStackDidSelectAdditionalItems:(id)a4;
- (void)playEffectsIfNecessaryWithInsertedUnreadMessage:(id)a3 insertedLocalUnsentChatItem:(id)a4;
- (void)playFullscreenEffectIfNecessaryAutoplayingOutgoingEffect:(BOOL)a3 autoplayingIncomingEffect:(BOOL)a4 insertedUnreadMessage:(id)a5 insertedLocalUnsentChatItem:(id)a6;
- (void)playImpactEffectIfNecessaryAutoplayingOutgoingEffect:(BOOL)a3 autoplayingIncomingEffect:(BOOL)a4 impactEffectChatItem:(id)a5;
- (void)playbackSpeedDidChangeForAudioMessageBalloonView:(id)a3 playbackSpeed:(double)a4;
- (void)pluginPlaybackManagerDidStopPlayback:(id)a3;
- (void)preheatTranslator;
- (void)prepareForSuspend;
- (void)prepareTextEffectsForModalPresentation;
- (void)presentHawkingPromptForChatItem:(id)a3;
- (void)presentMoreHelpMenu;
- (void)presentUserInterventionScreenForIndexPath:(id)a3 shouldTargetAssociatedItems:(BOOL)a4;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)previewDidChange:(id)a3;
- (void)prewarmTapbackPickerImages;
- (void)printTranscript;
- (void)quickActionButtonWasTapped:(id)a3;
- (void)raiseGestureRecognized:(id)a3;
- (void)reconfigureVisibleSpeakerButtonCells;
- (void)recoverJunkPressedInTranscriptCell:(id)a3;
- (void)reloadChatItemsAtIndexes:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)reloadData;
- (void)removeContentAnimationPauseReasons:(int64_t)a3;
- (void)removeEmphasisFromCurrentMessageWithAnimation:(BOOL)a3;
- (void)reportJunkAlertControllerActionHandler;
- (void)repromptLastBlackholeFailureIfNotPrompted;
- (void)saveHyperlinkBalloonViewData:(id)a3 withHyperlink:(id)a4;
- (void)scrollToBottomAnimated:(BOOL)a3 withDuration:(double)a4 animationCurve:(int64_t)a5 insertedUnreadMessage:(id)a6 insertedLocalUnsentChatItem:(id)a7 withCompletion:(id)a8;
- (void)scrollToCurrentTimeAnimated:(BOOL)a3 withDuration:(double)a4 animationCurve:(int64_t)a5 withCompletion:(id)a6;
- (void)scrollTranscriptToEntryViewInsertionTimeWithAnimation:(BOOL)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)selectChatItem:(id)a3;
- (void)selectRangeWithIndexPath:(id)a3;
- (void)selectSingleBalloonView:(id)a3;
- (void)selectionManager:(id)a3 didAddChatItem:(id)a4 selectionState:(id)a5;
- (void)selectionManager:(id)a3 didRemoveChatItem:(id)a4;
- (void)sendAnimationManagerDidStopAnimation:(id)a3 context:(id)a4;
- (void)sendAnimationManagerWillStartAnimation:(id)a3 context:(id)a4;
- (void)setAppIntentsDataSource;
- (void)setChatItemHidden:(BOOL)a3 forChatItemGUID:(id)a4;
- (void)setChatItems:(id)a3;
- (void)setChatItems:(id)a3 removedAssociatedIndexes:(id *)a4 insertedAssociatedIndexes:(id *)a5;
- (void)setDockingEnabled:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHiddenAssociatedItems:(id)a3;
- (void)setHiddenAssociatedItemsForMessageEditing:(id)a3;
- (void)setHiddenBalloonViews:(id)a3;
- (void)setHiddenItems:(id)a3;
- (void)setNeedsChatItemLayoutInvalidation;
- (void)setPoppedBalloonGUIDHiddenUntilNextChatItemUpdate:(id)a3;
- (void)setScrollAnchor:(double)a3;
- (void)setSelectedItems:(id)a3;
- (void)setShouldUseOpaqueMask:(BOOL)a3;
- (void)setShowingTranslatedText:(BOOL)a3;
- (void)setTextEffectCoordinatorPaused:(BOOL)a3 reason:(id)a4;
- (void)setTranscriptBackgroundColor:(id)a3;
- (void)setTranscriptBackgroundLuminance:(double)a3;
- (void)setTransitionedFromComposing:(BOOL)a3;
- (void)setTransitioningFromComposing:(BOOL)a3;
- (void)showGridForChatItem:(id)a3;
- (void)showTranscriptTimestamps;
- (void)sizeFullTranscriptIfNecessary;
- (void)snapshotDidChange:(id)a3;
- (void)startDownloadFor:(NSArray *)a3 completionHandler:(id)a4;
- (void)startDownloadingTranslationAssetsForLanguageCodes:(NSArray *)a3 completion:(id)a4;
- (void)startFullscreenEffectIfNeededForChatItem:(id)a3;
- (void)startPluginPlaybackAfterDelay:(double)a3;
- (void)stopFullscreenEffect;
- (void)stopPlayingAudio;
- (void)stopPluginPlayback;
- (void)textEffectCoordinator:(id)a3 didChangeStateOfAnimator:(id)a4 textView:(id)a5;
- (void)textEffectCoordinator:(id)a3 willRequestAnimatorUsing:(id)a4;
- (void)toggleTimeStamp;
- (void)touchUpInsideCellLeaveConversationButton:(id)a3;
- (void)touchUpInsideCellReportSpamButton:(id)a3;
- (void)touchUpInsideCellSpeakerButton:(id)a3;
- (void)touchUpInsideCellStampButton:(id)a3;
- (void)touchUpInsideCellStatusButton:(id)a3;
- (void)touchUpInsideNotifyAnywayButton:(id)a3;
- (void)touchUpInsideShowHideTranslationButton:(id)a3;
- (void)touchUpInsideUnknownSenderButton:(id)a3 forChatItem:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)transcriptBalloonCell:(id)a3 didChangeRenderBoundsOfTextBalloonView:(id)a4;
- (void)transcriptBalloonCell:(id)a3 didEndBalloonSwipeWithDelta:(double)a4 swipeVelocity:(CGPoint)a5;
- (void)transcriptBalloonCell:(id)a3 didTranslateBalloonByDelta:(double)a4;
- (void)transcriptBalloonCell:(id)a3 textBalloonView:(id)a4 didChangeTextEffectPlaybackCandidateStatus:(BOOL)a5;
- (void)transcriptCollectionView:(id)a3 shouldScrollToHighlightedMessage:(id)a4;
- (void)transcriptMessageCell:(id)a3 didTapMessageDeliveryFailureButton:(id)a4;
- (void)transferRestored:(id)a3;
- (void)transferUpdated:(id)a3;
- (void)translationIndicatorCell:(id)a3 didChangeTranslationVisibility:(BOOL)a4;
- (void)translationIndicatorCellDidSelectStopTranslation:(id)a3;
- (void)tuConversationBalloonJoinButtonTapped:(id)a3;
- (void)unloadCachedSizeAndReloadChatItemAtIndexPath:(id)a3;
- (void)unsubscribeAlertControllerActionHandler;
- (void)updateAnimationPaused;
- (void)updateAssociatedItem:(id)a3 hidden:(BOOL)a4;
- (void)updateBalloonEmphasisIfNeededWithCell:(id)a3 chatItem:(id)a4;
- (void)updateDockingMetricsIfNeeded;
- (void)updateDockingStateIfNeeded;
- (void)updateEffectViewMessageRects;
- (void)updateEmphasis;
- (void)updateLastAddressedHandleID:(id)a3 lastAddressedSIMID:(id)a4;
- (void)updateScrollIntentWithTrigger:(id)a3 activeKeyboardAppearanceAnimationProperties:(id)a4;
- (void)updateTargetAlphaForVisibleChatItems;
- (void)updateTextEffectsState:(id)a3;
- (void)updateTranscript:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateTranscriptBackgroundLuminanceToMatchBackgroundColor;
- (void)updateTranscriptChatItems:(id)a3 inserted:(id)a4 removed:(id)a5 reload:(id)a6 regenerate:(id)a7 animated:(BOOL)a8 checkFiltered:(BOOL)a9 completion:(id)a10;
- (void)updateTranscriptChatItems:(id)a3 inserted:(id)a4 removed:(id)a5 reload:(id)a6 regenerate:(id)a7 animated:(BOOL)a8 completion:(id)a9;
- (void)updateTranscriptScrollIntentForSendAnimationContext:(id)a3;
- (void)updateTranscriptScrollIntentForUserScrollToContentOffset:(CGPoint)a3;
- (void)updateTranscriptScrollIntentToBottomOrHistoryBasedOnCurrentContentOffset;
- (void)verticallyScrollTranscriptByAmount:(double)a3 animated:(BOOL)a4 duration:(double)a5 completion:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKTranscriptCollectionViewController

- (NSArray)chatItems
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isConsolidatedChatItemsEnabled];

  if (!v4)
  {
    v6 = self->_chatItems;
    goto LABEL_15;
  }

  if (([(CKTranscriptCollectionViewController *)self isViewLoaded]& 1) != 0)
  {
    if (self->_chatItemController)
    {
      v5 = [(CKTranscriptCollectionViewController *)self chatItemController];
      v6 = [v5 chatItems];

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
  v6 = MEMORY[0x1E695E0F0];
LABEL_15:

  return v6;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKTranscriptCollectionViewController;
  [(CKTranscriptCollectionViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(CKTranscriptCollectionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  [(CKTranscriptCollectionViewController *)self lastViewWidthUsedToLayoutChatItems];
  v7 = CKFloatApproximatelyEqualToFloatWithTolerance(v5, v6, 0.00000999999975);

  if (!v7)
  {
    [(CKTranscriptCollectionViewController *)self _requestChatItemLayoutInvalidation];
    v8 = [(CKTranscriptCollectionViewController *)self view];
    [v8 bounds];
    [(CKTranscriptCollectionViewController *)self setLastViewWidthUsedToLayoutChatItems:v9];
  }

  [(CKTranscriptCollectionViewController *)self updateEffectViewMessageRects];
  v10 = [(CKTranscriptCollectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CKTranscriptCollectionViewController *)self delegate];
    [v12 viewDidLayoutSubviewsForTranscriptCollectionViewController:self];
  }
}

- (void)updateEffectViewMessageRects
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  v4 = [v3 currentEffect];

  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(CKTranscriptCollectionViewController *)self currentEffectDecorationViews];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v21 + 1) + 8 * v9) effectView];
          [(CKTranscriptCollectionViewController *)self _updateEffectViewMessageRect:v10 effect:v4];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(CKTranscriptCollectionViewController *)self delegate];
    v12 = [v11 transcriptCollectionViewControllerAdditionalFullscreenEffectViews:self];

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

          [(CKTranscriptCollectionViewController *)self _updateEffectViewMessageRect:*(*(&v17 + 1) + 8 * v16++) effect:v4];
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
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 balloonView];
          [(CKTranscriptCollectionViewController *)self convertedBoundsToCullFromView:v10];
          [v10 cullSubviewsWithVisibleBounds:?];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)updateDockingMetricsIfNeeded
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isTranscriptBackgroundsEnabled];

  if (v4)
  {
    if ([(CKTranscriptCollectionViewController *)self isDockingEnabled])
    {
      v5 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
      [v5 collectionViewContentSize];
      v7 = v6;

      [(CKTranscriptCollectionViewController *)self _computedContentInsets];
      v9 = v8;
      v10 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v10 frame];
      v11 = CGRectGetHeight(v23) - v9;

      v12 = v11 * (v7 / v11 - floor(v7 / v11));
      v13 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v13 frame];
      v14 = -(CGRectGetHeight(v24) - v11);

      v15 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v15 _setInterpageSpacing:{0.0, v14}];

      v21 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v21 _setPagingOrigin:{0.0, v12}];
    }

    else
    {
      v16 = *MEMORY[0x1E695EFF8];
      v17 = *(MEMORY[0x1E695EFF8] + 8);
      v18 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v18 _setPagingOrigin:{v16, v17}];

      v19 = *MEMORY[0x1E695F060];
      v20 = *(MEMORY[0x1E695F060] + 8);
      v21 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v21 _setInterpageSpacing:{v19, v20}];
    }
  }
}

- (UIEdgeInsets)_computedContentInsets
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 isTranscriptBackgroundsEnabled];

  if (v13)
  {
    v14 = [(CKTranscriptCollectionViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(CKTranscriptCollectionViewController *)self delegate];
      [v16 transcriptCollectionViewControllerComputedInsets:self];
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
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)collectionViewLayout
{
  v2 = [(CKTranscriptCollectionViewController *)self collectionView];
  v3 = [v2 collectionViewLayout];

  return v3;
}

- (IMChat)chat
{
  v2 = [(CKTranscriptCollectionViewController *)self conversation];
  v3 = [v2 chat];

  return v3;
}

- (int64_t)desiredTranscriptScrollIntentForCurrentContentOffset
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v3 contentOffset];
  v4 = [(CKTranscriptCollectionViewController *)self desiredTranscriptScrollIntentForContentOffset:?];

  return v4;
}

- (double)_platformSpecificBottomContentOffset
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 scrollToBottomStopsAtTopOfLastBubble];

  if (!v5)
  {
LABEL_7:
    v7 = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
    [(CKTranscriptCollectionViewController *)self _computedContentInsets];
    [v3 __ck_bottomOffsetHidingIndexPath:v7 computedInsets:?];
    goto LABEL_8;
  }

  v6 = [(CKTranscriptCollectionViewController *)self indexPathOfLastBubble];
  if (!v6)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Missing reply view. Using bottom content offset instead.", v12, 2u);
    }

    goto LABEL_7;
  }

  v7 = v6;
  [(CKTranscriptCollectionViewController *)self topScrollPositionForIndexPath:v6];
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
  v2 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__CKTranscriptCollectionViewController_latestScheduledMessageIndexPath__block_invoke;
  v5[3] = &unk_1E72F26A8;
  v5[4] = v6;
  v5[5] = &v8;
  [v2 enumerateObjectsWithOptions:2 usingBlock:v5];

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

- (id)dataSourceWithCollectionView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__CKTranscriptCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke;
  v8[3] = &unk_1E72ECB28;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  v6 = [v5 initWithCollectionView:v4 cellProvider:v8];
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

- (id)generateSnapshotForCKChatItems:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
  v9 = v3;
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

        v14 = [*(*(&v52 + 1) + 8 * i) IMChatItem];
        v15 = [v14 guid];
        [v8 addObject:v15];
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

        v22 = [*(*(&v48 + 1) + 8 * v21) IMChatItem];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v8;
          v24 = v22;
          v25 = [v24 visibleAssociatedMessageChatItems];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v26 = [v25 countByEnumeratingWithState:&v44 objects:v57 count:16];
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
                  objc_enumerationMutation(v25);
                }

                v30 = [*(*(&v44 + 1) + 8 * j) guid];
                [v17 addObject:v30];
              }

              v27 = [v25 countByEnumeratingWithState:&v44 objects:v57 count:16];
            }

            while (v27);
          }

          v31 = [v24 messageHighlightChatItem];
          v32 = v31;
          if (v31)
          {
            v33 = [v31 guid];
            [v17 addObject:v33];
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

- (id)_ckChatItemWithGUID:(id)a3 inSection:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    goto LABEL_5;
  }

  if (!a4)
  {
    v7 = [(CKTranscriptCollectionViewController *)self chatItems];
LABEL_5:
    v8 = v7;
    v9 = [v7 __ck_chatItemWithGUID:v6];

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
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
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
  v2 = [(CKTranscriptCollectionViewController *)self chat];
  v3 = [v2 chatItems];

  return v3;
}

- (NSArray)associatedChatItems
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isConsolidatedChatItemsEnabled];

  if (!v4)
  {
    v6 = self->_associatedChatItems;
    goto LABEL_15;
  }

  if (([(CKTranscriptCollectionViewController *)self isViewLoaded]& 1) != 0)
  {
    if (self->_chatItemController)
    {
      v5 = [(CKTranscriptCollectionViewController *)self chatItemController];
      v6 = [v5 associatedChatItems];

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
  v6 = MEMORY[0x1E695E0F0];
LABEL_15:

  return v6;
}

- (NSString)transcriptIdentifier
{
  transcriptIdentifier = self->_transcriptIdentifier;
  if (!transcriptIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_transcriptIdentifier;
    self->_transcriptIdentifier = v5;

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
  v3 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [v3 invalidateDisplayLink];

  IMIsRunningInUnitTesting();
  [(CKTranscriptCollectionViewController *)self _releaseActiveBalloonControllers];
  v4 = [(CKConversation *)self->_conversation chat];
  [v4 endHoldingChatItemsUpdatesForAllReasons];
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
  v7 = [(CKTranscriptCollectionViewController *)self conversation];
  v8 = [v6 initWithLayoutContext:1 datasource:v7];

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
  v17 = [(CKTranscriptCollectionViewController *)self compositor];

  if (v17)
  {
    v18 = [(CKTranscriptCollectionViewController *)self compositor];
    [v18 setCollectionView:v16];
  }

  [(CKTranscriptCollectionView *)v16 setAutoresizingMask:18];
  v19 = [(CKTranscriptCollectionViewController *)self transcriptBackgroundColor];
  [(CKTranscriptCollectionView *)v16 setBackgroundColor:v19];

  if (CKIsRunningInMessagesNotificationExtension())
  {
    v20 = 0;
  }

  else
  {
    v21 = [(CKTranscriptCollectionViewController *)self conversation];
    v22 = [v21 handles];
    v2 = [v22 count] != 0;

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
  v25 = [v24 theme];
  -[CKTranscriptCollectionView setIndicatorStyle:](v16, "setIndicatorStyle:", [v25 scrollIndicatorStyle]);

  v26 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v25) = [v26 isDiffableTranscriptDataSourceEnabled];

  if (v25)
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
  v29 = [v28 forceMinTranscriptMarginInsets];
  if (v29)
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    [v2 minTranscriptMarginInsets];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self marginInsets];
  }

  [(CKEditableCollectionView *)v16 setMarginInsets:?];
  if (v29)
  {
  }

  [(CKTranscriptCollectionView *)v16 setAccessibilityIdentifier:@"TranscriptCollectionView"];
  v30 = +[CKUIBehavior sharedBehaviors];
  v31 = [v30 isSizeConstrained];

  if (v31)
  {
    [(CKTranscriptCollectionView *)v16 setShowsVerticalScrollIndicator:0];
  }

  [(CKTranscriptCollectionViewController *)self setView:v16];
  [(CKTranscriptCollectionViewController *)self setCollectionView:v16];
  v32 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v33 = [v32 isDiffableTranscriptDataSourceEnabled];

  if (v33)
  {
    v34 = [(CKTranscriptCollectionViewController *)self chatItems];
    v35 = [v34 count] == 0;

    if (!v35)
    {
      v36 = [(CKTranscriptCollectionViewController *)self chatItems];
      [(CKTranscriptCollectionViewController *)self _updateTranscriptChatItemsWithoutAnimation:v36];
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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isExpressiveTextEnabled];

  if (v4)
  {
    v15[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v6 = [(CKTranscriptCollectionViewController *)self registerForTraitChanges:v5 withHandler:&__block_literal_global_100];
  }

  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isConsolidatedChatItemsEnabled];

  if (v8)
  {
    v9 = [(CKTranscriptCollectionViewController *)self imChatItems];
    v10 = [(CKTranscriptCollectionViewController *)self newChatItemsWithIMChatItems:v9];

    v11 = [CKChatItemController alloc];
    v12 = [(CKTranscriptCollectionViewController *)self collectionView];
    v13 = [(CKChatItemController *)v11 initForCollectionView:v12 chatItems:v10 delegate:self];

    [(CKTranscriptCollectionViewController *)self setChatItemController:v13];
  }
}

void __51__CKTranscriptCollectionViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 transcriptTextEffectCoordinator];
  [v2 updateWithReason:@"UITraitActiveAppearance trait did change"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v24.receiver = self;
  v24.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v24 viewWillAppear:a3];
  v4 = [MEMORY[0x1E695DF00] date];
  [(CKTranscriptCollectionViewController *)self setTranscriptBecameVisibleTimestamp:v4];

  +[CKAssociatedStickerChatItem clearTranscriptDisplayCaches];
  v5 = [(CKTranscriptCollectionViewController *)self chat];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke;
  v22[3] = &unk_1E72EBA18;
  v6 = v5;
  v23 = v6;
  [(CKTranscriptCollectionViewController *)self updateTranscript:v22 animated:0 completion:0];
  v7 = [(CKTranscriptCollectionViewController *)self collectionView];
  v8 = [v6 chatIdentifier];
  [v7 configureAppEntityForConversationId:v8];

  if ([(CKTranscriptCollectionViewController *)self shouldLoadDefaultConversationViewingMessageCountOnAppear])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__CKTranscriptCollectionViewController_viewWillAppear___block_invoke_2;
    aBlock[3] = &unk_1E72EC3E8;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    v10 = [(CKTranscriptCollectionViewController *)self transitionCoordinator];
    v11 = v10;
    if (v10)
    {
      [v10 animateAlongsideTransition:0 completion:v9];
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

  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 isFindMyNavBarEnabled];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5B70] sharedInstance];
    v17 = [(CKTranscriptCollectionViewController *)self conversation];
    v18 = [v17 chat];
    [v16 startTrackingLocationForChat:v18];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v14 viewWillDisappear:a3];
  v4 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [v4 beginHoldingUpdatesForKey:@"CKFullscreenUpdatesDisappeared"];

  v5 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [v5 stopFullscreenEffect];

  v6 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  [v6 stopAllEffects];

  v7 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  [v7 setIsDisabled:1];

  [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:8];
  [(CKTranscriptCollectionViewController *)self _tearDownLiveBubbles];
  v8 = [(CKTranscriptCollectionViewController *)self stateCaptureAssistant];
  [v8 deregister];

  [(CKTranscriptCollectionViewController *)self setStateCaptureAssistant:0];
  [(CKTranscriptCollectionViewController *)self setTranscriptBecameVisibleTimestamp:0];
  +[CKAssociatedStickerChatItem clearTranscriptDisplayCaches];
  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isFindMyNavBarEnabled];

  if (v10)
  {
    v11 = [MEMORY[0x1E69A5B70] sharedInstance];
    v12 = [(CKTranscriptCollectionViewController *)self conversation];
    v13 = [v12 chat];
    [v11 stopTrackingLocationForChat:v13];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v6 viewDidDisappear:a3];
  if ([(CKTranscriptCollectionViewController *)self shouldEndShowingEditHistoryOnViewDisappearance])
  {
    v4 = [(CKTranscriptCollectionViewController *)self chat];
    [v4 endShowingEditHistoryForAllChatItems];
  }

  v5 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [v5 invalidateDisplayLink];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = self;
  v11 = [(CKTranscriptCollectionViewController *)v10 delegate];
  v12 = objc_opt_respondsToSelector();

  v13 = v10;
  if ((v12 & 1) == 0 || (-[CKTranscriptCollectionViewController delegate](v10, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), [v14 viewControllerForAlertPresentationFromTranscriptCollectionViewController:v10], v13 = objc_claimAutoreleasedReturnValue(), v10, v14, v13 == v10))
  {
    v15.receiver = v10;
    v15.super_class = CKTranscriptCollectionViewController;
    [(CKTranscriptCollectionViewController *)&v15 presentViewController:v8 animated:v6 completion:v9];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)v13 presentViewController:v8 animated:v6 completion:v9];
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
  v14 = [(CKTranscriptCollectionViewController *)self traitCollection];
  [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
  [(CKTranscriptCollectionViewController *)self invalidateChatItemLayoutWithNewBalloonMaxWidth:v14 marginInsets:v4 traitCollection:v6 transcriptBackgroundLuminance:v8, v10, v12, v13];
}

- (void)setTranscriptBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_transcriptBackgroundColor, a3);
  v5 = a3;
  [(CKTranscriptCollectionView *)self->_collectionView setBackgroundColor:v5];
}

- (void)setTranscriptBackgroundLuminance:(double)a3
{
  v3 = vabdd_f64(a3, self->_transcriptBackgroundLuminance);
  self->_transcriptBackgroundLuminance = a3;
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
    v5 = [(CKTranscriptCollectionViewController *)self traitCollection];
    v4 = [(UIColor *)self->_transcriptBackgroundColor resolvedColorWithTraitCollection:v5];
    [v4 _luminance];
    [(CKTranscriptCollectionViewController *)self setTranscriptBackgroundLuminance:?];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CKTranscriptCollectionViewController;
  [CKTranscriptCollectionViewController setEditing:sel_setEditing_animated_ animated:?];
  v7 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v7 setAllowsSelection:v5];
  [v7 setAllowsMultipleSelection:v5];
  [v7 _ck_setEditing:v5 animated:v4];
  [v7 setAlwaysBounceHorizontal:{-[CKTranscriptCollectionViewController wantsDrawerLayout](self, "wantsDrawerLayout")}];
  if (v5)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v9 = [(CKTranscriptCollectionViewController *)self chatItems];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__CKTranscriptCollectionViewController_setEditing_animated___block_invoke;
    v14[3] = &unk_1E72F0918;
    v15 = v8;
    v10 = v8;
    [v9 enumerateObjectsUsingBlock:v14];

    [(CKTranscriptCollectionViewController *)self setHiddenItems:v10];
    v11 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
    v12 = [v11 audioController];
    [v12 stop];
  }

  else
  {
    v13 = objc_opt_new();
    [(CKTranscriptCollectionViewController *)self setHiddenItems:v13];

    v10 = [(CKTranscriptCollectionViewController *)self selectionManager];
    [v10 removeAllSelectedMessageGuids];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(CKTranscriptCollectionViewController *)self chat];
  v9 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  v10 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v8 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57E8]];
  [v10 beginDisablingTranscriptDynamicsForReason:10];
  [v9 setUseInitialLayoutAttributesForRotation:1];
  [v9 setSizeForRotation:{width, height}];
  v18.receiver = self;
  v18.super_class = CKTranscriptCollectionViewController;
  [(CKTranscriptCollectionViewController *)&v18 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__CKTranscriptCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v14[3] = &unk_1E72F2630;
  v15 = v8;
  v16 = v10;
  v17 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  [v7 animateAlongsideTransition:0 completion:v14];
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
  v2 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v2 bounds];
  v4 = v3;
  [v2 marginInsets];
  v7 = v4 - (v5 + v6);
  [v2 safeAreaInsets];
  v10 = v7 - (v8 + v9);

  return v10;
}

- (BOOL)_canUseOpaqueMask
{
  v3 = [(CKTranscriptCollectionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CKTranscriptCollectionViewController *)self delegate];
    v5 = [v4 transcriptCollectionViewControllerShouldForceOpaqueMask:self];

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 transcriptCanUseOpaqueMask];

  return v8;
}

- (void)parentControllerDidBecomeActive
{
  v7.receiver = self;
  v7.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v7 parentControllerDidBecomeActive];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isExpressiveTextEnabled];

  if (v4)
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:@"potentially start a new animation because parentControllerDidBecomeActive"];
  }

  v5 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  [v5 setIsDisabled:0];

  v6 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [v6 endHoldingUpdatesForKey:@"CKFullscreenUpdatesAppSuspension"];

  [(CKTranscriptCollectionViewController *)self setAllowsPluginPlayback:1];
  [(CKTranscriptCollectionViewController *)self pluginPlaybackDelay];
  [(CKTranscriptCollectionViewController *)self startPluginPlaybackAfterDelay:?];
}

- (void)prepareForSuspend
{
  v7.receiver = self;
  v7.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v7 prepareForSuspend];
  v3 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [v3 invalidateDisplayLink];

  v4 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  v5 = [v4 currentEffect];
  [v5 stopSoundEffect];

  v6 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [v6 beginHoldingUpdatesForKey:@"CKFullscreenUpdatesAppSuspension"];

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

  v6 = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [v6 copy];

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
          v14 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          [v13 performHostAppResumeWithContext:v14];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = CKTranscriptCollectionViewController;
  [(CKViewController *)&v13 viewDidAppear:a3];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 shouldSizeInitialViewingMessageCount];

  if ((v5 & 1) == 0)
  {
    v6 = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [v6 isUserInteractionEnabled];

    if (v7)
    {
      v8 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v8 flashScrollIndicators];
    }
  }

  [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:8];
  v9 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [v9 endHoldingUpdatesForKey:@"CKFullscreenUpdatesDisappeared"];

  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isExpressiveTextEnabled];

  if (v11)
  {
    v12 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
    [v12 updateWithReason:@"viewDidAppear"];
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

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = v6;
  if (!__CurrentTestName)
  {
    goto LABEL_8;
  }

  v8 = [v6 _launchTestName];
  if (![v7 isRunningTest:v8])
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = [v7 shouldRecordExtendedLaunchTime];

  if (v9)
  {
LABEL_8:
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__CKTranscriptCollectionViewController_viewDidAppearDeferredSetup__block_invoke_2;
    v13[3] = &unk_1E72EBA18;
    v14 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
    v8 = v14;
    goto LABEL_9;
  }

LABEL_10:
  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isExpressiveTextEnabled];

  if (v11 && [(CKTranscriptCollectionViewController *)self _shouldMakeTextEffectStateReadyInViewDidAppearDeferredSetup])
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

- (CKTranscriptCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 balloonMaxWidth:(double)a5 marginInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v13 = a4;
  v14 = a3;
  [objc_opt_class() defaultCollectionViewSize];
  v17 = [(CKTranscriptCollectionViewController *)self initWithConversation:v14 delegate:v13 notifications:MEMORY[0x1E695E0F0] balloonMaxWidth:a5 marginInsets:top collectionViewSize:left, bottom, right, v15, v16];

  return v17;
}

- (CKTranscriptCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  [objc_opt_class() defaultCollectionViewSize];
  v20 = [(CKTranscriptCollectionViewController *)self initWithConversation:v17 delegate:v16 notifications:v15 balloonMaxWidth:a6 marginInsets:top collectionViewSize:left, bottom, right, v18, v19];

  return v20;
}

- (CKTranscriptCollectionViewController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7 collectionViewSize:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v73.receiver = self;
  v73.super_class = CKTranscriptCollectionViewController;
  v21 = [(CKTranscriptCollectionViewController *)&v73 initWithNibName:0 bundle:0];
  if (!v21)
  {
    goto LABEL_25;
  }

  v70 = v20;
  v22 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v23 = [v22 isExpressiveTextEnabled];

  if (v23)
  {
    v24 = [v18 chat];
    v25 = [v24 supportsCapabilities:0x100000];

    if (v25)
    {
      v26 = [objc_opt_class() newTranscriptTextEffectCoordinatorForTranscriptCollectionViewController:v21 isInline:{-[CKTranscriptCollectionViewController isInline](v21, "isInline")}];
      transcriptTextEffectCoordinator = v21->_transcriptTextEffectCoordinator;
      v21->_transcriptTextEffectCoordinator = v26;

      [(CKTextEffectCoordinator *)v21->_transcriptTextEffectCoordinator setDelegate:v21];
      [(CKTextEffectCoordinator *)v21->_transcriptTextEffectCoordinator setConfigurationDelegate:v21];
      v28 = [objc_opt_class() initialTextEffectsState];
      textEffectsState = v21->_textEffectsState;
      v21->_textEffectsState = v28;

      v30 = v21->_transcriptTextEffectCoordinator;
      v31 = [(CKTranscriptCollectionViewController *)v21 textEffectsState];
      -[CKTextEffectCoordinator setPaused:includingAnimators:](v30, "setPaused:includingAnimators:", [v31 isPaused], 1);
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

  v69 = [(CKTranscriptCollectionViewController *)v21 transcriptIdentifier];
  [(UIViewController *)v21 setBalloonBackdropGroupTraitOverrideWithUniqueContextString:?];
  v71 = v19;
  [(CKTranscriptCollectionViewController *)v21 setDelegate:v19];
  v35 = [v18 chat];
  [(CKTranscriptCollectionViewController *)v21 setConversation:v18];
  v36 = +[CKUIBehavior sharedBehaviors];
  v37 = [v36 theme];
  v38 = [v37 transcriptBackgroundColor];
  [(CKTranscriptCollectionViewController *)v21 setTranscriptBackgroundColor:v38];

  [(CKTranscriptCollectionViewController *)v21 updateTranscriptBackgroundLuminanceToMatchBackgroundColor];
  [(CKTranscriptCollectionViewController *)v21 setBalloonMaxWidth:a6];
  [(CKTranscriptCollectionViewController *)v21 setMarginInsets:top, left, bottom, right];
  [(CKTranscriptCollectionViewController *)v21 setShouldUseOpaqueMask:[(CKTranscriptCollectionViewController *)v21 _canUseOpaqueMask]];
  v39 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  v40 = [v39 audioController];
  [v40 setDelegate:v21];

  v41 = [(CKTranscriptCollectionViewController *)v21 imChatItems];
  if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_INFO, "Displaying content from chatItems", buf, 2u);
    }
  }

  v43 = [(CKTranscriptCollectionViewController *)v21 newChatItemsWithIMChatItems:v41, v41];
  v44 = +[CKUIBehavior sharedBehaviors];
  v45 = [v44 shouldSizeInitialViewingMessageCount];

  v46 = +[CKUIBehavior sharedBehaviors];
  v47 = [v46 initialConversationSizingMessageCount];

  if (v45 && v47 < [v43 count])
  {
    v48 = [v43 subarrayWithRange:{objc_msgSend(v43, "count") - v47, v47}];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)v21 setSizedFullTranscript:1];
    v48 = v43;
  }

  v49 = v48;
  v50 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v51 = [v50 isConsolidatedChatItemsEnabled];

  if (v51)
  {
    v52 = [(CKTranscriptCollectionViewController *)v21 chatItemController];
    v53 = [v52 setChatItems:v49 completion:0];

    if (!v45)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (![(CKTranscriptCollectionViewController *)v21 sizedFullTranscript])
    {
      [v35 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A5790]];
    }

    goto LABEL_19;
  }

  [(CKTranscriptCollectionViewController *)v21 setChatItems:v49];
  if (v45)
  {
    goto LABEL_17;
  }

LABEL_19:
  v54 = [(CKTranscriptCollectionViewController *)v21 conversation];
  v55 = [(CKTranscriptCollectionViewController *)v21 chatItems];
  v56 = [v54 createInputContextHistoryWithChatItems:v55];
  inputContextHistory = v21->_inputContextHistory;
  v21->_inputContextHistory = v56;

  [(CKTranscriptCollectionViewController *)v21 _refreshLocationsForRecipientsIfNecessary];
  v58 = dispatch_group_create();
  [(CKTranscriptCollectionViewController *)v21 setUpdateAnimationGroup:v58];
  [(CKTranscriptCollectionViewController *)v21 setTranscriptUpdateAnimated:1];
  v59 = [MEMORY[0x1E696AD88] defaultCenter];
  [v59 addObserver:v21 selector:sel_transferRestored_ name:@"CKFileTransferRestoredNotification" object:0];
  [v59 addObserver:v21 selector:sel_previewDidChange_ name:@"CKPreviewDidChangeNotification" object:0];
  [v59 addObserver:v21 selector:sel__adaptiveImageGlyphWasGeneratedNotification_ name:@"CKAdaptiveImageGlyphGeneratedNotification" object:0];
  [v59 addObserver:v21 selector:sel_snapshotDidChange_ name:@"CKSnapshotChangedNotification" object:0];
  [v59 addObserver:v21 selector:sel_locationStringDidChange_ name:@"CKLocationStringDidChangeNotification" object:0];
  [v59 addObserver:v21 selector:sel_transferUpdated_ name:@"CKFileTransferUpdatedNotification" object:0];
  [v59 addObserver:v21 selector:sel__transferCompleted_ name:@"CKFileTransferFinishedNotification" object:0];
  [v59 addObserver:v21 selector:sel_addressBookChanged_ name:*MEMORY[0x1E69A6828] object:0];
  [v59 addObserver:v21 selector:sel__conversationListFinishedMerging_ name:@"CKConversationListFinishedMergingChatsNotification" object:0];
  [v59 addObserver:v21 selector:sel_installedAppsChanged_ name:*MEMORY[0x1E69A56D8] object:0];
  [v59 addObserver:v21 selector:sel__updatedMessageTintColor_ name:*MEMORY[0x1E69A59F0] object:0];
  [v59 addObserver:v21 selector:sel_snapshotTaken_ name:*MEMORY[0x1E69DDBA8] object:0];
  [v59 addObserver:v21 selector:sel_multiwayCallStateChanged_ name:*MEMORY[0x1E69A5840] object:0];
  [v59 addObserver:v21 selector:sel_connectivityChanged_ name:*MEMORY[0x1E69A56F8] object:0];
  if (v35)
  {
    v60 = [objc_opt_class() chatItemsDidChangeNotification];
    [v59 addObserver:v21 selector:sel_chatItemsDidChange_ name:v60 object:v35];
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
  v64 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v65 = [v64 isDiffableTranscriptDataSourceEnabled];

  if (v65)
  {
    v66 = [(CKTranscriptCollectionViewController *)v21 viewIfLoaded];

    if (v66)
    {
      [(CKTranscriptCollectionViewController *)v21 _updateTranscriptChatItemsWithoutAnimation:v49];
    }
  }

  v20 = v70;
  v19 = v71;
LABEL_25:

  return v21;
}

- (void)setHiddenItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hiddenItems != v4)
  {
    v6 = [(NSIndexSet *)v4 copy];

    objc_storeStrong(&self->_hiddenItems, v6);
    v7 = [(CKTranscriptCollectionViewController *)self collectionView];
    v8 = [v7 visibleCells];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__CKTranscriptCollectionViewController_setHiddenItems___block_invoke;
    v9[3] = &unk_1E72F2658;
    v9[4] = self;
    [v8 enumerateObjectsUsingBlock:v9];

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

- (void)updateAssociatedItem:(id)a3 hidden:(BOOL)a4
{
  v4 = a4;
  v14 = [(CKTranscriptCollectionViewController *)self cellForAssociatedChatItem:a3];
  v6 = [(CKTranscriptCollectionViewController *)self collectionView];
  v7 = [v6 indexPathForCell:v14];

  if (v7)
  {
    v8 = [(CKTranscriptCollectionViewController *)self hiddenAssociatedItems];
    v9 = [v8 mutableCopy];
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

    v13 = [v7 item];
    if (v4)
    {
      [v12 addIndex:v13];
    }

    else
    {
      [v12 removeIndex:v13];
    }

    [(CKTranscriptCollectionViewController *)self setHiddenAssociatedItems:v12];
  }
}

- (void)setHiddenAssociatedItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hiddenAssociatedItems != v4)
  {
    v6 = [(NSIndexSet *)v4 copy];

    objc_storeStrong(&self->_hiddenAssociatedItems, v6);
    v7 = [(CKTranscriptCollectionViewController *)self collectionView];
    v8 = [v7 visibleCells];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__CKTranscriptCollectionViewController_setHiddenAssociatedItems___block_invoke;
    v9[3] = &unk_1E72F2658;
    v9[4] = self;
    [v8 enumerateObjectsUsingBlock:v9];

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

- (void)setHiddenAssociatedItemsForMessageEditing:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hiddenAssociatedItemsForMessageEditing != v4)
  {
    v6 = [(NSIndexSet *)v4 copy];

    objc_storeStrong(&self->_hiddenAssociatedItemsForMessageEditing, v6);
    v7 = [(CKTranscriptCollectionViewController *)self collectionView];
    v8 = [v7 visibleCells];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__CKTranscriptCollectionViewController_setHiddenAssociatedItemsForMessageEditing___block_invoke;
    v9[3] = &unk_1E72F2658;
    v9[4] = self;
    [v8 enumerateObjectsUsingBlock:v9];

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

- (void)setHiddenBalloonViews:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hiddenBalloonViews != v4)
  {
    v6 = [(NSIndexSet *)v4 copy];

    objc_storeStrong(&self->_hiddenBalloonViews, v6);
    v7 = [(CKTranscriptCollectionViewController *)self collectionView];
    v8 = [v7 visibleCells];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__CKTranscriptCollectionViewController_setHiddenBalloonViews___block_invoke;
    v9[3] = &unk_1E72F2658;
    v9[4] = self;
    [v8 enumerateObjectsUsingBlock:v9];

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

- (void)beginHidingStickerWithGUIDDuringAddStickerAnimation:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self stickerGUIDsHiddenDuringStickerAddAnimation];
  [v5 addObject:v4];

  v8 = [(CKTranscriptCollectionViewController *)self associatedChatItemForGUID:v4];

  v6 = [(CKTranscriptCollectionViewController *)self cellForAssociatedChatItem:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 associatedItemView];
    [v7 setHidden:1];
  }
}

- (void)endHidingStickerWithGUIDDuringAddStickerAnimation:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self stickerGUIDsHiddenDuringStickerAddAnimation];
  [v5 removeObject:v4];

  v8 = [(CKTranscriptCollectionViewController *)self associatedChatItemForGUID:v4];

  v6 = [(CKTranscriptCollectionViewController *)self cellForAssociatedChatItem:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 associatedItemView];
    [v7 setHidden:0];
  }
}

- (void)_highlightCell:(id)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v13 = a3;
  if (objc_opt_respondsToSelector())
  {
    itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
    self->_itemIndexPathToHighlight = 0;

    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 enableBalloonTextSelection];

    if (!v10 || v5)
    {
      v12 = [v13 balloonView];
      [v12 setHasHighlightOverlay:1 animated:v6 autoDismiss:v5];
    }
  }
}

- (void)highlightItemAtIndexPathWhenDisplayed:(id)a3 animated:(BOOL)a4 autoDismiss:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
  if (itemIndexPathToHighlight != v9)
  {
    v14 = v9;
    if (itemIndexPathToHighlight && self->_holdMessageEmphasisTillManuallyRemoved)
    {
      [(CKTranscriptCollectionViewController *)self removeEmphasisFromCurrentMessageWithAnimation:v6];
    }

    objc_storeStrong(&self->_itemIndexPathToHighlight, a3);
    self->_holdMessageEmphasisTillManuallyRemoved = !v5;
    v9 = v14;
    if (v14)
    {
      v11 = [(CKTranscriptCollectionViewController *)self collectionView];
      v12 = [v11 cellForItemAtIndexPath:self->_itemIndexPathToHighlight];

      if (v12)
      {
        if (v5)
        {
          v13 = self->_itemIndexPathToHighlight;
          self->_itemIndexPathToHighlight = 0;
        }

        [(CKTranscriptCollectionViewController *)self _highlightCell:v12 animated:v6 autoDismiss:v5];
      }

      v9 = v14;
    }
  }
}

- (void)_removeHighlightFromCell:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (objc_opt_respondsToSelector())
  {
    itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
    self->_itemIndexPathToHighlight = 0;

    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 enableBalloonTextSelection];

    if ((v8 & 1) == 0)
    {
      v9 = [v10 balloonView];
      [v9 setHasHighlightOverlay:0 animated:v4 autoDismiss:0];
    }
  }
}

- (void)removeEmphasisFromCurrentMessageWithAnimation:(BOOL)a3
{
  if (self->_itemIndexPathToHighlight)
  {
    v3 = a3;
    v5 = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [v5 cellForItemAtIndexPath:self->_itemIndexPathToHighlight];

    if (v7)
    {
      itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
      self->_itemIndexPathToHighlight = 0;

      [(CKTranscriptCollectionViewController *)self _removeHighlightFromCell:v7 animated:v3];
    }
  }
}

- (id)selectedItems
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = [v4 objectAtIndex:v5];
      v7 = [v6 IMChatItem];
      v8 = [v7 guid];

      v9 = [(CKTranscriptCollectionViewController *)self selectionManager];
      v10 = [v9 isMessageGuidSelected:v8];

      if (v10)
      {
        [v3 addIndex:v5];
      }

      ++v5;
    }

    while (v5 < [v4 count]);
  }

  return v3;
}

- (void)setSelectedItems:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CKTranscriptCollectionViewController *)self chatItems];
    [(CKTranscriptCollectionViewController *)self deselectAllBalloons];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__CKTranscriptCollectionViewController_setSelectedItems___block_invoke;
    v7[3] = &unk_1E72EF010;
    v8 = v5;
    v9 = self;
    v6 = v5;
    [v4 enumerateIndexesUsingBlock:v7];
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

- (void)deleteSelectedChatItems:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self selectedChatItems];
  [(CKTranscriptCollectionViewController *)self deleteChatItems:v5 sender:v4];
}

- (id)_currentTopChatItemForAggregateChatItem:(id)a3
{
  v3 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 stackView];
    v5 = [v4 currentAssetReference];
    v6 = [v5 asset];
    v7 = [v6 chatItem];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)deleteChatItems:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(CKTranscriptCollectionViewController *)self chat];
    [v8 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57B0]];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() & 1;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __63__CKTranscriptCollectionViewController_deleteChatItems_sender___block_invoke;
    v19 = &unk_1E72F2680;
    v20 = self;
    v10 = v6;
    v23 = v9;
    v21 = v10;
    v22 = v8;
    v11 = v8;
    v12 = _Block_copy(&v16);
    v13 = CKIsRunningInMacCatalyst() != 0;
    v14 = objc_opt_new();
    [v14 setPresentationViewController:{self, v16, v17, v18, v19, v20}];
    [v14 setMessagesCount:{objc_msgSend(v10, "count")}];
    [v14 setAlertControllerStyle:v13];
    [v14 setAlertsCompletedBlock:v12];
    [v14 setSender:v7];
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

- (void)setTransitionedFromComposing:(BOOL)a3
{
  self->_transitionedFromComposing = a3;
  if (a3)
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

- (void)setTransitioningFromComposing:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  self->_transitioningFromComposing = a3;
  if (a3)
  {
    v4 = [(CKTranscriptCollectionViewController *)self chatItems];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
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
            v13 = [v11 IMChatItem];
            v14 = [v13 guid];

            v15 = [v12 snapshotViewAfterScreenUpdates:0];
            [(NSDictionary *)v5 setObject:v15 forKeyedSubscript:v14];
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

- (void)setScrollAnchor:(double)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [v4 setAnchorYPosition:a3];
}

- (void)__configureVisibleMessagesCellsIncludingAssociatedCells:(BOOL)a3
{
  v5 = [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator isPaused];
  if (!v5)
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator setPaused:1 includingAnimators:0];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator reset];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__CKTranscriptCollectionViewController___configureVisibleMessagesCellsIncludingAssociatedCells___block_invoke;
  v6[3] = &unk_1E72ED8D8;
  v6[4] = self;
  v7 = a3;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
  if (!v5 && !+[CKApplicationState isResizing])
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
  v3 = [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator isPaused];
  if (!v3)
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
  if (!v3 && !+[CKApplicationState isResizing])
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKTranscriptCollectionViewController;
  v4 = a3;
  [(CKTranscriptCollectionViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(CKTranscriptCollectionViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(CKTranscriptCollectionViewController *)self updateTranscriptBackgroundLuminanceToMatchBackgroundColor];
  }
}

- (void)_requestChatItemLayoutInvalidation
{
  v3 = [(CKTranscriptCollectionViewController *)self delegate];
  [v3 transcriptCollectionViewControllerNeedsChatItemLayoutInvalidation:self];
}

- (void)invalidateChatItemLayoutWithNewBalloonMaxWidth:(double)a3 marginInsets:(UIEdgeInsets)a4 traitCollection:(id)a5 transcriptBackgroundLuminance:(double)a6
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v32 = *MEMORY[0x1E69E9840];
  v13 = a5;
  [(CKTranscriptCollectionViewController *)self setBalloonMaxWidth:a3];
  [(CKTranscriptCollectionViewController *)self setMarginInsets:top, left, bottom, right];
  v14 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v14 setMarginInsets:{top, left, bottom, right}];

  v15 = [(CKTranscriptCollectionViewController *)self notifications];

  if (v15)
  {
    v16 = [(CKTranscriptCollectionViewController *)self notifications];
    v17 = [(CKTranscriptCollectionViewController *)self newChatItemsWithNotifications:v16];

    v18 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v19 = [v18 isConsolidatedChatItemsEnabled];

    if (v19)
    {
      v20 = [(CKTranscriptCollectionViewController *)self chatItemController];
      [v20 setChatItemsUsingReloadDataWithoutAnimation:v17];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:v17];
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
    v17 = [(CKTranscriptCollectionViewController *)self chatItems];
    v23 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(v17);
          }

          [*(*(&v27 + 1) + 8 * i) updateWithBalloonMaxWidth:v13 fullMaxWidth:a3 transcriptTraitCollection:v22 transcriptBackgroundLuminance:a6];
        }

        v24 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v24);
    }
  }

  [(CKTranscriptCollectionViewController *)self _updateLayoutAndConfigureVisibleCells];
}

- (void)_resizingStart:(id)a3
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v3 beginDisablingTranscriptDynamicsForReason:8];
}

- (void)_resizingEnd:(id)a3
{
  v6 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v6 endDisablingTranscriptDynamicsForReason:8];
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isExpressiveTextEnabled];

  if (v5)
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
    v3 = [(CKTranscriptCollectionViewController *)self imChatItems];
    v4 = [(CKTranscriptCollectionViewController *)self chatItems];
    v5 = [v3 count];
    if (v5 >= [v4 count])
    {
      v6 = [v3 subarrayWithRange:{0, objc_msgSend(v3, "count") - objc_msgSend(v4, "count")}];
      v7 = v4;
    }

    else
    {
      v6 = v3;
      v7 = [MEMORY[0x1E695DEC8] array];

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

    v9 = [(CKTranscriptCollectionViewController *)self notifications];

    if (v9)
    {
      v10 = [(CKTranscriptCollectionViewController *)self notifications];
      v11 = [(CKTranscriptCollectionViewController *)self newChatItemsWithNotifications:v10];
    }

    else
    {
      v10 = [(CKTranscriptCollectionViewController *)self newChatItemsWithIMChatItems:v6];
      v11 = [v10 arrayByAddingObjectsFromArray:v7];
    }

    v12 = v11;

    v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v14 = [v13 isConsolidatedChatItemsEnabled];

    if (v14)
    {
      v15 = [(CKTranscriptCollectionViewController *)self chatItemController];
      [v15 setChatItemsUsingReloadDataWithoutAnimation:v12];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:v12];
      v16 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
      [v16 reloadData];

      [(CKTranscriptCollectionViewController *)self reloadData];
    }

    v17 = [(CKTranscriptCollectionViewController *)self collectionView];
    v18 = +[CKScrollViewAnimationProperties unanimated];
    [v17 enforceTranscriptScrollIntentWithAnimationProperties:v18];
    v19 = [(CKTranscriptCollectionViewController *)self chat];
    [v19 endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A5790]];
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

  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CKTranscriptCollectionViewController__prewarmMediaPreviews__block_invoke;
  v7[3] = &unk_1E72EEC48;
  v7[4] = &v8;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v7];

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
  v3 = [(CKTranscriptCollectionViewController *)self chatItems];
  [(CKTranscriptCollectionViewController *)self _prewarmLinkPresentationsWithChatItems:v3];
}

- (void)_prewarmLinkPresentationsWithChatItems:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
  [v3 enumerateObjectsWithOptions:2 usingBlock:v7];
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
  v3 = [(CKTranscriptCollectionViewController *)self chatItems];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v11 = [v9 extensibleViewForContext:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v2 = [(CKTranscriptCollectionViewController *)self chatItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
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
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)reloadData
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v3 reloadData];

  [(CKTranscriptCollectionViewController *)self reconfigureVisibleSpeakerButtonCells];
}

- (void)updateTranscript:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = _Block_copy(v9);
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Update transcript animated:%@, completion:%@", buf, 0x16u);
    }
  }

  v13 = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
  v14 = v13 == 0;

  if (v14)
  {
    [(CKTranscriptCollectionViewController *)self setTranscriptUpdateCompletion:v9];
  }

  else
  {
    v15 = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__CKTranscriptCollectionViewController_updateTranscript_animated_completion___block_invoke;
    aBlock[3] = &unk_1E72EF038;
    v16 = v9;
    v28 = v16;
    v17 = v15;
    v29 = v17;
    v18 = _Block_copy(aBlock);
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v26 = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
        v20 = _Block_copy(v26);
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

  [(CKTranscriptCollectionViewController *)self setTranscriptUpdateAnimated:v6];
  v8[2](v8);
  v23 = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
  v24 = v23 == 0;

  if (!v24)
  {
    v25 = [(CKTranscriptCollectionViewController *)self transcriptUpdateCompletion];
    v25[2]();
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

- (void)scrollTranscriptToEntryViewInsertionTimeWithAnimation:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (v3)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = [(CKTranscriptCollectionViewController *)self collectionView];
      v8 = CKDebugNameForCKTranscriptScrollIntent([v7 transcriptScrollIntent]);
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

  v13 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v13 setTranscriptScrollIntent:v10];

  if (v3)
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

- (void)enforceTranscriptScrollIntentWithAnimationProperties:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v22 = 138543362;
    v23 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received request to enforce transcript scrollIntent. Animation: %{public}@", &v22, 0xCu);
  }

  v6 = [(CKTranscriptCollectionViewController *)self collectionView];
  v7 = [v6 transcriptScrollIntent];

  v8 = CKDebugNameForCKTranscriptScrollIntent(v7);
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v22 = 138543618;
    v23 = v8;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Enforcing transcript scroll intent %{public}@ with animation: %{public}@", &v22, 0x16u);
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        [(CKTranscriptCollectionView *)self->_collectionView correctOverscrollIfNecessaryWithAnimationProperties:v4];
      }

      goto LABEL_22;
    }

    WeakRetained = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
    v17 = [(CKTranscriptCollectionViewController *)self collectionView];
    [(CKTranscriptCollectionViewController *)self _computedContentInsets];
    [v17 scrollToBottomHidingMessageAtIndexPath:WeakRetained computedInsets:v4 animationProperties:?];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  switch(v7)
  {
    case 2:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v17 = [(CKTranscriptCollectionViewController *)self collectionView];
      v18 = [v17 highlightedMessageScrollContext];
      [WeakRetained transcriptCollectionViewController:self shouldScrollToHighlightedMessage:v18];

      goto LABEL_20;
    case 6:
      v19 = +[CKUIBehavior sharedBehaviors];
      v20 = [v19 scrollToBottomStopsAtTopOfLastBubble];

      if (!v20)
      {
        if (![(CKViewController *)self deferredAppeared])
        {
          v21 = +[CKScrollViewAnimationProperties unanimated];

          v4 = v21;
        }

        WeakRetained = [(CKTranscriptCollectionViewController *)self collectionView];
        [(CKTranscriptCollectionViewController *)self _computedContentInsets];
        [WeakRetained scrollToBottomWithAnimationProperties:v4 computedInsets:?];
        goto LABEL_21;
      }

      [(CKTranscriptCollectionViewController *)self scrollToTopOfLastBubbleCellWithAnimationProperties:v4];
      break;
    case 9:
      WeakRetained = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
      v11 = [(CKViewController *)self deferredAppeared];
      if (!v11)
      {
        v12 = +[CKScrollViewAnimationProperties unanimated];

        v13 = [(CKTranscriptCollectionViewController *)self collectionView];
        [v13 beginDisablingTranscriptDynamicsForReason:17];

        v4 = v12;
      }

      v14 = [(CKTranscriptCollectionViewController *)self collectionView];
      v15 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v15 contentInset];
      [v14 scrollToBottomHidingMessageAtIndexPath:WeakRetained computedInsets:v4 animationProperties:?];

      if (!v11)
      {
        v16 = [(CKTranscriptCollectionViewController *)self collectionView];
        [v16 endDisablingTranscriptDynamicsForReason:17];
      }

      goto LABEL_21;
  }

LABEL_22:
}

- (void)stopPlayingAudio
{
  v3 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  v2 = [v3 audioController];
  [v2 stop];
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
    v4 = [v3 audioController];
    v5 = [v4 isPlaying];

    if (v5)
    {
      *(v11 + 24) = 1;
    }

    else
    {
      v6 = [(CKTranscriptCollectionViewController *)self chatItems];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__CKTranscriptCollectionViewController_canRaiseToListen__block_invoke;
      v9[3] = &unk_1E72EEC48;
      v9[4] = &v10;
      [v6 enumerateObjectsWithOptions:2 usingBlock:v9];
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
  v3 = [(CKTranscriptCollectionViewController *)self conversation];
  v4 = [v3 isStewieConversation];

  if (v4)
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

  v8 = [(CKTranscriptCollectionViewController *)self conversation];
  v9 = [v8 isReadOnlyChat];

  if (v9)
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

- (void)raiseGestureRecognized:(id)a3
{
  v6 = a3;
  v4 = [(CKTranscriptCollectionViewController *)self conversation];
  v5 = [v4 isBlockedByCommunicationLimits];

  if ((v5 & 1) == 0)
  {
    [(CKTranscriptCollectionViewController *)self __raiseGestureRecognized:v6];
  }
}

- (void)__raiseGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  v6 = [v5 audioController];

  LODWORD(v5) = [v4 isRecognized];
  if (v5)
  {
    if (v6)
    {
      [(CKAudioController *)v6 setShouldUseSpeaker:0];
      if (![(CKAudioController *)v6 isPlaying])
      {
        [(CKAudioController *)v6 playAfterDelay:0.5];
      }
    }

    else
    {
      v7 = [(CKTranscriptCollectionViewController *)self chatItems];
      v8 = [v7 __ck_indexesOfUnplayedAudioMessages];
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65__CKTranscriptCollectionViewController___raiseGestureRecognized___block_invoke;
      v14[3] = &unk_1E72F26D0;
      v15 = v9;
      v10 = v9;
      [v7 enumerateObjectsAtIndexes:v8 options:0 usingBlock:v14];
      v11 = [CKAudioController alloc];
      v12 = [(CKTranscriptCollectionViewController *)self conversation];
      v6 = [(CKAudioController *)v11 initWithMediaObjects:v10 conversation:v12];

      [(CKAudioController *)v6 setDelegate:self];
      v13 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
      [v13 setAudioController:v6];

      [(CKAudioController *)v6 setShouldUseSpeaker:0];
      [(CKAudioController *)v6 playAfterDelay:0.5];
    }
  }

  else
  {
    [(CKAudioController *)v6 pause];
  }
}

void __65__CKTranscriptCollectionViewController___raiseGestureRecognized___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mediaObject];
  [v2 addObject:v3];
}

- (void)setDockingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isTranscriptBackgroundsEnabled];

  if (v6 && self->_dockingEnabled != v3)
  {
    self->_dockingEnabled = v3;
    [(CKTranscriptCollectionViewController *)self updateDockingMetricsIfNeeded];
    if (v3)
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
    v7 = [(CKTranscriptCollectionViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    v9 = v6;
    v10 = v5;
    v11 = v4;
    v12 = v3;
    if (v8)
    {
      v13 = [(CKTranscriptCollectionViewController *)self delegate];
      [v13 transcriptCollectionViewControllerComputedInsets:self];
      v12 = v14;
      v11 = v15;
      v10 = v16;
      v9 = v17;
    }

    v18 = [(CKTranscriptCollectionViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(CKTranscriptCollectionViewController *)self delegate];
      v21 = [v20 transcriptCollectionViewControllerShouldSuppressDockingBehavior:self];
    }

    else
    {
      v21 = 0;
    }

    v26 = [(CKTranscriptCollectionViewController *)self collectionView];
    v27 = [v26 shouldAdjustContentOffsetForContentSizeChangeIfNeeded];

    v28 = [(CKTranscriptCollectionViewController *)self collectionView];
    v29 = v28;
    if (v11 == v4 && v12 == v3 && v9 == v6 && v10 == v5)
    {
      goto LABEL_40;
    }

    v33 = v21 | v27;
    [v28 __ck_bottomOffsetWithComputedInsets:{v12, v11, v10, v9}];
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

  v22 = [(CKTranscriptCollectionViewController *)self collectionView];
  v23 = [v22 isPagingEnabled];

  if (v23)
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

    v25 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v25 setPagingEnabled:0];

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

- (void)startFullscreenEffectIfNeededForChatItem:(id)a3
{
  v4 = a3;
  v5 = [v4 messageItem];
  v6 = [v5 unsentIsFromMeItem];

  if (v6)
  {
    v7 = [(CKTranscriptCollectionViewController *)self delegate];
    [v7 transcriptCollectionViewControllerWillBeginFullscreenEffectAnimationForOutgoingMessage:self];
  }

  v10 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  v8 = [(CKTranscriptCollectionViewController *)self textInputMode];
  v9 = [v8 primaryLanguage];
  [v10 startFullscreenEffectForChatItem:v4 language:v9];
}

- (void)stopFullscreenEffect
{
  v2 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [v2 stopFullscreenEffect];
}

- (BOOL)isVisiblePlugin:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(CKTranscriptCollectionViewController *)self chatItemForCell:*(*(&v16 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 bundleIdentifier];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {

            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)hasRecentTouchForSendingPlugin:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self mostRecentlyTouchedPlugin];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v16 = a3;
  v4 = [(CKTranscriptCollectionViewController *)self chat];
  v5 = *MEMORY[0x1E69A57C0];
  if (([v4 isHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57C0]] & 1) == 0)
  {
    [v4 beginHoldingChatItemsUpdatesForReason:v5];
  }

  v6 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v6 setTranscriptScrollIntent:5];
  v7 = [v6 panGestureRecognizer];
  [v7 locationInView:v6];
  v9 = v8;

  v10 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [v10 setAnchorYPosition:v9];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"transcriptCollectionViewWillBeginDragging" object:0];

  [(CKTranscriptCollectionViewController *)self stopPluginPlayback];
  [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:1];
  v12 = [(CKTranscriptCollectionViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CKTranscriptCollectionViewController *)self delegate];
    [v16 contentOffset];
    [v14 transcriptCollectionViewController:self willBeginDragging:?];
  }

  v15 = [(CKTranscriptCollectionViewController *)self groupTypingAvatarAnimationCoordinator];
  [v15 endAnimation];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  a5->x = 0.0;
  [(CKTranscriptCollectionViewController *)self adjustTargetContentOffsetToCurrentTimeIfNeeded:a5];
  v8 = [v7 panGestureRecognizer];
  v9 = [v8 _canPanVertically];

  if (v9)
  {
    [(CKTranscriptCollectionViewController *)self updateTranscriptScrollIntentForUserScrollToContentOffset:a5->x, a5->y];
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

  v11 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [v11 setTargetContentOffset:{a5->x, a5->y}];

  [(CKTranscriptCollectionViewController *)self _loadMessagesIfNeededWithTargetContentOffset:0 forKeyboardNavigation:a5->x, a5->y];
  v12 = [v7 isPagingEnabled];
  [v7 _pageDecelerationTarget];
  v14 = CKFloatApproximatelyEqualToFloatWithTolerance(a5->y, v13, 1.0);
  if ([(CKTranscriptCollectionViewController *)self isDockingEnabled])
  {
    if (v12)
    {
      if (v14)
      {
        v15 = [(CKTranscriptCollectionViewController *)self dockingImpactGenerator];
        [v15 impactOccurred];

        v16 = [(CKTranscriptCollectionViewController *)self delegate];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          [v7 _pageDecelerationTarget];
          v19 = v18;
          [v7 __ck_bottomOffset];
          v21 = CKFloatApproximatelyEqualToFloatWithTolerance(v19, v20, 1.0);
          v22 = [(CKTranscriptCollectionViewController *)self delegate];
          [v22 transcriptCollectionViewController:self dockedStateDidChange:v21];
        }
      }
    }
  }

  v23 = [(CKTranscriptCollectionViewController *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = [(CKTranscriptCollectionViewController *)self delegate];
    [v7 contentOffset];
    [v25 transcriptCollectionViewController:self willEndDragging:a5 withVelocity:? targetContentOffset:?];
  }
}

- (void)adjustTargetContentOffsetToCurrentTimeIfNeeded:(CGPoint *)a3
{
  if ([(CKTranscriptCollectionViewController *)self isContentOffsetAtCurrentTime:a3->x, a3->y])
  {
    v7 = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
    v5 = [(CKTranscriptCollectionViewController *)self collectionView];
    [(CKTranscriptCollectionViewController *)self _computedContentInsets];
    [v5 __ck_bottomOffsetHidingIndexPath:v7 computedInsets:?];
    a3->y = v6;
  }
}

- (BOOL)isContentOffsetAtCurrentTime:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
  [(CKTranscriptCollectionViewController *)self _platformSpecificBottomContentOffset];
  v8 = v7;
  v9 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  v10 = [v9 layoutAttributesForItemAtIndexPath:v6];

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

- (BOOL)isContentOffsetDocked:(CGPoint)a3
{
  y = a3.y;
  v5 = [(CKTranscriptCollectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKTranscriptCollectionViewController *)self delegate];
    v8 = [v7 transcriptCollectionViewControllerDockingEnabled:self];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(CKTranscriptCollectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CKTranscriptCollectionViewController *)self delegate];
    v13 = [v12 transcriptCollectionViewControllerShouldSuppressDockingBehavior:self];
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
  v23 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v23 __ck_bottomOffsetWithComputedInsets:{v16, v18, v20, v22}];
  v25 = v24;

  v26 = +[CKUIBehavior sharedBehaviors];
  [v26 transcriptDockingDisablementThreshold];
  v28 = v25 + v27;

  return y >= v28;
}

- (BOOL)isContentOffsetBelowFutureMessages:(CGPoint)a3
{
  y = a3.y;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(CKTranscriptCollectionViewController *)self latestScheduledMessageIndexPath];
  v6 = v5;
  if (v5 && [v5 item])
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

- (BOOL)isContentOffsetBelowTopOfLastMessage:(CGPoint)a3
{
  y = a3.y;
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

- (void)updateTranscriptScrollIntentForUserScrollToContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CKTranscriptCollectionViewController *)self collectionView];
  v7 = [v6 transcriptScrollIntent];
  if (v7 == 3)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [CKTranscriptCollectionViewController updateTranscriptScrollIntentForUserScrollToContentOffset:];
    }

    goto LABEL_7;
  }

  if (v7 == 4)
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
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  v4 = [v3 transcriptScrollIntent];

  if (v4 == 9)
  {
    v5 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v5 setTranscriptScrollIntent:0];
  }
}

- (void)_updateTranscriptScrollIntentToBottomOrHistoryOrDockedBasedOnCurrentContentOffset
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  [(CKTranscriptCollectionViewController *)self _updateTranscriptScrollIntentForContentOffset:@"Current content offset" reason:v5, v7];
}

- (void)_updateTranscriptScrollIntentForContentOffset:(CGPoint)a3 reason:(id)a4
{
  y = a3.y;
  x = a3.x;
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(CKTranscriptCollectionViewController *)self collectionView];
  v9 = [(CKTranscriptCollectionViewController *)self desiredTranscriptScrollIntentForContentOffset:x, y];
  [v8 invalidateNeedsContentOffsetAdjustmentForNextContentSizeChange];
  v10 = CKDebugNameForCKTranscriptScrollIntent(v9);
  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Updating scroll intent to %{public}@ reason: %{public}@", &v12, 0x16u);
  }

  [v8 setTranscriptScrollIntent:v9];
}

- (int64_t)desiredTranscriptScrollIntentForContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = [(CKTranscriptCollectionViewController *)self chat];
  [v7 endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57C0]];
  v8 = [(CKTranscriptCollectionViewController *)self collectionView];
  if ([v8 transcriptScrollIntent] == 5)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController scrollViewDidEndDragging:willDecelerate:];
    }

    [(CKTranscriptCollectionViewController *)self _updateTranscriptScrollIntentToBottomOrHistoryOrDockedBasedOnCurrentContentOffset];
  }

  [v6 contentOffset];
  if (v10 == 0.0 && ([v6 isDragging] & 1) == 0)
  {
    [(CKTranscriptCollectionViewController *)self setPeeking:0];
  }

  [(CKTranscriptCollectionViewController *)self setPeekSampleTranslation:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (!a4)
  {
    [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:1];
    [(CKTranscriptCollectionViewController *)self _collectionViewDidRestAsync:0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  transcriptBackgroundScrollingObserver = self->_transcriptBackgroundScrollingObserver;
  [v4 _verticalVelocity];
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

    v7 = [(CKTranscriptCollectionViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(CKTranscriptCollectionViewController *)self delegate];
      [v9 transcriptCollectionViewController:self backgroundScrollVelocityThresholdChanged:1];
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

    v11 = [(CKTranscriptCollectionViewController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CKTranscriptCollectionViewController *)self delegate];
      [v13 transcriptCollectionViewController:self backgroundScrollVelocityThresholdChanged:0];
    }
  }

  [v4 contentOffset];
  if (v14 == 0.0 && ([v4 isDragging] & 1) == 0)
  {
    [(CKTranscriptCollectionViewController *)self setPeeking:0];
  }

  v15 = [(CKTranscriptCollectionViewController *)self groupTypingAvatarAnimationCoordinator];
  [v15 updateAnimationWhileInflight];

  v16 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  [v16 matchScrollViewOffset:v4];

  [(CKTranscriptCollectionViewController *)self cullCellSubviews];
  [(CKTranscriptCollectionViewController *)self clearRecentPluginTouch];
  v17 = [(CKTranscriptCollectionViewController *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(CKTranscriptCollectionViewController *)self delegate];
    [v4 contentOffset];
    [v19 transcriptCollectionViewController:self didScroll:?];
  }

  if (CKIsRunningInMacCatalyst())
  {
    v20 = +[CKUIBehavior sharedBehaviors];
    v21 = [v20 shouldUseDynamicScrolling];

    if (v21)
    {
      if (([v4 isDecelerating] & 1) == 0)
      {
        v22 = [v4 panGestureRecognizer];
        v23 = [v22 state] > 0;

        if (v23)
        {
          v24 = [v4 panGestureRecognizer];
          [v24 velocityInView:v4];
          v26 = v25;
          v28 = v27;

          v29 = [(CKTranscriptCollectionViewController *)self collectionView];
          v30 = [v29 collectionViewLayout];

          if ((v28 == 0.0) != [v30 disableDynamicsWhileScrolling])
          {
            [v30 setDisableDynamicsWhileScrolling:v28 == 0.0];
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
  v35 = [(CKTranscriptCollectionViewController *)self presentedChatItemScrollOffset];

  if (v35)
  {
    [(CKTranscriptCollectionViewController *)self setPresentedChatItemScrollOffset:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
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

  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isExpressiveTextEnabled];

  if (v7)
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator resetBackoffState];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:@"scrollViewDidEndDecelerating"];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
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

- (BOOL)scrollViewShouldScrollToTop:(id)a3
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

- (void)scrollViewDidScrollToTop:(id)a3
{
  v4 = a3;
  [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:1];
  [v4 contentOffset];
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

- (void)_setHoldingWhilePresentingKeyboardForChatItem:(BOOL)a3
{
  v3 = a3;
  v7 = [(CKTranscriptCollectionViewController *)self chat];
  v5 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  v6 = v5;
  if (v3)
  {
    [v5 beginHoldingUpdatesForKey:@"CKFullscreenUpdatesPresentingKeyboardForChatItem"];
    [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:16];
    [v7 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57B8]];
  }

  else
  {
    [v5 endHoldingUpdatesForKey:@"CKFullscreenUpdatesPresentingKeyboardForChatItem"];
    [(CKTranscriptCollectionViewController *)self removeContentAnimationPauseReasons:16];
    [v7 endHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57B8]];
  }
}

- (CGRect)collectionViewAdjustedContentFrameWithKeyboard:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v7 adjustedContentInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:CKNonFlatDeviceOrientation() ignoreInputView:1];
  v17 = v13 + v16;
  [v7 frame];
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

- (void)beginPresentingChatItemForKeyboardPresentation:(id)a3 layoutAreaContentInsets:(UIEdgeInsets)a4 completion:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v11 = a3;
  v12 = a5;
  [(CKTranscriptCollectionViewController *)self _setHoldingWhilePresentingKeyboardForChatItem:1];
  [(CKTranscriptCollectionViewController *)self setIsPresentingChatItemForKeyboard:1];
  v13 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v13 setIgnoresAutomaticScrollsTowardBottom:1];

  v14 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v14 setScrollEnabled:0];

  v15 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__CKTranscriptCollectionViewController_beginPresentingChatItemForKeyboardPresentation_layoutAreaContentInsets_completion___block_invoke;
  block[3] = &unk_1E72F2720;
  block[4] = self;
  v19 = v11;
  v21 = top;
  v22 = left;
  v23 = bottom;
  v24 = right;
  v20 = v12;
  v16 = v12;
  v17 = v11;
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

- (void)endPresentingChatItemForKeyboardPresentation:(id)a3 completion:(id)a4
{
  v5 = a4;
  if ([(CKTranscriptCollectionViewController *)self isPresentingChatItemForKeyboard])
  {
    v6 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v6 setScrollEnabled:1];

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __96__CKTranscriptCollectionViewController_endPresentingChatItemForKeyboardPresentation_completion___block_invoke;
    v18 = &unk_1E72ED1C8;
    v19 = self;
    v20 = v5;
    v7 = _Block_copy(&v15);
    v8 = [(CKTranscriptCollectionViewController *)self presentedChatItemScrollOffset:v15];

    if (v8)
    {
      v9 = [(CKTranscriptCollectionViewController *)self presentedChatItemScrollOffset];
      [v9 pointValue];
      v11 = v10;

      [(CKTranscriptCollectionViewController *)self setPresentedChatItemScrollOffset:0];
      v12 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v12 contentOffset];
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
  v2 = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];
  [v2 stopPlayback];
}

- (void)startPluginPlaybackAfterDelay:(double)a3
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__deferredStartPlayback object:0];

  [(CKTranscriptCollectionViewController *)self performSelector:sel__deferredStartPlayback withObject:0 afterDelay:a3];
}

- (void)_deferredStartPlayback
{
  if ([(CKTranscriptCollectionViewController *)self allowsPluginPlayback])
  {
    v3 = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];
    v4 = [v3 isPlayingBack];

    if ((v4 & 1) == 0)
    {
      v6 = [(CKTranscriptCollectionViewController *)self collectionView];
      v5 = [v6 indexPathsForVisibleItems];
      [(CKTranscriptCollectionViewController *)self _startPlaybackWithIndexPaths:v5];
    }
  }
}

- (void)_startPlaybackWithIndexPaths:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v4;
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
          v11 = [v10 item];
          v12 = [(CKTranscriptCollectionViewController *)self chatItems];
          LODWORD(v11) = v11 < [v12 count];

          if (v11)
          {
            v13 = [(CKTranscriptCollectionViewController *)self chatItems];
            v14 = [v13 objectAtIndex:{objc_msgSend(v10, "item")}];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              v16 = [v15 IMChatItem];
              v17 = [v16 wantsAutoPlayback];

              if (v17)
              {
                [v23 addObject:v15];
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
                v19 = [(CKTranscriptCollectionViewController *)self chatItems];
                *buf = v22;
                v29 = v10;
                v30 = 2112;
                v31 = v19;
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

  [v23 sortUsingComparator:&__block_literal_global_664_0];
  [(CKTranscriptCollectionViewController *)self stopPluginPlayback];
  v20 = [[CKPluginPlaybackManager alloc] initWithPluginItems:v23];
  [(CKPluginPlaybackManager *)v20 setDelegate:self];
  v21 = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];
  [v21 setDelegate:0];

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

- (void)pluginPlaybackManagerDidStopPlayback:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];

  if (v5 == v4)
  {

    [(CKTranscriptCollectionViewController *)self setPluginPlaybackManager:0];
  }
}

- (void)collectionViewLayoutRestingDidChange:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self delegate];
  [v5 transcriptCollectionViewControllerRestingStateDidChange:self];

  LODWORD(v5) = [v4 isResting];
  if (v5)
  {

    [(CKTranscriptCollectionViewController *)self _collectionViewDidRestAsync:1];
  }
}

- (BOOL)collectionViewLayout:(id)a3 hasPlayingOrPausedTextEffectForChatItem:(id)a4 indexPath:(id)a5
{
  v6 = a4;
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isExpressiveTextEnabled];

  if (v8)
  {
    v9 = [v6 _textContainsIMTextEffect];
    v10 = [v6 _translationSecondaryTextContainsIMTextEffect];
    if ((v9 & 1) != 0 || v10) && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v6];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [v11 balloonView];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13 = [v12 textView];
          v14 = v13;
          if (v13)
          {
            LOBYTE(v8) = [v13 ck_hasPlayingOrPausedTextAnimator];
          }

          else
          {
            LOBYTE(v8) = 0;
          }
        }

        else
        {
          LOBYTE(v8) = 0;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (void)_collectionViewDidRestAsync:(BOOL)a3
{
  if (a3)
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
    v4 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v4 contentOffset];
    v6 = v5;
    v8 = v7;
    if ([v4 transcriptScrollIntent] == 6)
    {
      [(CKTranscriptCollectionViewController *)self _computedContentInsets];
      [v4 __ck_bottomOffsetWithComputedInsets:?];
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

- (id)compositorDatasourceItemsForSection:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    goto LABEL_5;
  }

  if (!a3)
  {
    v3 = [(CKTranscriptCollectionViewController *)self chatItems];
LABEL_5:
    v4 = v3;
    if (v3)
    {
      v5 = v3;
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

- (id)layoutGroupForDatasourceItems:(id)a3 environment:(id)a4 layoutItems:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count] >= 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v7;
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

          v15 = [*(*(&v23 + 1) + 8 * i) customLayoutGroupProviderClass];
          v16 = v15;
          if (v12)
          {
            if (v12 != v15)
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
            v12 = v15;
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
        v18 = [v17 layoutGroupForDatasourceItems:v10 environment:v8 layoutItems:v9];

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

- (void)collectionViewWillScroll:(id)a3 targetContentOffset:(CGPoint *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isDragging] && !-[CKTranscriptCollectionViewController isPeeking](self, "isPeeking"))
  {
    v20 = [v6 panGestureRecognizer];
    [v20 translationInView:v6];
    v22 = v21;
    v24 = v23;

    [(CKTranscriptCollectionViewController *)self peekSampleTranslation];
    v26 = v25;
    v28 = v27 - v22;
    v29 = [v6 layer];
    v30 = [v29 flipsHorizontalAxis];

    if (v30)
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
        v33 = [v6 panGestureRecognizer];
        [v33 setTranslation:v6 inView:{20.0 - v28, v24}];
      }

      [(CKTranscriptCollectionViewController *)self setPeekSampleTranslation:v22, v24];
    }

    a4->x = 0.0;
    goto LABEL_24;
  }

  if (a4->x == 0.0)
  {
LABEL_24:
    v34 = 0.0;
    goto LABEL_38;
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  [v6 marginInsets];
  [v7 transcriptDrawerMaxContentOffsetXForMarginInsets:?];
  v9 = v8;
  v10 = [v6 layer];
  v11 = [v10 flipsHorizontalAxis];

  x = a4->x;
  if (v11)
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

    a4->x = v14;
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
      v17 = a4->x;
    }

    a4->x = v17;
    [v7 transcriptDrawerGestureAcceleration];
    v19 = -a4->x;
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

    a4->x = v35;
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
      v38 = a4->x;
    }

    a4->x = v38;
    [v7 transcriptDrawerGestureAcceleration];
    v19 = a4->x;
  }

  v34 = fmin(v18 * (v19 / v9), 1.0);

LABEL_38:
  v39 = +[CKUIBehavior sharedBehaviors];
  if ([v39 disableTranscriptTimestamps])
  {

    goto LABEL_40;
  }

  if (a4->x == 0.0)
  {
    [v6 contentOffset];
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
  v42 = [v6 visibleCells];
  v43 = [v42 countByEnumeratingWithState:&v48 objects:v52 count:16];
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
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v48 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [(CKTranscriptCollectionViewController *)self freezeReplyDecorationsIfNeededForCell:v47];
          [v47 setDrawerPercentRevealed:v34];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v44);
  }

LABEL_55:
}

- (void)freezeReplyDecorationsIfNeededForCell:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
    [v4 setShouldFreezeReplyDecorationsForTimestampReveal:{-[CKTranscriptCollectionViewController shouldFreezeReplyDecorationsForCell:](self, "shouldFreezeReplyDecorationsForCell:", v4)}];
  }
}

- (BOOL)shouldFreezeReplyDecorationsForCell:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self chat];
  v6 = [v5 isGroupChat];

  if (v6)
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
      v8 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v4];
      v9 = [v8 IMChatItem];
      v10 = [v9 isFromMe];

      if (v10)
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

- (void)collectionViewWillProgrammaticallyScroll:(id)a3 animated:(BOOL)a4
{
  if (a4)
  {
    [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:1];
  }
}

- (void)transcriptCollectionView:(id)a3 shouldScrollToHighlightedMessage:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transcriptCollectionViewController:self shouldScrollToHighlightedMessage:v5];
}

- (BOOL)isShowingTranscriptTimestamps
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CKTranscriptCollectionViewController *)self collectionView];
  v3 = [v2 visibleCells];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
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

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    v3 = [(CKTranscriptCollectionViewController *)self collectionView];
    v4 = [v3 visibleCells];
    v5 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__CKTranscriptCollectionViewController_hideTranscriptTimestampsIfNeeded__block_invoke;
    v7[3] = &unk_1E72EBA18;
    v8 = v4;
    v6 = v4;
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

+ (id)newTranscriptTextEffectCoordinatorForTranscriptCollectionViewController:(id)a3 isInline:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isExpressiveTextEnabled];

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = +[CKPrintController sharedInstance];
  v9 = [v8 isPrinting];

  if (v9)
  {
    goto LABEL_3;
  }

  if (v4)
  {
    if (!+[_TtC7ChatKit23CKTextEffectCoordinator inlineRepliesTextEffectCoordinationDisabled])
    {
      v12 = @"transcript_inline";
LABEL_10:
      v10 = [[_TtC7ChatKit23CKTextEffectCoordinator alloc] initWithLogIdentifier:v12];
      [(CKTextEffectCoordinator *)v10 setDelegate:v5];
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

- (void)_textMessagePartItem:(id)a3 textBalloonView:(id)a4 getHasValidOrigin:(BOOL *)a5 getHasValidSize:(BOOL *)a6
{
  v42 = a4;
  v9 = a3;
  [v9 size];
  v11 = v10;
  v13 = v12;
  [v9 translationSecondaryTextSize];
  v15 = v14;
  v16 = [v9 showTranslationAlternateText];

  v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v18 = [v17 isCAShapeLayerBalloonsEnabled];

  if (v18)
  {
    [v42 tailInsetsForPillSize:{v11, v13}];
    v13 = v20 + v13 + v19;
  }

  [v42 _computedTextViewFrameForBoundsSize:{v11, v13}];
  v22 = v21;
  v24 = v23;
  v41 = v25;
  v27 = v26;
  v28 = [v42 textView];
  [v28 frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if (v16)
  {
    v37 = v15 + v24;
  }

  else
  {
    v37 = v24;
  }

  if (v16)
  {
    v38 = v27 - v15;
  }

  else
  {
    v38 = v27;
  }

  v39 = CKPointApproximatelyEqualToPointWithTolerance(v30, v32, v22, v37, 0.51);
  if (a5)
  {
    *a5 = v39;
  }

  v40 = CKSizeApproximatelyEqualToSizeWithTolerance(v34, v36, v41, v38, 0.51);
  if (a6)
  {
    *a6 = v40;
  }
}

- (id)textEffectCoordinator:(id)a3 explodeConfigurationForTextViewIdentifier:(id)a4
{
  v32 = 0;
  v4 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItemGUID:a4 getChatItem:&v32];
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
    v11 = [v10 theme];
    v12 = [v11 transcriptBackgroundColor];
    v13 = [v12 resolvedColorForTraitCollection:v9];

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

- (id)visibleTextViewIdentifiersFor:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained && (v5 = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0) && ((v7 = objc_loadWeakRetained(&self->_delegate), [v7 effectiveVisibleRectOfCollectionViewForTranscriptCollectionViewController:self], v9 = v8, v11 = v10, v13 = v12, v15 = v14, v7, v16 = *(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695F060] == v13) ? (v17 = v16 == v15) : (v17 = 0), !v17))
  {
    v18 = [(CKTranscriptCollectionViewController *)self collectionView:*MEMORY[0x1E695F060]];
    v19 = [v18 collectionViewLayout];
    v20 = [v19 layoutAttributesForElementsInRect:{v9, v11, v13, v15}];
    v21 = v20;
    if (v20 && [v20 count])
    {
      v39 = v19;
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
            v28 = [v27 indexPath];
            if (v28)
            {
              if (![v27 representedElementCategory] && objc_msgSend(v28, "length") == 2 && objc_msgSend(v28, "item") != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(v28, "section"))
              {
                v29 = [v28 item];
                v30 = [(CKTranscriptCollectionViewController *)self chatItems];
                v31 = [v30 count];

                if (v29 < v31)
                {
                  v32 = [(CKTranscriptCollectionViewController *)self chatItemAtIndexPath:v28];
                  v33 = [v32 IMChatItem];
                  v34 = [v33 guid];

                  if (v34)
                  {
                    v35 = [v32 _textContainsIMTextEffect];
                    v36 = [v32 _translationSecondaryTextContainsIMTextEffect];
                    if ((v35 & 1) != 0 || v36)
                    {
                      if (v36)
                      {
                        v41 = [v34 stringByAppendingString:@"-translation"];
                        [v42 addObject:v41];
                      }

                      if (v35)
                      {
                        [v42 addObject:v34];
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
      v19 = v39;
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

- (BOOL)textEffectCoordinator:(id)a3 textViewIdentifierIsCandidateForTextEffectPlayback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ([v7 hasSuffix:@"-translation"])
  {
    v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - objc_msgSend(@"-translation", "length")}];
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
      v12 = [v11 IMChatItem];
      [v11 ageForTextEffectCoordination];
      if (v13 <= 1.0)
      {
        v15 = dispatch_time(0, ((1.0 - v13 + 0.1) * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __113__CKTranscriptCollectionViewController_textEffectCoordinator_textViewIdentifierIsCandidateForTextEffectPlayback___block_invoke;
        block[3] = &unk_1E72EB8D0;
        v20 = v12;
        v21 = v6;
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

- (BOOL)_textMessagePartItemHasValidLayout:(id)a3 textBalloonView:(id)a4
{
  v5 = 0;
  [(CKTranscriptCollectionViewController *)self _textMessagePartItem:a3 textBalloonView:a4 getHasValidOrigin:&v5 + 1 getHasValidSize:&v5];
  return HIBYTE(v5) & v5 & 1;
}

- (BOOL)textEffectIsCandidateBalloonViewChecksForChatItem:(id)a3 balloonView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = 0;
  if (!v7 || (isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_10;
  }

  v10 = v7;
  if ([(CKTranscriptCollectionViewController *)self _textMessagePartItemHasValidLayout:v6 textBalloonView:v10])
  {
    v9 = [v10 isCandidateForTextEffectPlayback];
  }

  else
  {
    v9 = 0;
  }

LABEL_10:
  return v9;
}

- (BOOL)textEffectIsCandidateBalloonViewChecksForChatItem:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:v4];
  LOBYTE(self) = [(CKTranscriptCollectionViewController *)self textEffectIsCandidateBalloonViewChecksForChatItem:v4 balloonView:v5];

  return self;
}

- (id)textEffectCoordinator:(id)a3 textViewForTextViewIdentifier:(id)a4
{
  v5 = a4;
  v6 = [v5 hasSuffix:@"-translation"];
  v7 = v5;
  if (v6)
  {
    v7 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(@"-translation", "length")}];
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

- (id)textEffectCoordinator:(id)a3 highPriorityTextViewIdentifiersForUnplayedVisibleTextViewIdentifiers:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E696AC90] indexSet];
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
        v13 = [(CKTranscriptCollectionViewController *)self chatItems];
        v14 = [v13 __ck_indexesOfPartsOfMessageWithGUID:v12];

        v15 = [v14 firstIndex];
        v16 = [(CKTranscriptCollectionViewController *)self chatItems];
        v17 = [v16 count];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL && v17 != 0x8000000000000000)
        {
          v18 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v15, v17 - 1 - v15}];

          v6 = v18;
        }
      }
    }
  }

  v19 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = v5;
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

  if ([v6 count])
  {
    v27 = [(CKTranscriptCollectionViewController *)self chatItems];
    v28 = [v27 objectsAtIndexes:v6];

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

          v34 = [*(*(&v37 + 1) + 8 * j) IMChatItem];
          v35 = [v34 guid];

          if (v35 && [v20 containsObject:v35])
          {
            [v19 addObject:v35];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v31);
    }
  }

  return v19;
}

- (BOOL)canStartNewTextAnimationsInTextEffectCoordinator:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self viewIfLoaded];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 window];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 windowScene];
      if (v8)
      {
        v9 = [(CKTranscriptCollectionViewController *)self traitCollection];
        v10 = v9;
        v11 = v9 && [v9 activeAppearance] && !+[CKApplicationState isResizing](CKApplicationState, "isResizing") && objc_msgSend(v8, "activationState") == 0;
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

- (void)textEffectCoordinator:(id)a3 willRequestAnimatorUsing:(id)a4
{
  v5 = a4;
  if ([MEMORY[0x1E69DD168] ck_supportsDynamicallyTogglingAllowsTextAnimations])
  {
    v4 = [v5 textView];
    [v4 setAllowsTextAnimations:1];
  }
}

- (void)textEffectCoordinator:(id)a3 didChangeStateOfAnimator:(id)a4 textView:(id)a5
{
  v12 = a4;
  v7 = a5;
  if ([MEMORY[0x1E69DD168] ck_supportsDynamicallyTogglingAllowsTextAnimations])
  {
    v8 = [v12 state];
    v9 = [(CKTranscriptCollectionViewController *)self collectionView];
    v10 = [v9 collectionViewLayout];

    [v10 reloadData];
    [v10 invalidateLayout];
    if (v8 <= 1)
    {
      v11 = [v12 animation];
      [v7 setAllowsTextAnimations:{objc_msgSend(v7, "ck_isLastTextAnimation:", v11) ^ 1}];
    }
  }
}

+ (id)initialTextEffectsState
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isExpressiveTextEnabled];

  if (v3)
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

- (void)updateTextEffectsState:(id)a3
{
  textEffectsState = self->_textEffectsState;
  if (textEffectsState)
  {
    v5 = a3;
    v6 = [(CKTranscriptTextEffectsState *)textEffectsState isPaused];
    v5[2](v5, self->_textEffectsState);

    v7 = [(CKTranscriptTextEffectsState *)self->_textEffectsState isPaused];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator setPaused:v7 includingAnimators:1];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"changed text effect state – isPausedBeforeUpdate: %i – isPaused: %i", v6, v7];
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:v8];
  }
}

- (BOOL)isTextEffectCoordinatorPaused
{
  if (!self->_transcriptTextEffectCoordinator)
  {
    return 1;
  }

  v2 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
  v3 = [v2 isPaused];

  return v3;
}

- (void)setTextEffectCoordinatorPaused:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
  v8 = [v7 isPaused];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"paused %d ↦ %d: %@", v8, v4, v6];

  v9 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
  [v9 setPaused:v4 includingAnimators:1];

  v10 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
  [v10 updateWithReason:v11];
}

- (void)prepareTextEffectsForModalPresentation
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isExpressiveTextEnabled];

  if (v4)
  {
    v5 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
    [v5 setPaused:1 includingAnimators:0];
    [v5 reset];
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

- (void)transcriptBalloonCell:(id)a3 didChangeRenderBoundsOfTextBalloonView:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  transcriptTextEffectCoordinator = self->_transcriptTextEffectCoordinator;
  if (transcriptTextEffectCoordinator && ![(CKTextEffectCoordinator *)transcriptTextEffectCoordinator isPaused])
  {
    v9 = [v7 textView];
    v10 = [v9 attributedText];

    if ([v10 ck_hasTextAnimation])
    {
      v11 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v6];
      if (v11)
      {
        v23 = v10;
        [v7 bounds];
        v13 = v12;
        v15 = v14;
        [v6 setNeedsLayout];
        v16 = [v11 visibleAssociatedMessageChatItems];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
                objc_enumerationMutation(v16);
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

            v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v18);
        }

        v10 = v23;
      }
    }
  }
}

- (void)transcriptBalloonCell:(id)a3 textBalloonView:(id)a4 didChangeTextEffectPlaybackCandidateStatus:(BOOL)a5
{
  v6 = @"NO";
  if (a5)
  {
    v6 = @"YES";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TextEffectPlaybackCandidateStatus did change to %@", a4, v6];
  if (!+[CKApplicationState isResizing])
  {
    [(CKTextEffectCoordinator *)self->_transcriptTextEffectCoordinator updateWithReason:v7];
  }
}

- (unint64_t)transcriptBalloonCell:(id)a3 allowedLayoutActionForTextBalloonView:(id)a4
{
  v6 = a4;
  if (self->_transcriptTextEffectCoordinator)
  {
    v7 = [(CKTranscriptCollectionViewController *)self chatItemForCell:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = 0;
      [(CKTranscriptCollectionViewController *)self _textMessagePartItem:v7 textBalloonView:v6 getHasValidOrigin:0 getHasValidSize:&v10];
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

- (id)transcriptBalloonCell:(id)a3 customTextRenderingDisplayLinkForTextBalloonViewTextView:(id)a4
{
  v4 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator:a3];
  v5 = [v4 customRenderDisplayLink];

  return v5;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section] || !-[CKTranscriptCollectionViewController isEditing](self, "isEditing"))
  {
    v8 = 0;
  }

  else
  {
    v6 = [(CKTranscriptCollectionViewController *)self chatItems];
    v7 = [v6 objectAtIndex:{objc_msgSend(v5, "item")}];
    v8 = [v7 canBeSelectedInEditMode];
  }

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v14 = a4;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [v14 item];
  if (v6 >= 1)
  {
    v7 = v6;
    if (v6 < [v5 count])
    {
      v8 = [v5 objectAtIndex:v7];
      v9 = [v8 IMChatItem];
      v10 = [v9 guid];

      v11 = [(CKTranscriptCollectionViewController *)self selectionManager];
      v12 = [CKBalloonSelectionState balloonSelectionState:0];
      [v11 addSelectedMessageGuid:v10 selectionState:v12];
    }
  }

  v13 = [(CKTranscriptCollectionViewController *)self delegate];
  [v13 transcriptCollectionViewController:self didSelectItemAtIndexPath:v14];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v13 = a4;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [v13 item];
  if (v6 >= 1)
  {
    v7 = v6;
    if (v6 < [v5 count])
    {
      v8 = [v5 objectAtIndex:v7];
      v9 = [v8 IMChatItem];
      v10 = [v9 guid];

      v11 = [(CKTranscriptCollectionViewController *)self selectionManager];
      [v11 removeSelectedMessageGuid:v10];
    }
  }

  v12 = [(CKTranscriptCollectionViewController *)self delegate];
  [v12 transcriptCollectionViewController:self didDeselectItemAtIndexPath:v13];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v32 = a3;
  v8 = a4;
  v9 = a5;
  if (![v9 section] && !+[CKApplicationState isResizing](CKApplicationState, "isResizing"))
  {
    v10 = [v9 item];
    v11 = [(CKTranscriptCollectionViewController *)self chatItems];
    if (v10 < [v11 count])
    {
      v12 = [v11 objectAtIndex:v10];
      v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v14 = [v13 isExpressiveTextEnabled];

      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setTextEffectsDelegate:0];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v12;
        [v8 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [v32 bounds];
        v35.origin.x = v17;
        v35.origin.y = v19;
        v35.size.width = v21;
        v35.size.height = v23;
        if (!CGRectIntersectsRect(v34, v35))
        {
          v24 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v25 = [v15 extensibleViewControllerForContext:v24];

          if (v25)
          {
            [v25 removeFromParentViewController];
          }

          v26 = [v15 IMChatItem];
          v27 = [v26 isDataSourceInitialized];

          if (v27)
          {
            v28 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
            v29 = [v15 balloonControllerForContext:v28];

            if (objc_opt_respondsToSelector())
            {
              [v29 pluginContentViewDidDissapear];
            }
          }
        }

        v30 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
        [v15 relinquishBalloonControllerForContext:v30];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v31 = [v8 balloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v31 prepareForReuse];
    }
  }
}

- (void)_prepareTextEffectCoordinatorForCell:(id)a3 forItem:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_transcriptTextEffectCoordinator)
  {
    if (!+[CKApplicationState isResizing])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setTextEffectsDelegate:self];
        v11 = [v9 _textContainsIMTextEffect];
        v12 = [v9 _translationSecondaryTextContainsIMTextEffect];
        if ((v11 & 1) != 0 || v12)
        {
          objc_initWeak(&location, self);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __97__CKTranscriptCollectionViewController__prepareTextEffectCoordinatorForCell_forItem_atIndexPath___block_invoke;
          v13[3] = &unk_1E72ED950;
          objc_copyWeak(&v16, &location);
          v14 = v10;
          v15 = v9;
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v70[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v8 item];
  if ([v8 section])
  {
    if ([v8 section] == 1)
    {
      v10 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
      v11 = [v10 count];

      if (v9 < v11)
      {
        v12 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
        v13 = [v12 objectAtIndexedSubscript:v9];

        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v14 = [(CKTranscriptCollectionViewController *)self chatItems];
  v15 = [v14 count];

  if (v9 >= v15)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v16 = [(CKTranscriptCollectionViewController *)self chatItems];
  v13 = [v16 objectAtIndexedSubscript:v9];

  v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v18 = [v17 isExpressiveTextEnabled];

  if (v18)
  {
    [(CKTranscriptCollectionViewController *)self _prepareTextEffectCoordinatorForCell:v7 forItem:v13 atIndexPath:v8];
  }

LABEL_9:
  if (![v8 section])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
      v20 = [v13 balloonControllerForContext:v19];

      if (objc_opt_respondsToSelector())
      {
        [v20 pluginContentViewWillAppear];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v7;
      v22 = [(CKTranscriptCollectionViewController *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = [(CKTranscriptCollectionViewController *)self delegate];
        [v24 transcriptCollectionViewController:self willDisplayStatusCell:v21];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setDelegate:self];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setDelegate:self];
    }
  }

  v69 = v9;
  if ([(NSIndexPath *)self->_itemIndexPathToHighlight isEqual:v8]&& !self->_holdMessageEmphasisTillManuallyRemoved)
  {
    [(CKTranscriptCollectionViewController *)self _highlightCell:v7 animated:0 autoDismiss:1];
    itemIndexPathToHighlight = self->_itemIndexPathToHighlight;
    self->_itemIndexPathToHighlight = 0;
  }

  else if ([(NSIndexPath *)self->_itemIndexPathToHighlight isEqual:v8]&& self->_holdMessageEmphasisTillManuallyRemoved)
  {
    [(CKTranscriptCollectionViewController *)self _highlightCell:v7 animated:0 autoDismiss:0];
  }

  [(CKTranscriptCollectionViewController *)self updateEmphasis];
  if (objc_opt_respondsToSelector())
  {
    v26 = +[CKUIBehavior sharedBehaviors];
    v27 = [v26 enableBalloonTextSelection];

    if (v27)
    {
      v28 = [v13 IMChatItem];
      v29 = [v28 guid];

      v30 = [(CKTranscriptCollectionViewController *)self selectionManager];
      v31 = v30;
      if (v29 && [v30 isMessageGuidSelected:v29])
      {
        v32 = [v7 balloonView];
        v33 = [v31 selectedStateForGuid:v29];
        [v32 setSelected:1 withSelectionState:v33];
      }
    }
  }

  v34 = [v13 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = [v34 message];
    v36 = [(CKTranscriptCollectionViewController *)self chat];
    v37 = [v36 lastIncomingFinishedMessage];
    v38 = [v37 compare:v35 comparisonType:2];

    if (v38)
    {
      goto LABEL_42;
    }

    v39 = [(CKTranscriptCollectionViewController *)self delegate];
    [v39 transcriptCollectionViewControllerWillDisplayLastBalloon:self];

    v40 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
    if ([v40 isAnimating])
    {
      v41 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
      v42 = [v41 animatingIdentifier];
      v43 = [CKImpactEffectManager identifierShouldPlayInWindow:v42];

      if (v43)
      {
        v44 = 1;
LABEL_41:
        [v7 setHidden:v44];
LABEL_42:
        v45 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        if ([v45 isCatchUpEnabled])
        {
          v46 = [(CKTranscriptCollectionViewController *)self delegate];
          v47 = objc_opt_respondsToSelector();

          if ((v47 & 1) == 0)
          {
LABEL_46:

            goto LABEL_47;
          }

          v45 = [(CKTranscriptCollectionViewController *)self delegate];
          v48 = [v35 guid];
          [v7 frame];
          [v45 transcriptCollectionViewController:self willDisplayBalloonForGUID:v48 withIndexPath:v8 withOriginY:v49];
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
  v50 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  v51 = [v50 currentEffect];

  if (v51)
  {
    if ([v8 section] == 1 || !objc_msgSend(v8, "section") || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v52 = [(CKTranscriptCollectionViewController *)self chatItems];
      v53 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
      v54 = [v53 currentEffect];
      v55 = [v54 triggeringChatItem];
      v56 = [v52 indexOfObject:v55];

      v57 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
      v58 = [v57 currentEffect];
      v59 = v58;
      if (v69 == v56)
      {
        [v58 applyMessageFiltersToTriggeringCell:v7];
      }

      else
      {
        v70[0] = v7;
        v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
        [v59 applyMessageFiltersToCells:v60];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = v7;
    [v61 setDelegate:self];
    v62 = [v61 balloonView];
    if (v62)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = *MEMORY[0x1E69A7510];
        v64 = v62;
        -[CKTranscriptCollectionViewController _trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:](self, "_trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:", v63, v64, [v13 transcriptOrientation]);
      }
    }
  }

  if (![v8 section])
  {
    v65 = [(CKTranscriptCollectionViewController *)self hiddenChatItemGUIDs];
    v66 = [v13 IMChatItem];
    v68 = [v66 guid];
    v67 = [v65 containsObject:v68];

    goto LABEL_71;
  }

  if ([v8 section] == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [v13 associatedMessageGUID];
      v66 = [(CKTranscriptCollectionViewController *)self chatItemGUIDsOfHiddenTapbackPiles];
      v67 = [v66 containsObject:v65];
LABEL_71:

      goto LABEL_72;
    }
  }

  v67 = 0;
LABEL_72:
  [(CKTranscriptCollectionViewController *)self configureTranscriptCell:v7 hidden:v67];
}

- (void)collectionViewWillInset:(id)a3 targetContentInset:(UIEdgeInsets *)a4
{
  v6 = [(CKTranscriptCollectionViewController *)self delegate];
  [v6 transcriptCollectionViewControllerWillInset:self targetContentInset:a4];
}

- (void)collectionViewDidInset:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self delegate];
  [v4 transcriptCollectionViewControllerDidInset:self];

  [(CKTranscriptCollectionViewController *)self updateDockingMetricsIfNeeded];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v8 = +[CKPrintController sharedInstance];
    v9 = [v8 isPrinting];

    if ((v9 & 1) == 0)
    {
      v7 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
      goto LABEL_7;
    }
  }

  else if (!a4)
  {
    v7 = [(CKTranscriptCollectionViewController *)self chatItems];
LABEL_7:
    v11 = v7;
    v10 = [v7 count];

    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section])
  {
    v8 = [v7 item];
    v9 = [(CKTranscriptCollectionViewController *)self chatItems];
    v10 = [v9 count];

    if (v8 >= v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "section")}];
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "item")}];
      v14 = [v11 stringWithFormat:@"[cellForItemAtIndexPath] Attempting to access chat item at invalid index (section: %@, item: %@)", v12, v13];

      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
      [v15 raise];
    }
  }

  if ([v7 section] == 1)
  {
    v16 = [v7 item];
    v17 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v18 = [v17 count];

    if (v16 >= v18)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "section")}];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "item")}];
      v22 = [v19 stringWithFormat:@"[cellForItemAtIndexPath] Attempting to access associated chat item at invalid index (section: %@, item: %@)", v20, v21];

      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
      [v23 raise];
    }
  }

  if (![v7 section])
  {
    v24 = [(CKTranscriptCollectionViewController *)self chatItems];
    v25 = [v24 objectAtIndex:{objc_msgSend(v7, "item")}];
LABEL_11:
    v26 = v25;

    if (v26)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ([v7 section] == 1)
  {
    v24 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v25 = [v24 objectAtIndex:{objc_msgSend(v7, "item")}];
    goto LABEL_11;
  }

LABEL_12:
  v27 = MEMORY[0x1E696AEC0];
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "section")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "item")}];
  v30 = [v27 stringWithFormat:@"[cellForItemAtIndexPath] Unable to retrieve chatItem for index (section: %@, item: %@), ", v28, v29];

  v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
  [v31 raise];

  v26 = 0;
LABEL_13:
  v32 = [(CKTranscriptCollectionViewController *)self collectionView:v6 cellForCKChatItem:v26 atIndexPath:v7];

  return v32;
}

- (id)collectionView:(id)a3 cellForCKChatItem:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 cellIdentifier];
  [v10 registerClass:objc_msgSend(v8 forCellWithReuseIdentifier:{"cellClass"), v11}];
  v12 = [v10 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKTranscriptCollectionViewController *)self configureAssociatedCell:v12 forChatItem:v8 atIndexPath:v9];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self configureCell:v12 forCKChatItem:v8 atIndexPath:v9 animated:0 animationDuration:3 animationCurve:0.0];
  }

  return v12;
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v41 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = +[CKFullscreenEffectDecorationView decorationViewKind];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v15 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
    v16 = [v15 currentEffect];

    v17 = [v16 effectViewClass];
    v18 = [v41 collectionViewLayout];
    v19 = [v18 effectIndexForDecorationViewAtIndex:{objc_msgSend(v11, "section")}];

    v20 = v10;
    v21 = [(CKTranscriptCollectionViewController *)self currentEffectDecorationViews];
    [v21 addObject:v20];

    [v20 setUserInteractionEnabled:0];
    v22 = [v17 alloc];
    [v20 bounds];
    v23 = [v22 initWithFrame:?];
    [v23 setUserInteractionEnabled:0];
    [v23 setZIndex:v19];
    [v20 setupForEffectView:v23];
    [(CKTranscriptCollectionViewController *)self _updateEffectViewMessageRect:v23 effect:v16];
    if ([v16 isForegroundEffect])
    {
      v24 = [v16 triggeringChatItem];
      v25 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v24];

      [v41 addSubview:v25];
      [v41 insertSubview:v20 belowSubview:v25];
    }

    v26 = [v16 triggeringChatItem];
    v27 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v26];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 balloonView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v30 = [v27 balloonView];
        [v30 bounds];
        v32 = v31;
        v34 = v33;
        v35 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v35 scale];
        v37 = v36;
        v43.width = v32;
        v43.height = v34;
        UIGraphicsBeginImageContextWithOptions(v43, 1, v37);

        v38 = [v27 balloonView];
        v39 = [v27 balloonView];
        [v39 bounds];
        [v38 drawViewHierarchyInRect:0 afterScreenUpdates:?];

        v40 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        [v23 setMessageImage:v40];
      }
    }

    [v23 startAnimation];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6
{
  v13 = a4;
  v8 = a5;
  v9 = +[CKFullscreenEffectDecorationView decorationViewKind];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = v13;
    v12 = [(CKTranscriptCollectionViewController *)self currentEffectDecorationViews];
    [v12 removeObject:v11];

    [v11 tearDownEffectView];
  }
}

- (void)endHoldingUpdatesAfterQuicklookCancelsDismiss
{
  v2 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [v2 endHoldingUpdatesForKey:@"CKFullscreenUpdatesDisappeared"];
}

- (void)_addChatItemsToGenerativeContextHistory:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  obj = a3;
  v30 = self;
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
            v10 = [v9 text];
            v11 = [v10 string];

            if ([v11 length])
            {
              v12 = [v9 messageItem];
              v13 = [v12 time];
              v14 = [v12 sender];
              v15 = MEMORY[0x193AF5D70]();

              if (![v15 length] && objc_msgSend(v12, "isFromMe"))
              {
                v16 = [v12 destinationCallerID];
                v17 = MEMORY[0x193AF5D70]();

                v15 = v17;
              }

              v18 = [MEMORY[0x1E695DF90] dictionary];
              v19 = v18;
              if (v13)
              {
                [v18 setObject:v13 forKey:@"CKGenerativeContextTimestamp"];
              }

              if (v11)
              {
                [v19 setObject:v11 forKey:@"CKGenerativeContextText"];
              }

              if (v15)
              {
                [v19 setObject:v15 forKey:@"CKGenerativeContextHandle"];
              }

              v20 = [v9 sender];
              v21 = [v20 cnContact];
              v22 = [v21 displayName];

              if (v22)
              {
                v23 = [v9 sender];
                v24 = [v23 cnContact];
                v25 = [v24 displayName];
                [v19 setObject:v25 forKey:v28];
              }

              v26 = [(CKTranscriptCollectionViewController *)v30 generativeContextHistory];
              v27 = [v19 copy];
              [v26 addObject:v27];

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

- (void)_addChatItemsToInputContextHistory:(id)a3 signalingResponseContextChangeIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKTranscriptCollectionViewController *)self inputContextHistory];
  v8 = [(CKTranscriptCollectionViewController *)self conversation];
  v9 = [v7 addChatItems:v6 withConversation:v8];

  if (v9 && v4)
  {
    v10 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [v10 responseContextDidChange];
  }

  if (v9)
  {
    v11 = dispatch_time(0, 100000000);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __114__CKTranscriptCollectionViewController__addChatItemsToInputContextHistory_signalingResponseContextChangeIfNeeded___block_invoke;
    v12[3] = &unk_1E72EB8D0;
    v12[4] = self;
    v13 = v6;
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
  v3 = [MEMORY[0x1E695DF70] array];
  generativeContextHistory = self->_generativeContextHistory;
  self->_generativeContextHistory = v3;

  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  [(CKTranscriptCollectionViewController *)self _addChatItemsToGenerativeContextHistory:v5];
}

- (void)_updateEffectViewMessageRect:(id)a3 effect:(id)a4
{
  v38 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 triggeringChatItem];
    v9 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:v8];

    if (v9)
    {
      [v7 setMessageOrientation:{objc_msgSend(v9, "orientation")}];
      [v9 center];
      v11 = v10;
      v13 = v12;
      v14 = [v9 superview];
      v15 = [v38 superview];
      [v14 convertPoint:v15 toView:{v11, v13}];
      v17 = v16;
      v19 = v18;

      v20 = [v9 superview];
      [v9 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = [v38 superview];
      [v20 convertRect:v29 toView:{v22, v24, v26, v28}];
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

      [v38 setFocusPoint:{v17, v19}];
      [v38 setMessageRect:{v31, v33, v35, v37}];
      [v38 setMessageOrientation:{objc_msgSend(v9, "orientation")}];
    }
  }
}

- (id)collectionView:(id)a3 layout:(id)a4 chatItemForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [v6 item];

  v9 = [v7 objectAtIndex:v8];

  return v9;
}

- (id)collectionView:(id)a3 layout:(id)a4 chatItemForSupplementaryViewAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
  v8 = [v6 item];

  v9 = [v7 objectAtIndex:v8];

  return v9;
}

- (id)chatItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (![v4 section])
  {
    v5 = [(CKTranscriptCollectionViewController *)self chatItems];
    goto LABEL_5;
  }

  if ([v4 section] == 1)
  {
    v5 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
LABEL_5:
    v6 = v5;
    v7 = [v5 objectAtIndex:{objc_msgSend(v4, "item")}];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)collectionViewLayout:(id)a3 sizeDidChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [(CKTranscriptCollectionViewController *)self updateDockingMetricsIfNeeded];
  v7 = [(CKTranscriptCollectionViewController *)self delegate];
  [v7 transcriptCollectionViewController:self collectionViewContentSizeDidChange:{width, height}];
}

- (id)currentEffectForCollectionView:(id)a3 layout:(id)a4
{
  v5 = [(CKTranscriptCollectionViewController *)self delegate:a3];
  v6 = [v5 transcriptCollectionViewControllerShouldLayoutFullscreenEffects:self];

  if (v6)
  {
    v7 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
    v8 = [v7 currentEffect];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didTapBlockContactInBalloonView:(id)a3
{
  v4 = MEMORY[0x1E69A8008];
  v5 = a3;
  v6 = [v4 sharedInstance];
  [v6 logPrivatizedUIInteractionEvent:6];

  v7 = [(CKTranscriptCollectionViewController *)self messagePartForBalloonView:v5];

  v8 = [v7 message];
  v12 = [v8 sender];

  if (!v12)
  {
    v9 = [(CKTranscriptCollectionViewController *)self conversation];
    v10 = [v9 recipients];
    v11 = [v10 firstObject];

    v12 = [v11 defaultIMHandle];
  }

  [(CKTranscriptCollectionViewController *)self _blockHandle:v12];
}

- (void)didTapWaysToGetHelp
{
  v3 = [MEMORY[0x1E69A8008] sharedInstance];
  [v3 logPrivatizedUIInteractionEvent:4];

  [(CKTranscriptCollectionViewController *)self _showMoreHelp];
}

- (BOOL)isReportingEnabled
{
  v3 = [(CKTranscriptCollectionViewController *)self conversation];
  v4 = [v3 chat];
  if ([v4 hasCommSafetySensitiveMessageFromSomeoneElse])
  {
    v5 = [(CKTranscriptCollectionViewController *)self conversation];
    v6 = [v5 chat];
    v7 = [MEMORY[0x1E69A5C90] iMessageService];
    if ([v6 hasMessageFromService:v7])
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

- (void)balloonViewTapped:(id)a3 withModifierFlags:(int64_t)a4 selectedText:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v8];
  if ([v10 section] == 1)
  {
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 canTapAssociatedAcknowledgment];

    if (v12)
    {
      v13 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
      v14 = [v10 item];
      if (v14 >= [v13 count])
      {
        if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "item")}];
            v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
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
        v15 = [v13 objectAtIndex:{objc_msgSend(v10, "item")}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [(CKTranscriptCollectionViewController *)self indexPathOfParentChatItemForIndexPath:v10];
          v17 = [(CKTranscriptCollectionViewController *)self collectionView];
          v18 = [v17 cellForItemAtIndexPath:v16];

          v19 = [v18 balloonView];

          v20 = [(CKTranscriptCollectionViewController *)self delegate];
          [v20 transcriptCollectionViewController:self balloonView:v19 longPressedForItemWithIndexPath:v16];

          v8 = v19;
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

  if ([v8 conformsToProtocol:&unk_1F05F5318])
  {
    [(CKTranscriptCollectionViewController *)self _handleAudioBalloonTapForIndexPath:v10];
    v21 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v8;
    if ([v38 isObscured])
    {
      if ([(CKTranscriptCollectionViewController *)self canInteractWithObscuredItem])
      {
        v39 = [MEMORY[0x1E69A7FC8] sharedManager];
        v40 = [v39 enablementGroup];

        if (v40 == 2)
        {
          v41 = [(CKTranscriptCollectionViewController *)self delegate];
          [v41 transcriptCollectionViewController:self viewedCommSafetyItemWithIndexPath:v10];

          v42 = [(CKTranscriptCollectionViewController *)self chatItems];
          v43 = [v42 objectAtIndex:{objc_msgSend(v10, "item")}];

          [v38 revealSensitiveContent:{objc_msgSend(v43, "itemIsReplyContextPreview")}];
          v44 = [v43 commSafetyTransferGUID];
          [CKCommSafetyAnalytics recordObscuredViewRemovedWithIdentifier:v44];

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
        v45 = [v38 mediaObject];
        [(CKTranscriptCollectionViewController *)self balloonView:v38 mediaObjectDidFinishPlaying:v45];
      }
    }

    v21 = 1;
    goto LABEL_46;
  }

LABEL_10:
  v21 = 1;
LABEL_11:
  v22 = [(CKTranscriptCollectionViewController *)self chatItems];
  v23 = [v10 item];
  if (v23 >= [v22 count])
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "item")}];
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
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
    v24 = [v22 objectAtIndex:{objc_msgSend(v10, "item")}];
    v25 = [(CKTranscriptCollectionViewController *)self delegate];
    v26 = [v25 transcriptCollectionViewController:self balloonView:v8 shouldSelectChatItem:v24];

    if (a4 || v26)
    {
      [(CKTranscriptCollectionViewController *)self balloonViewSelected:v8 withModifierFlags:a4 selectedText:v9];
    }

    else
    {
      v27 = +[CKUIBehavior sharedBehaviors];
      v28 = [v27 enableBalloonTextSelection];

      if (v28)
      {
        v29 = [(CKTranscriptCollectionViewController *)self selectionManager];
        [v29 removeAllSelectedMessageGuids];
      }

      if (v21)
      {
        v30 = [(CKTranscriptCollectionViewController *)self delegate];
        [v30 transcriptCollectionViewController:self balloonView:v8 tappedForChatItem:v24];
      }
    }
  }

LABEL_36:
}

- (void)saveHyperlinkBalloonViewData:(id)a3 withHyperlink:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
        v13 = [v7 absoluteString];
        LOBYTE(v12) = [v13 containsString:v12];

        if (v12)
        {
          v14 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v6];
          v15 = [(CKTranscriptCollectionViewController *)self chatItems];
          v16 = [v15 objectAtIndex:{objc_msgSend(v14, "item")}];
          v17 = [(CKTranscriptCollectionViewController *)self delegate];
          v18 = objc_opt_respondsToSelector();

          if (v18)
          {
            v19 = [(CKTranscriptCollectionViewController *)self delegate];
            [v19 transcriptCollectionViewController:self saveLastTappedChatItemWithDataDetector:v16];
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

- (void)_handleAudioBalloonPreviewSuppressionStateForUntrustedSenders:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [v4 row];
  if (v6 < [v5 count])
  {
    v7 = [(CKTranscriptCollectionViewController *)self chatItems];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

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
    v10 = [v9 mediaObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
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

- (void)_handleAudioBalloonTapForIndexPath:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 item];
  v6 = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  v8 = [v7 audioController];

  v9 = [v8 currentMediaObject];
  v10 = [v9 transfer];
  v11 = [v6 __ck_indexOfTransfer:v10];

  [(CKTranscriptCollectionViewController *)self _handleAudioBalloonPreviewSuppressionStateForUntrustedSenders:v4];
  if (v11 == v5)
  {
    if ([v8 isPlaying])
    {
      [v8 pause];
    }

    else
    {
      v17 = CKAudioPlaybackSpeakerEnabled();
      [v8 setShouldUseSpeaker:v17];
      v18 = 1.0;
      if (v17)
      {
        v18 = 0.0;
      }

      [v8 playAfterDelay:v18];
    }
  }

  else
  {
    v12 = [(CKTranscriptCollectionViewController *)self delegate];
    v13 = [v12 transcriptCollectionViewControllerShouldPlayAudio:self];

    if (v13)
    {
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v8 stop];

        v8 = 0;
      }

      v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v15 = [v6 objectAtIndex:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        if ([v16 isFromMe] & 1) != 0 || (objc_msgSend(v16, "isPlayed"))
        {
          [v14 addIndex:v5];
        }

        else
        {
          v20 = [v6 __ck_indexesOfUnplayedAudioMessages];
          [v14 addIndexes:v20];

          [v14 removeIndexesInRange:{0, v5}];
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
          [v6 enumerateObjectsAtIndexes:v14 options:0 usingBlock:v29];
          v23 = [CKAudioController alloc];
          v24 = [(CKTranscriptCollectionViewController *)self conversation];
          v25 = [(CKAudioController *)v23 initWithMediaObjects:v22 conversation:v24];

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

          v8 = v25;
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
            v32 = v5;
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

- (void)audioBalloonScrubberDidChangeValue:(double)a3
{
  v4 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  v5 = [v4 audioController];

  [v5 setCurrentTime:a3];
}

- (void)audioBalloonDidResize:(id)a3 isExpanded:(BOOL)a4
{
  v4 = a4;
  v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:a3];
  v6 = [v9 item];
  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [v7 objectAtIndex:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setIsExpanded:v4];
  }

  [(CKTranscriptCollectionViewController *)self unloadCachedSizeAndReloadChatItemAtIndexPath:v9];
}

- (void)launchReaderViewForBalloonView:(id)a3
{
  v4 = a3;
  v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v4];
  v5 = [v9 item];
  v6 = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [v6 objectAtIndex:v5];

  v8 = [(CKTranscriptCollectionViewController *)self delegate];
  [v8 transcriptCollectionViewController:self balloonView:v4 didRequestReaderViewControllerForChatItem:v7];
}

- (void)balloonView:(id)a3 selectedChipAction:(id)a4
{
  v8 = a4;
  v5 = [(CKTranscriptCollectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKTranscriptCollectionViewController *)self delegate];
    [v7 transcriptCollectionViewController:self selectedChipAction:v8];
  }
}

- (void)didTapChipListFromNotificationExtensionWithBalloonView:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKTranscriptCollectionViewController *)self delegate];
    [v6 launchAppFromExtensionWith:self];
  }
}

- (void)balloonView:(id)a3 selectedSuggestedReply:(id)a4 messageGUID:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(CKTranscriptCollectionViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CKTranscriptCollectionViewController *)self delegate];
    [v10 transcriptCollectionViewController:self selectedSuggestedReply:v11 messageGUID:v7];
  }
}

- (void)didTapTruncatedCaptionForRichCard:(id)a3 onBalloonView:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CKTranscriptCollectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CKTranscriptCollectionViewController *)self delegate];
    [v9 transcriptCollectionViewController:self didTapTruncatedCaptionForRichCard:v10 onBalloonView:v6];
  }
}

- (void)balloonView:(id)a3 carouselScrolledToIndex:(int64_t)a4
{
  v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:a3];
  v7 = [v6 item];
  v8 = [(CKTranscriptCollectionViewController *)self chatItems];
  v9 = [v8 objectAtIndex:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x1E69A5CB0] suggestedRepliesChatItemGUIDPrefix];
    v11 = [v9 IMChatItem];
    v12 = [v11 guid];
    v13 = [v10 stringByAppendingString:v12];
    v14 = [(CKTranscriptCollectionViewController *)self chatItemForGUID:v13];

    if ([v14 selectedIndex] != a4 && v14)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__CKTranscriptCollectionViewController_balloonView_carouselScrolledToIndex___block_invoke;
      block[3] = &unk_1E72EBC38;
      block[4] = self;
      v24 = v14;
      v25 = a4;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v15 = [MEMORY[0x1E69A5C60] richCardCountChatItemGUIDPrefix];
    v16 = [v9 IMChatItem];
    v17 = [v16 guid];
    v18 = [v15 stringByAppendingString:v17];
    v19 = [(CKTranscriptCollectionViewController *)self chatItemForGUID:v18];

    if (v19 && [v19 selectedRichCardIndex] != a4)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __76__CKTranscriptCollectionViewController_balloonView_carouselScrolledToIndex___block_invoke_2;
      v20[3] = &unk_1E72EBC38;
      v20[4] = self;
      v21 = v19;
      v22 = a4;
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

- (BOOL)_isRecognizerScrubbingOnCurrentAudioMessageBalloon:(id)a3
{
  v3 = a3;
  v4 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  v5 = [v4 audioController];

  v6 = [v3 view];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 mediaObject];
    v8 = [v5 currentMediaObject];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)audioBalloonScrubberWithRecognizer:(id)a3 didChangeValue:(double)a4
{
  v6 = a3;
  if ([(CKTranscriptCollectionViewController *)self _isRecognizerScrubbingOnCurrentAudioMessageBalloon:v6])
  {
    v7 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
    v8 = [v7 audioController];

    v9 = [v6 state];
    if (v9 == 2)
    {
      [v8 layoutViewsForScrubbingTime:a4];
    }

    else
    {
      if (v9 == 1)
      {
        [v8 layoutViewsForScrubbingTime:a4];
        if ([v8 isPlaying])
        {
          [(CKTranscriptCollectionViewController *)self setAudioControllerWasPlayingBeforeScrub:1];
          [v8 pause];
        }

        else
        {
          [(CKTranscriptCollectionViewController *)self setAudioControllerWasPlayingBeforeScrub:0];
        }

        v10 = [(CKTranscriptCollectionViewController *)self collectionView];
        v11 = v10;
        v12 = 0;
      }

      else
      {
        [v8 setCurrentTime:a4];
        if ([(CKTranscriptCollectionViewController *)self audioControllerWasPlayingBeforeScrub])
        {
          [v8 play];
        }

        v10 = [(CKTranscriptCollectionViewController *)self collectionView];
        v11 = v10;
        v12 = 1;
      }

      [v10 setScrollEnabled:v12];
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Attempted to scrub audio message balloon that is not currently being played.", v13, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)playbackSpeedDidChangeForAudioMessageBalloonView:(id)a3 playbackSpeed:(double)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  v8 = [v7 audioController];

  [v8 setPlaybackSpeed:a4];
  v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v6];
  v10 = [v9 item];
  v11 = [(CKTranscriptCollectionViewController *)self chatItems];
  v12 = [v11 objectAtIndex:v10];

  v30[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [CKChatItem unloadSizesOfChatItems:v13];

  v14 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [v14 reloadLayout];

  v15 = [(CKTranscriptCollectionViewController *)self chatItems];
  v16 = [v8 currentMediaObject];
  v17 = [v16 transfer];
  v18 = [v15 __ck_indexOfTransfer:v17];

  if (v18 == v10)
  {
    if (([v8 isPlaying] & 1) == 0)
    {
      v19 = CKAudioPlaybackSpeakerEnabled();
      [v8 setShouldUseSpeaker:v19];
      v20 = 1.0;
      if (v19)
      {
        v20 = 0.0;
      }

      [v8 playAfterDelay:v20];
    }
  }

  else
  {
    v21 = [(CKTranscriptCollectionViewController *)self delegate];
    v22 = [v21 transcriptCollectionViewControllerShouldPlayAudio:self];

    if (v22)
    {
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v8 stop];

        v8 = 0;
      }

      v23 = [(CKTranscriptCollectionViewController *)self audioMessageMediaObjectsFromBalloonView:v6];
      if ([v23 count])
      {
        v24 = [CKAudioController alloc];
        v25 = [(CKTranscriptCollectionViewController *)self conversation];
        v26 = [(CKAudioController *)v24 initWithMediaObjects:v23 conversation:v25];

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
        [(CKAudioController *)v26 setPlaybackSpeed:a4];
        v8 = v26;
      }
    }
  }
}

- (id)audioMessageMediaObjectsFromBalloonView:(id)a3
{
  v4 = MEMORY[0x1E696AD50];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v5];

  v8 = [v7 item];
  v9 = [(CKTranscriptCollectionViewController *)self chatItems];
  v10 = [v9 objectAtIndex:v8];

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
    [v6 addIndex:v8];
  }

  else
  {
    v17 = [(CKTranscriptCollectionViewController *)self chatItems];
    v18 = [v17 __ck_indexesOfUnplayedAudioMessages];
    [v6 addIndexes:v18];

    [v6 removeIndexesInRange:{0, v8}];
  }

  if ([v6 count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v13 = [(CKTranscriptCollectionViewController *)self chatItems];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__CKTranscriptCollectionViewController_audioMessageMediaObjectsFromBalloonView___block_invoke;
    v19[3] = &unk_1E72F0918;
    v20 = v12;
    v14 = v12;
    [v13 enumerateObjectsAtIndexes:v6 options:0 usingBlock:v19];

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

- (void)liveBalloonTouched:(id)a3
{
  v11 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v11;
  if (isKindOfClass)
  {
    v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v11];
    v7 = [(CKTranscriptCollectionViewController *)self collectionView];
    v8 = [v7 cellForItemAtIndexPath:v6];

    v9 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 bundleIdentifier];
      [(CKTranscriptCollectionViewController *)self setMostRecentlyTouchedPlugin:v10];
    }

    v5 = v11;
  }
}

- (void)interactionStartedWithPluginBalloonView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v4];
    v6 = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [v6 cellForItemAtIndexPath:v5];

    v8 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 syndicationBehavior];
      v10 = [v8 isHighlighted];
      v11 = [v8 syndicationType];
      if (v9 == 1 && (v10 & 1) == 0 && !v11)
      {
        v12 = [v8 IMChatItem];
        v13 = [v12 dataSource];
        v14 = [v13 pluginPayload];

        v15 = [MEMORY[0x1E69A5AD0] sharedInstance];
        v16 = [v15 dataSourceForPluginPayload:v14];

        v17 = [v16 richLinkMetadata];
        v18 = [v17 collaborationMetadata];

        v19 = [v8 canPerformQuickAction];
        if ((v19 & 1) != 0 || v18)
        {
          v20 = v18 != 0;
          v21 = dispatch_time(0, 100000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __80__CKTranscriptCollectionViewController_interactionStartedWithPluginBalloonView___block_invoke;
          block[3] = &unk_1E72ED5C0;
          v25 = v19;
          v26 = v20;
          v23 = v8;
          v24 = self;
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

- (void)balloonViewLongTouched:(id)a3
{
  v4 = a3;
  v6 = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v4];
  [v6 transcriptCollectionViewController:self balloonView:v4 longPressedForItemWithIndexPath:v5];
}

- (void)balloonViewShowInlineReply:(id)a3
{
  v4 = a3;
  v7 = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v4];
  v6 = +[CKInlineReplyTransitionProperties defaultProperties];
  [v7 transcriptCollectionViewController:self balloonView:v4 showInlineReplyForItemWithIndexPath:v5 withReplyTransitionProperties:v6];
}

- (void)balloonViewDoubleTapped:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received balloonViewDoubleTapped: callback for balloonView %@", &v13, 0xCu);
    }
  }

  if (!CKIsRunningInMacCatalyst())
  {
    v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v4];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(CKTranscriptCollectionViewController *)self delegate];
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Calling into delegate to handle balloon double tap with indexPath %@, delegate: %@", &v13, 0x16u);
      }
    }

    v8 = [(CKTranscriptCollectionViewController *)self delegate];
    [v8 transcriptCollectionViewController:self balloonView:v4 doubleTappedItemAtIndexPath:v6];
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v4];
    v7 = [v6 item];
    v8 = [(CKTranscriptCollectionViewController *)self delegate];
    v9 = [(CKTranscriptCollectionViewController *)self chatItems];
    v10 = [v9 objectAtIndex:v7];
    [v8 transcriptCollectionViewController:self balloonView:v4 tappedForChatItem:v10];

LABEL_13:
  }
}

- (void)balloonViewSelected:(id)a3 withModifierFlags:(int64_t)a4 selectedText:(id)a5
{
  v28 = a3;
  v8 = a5;
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 enableBalloonTextSelection];

  if (v10)
  {
    [(CKTranscriptCollectionViewController *)self _searchForSelectedBalloonHack];
    v11 = [(CKTranscriptCollectionViewController *)self selectionManager];
    v12 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v28];
    v13 = [(CKTranscriptCollectionViewController *)self chatItems];
    v14 = [v12 item];
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    v15 = v14;
    if (v14 >= [v13 count])
    {
      goto LABEL_25;
    }

    v16 = [v13 objectAtIndex:v15];
    v17 = [v16 IMChatItem];
    v18 = [v17 guid];

    if ([v11 isMessageGuidSelected:v18])
    {
      if (a4 == 0x100000)
      {
        [v11 removeSelectedMessageGuid:v18];
        goto LABEL_24;
      }

      if (a4 != 0x20000)
      {
        v19 = [v11 selectedGuidCount];
        [v11 removeAllSelectedMessageGuids];
        if (v19 < 2)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (a4 == 0x100000)
      {
        v20 = [v11 trackedGuid];

        if (v20)
        {
          v21 = [v11 trackedGuid];
          v22 = [v11 selectedStateForGuid:v21];

          if (v22)
          {
            v23 = [v22 style];
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
        goto LABEL_23;
      }

      if (a4 != 0x20000)
      {
        if (![v8 length])
        {
          [v11 removeAllSelectedMessageGuids];
LABEL_18:
          v24 = 0;
LABEL_23:
          v25 = [CKBalloonSelectionState balloonSelectionState:v24];
          [v11 addSelectedMessageGuid:v18 selectionState:v25];
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
  v26 = [(CKTranscriptCollectionViewController *)self delegate];
  v27 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v28];
  [v26 transcriptCollectionViewController:self balloonView:v28 selectedItemAtIndexPath:v27];
}

- (id)selectedChatItems
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(CKTranscriptCollectionViewController *)self chatItems];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(CKTranscriptCollectionViewController *)self selectionManager];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
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
        v12 = [v11 IMChatItem];
        v13 = [v12 guid];
        v14 = [v5 isMessageGuidSelected:v13];

        if (v14)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)groupTypingIndicatorChatItem
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CKTranscriptCollectionViewController *)self chatItems];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)_selectChatItemGuid:(id)a3 selectionState:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (([(CKTranscriptCollectionViewController *)self isEditing]& 1) == 0)
  {
    v7 = [(CKTranscriptCollectionViewController *)self chatItems];
    v8 = [v7 __ck_chatItemWithGUID:v11];

    v9 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 balloonView];
      [v10 setSelected:1 withSelectionState:v6];
    }
  }
}

- (void)_deselectChatItemGuid:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [v5 __ck_chatItemWithGUID:v4];

  v6 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 balloonView];
    [v7 setSelected:0 withSelectionState:0];
  }
}

- (void)balloonViewTextViewDidChangeSelection:(id)a3 selectedText:(id)a4 textView:(id)a5
{
  v21 = a3;
  v8 = a5;
  if ([a4 length])
  {
    v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v21];
    v10 = [(CKTranscriptCollectionViewController *)self chatItems];
    v11 = [v9 item];
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v11;
      if (v11 < [v10 count])
      {
        v13 = [v10 objectAtIndex:v12];
        v14 = [v13 IMChatItem];
        v15 = [v14 guid];

        v16 = [(CKTranscriptCollectionViewController *)self selectionManager];
        v17 = [v8 selectedRange];
        v19 = [CKBalloonSelectionState balloonSelectionState:1 textSelectionRange:v17, v18];
        [v16 trackSelectedGuid:v15 selectionState:v19];

        v20 = [(CKTranscriptCollectionViewController *)self selectionManager];
        [v20 removeAllSelectedMessageGuidsExceptTrackedGuid];
      }
    }
  }
}

- (void)balloonViewWillDismissEditMenu:(id)a3
{
  v7 = a3;
  v4 = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKTranscriptCollectionViewController *)self delegate];
    [v6 transcriptCollectionViewController:self balloonViewWillDismissEditMenu:v7];
  }
}

- (void)balloonView:(id)a3 userDidDragOutsideBalloonWithPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v33 = a3;
  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [(CKTranscriptCollectionViewController *)self collectionView];
  v9 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v33];
  v10 = [v7 objectAtIndex:{objc_msgSend(v9, "item")}];
  v11 = [v10 IMChatItem];
  v12 = [v11 guid];

  [v8 convertPoint:v33 fromView:{x, y}];
  v14 = v13;
  v16 = v15;
  v17 = [(CKTranscriptCollectionViewController *)self collectionView];
  v18 = [v17 indexPathForItemAtPoint:{v14, v16}];

  if (v18 && ![v18 section] && objc_msgSend(v18, "item") >= 1)
  {
    v32 = [MEMORY[0x1E695DF90] dictionary];
    v19 = [v18 item];
    if (v19 >= [v9 item])
    {
      v25 = [v9 item];
      if (v25 < [v18 item])
      {
        for (i = [v9 item]; i <= objc_msgSend(v18, "item"); ++i)
        {
          v27 = [v7 objectAtIndex:i];
          v28 = [v27 IMChatItem];
          v29 = [v28 guid];

          if (([v29 isEqualToString:v12] & 1) == 0)
          {
            v30 = [CKBalloonSelectionState balloonSelectionState:1];
            [v32 setObject:v30 forKey:v29];
          }
        }
      }
    }

    else
    {
      for (j = [v18 item]; j <= objc_msgSend(v9, "item"); ++j)
      {
        v21 = [v7 objectAtIndex:j];
        v22 = [v21 IMChatItem];
        v23 = [v22 guid];

        if (([v23 isEqualToString:v12] & 1) == 0)
        {
          v24 = [CKBalloonSelectionState balloonSelectionState:1];
          [v32 setObject:v24 forKey:v23];
        }
      }
    }

    v31 = [(CKTranscriptCollectionViewController *)self selectionManager];
    [v31 setSelectedGuids:v32];
  }
}

- (void)balloonView:(id)a3 willInsertPluginViewAsSubview:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v6];
  v9 = [v8 row];
  if (v8)
  {
    v10 = v9;
    v11 = [(CKTranscriptCollectionViewController *)self chatItems];
    v12 = [v11 count];

    if (v10 < v12)
    {
      v13 = [(CKTranscriptCollectionViewController *)self chatItems];
      v14 = [v13 objectAtIndex:v10];

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

        v16 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
        v17 = [v14 contentViewControllerForContext:v16];

        v18 = [v17 parentViewController];
        v19 = v18;
        if (v18)
        {
          if (v18 != self)
          {
            [(CKTranscriptCollectionViewController *)v18 removeChildViewController:v17];
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

- (void)quickActionButtonWasTapped:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Quick save button tapped.", buf, 2u);
    }
  }

  v6 = [(CKTranscriptCollectionViewController *)self collectionView];
  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33;
  v25 = __Block_byref_object_dispose__33;
  v26 = 0;
  v7 = [v6 indexPathsForVisibleItems];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CKTranscriptCollectionViewController_quickActionButtonWasTapped___block_invoke;
  v17[3] = &unk_1E72F2790;
  v8 = v6;
  v18 = v8;
  v9 = v4;
  v19 = v9;
  v20 = buf;
  [v7 enumerateObjectsUsingBlock:v17];

  v10 = [(CKTranscriptCollectionViewController *)self chatItems];
  v11 = *(v22 + 5);
  if (!v11 || [v11 item] < 0 || (v12 = objc_msgSend(*(v22 + 5), "item"), v12 >= objc_msgSend(v10, "count")))
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController quickActionButtonWasTapped:];
    }
  }

  else
  {
    v13 = [v10 objectAtIndex:{objc_msgSend(*(v22 + 5), "item")}];
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

- (void)_quickActionPinButtonWasTapped:(id)a3 atIndexPath:(id)a4 chatItem:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Request to Pin chat item: %@", buf, 0xCu);
    }
  }

  v12 = v8;
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
  v22 = v10;
  v23 = self;
  v24 = v15;
  v25 = v16;
  v18 = v10;
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

- (void)_showAutoDonationAlert:(id)a3 forAppName:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 length] && objc_msgSend(v10, "length"))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"SHARED_WITH_YOU_AUTO_DONATION_ALERT" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = [v11 stringWithFormat:v13, v9, v9];

    v15 = [MEMORY[0x1E69DC668] sharedApplication];
    v16 = [v15 userInterfaceLayoutDirection];

    if (v16 == 1)
    {
      v17 = @"\u200F";
    }

    else
    {
      v17 = @"\u200E";
    }

    v18 = [(__CFString *)v17 stringByAppendingString:v14];

    v19 = [CKAlertController alertControllerWithTitle:v18 message:0 preferredStyle:0];
    v20 = CKFrameworkBundle();
    v21 = [v20 localizedStringForKey:@"SHARED_WITH_YOU_OK_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __83__CKTranscriptCollectionViewController__showAutoDonationAlert_forAppName_bundleID___block_invoke;
    v27[3] = &unk_1E72EC710;
    v28 = v10;
    v29 = self;
    v22 = [CKAlertAction actionWithTitle:v21 style:0 handler:v27];
    [v19 addAction:v22];

    v23 = CKFrameworkBundle();
    v24 = [v23 localizedStringForKey:@"SHARED_WITH_YOU_CANCEL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v25 = [CKAlertAction actionWithTitle:v24 style:1 handler:0];
    [v19 addAction:v25];

    v26 = [v19 popoverPresentationController];
    [v26 setSourceView:v8];

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

- (void)_quickActionSaveButtonWasTapped:(id)a3 atIndexPath:(id)a4 chatItem:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CKTranscriptCollectionViewController *)self balloonViewAtIndexPath:v9];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = *MEMORY[0x1E69A7540];
      v13 = v11;
      -[CKTranscriptCollectionViewController _trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:](self, "_trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:", v12, v13, [v10 transcriptOrientation]);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Request to quick save chat item: %@", buf, 0xCu);
    }
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(CKTranscriptCollectionViewController *)self _mediaObjectsForOrganicChatItem:v10 onIndexPath:v9];
    if ([v16 count])
    {
      [v15 addObjectsFromArray:v16];
      v17 = CKMomentShareURLForMediaObjects(v16);
    }

    else
    {
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController _quickActionSaveButtonWasTapped:atIndexPath:chatItem:];
      }

      v17 = 0;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v10;
    v18 = [v16 mediaObject];
    if (v18)
    {
      [v15 addObject:v18];
      v23 = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      v17 = CKMomentShareURLForMediaObjects(v19);
    }

    else
    {
      v17 = 0;
    }

LABEL_23:
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v10;
    v17 = [v16 momentShareURL];
    v20 = [v16 mediaObjects];

    if (v20)
    {
      v21 = [v16 mediaObjects];
      [v15 addObjectsFromArray:v21];
    }

    goto LABEL_23;
  }

  v17 = 0;
LABEL_24:
  [(CKTranscriptCollectionViewController *)self _saveMediaObjects:v15 withMomentShareURL:v17 sender:v8];
}

- (id)_mediaObjectsForOrganicChatItem:(id)a3 onIndexPath:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v6 = a4;
  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  if (!v6 || [v6 item] < 0 || (v8 = objc_msgSend(v6, "item"), v8 >= objc_msgSend(v7, "count")))
  {
    v18 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v9 addObject:v35];
    v10 = [v35 layoutRecipe];
    v36 = [v10 groupIdentifier];

    v11 = [v6 item];
    if (v11 >= 1)
    {
      v12 = v11 + 1;
      while (1)
      {
        v13 = [v7 objectAtIndex:{v12 - 2, v35}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v14 = v13;
        v15 = [v14 layoutRecipe];
        v16 = [v15 groupIdentifier];
        v17 = [v36 isEqualToString:v16];

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
    for (i = [v6 item] + 1; i < objc_msgSend(v7, "count"); ++i)
    {
      v21 = [v7 objectAtIndex:i];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v22 = v21;
      v23 = [v22 layoutRecipe];
      v24 = [v23 groupIdentifier];
      v25 = [v36 isEqualToString:v24];

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
        v45 = v36;
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
          v33 = [v32 mediaObject];

          if (v33)
          {
            v34 = [v32 mediaObject];
            [v18 addObject:v34];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v29);
    }
  }

  return v18;
}

- (void)_saveMediaObjects:(id)a3 withMomentShareURL:(id)a4 sender:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
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
    if (v9)
    {
      v15[2](v15);
      if (CKSaveMomentShareFromURL(v9, 0, v17))
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
      v18 = [CKUtilities quickSaveConfirmationAlertForMediaObjects:v8 momentShareURL:0 popoverSource:v16 metricsSource:*MEMORY[0x1E69A7660] cancelHandler:v13 preSaveHandler:v15 postSaveHandler:v17, v19, v20, v21, v22];
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

- (void)_handleAssociatedMessageCellTapEvent:(id)a3 isDoubleTap:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v19 = [(CKTranscriptCollectionViewController *)self collectionView];
  v7 = [v19 indexPathForCell:v6];

  v8 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "row")}];

  v10 = [(CKTranscriptCollectionViewController *)self chatItems];
  v11 = [v9 associatedChatItemGUID];
  v12 = [v9 associatedMessageRange];
  v14 = [v10 ck_indexOfChatItemContainingIMChatItemGUID:v11 associatedMessageRange:{v12, v13}];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AC88] indexPathForItem:v14 inSection:0];
    v16 = [(CKTranscriptCollectionViewController *)self balloonViewAtIndexPath:v15];
    if (v16)
    {
      v17 = [(CKTranscriptCollectionViewController *)self delegate];
      v18 = v17;
      if (v4)
      {
        [v17 transcriptCollectionViewController:self balloonView:v16 doubleTappedItemAtIndexPath:v15];
      }

      else
      {
        [v17 transcriptCollectionViewController:self balloonView:v16 longPressedForItemWithIndexPath:v15];
      }
    }
  }
}

- (void)liveViewController:(id)a3 requestPresentationStyle:(unint64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
        v24 = v5;
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
      objc_enumerationMutation(v6);
    }

    v10 = *(*(&v19 + 1) + 8 * v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = v10;
    v12 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v13 = [v11 extensibleViewControllerForContext:v12];
    v14 = v13 == v5;

    if (v14)
    {
      break;
    }

LABEL_9:
    if (v7 == ++v9)
    {
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
  v16 = [(CKTranscriptCollectionViewController *)self delegate];
  [v16 transcriptCollectionViewController:self balloonView:v15 didRequestPresentationStyle:a4 forChatItem:v11 allowAllStyles:1];

LABEL_18:
}

- (void)liveViewController:(id)a3 stagePayload:(id)a4 skipShelf:(BOOL)a5 allowAllCommits:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a7;
  v14 = [(CKTranscriptCollectionViewController *)self balloonPluginForViewController:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__CKTranscriptCollectionViewController_liveViewController_stagePayload_skipShelf_allowAllCommits_completionHandler___block_invoke;
  block[3] = &unk_1E72F27B8;
  v22 = a5;
  block[4] = self;
  v19 = v12;
  v23 = a6;
  v20 = v14;
  v21 = v13;
  v15 = v13;
  v16 = v14;
  v17 = v12;
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

- (void)liveViewController:(id)a3 sendCustomAcknowledgementPayload:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CKTranscriptCollectionViewController *)self balloonPluginForViewController:a3];
  v11 = [v10 extensionIdentifier];
  v12 = IMBalloonExtensionIDWithSuffix();
  v13 = [v11 isEqualToString:v12];

  v14 = @"Other";
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__CKTranscriptCollectionViewController_liveViewController_sendCustomAcknowledgementPayload_completionHandler___block_invoke;
  block[3] = &unk_1E72EDAE0;
  block[4] = self;
  v19 = v8;
  if (v13)
  {
    v14 = @"Polls";
  }

  v20 = v10;
  v21 = v14;
  v22 = v9;
  v15 = v9;
  v16 = v10;
  v17 = v8;
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

- (void)liveViewController:(id)a3 stageSticker:(id)a4 skipShelf:(BOOL)a5 allowAllCommits:(BOOL)a6 completionHandler:(id)a7
{
  v11 = a4;
  v12 = a7;
  v13 = [(CKTranscriptCollectionViewController *)self balloonPluginForViewController:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__CKTranscriptCollectionViewController_liveViewController_stageSticker_skipShelf_allowAllCommits_completionHandler___block_invoke;
  block[3] = &unk_1E72F27E0;
  block[4] = self;
  v18 = v11;
  v21 = a6;
  v19 = v13;
  v20 = v12;
  v14 = v12;
  v15 = v13;
  v16 = v11;
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

- (void)liveViewControllerDidUpdateMessageTintColor:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v18 + 1) + 8 * v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = v10;
    v12 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v13 = [v11 extensibleViewControllerForContext:v12];

    if (v13 == v4)
    {
      break;
    }

LABEL_9:
    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    v15 = [v11 IMChatItem];
    v16 = [v15 guid];

    v17 = [(CKTranscriptCollectionViewController *)self indexPathForChatItemGUID:v16];
    [(CKTranscriptCollectionViewController *)self configureCell:v14 forCKChatItem:v11 atIndexPath:v17 animated:0 animationDuration:3 animationCurve:0.0];
  }

LABEL_18:
}

- (void)interactionStartedFromPreviewItemControllerInBalloonView:(id)a3
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v3 beginHoldingContentOffsetUpdatesForReason:@"TranscriptPreviewItem"];
}

- (void)interactionStoppedFromPreviewItemControllerInBalloonView:(id)a3
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v3 endHoldingContentOffsetUpdatesForReason:@"TranscriptPreviewItem"];
}

- (void)balloonViewDidStopTextSelection:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v4];
  v7 = [v5 objectAtIndex:{objc_msgSend(v6, "item")}];
  v8 = [v7 IMChatItem];
  v9 = [v8 guid];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Did stop text selection: %@", &v12, 0xCu);
    }
  }

  v11 = [(CKTranscriptCollectionViewController *)self selectionManager];
  [v11 removeSelectedMessageGuid:v9];
}

- (void)tuConversationBalloonJoinButtonTapped:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Processing join button tapped from balloonView: %@", &v9, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [(CKTranscriptCollectionViewController *)self chat];
    v8 = [v6 tuConversationUUID];

    [v7 joinExistingTUConversationWithUUID:v8];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [CKTranscriptCollectionViewController tuConversationBalloonJoinButtonTapped:];
    }
  }
}

- (void)balloonView:(id)a3 mediaObjectDidFinishPlaying:(id)a4
{
  v5 = a4;
  v6 = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [v5 transfer];

  v8 = [v6 __ck_indexOfTransfer:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 objectAtIndex:v8];
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

- (void)photoStackBalloonView:(id)a3 photoStack:(id)a4 didSelectAssetReference:(id)a5
{
  v18 = a3;
  v7 = a5;
  v8 = [(CKTranscriptCollectionViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v18];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 item];
      v13 = [(CKTranscriptCollectionViewController *)self chatItems];
      v14 = [v13 count];

      if (v12 < v14)
      {
        v15 = [(CKTranscriptCollectionViewController *)self chatItems];
        v16 = [v15 objectAtIndex:{objc_msgSend(v11, "item")}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [(CKTranscriptCollectionViewController *)self delegate];
          [v17 transcriptCollectionViewController:self didTapPhotoStackForChatItem:v16 assetReference:v7];

          -[CKTranscriptCollectionViewController _trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:](self, "_trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:", *MEMORY[0x1E69A7550], v18, [v16 transcriptOrientation]);
        }
      }
    }
  }
}

- (void)photoStackBalloonView:(id)a3 didChangeCurrentAssetReference:(id)a4 isProgrammaticChange:(BOOL)a5 didChangeIndex:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  if (v6 && !a5)
  {
    v17 = v9;
    v10 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 item];
      v13 = [(CKTranscriptCollectionViewController *)self chatItems];
      v14 = [v13 count];

      if (v12 < v14)
      {
        v15 = [(CKTranscriptCollectionViewController *)self chatItems];
        v16 = [v15 objectAtIndex:{objc_msgSend(v11, "item")}];

        -[CKTranscriptCollectionViewController _trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:](self, "_trackPhotoStackEvent:forStackBalloonView:transcriptOrientation:", *MEMORY[0x1E69A7548], v17, [v16 transcriptOrientation]);
      }
    }

    v9 = v17;
  }
}

- (void)photoStackBalloonView:(id)a3 photoStackDidSelectAdditionalItems:(id)a4
{
  v16 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = v16;
  if (v6)
  {
    v8 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v16];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 item];
      v11 = [(CKTranscriptCollectionViewController *)self chatItems];
      v12 = [v11 count];

      if (v10 < v12)
      {
        v13 = [(CKTranscriptCollectionViewController *)self chatItems];
        v14 = [v13 objectAtIndex:{objc_msgSend(v9, "item")}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(CKTranscriptCollectionViewController *)self delegate];
          [v15 transcriptCollectionViewController:self didTapPhotoStackAdditionalItemsForChatItem:v14];
        }
      }
    }

    v7 = v16;
  }
}

- (void)didTapPendingMomentSharePhotoStackBalloonView:(id)a3
{
  v15 = a3;
  v4 = [(CKTranscriptCollectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = v15;
  if (v5)
  {
    v7 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v15];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 item];
      v10 = [(CKTranscriptCollectionViewController *)self chatItems];
      v11 = [v10 count];

      if (v9 < v11)
      {
        v12 = [(CKTranscriptCollectionViewController *)self chatItems];
        v13 = [v12 objectAtIndex:{objc_msgSend(v8, "item")}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [(CKTranscriptCollectionViewController *)self delegate];
          [v14 transcriptCollectionViewController:self didTapPendingMomentShareForChatItem:v13];
        }
      }
    }

    v6 = v15;
  }
}

- (void)didTapUnavailableMomentShareBalloonView:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 item];
    v7 = [(CKTranscriptCollectionViewController *)self chatItems];
    v8 = [v7 count];

    if (v6 < v8)
    {
      v9 = [(CKTranscriptCollectionViewController *)self chatItems];
      v10 = [v9 objectAtIndex:{objc_msgSend(v5, "item")}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 momentShareURL];
        if (v11)
        {
          v12 = [MEMORY[0x1E6963608] defaultWorkspace];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __80__CKTranscriptCollectionViewController_didTapUnavailableMomentShareBalloonView___block_invoke;
          v14[3] = &unk_1E72F2808;
          v15 = v11;
          [v12 openURL:v15 configuration:0 completionHandler:v14];

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

- (void)locationShareBalloonViewIgnoreButtonTapped:(id)a3
{
  v3 = [(CKTranscriptCollectionViewController *)self chat];
  [v3 markAllLocationShareItemsAsUnactionable];
}

- (void)locationShareBalloonViewShareButtonTapped:(id)a3
{
  v23 = a3;
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

  v21 = [v4 popoverPresentationController];
  [v21 setSourceView:v23];

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

- (void)locationSharingClient:(id)a3 showShareLocationMenuWithBalloonPluginView:(id)a4
{
  v35 = a4;
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
    v22 = [v5 popoverPresentationController];
    v23 = [(CKTranscriptCollectionViewController *)self view];
    [v22 setSourceView:v23];

    v24 = [v5 popoverPresentationController];
    v25 = [(CKTranscriptCollectionViewController *)self view];
    [v35 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [v35 superview];
    [v25 convertRect:v34 fromView:{v27, v29, v31, v33}];
    [v24 setSourceRect:?];
  }

  [(CKTranscriptCollectionViewController *)self presentViewController:v5 animated:1 completion:0];
}

void __105__CKTranscriptCollectionViewController_locationSharingClient_showShareLocationMenuWithBalloonPluginView___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) conversation];
  v3 = [v4 chat];
  [v3 shareLocationWithDuration:a2];
}

- (void)balloonViewTitleTapped:(id)a3
{
  v5 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:a3];
  v4 = [(CKTranscriptCollectionViewController *)self delegate];
  [v4 transcriptCollectionViewController:self balloonViewTitleTappedForItemWithIndexPath:v5];
}

- (void)audioController:(id)a3 mediaObjectDidFinishPlaying:(id)a4
{
  v5 = a4;
  v6 = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [v5 transfer];
  v8 = [v6 __ck_indexOfTransfer:v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 objectAtIndex:v8];
    if (([v9 isFromMe] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 isPlayed] & 1) == 0)
      {
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __84__CKTranscriptCollectionViewController_audioController_mediaObjectDidFinishPlaying___block_invoke;
        v24 = &unk_1E72EB8D0;
        v25 = self;
        v26 = v9;
        [(CKTranscriptCollectionViewController *)self updateTranscript:&v21 animated:1 completion:0];
      }
    }

    v10 = [(CKTranscriptCollectionViewController *)self chatItems:v21];

    v11 = [v5 transfer];
    v12 = [v10 __ck_indexOfTransfer:v11];

    v13 = [(CKTranscriptCollectionViewController *)self collectionView];
    v14 = [MEMORY[0x1E696AC88] indexPathForItem:v12 inSection:0];
    v15 = [v13 cellForItemAtIndexPath:v14];
    v16 = v15;
    if (v15 && [v15 isAudioMessage])
    {
      v17 = [v16 balloonView];
      [v17 setTime:0.0];
      [v17 setPlaying:0];
      [v17 setPlayed:1];
      [v17 prepareForDisplayIfNeeded];
    }

    v6 = v10;
  }

  v18 = [(CKTranscriptCollectionViewController *)self __CurrentTestName];
  v19 = [v18 isEqualToString:@"AudioBalloonPlayBack"];

  if (v19)
  {
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 postNotificationName:@"kAudioBalloonViewPlaybackDidFinishNotification" object:0];
  }
}

void __84__CKTranscriptCollectionViewController_audioController_mediaObjectDidFinishPlaying___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) chat];
  v2 = [*(a1 + 40) IMChatItem];
  [v3 markChatItemAsPlayed:v2];
}

- (void)audioController:(id)a3 updateAudioBalloonsForTime:(double)a4 mediaObject:(id)a5
{
  v24 = a3;
  v8 = a5;
  v9 = [(CKTranscriptCollectionViewController *)self chatItems];
  v10 = [v8 transfer];

  v11 = [v9 __ck_indexOfTransfer:v10];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(CKTranscriptCollectionViewController *)self collectionView];
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
    v14 = [v12 cellForItemAtIndexPath:v13];
    v15 = v14;
    if (v14 && [v14 isAudioMessage])
    {
      v16 = [v15 balloonView];
      [v16 setTime:a4];
      [v16 setPlaying:{objc_msgSend(v24, "isPlaying")}];
      [v16 prepareForDisplayIfNeeded];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v24 stop];
      }
    }

    v17 = [v9 objectAtIndex:v11];
    v18 = [v17 mediaObject];
    v19 = [v18 transferGUID];
    [(CKTranscriptCollectionViewController *)self setSpeakerTransferGUID:v19];

    [(CKTranscriptCollectionViewController *)self reconfigureVisibleSpeakerButtonCells];
  }

  v20 = [(CKTranscriptCollectionViewController *)self __CurrentTestName];
  v21 = [v20 isEqualToString:@"AudioBalloonPlayBack"];

  if (v21)
  {
    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = v22;
    if (a4 == 0.0)
    {
      [v22 postNotificationName:@"kAudioBalloonViewPlaybackWillStartNotification" object:0];
    }
  }
}

- (void)audioControllerDidPause:(id)a3
{
  v13 = a3;
  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [v13 currentMediaObject];
  v6 = [v5 transfer];
  v7 = [v4 __ck_indexOfTransfer:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:0];
    v10 = [v8 cellForItemAtIndexPath:v9];
    v11 = v10;
    if (v10 && [v10 isAudioMessage])
    {
      v12 = [v11 balloonView];
      [v12 setPlaying:0];
      [v12 prepareForDisplayIfNeeded];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 stop];
      }
    }
  }
}

- (void)audioControllerDidStop:(id)a3
{
  v4 = a3;
  v16 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [v4 currentMediaObject];

  v6 = [v5 transfer];
  v7 = [v16 __ck_indexOfTransfer:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:0];
    v10 = [v8 cellForItemAtIndexPath:v9];
    v11 = v10;
    if (v10 && [v10 isAudioMessage])
    {
      v12 = [v11 balloonView];
      [v12 setTime:0.0];
      [v12 setPlaying:0];
      [v12 prepareForDisplayIfNeeded];
    }
  }

  v13 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  v14 = [v13 audioController];
  [v14 setDelegate:0];

  v15 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  [v15 setAudioController:0];
}

- (void)audioControllerPlayingDidChange:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self delegate];
  [v4 transcriptCollectionViewControllerPlayingAudioDidChange:self];
}

- (id)avatarView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v7 = a4;
  if ([a5 isEqualToString:*MEMORY[0x1E695D070]])
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v7;
    obj = v7;
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
            v17 = [v14 value];
          }

          else
          {
            v18 = [v14 key];
            v19 = [v18 isEqualToString:v27];

            if (v19)
            {
              v20 = [v14 value];
              v17 = [v20 stringValue];
            }

            else
            {
              v17 = 0;
            }
          }

          v21 = IMStripFormattingFromAddress();

          v22 = [v29 preferredHandle];
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

    v7 = v26;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)effectManager:(id)a3 didStartEffect:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v5)
  {
    v6 = [(CKTranscriptCollectionViewController *)self chat];
    v7 = [v5 triggeringChatItem];
    v8 = [v7 IMChatItem];
    [v6 markChatItemAsPlayedExpressiveSend:v8];

    v9 = [(CKTranscriptCollectionViewController *)self collectionView];
    v10 = [v9 visibleCells];
    v11 = [v10 mutableCopy];

    if ([v5 effectIsDark])
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

    [v5 playSoundEffect];
    v18 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
    [v18 beginHoldingUpdatesForKey:@"CKFullscreenUpdatesPlaying"];

    [(CKTranscriptCollectionViewController *)self addContentAnimationPauseReasons:4];
    [(CKTranscriptCollectionViewController *)self setShouldUseOpaqueMask:0];
    v19 = [v5 triggeringChatItem];
    v20 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v19];

    [v11 removeObject:v20];
    if ([v11 count])
    {
      [v5 applyMessageFiltersToCells:v11];
    }

    if (v20)
    {
      v21 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
      v22 = [v21 currentEffect];
      [v22 applyMessageFiltersToTriggeringCell:v20];
    }

    v23 = [(CKTranscriptCollectionViewController *)self delegate];
    v24 = [v23 transcriptCollectionViewController:self shouldSetupFullscreenEffectUI:v5];

    if (v24)
    {
      v25 = [v5 backgroundColor];
      if (v25)
      {
        v26 = [(CKTranscriptCollectionViewController *)self view];
        v27 = [v26 backgroundColor];
        v28 = [v27 isEqual:v25];

        if ((v28 & 1) == 0)
        {
          v29 = MEMORY[0x1E69DD250];
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 3221225472;
          v84[2] = __69__CKTranscriptCollectionViewController_effectManager_didStartEffect___block_invoke;
          v84[3] = &unk_1E72EB8D0;
          v84[4] = self;
          v85 = v25;
          [v29 animateWithDuration:v84 animations:0 completion:0.3];
        }
      }

      if ([v5 shouldDrawOverNavigationBar] && CKIsRunningInMessages())
      {
        v30 = [(CKTranscriptCollectionViewController *)self delegate];
        v31 = [v30 transcriptCollectionViewControllerOuterEffectPresentingView:self];

        v32 = objc_alloc([v5 effectViewClass]);
        v33 = [(CKTranscriptCollectionViewController *)self view];
        [v33 bounds];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v42 = [(CKTranscriptCollectionViewController *)self view];
        [v31 convertRect:v42 fromView:{v35, v37, v39, v41}];
        v43 = [v32 initWithFrame:?];

        [v43 setZIndex:3];
        [v43 setUserInteractionEnabled:0];
        [v31 addSubview:v43];
        v44 = +[CKUIBehavior sharedBehaviors];
        LODWORD(v42) = [v44 shouldHideStatusBarForFullScreenEffects];

        if (v42)
        {
          v45 = [*MEMORY[0x1E69DDA98] statusBar];
          [v45 setHidden:1 animated:1];
        }

        [(CKTranscriptCollectionViewController *)self setTopEffectView:v43];
        [(CKTranscriptCollectionViewController *)self _updateEffectViewMessageRect:v43 effect:v5];
        v46 = [v5 triggeringChatItem];
        v47 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v46];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = [v47 balloonView];
          v49 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v47];
          objc_opt_class();
          v83 = v49;
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v49 transcriptOrientation] == 2)
            {
              v48 = v48;
              v50 = [v48 wantsGradient];
              v51 = v48;
              if (v50)
              {
                v82 = v48;
                v48 = CKBalloonViewForClass([v49 balloonViewClass]);
                [v48 configureForMessagePart:v49];
                [v48 setInvisibleInkEffectEnabled:0];
                [v48 setCanUseOpaqueMask:0];
                if (objc_opt_respondsToSelector())
                {
                  v52 = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
                  [v48 setGradientReferenceView:v52];
                }

                [v48 setNeedsPrepareForDisplay];
                [v48 prepareForDisplayIfNeeded];
                [v82 bounds];
                [v48 setFrame:?];
                [v48 layoutIfNeeded];
                v53 = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
                [v53 gradientFrame];
                v55 = v54;
                v57 = v56;
                v59 = v58;
                v61 = v60;

                v62 = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
                [v62 convertRect:v82 toView:{v55, v57, v59, v61}];
                v64 = v63;
                v66 = v65;
                v68 = v67;
                v70 = v69;

                if (objc_opt_respondsToSelector())
                {
                  [v48 setGradientOverrideFrame:{v64, v66, v68, v70}];
                }

                [v48 layoutIfNeeded];

                v51 = v82;
              }
            }
          }

          [v48 bounds];
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
            v76 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v76 scale];
            v78 = v77;
            v92.width = v73;
            v92.height = v74;
            UIGraphicsBeginImageContextWithOptions(v92, 0, v78);

            [v48 bounds];
            [v48 drawViewHierarchyInRect:1 afterScreenUpdates:?];
            v75 = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            [v43 setMessageImage:v75];
          }
        }

        [v43 startAnimation];
      }
    }

    v79 = [(CKTranscriptCollectionViewController *)self collectionView];
    v80 = [v79 collectionViewLayout];
    [v80 invalidateLayout];

    v81 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v81 reloadData];
  }
}

void __69__CKTranscriptCollectionViewController_effectManager_didStartEffect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:*(a1 + 40)];
}

- (void)effectManager:(id)a3 didStopEffect:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    if ([v5 effectIsDark])
    {
      v7 = [(CKTranscriptCollectionViewController *)self collectionView];
      v8 = [v7 visibleCells];
      v9 = [v8 mutableCopy];

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

    v16 = [(CKTranscriptCollectionViewController *)self __CurrentTestName];

    if (v16)
    {
      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      [v17 postNotificationName:@"CKEffectManagerEffectDidEndForPPT" object:self];
    }

    v18 = [(CKTranscriptCollectionViewController *)self collectionView];
    v19 = [v18 visibleCells];
    [v6 clearMessageFiltersFromCells:v19];

    [v6 stopSoundEffect];
    v20 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v20 reloadData];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__CKTranscriptCollectionViewController_effectManager_didStopEffect___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v21 = _Block_copy(aBlock);
    v22 = [(CKTranscriptCollectionViewController *)self delegate];
    v23 = [v22 transcriptCollectionViewController:self shouldCleanupFullscreenEffectUI:v6];

    if (!v23)
    {
      goto LABEL_20;
    }

    v24 = [(CKTranscriptCollectionViewController *)self topEffectView];
    [v24 stopAnimation];

    v25 = [(CKTranscriptCollectionViewController *)self topEffectView];
    [v25 removeFromSuperview];

    [(CKTranscriptCollectionViewController *)self setTopEffectView:0];
    v26 = +[CKUIBehavior sharedBehaviors];
    v27 = [v26 shouldHideStatusBarForFullScreenEffects];

    if (v27)
    {
      v28 = [*MEMORY[0x1E69DDA98] statusBar];
      [v28 setHidden:0 animated:1];
    }

    v29 = [v6 backgroundColor];

    if (v29)
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

- (void)sendAnimationManagerWillStartAnimation:(id)a3 context:(id)a4
{
  v5 = a4;
  [(CKTranscriptCollectionViewController *)self setShouldUseOpaqueMask:0];
  v6 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [v6 beginHoldingUpdatesForKey:@"CKFullscreenUpdatesImpactAnimation"];

  v7 = [(CKTranscriptCollectionViewController *)self delegate];
  [v7 transcriptCollectionViewController:self willBeginImpactEffectAnimationWithSendAnimationContext:v5];
}

- (void)sendAnimationManagerDidStopAnimation:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  v7 = [v6 currentEffect];

  if (!v7)
  {
    [(CKTranscriptCollectionViewController *)self setShouldUseOpaqueMask:[(CKTranscriptCollectionViewController *)self _canUseOpaqueMask]];
  }

  v8 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  [v8 endHoldingUpdatesForKey:@"CKFullscreenUpdatesImpactAnimation"];

  v9 = [(CKTranscriptCollectionViewController *)self delegate];
  [v9 transcriptCollectionViewController:self didEndImpactEffectAnimationWithSendAnimationContext:v5];

  [(CKTranscriptCollectionViewController *)self setHiddenBalloonViews:0];

  [(CKTranscriptCollectionViewController *)self reloadData];
}

- (void)setPoppedBalloonGUIDHiddenUntilNextChatItemUpdate:(id)a3
{
  v5 = a3;
  poppedBalloonGUIDHiddenUntilNextChatItemUpdate = self->_poppedBalloonGUIDHiddenUntilNextChatItemUpdate;
  v7 = v5;
  if (poppedBalloonGUIDHiddenUntilNextChatItemUpdate != v5)
  {
    if (poppedBalloonGUIDHiddenUntilNextChatItemUpdate)
    {
      [(CKTranscriptCollectionViewController *)self setChatItemHidden:0 forChatItemGUID:?];
    }

    objc_storeStrong(&self->_poppedBalloonGUIDHiddenUntilNextChatItemUpdate, a3);
    if (self->_poppedBalloonGUIDHiddenUntilNextChatItemUpdate)
    {
      [(CKTranscriptCollectionViewController *)self setChatItemHidden:1 forChatItemGUID:?];
    }
  }
}

- (void)transcriptBalloonCell:(id)a3 didTranslateBalloonByDelta:(double)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CKTranscriptCollectionViewController_transcriptBalloonCell_didTranslateBalloonByDelta___block_invoke;
  aBlock[3] = &unk_1E72F2830;
  aBlock[4] = self;
  *&aBlock[5] = a4;
  v7 = _Block_copy(aBlock);
  v8 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 visibleAssociatedMessageChatItems];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v7[2](v7, *(*(&v16 + 1) + 8 * v13++), a4);
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  v14 = [v8 messageHighlightChatItem];

  if (v14)
  {
    v15 = [v8 messageHighlightChatItem];
    (v7)[2](v7, v15, a4);
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

- (void)transcriptBalloonCell:(id)a3 didEndBalloonSwipeWithDelta:(double)a4 swipeVelocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v9];
  v11 = [v10 IMChatItem];
  v26 = [v11 guid];

  v12 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [v10 visibleAssociatedMessageChatItems];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v27 + 1) + 8 * v17) IMChatItem];
        v19 = [v18 guid];
        [v12 addObject:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v15);
  }

  v20 = [v9 balloonView];
  v21 = objc_alloc_init(CKInlineReplyTransitionProperties);
  [(CKInlineReplyTransitionProperties *)v21 setInitialBalloonOffsetX:a4];
  v31 = v26;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [(CKInlineReplyTransitionProperties *)v21 setChatItemGUIDs:v22];

  v23 = [v12 copy];
  [(CKInlineReplyTransitionProperties *)v21 setAssociatedChatItemGUIDs:v23];

  [(CKInlineReplyTransitionProperties *)v21 setSwipeVelocity:x, y];
  v24 = [(CKTranscriptCollectionViewController *)self delegate];
  v25 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v20];
  [v24 transcriptCollectionViewController:self balloonView:v20 showInlineReplyForItemWithIndexPath:v25 withReplyTransitionProperties:v21];
}

- (id)transcriptBalloonCell:(id)a3 layoutAttributesForTextBalloonView:(id)a4 messageDisplayViewFrame:(CGRect)a5 inContainerFrame:(CGRect)a6 proposedAttributes:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v14 = [v13 isExpressiveTextEnabled];

  if (v14)
  {
    v15 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v10];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v11 textView];
        v17 = [v16 ck_hasPlayingOrPausedTextAnimator];

        if (v17)
        {
          [v11 alignmentRectInsets];
          v49 = v19;
          v50 = v18;
          v21 = v20;
          v23 = v22;
          [v11 textAlignmentInsets];
          v47 = v25;
          v48 = v24;
          v27 = v26;
          v29 = v28;
          v30 = [v11 textView];
          [v30 _customRenderBounds];
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
          [v12 setMessageDisplayViewSize:{v39, v49 - v47 + v50 - v48 + CGRectGetHeight(v53)}];
          [v12 setWantsFrameClamping:0];
        }

        else
        {
          [v15 size];
          v41 = v40;
          v43 = v42;
          [v11 tailInsetsForPillSize:?];
          [v12 setMessageDisplayViewSize:{v41, v45 + v43 + v44}];
        }
      }
    }
  }

  return v12;
}

- (void)didTapTranscriptActionButtonCell:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__33;
  v38 = __Block_byref_object_dispose__33;
  v39 = 0;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForVisibleItems];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __73__CKTranscriptCollectionViewController_didTapTranscriptActionButtonCell___block_invoke;
  v30[3] = &unk_1E72F2790;
  v7 = v5;
  v31 = v7;
  v8 = v4;
  v32 = v8;
  v33 = &v34;
  [v6 enumerateObjectsUsingBlock:v30];

  v9 = v35[5];
  if (v9)
  {
    v10 = MEMORY[0x1E696AC88];
    v11 = [v9 item];
    v12 = [v10 indexPathForItem:v11 + 1 inSection:{objc_msgSend(v35[5], "section")}];
    v13 = [(CKTranscriptCollectionViewController *)self balloonViewAtIndexPath:v12];
    v14 = [(CKTranscriptCollectionViewController *)self chatItems];
    v15 = [v14 objectAtIndex:{objc_msgSend(v12, "item")}];

    if (v15 && v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v13;
        v17 = [(CKTranscriptCollectionViewController *)self delegate];
        v18 = objc_opt_respondsToSelector();

        if (v18)
        {
          v19 = [(CKTranscriptCollectionViewController *)self delegate];
          v20 = [v16 currentAssetReference];
          [v19 transcriptCollectionViewController:self didTapPhotoStackButtonForChatItem:v15 assetReference:v20];
        }

        v21 = [v15 transcriptOrientation];
        [(CKTranscriptCollectionViewController *)self _trackPhotoStackEvent:*MEMORY[0x1E69A7508] forStackBalloonView:v16 transcriptOrientation:v21];

LABEL_20:
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [(CKTranscriptCollectionViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v25 transcriptCollectionViewController:self didTapPhotoStackButtonForPendingMomentShareChatItem:v15];
        }

        goto LABEL_20;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [v8 attributedText];
        v28 = [v27 string];
        v29 = v35[5];
        *buf = 138412546;
        v41 = v28;
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
      v23 = [v8 attributedText];
      v24 = [v23 string];
      *buf = 138412290;
      v41 = v24;
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

- (void)showGridForChatItem:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(CKTranscriptCollectionViewController *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [(CKTranscriptCollectionViewController *)self delegate];
        v10 = [v6 currentAssetReference];
        [v9 transcriptCollectionViewController:self didTapPhotoStackButtonForChatItem:v4 assetReference:v10];
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
      v6 = [(CKTranscriptCollectionViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 transcriptCollectionViewController:self didTapPhotoStackButtonForPendingMomentShareChatItem:v4];
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
      v13 = v4;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to locate balloon view for chatItem: %@", &v12, 0xCu);
    }
  }

LABEL_15:
}

- (void)didPinchPhotoStackCell:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__33;
  v27 = __Block_byref_object_dispose__33;
  v28 = 0;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForVisibleItems];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__CKTranscriptCollectionViewController_didPinchPhotoStackCell___block_invoke;
  v19[3] = &unk_1E72F2790;
  v7 = v5;
  v20 = v7;
  v8 = v4;
  v21 = v8;
  v22 = &v23;
  [v6 enumerateObjectsUsingBlock:v19];

  if (v24[5])
  {
    v9 = [(CKTranscriptCollectionViewController *)self balloonViewAtIndexPath:?];
    v10 = [(CKTranscriptCollectionViewController *)self chatItems];
    v11 = [v10 objectAtIndex:{objc_msgSend(v24[5], "item")}];

    if (v11 && v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [(CKTranscriptCollectionViewController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = [(CKTranscriptCollectionViewController *)self delegate];
        v15 = [v9 currentAssetReference];
        [v14 transcriptCollectionViewController:self didPinchPhotoStackForChatItem:v11 assetReference:v15];
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

- (void)recoverJunkPressedInTranscriptCell:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v8 = [(CKTranscriptCollectionViewController *)self conversation];
  v17[0] = v8;
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

- (unint64_t)dateCellRequestedScheduledMessageCount:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self chatItemForCell:a3];
  v5 = [(CKTranscriptCollectionViewController *)self chat];
  v6 = [v4 IMChatItem];
  v7 = [v5 messagesForScheduledMessageSectionWithTranscriptItem:v6];

  v8 = [v7 count];
  return v8;
}

- (void)dateCellRequestedScheduledMessageModification:(id)a3 scheduleType:(unint64_t)a4 deliveryTime:(id)a5
{
  v8 = a5;
  v13 = [(CKTranscriptCollectionViewController *)self chatItemForCell:a3];
  v9 = [(CKTranscriptCollectionViewController *)self chat];
  v10 = [v13 IMChatItem];
  v11 = [v9 messagesForScheduledMessageSectionWithTranscriptItem:v10];

  v12 = [(CKTranscriptCollectionViewController *)self chat];
  [v12 editScheduledMessageItems:v11 scheduleType:a4 deliveryTime:v8];
}

- (void)dateCellRequestedDeleteAllMessages:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(CKTranscriptCollectionViewController *)self chatItemForCell:a3];
  v5 = [(CKTranscriptCollectionViewController *)self chat];
  v6 = [v4 IMChatItem];
  v7 = [v5 messagesForScheduledMessageSectionWithTranscriptItem:v6];

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
        v14 = [(CKTranscriptCollectionViewController *)self chat];
        [v14 cancelScheduledMessageItem:v13 cancelType:1];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)deleteConversationPressedInTranscriptCell:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v8 = [(CKTranscriptCollectionViewController *)self conversation];
  v17[0] = v8;
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

- (void)keyTransparencyTranscriptCellDidRequestVerification:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self conversation];
  [CKKeyTransparencyErrorUtilities showKTContactVerificationUIForConversation:v4 fromViewController:self];
}

- (void)keyTransparencyTranscriptCellDidSelectIgnoreFailures:(id)a3
{
  v9 = a3;
  v4 = [(CKTranscriptCollectionViewController *)self conversation];
  v5 = [v4 chat];
  v6 = [CKKeyTransparencyErrorUtilities ktClearWarningAlertControllerForChat:v5 confirmationHandler:0];

  if (!CKIsRunningInMacCatalyst() && +[CKUtilities isIpad])
  {
    v7 = [v6 popoverPresentationController];
    v8 = [v9 actionButton];
    [v7 setSourceView:v8];
    [v8 bounds];
    [v7 setSourceRect:?];
  }

  [(CKTranscriptCollectionViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)keyTransparencyConversationViewControllerDidComplete:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self conversation];
  v5 = [v4 chat];
  [v5 fetchKTStatus];

  [(CKTranscriptCollectionViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_967_1];
}

- (BOOL)_allowsEffectAutoPlayback
{
  v2 = [(CKTranscriptCollectionViewController *)self chat];
  v3 = [v2 isStewieChat];

  if (v3)
  {
    return 0;
  }

  return CKReduceMotionAutoplayEnabled();
}

- (BOOL)_pluginChatItem:(id)a3 hasControllerConformingToProtocol:(id)a4
{
  v5 = MEMORY[0x1E69A5AD0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstance];
  v9 = [v7 type];

  v10 = [v8 balloonPluginForBundleID:v9];
  v11 = [v10 bubbleClass];

  LOBYTE(v10) = [v11 conformsToProtocol:v6];
  return v10;
}

- (void)configureCell:(id)a3 forCKChatItem:(id)a4 atIndexPath:(id)a5 animated:(BOOL)a6 animationDuration:(double)a7 animationCurve:(int64_t)a8
{
  LODWORD(v213) = a6;
  v238 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v222 = a5;
  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 isExpressiveTextEnabled];

  if (v15)
  {
    if (![v222 section])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v12;
        [v16 setTextEffectsDelegate:self];
      }
    }
  }

  [(CKTranscriptCollectionViewController *)self _configureEditMarginInsetsForCell:v12, v213];
  v217 = [v222 item];
  v17 = [(CKTranscriptCollectionViewController *)self traitCollection];
  [v13 setTranscriptTraitCollection:v17];

  v18 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v19 = [v18 isDiffableTranscriptDataSourceEnabled];

  if ((v19 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 setMayReparentPluginViews:{-[CKTranscriptCollectionViewController isPerformingRegenerateOrReloadOnlyUpdate](self, "isPerformingRegenerateOrReloadOnlyUpdate") ^ 1}];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v221 = v13;
    v20 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v21 = [v221 extensibleViewControllerForContext:v20];

    if (v21)
    {
      v22 = [v21 parentViewController];
      if (v22)
      {
      }

      else
      {
        v23 = [v21 view];
        v24 = [v23 window];

        if (v24)
        {
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v21 view];
              v27 = [v21 view];
              v28 = [v27 superview];
              v29 = [(CKTranscriptCollectionViewController *)self view];
              *buf = 138413314;
              v229 = v21;
              v230 = 2112;
              v231 = v26;
              v232 = 2112;
              v233 = v28;
              v234 = 2112;
              v235 = self;
              v236 = 2112;
              v237 = v29;
              _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Adding detached view controller %@ (view:%@, superview:%@) to transcript collection view controller %@ (view:%@)", buf, 0x34u);
            }
          }

          v30 = [v21 view];
          [v30 removeFromSuperview];
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
    v31 = [v13 isFromMe] ^ 1;
  }

  else
  {
    v31 = 1;
  }

  v32 = +[CKUIBehavior sharedBehaviors];
  if ([v32 shouldShowContactPhotosInTranscript])
  {
    v33 = [(CKTranscriptCollectionViewController *)self chat];
    v34 = [v33 chatStyle] != 45;
  }

  else
  {
    v34 = 0;
  }

  v35 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v36 = [v35 isMergeBusinessSenderIndiaEnabled];

  if (v36)
  {
    v37 = [(CKTranscriptCollectionViewController *)self chat];
    v38 = [v37 isMergedBusinessThread];

    v34 = v34 | v38;
  }

  if (objc_opt_respondsToSelector())
  {
    [v12 setChatEligibleForContactImage:v34];
  }

  if (v34)
  {
    if (objc_opt_respondsToSelector())
    {
      [v12 setWantsContactImageLayout:v31];
    }

    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v39 = [v13 hasTail];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = [v13 shouldShowGroupAvatar];
        }

        v40 = v31 & v39;
        if (v40 == 1)
        {
          v41 = [v13 contact];
        }

        else
        {
          v41 = 0;
        }

        v42 = [v13 sender];
        v43 = [v42 ID];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v45 = [v13 balloonControllerForContext:v44];

          if (objc_opt_respondsToSelector())
          {
            v46 = [v45 wantsTranscriptGroupMonograms];
          }

          else
          {
            v46 = 0;
          }

          v40 = v40 & v46;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = v13;
          v48 = v47;
          if (v40)
          {
            v49 = [v47 layoutRecipe];
            v40 = [v49 isLastItem];
          }
        }

        [v12 setShowAvatarView:v40 withContact:v41 preferredHandle:v43 messageCellAvatarDelegate:self];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [(CKTranscriptCollectionViewController *)self chatItems];
      v52 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:objc_opt_class() beforeIndex:v217 inChatItems:v51];
      v53 = [(CKTranscriptCollectionViewController *)self _nextChatItemOfType:objc_opt_class() afterIndex:v217 inChatItems:v51];
      v54 = v53;
      v55 = 0;
      if (v52 && v53)
      {
        if (([v53 itemIsReply] & 1) != 0 || objc_msgSend(v54, "itemIsReplyCount"))
        {
          v56 = [v52 IMChatItem];
          v57 = [v56 threadGroupIdentifier];

          v58 = [v54 IMChatItem];
          v59 = [v58 threadIdentifier];

          v55 = [v57 isEqualToString:v59];
        }

        else
        {
          v55 = 0;
        }
      }
    }

    else
    {
      v51 = IMLogHandleForCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(CKTranscriptCollectionViewController *)v13 configureCell:v51 forCKChatItem:v60 atIndexPath:v61 animated:v62 animationDuration:v63 animationCurve:v64, v65];
      }

      v55 = 0;
    }

    [v50 setWantsOffsetForReplyLine:v55];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v66 = v12;
    [(CKTranscriptCollectionViewController *)self _configureScheduledDateCell:v66 forItemAtIndexPath:v222];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67 = v12;
    v68 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
    v69 = [v68 currentEffect];
    v70 = [v69 effectIsDark];

    [v67 setShouldConfigureForDarkFSM:v70];
    v71 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    [v67 configureForChatItem:v13 context:v71 animated:v214 animationDuration:a8 animationCurve:a7];

    [v67 setAnimationDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v72 = v12;
    v73 = [v72 balloonView];
    v74 = [(CKTranscriptCollectionViewController *)self traitCollection];
    [v73 updateBalloonForTraitCollection:v74];

    [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
    [v73 setBackgroundLuminance:?];
    [v72 setBalloonCellDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v75 = v12;
    [v75 setFailureButtonDelegate:self];
  }

  if (v221)
  {
    v76 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v77 = [v221 extensibleViewControllerForContext:v76];

    if (v77)
    {
      v78 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
      v79 = [v221 extensibleViewForContext:v78];

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

  [v12 contentAlignmentRect];
  [(CKTranscriptCollectionViewController *)self _balloonHorizontalOffsetForParentChatItem:v13 contentAlignmentRect:0 responsibleChatItems:0 individualOffsets:?];
  v81 = v80;
  [(CKTranscriptCollectionViewController *)self marginInsets];
  v83 = v82;
  v85 = v84;
  v86 = +[CKUIBehavior sharedBehaviors];
  [v86 minTranscriptMarginInsets];
  v88 = v87;
  v90 = v89;

  if ([v13 transcriptOrientation])
  {
    if ([v13 transcriptOrientation] == 2)
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

  [v12 setAssociatedItemOffset:v81];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setMayReparentPluginViews:1];
  }

  v94 = [MEMORY[0x1E69A7FC8] sharedManager];
  v95 = [v94 isFeatureEnabled];

  if (v95)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v96 = [v12 balloonView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v97 = v96;
        [v97 setObscurableBalloonDelegate:self];
        [v97 updateObscuredStateForChatItem:v13];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v98 = [v13 previousPluginChatItem];
    if (v98)
    {
      v99 = [(CKTranscriptCollectionViewController *)self snapshotOfPluginBeingReplacedByBreadcrumb];
      [v12 setPreviousPluginSnapshot:v99];
    }
  }

  v220 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v220 marginInsets];
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v108 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    v109 = [v13 balloonControllerForContext:v108];

    LOBYTE(v108) = [v109 wantsTranscriptTimestampDrawer];
    if ((v108 & 1) == 0)
    {
LABEL_108:
      v110 = 0;
      goto LABEL_111;
    }
  }

  else if (![v13 wantsDrawerLayout])
  {
    goto LABEL_108;
  }

  v111 = +[CKUIBehavior sharedBehaviors];
  [v111 transcriptDrawerWidthForMarginInsets:{v101, v103, v105, v107}];
  v110 = v107 <= v112 - v107;

LABEL_111:
  [v12 setWantsDrawerLayout:v110];
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    [v12 setIsRetractionStamp:objc_opt_isKindOfClass() & 1];
  }

  if (objc_opt_respondsToSelector())
  {
    v113 = [v12 notifyAnywayButton];
    [v113 addTarget:self action:sel_touchUpInsideNotifyAnywayButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    v114 = [v12 toggleButton];
    [v114 addTarget:self action:sel_touchUpInsideShowHideTranslationButton_ forControlEvents:64];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setDelegate:self];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 wantsAddToContactsButton])
  {
    v115 = v13;
    if (objc_opt_respondsToSelector() & 1) != 0 && (-[CKTranscriptCollectionViewController delegate](self, "delegate"), v116 = objc_claimAutoreleasedReturnValue(), v117 = objc_opt_respondsToSelector(), v116, (v117) && (-[CKTranscriptCollectionViewController delegate](self, "delegate"), v118 = objc_claimAutoreleasedReturnValue(), [v118 transcriptCollectionViewController:self addToContactsMenuForSenderChatItem:v115], v119 = objc_claimAutoreleasedReturnValue(), v118, v119))
    {
      [v12 setPrimaryButtonMenu:v119];
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
      [v12 setOnButtonTapBlock:v225];

      objc_destroyWeak(&v227);
      objc_destroyWeak(buf);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v120 = [v12 statusButton];
    [v120 addTarget:self action:sel_touchUpInsideCellStatusButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    v121 = [v12 stampButton];
    [v121 addTarget:self action:sel_touchUpInsideCellStampButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    v122 = [v12 reportSpamButton];
    [v122 addTarget:self action:sel_touchUpInsideCellReportSpamButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    v123 = [v12 leaveConversationButton];
    v124 = v123 == 0;

    if (!v124)
    {
      v125 = [v12 leaveConversationButton];
      [v125 addTarget:self action:sel_touchUpInsideCellLeaveConversationButton_ forControlEvents:64];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v126 = [v12 buttonsContainer];
    v127 = v126 == 0;

    if (!v127)
    {
      v128 = [(CKTranscriptCollectionViewController *)self conversation];
      v129 = [(CKTranscriptCollectionViewController *)self generateConversationFooterActions:v128];

      v130 = [v12 buttonsContainer];
      [v130 configureWithActions:v129];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v131 = [v12 blockContactButton];
    [v131 addTarget:self action:sel_touchUpInsideCellBlockContactButton_ forControlEvents:64];
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, self);
    v223[0] = MEMORY[0x1E69E9820];
    v223[1] = 3221225472;
    v223[2] = __122__CKTranscriptCollectionViewController_configureCell_forCKChatItem_atIndexPath_animated_animationDuration_animationCurve___block_invoke_2;
    v223[3] = &unk_1E72F2880;
    objc_copyWeak(&v224, buf);
    [v12 setQuickActionButtonTappedCallback:v223];
    objc_destroyWeak(&v224);
    objc_destroyWeak(buf);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (v217 != 0)) == 1)
  {
    v132 = v12;
    v133 = [(CKTranscriptCollectionViewController *)self chatItems];
    v134 = v217 - 1;
    v135 = [v133 objectAtIndex:v217 - 1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      do
      {
        v159 = v134;
        v136 = [v133 objectAtIndex:v134];

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v161 = v134-- != 0;
        v135 = v136;
      }

      while ((v161 & ~isKindOfClass & 1) != 0);
      if (!v159)
      {
        v137 = 0;
        goto LABEL_149;
      }
    }

    else
    {
      v136 = v135;
    }

    [v136 size];
    [v132 setPrevBalloonWidth:?];
    v137 = [v136 itemIsReplyContextPreview];
LABEL_149:
    [v132 setPreviousBalloonIsReplyContextPreview:v137];
  }

  v138 = +[CKUIBehavior sharedBehaviors];
  if ([v138 disableTranscriptTimestamps])
  {
LABEL_153:

    goto LABEL_154;
  }

  v139 = objc_opt_respondsToSelector();

  if (v139)
  {
    v138 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v138 marginInsets];
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v147 = v146;
    [v138 contentOffset];
    v149 = v148;
    v150 = +[CKUIBehavior sharedBehaviors];
    [v150 transcriptDrawerMaxContentOffsetXForMarginInsets:{v141, v143, v145, v147}];
    [v12 setDrawerPercentRevealed:v149 / v151];

    goto LABEL_153;
  }

LABEL_154:
  v152 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v152 isGroupTypingIndicatorsEnabled])
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

      v154 = [(CKTranscriptCollectionViewController *)self chat];
      v152 = [v154 typingTrackingController];

      v155 = v12;
      if (v155)
      {
        v218 = [v152 currentTypingHandles];
        v156 = [v152 handleToRemoveViaAnimation];

        v157 = IMOSLoggingEnabled();
        if (v156)
        {
          if (v157)
          {
            v158 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v229 = v218;
              _os_log_impl(&dword_19020E000, v158, OS_LOG_TYPE_INFO, "Preparing for group typing avatar animation with new handles: %@", buf, 0xCu);
            }
          }

          [v155 prepareForAvatarAnimationWithNewHandles:v218];
        }

        else
        {
          if (v157)
          {
            v163 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v229 = v218;
              _os_log_impl(&dword_19020E000, v163, OS_LOG_TYPE_INFO, "Setting group typing avatars with new handles: %@", buf, 0xCu);
            }
          }

          if ([v218 count] == 1)
          {
            v164 = [v152 pluginPayloads];
            v165 = [v218 firstObject];
            v166 = [v165 ID];
            v167 = [v164 objectForKey:v166];

            v168 = [v167 pluginBundleID];
            v169 = [v167 type];
            v170 = [v167 typingIndicatorIcon];
            v171 = [CKTypingPluginChatItem indicatorLayerForPluginBundleID:v168 type:v169 typingIndicatorData:v170];
          }

          else
          {
            v171 = 0;
          }

          [v155 setTypingHandles:v218 pluginIconLayer:v171 shouldAnimateRemovals:1];
        }

        [v155 setGroupAvatarViewFromCurrentViewController];
        if (IMOSLoggingEnabled())
        {
          v172 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
          {
            v173 = [v155 recursiveDescription];
            v174 = [v155 superview];
            v175 = [v174 recursiveDescription];
            v176 = [v155 subviews];
            *buf = 138412802;
            v229 = v173;
            v230 = 2112;
            v231 = v175;
            v232 = 2112;
            v233 = v176;
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
          v178 = [v155 subviews];
          *buf = 138412290;
          v229 = v178;
          _os_log_impl(&dword_19020E000, v177, OS_LOG_TYPE_INFO, "Returning cell subview = %@", buf, 0xCu);
        }
      }
    }
  }

LABEL_190:
  if (objc_opt_respondsToSelector())
  {
    v179 = [v12 balloonView];
    if (objc_opt_respondsToSelector())
    {
      v180 = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
      [v179 setGradientReferenceView:v180];
    }

    [v179 setCanUseOpaqueMask:{-[CKTranscriptCollectionViewController shouldUseOpaqueMask](self, "shouldUseOpaqueMask")}];
    v181 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v182 = [v181 isSwipeToReplyEnabled];

    if (v182 && !CKIsRunningInMessagesNotificationExtension() && !CKIsRunningInMessagesNotificationViewService())
    {
      v183 = [v179 longPressGestureRecognizer];
      v184 = [v220 panGestureRecognizer];
      [v183 requireGestureRecognizerToFail:v184];
    }

    v185 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
    v215 = [v185 audioController];

    if ([v179 isAudioMessage])
    {
      v186 = v179;
      v187 = [v215 currentMediaObject];
      v188 = [v187 transferGUID];
      v189 = [v13 mediaObject];
      v190 = [v189 transferGUID];
      v191 = [v188 isEqualToString:v190];

      if (v191)
      {
        [v215 currentMediaObjectTime];
        [v186 setTime:?];
        v192 = [v215 isPlaying];
      }

      else
      {
        [v186 setTime:0.0];
        v192 = 0;
      }

      [v186 setPlaying:{v192, v215}];
      [(CKTranscriptCollectionViewController *)self configureSpeakerButtonCell:v12 forItemAtIndexPath:v222];
    }

    [v179 setDelegate:{self, v215}];
    [v179 prepareForDisplayIfNeeded];
    [v220 bounds];
    [v220 convertRect:v179 toView:?];
    [v179 cullSubviewsWithVisibleBounds:?];
    v193 = +[CKPrintController sharedInstance];
    v194 = [v193 isPrinting];

    if ((v194 & 1) == 0)
    {
      v195 = [(CKTranscriptCollectionViewController *)self delegate];
      [v195 transcriptCollectionViewController:self targetAlphaForChatItem:v13];
      v197 = v196;

      if (v197 != -1.0)
      {
        [v179 setAlpha:v197];
      }
    }

    v198 = +[CKApplicationState isResizing];
    v199 = [v179 dragInteraction];

    if (v199)
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
      v202 = [(CKTranscriptCollectionViewController *)self dragInteractionDelegate];
      v203 = [v201 initWithDelegate:v202];

      [v179 setDragInteraction:v203];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v12 startAnimatingActivityIndicator];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setAnimationPauseReasons:{-[CKTranscriptCollectionViewController contentAnimationPauseReasons](self, "contentAnimationPauseReasons")}];
  }

  v204 = [(CKTranscriptCollectionViewController *)self hiddenItems];
  v205 = [v204 containsIndex:{objc_msgSend(v222, "item")}];

  if (v205)
  {
    v206 = 0.0;
  }

  else
  {
    v206 = 1.0;
  }

  v207 = [v12 contentView];
  [v207 setAlpha:v206];

  [(CKTranscriptCollectionViewController *)self _hideBalloonViewIfNecessaryForCell:v12 indexPath:v222];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(CKTranscriptCollectionViewController *)self transitioningFromComposing])
  {
    v208 = [v13 IMChatItem];
    v209 = [v208 guid];

    v210 = [(CKTranscriptCollectionViewController *)self pluginSnapshots];
    v211 = [v210 objectForKeyedSubscript:v209];
  }

  else
  {
    v211 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v212 = [v12 balloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v212 setPluginSnapshotView:v211];
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

- (id)_nextChatItemOfType:(Class)a3 afterIndex:(int64_t)a4 inChatItems:(id)a5
{
  v6 = a5;
  v7 = [v6 count];
  v8 = a4 + 1;
  if (v8 >= v7)
  {
    v11 = 0;
  }

  else
  {
    v9 = v7;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v8];
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

- (id)_previousChatItemOfType:(Class)a3 beforeIndex:(int64_t)a4 inChatItems:(id)a5
{
  v5 = a4 - 1;
  if (a4 < 1)
  {
    v8 = 0;
  }

  else
  {
    do
    {
      v7 = [a5 objectAtIndexedSubscript:v5];
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

- (void)_hideBalloonViewIfNecessaryForCell:(id)a3 indexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CKTranscriptCollectionViewController *)self hiddenBalloonViews];
  if ([v7 count])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    v9 = [(CKTranscriptCollectionViewController *)self hiddenBalloonViews];
    v10 = [v9 containsIndex:{objc_msgSend(v6, "item")}];

    v7 = [v11 balloonView];
    [v7 setHidden:v10];
  }

LABEL_5:
}

- (void)_configureEditMarginInsetsForCell:(id)a3
{
  v22 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v22;
  if (isKindOfClass)
  {
    v6 = v22;
    v7 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v6 _ck_setEditing:{objc_msgSend(v7, "_ck_isEditing")}];

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
    v5 = v22;
  }
}

- (void)configureAssociatedCell:(id)a3 forChatItem:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(CKTranscriptCollectionViewController *)self _configureEditMarginInsetsForCell:v8];
  v11 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  v12 = [v11 layoutAttributesForItemAtIndexPath:v10];

  v13 = [(CKTranscriptCollectionViewController *)self chatItems];
  v14 = [v9 associatedChatItemGUID];
  v15 = [v9 associatedMessageRange];
  v17 = [v13 ck_indexOfChatItemContainingIMChatItemGUID:v14 associatedMessageRange:{v15, v16}];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [(CKTranscriptCollectionViewController *)self chatItems];
    v19 = [v18 objectAtIndex:v17];

    [v8 contentAlignmentRect];
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

      if ([v22 containsObject:v9])
      {
        v33 = [v23 objectAtIndex:{objc_msgSend(v22, "indexOfObject:", v9)}];
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

      [v8 setCumulativeAssociatedOffset:v21];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setParentIsFromMe:{objc_msgSend(v19, "isFromMe")}];
    }

    [v19 stickerReactionInsets];
    [v8 setStickerReactionInsetsForParent:?];
  }

  [v12 parentChatItemSize];
  [v8 setParentSize:?];
  [v12 parentRotationOffset];
  [v8 setParentRotationOffset:?];
  [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
  [v8 setTranscriptBackgroundLuminance:?];
  v36 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
  [v8 configureForChatItem:v9 context:v36 animated:0 animationDuration:3 animationCurve:0.0];

  [v8 setDelegate:self];
  v37 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v37 marginInsets];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = 0;
  if ([v9 wantsDrawerLayout])
  {
    v47 = +[CKUIBehavior sharedBehaviors];
    [v47 transcriptDrawerWidthForMarginInsets:{v39, v41, v43, v45}];
    v46 = v45 <= v48 - v45;
  }

  [v8 setWantsDrawerLayout:v46];
  v49 = +[CKUIBehavior sharedBehaviors];
  if ([v49 shouldShowContactPhotosInTranscript])
  {
    v50 = [(CKTranscriptCollectionViewController *)self chat];
    if ([v50 chatStyle] == 45)
    {
      v51 = 0;
    }

    else
    {
      v51 = [v9 parentMessageIsFromMe] ^ 1;
    }
  }

  else
  {
    v51 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 setWantsContactImageLayout:v51];
  }

  v52 = [(CKTranscriptCollectionViewController *)self delegate];
  [v52 transcriptCollectionViewController:self targetAlphaForChatItem:v9];
  v54 = v53;

  if (v54 != -1.0)
  {
    if (objc_opt_respondsToSelector())
    {
      v55 = [v8 balloonView];
      if (objc_opt_respondsToSelector())
      {
        v56 = [(CKTranscriptCollectionViewController *)self gradientReferenceView];
        [v55 setGradientReferenceView:v56];
      }

      [v55 setCanUseOpaqueMask:{-[CKTranscriptCollectionViewController _canUseOpaqueMask](self, "_canUseOpaqueMask")}];
      [v55 setDelegate:self];
      [v55 prepareForDisplayIfNeeded];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_43;
      }

      v55 = [v8 imageView];
    }

    [v55 setAlpha:v54];
  }

LABEL_43:
  v57 = +[CKUIBehavior sharedBehaviors];
  if (([v57 disableTranscriptTimestamps] & 1) == 0)
  {
    v58 = objc_opt_respondsToSelector();

    if ((v58 & 1) == 0)
    {
      goto LABEL_47;
    }

    v57 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v57 marginInsets];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    [v57 contentOffset];
    v68 = v67;
    v69 = +[CKUIBehavior sharedBehaviors];
    [v69 transcriptDrawerMaxContentOffsetXForMarginInsets:{v60, v62, v64, v66}];
    [v8 setDrawerPercentRevealed:v68 / v70];
  }

LABEL_47:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setFailureButtonDelegate:self];
  }

  [(CKTranscriptCollectionViewController *)self setHiddenAssociatedItemsForMessageEditing:self->_hiddenAssociatedItemsForMessageEditing];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v71 = v8;
    v72 = [v9 guid];
    v73 = [(CKTranscriptCollectionViewController *)self stickerGUIDsHiddenDuringStickerAddAnimation];
    v74 = [v73 containsObject:v72];

    if (v74)
    {
      v75 = [v71 associatedItemView];
      [v75 setHidden:1];
    }

    v76 = objc_alloc(MEMORY[0x1E69DC988]);
    v77 = [(CKTranscriptCollectionViewController *)self dragInteractionDelegate];
    v78 = [v76 initWithDelegate:v77];

    v79 = [v71 associatedItemView];
    [v79 setInteractions:MEMORY[0x1E695E0F0]];

    v80 = [v71 associatedItemView];
    [v80 addInteraction:v78];

    v81 = [v71 associatedItemView];
    [v81 setUserInteractionEnabled:1];
  }
}

- (double)_balloonHorizontalOffsetForParentChatItem:(id)a3 contentAlignmentRect:(CGRect)a4 responsibleChatItems:(id *)a5 individualOffsets:(id *)a6
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v65 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v49 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = [v7 visibleAssociatedMessageChatItems];
  v10 = [v9 countByEnumeratingWithState:&v60 objects:v64 count:16];
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
          objc_enumerationMutation(v9);
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

        v18 = [v7 transcriptOrientation];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 isReaction])
        {
          [v7 size];
          v20 = v19;
          v22 = v21;
          [v7 stickerReactionInsets];
          [CKAssociatedMessageChatItem locationForStickerReactionWithParentFrame:v53 reactionIndex:v18 == 2 parentIsFromMe:v13 insets:v14, v20, v22, v23, v24, v25, v26];
          v28 = v27;
          if (v18 == 2)
          {
            if (v27 > v20)
            {
              v29 = v27 - v20;
              [v49 addObject:v17];
              v30 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
              [v8 addObject:v30];

              if (v29 >= v15)
              {
                v15 = v29;
              }
            }
          }

          else if (!v18 && v27 < 0.0)
          {
            [v49 addObject:v17];
            v31 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
            [v8 addObject:v31];

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
          [v7 size];
          v37 = v36;
          v39 = v38;
          v40 = [v17 transcriptOrientation];
          v54[0] = v56;
          v54[1] = v57;
          v54[2] = v58;
          v55 = v59;
          [CKAssociatedStickerChatItem computeHorizontalStickerFrameOffset:v54 parentSize:v40 forPositioningWithinContentAlignmentRect:v13 geometryDescriptor:v14 forTranscriptOrientation:v33, v35, v37, v39, *&x, *&y, *&width, *&height];
          v42 = v41;
          if (v18 == 2)
          {
            if (v41 < 0.0)
            {
              [v49 addObject:v17];
              v44 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
              [v8 addObject:v44];
            }

            if (v42 < v15)
            {
              v15 = v42;
            }
          }

          else if (!v18)
          {
            if (v41 > 0.0)
            {
              [v49 addObject:v17];
              v43 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
              [v8 addObject:v43];
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
      v11 = [v9 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v11);
  }

  else
  {
    v15 = 0.0;
  }

  if (a5)
  {
    *a5 = [v49 copy];
  }

  if (a6)
  {
    *a6 = [v8 copy];
  }

  return v15;
}

- (void)_indicesOfReplyChatItemsToInsertWithoutFading:(id)a3 inserted:(id)a4 outInsertIndices:(id *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __112__CKTranscriptCollectionViewController__indicesOfReplyChatItemsToInsertWithoutFading_inserted_outInsertIndices___block_invoke;
  v11[3] = &unk_1E72F28A8;
  v10 = v9;
  v12 = v10;
  [v7 enumerateObjectsAtIndexes:v8 options:0 usingBlock:v11];

  if (a5)
  {
    *a5 = [v10 copy];
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

- (void)_indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading:(id)a3 inserted:(id)a4 removed:(id)a5 outInsertIndices:(id *)a6 outRemoveIndices:(id *)a7
{
  v74 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v49 = a4;
  v12 = a5;
  v46 = a7;
  v47 = a6;
  if (a6 | a7)
  {
    v48 = v12;
    v54 = [MEMORY[0x1E695DF70] array];
    v52 = [MEMORY[0x1E695DF70] array];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke;
    v69[3] = &unk_1E72F28A8;
    v15 = v13;
    v70 = v15;
    [v50 enumerateObjectsAtIndexes:v49 options:0 usingBlock:v69];

    v16 = [(CKTranscriptCollectionViewController *)self chatItems];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke_1043;
    v67[3] = &unk_1E72F0918;
    v51 = v14;
    v68 = v51;
    [v16 enumerateObjectsAtIndexes:v48 options:0 usingBlock:v67];

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
          v21 = [v51 objectForKey:v20];
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
          v60 = v54;
          v61 = buf;
          v62 = v23;
          [v22 enumerateIndexesWithOptions:2 usingBlock:v59];
          *(*&buf[8] + 24) = 0;
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __156__CKTranscriptCollectionViewController__indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading_inserted_removed_outInsertIndices_outRemoveIndices___block_invoke_2;
          v55[3] = &unk_1E72F28D0;
          v56 = v52;
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

    if ([v52 count] && IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v52, "count")}];
        *buf = 138412546;
        *&buf[4] = v26;
        *&buf[12] = 2112;
        *&buf[14] = v52;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "The indices to remove unconsumed breadcrumbs are (count: %@): %@", buf, 0x16u);
      }
    }

    if ([v54 count] && IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v52, "count")}];
        *buf = 138412546;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v54;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "The indices to insert unconsumed breadcrumbs are (count: %@): %@", buf, 0x16u);
      }
    }

    obj = [MEMORY[0x1E696AD50] indexSet];
    v51 = [MEMORY[0x1E696AD50] indexSet];
    if ([v54 count])
    {
      v29 = 0;
      do
      {
        v30 = [v54 objectAtIndexedSubscript:v29];
        v31 = [v30 unsignedIntegerValue];

        v32 = [v52 objectAtIndexedSubscript:v29];
        v33 = [v32 unsignedIntegerValue];

        v34 = [v50 objectAtIndexedSubscript:v31];
        v35 = [(CKTranscriptCollectionViewController *)self chatItems];
        v36 = [v35 objectAtIndexedSubscript:v33];
        v37 = [v36 IMChatItem];

        LODWORD(v35) = [v34 isFromMe];
        if (v35 == [v37 isFromMe])
        {
          v38 = v33 + 1;
          while (v38 <= v31)
          {
            v39 = [(CKTranscriptCollectionViewController *)self chatItems];
            v40 = v38 < [v39 count];

            if (!v40)
            {
              break;
            }

            v41 = [(CKTranscriptCollectionViewController *)self chatItems];
            v42 = [v41 objectAtIndex:v38];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            ++v38;
            if (isKindOfClass)
            {
              goto LABEL_31;
            }
          }

          [obj addIndex:v31];
          [v51 addIndex:v33];
        }

LABEL_31:

        ++v29;
      }

      while (v29 < [v54 count]);
    }

    if (v47)
    {
      v44 = obj;
      *v47 = obj;
    }

    if (v46)
    {
      v45 = v51;
      *v46 = v51;
    }

LABEL_37:

    v12 = v48;
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

- (unint64_t)_indexOfBreadcrumbReplacingTranscriptPluginInChatItems:(id)a3 inserted:(id)a4 removed:(id)a5 outIndexOfReplacedPlugin:(unint64_t *)a6 outIndexOfNewPlugin:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a6)
  {
    *a6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a7)
  {
    *a7 = 0x7FFFFFFFFFFFFFFFLL;
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
  v15 = [(CKTranscriptCollectionViewController *)self chatItems];
  v16 = [v15 count];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __157__CKTranscriptCollectionViewController__indexOfBreadcrumbReplacingTranscriptPluginInChatItems_inserted_removed_outIndexOfReplacedPlugin_outIndexOfNewPlugin___block_invoke;
  v41[3] = &unk_1E72F28F8;
  v45 = v16;
  v17 = v15;
  v42 = v17;
  v43 = &v48;
  v44 = v46;
  [v14 enumerateIndexesWithOptions:2 usingBlock:v41];
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
    v20 = v12;
    v32 = v20;
    v34 = v46;
    v35 = &v37;
    [v13 enumerateIndexesUsingBlock:v31];
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
      [v13 enumerateIndexesWithOptions:2 usingBlock:v22];
      if (a6)
      {
        *a6 = v49[3];
      }

      if (a7)
      {
        *a7 = v28[3];
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

- (void)_updatePluginPlaybackManagerForInsertedChatItems:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] && !self->_notifications)
  {
    v36 = [(CKTranscriptCollectionViewController *)self pluginPlaybackManager];
    if (v36)
    {
      v34 = v4;
      v5 = [MEMORY[0x1E695DFA8] set];
      v6 = [(CKTranscriptCollectionViewController *)self collectionView];
      v7 = [v6 indexPathsForVisibleItems];

      v8 = [(CKTranscriptCollectionViewController *)self chatItems];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v9 = v7;
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
              v15 = [v14 item];
              if (v15 >= [v8 count])
              {
                v16 = IMLogHandleForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v19 = [v8 count];
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
                v16 = [v8 objectAtIndex:{objc_msgSend(v14, "item")}];
                v17 = [v16 IMChatItem];
                v18 = [v17 guid];

                if (v18)
                {
                  [v5 addObject:v18];
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
      v4 = v34;
      v20 = v34;
      v21 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v33 = v8;
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
              v26 = [v25 IMChatItem];
              v27 = [v26 guid];
              v28 = [v5 containsObject:v27];

              if (v28)
              {
                v29 = v25;
                v30 = [v29 IMChatItem];
                v31 = [v30 wantsAutoPlayback];

                if (v31)
                {
                  [v36 addPluginItem:v29];
                  v35 = 1;
                }
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v22);
        v32 = v35 ^ 1;
        v8 = v33;
        v4 = v34;
      }

      else
      {
        v32 = 1;
      }

      if (([v36 isPlayingBack] & 1) == 0 && (v32 & 1) == 0)
      {
        [v36 startPlayback];
      }
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self pluginPlaybackDelay];
      [(CKTranscriptCollectionViewController *)self startPluginPlaybackAfterDelay:?];
    }
  }
}

- (void)reloadChatItemsAtIndexes:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v13 = [(CKTranscriptCollectionViewController *)self imChatItems];
  v10 = [MEMORY[0x1E696AC90] indexSet];
  v11 = [MEMORY[0x1E696AC90] indexSet];
  v12 = [MEMORY[0x1E696AC90] indexSet];
  [(CKTranscriptCollectionViewController *)self updateTranscriptChatItems:v13 inserted:v10 removed:v11 reload:v9 regenerate:v12 animated:v5 completion:v8];
}

- (void)updateTranscriptChatItems:(id)a3 inserted:(id)a4 removed:(id)a5 reload:(id)a6 regenerate:(id)a7 animated:(BOOL)a8 checkFiltered:(BOOL)a9 completion:(id)a10
{
  v10 = a8;
  v43 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v37 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = self;
  v21 = v19;
  v22 = a10;
  if (a9)
  {
    v36 = v10;
    v23 = [(CKTranscriptCollectionViewController *)v20 chat];
    if (![v23 isFiltered])
    {

LABEL_15:
      v10 = v36;
      goto LABEL_16;
    }

    [(CKTranscriptCollectionViewController *)v20 chat];
    v24 = v34 = v20;
    [v24 account];
    v25 = v35 = v16;
    v26 = [v25 service];
    v27 = [v26 supportsCapability:*MEMORY[0x1E69A7948]];

    v16 = v35;
    v20 = v34;

    v10 = v36;
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

      v20 = v34;
      v16 = v35;
      goto LABEL_15;
    }
  }

LABEL_16:
  [(CKTranscriptCollectionViewController *)v20 updateTranscriptChatItems:v16 inserted:v37 removed:v17 reload:v18 regenerate:v21 animated:v10 completion:v22];
}

- (void)updateTranscriptChatItems:(id)a3 inserted:(id)a4 removed:(id)a5 reload:(id)a6 regenerate:(id)a7 animated:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v20 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  [(CKTranscriptCollectionViewController *)self _updateTranscriptChatItems:v20 inserted:v15 removed:v16 reload:v17 regenerate:v18 animated:v9 completion:v19];
}

- (void)_updateTranscriptChatItems:(id)a3 inserted:(id)a4 removed:(id)a5 reload:(id)a6 regenerate:(id)a7 animated:(BOOL)a8 completion:(id)a9
{
  v74 = a8;
  v99 = *MEMORY[0x1E69E9840];
  v78 = a3;
  v14 = a4;
  v77 = a5;
  v15 = a6;
  v76 = a7;
  v75 = a9;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(CKTranscriptCollectionViewController *)self chat];
      v18 = v17;
      v19 = @"NO";
      if (v74)
      {
        v19 = @"YES";
      }

      *buf = 138412546;
      v92 = v19;
      v93 = 2112;
      v94 = v17;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Beginning to update transcript chatItems (animated: %@) for chat: %@", buf, 0x16u);
    }
  }

  v20 = [(CKTranscriptCollectionViewController *)self isInline];
  v21 = IMOSLoggingEnabled();
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v73 = [(CKTranscriptCollectionViewController *)self chat];
      v72 = [v73 inlineReplyController];
      v23 = MEMORY[0x1E696AD98];
      v24 = [(CKTranscriptCollectionViewController *)self imChatItems];
      v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v78, "count")}];
      v27 = MEMORY[0x1E696AD98];
      v28 = [(CKTranscriptCollectionViewController *)self chatItems];
      v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
      *buf = 138413058;
      v92 = v72;
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
      v31 = [(CKTranscriptCollectionViewController *)self imChatItems];
      v32 = [v30 numberWithUnsignedInteger:{objc_msgSend(v31, "count")}];
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v78, "count")}];
      v34 = MEMORY[0x1E696AD98];
      v35 = [(CKTranscriptCollectionViewController *)self chatItems];
      v36 = [v34 numberWithUnsignedInteger:{objc_msgSend(v35, "count")}];
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
  v37 = [MEMORY[0x1E695DF70] array];
  if ([(__CFString *)v14 count])
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = v14;
        _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "\tinserted: %@", buf, 0xCu);
      }
    }

    [v37 addObject:v14];
  }

  if ([(__CFString *)v77 count])
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = v77;
        _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "\tremoved: %@", buf, 0xCu);
      }
    }

    [v37 addObject:v77];
  }

  if ([(__CFString *)v15 count])
  {
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = v15;
        _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "\treload: %@", buf, 0xCu);
      }
    }

    [v37 addObject:v15];
  }

  if ([(__CFString *)v76 count])
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = v76;
        _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "\tregenerate: %@", buf, 0xCu);
      }
    }

    [v37 addObject:v76];
  }

  v42 = [(CKTranscriptCollectionViewController *)self _itemGUIDsForItems:v15 inIMChatItem:v78];
  v43 = [(CKTranscriptCollectionViewController *)self imChatItems];
  v44 = [v43 count];
  v45 = v44 == [v78 count];

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
    v48 = [(CKTranscriptCollectionViewController *)self view];
    v49 = [v48 window];
    v50 = [v49 windowScene];
    if ([v50 activationState])
    {
      v51 = CKIsRunningUnitTests() != 0;

      LOBYTE(v74) = v51 && v74;
    }

    else
    {
    }

    v54 = [(CKTranscriptCollectionViewController *)self chatItems];
    v55 = [v54 mutableCopy];

    if ([(__CFString *)v14 count]|| [(__CFString *)v77 count])
    {
      v56 = 0;
    }

    else if ([(__CFString *)v15 count])
    {
      v56 = 1;
    }

    else
    {
      v56 = [(__CFString *)v76 count]!= 0;
    }

    [(CKTranscriptCollectionViewController *)self setIsPerformingRegenerateOrReloadOnlyUpdate:v56];
    if (![(CKTranscriptCollectionViewController *)self isPerformingRegenerateOrReloadOnlyUpdate])
    {
      v57 = [(CKTranscriptCollectionViewController *)self _chatItemLogSummaryForChatItems:v55 withUpdates:v37];
      v58 = -[CKTranscriptCollectionViewController _loggingRangeForUpdates:chatItemsCount:](self, "_loggingRangeForUpdates:chatItemsCount:", v37, [v55 count]);
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

    v65 = [(CKTranscriptCollectionViewController *)self _sanitizeInsertedIndices:v14 inChatItems:v55 withIMChatItems:v78];

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
    v82 = self;
    v83 = v78;
    v84 = v76;
    v90 = v74;
    v85 = v42;
    v88 = v75;
    v86 = v15;
    v87 = v37;
    v70 = v55;
    v71 = v69;
    [(CKTranscriptCollectionViewController *)self _handlePluginBreadcrumbingInChatItems:v70 withIMChatItems:v83 inserted:v65 removed:v77 completion:v79];

    v14 = v65;
  }

  else if (IMOSLoggingEnabled())
  {
    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138412290;
      v92 = v53;
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

- (void)_updateTranscriptChatItemsWithAnimation:(id)a3 withIMChatItems:(id)a4 oldChatItems:(id)a5 insertedChatItems:(id)a6 inserted:(id)a7 removed:(id)a8 reload:(id)a9 reloadItemGUIDs:(id)a10 desiredScrollIntent:(int64_t)a11 scrollToBottomDuration:(double *)a12 animationCurve:(int64_t)a13 completion:(id)a14
{
  v76 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v57 = a4;
  v59 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v58 = a9;
  v56 = a10;
  v24 = a14;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v25 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v75 = self;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: _updateTranscriptChatItemsWithAnimation", buf, 0xCu);
    }
  }

  dispatch_group_enter(v25);
  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
      *buf = 138412290;
      v75 = v28;
      _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Preparing to animate transcript updates, chatItems (count): %@", buf, 0xCu);
    }
  }

  v29 = [(CKTranscriptCollectionViewController *)self chat];
  v30 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  [v29 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A5780]];
  [v30 setHoldingBoundsInvalidation:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __236__CKTranscriptCollectionViewController__updateTranscriptChatItemsWithAnimation_withIMChatItems_oldChatItems_insertedChatItems_inserted_removed_reload_reloadItemGUIDs_desiredScrollIntent_scrollToBottomDuration_animationCurve_completion___block_invoke;
  block[3] = &unk_1E72F1580;
  v31 = v20;
  v69 = v31;
  v55 = v30;
  v70 = v55;
  v54 = v29;
  v71 = v54;
  v72 = self;
  v52 = v21;
  v73 = v52;
  v32 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(v25, MEMORY[0x1E69E96A0], block);

  [(CKTranscriptCollectionViewController *)self _animateChatItemRemoval:v59 removed:v23];
  [(CKTranscriptCollectionViewController *)self _identifyIndicesNeedingCustomAnimationsForIMChatItems:v57 inserted:v22 removed:v23];
  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v75 = self;
      _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: collectionViewUpdateCompletion", buf, 0xCu);
    }
  }

  dispatch_group_enter(v25);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __236__CKTranscriptCollectionViewController__updateTranscriptChatItemsWithAnimation_withIMChatItems_oldChatItems_insertedChatItems_inserted_removed_reload_reloadItemGUIDs_desiredScrollIntent_scrollToBottomDuration_animationCurve_completion___block_invoke_1052;
  aBlock[3] = &unk_1E72EDA68;
  aBlock[4] = self;
  v34 = v25;
  v66 = v34;
  v53 = v24;
  v67 = v53;
  v35 = _Block_copy(aBlock);
  v36 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v37 = [v36 isDiffableTranscriptDataSourceEnabled];

  if (v37)
  {
    v63 = 0;
    v64 = 0;
    [(CKTranscriptCollectionViewController *)self _updateCollectionViewSnapshotForChatItems:v31 reloadingItemGUIDs:v56 animatingDifferences:1 associatedInserted:&v64 associatedRemoved:&v63 completion:v35];
    v38 = &v63;
    v39 = &v64;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    [(CKTranscriptCollectionViewController *)self _updateCollectionViewForChatItems:v31 oldChatItems:v59 inserted:v22 removed:v23 associatedInserted:&v62 associatedRemoved:&v61 animationDuration:*a12 animationCurve:a13 completion:v35];
    v38 = &v61;
    v39 = &v62;
  }

  v40 = *v39;
  v41 = *v38;
  [(CKTranscriptCollectionViewController *)self _animateChatItemReload:v31 reload:v58 associatedInserted:v40 animationDuration:a13 animationCurve:*a12];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __236__CKTranscriptCollectionViewController__updateTranscriptChatItemsWithAnimation_withIMChatItems_oldChatItems_insertedChatItems_inserted_removed_reload_reloadItemGUIDs_desiredScrollIntent_scrollToBottomDuration_animationCurve_completion___block_invoke_1053;
  v60[3] = &unk_1E72EBA18;
  v60[4] = self;
  v42 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(v34, MEMORY[0x1E69E96A0], v60);

  v44 = a11 == 6 || a11 == 0;
  [(CKTranscriptCollectionViewController *)self _animateChatItemInsertion:v31 inserted:v22 wantsScrollToBottom:v44 scrollToBottomDuration:a12];
  [(CKTranscriptCollectionViewController *)self _animateAssociatedChatItemWithIndices:v40];
  [(CKTranscriptCollectionViewController *)self reconfigureVisibleSpeakerButtonCells];
  if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v75 = self;
      _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: _updateTranscriptChatItemsWithAnimation", buf, 0xCu);
    }
  }

  dispatch_group_leave(v34);
  if ([v22 count] || objc_msgSend(v40, "count") || objc_msgSend(v58, "count"))
  {
    v46 = [(CKTranscriptCollectionViewController *)self delegate];
    v47 = objc_opt_respondsToSelector();

    if (v47)
    {
      v48 = [(CKTranscriptCollectionViewController *)self delegate];
      [v48 transcriptCollectionViewController:self didInsertChatItems:v22 associatedChatItems:v40];
    }
  }

  if ([v23 count] || objc_msgSend(v41, "count") || objc_msgSend(v58, "count"))
  {
    v49 = [(CKTranscriptCollectionViewController *)self delegate];
    v50 = objc_opt_respondsToSelector();

    if (v50)
    {
      v51 = [(CKTranscriptCollectionViewController *)self delegate];
      [v51 transcriptCollectionViewController:self didRemoveChatItems:v23 associatedChatItems:v41];
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

- (void)_updateSnapshotWithoutAnimation:(id)a3 reloadingItemGUIDs:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__CKTranscriptCollectionViewController__updateSnapshotWithoutAnimation_reloadingItemGUIDs_completion___block_invoke;
  v10[3] = &unk_1E72ED1C8;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(CKTranscriptCollectionViewController *)self _updateCollectionViewSnapshotForChatItems:a3 reloadingItemGUIDs:a4 animatingDifferences:0 associatedInserted:0 associatedRemoved:0 completion:v10];
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

- (void)_updateTranscriptChatItemsWithoutAnimation:(id)a3
{
  v10 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isDiffableTranscriptDataSourceEnabled];

  if (v5)
  {
    [(CKTranscriptCollectionViewController *)self _updateSnapshotWithoutAnimation:v10 reloadingItemGUIDs:MEMORY[0x1E695E0F0] completion:0];
  }

  else
  {
    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isConsolidatedChatItemsEnabled];

    if (v7)
    {
      v8 = [(CKTranscriptCollectionViewController *)self chatItemController];
      [v8 setChatItemsUsingReloadDataWithoutAnimation:v10];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:v10 removedAssociatedIndexes:0 insertedAssociatedIndexes:0];
      [(CKTranscriptCollectionViewController *)self reloadData];
    }

    [(CKTranscriptCollectionViewController *)self setIsPerformingRegenerateOrReloadOnlyUpdate:0];
    v9 = [(CKTranscriptCollectionViewController *)self delegate];
    [v9 transcriptCollectionViewControllerPerformBatchUpdateCompleted:self];
  }
}

- (id)_itemGUIDsForItems:(id)a3 inIMChatItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __72__CKTranscriptCollectionViewController__itemGUIDsForItems_inIMChatItem___block_invoke;
    v14 = &unk_1E72EF010;
    v15 = v6;
    v16 = v7;
    v8 = v7;
    [v5 enumerateIndexesUsingBlock:&v11];
    v9 = [v8 copy];
  }

  else
  {
    v9 = [MEMORY[0x1E695DEC8] array];
  }

  return v9;
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

- (void)_removeChatItemsFrom:(id)a3 removed:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    [v5 removeObjectsAtIndexes:v6];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Removed chatItems at indices: %@, chatItems (count): %@", &v9, 0x16u);
      }
    }
  }
}

- (id)_insertChatItemsInto:(id)a3 withIMChatItems:(id)a4 inserted:(id)a5 insertedUnreadMessage:(id *)a6 insertedLocalUnsentChatItem:(id *)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if ([v14 count])
  {
    v15 = [(CKTranscriptCollectionViewController *)self delegate];
    v16 = [v15 traitCollectionForTranscriptCollectionViewController:self];

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
    v38 = [MEMORY[0x1E695DF70] array];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __136__CKTranscriptCollectionViewController__insertChatItemsInto_withIMChatItems_inserted_insertedUnreadMessage_insertedLocalUnsentChatItem___block_invoke;
    v26[3] = &unk_1E72F2970;
    v26[4] = self;
    v19 = v16;
    v27 = v19;
    v32 = v18;
    v20 = v12;
    v28 = v20;
    v29 = &v33;
    v30 = &v45;
    v31 = &v39;
    [v13 enumerateObjectsAtIndexes:v14 options:0 usingBlock:v26];
    v21 = +[CKChatItemSizeCache sharedInstance];
    [v21 invalidateCachedSizeForChatItems:v34[5] reason:@"transcript_insert"];

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
        *buf = 138412546;
        v52 = v14;
        v53 = 2112;
        v54 = v23;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Inserted chatItems at indices: %@, chatItems (count): %@", buf, 0x16u);
      }
    }

    *a6 = v46[5];
    *a7 = v40[5];
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

- (void)_regenerateChatItemsIn:(id)a3 withIMChatItems:(id)a4 regenerate:(id)a5 shouldShowBlackholeAlert:(BOOL *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v12 count])
  {
    v13 = [(CKTranscriptCollectionViewController *)self delegate];
    v14 = [v13 traitCollectionForTranscriptCollectionViewController:self];

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
    v28 = self;
    v18 = v14;
    v29 = v18;
    v33 = v16;
    v19 = v17;
    v30 = v19;
    v20 = v10;
    v31 = v20;
    v32 = &v34;
    [v11 enumerateObjectsAtIndexes:v12 options:0 usingBlock:&v24];
    v21 = [CKChatItemSizeCache sharedInstance:v24];
    [v21 invalidateCachedSizeForChatItems:v19 reason:@"transcript_regenerate"];

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
        *buf = 138412546;
        v39 = v12;
        v40 = 2112;
        v41 = v23;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Regenerated chatItems at indices: %@, chatItems (count): %@", buf, 0x16u);
      }
    }

    *a6 = *(v35 + 24);

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

- (void)_updateAudioControllerForInserted:(id)a3 chatItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
  v8 = [v7 audioController];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__CKTranscriptCollectionViewController__updateAudioControllerForInserted_chatItems___block_invoke;
    v9[3] = &unk_1E72EF010;
    v10 = v6;
    v11 = v8;
    [v5 enumerateIndexesUsingBlock:v9];
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

- (void)_updateCollectionViewSnapshotForChatItems:(id)a3 reloadingItemGUIDs:(id)a4 animatingDifferences:(BOOL)a5 associatedInserted:(id *)a6 associatedRemoved:(id *)a7 completion:(id)a8
{
  v9 = a5;
  v51 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v33 = a4;
  v32 = a8;
  v12 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  v13 = [(CKTranscriptCollectionViewController *)self collectionView];
  v14 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  v31 = [(CKTranscriptCollectionViewController *)self dataSource];
  [v13 beginDisablingTranscriptDynamicsForReason:1];
  v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(a4) = [v15 isConsolidatedChatItemsEnabled];

  if (a4)
  {
    v16 = [(CKTranscriptCollectionViewController *)self chatItemController];
    v17 = [v16 setChatItems:v36 completion:0];

    v18 = [v17 inserted];
    v19 = [v17 removed];
  }

  else
  {
    v47 = 0;
    v48 = 0;
    [(CKTranscriptCollectionViewController *)self setChatItems:v36 removedAssociatedIndexes:&v48 insertedAssociatedIndexes:&v47];
    v19 = v48;
    v18 = v47;
  }

  v20 = [(CKTranscriptCollectionViewController *)self generateSnapshotForCKChatItems:v36];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v50 = self;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: will call applySnapshot", buf, 0xCu);
    }
  }

  dispatch_group_enter(v12);
  [v14 reloadData];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __170__CKTranscriptCollectionViewController__updateCollectionViewSnapshotForChatItems_reloadingItemGUIDs_animatingDifferences_associatedInserted_associatedRemoved_completion___block_invoke;
  v37[3] = &unk_1E72F29C0;
  v22 = v13;
  v38 = v22;
  v23 = v14;
  v39 = v23;
  v40 = self;
  v24 = v12;
  v41 = v24;
  v25 = v32;
  v45 = v25;
  v26 = v33;
  v42 = v26;
  v27 = v20;
  v43 = v27;
  v28 = v31;
  v44 = v28;
  v46 = v9;
  [v28 applySnapshot:v27 animatingDifferences:v9 completion:v37];
  if (a6)
  {
    v29 = v18;
    *a6 = v18;
  }

  if (a7)
  {
    v30 = v19;
    *a7 = v19;
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

- (void)_updateCollectionViewForChatItems:(id)a3 oldChatItems:(id)a4 inserted:(id)a5 removed:(id)a6 associatedInserted:(id *)a7 associatedRemoved:(id *)a8 animationDuration:(double)a9 animationCurve:(int64_t)a10 completion:(id)a11
{
  v78 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v36 = a6;
  v37 = a11;
  group = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  v19 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
  v20 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v20 beginDisablingTranscriptDynamicsForReason:0];
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
  objc_initWeak(&location, v20);
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v77 = self;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: will call performBatchUpdates", buf, 0xCu);
    }
  }

  dispatch_group_enter(group);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke;
  v48[3] = &unk_1E72F2A88;
  v48[4] = self;
  v31 = v16;
  v49 = v31;
  v57 = &v70;
  v58 = &v64;
  v59 = v62;
  v33 = v18;
  v50 = v33;
  v32 = v17;
  v51 = v32;
  objc_copyWeak(&v60, &location);
  v24 = v36;
  v52 = v24;
  v53 = v19;
  v54 = v21;
  v55 = v22;
  v56 = v20;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __185__CKTranscriptCollectionViewController__updateCollectionViewForChatItems_oldChatItems_inserted_removed_associatedInserted_associatedRemoved_animationDuration_animationCurve_completion___block_invoke_8;
  v39[3] = &unk_1E72F2AB0;
  v45 = v62;
  v39[4] = self;
  v25 = v56;
  v40 = v25;
  v46 = a9;
  v47 = a10;
  v26 = v53;
  v41 = v26;
  v27 = v54;
  v42 = v27;
  v28 = v55;
  v43 = v28;
  v29 = v37;
  v44 = v29;
  [v25 performBatchUpdates:v48 completion:v39];

  objc_destroyWeak(&v60);
  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v77 = self;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "%p leave updateAnimationGroup: will call performBatchUpdates", buf, 0xCu);
    }
  }

  dispatch_group_leave(group);
  *a7 = v71[5];
  *a8 = v65[5];
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

- (void)_handlePluginBreadcrumbingInChatItems:(id)a3 withIMChatItems:(id)a4 inserted:(id)a5 removed:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v104 = 0;
  v105 = 0;
  v17 = [(CKTranscriptCollectionViewController *)self _indexOfBreadcrumbReplacingTranscriptPluginInChatItems:v13 inserted:v14 removed:v15 outIndexOfReplacedPlugin:&v105 outIndexOfNewPlugin:&v104];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL || v105 == 0x7FFFFFFFFFFFFFFFLL || v104 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v42 = [v41 isConsolidatedChatItemsEnabled];

    if (v42)
    {
      v43 = [(CKTranscriptCollectionViewController *)self chatItemController];
      v44 = [v43 setChatItems:v12 completion:0];

      if (!v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:v12];
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    v16[2](v16, 0, v14, v15);
    goto LABEL_27;
  }

  v18 = v17;
  v67 = v16;
  v68 = v15;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v70 = v14;
  CKSeparateInsertionsAndDeletions(v15, v14, v105, v17, &v103, &v102, &v101, &v100);
  v72 = v12;
  v19 = v103;
  v20 = v102;
  v71 = v101;
  v21 = v100;
  [(CKTranscriptCollectionViewController *)self collectionView];
  v23 = v22 = v13;
  v24 = [(CKTranscriptCollectionViewController *)self delegate];
  v25 = [v24 traitCollectionForTranscriptCollectionViewController:self];

  [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
  v27 = v26;
  v28 = [MEMORY[0x1E696AC88] indexPathForItem:v105 inSection:0];
  v66 = v23;
  v29 = v23;
  v13 = v22;
  v30 = [v29 cellForItemAtIndexPath:v28];

  v65 = v30;
  v31 = [v30 balloonView];
  v32 = [v31 snapshot];
  v64 = v31;
  [v31 frame];
  [v32 setFrame:?];
  v63 = v32;
  [(CKTranscriptCollectionViewController *)self setSnapshotOfPluginBeingReplacedByBreadcrumb:v32];
  v33 = [v72 objectAtIndex:v105];
  [v72 removeObjectsAtIndexes:v19];
  v34 = [v13 objectAtIndex:v18];
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
    v16 = v67;
    v15 = v68;
    v39 = [v20 mutableCopy];
    [v39 addIndex:v97[3]];
    v57 = [v39 copy];
    v54 = v39;

    [v13 objectAtIndex:v104];
    v53 = v40 = v55;
    v60 = [v53 message];
    v61 = [v13 objectAtIndex:v104];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [(CKTranscriptCollectionViewController *)self newChatItemWithIMChatItem:v61 traitCollection:v69 transcriptBackgroundLuminance:v27];
      [v59 setIsAppearing:1];
      [v72 insertObject:v59 atIndex:v97[3]];
      if ([v60 isFromMe] & 1) != 0 || (objc_msgSend(v60, "isRead"))
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
      v47 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      LODWORD(v46) = [v47 isDiffableTranscriptDataSourceEnabled];

      if (v46)
      {
        v48 = [(CKTranscriptCollectionViewController *)self generateSnapshotForCKChatItems:v72];
        v49 = [(CKTranscriptCollectionViewController *)self dataSource];
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_2;
        v85[3] = &unk_1E72F2B00;
        v86 = v58;
        v87 = self;
        v88 = v59;
        v89 = v66;
        v90 = v57;
        v94 = v67;
        v91 = v56;
        v92 = v51;
        v93 = v52;
        [v49 applySnapshotUsingReloadData:v48 completion:v85];
      }

      else
      {
        v50 = MEMORY[0x1E69DD250];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __122__CKTranscriptCollectionViewController__handlePluginBreadcrumbingInChatItems_withIMChatItems_inserted_removed_completion___block_invoke_1074;
        v73[3] = &unk_1E72F2B50;
        v74 = v66;
        v75 = self;
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
    v16 = v67;
    if (v67)
    {
      v15 = v68;
      v67[2](v67, 0, v70, v68);
      v45 = 0;
      v38 = v66;
    }

    else
    {
      v45 = 0;
      v38 = v66;
      v15 = v68;
    }
  }

  v12 = v72;
  v14 = v70;
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

- (void)_animateChatItemRemoval:(id)a3 removed:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
        *buf = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "  Animating removal of chatItems at indices: %@, oldchatItems (count): %@", buf, 0x16u);
      }
    }

    v10 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
    v11 = [(CKTranscriptCollectionViewController *)self collectionView];
    v12 = +[CKChatItemSizeCache sharedInstance];
    [v12 invalidateCachedSizeForChatItems:v6 reason:@"transcript_animated_removal"];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__CKTranscriptCollectionViewController__animateChatItemRemoval_removed___block_invoke;
    v15[3] = &unk_1E72F2B78;
    v16 = v11;
    v17 = self;
    v18 = v10;
    v13 = v10;
    v14 = v11;
    [v6 enumerateObjectsAtIndexes:v7 options:0 usingBlock:v15];
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

- (void)_animateChatItemReload:(id)a3 reload:(id)a4 associatedInserted:(id)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if ([v13 count])
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
        *buf = 138412546;
        v30 = v13;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "  Animating reload of chatItems at indices: %@, chatItems (count): %@", buf, 0x16u);
      }
    }

    v17 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
    v18 = [(CKTranscriptCollectionViewController *)self collectionView];
    v19 = [v12 objectsAtIndexes:v13];
    v20 = +[CKChatItemSizeCache sharedInstance];
    [v20 invalidateCachedSizeForChatItems:v19 reason:@"transcript_animated_reload"];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __122__CKTranscriptCollectionViewController__animateChatItemReload_reload_associatedInserted_animationDuration_animationCurve___block_invoke;
    v23[3] = &unk_1E72F2BC8;
    v23[4] = self;
    v24 = v18;
    v25 = v17;
    v27 = a6;
    v28 = a7;
    v26 = v14;
    v21 = v17;
    v22 = v18;
    [v12 enumerateObjectsAtIndexes:v13 options:0 usingBlock:v23];
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

- (void)_animateAvatarFromGroupTypingIndicatorToIncomingCell:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v72 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Preparing for group typing avatar animation for incoming cell: %@", buf, 0xCu);
    }
  }

  v6 = [(CKTranscriptCollectionViewController *)self chat];
  v7 = [v6 typingTrackingController];

  v8 = [v7 handleToRemoveViaAnimation];
  if (v8)
  {
    v9 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v4];
    v10 = [v9 sender];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      v12 = [(CKTranscriptCollectionViewController *)self groupTypingIndicatorChatItem];
      if (!v12)
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

      v14 = [(CKTranscriptCollectionViewController *)self groupTypingAvatarAnimationCoordinator];
      v15 = v14 == 0;

      if (!v15)
      {
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v4;
        v16 = [v13 contactImageView];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v65 = [v13 contactImageView];
          v18 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v12];
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
          v63 = [v66 layer];
          v60 = [v63 presentationLayer];
          v62 = [v66 contactImageView];
          v61 = [v62 layer];
          v19 = [v61 presentationLayer];
          [v19 frame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v28 = [(CKTranscriptCollectionViewController *)self collectionView];
          v29 = [v28 superview];
          v30 = [v29 layer];
          [v60 convertRect:v30 toLayer:{v21, v23, v25, v27}];
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
          v49 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
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
          v64 = [(CKTranscriptCollectionViewController *)self collectionView];
          v52 = [v65 contacts];
          v53 = [v52 firstObject];
          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 3221225472;
          v67[2] = __93__CKTranscriptCollectionViewController__animateAvatarFromGroupTypingIndicatorToIncomingCell___block_invoke;
          v67[3] = &unk_1E72EB880;
          v68 = v7;
          v69 = self;
          v70 = v49;
          v54 = v49;
          v55 = [(CKGroupTypingAvatarAnimationCoordinator *)v51 initToCell:v13 fromTypingCell:v66 hostingView:v64 fromFrame:v53 senderContact:v67 completion:x, y, v44, v46];
          [(CKTranscriptCollectionViewController *)self setGroupTypingAvatarAnimationCoordinator:v55];

          dispatch_group_enter(v54);
          v56 = [(CKTranscriptCollectionViewController *)self groupTypingAvatarAnimationCoordinator];
          [v56 animate];

          goto LABEL_9;
        }

        if (IMOSLoggingEnabled())
        {
          v57 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            v58 = [v13 contactImageView];
            *buf = 138412290;
            v72 = v58;
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
          v72 = v4;
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

- (void)_animateChatItemInsertion:(id)a3 inserted:(id)a4 wantsScrollToBottom:(BOOL)a5 scrollToBottomDuration:(double *)a6
{
  v6 = a5;
  v49 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ([v10 count])
  {
    v33 = v6;
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

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        *buf = 138412802;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2112;
        v46 = v13;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "\t(Inline: %@) Animating insertion of chatItems at indices: %@, chatItems (count): %@", buf, 0x20u);
      }
    }

    v14 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
    v15 = [(CKTranscriptCollectionViewController *)self collectionView];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy__33;
    v47 = __Block_byref_object_dispose__33;
    v48 = [MEMORY[0x1E695DF70] array];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __118__CKTranscriptCollectionViewController__animateChatItemInsertion_inserted_wantsScrollToBottom_scrollToBottomDuration___block_invoke;
    v42[3] = &unk_1E72ED100;
    v16 = v15;
    v43 = v16;
    v44 = buf;
    [v9 enumerateObjectsAtIndexes:v10 options:0 usingBlock:v42];
    v17 = [*(*&buf[8] + 40) indexesOfObjectsPassingTest:&__block_literal_global_1103];
    if (![v17 count])
    {
      v21 = 0;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v20 = 0.0;
      goto LABEL_15;
    }

    v18 = [v17 lastIndex];
    v19 = [*(*&buf[8] + 40) objectAtIndex:v18];
    v20 = 0.0;
    if (![v19 isReply] || (objc_msgSend(v19, "isFromMe") & 1) != 0)
    {
      v21 = 0;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
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
      v38 = v21;
      v39 = v20;
      v35[4] = self;
      v40 = v22;
      v24 = v14;
      v36 = v24;
      [v23 enumerateObjectsUsingBlock:v35];

      _Block_object_dispose(v41, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_16;
    }

    v21 = [v19 insertionAnimationType];
    [v19 insertionDurationForInsertionType:v21];
    v20 = v25;
    if ([v17 count] < 2)
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        goto LABEL_13;
      }

      v29 = 0.0;
      if (v21 == 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v22 = [v17 firstIndex];
      v26 = [*(*&buf[8] + 40) objectAtIndex:v22];
      v27 = [v26 isReplyContextPreview];
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      if (v27)
      {
        v28 = v22;
      }

      v32 = v28;

      if (!v33 || v21 == 2)
      {
        v22 = v32;
        goto LABEL_13;
      }

      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = 0.0;
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = +[CKUIBehavior sharedBehaviors];
        [v30 fadeInReplyPreviewAnimationDuration];
        v29 = v31;
      }
    }

    *a6 = v20 + v29;
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

- (void)_animateAssociatedChatItemWithIndices:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
    v6 = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [(CKTranscriptCollectionViewController *)self delegate];
    v8 = [v7 currentlyFocusedChatItemForTapbackInTranscriptCollectionViewController:self];

    v9 = [v8 tapbacksChatItem];
    v10 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__CKTranscriptCollectionViewController__animateAssociatedChatItemWithIndices___block_invoke;
    v14[3] = &unk_1E72F2B78;
    v15 = v6;
    v16 = v5;
    v17 = v9;
    v11 = v9;
    v12 = v5;
    v13 = v6;
    [v10 enumerateObjectsAtIndexes:v4 options:0 usingBlock:v14];
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

- (void)_animateStickerRepositionWithAssociatedChatItem:(id)a3 associatedCell:(id)a4 associatedIndexPath:(id)a5
{
  v40[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 associatedItemView];
  v12 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  v40[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [CKChatItem unloadSizesOfChatItems:v13];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v39 = self;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in _animateStickerRepositionWithAssociatedChatItem", buf, 0xCu);
    }
  }

  dispatch_group_enter(v12);
  v15 = [v8 currentStickerRepositionIsLocalReposition];
  [v8 clearStickerRepositionLocalState];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__CKTranscriptCollectionViewController__animateStickerRepositionWithAssociatedChatItem_associatedCell_associatedIndexPath___block_invoke;
  aBlock[3] = &unk_1E72F2C38;
  aBlock[4] = self;
  v16 = v9;
  v31 = v16;
  v17 = v11;
  v32 = v17;
  v18 = v8;
  v33 = v18;
  v19 = v10;
  v34 = v19;
  v36 = v15;
  v37 = 0;
  v20 = v12;
  v35 = v20;
  v21 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v17 image];
    v21[2](v21, v22);
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
    v22 = v29;
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

- (id)_sanitizeInsertedIndices:(id)a3 inChatItems:(id)a4 withIMChatItems:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = v11;
  if ([(__CFString *)v11 count])
  {
    v13 = [(__CFString *)v11 firstIndex];
    v12 = v11;
    if (v13 > [v9 count])
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

        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
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
        [CKTranscriptCollectionViewController _sanitizeInsertedIndices:v10 inChatItems:? withIMChatItems:?];
      }

      v17 = [v9 count];
      v18 = [(__CFString *)v11 lastIndex];
      v12 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v17, v18 - v17 + 1}];

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

- (void)_identifyIndicesNeedingCustomAnimationsForIMChatItems:(id)a3 inserted:(id)a4 removed:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count] || objc_msgSend(v10, "count"))
  {
    v25 = 0;
    v26 = 0;
    [(CKTranscriptCollectionViewController *)self _indicesOfTranscriptPluginChatItemRemoveAndInsertedWithoutFading:v8 inserted:v9 removed:v10 outInsertIndices:&v26 outRemoveIndices:&v25];
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

    v15 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
    [v15 setIndicesOfChatItemsToBeRemovedWithoutFading:v12];

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

    v18 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
    [v18 setIndicesOfChatItemsToBeInsertedWithoutFading:v11];

    v24 = 0;
    [(CKTranscriptCollectionViewController *)self _indicesOfReplyChatItemsToInsertWithoutFading:v8 inserted:v9 outInsertIndices:&v24];
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

    v23 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
    [v23 setIndicesOfReplyChatItemsToBeInserted:v19];
  }
}

- (id)indexPathForMessageGUID:(id)a3 messagePartIndex:(int64_t)a4 useAssociatedSection:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    [(CKTranscriptCollectionViewController *)self associatedChatItems];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self chatItems];
  }
  v9 = ;
  v10 = v9;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 __ck_indexesOfPartsOfMessageWithGUID:v8];
    v12 = [v11 firstIndex];
  }

  else
  {
    v12 = [v9 __ck_indexOfPartOfMessageGUID:v8 withMessagePartIndex:a4];
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForRow:v12 inSection:v5];
  }

  return v13;
}

- (id)indexPathForChatItemGUID:(id)a3 useAssociatedSection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
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
  v8 = v6;
  v15 = v8;
  v16 = &v17;
  [v7 enumerateObjectsUsingBlock:&v11];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:v18[3] inSection:{v4, v11, v12, v13, v14}];

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

- (void)updateTranscriptScrollIntentForSendAnimationContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received request to update the transcriptScrollIntent for the sendAnimationContext: %@", &v14, 0xCu);
    }
  }

  v6 = [v4 messages];
  v7 = [v6 __imArrayByFilteringWithBlock:&__block_literal_global_1116];
  v8 = [v7 firstObject];
  v9 = v8 == 0;

  v10 = [(CKTranscriptCollectionViewController *)self collectionView];
  v11 = v10;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = 6;
  }

  [v10 setTranscriptScrollIntent:v12];

  v13 = +[CKScrollViewAnimationProperties systemDefaultScrollAnimation];
  [(CKTranscriptCollectionViewController *)self enforceTranscriptScrollIntentWithAnimationProperties:v13];
}

- (int64_t)_computeDesiredScrollIntentForInsertedChatItems:(id)a3 insertedUnreadChatItem:(id)a4 insertedLocalUnsentChatItem:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CKTranscriptCollectionViewController *)self collectionView];
  v12 = [v11 transcriptScrollIntent];

  if ([v8 count])
  {
    v13 = [v8 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 isFromMe])
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

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 9;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  if (v12 == 9)
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
    if (!v10)
    {
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  v15 = v12;
  if (v12 != 6)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (!v10)
  {
LABEL_32:
    v15 = v12;
    goto LABEL_33;
  }

  v16 = [v10 messageItem];
  v17 = [v16 scheduleType];

  if (v17 == 2)
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

  v20 = [v10 messageItem];
  v21 = [v20 scheduleType];

  if (v21 == 2)
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
      v30 = v10;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Computed new scrollIntent %@ for newly inserted unsent chatItem: %@.", &v27, 0x16u);
    }
  }

LABEL_33:

  return v15;
}

- (void)scrollToCurrentTimeAnimated:(BOOL)a3 withDuration:(double)a4 animationCurve:(int64_t)a5 withCompletion:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v11 setTranscriptScrollIntent:0];

  v12 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v23 = self;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in scrollToCurrentTimeAnimated", buf, 0xCu);
    }
  }

  dispatch_group_enter(v12);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __111__CKTranscriptCollectionViewController_scrollToCurrentTimeAnimated_withDuration_animationCurve_withCompletion___block_invoke;
  v16[3] = &unk_1E72F2CA8;
  v16[4] = self;
  v17 = v12;
  v21 = a3;
  v18 = v10;
  v19 = a5;
  v20 = a4;
  v14 = v12;
  v15 = v10;
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

- (void)scrollToBottomAnimated:(BOOL)a3 withDuration:(double)a4 animationCurve:(int64_t)a5 insertedUnreadMessage:(id)a6 insertedLocalUnsentChatItem:(id)a7 withCompletion:(id)a8
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v17 setTranscriptScrollIntent:6];
  v18 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v28 = self;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in scrollToBottomAnimated", buf, 0xCu);
    }
  }

  dispatch_group_enter(v18);
  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __156__CKTranscriptCollectionViewController_scrollToBottomAnimated_withDuration_animationCurve_insertedUnreadMessage_insertedLocalUnsentChatItem_withCompletion___block_invoke;
  v22[3] = &unk_1E72F2CD0;
  objc_copyWeak(v25, buf);
  v23 = v18;
  v24 = v16;
  v26 = a3;
  v25[1] = *&a4;
  v25[2] = a5;
  v20 = v18;
  v21 = v16;
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

- (BOOL)scrollToTopOfLastBubbleCellWithAnimationProperties:(id)a3
{
  v4 = a3;
  if ([(CKTranscriptCollectionView *)self->_collectionView isScrollEnabled])
  {
    v5 = [(CKTranscriptCollectionViewController *)self indexPathOfLastBubble];
    v6 = v5 != 0;
    if (v5)
    {
      v7 = [(CKTranscriptCollectionViewController *)self collectionView];
      [(CKTranscriptCollectionViewController *)self topScrollPositionForIndexPath:v5];
      [v7 setContentOffset:v4 animationProperties:?];
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
  v2 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__CKTranscriptCollectionViewController_indexPathOfLastBubble__block_invoke;
  v5[3] = &unk_1E72EEC48;
  v5[4] = &v6;
  [v2 enumerateObjectsWithOptions:2 usingBlock:v5];

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

- (CGPoint)topScrollPositionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v5 __ck_offsetForTopOfCellAtIndexPath:v4 hidingCellAtIndexPath:0];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)playEffectsIfNecessaryWithInsertedUnreadMessage:(id)a3 insertedLocalUnsentChatItem:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (v19)
  {
    v7 = [(CKTranscriptCollectionViewController *)self _allowsEffectAutoPlayback];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
    if (v6)
    {
LABEL_3:
      v8 = [(CKTranscriptCollectionViewController *)self delegate];
      if ([v8 transcriptCollectionViewControllerPlaybackForOutgoingEffectsIsAllowed:self])
      {
        v9 = [v6 message];
        v10 = [v9 expressiveSendStyleID];
        if (v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(CKTranscriptCollectionViewController *)self _allowsEffectAutoPlayback];
        }
      }

      else
      {
        v11 = 0;
      }

      if (v7)
      {
        goto LABEL_13;
      }

LABEL_8:
      v12 = 0;
      goto LABEL_21;
    }
  }

  v11 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_13:
  v13 = [v19 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 message];
    v15 = [v14 expressiveSendStyleID];
    if ([CKImpactEffectManager identifierIsAnimatedImpactEffect:v15])
    {
      v12 = v19;
      v16 = [(CKTranscriptCollectionViewController *)self chatItems];
      v17 = [v16 indexOfObject:v12];

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
  [(CKTranscriptCollectionViewController *)self playImpactEffectIfNecessaryAutoplayingOutgoingEffect:v11 autoplayingIncomingEffect:v7 impactEffectChatItem:v12];
  [(CKTranscriptCollectionViewController *)self playFullscreenEffectIfNecessaryAutoplayingOutgoingEffect:v11 autoplayingIncomingEffect:v7 insertedUnreadMessage:v19 insertedLocalUnsentChatItem:v6];
}

- (void)playImpactEffectIfNecessaryAutoplayingOutgoingEffect:(BOOL)a3 autoplayingIncomingEffect:(BOOL)a4 impactEffectChatItem:(id)a5
{
  v5 = a4;
  v6 = a3;
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = v8;
  if (v6 || v5)
  {
    if (v8)
    {
      v10 = [(CKTranscriptCollectionViewController *)self presentedViewController];

      if (!v10)
      {
        v11 = [v9 IMChatItem];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 message];
          v13 = [v9 message];
          v14 = [v13 expressiveSendStyleID];
          v15 = [CKImpactEffectManager identifierShouldPlayInWindow:v14];

          if (!v15)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __140__CKTranscriptCollectionViewController_playImpactEffectIfNecessaryAutoplayingOutgoingEffect_autoplayingIncomingEffect_impactEffectChatItem___block_invoke;
            block[3] = &unk_1E72EBA18;
            block[4] = self;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }

          v16 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
          v20[0] = v12;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
          [v16 animateMessages:v17];

          v18 = [(CKTranscriptCollectionViewController *)self chat];
          [v18 markChatItemAsPlayedExpressiveSend:v11];
        }
      }
    }
  }
}

- (void)playFullscreenEffectIfNecessaryAutoplayingOutgoingEffect:(BOOL)a3 autoplayingIncomingEffect:(BOOL)a4 insertedUnreadMessage:(id)a5 insertedLocalUnsentChatItem:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = a6;
  if (v8)
  {
    v12 = self;
    v13 = v11;
LABEL_9:
    [(CKTranscriptCollectionViewController *)v12 startFullscreenEffectIfNeededForChatItem:v13];
    goto LABEL_10;
  }

  if (v7)
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

    v12 = self;
    v13 = v10;
    goto LABEL_9;
  }

LABEL_10:
}

- (id)newChatItemsWithNotifications:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(CKTranscriptCollectionViewController *)self newChatItemWithNotification:*(*(&v13 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)newChatItemWithNotification:(id)a3
{
  v4 = a3;
  [(CKTranscriptCollectionViewController *)self _fullMaxWidth];
  [(CKTranscriptCollectionViewController *)self balloonMaxWidth];
  v5 = [CKChatItem chatItemWithNotification:"chatItemWithNotification:balloonMaxWidth:fullMaxWidth:" balloonMaxWidth:v4 fullMaxWidth:?];

  return v5;
}

- (id)newChatItemsWithIMChatItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [(CKTranscriptCollectionViewController *)self delegate];
  v8 = [v7 traitCollectionForTranscriptCollectionViewController:self];

  [(CKTranscriptCollectionViewController *)self transcriptBackgroundLuminance];
  v10 = v9;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v5;
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

- (id)newChatItemWithIMChatItem:(id)a3 traitCollection:(id)a4 transcriptBackgroundLuminance:(double)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKTranscriptCollectionViewController *)self _fullMaxWidth];
    v11 = v10;
    [(CKTranscriptCollectionViewController *)self balloonMaxWidth];
    v13 = [CKChatItem chatItemWithIMChatItem:v8 balloonMaxWidth:v9 fullMaxWidth:[(CKTranscriptCollectionViewController *)self isInline] transcriptTraitCollection:v12 transcriptBackgroundLuminance:v11 overlayLayout:a5];
    v14 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
    [v13 setTranscriptIdentifier:v14];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_diffAssociatedItemsWithOldAssociatedItems:(id)a3 removedAssociatedIndexes:(id *)a4 insertedAssociatedIndexes:(id *)a5
{
  v8 = a3;
  v9 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E695DF70] array];
LABEL_3:
  v11 = [v10 differenceFromArray:v8 withOptions:0 usingEquivalenceTest:&__block_literal_global_1129];
  IMIndexesFromOrderedCollectionDifference();
  v12 = 0;
  v13 = 0;
  v14 = v13;
  if (a4)
  {
    v15 = v13;
    *a4 = v14;
  }

  if (a5)
  {
    v16 = v12;
    *a5 = v12;
  }
}

- (void)setChatItems:(id)a3 removedAssociatedIndexes:(id *)a4 insertedAssociatedIndexes:(id *)a5
{
  v8 = a3;
  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isConsolidatedChatItemsEnabled];

  if ((v10 & 1) == 0)
  {
    v11 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v12 = [v11 copy];

    [(CKTranscriptCollectionViewController *)self setChatItems:v8];
    v16 = 0;
    [(CKTranscriptCollectionViewController *)self _diffAssociatedItemsWithOldAssociatedItems:v12 removedAssociatedIndexes:a4 insertedAssociatedIndexes:&v16];
    v13 = v16;
    if ([v13 count])
    {
      v14 = [(CKTranscriptCollectionViewController *)self delegate];
      [v14 transcriptCollectionViewControllerDidInsertAssociatedChatItem:self];
    }

    if (a5)
    {
      v15 = v13;
      *a5 = v13;
    }
  }
}

- (void)setChatItems:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isConsolidatedChatItemsEnabled];

  if ((v6 & 1) == 0)
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
        v10 = [(CKTranscriptCollectionViewController *)self chatItems];
        v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](v4, "count")}];
        *buf = 138412546;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Setting chatItems, existing count: %@, new count: %@", buf, 0x16u);
      }
    }

    if (self->_chatItems == v4)
    {
      goto LABEL_21;
    }

    v13 = [(NSArray *)v4 copy];
    chatItems = self->_chatItems;
    self->_chatItems = v13;

    v15 = [(CKTranscriptCollectionViewController *)self chat];
    if (!CKIsRunningUnitTests())
    {
      v16 = [v15 lastFinishedMessageID];
      v17 = [v15 lastFinishedMessageDate];
      [v15 __ck_updateWatermarkToMessageID:v16 date:v17];
    }

    v18 = [MEMORY[0x1E695DF70] array];
    v19 = [(CKTranscriptCollectionViewController *)self speakerTransferGUID];
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
    v20 = v19;
    v34 = buf;
    v35 = &v41;
    v36 = &v37;
    v30 = v20;
    v31 = self;
    v21 = v18;
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
          v28 = [(CKTranscriptCollectionViewController *)self delegate];
          [v28 transcriptCollectionViewControllerDidSetChatItems:self];

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
      v26 = [v25 mediaObject];
      v27 = [v26 transferGUID];

      v20 = v27;
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
  v2 = [(CKTranscriptCollectionViewController *)self conversation];
  [v2 loadMoreMessages];
}

- (void)fetchEarlierMessagesForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self conversation];
  [v5 fetchMoreMessages:v4];
}

- (void)loadRecentMessagesForConversation
{
  v2 = [(CKTranscriptCollectionViewController *)self conversation];
  [v2 loadMoreMessagesAfterLastMessage];
}

- (void)fetchRecentMessagesForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self conversation];
  [v5 fetchMoreMessagesAfterLastMessage:v4];
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

- (void)_loadMessagesIfNeededWithTargetContentOffset:(CGPoint)a3 forKeyboardNavigation:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if ([(CKTranscriptCollectionViewController *)self _isHistoryLoadingNeededForDirection:0 withTargetContentOffset:a4 forKeyboardNavigation:?])
  {
    [(CKTranscriptCollectionViewController *)self loadEarlierMessages];
  }

  if ([(CKTranscriptCollectionViewController *)self _isHistoryLoadingNeededForDirection:1 withTargetContentOffset:v4 forKeyboardNavigation:x, y])
  {

    [(CKTranscriptCollectionViewController *)self loadRecentMessages];
  }
}

- (BOOL)_isHistoryLoadingNeededForDirection:(int64_t)a3 withTargetContentOffset:(CGPoint)a4 forKeyboardNavigation:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  if (-[CKTranscriptCollectionViewController isLoadingMoreMessages](self, "isLoadingMoreMessages", a3, a5) || (-[CKTranscriptCollectionViewController chat](self, "chat"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A5780]], v9, (v10 & 1) != 0) || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "showsLoadMoreItem"), v11, !v12) || (-[CKTranscriptCollectionViewController __CurrentTestName](self, "__CurrentTestName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v14))
  {
    LOBYTE(v15) = 0;
  }

  else if ([(CKTranscriptCollectionViewController *)self isLoadMoreSpinnerVisibleForDirection:a3]|| (v15 = [(CKTranscriptCollectionViewController *)self isLoadMoreSpinnerAboutToBeVisibleForDirection:a3 withTargetContentOffset:x, y]))
  {
    LOBYTE(v15) = 1;
  }

  return v15;
}

- (void)loadMessagesIfNeededSkipValidation
{
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  [(CKTranscriptCollectionViewController *)self _loadMessagesIfNeededWithTargetContentOffset:1 forKeyboardNavigation:v5, v7];
}

- (id)loadMoreItemIndexPathForDirection:(int64_t)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = v4;
  if (a3 == 1)
  {
    v6 = [v4 lastObject];
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

  if (!a3)
  {
    v6 = [v4 firstObject];
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

- (BOOL)isLoadMoreSpinnerVisibleForDirection:(int64_t)a3
{
  if (![(CKViewController *)self appeared])
  {
    return 0;
  }

  v5 = [(CKTranscriptCollectionViewController *)self loadMoreItemIndexPathForDirection:a3];
  if (v5)
  {
    v6 = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [v6 cellForItemAtIndexPath:v5];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isLoadMoreSpinnerAboutToBeVisibleForDirection:(int64_t)a3 withTargetContentOffset:(CGPoint)a4
{
  y = a4.y;
  v7 = [(CKTranscriptCollectionViewController *)self loadMoreItemIndexPathForDirection:a4.x];
  if (v7)
  {
    v8 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
    v9 = [(CKTranscriptCollectionViewController *)self collectionView];
    [v9 frame];
    v11 = v10;

    v12 = [v8 layoutAttributesForItemAtIndexPath:v7];
    [v12 frame];
    if (a3 == 1)
    {
      if (y + v11 < CGRectGetMinY(*&v13) - v11)
      {
LABEL_5:
        v17 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else if (a3 || y > v11 + CGRectGetMaxY(*&v13))
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
  v2 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__CKTranscriptCollectionViewController_lastMessagePartChatItem__block_invoke;
  v5[3] = &unk_1E72EEC48;
  v5[4] = &v6;
  [v2 enumerateObjectsWithOptions:2 usingBlock:v5];

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
  v3 = [(CKTranscriptCollectionViewController *)self lastMessagePartChatItem];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 IMChatItem];
    v6 = [v5 guid];
    v7 = [(CKTranscriptCollectionViewController *)self indexPathForChatItemGUID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)indexPathForLastItem
{
  v2 = [(CKTranscriptCollectionViewController *)self collectionView];
  v3 = [v2 __ck_indexPathForLastItem];

  return v3;
}

- (id)indexPathForBalloonView:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__33;
  v19 = __Block_byref_object_dispose__33;
  v20 = 0;
  v6 = [v5 indexPathsForVisibleItems];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CKTranscriptCollectionViewController_indexPathForBalloonView___block_invoke;
  v11[3] = &unk_1E72F2790;
  v7 = v5;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v14 = &v15;
  [v6 enumerateObjectsUsingBlock:v11];

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

- (id)messagePartForBalloonView:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:a3];
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [v5 objectAtIndex:{objc_msgSend(v4, "item")}];

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

- (id)balloonPluginForViewController:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v12 = [v10 extensibleViewControllerForContext:v11];

          if (v12 == v4)
          {
            v15 = [MEMORY[0x1E69A5AD0] sharedInstance];
            v16 = [v10 IMChatItem];
            v17 = [v16 type];
            v18 = [v15 balloonPluginForBundleID:v17];

            v14 = v18;
            goto LABEL_17;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
      v25 = v4;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKTranscriptCollectionViewController could not find balloon plugin corresponding to viewController %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (id)balloonViewAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 balloonView];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)balloonViewForChatItemGUID:(id)a3 getChatItem:(id *)a4
{
  v6 = a3;
  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__CKTranscriptCollectionViewController_balloonViewForChatItemGUID_getChatItem___block_invoke;
  v18[3] = &unk_1E72F2DB8;
  v8 = v6;
  v19 = v8;
  v9 = [v7 indexOfObjectPassingTest:v18];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(CKTranscriptCollectionViewController *)self chatItems];
    v12 = [v11 objectAtIndexedSubscript:v9];

    v13 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
    v14 = [(CKTranscriptCollectionViewController *)self collectionView];
    v15 = [v14 cellForItemAtIndexPath:v13];

    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v15 balloonView];
      if (a4)
      {
        v16 = v12;
        *a4 = v12;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
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

- (id)balloonViewForChatItem:(id)a3
{
  v4 = [a3 IMChatItem];
  v5 = [v4 guid];
  v6 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItemGUID:v5 getChatItem:0];

  return v6;
}

- (id)cellForChatItem:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    v7 = [v8 cellForItemAtIndexPath:v9];
  }

  return v7;
}

- (id)chatItemForCell:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  if ([v6 section])
  {
    [(CKTranscriptCollectionViewController *)self associatedChatItems];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self chatItems];
  }
  v7 = ;
  v8 = [v6 item];
  if ((v8 & 0x8000000000000000) != 0 || (v9 = v8, v8 >= [v7 count]))
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 objectAtIndex:v9];
  }

  return v10;
}

- (id)chatItemForGUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
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
        v10 = [v9 IMChatItem];
        v11 = [v10 guid];
        v12 = [v11 isEqualToString:v4];

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

- (id)associatedChatItemForGUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
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
        v10 = [v9 IMChatItem];
        v11 = [v10 guid];
        v12 = [v11 isEqualToString:v4];

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

- (id)cellForAssociatedChatItem:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:1];
    v7 = [v8 cellForItemAtIndexPath:v9];
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
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(CKTranscriptCollectionViewController *)self chatItemForCell:v9];
        v11 = [(CKTranscriptCollectionViewController *)self delegate];
        [v11 transcriptCollectionViewController:self targetAlphaForChatItem:v10];
        v13 = v12;

        if (v13 != -1.0)
        {
          if (objc_opt_respondsToSelector())
          {
            v14 = [v9 balloonView];
          }

          else
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_12;
            }

            v14 = [v9 imageView];
          }

          v15 = v14;
          [v14 setAlpha:v13];
        }

LABEL_12:
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)selectChatItem:(id)a3
{
  v12 = a3;
  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [v4 indexOfObject:v12];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(CKTranscriptCollectionViewController *)self collectionView];
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0];
    [v6 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];

    v8 = [(CKTranscriptCollectionViewController *)self selectionManager];
    v9 = [v12 IMChatItem];
    v10 = [v9 guid];
    v11 = [CKBalloonSelectionState balloonSelectionState:0];
    [v8 addSelectedMessageGuid:v10 selectionState:v11];
  }
}

- (void)updateLastAddressedHandleID:(id)a3 lastAddressedSIMID:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKTranscriptCollectionViewController *)self conversation];
  v9 = [v8 chat];
  [v9 setLastAddressedHandleID:v6];

  v10 = [(CKTranscriptCollectionViewController *)self conversation];
  v11 = [v10 chat];
  [v11 setLastAddressedSIMID:v7];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(CKTranscriptCollectionViewController *)self conversation];
      v14 = [v13 chat];
      v15 = [v14 guid];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "We just updated the last addressed handle and sim id for chat %@ so refreshing service for sending.", &v16, 0xCu);
    }
  }

  [(CKConversation *)self->_conversation refreshServiceForSending];
}

- (void)touchUpInsideNotifyAnywayButton:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self conversation];
  v6 = [v5 chat];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 guid];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "User selected notify anyway button in chat %@", &buf, 0xCu);
    }
  }

  v9 = [(CKTranscriptCollectionViewController *)self chatItems];
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
  [v9 enumerateObjectsWithOptions:2 usingBlock:v17];
  v10 = *(*(&buf + 1) + 40);
  if (v10)
  {
    v11 = [v10 IMChatItem];
    [v6 markChatItemAsNotifyRecipient:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = *(*(&buf + 1) + 40);
      v13 = [v12 message];
      if (v13)
      {
        v14 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
        v19 = v13;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
        [v14 animateMessages:v15 withEffectIdentifier:@"com.apple.MobileSMS.expressivesend.loud" beginAnimationFromTranscriptPresentedState:1];
      }
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = [v6 guid];
      [(CKTranscriptCollectionViewController *)v16 touchUpInsideNotifyAnywayButton:v18];
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

- (void)translationIndicatorCell:(id)a3 didChangeTranslationVisibility:(BOOL)a4
{
  v4 = a4;
  v5 = [(CKTranscriptCollectionViewController *)self chat];
  [v5 setShowingTranslatedText:v4];
}

- (void)translationIndicatorCellDidSelectStopTranslation:(id)a3
{
  v6 = [(CKTranscriptCollectionViewController *)self chat];
  v4 = [(CKTranscriptCollectionViewController *)self chat];
  v5 = [v4 translationLanguageCode];
  [v6 setAutomaticallyTranslate:0 languageCode:v5 userLanguageCode:0];
}

- (id)menuConfigurationForTranslationIndicatorCell:(id)a3
{
  v4 = objc_alloc_init(CKAutomaticTranslationIndicatorCellMenuConfiguration);
  v5 = [(CKTranscriptCollectionViewController *)self chat];
  v6 = [v5 translationLanguageCode];
  [(CKAutomaticTranslationIndicatorCellMenuConfiguration *)v4 setLocalLanguageCode:v6];

  v7 = [(CKTranscriptCollectionViewController *)self chat];
  v8 = [v7 userTranslationLanguageCode];
  [(CKAutomaticTranslationIndicatorCellMenuConfiguration *)v4 setRecipientLanguageCode:v8];

  v9 = [(CKTranscriptCollectionViewController *)self chat];
  -[CKAutomaticTranslationIndicatorCellMenuConfiguration setLocalLanguageSelected:](v4, "setLocalLanguageSelected:", [v9 isShowingTranslationText]);

  return v4;
}

- (void)touchUpInsideShowHideTranslationButton:(id)a3
{
  v4 = [(CKTranscriptCollectionViewController *)self chat];
  v5 = [(CKTranscriptCollectionViewController *)self chat];
  v6 = [v5 translationLanguageCode];
  v7 = [v4 checkTranslationLanguageStatusForLanguageCode:v6];

  v8 = [(CKTranscriptCollectionViewController *)self chat];
  v9 = [(CKTranscriptCollectionViewController *)self chat];
  v10 = [v9 userTranslationLanguageCode];
  v11 = [v8 checkTranslationLanguageStatusForLanguageCode:v10];

  v34 = [MEMORY[0x1E695DFA8] set];
  v12 = [(CKTranscriptCollectionViewController *)self chat];
  if (![v12 shouldShowIncomingTranslationIndicator])
  {
LABEL_8:

    goto LABEL_9;
  }

  v13 = [(CKTranscriptCollectionViewController *)self chat];
  v14 = [v13 isAutomaticTranslationEnabled];

  if ((v14 & 1) == 0)
  {
    v15 = [(CKTranscriptCollectionViewController *)self chat];
    v12 = [v15 incomingTranslationLanguageCode];

    v16 = [(CKTranscriptCollectionViewController *)self chat];
    v17 = [v16 checkTranslationLanguageStatusForLanguageCode:v12];

    if (v17 <= 1)
    {
      if (v12)
      {
        v18 = [(CKTranscriptCollectionViewController *)self chat];
        v19 = [v18 usersPreferredLanguageIdentifier];

        if (v19)
        {
          v20 = [(CKTranscriptCollectionViewController *)self chat];
          v21 = [v20 usersPreferredLanguageIdentifier];
          [v34 addObject:v21];
        }
      }
    }

    v22 = [(CKTranscriptCollectionViewController *)self chat];
    v23 = [(CKTranscriptCollectionViewController *)self chat];
    v24 = [v23 usersPreferredLanguageIdentifier];
    [v22 setAutomaticallyTranslate:1 languageCode:v12 userLanguageCode:v24];

    goto LABEL_8;
  }

LABEL_9:
  if (v7 < 2 || v11 <= 1)
  {
    v25 = [(CKTranscriptCollectionViewController *)self chat];
    v26 = [v25 translationLanguageCode];

    if (v26 && v7 <= 1)
    {
      v27 = [(CKTranscriptCollectionViewController *)self chat];
      v28 = [v27 translationLanguageCode];
      [v34 addObject:v28];
    }

    v29 = [(CKTranscriptCollectionViewController *)self chat];
    v30 = [v29 userTranslationLanguageCode];

    if (v30 && v11 <= 1)
    {
      v31 = [(CKTranscriptCollectionViewController *)self chat];
      v32 = [v31 userTranslationLanguageCode];
      [v34 addObject:v32];
    }
  }

  if ([v34 count])
  {
    v33 = [v34 allObjects];
    [(CKTranscriptCollectionViewController *)self startDownloadingTranslationAssetsForLanguageCodes:v33 completion:&__block_literal_global_1137];
  }
}

- (void)setShowingTranslatedText:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [(CKTranscriptCollectionViewController *)self collectionView];
  v7 = [v6 hideShowPendingAnimations];
  [v7 addObject:v5];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CKTranscriptCollectionViewController_setShowingTranslatedText___block_invoke;
  v11[3] = &unk_1E72ED8D8;
  v11[4] = self;
  v12 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CKTranscriptCollectionViewController_setShowingTranslatedText___block_invoke_2;
  v9[3] = &unk_1E72EB8D0;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
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

- (void)touchUpInsideUnknownSenderButton:(id)a3 forChatItem:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CKTranscriptCollectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CKTranscriptCollectionViewController *)self delegate];
    [v9 transcriptCollectionViewController:self unknownSenderButtonTapped:v10 forChatItem:v6];
  }
}

- (void)transcriptMessageCell:(id)a3 didTapMessageDeliveryFailureButton:(id)a4
{
  v214 = *MEMORY[0x1E69E9840];
  v161 = a3;
  v6 = a4;
  v7 = [(CKTranscriptCollectionViewController *)self collectionView];
  v199 = 0;
  v200 = &v199;
  v201 = 0x3032000000;
  v202 = __Block_byref_object_copy__33;
  v203 = __Block_byref_object_dispose__33;
  v204 = 0;
  v8 = [v7 indexPathsForVisibleItems];
  v195[0] = MEMORY[0x1E69E9820];
  v195[1] = 3221225472;
  v195[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke;
  v195[3] = &unk_1E72F2790;
  v160 = v7;
  v196 = v160;
  v165 = v6;
  v197 = v165;
  v198 = &v199;
  [v8 enumerateObjectsUsingBlock:v195];

  v166 = [(CKTranscriptCollectionViewController *)self conversation];
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

  v170 = [v168 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v170 message];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v12 = [v11 stewieEnabled];

  if (!v12)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v166 chat], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isStewieEmergencyChat"), v13, !v14))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v166 chat];
      v21 = [v20 isStewieRoadsideChat];

      if (v21)
      {
        v22 = [v170 stewieConversationID];
        v23 = [MEMORY[0x1E69A5B00] sharedInstance];
        v24 = [v23 mostRecentlyUsedConversationForRoadside];

        v25 = [MEMORY[0x1E69A5B00] sharedInstance];
        v167 = [v25 mostRecentlyUsedRoadsideChatIdentifier];

        if (v22 != v24)
        {
LABEL_166:

          goto LABEL_167;
        }

        v169 = [MEMORY[0x1E69A5B00] sharedInstance];
        if (![(__CFString *)v169 isStewieRoadsideActive])
        {
LABEL_165:

          goto LABEL_166;
        }

        v26 = [(CKTranscriptCollectionViewController *)self conversation];
        v27 = [v26 chat];
        v28 = [v27 chatIdentifier];
        v29 = [v28 isEqualToString:v167];

        if (!v29)
        {
          goto LABEL_167;
        }
      }
    }

LABEL_18:
    v30 = [(CKTranscriptCollectionViewController *)self conversation];
    v31 = [v30 chat];
    v167 = [v31 lastAddressedSIMID];

    v32 = [(CKTranscriptCollectionViewController *)self conversation];
    v33 = [v32 chat];
    v34 = [v33 lastAddressedHandleID];

    if (v34 && [(__CFString *)v34 length])
    {
      v169 = v34;
    }

    else
    {
      v35 = [(CKTranscriptCollectionViewController *)self conversation];
      v36 = [v35 chat];
      v37 = [v36 account];
      v169 = [v37 strippedLogin];

      v38 = [(CKTranscriptCollectionViewController *)self conversation];
      v39 = [v38 chat];
      [v39 setLastAddressedHandleID:v169];

      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v207 = v169;
          _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "No last addressed handle or simId on chat, using handle from account %@", buf, 0xCu);
        }
      }
    }

    v147 = [v10 __ck_isiMessage];
    if ([v10 scheduleType] == 2 && (v41 = objc_msgSend(v10, "scheduleState"), v41 <= 5))
    {
      v151 = 0x36u >> v41;
    }

    else
    {
      LOBYTE(v151) = 0;
    }

    v42 = [v10 error];
    v43 = [v42 code];
    v148 = v43 == 43;

    if ([v168 canSendAsTextMessage] && objc_msgSend(MEMORY[0x1E69A5CA0], "smsEnabled"))
    {
      v44 = [(CKTranscriptCollectionViewController *)self conversation];
      v45 = [v44 isBusinessConversation];

      v157 = v45 ^ 1;
    }

    else
    {
      v157 = 0;
    }

    IsEmail = IMStringIsEmail();
    v46 = [MEMORY[0x1E69A5B00] sharedInstance];
    if ([v46 isSatelliteConnectionActive])
    {
      v47 = [(CKTranscriptCollectionViewController *)self conversation];
      v48 = [v47 chat];
      v49 = [v48 account];
      v50 = [v49 service];
      v51 = [MEMORY[0x1E69A5CA0] satelliteSMSService];
      v52 = v50 == v51;

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

        if (IMSharedHelperDeviceHasMultipleSubscriptions() && ([v167 length] || -[__CFString length](v169, "length")))
        {
          v55 = [MEMORY[0x1E69A7F68] sharedInstance];
          v56 = [v55 ctSubscriptionInfo];
          v57 = [v56 __im_switchSubscriptionContextFromPhoneNumber:v169 simID:v167];

          v58 = [(CKTranscriptCollectionViewController *)self conversation];
          v59 = [v58 sendingService];
          v60 = [(CKTranscriptCollectionViewController *)self conversation];
          v61 = [v60 chat];
          v62 = [v59 __ck_isSendingAllowedForChat:v61];

          if (IMOSLoggingEnabled())
          {
            v63 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v64 = @"NO";
              *buf = 138413058;
              v207 = v169;
              if (v62)
              {
                v64 = @"YES";
              }

              v208 = 2112;
              v209 = v167;
              v210 = 2112;
              v211 = v57;
              v212 = 2112;
              v213 = v64;
              _os_log_impl(&dword_19020E000, v63, OS_LOG_TYPE_INFO, "Last addressed handle: %@ last simID %@. New context to switch to for resend: %@. Sending allowed: %@", buf, 0x2Au);
            }
          }

          v65 = [v57 labelID];
          v66 = v65;
          if (v62 && [v65 length] && (objc_msgSend(v66, "isEqualToString:", v167) & 1) == 0 && (objc_msgSend(v57, "phoneNumber"), v67 = objc_claimAutoreleasedReturnValue(), IMNormalizePhoneNumber(), v68 = objc_claimAutoreleasedReturnValue(), IMNormalizePhoneNumber(), v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v68, "isEqualToString:", v69), v69, v68, v67, (v70 & 1) == 0))
          {
            v156 = v66;
            v159 = [v57 phoneNumber];
            v139 = MEMORY[0x1E696AEC0];
            v140 = CKFrameworkBundle();
            v141 = [v140 localizedStringForKey:@"TRY_AGAIN_WITH_SIM" value:&stru_1F04268F8 table:@"ChatKit"];
            v142 = [v57 label];
            v143 = [v139 stringWithFormat:v141, v142];

            v144 = [MEMORY[0x1E69DC668] sharedApplication];
            LODWORD(v139) = [v144 userInterfaceLayoutDirection] == 1;

            if (v139)
            {
              v145 = @"\u200F";
            }

            else
            {
              v145 = @"\u200E";
            }

            v146 = [(__CFString *)v145 stringByAppendingString:v143];

            v162 = v146;
          }

          else
          {
            v162 = 0;
            v159 = 0;
            v156 = 0;
          }
        }

        else
        {
          v162 = 0;
          v159 = 0;
          v156 = 0;
        }

        if (v43 == 43 && (IsEmail & 1 | ((v157 & 1) == 0) || [v166 isToEmailAddress]))
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

          [(CKTranscriptCollectionViewController *)self presentHawkingPromptForChatItem:v170];
LABEL_164:

          goto LABEL_165;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v149 = v170;
          v72 = [v149 dataSource];
          v73 = [v72 bundleID];
          v74 = IMBalloonExtensionIDWithSuffix();
          v75 = [v73 isEqualToString:v74];

          if (v75)
          {
            v193 = 0u;
            v194 = 0u;
            v191 = 0u;
            v192 = 0u;
            v76 = [v149 visibleAssociatedMessageChatItems];
            v77 = [v76 countByEnumeratingWithState:&v191 objects:v205 count:16];
            if (v77)
            {
              v78 = *v192;
              while (2)
              {
                for (i = 0; i != v77; ++i)
                {
                  if (*v192 != v78)
                  {
                    objc_enumerationMutation(v76);
                  }

                  v80 = *(*(&v191 + 1) + 8 * i);
                  if ([v80 isFromMe] && objc_msgSend(v80, "failed"))
                  {
                    v164 = v80;
                    goto LABEL_86;
                  }
                }

                v77 = [v76 countByEnumeratingWithState:&v191 objects:v205 count:16];
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
            if (v43 == 43)
            {
              v81 = CKFrameworkBundle();
              v155 = [v81 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_RESEND_AS_SMS" value:&stru_1F04268F8 table:@"ChatKit"];

              v82 = CKFrameworkBundle();
              v158 = [v82 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_MESSAGE_LEARN_MORE" value:&stru_1F04268F8 table:@"ChatKit"];
              v154 = 0;
              v150 = 0;
              v83 = 0;
              v84 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_89:

LABEL_111:
              v101 = +[CKUIBehavior sharedBehaviors];
              [v101 isSizeConstrained];

              if (v43 == 43)
              {
                v102 = [MEMORY[0x1E69A8168] sharedInstance];
                [v102 trackSpamEvent:9];

                v103 = CKFrameworkBundle();
                v152 = [v103 localizedStringForKey:@"HAWKING_FAILURE_ACTION_SHEET_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

                v104 = [(CKTranscriptCollectionViewController *)self hawkingFailurePromptMessageForHandle:v169];
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
                  if (v147)
                  {
                    if ((v151 & 1) != 0 && ([v10 time], v107 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DF00], "now"), v108 = objc_claimAutoreleasedReturnValue(), v109 = objc_msgSend(v107, "compare:", v108) == 1, v108, v107, v109))
                    {
                      if (v155)
                      {
                        v110 = [v166 chat];
                        v111 = [v110 allParticipantsBlocked];

                        if (v111)
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
                v188 = v10;
                v189 = self;
                v113 = [CKAlertAction actionWithTitle:v155 style:0 handler:v187];
                [v112 addAction:v113];
              }

              if (v158)
              {
                v182[0] = MEMORY[0x1E69E9820];
                v182[1] = 3221225472;
                v182[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1205;
                v182[3] = &unk_1E72F2DE0;
                v185 = v83;
                v183 = v10;
                v184 = self;
                v186 = v84;
                v114 = [CKAlertAction actionWithTitle:v158 style:0 handler:v182];
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
                    v207 = v159;
                    _os_log_impl(&dword_19020E000, v121, OS_LOG_TYPE_INFO, "Resending message with %@", buf, 0xCu);
                  }
                }

                v177[0] = MEMORY[0x1E69E9820];
                v177[1] = 3221225472;
                v177[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_1214;
                v177[3] = &unk_1E72EC6C0;
                v177[4] = self;
                v178 = v159;
                v179 = v156;
                v180 = v10;
                v122 = [CKAlertAction actionWithTitle:v162 style:0 handler:v177];
                [v112 addAction:v122];
              }

              if (!CKIsRunningInMacCatalyst())
              {
                if (v150)
                {
                  v123 = [MEMORY[0x1E69A60F0] sharedInstance];
                  v124 = [v123 isInternalInstall];

                  if (v124)
                  {
                    v174[0] = MEMORY[0x1E69E9820];
                    v174[1] = 3221225472;
                    v174[2] = __97__CKTranscriptCollectionViewController_transcriptMessageCell_didTapMessageDeliveryFailureButton___block_invoke_2;
                    v174[3] = &unk_1E72EC710;
                    v175 = v10;
                    v176 = self;
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
                v173 = v10;
                v128 = [CKAlertAction actionWithTitle:v127 style:0 handler:v171];
                [v112 addAction:v128];
              }

              v129 = [v112 actions];
              v130 = [v129 count] == 0;

              if (v130)
              {
                [v112 setPreferredStyle:1];
              }

              v131 = [v112 actions];
              if ([v131 count])
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
                v136 = [v112 popoverPresentationController];
                [v135 frame];
                [v136 setSourceRect:?];

                v137 = [v112 popoverPresentationController];
                v138 = [v135 superview];
                [v137 setSourceView:v138];
              }

              [(CKTranscriptCollectionViewController *)self presentViewController:v112 animated:1 completion:0];

              goto LABEL_164;
            }

            if (v164)
            {
              v154 = 0;
              v155 = 0;
              v158 = 0;
              v150 = 0;
              v83 = 0x7FFFFFFFFFFFFFFFLL;
              v84 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_111;
            }

            v85 = [v166 chat];
            if ([v85 canSend])
            {
              v86 = [(CKTranscriptCollectionViewController *)self conversation];
              v87 = [v86 sendingService];
              v88 = [(CKTranscriptCollectionViewController *)self conversation];
              v89 = [v88 chat];
              v90 = [v87 __ck_isSendingAllowedForChat:v89];

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
                  v158 = [v166 fallbackSendString];
                  v83 = 1;
                }

                else
                {
                  v158 = 0;
                  v83 = 0x7FFFFFFFFFFFFFFFLL;
                }

                if ((v153 & v95) == 1)
                {
                  v97 = CKFrameworkBundle();
                  v98 = [v97 localizedStringForKey:@"OFFER_TO_SEND_VIA_SATELLITE_SMS" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];

                  v84 = 1;
                  v158 = v98;
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

            v91 = [v10 time];
            v92 = [MEMORY[0x1E695DF00] now];
            v93 = [v91 compare:v92];

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

      v46 = [(CKTranscriptCollectionViewController *)self conversation];
      v153 = [v46 isBusinessConversation] ^ 1;
    }

    else
    {
      v153 = 0;
    }

    goto LABEL_41;
  }

  v15 = [v170 stewieConversationID];
  v16 = [MEMORY[0x1E69A5B00] sharedInstance];
  v17 = [v16 mostRecentlyUsedConversationForEmergency];

  if (v15 == v17)
  {
    v18 = [MEMORY[0x1E69A5B00] sharedInstance];
    v19 = [v18 isStewieEmergencyActive];

    if (v19)
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

- (id)_indexPathOfCellContainingStampButton:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__33;
  v19 = __Block_byref_object_dispose__33;
  v20 = 0;
  v6 = [v5 indexPathsForVisibleItems];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__CKTranscriptCollectionViewController__indexPathOfCellContainingStampButton___block_invoke;
  v11[3] = &unk_1E72F2790;
  v7 = v5;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v14 = &v15;
  [v6 enumerateObjectsUsingBlock:v11];
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

- (void)touchUpInsideCellStampButton:(id)a3
{
  v4 = a3;
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
    v5 = [(CKTranscriptCollectionViewController *)self _indexPathOfCellContainingStampButton:v4];
    if (v5)
    {
      v6 = [(CKTranscriptCollectionViewController *)self chatItems];
      v7 = [v6 objectAtIndex:{-[NSObject item](v5, "item")}];

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
          [(CKTranscriptCollectionViewController *)self _handleTapOnGroupActionChatItem:v7 fromSender:v4];
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

- (void)touchUpInsideCellStatusButton:(id)a3
{
  v115[1] = *MEMORY[0x1E69E9840];
  v91 = a3;
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
    v5 = [(CKTranscriptCollectionViewController *)self collectionView];
    *buf = 0;
    v105 = buf;
    v106 = 0x3032000000;
    v107 = __Block_byref_object_copy__33;
    v108 = __Block_byref_object_dispose__33;
    v109 = 0;
    v6 = [v5 indexPathsForVisibleItems];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __70__CKTranscriptCollectionViewController_touchUpInsideCellStatusButton___block_invoke;
    v100[3] = &unk_1E72F2790;
    v89 = v5;
    v101 = v89;
    v7 = v91;
    v102 = v7;
    v103 = buf;
    [v6 enumerateObjectsUsingBlock:v100];

    v8 = [(CKTranscriptCollectionViewController *)self chatItems];
    v90 = [v8 objectAtIndex:{objc_msgSend(*(v105 + 5), "item")}];

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
            v47 = [*(v105 + 5) item];
            v48 = [(CKTranscriptCollectionViewController *)self chatItems];
            v49 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v46 beforeIndex:v47 inChatItems:v48];

            v98[0] = MEMORY[0x1E69E9820];
            v98[1] = 3221225472;
            v98[2] = __70__CKTranscriptCollectionViewController_touchUpInsideCellStatusButton___block_invoke_2;
            v98[3] = &unk_1E72EB8D0;
            v98[4] = self;
            v18 = v49;
            v99 = v18;
            [(CKTranscriptCollectionViewController *)self updateTranscript:v98 animated:1 completion:0];

            goto LABEL_123;
          case 2:
            v52 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
            v53 = [v52 audioController];

            if (v53)
            {
              [v53 stop];
            }

            v54 = [(CKTranscriptCollectionViewController *)self chatItems];
            v55 = [v54 __ck_indexesOfUnplayedAudioMessages];
            v56 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v55, "count")}];
            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __70__CKTranscriptCollectionViewController_touchUpInsideCellStatusButton___block_invoke_3;
            v96[3] = &unk_1E72F26D0;
            v57 = v56;
            v97 = v57;
            [v54 enumerateObjectsAtIndexes:v55 options:0 usingBlock:v96];
            v58 = [CKAudioController alloc];
            v59 = [(CKTranscriptCollectionViewController *)self conversation];
            v18 = [(CKAudioController *)v58 initWithMediaObjects:v57 conversation:v59];

            [(CKAudioController *)v18 setDelegate:self];
            v60 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
            [v60 setAudioController:v18];

            v61 = CKAudioPlaybackSpeakerEnabled();
            [(CKAudioController *)v18 setShouldUseSpeaker:v61];
            v62 = 1.0;
            if (v61)
            {
              v62 = 0.0;
            }

            [(CKAudioController *)v18 playAfterDelay:v62];

            goto LABEL_123;
          case 3:
            v13 = [(CKTranscriptCollectionViewController *)self delegate];
            v14 = objc_opt_respondsToSelector();

            if ((v14 & 1) == 0)
            {
              goto LABEL_124;
            }

            v15 = objc_opt_class();
            v16 = [*(v105 + 5) item];
            v17 = [(CKTranscriptCollectionViewController *)self chatItems];
            v18 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v15 beforeIndex:v16 inChatItems:v17];

            v19 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:v18];
            if (v19)
            {
              v20 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v19];
            }

            else
            {
              v20 = 0;
            }

            v86 = [(CKTranscriptCollectionViewController *)self delegate];
            [v86 transcriptCollectionViewController:self didTapAttributionButtonForChatItem:v88 parentIndexPath:v20 sender:v7];

            goto LABEL_123;
          case 4:
            v50 = [(CKTranscriptCollectionViewController *)self delegate];
            v51 = objc_opt_respondsToSelector();

            if ((v51 & 1) == 0)
            {
              goto LABEL_124;
            }

            v18 = [(CKTranscriptCollectionViewController *)self delegate];
            [(CKAudioController *)v18 transcriptCollectionViewController:self didTapPluginStatusButtonForChatItem:v88];
            goto LABEL_123;
          case 5:
            v21 = [MEMORY[0x1E69A8168] sharedInstance];
            [v21 trackEvent:*MEMORY[0x1E69A76E0]];

            v18 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
            if (([(CKAudioController *)v18 isAnimating]& 1) != 0)
            {
              goto LABEL_123;
            }

            v22 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
            v23 = [v22 currentEffect];
            v24 = v23 == 0;

            if (!v24)
            {
              goto LABEL_124;
            }

            v25 = [*(v105 + 5) item];
            v26 = v25 - 1;
            if (v25 < 1)
            {
              goto LABEL_116;
            }

            v27 = 0;
            do
            {
              v28 = [(CKTranscriptCollectionViewController *)self chatItems];
              v18 = [v28 objectAtIndex:v26];

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v26 -= (isKindOfClass & 1) == 0;
              v27 = v18;
            }

            while (!(isKindOfClass & 1 | (v26 < 0)));
            if (isKindOfClass)
            {
              v30 = [(CKAudioController *)v18 IMChatItem];
              v31 = [v30 message];

              v32 = [v31 text];
              LODWORD(v30) = [v32 ck_containsIMTextEffect];
              if ((v30 & [(CKTranscriptCollectionViewController *)self textEffectIsCandidateBalloonViewChecksForChatItem:v18]) == 1)
              {
                v33 = [(CKAudioController *)v18 IMChatItem];
                v34 = [v33 guid];

                v35 = [[CKTextEffectCoordinatorContinuationState alloc] initWithTextViewIdentifier:v34 locationInAttributedText:0 ignoreTextViewEligibilityCheck:1];
                v36 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
                [v36 resetAndContinueFromState:v35];

                v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Replay button tapped for identifier %@", v34];
                v38 = [(CKTranscriptCollectionViewController *)self transcriptTextEffectCoordinator];
                [v38 updateWithReason:v37];
              }

              v39 = [v31 expressiveSendStyleID];
              if ([v39 containsString:*MEMORY[0x1E69A7080]])
              {
                v40 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
                v41 = [(CKAudioController *)v18 message];
                v115[0] = v41;
                v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:1];
                [v40 animateMessages:v42];
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

                v40 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
                v41 = [(CKTranscriptCollectionViewController *)self textInputMode];
                v42 = [v41 primaryLanguage];
                [v40 startFullscreenEffectForChatItem:v18 language:v42];
              }
            }

            goto LABEL_123;
          case 6:
            if (([(CKTranscriptCollectionViewController *)self isEditing]& 1) != 0)
            {
              goto LABEL_124;
            }

            v44 = [(CKTranscriptCollectionViewController *)self delegate];
            v45 = objc_opt_respondsToSelector();

            if ((v45 & 1) == 0)
            {
              goto LABEL_124;
            }

            v18 = [(CKTranscriptCollectionViewController *)self delegate];
            [(CKAudioController *)v18 transcriptCollectionViewController:self didTapReplyCountStatusButtonForChatItem:v88];
            goto LABEL_123;
          case 7:
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v63 = [(CKTranscriptCollectionViewController *)self chat];
            v18 = [v63 participants];

            v64 = [(CKAudioController *)v18 countByEnumeratingWithState:&v92 objects:v110 count:16];
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
                  objc_enumerationMutation(v18);
                }

                v69 = MEMORY[0x1E69A7FD0];
                v70 = [*(*(&v92 + 1) + 8 * i) cnContactWithKeys:v67];
                LOBYTE(v69) = [v69 isCNContactAKnownContact:v70];

                v65 |= v69;
              }

              v64 = [(CKAudioController *)v18 countByEnumeratingWithState:&v92 objects:v110 count:16];
            }

            while (v64);

            if ((v65 & 1) == 0)
            {
              goto LABEL_124;
            }

            v71 = [*(v105 + 5) item];
            v72 = v71 - 1;
            if (v71 < 1)
            {
LABEL_116:
              v18 = 0;
            }

            else
            {
              v73 = 0;
              do
              {
                v74 = [(CKTranscriptCollectionViewController *)self chatItems];
                v18 = [v74 objectAtIndex:v72];

                objc_opt_class();
                v75 = objc_opt_isKindOfClass();
                v72 -= (v75 & 1) == 0;
                v73 = v18;
              }

              while (!(v75 & 1 | (v72 < 0)));
              if (v75)
              {
                v76 = [v88 IMChatItem];
                if ([v76 syndicationStatus] == 1)
                {
                  v77 = [(CKAudioController *)v18 IMChatItem];
                  v78 = [v77 guid];

                  v79 = [(CKAudioController *)v18 IMChatItem];
                  v80 = [v79 messagePartRange];
                  v82 = v81;

                  v83 = [(CKTranscriptCollectionViewController *)self chat];
                  [v83 sendSyndicationAction:32 forMessagePartGUID:v78 syndicatedMessagePartRange:{v80, v82}];
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
            v18 = [MEMORY[0x1E69A8168] sharedInstance];
            v111 = *MEMORY[0x1E69A77B8];
            v112 = &unk_1F04E7D28;
            v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
            [(CKAudioController *)v18 trackEvent:*MEMORY[0x1E69A7690] withDictionary:v85];

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

- (void)_handlePollsAddChoiceButtonTappedForIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 item];

  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v5 beforeIndex:v6 inChatItems:v7];

  v9 = [v8 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [v10 dataSource];
    v12 = [v11 bundleID];
    v13 = IMBalloonExtensionIDWithSuffix();
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      v15 = [(CKTranscriptCollectionViewController *)self delegate];
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

- (void)_handleEditHistoryButtonTappedForIndexPath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 item];
  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v5 beforeIndex:v6 inChatItems:v7];

  v9 = [v8 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [v10 guid];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "User selected show edit history button for chatItemGUID: %@", &v18, 0xCu);
      }
    }

    v13 = [(CKTranscriptCollectionViewController *)self chat];
    v14 = [v13 isShowingEditHistoryForChatItemGUID:v11];
    v15 = IMOSLoggingEnabled();
    if (v14)
    {
      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v11;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Requested end showing edit history for chatItemGUID: %@", &v18, 0xCu);
        }
      }

      [v13 endShowingEditHistoryForChatItemGUID:v11];
    }

    else
    {
      if (v15)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v11;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Requested begin showing edit history for chatItemGUID: %@", &v18, 0xCu);
        }
      }

      [v13 beginShowingEditHistoryForChatItemGUID:v11];
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

- (void)_handleSendFullQualityButtonTappedForIndexPath:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isLQMHQEnabled];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [v4 item];
    v9 = [(CKTranscriptCollectionViewController *)self chatItems];
    v10 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v7 beforeIndex:v8 inChatItems:v9];

    v11 = [v10 IMChatItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v12 guid];
          v19 = 138412290;
          v20 = v14;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "User selected send full quality button for chatItemGUID: %@", &v19, 0xCu);
        }
      }

      v15 = [(CKTranscriptCollectionViewController *)self chat];
      v16 = [v12 messageItem];
      v17 = [v16 fileTransferGUIDs];
      v18 = [v17 count] == 0;

      if (!v18)
      {
        [v15 sendHQAttachmentsForMessage:v16];
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

- (void)_handleFailedEditStatusButtonTappedForIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 item];
  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v5 beforeIndex:v6 inChatItems:v7];

  v9 = [v8 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [(CKTranscriptCollectionViewController *)self conversation];
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

    v13 = [v10 canEditMessageText];
    v14 = [v11 supportsMessageEditing];
    v15 = IMOSLoggingEnabled();
    if (v13)
    {
      if (v14)
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

- (void)_handleFailedCancelStatusButtonTappedForIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 item];
  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  v8 = [(CKTranscriptCollectionViewController *)self _previousChatItemOfType:v5 beforeIndex:v6 inChatItems:v7];

  v9 = [v8 IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
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

- (void)_handleSendViaSatelliteButtonTappedForIndexPath:(id)a3
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

- (void)_presentEditedMessageResendConfirmationAlertForMessage:(id)a3
{
  v4 = a3;
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
  v12 = v4;
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

- (void)_resendEditedMessageForChatItem:(id)a3
{
  v4 = a3;
  v7 = [v4 messageItem];
  v5 = [v4 index];

  v6 = [(CKTranscriptCollectionViewController *)self conversation];
  [v6 resendEditedMessageItem:v7 forPartIndex:v5];
}

- (void)_handleTapOnGroupActionChatItem:(id)a3 fromSender:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 failed])
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Tapped on CKGroupActionChatItem denoting a failed action. Showing alert controller.", buf, 2u);
    }

    v9 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v6];
    v10 = [v6 errorText];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __83__CKTranscriptCollectionViewController__handleTapOnGroupActionChatItem_fromSender___block_invoke;
    v21 = &unk_1E72EC710;
    v22 = v6;
    v23 = self;
    v11 = [(CKTranscriptCollectionViewController *)self _buildRetryAlertWithMessage:v10 sourceView:v9 tryAgainAction:&v18];

    [(CKTranscriptCollectionViewController *)self presentViewController:v11 animated:1 completion:0, v18, v19, v20, v21];
    v12 = v22;
  }

  else
  {
    if ([v6 actionType] != 5)
    {
      goto LABEL_11;
    }

    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Tapped on CKGroupActionChatItem denoting a sensitive transcript background. Triggering menu.", buf, 2u);
    }

    v14 = [v6 IMChatItem];
    v9 = [v14 guid];

    v12 = [(CKTranscriptCollectionViewController *)self indexPathForChatItemGUID:v9];
    v15 = [(CKTranscriptCollectionViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(CKTranscriptCollectionViewController *)self delegate];
      [v17 transcriptCollectionViewController:self didTapAttributionLinkTextForChatItem:v6 atIndexPath:v12 sender:v7];
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

- (void)_handleTapOnParticipantChangeChatItem:(id)a3
{
  v4 = a3;
  if ([v4 failed])
  {
    v5 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v4];
    v6 = [v4 errorText];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __78__CKTranscriptCollectionViewController__handleTapOnParticipantChangeChatItem___block_invoke;
    v11 = &unk_1E72EC710;
    v12 = v4;
    v13 = self;
    v7 = [(CKTranscriptCollectionViewController *)self _buildRetryAlertWithMessage:v6 sourceView:v5 tryAgainAction:&v8];

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

- (void)_handleTapOnGroupTitleChangeChatItem:(id)a3
{
  v4 = a3;
  if ([v4 failed])
  {
    v5 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v4];
    v6 = [v4 errorText];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __77__CKTranscriptCollectionViewController__handleTapOnGroupTitleChangeChatItem___block_invoke;
    v11 = &unk_1E72EC710;
    v12 = self;
    v13 = v4;
    v7 = [(CKTranscriptCollectionViewController *)self _buildRetryAlertWithMessage:v6 sourceView:v5 tryAgainAction:&v8];

    [(CKTranscriptCollectionViewController *)self presentViewController:v7 animated:1 completion:0, v8, v9, v10, v11, v12];
  }
}

void __77__CKTranscriptCollectionViewController__handleTapOnGroupTitleChangeChatItem___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) chat];
  v2 = [*(a1 + 40) title];
  [v3 setDisplayName:v2];
}

- (id)_buildStopSharingAlertWithMessage:(id)a3 sourceView:(id)a4 stopSharingAction:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [CKAlertController alertControllerWithTitle:0 message:a3 preferredStyle:0];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [CKAlertAction actionWithTitle:v11 style:1 handler:0];

  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"TS_STOP_SHARING_ACTION_ALERT" value:&stru_1F04268F8 table:@"TranscriptSharing-SYDROB_FEATURES"];
  v15 = [CKAlertAction actionWithTitle:v14 style:2 handler:v7];

  [v9 addAction:v12];
  [v9 addAction:v15];
  v16 = [v9 popoverPresentationController];
  [v16 setSourceView:v8];

  [v8 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [v9 popoverPresentationController];
  [v25 setSourceRect:{v18, v20, v22, v24}];

  return v9;
}

- (id)_buildRetryAlertWithMessage:(id)a3 sourceView:(id)a4 tryAgainAction:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [CKAlertController alertControllerWithTitle:0 message:v9 preferredStyle:CKIsRunningInMacCatalyst() != 0];

  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"TRY_AGAIN" value:&stru_1F04268F8 table:@"ChatKit"];
  v13 = [CKAlertAction actionWithTitle:v12 style:0 handler:v7];

  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = [CKAlertAction actionWithTitle:v15 style:1 handler:0];

  [v10 addAction:v16];
  [v10 addAction:v13];
  v17 = [v10 popoverPresentationController];
  [v17 setSourceView:v8];

  [v8 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v10 popoverPresentationController];
  [v26 setSourceRect:{v19, v21, v23, v25}];

  return v10;
}

- (void)_handleTapOnMessageRetractionChatItem:(id)a3
{
  v4 = a3;
  v5 = [v4 IMChatItem];
  if ([v5 isFailedRetraction])
  {
    v6 = [(CKTranscriptCollectionViewController *)self conversation];
    v7 = [v5 canRetryFailedRetraction];
    v8 = [v6 supportsMessageEditing];
    v9 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v8)
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

        [(CKTranscriptCollectionViewController *)self _presentRetractedMessageResendConfirmationAlertForIMChatItem:v5];
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

- (void)_presentRetractedMessageResendConfirmationAlertForIMChatItem:(id)a3
{
  v4 = a3;
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
  v12 = v4;
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

- (void)_resendMessageRetractionForChatItem:(id)a3
{
  v4 = a3;
  v7 = [v4 messageItem];
  v5 = [v4 partIndex];

  v6 = [(CKTranscriptCollectionViewController *)self conversation];
  [v6 resendEditedMessageItem:v7 forPartIndex:v5];
}

- (void)_presentEditedScheduledMessageResendConfirmationAlertForMessage:(id)a3
{
  v4 = a3;
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
  v12 = v4;
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

- (void)_resendEditedScheduledMessageForChatItem:(id)a3
{
  v4 = a3;
  v10 = [v4 messageItem];
  v5 = [v4 index];

  v6 = [v10 historyForMessagePart:v5];
  v7 = [v6 lastObject];
  v8 = [v7 messagePartText];

  v9 = [(CKTranscriptCollectionViewController *)self chat];
  [v9 editScheduledMessageItem:v10 atPartIndex:v5 withNewPartText:v8 newPartTranslation:0];
}

- (void)_presentCancelledScheduledMessageConfirmationAlertForMessage:(id)a3
{
  v4 = a3;
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
  v12 = v4;
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

- (void)_reattemptMessageCancellationForChatItem:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self chat];
  [v5 retractMessagePart:v4];
}

- (void)_handleCommSafetyMessageSomeoneStatusButtonTappedForIndexPath:(id)a3
{
  v4 = MEMORY[0x1E69A8008];
  v5 = a3;
  v6 = [v4 sharedInstance];
  [v6 logPrivatizedUIInteractionEvent:1];

  v7 = [(CKTranscriptCollectionViewController *)self delegate];
  [v7 transcriptCollectionViewController:self showMessageSomeoneForItemWithIndexPath:v5];
}

- (void)_handleCommSafetySensitiveReceiveStatusButtonTappedForIndexPath:(id)a3
{
  v4 = MEMORY[0x1E69A8008];
  v6 = a3;
  v5 = [v4 sharedInstance];
  [v5 logPrivatizedUIInteractionEvent:0];

  [(CKTranscriptCollectionViewController *)self presentUserInterventionScreenForIndexPath:v6 shouldTargetAssociatedItems:0];
}

- (void)touchUpInsideCellSpeakerButton:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__33;
  v20 = __Block_byref_object_dispose__33;
  v21 = 0;
  v6 = [v5 indexPathsForVisibleItems];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CKTranscriptCollectionViewController_touchUpInsideCellSpeakerButton___block_invoke;
  v12[3] = &unk_1E72F2790;
  v7 = v5;
  v13 = v7;
  v8 = v4;
  v14 = v8;
  v15 = &v16;
  [v6 enumerateObjectsUsingBlock:v12];

  if (v17[5])
  {
    v9 = CKAudioPlaybackSpeakerEnabled();
    CKSetAudioPlaybackSpeakerEnabled();
    v10 = +[_TtC7ChatKit20CKAppAudioController sharedInstance];
    v11 = [v10 audioController];
    [v11 setShouldUseSpeaker:v9 ^ 1u];
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

- (void)touchUpInsideCellLeaveConversationButton:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Pressed button in transcript to leave chat", v7, 2u);
    }
  }

  v6 = [(CKTranscriptCollectionViewController *)self view];
  [(CKTranscriptCollectionViewController *)self _showLeaveConversationFromView:v6];
}

- (void)touchUpInsideCellReportSpamButton:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__33;
  v55 = __Block_byref_object_dispose__33;
  v56 = 0;
  v6 = [v5 indexPathsForVisibleItems];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __74__CKTranscriptCollectionViewController_touchUpInsideCellReportSpamButton___block_invoke;
  v47[3] = &unk_1E72F2790;
  v7 = v5;
  v48 = v7;
  v8 = v4;
  v49 = v8;
  v50 = &v51;
  [v6 enumerateObjectsUsingBlock:v47];

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
        v11 = [(CKTranscriptCollectionViewController *)self delegate];
        [v11 transcriptCollectionViewControllerDisplaySMSSpamReporting:self];
      }

      else
      {
        v11 = [v10 reportSpamButton];
        v44 = 0;
        v45 = 0;
        [(CKTranscriptCollectionViewController *)self _reportJunkAlertControllerTitle:&v45 message:&v44];
        v12 = v45;
        v39 = v44;
        v40 = v12;
        v13 = [CKAlertController alertControllerWithTitle:"alertControllerWithTitle:message:preferredStyle:" message:v12 preferredStyle:?];
        v14 = [(CKTranscriptCollectionViewController *)self chat];
        v15 = [v14 canUnsubscribe];

        if (v15)
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

        v25 = [v13 popoverPresentationController];
        [v25 setPermittedArrowDirections:3];

        v26 = [v13 popoverPresentationController];
        v27 = [(CKTranscriptCollectionViewController *)self view];
        [v11 frame];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v36 = [v11 superview];
        [v27 convertRect:v36 fromView:{v29, v31, v33, v35}];
        [v26 setSourceRect:?];

        v37 = [v13 popoverPresentationController];
        v38 = [(CKTranscriptCollectionViewController *)self view];
        [v37 setSourceView:v38];

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
  v3 = [(CKTranscriptCollectionViewController *)self conversation];
  v4 = [v3 shouldPresentSpamReasonPicker];

  if (v4)
  {
    v5 = [CKReportSpamReasonContoller alloc];
    v6 = [(CKTranscriptCollectionViewController *)self conversation];
    v12[0] = v6;
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
    v10 = [(CKTranscriptCollectionViewController *)self conversation];
    [CKAlertControllerActionHelper reportJunkWithConversation:v10];

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
  v2 = [(CKTranscriptCollectionViewController *)self chat];
  [v2 unsubscribe];

  im_dispatch_after();
}

void __79__CKTranscriptCollectionViewController_unsubscribeAlertControllerActionHandler__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transcriptCollectionViewControllerUnsubscribeButtonTapped:*(a1 + 32)];
}

- (void)_reportJunkAlertControllerTitle:(id *)a3 message:(id *)a4
{
  v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(CKTranscriptCollectionViewController *)self chat];
  v8 = [v7 isChatBot];

  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isReportJunkEverywhereEnabled];

  v11 = [(CKTranscriptCollectionViewController *)self chat];
  v12 = [v11 account];
  v13 = [v12 service];
  v14 = [v13 supportsCapability:*MEMORY[0x1E69A7A20]];
  if (v10)
  {
    v15 = v14 | v8;

    if (v15)
    {
      v16 = MEMORY[0x1E69A7F58];
      v17 = [(CKTranscriptCollectionViewController *)self chat];
      v18 = [v17 lastFinishedMessageItem];
      v19 = [v18 destinationCallerID];
      v20 = [v16 carrierNameForPhoneNumber:v19];

      if (![v20 length])
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
      v22 = [(CKTranscriptCollectionViewController *)self chat];
      [v22 lastFinishedMessageItem];
      v71 = a3;
      v24 = v23 = a4;
      v25 = [(CKTranscriptCollectionViewController *)self chat];
      v26 = [v21 isReportJunkServiceAllowedForMessageItem:v24 junkChatStyle:{objc_msgSend(v25, "chatStyle")}] | v8;

      a4 = v23;
      a3 = v71;

      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v27 = MEMORY[0x1E69A7F58];
    v28 = [(CKTranscriptCollectionViewController *)self chat];
    v29 = [v28 lastFinishedMessageItem];
    v30 = [v29 destinationCallerID];
    v20 = [v27 carrierNameForPhoneNumber:v30];

    if (v20)
    {
LABEL_10:
      [v72 addObject:v20];
LABEL_11:
      v31 = 1;
      goto LABEL_21;
    }
  }

LABEL_12:
  v32 = [(CKTranscriptCollectionViewController *)self chat];
  v33 = [v32 isRCS];

  if (!v33)
  {
    v31 = 0;
    goto LABEL_22;
  }

  v34 = [(CKTranscriptCollectionViewController *)self chat];
  v20 = [v34 lastAddressedSIMID];

  v35 = [(CKTranscriptCollectionViewController *)self chat];
  v36 = [v35 lastAddressedHandleID];

  v37 = [MEMORY[0x1E69A7F68] sharedInstance];
  v38 = [v37 ctSubscriptionInfo];
  v39 = [v38 __im_subscriptionContextForForSimID:v20 phoneNumber:v36];

  if (v39 && ([MEMORY[0x1E69A7F50] sharedManager], v40 = objc_claimAutoreleasedReturnValue(), -[CKTranscriptCollectionViewController chat](self, "chat"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "networkSupportsSpamReportingForContext:isChatBot:", v39, objc_msgSend(v41, "isChatBot")), v41, v40, v42))
  {
    v43 = MEMORY[0x1E69A7F58];
    v44 = [(CKTranscriptCollectionViewController *)self chat];
    v45 = [v44 lastFinishedMessageItem];
    v46 = [v45 destinationCallerID];
    v47 = [v43 carrierNameForPhoneNumber:v46];

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
    *a3 = [v51 localizedStringForKey:@"REPORT_SPAM_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    if (v31)
    {
      v52 = MEMORY[0x1E696AEC0];
      v53 = CKFrameworkBundle();
      v54 = [v53 localizedStringForKey:@"REPORT_JUNK_CONVERSATION_ALERT_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v55 = [v52 stringWithFormat:v54, v50];

      v56 = [MEMORY[0x1E69DC668] sharedApplication];
      v57 = [v56 userInterfaceLayoutDirection];

      if (v57 == 1)
      {
        v58 = @"\u200F";
      }

      else
      {
        v58 = @"\u200E";
      }

      v59 = [(__CFString *)v58 stringByAppendingString:v55];

      v60 = v59;
      *a4 = v59;
      goto LABEL_36;
    }

    v70 = CKFrameworkBundle();
    *a4 = [v70 localizedStringForKey:@"REPORT_JUNK_CONVERSATION_ALERT_BUTTON_TITLE_CARRIER" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    if (v31)
    {
      v61 = MEMORY[0x1E696AEC0];
      v62 = CKFrameworkBundle();
      v63 = [v62 localizedStringForKey:@"REPORT_JUNK_CONVERSATION_ALERT_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      v64 = [v61 stringWithFormat:v63, v50];

      v65 = [MEMORY[0x1E69DC668] sharedApplication];
      v66 = [v65 userInterfaceLayoutDirection];

      if (v66 == 1)
      {
        v67 = @"\u200F";
      }

      else
      {
        v67 = @"\u200E";
      }

      v68 = [(__CFString *)v67 stringByAppendingString:v64];

      v69 = v68;
      *a3 = v68;
      goto LABEL_36;
    }

    v70 = CKFrameworkBundle();
    *a3 = [v70 localizedStringForKey:@"REPORT_JUNK_CONVERSATION_ALERT_BUTTON_TITLE_CARRIER" value:&stru_1F04268F8 table:@"ChatKit"];
  }

LABEL_36:
}

- (void)_messageParents
{
  v2 = [MEMORY[0x1E69A5B40] sharedInstance];
  [v2 getOpenChatURLWith:&__block_literal_global_1332];
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
  v4 = [MEMORY[0x1E69853B8] nonPersistentDataStore];
  [v3 setWebsiteDataStore:v4];
  v5 = objc_alloc(MEMORY[0x1E69853A0]);
  v6 = [v5 initWithFrame:v3 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v7 = objc_alloc(MEMORY[0x1E696AF68]);
  v8 = [MEMORY[0x1E695DFF8] URLWithString:v15];
  v9 = [v7 initWithURL:v8];

  v10 = [v6 loadRequest:v9];
  v11 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v11 setView:v6];
  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissMoreHelpView_];
  v13 = [v11 navigationItem];
  [v13 setRightBarButtonItem:v12];

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

- (void)_showLeaveConversationFromView:(id)a3
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

- (void)_showBlockContactSelectionAlertFromView:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = IMSharedUtilitiesFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"BLOCK_CONTACT_BUTTON_TITLE" value:&stru_1F04268F8 table:@"CommSafetyLocalizable"];
  v6 = [CKAlertController alertControllerWithTitle:v5 message:0 preferredStyle:CKIsRunningInMacCatalyst() != 0];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(CKTranscriptCollectionViewController *)self conversation];
  v8 = [v7 recipients];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
        v15 = [v14 name];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          [v14 defaultIMHandle];
          v18 = v12;
          v19 = v6;
          v20 = self;
          v22 = v21 = v10;
          v17 = [v22 displayID];

          v10 = v21;
          self = v20;
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
        v24 = [v23 actionWithTitle:v17 style:2 handler:v30];
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

- (void)addContentAnimationPauseReasons:(int64_t)a3
{
  contentAnimationPauseReasons = self->_contentAnimationPauseReasons;
  self->_contentAnimationPauseReasons = contentAnimationPauseReasons | a3;
  if (contentAnimationPauseReasons)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 0;
  }

  if (!v4)
  {
    [(CKTranscriptCollectionViewController *)self updateAnimationPaused];
  }
}

- (void)removeContentAnimationPauseReasons:(int64_t)a3
{
  contentAnimationPauseReasons = self->_contentAnimationPauseReasons;
  v4 = contentAnimationPauseReasons & ~a3;
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

- (CGRect)convertedBoundsToCullFromView:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v5 bounds];
  [v5 convertRect:v4 toView:?];
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
  v3 = [(CKTranscriptCollectionViewController *)self chatItems];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
          v11 = [v9 extensibleViewControllerForContext:v10];

          v12 = [v11 parentViewController];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14 || v12 == self)
          {
            v16 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
            [v9 releaseBalloonControllerIfNeededForContext:v16];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

- (void)repromptLastBlackholeFailureIfNotPrompted
{
  v3 = [(CKTranscriptCollectionViewController *)self lastMessagePartChatItem];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 IMChatItem];
    if ([(CKTranscriptCollectionViewController *)self shouldPresentHawkingPromptForChatItem:v5])
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

      [(CKTranscriptCollectionViewController *)self presentHawkingPromptForChatItem:v5];
    }
  }
}

- (BOOL)shouldPresentHawkingPromptForChatItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 message];
    v6 = [(CKTranscriptCollectionViewController *)self presentedViewController];
    if (v6)
    {
    }

    else
    {
      v8 = [(CKTranscriptCollectionViewController *)self __CurrentTestName];

      if (!v8)
      {
        v10 = [v5 isFromMe];
        v11 = [v5 error];
        v12 = [v11 code];

        v13 = [v5 __ck_isiMessage];
        if (v10)
        {
          if (v12 == 43)
          {
            if (v13)
            {
              v14 = [(CKTranscriptCollectionViewController *)self conversation];
              v15 = [v14 chat];
              v16 = [v15 valueForChatProperty:*MEMORY[0x1E69A5D28]];

              if (!v16 || ([v5 time], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "compare:", v17), v17, v16, v18 == -1))
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

- (void)presentHawkingPromptForChatItem:(id)a3
{
  v27 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v27;
  if (isKindOfClass)
  {
    v6 = [v27 message];
    v7 = [(CKTranscriptCollectionViewController *)self conversation];
    v8 = [v7 recipient];
    v9 = [v8 IDSCanonicalAddress];
    v10 = MEMORY[0x193AF5D70]();

    v11 = [(CKTranscriptCollectionViewController *)self conversation];
    v12 = [v11 chat];
    v13 = [v12 lastAddressedHandleID];

    v14 = MEMORY[0x193AF5D70](v13);
    IsEmail = IMStringIsEmail();
    if ([v6 __ck_isiMessage] && objc_msgSend(MEMORY[0x1E69A5CA0], "smsEnabled"))
    {
      v16 = [(CKTranscriptCollectionViewController *)self conversation];
      v17 = [v16 isBusinessConversation];

      v18 = v17 | IsEmail;
    }

    else
    {
      v18 = 1;
    }

    v19 = [MEMORY[0x1E69A7F60] sharedManager];
    v20 = [v19 isMessagesTheDefaultTextApp];

    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v22 = [(CKTranscriptCollectionViewController *)self conversation];
      v21 = ([v22 isToEmailAddress] ^ 1) & v20;
    }

    v23 = [(CKTranscriptCollectionViewController *)self makeHawkingPromptForMessage:v6 toRecipient:v10 fromSender:v14 withSMSOption:v21];
    [(CKTranscriptCollectionViewController *)self presentViewController:v23 animated:1 completion:0];
    v24 = [(CKTranscriptCollectionViewController *)self conversation];
    v25 = [v24 chat];
    v26 = [v6 time];
    [v25 setValue:v26 forChatProperty:*MEMORY[0x1E69A5D28]];

    v5 = v27;
  }
}

- (id)makeHawkingPromptForMessage:(id)a3 toRecipient:(id)a4 fromSender:(id)a5 withSMSOption:(BOOL)a6
{
  v6 = a6;
  v49 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v43 = a5;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v10;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Hawking: Showing non-cellular blackhole prompt for message (%@)", buf, 0xCu);
    }
  }

  if (IMStringIsEmail())
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_TITLE_%@" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = [v13 stringWithFormat:v15, v11];

    v17 = [MEMORY[0x1E69DC668] sharedApplication];
    LODWORD(v14) = [v17 userInterfaceLayoutDirection] == 1;

    if (v14)
    {
      v18 = @"\u200F";
    }

    else
    {
      v18 = @"\u200E";
    }

    v19 = [(__CFString *)v18 stringByAppendingString:v16];
  }

  else
  {
    v16 = IMFormattedDisplayStringForNumber();
    v20 = MEMORY[0x1E696AEC0];
    v21 = CKFrameworkBundle();
    v22 = [v21 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_TITLE_%@" value:&stru_1F04268F8 table:@"ChatKit"];
    v23 = [v20 stringWithFormat:v22, v16];

    v24 = [MEMORY[0x1E69DC668] sharedApplication];
    LODWORD(v21) = [v24 userInterfaceLayoutDirection] == 1;

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

  v26 = [(CKTranscriptCollectionViewController *)self hawkingFailurePromptMessageForHandle:v43];
  v27 = [(CKAlertController *)CKBlackholeAlertController alertControllerWithTitle:v19 message:v26 preferredStyle:1];

  v28 = CKFrameworkBundle();
  v29 = [v28 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_RESEND_AS_SMS" value:&stru_1F04268F8 table:@"ChatKit"];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __105__CKTranscriptCollectionViewController_makeHawkingPromptForMessage_toRecipient_fromSender_withSMSOption___block_invoke;
  v44[3] = &unk_1E72EC710;
  v30 = v10;
  v45 = v30;
  v46 = self;
  v31 = [CKAlertAction actionWithTitle:v29 style:0 handler:v44];

  v32 = CKFrameworkBundle();
  v33 = [v32 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_MESSAGE_LEARN_MORE" value:&stru_1F04268F8 table:@"ChatKit"];
  v34 = [CKAlertAction actionWithTitle:v33 style:0 handler:&__block_literal_global_1375_0];

  v35 = CKFrameworkBundle();
  v36 = v35;
  if (v6)
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
  v40 = [v27 preferredAction];
  v41 = v40 == 0;

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

- (id)hawkingFailurePromptMessageForHandle:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x193AF5D70]();
  IsEmail = IMStringIsEmail();

  if (IsEmail)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"HAWKING_FAILURE_PROMPT_MESSAGE_EMAIL_ADDRESS_%@" value:&stru_1F04268F8 table:@"ChatKit"];
    v9 = [v6 stringWithFormat:v8, v4];

    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    v11 = [v10 userInterfaceLayoutDirection];

    if (v11 == 1)
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

    v18 = [MEMORY[0x1E69DC668] sharedApplication];
    v19 = [v18 userInterfaceLayoutDirection];

    if (v19 == 1)
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
  v3 = [(CKTranscriptCollectionViewController *)self presentedViewController];
  if (!v3)
  {
    v4 = [(CKTranscriptCollectionViewController *)self __CurrentTestName];

    if (v4 || IMSharedHelperIsOlderDevice() && CKIsRunningInMessagesNotificationExtension())
    {
      return;
    }

    v5 = [(CKTranscriptCollectionViewController *)self collectionView];
    v6 = [(CKTranscriptCollectionViewController *)self lastMessagePartChatItem];
    if (v6)
    {
      v7 = [(CKTranscriptCollectionViewController *)self cellForChatItem:v6];
      v8 = v7;
      if (v7)
      {
        [v7 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [v8 superview];
        [v5 convertRect:v17 fromView:{v10, v12, v14, v16}];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [v5 contentOffset];
        v27 = v26;
        [v5 frame];
        v29 = v28;
        [v5 frame];
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
          v31 = [(CKTranscriptCollectionViewController *)self chatItems];
          v32 = [v31 lastObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {

            goto LABEL_31;
          }

          v34 = [v6 IMChatItem];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = [v34 message];
            v36 = [v35 isFromMe];
            v37 = [v35 timeExpressiveSendPlayed];

            if (v37)
            {
              v38 = 1;
            }

            else
            {
              v38 = v36;
            }

            if (v38 == 1 && (-[CKTranscriptCollectionViewController playedLastImpactEffectForTransitionFromComposing](self, "playedLastImpactEffectForTransitionFromComposing") || !-[CKTranscriptCollectionViewController transitionedFromComposing](self, "transitionedFromComposing") || (-[CKTranscriptCollectionViewController delegate](self, "delegate"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 transcriptCollectionViewControllerPlaybackForOutgoingEffectsIsAllowed:self], v39, !v40)))
            {
              if (IMOSLoggingEnabled())
              {
                v43 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v47 = v37 != 0;
                  v46 = [(CKTranscriptCollectionViewController *)self playedLastImpactEffectForTransitionFromComposing];
                  v44 = [(CKTranscriptCollectionViewController *)self transitionedFromComposing];
                  v45 = [(CKTranscriptCollectionViewController *)self delegate];
                  *buf = 67110144;
                  v55 = v36;
                  v56 = 1024;
                  v57 = v47;
                  v58 = 1024;
                  v59 = v46;
                  v60 = 1024;
                  v61 = v44;
                  v62 = 1024;
                  v63 = [v45 transcriptCollectionViewControllerPlaybackForOutgoingEffectsIsAllowed:self];
                  _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "Not starting FSM. messageIsFromMe: %d - effectHasBeenPlayed: %d - playedLastImpactForTransitionFromComposing: %d - transitionedFromComposing: %d - playbackAllowed: %d", buf, 0x20u);
                }
              }
            }

            else
            {
              if (v36)
              {
                [(CKTranscriptCollectionViewController *)self setPlayedLastImpactEffectForTransitionFromComposing:1];
              }

              v41 = [v35 expressiveSendStyleID];
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __74__CKTranscriptCollectionViewController__replayLastImpactEffectIfNotFromMe__block_invoke;
              block[3] = &unk_1E72F1580;
              v49 = v41;
              v50 = self;
              v51 = v35;
              v52 = v34;
              v53 = v6;
              v42 = v41;
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

- (void)_downgradeMessage:(id)a3 andDowngradeChat:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    if ([v6 __ck_isSMS])
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
          v9 = [v7 guid];
          v10 = [(CKTranscriptCollectionViewController *)self conversation];
          *buf = 138412546;
          v19 = v9;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Manually downgrading message with GUID {%@} -- conversation:%@", buf, 0x16u);
        }
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_CKShouldLogExternal())
        {
          v11 = [v7 guid];
          [(CKTranscriptCollectionViewController *)self conversation];
          v15 = v14 = v11;
          _CKLogExternal();
        }
      }

      v12 = [(CKConversation *)self->_conversation chat:v14];
      [v12 downgradeMessage:v7 manualDowngrade:1 downgradeChat:v4];

      v13 = [v7 __ck_downgradedMessage];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __75__CKTranscriptCollectionViewController__downgradeMessage_andDowngradeChat___block_invoke;
      v16[3] = &unk_1E72EB8D0;
      v16[4] = self;
      v17 = v13;
      v7 = v13;
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

- (void)_resendMessage:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(27);
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = v4;
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
    v10 = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__CKTranscriptCollectionViewController__resendMessage___block_invoke_2;
    v6[3] = &unk_1E72EB8D0;
    v7 = v10;
    v8 = self;
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

- (void)_resendFailedPollVote:(id)a3 forMessage:(id)a4
{
  if (a3 && a4)
  {
    v5 = [a3 dataSource];
    v17 = [v5 pluginPayload];

    v6 = v17;
    if (v17)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [v17 associatedMessageGUID];
      v9 = [v7 stringWithFormat:@"bp:%@", v8];

      v10 = [(CKTranscriptCollectionViewController *)self chatItemForGUID:v9];
      if (v10)
      {
        v11 = [MEMORY[0x1E69A5AE0] configureMessageSummaryInfoForChatItem:v10];
        v12 = MEMORY[0x1E69A5BD8];
        v13 = [v17 data];
        v14 = [v17 associatedMessageGUID];
        v15 = [v17 pluginBundleID];
        v16 = [v12 customAcknowledgementMessageWithPayloadData:v13 associatedMessageGUID:v14 balloonBundleID:v15 messageSummaryInfo:v11 threadIdentifier:0];

        [(CKTranscriptCollectionViewController *)self _resendMessage:v16];
      }

      v6 = v17;
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

- (void)transferRestored:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(CKTranscriptCollectionViewController *)self chatItems];
  v7 = [v6 __ck_indexOfTransfer:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v4 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v4 object];
      v11 = [(CKTranscriptCollectionViewController *)self chatItems];
      v12 = [v11 containsObject:v10];

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
        v18 = v5;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_DEBUG, "Transfer %@ restored. Reload indexes %@.", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v15 = v5;
      v16 = v13;
      _CKLog();
    }

    [v6 __ck_unloadSizesAtIndexes:{v13, v15, v16}];
    [(CKTranscriptCollectionViewController *)self reloadData];
  }
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v19[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __76__CKTranscriptCollectionViewController_stateDictionaryForDiagnosticsRequest__block_invoke;
  v16 = &unk_1E72F0918;
  v17 = v3;
  v5 = v3;
  [v4 enumerateObjectsWithOptions:2 usingBlock:&v13];

  [(CKTranscriptCollectionViewController *)self _logVisibleChatItems:v13];
  v18[0] = @"debugDescription";
  v6 = [(CKTranscriptCollectionViewController *)self debugDescription];
  v19[0] = v6;
  v19[1] = v5;
  v18[1] = @"bottomChatItems";
  v18[2] = @"chat";
  v7 = [(CKTranscriptCollectionViewController *)self chat];
  v8 = [v7 stateDictionaryForDiagnosticsRequest];
  v9 = v8;
  v10 = @"nil";
  if (v8)
  {
    v10 = v8;
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
  v2 = [MEMORY[0x1E69A60F0] sharedInstance];
  v3 = [v2 isInternalInstall];

  if (v3)
  {
    if ([(CKTranscriptCollectionViewController *)self isViewLoaded])
    {
      v4 = [(CKTranscriptCollectionViewController *)self view];
      v5 = [v4 window];

      if (v5)
      {
        v90 = [MEMORY[0x1E695DF70] array];
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v6 = [(CKTranscriptCollectionViewController *)self collectionView];
        v7 = [v6 indexPathsForVisibleItems];

        v8 = [v7 countByEnumeratingWithState:&v100 objects:v108 count:16];
        if (v8)
        {
          v9 = *v101;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v101 != v9)
              {
                objc_enumerationMutation(v7);
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
                v14 = [(CKTranscriptCollectionViewController *)self chatItems];
                v15 = [v14 objectAtIndex:{objc_msgSend(v11, "item")}];

                v16 = [v15 IMChatItem];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass & [objc_opt_class() instancesRespondToSelector:sel_message])
                {
                  [v90 addObject:v15];
                }
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v100 objects:v108 count:16];
          }

          while (v8);
        }

        [v90 sortUsingComparator:&__block_literal_global_1432_0];
        v89 = objc_alloc_init(MEMORY[0x1E696AD60]);
        if ([v90 count])
        {
          v19 = 0;
          do
          {
            v20 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v85 = [v90 objectAtIndex:v19];
            v21 = [(CKTranscriptCollectionViewController *)self collectionView];
            v22 = [v21 visibleCells];
            v87 = [v22 objectAtIndex:v19];

            v23 = [v85 IMChatItem];
            v24 = [v23 message];

            if ([v24 isFromMe])
            {
              v25 = @"\t\t\t\t\t\t\t\t\t\t";
            }

            else
            {
              v25 = &stru_1F04268F8;
            }

            v26 = [v24 text];
            v27 = [v26 string];

            if ([v27 length] <= 2)
            {
              v28 = v27;
            }

            else
            {
              v28 = [v27 substringWithRange:{0, 3}];
            }

            [v89 appendString:@"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n"];
            [v20 appendString:@"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n"];
            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@id: %lld   message: %@\n", v25, objc_msgSend(v24, "messageID"), v24];
            [v89 appendString:v29];

            v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@id: %lld   message: %@\n", v25, objc_msgSend(v24, "messageID"), v24];
            [v20 appendString:v30];

            v31 = MEMORY[0x1E696AEC0];
            v32 = [v24 fileTransferGUIDs];
            v33 = [v31 stringWithFormat:@"%@fileTransferGUIDs: %@\n", v25, v32];
            [v89 appendString:v33];

            v34 = MEMORY[0x1E696AEC0];
            v35 = [v24 fileTransferGUIDs];
            v36 = [v34 stringWithFormat:@"%@fileTransferGUIDs: %@\n", v25, v35];
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
            v42 = [v24 text];
            v43 = [v42 string];
            v44 = [v41 stringWithFormat:@"%@Text CharacterCount: %tu\n", v25, objc_msgSend(v43, "length")];
            [v89 appendString:v44];

            v45 = MEMORY[0x1E696AEC0];
            v46 = [v24 text];
            v47 = [v46 string];
            v48 = [v45 stringWithFormat:@"%@Text CharacterCount: %tu\n", v25, objc_msgSend(v47, "length")];
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

          while (v19 < [v90 count]);
        }

        v52 = [(CKTranscriptCollectionViewController *)self view];
        v86 = [v52 recursiveDescription];

        v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v54 = [MEMORY[0x1E69DC668] sharedApplication];
        v55 = [v54 windows];

        v56 = [v55 countByEnumeratingWithState:&v96 objects:v105 count:16];
        if (v56)
        {
          v57 = *v97;
          do
          {
            for (j = 0; j != v56; ++j)
            {
              if (*v97 != v57)
              {
                objc_enumerationMutation(v55);
              }

              v59 = *(*(&v96 + 1) + 8 * j);
              v60 = MEMORY[0x1E696AEC0];
              v61 = [v59 recursiveDescription];
              v62 = [v60 stringWithFormat:@"Showing hierarchy for window   %@\n%@", v59, v61];

              [v53 addObject:v62];
            }

            v56 = [v55 countByEnumeratingWithState:&v96 objects:v105 count:16];
          }

          while (v56);
        }

        v63 = [MEMORY[0x1E69DCE60] currentFirstResponder];
        v64 = [(CKTranscriptCollectionViewController *)self parentViewController];
        v65 = v64 == v63;

        if (v65)
        {
          v66 = [(CKTranscriptCollectionViewController *)self parentViewController];
          v88 = [v66 inputAccessoryView];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v88 = v63;
          }

          else
          {
            v88 = 0;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && IMOSLoggingEnabled())
        {
          v67 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            v68 = [v88 delegate];
            *buf = 138412290;
            v107 = v68;
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
            v71 = [MEMORY[0x1E695DF00] date];
            *buf = 138412290;
            v107 = v71;
            _os_log_impl(&dword_19020E000, v70, OS_LOG_TYPE_INFO, "Timestamp\t\t%@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v72 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v107 = v63;
            _os_log_impl(&dword_19020E000, v72, OS_LOG_TYPE_INFO, "Current Responder\t\t%@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v73 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v107 = v88;
            _os_log_impl(&dword_19020E000, v73, OS_LOG_TYPE_INFO, "inputAccessory\t\t%@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            v75 = [(CKTranscriptCollectionViewController *)self chatItems];
            *buf = 138412290;
            v107 = v75;
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
            v107 = v86;
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

- (void)previewDidChange:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 object];
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = [v7 transfer];
    v10 = [(CKTranscriptCollectionViewController *)self chatItems];
    v11 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v12 = [v10 __ck_indexOfTransfer:v9];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v11 __ck_indexOfTransfer:v9];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_21:

        goto LABEL_22;
      }

      v14 = v13;
      v15 = [v11 objectAtIndex:v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        v17 = [v9 guid];
        v32 = v16;
        LODWORD(v16) = [v16 containsTransferGUID:v17];

        if (v16)
        {
          if (![v8 cachedValidPreviewExists])
          {
            v31 = IMLogHandleForCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [CKTranscriptCollectionViewController previewDidChange:v9];
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

  v8 = [v4 object];
  if (v19)
  {
    v20 = [(CKTranscriptCollectionViewController *)self chatItems];
    v21 = [v20 containsObject:v8];

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
    v8 = [v4 object];
    v23 = [(CKTranscriptCollectionViewController *)self chatItems];
    v24 = [v23 containsObject:v8];

    if (!v24)
    {
      goto LABEL_23;
    }

    v25 = [(CKTranscriptCollectionViewController *)self chatItems];
    v26 = [v8 IMChatItem];
    v27 = [v26 guid];
    v28 = [v25 __ck_indexOfChatItemWithGUID:v27];

    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v28 inSection:0];
    v29 = [(CKTranscriptCollectionViewController *)self collectionView];
    v33[0] = v9;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    [v29 reloadItemsAtIndexPaths:v30];

LABEL_22:
LABEL_23:
  }
}

- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 transferGUID];
    if ([v5 length])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = [(CKTranscriptCollectionViewController *)self chatItems];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __84__CKTranscriptCollectionViewController__adaptiveImageGlyphWasGeneratedNotification___block_invoke;
      v29[3] = &unk_1E72F2B78;
      v9 = v5;
      v30 = v9;
      v10 = v6;
      v31 = v10;
      v11 = v7;
      v32 = v11;
      [v8 enumerateObjectsUsingBlock:v29];
      v12 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __84__CKTranscriptCollectionViewController__adaptiveImageGlyphWasGeneratedNotification___block_invoke_2;
      v25[3] = &unk_1E72ED7C8;
      v26 = v9;
      v13 = v10;
      v27 = v13;
      v14 = v11;
      v28 = v14;
      [v12 enumerateObjectsUsingBlock:v25];
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

- (void)snapshotDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CKSnapshotChangedMessageGUIDKey"];

  v6 = [(CKTranscriptCollectionViewController *)self chatItems];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CKTranscriptCollectionViewController_snapshotDidChange___block_invoke;
  v10[3] = &unk_1E72F2DB8;
  v7 = v5;
  v11 = v7;
  v8 = [v6 indexOfObjectPassingTest:v10];
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

- (void)locationStringDidChange:(id)a3
{
  v8 = [a3 object];
  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [v8 transfer];
  v6 = [v4 __ck_indexOfTransfer:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v6];
    [v4 __ck_unloadSizesAtIndexes:v7];
    [v4 __ck_unloadTranscriptTextAtIndexes:v7];
    [(CKTranscriptCollectionViewController *)self reloadData];
  }
}

- (void)unloadCachedSizeAndReloadChatItemAtIndexPath:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  v6 = [v5 currentEffect];
  if (v6)
  {

LABEL_9:
    goto LABEL_10;
  }

  v7 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  v8 = [v7 isAnimating];

  if ((v8 & 1) == 0)
  {
    v5 = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v4, "item")}];
    if ([v4 section])
    {
      if ([v4 section] == 1)
      {
        v10 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
        [v10 __ck_unloadSizesAtIndexes:v9];

        v36[0] = v4;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        [v5 reloadItemsAtIndexPaths:v11];

        [(CKTranscriptCollectionViewController *)self reloadData];
      }
    }

    else
    {
      v12 = [(CKTranscriptCollectionViewController *)self collectionView];
      v13 = [(CKTranscriptCollectionViewController *)self collectionViewLayout];
      [v12 contentOffset];
      v15 = v14;
      v17 = v16;
      [v12 contentSize];
      v19 = v18;
      v21 = v20;
      v22 = [(CKTranscriptCollectionViewController *)self chatItems];
      [v22 __ck_unloadSizesAtIndexes:v9];

      v23 = [v12 indexPathsForVisibleItems];
      v24 = [v23 containsObject:v4];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __85__CKTranscriptCollectionViewController_unloadCachedSizeAndReloadChatItemAtIndexPath___block_invoke;
      v27[3] = &unk_1E72F2E78;
      v35 = v24;
      v28 = v13;
      v31 = v15;
      v32 = v17;
      v33 = v19;
      v34 = v21;
      v29 = v4;
      v30 = v12;
      v25 = v12;
      v26 = v13;
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

- (void)_reloadChatItemAtIndexPath:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self fullscreenEffectManager];
  v6 = [v5 currentEffect];
  if (v6)
  {

LABEL_9:
    goto LABEL_10;
  }

  v7 = [(CKTranscriptCollectionViewController *)self impactEffectManager];
  v8 = [v7 isAnimating];

  if ((v8 & 1) == 0)
  {
    v5 = [(CKTranscriptCollectionViewController *)self collectionView];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v4, "item")}];
    if ([v4 section])
    {
      if ([v4 section] == 1)
      {
        v10 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
        [v10 __ck_unloadSizesAtIndexes:v9];

        v13[0] = v4;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        [v5 reloadItemsAtIndexPaths:v11];

        [(CKTranscriptCollectionViewController *)self reloadData];
      }
    }

    else
    {
      v12 = [v5 indexPathsForVisibleItems];
      -[CKTranscriptCollectionViewController reloadChatItemsAtIndexes:animated:](self, "reloadChatItemsAtIndexes:animated:", v9, [v12 containsObject:v4]);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)transferUpdated:(id)a3
{
  v16 = [a3 object];
  v4 = [(CKTranscriptCollectionViewController *)self _indexPathForTransfer:?];
  if (v4)
  {
    v5 = [v16 error];
    v6 = v5;
    if (!v5)
    {
      if (![v16 isFileDataReady])
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = [v5 domain];
    if ([v7 isEqualToString:@"IMFileTransferErrorDomain"])
    {
      v8 = [v6 code];

      if (v8 == 25)
      {
        v9 = @"ERR_TRANSFER_EXPIRED_TITLE";
        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = [v6 domain];
    if (![v10 isEqualToString:@"IMFileTransferErrorDomain"])
    {
      v12 = 0;
      goto LABEL_14;
    }

    v11 = [v6 code];

    if (v11 != 26)
    {
      v12 = 0;
      goto LABEL_15;
    }

    v9 = @"ERR_TRANSFER_NO_NETWORK_TITLE";
LABEL_12:
    v10 = CKFrameworkBundle();
    v12 = [v10 localizedStringForKey:v9 value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_14:

LABEL_15:
    v13 = CKFrameworkBundle();
    v14 = [v13 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];

    v15 = CKCreateAlertControllerWithError(0, v12, 0, v14, 0);
    if (v15)
    {
      [(CKTranscriptCollectionViewController *)self presentViewController:v15 animated:1 completion:0];
    }

    [v16 isFileDataReady];
LABEL_18:
    [(CKTranscriptCollectionViewController *)self unloadCachedSizeAndReloadChatItemAtIndexPath:v4];
LABEL_19:
  }
}

- (id)_indexPathForTransfer:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [v5 __ck_indexOfTransfer:v4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(CKTranscriptCollectionViewController *)self associatedChatItems];
    v8 = [v7 __ck_indexOfTransfer:v4];
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
  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
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

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  [CKChatItem unloadSizesOfChatItems:v3];
  [(CKTranscriptCollectionViewController *)self reloadData];
}

- (void)addressBookChanged:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CKTranscriptCollectionViewController_addressBookChanged___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_conversationListFinishedMerging:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self conversation];
  v6 = +[CKConversationList sharedConversationList];
  v7 = [v5 chat];
  v8 = [v7 guid];
  v9 = [v6 conversationForExistingChatWithGUID:v8];

  if (v9)
  {
    if (v5 != v9)
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
          v16 = v5;
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

  else if (v5 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKTranscriptCollectionViewController attempted to replace conversation after re-merge, but couldn't find a new conversation to replace %@", buf, 0xCu);
    }
  }
}

- (void)printTranscript
{
  v3 = [MEMORY[0x1E69C5A10] printInfo];
  [v3 setOutputType:0];
  v4 = [(CKTranscriptCollectionViewController *)self conversation];
  v5 = [v4 hasDisplayName];
  v6 = [(CKTranscriptCollectionViewController *)self conversation];
  v7 = v6;
  if (v5)
  {
    [v6 displayName];
  }

  else
  {
    [v6 name];
  }
  v8 = ;

  [v3 setJobName:v8];
  v9 = [CKTranscriptPrintPageRenderer alloc];
  v10 = [(CKTranscriptCollectionViewController *)self printableViewController];
  v11 = [(CKTranscriptPrintPageRenderer *)v9 initWithTranscriptCollectionViewController:v10];

  v12 = [MEMORY[0x1E69C5A18] sharedPrintController];
  [v12 setPrintInfo:v3];
  [v12 setPrintPageRenderer:v11];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__CKTranscriptCollectionViewController_printTranscript__block_invoke;
  v13[3] = &unk_1E72F2EA0;
  v13[4] = self;
  [v12 presentAnimated:1 completionHandler:v13];
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
  v5 = [(CKTranscriptCollectionViewController *)self conversation];
  [(CKTranscriptCollectionViewController *)self balloonMaxWidth];
  v7 = v6;
  [(CKTranscriptCollectionViewController *)self marginInsets];
  v12 = [(CKPrintTranscriptCollectionViewController *)v4 initWithConversation:v5 delegate:0 balloonMaxWidth:v7 marginInsets:v8, v9, v10, v11];

  v13 = +[CKUIBehavior sharedBehaviors];
  -[CKTranscriptCollectionViewController setShouldLoadDefaultConversationViewingMessageCountOnAppear:](v12, "setShouldLoadDefaultConversationViewingMessageCountOnAppear:", [v13 shouldLoadInitialViewingMessageCount]);

  [(CKPrintTranscriptCollectionViewController *)v12 updateUIContents];
  v14 = +[CKPrintController sharedInstance];
  [v14 setPrinting:0];

  return v12;
}

- (void)installedAppsChanged:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 bundleIdentifier];
          v12 = [v11 isEqualToString:v8];

          v6 |= v12 ^ 1;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
      v14 = [(CKTranscriptCollectionViewController *)self chatItems];
      v15 = [v14 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v15)
      {
        v16 = *v37;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v36 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 addObject:v18];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v36 objects:v46 count:16];
        }

        while (v15);
      }

      [CKChatItem unloadSizesOfChatItems:v13];
      v19 = +[CKChatItemSizeCache sharedInstance];
      [v19 invalidateCachedSizeForGUIDPrefix:@"bp:" reason:@"installedAppsChanged"];

      v20 = [(CKTranscriptCollectionViewController *)self conversation];
      v21 = [v20 chat];
      v22 = [v21 guid];

      v23 = [v20 recipientStrings];
      v24 = [v20 isBusinessConversation];
      v25 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
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

            [*(*(&v32 + 1) + 8 * k) configureWithConversationID:v22 recipients:v23 isBusiness:v24 context:v25];
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

- (void)_updatedMessageTintColor:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v38 = [v5 objectForKey:*MEMORY[0x1E69A5A48]];

  v6 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = 0;
    goto LABEL_36;
  }

  v8 = [v4 object];
  v9 = v8;
  if (v8 && [v8 length])
  {
    v36 = v9;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = self;
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
        v16 = [v15 IMChatItem];
        v17 = v16;
        if (v38)
        {
          v18 = [v16 dataSource];
          v19 = [v18 pluginPayload];

          v20 = [MEMORY[0x1E69A5AD0] sharedInstance];
          v21 = [v20 dataSourceForPluginPayload:v19];

          if (v21)
          {
            v22 = [v21 stagingContext];
            v23 = [v22 transientIdentifier];
            v24 = [v38 isEqualToString:v23];

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
          v25 = [v16 guid];
          v26 = [v25 isEqualToString:v36];

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

            v31 = [(CKTranscriptCollectionViewController *)v35 cellForChatItem:v15];
            if (v31)
            {
              v32 = [v15 IMChatItem];
              v33 = [v32 guid];

              v34 = [(CKTranscriptCollectionViewController *)v35 indexPathForChatItemGUID:v33];
              [(CKTranscriptCollectionViewController *)v35 configureCell:v31 forCKChatItem:v15 atIndexPath:v34 animated:0 animationDuration:3 animationCurve:0.0];
            }

            else
            {
              v33 = IMLogHandleForCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
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

- (void)multiwayCallStateChanged:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
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
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [CKChatItem unloadSizesOfChatItems:v4];
  [(CKTranscriptCollectionViewController *)self reloadData];
}

- (void)chatItemsDidChange:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v50 = a3;
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

  v8 = [(CKTranscriptCollectionViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CKTranscriptCollectionViewController *)self delegate];
    [v10 transcriptCollectionViewControllerWillUpdateTranscriptChatItems:self];
  }

  v11 = [v50 userInfo];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__33;
  v65 = __Block_byref_object_dispose__33;
  v66 = [v11 objectForKey:*MEMORY[0x1E69A5750]];
  v12 = [v11 objectForKey:*MEMORY[0x1E69A5778]];
  v13 = [v11 objectForKey:*MEMORY[0x1E69A5770]];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__33;
  v59 = __Block_byref_object_dispose__33;
  v60 = [v11 objectForKey:*MEMORY[0x1E69A5768]];
  v14 = [v11 objectForKey:*MEMORY[0x1E69A5760]];
  v15 = [v11 objectForKey:*MEMORY[0x1E69A5758]];
  v16 = [(CKTranscriptCollectionViewController *)self chatItems];
  v17 = [v16 count];
  LODWORD(v17) = v17 < [v14 count];

  if (v17)
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v37 = [(CKTranscriptCollectionViewController *)self isInline];
      v38 = @"NO";
      if (v37)
      {
        v38 = @"YES";
      }

      v43 = v38;
      v39 = MEMORY[0x1E696AD98];
      v47 = [(CKTranscriptCollectionViewController *)self chatItems];
      v46 = [v39 numberWithUnsignedInteger:{objc_msgSend(v47, "count")}];
      v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      v44 = [(CKTranscriptCollectionViewController *)self chat];
      v40 = [(CKTranscriptCollectionViewController *)self chat];
      v41 = [v40 guid];
      *buf = 138413314;
      v68 = v43;
      v69 = 2112;
      v70 = v46;
      v71 = 2112;
      v72 = v45;
      v73 = 2112;
      v74 = v44;
      v75 = 2112;
      v76 = v41;
      _os_log_error_impl(&dword_19020E000, v18, OS_LOG_TYPE_ERROR, "(Inline: %@) Invalid self.chatItems.count: %@, compared to oldItems.count: %@ for chat: %@, guid: %@", buf, 0x34u);
    }

    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController chatItemsDidChange:];
    }

    v20 = [(CKTranscriptCollectionViewController *)self newChatItemsWithIMChatItems:v14];
    v21 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v22 = [v21 isConsolidatedChatItemsEnabled];

    if (v22)
    {
      v23 = [(CKTranscriptCollectionViewController *)self chatItemController];
      [v23 setChatItemsUsingReloadDataWithoutAnimation:v20];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self setChatItems:v20];
    }
  }

  v24 = [(CKTranscriptCollectionViewController *)self notifications];

  if (v24)
  {
    v25 = [(CKTranscriptCollectionViewController *)self chatItems];
    v26 = [v25 copy];

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
  v32 = [(CKTranscriptCollectionViewController *)self delegate];
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    v34 = [(CKTranscriptCollectionViewController *)self delegate];
    [v34 transcriptCollectionViewControllerDidUpdateTranscriptChatItems:self];
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

- (void)connectivityChanged:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "connectivityChanged", v7, 2u);
    }
  }

  v6 = [(CKTranscriptCollectionViewController *)self chat];
  [v6 refreshServiceForSending];
}

- (void)_tearDownLiveBubbles
{
  v3 = [(CKTranscriptCollectionViewController *)self chatItems];
  v4 = [v3 copy];

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
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 applicationState];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    v6 = [(CKTranscriptCollectionViewController *)self conversation];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "recipientCount")}];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [(CKTranscriptCollectionViewController *)self chatItems];
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 sender];
            [v7 addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          v21 = [MEMORY[0x1E69A5B70] sharedInstance];
          v22 = [(CKTranscriptCollectionViewController *)self conversation];
          v23 = [v22 chat];
          [v21 refreshLocationForHandle:v20 inChat:v23];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v17);
    }
  }
}

- (void)_configureScheduledDateCell:(id)a3 forItemAtIndexPath:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 setDelegate:self];
  v8 = [(CKTranscriptCollectionViewController *)self chatItems];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "item")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [(CKTranscriptCollectionViewController *)self chat];
    v12 = [v10 IMChatItem];
    v13 = [v11 messagesForScheduledMessageSectionWithTranscriptItem:v12];

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

            v20 = [v6 _ck_isEditing] ^ 1;
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
    [v6 setDisplayEditButton:{v20, v22}];
    v21 = [v10 date];
    [v6 setDate:v21];
  }
}

- (void)reconfigureVisibleSpeakerButtonCells
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CKTranscriptCollectionViewController *)self collectionView];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 indexPathsForVisibleItems];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v3 cellForItemAtIndexPath:v9];
        [(CKTranscriptCollectionViewController *)self configureSpeakerButtonCell:v10 forItemAtIndexPath:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)configureSpeakerButtonCell:(id)a3 forItemAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(CKTranscriptCollectionViewController *)self chatItems];
    v8 = [v7 objectAtIndex:{objc_msgSend(v6, "item")}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v13;
      v10 = v8;
      [v9 setSpeakerHidden:1];
      [v9 setSpeakerEnabled:CKAudioPlaybackSpeakerEnabled()];
      v11 = [v10 hasMessageAcknowledgment];

      [v9 setAdjustSpeakerForAcknowledgment:v11];
      v12 = [v9 speakerButton];

      [v12 addTarget:self action:sel_touchUpInsideCellSpeakerButton_ forControlEvents:64];
    }
  }
}

- (void)setShouldUseOpaqueMask:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_shouldUseOpaqueMask != a3)
  {
    v3 = a3;
    self->_shouldUseOpaqueMask = a3;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [(CKTranscriptCollectionViewController *)self collectionView];
    v5 = [v4 visibleCells];

    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v11 = [v10 balloonView];
            [v11 setCanUseOpaqueMask:v3];
            [v11 prepareForDisplayIfNeeded];
            [v10 setNeedsLayout];
            [v10 layoutIfNeeded];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)verticallyScrollTranscriptByAmount:(double)a3 animated:(BOOL)a4 duration:(double)a5 completion:(id)a6
{
  v7 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [(CKTranscriptCollectionViewController *)self collectionView];
  v12 = [v11 isScrollEnabled];

  if ((v12 & 1) == 0)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController verticallyScrollTranscriptByAmount:animated:duration:completion:];
    }
  }

  v14 = [(CKTranscriptCollectionViewController *)self collectionView];
  [v14 contentOffset];
  v16 = v15;
  v18 = v17 + a3;
  if (v7)
  {
    v19 = [(CKTranscriptCollectionViewController *)self collectionView];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [(CKTranscriptCollectionViewController *)self updateAnimationGroup];
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v36 = self;
          _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "%p enter updateAnimationGroup: in verticallyScrollTranscriptByAmount", buf, 0xCu);
        }
      }

      dispatch_group_enter(v21);
      v23 = [(CKTranscriptCollectionViewController *)self collectionView];
      v24 = [(CKTranscriptCollectionViewController *)self collectionView];
      [v24 _contentOffsetAnimationDuration];
      v26 = v25;

      [v23 beginDisablingTranscriptDynamicsForReason:13];
      [v23 _setContentOffsetAnimationDuration:a5];
      [v23 setContentOffset:1 animated:{v16, v18}];
      [v23 _setContentOffsetAnimationDuration:v26];
      v27 = dispatch_time(0, (a5 * 1000000000.0));
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __104__CKTranscriptCollectionViewController_verticallyScrollTranscriptByAmount_animated_duration_completion___block_invoke;
      v30[3] = &unk_1E72EDE00;
      v31 = v23;
      v32 = self;
      v33 = v21;
      v34 = v10;
      v28 = v21;
      v29 = v23;
      dispatch_after(v27, MEMORY[0x1E69E96A0], v30);
    }
  }

  else
  {
    [v14 setContentOffset:{v15, v18}];
    if (v10)
    {
      v10[2](v10);
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
  v3 = [(CKTranscriptCollectionViewController *)self selectionManager];
  [v3 removeAllSelectedMessageGuids];

  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)selectionManager:(id)a3 didAddChatItem:(id)a4 selectionState:(id)a5
{
  v7 = a5;
  v9 = [a4 IMChatItem];
  v8 = [v9 guid];
  [(CKTranscriptCollectionViewController *)self _selectChatItemGuid:v8 selectionState:v7];
}

- (void)selectionManager:(id)a3 didRemoveChatItem:(id)a4
{
  v6 = [a4 IMChatItem];
  v5 = [v6 guid];
  [(CKTranscriptCollectionViewController *)self _deselectChatItemGuid:v5];
}

- (id)_chatItemForGUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 IMChatItem];
        v11 = [v10 guid];
        v12 = [v4 isEqualToString:v11];

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

- (void)selectRangeWithIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self selectionManager];
  v6 = [v5 trackedGuid];

  if (v6)
  {
    v7 = [v5 trackedGuid];
    v8 = [(CKTranscriptCollectionViewController *)self _chatItemForGUID:v7];
    v9 = [v5 selectedStateForGuid:v7];
    v40 = v8;
    v39 = [(CKTranscriptCollectionViewController *)self balloonViewForChatItem:v8];
    v10 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:?];
    v11 = [(CKTranscriptCollectionViewController *)self chatItems];
    v12 = [v10 item];
    v13 = [v4 item];
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v38 = v10;
    v15 = [v10 item];
    v41 = v4;
    v16 = [v4 item];
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    [v5 removeAllSelectedMessageGuids];
    v37 = v14;
    if (v14 <= v17)
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v31 = [v11 objectAtIndex:v14];
        v32 = [v31 IMChatItem];
        v33 = [v32 guid];

        v18 = v14;
        if (([v33 isEqualToString:v7] & 1) == 0)
        {
          v34 = +[CKBalloonSelectionState balloonSelectionState:](CKBalloonSelectionState, "balloonSelectionState:", [v9 style]);
          [v5 addSelectedMessageGuid:v33 selectionState:v34];

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
      [v5 trackSelectedGuid:v7 selectionState:v35];
    }

    else
    {
      [v5 trackSelectedGuid:v7 selectionState:v9];
    }

    v4 = v41;
  }

  else
  {
    v7 = [(CKTranscriptCollectionViewController *)self selectedItems];
    v19 = [v7 firstIndex];
    v20 = [v7 lastIndex];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL || (v21 = v20, v20 == 0x7FFFFFFFFFFFFFFFLL))
    {
      [v5 removeAllSelectedMessageGuids];
      v36 = IMLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptCollectionViewController selectRangeWithIndexPath:];
      }
    }

    else
    {
      v22 = [v4 item];
      if (v22 <= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      if (v22 <= v21)
      {
        v19 = v22;
      }

      [v5 removeAllSelectedMessageGuids];
      v24 = [(CKTranscriptCollectionViewController *)self chatItems];
      if (v19 <= v23)
      {
        v25 = v23 + 1;
        do
        {
          if (v19 >= [v24 count])
          {
            break;
          }

          v26 = [v24 objectAtIndex:v19];
          v27 = [v26 IMChatItem];
          v28 = [v27 guid];

          v29 = [CKBalloonSelectionState balloonSelectionState:0];
          [v5 addSelectedMessageGuid:v28 selectionState:v29];

          ++v19;
        }

        while (v25 != v19);
      }
    }
  }
}

- (BOOL)_selectedChatItemsHaveMultipleSenders:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a3;
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
          v9 = [v8 sender];
          if (v4)
          {
            v10 = [v4 ID];
            v11 = [v9 ID];
            v12 = [v10 isEqualToString:v11];

            if ((v12 & 1) == 0)
            {

              LOBYTE(v3) = 1;
              goto LABEL_14;
            }
          }

          v4 = v9;
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

- (void)_addAttachmentsToProvidersArray:(id)a3 forChatItems:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__CKTranscriptCollectionViewController__addAttachmentsToProvidersArray_forChatItems___block_invoke;
  v7[3] = &unk_1E72F0918;
  v8 = v5;
  v6 = v5;
  [a4 enumerateObjectsUsingBlock:v7];
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

- (id)_itemProviderForSelectedChatItemsWithMultipleSenders:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
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
  v7 = [(CKTranscriptCollectionViewController *)self selectionManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__CKTranscriptCollectionViewController__itemProviderForSelectedChatItemsWithMultipleSenders___block_invoke;
  v17[3] = &unk_1E72F2EF0;
  v21 = &v23;
  v22 = v27;
  v8 = v6;
  v18 = v8;
  v9 = v7;
  v19 = v9;
  v10 = v4;
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
  [v5 addObject:v14];
  [(CKTranscriptCollectionViewController *)self _addAttachmentsToProvidersArray:v5 forChatItems:v10];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);

  return v5;
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

- (id)_itemProviderForSelectedChatItemsWithSingleSender:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v7 = [(CKTranscriptCollectionViewController *)self selectionManager];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __90__CKTranscriptCollectionViewController__itemProviderForSelectedChatItemsWithSingleSender___block_invoke;
  v24[3] = &unk_1E72F2F18;
  v28 = &v29;
  v8 = v7;
  v25 = v8;
  v9 = v6;
  v26 = v9;
  v10 = v4;
  v27 = v10;
  [v10 enumerateObjectsUsingBlock:v24];
  v11 = [v9 ck_attributedStringByRemovingUnsupportedCompositionAttributes];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v12 = [v11 length];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__CKTranscriptCollectionViewController__itemProviderForSelectedChatItemsWithSingleSender___block_invoke_1510;
  v19[3] = &unk_1E72F12E0;
  v19[4] = &v20;
  [v11 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v19}];
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
  v15 = [objc_alloc(*v13) initWithAttributedString:v11];
  v16 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v15];
  [v5 addObject:v16];
  [(CKTranscriptCollectionViewController *)self _addAttachmentsToProvidersArray:v5 forChatItems:v10];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v29, 8);

  return v5;
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
            v10 = [v9 textView];
            v11 = [v10 selectedRange];
            if (v12)
            {
              v13 = [CKBalloonSelectionState balloonSelectionState:1 textSelectionRange:v11, v12];
              v14 = [(CKTranscriptCollectionViewController *)self selectionManager];
              v15 = [v8 IMChatItem];
              v16 = [v15 guid];
              [v14 trackSelectedGuid:v16 selectionState:v13];

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
  v3 = [(CKTranscriptCollectionViewController *)self selectedChatItems];
  if ([v3 count])
  {
    [(CKTranscriptCollectionViewController *)self copyChatItemsToPasteboard:v3];
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

- (void)copyChatItemsToPasteboard:(id)a3
{
  v4 = a3;
  if ([(CKTranscriptCollectionViewController *)self _selectedChatItemsHaveMultipleSenders:v4])
  {
    [(CKTranscriptCollectionViewController *)self _itemProviderForSelectedChatItemsWithMultipleSenders:v4];
  }

  else
  {
    [(CKTranscriptCollectionViewController *)self _itemProviderForSelectedChatItemsWithSingleSender:v4];
  }
  v6 = ;

  v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v5 setItemProviders:v6];
}

- (void)selectSingleBalloonView:(id)a3
{
  v13 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:a3];
  v4 = [(CKTranscriptCollectionViewController *)self chatItems];
  v5 = [v13 item];
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    if (v5 < [v4 count])
    {
      v7 = [v4 objectAtIndex:v6];
      v8 = [v7 IMChatItem];
      v9 = [v8 guid];

      v10 = [(CKTranscriptCollectionViewController *)self selectionManager];
      [v10 removeAllSelectedMessageGuids];

      v11 = [(CKTranscriptCollectionViewController *)self selectionManager];
      v12 = [CKBalloonSelectionState balloonSelectionState:0];
      [v11 addSelectedMessageGuid:v9 selectionState:v12];
    }
  }
}

- (BOOL)collectionView:(id)a3 shouldAllowSwipeForItemAtIndexPath:(id)a4
{
  v5 = [(CKTranscriptCollectionViewController *)self chatItemAtIndexPath:a4];
  v6 = [(CKTranscriptCollectionViewController *)self conversation];
  v7 = [v6 canReplyToChatItem:v5];

  return v7;
}

- (id)transcriptCollectionView:(id)a3 preferredIndexPathForAssociatedItemAtPoint:(CGPoint)a4
{
  v5 = [a3 hitTest:0 withEvent:{a4.x, a4.y}];
  v6 = [v5 ck_superBalloonView];
  v7 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:v6];

  return v7;
}

- (void)collectionView:(id)a3 didRecognizePanGestureWithPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v61 = a3;
  [v61 contentSize];
  v7 = v6;
  [v61 bounds];
  v8 = v61;
  if (v7 >= v9)
  {
    v10 = [v61 window];
    [v10 convertPoint:v61 fromView:{x, y}];
    v12 = v11;

    v13 = [v61 window];
    [v13 bounds];
    v15 = v14;

    [v61 contentOffset];
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

      v8 = v61;
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

      v31 = [(CKTranscriptCollectionViewController *)self chatItems];
      if (v30 >= 0.0)
      {
        v32 = 0.0;
        v33 = 1;
        do
        {
          v34 = [v61 indexPathForItemAtPoint:{x, v59 - v32}];
          v35 = [v34 item];
          if ((v35 & 0x8000000000000000) == 0)
          {
            v36 = v35;
            if (v35 < [v31 count])
            {
              v37 = [v31 objectAtIndex:v36];
              v38 = [v37 IMChatItem];
              v39 = [v38 guid];

              v40 = [(CKTranscriptCollectionViewController *)self selectionManager];
              v41 = [v40 isMessageGuidSelected:v39];

              if ((v41 & 1) == 0)
              {
                v42 = [(CKTranscriptCollectionViewController *)self selectionManager];
                v43 = [CKBalloonSelectionState balloonSelectionState:1];
                [v42 addSelectedMessageGuid:v39 selectionState:v43];
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

    v8 = v61;
    if (v12 > v15 - v23)
    {
      [v61 frame];
      v8 = v61;
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

        v31 = [(CKTranscriptCollectionViewController *)self chatItems];
        if (v44 >= 0.0)
        {
          v46 = 0.0;
          v47 = 1;
          do
          {
            v48 = [v61 indexPathForItemAtPoint:{x, v60 + v46}];
            v49 = [v48 item];
            if ((v49 & 0x8000000000000000) == 0)
            {
              v50 = v49;
              if (v49 < [v31 count])
              {
                v51 = [v31 objectAtIndex:v50];
                v52 = [v51 IMChatItem];
                v53 = [v52 guid];

                v54 = [(CKTranscriptCollectionViewController *)self selectionManager];
                v55 = [v54 isMessageGuidSelected:v53];

                if ((v55 & 1) == 0)
                {
                  v56 = [(CKTranscriptCollectionViewController *)self selectionManager];
                  v57 = [CKBalloonSelectionState balloonSelectionState:1];
                  [v56 addSelectedMessageGuid:v53 selectionState:v57];
                }
              }
            }

            v46 = v47++;
          }

          while (v44 >= v46);
        }

LABEL_16:
        [(CKTranscriptCollectionViewController *)self verticallyScrollTranscriptByAmount:1 animated:0 completion:v44];

        v8 = v61;
      }
    }
  }

LABEL_31:
}

- (void)_trackPhotoStackEvent:(id)a3 forStackBalloonView:(id)a4 transcriptOrientation:(char)a5
{
  v34[6] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v5 = a5;
    v8 = a4;
    v9 = a3;
    v10 = [v8 currentAssetReference];
    v31 = [v10 asset];
    v11 = [v31 mediaType];
    v12 = [v8 dataSourceManager];

    v13 = [v12 mediaObjectDataSource];

    v14 = [v13 mediaObjects];
    v15 = [v14 count];

    v29 = v10;
    if (v13)
    {
      [v13 indexPathForAssetReference:{v10, v10}];
      v16 = v32;
    }

    else
    {
      v16 = 0;
    }

    v17 = [(CKTranscriptCollectionViewController *)self conversation];
    v18 = [v17 recipients];
    v19 = [v18 count];

    v20 = *MEMORY[0x1E69A7518];
    v34[0] = v9;
    v21 = *MEMORY[0x1E69A7520];
    v33[0] = v20;
    v33[1] = v21;
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
    v34[1] = v22;
    v33[2] = *MEMORY[0x1E69A7528];
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v34[2] = v23;
    v33[3] = *MEMORY[0x1E69A7530];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    v34[3] = v24;
    v33[4] = *MEMORY[0x1E69A7558];
    v25 = [MEMORY[0x1E696AD98] numberWithChar:v5];
    v34[4] = v25;
    v33[5] = *MEMORY[0x1E69A7538];
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
    v34[5] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:6];

    v28 = [MEMORY[0x1E69A8168] sharedInstance];

    [v28 trackEvent:*MEMORY[0x1E69A7500] withDictionary:v27];
  }
}

- (id)_chatItemLogSummaryForChatItems:(id)a3 withUpdates:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[CKTranscriptCollectionViewController _loggingRangeForUpdates:chatItemsCount:](self, "_loggingRangeForUpdates:chatItemsCount:", v6, [v7 count]);
  v10 = v9;

  v11 = [v7 subarrayWithRange:{v8, v10}];

  v12 = [(CKTranscriptCollectionViewController *)self _chatItemLogSummaryForChatItems:v11 withIndex:v8];

  return v12;
}

- (id)_latestChatItemsLogSummaryForChatItems:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self _loggingRangeForLatestChatItems:v4];
  v7 = [v4 subarrayWithRange:{v5, v6}];

  v8 = [(CKTranscriptCollectionViewController *)self _chatItemLogSummaryForChatItems:v7 withIndex:v5];

  return v8;
}

- (id)_chatItemLogSummaryForChatItems:(id)a3 withIndex:(int64_t)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateStyle:1];
  v30 = v7;
  [v7 setTimeStyle:1];
  v8 = [MEMORY[0x1E696AD60] string];
  v9 = MEMORY[0x1E696AEC0];
  v10 = [(CKTranscriptCollectionViewController *)self chat];
  v11 = [v10 guid];
  v12 = [v9 stringWithFormat:@"chat: %@\n", v11];

  v29 = v12;
  [v8 appendString:v12];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
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
        v17 = [v16 itemIsFromMe];
        v18 = @" ";
        if (v17)
        {
          v18 = @"\t";
        }

        v19 = MEMORY[0x1E696AEC0];
        v20 = v18;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v16 IMChatItem];
        v24 = [v23 guid];
        v25 = [v19 stringWithFormat:@"\t%3lu:%@<%@ : %@> ", a4, v20, v22, v24];

        [v8 appendString:v25];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v16 date];
          v27 = [v30 stringFromDate:v26];

          [v8 appendString:v27];
        }

        [v8 appendString:@"\n"];
        ++a4;
      }

      v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  return v8;
}

- (_NSRange)_loggingRangeForUpdates:(id)a3 chatItemsCount:(int64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v27;
    v10 = a4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 lastIndex];
        v14 = [v12 count] + v13;
        if (v14 >= a4)
        {
          v14 = a4;
        }

        if (v8 <= v14)
        {
          v8 = v14;
        }

        v15 = [v12 firstIndex];
        if (v10 >= v15)
        {
          v10 = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v10 = a4;
  }

  v16 = v8 - v10;
  v17 = a4 - 1;
  if (a4 - 1 >= v8 - 10)
  {
    v18 = v8 - 10;
  }

  else
  {
    v18 = a4 - 1;
  }

  if (v16 == 10)
  {
    v18 = v10;
  }

  v19 = (v8 - 10) & ~((v8 - 10) >> 63);
  if (v8 >= v17)
  {
    v17 = v8;
  }

  else
  {
    v19 = v10;
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

- (_NSRange)_loggingRangeForLatestChatItems:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = [v3 count];

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
  v6 = [(CKTranscriptCollectionViewController *)self chat];
  if (!CKIsRunningUnitTests())
  {
    v3 = [v6 lastFinishedMessageID];
    v4 = [v6 lastFinishedMessageDate];
    [v6 __ck_updateWatermarkToMessageID:v3 date:v4];
  }

  v5 = [(CKTranscriptCollectionViewController *)self delegate];
  [v5 transcriptCollectionViewControllerDidSetChatItems:self];
}

- (void)chatItemControllerDidInsertAssociatedChatItems
{
  v3 = [(CKTranscriptCollectionViewController *)self delegate];
  [v3 transcriptCollectionViewControllerDidInsertAssociatedChatItem:self];
}

- (void)chatItemControllerDidChangeAssociatedChatItemsWithChatItemDiff:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self delegate];
  [v5 transcriptCollectionViewControllerDidChangeAssociatedChatItem:self chatItemDiff:v4];
}

- (void)configurePluginChatItemForChatItemControllerWithChatItem:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self conversation];
  v6 = [v5 chat];
  v12 = [v6 guid];

  v7 = [(CKTranscriptCollectionViewController *)self conversation];
  v8 = [v7 recipientStrings];

  v9 = [(CKTranscriptCollectionViewController *)self conversation];
  v10 = [v9 isBusinessConversation];
  v11 = [(CKTranscriptCollectionViewController *)self transcriptIdentifier];
  [v4 configureWithConversationID:v12 recipients:v8 isBusiness:v10 context:v11];
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

- (void)presentUserInterventionScreenForIndexPath:(id)a3 shouldTargetAssociatedItems:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKTranscriptCollectionViewController *)self chatItems];
  v13 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  v8 = [CKCommSafetyReceiveContext contextWithIndexPath:v6 shouldTargetAssociatedMessages:v4];

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

- (void)didTapCommSafetyAttributionItemWithIndexPath:(id)a3 sender:(id)a4
{
  v24[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CKTranscriptCollectionViewController *)self _supportsStickersSensitiveContentContextMenu])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(CKTranscriptCollectionViewController *)self hasCommSafetyNotViewableAssociatedItems:v6];
      v10 = [(CKTranscriptCollectionViewController *)self hasSensitiveBackgroundAtIndexPath:v6];
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

      v24[0] = v6;
      v23[0] = @"CKSensitiveContentIndexPathKey";
      v23[1] = @"CKSensitiveContentTargetsAssociatedItemsKey";
      v16 = [MEMORY[0x1E696AD98] numberWithBool:v9 && !v10];
      v23[2] = *MEMORY[0x1E69CA920];
      v24[1] = v16;
      v24[2] = v15;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

      v18 = [MEMORY[0x1E69CA8F0] menuWithDelegate:self contextDictionary:v17 additionalOptions:{-[CKTranscriptCollectionViewController _moreHelpMenuOptions:](self, "_moreHelpMenuOptions:", v9 | v10)}];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v18];
      [CKCommSafetyAnalytics recordContextMenuButtonTappedWithContentType:1 subContentType:v14 direction:2 options:0 isBlurred:[(CKTranscriptCollectionViewController *)self isItemViewableAtIndexPath:v6]^ 1 identifier:v19];
      [v8 popCommSafetyMenu:v18];
    }
  }

  else
  {
    v20 = [MEMORY[0x1E69A7FC8] sharedManager];
    v21 = [v20 enablementGroup];

    if (v21 == 2)
    {
      v22 = [(CKTranscriptCollectionViewController *)self delegate];
      [v22 transcriptCollectionViewController:self viewedCommSafetyAssociatedItemsWithIndexPath:v6];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self presentUserInterventionScreenForIndexPath:v6 shouldTargetAssociatedItems:1];
    }
  }
}

- (int64_t)_moreHelpMenuOptions:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self conversation];
  v6 = [v5 recipients];
  v7 = [v6 count];

  v8 = [(CKTranscriptCollectionViewController *)self conversation];
  v9 = [v8 recipients];
  v10 = [v9 count];

  v11 = [(CKTranscriptCollectionViewController *)self isReportingEnabled];
  v12 = 96;
  if (!v11)
  {
    v12 = 0;
  }

  if (v3)
  {
    v13 = v12 | 0x80;
  }

  else
  {
    v13 = v12;
  }

  v14 = [(CKTranscriptCollectionViewController *)self chat];
  v15 = [v14 isBusinessChat];

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

  if (v15)
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
  v3 = [MEMORY[0x1E69A8008] sharedInstance];
  [v3 logPrivatizedUIInteractionEvent:2];

  v4 = [MEMORY[0x1E69CA8F8] menuWithOptions:{-[CKTranscriptCollectionViewController _moreHelpMenuOptions:](self, "_moreHelpMenuOptions:", 0)}];
  [CKCommSafetyAnalytics recordWaysToGetHelpTappedWithOptions:0];
  [v4 setMenuDelegate:self];
  [(CKTranscriptCollectionViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)didConfirmForInterventionViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 contextDictionary];
  v6 = +[CKCommSafetyReceiveContext contextKey];
  v11 = [v5 objectForKey:v6];

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
  [(CKTranscriptCollectionViewController *)self _dismissInterventionController:v4];

  v9 = [v8 indexPath];

  if (v9)
  {
    v10 = [v8 indexPath];
    -[CKTranscriptCollectionViewController _updateCommSafetySensitivityForContentAtIndexPath:shouldTargetAssociatedMessages:](self, "_updateCommSafetySensitivityForContentAtIndexPath:shouldTargetAssociatedMessages:", v10, [v8 shouldTargetAssociatedMessages]);
  }
}

- (void)_updateCommSafetySensitivityForContentAtIndexPath:(id)a3 shouldTargetAssociatedMessages:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKTranscriptCollectionViewController *)self delegate];
  v8 = v7;
  if (v4)
  {
    [v7 transcriptCollectionViewController:self viewedCommSafetyAssociatedItemsWithIndexPath:v6];
  }

  else
  {
    [v7 transcriptCollectionViewController:self viewedCommSafetyItemWithIndexPath:v6];
  }
}

- (void)evidenceToReportWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:@"CKSensitiveContentIndexPathKey"];
  [(CKTranscriptCollectionViewController *)self evidenceToReportWithIndexPath:v7 completionHandler:v6];
}

- (void)evidenceToReportWithContext:(id)a3 balloonView:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  if (a4)
  {
    a4 = [(CKTranscriptCollectionViewController *)self indexPathForBalloonView:a4];
  }

  [(CKTranscriptCollectionViewController *)self evidenceToReportWithIndexPath:a4 completionHandler:v7];
}

- (void)evidenceToReportWithIndexPath:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v17 = [(CKTranscriptCollectionViewController *)self selectedMediaObjectForCommSafetyReport:a3];
  v7 = [(CKTranscriptCollectionViewController *)self mediaObjectsForCommSafetyReport:?];
  if ([v7 count])
  {
    v8 = [MEMORY[0x1E69A5BD0] me];
    v9 = [v8 bestIMHandle];

    v10 = objc_alloc(MEMORY[0x1E69CA910]);
    v11 = objc_opt_respondsToSelector();
    v12 = v10;
    v13 = [(CKTranscriptCollectionViewController *)self conversation];
    v14 = [v13 chat];
    if (v11)
    {
      v15 = [v12 initWithVictimHandle:v9 media:v7 selectedMediaObject:v17 chat:v14];
    }

    else
    {
      v15 = [v12 initWithVictimHandle:v9 sensitiveContentMedia:v7 chat:v14];
    }

    v16 = v15;

    v6[2](v6, v16, 0);
    v6 = v16;
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
    (v6)[2](v6, 0, v9);
  }
}

- (void)_enumerateMediaObjectsForReportUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCollectionViewController *)self chatItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__CKTranscriptCollectionViewController_UserSafety___enumerateMediaObjectsForReportUsingBlock___block_invoke;
  v7[3] = &unk_1E72F48D0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v7];
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

- (id)_findUniqueIDForSCUIAnalyticsFromChatItem:(id)a3
{
  v4 = a3;
  v5 = [v4 commSafetyTransferGUID];

  if (v5)
  {
    v6 = [v4 commSafetyTransferGUID];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(CKTranscriptCollectionViewController *)self conversation];
    v8 = [v7 transcriptBackgroundGUID];
LABEL_7:
    v6 = v8;

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 transferGUIDsInMessagePartText];
    v8 = [v7 firstObject];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)didAskForMoreHelp:(id)a3
{
  v4 = [MEMORY[0x1E69A8008] sharedInstance];
  [v4 logPrivatizedUIInteractionEvent:4];

  [(CKTranscriptCollectionViewController *)self _showMoreHelp];
}

- (void)didShowContent:(id)a3
{
  v12 = a3;
  v4 = objc_opt_respondsToSelector();
  v5 = v12;
  if (v4)
  {
    v6 = [v12 performSelector:sel_contextDictionary];
    v7 = [v6 objectForKeyedSubscript:@"CKSensitiveContentIndexPathKey"];
    v8 = [v6 objectForKeyedSubscript:@"CKSensitiveContentTargetsAssociatedItemsKey"];
    v9 = [v8 BOOLValue];

    v10 = [MEMORY[0x1E69A7FC8] sharedManager];
    v11 = [v10 enablementGroup];

    if (v11 == 2)
    {
      [(CKTranscriptCollectionViewController *)self _updateCommSafetySensitivityForContentAtIndexPath:v7 shouldTargetAssociatedMessages:v9];
    }

    else
    {
      [(CKTranscriptCollectionViewController *)self presentUserInterventionScreenForIndexPath:v7 shouldTargetAssociatedItems:v9];
    }

    v5 = v12;
  }
}

- (void)didBlockContact:(id)a3
{
  v4 = [MEMORY[0x1E69A8008] sharedInstance];
  [v4 logPrivatizedUIInteractionEvent:6];

  v5 = [(CKTranscriptCollectionViewController *)self conversation];
  v6 = [v5 recipients];
  v8 = [v6 firstObject];

  v7 = [v8 defaultIMHandle];
  [(CKTranscriptCollectionViewController *)self _blockHandle:v7];
}

- (void)didBlockContacts:(id)a3
{
  v4 = [MEMORY[0x1E69A8008] sharedInstance];
  [v4 logPrivatizedUIInteractionEvent:6];

  v5 = [(CKTranscriptCollectionViewController *)self view];
  [(CKTranscriptCollectionViewController *)self _showBlockContactSelectionAlertFromView:v5];
}

- (void)didLeaveConversation:(id)a3
{
  v4 = [MEMORY[0x1E69A8008] sharedInstance];
  [v4 logPrivatizedUIInteractionEvent:5];

  v5 = [(CKTranscriptCollectionViewController *)self view];
  [(CKTranscriptCollectionViewController *)self _showLeaveConversationFromView:v5];
}

- (void)initiateSmartEmojiResponsesUpdateWithChatItems:(id)a3
{
  sub_190863204();
  v4 = sub_190D57180();
  v5 = self;
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

- (void)updateScrollIntentWithTrigger:(id)a3 activeKeyboardAppearanceAnimationProperties:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_19088A664(a3, a4);
  swift_unknownObjectRelease();
}

- (BOOL)pointIntersectsRepositionEnabledSticker:(CGPoint)a3 chatItem:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = CKTranscriptCollectionViewController.pointIntersectsRepositionEnabledSticker(_:chatItem:)(__PAIR128__(*&y, *&x), v7);

  return self & 1;
}

- (void)toggleTimeStamp
{
  v4 = self;
  v2 = [(CKTranscriptCollectionViewController *)v4 isShowingTranscriptTimestamps];
  v3 = &selRef_hideTranscriptTimestampsIfNeeded;
  if (!v2)
  {
    v3 = &selRef_showTranscriptTimestamps;
  }

  [v4 *v3];
}

- (id)toggleTimeStampAction
{
  v2 = self;
  CKTranscriptCollectionViewController.toggleTimeStampAction()(v3);
  v5 = v4;

  return v5;
}

- (id)toggleTimeStampOnlyContextMenuConfiguration
{
  v2 = self;
  v3.super.isa = CKTranscriptCollectionViewController.toggleTimeStampOnlyContextMenuConfiguration()().super.isa;

  return v3.super.isa;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  sub_190D51C00();
  v9 = sub_190D57180();
  v10 = a3;
  v11 = self;
  v12 = CKTranscriptCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(v10, v9, __PAIR128__(*&y, *&x));

  return v12;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_19089C0C4(v9, a5);

  swift_unknownObjectRelease();
}

- (id)_collectionView:(id)a3 accessoriesForContextMenuWithConfiguration:(id)a4 layoutAnchor:(id *)a5
{
  v7 = self;
  v8 = a3;
  v9 = a4;
  v10 = sub_19089C228(a4);

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

- (id)_collectionView:(id)a3 styleForContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_19089C3C0(a4);

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
  v7 = self;
  v8 = sub_190D57290();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_190857E08(0, 0, v5, &unk_190DF1F20, v9);
}

- (void)makeTranslatedComposition:(id)a3 from:(id)a4 to:(id)a5 completion:(id)a6
{
  v9 = sub_190D519C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v16 = _Block_copy(a6);
  sub_190D51970();
  sub_190D51970();
  _Block_copy(v16);
  v17 = a3;
  v18 = self;
  sub_190B00D14(v17, v15, v12, v18, v16);
  _Block_release(v16);
  _Block_release(v16);

  v19 = *(v10 + 8);
  v19(v12, v9);
  v19(v15, v9);
}

- (void)configureTranscriptCell:(id)a3 hidden:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_190B29EB4(a3, a4);
}

- (void)setChatItemHidden:(BOOL)a3 forChatItemGUID:(id)a4
{
  v6 = sub_190D56F10();
  v8 = v7;
  v9 = self;
  sub_190B29A14(a3, v6, v8);
}

- (id)generateConversationFooterActions:(id)a3
{
  v4 = a3;
  v5 = self;
  CKTranscriptCollectionViewController.generateConversationFooterActions(conversation:)();

  type metadata accessor for FooterButtonAction();
  v6 = sub_190D57160();

  return v6;
}

- (void)setAppIntentsDataSource
{
  v3 = self;
  v2 = [(CKTranscriptCollectionViewController *)v3 collectionView];
  sub_190BE5A00();
  swift_unknownObjectRetain();
  sub_190D577C0();
}

- (void)beginEmphasisWithMessageGUID:(id)a3
{
  sub_190D56F10();
  v4 = self;
  sub_190C37BA4();
}

- (void)updateEmphasis
{
  v2 = self;
  sub_190C380A0();
}

- (void)updateBalloonEmphasisIfNeededWithCell:(id)a3 chatItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190C38B74(v6, v7);
}

- (void)startDownloadingTranslationAssetsForLanguageCodes:(NSArray *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_190C798DC(0, 0, v9, &unk_190E00730, v14);
}

- (void)startDownloadFor:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_190C798DC(0, 0, v9, &unk_190DD75C8, v14);
}

- (id)indexPathOfParentChatItemForIndexPath:(id)a3
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  sub_190D51BC0();
  v11 = self;
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

- (id)selectedMediaObjectForCommSafetyReport:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  if (a3)
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

  v10 = self;
  v11 = CKTranscriptCollectionViewController.selectedMediaObjectForCommSafetyReport(selectedIndexPath:)(v7);

  sub_19098D840(v7);

  return v11;
}

- (id)mediaObjectsForCommSafetyReport:(id)a3
{
  v5 = a3;
  v6 = self;
  CKTranscriptCollectionViewController.mediaObjectsForCommSafetyReport(selectedMediaObject:)(a3);

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