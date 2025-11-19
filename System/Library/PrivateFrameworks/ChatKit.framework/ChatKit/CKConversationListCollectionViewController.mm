@interface CKConversationListCollectionViewController
+ (id)conversationListCollectionViewControllerLogHandle;
+ (id)updaterLogHandle;
- (BOOL)_canShowCatalystFiltersNavigation;
- (BOOL)_canShowSyncProgressFooter;
- (BOOL)_cellsShouldShowChevron;
- (BOOL)_conversationHasActivityItem:(id)a3;
- (BOOL)_focusFilterBannerShouldUseFullWidthKeylines;
- (BOOL)_hasAlertsEnabledForAllConversations:(id)a3;
- (BOOL)_hasReadAllConversations:(id)a3;
- (BOOL)_hasStewieConversationSelected;
- (BOOL)_hasUnreadConversation;
- (BOOL)_hidesBackButton;
- (BOOL)_imageForkedFromMeCard;
- (BOOL)_isDropForSession:(id)a3 toLeadingEdgeOfView:(id)a4;
- (BOOL)_isEditButtonPlacedOnLeft;
- (BOOL)_isNewComposeSelected;
- (BOOL)_isOnlyActivityItemInRowForConversation:(id)a3 itemIdentifier:(id)a4;
- (BOOL)_meCardSharingEnabled;
- (BOOL)_shouldAllowLargeTitles;
- (BOOL)_shouldKeepSelection;
- (BOOL)_shouldResizeNavigationBar;
- (BOOL)_shouldSelectConversationAfterDeletingIndexPath:(id)a3;
- (BOOL)_shouldUpdateConversationSelection;
- (BOOL)_shouldUsePreviewProviderForDragItemAtIndexPath:(id)a3;
- (BOOL)_updateAddsTypingChatItem:(id)a3;
- (BOOL)_updateRemovesTypingChatItem:(id)a3;
- (BOOL)_wantsThreeColumnLayout;
- (BOOL)cellAtIndexPath:(id)a3 isVisibleInCollectionView:(id)a4;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)contextMenuInteractionShouldBeginAtIndexPath:(id)a3;
- (BOOL)hasDetailsNavigationController;
- (BOOL)hasTransparentSideBar;
- (BOOL)isDetailsNavigationControllerDetached;
- (BOOL)isSearchActive;
- (BOOL)isSearchActiveAndDisplayingResultsForSearchText;
- (BOOL)listCellIsBeingDisplayedAsGhostedCellInPinnedSection:(id)a3;
- (BOOL)searchBarShouldClear:(id)a3;
- (BOOL)sectionHasActionableConversations:(unint64_t)a3;
- (BOOL)shouldAnimatePositionForRecommendedItemIdentifiers:(id)a3 pinnedItemIdentifiers:(id)a4;
- (BOOL)shouldInsetResultsForSearchController:(id)a3;
- (BOOL)shouldScrollCollectionViewForCellSelection:(id)a3;
- (BOOL)shouldShowAlertForRemotelyManagedUser;
- (BOOL)shouldShowInternalDebugMenu;
- (BOOL)shouldShowPendingCell;
- (BOOL)shouldShowPinnedConversations;
- (BOOL)shouldShowTipKitContent;
- (BOOL)shouldShowToolbar;
- (CGRect)collectionViewBoundsForPinnedConversationCollectionViewCell:(id)a3;
- (CGRect)pinnedConversationMultitaskingDragExclusionRect;
- (CKConversationListCellLayout)junkCellLayout;
- (CKConversationListCellLayout)standardCellLayout;
- (CKConversationListCollectionViewController)init;
- (CKConversationListControllerDelegate)delegate;
- (CKMacToolbarController)macToolbarController;
- (CKMacToolbarItem)composeToolbarItem;
- (CKOnboardingController)onboardingController;
- (CKSearchViewController)searchResultsController;
- (NSSet)activeFilterModes;
- (NSSet)guidsOfPreservedConversations;
- (OS_dispatch_queue)tipKitQueue;
- (OS_os_log)conversationListCollectionViewControllerLogHandle;
- (UIBarButtonItem)cancelButtonItem;
- (UIBarButtonItem)closeButtonItem;
- (UIBarButtonItem)composeButtonItem;
- (UIBarButtonItem)doneButtonItem;
- (UIBarButtonItem)editButtonItem;
- (UIBarButtonItem)editOscarButtonItem;
- (UIBarButtonItem)filteringButtonItem;
- (UIBarButtonItem)moveSelectedToRecentlyDeletedButtonItem;
- (UIBarButtonItem)optionsButtonItem;
- (UIBarButtonItem)selectAllButtonItem;
- (UIButton)macVirtualComposeButton;
- (UISearchController)searchController;
- (_PSMessagesPinningSuggester)pinnedConversationSuggester;
- (double)_activityItemTopInsetForIndexPath:(id)a3;
- (double)animationDistanceForCompletingOnboarding;
- (double)virtualToolbarPreferredHeight;
- (double)widthForDeterminingAvatarVisibility;
- (double)yCoordinateForBorderBetweenPinnedAndActiveSectionExcludingConversations:(id)a3;
- (id)_allFrozenConversations;
- (id)_avatarProviderFromNickname:(id)a3;
- (id)_contactStore;
- (id)_conversationAfterDropDestination:(id)a3 fromDiffableDataSource:(id)a4 snapshot:(id)a5 excludingDraggedConversation:(id)a6;
- (id)_conversationDetailsActionForItemIdentifier:(id)a3 withCell:(id)a4;
- (id)_conversationDropProposalForCollectionView:(id)a3 dropSession:(id)a4 withDestinationIndexPath:(id)a5;
- (id)_conversationFromDragItem:(id)a3;
- (id)_conversationsEligibleForMute:(id)a3;
- (id)_conversationsEligibleForReadStateToggle:(id)a3;
- (id)_conversationsFromLocalDropSession:(id)a3;
- (id)_conversationsInRowOfItemIdentifier:(id)a3;
- (id)_deleteConversationActionForItemIdentifier:(id)a3 withCell:(id)a4;
- (id)_dndSwipeActionForIndexPath:(id)a3;
- (id)_dragItemsForConversation:(id)a3 indexPath:(id)a4 inCollectionView:(id)a5;
- (id)_editNicknameMenu:(id)a3;
- (id)_getTitleForCurrentFilterMode;
- (id)_indexPathOfDefaultConversation;
- (id)_indexPaths:(id)a3 containingHandleWithUID:(id)a4;
- (id)_itemIdentifierOfDefaultConversation;
- (id)_makeToolbarItemsForCurrentState;
- (id)_markAsActionForConversations:(id)a3;
- (id)_markUnreadSwipeActionForIndexPath:(id)a3;
- (id)_meCardSharingNameProviderWithContact:(id)a3;
- (id)_meContact;
- (id)_multipleSelectionMenuInCollectionView:(id)a3 indexPaths:(id)a4 point:(CGPoint)a5;
- (id)_multitaskingDragExclusionRects;
- (id)_muteActionConversations:(id)a3;
- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)_openConversationInNewWindowActionForItemIdentifier:(id)a3;
- (id)_permanentDeleteButtonToUseForSelectedJunkConversations:(BOOL)a3;
- (id)_permanentDeletebuttonToUseForSelectedConversations:(BOOL)a3;
- (id)_pinActionForItemIdentifier:(id)a3;
- (id)_pinConversationSwipeActionForIndexPath:(id)a3;
- (id)_pinnedConversationShortNames;
- (id)_pinningSuggestionsForConversations:(id)a3;
- (id)_previewForHighlightingOrDismissingContextMenuWithConfiguration:(id)a3 indexPath:(id)a4 collectionView:(id)a5;
- (id)_previewProviderForConversation:(id)a3;
- (id)_recentMessagesInPinnedConversations;
- (id)_recentlyDeletedDisclosureLabelText;
- (id)_recoverButtonToUseForSelectedConversations:(BOOL)a3;
- (id)_selectedConversationsInRecentlyDeletedSection;
- (id)_simFilterActionsForActiveSubscriptions;
- (id)_simFilterSubMenu;
- (id)_singleSelectionMenuInCollectionView:(id)a3 indexPaths:(id)a4 point:(CGPoint)a5;
- (id)_snapshotOfAvatarViewForConversation:(id)a3;
- (id)captureFilteringStateForDiagnosticsRequest;
- (id)cellForCollapsedSidebarFocusFilterCellInCollectionView:(id)a3 atIndexPath:(id)a4;
- (id)cellForFocusFilterInCollectionView:(id)a3 atIndexPath:(id)a4;
- (id)cellForIndexPath:(id)a3 inCollectionView:(id)a4 withItemIdentifier:(id)a5;
- (id)cellForPinnedConversationDropTargetInCollectionView:(id)a3 atIndexPath:(id)a4;
- (id)cellForPinnedConversationWithItemIdentifier:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)cellForPinningOnboardingTitleViewCollectionView:(id)a3 atIndexPath:(id)a4;
- (id)cellForRecoverableConversationWithItemIdentifier:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)cellForStandardConversationWithItemIdentifier:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)cellPinningOnboardingItemIdentifier:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 sceneActivationConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)complimentaryIndexPathForConversationAtIndexPath:(id)a3;
- (id)conversationAtIndexPath:(id)a3;
- (id)conversationForItemIdentifier:(id)a3;
- (id)conversationsAtIndexPaths:(id)a3;
- (id)conversationsForItemIdentifiers:(id)a3;
- (id)dataSourceWithCollectionView:(id)a3;
- (id)deleteSwipeActionForIndexPath:(id)a3;
- (id)dragOrDropPreviewParametersForItemAtIndexPath:(id)a3 inCollectionView:(id)a4;
- (id)dragPreviewViewForPinnedConversation:(id)a3 inCollectionView:(id)a4;
- (id)editButtonDropdownMenu;
- (id)firstVisibleIndexPathInCollectionView;
- (id)generateFilterMenu;
- (id)generateInternalMenuIfAllowedForConversations:(id)a3;
- (id)generateSnapshot;
- (id)getAddToContactsRemoteAlertWithConversation:(id)a3 sender:(id)a4;
- (id)getScreenTimePasscodeControllerWithConversation:(id)a3;
- (id)indexPathOfFirstSelectedItem;
- (id)initForOscarModal;
- (id)initForRecentlyDeletedModal;
- (id)itemIdentifierForConversation:(id)a3 inSection:(unint64_t)a4;
- (id)itemIdentifiersForConversations:(id)a3 inSection:(unint64_t)a4;
- (id)lastVisibleIndexPathInCollectionView;
- (id)leadingSwipeActionsConfigurationForIndexPath:(id)a3;
- (id)newMessageCellInCollectionView:(id)a3 atIndexPath:(id)a4;
- (id)nextSequentialIndexPathForIndexPath:(id)a3 descending:(BOOL)a4;
- (id)pinnedConversationIdentifiers;
- (id)pinnedConversationsFromSnapshot:(id)a3;
- (id)preferredFocusEnvironments;
- (id)presentingViewControllerForOnboardingController:(id)a3;
- (id)previousPinnedConversationActivitySnapshotForConversation:(id)a3;
- (id)recentlyDeletedContextMenuForCollectionView:(id)a3 indexPaths:(id)a4 point:(CGPoint)a5;
- (id)recoverableDeleteContextMenuActionWithConversations:(id)a3 collectionView:(id)a4 indexPaths:(id)a5 point:(CGPoint)a6;
- (id)reportConcernForChat:(id)a3;
- (id)searchBarForSearchViewController:(id)a3;
- (id)searchController:(id)a3 conversationForChatGUID:(id)a4;
- (id)searchController:(id)a3 conversationsForExistingChatsWithGUIDs:(id)a4;
- (id)selectedConversations;
- (id)showOscarModalAction;
- (id)showRecentlyDeletedModalAction;
- (id)spamContextMenuForCollectionView:(id)a3 indexPaths:(id)a4 point:(CGPoint)a5;
- (id)supplementaryViewForIndexPath:(id)a3 inCollectionView:(id)a4 withKind:(id)a5;
- (id)tipCollectionViewCell:(id)a3 atIndexPath:(id)a4;
- (id)tipKitOnboardingCollectionView:(id)a3 atIndexPath:(id)a4;
- (id)toggleReadButtonItem;
- (id)toolbarItemForIdentifier:(id)a3;
- (id)toolbarItemsForJunkFilterHasConversations:(BOOL)a3 hasSelectedConversations:(BOOL)a4;
- (id)toolbarItemsForRecentlyDeletedFilterHasConversations:(BOOL)a3 hasSelectedConversations:(BOOL)a4;
- (id)trailingSwipeActionsConfigurationForIndexPath:(id)a3;
- (id)transparentNavBarAppearance;
- (id)updaterLogHandle;
- (id)virtualView;
- (int64_t)_activityItemOriginationDirectionForItemIdentifier:(id)a3 conversation:(id)a4;
- (int64_t)_alertControllerStyle;
- (int64_t)_feedbackPinningInteractionMethod;
- (int64_t)distanceBetweenConversationIndexPath:(id)a3 andIndexPath:(id)a4;
- (int64_t)numberOfConversations;
- (int64_t)numberOfPinnedConversations;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)_destinationSectionForDropSession:(id)a3 destinationIndexPath:(id)a4;
- (unint64_t)_maxNumberOfDaysUntilDeletionInConversations:(id)a3;
- (unint64_t)_meCardSharingAudience;
- (unint64_t)_minNumberOfDaysUntilDeletionInConversations:(id)a3;
- (unint64_t)_numberOfRecoverableMessagesInConversations:(id)a3;
- (unint64_t)_numberOfSelectedConversations;
- (unint64_t)_preferredEditingMode:(unint64_t)a3;
- (unint64_t)_sanitizedFilterMode:(unint64_t)a3;
- (unint64_t)_sanitizedFilterModeForFilterUnknownDisabled:(unint64_t)a3;
- (unint64_t)_sanitizedFilterModeForFilterUnknownEnabled:(unint64_t)a3;
- (unint64_t)activePrimaryFilterMode;
- (unint64_t)filterMode;
- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)a3;
- (void)_appendRecentlyDeletedIdentifersToSnapshot:(id)a3;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_cancelDeletion:(id)a3;
- (void)_chatAllowedByScreenTimeChanged:(id)a3;
- (void)_chatItemsDidChange:(id)a3;
- (void)_chatParticipantsChangedNotification:(id)a3;
- (void)_chatUnreadCountDidChange:(id)a3;
- (void)_chatWatermarkDidChange:(id)a3;
- (void)_ck_setNeedsUpdateOfMultitaskingDragExclusionRects;
- (void)_configureAvatarViewInConversationCell:(id)a3 forItemIdentifier:(id)a4;
- (void)_configureCloudTipViewModelIfNeeded;
- (void)_configureForFilterMode:(unint64_t)a3;
- (void)_configureInteractiveAvatarInConversationCell:(id)a3 forItemIdentifier:(id)a4;
- (void)_configureNavbarButtonsForNavigationItem:(id)a3;
- (void)_configurePinnedConversationCell:(id)a3 forConversation:(id)a4 itemIdentifier:(id)a5 indexPath:(id)a6 animated:(BOOL)a7;
- (void)_configureSearchBarClearButton:(BOOL)a3 searchController:(id)a4;
- (void)_configureSecondarySubMenuInParentMenuItems:(id)a3;
- (void)_consumeSummaryForConversationAtIndexPathIfNeeded:(id)a3;
- (void)_consumeSummaryOnUnreadCountChangeForChatIfNeeded:(id)a3;
- (void)_contactStoreDidFinishLoadingNotification:(id)a3;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_conversationContactPhotosEnabledChangedNotification:(id)a3;
- (void)_conversationDisplayNameChangedNotification:(id)a3;
- (void)_conversationFilteringStateChangedNotification:(id)a3;
- (void)_conversationIsFilteredChangedNotification:(id)a3;
- (void)_conversationListDidChange:(id)a3;
- (void)_conversationListDidFinishLoadingConversations:(id)a3;
- (void)_conversationListPinnedConversationsDidChange:(id)a3;
- (void)_conversationMessageWasSent:(id)a3;
- (void)_conversationMuteDidChangeNotification:(id)a3;
- (void)_conversationSpamFilteringStateChangedNotification:(id)a3;
- (void)_deselectSelectedIndexPathsInCollectionView:(id)a3 animated:(BOOL)a4;
- (void)_didPullToRefresh:(id)a3;
- (void)_didReceiveSummaries:(id)a3;
- (void)_dismissPresentedDetailsController:(id)a3;
- (void)_dismissPresentedNavController:(id)a3;
- (void)_endHoldingUpdatesForBatchEditing:(BOOL)a3;
- (void)_endHoldingUpdatesOnViewWillAppear;
- (void)_ensureCellLayoutOnCell:(id)a3;
- (void)_freezeConversations;
- (void)_handingPendingConversationDidChange:(id)a3;
- (void)_handleChatRegistryDidPermanentlyDeleteRecoverableMessages:(id)a3;
- (void)_handleDidRecoverMessagesInChatsNotification:(id)a3;
- (void)_handleFilterUnknownSendersSettingChange:(id)a3;
- (void)_handleJunkFilteringSettingChange:(id)a3;
- (void)_increaseContrastDidChange:(id)a3;
- (void)_infiniteScrollReachedIndexPath:(id)a3;
- (void)_iosUpdateNavbarLayoutIfNeeded;
- (void)_keyboardWillShow:(id)a3;
- (void)_markAllConversationsAsRead;
- (void)_markPinnedAndActiveConversationsAsRead;
- (void)_moveToRecentlyDeletedButtonTapped:(id)a3;
- (void)_multiWayCallStateChanged:(id)a3;
- (void)_pendingSatelliteCountChanged;
- (void)_performConversationDropWithCollectionView:(id)a3 dropCoordinator:(id)a4;
- (void)_performItemDropWithCollectionView:(id)a3 dropCoordinator:(id)a4;
- (void)_performMultiSelectCleanUp;
- (void)_performRecentlyDeletedMultiSelectCleanUp;
- (void)_performRecoverableDeletionForConversations:(id)a3 deleteDate:(id)a4;
- (void)_performTranscriptPushForItemAtIndexPath:(id)a3 userInitiated:(BOOL)a4;
- (void)_permanentDeleteAllButtonTapped:(id)a3;
- (void)_permanentDeleteAllJunkButtonTapped:(id)a3;
- (void)_permanentDeleteSelectedButtonTapped:(id)a3;
- (void)_permanentDeleteSelectedJunkButtonTapped:(id)a3;
- (void)_permanentDeletionConfirmedForConversations:(id)a3;
- (void)_popToInbox;
- (void)_recoverAllButtonTapped:(id)a3;
- (void)_recoverConfirmedForConversations:(id)a3;
- (void)_recoverSelectedButtonTapped:(id)a3;
- (void)_refreshConversationListCellForGroupPhotoUpdate:(id)a3;
- (void)_refreshConversationListCellForHistoryClear:(id)a3;
- (void)_reloadRecoverableMetadataForNotification:(id)a3;
- (void)_reloadVisibleConversationList:(id)a3;
- (void)_removalCompleted;
- (void)_removeConversationsFromFrozenConversations:(id)a3;
- (void)_removeRefreshControl;
- (void)_resetMessageFiltering;
- (void)_resetSimFilteringToDefaultState;
- (void)_selectConversationAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)_setPinnedConversationViewLayoutStyle:(int64_t)a3 shouldInvalidateLayout:(BOOL)a4;
- (void)_showConversation:(id)a3 withComposition:(id)a4;
- (void)_showConversationWithComposition:(id)a3 atIndexPath:(id)a4;
- (void)_showOscarModalActionTapped;
- (void)_showRecentlyDeletedModalActionTapped;
- (void)_startRefreshControlTimer;
- (void)_submitFeedbackIfNecessaryForPinsChangedWithPreviousPinnedConversationIdentifiers:(id)a3;
- (void)_submitFeedbackIfNecessaryForSuggestedPinnedConversationsFollowingOnboardingCompletedSuccessfully:(BOOL)a3;
- (void)_toggleUnreadStateForSelectedConversations:(id)a3;
- (void)_unfreezeConversations;
- (void)_updateAccountRegistrationFailureNotification;
- (void)_updateBannerLayoutConstraints;
- (void)_updateCollectionViewImmediatelyIfNeeded;
- (void)_updateConversationFilteredFlagsAndReportSpam;
- (void)_updateConversationListsAndSortIfEnabled;
- (void)_updateConversations:(id)a3 alertsHidden:(BOOL)a4;
- (void)_updateForCurrentEditingStateAnimated:(BOOL)a3 shouldInvalidateCellLayout:(BOOL)a4;
- (void)_updateInsets;
- (void)_updateLargeTitleDisplayModeWithAnimation:(BOOL)a3;
- (void)_updateNavbarLayoutIfNeeded;
- (void)_updateScrollEdgeAppearanceProgress;
- (void)_updateSearchControllerForConversationListBelowMacSnapWidth:(BOOL)a3;
- (void)_updateSelectAllButtonItemTitle;
- (void)_updateSyncStatusViewWithSyncState:(id)a3;
- (void)_updateToolbarItems;
- (void)_updatedSelectedIndexPathCount;
- (void)acceptButtonTappedForCell:(id)a3;
- (void)addBanner:(id)a3 animated:(BOOL)a4;
- (void)addFilterMode:(unint64_t)a3;
- (void)addFilterModesIfValid:(id)a3 applyDefaultFallback:(BOOL)a4;
- (void)addToContactsButtonTappedForCell:(id)a3;
- (void)animateInCollectionView:(id)a3 aboveBackgroundSnapshotView:(id)a4 enteringOnboarding:(BOOL)a5 animationDistance:(double)a6;
- (void)animateInPinsToFinalPosition;
- (void)animateOutBackgroundSnapshotView:(id)a3;
- (void)applicationWillSuspend;
- (void)applyConversationListSnapshot:(id)a3 animatingDifferences:(BOOL)a4 completion:(id)a5;
- (void)applyDefaultFilterMode;
- (void)avatarHeaderWasTappedForConversation:(id)a3;
- (void)avatarViewTapped:(id)a3;
- (void)backButtonPressed;
- (void)beginFindFromEditMenu;
- (void)beginHoldingConversationInConversationListIfNeeded:(id)a3;
- (void)beginHoldingConversationListUpdatesForPPTTests;
- (void)cancelButtonTapped:(id)a3;
- (void)catalystFiltersNavigationBackButtonTapped:(id)a3;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)commitPinnedConversationsForEditingPins;
- (void)commitPinnedConversationsFromSnapshot:(id)a3;
- (void)completeAnimation;
- (void)composeButtonClicked:(id)a3;
- (void)compositionSent;
- (void)configureAppEntityForConversationCell:(id)a3 forItemIdentifier:(id)a4;
- (void)configureConversationCell:(id)a3 forItemIdentifier:(id)a4;
- (void)configureDropTargetCell:(id)a3;
- (void)configureFiltersMenu;
- (void)configureFocusFilterCell:(id)a3;
- (void)configureFocusFilterCollapsedCell:(id)a3;
- (void)configureForOscarFilter;
- (void)configureForRecentlyDeletedFilter;
- (void)configureNewMessageCell:(id)a3;
- (void)configureOnboardingTitleCell:(id)a3;
- (void)configurePinnedConversationCell:(id)a3 forItemIdentifier:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)configureRecoverableConversationCell:(id)a3 forItemIdentifier:(id)a4;
- (void)configureSearchBarEnabled:(BOOL)a3;
- (void)configureSelectionBarButtonItem:(id)a3 usingStyle:(unint64_t)a4;
- (void)configureTipCollectionViewCell:(id)a3;
- (void)configureTipKitOnboardingCell:(id)a3;
- (void)configureWithToolbarController:(id)a3;
- (void)dealloc;
- (void)deleteButtonTappedForCell:(id)a3;
- (void)deleteButtonTappedForItemIdentifier:(id)a3 completionHandler:(id)a4 cellToUpdate:(id)a5 alertsDisplayConfiguration:(id)a6;
- (void)deleteSelectedConversation;
- (void)detailsAdapter:(id)a3 wantsToStageComposition:(id)a4;
- (void)detailsAdapterDidDismiss:(id)a3;
- (void)detailsAdapterWantsToPresentKTContactVerificationUI:(id)a3;
- (void)didDismissSearchController:(id)a3;
- (void)didReorderConversationsWithTransaction:(id)a3;
- (void)dismissDetailsNavigationControllerWithCompletion:(id)a3;
- (void)dismissDetailsViewAndShowConversationList;
- (void)dismissSearchIfNeeded;
- (void)doneButtonTapped:(id)a3;
- (void)editButtonMenuWillShow;
- (void)editNameAndPhotoMenuItemSelected;
- (void)endHoldingConversationListUpdatesForPPTTests;
- (void)fetchPinningSuggestions;
- (void)filterCommandSelected:(id)a3;
- (void)filterModeChangedCommonActionsWithForcedUpdate:(BOOL)a3;
- (void)focusFilterBannerEnabledStateDidChange:(BOOL)a3;
- (void)focusStateDidChange;
- (void)invalidateCellLayout;
- (void)ktFailureTipUpdated;
- (void)leaveJunkFilterIfNeeded;
- (void)loadView;
- (void)messageFilteringSelected:(id)a3;
- (void)muteConversationButtonTappedForConversationWithItemIdentifier:(id)a3 setMuted:(BOOL)a4;
- (void)onboardingControllerDidFinish:(id)a3;
- (void)oscarViewWillAppear:(BOOL)a3;
- (void)parentSplitViewControllerDidUpdateCollapsedState;
- (void)performDeletionForActiveConversation:(id)a3 itemIdentifier:(id)a4 completionHandler:(id)a5 cellToUpdate:(id)a6 alertsDisplayConfiguration:(id)a7;
- (void)performDeletionForPendingConversationCell:(id)a3 completionHandler:(id)a4 alertsDisplayConfiguration:(id)a5;
- (void)performResumeDeferredSetup;
- (void)performSearch:(id)a3 completion:(id)a4;
- (void)permanentSpamDeletionConfirmed:(id)a3;
- (void)pinButtonTappedForCell:(id)a3;
- (void)pinConversation:(id)a3 withReason:(id)a4;
- (void)pinConversationsWithCompletion:(id)a3;
- (void)pinnedConversationView:(id)a3 didUpdateWithActivitySnapshot:(id)a4;
- (void)pinningTipActionTapped;
- (void)pinningTipUpdated;
- (void)prepareForSuspend;
- (void)presentDetailsForItemIdentifier:(id)a3 fromView:(id)a4;
- (void)reasonTrackingUpdater:(id)a3 didBeginHoldingUpdatesWithInitialReason:(id)a4;
- (void)reasonTrackingUpdater:(id)a3 didEndHoldingUpdatesWithFinalReason:(id)a4;
- (void)reasonTrackingUpdater:(id)a3 needsUpdateForReasons:(id)a4 followingHoldForReason:(id)a5;
- (void)recentlyDeletedViewWillAppear:(BOOL)a3;
- (void)recoverableDeletionConfirmedForConversations:(id)a3 deleteDate:(id)a4;
- (void)registerForCloudKitEventsWithDelayedRegistration:(BOOL)a3;
- (void)registerForFocusStateChanges;
- (void)reloadData;
- (void)removeBanner:(id)a3 animated:(BOOL)a4;
- (void)removeFilterMode:(unint64_t)a3;
- (void)removeNewlyPinnedSuggestionCells:(id)a3;
- (void)restoreFilterModesIfValid:(id)a3;
- (void)scrollToFirstSelectedItemIfNecessary;
- (void)scrollViewDidScroll:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)searchController:(id)a3 didSelectItem:(id)a4 inChat:(id)a5;
- (void)searchControllerDidBeginDragging:(id)a3;
- (void)searchControllerFindNext;
- (void)searchControllerFindPrevious;
- (void)searchViewController:(id)a3 requestsPushOfSearchController:(id)a4;
- (void)selectAllButtonTapped:(id)a3;
- (void)selectConversationClosestToDeletedIndex:(id)a3;
- (void)selectDefaultConversationAnimated:(BOOL)a3 removingPendingConversationCell:(BOOL)a4;
- (void)selectDefaultConversationAnimated:(BOOL)a3 shouldUsePreviousySelectedIndexPath:(BOOL)a4;
- (void)selectFirstActiveConversation;
- (void)selectNextSequentialConversation:(BOOL)a3;
- (void)selectPinnedConversationForItem:(int64_t)a3;
- (void)selectedDeleteButtonForConversation:(id)a3 inCell:(id)a4;
- (void)setAppIntentsDataSource;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4 shouldInvalidateCellLayout:(BOOL)a5;
- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4 shouldUpdate:(BOOL)a5 shouldInvalidateCellLayout:(BOOL)a6;
- (void)setFilterMode:(unint64_t)a3;
- (void)setHasActivePinnedConversationDropSession:(BOOL)a3;
- (void)setIsBelowMacSnapToMinWidth:(BOOL)a3;
- (void)setIsShowingPinningOnboarding:(BOOL)a3;
- (void)setLastSelectedConversationItemIdentifier:(id)a3;
- (void)setNeedsConversationListUpdateForFocusStateChange;
- (void)setupTranslationAvailabilityWithCompletion:(id)a3;
- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4;
- (void)showCannotPinMoreConversationsAlert;
- (void)showMeCardViewController;
- (void)showMeCardViewControllerWithNickname:(id)a3;
- (void)showMultiplePhoneNumbersAlertForNicknames;
- (void)showiCloudNotSignedInAlertForNicknames;
- (void)significantTimeChange;
- (void)startCompletePinningOnboardingAnimation;
- (void)startEndSuggestedPinsAnimation;
- (void)startSuggestedPinsAnimation;
- (void)startTipCellAnimatingIfNecessary;
- (void)stopTipCellAnimatingIfNecessary;
- (void)togglePinStateForConversation:(id)a3 withReason:(id)a4;
- (void)toggleReadButtonTapped:(id)a3;
- (void)toolbarPresentPermanentDeletionConfirmationsForSpamConversations:(id)a3 sender:(id)a4;
- (void)trackSIMFilterUpdateEventFromOldSIMFilterIndex:(int64_t)a3 toSelectedSIMFilterIndex:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)unpinButtonTappedForCell:(id)a3 withConversation:(id)a4;
- (void)unpinConversation:(id)a3 withReason:(id)a4;
- (void)unregisterForCloudKitEvents;
- (void)updateBannerConstraintsForScrollViewDidScroll:(id)a3;
- (void)updateBannerVisualEffectGroup;
- (void)updateConfigurationStateForSelectedCell;
- (void)updateContentsOfAllCellsAnimated:(BOOL)a3;
- (void)updateContentsOfCell:(id)a3 withItemIdentifier:(id)a4 atIndexPath:(id)a5 animated:(BOOL)a6;
- (void)updateContentsOfCellForConversation:(id)a3 animated:(BOOL)a4;
- (void)updateContentsOfCellWithIndexPath:(id)a3 animated:(BOOL)a4;
- (void)updateContentsOfCellWithItemIdentifier:(id)a3 animated:(BOOL)a4;
- (void)updateContentsOfCellWithItemIdentifier:(id)a3 indexPath:(id)a4 animated:(BOOL)a5;
- (void)updateContentsOfCellsWithItemIdentifiers:(id)a3 animated:(BOOL)a4;
- (void)updateConversationList;
- (void)updateConversationListFilterButton;
- (void)updateConversationListForFilterModeChanged;
- (void)updateConversationListForMessageSentToConversation:(id)a3;
- (void)updateConversationListTitle;
- (void)updateConversationNamesForNicknames:(id)a3;
- (void)updateConversationSelection;
- (void)updateConversationSelectionPreservingLastSelectedItemIdentifier;
- (void)updateConversationSelectionToNewCompose;
- (void)updateConversations:(id)a3 asRead:(BOOL)a4;
- (void)updateFilteringElementsWithReason:(id)a3;
- (void)updateFiltersAfterNewComposeToConversation:(id)a3;
- (void)updateFocusFilterBannerWithAnimation:(BOOL)a3;
- (void)updateNavigationItems;
- (void)updateNoMessagesDialog;
- (void)updateRefreshControlVisibility;
- (void)updateSIMFilterIndexAndReloadData:(int64_t)a3;
- (void)updateSMSSpamConversationsDisplayName;
- (void)updateSharedProfileNavigationBarPaletteVisibility;
- (void)updateSnapshotAnimatingDifferences:(BOOL)a3 completion:(id)a4;
- (void)updateSyncProgressIfNeeded;
- (void)userDeletedJunkConversationFromTranscript;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation CKConversationListCollectionViewController

- (CKConversationListCollectionViewController)init
{
  v3 = objc_alloc_init(CKConversationListCollectionViewLayout);
  v4 = [(CKConversationListCollectionViewLayout *)v3 conversationListLayout];
  v27.receiver = self;
  v27.super_class = CKConversationListCollectionViewController;
  v5 = [(CKConversationListCollectionViewController *)&v27 initWithCollectionViewLayout:v4];
  v6 = v5;
  if (v5)
  {
    v5->_isInitialAppearance = 1;
    v7 = [(CKConversationListCollectionViewController *)v5 standardCellLayout];
    [(CKConversationListCollectionViewController *)v6 setCellLayout:v7];

    [(CKConversationListCollectionViewLayout *)v3 setConversationListController:v6];
    [(CKConversationListCollectionViewController *)v6 setConversationLayout:v3];
    [(CKConversationListCollectionViewController *)v6 setNextPinnedConversationListUpdateShouldTriggerUnanimatedSnapshotUpdate:1];
    [(CKConversationListCollectionViewController *)v6 setInstallsStandardGestureForInteractiveMovement:0];
    v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v9 = [v8 isModernFilteringEnabled];

    if (v9)
    {
      [(CKConversationListCollectionViewController *)v6 applyDefaultFilterMode];
    }

    else
    {
      [(CKConversationListCollectionViewController *)v6 setFilterMode:0];
    }

    v10 = +[CKConversationListCollectionViewController updaterLogHandle];
    v11 = [objc_alloc(MEMORY[0x1E69A81E0]) initWithLogHandle:v10 delegate:v6];
    [(CKConversationListCollectionViewController *)v6 setUpdater:v11];

    v12 = [(CKConversationListCollectionViewController *)v6 updater];
    [v12 beginHoldingUpdatesForReason:@"viewVisiblity"];

    v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v14 = [v13 isModernFilteringEnabled];

    if ((v14 & 1) == 0)
    {
      [(CKConversationListCollectionViewController *)v6 _updateConversationListsAndSortIfEnabled];
    }

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v6 selector:sel__chatItemsDidChange_ name:*MEMORY[0x1E69A5748] object:0];
    [v15 addObserver:v6 selector:sel__chatWatermarkDidChange_ name:*MEMORY[0x1E69A5930] object:0];
    [v15 addObserver:v6 selector:sel__conversationListDidFinishLoadingConversations_ name:@"CKConversationListFinishedLoadingNotification" object:0];
    [v15 addObserver:v6 selector:sel__contactStoreDidFinishLoadingNotification_ name:*MEMORY[0x1E69A6E10] object:0];
    v16 = [(CKConversationListCollectionViewController *)v6 conversationList];
    [v15 addObserver:v6 selector:sel__conversationListDidChange_ name:@"CKConversationListChangedNotification" object:v16];

    [v15 addObserver:v6 selector:sel__chatUnreadCountDidChange_ name:*MEMORY[0x1E69A5920] object:0];
    [v15 addObserver:v6 selector:sel__chatUnreadCountDidChange_ name:*MEMORY[0x1E69A58D0] object:0];
    v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v16) = [v17 isUnreadCountRefactorEnabled];

    if (v16)
    {
      [v15 addObserver:v6 selector:sel__chatUnreadCountDidChange_ name:*MEMORY[0x1E69A7DD0] object:0];
    }

    [v15 addObserver:v6 selector:sel__chatParticipantsChangedNotification_ name:*MEMORY[0x1E69A5848] object:0];
    [v15 addObserver:v6 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    [v15 addObserver:v6 selector:sel__increaseContrastDidChange_ name:*MEMORY[0x1E69DD8B8] object:0];
    [v15 addObserver:v6 selector:sel__adaptiveImageGlyphWasGeneratedNotification_ name:@"CKAdaptiveImageGlyphGeneratedNotification" object:0];
    [v15 addObserver:v6 selector:sel__conversationIsFilteredChangedNotification_ name:*MEMORY[0x1E69A5740] object:0];
    [v15 addObserver:v6 selector:sel__conversationDisplayNameChangedNotification_ name:*MEMORY[0x1E69A5700] object:0];
    [v15 addObserver:v6 selector:sel__conversationMuteDidChangeNotification_ name:*MEMORY[0x1E69A77C8] object:0];
    [v15 addObserver:v6 selector:sel__conversationFilteringStateChangedNotification_ name:CKMessageFilteringChangedNotification[0] object:0];
    [v15 addObserver:v6 selector:sel__conversationSpamFilteringStateChangedNotification_ name:CKMessageSpamFilteringChangedNotification object:0];
    [v15 addObserver:v6 selector:sel__conversationContactPhotosEnabledChangedNotification_ name:CKConversationListContactPhotosEnabledNotification object:0];
    [v15 addObserver:v6 selector:sel__didReceiveSummaries_ name:@"CKConversationListDidReceiveSummaries" object:0];
    v18 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v19 = [v18 isPriorityMessagesEnabled];

    if (v19)
    {
      [v15 addObserver:v6 selector:sel_updateConversationList name:*MEMORY[0x1E69A58D8] object:0];
    }

    if (IMIsOscarEnabled())
    {
      [v15 addObserver:v6 selector:sel_updateConversationList name:@"CKConversationListDidRecoverJunkConversationsNotification" object:0];
    }

    [v15 addObserver:v6 selector:sel__multiWayCallStateChanged_ name:*MEMORY[0x1E69A5840] object:0];
    [v15 addObserver:v6 selector:sel__reloadVisibleConversationList_ name:@"CKConversationListUpdateVisibleConversationsNotification" object:0];
    [v15 addObserver:v6 selector:sel__downtimeStateChanged_ name:*MEMORY[0x1E69A5970] object:0];
    [v15 addObserver:v6 selector:sel__chatAllowedByScreenTimeChanged_ name:*MEMORY[0x1E69A56E8] object:0];
    [v15 addObserver:v6 selector:sel_updateConversationNamesForNicknames_ name:*MEMORY[0x1E69A59D8] object:0];
    [v15 addObserver:v6 selector:sel_updateConversationNamesForNicknames_ name:*MEMORY[0x1E69A59E0] object:0];
    [v15 addObserver:v6 selector:sel__conversationListPinnedConversationsDidChange_ name:@"CKConversationListPinnedConversationsChangedNotification" object:0];
    [v15 addObserver:v6 selector:sel__refreshConversationListCellForGroupPhotoUpdate_ name:@"CKConversationListAvatarUpdateNotification" object:0];
    [v15 addObserver:v6 selector:sel__refreshConversationListCellForHistoryClear_ name:*MEMORY[0x1E69A5728] object:0];
    [v15 addObserver:v6 selector:sel__handleAccountRegistrationChange_ name:*MEMORY[0x1E69A5A68] object:0];
    v20 = *MEMORY[0x1E69A56B0];
    [v15 addObserver:v6 selector:sel__handleAccountRegistrationChange_ name:*MEMORY[0x1E69A56B0] object:0];
    [v15 addObserver:v6 selector:sel__handleAccountRegistrationChange_ name:*MEMORY[0x1E69A5678] object:0];
    [v15 addObserver:v6 selector:sel__handleFilterUnknownSendersSettingChange_ name:@"SSFilterMessageRequestsSettingNotification" object:0];
    [v15 addObserver:v6 selector:sel__handleJunkFilteringSettingChange_ name:@"SSEnableJunkFilteringSettingNotification" object:0];
    [v15 addObserver:v6 selector:sel__handingPendingConversationDidChange_ name:@"CKConversationListPendingConversationChangedNotification" object:0];
    [v15 addObserver:v6 selector:sel__reloadRecoverableMetadataForNotification_ name:*MEMORY[0x1E69A58A8] object:0];
    [v15 addObserver:v6 selector:sel__handleDidRecoverMessagesInChatsNotification_ name:*MEMORY[0x1E69A58B8] object:0];
    [v15 addObserver:v6 selector:sel__updateAccountRegistrationFailureNotification name:v20 object:0];
    [v15 addObserver:v6 selector:sel_updateRefreshControlVisibility name:*MEMORY[0x1E69A5938] object:0];
    [v15 addObserver:v6 selector:sel__pendingSatelliteCountChanged name:*MEMORY[0x1E69A5850] object:0];
    [v15 addObserver:v6 selector:sel__isDownloadingPendingSatelliteMessagesChanged name:*MEMORY[0x1E69A5738] object:0];
    [(CKConversationListCollectionViewController *)v6 registerForFocusStateChanges];
    [(CKConversationListCollectionViewController *)v6 setUseLayoutToLayoutNavigationTransitions:0];
    v21 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v22 = [v21 getContactStore];
    contactStore = v6->_contactStore;
    v6->_contactStore = v22;

    v24 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v25 = [v24 isAutomaticIncomingTranslationEnabled];

    if (v25)
    {
      [(CKConversationListCollectionViewController *)v6 setupTranslationAvailabilityWithCompletion:&__block_literal_global_195];
    }
  }

  return v6;
}

- (NSSet)activeFilterModes
{
  activeFilterModes = self->_activeFilterModes;
  if (!activeFilterModes)
  {
    v4 = objc_opt_new();
    v5 = self->_activeFilterModes;
    self->_activeFilterModes = v4;

    activeFilterModes = self->_activeFilterModes;
  }

  return activeFilterModes;
}

- (unint64_t)filterMode
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernFilteringEnabled];

  if (!v4)
  {
    return self->_filterMode;
  }

  return [(CKConversationListCollectionViewController *)self activePrimaryFilterMode];
}

- (BOOL)shouldShowToolbar
{
  if (CKIsRunningInMacCatalyst())
  {
    LOBYTE(v3) = 0;
  }

  else if ([(CKConversationListCollectionViewController *)self editingMode])
  {
    v3 = [(CKConversationListCollectionViewController *)self editingMode];
    if (v3 != 1)
    {
      LOBYTE(v3) = [(CKConversationListCollectionViewController *)self filterMode]== 9;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)updateRefreshControlVisibility
{
  if (-[CKConversationListCollectionViewController filterMode](self, "filterMode") == 7 || ([MEMORY[0x1E69A5B00] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isSatelliteConnectionActive"), v3, (v4 & 1) == 0))
  {
LABEL_5:

    [(CKConversationListCollectionViewController *)self _removeRefreshControl];
    return;
  }

  v5 = [MEMORY[0x1E69A5B00] sharedInstance];
  if ([v5 isStewieActive])
  {
    v6 = [MEMORY[0x1E69A5B00] sharedInstance];
    v7 = [v6 isMessagingActiveOverSatellite];

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v8 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCE58]);
    [(CKConversationListCollectionViewController *)self setCollectionViewRefreshControl:v9];
  }

  v10 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
  [v10 addTarget:self action:sel__didPullToRefresh_ forControlEvents:4096];

  v11 = [(CKConversationListCollectionViewController *)self collectionView];
  v12 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
  [v11 setRefreshControl:v12];

  v13 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
  [v13 beginRefreshing];

  v14 = [(CKConversationListCollectionViewController *)self navigationController];
  [v14 _scrollToRevealNavigationBarPart:8 animated:1];

  [(CKConversationListCollectionViewController *)self _startRefreshControlTimer];
}

- (void)_removeRefreshControl
{
  v3 = [(CKConversationListCollectionViewController *)self refreshControlTimer];

  if (v3)
  {
    v4 = [(CKConversationListCollectionViewController *)self refreshControlTimer];
    [v4 invalidate];

    [(CKConversationListCollectionViewController *)self setRefreshControlTimer:0];
  }

  v5 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];

  if (v5)
  {
    v6 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
    [v6 endRefreshing];

    [(CKConversationListCollectionViewController *)self setCollectionViewRefreshControl:0];
    v7 = [(CKConversationListCollectionViewController *)self collectionView];
    [v7 setRefreshControl:0];
  }
}

- (void)updateConversationListForFilterModeChanged
{
  v2 = [(CKConversationListCollectionViewController *)self updater];
  [v2 setNeedsDeferredUpdateWithReason:@"filterModeChanged"];
}

- (void)updateConversationListFilterButton
{
  v2 = self;
  CKConversationListCollectionViewController.updateConversationListFilterButton()();
}

- (void)updateConversationListTitle
{
  v2 = self;
  CKConversationListCollectionViewController.updateConversationListTitle()();
}

- (void)updateSharedProfileNavigationBarPaletteVisibility
{
  v2 = self;
  CKConversationListCollectionViewController.updateSharedProfileNavigationBarPaletteVisibility()();
}

- (NSSet)guidsOfPreservedConversations
{
  guidsOfPreservedConversations = self->_guidsOfPreservedConversations;
  if (!guidsOfPreservedConversations)
  {
    v4 = objc_opt_new();
    v5 = self->_guidsOfPreservedConversations;
    self->_guidsOfPreservedConversations = v4;

    guidsOfPreservedConversations = self->_guidsOfPreservedConversations;
  }

  return guidsOfPreservedConversations;
}

- (id)generateSnapshot
{
  v46[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  spid = os_signpost_id_generate(v3);

  v4 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v5 = v4;
  v6 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "generateSnapshot", "", buf, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v7 appendSectionsWithIdentifiers:&unk_1F04E6A38];
  v8 = [MEMORY[0x1E69A8088] sharedManager];
  v9 = [v8 shouldDisplayFocusFilterBanner];

  v10 = [(CKConversationListCollectionViewController *)self filterMode];
  if (v10 == 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v11 == 1)
  {
    v12 = +[CKFocusFilterBannerCollectionViewCell itemIdentifier];
    v46[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
    [v7 appendItemsWithIdentifiers:v13];
  }

  [v7 appendSectionsWithIdentifiers:{&unk_1F04E6A50, spid}];
  if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
  {
    [v7 appendItemsWithIdentifiers:&unk_1F04E6A68];
  }

  [v7 appendSectionsWithIdentifiers:&unk_1F04E6A80];
  if ([(CKConversationListCollectionViewController *)self isShowingPinnedChatDropTarget])
  {
    v14 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifier];
    v45 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    [v7 appendItemsWithIdentifiers:v15];
  }

  v16 = [(CKConversationListCollectionViewController *)self pinnedConversations];
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  if (-[CKConversationListCollectionViewController shouldShowPinnedConversations](self, "shouldShowPinnedConversations") && [v16 count])
  {
    v18 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v16 inSection:2];
    [v7 appendItemsWithIdentifiers:v18];
    [v17 addObjectsFromArray:v16];
  }

  [v7 appendSectionsWithIdentifiers:&unk_1F04E6A98];
  if ([(CKConversationListCollectionViewController *)self shouldShowTipKitContent])
  {
    v19 = [(CKConversationListCollectionViewController *)self tipManager];
    v20 = [v19 presentedTip];

    if ((v20 - 1) <= 4)
    {
      v21 = [(__objc2_class *)*(&off_1E72F2FF8)[v20 - 1] reuseIdentifier];
      v22 = v21;
      if (v21)
      {
        v44 = v21;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
        [v7 appendItemsWithIdentifiers:v23];
      }
    }
  }

  [v7 appendSectionsWithIdentifiers:&unk_1F04E6AB0];
  v24 = [(CKConversationListCollectionViewController *)self shouldShowPendingCell];
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v43 = v24;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "snapshot contains new message identifier: %{BOOL}d", buf, 8u);
    }
  }

  if (v24)
  {
    v26 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
    v41 = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v7 appendItemsWithIdentifiers:v27];
  }

  [v7 appendSectionsWithIdentifiers:&unk_1F04E6AC8];
  if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
  {
    v28 = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
    v29 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v28 inSection:5];
    if (![(CKConversationListCollectionViewController *)self isCurrentlyAnimatingPinningOnboardingSuggestions])
    {
      v30 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v17 inSection:5];
      v31 = [v29 arrayByExcludingObjectsInArray:v30];

      v29 = v31;
    }

    [v7 appendItemsWithIdentifiers:v29];
    [v17 addObjectsFromArray:v28];
  }

  if (v10 == 7)
  {
    [v7 appendSectionsWithIdentifiers:&unk_1F04E6AE0];
    [(CKConversationListCollectionViewController *)self _appendRecentlyDeletedIdentifersToSnapshot:v7];
  }

  else
  {
    v32 = [(CKConversationListCollectionViewController *)self activeConversations];
    v33 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v32 inSection:5];
    if ([v33 count])
    {
      v34 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v17 inSection:5];
      v35 = [v33 arrayByExcludingObjectsInArray:v34];
      [v7 appendItemsWithIdentifiers:v35];
    }

    [v7 appendSectionsWithIdentifiers:&unk_1F04E6AE0];
  }

  v36 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v37 = v36;
  if (v6 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v37, OS_SIGNPOST_INTERVAL_END, spida, "generateSnapshot", "", buf, 2u);
  }

  return v7;
}

- (void)applyDefaultFilterMode
{
  v2 = self;
  CKConversationListCollectionViewController.applyDefaultFilterMode()();
}

- (CKConversationListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_freezeConversations
{
  v3 = [(CKConversationListCollectionViewController *)self pinnedConversations];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  v5 = v3;
  [(CKConversationListCollectionViewController *)self setFrozenPinnedConversations:v3];
  v4 = [(CKConversationListCollectionViewController *)self activeConversations];
  [(CKConversationListCollectionViewController *)self setFrozenConversations:v4];
}

- (CKConversationListCellLayout)standardCellLayout
{
  standardCellLayout = self->_standardCellLayout;
  if (!standardCellLayout)
  {
    v4 = objc_opt_new();
    v5 = self->_standardCellLayout;
    self->_standardCellLayout = v4;

    standardCellLayout = self->_standardCellLayout;
  }

  return standardCellLayout;
}

- (void)addFilterMode:(unint64_t)a3
{
  v4 = self;
  CKConversationListCollectionViewController.addFilterMode(_:)(a3);
}

- (unint64_t)activePrimaryFilterMode
{
  v2 = self;
  v3 = CKConversationListCollectionViewController.activePrimaryFilterMode.getter();

  return v3;
}

+ (id)updaterLogHandle
{
  if (updaterLogHandle_onceToken != -1)
  {
    +[CKConversationListCollectionViewController updaterLogHandle];
  }

  v3 = updaterLogHandle_sLogHandle;

  return v3;
}

void __62__CKConversationListCollectionViewController_updaterLogHandle__block_invoke()
{
  v0 = os_log_create("com.apple.Messages", "ConversationListViewControllerUpdater");
  v1 = updaterLogHandle_sLogHandle;
  updaterLogHandle_sLogHandle = v0;
}

- (BOOL)shouldShowPinnedConversations
{
  v2 = self;
  v3 = CKConversationListCollectionViewController.shouldShowPinnedConversations()();

  return v3;
}

- (void)registerForFocusStateChanges
{
  v3 = [MEMORY[0x1E69A8088] sharedManager];
  [v3 addDelegate:self];
  [v3 updateFocusStateForCurrentFocusFilterActionAsync];
  [(CKConversationListCollectionViewController *)self updateFocusFilterBannerWithAnimation:0];
}

- (OS_os_log)conversationListCollectionViewControllerLogHandle
{
  v2 = objc_opt_class();

  return [v2 conversationListCollectionViewControllerLogHandle];
}

+ (id)conversationListCollectionViewControllerLogHandle
{
  if (conversationListCollectionViewControllerLogHandle_onceToken != -1)
  {
    +[CKConversationListCollectionViewController conversationListCollectionViewControllerLogHandle];
  }

  v3 = conversationListCollectionViewControllerLogHandle_sLogHandle;

  return v3;
}

void __95__CKConversationListCollectionViewController_conversationListCollectionViewControllerLogHandle__block_invoke()
{
  v0 = os_log_create("com.apple.Messages", "ConversationListCollectionViewController");
  v1 = conversationListCollectionViewControllerLogHandle_sLogHandle;
  conversationListCollectionViewControllerLogHandle_sLogHandle = v0;
}

- (BOOL)shouldShowTipKitContent
{
  v3 = [(CKConversationListTipManager *)self->_tipManager presentedTip];
  if (v3)
  {
    if ([(CKConversationListCollectionViewController *)self editingMode])
    {
LABEL_3:
      LOBYTE(v3) = 0;
      return v3;
    }

    if ([(CKConversationListTipManager *)self->_tipManager presentedTip]!= 2)
    {
LABEL_9:
      LOBYTE(v3) = 1;
      return v3;
    }

    LODWORD(v3) = [(CKConversationListCollectionViewController *)self shouldShowPinnedConversations];
    if (v3)
    {
      LODWORD(v3) = [(CKConversationListCollectionViewController *)self canShowSuggestedPinningOnboardingCell];
      if (v3)
      {
        v4 = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
        v5 = [v4 count];

        if (v5 < 3 || [(CKConversationListCollectionViewController *)self numberOfPinnedConversations]> 0)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  return v3;
}

- (BOOL)shouldShowPendingCell
{
  v2 = self;
  v3 = CKConversationListCollectionViewController.shouldShowPendingCell()();

  return v3;
}

- (UIBarButtonItem)editButtonItem
{
  editButtonItem = self->_editButtonItem;
  if (!editButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 primaryAction:0];
    v5 = self->_editButtonItem;
    self->_editButtonItem = v4;

    [(UIBarButtonItem *)self->_editButtonItem setAccessibilityIdentifier:@"optionsButton"];
    v6 = [(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession];
    editButtonItem = self->_editButtonItem;
    if (!v6)
    {
      [(UIBarButtonItem *)editButtonItem setSpringLoaded:1];
      objc_initWeak(&location, self);
      v7 = self->_editButtonItem;
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __60__CKConversationListCollectionViewController_editButtonItem__block_invoke;
      v12 = &unk_1E72F5458;
      objc_copyWeak(&v13, &location);
      [(UIBarButtonItem *)v7 _setSecondaryActionsProvider:&v9];
      [(UIBarButtonItem *)self->_editButtonItem setSecondaryActionsArePrimary:1, v9, v10, v11, v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
      editButtonItem = self->_editButtonItem;
    }
  }

  return editButtonItem;
}

- (void)viewDidLoad
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v11 viewDidLoad];
  if (!CKIsRunningInMacCatalyst())
  {
    [(CKConversationListCollectionViewController *)self setClearsSelectionOnViewWillAppear:0];
    v3 = [(CKConversationListCollectionViewController *)self collectionView];
    [v3 setAllowsSelectionDuringEditing:1];

    v4 = [(CKConversationListCollectionViewController *)self collectionView];
    [v4 setAllowsMultipleSelectionDuringEditing:1];
  }

  v5 = CKIsRunningInMacCatalyst() != 0;
  v6 = [(CKConversationListCollectionViewController *)self collectionView];
  [v6 setAllowsMultipleSelection:v5];

  [(CKConversationListCollectionViewController *)self setDefinesPresentationContext:1];
  v7 = [MEMORY[0x1E69A5B18] sharedInstance];
  [v7 setProgressPollingInterval:60.0];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x1E69A5B18] sharedInstance];
      [v9 progressPollingInterval];
      *buf = 134217984;
      v13 = v10;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "set progress polling interval to %f", buf, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self registerForCloudKitEventsWithDelayedRegistration:1];
  [(CKConversationListCollectionViewController *)self _configureCloudTipViewModelIfNeeded];
}

- (void)_configureCloudTipViewModelIfNeeded
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isMessagesInICloudNewUIEnabled];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Configuring the CKCloudTipViewModel handler.", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    v6 = +[_TtC7ChatKit19CKCloudTipViewModel sharedInstance];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__CKConversationListCollectionViewController__configureCloudTipViewModelIfNeeded__block_invoke;
    v8[3] = &unk_1E72F55C0;
    objc_copyWeak(&v9, buf);
    [v6 setOnCloudTipChanged:v8];

    v7 = dispatch_get_global_queue(0, 0);
    dispatch_async(v7, &__block_literal_global_1034_0);

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __81__CKConversationListCollectionViewController__configureCloudTipViewModelIfNeeded__block_invoke_2()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Completed cloud tip configuration", v1, 2u);
    }
  }
}

- (CKSearchViewController)searchResultsController
{
  searchResultsController = self->_searchResultsController;
  if (!searchResultsController)
  {
    v4 = [CKSearchViewController alloc];
    v5 = +[CKSpotlightQueryUtilities defaultSearchControllers];
    v6 = [(CKSearchViewController *)v4 initWithSearchControllerClasses:v5];

    [(CKSearchViewController *)v6 setDelegate:self];
    v7 = self->_searchResultsController;
    self->_searchResultsController = v6;

    searchResultsController = self->_searchResultsController;
  }

  return searchResultsController;
}

- (UIBarButtonItem)composeButtonItem
{
  composeButtonItem = self->_composeButtonItem;
  if (!composeButtonItem)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 newComposeImage];

    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v5 style:0 target:self action:sel_composeButtonClicked_];
    v7 = self->_composeButtonItem;
    self->_composeButtonItem = v6;

    [(UIBarButtonItem *)self->_composeButtonItem setAccessibilityIdentifier:@"composeButton"];
    if (CKIsRunningInMacCatalyst())
    {
      v8 = [MEMORY[0x1E69DC888] labelColor];
      [(UIBarButtonItem *)self->_composeButtonItem setTintColor:v8];
    }

    [(UIBarButtonItem *)self->_composeButtonItem setSpringLoaded:1];

    composeButtonItem = self->_composeButtonItem;
  }

  return composeButtonItem;
}

- (void)updateSyncProgressIfNeeded
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "-updateSyncProgressIfNeeded invoked in response to a change to the view or event lifecycle.", v4, 2u);
    }
  }

  v3 = [MEMORY[0x1E69A5B18] sharedInstance];
  [v3 fetchSyncState];
}

- (void)_updateToolbarItems
{
  if ([(CKConversationListCollectionViewController *)self shouldShowToolbar])
  {
    v3 = [(CKConversationListCollectionViewController *)self _makeToolbarItemsForCurrentState];
    [(CKConversationListCollectionViewController *)self setToolbarItems:v3 animated:1];
    v4 = [v3 count];
    v5 = v4 != 0;
    v6 = v4 == 0;
    v7 = [(CKConversationListCollectionViewController *)self navigationController];
    [v7 setToolbarHidden:v6 animated:1];
  }

  else
  {
    [(CKConversationListCollectionViewController *)self setToolbarItems:MEMORY[0x1E695E0F0]];
    v3 = [(CKConversationListCollectionViewController *)self navigationController];
    [v3 setToolbarHidden:1 animated:1];
    v5 = 0;
  }

  v8 = [(CKConversationListCollectionViewController *)self navigationItem];
  [v8 setSearchBarPlacementAllowsToolbarIntegration:v5];

  [(CKConversationListCollectionViewController *)self updateSyncProgressIfNeeded];
}

- (unint64_t)_numberOfSelectedConversations
{
  v2 = [(CKConversationListCollectionViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];

  v4 = [v3 count];
  return v4;
}

- (BOOL)_hidesBackButton
{
  if ([(CKConversationListCollectionViewController *)self _shouldShowInboxView])
  {
    v3 = [(CKConversationListCollectionViewController *)self editingMode];
    if (v3)
    {
      LOBYTE(v3) = [(CKConversationListCollectionViewController *)self filterMode]!= 7;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 theme];
  v4 = [v3 statusBarStyle];

  return v4;
}

- (void)updateNavigationItems
{
  v3 = [(CKConversationListCollectionViewController *)self navigationItem];
  if (!CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests())
  {
    [(CKConversationListCollectionViewController *)self _configureNavbarButtonsForNavigationItem:v3];
  }

  [(CKConversationListCollectionViewController *)self _updateSearchControllerForConversationListBelowMacSnapWidth:[(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth]];
}

- (UIBarButtonItem)filteringButtonItem
{
  filteringButtonItem = self->_filteringButtonItem;
  if (!filteringButtonItem)
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"line.3.horizontal.decrease"];
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v4 menu:0];
    [(UIBarButtonItem *)v5 setAccessibilityIdentifier:@"filteringButton"];
    v6 = self->_filteringButtonItem;
    self->_filteringButtonItem = v5;

    filteringButtonItem = self->_filteringButtonItem;
  }

  return filteringButtonItem;
}

- (void)configureFiltersMenu
{
  v2 = self;
  CKConversationListCollectionViewController.configureFiltersMenu()();
}

- (void)loadView
{
  v115 = *MEMORY[0x1E69E9840];
  self->_isInitialAppearance = 1;
  self->_shouldUseFastPreviewText = ![(CKConversationListCollectionViewController *)self completedDeferredSetup];
  v110.receiver = self;
  v110.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v110 loadView];
  v3 = [(CKConversationListCollectionViewController *)self conversationLayout];
  [v3 updatePinnedConversationViewLayoutStyle];

  v4 = [(CKConversationListCollectionViewController *)self collectionView];
  v5 = [(CKConversationListCollectionViewController *)self dataSourceWithCollectionView:v4];
  [(CKConversationListCollectionViewController *)self setDataSource:v5];

  v6 = [(CKConversationListCollectionViewController *)self dataSource];
  v7 = [(CKConversationListCollectionViewController *)self collectionView];
  [v7 setDataSource:v6];

  v8 = [(CKConversationListCollectionViewController *)self collectionView];
  [v8 setAutoresizingMask:18];

  v9 = [(CKConversationListCollectionViewController *)self collectionView];
  [v9 setDelegate:self];

  v10 = [(CKConversationListCollectionViewController *)self collectionView];
  [v10 setDragInteractionEnabled:1];

  v11 = [(CKConversationListCollectionViewController *)self collectionView];
  [v11 setDragDelegate:self];

  v12 = [(CKConversationListCollectionViewController *)self collectionView];
  [v12 setDropDelegate:self];

  v13 = [(CKConversationListCollectionViewController *)self collectionView];
  [v13 setAlwaysBounceVertical:1];

  v14 = [(CKConversationListCollectionViewController *)self collectionView];
  [v14 setPreservesSuperviewLayoutMargins:1];

  v15 = [(CKConversationListCollectionViewController *)self collectionView];
  [v15 setAllowsFocus:0];

  v16 = +[CKUIBehavior sharedBehaviors];
  v17 = [v16 theme];
  v18 = [v17 scrollIndicatorStyle];
  v19 = [(CKConversationListCollectionViewController *)self collectionView];
  [v19 setIndicatorStyle:v18];

  v20 = [(CKConversationListCollectionViewController *)self collectionView];
  [v20 setShowsHorizontalScrollIndicator:0];

  v21 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v18) = [v21 darkUIEnabled];
  v22 = [(CKConversationListCollectionViewController *)self collectionView];
  [v22 setShowsVerticalScrollIndicator:v18 ^ 1];

  v23 = [(CKConversationListCollectionViewController *)self collectionView];
  [v23 setAccessibilityIdentifier:@"ConversationList"];

  v24 = [(CKConversationListCollectionViewController *)self collectionView];
  LOBYTE(v22) = objc_opt_respondsToSelector();

  if (v22)
  {
    v25 = [(CKConversationListCollectionViewController *)self collectionView];
    [v25 _setDelaysUserInitiatedItemSelection:1];
  }

  v26 = objc_alloc_init(CKConversationListCollectionViewDragFeedbackGenerator);
  v27 = [(CKConversationListCollectionViewController *)self collectionView];
  [v27 _setReorderFeedbackGenerator:v26];

  v28 = [(CKConversationListCollectionViewController *)self collectionView];
  [v28 _setPreferredDragDestinationVisualStyle:1];

  v29 = [(CKConversationListCollectionViewController *)self collectionView];
  v30 = objc_opt_class();
  v31 = +[CKFocusFilterBannerCollectionViewCell reuseIdentifier];
  [v29 registerClass:v30 forCellWithReuseIdentifier:v31];

  v32 = [(CKConversationListCollectionViewController *)self collectionView];
  v33 = objc_opt_class();
  v34 = +[CKFocusFilterBannerCollapsedCollectionViewCell reuseIdentifier];
  [v32 registerClass:v33 forCellWithReuseIdentifier:v34];

  v35 = [(CKConversationListCollectionViewController *)self collectionView];
  v36 = objc_opt_class();
  v37 = +[CKPinningOnboardingTitleCell reuseIdentifier];
  [v35 registerClass:v36 forCellWithReuseIdentifier:v37];

  v38 = [(CKConversationListCollectionViewController *)self collectionView];
  v39 = objc_opt_class();
  v40 = +[CKPinnedConversationCollectionViewCell reuseIdentifier];
  [v38 registerClass:v39 forCellWithReuseIdentifier:v40];

  v41 = [(CKConversationListCollectionViewController *)self collectionView];
  v42 = objc_opt_class();
  v43 = +[CKPinnedConversationDropTargetCollectionViewCell reuseIdentifier];
  [v41 registerClass:v42 forCellWithReuseIdentifier:v43];

  v44 = [(CKConversationListCollectionViewController *)self collectionView];
  v45 = objc_opt_class();
  v46 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
  [v44 registerClass:v45 forCellWithReuseIdentifier:v46];

  v47 = [(CKConversationListCollectionViewController *)self collectionView];
  v48 = objc_opt_class();
  v49 = +[CKConversationListEmbeddedStandardTableViewCell reuseIdentifier];
  [v47 registerClass:v48 forCellWithReuseIdentifier:v49];

  v50 = [(CKConversationListCollectionViewController *)self collectionView];
  v51 = objc_opt_class();
  v52 = +[CKConversationListEmbeddedLargeTextTableViewCell reuseIdentifier];
  [v50 registerClass:v51 forCellWithReuseIdentifier:v52];

  v53 = [(CKConversationListCollectionViewController *)self collectionView];
  v54 = objc_opt_class();
  v55 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
  [v53 registerClass:v54 forCellWithReuseIdentifier:v55];

  v56 = [(CKConversationListCollectionViewController *)self collectionView];
  v57 = objc_opt_class();
  v58 = +[_TtC7ChatKit23CKTipCollectionViewCell reuseIdentifier];
  [v56 registerClass:v57 forCellWithReuseIdentifier:v58];

  v59 = [(CKConversationListCollectionViewController *)self collectionView];
  v60 = objc_opt_class();
  v61 = +[CKPinnedSectionSeparatorView reuseIdentifier];
  v62 = +[CKPinnedSectionSeparatorView reuseIdentifier];
  [v59 registerClass:v60 forSupplementaryViewOfKind:v61 withReuseIdentifier:v62];

  v63 = [(CKConversationListCollectionViewController *)self collectionView];
  v64 = objc_opt_class();
  v65 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
  v66 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
  [v63 registerClass:v64 forSupplementaryViewOfKind:v65 withReuseIdentifier:v66];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v67 = +[(CKConversationListCollectionViewRecoverableConversationCell *)CKConversationListCollectionViewRecentlyDeletedConversationCell];
  v68 = [v67 countByEnumeratingWithState:&v106 objects:v114 count:16];
  if (v68)
  {
    v69 = *v107;
    do
    {
      v70 = 0;
      do
      {
        if (*v107 != v69)
        {
          objc_enumerationMutation(v67);
        }

        v71 = *(*(&v106 + 1) + 8 * v70);
        v72 = [(CKConversationListCollectionViewController *)self collectionView];
        [v72 registerClass:objc_opt_class() forCellWithReuseIdentifier:v71];

        ++v70;
      }

      while (v68 != v70);
      v68 = [v67 countByEnumeratingWithState:&v106 objects:v114 count:16];
    }

    while (v68);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v73 = +[(CKConversationListCollectionViewRecoverableConversationCell *)CKConversationListCollectionViewJunkConversationCell];
  v74 = [v73 countByEnumeratingWithState:&v102 objects:v113 count:16];
  if (v74)
  {
    v75 = *v103;
    do
    {
      v76 = 0;
      do
      {
        if (*v103 != v75)
        {
          objc_enumerationMutation(v73);
        }

        v77 = *(*(&v102 + 1) + 8 * v76);
        v78 = [(CKConversationListCollectionViewController *)self collectionView];
        [v78 registerClass:objc_opt_class() forCellWithReuseIdentifier:v77];

        ++v76;
      }

      while (v74 != v76);
      v74 = [v73 countByEnumeratingWithState:&v102 objects:v113 count:16];
    }

    while (v74);
  }

  v79 = +[CKUIBehavior sharedBehaviors];
  v80 = [v79 theme];

  v81 = [v80 conversationListBackgroundColor];
  if (v81)
  {
  }

  else if (!CKIsRunningInMacCatalyst() || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v84, "macApplicationMetricsGatheringEnabled"), v84, !v85))
  {
    v82 = [(CKConversationListCollectionViewController *)self collectionView];
    v83 = [v80 conversationListCollectionViewBackgroundColor];
    [v82 setBackgroundColor:v83];
    goto LABEL_23;
  }

  v82 = [(CKConversationListCollectionViewController *)self collectionView];
  v83 = [v80 conversationListBackgroundColor];
  [v82 setBackgroundColor:v83];
LABEL_23:

  if (!CKIsRunningInMacCatalyst() || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v86 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend(v86, "macApplicationMetricsGatheringEnabled"), v86, (v87 & 1) == 0))
  {
    v88 = [(CKConversationListCollectionViewController *)self collectionView];
    v89 = objc_alloc(MEMORY[0x1E69DD250]);
    v90 = [(CKConversationListCollectionViewController *)self collectionView];
    [v90 bounds];
    v91 = [v89 initWithFrame:?];
    [v88 setBackgroundView:v91];
  }

  v92 = [(CKConversationListCollectionViewController *)self navigationController];
  v93 = [v92 navigationBar];
  v94 = [MEMORY[0x1E69DC888] clearColor];
  [v93 setBackgroundColor:v94];

  if (!self->_tipManager)
  {
    v95 = [[CKConversationListTipManager alloc] initWithConversationListController:self];
    tipManager = self->_tipManager;
    self->_tipManager = v95;
  }

  v97 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v98 = [v97 isConversationListRefreshEnabled];

  if (v98)
  {
    [(CKConversationListCollectionViewController *)self updateConversationListTitle];
  }

  v99 = [(CKConversationListCollectionViewController *)self updater];
  [v99 setNeedsDeferredUpdateWithReason:@"viewLoaded"];

  if (IMOSLoggingEnabled())
  {
    v100 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      v101 = [(CKConversationListCollectionViewController *)self collectionView];
      *buf = 138412290;
      v112 = v101;
      _os_log_impl(&dword_19020E000, v100, OS_LOG_TYPE_INFO, "loadView, collectionView initialized as:%@", buf, 0xCu);
    }
  }
}

- (void)parentSplitViewControllerDidUpdateCollapsedState
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(CKConversationListCollectionViewController *)self delegate];
  v4 = [v3 isCollapsed];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Conversation list has been told that the collapsed state has changed {%@}.", &v7, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self _updateToolbarItems];
}

- (id)_makeToolbarItemsForCurrentState
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [(CKConversationListCollectionViewController *)self _numberOfSelectedConversations];
  v4 = [(CKConversationListCollectionViewController *)self dataSource];
  v5 = [v4 snapshot];
  v6 = [v5 numberOfItems];

  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    v7 = [(CKConversationListCollectionViewController *)self toolbarItemsForRecentlyDeletedFilterHasConversations:v6 > 0 hasSelectedConversations:v3 != 0];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    v7 = [(CKConversationListCollectionViewController *)self toolbarItemsForJunkFilterHasConversations:v6 > 0 hasSelectedConversations:v3 != 0];
    goto LABEL_5;
  }

  if ([(CKConversationListCollectionViewController *)self editingMode])
  {
    if ([(CKConversationListCollectionViewController *)self isEditing]&& [(CKConversationListCollectionViewController *)self filterMode]!= 9)
    {
      v20 = [(CKConversationListCollectionViewController *)self toggleReadButtonItem];
      v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      if (v3)
      {
        v3 = [(CKConversationListCollectionViewController *)self _hasStewieConversationSelected]^ 1;
      }

      v22 = [(CKConversationListCollectionViewController *)self moveSelectedToRecentlyDeletedButtonItem];
      [v22 setEnabled:v3];
      v23[0] = v20;
      v23[1] = v21;
      v23[2] = v22;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v10 = [(CKConversationListCollectionViewController *)self splitViewController];
    v11 = [v10 isCollapsed];

    v12 = [(CKConversationListCollectionViewController *)self traitCollection];
    v13 = [v12 userInterfaceIdiom];

    v14 = [MEMORY[0x1E695DF70] array];
    if (!v13 && v11)
    {
      v15 = [(CKConversationListCollectionViewController *)self searchController];
      v16 = [v15 _inlineToolbarSearchBarItem];
      [v14 addObject:v16];
    }

    if (v11)
    {
      v17 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      v18 = [(CKConversationListCollectionViewController *)self composeButtonItem];
      v24[0] = v17;
      v24[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      [v14 addObjectsFromArray:v19];
    }

    v8 = [v14 copy];
  }

LABEL_6:

  return v8;
}

- (BOOL)_isEditButtonPlacedOnLeft
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernFilteringEnabled];

  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 conversationListPrefersEditButtonOnTrailingEdge];
  }

  else
  {
    v6 = [(CKConversationListCollectionViewController *)self _shouldShowInboxView];
  }

  return v6 ^ 1;
}

- (UISearchController)searchController
{
  if ([(CKConversationListCollectionViewController *)self isRecentlyDeletedModal]|| [(CKConversationListCollectionViewController *)self isOscarModal])
  {
    v3 = 0;
  }

  else
  {
    searchController = self->_searchController;
    if (!searchController)
    {
      v5 = [(CKConversationListCollectionViewController *)self searchResultsController];
      v6 = CKIsRunningInMacCatalyst();
      v7 = 0x1E69DCF10;
      if (v6)
      {
        v7 = off_1E72E52F8;
      }

      v8 = [objc_alloc(*v7) initWithSearchResultsController:v5];
      [(UISearchController *)v8 setSearchResultsUpdater:v5];
      [(UISearchController *)v8 _setClearAsCancelButtonVisibilityWhenEmpty:1];
      [(UISearchController *)v8 setDelegate:self];
      v9 = [(UISearchController *)v8 searchBar];
      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = [v10 theme];
      [v9 setBarStyle:{objc_msgSend(v11, "defaultBarStyle")}];

      v12 = [(UISearchController *)v8 searchBar];
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 theme];
      [v12 setKeyboardAppearance:{objc_msgSend(v14, "keyboardAppearance")}];

      v15 = +[CKUIBehavior sharedBehaviors];
      -[UISearchController setObscuresBackgroundDuringPresentation:](v8, "setObscuresBackgroundDuringPresentation:", [v15 searchControllerObscuresConversationList]);

      v16 = self->_searchController;
      self->_searchController = v8;

      searchController = self->_searchController;
    }

    v3 = searchController;
  }

  return v3;
}

- (CKMacToolbarController)macToolbarController
{
  WeakRetained = objc_loadWeakRetained(&self->_macToolbarController);

  return WeakRetained;
}

- (void)invalidateCellLayout
{
  v3 = [(CKConversationListCollectionViewController *)self junkCellLayout];
  [v3 invalidate];

  v4 = [(CKConversationListCollectionViewController *)self _cellsShouldShowChevron];
  v5 = [(CKConversationListCollectionViewController *)self junkCellLayout];
  [v5 setShouldShowChevron:v4];

  v6 = [(CKConversationListCollectionViewController *)self collectionView];
  [v6 bounds];
  Width = CGRectGetWidth(v19);
  v8 = [(CKConversationListCollectionViewController *)self junkCellLayout];
  [v8 setTableViewWidth:Width];

  v9 = [(CKConversationListCollectionViewController *)self standardCellLayout];
  [v9 invalidate];

  v10 = [(CKConversationListCollectionViewController *)self _cellsShouldShowChevron];
  v11 = [(CKConversationListCollectionViewController *)self standardCellLayout];
  [v11 setShouldShowChevron:v10];

  v12 = [(CKConversationListCollectionViewController *)self collectionView];
  [v12 bounds];
  v13 = CGRectGetWidth(v20);
  v14 = [(CKConversationListCollectionViewController *)self standardCellLayout];
  [v14 setTableViewWidth:v13];

  v15 = [(CKConversationListCollectionViewController *)self conversationLayout];
  [v15 updatePinnedConversationViewLayoutStyle];

  [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:0];
  v17 = [(CKConversationListCollectionViewController *)self collectionView];
  v16 = [v17 collectionViewLayout];
  [v16 invalidateLayout];
}

- (CKConversationListCellLayout)junkCellLayout
{
  junkCellLayout = self->_junkCellLayout;
  if (!junkCellLayout)
  {
    v4 = objc_opt_new();
    v5 = self->_junkCellLayout;
    self->_junkCellLayout = v4;

    junkCellLayout = self->_junkCellLayout;
  }

  return junkCellLayout;
}

- (BOOL)_cellsShouldShowChevron
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained isCollapsed];

  return v3;
}

- (id)transparentNavBarAppearance
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v2 configureWithTransparentBackground];

  return v2;
}

- (void)_endHoldingUpdatesOnViewWillAppear
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(CKConversationListCollectionViewController *)self updater];
  [v3 setNeedsDeferredUpdateWithReason:@"viewWillAppear"];

  v4 = [(CKConversationListCollectionViewController *)self updater];
  [v4 endAllHoldsOnUpdatesForReason:@"viewVisiblity" updateTriggeredIfNotHeldShouldBeDeferred:0];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CKConversationListCollectionViewController *)self updater];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Conversation list end holding updates, _updater is: %@", &v7, 0xCu);
    }
  }
}

- (void)_unfreezeConversations
{
  [(CKConversationListCollectionViewController *)self setFrozenPinnedConversations:0];

  [(CKConversationListCollectionViewController *)self setFrozenConversations:0];
}

- (void)_updateConversationListsAndSortIfEnabled
{
  v2 = [(CKConversationListCollectionViewController *)self conversationList];
  [v2 updateConversationListsAndSortIfEnabled];
}

- (void)_ck_setNeedsUpdateOfMultitaskingDragExclusionRects
{
  if (objc_opt_respondsToSelector())
  {

    [(CKConversationListCollectionViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
  }
}

- (void)updateConversationSelectionPreservingLastSelectedItemIdentifier
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(CKConversationListCollectionViewController *)self _shouldUpdateConversationSelection])
  {
    v3 = [(CKConversationListCollectionViewController *)self delegate];
    v4 = [v3 isShowingComposeChatController];

    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "multi-select: Currently showing compose chat controller. updating selection to compose cell", &v30, 2u);
        }
      }

      [(CKConversationListCollectionViewController *)self updateConversationSelectionToNewCompose];
    }

    else
    {
      v6 = [(CKConversationListCollectionViewController *)self delegate];
      v7 = [v6 currentlyShownConversation];

      if (v7)
      {
        if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
        {
          v8 = [v7 isPinned];
          if (v8)
          {
            v9 = 2;
          }

          else
          {
            v9 = 5;
          }

          if (v8)
          {
            v10 = 5;
          }

          else
          {
            v10 = 2;
          }
        }

        else
        {
          v9 = 5;
          v10 = 2;
        }

        v14 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v7 inSection:v9];
        if (v14)
        {
          v15 = [(CKConversationListCollectionViewController *)self dataSource];
          v16 = [v15 indexPathForItemIdentifier:v14];

          if (v16)
          {
            v17 = [(CKConversationListCollectionViewController *)self collectionView];
            v18 = [v17 indexPathsForSelectedItems];

            LODWORD(v17) = [v18 containsObject:v16];
            v19 = IMOSLoggingEnabled();
            if (v17)
            {
              if (v19)
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  LOWORD(v30) = 0;
                  _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "multi-select: not updating selection, already selected", &v30, 2u);
                }
              }
            }

            else
            {
              if (v19)
              {
                v27 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  v30 = 138412290;
                  v31 = v16;
                  _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "multi-select: selecting item at target indexPath: %@", &v30, 0xCu);
                }
              }

              v28 = [(CKConversationListCollectionViewController *)self collectionView];
              [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:v28 animated:0];

              v29 = [(CKConversationListCollectionViewController *)self collectionView];
              [v29 selectItemAtIndexPath:v16 animated:0 scrollPosition:0];

              [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:v14];
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
                v30 = 138412802;
                v31 = v23;
                v32 = 2112;
                v33 = v7;
                v34 = 2112;
                v35 = v14;
                _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | multi-select: failed to find indexPath in section: %@ for currentConversation: %@, itemIdentifier: %@, trying opposing section lookup", &v30, 0x20u);
              }
            }

            v18 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v7 inSection:v10];
            v24 = [(CKConversationListCollectionViewController *)self dataSource];
            v16 = [v24 indexPathForItemIdentifier:v18];

            if (!v16)
            {
              if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  v30 = 138412546;
                  v31 = v7;
                  v32 = 2112;
                  v33 = v14;
                  _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | multi-select: failed to find indexPath for currentConversation: %@, itemIdentifier: %@, showing selection view controller to gracefully compensate.", &v30, 0x16u);
                }
              }

              v26 = [(CKConversationListCollectionViewController *)self delegate];
              [v26 conversationListFailedToSelectShownConversation];
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v30 = 138412290;
              v31 = v7;
              _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | multi-select: failed to find itemIdentifier for currentConversation: %@, showing selection view controller to gracefully compensate.", &v30, 0xCu);
            }
          }

          v16 = [(CKConversationListCollectionViewController *)self delegate];
          [v16 conversationListFailedToSelectShownConversation];
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [(CKConversationListCollectionViewController *)self collectionView];
            v13 = [v12 indexPathsForSelectedItems];
            v30 = 138412290;
            v31 = v13;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "multi-select: No currently shown conversation. Updating selected index path delegate. SelectedIndexPaths: %@", &v30, 0xCu);
          }
        }

        [(CKConversationListCollectionViewController *)self _updatedSelectedIndexPathCount];
        v14 = [(CKConversationListCollectionViewController *)self delegate];
        [v14 conversationListFailedToSelectShownConversation];
      }
    }
  }
}

- (BOOL)_shouldUpdateConversationSelection
{
  if ([(CKConversationListCollectionViewController *)self _shouldKeepSelection])
  {
    if ([(CKConversationListCollectionViewController *)self isVisible])
    {
      if ([(CKConversationListCollectionViewController *)self haveAppliedInitialSnapshot])
      {
        v3 = [(CKConversationListCollectionViewController *)self searchController];
        v4 = [v3 isActive];

        if (v4)
        {
          v5 = [(CKConversationListCollectionViewController *)self collectionView];
          [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:v5 animated:0];

          v6 = IMOSLoggingEnabled();
          if (v6)
          {
            v7 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              v11 = 0;
              v8 = "multi-select: deselecting all indexPaths because searchController is active";
              v9 = &v11;
LABEL_17:
              _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
              goto LABEL_18;
            }

            goto LABEL_18;
          }
        }

        else
        {
          LOBYTE(v6) = 1;
        }
      }

      else
      {
        v6 = IMOSLoggingEnabled();
        if (v6)
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v8 = "multi-select: Not updating conversation selection because dataSource has not updated before.";
            v9 = buf;
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      v6 = IMOSLoggingEnabled();
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v13 = 0;
          v8 = "multi-select: Not updating conversation selection because view is not visible";
          v9 = &v13;
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    v6 = IMOSLoggingEnabled();
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = 0;
        v8 = "multi-select: Not updating conversation selection because current configuration does not show selection.";
        v9 = &v14;
        goto LABEL_17;
      }

LABEL_18:

      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)_shouldKeepSelection
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 alwaysShowSelectionInConversationList];

  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(CKConversationListCollectionViewController *)self splitViewController];
    if (v6)
    {
      v7 = [(CKConversationListCollectionViewController *)self splitViewController];
      v5 = [v7 isCollapsed] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (OS_dispatch_queue)tipKitQueue
{
  tipKitQueue = self->_tipKitQueue;
  if (!tipKitQueue)
  {
    v4 = dispatch_queue_create("com.apple.messages.chatkit.tipkit", 0);
    v5 = self->_tipKitQueue;
    self->_tipKitQueue = v4;

    tipKitQueue = self->_tipKitQueue;
  }

  return tipKitQueue;
}

- (void)startTipCellAnimatingIfNecessary
{
  v3 = [(CKConversationListCollectionViewController *)self dataSource];
  v4 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
  v7 = [v3 indexPathForItemIdentifier:v4];

  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v7];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(CKConversationListCollectionViewController *)self isVisible])
  {
    [v6 willDisplayCell];
  }
}

- (void)_updateInsets
{
  if (!self->_willRotate)
  {
    v39 = [MEMORY[0x1E69DCD68] sharedInstance];
    v4 = [v39 isUndocked];
    v5 = [(CKConversationListCollectionViewController *)self collectionView];
    [v5 contentInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(CKConversationListCollectionViewController *)self delegate];
    v13 = [v12 isCollapsed];

    v14 = 0.0;
    if ((v13 & 1) == 0 && (v4 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v16 = [WeakRetained chatController];

      [v16 accessoryViewHeight];
      v14 = -v17;
    }

    v18 = +[CKUIBehavior sharedBehaviors];
    v19 = [v18 conversationListShouldManuallyApplyBottomSafeAreaInsetForIsRecentlyDeletedModal:{-[CKConversationListCollectionViewController isRecentlyDeletedModal](self, "isRecentlyDeletedModal")}];

    if (v19)
    {
      v20 = [(CKConversationListCollectionViewController *)self view];
      [v20 safeAreaInsets];
      v14 = v21;
    }

    [(CKConversationListCollectionViewController *)self bannerHeight];
    v23 = v22;
    v24 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    if ([v24 viewNeedsContentInsetAccommodation])
    {
      v25 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
      v26 = [v25 isSyncViewCurrentlyVisible];

      v27 = v14;
      if (v26)
      {
        v28 = [(CKConversationListCollectionViewController *)self view];
        [v28 bounds];
        v30 = v29;
        v31 = +[CKUIBehavior sharedBehaviors];
        [v31 syncBarFooterHeight];
        v33 = v32;

        v34 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
        [v34 heightForSyncViewForFittingSize:{v30, v33}];
        v36 = v35;

        v27 = v14 + v36;
      }
    }

    else
    {

      v27 = v14;
    }

    v37 = [(CKConversationListCollectionViewController *)self collectionView];
    [v37 setContentInset:{v23, v9, v27, v11}];

    v38 = [(CKConversationListCollectionViewController *)self collectionView];
    [v38 setScrollIndicatorInsets:{v7, v9, v14, v11}];
  }
}

- (void)_updateNavbarLayoutIfNeeded
{
  if (CKIsRunningInMacCatalyst())
  {

    [(CKConversationListCollectionViewController *)self _macosUpdateNavbarLayoutIfNeeded];
  }

  else
  {

    [(CKConversationListCollectionViewController *)self _iosUpdateNavbarLayoutIfNeeded];
  }
}

- (void)_iosUpdateNavbarLayoutIfNeeded
{
  v3 = [(CKConversationListCollectionViewController *)self view];
  v4 = [v3 _shouldReverseLayoutDirection];

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [(CKConversationListCollectionViewController *)self view];
  [v6 layoutMargins];
  [v5 contentInsetsForConversationListSearchBarForLayoutMargins:v4 isRTL:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = [v15 contentRectEdgeForConversationListSearchBarInsetsWithRTL:v4];

  v18 = [(CKConversationListCollectionViewController *)self searchController];
  v17 = [v18 searchBar];
  [v17 _setOverrideContentInsets:v16 forRectEdges:{v8, v10, v12, v14}];
}

- (BOOL)_shouldAllowLargeTitles
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v3 isModernFilteringEnabled])
  {
    v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v5 = [v4 isConversationListRefreshEnabled];

    if (!v5)
    {
LABEL_13:
      v8 = 0;
      return v8 & 1;
    }
  }

  else
  {
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 converastionListAlwaysSupportsLargeTitles];

  if ((v7 & 1) == 0)
  {
    v9 = [(CKConversationListCollectionViewController *)self delegate];
    v10 = [v9 isCollapsed];

    if ((v10 & 1) == 0)
    {
      v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v12 = [v11 isConversationListRefreshEnabled];

      if (v12)
      {
        goto LABEL_13;
      }
    }

    if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
    {
      v13 = [(CKConversationListCollectionViewController *)self activeFilterModes];
      v14 = [v13 count];

      if (v14 <= 1 && ![(CKConversationListCollectionViewController *)self numberOfPinnedConversations]&& ![(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
      {
        v8 = ![(CKConversationListCollectionViewController *)self isShowingPinningOnboarding];
        return v8 & 1;
      }

      goto LABEL_13;
    }

    v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([v16 isModernFilteringEnabled])
    {
      v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v18 = [v17 isConversationListRefreshEnabled];

      v8 = v18 ^ 1;
      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

- (int64_t)numberOfPinnedConversations
{
  v2 = [(CKConversationListCollectionViewController *)self pinnedConversations];
  v3 = [v2 count];

  return v3;
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v3 viewLayoutMarginsDidChange];
  [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v5 viewSafeAreaInsetsDidChange];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 conversationListShouldManuallyApplyBottomSafeAreaInsetForIsRecentlyDeletedModal:{-[CKConversationListCollectionViewController isRecentlyDeletedModal](self, "isRecentlyDeletedModal")}];

  if (v4)
  {
    [(CKConversationListCollectionViewController *)self _updateInsets];
  }
}

- (void)_updateBannerLayoutConstraints
{
  v3 = [(CKConversationListCollectionViewController *)self bannerTopConstraint];
  if (v3)
  {
    v15 = v3;
    v4 = [(CKConversationListCollectionViewController *)self collectionView];
    v5 = [(CKConversationListCollectionViewController *)self navigationItem];
    v6 = [v5 largeTitleDisplayMode];

    [v4 contentOffset];
    v8 = v7;
    [v4 adjustedContentInset];
    v10 = v8 + v9;
    v11 = v10 < 0.0 && v6 == 0;
    v12 = -v10;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }

    [v15 constant];
    if (v13 != v14)
    {
      [v15 setConstant:v13];
    }

    v3 = v15;
  }
}

- (void)_updateScrollEdgeAppearanceProgress
{
  v6 = [(CKConversationListCollectionViewController *)self navigationItem];
  [v6 _manualScrollEdgeAppearanceProgress];
  v4 = v3;
  v5 = [(CKConversationListCollectionViewController *)self presentedBanner];
  [v5 setScrollEdgeAppearanceProgress:v4];
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = sub_190D53470();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D53460();
  v8 = self;
  CKConversationListCollectionViewController.updateContentUnavailableConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v8 viewWillLayoutSubviews];
  if (CKIsRunningInMacCatalyst())
  {
    v3 = [(CKConversationListCollectionViewController *)self view];
    [v3 frame];
    v5 = v4;

    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 minConversationListWidth];
    [(CKConversationListCollectionViewController *)self setIsBelowMacSnapToMinWidth:v5 <= v7];
  }
}

- (void)viewDidLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v19 viewDidLayoutSubviews];
  v3 = [(CKConversationListCollectionViewController *)self cellLayout];
  [v3 tableViewWidth];
  v5 = v4;

  v6 = [(CKConversationListCollectionViewController *)self collectionView];
  [v6 bounds];
  v8 = v7;

  v9 = [(CKConversationListCollectionViewController *)self cellLayout];
  v10 = [v9 shouldShowChevron];
  v11 = [(CKConversationListCollectionViewController *)self _cellsShouldShowChevron];

  if (!self->_isInitialAppearance && (vabdd_f64(v5, v8) >= 0.1 || v10 != v11))
  {
    [(CKConversationListCollectionViewController *)self invalidateCellLayout];
  }

  if (CKIsRunningInMacCatalyst())
  {
    v13 = [(CKConversationListCollectionViewController *)self view];
    [v13 frame];
    v15 = v14;

    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 minConversationListWidth];
    [(CKConversationListCollectionViewController *)self setIsBelowMacSnapToMinWidth:v15 <= v17];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CKConversationListCollectionViewController_viewDidLayoutSubviews__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (viewDidLayoutSubviews_showConversationIfNecessaryToken != -1)
  {
    dispatch_once(&viewDidLayoutSubviews_showConversationIfNecessaryToken, block);
  }

  [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
}

void __67__CKConversationListCollectionViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = CKAppExtensionDevelopmentTargetBundle();
  v3 = [v2 length];

  if (v3)
  {
    v4 = [*(a1 + 32) conversationList];
    v7 = [v4 conversations];

    if ([v7 count])
    {
      v5 = [*(a1 + 32) delegate];
      v6 = [v7 firstObject];
      [v5 showConversation:v6 animate:0];
    }
  }
}

- (double)widthForDeterminingAvatarVisibility
{
  v2 = [(CKConversationListCollectionViewController *)self collectionView];
  [v2 bounds];
  v4 = v3;

  return v4;
}

- (void)performResumeDeferredSetup
{
  if ([(CKConversationListCollectionViewController *)self shouldUseFastPreviewText])
  {
    [(CKConversationListCollectionViewController *)self setShouldUseFastPreviewText:0];
    [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:0];
  }

  [(CKConversationListCollectionViewController *)self updateSharedProfileNavigationBarPaletteVisibility];
  [(CKConversationListCollectionViewController *)self updateSyncProgressIfNeeded];
  v3 = [MEMORY[0x1E69A5B00] sharedInstance];
  v4 = [v3 isStewieActive];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E69A5B00] sharedInstance];
    [v5 presentSatelliteConnectionBannerIfNecessaryWithChat:0 withReason:@"AppResume" ignoreTimerLimit:0];
  }

  [(CKConversationListCollectionViewController *)self setCompletedDeferredSetup:1];
}

- (void)focusStateDidChange
{
  [(CKConversationListCollectionViewController *)self setNeedsConversationListUpdateForFocusStateChange];

  [(CKConversationListCollectionViewController *)self updateFocusFilterBannerWithAnimation:1];
}

- (void)setNeedsConversationListUpdateForFocusStateChange
{
  v2 = [(CKConversationListCollectionViewController *)self updater];
  [v2 setNeedsDeferredUpdateWithReason:@"focusStateChanged"];
}

- (void)updateBannerVisualEffectGroup
{
  v3 = [(CKConversationListCollectionViewController *)self navigationController];
  v4 = [v3 navigationBar];
  v6 = [v4 _backdropViewLayerGroupName];

  v5 = [(CKConversationListCollectionViewController *)self presentedBanner];
  [v5 setScrollEdgeAppearanceBackdropGroupName:v6];
}

- (void)setAppIntentsDataSource
{
  v4 = self;
  v2 = [(CKConversationListCollectionViewController *)v4 collectionView];
  if (v2)
  {
    v3 = v2;
    sub_19021DE7C(&qword_1EAD44EF8, &qword_1EAD44EF0);
    swift_unknownObjectRetain();
    sub_190D577C0();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppearDeferredSetup
{
  self->_isInitialAppearance = 0;
  [(CKConversationListCollectionViewController *)self setIsAppearing:0];
  if (CKIsRunningInMessages())
  {
    v3 = [(CKConversationListCollectionViewController *)self traitCollection];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __72__CKConversationListCollectionViewController_viewDidAppearDeferredSetup__block_invoke;
    v26[3] = &unk_1E72EBA18;
    v26[4] = self;
    CKPrewarmPostLaunch(0.75, v3, v26);
  }

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = v4;
  if (!__CurrentTestName)
  {
LABEL_6:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__CKConversationListCollectionViewController_viewDidAppearDeferredSetup__block_invoke_2;
    block[3] = &unk_1E72EBA18;
    v25 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = v25;
    goto LABEL_7;
  }

  v6 = [v4 _launchTestName];
  if ([v5 isRunningTest:v6])
  {
    v7 = [v5 shouldRecordExtendedLaunchTime];

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_7:

LABEL_8:
  v8 = +[CKPreviewDispatchCache genmojiPreviewCache];
  [v8 resume];

  v9 = +[CKPreviewDispatchCache transcriptPreviewCache];
  [v9 resume];

  if (![(CKConversationListCollectionViewController *)self filterModeChangedExecutedDuringDeferredSetup])
  {
    [(CKConversationListCollectionViewController *)self setFilterModeChangedExecutedDuringDeferredSetup:1];
    [(CKConversationListCollectionViewController *)self filterModeChangedCommonActionsWithForcedUpdate:0];
  }

  +[CKConversationListFilterModeUtilities enableSecondaryFilterModes];
  objc_initWeak(&location, self);
  v10 = +[CKDraftManager sharedInstance];
  v11 = objc_loadWeakRetained(&location);
  v12 = [v11 conversationList];
  v13 = [v12 conversations];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __72__CKConversationListCollectionViewController_viewDidAppearDeferredSetup__block_invoke_3;
  v21 = &unk_1E72EC460;
  objc_copyWeak(&v22, &location);
  [v10 preloadAllDraftsInConversations:v13 completion:&v18];

  [(CKConversationListCollectionViewController *)self configureFiltersMenu:v18];
  v14 = objc_alloc(MEMORY[0x1E69A82B0]);
  v15 = MEMORY[0x1E69E96A0];
  v16 = MEMORY[0x1E69E96A0];
  v17 = [v14 initWithObject:self title:@"CKConversationListCollectionView-ViewDidAppear" queue:v15];
  [(CKConversationListCollectionViewController *)self setStateCaptureAssistant:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __72__CKConversationListCollectionViewController_viewDidAppearDeferredSetup__block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [*(a1 + 32) _launchTestName];
  [v3 finishedTest:v2 extraResults:0];
}

void __72__CKConversationListCollectionViewController_viewDidAppearDeferredSetup__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCompletedViewDidAppearDeferredSetup:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 conversationList];
  [v4 updateConversationFilterModes];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 updateFilteringElementsWithReason:@"drafts loaded"];
}

- (void)startEndSuggestedPinsAnimation
{
  objc_initWeak(&location, self);
  v3 = [(CKConversationListCollectionViewController *)self navigationController];
  v4 = [v3 view];
  v5 = [v4 snapshotViewAfterScreenUpdates:0];

  v6 = [(CKConversationListCollectionViewController *)self navigationController];
  v7 = [v6 view];
  [v7 addSubview:v5];

  [(CKConversationListCollectionViewController *)self setIsShowingPinningOnboarding:0];
  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:0 shouldUpdate:0];
  [(CKConversationListCollectionViewController *)self setCanShowSuggestedPinningOnboardingCell:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__CKConversationListCollectionViewController_Onboarding__startEndSuggestedPinsAnimation__block_invoke;
  v9[3] = &unk_1E72EBB98;
  objc_copyWeak(&v11, &location);
  v8 = v5;
  v10 = v8;
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __88__CKConversationListCollectionViewController_Onboarding__startEndSuggestedPinsAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained animateOutBackgroundSnapshotView:*(a1 + 32)];
}

- (void)startCompletePinningOnboardingAnimation
{
  objc_initWeak(&location, self);
  v3 = [(CKConversationListCollectionViewController *)self view];
  v4 = [v3 snapshotViewAfterScreenUpdates:0];

  v5 = [(CKConversationListCollectionViewController *)self view];
  [v5 addSubview:v4];

  [(CKConversationListCollectionViewController *)self animationDistanceForCompletingOnboarding];
  v7 = v6;
  [(CKConversationListCollectionViewController *)self setIsShowingPinningOnboarding:0];
  [(CKConversationListCollectionViewController *)self commitPinnedConversationsForEditingPins];
  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:0 shouldUpdate:0];
  [(CKConversationListCollectionViewController *)self setCanShowSuggestedPinningOnboardingCell:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__CKConversationListCollectionViewController_Onboarding__startCompletePinningOnboardingAnimation__block_invoke;
  v9[3] = &unk_1E72EE170;
  objc_copyWeak(v11, &location);
  v8 = v4;
  v10 = v8;
  v11[1] = v7;
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0 completion:v9];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __97__CKConversationListCollectionViewController_Onboarding__startCompletePinningOnboardingAnimation__block_invoke(uint64_t a1)
{
  v3 = objc_loadWeakRetained((a1 + 40));
  v2 = [v3 collectionView];
  [v3 animateInCollectionView:v2 aboveBackgroundSnapshotView:*(a1 + 32) enteringOnboarding:0 animationDistance:*(a1 + 48)];
}

- (void)startSuggestedPinsAnimation
{
  objc_initWeak(&location, self);
  v3 = [(CKConversationListCollectionViewController *)self delegate];
  v4 = [v3 isCollapsed];

  if ((v4 & 1) == 0)
  {
    v5 = [(CKConversationListCollectionViewController *)self delegate];
    [v5 showConversation:0 animate:0];
  }

  v6 = [(CKConversationListCollectionViewController *)self navigationController];
  v7 = [v6 view];
  [v7 setUserInteractionEnabled:0];

  v8 = [(CKConversationListCollectionViewController *)self navigationController];
  v9 = [v8 view];
  v10 = [v9 snapshotViewAfterScreenUpdates:0];

  v11 = [(CKConversationListCollectionViewController *)self view];
  [v11 addSubview:v10];

  v12 = [(CKConversationListCollectionViewController *)self navigationItem];
  [v12 setSearchController:0];

  [(CKConversationListCollectionViewController *)self setIsShowingPinningOnboarding:1];
  [(CKConversationListCollectionViewController *)self setEditingMode:2 animated:0 shouldUpdate:0];
  [(CKConversationListCollectionViewController *)self setCanShowSuggestedPinningOnboardingCell:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__CKConversationListCollectionViewController_Onboarding__startSuggestedPinsAnimation__block_invoke;
  v14[3] = &unk_1E72EBB98;
  objc_copyWeak(&v16, &location);
  v13 = v10;
  v15 = v13;
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0 completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __85__CKConversationListCollectionViewController_Onboarding__startSuggestedPinsAnimation__block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 collectionView];
  [v2 animateInCollectionView:v3 aboveBackgroundSnapshotView:*(a1 + 32) enteringOnboarding:1 animationDistance:150.0];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__CKConversationListCollectionViewController_Onboarding__startSuggestedPinsAnimation__block_invoke_2;
  v5[3] = &unk_1E72EEDA0;
  objc_copyWeak(&v6, (a1 + 40));
  [WeakRetained pinConversationsWithCompletion:v5];

  objc_destroyWeak(&v6);
}

void __85__CKConversationListCollectionViewController_Onboarding__startSuggestedPinsAnimation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained animateInPinsToFinalPosition];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 removeNewlyPinnedSuggestionCells:v3];
}

- (double)animationDistanceForCompletingOnboarding
{
  v3 = [(CKConversationListCollectionViewController *)self dataSource];
  v4 = [v3 snapshot];
  v5 = [v4 itemIdentifiersInSectionWithIdentifier:&unk_1F04E7AE8];
  v6 = [v5 firstObject];

  v7 = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [v7 indexPathForItemIdentifier:v6];

  v9 = [(CKConversationListCollectionViewController *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 frame];
    MaxY = CGRectGetMaxY(v13);
  }

  else
  {
    MaxY = 150.0;
  }

  return MaxY;
}

- (void)animateInCollectionView:(id)a3 aboveBackgroundSnapshotView:(id)a4 enteringOnboarding:(BOOL)a5 animationDistance:(double)a6
{
  v7 = a5;
  v96[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a3;
  v12 = [v11 layer];
  [v12 position];
  v14 = v13;
  v88 = v13;
  v16 = v15;
  v90 = v15;

  v89 = v16 + a6;
  v17 = [v11 layer];
  [v17 setPosition:{v14, v16 + a6}];

  v18 = [v11 layer];
  [v18 setOpacity:0.0];

  v19 = [(CKConversationListCollectionViewController *)self view];
  [v19 bringSubviewToFront:v11];

  v20 = objc_alloc(MEMORY[0x1E69DD250]);
  [v11 origin];
  v22 = v21;
  [v11 bounds];
  v24 = v23;
  [v11 origin];
  v26 = [v20 initWithFrame:{v22, 0.0, v24, v25}];
  v27 = [v11 backgroundColor];
  [v26 setBackgroundColor:v27];

  v28 = [v26 layer];
  [v28 setOpacity:0.0];

  v29 = [v26 layer];
  [v29 position];
  v87 = v30;
  v32 = v31;

  v86 = v32 - a6;
  v33 = [(CKConversationListCollectionViewController *)self view];
  [v33 insertSubview:v26 belowSubview:v11];

  v91 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v91 setValue:MEMORY[0x1E695E118] forKeyPath:*MEMORY[0x1E6979B78]];
  v34 = objc_alloc_init(MEMORY[0x1E6979310]);
  v35 = [(CKConversationListCollectionViewController *)self view];
  v36 = [v35 layer];
  [v36 bounds];
  [v34 setFrame:?];

  v96[0] = v91;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
  [v34 setFilters:v37];

  v38 = [(CKConversationListCollectionViewController *)self view];
  v39 = [v38 layer];
  v40 = [v26 layer];
  [v39 insertSublayer:v34 below:v40];

  v41 = CACurrentMediaTime();
  [MEMORY[0x1E6979518] begin];
  v42 = MEMORY[0x1E6979518];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __147__CKConversationListCollectionViewController_Onboarding__animateInCollectionView_aboveBackgroundSnapshotView_enteringOnboarding_animationDistance___block_invoke;
  v92[3] = &unk_1E72EB880;
  v93 = v26;
  v94 = v34;
  v95 = v10;
  v85 = v10;
  v43 = v34;
  v44 = v26;
  [v42 setCompletionBlock:v92];
  v45 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"backgroundColor"];
  [v45 setBeginTime:v41];
  v46 = [v11 backgroundColor];
  v47 = [v46 colorWithAlphaComponent:0.0];
  [v45 setFromValue:{objc_msgSend(v47, "CGColor")}];

  v48 = [v11 backgroundColor];
  v49 = [v48 colorWithAlphaComponent:1.0];
  [v45 setToValue:{objc_msgSend(v49, "CGColor")}];

  if (v7)
  {
    v50 = 1.255;
  }

  else
  {
    v50 = 0.8;
  }

  if (v7)
  {
    v51 = 14.7146;
  }

  else
  {
    v51 = 50.0;
  }

  if (v7)
  {
    v52 = 54.1299;
  }

  else
  {
    v52 = 300.0;
  }

  if (v7)
  {
    v53 = 0.02;
  }

  else
  {
    v53 = 0.0;
  }

  if (v7)
  {
    v54 = 78.8239;
  }

  else
  {
    v54 = 309.319;
  }

  if (v7)
  {
    v55 = 17.7566;
  }

  else
  {
    v55 = 35.1749;
  }

  if (v7)
  {
    v56 = 1.04;
  }

  else
  {
    v56 = 0.525;
  }

  v57 = 16.788;
  if (v7)
  {
    v57 = 15.3252;
  }

  v83 = v57;
  v58 = 70.4594;
  if (v7)
  {
    v58 = 58.7152;
  }

  v82 = v58;
  v59 = 1.1;
  if (v7)
  {
    v59 = 1.205;
  }

  v84 = v59;
  [v45 setDuration:v50];
  [v45 setMass:1.0];
  [v45 setDamping:v51];
  [v45 setStiffness:v52];
  v60 = *MEMORY[0x1E69797D8];
  [v45 setFillMode:*MEMORY[0x1E69797D8]];
  [v43 addAnimation:v45 forKey:@"backgroundColor"];
  v61 = [v11 backgroundColor];
  [v43 setBackgroundColor:{objc_msgSend(v61, "CGColor")}];

  v62 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v62 setBeginTime:v41];
  [v62 setFromValue:&unk_1F04E7B00];
  [v62 setToValue:&unk_1F04E7B18];
  [v62 setDuration:v50];
  [v62 setMass:1.0];
  [v62 setDamping:v51];
  [v62 setStiffness:v52];
  [v62 setFillMode:v60];
  [v43 addAnimation:v62 forKey:@"filters.gaussianBlur.inputRadius"];
  [v43 setValue:&unk_1F04E7B18 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  v63 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  [v63 setBeginTime:v53 + v41];
  [v63 setStiffness:v54];
  [v63 setDamping:v55];
  [v63 setFromValue:&unk_1F04E8788];
  [v63 setToValue:&unk_1F04E8798];
  [v63 setDuration:v56];
  [v63 setFillMode:v60];
  v64 = [v11 layer];
  [v64 addAnimation:v63 forKey:@"opacity"];

  v65 = [v44 layer];
  [v65 addAnimation:v63 forKey:@"opacity"];

  v66 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
  [v66 setBeginTime:v41];
  [v66 setDamping:v83];
  [v66 setStiffness:v82];
  [v66 setFillMode:v60];
  v67 = [MEMORY[0x1E696B098] valueWithCGPoint:{v88, v89}];
  [v66 setFromValue:v67];

  v68 = [MEMORY[0x1E696B098] valueWithCGPoint:{v88, v90}];
  [v66 setToValue:v68];

  [v66 setDuration:v84];
  v69 = [v11 layer];
  [v69 addAnimation:v66 forKey:@"position"];

  v70 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
  [v70 setBeginTime:v41];
  [v70 setDamping:v83];
  [v70 setStiffness:v82];
  [v70 setFillMode:v60];
  v71 = MEMORY[0x1E696B098];
  [v44 position];
  v72 = [v71 valueWithCGPoint:?];
  [v70 setFromValue:v72];

  v73 = [MEMORY[0x1E696B098] valueWithCGPoint:{v87, v86}];
  [v70 setToValue:v73];

  [v70 setDuration:v84];
  v74 = [v44 layer];
  [v74 addAnimation:v70 forKey:@"position"];

  [MEMORY[0x1E6979518] commit];
  v75 = [v11 layer];
  [v75 setPosition:{v88, v90}];

  v76 = [v11 layer];

  LODWORD(v77) = 1.0;
  [v76 setOpacity:v77];

  v78 = [v44 layer];
  LODWORD(v79) = 1.0;
  [v78 setOpacity:v79];

  v80 = [v44 layer];
  [v80 setPosition:{v87, v86}];

  LODWORD(v81) = 1.0;
  [v43 setOpacity:v81];
}

uint64_t __147__CKConversationListCollectionViewController_Onboarding__animateInCollectionView_aboveBackgroundSnapshotView_enteringOnboarding_animationDistance___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperlayer];
  v2 = *(a1 + 48);

  return [v2 removeFromSuperview];
}

- (void)animateOutBackgroundSnapshotView:(id)a3
{
  v56[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 layer];
  [v5 position];
  v7 = v6;
  v9 = v8;

  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  [v4 origin];
  v12 = v11;
  [v4 bounds];
  v13 = [v10 initWithFrame:{v12, -150.0}];
  v14 = [(CKConversationListCollectionViewController *)self collectionView];
  v15 = [v14 backgroundColor];
  [v13 setBackgroundColor:v15];

  v16 = [v13 layer];
  LODWORD(v17) = 1.0;
  [v16 setOpacity:v17];

  v18 = [v13 layer];
  [v18 position];
  v20 = v19;
  v22 = v21;

  v23 = v22 + 150.0;
  v24 = [(CKConversationListCollectionViewController *)self navigationController];
  v25 = [v24 view];
  [v25 insertSubview:v13 belowSubview:v4];

  v52 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v52 setValue:MEMORY[0x1E695E118] forKeyPath:*MEMORY[0x1E6979B78]];
  v26 = objc_alloc_init(MEMORY[0x1E6979310]);
  v27 = [v4 layer];
  [v27 bounds];
  [v26 setFrame:?];

  v56[0] = v52;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
  [v26 setFilters:v28];

  v29 = [v4 layer];
  [v29 addSublayer:v26];

  v30 = CACurrentMediaTime();
  [MEMORY[0x1E6979518] begin];
  v31 = MEMORY[0x1E6979518];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __91__CKConversationListCollectionViewController_Onboarding__animateOutBackgroundSnapshotView___block_invoke;
  v53[3] = &unk_1E72EB8D0;
  v54 = v26;
  v55 = v4;
  v32 = v4;
  v33 = v26;
  [v31 setCompletionBlock:v53];
  v34 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v34 setBeginTime:v30];
  [v34 setFromValue:&unk_1F04E7B00];
  [v34 setToValue:&unk_1F04E7B18];
  [v34 setDuration:0.8];
  [v34 setMass:1.0];
  [v34 setDamping:50.0];
  [v34 setStiffness:300.0];
  v35 = *MEMORY[0x1E69797D8];
  [v34 setFillMode:*MEMORY[0x1E69797D8]];
  [v33 addAnimation:v34 forKey:@"filters.gaussianBlur.inputRadius"];
  [v33 setValue:&unk_1F04E7B18 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  v36 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  [v36 setBeginTime:v30];
  [v36 setStiffness:309.319];
  [v36 setDamping:35.1749];
  [v36 setFromValue:&unk_1F04E8798];
  [v36 setToValue:&unk_1F04E8788];
  [v36 setDuration:0.525];
  [v36 setFillMode:v35];
  v37 = [v32 layer];
  [v37 addAnimation:v36 forKey:@"opacity"];

  v38 = [v13 layer];
  [v38 addAnimation:v36 forKey:@"opacity"];

  v39 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
  [v39 setBeginTime:v30];
  [v39 setDamping:16.788];
  [v39 setStiffness:70.4594];
  [v39 setFillMode:v35];
  v40 = [MEMORY[0x1E696B098] valueWithCGPoint:{v7, v9}];
  [v39 setFromValue:v40];

  v41 = [MEMORY[0x1E696B098] valueWithCGPoint:{v7, v9 + 150.0}];
  [v39 setToValue:v41];

  [v39 setDuration:1.1];
  v42 = [v32 layer];
  [v42 addAnimation:v39 forKey:@"position"];

  v43 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
  [v43 setBeginTime:v30];
  [v43 setDamping:16.788];
  [v43 setStiffness:70.4594];
  [v43 setFillMode:v35];
  v44 = MEMORY[0x1E696B098];
  [v13 position];
  v45 = [v44 valueWithCGPoint:?];
  [v43 setFromValue:v45];

  v46 = [MEMORY[0x1E696B098] valueWithCGPoint:{v20, v23}];
  [v43 setToValue:v46];

  [v43 setDuration:1.1];
  v47 = [v13 layer];
  [v47 addAnimation:v43 forKey:@"position"];

  [MEMORY[0x1E6979518] commit];
  v48 = [v32 layer];
  [v48 setPosition:{v7, v9 + 150.0}];

  v49 = [v32 layer];
  [v49 setOpacity:0.0];

  v50 = [v13 layer];
  [v50 setOpacity:0.0];

  v51 = [v13 layer];
  [v51 setPosition:{v20, v23}];
}

uint64_t __91__CKConversationListCollectionViewController_Onboarding__animateOutBackgroundSnapshotView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperlayer];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)pinConversationsWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
  v6 = [v5 count];

  if (v6 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
  v9 = [v8 subarrayWithRange:{0, v7}];

  [(CKConversationListCollectionViewController *)self setHoldPinningUpdatesForOnboardingAnimation:1];
  [(CKConversationListCollectionViewController *)self setHidePinsForAnimation:1];
  [(CKConversationListCollectionViewController *)self setIsCurrentlyAnimatingPinningOnboardingSuggestions:1];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    v14 = *MEMORY[0x1E69A5A28];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(CKConversationListCollectionViewController *)self togglePinStateForConversation:*(*(&v21 + 1) + 8 * i) withReason:v14];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__CKConversationListCollectionViewController_Onboarding__pinConversationsWithCompletion___block_invoke;
  v18[3] = &unk_1E72EE5D8;
  v19 = v10;
  v20 = v4;
  v16 = v10;
  v17 = v4;
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0 completion:v18];
}

- (BOOL)shouldAnimatePositionForRecommendedItemIdentifiers:(id)a3 pinnedItemIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __131__CKConversationListCollectionViewController_Onboarding__shouldAnimatePositionForRecommendedItemIdentifiers_pinnedItemIdentifiers___block_invoke;
  v10[3] = &unk_1E72EFE38;
  v8 = v6;
  v11 = v8;
  v12 = self;
  v13 = &v14;
  [v7 enumerateObjectsUsingBlock:v10];
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __131__CKConversationListCollectionViewController_Onboarding__shouldAnimatePositionForRecommendedItemIdentifiers_pinnedItemIdentifiers___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) count] <= a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }

  else
  {
    v7 = [*(a1 + 40) dataSource];
    v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v16 = [v7 indexPathForItemIdentifier:v8];

    v9 = [*(a1 + 40) collectionView];
    v10 = [v9 cellForItemAtIndexPath:v16];

    v11 = [*(a1 + 40) collectionView];
    v12 = [v11 indexPathsForVisibleItems];
    v13 = [v12 containsObject:v16];

    if (!v13 || !v10 || ([v10 avatarView], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isHidden"), v14, v15))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

- (void)animateInPinsToFinalPosition
{
  v3 = [(CKConversationListCollectionViewController *)self dataSource];
  v4 = [v3 snapshot];
  v5 = [v4 itemIdentifiersInSectionWithIdentifier:&unk_1F04E7B30];

  v6 = [(CKConversationListCollectionViewController *)self dataSource];
  v7 = [v6 snapshot];
  v8 = [v7 itemIdentifiersInSectionWithIdentifier:&unk_1F04E7B48];

  LOBYTE(v7) = [(CKConversationListCollectionViewController *)self shouldAnimatePositionForRecommendedItemIdentifiers:v8 pinnedItemIdentifiers:v5];
  v9 = CACurrentMediaTime();
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CKConversationListCollectionViewController_Onboarding__animateInPinsToFinalPosition__block_invoke;
  v12[3] = &unk_1E72EFE88;
  v10 = v8;
  v13 = v10;
  v14 = self;
  v17 = v7;
  v16[1] = *&v9;
  v11 = v5;
  v15 = v11;
  objc_copyWeak(v16, &location);
  [v11 enumerateObjectsUsingBlock:v12];
  objc_destroyWeak(v16);

  objc_destroyWeak(&location);
}

void __86__CKConversationListCollectionViewController_Onboarding__animateInPinsToFinalPosition__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] > a3)
  {
    v6 = [*(a1 + 40) dataSource];
    v7 = [v6 indexPathForItemIdentifier:v5];

    v8 = [*(a1 + 40) collectionView];
    v9 = [v8 cellForItemAtIndexPath:v7];

    v10 = [v9 contentView];
    [v10 setAlpha:1.0];

    v11 = [*(a1 + 40) collectionView];
    [v11 bringSubviewToFront:v9];

    v12 = [*(a1 + 40) dataSource];
    v13 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v14 = [v12 indexPathForItemIdentifier:v13];

    v15 = [*(a1 + 40) collectionView];
    v16 = [v15 cellForItemAtIndexPath:v14];

    v163 = v16;
    if (*(a1 + 72) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = [v16 avatarView];
      [v17 setHidden:1];

      v18 = [v16 avatarView];
      [v18 frame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [*(a1 + 40) collectionView];
      [v16 convertRect:v27 toView:{v20, v22, v24, v26}];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
    }

    else
    {
      v18 = [v9 pinnedConversationView];
      v27 = [v18 avatarView];
      [v27 frame];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = [*(a1 + 40) collectionView];
      [v9 convertRect:v44 toView:{v37, v39, v41, v43}];
      v29 = v45;
      v31 = v46;
      v33 = v47;
      v35 = v48;
    }

    [v9 frame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v173.origin.x = v29;
    v173.origin.y = v31;
    v173.size.width = v33;
    v173.size.height = v35;
    MidX = CGRectGetMidX(v173);
    v174.origin.x = v29;
    v174.origin.y = v31;
    v174.size.width = v33;
    v174.size.height = v35;
    MidY = CGRectGetMidY(v174);
    v175.origin.x = v50;
    v175.origin.y = v52;
    v175.size.width = v54;
    v175.size.height = v56;
    v58 = CGRectGetMidX(v175);
    v176.origin.x = v50;
    v176.origin.y = v52;
    v176.size.width = v54;
    v176.size.height = v56;
    v59 = CGRectGetMidY(v176);
    v60 = [v9 pinnedConversationView];
    v61 = [v60 avatarView];
    [v61 bounds];
    v63 = v35 / v62;

    memset(&v172, 0, sizeof(v172));
    v64 = [v9 layer];
    v65 = v64;
    if (v64)
    {
      [v64 transform];
    }

    else
    {
      memset(&v171, 0, sizeof(v171));
    }

    CATransform3DScale(&v172, &v171, v63, v63, 1.0);

    [v9 frame];
    v67 = v66;
    v68 = [v9 pinnedConversationView];
    v69 = [v68 avatarView];
    [v69 frame];
    v71 = v70;

    v72 = *(a1 + 64);
    [MEMORY[0x1E6979518] begin];
    v73 = MEMORY[0x1E6979518];
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __86__CKConversationListCollectionViewController_Onboarding__animateInPinsToFinalPosition__block_invoke_2;
    v168[3] = &unk_1E72EFE60;
    v170[1] = a3;
    v169 = *(a1 + 48);
    objc_copyWeak(v170, (a1 + 56));
    [v73 setCompletionBlock:v168];
    v74 = [v9 unpinAccessoryView];
    v75 = [v74 layer];
    [v75 opacity];
    v77 = v76;

    v78 = [v9 pinnedConversationView];
    v79 = [v78 titleLabel];
    v80 = [v79 layer];
    [v80 opacity];
    v164 = v81;

    v82 = [v9 pinnedConversationView];
    v83 = [v82 unreadIndicator];
    v84 = [v83 layer];
    [v84 opacity];
    v162 = v85;

    v86 = [v9 pinnedConversationView];
    v87 = [v86 radiantShadowImageView];
    v88 = [v87 layer];
    [v88 opacity];
    v161 = v89;

    v90 = [v9 layer];
    v91 = MidY + v63 * (v67 * 0.5 - v71 * 0.5) * 0.5;
    [v90 setPosition:{MidX, v91}];

    v167 = v172;
    v92 = [v9 layer];
    v171 = v167;
    [v92 setTransform:&v171];

    v93 = [v9 unpinAccessoryView];
    v94 = [v93 layer];
    [v94 setOpacity:0.0];

    v95 = [v9 pinnedConversationView];
    v96 = [v95 titleLabel];
    v97 = [v96 layer];
    [v97 setOpacity:0.0];

    v98 = [v9 pinnedConversationView];
    v99 = [v98 unreadIndicator];
    v100 = [v99 layer];
    [v100 setOpacity:0.0];

    v101 = [v9 pinnedConversationView];
    v102 = [v101 radiantShadowImageView];
    v103 = [v102 layer];
    [v103 setOpacity:0.0];

    v104 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
    [v104 setMass:2.0];
    [v104 setStiffness:300.0];
    [v104 setDamping:50.0];
    v105 = v72 + 0.49 + a3 * 0.1;
    [v104 setBeginTime:v105];
    v171 = v172;
    v106 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v171];
    [v104 setFromValue:v106];

    v159 = *(MEMORY[0x1E69792E8] + 80);
    v160 = *(MEMORY[0x1E69792E8] + 64);
    *&v171.m31 = v160;
    *&v171.m33 = v159;
    v157 = *(MEMORY[0x1E69792E8] + 112);
    v158 = *(MEMORY[0x1E69792E8] + 96);
    *&v171.m41 = v158;
    *&v171.m43 = v157;
    v155 = *(MEMORY[0x1E69792E8] + 16);
    v156 = *MEMORY[0x1E69792E8];
    *&v171.m11 = *MEMORY[0x1E69792E8];
    *&v171.m13 = v155;
    v153 = *(MEMORY[0x1E69792E8] + 48);
    v154 = *(MEMORY[0x1E69792E8] + 32);
    *&v171.m21 = v154;
    *&v171.m23 = v153;
    v107 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v171];
    [v104 setToValue:v107];

    v108 = *MEMORY[0x1E69797D8];
    [v104 setFillMode:*MEMORY[0x1E69797D8]];
    [v104 setDuration:0.8];
    v109 = [v9 layer];
    [v109 addAnimation:v104 forKey:@"transform"];

    v110 = [v9 unpinAccessoryView];
    v111 = [v110 layer];
    [v111 addAnimation:v104 forKey:@"transform"];

    if (*(a1 + 72) == 1)
    {
      v112 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.x"];
      [v112 setMass:1.0];
      [v112 setStiffness:63.633];
      [v112 setDamping:15.9541];
      [v112 setBeginTime:v105];
      [v112 setDuration:1.1575];
      v113 = [MEMORY[0x1E696AD98] numberWithDouble:MidX];
      [v112 setFromValue:v113];

      v114 = [MEMORY[0x1E696AD98] numberWithDouble:v58];
      [v112 setToValue:v114];

      [v112 setFillMode:v108];
      v115 = [v9 layer];
      [v115 addAnimation:v112 forKey:@"position.x"];
      v166 = v7;

      v116 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.y"];
      [v116 setMass:1.0];
      [v116 setStiffness:41.8381];
      [v116 setDamping:12.9365];
      [v116 setBeginTime:v105 + 0.1];
      [v116 setDuration:1.4275];
      v117 = [MEMORY[0x1E696AD98] numberWithDouble:v91];
      [v116 setFromValue:v117];

      v118 = [MEMORY[0x1E696AD98] numberWithDouble:v59];
      [v116 setToValue:v118];

      [v116 setFillMode:v108];
      v119 = [v9 layer];
      [v119 addAnimation:v116 forKey:@"position.y"];

      v120 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
      [v120 setMass:2.0];
      [v120 setStiffness:300.0];
      [v120 setDamping:50.0];
      [v120 setBeginTime:v105];
      v121 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
      [v120 setFromValue:v121];

      [v120 setDuration:0.8];
      [v120 setFillMode:v108];
      v122 = [v9 unpinAccessoryView];
      v123 = [v122 layer];
      [v123 addAnimation:v120 forKey:@"opacity"];

      v124 = [v9 pinnedConversationView];
      v125 = [v124 titleLabel];
      v126 = [v125 layer];
      [v126 addAnimation:v120 forKey:@"opacity"];

      v127 = [v9 pinnedConversationView];
      v128 = [v127 unreadIndicator];
      v129 = [v128 layer];
      [v129 addAnimation:v120 forKey:@"opacity"];

      v130 = [v9 pinnedConversationView];
      v131 = [v130 radiantShadowImageView];
      v132 = [v131 layer];
      [v132 addAnimation:v120 forKey:@"opacity"];

      v7 = v166;
    }

    else
    {
      v112 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
      [v112 setMass:2.0];
      [v112 setStiffness:300.0];
      [v112 setDamping:50.0];
      [v112 setBeginTime:v105];
      v133 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
      [v112 setFromValue:v133];

      LODWORD(v134) = 1.0;
      v135 = [MEMORY[0x1E696AD98] numberWithFloat:v134];
      [v112 setToValue:v135];

      [v112 setFillMode:v108];
      [v112 setDuration:1.5];
      v116 = [v9 layer];
      [v116 addAnimation:v112 forKey:@"opacity"];
    }

    v136 = [v9 layer];
    [v136 setPosition:{v58, v59}];

    v137 = [v9 layer];
    *&v171.m31 = v160;
    *&v171.m33 = v159;
    *&v171.m41 = v158;
    *&v171.m43 = v157;
    *&v171.m11 = v156;
    *&v171.m13 = v155;
    *&v171.m21 = v154;
    *&v171.m23 = v153;
    [v137 setTransform:&v171];

    v138 = [v9 unpinAccessoryView];
    v139 = [v138 layer];
    LODWORD(v140) = v77;
    [v139 setOpacity:v140];

    v141 = [v9 pinnedConversationView];
    v142 = [v141 titleLabel];
    v143 = [v142 layer];
    LODWORD(v144) = v164;
    [v143 setOpacity:v144];

    v145 = [v9 pinnedConversationView];
    v146 = [v145 unreadIndicator];
    v147 = [v146 layer];
    LODWORD(v148) = v162;
    [v147 setOpacity:v148];

    v149 = [v9 pinnedConversationView];
    v150 = [v149 radiantShadowImageView];
    v151 = [v150 layer];
    LODWORD(v152) = v161;
    [v151 setOpacity:v152];

    [MEMORY[0x1E6979518] commit];
    objc_destroyWeak(v170);
  }
}

void __86__CKConversationListCollectionViewController_Onboarding__animateInPinsToFinalPosition__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == [*(a1 + 32) count] - 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained completeAnimation];
  }
}

- (void)removeNewlyPinnedSuggestionCells:(id)a3
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 800000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91__CKConversationListCollectionViewController_Onboarding__removeNewlyPinnedSuggestionCells___block_invoke;
  v4[3] = &unk_1E72EC460;
  objc_copyWeak(&v5, &location);
  dispatch_after(v3, MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __91__CKConversationListCollectionViewController_Onboarding__removeNewlyPinnedSuggestionCells___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsCurrentlyAnimatingPinningOnboardingSuggestions:0];

  v3 = MEMORY[0x1E69DD250];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91__CKConversationListCollectionViewController_Onboarding__removeNewlyPinnedSuggestionCells___block_invoke_2;
  v4[3] = &unk_1E72EC460;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 _animateUsingSpringWithDuration:0 delay:v4 options:0 mass:0.9775 stiffness:0.0 damping:1.0 initialVelocity:89.2259 animations:18.8919 completion:0.0];
  objc_destroyWeak(&v5);
}

void __91__CKConversationListCollectionViewController_Onboarding__removeNewlyPinnedSuggestionCells___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSnapshotAnimatingDifferences:1];
}

- (void)completeAnimation
{
  [(CKConversationListCollectionViewController *)self setHoldPinningUpdatesForOnboardingAnimation:0];
  [(CKConversationListCollectionViewController *)self setHidePinsForAnimation:0];
  v4 = [(CKConversationListCollectionViewController *)self navigationController];
  v3 = [v4 view];
  [v3 setUserInteractionEnabled:1];
}

- (void)removeBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CKConversationListCollectionViewController *)self bannerHeight];
  v8 = v7;
  v9 = [(CKConversationListCollectionViewController *)self bannerTopConstraint];
  if (v4)
  {
    v10 = [(CKConversationListCollectionViewController *)self view];
    [v10 layoutIfNeeded];
    v11 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__CKConversationListCollectionViewController_Banners__removeBanner_animated___block_invoke;
    v17[3] = &unk_1E72F0338;
    v18 = v6;
    v22 = v8;
    v19 = v9;
    v20 = v10;
    v21 = self;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__CKConversationListCollectionViewController_Banners__removeBanner_animated___block_invoke_2;
    v13[3] = &unk_1E72F0360;
    v14 = v18;
    v15 = v19;
    v16 = self;
    v12 = v10;
    [v11 animateWithDuration:v17 animations:v13 completion:0.3];
  }

  else
  {
    [v6 removeConstraint:v9];
    [(CKConversationListCollectionViewController *)self setBannerTopConstraint:0];
    [(CKConversationListCollectionViewController *)self setBannerHeight:0.0];
    [(CKConversationListCollectionViewController *)self setPresentedBanner:0];
    [v6 removeFromSuperview];
    [(CKConversationListCollectionViewController *)self _updateCollectionViewOffsetRemovingBannerViewHeight:v8];
  }
}

uint64_t __77__CKConversationListCollectionViewController_Banners__removeBanner_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) setConstant:-*(a1 + 64)];
  [*(a1 + 32) setNeedsUpdateConstraints];
  [*(a1 + 48) layoutIfNeeded];
  [*(a1 + 56) setBannerHeight:0.0];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);

  return [v2 _updateCollectionViewOffsetRemovingBannerViewHeight:v3];
}

uint64_t __77__CKConversationListCollectionViewController_Banners__removeBanner_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeConstraint:*(a1 + 40)];
  [*(a1 + 48) setBannerTopConstraint:0];
  [*(a1 + 48) setPresentedBanner:0];
  v2 = *(a1 + 32);

  return [v2 removeFromSuperview];
}

- (void)addBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKConversationListCollectionViewController *)self presentedBanner];

  if (v7)
  {
    v8 = [(CKConversationListCollectionViewController *)self presentedBanner];
    [(CKConversationListCollectionViewController *)self removeBanner:v8 animated:0];
  }

  v9 = [v6 superview];

  if (v9)
  {
    [(CKConversationListCollectionViewController *)self removeBanner:v6 animated:0];
  }

  v10 = [(CKConversationListCollectionViewController *)self view];
  if (v10)
  {
    [(CKConversationListCollectionViewController *)self setPresentedBanner:v6];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v10 bounds];
    v12 = v11;
    LODWORD(v11) = 1148846080;
    LODWORD(v13) = 1112014848;
    [v6 systemLayoutSizeFittingSize:v12 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v11, v13}];
    v15 = v14;
    [(CKConversationListCollectionViewController *)self setBannerHeight:v14];
    v16 = [v6 heightAnchor];
    [(CKConversationListCollectionViewController *)self bannerHeight];
    v17 = [v16 constraintEqualToConstant:?];
    [v17 setActive:1];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 addSubview:v6];
    v18 = [v6 leadingAnchor];
    v19 = [v10 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [v6 trailingAnchor];
    v22 = [v10 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    [(CKConversationListCollectionViewController *)self updateBannerVisualEffectGroup];
    [(CKConversationListCollectionViewController *)self _updateScrollEdgeAppearanceProgress];
    v24 = [v6 topAnchor];
    v25 = [v10 safeAreaLayoutGuide];
    v26 = [v25 topAnchor];
    if (v4)
    {
      v27 = [v24 constraintEqualToAnchor:v26 constant:-v15];
      [(CKConversationListCollectionViewController *)self setBannerTopConstraint:v27];

      v28 = [(CKConversationListCollectionViewController *)self bannerTopConstraint];
      [v28 setActive:1];

      [v6 setAlpha:0.0];
      [v10 layoutIfNeeded];
      v29 = MEMORY[0x1E69DD250];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __74__CKConversationListCollectionViewController_Banners__addBanner_animated___block_invoke;
      v33[3] = &unk_1E72F0388;
      v34 = v6;
      v35 = self;
      v36 = v10;
      v37 = v15;
      [v29 animateWithDuration:v33 animations:0.3];
    }

    else
    {
      v31 = [v24 constraintEqualToAnchor:v26 constant:0.0];
      [(CKConversationListCollectionViewController *)self setBannerTopConstraint:v31];

      v32 = [(CKConversationListCollectionViewController *)self bannerTopConstraint];
      [v32 setActive:1];

      [(CKConversationListCollectionViewController *)self _updateCollectionViewOffsetAddingBannerViewHeight:v15];
    }
  }

  else
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListCollectionViewController(Banners) addBanner:v6 animated:v30];
    }
  }
}

uint64_t __74__CKConversationListCollectionViewController_Banners__addBanner_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 40) bannerTopConstraint];
  [v2 setConstant:0.0];

  [*(a1 + 32) setNeedsUpdateConstraints];
  [*(a1 + 48) layoutIfNeeded];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);

  return [v3 _updateCollectionViewOffsetAddingBannerViewHeight:v4];
}

- (void)updateBannerConstraintsForScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self collectionView];

  if (v5 == v4)
  {
    [(CKConversationListCollectionViewController *)self _updateBannerLayoutConstraints];

    [(CKConversationListCollectionViewController *)self _updateScrollEdgeAppearanceProgress];
  }
}

- (id)initForOscarModal
{
  v2 = [(CKConversationListCollectionViewController *)self init];
  v3 = v2;
  if (v2)
  {
    [(CKConversationListCollectionViewController *)v2 setOscarModal:1];
    [(CKConversationListCollectionViewController *)v3 setFilterMode:9];
  }

  return v3;
}

- (void)oscarViewWillAppear:(BOOL)a3
{
  if ([(CKConversationListCollectionViewController *)self isOscarModal])
  {
    v4 = [(CKConversationListCollectionViewController *)self navigationItem];
    [v4 setLargeTitleDisplayMode:2];
  }

  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 collectionViewLayout];
  [v6 invalidateLayout];

  [(CKConversationListCollectionViewController *)self configureForOscarFilter];
  v7 = [MEMORY[0x1E69A82F0] sharedInstance];
  [v7 sendJunkInboxOpenedEvent];

  v8 = [MEMORY[0x1E69A8168] sharedInstance];
  [v8 trackiMessageJunkEvent:3];
}

- (id)toolbarItemsForJunkFilterHasConversations:(BOOL)a3 hasSelectedConversations:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v12[3] = *MEMORY[0x1E69E9840];
  v7 = [(CKConversationListCollectionViewController *)self toggleReadButtonItem];
  [v7 setEnabled:v5];
  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v9 = [(CKConversationListCollectionViewController *)self _permanentDeleteButtonToUseForSelectedJunkConversations:v4];
  [v9 setEnabled:v5];
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  return v10;
}

- (void)configureForOscarFilter
{
  if (!CKIsRunningInMacCatalyst())
  {
    v3 = [(CKConversationListCollectionViewController *)self navigationItem];
    [v3 setSearchController:0];
  }

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:0];
  [(CKConversationListCollectionViewController *)self _updateForCurrentEditingStateAnimated:0];
  v4 = +[CKConversationList sharedConversationList];
  v6 = [v4 conversationsForFilterMode:9];

  v5 = +[CKConversationList sharedConversationList];
  [v5 updateEarliestMessageDateForConversations:v6];

  [(CKConversationListCollectionViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
}

- (id)showOscarModalAction
{
  v3 = MEMORY[0x1E69DC628];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SHOW_OSCAR" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.bin"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CKConversationListCollectionViewController_Oscar__showOscarModalAction__block_invoke;
  v9[3] = &unk_1E72EC060;
  v9[4] = self;
  v7 = [v3 actionWithTitle:v5 image:v6 identifier:0 handler:v9];

  return v7;
}

- (void)_showOscarModalActionTapped
{
  v3 = [[CKMessagesController alloc] initAsOscarModal];
  [v3 setModalPresentationStyle:2];
  [v3 setPreferredDisplayMode:1];
  [(CKConversationListCollectionViewController *)self presentViewController:v3 animated:1 completion:&__block_literal_global_78];
}

void __80__CKConversationListCollectionViewController_Oscar___showOscarModalActionTapped__block_invoke()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Presented modal navigation controller", v1, 2u);
    }
  }
}

- (id)_permanentDeleteButtonToUseForSelectedJunkConversations:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CKConversationListCollectionViewController *)self permanentDeleteSelectedJunkButtonItem];

    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__permanentDeleteSelectedJunkButtonTapped_];
      [v5 accessibilitySetIdentification:@"deleteSelectedJunkButton"];
      [(CKConversationListCollectionViewController *)self setPermanentDeleteSelectedJunkButtonItem:v5];
    }

    v6 = [(CKConversationListCollectionViewController *)self permanentDeleteSelectedJunkButtonItem];
  }

  else
  {
    v7 = [(CKConversationListCollectionViewController *)self permanentDeleteAllJunkButtonItem];

    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__permanentDeleteAllJunkButtonTapped_];
      [v8 accessibilitySetIdentification:@"deleteAllJunkButton"];
      [(CKConversationListCollectionViewController *)self setPermanentDeleteAllJunkButtonItem:v8];
    }

    v6 = [(CKConversationListCollectionViewController *)self permanentDeleteAllJunkButtonItem];
  }

  return v6;
}

- (void)_permanentDeleteSelectedJunkButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self selectedConversations];
  [(CKConversationListCollectionViewController *)self toolbarPresentPermanentDeletionConfirmationsForSpamConversations:v5 sender:v4];
}

- (void)_permanentDeleteAllJunkButtonTapped:(id)a3
{
  v4 = a3;
  v5 = +[CKConversationList sharedConversationList];
  v6 = [v5 conversationsForFilterMode:9];

  [(CKConversationListCollectionViewController *)self toolbarPresentPermanentDeletionConfirmationsForSpamConversations:v6 sender:v4];
}

- (void)permanentSpamDeletionConfirmed:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self delegate];
  v6 = [v5 isCollapsed];

  if ((v6 & 1) == 0)
  {
    v7 = [(CKConversationListCollectionViewController *)self collectionView];
    [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:v7 animated:1];
  }

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
  v8 = +[CKConversationList sharedConversationList];
  [v8 deleteConversations:v4];

  [(CKConversationListCollectionViewController *)self leaveJunkFilterIfNeeded];
}

- (void)leaveJunkFilterIfNeeded
{
  v3 = [(CKConversationListCollectionViewController *)self filterMode];
  v4 = IMOSLoggingEnabled();
  if (v3 == 9)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Checking if we need to leave the junk inbox", buf, 2u);
      }
    }

    [(CKConversationListCollectionViewController *)self _updateCollectionViewImmediatelyIfNeeded];
    v6 = [(CKConversationListCollectionViewController *)self dataSource];
    v7 = [v6 snapshot];

    if ([v7 numberOfItemsInSection:&unk_1F04E7B78] <= 0)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Junk filtering | Leaving junk filter because no items left in activeConversationSection", v12, 2u);
        }
      }

      v9 = [(CKConversationListCollectionViewController *)self isOscarModal];
      v10 = &selRef__dismissPresentedNavController_;
      if (!v9)
      {
        v10 = &selRef__popToInbox;
      }

      [(CKConversationListCollectionViewController *)self performSelector:*v10 withObject:0 afterDelay:0.35];
    }
  }

  else if (v4)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController Warning: Not viewing junk conversation controller. Not performing any action", v14, 2u);
    }
  }
}

- (id)dataSourceWithCollectionView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__CKConversationListCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke;
  v14[3] = &unk_1E72F11A0;
  objc_copyWeak(&v15, &location);
  v6 = [v5 initWithCollectionView:v4 cellProvider:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__CKConversationListCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke_2;
  v12[3] = &unk_1E72F11C8;
  objc_copyWeak(&v13, &location);
  [v6 setSupplementaryViewProvider:v12];
  v7 = [v6 reorderingHandlers];
  [v7 setCanReorderItemHandler:&__block_literal_global_101];

  v8 = [v6 reorderingHandlers];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__CKConversationListCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke_4;
  v10[3] = &unk_1E72F2F40;
  objc_copyWeak(&v11, &location);
  [v8 setDidReorderHandler:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v6;
}

id __87__CKConversationListCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained cellForIndexPath:v8 inCollectionView:v9 withItemIdentifier:v7];

  return v11;
}

id __87__CKConversationListCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained supplementaryViewForIndexPath:v7 inCollectionView:v9 withKind:v8];

  return v11;
}

void __87__CKConversationListCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didReorderConversationsWithTransaction:v3];
}

- (id)supplementaryViewForIndexPath:(id)a3 inCollectionView:(id)a4 withKind:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v12 = [v11 isModernFilteringEnabled];

  if (!v12)
  {
    if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
    {
      v17 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
      v16 = [v9 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v17 forIndexPath:v8];

      [v16 configureForRecentlyDeleted];
      goto LABEL_10;
    }

    if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
    {
      v18 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
      v16 = [v9 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v18 forIndexPath:v8];

      [v16 configureForJunkFiltering];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v13 = [CKConversationListFilterModeUtilities filterModeDisclosureText:[(CKConversationListCollectionViewController *)self activePrimaryFilterMode]];
  if (!v13)
  {
LABEL_8:
    v14 = +[CKPinnedSectionSeparatorView reuseIdentifier];
    v16 = [v9 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v14 forIndexPath:v8];
    goto LABEL_9;
  }

  v14 = v13;
  v15 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
  v16 = [v9 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v15 forIndexPath:v8];

  [v16 configureWithString:v14];
LABEL_9:

LABEL_10:

  return v16;
}

- (id)cellForIndexPath:(id)a3 inCollectionView:(id)a4 withItemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 section];
  v12 = 0;
  if (v11 <= 2)
  {
    if (!v11)
    {
      if ([(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth])
      {
        [(CKConversationListCollectionViewController *)self cellForCollapsedSidebarFocusFilterCellInCollectionView:v9 atIndexPath:v8];
      }

      else
      {
        [(CKConversationListCollectionViewController *)self cellForFocusFilterInCollectionView:v9 atIndexPath:v8];
      }
      v15 = ;
      goto LABEL_24;
    }

    if (v11 == 1)
    {
      v15 = [(CKConversationListCollectionViewController *)self cellForPinningOnboardingTitleViewCollectionView:v9 atIndexPath:v8];
      goto LABEL_24;
    }

    if (v11 != 2)
    {
      goto LABEL_29;
    }

    v14 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifier];
    if ([v10 isEqualToString:v14])
    {
    }

    else
    {
      v20 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifierForDropTargetAtItemIndex:](CKPinnedConversationDropTargetCollectionViewCell, "uniqueIdentifierForDropTargetAtItemIndex:", [v8 item]);
      v21 = [v10 isEqualToString:v20];

      if (!v21)
      {
        if (![(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth])
        {
          v15 = [(CKConversationListCollectionViewController *)self cellForPinnedConversationWithItemIdentifier:v10 inCollectionView:v9 atIndexPath:v8];
          goto LABEL_24;
        }

LABEL_27:
        v13 = [(CKConversationListCollectionViewController *)self cellForStandardConversationWithItemIdentifier:v10 inCollectionView:v9 atIndexPath:v8];
        goto LABEL_28;
      }
    }

    v15 = [(CKConversationListCollectionViewController *)self cellForPinnedConversationDropTargetInCollectionView:v9 atIndexPath:v8];
    goto LABEL_24;
  }

  if (v11 > 4)
  {
    if (v11 != 5)
    {
      if (v11 != 6)
      {
        goto LABEL_29;
      }

      v13 = [(CKConversationListCollectionViewController *)self cellForRecoverableConversationWithItemIdentifier:v10 inCollectionView:v9 atIndexPath:v8];
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v11 == 3)
  {
    v16 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
    v17 = [v10 isEqualToString:v16];

    if (v17)
    {
      v15 = [(CKConversationListCollectionViewController *)self tipKitOnboardingCollectionView:v9 atIndexPath:v8];
    }

    else
    {
      v18 = +[_TtC7ChatKit23CKTipCollectionViewCell reuseIdentifier];
      v19 = [v10 isEqualToString:v18];

      if (!v19)
      {
        v12 = 0;
        goto LABEL_29;
      }

      v15 = [(CKConversationListCollectionViewController *)self tipCollectionViewCell:v9 atIndexPath:v8];
    }

LABEL_24:
    v12 = v15;
    goto LABEL_29;
  }

  v13 = [(CKConversationListCollectionViewController *)self newMessageCellInCollectionView:v9 atIndexPath:v8];
LABEL_28:
  v12 = v13;
  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v13];
LABEL_29:

  return v12;
}

- (void)updateContentsOfCell:(id)a3 withItemIdentifier:(id)a4 atIndexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v19 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKConversationListCollectionViewController *)self configurePinnedConversationCell:v10 forItemIdentifier:v11 indexPath:v12 animated:v6];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKConversationListCollectionViewController *)self configureDropTargetCell:v10];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v13];
    [(CKConversationListCollectionViewController *)self configureNewMessageCell:v13];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v13];
    [(CKConversationListCollectionViewController *)self configureRecoverableConversationCell:v13 forItemIdentifier:v11];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v13];
    [(CKConversationListCollectionViewController *)self configureConversationCell:v13 forItemIdentifier:v11];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKConversationListCollectionViewController *)self configureTipKitOnboardingCell:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CKConversationListCollectionViewController *)self configureTipCollectionViewCell:v10];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CKConversationListCollectionViewController *)self configureOnboardingTitleCell:v10];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CKConversationListCollectionViewController *)self configureFocusFilterCell:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CKConversationListCollectionViewController *)self configureFocusFilterCollapsedCell:v10];
          }

          else if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              v17 = 138412290;
              v18 = v16;
              _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Unhandled cell of class %@ in -[updateContentsOfCell:withItemIdentifier:atIndexPath:animated:].", &v17, 0xCu);
            }
          }
        }
      }
    }
  }

LABEL_12:
}

- (id)cellForPinningOnboardingTitleViewCollectionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKPinningOnboardingTitleCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [(CKConversationListCollectionViewController *)self configureOnboardingTitleCell:v9];

  return v9;
}

- (void)configureOnboardingTitleCell:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self pinnedConversationViewLayoutStyle];
  v6 = [(CKConversationListCollectionViewController *)self delegate];
  [v4 setPinnedConversationViewLayoutStyle:v5 collapsedState:{objc_msgSend(v6, "isCollapsed")}];
}

- (id)cellForCollapsedSidebarFocusFilterCellInCollectionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKFocusFilterBannerCollapsedCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [(CKConversationListCollectionViewController *)self configureFocusFilterCollapsedCell:v9];

  return v9;
}

- (id)cellForFocusFilterInCollectionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKFocusFilterBannerCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [(CKConversationListCollectionViewController *)self configureFocusFilterCell:v9];

  return v9;
}

- (id)tipKitOnboardingCollectionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [(CKConversationListCollectionViewController *)self configureTipKitOnboardingCell:v9];

  return v9;
}

- (id)tipCollectionViewCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_TtC7ChatKit23CKTipCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [(CKConversationListCollectionViewController *)self configureTipCollectionViewCell:v9];

  return v9;
}

- (void)configureTipKitOnboardingCell:(id)a3
{
  v4 = a3;
  v7 = [(CKConversationListCollectionViewController *)self tipManager];
  v5 = [v7 miniTipUIView];
  v6 = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
  [v4 setTipUIView:v5 withRecommendedPinningConversations:v6];
}

- (void)configureTipCollectionViewCell:(id)a3
{
  v4 = a3;
  v6 = [(CKConversationListCollectionViewController *)self tipManager];
  v5 = [v6 miniTipUIView];
  [v4 setTipHostingView:v5];
}

- (id)cellForPinnedConversationWithItemIdentifier:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = +[CKPinnedConversationCollectionViewCell reuseIdentifier];
  v12 = [v10 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v9];

  v13 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v8];
  v14 = [(CKConversationListCollectionViewController *)self previousPinnedConversationActivitySnapshotForConversation:v13];
  if (v14)
  {
    v15 = [v12 pinnedConversationView];
    [v15 reapplyPreviouslyDisplayedActivitySnapshot:v14];
  }

  [(CKConversationListCollectionViewController *)self _configurePinnedConversationCell:v12 forConversation:v13 itemIdentifier:v8 indexPath:v9 animated:v14 != 0];

  return v12;
}

- (void)configurePinnedConversationCell:(id)a3 forItemIdentifier:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v11];
  [(CKConversationListCollectionViewController *)self _configurePinnedConversationCell:v12 forConversation:v13 itemIdentifier:v11 indexPath:v10 animated:v6];

  [v12 configureAppEntityForConversation:v13];
}

- (void)_configurePinnedConversationCell:(id)a3 forConversation:(id)a4 itemIdentifier:(id)a5 indexPath:(id)a6 animated:(BOOL)a7
{
  v7 = a7;
  v39 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v39 pinnedConversationView];
  [v15 setDelegate:self];
  [v15 setShowsLiveActivity:1];
  [v15 setActivityItemOriginationDirection:{-[CKConversationListCollectionViewController _activityItemOriginationDirectionForItemIdentifier:conversation:](self, "_activityItemOriginationDirectionForItemIdentifier:conversation:", v13, v12)}];
  [v15 setLayoutStyle:{-[CKConversationListCollectionViewController pinnedConversationViewLayoutStyle](self, "pinnedConversationViewLayoutStyle")}];
  [(CKConversationListCollectionViewController *)self _activityItemTopInsetForIndexPath:v14];
  v17 = v16;

  [v15 setActivityItemTopInset:v17];
  v18 = [(CKConversationListCollectionViewController *)self delegate];
  [v39 setShowsBackgroundViewWhenSelected:{objc_msgSend(v18, "isCollapsed") ^ 1}];

  v19 = [(CKConversationListCollectionViewController *)self delegate];
  [v39 setAllowActivitySuppressionWhenSelected:{objc_msgSend(v19, "isCollapsed") ^ 1}];

  v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v21 = [v20 conversationPinningUsesLastNameForDuplicatesEnabled];

  if (v21)
  {
    v22 = [(CKConversationListCollectionViewController *)self _pinnedConversationShortNames];
    v23 = [v12 pinnedConversationDisplayNamePreferringShortName:1];
    [v15 setPreferShortConversationName:{objc_msgSend(v22, "countForObject:", v23) < 2}];
  }

  else
  {
    [v15 setPreferShortConversationName:1];
  }

  v24 = +[CKUIBehavior sharedBehaviors];
  v25 = [v24 messageCountToLoadForPinnedConversationsIfNecessary];

  if (![v12 hasUnreadMessages] || v25 <= objc_msgSend(v12, "limitToLoad"))
  {
    goto LABEL_12;
  }

  v26 = [v12 chat];
  v27 = [v26 lastIncomingFinishedMessage];

  if ([v12 isGroupConversation])
  {
    v28 = [v12 isAdHocGroupConversation] ^ 1;
    if (!v27)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (!v28)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v28 = 0;
  if (v27)
  {
    goto LABEL_10;
  }

LABEL_11:
  [v12 setLoadedMessageCount:v25];
LABEL_12:
  v29 = [(CKConversationListCollectionViewController *)self _recentMessagesInPinnedConversations];
  [v15 setConversation:v12];
  [v15 setRecentMessagesInPinnedConversations:v29];
  v30 = [v12 chat];
  v31 = [v30 allowedByScreenTime];

  if (v31)
  {
    [v15 endSuppressingActivityWithReason:@"ScreenTime" animated:v7 completion:0];
  }

  else
  {
    [v15 beginSuppressingActivityWithReason:@"ScreenTime" animated:v7 completion:0];
  }

  v32 = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];
  v33 = [v32 containsObject:v13];

  if (v33)
  {
    v34 = [v39 pinnedConversationView];
    [v34 setDimmed:0];

    [v15 beginSuppressingActivityWithReason:@"ContextMenuInteraction" animated:v7 completion:0];
  }

  else
  {
    [v15 endSuppressingActivityWithReason:@"ContextMenuInteraction" animated:v7 completion:0];
  }

  v35 = [MEMORY[0x1E69A8088] sharedManager];
  if ([v35 shouldFilterConversationsByFocus])
  {
    v36 = [v12 allowedByPersonListInActiveFocus] ^ 1;
  }

  else
  {
    v36 = 0;
  }

  [v15 setIsFilteredByFocus:v36 animated:v7];
  [v39 setDelegate:self];
  [v39 setEditingMode:-[CKConversationListCollectionViewController editingMode](self animated:{"editingMode"), v7}];
  if ([(CKConversationListCollectionViewController *)self hidePinsForAnimation])
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 1.0;
  }

  v38 = [v39 contentView];
  [v38 setAlpha:v37];

  [v15 updateActivityViewAnimated:v7 completion:0];
}

- (double)_activityItemTopInsetForIndexPath:(id)a3
{
  v3 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    if (([v3 item] + 2) >= 5)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 5.0;
    }
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (int64_t)_activityItemOriginationDirectionForItemIdentifier:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKConversationListCollectionViewController *)self dataSource];
  v9 = [v8 snapshot];
  v10 = [v9 numberOfItemsInSection:&unk_1F04E7D58];

  v11 = [(CKConversationListCollectionViewController *)self dataSource];
  v12 = [v11 indexPathForItemIdentifier:v6];

  if (v10 < 2)
  {
    goto LABEL_2;
  }

  v14 = [v12 item];
  if (v10 == 2)
  {
    if (v14 == 1)
    {
      goto LABEL_7;
    }
  }

  else if (v14 % 3 == 1)
  {
LABEL_7:
    v13 = [(CKConversationListCollectionViewController *)self _isOnlyActivityItemInRowForConversation:v7 itemIdentifier:v6]^ 1;
    goto LABEL_8;
  }

LABEL_2:
  v13 = 0;
LABEL_8:

  return v13;
}

- (BOOL)_conversationHasActivityItem:(id)a3
{
  v3 = a3;
  if ([v3 hasUnreadMessages])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 chat];
    v6 = [v5 lastIncomingMessage];
    v4 = [v6 isTypingMessage];
  }

  return v4;
}

- (BOOL)_isOnlyActivityItemInRowForConversation:(id)a3 itemIdentifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(CKConversationListCollectionViewController *)self _conversationHasActivityItem:a3])
  {
    v7 = [(CKConversationListCollectionViewController *)self _conversationsInRowOfItemIdentifier:v6];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v10 += [(CKConversationListCollectionViewController *)self _conversationHasActivityItem:*(*(&v15 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
      v13 = v10 == 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_conversationsInRowOfItemIdentifier:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [v5 indexPathForItemIdentifier:v4];

  v7 = [v6 item];
  v8 = [(CKConversationListCollectionViewController *)self dataSource];
  v9 = [v8 snapshot];
  v10 = [v9 itemIdentifiersInSectionWithIdentifier:&unk_1F04E7D58];

  v11 = [v10 count];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 conversationListLayoutPinnedSectionNumberOfColumns];

  v14 = v7 / v13 * v13;
  if (v13 >= (v11 - v14))
  {
    v15 = v11 - v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = [v10 subarrayWithRange:{v14, v15}];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:*(*(&v26 + 1) + 8 * i), v26];
        if (v23)
        {
          [v17 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  v24 = [v17 copy];

  return v24;
}

- (id)_recentMessagesInPinnedConversations
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CKConversationListCollectionViewController *)self pinnedConversations];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) chat];
        v10 = [v9 lastIncomingFinishedMessage];

        if (v10 && ([v10 isRead] & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v3 sortUsingComparator:&__block_literal_global_224_0];
  v11 = [v3 copy];

  return v11;
}

- (id)_pinnedConversationShortNames
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(CKConversationListCollectionViewController *)self pinnedConversations];
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

        v9 = [*(*(&v11 + 1) + 8 * i) pinnedConversationDisplayNamePreferringShortName:1];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)cellForPinnedConversationDropTargetInCollectionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKPinnedConversationDropTargetCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [(CKConversationListCollectionViewController *)self configureDropTargetCell:v9];

  return v9;
}

- (void)configureDropTargetCell:(id)a3
{
  v6 = a3;
  [v6 setLayoutStyle:{-[CKConversationListCollectionViewController pinnedConversationViewLayoutStyle](self, "pinnedConversationViewLayoutStyle")}];
  v4 = [(CKConversationListCollectionViewController *)self editingMode];
  v5 = v4 == 2;
  [v6 setShouldAnimateCircle:v4 != 2];
  [v6 setShouldHideLabel:v5];
}

- (id)newMessageCellInCollectionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [(CKConversationListCollectionViewController *)self configureNewMessageCell:v9];
  return v9;
}

- (void)configureNewMessageCell:(id)a3
{
  v7 = a3;
  v4 = [(CKConversationListCollectionViewController *)self delegate];
  [v7 setShouldUseSidebarBackgroundConfiguration:{objc_msgSend(v4, "isCollapsed") ^ 1}];

  [v7 setDelegate:self];
  [v7 updateFontSize];
  if (v7)
  {
    v5 = [(CKConversationListCollectionViewController *)self conversationList];
    v6 = [v5 pendingConversation];
    [v7 updateContentsForConversation:v6];
  }
}

- (id)cellPinningOnboardingItemIdentifier:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[CKConversationListCollectionViewConversationCell reuseIdentifier];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v12];
  [(CKConversationListCollectionViewController *)self configureConversationCell:v12 forItemIdentifier:v10];

  return v12;
}

- (id)cellForStandardConversationWithItemIdentifier:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    v11 = [(CKConversationListCollectionViewController *)self cellForRecoverableConversationWithItemIdentifier:v8 inCollectionView:v9 atIndexPath:v10];
  }

  else
  {
    v12 = +[CKConversationListCollectionViewConversationCell reuseIdentifier];
    v11 = [v9 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v10];

    v13 = [(CKConversationListCollectionViewController *)self standardCellLayout];
    [(CKConversationListCollectionViewController *)self setCellLayout:v13];

    [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v11];
    [(CKConversationListCollectionViewController *)self configureConversationCell:v11 forItemIdentifier:v8];
  }

  return v11;
}

- (id)cellForRecoverableConversationWithItemIdentifier:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    v11 = [(CKConversationListCollectionViewController *)self junkCellLayout];
    v12 = off_1E72E4B98;
LABEL_5:
    [(CKConversationListCollectionViewController *)self setCellLayout:v11];

    v13 = [(__objc2_class *)*v12 reuseIdentifier];
    v14 = [v8 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v9];

    goto LABEL_7;
  }

  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    v11 = [(CKConversationListCollectionViewController *)self standardCellLayout];
    v12 = off_1E72E4BA8;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:
  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v14];
  [(CKConversationListCollectionViewController *)self configureRecoverableConversationCell:v14 forItemIdentifier:v10];

  return v14;
}

- (void)configureAppEntityForConversationCell:(id)a3 forItemIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:a4];
  [v6 configureAppEntityForConversation:v7];
}

- (void)configureConversationCell:(id)a3 forItemIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];
  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v7];
  [v7 updateContentsForConversation:v11 fastPreview:{-[CKConversationListCollectionViewController shouldUseFastPreviewText](self, "shouldUseFastPreviewText")}];
  v8 = [v7 leadingEditingAccessoryConfigurationsForEditingMode:{-[CKConversationListCollectionViewController editingMode](self, "editingMode")}];
  [v7 setLeadingEditingAccessoryConfigurations:v8];

  v9 = [v7 trailingEditingAccessoryConfigurationsForEditingMode:{-[CKConversationListCollectionViewController editingMode](self, "editingMode")}];
  [v7 setTrailingEditingAccessoryConfigurations:v9];

  v10 = [(CKConversationListCollectionViewController *)self delegate];
  [v7 setShouldUseSidebarBackgroundConfiguration:{objc_msgSend(v10, "isCollapsed") ^ 1}];

  [v7 setEditingMode:{-[CKConversationListCollectionViewController editingMode](self, "editingMode")}];
  [v7 setEmbeddedCellDelegate:self];
  [(CKConversationListCollectionViewController *)self _configureAvatarViewInConversationCell:v7 forItemIdentifier:v6];
  [(CKConversationListCollectionViewController *)self _configureInteractiveAvatarInConversationCell:v7 forItemIdentifier:v6];
}

- (void)_configureAvatarViewInConversationCell:(id)a3 forItemIdentifier:(id)a4
{
  v5 = a3;
  [v5 setDelegate:self];
  v6 = [v5 avatarView];

  [v6 setPresentingViewController:self];
}

- (void)_configureInteractiveAvatarInConversationCell:(id)a3 forItemIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 avatarView];
  [v7 setUserInteractionEnabled:1];
  [v7 setForcePressView:v7];
  v8 = [v12 avatarViewTapGestureRecognizer];

  if (!v8)
  {
    v9 = [[_CKCollectionViewTapGestureRecognizer alloc] initWithTarget:self action:sel_avatarViewTapped_];
    [v12 setAvatarViewTapGestureRecognizer:v9];

    v10 = [v12 avatarViewTapGestureRecognizer];
    [v7 addGestureRecognizer:v10];
  }

  v11 = [v12 avatarViewTapGestureRecognizer];
  [v11 setOriginatingItemIdentifier:v6];
}

- (void)configureRecoverableConversationCell:(id)a3 forItemIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v7];
  v9 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];

  [v7 setEmbeddedCellDelegate:self];
  [v7 updateContentsForConversation:v9 fastPreview:{-[CKConversationListCollectionViewController shouldUseFastPreviewText](self, "shouldUseFastPreviewText")}];
  v8 = [(CKConversationListCollectionViewController *)self delegate];
  [v7 setShouldUseSidebarBackgroundConfiguration:{objc_msgSend(v8, "isCollapsed") ^ 1}];

  [v7 setEditingMode:{-[CKConversationListCollectionViewController editingMode](self, "editingMode")}];
  [v7 setDelegate:self];
}

- (void)avatarViewTapped:(id)a3
{
  v4 = a3;
  if (![(CKConversationListCollectionViewController *)self isAppearing])
  {
    v5 = [(CKConversationListCollectionViewController *)self collectionView];
    v6 = [v4 originatingItemIdentifier];
    v7 = [(CKConversationListCollectionViewController *)self dataSource];
    v8 = [v7 indexPathForItemIdentifier:v6];

    [v5 selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
    v9 = [v5 delegate];
    [v9 collectionView:v5 didSelectItemAtIndexPath:v8];

LABEL_6:
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "ViewController is still appearing. Dropping conversation selection to prevent incorrect view configuration.", v10, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (id)pinnedConversationIdentifiers
{
  v2 = [(CKConversationListCollectionViewController *)self pinnedConversations];
  v3 = [v2 arrayByApplyingSelector:sel_pinningIdentifier];

  return v3;
}

- (id)_allFrozenConversations
{
  v3 = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
  v4 = [(CKConversationListCollectionViewController *)self frozenConversations];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 arrayByAddingObjectsFromArray:v4];
LABEL_8:
    v7 = v6;
    goto LABEL_9;
  }

  if (v3)
  {
    v6 = v3;
    goto LABEL_8;
  }

  if (v4)
  {
    v6 = v4;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)_removeConversationsFromFrozenConversations:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__CKConversationListCollectionViewController_DataSource___removeConversationsFromFrozenConversations___block_invoke;
  v12[3] = &unk_1E72F2F88;
  v13 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v12];
  v8 = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
  v9 = [v8 filteredArrayUsingPredicate:v7];

  [(CKConversationListCollectionViewController *)self setFrozenPinnedConversations:v9];
  v10 = [(CKConversationListCollectionViewController *)self frozenConversations];
  v11 = [v10 filteredArrayUsingPredicate:v7];

  [(CKConversationListCollectionViewController *)self setFrozenConversations:v11];
}

uint64_t __102__CKConversationListCollectionViewController_DataSource___removeConversationsFromFrozenConversations___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a2 chat];
  v4 = [v3 guid];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) chat];
        v11 = [v10 guid];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (id)conversationsAtIndexPaths:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)conversationAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];

  return v7;
}

- (void)_appendRecentlyDeletedIdentifersToSnapshot:(id)a3
{
  v7 = a3;
  v4 = [(CKConversationListCollectionViewController *)self conversationList];
  v5 = [v4 conversationsForFilterMode:7];

  v6 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v5 inSection:6];
  if ([v6 count])
  {
    [v7 appendItemsWithIdentifiers:v6];
  }
}

- (void)updateSnapshotAnimatingDifferences:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CKConversationListCollectionViewController *)self generateSnapshot];
  [(CKConversationListCollectionViewController *)self applyConversationListSnapshot:v7 animatingDifferences:v4 completion:v6];
}

- (void)applyConversationListSnapshot:(id)a3 animatingDifferences:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (![(CKConversationListCollectionViewController *)self isCommitingDiffableDataSourceTransaction])
  {
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __120__CKConversationListCollectionViewController_DataSource__applyConversationListSnapshot_animatingDifferences_completion___block_invoke;
    aBlock[3] = &unk_1E72F2FB0;
    objc_copyWeak(&v43, buf);
    v11 = v9;
    v42 = v11;
    v12 = _Block_copy(aBlock);
    if ([(CKConversationListCollectionViewController *)self isApplyingSnapshot])
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [CKConversationListCollectionViewController(DataSource) applyConversationListSnapshot:v13 animatingDifferences:? completion:?];
      }

      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = v14;
      if (v8)
      {
        [v14 setObject:v8 forKey:@"CKBlockedSnapshotApplicationSnapshotKey"];
      }

      v16 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      [v15 setObject:v16 forKey:@"CKBlockedSnapshotApplicationAnimateDifferencesKey"];

      if (v11)
      {
        v17 = _Block_copy(v11);
        [v15 setObject:v17 forKey:@"CKBlockedSnapshotApplicationCompletionKey"];
      }

      v18 = [v15 copy];
      [(CKConversationListCollectionViewController *)self setBlockedSnapshotInfo:v18];
      goto LABEL_39;
    }

    [(CKConversationListCollectionViewController *)self setIsApplyingSnapshot:1];
    v19 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
    v20 = os_signpost_id_generate(v19);

    v21 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *v40 = 0;
      _os_signpost_emit_with_name_impl(&dword_19020E000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "applySnapshot", "", v40, 2u);
    }

    if ([(CKConversationListCollectionViewController *)self haveAppliedInitialSnapshot])
    {
      v23 = [(CKConversationListCollectionViewController *)self dataSource];
      v24 = [v23 snapshot];
      v25 = [v24 isEqual:v8];

      if (v25)
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *v40 = 0;
            _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Skipping application of snapshot update with no changes", v40, 2u);
          }
        }

        if (v12)
        {
          v12[2](v12);
        }

        goto LABEL_32;
      }

      v28 = [(CKConversationListCollectionViewController *)self dataSource];
      [v28 applySnapshot:v8 animatingDifferences:v6 completion:v12];
    }

    else
    {
      [(CKConversationListCollectionViewController *)self setHaveAppliedInitialSnapshot:1];
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v40 = 0;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Applying initial snapshot", v40, 2u);
        }
      }

      v28 = [(CKConversationListCollectionViewController *)self dataSource];
      [v28 applySnapshot:v8 animatingDifferences:0 completion:v12];
    }

LABEL_32:
    v29 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
    v30 = v29;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *v40 = 0;
      _os_signpost_emit_with_name_impl(&dword_19020E000, v30, OS_SIGNPOST_INTERVAL_END, v20, "applySnapshot", "", v40, 2u);
    }

    [(CKConversationListCollectionViewController *)self setIsApplyingSnapshot:0];
    v31 = [(CKConversationListCollectionViewController *)self blockedSnapshotInfo];

    if (v31)
    {
      v32 = [(CKConversationListCollectionViewController *)self blockedSnapshotInfo];
      v33 = [v32 objectForKey:@"CKBlockedSnapshotApplicationSnapshotKey"];

      v34 = [(CKConversationListCollectionViewController *)self blockedSnapshotInfo];
      v35 = [v34 objectForKey:@"CKBlockedSnapshotApplicationAnimateDifferencesKey"];
      v36 = [v35 BOOLValue];

      v37 = [(CKConversationListCollectionViewController *)self blockedSnapshotInfo];
      v38 = [v37 objectForKey:@"CKBlockedSnapshotApplicationCompletionKey"];

      [(CKConversationListCollectionViewController *)self setBlockedSnapshotInfo:0];
      [(CKConversationListCollectionViewController *)self applyConversationListSnapshot:v33 animatingDifferences:v36 completion:v38];
    }

    if ([(CKConversationListCollectionViewController *)self filterMode]!= 7)
    {
      goto LABEL_40;
    }

    v15 = [(CKConversationListCollectionViewController *)self delegate];
    v18 = [(CKConversationListCollectionViewController *)self collectionView];
    v39 = [v18 indexPathsForSelectedItems];
    [v15 conversationListUpdatedSelectedIndexPathCount:{objc_msgSend(v39, "count")}];

LABEL_39:
LABEL_40:

    objc_destroyWeak(&v43);
    objc_destroyWeak(buf);
    goto LABEL_41;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Skipping application of snapshot update while we are commiting a diffable data source transaction", buf, 2u);
    }
  }

LABEL_41:
}

uint64_t __120__CKConversationListCollectionViewController_DataSource__applyConversationListSnapshot_animatingDifferences_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _ck_setNeedsUpdateOfMultitaskingDragExclusionRects];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)updateContentsOfAllCellsAnimated:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v6 = os_signpost_id_generate(v5);

  v7 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "updateContentsOfAllCells", "", buf, 2u);
  }

  v9 = [(CKConversationListCollectionViewController *)self collectionView];
  v10 = [v9 indexPathsForVisibleItems];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(CKConversationListCollectionViewController *)self updateContentsOfCellWithIndexPath:*(*(&v18 + 1) + 8 * i) animated:v3, v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }

  v16 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v17 = v16;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v17, OS_SIGNPOST_INTERVAL_END, v6, "updateContentsOfAllCells", "", buf, 2u);
  }
}

- (void)updateContentsOfCellsWithItemIdentifiers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:*(*(&v11 + 1) + 8 * v10++) animated:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)updateContentsOfCellWithItemIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(CKConversationListCollectionViewController *)self dataSource];
  v7 = [v6 indexPathForItemIdentifier:v8];
  if (v7)
  {
    [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v8 indexPath:v7 animated:v4];
  }
}

- (void)updateContentsOfCellWithIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(CKConversationListCollectionViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v8];
  if (v7)
  {
    [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v7 indexPath:v8 animated:v4];
  }
}

- (void)updateContentsOfCellWithItemIdentifier:(id)a3 indexPath:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = [(CKConversationListCollectionViewController *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v8];

  if (v10)
  {
    [(CKConversationListCollectionViewController *)self updateContentsOfCell:v10 withItemIdentifier:v11 atIndexPath:v8 animated:v5];
  }
}

- (id)pinnedConversationsFromSnapshot:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = v4;
  v6 = [v4 itemIdentifiersInSectionWithIdentifier:&unk_1F04E7D58];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
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
        v12 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifier];
        v13 = [v11 isEqualToString:v12];

        if ((v13 & 1) == 0)
        {
          v14 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v11];
          if (v14)
          {
            [v5 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)itemIdentifierForConversation:(id)a3 inSection:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a4 > 3)
  {
    switch(a4)
    {
      case 4uLL:
        v9 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
        break;
      case 5uLL:
        if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
        {
          [v7 conversationListCollectionViewJunkItemIdentifier];
        }

        else
        {
          [v7 conversationListCollectionViewListItemIdentifier];
        }
        v9 = ;
        break;
      case 6uLL:
        v9 = [v6 conversationListCollectionViewRecentlyDeletedListItemIdentifier];
        break;
      default:
        goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a4 == 2)
  {
    v9 = [v6 conversationListCollectionViewPinnedItemIdentifier];
LABEL_16:
    v8 = v9;
    goto LABEL_17;
  }

  if (a4 < 2 || a4 == 3)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid section identifier" userInfo:0];
    objc_exception_throw(v10);
  }

LABEL_17:

  return v8;
}

- (id)itemIdentifiersForConversations:(id)a3 inSection:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v11 = *v21;
    *&v10 = 138412546;
    v19 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v13 inSection:a4, v19];
        if (![v14 length])
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_16;
          }

          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v25 = a4;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Conversation has a nil item identifier for section: %ld, conversation: %@", buf, 0x16u);
          }

          goto LABEL_15;
        }

        v15 = [v7 count];
        [v7 addObject:v14];
        if (v15 == [v7 count] && IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v25 = v14;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Conversation list contains duplicate chat guids. Offending identifier: %@, conversation: %@", buf, 0x16u);
          }

LABEL_15:
        }

LABEL_16:
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  v17 = [v7 array];

  return v17;
}

- (id)conversationForItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(CKConversationListCollectionViewController *)self conversationList];
    v8 = [v7 pendingConversation];
    goto LABEL_15;
  }

  v9 = @"pinned-";
  if ([v4 hasPrefix:@"pinned-"] & 1) != 0 || (v9 = @"list-", (objc_msgSend(v4, "hasPrefix:", @"list-")) || (v9 = @"junk-", (objc_msgSend(v4, "hasPrefix:", @"junk-")) || (v9 = @"recoverable-", (objc_msgSend(v4, "hasPrefix:", @"recoverable-")))
  {
    v7 = [v4 substringFromIndex:{-[__CFString length](v9, "length")}];
    if ([v7 length])
    {
      v10 = [(CKConversationListCollectionViewController *)self conversationList];
      v8 = [v10 conversationForExistingChatWithGUID:v7];

      goto LABEL_15;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Invalid conversation itemIdentifier. Lacks section prefix.", v13, 2u);
      }
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)conversationsForItemIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (double)yCoordinateForBorderBetweenPinnedAndActiveSectionExcludingConversations:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [v5 snapshot];

  MinY = 0.0;
  if ([v6 indexOfSectionIdentifier:&unk_1F04E7DD0] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  v8 = [v6 itemIdentifiersInSectionWithIdentifier:&unk_1F04E7DD0];
  v9 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v4 inSection:5];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v11)
  {
    v12 = *v38;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        if (([v9 containsObject:v14] & 1) == 0)
        {
          v11 = v14;
          goto LABEL_12;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if ([v11 length])
  {
    v15 = [(CKConversationListCollectionViewController *)self dataSource];
    v16 = [v15 indexPathForItemIdentifier:v11];

    if (v16)
    {
      v17 = [(CKConversationListCollectionViewController *)self collectionView];
      v18 = [v17 layoutAttributesForItemAtIndexPath:v16];

      if (v18)
      {
        [v18 frame];
        MinY = CGRectGetMinY(v44);
      }

      else
      {
        MinY = 0.0;
      }
    }

    else
    {
      MinY = 0.0;
    }
  }

  else
  {
    MinY = 0.0;
  }

  if (MinY == 0.0)
  {
LABEL_22:
    if ([v6 indexOfSectionIdentifier:&unk_1F04E7D58] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [v6 itemIdentifiersInSectionWithIdentifier:&unk_1F04E7D58];
      v20 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v4 inSection:2];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v21 = [v19 reverseObjectEnumerator];
      v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v22)
      {
        v23 = *v34;
        while (2)
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v33 + 1) + 8 * j);
            if (([v20 containsObject:v25] & 1) == 0)
            {
              v22 = v25;
              goto LABEL_33;
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

LABEL_33:

      if ([v22 length])
      {
        v26 = [(CKConversationListCollectionViewController *)self dataSource];
        v27 = [v26 indexPathForItemIdentifier:v22];

        if (v27)
        {
          v28 = [(CKConversationListCollectionViewController *)self collectionView];
          v29 = [v28 layoutAttributesForItemAtIndexPath:v27];

          if (v29)
          {
            [v29 frame];
            MinY = CGRectGetMaxY(v45);
          }
        }
      }
    }
  }

  if (MinY == 0.0 && IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *v32 = 0;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Could not determine yCoordinateForBorderBetweenPinnedAndActiveSection.", v32, 2u);
    }
  }

  return MinY;
}

- (CGRect)pinnedConversationMultitaskingDragExclusionRect
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  [(CKConversationListCollectionViewController *)self yCoordinateForBorderBetweenPinnedAndActiveSectionExcludingConversations:MEMORY[0x1E695E0F0]];
  if (v7 != 0.0)
  {
    v8 = v7;
    v9 = [(CKConversationListCollectionViewController *)self collectionView];
    [v9 contentInset];
    v11 = v8 - v10;
    if (v11 > 0.0)
    {
      v12 = v10;
      [v9 bounds];
      v14 = v13;
      [v9 bounds];
      v16 = v15;
      v17 = [(CKConversationListCollectionViewController *)self view];
      v18 = [(CKConversationListCollectionViewController *)self collectionView];
      [v17 convertRect:v18 fromView:{v14, v12, v16, v11}];
      v3 = v19;
      v4 = v20;
      v5 = v21;
      v6 = v22;
    }
  }

  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)nextSequentialIndexPathForIndexPath:(id)a3 descending:(BOOL)a4
{
  v4 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [v7 snapshot];

  if (!v4)
  {
    v44 = 0uLL;
    v45 = 0uLL;
    *(&v42 + 1) = 0;
    v43 = 0uLL;
    v18 = [&unk_1F04E6AF8 reverseObjectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (!v19)
    {
      goto LABEL_26;
    }

    v20 = v19;
    v21 = *v43;
    while (1)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v42 + 1) + 8 * i);
        v24 = [v8 numberOfItemsInSection:v23];
        v25 = v24 - 1;
        if (v24 >= 1)
        {
          v26 = [v6 section];
          if (v26 >= [v23 integerValue])
          {
            v27 = [v6 section];
            if (v27 != [v23 integerValue])
            {
              v28 = MEMORY[0x1E696AC88];
              v29 = [v23 integerValue];
              v30 = v28;
              v31 = v25;
LABEL_35:
              v17 = [v30 indexPathForItem:v31 inSection:v29];
              goto LABEL_36;
            }

            if ([v6 item] >= 1)
            {
              v38 = [v6 item];
              if (v38 - 1 >= v25)
              {
                v39 = v25;
              }

              else
              {
                v39 = v38 - 1;
              }

              v40 = MEMORY[0x1E696AC88];
              v29 = [v23 integerValue];
              v30 = v40;
              v31 = v39;
              goto LABEL_35;
            }
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (!v20)
      {
LABEL_26:
        v17 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }
  }

  v48 = 0uLL;
  v49 = 0uLL;
  v46 = 0uLL;
  v47 = 0uLL;
  v9 = [&unk_1F04E6AF8 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v9)
  {
    v17 = 0;
    goto LABEL_37;
  }

  v10 = v9;
  v11 = *v47;
  while (2)
  {
    for (j = 0; j != v10; ++j)
    {
      if (*v47 != v11)
      {
        objc_enumerationMutation(&unk_1F04E6AF8);
      }

      v13 = *(*(&v46 + 1) + 8 * j);
      v14 = [v8 numberOfItemsInSection:v13];
      v15 = [v6 section];
      if (v15 <= [v13 integerValue])
      {
        v16 = [v6 section];
        if (v16 == [v13 integerValue])
        {
          if ([v6 item] < v14 - 1)
          {
            v33 = MEMORY[0x1E696AC88];
            v34 = [v6 item];
            v35 = [v13 integerValue];
            v36 = v34 + 1;
            v37 = v33;
LABEL_30:
            v17 = [v37 indexPathForItem:v36 inSection:v35];
            goto LABEL_37;
          }
        }

        else if (v14 >= 1)
        {
          v32 = MEMORY[0x1E696AC88];
          v35 = [v13 integerValue];
          v37 = v32;
          v36 = 0;
          goto LABEL_30;
        }
      }
    }

    v10 = [&unk_1F04E6AF8 countByEnumeratingWithState:&v46 objects:v51 count:16];
    v17 = 0;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_37:

  return v17;
}

- (int64_t)distanceBetweenConversationIndexPath:(id)a3 andIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 section];
  if (v8 == [v7 section])
  {
    v9 = [v7 item];
    v10 = [v6 item];
    if (v9 - v10 >= 0)
    {
      v11 = v9 - v10;
    }

    else
    {
      v11 = v10 - v9;
    }
  }

  else
  {
    v12 = [v6 section];
    v13 = [v7 section];
    if (v12 >= v13)
    {
      v14 = v7;
    }

    else
    {
      v14 = v6;
    }

    if (v12 >= v13)
    {
      v15 = v6;
    }

    else
    {
      v15 = v7;
    }

    v16 = v14;
    v17 = v15;
    v18 = [(CKConversationListCollectionViewController *)self dataSource];
    v19 = [v18 snapshot];

    v20 = [v16 section];
    if (v20 <= [v17 section])
    {
      v11 = 0;
      do
      {
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
        v22 = [v19 numberOfItemsInSection:v21];

        if (v20 == [v16 section])
        {
          v11 = v22 + v11 - [v16 item];
        }

        if (v20 == [v17 section])
        {
          v22 = [v17 item];
        }

        v11 += v22;
      }

      while (v20++ < [v17 section]);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (int64_t)numberOfConversations
{
  v2 = [(CKConversationListCollectionViewController *)self activeConversations];
  v3 = [v2 count];

  return v3;
}

- (id)selectedConversations
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CKConversationListCollectionViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];
  v6 = [v3 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = [(CKConversationListCollectionViewController *)self collectionView];
  v8 = [v7 indexPathsForSelectedItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__CKConversationListCollectionViewController_DataSource__selectedConversations__block_invoke;
  v13[3] = &unk_1E72F2FD8;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  [v8 enumerateObjectsUsingBlock:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __79__CKConversationListCollectionViewController_DataSource__selectedConversations__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) conversationAtIndexPath:v3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | No conversation for selected index path: %@", &v6, 0xCu);
    }
  }
}

- (void)_ensureCellLayoutOnCell:(id)a3
{
  v5 = a3;
  v6 = [(CKConversationListCollectionViewController *)self cellLayout];

  if (!v6)
  {
    [(CKConversationListCollectionViewController(DataSource) *)self _ensureCellLayoutOnCell:a2];
  }

  v7 = [(CKConversationListCollectionViewController *)self cellLayout];
  [v5 setCellLayout:v7];
}

- (void)pinnedConversationView:(id)a3 didUpdateWithActivitySnapshot:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(CKConversationListCollectionViewController *)self cacheForLastDisplayedActivitySnapshotByConversation];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(CKConversationListCollectionViewController *)self setCacheForLastDisplayedActivitySnapshotByConversation:v8];
  }

  v9 = [v13 conversation];
  v10 = [(CKConversationListCollectionViewController *)self _lastDisplayedActivitySnapshotCacheKeyForConversation:v9];
  v11 = v10;
  if (v6 && [v10 length])
  {
    v12 = [(CKConversationListCollectionViewController *)self cacheForLastDisplayedActivitySnapshotByConversation];
    [v12 setObject:v6 forKey:v11];
  }
}

- (id)previousPinnedConversationActivitySnapshotForConversation:(id)a3
{
  v4 = [(CKConversationListCollectionViewController *)self _lastDisplayedActivitySnapshotCacheKeyForConversation:a3];
  if ([v4 length])
  {
    v5 = [(CKConversationListCollectionViewController *)self cacheForLastDisplayedActivitySnapshotByConversation];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initForRecentlyDeletedModal
{
  v2 = [(CKConversationListCollectionViewController *)self init];
  v3 = v2;
  if (v2)
  {
    [(CKConversationListCollectionViewController *)v2 setRecentlyDeletedModal:1];
    [(CKConversationListCollectionViewController *)v3 setFilterMode:7];
    [(CKConversationListCollectionViewController *)v3 setEditingMode:1 animated:0];
  }

  return v3;
}

- (void)recentlyDeletedViewWillAppear:(BOOL)a3
{
  if ([(CKConversationListCollectionViewController *)self isRecentlyDeletedModal])
  {
    v4 = [(CKConversationListCollectionViewController *)self navigationItem];
    [v4 setLargeTitleDisplayMode:2];
  }

  [(CKConversationListCollectionViewController *)self configureForRecentlyDeletedFilter];
}

- (void)configureForRecentlyDeletedFilter
{
  [(CKConversationListCollectionViewController *)self setEditingMode:1 animated:0];
  [(CKConversationListCollectionViewController *)self _updateForCurrentEditingStateAnimated:0];
  if (CKIsRunningInMacCatalyst())
  {
    [(CKConversationListCollectionViewController *)self _configureCatalystFiltersNavigation];
  }

  else
  {
    [(CKConversationListCollectionViewController *)self dismissSearchIfNeeded];
  }

  [(CKConversationListCollectionViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  v3 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__CKConversationListCollectionViewController_RecentlyDeleted__configureForRecentlyDeletedFilter__block_invoke;
  v5[3] = &unk_1E72EBA18;
  v5[4] = self;
  [v3 updateRecoverableMessagesMetadataSynchronously:0 loadChats:1 completionHandler:v5];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__reloadRecoverableMetadataForNotification_ name:*MEMORY[0x1E69A58B0] object:0];
  [v4 addObserver:self selector:sel__reloadRecoverableMetadataForNotification_ name:*MEMORY[0x1E69A58A0] object:0];
}

uint64_t __96__CKConversationListCollectionViewController_RecentlyDeleted__configureForRecentlyDeletedFilter__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationList];
  [v2 updateRecoverableConversationList];

  [*(a1 + 32) updateSnapshotAnimatingDifferences:0];
  [*(a1 + 32) _setNeedsUpdateContentUnavailableConfiguration];
  v3 = *(a1 + 32);

  return [v3 _updateToolbarItems];
}

- (void)_performRecoverableDeletionForConversations:(id)a3 deleteDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "[Recently Deleted] Recoverable deletion confirmed", buf, 2u);
    }
  }

  [(CKConversationListCollectionViewController *)self _removeConversationsFromFrozenConversations:v6];
  v9 = [(CKConversationListCollectionViewController *)self delegate];
  [v9 conversationListIsDeletingConversations:v6];

  v10 = [(CKConversationListCollectionViewController *)self conversationList];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __118__CKConversationListCollectionViewController_RecentlyDeleted___performRecoverableDeletionForConversations_deleteDate___block_invoke;
  v11[3] = &unk_1E72EBA18;
  v11[4] = self;
  [v10 recoverableDeleteForConversations:v6 deleteDate:v7 synchronousQuery:0 completionHandler:v11];

  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
}

void __118__CKConversationListCollectionViewController_RecentlyDeleted___performRecoverableDeletionForConversations_deleteDate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationList];
  [v1 updateConversationListsAndSortIfEnabled];
}

- (void)_permanentDeletionConfirmedForConversations:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Permanent deletion confirmed", buf, 2u);
    }
  }

  [(CKConversationListCollectionViewController *)self _removeConversationsFromFrozenConversations:v4];
  v6 = [(CKConversationListCollectionViewController *)self delegate];
  [v6 conversationListIsDeletingConversations:v4];

  v7 = [(CKConversationListCollectionViewController *)self conversationList];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__CKConversationListCollectionViewController_RecentlyDeleted___permanentDeletionConfirmedForConversations___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [v7 permanentlyDeleteRecoverableMessagesInConversations:v4 synchronousQuery:0 completionHandler:v8];
}

uint64_t __107__CKConversationListCollectionViewController_RecentlyDeleted___permanentDeletionConfirmedForConversations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationList];
  [v2 updateRecoverableConversationList];

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __107__CKConversationListCollectionViewController_RecentlyDeleted___permanentDeletionConfirmedForConversations___block_invoke_2;
  v5[3] = &unk_1E72EBA18;
  v5[4] = v3;
  return [v3 updateSnapshotAnimatingDifferences:1 completion:v5];
}

- (void)_recoverConfirmedForConversations:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Recovery confirmed", buf, 2u);
    }
  }

  [(CKConversationListCollectionViewController *)self _removeConversationsFromFrozenConversations:v4];
  v6 = [(CKConversationListCollectionViewController *)self delegate];
  [v6 conversationListIsDeletingConversations:v4];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 chat];
        v13 = [v12 isDeletingIncomingMessages];

        if (v13)
        {
          v14 = [v11 chat];
          [v14 setDeletingIncomingMessages:0];
        }

        v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v16 = [v15 isIntroductionsEnabled];

        if (v16)
        {
          v17 = [v11 chat];
          v18 = [v17 isFiltered] == 2;

          if (v18)
          {
            v19 = [v11 chat];
            v20 = [v19 hasKnownParticipants];

            v21 = [v11 chat];
            [v21 setIsFiltered:v20 ^ 1u];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = [(CKConversationListCollectionViewController *)self conversationList];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__CKConversationListCollectionViewController_RecentlyDeleted___recoverConfirmedForConversations___block_invoke;
  v23[3] = &unk_1E72EBA18;
  v23[4] = self;
  [v22 recoverDeletedMessagesInConversations:v7 synchronousQuery:0 completionHandler:v23];
}

uint64_t __97__CKConversationListCollectionViewController_RecentlyDeleted___recoverConfirmedForConversations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationList];
  [v2 updateConversationListsAndSortIfEnabled];

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__CKConversationListCollectionViewController_RecentlyDeleted___recoverConfirmedForConversations___block_invoke_2;
  v5[3] = &unk_1E72EBA18;
  v5[4] = v3;
  return [v3 updateSnapshotAnimatingDifferences:1 completion:v5];
}

- (void)_removalCompleted
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Recently Deleted | removal completed", &v17, 2u);
    }
  }

  v4 = [(CKConversationListCollectionViewController *)self dataSource];
  v5 = [v4 snapshot];
  v6 = [v5 indexOfSectionIdentifier:&unk_1F04E7E60] == 0x7FFFFFFFFFFFFFFFLL;

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Recently Deleted | recently deleted section is not in the converesation. Early returning.", &v17, 2u);
      }
    }
  }

  else
  {
    v8 = [(CKConversationListCollectionViewController *)self dataSource];
    v9 = [v8 snapshot];
    v10 = [v9 numberOfItemsInSection:&unk_1F04E7E60];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        v17 = 138412290;
        v18 = v12;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Recently Deleted | Viewing recently deleted section of %@ items", &v17, 0xCu);
      }
    }

    if (!v10)
    {
      v13 = [(CKConversationListCollectionViewController *)self isRecentlyDeletedModal];
      v14 = &selRef__dismissPresentedNavController_;
      if (!v13)
      {
        v14 = &selRef__popToInbox;
      }

      [(CKConversationListCollectionViewController *)self performSelector:*v14 withObject:0 afterDelay:0.35];
    }

    v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v16 = [v15 isModernFilteringEnabled];

    if (v16)
    {
      [(CKConversationListCollectionViewController *)self setNeedsUpdateContentUnavailableConfiguration];
      [(CKConversationListCollectionViewController *)self _updateToolbarItems];
    }
  }
}

- (void)_popToInbox
{
  v2 = [(CKConversationListCollectionViewController *)self delegate];
  [v2 dismissConversationListAnimated:1];
}

- (id)showRecentlyDeletedModalAction
{
  v3 = MEMORY[0x1E69DC628];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SHOW_RECENTLY_DELETED" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"trash"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__CKConversationListCollectionViewController_RecentlyDeleted__showRecentlyDeletedModalAction__block_invoke;
  v9[3] = &unk_1E72EC060;
  v9[4] = self;
  v7 = [v3 actionWithTitle:v5 image:v6 identifier:0 handler:v9];

  return v7;
}

- (void)_performRecentlyDeletedMultiSelectCleanUp
{
  v3 = [(CKConversationListCollectionViewController *)self delegate];
  v4 = [v3 isCollapsed];

  if ((v4 & 1) == 0)
  {
    v5 = [(CKConversationListCollectionViewController *)self collectionView];
    [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:v5 animated:1];

    v8 = [(CKConversationListCollectionViewController *)self delegate];
    v6 = [(CKConversationListCollectionViewController *)self collectionView];
    v7 = [v6 indexPathsForSelectedItems];
    [v8 conversationListUpdatedSelectedIndexPathCount:{objc_msgSend(v7, "count")}];
  }
}

- (void)_moveToRecentlyDeletedButtonTapped:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Recoverable deletion requested", v11, 2u);
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_124];
  v9 = [v7 filteredArrayUsingPredicate:v8];

  v10 = [(CKConversationListCollectionViewController *)self conversationsAtIndexPaths:v9];
  [(CKConversationListCollectionViewController *)self toolbarPresentRecoverableDeletionConfirmationsForConversations:v10 sender:v4];
}

BOOL __98__CKConversationListCollectionViewController_RecentlyDeleted___moveToRecentlyDeletedButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 section] == 5 || objc_msgSend(v2, "section") == 2;

  return v3;
}

- (void)_permanentDeleteSelectedButtonTapped:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Permanent deletion on selected requested", v7, 2u);
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self _selectedConversationsInRecentlyDeletedSection];
  [(CKConversationListCollectionViewController *)self toolbarPresentPermanentDeletionConfirmationsForConversations:v6 sender:v4];
}

- (void)_permanentDeleteAllButtonTapped:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Permanent deletion on all requested", v8, 2u);
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self conversationList];
  v7 = [v6 conversationsForFilterMode:7];

  [(CKConversationListCollectionViewController *)self toolbarPresentPermanentDeletionConfirmationsForConversations:v7 sender:v4];
}

- (void)_recoverSelectedButtonTapped:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Recover selected requested", v7, 2u);
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self _selectedConversationsInRecentlyDeletedSection];
  [(CKConversationListCollectionViewController *)self toolbarPresentRecoverConfirmationsForConveresations:v6 sender:v4];
}

- (void)_recoverAllButtonTapped:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Recover all requested", v8, 2u);
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self conversationList];
  v7 = [v6 conversationsForFilterMode:7];

  [(CKConversationListCollectionViewController *)self toolbarPresentRecoverConfirmationsForConveresations:v7 sender:v4];
}

- (void)_showRecentlyDeletedModalActionTapped
{
  v3 = [[CKConversationListCollectionViewController alloc] initForRecentlyDeletedModal];
  v4 = [(CKConversationListCollectionViewController *)self delegate];
  [v3 setDelegate:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v3];
  v6 = [v5 navigationBar];
  [v6 setPrefersLargeTitles:1];

  [v5 setModalPresentationStyle:2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100__CKConversationListCollectionViewController_RecentlyDeleted___showRecentlyDeletedModalActionTapped__block_invoke;
  v8[3] = &unk_1E72EBA18;
  v9 = v5;
  v7 = v5;
  [(CKConversationListCollectionViewController *)self presentViewController:v7 animated:1 completion:v8];
}

void __100__CKConversationListCollectionViewController_RecentlyDeleted___showRecentlyDeletedModalActionTapped__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Presented modal navigation controller: %@", &v4, 0xCu);
    }
  }
}

- (void)recoverableDeletionConfirmedForConversations:(id)a3 deleteDate:(id)a4
{
  v17 = a3;
  v6 = a4;
  if ([(CKConversationListCollectionViewController *)self _isNewComposeSelected])
  {
    v7 = [(CKConversationListCollectionViewController *)self delegate];
    [v7 conversationListControllerTappedDeleteNewMessage:self];
  }

  [(CKConversationListCollectionViewController *)self _performRecoverableDeletionForConversations:v17 deleteDate:v6];
  v8 = [(CKConversationListCollectionViewController *)self delegate];
  v9 = [v8 isCollapsed];

  if ((v9 & 1) == 0)
  {
    v10 = [(CKConversationListCollectionViewController *)self collectionView];
    v11 = [v10 indexPathsForSelectedItems];
    v12 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_233_1];
    v13 = [v11 filteredArrayUsingPredicate:v12];

    v14 = [(CKConversationListCollectionViewController *)self collectionView];
    [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:v14 animated:1];

    v15 = [v13 lastObject];
    [(CKConversationListCollectionViewController *)self selectConversationClosestToDeletedIndex:v15];
  }

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
  if ([__CurrentTestName isEqualToString:@"UITestDeleteTopChat"])
  {
    v16 = MEMORY[0x1E69DDA98];
    if (objc_opt_respondsToSelector())
    {
      [*v16 didDeleteChat];
    }
  }
}

BOOL __119__CKConversationListCollectionViewController_RecentlyDeleted__recoverableDeletionConfirmedForConversations_deleteDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 section] == 5 || objc_msgSend(v2, "section") == 2;

  return v3;
}

- (BOOL)_isNewComposeSelected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CKConversationListCollectionViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__CKConversationListCollectionViewController_RecentlyDeleted___isNewComposeSelected__block_invoke;
  v5[3] = &unk_1E72F38F8;
  v5[4] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __84__CKConversationListCollectionViewController_RecentlyDeleted___isNewComposeSelected__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 section];
  if (result == 4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)toolbarItemsForRecentlyDeletedFilterHasConversations:(BOOL)a3 hasSelectedConversations:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(CKConversationListCollectionViewController *)self _permanentDeletebuttonToUseForSelectedConversations:v4];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v10 = [(CKConversationListCollectionViewController *)self _recoverButtonToUseForSelectedConversations:v4];
  [v8 setEnabled:v5];
  [v10 setEnabled:v5];
  [v7 addObject:v10];
  [v7 addObject:v9];
  [v7 addObject:v8];

  return v7;
}

- (id)_permanentDeletebuttonToUseForSelectedConversations:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CKConversationListCollectionViewController *)self permanentDeleteSelectedButtonItem];

    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__permanentDeleteSelectedButtonTapped_];
      [v5 accessibilitySetIdentification:@"deleteButton"];
      [(CKConversationListCollectionViewController *)self setPermanentDeleteSelectedButtonItem:v5];
    }

    v6 = [(CKConversationListCollectionViewController *)self permanentDeleteSelectedButtonItem];
  }

  else
  {
    v7 = [(CKConversationListCollectionViewController *)self permanentDeleteAllButtonItem];

    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__permanentDeleteAllButtonTapped_];
      [v8 accessibilitySetIdentification:@"deleteButton"];
      [(CKConversationListCollectionViewController *)self setPermanentDeleteAllButtonItem:v8];
    }

    v6 = [(CKConversationListCollectionViewController *)self permanentDeleteAllButtonItem];
  }

  return v6;
}

- (id)_recoverButtonToUseForSelectedConversations:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CKConversationListCollectionViewController *)self recoverSelectedButtonItem];

    if (!v4)
    {
      v5 = objc_alloc(MEMORY[0x1E69DC708]);
      v6 = CKFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"RECOVER" value:&stru_1F04268F8 table:@"ChatKit"];
      v8 = [v5 initWithTitle:v7 style:0 target:self action:sel__recoverSelectedButtonTapped_];

      [v8 accessibilitySetIdentification:@"recoverButton"];
      [(CKConversationListCollectionViewController *)self setRecoverSelectedButtonItem:v8];
    }

    v9 = [(CKConversationListCollectionViewController *)self recoverSelectedButtonItem];
  }

  else
  {
    v10 = [(CKConversationListCollectionViewController *)self recoverAllButtonItem];

    if (!v10)
    {
      v11 = objc_alloc(MEMORY[0x1E69DC708]);
      v12 = CKFrameworkBundle();
      v13 = [v12 localizedStringForKey:@"RECOVER_ALL" value:&stru_1F04268F8 table:@"ChatKit"];
      v14 = [v11 initWithTitle:v13 style:0 target:self action:sel__recoverAllButtonTapped_];

      [v14 accessibilitySetIdentification:@"recoverButton"];
      [(CKConversationListCollectionViewController *)self setRecoverAllButtonItem:v14];
    }

    v9 = [(CKConversationListCollectionViewController *)self recoverAllButtonItem];
  }

  return v9;
}

- (id)_selectedConversationsInRecentlyDeletedSection
{
  v3 = [(CKConversationListCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_263_1];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = [(CKConversationListCollectionViewController *)self conversationsAtIndexPaths:v6];

  return v7;
}

- (unint64_t)_numberOfRecoverableMessagesInConversations:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) chat];
        v6 += [v9 recoverableMessagesCount];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_reloadRecoverableMetadataForNotification:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 name];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | Reloading recoverable message metadata for notification %@", buf, 0xCu);
    }
  }

  v7 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__CKConversationListCollectionViewController_RecentlyDeleted___reloadRecoverableMetadataForNotification___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [v7 updateRecoverableMessagesMetadataSynchronously:0 loadChats:1 completionHandler:v8];
}

uint64_t __105__CKConversationListCollectionViewController_RecentlyDeleted___reloadRecoverableMetadataForNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationList];
  [v2 updateConversationListsAndSortIfEnabled];

  [*(a1 + 32) updateSnapshotAnimatingDifferences:1];
  v3 = *(a1 + 32);

  return [v3 updateContentsOfAllCellsAnimated:1];
}

- (void)_handleChatRegistryDidPermanentlyDeleteRecoverableMessages:(id)a3
{
  v4 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __122__CKConversationListCollectionViewController_RecentlyDeleted___handleChatRegistryDidPermanentlyDeleteRecoverableMessages___block_invoke;
  v5[3] = &unk_1E72EBA18;
  v5[4] = self;
  [v4 updateRecoverableMessagesMetadataSynchronously:0 loadChats:1 completionHandler:v5];
}

uint64_t __122__CKConversationListCollectionViewController_RecentlyDeleted___handleChatRegistryDidPermanentlyDeleteRecoverableMessages___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationList];
  [v2 updateConversationListsAndSortIfEnabled];

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __122__CKConversationListCollectionViewController_RecentlyDeleted___handleChatRegistryDidPermanentlyDeleteRecoverableMessages___block_invoke_2;
  v5[3] = &unk_1E72EBA18;
  v5[4] = v3;
  return [v3 updateSnapshotAnimatingDifferences:1 completion:v5];
}

- (void)_handleDidRecoverMessagesInChatsNotification:(id)a3
{
  v4 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __108__CKConversationListCollectionViewController_RecentlyDeleted___handleDidRecoverMessagesInChatsNotification___block_invoke;
  v5[3] = &unk_1E72EBA18;
  v5[4] = self;
  [v4 updateRecoverableMessagesMetadataSynchronously:0 loadChats:1 completionHandler:v5];
}

uint64_t __108__CKConversationListCollectionViewController_RecentlyDeleted___handleDidRecoverMessagesInChatsNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationList];
  [v2 updateConversationListsAndSortIfEnabled];

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __108__CKConversationListCollectionViewController_RecentlyDeleted___handleDidRecoverMessagesInChatsNotification___block_invoke_2;
  v5[3] = &unk_1E72EBA18;
  v5[4] = v3;
  return [v3 updateSnapshotAnimatingDifferences:1 completion:v5];
}

- (id)_recentlyDeletedDisclosureLabelText
{
  v3 = [(CKConversationListCollectionViewController *)self _selectedConversationsInRecentlyDeletedSection];
  if ([v3 count])
  {
    v4 = [(CKConversationListCollectionViewController *)self _numberOfRecoverableMessagesInConversations:v3];
    v5 = [(CKConversationListCollectionViewController *)self _minNumberOfDaysUntilDeletionInConversations:v3];
    if ([v3 count] < 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(CKConversationListCollectionViewController *)self _maxNumberOfDaysUntilDeletionInConversations:v3];
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"RECENTLY_DELETED_MESSAGES_SELECTED" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = [v9 localizedStringWithFormat:v11, v4];

    v13 = [MEMORY[0x1E69DC668] sharedApplication];
    v14 = [v13 userInterfaceLayoutDirection];

    if (v14 == 1)
    {
      v15 = @"\u200F";
    }

    else
    {
      v15 = @"\u200E";
    }

    v7 = [(__CFString *)v15 stringByAppendingString:v12];

    if ([v3 count] == 1 || v5 == v6)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = CKFrameworkBundle();
      v17 = v20;
      if (v4 == 1)
      {
        v21 = @"RECENTLY_DELETED_IT_WILL_BE_DELETED";
      }

      else
      {
        v21 = @"RECENTLY_DELETED_THEY_WILL_BE_DELETED";
      }

      v18 = [v20 localizedStringForKey:v21 value:&stru_1F04268F8 table:@"ChatKit"];
      [v19 localizedStringWithFormat:v18, v5, v35];
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = CKFrameworkBundle();
      v18 = [v17 localizedStringForKey:@"RECENTLY_DELETED_RANGED_DATES_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
      [v16 localizedStringWithFormat:v18, v5, v6];
    }
    v22 = ;

    v23 = [MEMORY[0x1E69DC668] sharedApplication];
    v24 = [v23 userInterfaceLayoutDirection];

    if (v24 == 1)
    {
      v25 = @"\u200F";
    }

    else
    {
      v25 = @"\u200E";
    }

    v26 = [(__CFString *)v25 stringByAppendingString:v22];

    v27 = MEMORY[0x1E696AEC0];
    v28 = CKFrameworkBundle();
    v29 = [v28 localizedStringForKey:@"MESSAGES_SELECTED_JOIN_THEY_WILL_BE_DELETED" value:&stru_1F04268F8 table:@"ChatKit"];
    v30 = [v27 stringWithFormat:v29, v7, v26];

    v31 = [MEMORY[0x1E69DC668] sharedApplication];
    v32 = [v31 userInterfaceLayoutDirection];

    if (v32 == 1)
    {
      v33 = @"\u200F";
    }

    else
    {
      v33 = @"\u200E";
    }

    v8 = [(__CFString *)v33 stringByAppendingString:v30];
  }

  else
  {
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"RECENTLY_DELETED_DISCLOSURE_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return v8;
}

- (unint64_t)_minNumberOfDaysUntilDeletionInConversations:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__CKConversationListCollectionViewController_RecentlyDeleted___minNumberOfDaysUntilDeletionInConversations___block_invoke;
  v6[3] = &unk_1E72F3920;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  if (v8[3] <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v8[3];
  }

  v8[3] = v4;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __108__CKConversationListCollectionViewController_RecentlyDeleted___minNumberOfDaysUntilDeletionInConversations___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 chat];
  v4 = [v3 earliestRecoverableMessageDeletionDate];
  v5 = [CKUtilities daysUntilRecentlyDeletedDeletionForDate:v4];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24);
  if (v7 >= v5)
  {
    v7 = v5;
  }

  *(v6 + 24) = v7;
}

- (unint64_t)_maxNumberOfDaysUntilDeletionInConversations:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__CKConversationListCollectionViewController_RecentlyDeleted___maxNumberOfDaysUntilDeletionInConversations___block_invoke;
  v6[3] = &unk_1E72F3920;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __108__CKConversationListCollectionViewController_RecentlyDeleted___maxNumberOfDaysUntilDeletionInConversations___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 chat];
  v4 = [v3 earliestRecoverableMessageDeletionDate];
  v5 = [CKUtilities daysUntilRecentlyDeletedDeletionForDate:v4];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24);
  if (v7 <= v5)
  {
    v7 = v5;
  }

  *(v6 + 24) = v7;
}

void __50__CKConversationListCollectionViewController_init__block_invoke()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Translation list setup", v1, 2u);
    }
  }
}

- (id)updaterLogHandle
{
  v2 = objc_opt_class();

  return [v2 updaterLogHandle];
}

- (void)_refreshConversationListCellForGroupPhotoUpdate:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Notification to refresh the cell for avatar view update.", v10, 2u);
    }
  }

  v6 = [v4 userInfo];
  v7 = [v6 valueForKey:@"conversation"];
  [v7 setNeedsUpdatedGroupPhotoForVisualIdentity];
  if ([v7 isPinned])
  {
    v8 = 2;
  }

  else
  {
    v8 = 5;
  }

  v9 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v7 inSection:v8];
  [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v9 animated:0];
}

- (void)_refreshConversationListCellForHistoryClear:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Notification to refresh the cell for avatar view update.", v11, 2u);
    }
  }

  v6 = [v4 object];
  v7 = [(CKConversationListCollectionViewController *)self conversationList];
  v8 = [v7 conversationForExistingChat:v6];

  if ([v8 isPinned])
  {
    v9 = 2;
  }

  else
  {
    v9 = 5;
  }

  v10 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v8 inSection:v9];
  [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v10 animated:0];
}

- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [[CKConversationListCollectionView alloc] initWithFrame:v8 collectionViewLayout:x, y, width, height];

  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v14 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;
  v7 = [(CKConversationListCollectionViewController *)self traitCollection];
  [v7 displayScale];
  v9 = v8;

  if (v6 != v9)
  {
    [(CKConversationListCollectionViewController *)self invalidateCellLayout];
  }

  v10 = [v4 userInterfaceStyle];
  v11 = [(CKConversationListCollectionViewController *)self traitCollection];
  v12 = [v11 userInterfaceStyle];

  if (v10 != v12)
  {
    v13 = +[CKDualSIMUtilities sharedUtilities];
    [v13 updateConversationListSIMLabelImagesDictionary];
  }
}

- (void)dealloc
{
  v3 = [(CKConversationListCollectionViewController *)self stateCaptureAssistant];
  [v3 deregister];

  [(CKConversationListCollectionViewController *)self setStateCaptureAssistant:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  [(UISearchController *)self->_searchController setDelegate:0];
  [(UISearchController *)self->_searchController setSearchResultsUpdater:0];
  [(CKSearchViewController *)self->_searchResultsController setDelegate:0];
  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  [v5 setDataSource:0];

  v6 = [(CKConversationListCollectionViewController *)self collectionView];
  [v6 setDelegate:0];

  v7 = [(CKConversationListCollectionViewController *)self collectionView];
  [v7 setDragDelegate:0];

  v8 = [(CKConversationListCollectionViewController *)self collectionView];
  [v8 setDropDelegate:0];

  v9 = [(CKConversationListCollectionViewController *)self refreshControlTimer];

  if (v9)
  {
    v10 = [(CKConversationListCollectionViewController *)self refreshControlTimer];
    [v10 invalidate];

    [(CKConversationListCollectionViewController *)self setRefreshControlTimer:0];
  }

  v11.receiver = self;
  v11.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v11 dealloc];
}

- (void)_dismissPresentedNavController:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_dismissPresentedDetailsController:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self delegate];
  [v3 conversationListControllerPresentViewControllerInInspector:0];
}

- (_PSMessagesPinningSuggester)pinnedConversationSuggester
{
  pinnedConversationSuggester = self->_pinnedConversationSuggester;
  if (!pinnedConversationSuggester)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69BDBD8]);
    v5 = self->_pinnedConversationSuggester;
    self->_pinnedConversationSuggester = v4;

    pinnedConversationSuggester = self->_pinnedConversationSuggester;
  }

  return pinnedConversationSuggester;
}

- (id)indexPathOfFirstSelectedItem
{
  v2 = [(CKConversationListCollectionViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];

  v4 = [v3 firstObject];

  return v4;
}

- (void)significantTimeChange
{
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0];

  [(CKConversationListCollectionViewController *)self updateConversationSelection];
}

- (void)_updateCollectionViewImmediatelyIfNeeded
{
  v2 = [(CKConversationListCollectionViewController *)self updater];
  [v2 updateImmediatelyIfNeeded];
}

- (void)compositionSent
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(CKConversationListCollectionViewController *)self splitViewController];
  v4 = [v3 isCollapsed];

  if (v4)
  {
    [(CKConversationListCollectionViewController *)self setCompositionWasSent:1];
    v5 = [(CKConversationListCollectionViewController *)self navigationController];
    v6 = [v5 viewControllers];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    v9 = v7;
    if (v8)
    {
      v10 = v8;
      v11 = *v18;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          v9 = v7;
          goto LABEL_13;
        }
      }

      v9 = v13;

      if (!v9)
      {
        goto LABEL_14;
      }

      v21 = v9;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:{1, v17}];
      v15 = [v7 arrayByExcludingObjectsInArray:v14];

      v16 = [(CKConversationListCollectionViewController *)self navigationController];
      [v16 setViewControllers:v15];
    }

LABEL_13:

LABEL_14:
  }
}

- (void)_showConversation:(id)a3 withComposition:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 isPinned])
  {
    v8 = 2;
  }

  else
  {
    v8 = 5;
  }

  v11 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v7 inSection:v8];

  v9 = [(CKConversationListCollectionViewController *)self dataSource];
  v10 = [v9 indexPathForItemIdentifier:v11];

  [(CKConversationListCollectionViewController *)self _showConversationWithComposition:v6 atIndexPath:v10];
}

- (void)_showConversationWithComposition:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(CKConversationListCollectionViewController *)self isEditing]& 1) == 0)
  {
    v8 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:v7];
    v9 = [(CKConversationListCollectionViewController *)self delegate];
    v10 = [v9 currentlyShownConversation];

    v11 = [(CKConversationListCollectionViewController *)self _shouldKeepSelection];
    v12 = v8 == v10 && v11;
    v13 = [v8 unsentComposition];

    if ([v7 section] == 4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = [WeakRetained isComposingMessage];

      v16 = objc_loadWeakRetained(&self->_delegate);
      v17 = v16;
      if ((v15 & 1) == 0)
      {
        [v16 showNewMessageCompositionPanelAppendingToExistingDraft:v6 animated:1];
        goto LABEL_15;
      }
    }

    else
    {
      v18 = !v12;
      if (!v6)
      {
        v18 = 1;
      }

      if ((v18 & 1) != 0 || v13 == v6)
      {
        if (v8 != 0 && !v12)
        {
          v19 = [(CKConversationListCollectionViewController *)self updater];
          [v19 beginHoldingUpdatesForReason:@"chatItemChangeSuppression"];

          [v8 updateUnsentCompositionByAppendingComposition:v6];
          v20 = objc_loadWeakRetained(&self->_delegate);
          [v20 showConversation:v8 animate:1 userInitiated:1];

          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __91__CKConversationListCollectionViewController__showConversationWithComposition_atIndexPath___block_invoke;
          v21[3] = &unk_1E72EB8D0;
          v21[4] = self;
          v22 = v8;
          dispatch_async(MEMORY[0x1E69E96A0], v21);

          goto LABEL_16;
        }

        if (!v12)
        {
LABEL_16:

          goto LABEL_17;
        }

        v17 = objc_loadWeakRetained(&self->_delegate);
        [v17 chatControllerDidReselectConversation:v8];
LABEL_15:

        goto LABEL_16;
      }

      v16 = objc_loadWeakRetained(&self->_delegate);
      v17 = v16;
    }

    [v16 updateCompositionInEntryViewWithComposition:v6];
    goto LABEL_15;
  }

  [(CKConversationListCollectionViewController *)self _updateToolbarItems];
LABEL_17:
}

void __91__CKConversationListCollectionViewController__showConversationWithComposition_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updater];
  [v2 endHoldingUpdatesForReason:@"chatItemChangeSuppression" updateTriggeredIfNotHeldShouldBeDeferred:1];

  v4 = [MEMORY[0x1E69A5B00] sharedInstance];
  v3 = [*(a1 + 40) chat];
  [v4 presentSatelliteConnectionBannerIfNecessaryWithChat:v3 withReason:@"OpenChat" ignoreTimerLimit:0];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKConversationListCollectionViewController *)self collectionView];

  if (v8 == v6)
  {
    [(CKConversationListCollectionViewController *)self _updateToolbarItems];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__CKConversationListCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    aBlock[3] = &unk_1E72EB8D0;
    aBlock[4] = self;
    v15 = v7;
    v11 = _Block_copy(aBlock);
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updatedSelectedIndexPathCount object:0];
    if (CKIsRunningInMacCatalyst())
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86__CKConversationListCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_406;
      block[3] = &unk_1E72EBDB8;
      v13 = v11;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v11[2](v11);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(CKConversationListCollectionViewController *)self collectionView];
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController: processing didSelectItemAtIndexPath on an unexpected collectionView: %@. Expected: %@", buf, 0x16u);
    }
  }
}

void __86__CKConversationListCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) collectionView];
      v4 = [v3 indexPathsForSelectedItems];
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "multi-select: didSelectItemAtIndexPath. SelectedIndexPaths: %@", &v12, 0xCu);
    }
  }

  if ([*(a1 + 32) filterMode] == 7 || (objc_msgSend(*(a1 + 32), "collectionView"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "indexPathsForSelectedItems"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count") == 1, v6, v5, !v7))
  {
    [*(a1 + 32) _updatedSelectedIndexPathCount];
  }

  else
  {
    if (CKIsRunningInMacCatalyst())
    {
      [*(a1 + 32) setEditingMode:0 animated:0];
    }

    v9 = *(a1 + 32);
    v8 = a1 + 32;
    [v9 _performTranscriptPushForItemAtIndexPath:*(v8 + 8) userInitiated:1];
    v10 = [*v8 dataSource];
    v11 = [v10 itemIdentifierForIndexPath:*(v8 + 8)];
    [*v8 setLastSelectedConversationItemIdentifier:v11];
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = !-[CKConversationListCollectionViewController isAppearing](self, "isAppearing") && -[CKConversationListCollectionViewController sectionHasSelectableConversations:](self, "sectionHasSelectableConversations:", [v5 section]);

  return v6;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = [a4 section];

  return [(CKConversationListCollectionViewController *)self sectionHasSelectableConversations:v5];
}

- (BOOL)cellAtIndexPath:(id)a3 isVisibleInCollectionView:(id)a4
{
  v6 = a4;
  v7 = [v6 cellForItemAtIndexPath:a3];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  [v7 bounds];
  [v6 convertRect:v8 fromView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v6 bounds];
  v36 = v18;
  v37 = v17;
  v35 = v19;
  v21 = v20;
  [v6 adjustedContentInset];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v21 - (v22 + v28);
  if (!self->_keyboardIsShowing)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v31 = [WeakRetained chatController];

    [v31 accessoryViewHeight];
    v29 = v29 + v32;
  }

  v39.origin.x = v10;
  v39.origin.y = v12;
  v39.size.width = v14;
  v39.size.height = v16;
  if (!CGRectEqualToRect(v39, *MEMORY[0x1E695F058]) && (v38.y = v12 + v16, v40.origin.x = v37 + v25, v40.origin.y = v36 + v23, v40.size.width = v35 - (v25 + v27), v40.size.height = v29, v38.x = v10, CGRectContainsPoint(v40, v38)))
  {
    v33 = 1;
  }

  else
  {
LABEL_7:
    v33 = 0;
  }

  return v33;
}

- (id)complimentaryIndexPathForConversationAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section] == 5)
  {
    v5 = 2;
LABEL_5:
    v6 = [(CKConversationListCollectionViewController *)self dataSource];
    v7 = [v6 itemIdentifierForIndexPath:v4];

    v8 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v7];
    v9 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v8 inSection:v5];
    v10 = [(CKConversationListCollectionViewController *)self dataSource];
    v11 = [v10 indexPathForItemIdentifier:v9];

    goto LABEL_7;
  }

  if ([v4 section] == 2)
  {
    v5 = 5;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)_performTranscriptPushForItemAtIndexPath:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "User attempted to select a converstion, but they are already dragging another conversation. Ignoring.", &v33, 2u);
      }
    }

    v8 = [(CKConversationListCollectionViewController *)self collectionView];
    [v8 deselectItemAtIndexPath:v6 animated:0];

    goto LABEL_38;
  }

  v9 = [(CKConversationListCollectionViewController *)self editingMode];
  v10 = [v6 section] == 4 || objc_msgSend(v6, "section") == 2 || objc_msgSend(v6, "section") == 5;
  if (v9 == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKConversationListCollectionViewController editingMode](self, "editingMode")}];
        v33 = 138412290;
        v34 = v12;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "multi-select: not showing conversation - currently under editing mode: %@", &v33, 0xCu);
      }
    }

    goto LABEL_38;
  }

  if (v10)
  {
    v13 = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
    v14 = [(CKConversationListCollectionViewController *)self dataSource];
    v15 = [v14 indexPathForItemIdentifier:v13];

    if (([v6 isEqual:v15] & 1) == 0)
    {
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 postNotificationName:@"CKConversationListSelectionDidChangeNotification" object:self];

      if ([MEMORY[0x1E69A8090] messageSummarizationEnabled])
      {
        v17 = [(CKConversationListCollectionViewController *)self splitViewController];
        v18 = [v17 isCollapsed];

        if (v18)
        {
          v19 = v6;
        }

        else
        {
          v19 = v15;
        }

        [(CKConversationListCollectionViewController *)self _consumeSummaryForConversationAtIndexPathIfNeeded:v19];
      }
    }

    v20 = [(CKConversationListCollectionViewController *)self dataSource];
    v21 = [v20 itemIdentifierForIndexPath:v6];

    if (CKIsRunningInMacCatalyst())
    {
      v22 = [(CKConversationListCollectionViewController *)self lastUserSelectedConversationTime];
      if (v22)
      {
        v23 = [(CKConversationListCollectionViewController *)self lastUserSelectedConversationItemIdentifier];
        v24 = [v21 isEqualToString:v23];

        if (v24)
        {
          v25 = [(CKConversationListCollectionViewController *)self lastUserSelectedConversationTime];
          [v25 timeIntervalSinceNow];
          v27 = v26;

          if (fabs(v27) < cellDoubleClickInterval())
          {
            v28 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:v6];
            v29 = [(CKConversationListCollectionViewController *)self delegate];
            [v29 showConversationInNewWindow:v28];
          }
        }
      }

      if (!v4)
      {
        [(CKConversationListCollectionViewController *)self _showConversationWithComposition:0 atIndexPath:v6];
        [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:v21];
LABEL_37:

        goto LABEL_38;
      }

      v30 = [MEMORY[0x1E695DF00] date];
      [(CKConversationListCollectionViewController *)self setLastUserSelectedConversationTime:v30];
    }

    [(CKConversationListCollectionViewController *)self _showConversationWithComposition:0 atIndexPath:v6];
    [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:v21];
    if (v4)
    {
      [(CKConversationListCollectionViewController *)self setLastUserSelectedConversationItemIdentifier:v21];
    }

    goto LABEL_37;
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "section")}];
      v33 = 138412290;
      v34 = v32;
      _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "multi-select: not showing conversation - section is invalid: %@", &v33, 0xCu);
    }
  }

LABEL_38:
}

- (void)_consumeSummaryForConversationAtIndexPathIfNeeded:(id)a3
{
  v5 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:a3];
  v3 = [v5 chat];
  v4 = [v3 chatSummary];

  if (v4)
  {
    [v3 consumeSummaryIfNeeded];
  }
}

- (void)_consumeSummaryOnUnreadCountChangeForChatIfNeeded:(id)a3
{
  v7 = a3;
  if (![v7 unreadMessageCount])
  {
    v4 = [(CKConversationListCollectionViewController *)self splitViewController];
    v5 = [v4 isCollapsed];

    if (v5)
    {
      v6 = [v7 chatSummary];

      if (v6)
      {
        [v7 consumeSummaryIfNeeded];
      }
    }
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(CKConversationListCollectionViewController *)self collectionView];
      v10 = [v9 indexPathsForSelectedItems];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "multi-select: didDeselectItemAtIndexPath. SelectedIndexPaths: %@", &v11, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self _updateToolbarItems];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updatedSelectedIndexPathCount object:0];
  [(CKConversationListCollectionViewController *)self performSelector:sel__updatedSelectedIndexPathCount withObject:0 afterDelay:0.0];
}

- (void)_updatedSelectedIndexPathCount
{
  v5 = [(CKConversationListCollectionViewController *)self delegate];
  v3 = [(CKConversationListCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  [v5 conversationListUpdatedSelectedIndexPathCount:{objc_msgSend(v4, "count")}];
}

- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v9 = "Not allowing the collection view to begin multiple selection interaction as we have an active pinned conversation drop session";
        v10 = &v15;
LABEL_13:
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if ([v7 section] == 5)
  {
    if ([(CKConversationListCollectionViewController *)self editingMode]!= 2)
    {
      v11 = 1;
      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 0;
        v9 = "Not allowing the collection view to begin multiple selection interaction as we are pin edit mode";
        v10 = &v13;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Not allowing the collection view to begin multiple selection interaction as the interaction is not on the active conversations section";
      v10 = buf;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Call to -didBeginMultipleSelectionInteractionAtIndexPath for indexPath {%@}.", &v19, 0xCu);
    }
  }

  v9 = [v7 section];
  v10 = [(CKConversationListCollectionViewController *)self sectionHasSelectableConversations:v9];
  v11 = [(CKConversationListCollectionViewController *)self dataSource];
  v12 = [v11 snapshot];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v14 = [v12 numberOfItemsInSection:v13];

  if ([v7 item] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "item") >= v14)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListCollectionViewController collectionView:didBeginMultipleSelectionInteractionAtIndexPath:];
    }

    goto LABEL_13;
  }

  if (v10 && ([(CKConversationListCollectionViewController *)self isEditing]& 1) == 0 && ![(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
  {
    [(CKConversationListCollectionViewController *)self setEditingMode:1 animated:CKIsRunningInMacCatalyst() == 0 shouldInvalidateCellLayout:0];
    v15 = [(CKConversationListCollectionViewController *)self collectionView];
    [v15 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];

    v16 = [(CKConversationListCollectionViewController *)self delegate];
    v17 = [(CKConversationListCollectionViewController *)self collectionView];
    v18 = [v17 indexPathsForSelectedItems];
    -[NSObject conversationListDidBeginMultipleSelectionWithInitialSelectedCount:](v16, "conversationListDidBeginMultipleSelectionWithInitialSelectedCount:", [v18 count]);

LABEL_13:
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v11 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 willDisplayCell];
  }

  [(CKConversationListCollectionViewController *)self _infiniteScrollReachedIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v11;
    v9 = [(CKConversationListCollectionViewController *)self dataSource];
    v10 = [v9 itemIdentifierForIndexPath:v7];
    [(CKConversationListCollectionViewController *)self configureAppEntityForConversationCell:v8 forItemIdentifier:v10];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v6 pinnedConversationView];
    [v5 didEndDisplaying];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 didEndDisplaying];
    }
  }
}

- (void)_infiniteScrollReachedIndexPath:(id)a3
{
  v14 = a3;
  if ([v14 section] == 5)
  {
    v4 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:v14];
    if (v4)
    {
      v5 = [(CKConversationListCollectionViewController *)self dataSource];
      v6 = [(CKConversationListCollectionViewController *)self collectionView];
      v7 = [v5 collectionView:v6 numberOfItemsInSection:{objc_msgSend(v14, "section")}];
      v8 = v7 - [v14 row];

      v9 = [(CKConversationListCollectionViewController *)self conversationList];
      v10 = [v9 scrollingController];
      v11 = [v4 chat];
      v12 = [v11 lastFinishedMessageDate];
      v13 = [(CKConversationListCollectionViewController *)self activeFilterModes];
      [v10 reachedConversationWithLastMessageDate:v12 filterModes:v13 remainingRows:v8];
    }
  }
}

- (BOOL)isSearchActive
{
  v2 = [(CKConversationListCollectionViewController *)self searchController];
  v3 = [v2 isActive];

  return v3;
}

- (BOOL)isSearchActiveAndDisplayingResultsForSearchText
{
  if (![(CKConversationListCollectionViewController *)self isSearchActive])
  {
    return 0;
  }

  v3 = [(CKConversationListCollectionViewController *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 text];
  v6 = [v5 length];

  if (!v6)
  {
    return 0;
  }

  v7 = [(CKConversationListCollectionViewController *)self searchResultsController];
  v8 = [v7 conversationSearchHasResult];

  return v8;
}

- (void)searchControllerFindNext
{
  v2 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v2 findNext];
}

- (void)searchControllerFindPrevious
{
  v2 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v2 findPrevious];
}

- (void)beginFindFromEditMenu
{
  v3 = [(CKConversationListCollectionViewController *)self searchController];
  if (v3)
  {
    v4 = v3;
    v5 = [(CKConversationListCollectionViewController *)self searchController];
    v6 = [v5 searchBar];

    if (v6)
    {
      [(CKConversationListCollectionViewController *)self setMacShouldShowZKWSearch:1];
      if (-[CKConversationListCollectionViewController isBelowMacSnapToMinWidth](self, "isBelowMacSnapToMinWidth") && (-[CKConversationListCollectionViewController navigationItem](self, "navigationItem"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[CKConversationListCollectionViewController navigationItem](self, "navigationItem"), v9 = objc_claimAutoreleasedReturnValue(), [v9 searchController], v10 = objc_claimAutoreleasedReturnValue(), -[CKConversationListCollectionViewController searchController](self, "searchController"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v8, v10 != v11))
      {
        v12 = [(CKConversationListCollectionViewController *)self searchController];
        v13 = [(CKConversationListCollectionViewController *)self navigationItem];
        [v13 setSearchController:v12];

        v15 = [(CKConversationListCollectionViewController *)self searchController];
        v14 = [v15 searchBar];
        [v14 performSelector:sel_becomeFirstResponder withObject:0 afterDelay:0.05];
      }

      else
      {
        v15 = [(CKConversationListCollectionViewController *)self searchController];
        v14 = [v15 searchBar];
        [v14 becomeFirstResponder];
      }
    }
  }
}

- (void)performSearch:(id)a3 completion:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (v15)
  {
    v7 = [(CKConversationListCollectionViewController *)self collectionView];
    [v7 __ck_scrollToTop:1];

    v8 = [(CKConversationListCollectionViewController *)self searchController];
    [v8 setActive:1];

    v9 = [(CKConversationListCollectionViewController *)self searchResultsController];
    [v9 logActivationViaSpotlight];

    v10 = [(CKConversationListCollectionViewController *)self searchController];
    v11 = [v10 searchBar];
    [v11 setText:v15];

    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v12 = [(CKConversationListCollectionViewController *)self searchController];
    v13 = [v12 searchBar];
    [v13 setText:0];

    v14 = [(CKConversationListCollectionViewController *)self searchController];
    [v14 setActive:0];

    ck_dispatch_main_after_seconds(v6, 0.0);
  }
}

- (id)preferredFocusEnvironments
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKConversationListCollectionViewController *)self _itemIdentifierOfDefaultConversation];
  v5 = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  if ([v7 length])
  {
    v8 = [(CKConversationListCollectionViewController *)self dataSource];
    v9 = [v8 indexPathForItemIdentifier:v7];

    v10 = [(CKConversationListCollectionViewController *)self collectionView];
    v11 = [v10 cellForItemAtIndexPath:v9];

    if (v11)
    {
      [v3 addObject:v11];
    }
  }

  return v3;
}

- (BOOL)sectionHasActionableConversations:(unint64_t)a3
{
  if (a3 - 5 < 2)
  {
    return 1;
  }

  if (a3 == 4)
  {
    return CKIsRunningInMacCatalyst() != 0;
  }

  return a3 == 2;
}

- (BOOL)contextMenuInteractionShouldBeginAtIndexPath:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((![MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] || (-[CKConversationListCollectionViewController conversationAtIndexPath:](self, "conversationAtIndexPath:", v4), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "chat"), v6 = objc_claimAutoreleasedReturnValue(), v5, LODWORD(v5) = objc_msgSend(v6, "allowedByScreenTime"), v6, v5)) && -[CKConversationListCollectionViewController sectionHasActionableConversations:](self, "sectionHasActionableConversations:", objc_msgSend(v4, "section")))
  {
    v7 = +[CKAdaptivePresentationController sharedInstance];
    v8 = [v7 presentedViewController];

    v9 = v8 == 0;
    if (v8 && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Not presenting context menu because presenting viewController: %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v10 firstObject];
  if ([(CKConversationListCollectionViewController *)self contextMenuInteractionShouldBeginAtIndexPath:v11])
  {
    v12 = [(CKConversationListCollectionViewController *)self dataSource];
    v13 = [v12 itemIdentifierForIndexPath:v11];

    v14 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v13];
    if (v14)
    {
      if ([v10 count] < 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = [v10 containsObject:v11];
      }

      if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
      {
        v18 = [(CKConversationListCollectionViewController *)self recentlyDeletedContextMenuForCollectionView:v9 indexPaths:v10 point:x, y];
      }

      else if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
      {
        v18 = [(CKConversationListCollectionViewController *)self spamContextMenuForCollectionView:v9 indexPaths:v10 point:x, y];
      }

      else
      {
        if (v15)
        {
          [(CKConversationListCollectionViewController *)self _multipleSelectionMenuInCollectionView:v9 indexPaths:v10 point:x, y];
        }

        else
        {
          [(CKConversationListCollectionViewController *)self _singleSelectionMenuInCollectionView:v9 indexPaths:v10 point:x, y];
        }
        v18 = ;
      }

      v19 = v18;
      if (v18)
      {
        v20 = [(CKConversationListCollectionViewController *)self _previewProviderForConversation:v14];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __112__CKConversationListCollectionViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke;
        aBlock[3] = &unk_1E72EC178;
        v24 = v19;
        v21 = _Block_copy(aBlock);
        v16 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:v13 previewProvider:v20 actionProvider:v21];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v26 = v11;
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController: Warning: expected conversation to create context menu for indexPath: %@, itemIdentifier: %@, returning nil context menu", buf, 0x16u);
        }
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_previewProviderForConversation:(id)a3
{
  v4 = a3;
  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    v5 = 0;
  }

  else
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 supportsOrbPreviewsInConversationList];

    if (v7)
    {
      v8 = [v4 limitToLoad];
      v9 = +[CKUIBehavior sharedBehaviors];
      v10 = [v9 defaultConversationViewingMessageCount];

      if (v10 >= v8)
      {
        v10 = v8;
      }

      v11 = +[CKUIBehavior sharedBehaviors];
      v12 = [v11 initialConversationViewingMessageCount];

      if (v10 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      [v4 setLoadedMessageCount:v13];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78__CKConversationListCollectionViewController__previewProviderForConversation___block_invoke;
      v16[3] = &unk_1E72F5300;
      v16[4] = self;
      v17 = v4;
      v14 = _Block_copy(v16);
    }

    else
    {
      v14 = 0;
    }

    v5 = _Block_copy(v14);
  }

  return v5;
}

CKTranscriptPreviewController *__78__CKConversationListCollectionViewController__previewProviderForConversation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 frame];
  v4 = v3;

  [*(a1 + 32) systemMinimumLayoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 32) view];
  v14 = [v13 effectiveUserInterfaceLayoutDirection];
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v8;
  }

  if (!v14)
  {
    v8 = v12;
  }

  v16 = [[CKTranscriptPreviewController alloc] initWithConversation:*(a1 + 40) transcriptWidth:v4 layoutMargins:v6, v15, v10, v8];

  return v16;
}

- (void)_deselectSelectedIndexPathsInCollectionView:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 indexPathsForSelectedItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__CKConversationListCollectionViewController__deselectSelectedIndexPathsInCollectionView_animated___block_invoke;
  v8[3] = &unk_1E72F5328;
  v9 = v5;
  v10 = a4;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (id)_previewForHighlightingOrDismissingContextMenuWithConfiguration:(id)a3 indexPath:(id)a4 collectionView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[CKUIBehavior sharedBehaviors];
  if (([v10 supportsOrbPreviewsInConversationList] & 1) == 0)
  {

    goto LABEL_9;
  }

  v11 = [v7 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_9:
    v21 = 0;
    goto LABEL_27;
  }

  v13 = [v9 cellForItemAtIndexPath:v8];
  if (!v13)
  {
LABEL_25:
    v21 = 0;
    goto LABEL_26;
  }

  if ([v8 section] == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = v13;
    v15 = [v14 pinnedConversationView];
    v16 = [v15 avatarView];

    v17 = [v16 _window];

    if (v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      v19 = [MEMORY[0x1E69DC728] bezierPath];
      [v18 setShadowPath:v19];

      v20 = [MEMORY[0x1E69DC888] clearColor];
      [v18 setBackgroundColor:v20];

      v21 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v16 parameters:v18];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Not using the avatar view as the context menu preview because the avatar view is not in a window", buf, 2u);
        }
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v24 = [v23 isConversationListRefreshEnabled];

  if ((v24 & 1) != 0 || v21)
  {
    goto LABEL_26;
  }

  v25 = [v13 _window];

  if (!v25)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *v32 = 0;
        _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Returning nil for context menu preview because the cell is not in a window", v32, 2u);
      }
    }

    goto LABEL_25;
  }

  v26 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v27 = +[CKUIBehavior sharedBehaviors];
  v28 = [v27 theme];
  v29 = [v28 conversationListCellPreviewBackgroundColor];
  [v26 setBackgroundColor:v29];

  v21 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v13 parameters:v26];
LABEL_26:

LABEL_27:

  return v21;
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 identifier];
  v12 = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];

  if (!v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(CKConversationListCollectionViewController *)self setItemIdentifiersForVisibleContextMenuInteractions:v13];
  }

  v14 = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];
  [v14 addObject:v11];

  [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v11 animated:1];
  v15 = [(CKConversationListCollectionViewController *)self _previewForHighlightingOrDismissingContextMenuWithConfiguration:v9 indexPath:v8 collectionView:v10];

  return v15;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 previewViewController];
  objc_initWeak(&location, self);
  v12 = [v11 childViewControllers];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(CKConversationListCollectionViewController *)self editingMode];
    v15 = [(CKConversationListCollectionViewController *)self editingMode];
    v16 = v14 == 1;
    LODWORD(v13) = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __119__CKConversationListCollectionViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
  v21[3] = &unk_1E72F5350;
  v27 = v16;
  v17 = v9;
  v22 = v17;
  v23 = self;
  v18 = v8;
  v24 = v18;
  objc_copyWeak(&v26, &location);
  v28 = v13;
  v19 = v11;
  v25 = v19;
  [v10 addAnimations:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __119__CKConversationListCollectionViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke_2;
  v20[3] = &unk_1E72EBA18;
  v20[4] = self;
  [v10 addCompletion:v20];
  [v10 setPreferredCommitStyle:v13];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __119__CKConversationListCollectionViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v6 = [*(a1 + 32) identifier];
    v2 = [*(a1 + 40) dataSource];
    v3 = [v2 indexPathForItemIdentifier:v6];

    [*(a1 + 48) selectItemAtIndexPath:v3 animated:1 scrollPosition:0];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _updateToolbarItems];
  }

  else
  {
    if (*(a1 + 73) != 1)
    {
      return;
    }

    v5 = [*(a1 + 56) childViewControllers];
    v6 = [v5 firstObject];

    v3 = [v6 conversation];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1088));
    [WeakRetained showConversation:v3 animate:1];
  }
}

void __119__CKConversationListCollectionViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__CKConversationListCollectionViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke_3;
  block[3] = &unk_1E72EBA18;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __119__CKConversationListCollectionViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1088));
  v3 = [WeakRetained chatController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 1088));
    v6 = [v5 chatController];

    [v6 showKeyboardForReply];
  }
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v9 = [a4 identifier];
  v6 = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(CKConversationListCollectionViewController *)self setItemIdentifiersForVisibleContextMenuInteractions:v7];
  }

  v8 = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];
  [v8 addObject:v9];

  [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v9 animated:1];
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__CKConversationListCollectionViewController_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke_2;
  aBlock[3] = &unk_1E72EE0D0;
  v11 = v9;
  v15 = v11;
  objc_copyWeak(&v16, &location);
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v10)
  {
    [v10 addAnimations:&__block_literal_global_434_0];
    [v10 addCompletion:v13];
  }

  else
  {
    (*(v12 + 2))(v12);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __117__CKConversationListCollectionViewController_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identifier];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained itemIdentifiersForVisibleContextMenuInteractions];
    [v5 removeObject:v3];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 updateContentsOfCellWithItemIdentifier:v3 animated:1];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __117__CKConversationListCollectionViewController_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke_2_cold_1(v2, v7);
    }
  }

  if (!CKIsRunningInMacCatalyst())
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 conversationToUnpinPendingOrbDismissal];

    v10 = MEMORY[0x1E69A5A18];
    if (v9)
    {
      v11 = objc_loadWeakRetained((a1 + 40));
      [v11 setPinningInteractionMethod:4];

      v12 = objc_loadWeakRetained((a1 + 40));
      v13 = [v12 conversationToUnpinPendingOrbDismissal];
      [v12 unpinConversation:v13 withReason:*v10];

      v14 = objc_loadWeakRetained((a1 + 40));
      [v14 setConversationToUnpinPendingOrbDismissal:0];
    }

    v15 = objc_loadWeakRetained((a1 + 40));
    v16 = [v15 conversationToPinPendingOrbDismissal];

    if (v16)
    {
      v17 = objc_loadWeakRetained((a1 + 40));
      [v17 setPinningInteractionMethod:4];

      v18 = objc_loadWeakRetained((a1 + 40));
      v19 = [v18 conversationToPinPendingOrbDismissal];
      [v18 pinConversation:v19 withReason:*v10];

      v20 = objc_loadWeakRetained((a1 + 40));
      [v20 setConversationToPinPendingOrbDismissal:0];
    }
  }
}

- (id)_multipleSelectionMenuInCollectionView:(id)a3 indexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v27[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __102__CKConversationListCollectionViewController__multipleSelectionMenuInCollectionView_indexPaths_point___block_invoke;
  v24[3] = &unk_1E72F5378;
  v24[4] = self;
  v12 = v11;
  v25 = v12;
  v13 = v9;
  v26 = v13;
  [v13 enumerateObjectsUsingBlock:v24];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v15 = [(CKConversationListCollectionViewController *)self _markAsActionForConversations:v12];
  v16 = [(CKConversationListCollectionViewController *)self _muteActionConversations:v12];
  v17 = [(CKConversationListCollectionViewController *)self recoverableDeleteContextMenuActionWithConversations:v12 collectionView:v10 indexPaths:v13 point:x, y];

  if (v15)
  {
    [v14 addObject:v15];
  }

  if (v16)
  {
    [v14 addObject:v16];
  }

  if (v17)
  {
    v18 = MEMORY[0x1E69DCC60];
    v27[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v20 = [v18 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v19];

    [v14 addObject:v20];
  }

  v21 = [(CKConversationListCollectionViewController *)self generateInternalMenuIfAllowedForConversations:v12];
  if (v21)
  {
    [v14 addObject:v21];
  }

  if ([v14 count])
  {
    v22 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v14];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __102__CKConversationListCollectionViewController__multipleSelectionMenuInCollectionView_indexPaths_point___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) conversationAtIndexPath:v3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | No conversation for selected index path: %@", &v7, 0xCu);
    }
  }
}

- (id)_singleSelectionMenuInCollectionView:(id)a3 indexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v65 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v9 = a4;
  if ([v9 count] == 1)
  {
    v56 = [v9 firstObject];
    v10 = [(CKConversationListCollectionViewController *)self dataSource];
    v55 = [v10 itemIdentifierForIndexPath:v56];

    v11 = [(CKConversationListCollectionViewController *)self collectionView];
    v48 = [v11 cellForItemAtIndexPath:v56];

    v53 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v55];
    v62 = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    v12 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
    v52 = [(CKConversationListCollectionViewController *)self recoverableDeleteContextMenuActionWithConversations:v54 collectionView:v57 indexPaths:v9 point:x, y];
    if ([v56 section] == 4 && -[CKConversationListCollectionViewController sectionHasActionableConversations:](self, "sectionHasActionableConversations:", 4))
    {
      v13 = MEMORY[0x1E69DCC60];
      v61 = v52;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      v15 = [v13 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v14];

      [v12 addObject:v15];
LABEL_27:

      v58 = v53;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
      v28 = [(CKConversationListCollectionViewController *)self generateInternalMenuIfAllowedForConversations:v27];

      if (v28)
      {
        [v12 addObject:v28];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v30 = [WeakRetained chatController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v32 = objc_loadWeakRetained(&self->_delegate);
        v33 = [v32 chatController];

        v34 = [v33 entryView];
        v35 = [v34 contentView];
        v36 = [v35 textView];

        v37 = objc_opt_new();
        [v36 setPasteConfiguration:v37];
      }

      if ([v12 count])
      {
        v17 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v12];
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_35;
    }

    v15 = [(CKConversationListCollectionViewController *)self _pinActionForItemIdentifier:v55];
    v51 = [(CKConversationListCollectionViewController *)self _markAsActionForConversations:v54];
    v50 = [(CKConversationListCollectionViewController *)self _muteActionConversations:v54];
    v49 = [(CKConversationListCollectionViewController *)self _openConversationInNewWindowActionForItemIdentifier:v55];
    if (CKIsRunningInMacCatalyst())
    {
      if (v15)
      {
        v18 = MEMORY[0x1E69DCC60];
        v60 = v15;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
        v20 = [v18 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v19];

        [v12 addObject:v20];
      }

      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = v21;
      if (v51)
      {
        [v21 addObject:v51];
      }

      if (v50)
      {
        [v22 addObject:v50];
      }

      v23 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v22];
      [v12 addObject:v23];
      [v22 removeAllObjects];
      v24 = [(CKConversationListCollectionViewController *)self _conversationDetailsActionForItemIdentifier:v55 withCell:v48];
      if (v49)
      {
        [v22 addObject:v49];
      }

      if (v24)
      {
        [v22 addObject:v24];
      }

      v25 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v22];
      [v12 addObject:v25];
      [v22 removeAllObjects];
      if (v52)
      {
        [v22 addObject:v52];
      }

      v26 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v22];
      [v12 addObject:v26];
    }

    else
    {
      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = v39;
      if (v15)
      {
        [v39 addObject:v15];
      }

      if (v51)
      {
        [v22 addObject:v51];
      }

      if (v50)
      {
        [v22 addObject:v50];
      }

      if (v49)
      {
        [v22 addObject:v49];
      }

      if (v52)
      {
        [v22 addObject:v52];
      }

      v23 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v22];
      [v12 addObject:v23];
      v40 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v41 = [v40 isInboxSummaryEnabled];

      if (!v41)
      {
        goto LABEL_26;
      }

      v24 = [v53 chat];
      v25 = [v24 chatSummary];
      if (!v25)
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v42 = [v53 chat];
      v26 = [(CKConversationListCollectionViewController *)self reportConcernForChat:v42];

      v45 = MEMORY[0x1E69DCC60];
      v47 = CKFrameworkBundle();
      v46 = [v47 localizedStringForKey:@"SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
      v59 = v26;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      v44 = [v45 menuWithTitle:v46 image:0 identifier:0 options:1 children:v43];

      [v12 addObject:v44];
    }

    goto LABEL_25;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v64 = v9;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | Unexpected indexPaths count. Expecting 1. Got indexPaths: %@", buf, 0xCu);
    }
  }

  v17 = 0;
LABEL_35:

  return v17;
}

- (id)_markAsActionForConversations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(CKConversationListCollectionViewController *)self _conversationsEligibleForReadStateToggle:v4];
    if ([v5 count])
    {
      v6 = [(CKConversationListCollectionViewController *)self _hasReadAllConversations:v5];
      if (v6)
      {
        v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message.badge"];
        v8 = [v5 count];
        v9 = CKFrameworkBundle();
        if (v8 > 1)
        {
          v10 = @"MARK_AS_UNREAD_PLURAL";
        }

        else
        {
          v10 = @"MARK_AS_UNREAD";
        }
      }

      else
      {
        v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.message"];
        v12 = [v5 count];
        v9 = CKFrameworkBundle();
        if (v12 >= 2)
        {
          v10 = @"MARK_AS_READ_PLURAL";
        }

        else
        {
          v10 = @"MARK_AS_READ";
        }
      }

      v13 = [v9 localizedStringForKey:v10 value:&stru_1F04268F8 table:@"ChatKit"];

      objc_initWeak(&location, self);
      v14 = MEMORY[0x1E69DC628];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__CKConversationListCollectionViewController__markAsActionForConversations___block_invoke;
      v16[3] = &unk_1E72F53A0;
      objc_copyWeak(&v18, &location);
      v17 = v4;
      v19 = v6;
      v11 = [v14 actionWithTitle:v13 image:v7 identifier:0 handler:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
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

void __76__CKConversationListCollectionViewController__markAsActionForConversations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateConversations:*(a1 + 32) asRead:(*(a1 + 48) & 1) == 0];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 updateContentsOfAllCellsAnimated:1];
}

- (BOOL)_hasReadAllConversations:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasUnreadMessages])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (id)_conversationsEligibleForReadStateToggle:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__CKConversationListCollectionViewController__conversationsEligibleForReadStateToggle___block_invoke;
  v8[3] = &unk_1E72ED4A0;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __87__CKConversationListCollectionViewController__conversationsEligibleForReadStateToggle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 canReadStateBeToggled])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)_pinActionForItemIdentifier:(id)a3
{
  v4 = a3;
  if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
  {
    v5 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v4];
    if (v5)
    {
      v6 = [(CKConversationListCollectionViewController *)self dataSource];
      v7 = [v6 indexPathForItemIdentifier:v4];

      v8 = [v7 section];
      v9 = v8 == 2;
      if (v9 != [v5 isPinned])
      {
        v10 = IMLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(CKConversationListCollectionViewController *)v5 _pinActionForItemIdentifier:v10];
        }
      }

      v11 = CKFrameworkBundle();
      v12 = v11;
      if (v8 == 2)
      {
        v13 = @"UNPIN_ACTION";
      }

      else
      {
        v13 = @"PIN_ACTION";
      }

      if (v8 == 2)
      {
        v14 = @"pin.slash";
      }

      else
      {
        v14 = @"pin";
      }

      v15 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit"];

      v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:v14];
      objc_initWeak(&location, self);
      v17 = MEMORY[0x1E69DC628];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __74__CKConversationListCollectionViewController__pinActionForItemIdentifier___block_invoke;
      v20[3] = &unk_1E72F53A0;
      objc_copyWeak(&v22, &location);
      v23 = v9;
      v21 = v5;
      v18 = [v17 actionWithTitle:v15 image:v16 identifier:0 handler:v20];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __74__CKConversationListCollectionViewController__pinActionForItemIdentifier___block_invoke(uint64_t a1)
{
  if (CKIsRunningInMacCatalyst())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setPinningInteractionMethod:4];

    LODWORD(WeakRetained) = *(a1 + 48);
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x1E69A5A18];
    v9 = v3;
    if (WeakRetained == 1)
    {
      [v3 unpinConversation:v4 withReason:v5];
    }

    else
    {
      [v3 pinConversation:v4 withReason:v5];
    }
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = v8;
    if (v6 == 1)
    {
      [v8 setConversationToUnpinPendingOrbDismissal:v7];
    }

    else
    {
      [v8 setConversationToPinPendingOrbDismissal:v7];
    }
  }
}

- (id)_muteActionConversations:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self _conversationsEligibleForMute:v4];
  if (![v5 count])
  {
    v11 = 0;
    goto LABEL_14;
  }

  v6 = [(CKConversationListCollectionViewController *)self _hasAlertsEnabledForAllConversations:v5];
  v7 = CKIsRunningInMacCatalyst();
  v8 = CKFrameworkBundle();
  v9 = v8;
  if (v7)
  {
    v10 = [v8 localizedStringForKey:@"CONVERSATION_LIST_CONTEXT_MENU_MAC_HIDE_ALERTS_TOGGLE_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v6)
    {
      v10 = [v8 localizedStringForKey:@"CONVERSATION_LIST_CONTEXT_MENU_SHOW_ALERTS_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_10:
      v12 = @"bell";
      goto LABEL_11;
    }

    v10 = [v8 localizedStringForKey:@"CONVERSATION_LIST_CONTEXT_MENU_HIDE_ALERTS_ACTION_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v12 = @"bell.slash";
LABEL_11:
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:v12];
  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69DC628];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __71__CKConversationListCollectionViewController__muteActionConversations___block_invoke;
  v20 = &unk_1E72F53A0;
  objc_copyWeak(&v22, &location);
  v21 = v5;
  v23 = v6;
  v15 = [v14 actionWithTitle:v10 image:v13 identifier:0 handler:&v17];
  if (CKIsRunningInMacCatalyst())
  {
    [v15 setState:{!v6, v17, v18, v19, v20}];
  }

  v11 = v15;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

LABEL_14:

  return v11;
}

void __71__CKConversationListCollectionViewController__muteActionConversations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateConversations:*(a1 + 32) alertsHidden:*(a1 + 48)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 updateContentsOfAllCellsAnimated:1];
}

- (BOOL)_hasAlertsEnabledForAllConversations:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) isMuted])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (id)_conversationsEligibleForMute:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__CKConversationListCollectionViewController__conversationsEligibleForMute___block_invoke;
  v8[3] = &unk_1E72ED4A0;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __76__CKConversationListCollectionViewController__conversationsEligibleForMute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 canMuteStateBeToggled])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_updateConversations:(id)a3 alertsHidden:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__CKConversationListCollectionViewController__updateConversations_alertsHidden___block_invoke;
  v4[3] = &__block_descriptor_33_e31_v32__0__CKConversation_8Q16_B24l;
  v5 = a4;
  [a3 enumerateObjectsUsingBlock:v4];
}

void __80__CKConversationListCollectionViewController__updateConversations_alertsHidden___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = MEMORY[0x1E695DF00];
    v3 = a2;
    v4 = [v2 distantFuture];
    [v3 setMutedUntilDate:?];
  }

  else
  {
    v4 = a2;
    [v4 unmute];
  }
}

- (id)_deleteConversationActionForItemIdentifier:(id)a3 withCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];
  v9 = v8;
  if (v8 && [v8 isUserDeletable])
  {
    v10 = CKIsRunningInMacCatalyst();
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v10)
    {
      v13 = @"DELETE_ELLIPSIS";
    }

    else
    {
      v13 = @"DELETE";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit"];

    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    objc_initWeak(&location, self);
    v16 = MEMORY[0x1E69DC628];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __98__CKConversationListCollectionViewController__deleteConversationActionForItemIdentifier_withCell___block_invoke;
    v22 = &unk_1E72EBFC0;
    v23 = v7;
    objc_copyWeak(&v25, &location);
    v24 = v6;
    v17 = [v16 actionWithTitle:v14 image:v15 identifier:0 handler:&v19];
    if (!CKIsRunningInMacCatalyst())
    {
      [v17 setAttributes:{2, v19, v20, v21, v22, v23}];
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __98__CKConversationListCollectionViewController__deleteConversationActionForItemIdentifier_withCell___block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSourceView:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained deleteButtonTappedForItemIdentifier:*(a1 + 40) completionHandler:0 cellToUpdate:*(a1 + 32) alertsDisplayConfiguration:v3];
}

- (void)deleteButtonTappedForCell:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [v7 itemIdentifierForIndexPath:v6];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "[Requests] Delete button pressed on item-identifier %@, indexPath: %@", &v11, 0x16u);
    }
  }

  v10 = objc_opt_new();
  [(CKConversationListCollectionViewController *)self deleteButtonTappedForItemIdentifier:v8 completionHandler:0 cellToUpdate:v4 alertsDisplayConfiguration:v10];
}

- (void)acceptButtonTappedForCell:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [v7 itemIdentifierForIndexPath:v6];

  v9 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v8];
  v10 = [v9 chat];
  [v10 markAsKnownAndSaveInContacts:1 completion:0];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "[Requests] Accept button pressed on item-identifier: %@, indexPath: %@", &v12, 0x16u);
    }
  }

  [(CKConversationListCollectionViewController *)self beginHoldingConversationInConversationListIfNeeded:v9];
  [v4 invalidateIntrinsicContentSize];
}

- (id)_openConversationInNewWindowActionForItemIdentifier:(id)a3
{
  v4 = a3;
  if ((IMSharedHelperDeviceIsiPad() & 1) != 0 || CKIsRunningInMacCatalyst())
  {
    v5 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v4];
    v6 = v5;
    if (v5 && ([v5 isPending] & 1) == 0)
    {
      if (CKIsRunningInMacCatalyst())
      {
        objc_initWeak(&location, self);
        v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.badge.plus"];
        v9 = MEMORY[0x1E69DC628];
        v10 = CKFrameworkBundle();
        v11 = [v10 localizedStringForKey:@"OPEN_IN_NEW_WINDOW" value:&stru_1F04268F8 table:@"ChatKit"];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __98__CKConversationListCollectionViewController__openConversationInNewWindowActionForItemIdentifier___block_invoke;
        v20[3] = &unk_1E72EBF48;
        objc_copyWeak(&v22, &location);
        v21 = v6;
        v7 = [v9 actionWithTitle:v11 image:v8 identifier:0 handler:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      else
      {
        v12 = [v6 activityForNewScene];
        if (v12)
        {
          v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.badge.plus"];
          v14 = MEMORY[0x1E69DC628];
          v15 = CKFrameworkBundle();
          v16 = [v15 localizedStringForKey:@"OPEN_IN_NEW_WINDOW" value:&stru_1F04268F8 table:@"ChatKit"];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __98__CKConversationListCollectionViewController__openConversationInNewWindowActionForItemIdentifier___block_invoke_2;
          v18[3] = &unk_1E72EC060;
          v19 = v12;
          v7 = [v14 actionWithTitle:v16 image:v13 identifier:0 handler:v18];
        }

        else
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [CKConversationListCollectionViewController _openConversationInNewWindowActionForItemIdentifier:];
          }

          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __98__CKConversationListCollectionViewController__openConversationInNewWindowActionForItemIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 showConversationInNewWindow:*(a1 + 32)];
}

void __98__CKConversationListCollectionViewController__openConversationInNewWindowActionForItemIdentifier___block_invoke_2(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD308]);
  [v3 setPreferredPresentationStyle:2];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 requestSceneSessionActivation:0 userActivity:*(a1 + 32) options:v3 errorHandler:0];
}

- (id)_conversationDetailsActionForItemIdentifier:(id)a3 withCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isRedesignedDetailsViewEnabled];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];
    v12 = [v11 chat];

    if (v12)
    {
      objc_initWeak(&location, self);
      v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
      v14 = MEMORY[0x1E69DC628];
      v15 = CKFrameworkBundle();
      v16 = [v15 localizedStringForKey:@"SHOW_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __99__CKConversationListCollectionViewController__conversationDetailsActionForItemIdentifier_withCell___block_invoke;
      v18[3] = &unk_1E72EC038;
      objc_copyWeak(&v21, &location);
      v19 = v6;
      v20 = v7;
      v10 = [v14 actionWithTitle:v16 image:v13 identifier:0 handler:v18];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __99__CKConversationListCollectionViewController__conversationDetailsActionForItemIdentifier_withCell___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained presentDetailsForItemIdentifier:*(a1 + 32) fromView:*(a1 + 40)];
}

- (void)presentDetailsForItemIdentifier:(id)a3 fromView:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:a3];
  v8 = [[CKDetailsControllerAdapter alloc] initWithConversation:v7];
  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isModernDetailsViewEnabled];

  if (v10)
  {
    v11 = [v7 isBusinessConversation] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [[CKDetailsNavigationController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:0 shouldHideNavigationBar:v11];
  [(CKDetailsNavigationController *)v12 setDetailsAdapter:v8];
  v13 = [(CKDetailsControllerAdapter *)v8 detailsController];
  v14 = v13;
  if (v13)
  {
    v39[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [(CKDetailsNavigationController *)v12 setViewControllers:v15];
  }

  else
  {
    [(CKDetailsNavigationController *)v12 setViewControllers:MEMORY[0x1E695E0F0]];
  }

  [(CKDetailsNavigationController *)v12 setModalPresentationStyle:7];
  [(CKDetailsNavigationController *)v12 setDelegate:v14];
  v16 = [(CKDetailsNavigationController *)v12 popoverPresentationController];
  [v16 setSourceView:v6];

  [v6 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v6 layoutMargins];
  v26 = v18 + v25;
  v28 = v20 + v27;
  v30 = v22 - (v25 + v29);
  v32 = v24 - (v27 + v31);
  v33 = [(CKDetailsNavigationController *)v12 popoverPresentationController];
  [v33 setSourceRect:{v26, v28, v30, v32}];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__CKConversationListCollectionViewController_presentDetailsForItemIdentifier_fromView___block_invoke;
  aBlock[3] = &unk_1E72EC410;
  v38 = v6;
  v34 = v6;
  v35 = _Block_copy(aBlock);
  v36 = +[CKAdaptivePresentationController sharedInstance];
  [v36 presentViewController:v12 fromViewController:self presentationHandler:v35 dismissalHandler:0 animated:1 completion:0];
}

id __87__CKConversationListCollectionViewController_presentDetailsForItemIdentifier_fromView___block_invoke(uint64_t a1, double *a2, void *a3)
{
  [*(a1 + 32) bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [*(a1 + 32) layoutMargins];
  *a2 = v7 + v14;
  a2[1] = v9 + v15;
  a2[2] = v11 - (v14 + v16);
  a2[3] = v13 - (v15 + v17);
  result = *(a1 + 32);
  *a3 = result;
  return result;
}

- (void)unpinButtonTappedForCell:(id)a3 withConversation:(id)a4
{
  v5 = a4;
  [(CKConversationListCollectionViewController *)self setPinningInteractionMethod:2];
  [(CKConversationListCollectionViewController *)self unpinConversation:v5 withReason:*MEMORY[0x1E69A5A30]];
}

- (CGRect)collectionViewBoundsForPinnedConversationCollectionViewCell:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)isDetailsNavigationControllerDetached
{
  v2 = [(CKConversationListCollectionViewController *)self delegate];
  v3 = [v2 isDetailsNavigationControllerDetached];

  return v3;
}

- (BOOL)hasDetailsNavigationController
{
  v2 = [(CKConversationListCollectionViewController *)self delegate];
  v3 = [v2 hasDetailsNavigationController];

  return v3;
}

- (void)dismissDetailsNavigationControllerWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[CKAdaptivePresentationController sharedInstance];
  [v4 dismissViewControllerAnimated:1 completion:v3];
}

- (void)dismissDetailsViewAndShowConversationList
{
  v2 = [(CKConversationListCollectionViewController *)self delegate];
  [v2 dismissDetailsControllerAnimated:1];
}

- (void)detailsAdapter:(id)a3 wantsToStageComposition:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (CKIsRunningInMacCatalyst())
  {
    v7 = [(CKConversationListCollectionViewController *)self delegate];
    [v7 dismissDetailsControllerAnimated:1];

    v8 = [v9 conversation];
    [(CKConversationListCollectionViewController *)self _showConversation:v8 withComposition:v6];
  }
}

- (void)detailsAdapterDidDismiss:(id)a3
{
  if ([(CKConversationListCollectionViewController *)self _shouldRestoreFirstResponderAfterDetailsViewDismiss])
  {

    [(CKConversationListCollectionViewController *)self becomeFirstResponder];
  }
}

- (void)detailsAdapterWantsToPresentKTContactVerificationUI:(id)a3
{
  v4 = [a3 conversation];
  [CKKeyTransparencyErrorUtilities showKTContactVerificationUIForConversation:v4 fromViewController:self];
}

- (void)pinButtonTappedForCell:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:v6];
  if (v7)
  {
    [(CKConversationListCollectionViewController *)self pinConversation:v7 withReason:*MEMORY[0x1E69A5A30]];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "The user tapped the pin button, but the conversation at index path %@ was nil.", &v9, 0xCu);
    }
  }
}

- (void)avatarHeaderWasTappedForConversation:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isRedesignedDetailsViewEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = [[CKDetailsControllerAdapter alloc] initWithConversation:v4];
    v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    v9 = [(CKDetailsControllerAdapter *)v7 detailsController];
    v10 = v9;
    if (v9)
    {
      v15[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v8 setViewControllers:v11];
    }

    else
    {
      [v8 setViewControllers:MEMORY[0x1E695E0F0]];
    }

    [v8 setModalPresentationStyle:6];
    [v8 setDelegate:v10];
    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissPresentedDetailsController_];
    v13 = [v10 navigationItem];
    [v13 setRightBarButtonItem:v12];

    v14 = [(CKConversationListCollectionViewController *)self navigationController];
    [v14 presentViewController:v8 animated:1 completion:0];
  }
}

- (BOOL)listCellIsBeingDisplayedAsGhostedCellInPinnedSection:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  v9 = 0;
  if (v6)
  {
    v7 = [v5 presentationIndexPathForDataSourceIndexPath:v6];
    v8 = [v7 section];

    if (v8 == 2)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)selectedDeleteButtonForConversation:(id)a3 inCell:(id)a4
{
  v10 = a4;
  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v10];

  if ([v6 section] == 4)
  {
    v7 = [(CKConversationListCollectionViewController *)self delegate];
    [v7 conversationListControllerTappedDeleteNewMessage:self];
  }

  else
  {
    v8 = [(CKConversationListCollectionViewController *)self dataSource];
    v7 = [v8 itemIdentifierForIndexPath:v6];

    v9 = objc_opt_new();
    [(CKConversationListCollectionViewController *)self deleteButtonTappedForItemIdentifier:v7 completionHandler:0 cellToUpdate:v10 alertsDisplayConfiguration:v9];
  }
}

- (void)togglePinStateForConversation:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    v8 = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
    v9 = v8;
    if (v8)
    {
      if ([v8 containsObject:v6])
      {
LABEL_4:
        [(CKConversationListCollectionViewController *)self unpinConversation:v6 withReason:v7];
LABEL_10:

        goto LABEL_11;
      }
    }

    else if ([v6 isPinned])
    {
      goto LABEL_4;
    }

    [(CKConversationListCollectionViewController *)self pinConversation:v6 withReason:v7];
    goto LABEL_10;
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CKConversationListCollectionViewController togglePinStateForConversation:withReason:];
  }

LABEL_11:
}

- (void)unpinConversation:(id)a3 withReason:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    if (v6)
    {
      v29 = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
      v8 = IMOSLoggingEnabled();
      if (v29)
      {
        if (v8)
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v6;
            _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "-[unpinConversation:] Pinned conversations are frozen. Removing conversation from frozenPinnedConversations: %@", buf, 0xCu);
          }
        }

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __75__CKConversationListCollectionViewController_unpinConversation_withReason___block_invoke;
        v34[3] = &unk_1E72ED3E8;
        v35 = v6;
        v10 = [v29 __imArrayByFilteringWithBlock:v34];
        [(CKConversationListCollectionViewController *)self setFrozenPinnedConversations:v10];

        [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:1];
        [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
        v11 = v35;
        goto LABEL_39;
      }

      if (v8)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v38 = v7;
          v39 = 2112;
          v40 = v6;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "-[unpinConversation:] reason: %@, conversation: %@", buf, 0x16u);
        }
      }

      v15 = [(CKConversationListCollectionViewController *)self dataSource];
      v11 = [v15 snapshot];

      v16 = [(CKConversationListCollectionViewController *)self pinnedConversationsFromSnapshot:v11];
      v28 = [v16 mutableCopy];

      v27 = [v6 pinningIdentifier];
      if ([v27 length])
      {
        v17 = [v28 count];
        [v28 removeObject:v6];
        if (v17 != [v28 count])
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v20 = v28;
          v21 = [v20 countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v21)
          {
            v22 = *v31;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v31 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = [*(*(&v30 + 1) + 8 * i) chat];
                [v19 addObject:v24];
              }

              v21 = [v20 countByEnumeratingWithState:&v30 objects:v36 count:16];
            }

            while (v21);
          }

          v25 = [MEMORY[0x1E69A5C38] sharedInstance];
          v26 = [v19 copy];
          [v25 setPinnedChats:v26 withUpdateReason:v7];

          goto LABEL_38;
        }

        if (!IMOSLoggingEnabled())
        {
LABEL_38:

LABEL_39:
          goto LABEL_40;
        }

        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v38 = v6;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Attempted to unpin conversation with identifier that was not in the pinned conversation identifier list. Ignoring. Conversation: %@", buf, 0xCu);
        }
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_38;
        }

        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v38 = v6;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Attempted to unpin conversation with nil identifier. Ignoring. Conversation: %@", buf, 0xCu);
        }
      }

      goto LABEL_38;
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Tried to unpin a nil conversation.", buf, 2u);
      }
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListCollectionViewController unpinConversation:withReason:];
    }
  }

LABEL_40:
}

uint64_t __75__CKConversationListCollectionViewController_unpinConversation_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pinningIdentifier];
  v4 = [*(a1 + 32) pinningIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1u;
}

- (void)pinConversation:(id)a3 withReason:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    if (v6)
    {
      v8 = +[CKUIBehavior sharedBehaviors];
      v9 = [v8 maximumNumberOfPinnedConversations];

      v10 = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
      v11 = v10;
      if (v10)
      {
        if ([v10 count] >= v9)
        {
          [(CKConversationListCollectionViewController *)self showCannotPinMoreConversationsAlert];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v49 = v6;
              _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "-[pinConversation:] Pinned conversations are frozen. Adding conversation to frozenPinnedConversations: %@", buf, 0xCu);
            }
          }

          v13 = [v11 arrayByAddingObject:v6];
          [(CKConversationListCollectionViewController *)self setFrozenPinnedConversations:v13];

          if (![(CKConversationListCollectionViewController *)self holdPinningUpdatesForOnboardingAnimation])
          {
            [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:1];
            [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
          }
        }
      }

      else
      {
        v16 = [(CKConversationListCollectionViewController *)self dataSource];
        v37 = [v16 snapshot];

        v17 = [(CKConversationListCollectionViewController *)self pinnedConversationsFromSnapshot:v37];
        v18 = [v17 mutableCopy];
        v19 = v18;
        v20 = MEMORY[0x1E695E0F0];
        if (v18)
        {
          v20 = v18;
        }

        v21 = v20;

        v36 = v21;
        if ([v21 count] >= v9)
        {
          [(CKConversationListCollectionViewController *)self showCannotPinMoreConversationsAlert];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v49 = v7;
              v50 = 2112;
              v51 = v6;
              _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "-[pinConversation:] reason: %@, conversation: %@", buf, 0x16u);
            }
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v23 = v21;
          v24 = [v23 countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v24)
          {
            v25 = *v43;
            while (2)
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v43 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                if (*(*(&v42 + 1) + 8 * i) == v6)
                {

                  if (IMOSLoggingEnabled())
                  {
                    v35 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v49 = v6;
                      _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "Attempted to pin conversation with identifier that was already in the pinned conversation identifier list. Ignoring. Conversation: %@", buf, 0xCu);
                    }
                  }

                  goto LABEL_47;
                }
              }

              v24 = [v23 countByEnumeratingWithState:&v42 objects:v47 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

          [v23 addObject:v6];
          v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v28 = v23;
          v29 = [v28 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v29)
          {
            v30 = *v39;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v39 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = [*(*(&v38 + 1) + 8 * j) chat];
                [v27 addObject:v32];
              }

              v29 = [v28 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v29);
          }

          v33 = [MEMORY[0x1E69A5C38] sharedInstance];
          v34 = [v27 copy];
          [v33 setPinnedChats:v34 withUpdateReason:v7];
        }

LABEL_47:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Tried to pin a nil conversation.", buf, 2u);
      }
    }
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListCollectionViewController pinConversation:withReason:];
    }
  }
}

- (void)showCannotPinMoreConversationsAlert
{
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    v3 = MEMORY[0x1E69DC650];
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"CANNOT_PIN_MORE_CONVERSATIONS_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"CANNOT_PIN_MORE_CONVERSATIONS_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [CKAlertAction actionWithTitle:v9 style:1 handler:0];
    [v12 addAction:v10];

    [(CKConversationListCollectionViewController *)self presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListCollectionViewController showCannotPinMoreConversationsAlert];
    }
  }
}

- (void)_toggleUnreadStateForSelectedConversations:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__CKConversationListCollectionViewController__toggleUnreadStateForSelectedConversations___block_invoke;
  v15[3] = &unk_1E72F3920;
  v15[4] = &v16;
  [v4 enumerateObjectsUsingBlock:v15];
  v5 = [(CKConversationListCollectionViewController *)self updater];
  [v5 beginHoldingUpdatesForReason:@"markAsRead"];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v20 = *(*(&v11 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
        [(CKConversationListCollectionViewController *)self updateConversations:v10 asRead:*(v17 + 24)];
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v21 count:16];
    }

    while (v7);
  }

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
  im_dispatch_after();
  _Block_object_dispose(&v16, 8);
}

uint64_t __89__CKConversationListCollectionViewController__toggleUnreadStateForSelectedConversations___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasUnreadMessages];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __89__CKConversationListCollectionViewController__toggleUnreadStateForSelectedConversations___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 endHoldingUpdatesForReason:@"markAsRead" updateTriggeredIfNotHeldShouldBeDeferred:1];
}

- (void)_markPinnedAndActiveConversationsAsRead
{
  v3 = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [v3 snapshot];

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v8 itemIdentifiersInSectionWithIdentifier:&unk_1F04E8010];
  [v4 addObjectsFromArray:v5];
  v6 = [v8 itemIdentifiersInSectionWithIdentifier:&unk_1F04E8028];
  [v4 addObjectsFromArray:v6];
  v7 = [(CKConversationListCollectionViewController *)self conversationsForItemIdentifiers:v4];
  [(CKConversationListCollectionViewController *)self _toggleUnreadStateForSelectedConversations:v7];
}

- (void)_markAllConversationsAsRead
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Marking all conversations as read, none were selected", buf, 2u);
    }
  }

  v4 = [MEMORY[0x1E69A8088] sharedManager];
  if ([v4 shouldFilterConversationsByFocus])
  {

LABEL_8:
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "In focus mode or assistive access, only grabbing the ones in the list as a workaround for incomplete database queries", buf, 2u);
      }
    }

    [(CKConversationListCollectionViewController *)self _markPinnedAndActiveConversationsAsRead];
    return;
  }

  v5 = [MEMORY[0x1E69A7EE8] sharedManager];
  v6 = [v5 shouldFilterIncomingMessages];

  if (v6)
  {
    goto LABEL_8;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(CKConversationListCollectionViewController *)self filterMode];
      *buf = 134217984;
      v14 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Not in a focus mode, mark as read using the database queries with filter mode (%lu)", buf, 0xCu);
    }
  }

  v10 = [(CKConversationListCollectionViewController *)self updater];
  [v10 beginHoldingUpdatesForReason:@"markAsRead"];

  [(CKConversationListCollectionViewController *)self _markPinnedAndActiveConversationsAsRead];
  v11 = [CKConversationListFilterModeUtilities filterModeChatPredicate:[(CKConversationListCollectionViewController *)self filterMode]];
  v12 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [v12 markChatsAsReadFilteredUsingPredicate:v11];

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
  im_dispatch_after();
}

void __73__CKConversationListCollectionViewController__markAllConversationsAsRead__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 endHoldingUpdatesForReason:@"markAsRead" updateTriggeredIfNotHeldShouldBeDeferred:1];
}

- (void)toggleReadButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];

  if ([v6 count])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Marking conversations as read", v9, 2u);
      }
    }

    v8 = [(CKConversationListCollectionViewController *)self conversationsAtIndexPaths:v6];
    [(CKConversationListCollectionViewController *)self _toggleUnreadStateForSelectedConversations:v8];
  }

  else
  {
    [(CKConversationListCollectionViewController *)self _markAllConversationsAsRead];
  }
}

- (void)muteConversationButtonTappedForConversationWithItemIdentifier:(id)a3 setMuted:(BOOL)a4
{
  v4 = a4;
  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:a3];
  if (v4)
  {
    v6 = [MEMORY[0x1E695DF00] distantFuture];
    [v7 setMutedUntilDate:v6];
  }

  else
  {
    [v7 unmute];
  }

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
}

- (BOOL)hasTransparentSideBar
{
  if (!CKIsRunningInMacCatalyst() || ![(CKConversationListCollectionViewController *)self macShouldShowZKWSearch])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 macApplicationMetricsGatheringEnabled];

  return v4;
}

- (void)_configureSearchBarClearButton:(BOOL)a3 searchController:(id)a4
{
  v4 = a3;
  v9 = a4;
  v5 = CKIsRunningInMacCatalyst();
  v6 = v9;
  if (v5)
  {
    v7 = [v9 searchBar];
    v8 = [v7 searchTextField];

    if (objc_opt_respondsToSelector())
    {
      [v8 _setAlwaysShowsClearButtonWhenEmpty:v4];
    }

    v6 = v9;
  }
}

- (void)willPresentSearchController:(id)a3
{
  v7 = a3;
  v4 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v4 setDismissingSearchController:0];

  if ([(CKConversationListCollectionViewController *)self hasTransparentSideBar])
  {
    v5 = [(CKConversationListCollectionViewController *)self view];
    [v5 setHidden:1];
  }

  [(CKConversationListCollectionViewController *)self _configureSearchBarClearButton:1 searchController:v7];
  v6 = [(CKConversationListCollectionViewController *)self delegate];
  [v6 conversationListControllerWillPresentSearchResultsController];

  [(CKConversationListCollectionViewController *)self _configureCatalystFiltersNavigation];
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v5 setDismissingSearchController:1];

  if ([(CKConversationListCollectionViewController *)self hasTransparentSideBar])
  {
    v6 = [(CKConversationListCollectionViewController *)self view];
    [v6 setHidden:0];
  }

  v7 = [(CKConversationListCollectionViewController *)self delegate];
  [v7 conversationListControllerWillDismissSearchResultsController];

  if ([v4 isActive])
  {
    [(CKConversationListCollectionViewController *)self reloadInputViews];
  }

  v8 = [(CKConversationListCollectionViewController *)self navigationItem];
  [v8 setBackButtonTitle:0];

  if (CKIsRunningInMacCatalyst() && [v4 isActive])
  {
    v9 = [(CKConversationListCollectionViewController *)self transitionCoordinator];
    v10 = v9;
    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __74__CKConversationListCollectionViewController_willDismissSearchController___block_invoke;
      v11[3] = &unk_1E72EC3E8;
      v11[4] = self;
      [v9 animateAlongsideTransition:v11 completion:0];
    }
  }
}

void __74__CKConversationListCollectionViewController_willDismissSearchController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateNavigationItems];
  [*(a1 + 32) _configureCatalystFiltersNavigation];
  v2 = [*(a1 + 32) collectionView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) collectionView];
  [v3 layoutIfNeeded];
}

- (void)didDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v5 setDismissingSearchController:0];

  v6 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v6 searchEnded];

  v7 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v7 logDeactivation];

  [(CKConversationListCollectionViewController *)self _configureSearchBarClearButton:0 searchController:v4];
  if (CKIsRunningInMacCatalyst())
  {
    [(CKConversationListCollectionViewController *)self setMacShouldShowZKWSearch:0];
    [(CKConversationListCollectionViewController *)self _configureCatalystFiltersNavigation];
  }

  [(CKConversationListCollectionViewController *)self updateConversationSelection];

  [(CKConversationListCollectionViewController *)self updateNavigationItems];
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v24 = 136315138;
      v25 = "[CKConversationListCollectionViewController searchBarTextDidBeginEditing:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Did tap to begin search in %s", &v24, 0xCu);
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self searchController];
  v7 = [v6 isActive];

  if ((v7 & 1) == 0)
  {
    v8 = [(CKConversationListCollectionViewController *)self searchResultsController];
    [v8 logActivationViaSearchBar];
  }

  v9 = [(CKConversationListCollectionViewController *)self navigationItem];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"SEARCH" value:&stru_1F04268F8 table:@"ChatKit"];
  [v9 setBackButtonTitle:v11];

  v12 = [(CKConversationListCollectionViewController *)self searchController];
  LOBYTE(v10) = [v12 showsSearchResultsController];

  if ((v10 & 1) == 0)
  {
    if (!CKIsRunningInMacCatalyst())
    {
      v13 = [(CKConversationListCollectionViewController *)self searchController];
      [v13 setShowsSearchResultsController:1];
    }

    v14 = [(CKConversationListCollectionViewController *)self searchController];
    v15 = [v14 searchBar];
    v16 = [v15 text];
    v17 = [v16 length] == 0;

    if (v17)
    {
      v18 = [(CKConversationListCollectionViewController *)self searchResultsController];
      [v18 searchWithText:&stru_1F04268F8];
    }
  }

  v19 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v20 = [v19 isSearchTokensEnabled];

  if (v20)
  {
    v21 = [(CKConversationListCollectionViewController *)self searchResultsController];
    [v21 setCanShowTokenSuggestions:1];
  }

  v22 = [(CKConversationListCollectionViewController *)self collectionView];
  v23 = [(CKConversationListCollectionViewController *)self indexPathOfFirstSelectedItem];
  [v22 deselectItemAtIndexPath:v23 animated:0];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  if ([a4 length])
  {
    if (!CKIsRunningInMacCatalyst())
    {
      return;
    }
  }

  else
  {
    v5 = [(CKConversationListCollectionViewController *)self searchResultsController];
    [v5 searchEnded];

    if (!CKIsRunningInMacCatalyst())
    {
      return;
    }

    if (![(CKConversationListCollectionViewController *)self macShouldShowZKWSearch])
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self searchController];
  v7 = [v6 isActive];

LABEL_7:
  v8 = [(CKConversationListCollectionViewController *)self view];
  [v8 setHidden:v7];

  v9 = [(CKConversationListCollectionViewController *)self searchController];
  [v9 setShowsSearchResultsController:v7];

  [(CKConversationListCollectionViewController *)self _configureCatalystFiltersNavigation];
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  if (CKIsRunningInMacCatalyst() && ![(CKConversationListCollectionViewController *)self macShouldShowZKWSearch])
  {
    v5 = [v4 text];
    if ([v5 length] || (-[CKConversationListCollectionViewController presentedViewController](self, "presentedViewController"), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
    }

    else
    {
      v9 = v8;
      v10 = [(CKConversationListCollectionViewController *)self presentedViewController];
      v11 = [(CKConversationListCollectionViewController *)self searchController];

      if (v10 == v11)
      {
        v12 = [(CKConversationListCollectionViewController *)self searchController];
        [(CKConversationListCollectionViewController *)self willDismissSearchController:v12];

        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __73__CKConversationListCollectionViewController_searchBarTextDidEndEditing___block_invoke;
        v13[3] = &unk_1E72EBA18;
        v13[4] = self;
        [(CKConversationListCollectionViewController *)self dismissViewControllerAnimated:0 completion:v13];
      }
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self delegate];
  v7 = [v6 chatController];

  [v7 becomeFirstResponder];
}

void __73__CKConversationListCollectionViewController_searchBarTextDidEndEditing___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 searchController];
  [v1 didDismissSearchController:v2];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isSearchTokensEnabled];

  if (v5)
  {
    v6 = [(CKConversationListCollectionViewController *)self searchResultsController];
    [v6 setCanShowTokenSuggestions:0];
  }

  v7 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v7 logSearchButtonTapped];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v3 logCancelButtonTapped];
}

- (BOOL)searchBarShouldClear:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [v3 logClearButtonTapped];

  return 1;
}

- (id)searchController:(id)a3 conversationForChatGUID:(id)a4
{
  v5 = a4;
  v6 = [(CKConversationListCollectionViewController *)self conversationList];
  v7 = [v6 conversationForExistingChatWithGUID:v5];

  return v7;
}

- (id)searchController:(id)a3 conversationsForExistingChatsWithGUIDs:(id)a4
{
  v5 = a4;
  v6 = [(CKConversationListCollectionViewController *)self conversationList];
  v7 = [v6 conversationsForExistingChatsWithGUIDs:v5];

  return v7;
}

- (id)searchBarForSearchViewController:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self searchController];
  v4 = [v3 searchBar];

  return v4;
}

- (void)searchController:(id)a3 didSelectItem:(id)a4 inChat:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained showConversationAndMessageForChatGUID:v7 messageGUID:v8 animate:1];

  v10 = [(CKConversationListCollectionViewController *)self delegate];
  v11 = [v10 chatController];
  [v11 becomeFirstResponder];

  v13 = [(CKConversationListCollectionViewController *)self delegate];
  v12 = [v13 chatController];
  [v12 reloadInputViews];
}

- (void)searchControllerDidBeginDragging:(id)a3
{
  v4 = [(CKConversationListCollectionViewController *)self searchController];
  v3 = [v4 searchBar];
  [v3 resignFirstResponder];
}

- (void)searchViewController:(id)a3 requestsPushOfSearchController:(id)a4
{
  v5 = a4;
  v6 = [(CKConversationListCollectionViewController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (BOOL)shouldInsetResultsForSearchController:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self delegate];
  v4 = [v3 isCollapsed];

  return v4;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__CKConversationListCollectionViewController__contentSizeCategoryDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__CKConversationListCollectionViewController__contentSizeCategoryDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateCellLayout];
  v2 = [*(a1 + 32) searchController];
  v3 = [v2 isActive];

  if (v3)
  {
    v4 = [*(a1 + 32) searchController];
    [v4 setActive:0];
  }

  v5 = [*(a1 + 32) collectionView];
  [v5 reloadData];

  [*(a1 + 32) updateConversationSelection];
  v6 = +[CKDualSIMUtilities sharedUtilities];
  [v6 updateConversationListSIMLabelImagesDictionary];
}

- (void)_increaseContrastDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CKConversationListCollectionViewController__increaseContrastDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __73__CKConversationListCollectionViewController__increaseContrastDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 updateConversationSelection];
}

- (void)_handleJunkFilteringSettingChange:(id)a3
{
  v4 = +[CKConversationList sharedConversationList];
  v3 = [v4 conversations];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_562_2];
}

void __80__CKConversationListCollectionViewController__handleJunkFilteringSettingChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 chat];
  [v2 setAllowsJunkConfiguration:{+[CKConversationList spamInboxEnabled](CKConversationList, "spamInboxEnabled")}];
  [v2 _reloadChatItemsForJunkFilteringSettingChange];
}

- (void)_handleFilterUnknownSendersSettingChange:(id)a3
{
  v4 = +[CKConversationList sharedConversationList];
  v3 = [v4 conversations];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_564_2];
}

void __87__CKConversationListCollectionViewController__handleFilterUnknownSendersSettingChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 chat];
  [v2 _reloadChatItemsForUnknownSendersFilteringSettingChange];
}

- (void)_chatItemsDidChange:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 name];
      v25 = 136315394;
      v26 = "[CKConversationListCollectionViewController _chatItemsDidChange:]";
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "ConversationListController: %s, notification.name: %@", &v25, 0x16u);
    }
  }

  v7 = [v4 object];
  v8 = [(CKConversationListCollectionViewController *)self conversationList];
  v9 = [v7 guid];
  v10 = [v8 conversationForExistingChatWithGUID:v9];

  v11 = [(CKConversationListCollectionViewController *)self conversationList];
  LOBYTE(v9) = [v11 loadingConversations];

  if ((v9 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Not loading all conversations, updating the conversation list", &v25, 2u);
      }
    }

    if (__CurrentTestName)
    {
      [(CKConversationListCollectionViewController *)self updateConversationList];
    }

    else if (-[CKConversationListCollectionViewController _updateAddsTypingChatItem:](self, "_updateAddsTypingChatItem:", v4) || ([v4 userInfo], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[CKConversationListCollectionViewController _updateRemovesTypingChatItem:](self, "_updateRemovesTypingChatItem:", v13), v13, v14))
    {
      [(CKConversationListCollectionViewController *)self updateContentsOfCellForConversation:v10 animated:1];
    }

    else
    {
      v15 = [(CKConversationListCollectionViewController *)self updater];
      [v15 setNeedsDeferredUpdateWithReason:@"chatItemsChanged"];
    }
  }

  [v10 resetCaches];
  if ([v10 isAdHocGroupConversation])
  {
    v16 = [v4 userInfo];
    v17 = v16;
    if (!v16)
    {
LABEL_28:

      goto LABEL_29;
    }

    v18 = [v16 valueForKey:*MEMORY[0x1E69A5750]];
    if (![v18 count])
    {
LABEL_27:

      goto LABEL_28;
    }

    v19 = [v10 chat];
    v20 = [v19 chatItems];
    v21 = [v20 lastObject];

    v22 = objc_opt_class();
    if ([v22 isSubclassOfClass:objc_opt_class()])
    {
      LOBYTE(v23) = 0;
      if (!v21)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24 = objc_opt_class();
      v23 = [v24 isSubclassOfClass:objc_opt_class()] ^ 1;
      if (!v21)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    if ((v23 & 1) == 0 && ([v21 isFromMe] & 1) == 0)
    {
      [v10 setNeedsUpdatedContactOrderForVisualIdentity];
      [(CKConversationListCollectionViewController *)self updateContentsOfCellForConversation:v10 animated:1];
    }

    goto LABEL_26;
  }

LABEL_29:
}

- (BOOL)_updateAddsTypingChatItem:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69A5750]];

  if ([v5 count] == 1)
  {
    v6 = [v3 object];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 chatItems];
    v8 = [v7 objectsAtIndexes:v5];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                *v14 = 0;
                _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Chat item update only adds typing indicator, do not resort conversation list.", v14, 2u);
              }
            }

            LOBYTE(v9) = 1;
            goto LABEL_17;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)_updateRemovesTypingChatItem:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:*MEMORY[0x1E69A5760]];
  v5 = [v3 objectForKey:*MEMORY[0x1E69A5778]];
  if ([v5 count] == 1 && (objc_msgSend(v4, "objectsAtIndexes:", v5), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "lastObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) != 0))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Chat item update only removes typing indicator, do not resort conversation list.", v12, 2u);
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_chatUnreadCountDidChange:(id)a3
{
  v8 = a3;
  v4 = [(CKConversationListCollectionViewController *)self updater];
  [v4 setNeedsDeferredUpdateWithReason:@"unreadCountChanged"];

  v5 = [v8 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v8 object];
    [(CKConversationListCollectionViewController *)self _consumeSummaryOnUnreadCountChangeForChatIfNeeded:v7];
  }

  [(CKConversationListCollectionViewController *)self updateFilteringElementsWithReason:@"unread count changed"];
}

- (void)_chatParticipantsChangedNotification:(id)a3
{
  v7 = [a3 object];
  v4 = [(CKConversationListCollectionViewController *)self conversationList];
  v5 = [v7 guid];
  v6 = [v4 conversationForExistingChatWithGUID:v5];

  [v6 resetCaches];
  if ([v6 isGroupConversation])
  {
    [v6 setNeedsUpdatedContactOrderForVisualIdentity];
  }

  if ([v6 isAdHocGroupConversation])
  {
    [(CKConversationListCollectionViewController *)self updateContentsOfCellForConversation:v6 animated:0];
  }
}

- (void)updateContentsOfCellForConversation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(CKConversationListCollectionViewController *)self updater];
  v7 = [v6 isHoldingUpdates];

  if ((v7 & 1) == 0)
  {
    if ([v10 isPinned])
    {
      v8 = 2;
    }

    else
    {
      v8 = 5;
    }

    v9 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v10 inSection:v8];
    [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v9 animated:v4];
  }
}

- (void)_conversationIsFilteredChangedNotification:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self updater];
  [v3 setNeedsDeferredUpdateWithReason:@"conversationIsFilteredChanged"];
}

- (void)_conversationDisplayNameChangedNotification:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self updater];
  [v3 setNeedsDeferredUpdateWithReason:@"conversationDisplayNameChanged"];
}

- (void)_conversationMuteDidChangeNotification:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self updater];
  [v3 setNeedsDeferredUpdateWithReason:@"conversationMuteDidChanged"];
}

- (void)_conversationFilteringStateChangedNotification:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Filter Mode] Conversation Filtering state changed", buf, 2u);
    }
  }

  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isModernFilteringEnabled];

  if (v7)
  {
    [(CKConversationListCollectionViewController *)self updateFilteringElementsWithReason:@"filtering state changed"];
  }

  if ([(CKConversationListCollectionViewController *)self isRecentlyDeletedModal]|| [(CKConversationListCollectionViewController *)self isOscarModal])
  {
    v8 = [(CKConversationListCollectionViewController *)self navigationController];
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if (v4 || CKIsFilterCategory([(CKConversationListCollectionViewController *)self filterMode]) && ![(CKConversationListCollectionViewController *)self _messageSpamFilteringEnabled])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Conversation Filtering state changed, resetting SIM Filter state cache and SIM Filter Preference. Setting filter mode to no junk", v11, 2u);
        }
      }

      [(CKConversationListCollectionViewController *)self setFilterMode:1];
      [(CKConversationListCollectionViewController *)self _resetSimFilteringToDefaultState];
    }

    v10 = [(CKConversationListCollectionViewController *)self updater];
    [v10 setNeedsDeferredUpdateWithReason:@"filteringStateChanged"];

    [(CKConversationListCollectionViewController *)self updateNavigationItems];
  }
}

- (void)_conversationSpamFilteringStateChangedNotification:(id)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isModernFilteringEnabled];

  if (v5)
  {
    [MEMORY[0x1E69A8210] updateSMSFilterExtensionParams];
  }

  [(CKConversationListCollectionViewController *)self updateSMSSpamConversationsDisplayName];

  [(CKConversationListCollectionViewController *)self _conversationFilteringStateChangedNotification:0];
}

- (void)_conversationContactPhotosEnabledChangedNotification:(id)a3
{
  [(CKConversationListCollectionViewController *)self invalidateCellLayout];
  v4 = [(CKConversationListCollectionViewController *)self updater];
  [v4 setNeedsDeferredUpdateWithReason:@"contactPhotosEnabled"];
}

- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 transferGUID];
    if ([v5 length])
    {
      v24 = v4;
      v23 = [(CKConversationListCollectionViewController *)self conversationList];
      v6 = [v23 conversations];
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            if ([v13 shouldReloadPreviewTextForGeneratedAdaptiveImageGlyphWithFileTransferGUID:v5])
            {
              if ([v13 isPinned])
              {
                v14 = 2;
              }

              else
              {
                v14 = 5;
              }

              v15 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v13 inSection:v14];
              if (v15)
              {
                [v7 addObject:v15];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v10);
      }

      v16 = [v7 copy];
      v17 = [(CKConversationListCollectionViewController *)self updater];
      v18 = [v17 isHoldingUpdates];

      v19 = IMLogHandleForCategory();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (v18)
      {
        if (v20)
        {
          [CKConversationListCollectionViewController _adaptiveImageGlyphWasGeneratedNotification:];
        }

        v21 = [(CKConversationListCollectionViewController *)self updater];
        [v21 setNeedsDeferredUpdateWithReason:@"adaptiveImageGlyphGenerated"];

        v22 = v23;
        v4 = v24;
      }

      else
      {
        if (v20)
        {
          [(CKConversationListCollectionViewController *)v16 _adaptiveImageGlyphWasGeneratedNotification:v5, v19];
        }

        v22 = v23;
        v4 = v24;
        if ([v16 count])
        {
          [(CKConversationListCollectionViewController *)self updateContentsOfCellsWithItemIdentifiers:v16 animated:0];
        }
      }
    }
  }
}

- (void)_multiWayCallStateChanged:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "ConversationListController: _multiWayCallStateChanged", buf, 2u);
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self conversationList];
  v7 = [v6 loadingConversations];

  if ((v7 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Not loading all conversations, updating the conversation list", v10, 2u);
      }
    }

    v9 = [(CKConversationListCollectionViewController *)self updater];
    [v9 setNeedsDeferredUpdateWithReason:@"multiWayCallStateChanged"];
  }
}

- (void)_chatWatermarkDidChange:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self updater];
  [v3 setNeedsDeferredUpdateWithReason:@"chatWatermarkDidChange"];
}

- (void)_conversationListDidFinishLoadingConversations:(id)a3
{
  v4 = [(CKConversationListCollectionViewController *)self updater];
  [v4 setNeedsDeferredUpdateWithReason:@"didFinishLoadingConversations"];

  [(CKConversationListCollectionViewController *)self _updateConversationListsAndSortIfEnabled];
  v5 = [(CKConversationListCollectionViewController *)self conversationList];
  v6 = [v5 loadedConversations];

  if (v6)
  {

    [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0];
  }
}

- (void)_contactStoreDidFinishLoadingNotification:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self updater];
  [v3 setNeedsDeferredUpdateWithReason:@"contactStoreDidFinishLoading"];
}

- (void)_conversationListDidChange:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self updater];
  [v3 setNeedsDeferredUpdateWithReason:@"conversationListDidChange"];
}

- (void)_conversationMessageWasSent:(id)a3
{
  v3 = [(CKConversationListCollectionViewController *)self updater];
  [v3 setNeedsDeferredUpdateWithReason:@"messageWasSent"];
}

- (unint64_t)_sanitizedFilterMode:(unint64_t)a3
{
  if ([(CKConversationListCollectionViewController *)self _messageUnknownFilteringEnabled])
  {

    return [(CKConversationListCollectionViewController *)self _sanitizedFilterModeForFilterUnknownEnabled:a3];
  }

  else
  {

    return [(CKConversationListCollectionViewController *)self _sanitizedFilterModeForFilterUnknownDisabled:a3];
  }
}

- (unint64_t)_sanitizedFilterModeForFilterUnknownDisabled:(unint64_t)a3
{
  if (a3 == 9)
  {
    if ([(CKConversationListCollectionViewController *)self isOscarModal]|| CKIsRunningInMacCatalyst())
    {
      return 9;
    }
  }

  else if (a3 == 7 && ([(CKConversationListCollectionViewController *)self isRecentlyDeletedModal]|| CKIsRunningInMacCatalyst()))
  {
    return 7;
  }

  return 0;
}

- (unint64_t)_sanitizedFilterModeForFilterUnknownEnabled:(unint64_t)a3
{
  result = 1;
  if (a3 - 10 < 0x12)
  {
    return result;
  }

  if (a3 - 4 < 3)
  {
    v6 = ![(CKConversationListCollectionViewController *)self _messageSpamFilteringEnabled];
LABEL_5:
    if (v6)
    {
      return 1;
    }

    else
    {
      return a3;
    }
  }

  if (!a3)
  {
    return result;
  }

  if (a3 != 7)
  {
    if (a3 < 0x10)
    {
      return a3;
    }

    v7 = [MEMORY[0x1E69A8210] isValidActiveFilterAction:a3 & 0xF subAction:a3 >> 4];
    v6 = ([(CKConversationListCollectionViewController *)self _messageSpamFilteringEnabled]& v7) == 0;
    goto LABEL_5;
  }

  if (![(CKConversationListCollectionViewController *)self isRecentlyDeletedModal]&& !CKShouldShowInboxView())
  {
    CKIsRunningInMacCatalyst();
  }

  return 7;
}

- (void)restoreFilterModesIfValid:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Restoring filtering modes: %@", &v6, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self addFilterModesIfValid:v4 applyDefaultFallback:1];
}

- (void)setFilterMode:(unint64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isModernFilteringEnabled];

  if (v6)
  {

    [(CKConversationListCollectionViewController *)self addFilterMode:a3];
  }

  else
  {
    filterMode = self->_filterMode;
    self->_filterMode = [(CKConversationListCollectionViewController *)self _sanitizedFilterMode:a3];
    v8 = [(CKConversationListCollectionViewController *)self delegate];
    [v8 updatedFilterMode];

    [(CKConversationListCollectionViewController *)self _configureForFilterMode:self->_filterMode];
    if (filterMode == 7)
    {
      [(CKConversationListCollectionViewController *)self setEditingMode:0];
    }

    if (filterMode != a3)
    {
      [(CKConversationListCollectionViewController *)self updateRefreshControlVisibility];
    }

    v9 = [(CKConversationListCollectionViewController *)self _getTitleForCurrentFilterMode];
    [(CKConversationListCollectionViewController *)self setTitle:v9];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = IMConversationListFilterModeStringValue(a3);
        v12 = IMConversationListFilterModeStringValue(filterMode);
        v13 = IMConversationListFilterModeStringValue(self->_filterMode);
        v14 = [(CKConversationListCollectionViewController *)self _messageUnknownFilteringEnabled];
        v15 = @"NO";
        v16 = 138413058;
        v17 = v11;
        v18 = 2112;
        if (v14)
        {
          v15 = @"YES";
        }

        v19 = v12;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "ConversationListController: setFilterMode called with filterMode: %@, previous filterMode: %@, new filterMode: %@, when messageFilteringEnabled: %@.", &v16, 0x2Au);
      }
    }
  }
}

- (void)_configureForFilterMode:(unint64_t)a3
{
  if (a3 == 9)
  {

    [(CKConversationListCollectionViewController *)self configureForOscarFilter];
  }

  else if (a3 == 7)
  {

    [(CKConversationListCollectionViewController *)self configureForRecentlyDeletedFilter];
  }

  else
  {
    if (!self->_isInitialAppearance)
    {
      v4 = [(CKConversationListCollectionViewController *)self searchController];
      v5 = [(CKConversationListCollectionViewController *)self navigationItem];
      [v5 setSearchController:v4];

      [(CKConversationListCollectionViewController *)self configureSearchBarEnabled:1];
    }

    [(CKConversationListCollectionViewController *)self _updateToolbarItems];
  }
}

- (id)_getTitleForCurrentFilterMode
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
  {
    v3 = &stru_1F04268F8;
    goto LABEL_56;
  }

  filterMode = self->_filterMode;
  if (filterMode == 9)
  {
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"OSCAR" value:&stru_1F04268F8 table:@"ChatKit"];
    goto LABEL_7;
  }

  if (filterMode == 7)
  {
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"RECENTLY_DELETED" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_7:
    v3 = v6;

    goto LABEL_56;
  }

  if (!CKIsRunningInMacCatalyst() && ![(CKConversationListCollectionViewController *)self _shouldShowInboxView])
  {
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    goto LABEL_7;
  }

  if ([(CKConversationListCollectionViewController *)self filterMode]>= 0x10)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v8)
    {
      v9 = *v32;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = [(CKConversationListCollectionViewController *)self filterMode];
          if (v12 == [v11 filterMode])
          {
            v18 = IMSharedUtilitiesFrameworkBundle();
            v19 = [v11 folderName];
            v3 = [v18 localizedStringForKey:v19 value:&stru_1F04268F8 table:@"IMSharedUtilities"];

            goto LABEL_56;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = [(CKConversationListCollectionViewController *)self filterMode];
  if (v13 <= 4)
  {
    if (v13 > 2)
    {
      if (v13 != 3)
      {
        v14 = CKFrameworkBundle();
        v15 = [v14 localizedStringForKey:@"TRANSACTIONAL_SENDER_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
        goto LABEL_55;
      }

      v22 = CKIsRunningInMacCatalyst() == 0;
      v23 = CKFrameworkBundle();
      v14 = v23;
      if (v22)
      {
        [v23 localizedStringForKey:@"UNKNOWN" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        [v23 localizedStringForKey:@"UNKNOWN_SENDERS" value:&stru_1F04268F8 table:@"ChatKit"];
      }
    }

    else
    {
      if (v13 == 1)
      {
LABEL_50:
        v14 = CKFrameworkBundle();
        v15 = [v14 localizedStringForKey:@"MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
        goto LABEL_55;
      }

      if (v13 != 2)
      {
LABEL_46:
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [(CKConversationListCollectionViewController *)self filterMode];
            v28 = [(CKConversationListCollectionViewController *)self _messageUnknownFilteringEnabled];
            v29 = [(CKConversationListCollectionViewController *)self _shouldShowInboxView];
            *buf = 134218496;
            v36 = v27;
            v37 = 1024;
            v38 = v28;
            v39 = 1024;
            v40 = v29;
            _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "unknown filterMode %ld with filtering state %d and inbox view state %d", buf, 0x18u);
          }
        }

        goto LABEL_50;
      }

      v16 = CKIsRunningInMacCatalyst() == 0;
      v17 = CKFrameworkBundle();
      v14 = v17;
      if (v16)
      {
        [v17 localizedStringForKey:@"KNOWN" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        [v17 localizedStringForKey:@"KNOWN_SENDERS" value:&stru_1F04268F8 table:@"ChatKit"];
      }
    }

    v15 = LABEL_45:;
    goto LABEL_55;
  }

  if (v13 <= 6)
  {
    if (v13 == 5)
    {
      v14 = CKFrameworkBundle();
      v15 = [v14 localizedStringForKey:@"PROMOTIONAL_SENDER_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
      goto LABEL_55;
    }

    v20 = CKIsBlackholeEnabled();
    v21 = CKFrameworkBundle();
    v14 = v21;
    if (v20)
    {
      [v21 localizedStringForKey:@"JUNK_BLACKHOLE_SENDER_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      [v21 localizedStringForKey:@"JUNK_SENDER_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    goto LABEL_45;
  }

  if (v13 == 7)
  {
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"RECENTLY_DELETED" value:&stru_1F04268F8 table:@"ChatKit"];
    goto LABEL_55;
  }

  if (v13 == 8)
  {
    v24 = CKIsRunningInMacCatalyst() == 0;
    v25 = CKFrameworkBundle();
    v14 = v25;
    if (v24)
    {
      [v25 localizedStringForKey:@"UNREAD" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      [v25 localizedStringForKey:@"UNREAD_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    goto LABEL_45;
  }

  if (v13 != 9)
  {
    goto LABEL_46;
  }

  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"OSCAR" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_55:
  v3 = v15;

LABEL_56:

  return v3;
}

- (void)updateSMSSpamConversationsDisplayName
{
  v3 = +[CKConversationList sharedConversationList];
  v2 = [v3 conversations];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_623_0];
}

- (void)_handingPendingConversationDidChange:(id)a3
{
  v11 = a3;
  v4 = [v11 object];
  if (v4)
  {
    v5 = v4;
    v6 = [v11 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(CKConversationListCollectionViewController *)self conversationList];
      v9 = [v8 pendingConversation];
      v10 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v9 inSection:4];

      [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v10 animated:0];
    }
  }
}

- (void)_resetMessageFiltering
{
  CKResetBlackholeEnabledCache();
  CKResetFilteringSettings();
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:CKMessageFilteringChangedNotification[0] object:0];
}

- (id)collectionView:(id)a3 sceneActivationConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  v7 = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [v7 itemIdentifierForIndexPath:v6];

  v9 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v8];
  v10 = [v9 activityForNewScene];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DD300]) initWithUserActivity:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v87 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = IMConversationListFilterModeStringValue([(CKConversationListCollectionViewController *)self filterMode]);
      *buf = 138412290;
      v80 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Filter Mode] conversationlist will appear with filterMode: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v3)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = [(CKConversationListCollectionViewController *)self numberOfConversations];
      v10 = IMConversationListFilterModeStringValue([(CKConversationListCollectionViewController *)self filterMode]);
      v11 = [(CKConversationListCollectionViewController *)self collectionView];
      *buf = 138413058;
      v80 = v8;
      v81 = 2048;
      v82 = v9;
      v83 = 2112;
      v84 = v10;
      v85 = 2112;
      v86 = v11;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "viewWillAppear, animated=%@, numberOfChats:%tu filterMode:%@, collectionView:%@", buf, 0x2Au);
    }
  }

  v77.receiver = self;
  v77.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v77 viewWillAppear:v3];
  [(CKConversationListCollectionViewController *)self setIsAppearing:1];
  v12 = [(CKConversationListCollectionViewController *)self macToolbarController];
  if (v12)
  {
    v13 = [(CKConversationListCollectionViewController *)self conformsToProtocol:&unk_1F051C328];

    if (v13)
    {
      v14 = [(CKConversationListCollectionViewController *)self macToolbarController];
      [v14 setPrimaryItemProvider:self];

      v15 = [(CKConversationListCollectionViewController *)self macToolbarController];
      [v15 setShouldDrawPrimaryBlur:0];
    }
  }

  v67 = 1039;
  if (self->_isInitialAppearance)
  {
    v16 = [(CKConversationListCollectionViewController *)self searchController];
    v17 = [v16 searchBar];

    [v17 setDelegate:self];
    v18 = CKFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"SEARCH" value:&stru_1F04268F8 table:@"ChatKit"];
    [v17 setPlaceholder:v19];

    [v17 sizeToFit];
    v20 = [(CKConversationListCollectionViewController *)self navigationItem];
    v21 = [(CKConversationListCollectionViewController *)self searchController];
    [v20 setSearchController:v21];

    [(CKConversationListCollectionViewController *)self invalidateCellLayout];
    v22 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v21) = [v22 conversationListShowsSearchOnAppear];

    if (v21)
    {
      v23 = [(CKConversationListCollectionViewController *)self navigationItem];
      [v23 setHidesSearchBarWhenScrolling:0];
    }

    else
    {
      v23 = +[CKUIBehavior sharedBehaviors];
      v24 = [v23 conversationListHidesSearchBarWhenScrolling];
      v25 = [(CKConversationListCollectionViewController *)self navigationItem];
      [v25 setHidesSearchBarWhenScrolling:v24];
    }

    if (!CKIsRunningInMacCatalyst())
    {
      v26 = [(CKConversationListCollectionViewController *)self navigationController];
      v27 = [v26 navigationBar];
      [v27 setPrefersLargeTitles:1];

      v28 = [(CKConversationListCollectionViewController *)self navigationItem];
      v29 = [(CKConversationListCollectionViewController *)self transparentNavBarAppearance];
      [v28 setScrollEdgeAppearance:v29];
    }

    [(CKConversationListCollectionViewController *)self updateNavigationItems];
    [(CKConversationListCollectionViewController *)self _updateToolbarItems];
  }

  v30 = [(CKConversationListCollectionViewController *)self splitViewController];
  v31 = [v30 isCollapsed];

  if (v31)
  {
    if ([(CKConversationListCollectionViewController *)self compositionWasSent])
    {
      v32 = [(CKConversationListCollectionViewController *)self searchController];
      v33 = [v32 isActive];

      if (v33)
      {
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __61__CKConversationListCollectionViewController_viewWillAppear___block_invoke;
        v76[3] = &unk_1E72EBA18;
        v76[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v76];
      }
    }
  }

  [(CKConversationListCollectionViewController *)self setCompositionWasSent:0];
  [(CKConversationListCollectionViewController *)self _endHoldingUpdatesOnViewWillAppear];
  if ([(CKConversationListCollectionViewController *)self isShowingSwipeDeleteConfirmation])
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "isShowingSwipeDeleteConfirmation is YES on viewWillAppear. This is an unexpected state", buf, 2u);
      }
    }

    [(CKConversationListCollectionViewController *)self setIsShowingSwipeDeleteConfirmation:0];
    [(CKConversationListCollectionViewController *)self updateNavigationItems];
  }

  if (![(CKConversationListCollectionViewController *)self _shouldKeepSelection])
  {
    v35 = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
    v36 = [(CKConversationListCollectionViewController *)self dataSource];
    v37 = [v36 indexPathForItemIdentifier:v35];

    [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:0];
    if (v37)
    {
      if ([v37 section] == 2)
      {
        v38 = [(CKConversationListCollectionViewController *)self collectionView];
        v39 = [v38 cellForItemAtIndexPath:v37];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = [(CKConversationListCollectionViewController *)self collectionView];
          v41 = [v40 cellForItemAtIndexPath:v37];

          v42 = [v41 pinnedConversationView];
          [v42 setDimmed:0];
        }

        else
        {
          v41 = IMLogHandleForCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [CKConversationListCollectionViewController viewWillAppear:];
          }
        }
      }

      v43 = [(CKConversationListCollectionViewController *)self collectionView];
      [v43 deselectItemAtIndexPath:v37 animated:0];
    }

    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v72 = 0u;
    v44 = [(CKConversationListCollectionViewController *)self collectionView];
    v45 = [v44 indexPathsForSelectedItems];

    v46 = [v45 countByEnumeratingWithState:&v72 objects:v78 count:16];
    if (v46)
    {
      v47 = *v73;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v73 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = *(*(&v72 + 1) + 8 * i);
          if (([v49 isEqual:v37] & 1) == 0)
          {
            v50 = [(CKConversationListCollectionViewController *)self collectionView];
            [v50 deselectItemAtIndexPath:v49 animated:v3];

            if ([v49 section] == 2)
            {
              v51 = [(CKConversationListCollectionViewController *)self collectionView];
              v52 = [v51 cellForItemAtIndexPath:v49];

              v53 = [v52 pinnedConversationView];
              [v53 setDimmed:0];
            }
          }
        }

        v46 = [v45 countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v46);
    }
  }

  if ((*(&self->super.super.super.super.isa + v68) & 1) == 0 && [(CKConversationListCollectionViewController *)self _shouldResizeNavigationBar])
  {
    v54 = [(CKConversationListCollectionViewController *)self navigationController];
    v55 = [v54 navigationBar];
    [v55 sizeToFit];
  }

  v56 = [(CKConversationListCollectionViewController *)self tipKitQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CKConversationListCollectionViewController_viewWillAppear___block_invoke_723;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(v56, block);

  v57 = [MEMORY[0x1E69DC668] sharedApplication];
  v58 = [v57 isSuspended];

  if ((v58 & 1) == 0)
  {
    [(CKConversationListCollectionViewController *)self startTipCellAnimatingIfNecessary];
  }

  v59 = [(CKConversationListCollectionViewController *)self navigationController];
  v60 = [v59 navigationBar];
  v61 = +[CKUIBehavior sharedBehaviors];
  v62 = [v61 theme];
  [v60 setBarStyle:{objc_msgSend(v62, "navBarStyle")}];

  [(CKConversationListCollectionViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(CKConversationListCollectionViewController *)self _updateInsets];
  [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
  [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:0];
  if (self->_searchResultsController)
  {
    v63 = [(CKConversationListCollectionViewController *)self searchResultsController];
    [v63 viewWillAppear:v3];
  }

  v64 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __61__CKConversationListCollectionViewController_viewWillAppear___block_invoke_2;
  v70[3] = &unk_1E72EBA18;
  v70[4] = self;
  [v64 updateRecoverableMessagesMetadataSynchronously:0 completionHandler:v70];

  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    [(CKConversationListCollectionViewController *)self recentlyDeletedViewWillAppear:v3];
  }

  else if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    [(CKConversationListCollectionViewController *)self oscarViewWillAppear:v3];
  }

  else
  {
    [(CKConversationListCollectionViewController *)self setEditingMode:0];
  }

  [(CKConversationListCollectionViewController *)self _configureCatalystFiltersNavigation];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __61__CKConversationListCollectionViewController_viewWillAppear___block_invoke_3;
  v69[3] = &unk_1E72EBA18;
  v69[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v69);
  v65 = [(CKConversationListCollectionViewController *)self navigationController];
  v66 = [v65 navigationBar];
  [v66 setTintColor:0];
}

void __61__CKConversationListCollectionViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchController];
  v3 = [v2 isActive];

  if (v3)
  {
    v4 = [*(a1 + 32) searchController];
    [v4 setActive:0];
  }
}

void __61__CKConversationListCollectionViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationList];
  [v1 updateRecoverableConversationList];
}

void __61__CKConversationListCollectionViewController_viewWillAppear___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1039] != 1)
  {
    return;
  }

  v7 = [v2 collectionView];
  v3 = [v7 indexPathsForSelectedItems];
  if ([v3 count])
  {
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) delegate];
  if ([v4 isCollapsed])
  {

LABEL_5:

    return;
  }

  v5 = [*(a1 + 32) isShowingConversationFromCatalystOpenURL];

  if ((v5 & 1) == 0 && ([*(a1 + 32) isRecentlyDeletedModal] & 1) == 0)
  {
    v6 = *(a1 + 32);

    [v6 selectDefaultConversationAnimated:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v38 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(32);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "viewDidAppear, animated=%@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v25 = v7;
    _CKLog();
  }

  self->_isVisible = 1;
  v29.receiver = self;
  v29.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v29 viewDidAppear:v3, v25];
  v8 = [(CKConversationListCollectionViewController *)self collectionView];
  [v8 flashScrollIndicators];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [v9 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  if (__CurrentTestName && ([__CurrentTestName rangeOfString:@"ShowMessages"] != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(__CurrentTestName, "isEqualToString:", @"ScrollTranscript") & 1) != 0 || (objc_msgSend(__CurrentTestName, "isEqualToString:", @"ScrollTranscriptWebView") & 1) != 0 || (objc_msgSend(__CurrentTestName, "isEqualToString:", @"ScrollTranscriptEmoji") & 1) != 0 || objc_msgSend(__CurrentTestName, "isEqualToString:", @"ScrollTranscriptFullScreen")))
  {
    v10 = MEMORY[0x1E69DDA98];
    if (objc_opt_respondsToSelector())
    {
      [*v10 didShowTranscriptList];
    }
  }

  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 conversationListHidesSearchBarWhenScrolling];
  v13 = [(CKConversationListCollectionViewController *)self navigationItem];
  [v13 setHidesSearchBarWhenScrolling:v12];

  [(CKConversationListCollectionViewController *)self setIsAppearing:0];
  [(CKConversationListCollectionViewController *)self updateSyncProgressIfNeeded];
  [(CKConversationListCollectionViewController *)self updateBannerVisualEffectGroup];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CKConversationListCollectionViewController_viewDidAppear___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v14 = [(CKConversationListCollectionViewController *)self deferredSearchQuery];

  if (v14)
  {
    v15 = [(CKConversationListCollectionViewController *)self deferredSearchQuery];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__CKConversationListCollectionViewController_viewDidAppear___block_invoke_2;
    v26[3] = &unk_1E72EBA18;
    v27 = v15;
    v16 = v15;
    [(CKConversationListCollectionViewController *)self performSearch:v16 completion:v26];
    [(CKConversationListCollectionViewController *)self setDeferredSearchQuery:0];
  }

  [(CKConversationListCollectionViewController *)self setAppIntentsDataSource];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [MEMORY[0x1E69DD2E8] keyWindow];
      v19 = [MEMORY[0x1E69DD2E8] keyWindow];
      v20 = [v19 firstResponder];
      v21 = [MEMORY[0x1E69DD2E8] keyWindow];
      v22 = [v21 firstResponder];
      v23 = [v22 _isPinningInputViews];
      v24 = @"NO";
      *buf = 136315906;
      v31 = "[CKConversationListCollectionViewController viewDidAppear:]";
      v32 = 2112;
      v33 = v18;
      if (v23)
      {
        v24 = @"YES";
      }

      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "[%s] Is UIWindow.keyWindow: %@, firstResponder: %@, pinning input views: %@", buf, 0x2Au);
    }
  }
}

uint64_t __60__CKConversationListCollectionViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isModernFilteringEnabled];

  if ((v3 & 1) == 0 && ([*(a1 + 32) filterMode] == 3 || objc_msgSend(*(a1 + 32), "filterMode") == 2))
  {
    v4 = [*(a1 + 32) conversationList];
    [v4 updateConversationsWasKnownSender];

    v5 = [*(a1 + 32) conversationList];
    [v5 beginWasKnownSenderHold];
  }

  v6 = *(a1 + 32);

  return [v6 viewDidAppearDeferredSetup];
}

void __60__CKConversationListCollectionViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Performed deferred (viewDidAppear:) search with query: %@", &v4, 0xCu);
    }
  }
}

void __72__CKConversationListCollectionViewController_viewDidAppearDeferredSetup__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_initWeak(&location, v2);
  v4 = [v2 delegate];
  v5 = [v4 isCollapsed];

  if (v5)
  {
    CKPrewarmCKMessageEntryView();
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = objc_loadWeakRetained(&location);
  v8 = [v7 conversationList];
  [v6 __mainThreadPostNotificationName:@"CKConversationListChangedNotification" object:v8];

  v9 = +[CKTranscriptBackgroundChannelController sharedTranscriptBackgroundChannelController];
  v10 = +[CKTranscriptBackgroundChannelController channelSnapshotPrewarmLimit];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  v12 = [*(a1 + 32) pinnedConversations];
  [v11 addObjectsFromArray:v12];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [*(a1 + 32) activeConversations];
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v14)
  {
    v15 = *v34;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v34 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v33 + 1) + 8 * v16);
      if ([v11 count] >= v10)
      {
        break;
      }

      [v11 addObject:v17];
      if (v14 == ++v16)
      {
        v14 = [v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v18 = objc_loadWeakRetained(&location);
  v19 = [v18 traitCollection];
  v20 = [v19 userInterfaceStyle];

  v21 = objc_loadWeakRetained(&location);
  v22 = [v21 interfaceOrientation];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = v11;
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v24)
  {
    v25 = *v30;
    do
    {
      v26 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [*(*(&v29 + 1) + 8 * v26) chat];
        v28 = [v27 guid];
        [v9 prewarmChannelSnapshotsForChatGUID:v28 forInterfaceStyle:v20 orientation:v22];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v23 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v24);
  }

  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(32);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "viewWillDisappear, animated=%@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v10 = v7;
    _CKLog();
  }

  if (self->_isVisible)
  {
    v8 = [(CKConversationListCollectionViewController *)self updater];
    [v8 beginHoldingUpdatesForReason:@"viewVisiblity"];
  }

  self->_isVisible = 0;
  v9 = [(CKConversationListCollectionViewController *)self tipKitQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CKConversationListCollectionViewController_viewWillDisappear___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(v9, block);

  [(CKConversationListCollectionViewController *)self stopTipCellAnimatingIfNecessary];
  v11.receiver = self;
  v11.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v11 viewWillDisappear:v3];
}

- (void)applicationWillSuspend
{
  v7.receiver = self;
  v7.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v7 applicationWillSuspend];
  if (!CKIsRunningInMacCatalyst())
  {
    v3 = [(CKConversationListCollectionViewController *)self searchController];
    v4 = [v3 isActive];

    if (v4)
    {
      v5 = [(CKConversationListCollectionViewController *)self searchController];
      [v5 setActive:0];
    }

    v6 = [(CKConversationListCollectionViewController *)self searchResultsController];
    [v6 cancelCurrentQuery];
  }
}

- (void)stopTipCellAnimatingIfNecessary
{
  v3 = [(CKConversationListCollectionViewController *)self dataSource];
  v4 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
  v7 = [v3 indexPathForItemIdentifier:v4];

  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 didEndDisplaying];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(CKConversationListCollectionViewController *)self view];
  [v8 frame];
  v10 = v9;

  if (vabdd_f64(width, v10) >= 0.001)
  {
    self->_willRotate = 1;
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 usesPopovers];

    v12[4] = self;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__CKConversationListCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v13[3] = &unk_1E72EC3E8;
    v13[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__CKConversationListCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v12[3] = &unk_1E72EC3E8;
    [v7 animateAlongsideTransition:v13 completion:v12];
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69DDF98]];
  [v6 CGRectValue];
  v8 = v7;

  v9 = [v4 userInfo];

  v10 = [v9 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v10 CGRectValue];
  v12 = v11;

  v13 = [(CKConversationListCollectionViewController *)self view];
  v14 = [v13 window];
  [v14 bounds];
  v16 = v15;

  if ([(CKConversationListCollectionViewController *)self editingMode])
  {
    if (v8 > v12 && v8 != v16)
    {
      [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
    }
  }

  [(CKConversationListCollectionViewController *)self _updateInsets];
  self->_keyboardIsShowing = 1;
}

- (void)scrollToFirstSelectedItemIfNecessary
{
  v3 = [(CKConversationListCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v8 = [v4 firstObject];

  if (v8)
  {
    if ([v8 section] != 4)
    {
      v5 = [(CKConversationListCollectionViewController *)self collectionView];
      v6 = [v5 numberOfItemsInSection:{objc_msgSend(v8, "section")}];

      if (v6)
      {
        if ([(CKConversationListCollectionViewController *)self shouldScrollCollectionViewForCellSelection:v8])
        {
          v7 = [(CKConversationListCollectionViewController *)self collectionView];
          [v7 scrollToItemAtIndexPath:v8 atScrollPosition:1 animated:1];
        }
      }
    }
  }
}

- (BOOL)shouldScrollCollectionViewForCellSelection:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self lastVisibleIndexPathInCollectionView];
  v6 = [(CKConversationListCollectionViewController *)self firstVisibleIndexPathInCollectionView];
  v7 = [(CKConversationListCollectionViewController *)self distanceBetweenConversationIndexPath:v4 andIndexPath:v5];
  v8 = [(CKConversationListCollectionViewController *)self distanceBetweenConversationIndexPath:v4 andIndexPath:v6];
  if (v7 < 2 || v8 <= 1)
  {
    v10 = [(CKConversationListCollectionViewController *)self collectionView];
    v9 = [v10 numberOfItemsInSection:{objc_msgSend(v4, "section")}] > 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)lastVisibleIndexPathInCollectionView
{
  v2 = [(CKConversationListCollectionViewController *)self collectionView];
  v3 = [v2 indexPathsForVisibleItems];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v5 = [v4 lastObject];

  return v5;
}

- (id)firstVisibleIndexPathInCollectionView
{
  v2 = [(CKConversationListCollectionViewController *)self collectionView];
  v3 = [v2 indexPathsForVisibleItems];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v5 = [v4 firstObject];

  return v5;
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(CKConversationListCollectionViewController *)self collectionView];

  v5 = v7;
  if (v4 == v7)
  {
    [(CKConversationListCollectionViewController *)self updateBannerConstraintsForScrollViewDidScroll:v7];
    v6 = [(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession];
    v5 = v7;
    if (v6)
    {
      [(CKConversationListCollectionViewController *)self _ck_setNeedsUpdateOfMultitaskingDragExclusionRects];
      v5 = v7;
    }
  }
}

- (id)_multitaskingDragExclusionRects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(CKConversationListCollectionViewController *)self pinnedConversationMultitaskingDragExclusionRect];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (!CGRectIsEmpty(v12))
  {
    v8 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    [v3 addObject:v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)_updateLargeTitleDisplayModeWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKConversationListCollectionViewController *)self _shouldAllowLargeTitles];
  v6 = [(CKConversationListCollectionViewController *)self navigationItem];
  v7 = [v6 largeTitleDisplayMode];

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (v7 != v8)
  {
    v9 = [(CKConversationListCollectionViewController *)self collectionView];
    [v9 contentInset];
    v11 = v10;

    if (v3)
    {
      v12 = [(CKConversationListCollectionViewController *)self navigationController];
      v13 = [v12 navigationBar];

      v14 = [v13 _restingHeights];
      v15 = [v13 snapshotViewAfterScreenUpdates:0];
      v16 = [(CKConversationListCollectionViewController *)self collectionView];
      v17 = [v16 backgroundColor];
      [v15 setBackgroundColor:v17];

      [v13 frame];
      [v15 setFrame:?];
      v18 = [(CKConversationListCollectionViewController *)self navigationController];
      v19 = [v18 view];
      [v19 addSubview:v15];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v20 = [(CKConversationListCollectionViewController *)self navigationItem];
    [v20 setLargeTitleDisplayMode:v8];

    v21 = [(CKConversationListCollectionViewController *)self navigationItem];
    v22 = [v21 searchController];
    v23 = [v22 isActive];

    if ((v23 & 1) == 0)
    {
      v24 = [(CKConversationListCollectionViewController *)self navigationItem];
      v25 = [v24 searchController];

      v26 = [(CKConversationListCollectionViewController *)self navigationItem];
      [v26 setSearchController:0];

      v27 = [(CKConversationListCollectionViewController *)self navigationController];
      v28 = [v27 navigationBar];
      [v28 setNeedsLayout];

      v29 = [(CKConversationListCollectionViewController *)self navigationController];
      v30 = [v29 navigationBar];
      [v30 sizeToFit];

      v31 = [(CKConversationListCollectionViewController *)self navigationItem];
      [v31 setSearchController:v25];
    }

    if (!v3)
    {
      goto LABEL_17;
    }

    v32 = [(CKConversationListCollectionViewController *)self collectionView];
    [v32 contentInset];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    if (v7 != 0 || v5)
    {
      if (v7 != 2 || !v5)
      {
LABEL_16:
        v44 = [(CKConversationListCollectionViewController *)self collectionView];
        [v44 setContentInset:{v34, v36, v38, v40}];

        v45 = [(CKConversationListCollectionViewController *)self collectionView];
        [v45 contentInset];
        v47 = v46;
        v49 = v48;
        v51 = v50;

        v52 = MEMORY[0x1E69DD250];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __88__CKConversationListCollectionViewController__updateLargeTitleDisplayModeWithAnimation___block_invoke;
        v55[3] = &unk_1E72F3A20;
        v55[4] = self;
        v57 = v11;
        v58 = v47;
        v59 = v49;
        v60 = v51;
        v56 = v15;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __88__CKConversationListCollectionViewController__updateLargeTitleDisplayModeWithAnimation___block_invoke_2;
        v53[3] = &unk_1E72EB9C8;
        v54 = v56;
        [v52 animateWithDuration:0 delay:v55 options:v53 animations:0.300000012 completion:0.0];

LABEL_17:
        return;
      }

      v41 = [v14 firstObject];
    }

    else
    {
      v41 = [v14 lastObject];
    }

    v42 = v41;
    [v41 floatValue];
    v34 = v43;

    goto LABEL_16;
  }
}

uint64_t __88__CKConversationListCollectionViewController__updateLargeTitleDisplayModeWithAnimation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = [*(a1 + 32) collectionView];
  [v6 setContentInset:{v2, v3, v4, v5}];

  v7 = *(a1 + 40);

  return [v7 setAlpha:0.0];
}

- (BOOL)_shouldResizeNavigationBar
{
  v2 = [(CKConversationListCollectionViewController *)self navigationController];
  v3 = [v2 navigationBar];

  [v3 bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  [v3 bounds];
  LOBYTE(v2) = v7 < v8;

  return v2;
}

- (void)_updateSearchControllerForConversationListBelowMacSnapWidth:(BOOL)a3
{
  v3 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v5 = [(CKConversationListCollectionViewController *)self searchController];
    v6 = [v5 searchBar];
    [v6 setHidden:{-[CKConversationListCollectionViewController isBelowMacSnapToMinWidth](self, "isBelowMacSnapToMinWidth")}];

    if (!v3)
    {
      return;
    }

    v10 = [(CKConversationListCollectionViewController *)self navigationItem];
    [v10 setSearchController:0];
  }

  else
  {
    if (self->_isInitialAppearance)
    {
      return;
    }

    v7 = [(CKConversationListCollectionViewController *)self navigationItem];
    v8 = [v7 searchController];

    if (v8)
    {
      return;
    }

    v10 = [(CKConversationListCollectionViewController *)self navigationItem];
    v9 = [(CKConversationListCollectionViewController *)self searchController];
    [v10 setSearchController:v9];
  }
}

- (void)commitPinnedConversationsForEditingPins
{
  v21 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    v3 = [MEMORY[0x1E69A5C38] sharedInstance];
    v4 = [v3 pinnedConversationIdentifiers];

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 pinningIdentifier];
          [v5 addObject:v13];

          v14 = [v12 chat];
          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if (v4 != v5 && ([v4 isEqualToArray:v5]& 1) == 0)
    {
      [(CKConversationListCollectionViewController *)self setPinningInteractionMethod:2];
      v15 = [MEMORY[0x1E69A5C38] sharedInstance];
      [v15 setPinnedChats:v6 withUpdateReason:*MEMORY[0x1E69A5A30]];
    }
  }

  else
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListCollectionViewController commitPinnedConversationsForEditingPins];
    }
  }
}

- (BOOL)_canShowCatalystFiltersNavigation
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernFilteringEnabled];

  if (v4 & 1) != 0 || (-[CKConversationListCollectionViewController searchController](self, "searchController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 showsSearchResultsController], v5, (v6) || -[CKConversationListCollectionViewController isBelowMacSnapToMinWidth](self, "isBelowMacSnapToMinWidth"))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [(CKConversationListCollectionViewController *)self filterMode];
    if (v7)
    {
      LOBYTE(v7) = [(CKConversationListCollectionViewController *)self filterMode]!= 1;
    }
  }

  return v7;
}

- (void)catalystFiltersNavigationBackButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self delegate];
  [v5 catalystFiltersNavigationBackButtonTapped:v4];
}

- (void)doneButtonTapped:(id)a3
{
  if ([(CKConversationListCollectionViewController *)self editingMode]== 2)
  {
    [(CKConversationListCollectionViewController *)self _submitFeedbackIfNecessaryForSuggestedPinnedConversationsFollowingOnboardingCompletedSuccessfully:1];
    if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
    {
      [(CKConversationListCollectionViewController *)self startCompletePinningOnboardingAnimation];
    }

    else
    {
      [(CKConversationListCollectionViewController *)self commitPinnedConversationsForEditingPins];
    }
  }

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
}

- (void)cancelButtonTapped:(id)a3
{
  if ([(CKConversationListCollectionViewController *)self editingMode]== 2)
  {
    [(CKConversationListCollectionViewController *)self _submitFeedbackIfNecessaryForSuggestedPinnedConversationsFollowingOnboardingCompletedSuccessfully:0];
  }

  if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
  {

    [(CKConversationListCollectionViewController *)self startEndSuggestedPinsAnimation];
  }

  else
  {

    [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
  }
}

- (void)selectAllButtonTapped:(id)a3
{
  v4 = [(CKConversationListCollectionViewController *)self collectionView];
  v21 = [v4 indexPathsForSelectedItems];

  v5 = [v21 count];
  v6 = [(CKConversationListCollectionViewController *)self numberOfConversations];
  v7 = [(CKConversationListCollectionViewController *)self collectionView];
  v8 = [v7 numberOfItemsInSection:5];

  if (v5 == v6)
  {
    if (v8 >= 1)
    {
      v14 = 0;
      do
      {
        v15 = [(CKConversationListCollectionViewController *)self collectionView];
        v16 = [MEMORY[0x1E696AC88] indexPathForRow:v14 inSection:5];
        [v15 deselectItemAtIndexPath:v16 animated:0];

        ++v14;
        v17 = [(CKConversationListCollectionViewController *)self collectionView];
        v18 = [v17 numberOfItemsInSection:5];
      }

      while (v14 < v18);
    }
  }

  else if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [(CKConversationListCollectionViewController *)self collectionView];
      v11 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:5];
      [v10 selectItemAtIndexPath:v11 animated:0 scrollPosition:0];

      ++v9;
      v12 = [(CKConversationListCollectionViewController *)self collectionView];
      v13 = [v12 numberOfItemsInSection:5];
    }

    while (v9 < v13);
  }

  v19 = v5 != v6;
  v20 = [(CKConversationListCollectionViewController *)self selectAllButtonItem];
  [(CKConversationListCollectionViewController *)self configureSelectionBarButtonItem:v20 usingStyle:v19];

  [(CKConversationListCollectionViewController *)self _updateToolbarItems];
}

- (void)configureSelectionBarButtonItem:(id)a3 usingStyle:(unint64_t)a4
{
  v8 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v5 = @"DESELECT_ALL_BUTTON";
  }

  else
  {
    v5 = @"SELECT_ALL_BUTTON";
  }

  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];
  [v8 setTitle:v7];

LABEL_6:
}

- (void)backButtonPressed
{
  v3 = [(CKConversationListCollectionViewController *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v7 = [(CKConversationListCollectionViewController *)self navigationController];
    v6 = [v7 popViewControllerAnimated:1];
  }
}

- (UIButton)macVirtualComposeButton
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isConversationListRefreshEnabled];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DC738]);
  }

  else
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 useMacToolbar];

    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v9 = MEMORY[0x1E69DCAB8];
    v10 = [MEMORY[0x1E69DCAD8] configurationWithScale:v8];
    v11 = [v9 systemImageNamed:@"square.and.pencil" withConfiguration:v10];

    macVirtualComposeButton = self->_macVirtualComposeButton;
    if (!macVirtualComposeButton)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 useMacToolbar];

      if ((v14 & 1) == 0)
      {
        v15 = [MEMORY[0x1E69DC738] buttonWithType:0];
        v16 = self->_macVirtualComposeButton;
        self->_macVirtualComposeButton = v15;

        [(UIButton *)self->_macVirtualComposeButton setContentMode:4];
        v17 = [MEMORY[0x1E69DC888] labelColor];
        [(UIButton *)self->_macVirtualComposeButton setTintColor:v17];

        [(UIButton *)self->_macVirtualComposeButton setBackgroundColor:0];
        v18 = [(UIButton *)self->_macVirtualComposeButton imageView];
        [v18 setContentMode:1];

        v19 = [(UIButton *)self->_macVirtualComposeButton layer];
        LODWORD(v20) = 1036831949;
        [v19 setShadowOpacity:v20];

        v21 = [(UIButton *)self->_macVirtualComposeButton layer];
        [v21 setShadowRadius:1.0];

        if (v7)
        {
          v22 = 5.0;
        }

        else
        {
          v22 = 3.0;
        }

        v23 = [(UIButton *)self->_macVirtualComposeButton layer];
        [v23 setCornerRadius:v22];

        v24 = [(UIButton *)self->_macVirtualComposeButton layer];
        [v24 setShadowOffset:{0.0, 1.0}];
      }

      [(UIButton *)self->_macVirtualComposeButton addTarget:self action:sel_composeButtonClicked_ forControlEvents:64];
      macVirtualComposeButton = self->_macVirtualComposeButton;
    }

    [(UIButton *)macVirtualComposeButton setImage:v11 forState:0];
    v5 = self->_macVirtualComposeButton;
  }

  return v5;
}

- (id)_editNicknameMenu:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [CKNameAndPhotoMenuElement menuElementWithNickname:v4];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __64__CKConversationListCollectionViewController__editNicknameMenu___block_invoke;
  v12 = &unk_1E72F53E8;
  objc_copyWeak(&v13, &location);
  [v5 setPrimaryActionHandler:&v9];
  v6 = objc_opt_new();
  [v6 addObject:{v5, v9, v10, v11, v12}];
  v7 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v6];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __64__CKConversationListCollectionViewController__editNicknameMenu___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained editNameAndPhotoMenuItemSelected];
}

- (id)editButtonDropdownMenu
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(location, self);
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isNameAndPhotoC3Enabled];

  if (v5)
  {
    v6 = [MEMORY[0x1E69A8108] sharedInstance];
    v7 = [v6 sharingEnabled];

    if (v7)
    {
      if (IMSharedHelperNickNameEnabled())
      {
        v8 = [MEMORY[0x1E69A5C10] sharedInstance];
        [v8 fetchPersonalNicknameWithCompletion:&__block_literal_global_792_0];

        v9 = [MEMORY[0x1E69A5C10] sharedInstance];
        v10 = [v9 personalNickname];

        v11 = [v10 firstName];
        if ([v11 length])
        {
        }

        else
        {
          v77 = [v10 lastName];
          v78 = [v77 length];

          if (!v78)
          {
            v12 = 1;
            goto LABEL_33;
          }
        }

        v79 = [(CKConversationListCollectionViewController *)self _editNicknameMenu:v10];
        [v3 addObject:v79];

        v12 = 0;
LABEL_33:

        goto LABEL_7;
      }
    }
  }

  v12 = 1;
LABEL_7:
  if ([(CKConversationListCollectionViewController *)self numberOfConversations]> 0 || [(CKConversationListCollectionViewController *)self numberOfPinnedConversations]>= 1)
  {
    v13 = MEMORY[0x1E69DC628];
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"MANAGE_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_2;
    v93[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v94, location);
    v17 = [v13 actionWithTitle:v15 image:v16 identifier:0 handler:v93];

    [v3 addObject:v17];
    if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
    {
      v18 = MEMORY[0x1E69DC628];
      v19 = CKFrameworkBundle();
      v20 = [v19 localizedStringForKey:@"EDIT_PINS" value:&stru_1F04268F8 table:@"ChatKit"];
      v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pin"];
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_3;
      v91[3] = &unk_1E72EBCD8;
      objc_copyWeak(&v92, location);
      v22 = [v18 actionWithTitle:v20 image:v21 identifier:0 handler:v91];

      [v3 addObject:v22];
      objc_destroyWeak(&v92);
    }

    objc_destroyWeak(&v94);
  }

  v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v24 = v12 | [v23 isNameAndPhotoC3Enabled] ^ 1;

  if (v24 == 1 && IMSharedHelperNickNameEnabled())
  {
    v25 = MEMORY[0x1E69DC628];
    v26 = CKFrameworkBundle();
    v27 = [v26 localizedStringForKey:@"EDIT_PROFILE" value:&stru_1F04268F8 table:@"ChatKit"];
    v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_4;
    v89[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v90, location);
    v29 = [v25 actionWithTitle:v27 image:v28 identifier:0 handler:v89];

    [v3 addObject:v29];
    objc_destroyWeak(&v90);
  }

  v30 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v31 = [v30 isModernFilteringEnabled];

  if ((v31 & 1) == 0 && ![(CKConversationListCollectionViewController *)self _shouldShowInboxView])
  {
    [(CKConversationListCollectionViewController *)self _configureSecondarySubMenuInParentMenuItems:v3];
  }

  if ([(CKConversationListCollectionViewController *)self _shouldShowInboxView]&& IMSharedHelperMessageSIMFilteringEnabled())
  {
    v32 = [(CKConversationListCollectionViewController *)self _simFilterSubMenu];
    [v3 addObject:v32];
  }

  v33 = 0x1E69DC000;
  if ([(CKConversationListCollectionViewController *)self shouldShowInternalDebugMenu])
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&from, self);
    v35 = MEMORY[0x1E69DC628];
    v36 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant"];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_5;
    v86[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v87, &from);
    v37 = [v35 actionWithTitle:@"Debug" image:v36 identifier:0 handler:v86];

    [v34 addObject:v37];
    v38 = MEMORY[0x1E69DC628];
    v39 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gear"];
    v40 = [v38 actionWithTitle:@"Settings" image:v39 identifier:0 handler:&__block_literal_global_821];

    [v34 addObject:v40];
    v81 = v40;
    v41 = MEMORY[0x1E69DC628];
    v42 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"flag"];
    v43 = [v41 actionWithTitle:@"Feature Flags" image:v42 identifier:0 handler:&__block_literal_global_834_1];

    [v34 addObject:v43];
    v44 = v3;
    v45 = IMGetDomainBoolForKey();
    v80 = v37;
    v46 = @"eye.slash";
    if (v45)
    {
      v46 = @"eye";
      v47 = @"Show Sensitive UI";
    }

    else
    {
      v47 = @"Hide Sensitive UI";
    }

    v48 = v46;
    v49 = v47;
    v50 = MEMORY[0x1E69DC628];
    v51 = [MEMORY[0x1E69DCAB8] systemImageNamed:v48];
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_8;
    v84[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v85, &from);
    v52 = [v50 actionWithTitle:v49 image:v51 identifier:0 handler:v84];

    [v34 addObject:v52];
    v53 = MEMORY[0x1E69DCC60];
    v54 = [v34 copy];
    v55 = [v53 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v54];

    [v44 addObject:v55];
    objc_destroyWeak(&v85);

    objc_destroyWeak(&v87);
    objc_destroyWeak(&from);

    v3 = v44;
    v33 = 0x1E69DC000uLL;
  }

  v56 = [MEMORY[0x1E695E000] standardUserDefaults];
  v57 = [v56 BOOLForKey:@"ShowCarrierPigeonNotificationHelpers"];

  if (v57)
  {
    v58 = MEMORY[0x1E69DC628];
    v59 = CKFrameworkBundle();
    v60 = [v59 localizedStringForKey:@"Connect" value:&stru_1F04268F8 table:@"ChatKit"];
    v61 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"antenna.radiowaves.left.and.right"];
    v62 = [v58 actionWithTitle:v60 image:v61 identifier:0 handler:&__block_literal_global_864_0];

    v63 = MEMORY[0x1E69DC628];
    v64 = CKFrameworkBundle();
    v65 = [v64 localizedStringForKey:@"Update count" value:&stru_1F04268F8 table:@"ChatKit"];
    v66 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"number.circle"];
    v67 = [v63 actionWithTitle:v65 image:v66 identifier:0 handler:&__block_literal_global_872_1];

    objc_initWeak(&from, self);
    v68 = MEMORY[0x1E69DC628];
    v69 = CKFrameworkBundle();
    v70 = [v69 localizedStringForKey:@"Remove invited handles" value:&stru_1F04268F8 table:@"ChatKit"];
    v71 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"delete.left"];
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_11;
    v82[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v83, &from);
    v72 = [v68 actionWithTitle:v70 image:v71 identifier:0 handler:v82];

    [v3 addObject:v62];
    [v3 addObject:v67];
    [v3 addObject:v72];

    objc_destroyWeak(&v83);
    objc_destroyWeak(&from);
  }

  v73 = *(v33 + 3168);
  v74 = [v3 copy];
  v75 = [v73 menuWithTitle:&stru_1F04268F8 children:v74];

  objc_destroyWeak(location);

  return v75;
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditingMode:1 animated:1];
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditingMode:2 animated:1];
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained editNameAndPhotoMenuItemSelected];
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 showDebugMenu];
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_6()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=MESSAGES"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_7()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=INTERNAL_SETTINGS&path=Feature%20Flags/Messages"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 toggleSensitiveUI];
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_9()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 __mainThreadPostNotificationName:*MEMORY[0x1E69A5938] object:0];
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_10()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 __mainThreadPostNotificationName:*MEMORY[0x1E69A5850] object:0];
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A81A0] sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_12;
  v5[3] = &unk_1E72F5430;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 removeAllInvitedHandlesWithCompletion:v5];

  objc_destroyWeak(&v6);
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_12(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_13;
  block[3] = &unk_1E72EFA70;
  v10 = a2;
  v8 = v5;
  v6 = v5;
  objc_copyWeak(&v9, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v9);
}

void __68__CKConversationListCollectionViewController_editButtonDropdownMenu__block_invoke_13(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = @"Success";
  }

  else
  {
    v2 = @"Removing invited handles failed.";
  }

  v3 = v2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v11 = v3;
    v5 = [(__CFString *)v3 stringByAppendingString:?];

    v4 = v5;
  }

  v12 = v4;
  v6 = [CKAlertController alertControllerWithTitle:@"Remove invited handles" message:v4 preferredStyle:1];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  v9 = [CKAlertAction actionWithTitle:v8 style:1 handler:0];

  [v6 addAction:v9];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentViewController:v6 animated:1 completion:0];
}

- (BOOL)shouldShowInternalDebugMenu
{
  v2 = [MEMORY[0x1E69A60F0] sharedInstance];
  v3 = [v2 isInternalInstall];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"showDebugMenu"];

  return v5;
}

- (void)_configureSecondarySubMenuInParentMenuItems:(id)a3
{
  v14 = a3;
  v4 = objc_opt_new();
  v5 = [(CKConversationListCollectionViewController *)self conversationList];
  v6 = [v5 conversationsForFilterMode:9];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(CKConversationListCollectionViewController *)self showOscarModalAction];
    [v4 addObject:v8];
  }

  v9 = [(CKConversationListCollectionViewController *)self conversationList];
  v10 = [v9 conversationsForFilterMode:7];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(CKConversationListCollectionViewController *)self showRecentlyDeletedModalAction];
    [v4 addObject:v12];
  }

  if ([v4 count])
  {
    v13 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v4];
    [v14 addObject:v13];
  }
}

- (void)editNameAndPhotoMenuItemSelected
{
  v3 = [MEMORY[0x1E69A5C10] sharedInstance];
  v4 = [v3 iCloudSignedInToUseNicknames];

  if ((v4 & 1) == 0)
  {
    [(CKConversationListCollectionViewController *)self showiCloudNotSignedInAlertForNicknames];
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if (([v5 isAllowMultiplePhoneNumbersSNaPEnabled] & 1) == 0)
  {
    v7 = [MEMORY[0x1E69A5C10] multiplePhoneNumbersTiedToAppleID];

    if (!v7)
    {
      goto LABEL_8;
    }

    [(CKConversationListCollectionViewController *)self showMultiplePhoneNumbersAlertForNicknames];
LABEL_5:
    v6 = [(CKConversationListCollectionViewController *)self _meCardSharingState];
    [v6 setSharingEnabled:0];

    goto LABEL_9;
  }

LABEL_8:
  [(CKConversationListCollectionViewController *)self showMeCardViewController];
LABEL_9:
  v8 = [MEMORY[0x1E69A8168] sharedInstance];
  [v8 trackEvent:*MEMORY[0x1E69A73C8]];
}

- (id)_simFilterSubMenu
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69DC628];
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"SIM_FILTER_ALL_LINES" value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"simcard.2"];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __63__CKConversationListCollectionViewController__simFilterSubMenu__block_invoke;
  v19 = &unk_1E72EBCD8;
  objc_copyWeak(&v20, &location);
  v8 = [v4 actionWithTitle:v6 image:v7 identifier:0 handler:&v16];

  v9 = [(CKConversationListCollectionViewController *)self conversationList:v16];
  v10 = [v9 simFilterIndex];

  if (v10 == -1)
  {
    [v8 setState:1];
  }

  [v3 addObject:v8];
  v11 = [(CKConversationListCollectionViewController *)self _simFilterActionsForActiveSubscriptions];
  [v3 addObjectsFromArray:v11];

  v12 = MEMORY[0x1E69DCC60];
  v13 = [v3 copy];
  v14 = [v12 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

void __63__CKConversationListCollectionViewController__simFilterSubMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSIMFilterIndexAndReloadData:-1];

  v2 = [MEMORY[0x1E696AD98] numberWithInteger:-1];
  IMSetDomainValueForKey();
}

- (id)_simFilterActionsForActiveSubscriptions
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [MEMORY[0x1E69A7F68] sharedInstance];
  v4 = [v3 ctSubscriptionInfo];
  v5 = [v4 subscriptions];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        if ([v9 slotID])
        {
          v10 = CKFrameworkBundle();
          v11 = [v9 label];
          v12 = [v10 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit"];

          objc_initWeak(&location, self);
          v13 = MEMORY[0x1E69DC628];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __85__CKConversationListCollectionViewController__simFilterActionsForActiveSubscriptions__block_invoke;
          v22[3] = &unk_1E72EBF48;
          objc_copyWeak(&v23, &location);
          v22[4] = v9;
          v14 = [v13 actionWithTitle:v12 image:0 identifier:0 handler:v22];
          v15 = [(CKConversationListCollectionViewController *)self conversationList];
          [v14 setState:{objc_msgSend(v15, "simFilterIndex") == objc_msgSend(v9, "slotID")}];

          v16 = CKLocalizedShortNameForContext(v9);
          v17 = [MEMORY[0x1E69DCAB8] __ck_actionImageForSubscriptionShortName:v16 isFilled:0];
          [v14 setImage:v17];

          [v21 addObject:v14];
          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v18 = [v21 copy];

  return v18;
}

void __85__CKConversationListCollectionViewController__simFilterActionsForActiveSubscriptions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateSIMFilterIndexAndReloadData:{objc_msgSend(*(a1 + 32), "slotID")}];

  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "slotID")}];
  IMSetDomainValueForKey();
}

- (void)editButtonMenuWillShow
{
  v3 = [(CKConversationListCollectionViewController *)self delegate];
  [v3 dismissKeyboardIfVisible];

  if ([(CKConversationListCollectionViewController *)self isShowingSwipeDeleteConfirmation])
  {
    [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
  }

  v4 = [MEMORY[0x1E69A8168] sharedInstance];
  [v4 trackEvent:*MEMORY[0x1E69A74F8]];
}

id __60__CKConversationListCollectionViewController_editButtonItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained editButtonMenuWillShow];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 editButtonDropdownMenu];

  return v4;
}

- (UIBarButtonItem)editOscarButtonItem
{
  editOscarButtonItem = self->_editOscarButtonItem;
  if (!editOscarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 primaryAction:0];
    v5 = self->_editOscarButtonItem;
    self->_editOscarButtonItem = v4;

    [(UIBarButtonItem *)self->_editOscarButtonItem setAccessibilityIdentifier:@"editJunkButton"];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DC628];
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"MANAGE_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __65__CKConversationListCollectionViewController_editOscarButtonItem__block_invoke;
    v15 = &unk_1E72EBCD8;
    objc_copyWeak(&v16, &location);
    v10 = [v6 actionWithTitle:v8 image:v9 identifier:0 handler:&v12];
    [(UIBarButtonItem *)self->_editOscarButtonItem setPrimaryAction:v10, v12, v13, v14, v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    editOscarButtonItem = self->_editOscarButtonItem;
  }

  return editOscarButtonItem;
}

void __65__CKConversationListCollectionViewController_editOscarButtonItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditingMode:1 animated:1];
}

- (UIBarButtonItem)optionsButtonItem
{
  optionsButtonItem = self->_optionsButtonItem;
  if (!optionsButtonItem)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 conversationListOptionsButtonImageName];

    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5];
    v8 = [v6 initWithImage:v7 style:0 target:self action:0];
    v9 = self->_optionsButtonItem;
    self->_optionsButtonItem = v8;

    [(UIBarButtonItem *)self->_optionsButtonItem setAccessibilityIdentifier:@"optionsButton"];
    if (![(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
    {
      [(UIBarButtonItem *)self->_optionsButtonItem setSpringLoaded:1];
      objc_initWeak(&location, self);
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __63__CKConversationListCollectionViewController_optionsButtonItem__block_invoke;
      v14 = &unk_1E72F5458;
      objc_copyWeak(&v15, &location);
      [(UIBarButtonItem *)self->_optionsButtonItem _setSecondaryActionsProvider:&v11];
      [(UIBarButtonItem *)self->_optionsButtonItem setSecondaryActionsArePrimary:1, v11, v12, v13, v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    optionsButtonItem = self->_optionsButtonItem;
  }

  return optionsButtonItem;
}

id __63__CKConversationListCollectionViewController_optionsButtonItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained editButtonMenuWillShow];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 editButtonDropdownMenu];

  return v4;
}

- (UIBarButtonItem)cancelButtonItem
{
  cancelButtonItem = self->_cancelButtonItem;
  if (!cancelButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
    v5 = self->_cancelButtonItem;
    self->_cancelButtonItem = v4;

    [(UIBarButtonItem *)self->_cancelButtonItem setSpringLoaded:1];
    cancelButtonItem = self->_cancelButtonItem;
  }

  return cancelButtonItem;
}

- (UIBarButtonItem)doneButtonItem
{
  doneButtonItem = self->_doneButtonItem;
  if (!doneButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped_];
    v5 = self->_doneButtonItem;
    self->_doneButtonItem = v4;

    [(UIBarButtonItem *)self->_doneButtonItem setSpringLoaded:1];
    doneButtonItem = self->_doneButtonItem;
  }

  return doneButtonItem;
}

- (UIBarButtonItem)selectAllButtonItem
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (!self->_selectAllButtonItem)
  {
    v3 = objc_alloc(MEMORY[0x1E69DC708]);
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"SELECT_ALL_BUTTON" value:&stru_1F04268F8 table:@"ChatKit"];
    v6 = [v3 initWithTitle:v5 style:0 target:self action:sel_selectAllButtonTapped_];
    selectAllButtonItem = self->_selectAllButtonItem;
    self->_selectAllButtonItem = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"SELECT_ALL_BUTTON" value:&stru_1F04268F8 table:@"ChatKit"];
    v17[0] = v10;
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"DESELECT_ALL_BUTTON" value:&stru_1F04268F8 table:@"ChatKit"];
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [v8 initWithArray:v13];
    [(UIBarButtonItem *)self->_selectAllButtonItem setPossibleTitles:v14];

    [(UIBarButtonItem *)self->_selectAllButtonItem setAccessibilityIdentifier:@"selectAllButton"];
    [(UIBarButtonItem *)self->_selectAllButtonItem setSpringLoaded:1];
  }

  [(CKConversationListCollectionViewController *)self _updateSelectAllButtonItemTitle];
  v15 = self->_selectAllButtonItem;

  return v15;
}

- (UIBarButtonItem)moveSelectedToRecentlyDeletedButtonItem
{
  moveSelectedToRecentlyDeletedButtonItem = self->_moveSelectedToRecentlyDeletedButtonItem;
  if (!moveSelectedToRecentlyDeletedButtonItem)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 conversationListMoveSelectedToRecentlyDeletedButtonItemWithTarget:self action:sel__moveToRecentlyDeletedButtonTapped_];

    [(UIBarButtonItem *)v5 accessibilitySetIdentification:@"deleteButton"];
    v6 = self->_moveSelectedToRecentlyDeletedButtonItem;
    self->_moveSelectedToRecentlyDeletedButtonItem = v5;

    moveSelectedToRecentlyDeletedButtonItem = self->_moveSelectedToRecentlyDeletedButtonItem;
  }

  return moveSelectedToRecentlyDeletedButtonItem;
}

- (UIBarButtonItem)closeButtonItem
{
  closeButtonItem = self->_closeButtonItem;
  if (!closeButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissPresentedNavController_];
    v5 = self->_closeButtonItem;
    self->_closeButtonItem = v4;

    closeButtonItem = self->_closeButtonItem;
  }

  return closeButtonItem;
}

- (unint64_t)_preferredEditingMode:(unint64_t)a3
{
  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4 shouldUpdate:(BOOL)a5 shouldInvalidateCellLayout:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = [(CKConversationListCollectionViewController *)self _preferredEditingMode:a3];
  editingMode = self->_editingMode;
  if (editingMode == v10)
  {
    return;
  }

  v12 = v10;
  if (!v10 && [(CKConversationListCollectionViewController *)self isShowingPinningOnboarding]&& ![(CKConversationListCollectionViewController *)self isCurrentlyAnimatingPinningOnboardingSuggestions])
  {
    [(CKConversationListCollectionViewController *)self setIsShowingPinningOnboarding:0];
  }

  self->_editingMode = v12;
  v13 = [(CKConversationListCollectionViewController *)self collectionView];
  v14 = [v13 visibleCells];
  v15 = [v14 _copyForEnumerating];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __110__CKConversationListCollectionViewController_setEditingMode_animated_shouldUpdate_shouldInvalidateCellLayout___block_invoke;
  v34[3] = &unk_1E72F5480;
  v34[4] = self;
  v34[5] = v12;
  v35 = v8;
  [v15 enumerateObjectsUsingBlock:v34];
  if (v7)
  {
    [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:v8];
  }

  v16 = [(CKConversationListCollectionViewController *)self collectionView];
  [v16 setAllowsSelectionDuringEditing:v12 != 2];

  v17 = [(CKConversationListCollectionViewController *)self collectionView];
  [v17 setAllowsMultipleSelectionDuringEditing:v12 != 2];

  switch(v12)
  {
    case 2uLL:
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v33 = 0;
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Editing mode changed to CKConversationListControllerEditingModePin", v33, 2u);
        }
      }

      [(CKConversationListCollectionViewController *)self _freezeConversations];
      v27 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v28 = [v27 isModernFilteringEnabled];

      if (v28)
      {
        v29 = [(CKConversationListCollectionViewController *)self _getTitleForCurrentFilterMode];
        [(CKConversationListCollectionViewController *)self setTitle:v29];

        [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
      }

      v23 = self;
      v24 = 1;
      goto LABEL_35;
    case 1uLL:
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *v33 = 0;
          _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Editing mode changed to CKConversationListControllerEditingModeManage", v33, 2u);
        }
      }

      [(CKConversationListCollectionViewController *)self setEditing:1 animated:v8 shouldInvalidateCellLayout:v6];
      break;
    case 0uLL:
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v33 = 0;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Editing mode changed to CKConversationListControllerEditingModeNone", v33, 2u);
        }
      }

      if (!CKIsRunningInMacCatalyst())
      {
        v19 = [(CKConversationListCollectionViewController *)self collectionView];
        [v19 setAllowsMultipleSelection:0];
      }

      if (editingMode == 2)
      {
        [(CKConversationListCollectionViewController *)self _unfreezeConversations];
        if (v7)
        {
          [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
        }

        v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v21 = [v20 isModernFilteringEnabled];

        if ((v21 & 1) == 0)
        {
          v22 = [(CKConversationListCollectionViewController *)self _getTitleForCurrentFilterMode];
          [(CKConversationListCollectionViewController *)self setTitle:v22];

          [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
        }
      }

      v23 = self;
      v24 = 0;
LABEL_35:
      [(CKConversationListCollectionViewController *)v23 setEditing:v24 animated:v8];
      break;
  }

  [(CKConversationListCollectionViewController *)self dismissSearchIfNeeded];
  v30 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v31 = [v30 isModernFilteringEnabled];

  if (v31)
  {
    [(CKConversationListCollectionViewController *)self updateConversationListTitle];
    [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
  }

  [(CKConversationListCollectionViewController *)self updateSharedProfileNavigationBarPaletteVisibility];
  v32 = [(CKConversationListCollectionViewController *)self delegate];
  [v32 conversationListWillBeginEditing:{-[CKConversationListCollectionViewController editingMode](self, "editingMode") != 0}];
}

void __110__CKConversationListCollectionViewController_setEditingMode_animated_shouldUpdate_shouldInvalidateCellLayout___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 indexPathForCell:v12];

  if ([v4 section] != 5)
  {
    if ([v4 section] != 2)
    {
      goto LABEL_9;
    }

    v7 = [*(a1 + 32) dataSource];
    v6 = [v7 itemIdentifierForIndexPath:v4];

    v8 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifier];
    if (([v6 isEqualToString:v8] & 1) == 0)
    {
      v9 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifierForDropTargetAtItemIndex:](CKPinnedConversationDropTargetCollectionViewCell, "uniqueIdentifierForDropTargetAtItemIndex:", [v4 item]);
      v10 = [v6 isEqualToString:v9];

      if (v10)
      {
        goto LABEL_8;
      }

      v11 = *(a1 + 32);
      v8 = v12;
      [v8 setEditingMode:objc_msgSend(v11 animated:{"editingMode"), *(a1 + 48)}];
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 32);
  v6 = v12;
  [v5 _ensureCellLayoutOnCell:v6];
  [v6 setEditingMode:*(a1 + 40) animated:*(a1 + 48)];
LABEL_8:

LABEL_9:
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4 shouldInvalidateCellLayout:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if ([(CKConversationListCollectionViewController *)self isEditing]!= a3)
  {
    v13.receiver = self;
    v13.super_class = CKConversationListCollectionViewController;
    [(CKConversationListCollectionViewController *)&v13 setEditing:v7 animated:v6];
    if (!v7 && [(CKConversationListCollectionViewController *)self editingMode])
    {
      [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setEditing:v7 animated:v6];

    v10 = +[CKUIBehavior sharedBehaviors];
    v11 = [v10 selectNewConversationOnDeletion];

    if (v11 && !v7)
    {
      [(CKConversationListCollectionViewController *)self updateConversationSelection];
    }

    if (v7)
    {
      v12 = [(CKConversationListCollectionViewController *)self updater];
      [v12 beginHoldingUpdatesForReason:@"editMode"];
    }

    else
    {
      [(CKConversationListCollectionViewController *)self _endHoldingUpdatesForBatchEditing:v6];
      [(CKConversationListCollectionViewController *)self updateSyncProgressIfNeeded];
    }

    [(CKConversationListCollectionViewController *)self _updateForCurrentEditingStateAnimated:v6 shouldInvalidateCellLayout:v5];
  }
}

- (void)_updateForCurrentEditingStateAnimated:(BOOL)a3 shouldInvalidateCellLayout:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CKConversationListCollectionViewController *)self filterMode]== 7 || [(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    v7 = 0;
  }

  else
  {
    [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:v5];
    if ([(CKConversationListCollectionViewController *)self isEditing])
    {
      v7 = CKIsRunningInMacCatalyst() != 0;
    }

    else
    {
      v7 = 1;
    }
  }

  [(CKConversationListCollectionViewController *)self configureSearchBarEnabled:v7];
  v8 = [(CKConversationListCollectionViewController *)self shouldShowToolbar];
  if (v8)
  {
    [(CKConversationListCollectionViewController *)self _updateToolbarItems];
  }

  v9 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
  v10 = [v9 isSyncViewCurrentlyVisible];

  v11 = [(CKConversationListCollectionViewController *)self navigationController];
  [v11 setToolbarHidden:!v8 animated:v10 ^ 1u];

  [(CKConversationListCollectionViewController *)self updateNavigationItems];
  if (v4)
  {

    [(CKConversationListCollectionViewController *)self invalidateCellLayout];
  }
}

- (void)configureSearchBarEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKConversationListCollectionViewController *)self navigationItem];
  v5 = [v4 searchController];
  v7 = [v5 searchBar];

  v6 = [v7 searchTextField];
  [v6 setEnabled:v3];
}

- (void)_endHoldingUpdatesForBatchEditing:(BOOL)a3
{
  if (a3)
  {
    [(CKConversationListCollectionViewController *)self updateNavigationItems];
    v4 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__CKConversationListCollectionViewController__endHoldingUpdatesForBatchEditing___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v5 = [(CKConversationListCollectionViewController *)self updater];
    [v5 endAllHoldsOnUpdatesForReason:@"editMode" updateTriggeredIfNotHeldShouldBeDeferred:1];
  }
}

void __80__CKConversationListCollectionViewController__endHoldingUpdatesForBatchEditing___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 endAllHoldsOnUpdatesForReason:@"editMode" updateTriggeredIfNotHeldShouldBeDeferred:1];
}

- (void)composeButtonClicked:(id)a3
{
  v4 = a3;
  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:0];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isModernFilteringEnabled];

  v7 = [(CKConversationListCollectionViewController *)self filterMode];
  if (v6)
  {
    if (v7 == [MEMORY[0x1E69A8080] defaultPrimaryFilterMode])
    {
      goto LABEL_8;
    }

    v8 = [(CKConversationListCollectionViewController *)self splitViewController];
    v9 = [v8 isCollapsed];

    if (v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    v10 = [(CKConversationListCollectionViewController *)self delegate];
    [v10 catalystFiltersNavigationBackButtonTapped:v4];

    goto LABEL_8;
  }

  if (v7 == 7 || [(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    goto LABEL_7;
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained isAnimatingMessageSend];

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v23 = 0;
        v14 = "Compose button selected during an active message send animation, ignoring.";
        v15 = &v23;
LABEL_16:
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }
  }

  else if ([(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v22 = 0;
        v14 = "Compose button selected during an active conversation drag and drop session, ignoring.";
        v15 = &v22;
        goto LABEL_16;
      }

LABEL_22:
    }
  }

  else
  {
    if ([(CKConversationListCollectionViewController *)self _wantsThreeColumnLayout])
    {
      v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v17 = [v16 isModernSplitViewControllerEnabled];

      if ((v17 & 1) == 0)
      {
        v18 = [(CKConversationListCollectionViewController *)self splitViewController];
        [v18 hideColumn:0];
      }
    }

    v19 = +[CKDraftManager sharedInstance];
    [v19 setDraftForPendingConversation:0 withRecipients:0];

    v20 = +[CKDraftManager sharedInstance];
    [v20 saveCompositionAndFlushCache:0];

    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];

    [(CKConversationListCollectionViewController *)self dismissSearchIfNeeded];
    if ([(CKConversationListCollectionViewController *)self _shouldKeepSelection])
    {
      v13 = [(CKConversationListCollectionViewController *)self collectionView];
      [v13 __ck_scrollToTop:1];
      goto LABEL_22;
    }
  }
}

- (void)dismissSearchIfNeeded
{
  v3 = [(CKConversationListCollectionViewController *)self searchController];
  v4 = [v3 isActive];

  if (v4)
  {
    v5 = [(CKConversationListCollectionViewController *)self searchController];
    [v5 setActive:0];

    v6 = [(CKConversationListCollectionViewController *)self searchController];
    [v6 setShowsSearchResultsController:0];
  }
}

- (void)showiCloudNotSignedInAlertForNicknames
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"NICKNAME_FEATURE_NOT_AVAILABLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NICKNAME_APPLEID_ICLOUD_MISMATCH_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v18 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v4) = [v8 isNameAndPhotoC3Enabled];

  if (v4)
  {
    v9 = MEMORY[0x1E69DC650];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"NICKNAME_FEATURE_NOT_AVAILABLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"NICKNAME_ICLOUD_NOT_SIGNED_IN_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = [v9 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

    v18 = v14;
  }

  v15 = CKFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  v17 = [CKAlertAction actionWithTitle:v16 style:0 handler:0];
  [v18 addAction:v17];

  [(CKConversationListCollectionViewController *)self presentViewController:v18 animated:1 completion:0];
}

- (void)addToContactsButtonTappedForCell:(id)a3
{
  v12 = a3;
  v4 = [(CKConversationListCollectionViewController *)self collectionView];
  v5 = [v4 indexPathForCell:v12];

  v6 = [(CKConversationListCollectionViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  v8 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v7];
  v9 = [v8 chat];
  v10 = [v9 allowedByScreenTime];

  if ((v10 & 1) == 0)
  {
    if ([(CKConversationListCollectionViewController *)self shouldShowAlertForRemotelyManagedUser])
    {
      v11 = [(CKConversationListCollectionViewController *)self getAddToContactsRemoteAlertWithConversation:v8 sender:v12];
      [(CKConversationListCollectionViewController *)self presentViewController:v11 animated:1 completion:0];
    }

    else
    {
      [CKScreenTimeHelper addToContactsAction:v8 shouldBypassScreenTimeShield:0 presentingViewController:self sender:v12];
    }
  }
}

- (void)showMultiplePhoneNumbersAlertForNicknames
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"NICKNAME_FEATURE_NOT_AVAILABLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"NICKNAME_MULTIPLE_PHONE_NUMBERS_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v11 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
  v10 = [CKAlertAction actionWithTitle:v9 style:0 handler:0];
  [v11 addAction:v10];

  [(CKConversationListCollectionViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (BOOL)_shouldSelectConversationAfterDeletingIndexPath:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 selectNewConversationOnDeletion];

  if (v6 && (-[CKConversationListCollectionViewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isCollapsed], v7, (v8 & 1) == 0) && (-[CKConversationListCollectionViewController dataSource](self, "dataSource"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "snapshot"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "itemIdentifiers"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v9, v12))
  {
    v13 = MEMORY[0x1E695DFA8];
    v14 = [(CKConversationListCollectionViewController *)self collectionView];
    v15 = [v14 indexPathsForSelectedItems];
    v16 = [v13 setWithArray:v15];

    if (v4)
    {
      [v16 removeObject:v4];
    }

    v17 = [v16 count] == 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)performDeletionForActiveConversation:(id)a3 itemIdentifier:(id)a4 completionHandler:(id)a5 cellToUpdate:(id)a6 alertsDisplayConfiguration:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v31 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v12;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "[Recently Deleted] Initiating deletion on conversation: %@", buf, 0xCu);
    }
  }

  v17 = [(CKConversationListCollectionViewController *)self dataSource];
  v18 = [v17 indexPathForItemIdentifier:v32];

  v19 = [(CKConversationListCollectionViewController *)self updater];
  [v19 beginHoldingUpdatesForReason:@"swipeToDelete"];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke;
  aBlock[3] = &unk_1E72F54A8;
  aBlock[4] = self;
  v20 = v12;
  v39 = v20;
  v21 = v18;
  v40 = v21;
  v22 = v14;
  v41 = v22;
  v23 = _Block_copy(aBlock);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke_4;
  v35[3] = &unk_1E72EF038;
  v24 = v23;
  v36 = v24;
  v25 = v13;
  v37 = v25;
  v26 = _Block_copy(v35);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke_5;
  v33[3] = &unk_1E72ED1C8;
  v33[4] = self;
  v27 = v25;
  v34 = v27;
  v28 = _Block_copy(v33);
  [v15 setPresentationViewController:self];
  v42 = v20;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  [v15 setTargetConversations:v29];

  [v15 setAlertsCompletedBlock:v26];
  [v15 setCancelBlock:v28];
  v30 = [[CKConversationConfirmationAlertsController alloc] initWithConfiguration:v15];
  if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    [(CKConversationConfirmationAlertsController *)v30 presentPermanentJunkConversationDeletionConfirmations];
  }

  else
  {
    [(CKConversationConfirmationAlertsController *)v30 presentRecoverableConversationDeletionConfirmations];
  }
}

void __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) conversationList];
  [v4 removeConversation:*(a1 + 40)];

  v5 = *(a1 + 32);
  v29[0] = *(a1 + 40);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v5 _removeConversationsFromFrozenConversations:v6];

  if ([*(a1 + 40) isPinned])
  {
    [*(a1 + 32) setHoldPinningUpdatesForConversationDeletion:1];
  }

  v7 = [*(a1 + 32) delegate];
  v28 = *(a1 + 40);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v7 conversationListIsDeletingConversations:v8];

  v9 = [*(a1 + 32) filterMode];
  v10 = [*(a1 + 32) conversationList];
  if (v9 == 9)
  {
    v27 = *(a1 + 40);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [v10 deleteConversations:v11];
  }

  else
  {
    v26 = *(a1 + 40);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v12 = [MEMORY[0x1E695DF00] now];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke_2;
    v25[3] = &unk_1E72EBA18;
    v25[4] = *(a1 + 32);
    [v10 recoverableDeleteForConversations:v11 deleteDate:v12 synchronousQuery:0 completionHandler:v25];
  }

  v13 = *(a1 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke_3;
  v24[3] = &unk_1E72EBA18;
  v24[4] = v13;
  [v13 updateSnapshotAnimatingDifferences:1 completion:v24];
  v14 = [*(a1 + 32) conversationList];
  v15 = [v14 conversations];
  v16 = [v15 count];

  if (!v16)
  {
    [*(a1 + 32) updateNavigationItems];
  }

  if ([*(a1 + 32) _shouldSelectConversationAfterDeletingIndexPath:*(a1 + 48)])
  {
    v17 = *(a1 + 32);
    if (*(a1 + 48))
    {
      [v17 selectConversationClosestToDeletedIndex:?];
    }

    else
    {
      [v17 selectDefaultConversationAnimated:1];
    }
  }

  else
  {
    v18 = [*(a1 + 32) delegate];
    if (![v18 isCollapsed])
    {
      v19 = [*(a1 + 32) collectionView];
      v20 = [v19 indexPathsForSelectedItems];
      v21 = [v20 count];

      if (v21)
      {
        goto LABEL_16;
      }

      v18 = [*(a1 + 32) delegate];
      [v18 updateForNoConversationSelected];
    }
  }

LABEL_16:
  [*(a1 + 32) leaveJunkFilterIfNeeded];
  if ([*(a1 + 56) conformsToProtocol:&unk_1F05740B0])
  {
    [*(a1 + 56) updateContentsForConversation:0];
  }

  v22 = [*(a1 + 40) deviceIndependentID];
  v23 = CKTextInputIdentifier();
  if (v23)
  {
    [MEMORY[0x1E69DCE60] clearTextInputContextIdentifier:v23];
  }

  if (v3)
  {
    v3[2](v3, 1);
  }
}

void __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationList];
  [v1 updateConversationListsAndSortIfEnabled];
}

void __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 endAllHoldsOnUpdatesForReason:@"swipeToDelete" updateTriggeredIfNotHeldShouldBeDeferred:1];
}

- (void)performDeletionForPendingConversationCell:(id)a3 completionHandler:(id)a4 alertsDisplayConfiguration:(id)a5
{
  v10 = a4;
  v6 = [(CKConversationListCollectionViewController *)self updater];
  [v6 beginHoldingUpdatesForReason:@"swipeToDelete"];

  v7 = [(CKConversationListCollectionViewController *)self delegate];
  [v7 conversationListControllerTappedDeleteNewMessage:self];

  v8 = [(CKConversationListCollectionViewController *)self updater];
  [v8 endAllHoldsOnUpdatesForReason:@"swipeToDelete" updateTriggeredIfNotHeldShouldBeDeferred:1];

  v9 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 1);
    v9 = v10;
  }
}

- (void)_cancelDeletion:(id)a3
{
  v6 = a3;
  v4 = [(CKConversationListCollectionViewController *)self updater];
  [v4 endAllHoldsOnUpdatesForReason:@"swipeToDelete" updateTriggeredIfNotHeldShouldBeDeferred:1];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

- (BOOL)_canShowSyncProgressFooter
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8018] sharedInstance];
  v4 = [v3 getBoolFromDomain:*MEMORY[0x1E69A6D10] forKey:@"cksync-always-show-progress" defaultValue:0];

  v5 = [MEMORY[0x1E69A5B20] sharedInstance];
  v6 = [v5 isEnabled] | v4;

  if (v6)
  {
    v7 = [MEMORY[0x1E69A8018] sharedInstance];
    v8 = [v7 getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"MiCShowProgressFooter" defaultValue:1];

    if (v8)
    {
      if ([(CKConversationListCollectionViewController *)self filterMode]== 7 || [(CKConversationListCollectionViewController *)self filterMode]== 9)
      {
        v9 = IMOSLoggingEnabled();
        if (v9)
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            LOWORD(v18) = 0;
            _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Filter mode is recently deleted or oscar.", &v18, 2u);
          }

LABEL_16:

LABEL_17:
          LOBYTE(v9) = 0;
        }
      }

      else
      {
        if (![(CKConversationListCollectionViewController *)self isVisible]|| [(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth]|| [(CKConversationListCollectionViewController *)self isEditing])
        {
          v9 = IMOSLoggingEnabled();
          if (!v9)
          {
            return v9;
          }

          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            if ([(CKConversationListCollectionViewController *)self isVisible])
            {
              v12 = @"YES";
            }

            else
            {
              v12 = @"NO";
            }

            v13 = [(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth];
            v14 = [(CKConversationListCollectionViewController *)self isEditing];
            if (v13)
            {
              v15 = @"YES";
            }

            else
            {
              v15 = @"NO";
            }

            v18 = 138412802;
            if (v14)
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @"NO";
            }

            v19 = v12;
            v20 = 2112;
            v21 = v15;
            v22 = 2112;
            v23 = v16;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "isVisible={%@} / isBelowMacSnapToMinWidth={%@} / isEditing={%@}", &v18, 0x20u);
          }

          goto LABEL_17;
        }

        LOBYTE(v9) = 1;
      }
    }

    else
    {
      v9 = IMOSLoggingEnabled();
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = @"NO";
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "hasProgressEnabled={%@}.", &v18, 0xCu);
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    v9 = IMOSLoggingEnabled();
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = @"NO";
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "MiC is not enabled. forceShow={%@}.", &v18, 0xCu);
      }

      goto LABEL_16;
    }
  }

  return v9;
}

- (void)_updateSyncStatusViewWithSyncState:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_syncStatusCoordinator)
  {
    v5 = objc_alloc_init(_TtC7ChatKit26CKCloudSyncViewCoordinator);
    syncStatusCoordinator = self->_syncStatusCoordinator;
    self->_syncStatusCoordinator = v5;
  }

  [v4 syncJobState];
  v7 = IMStringFromIMCloudKitSyncJobState();
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v41 = 138412290;
      *&v41[4] = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Updating sync footer for syncJobState = %@.", v41, 0xCu);
    }
  }

  if (![(CKConversationListCollectionViewController *)self _canShowSyncProgressFooter])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v41 = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Cloud Sync footer cannot be shown.", v41, 2u);
      }
    }

    v13 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    v14 = [v13 isSyncViewCurrentlyVisible];

    if (!v14)
    {
      goto LABEL_79;
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v41 = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Removing Sync footer from view hierarchy.", v41, 2u);
      }
    }

LABEL_77:
    v37 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    [v37 tearDownView];
LABEL_78:

    [(CKConversationListCollectionViewController *)self _updateInsets];
    goto LABEL_79;
  }

  v9 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
  v10 = [v9 isSyncViewCurrentlyVisible];

  if (v4)
  {
    if ([v4 hasNotSyncedInLastSevenDays])
    {
      if ([v4 accountStatus] == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v4 accountNeedsRepair];
      }
    }

    else
    {
      v11 = 0;
    }

    if ([v4 syncType] && objc_msgSend(v4, "syncType") != 1)
    {
      if ([v4 syncType] == 2)
      {
        v18 = [v4 hasNotSyncedInLastSevenDays];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 1;
    }

    v19 = [v4 syncJobState] == 2 || objc_msgSend(v4, "syncJobState") == 3 || objc_msgSend(v4, "syncJobState") == 4 || objc_msgSend(v4, "syncJobState") == 5;
    v20 = [v4 isBetweenInitialAndFullSync];
    v21 = [MEMORY[0x1E69A8018] sharedInstance];
    v22 = [v21 getBoolFromDomain:*MEMORY[0x1E69A6D10] forKey:@"cksync-always-show-progress" defaultValue:0];

    if (v11)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = v18 & v19 | v20 | v22;
    }

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = @"NO";
        if (v10)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        if (v11)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        *v41 = 138413314;
        *&v41[4] = v25;
        if (v18)
        {
          v27 = @"YES";
        }

        else
        {
          v27 = @"NO";
        }

        *&v41[12] = 2112;
        *&v41[14] = v26;
        if (v19)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        *&v41[22] = 2112;
        v42 = v27;
        *v43 = 2112;
        if (v20)
        {
          v24 = @"YES";
        }

        *&v43[2] = v28;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "isSyncBarNeeded={%@} / needsRepair={%@} / syncTypeSupportsSyncBar={%@} / isRelevantJobState={%@} / isBetweenInitialAndFullSync={%@}", v41, 0x34u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      if (v10)
      {
        v17 = @"YES";
      }

      *v41 = 138412290;
      *&v41[4] = v17;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "isSyncBarNeeded={%@}", v41, 0xCu);
    }
  }

  v29 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator:*v41];
  v30 = [v29 isSyncViewInitialized];

  if (!(v30 & 1 | ((v10 & 1) == 0)))
  {
    v31 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    [v31 createSyncStatusView];

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *v41 = 0;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Lazily created CKCloudSyncStatusView.", v41, 2u);
      }
    }
  }

  if (v4)
  {
    v33 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    [v33 updateWithSyncState:v4];
  }

  v34 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
  v35 = [v34 isSyncViewCurrentlyVisible];

  if ((v10 & 1) == 0)
  {
    if (!v35)
    {
      goto LABEL_79;
    }

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *v41 = 0;
        _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "Removing Sync footer from view hierarchy as it's no longer needed.", v41, 2u);
      }
    }

    goto LABEL_77;
  }

  if ((v35 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v41 = 0;
        _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "Sync footer is needed; adding Sync footer to view hierarchy.", v41, 2u);
      }
    }

    v37 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    v38 = [(CKConversationListCollectionViewController *)self view];
    v39 = [(CKConversationListCollectionViewController *)self navigationItem];
    [v37 addSyncStatusViewToViewControllerWithView:v38 navigationItem:v39];

    goto LABEL_78;
  }

LABEL_79:
}

- (void)registerForCloudKitEventsWithDelayedRegistration:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  if (registerForCloudKitEventsWithDelayedRegistration__onceToken != -1)
  {
    [CKConversationListCollectionViewController registerForCloudKitEventsWithDelayedRegistration:];
  }

  if (v3)
  {
    v5 = *&registerForCloudKitEventsWithDelayedRegistration__sRegistrationDelay;
  }

  else
  {
    v5 = 1.0;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v11 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "registering for cloudkit events with delay: %f", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v7 = dispatch_time(0, (v5 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__CKConversationListCollectionViewController_registerForCloudKitEventsWithDelayedRegistration___block_invoke_974;
  block[3] = &unk_1E72EC460;
  objc_copyWeak(&v9, buf);
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __95__CKConversationListCollectionViewController_registerForCloudKitEventsWithDelayedRegistration___block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 integerForKey:@"cloudkit-sync-ui-tests"];

  if (v1 >= 1)
  {
    registerForCloudKitEventsWithDelayedRegistration__sRegistrationDelay = 0x3FF0000000000000;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = 134218240;
        v4 = 0x3FF0000000000000;
        v5 = 2048;
        v6 = 0x4014000000000000;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "registration delay artificially set to %f from %f for runtime tests only", &v3, 0x16u);
      }
    }
  }
}

void __95__CKConversationListCollectionViewController_registerForCloudKitEventsWithDelayedRegistration___block_invoke_974(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "registered for cloud kit events", v5, 2u);
      }
    }

    v3 = [MEMORY[0x1E69A5B18] sharedInstance];
    [v3 addEventHandler:WeakRetained];

    v4 = [MEMORY[0x1E69A5B18] sharedInstance];
    [v4 fetchSyncState];
  }
}

- (void)unregisterForCloudKitEvents
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isMessagesIniCloudVersion2];

  if ((v4 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "unregistered for cloudkit events", v7, 2u);
      }
    }

    v6 = [MEMORY[0x1E69A5B18] sharedInstance];
    [v6 removeEventHandler:self];
  }
}

- (void)setLastSelectedConversationItemIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(NSString *)self->_lastSelectedConversationItemIdentifier isEqualToString:v5])
  {
    objc_storeStrong(&self->_lastSelectedConversationItemIdentifier, a3);
    if ([(NSString *)self->_lastSelectedConversationItemIdentifier length]&& ![(CKConversationListCollectionViewController *)self _isRunningPPT])
    {
      v6 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v6 setObject:self->_lastSelectedConversationItemIdentifier forKey:@"CKLastSelectedItemIdentifier" inDomain:@"com.apple.MobileSMS"];
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "multi-select: set last selected conversation item identifier: %@", &v8, 0xCu);
      }
    }
  }
}

- (id)_itemIdentifierOfDefaultConversation
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained currentConversation];

  if (v4 && ([v4 isPending] & 1) == 0)
  {
    if ([v4 isPinned])
    {
      v10 = 2;
    }

    else
    {
      v10 = 5;
    }

    v5 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v4 inSection:v10];
    v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v12 = [v11 isModernFilteringEnabled];

    if (v12)
    {
      v13 = [(CKConversationListCollectionViewController *)self dataSource];
      v14 = [v13 indexPathForItemIdentifier:v5];

      if (!v14)
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "multi-select: currentConversation is not found in snapshot. Falling through to default behavior.", buf, 2u);
          }
        }

        v5 = 0;
      }
    }
  }

  else
  {
    v5 = &stru_1F04268F8;
  }

  if (![(__CFString *)v5 length])
  {
    v6 = [(CKConversationListCollectionViewController *)self dataSource];
    v7 = [v6 snapshot];
    v8 = [v7 indexOfSectionIdentifier:&unk_1F04E8040];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Unable to find new conversation section in current snapshot", buf, 2u);
        }
      }
    }

    else
    {
      v16 = [(CKConversationListCollectionViewController *)self dataSource];
      v17 = [v16 snapshot];
      v18 = [v17 itemIdentifiersInSectionWithIdentifier:&unk_1F04E8040];
      v19 = [v18 firstObject];

      v5 = v19;
    }
  }

  if (![(__CFString *)v5 length])
  {
    v20 = [(CKConversationListCollectionViewController *)self dataSource];
    v21 = [v20 snapshot];
    v22 = [v21 indexOfSectionIdentifier:&unk_1F04E8028];

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Unable to find active conversation section in current snapshot", buf, 2u);
        }
      }
    }

    else
    {
      v24 = [(CKConversationListCollectionViewController *)self dataSource];
      v25 = [v24 snapshot];
      v26 = [v25 itemIdentifiersInSectionWithIdentifier:&unk_1F04E8028];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v28)
      {
        v29 = *v37;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v37 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v36 + 1) + 8 * i);
            v32 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v31, v36];
            v33 = v32;
            if (v32 && ([v32 hasUnreadMessages] & 1) == 0)
            {
              v34 = v31;

              v5 = v34;
              goto LABEL_39;
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

LABEL_39:
    }
  }

  return v5;
}

- (id)_indexPathOfDefaultConversation
{
  v3 = [(CKConversationListCollectionViewController *)self _itemIdentifierOfDefaultConversation];
  if ([v3 length])
  {
    v4 = [(CKConversationListCollectionViewController *)self dataSource];
    v5 = [v4 indexPathForItemIdentifier:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_selectConversationAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v4)
      {
        v8 = @"YES";
      }

      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Selecting conversation at indexPath: %@  animated:%@", &v15, 0x16u);
    }
  }

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:CKIsRunningInMacCatalyst() == 0];
  v9 = [(CKConversationListCollectionViewController *)self collectionView];
  v10 = v9;
  if (v6)
  {
    v11 = [(CKConversationListCollectionViewController *)self collectionView];
    [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:v11 animated:v4];

    [v10 selectItemAtIndexPath:v6 animated:v4 scrollPosition:0];
    [v10 scrollToItemAtIndexPath:v6 atScrollPosition:0 animated:v4];
    [(CKConversationListCollectionViewController *)self _performTranscriptPushForItemAtIndexPath:v6 userInitiated:0];
  }

  else
  {
    v12 = [v9 indexPathsForSelectedItems];
    v13 = [v12 firstObject];
    [v10 deselectItemAtIndexPath:v13 animated:v4];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained showConversation:0 animate:v4];
  }
}

- (void)deleteSelectedConversation
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CKConversationListCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  if (v4)
  {
    v5 = [(CKConversationListCollectionViewController *)self collectionView];
    v6 = [v5 indexPathsForSelectedItems];
    v7 = [v6 objectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Deleting selected conversation (index path %@)", &v14, 0xCu);
    }
  }

  if (v7)
  {
    v9 = [(CKConversationListCollectionViewController *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v7];

    v11 = [(CKConversationListCollectionViewController *)self dataSource];
    v12 = [v11 itemIdentifierForIndexPath:v7];

    v13 = objc_opt_new();
    [(CKConversationListCollectionViewController *)self deleteButtonTappedForItemIdentifier:v12 completionHandler:0 cellToUpdate:v10 alertsDisplayConfiguration:v13];
  }
}

- (void)selectDefaultConversationAnimated:(BOOL)a3 removingPendingConversationCell:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    [(CKConversationListCollectionViewController *)self removePendingConversationCell];
  }

  [(CKConversationListCollectionViewController *)self selectDefaultConversationAnimated:v4 shouldUsePreviousySelectedIndexPath:0];
}

- (void)selectDefaultConversationAnimated:(BOOL)a3 shouldUsePreviousySelectedIndexPath:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v5)
      {
        v8 = @"YES";
      }

      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Selecting default conversation, animated:%@", &v17, 0xCu);
    }
  }

  v9 = [(CKConversationListCollectionViewController *)self _indexPathOfDefaultConversation];
  v10 = CKIsRunningInMacCatalyst();
  if (v4 && v10)
  {
    v11 = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
    if (![v11 length])
    {
      v12 = [MEMORY[0x1E695E000] standardUserDefaults];
      v13 = [v12 objectForKey:@"CKLastSelectedItemIdentifier" inDomain:@"com.apple.MobileSMS"];

      v11 = v13;
    }

    v14 = [(CKConversationListCollectionViewController *)self dataSource];
    v15 = [v14 indexPathForItemIdentifier:v11];

    if (v15)
    {
      v16 = v15;

      v9 = v16;
    }
  }

  [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v9 animated:v5];
}

- (void)selectNextSequentialConversation:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v15 = [v6 firstObject];

  if (v15)
  {
    v7 = [(CKConversationListCollectionViewController *)self nextSequentialIndexPathForIndexPath:v15 descending:v3];
    if (v7)
    {
      [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v7 animated:0];
    }

    else if (!v3)
    {
      v8 = +[CKConversationList sharedConversationList];
      v9 = [v8 pendingConversation];
      if (v9)
      {
        v10 = v9;
        v11 = [(CKConversationListCollectionViewController *)self shouldShowPendingCell];

        if (v11)
        {
          [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:0];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v13 = [WeakRetained isComposingMessage];

          if ((v13 & 1) == 0)
          {
            v14 = objc_loadWeakRetained(&self->_delegate);
            [v14 showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    [(CKConversationListCollectionViewController *)self selectDefaultConversationAnimated:?];
  }
}

- (void)selectPinnedConversationForItem:(int64_t)a3
{
  if (![(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
  {
    v5 = [(CKConversationListCollectionViewController *)self dataSource];
    v6 = [v5 snapshot];
    v7 = [v6 numberOfItemsInSection:&unk_1F04E8010];

    NSLog(&cfstr_NumerofchatsLd.isa, v7, a3);
    if (v7 >= a3)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:a3 - 1 inSection:2];
      [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v8 animated:1];
    }
  }
}

- (void)selectFirstActiveConversation
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:5];
  [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v3 animated:1];
}

- (void)selectConversationClosestToDeletedIndex:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = MEMORY[0x1E69E98A8];
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Selecting conversation closest to deleted index: %lu", &v7, 0xCu);
    }
  }

  v6 = [(CKConversationListCollectionViewController *)self nextSequentialIndexPathForIndexPath:v4 descending:0];
  if (v6 || ([(CKConversationListCollectionViewController *)self nextSequentialIndexPathForIndexPath:v4 descending:1], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v6 animated:1];
  }

  else
  {
    [(CKConversationListCollectionViewController *)self selectDefaultConversationAnimated:1];
  }
}

- (void)updateConversationSelection
{
  if ([(CKConversationListCollectionViewController *)self _shouldKeepSelection])
  {

    [(CKConversationListCollectionViewController *)self updateConversationSelectionPreservingLastSelectedItemIdentifier];
  }

  else
  {

    [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:0];
  }
}

- (void)updateConversationSelectionToNewCompose
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(CKConversationListCollectionViewController *)self _shouldUpdateConversationSelection])
  {
    if ([(CKConversationListCollectionViewController *)self shouldShowPendingCell])
    {
      v3 = [(CKConversationListCollectionViewController *)self delegate];
      v4 = [v3 isShowingComposeChatController];

      v5 = IMOSLoggingEnabled();
      if (v4)
      {
        if (v5)
        {
          v6 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            LOWORD(v21) = 0;
            _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "multi-select: updating selection to new compose cell", &v21, 2u);
          }
        }

        v7 = [(CKConversationListCollectionViewController *)self dataSource];
        v8 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
        v9 = [v7 indexPathForItemIdentifier:v8];

        if (v9)
        {
          v10 = [(CKConversationListCollectionViewController *)self collectionView];
          v11 = [v10 indexPathsForSelectedItems];

          if (([v11 containsObject:v9] & 1) == 0)
          {
            v12 = [(CKConversationListCollectionViewController *)self collectionView];
            [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:v12 animated:0];

            v13 = [(CKConversationListCollectionViewController *)self collectionView];
            [v13 selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
          }

          v14 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
          [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:v14];

          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v21 = 138412290;
              v22 = v9;
              _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "multi-select: selected new compose indexPath: %@", &v21, 0xCu);
            }
          }
        }

        else
        {
          v16 = [(CKConversationListCollectionViewController *)self shouldShowPendingCell];
          v17 = IMOSLoggingEnabled();
          if (v16)
          {
            if (v17)
            {
              v18 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                LOWORD(v21) = 0;
                _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "multi-select: snapshot does not contain compose cell. Updating conversation list", &v21, 2u);
              }
            }

            v19 = [(CKConversationListCollectionViewController *)self updater];
            [v19 setNeedsDeferredUpdateWithReason:@"showingNewCompose"];
          }

          else if (v17)
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              LOWORD(v21) = 0;
              _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "multi-select: new compose cell is not shown for current state. Bailing to preserve current selection and to prevent recursive loop", &v21, 2u);
            }
          }
        }
      }

      else
      {
        if (!v5)
        {
          return;
        }

        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "multi-select: Not showing compose chatController. Bailing to preserve current selection", &v21, 2u);
        }
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "multi-select: new compose cell is not shown for current state. Bailing to preserve current selection", &v21, 2u);
      }
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "multi-select: did not update selection to new compose cell - selection not allowed", &v21, 2u);
    }
  }
}

- (int64_t)_alertControllerStyle
{
  v3 = [(CKConversationListCollectionViewController *)self delegate];
  v4 = -[CKConversationListCollectionViewController _alertControllerStyleForCollapsedState:](self, "_alertControllerStyleForCollapsedState:", [v3 isCollapsed]);

  return v4;
}

- (void)prepareForSuspend
{
  v26[3] = *MEMORY[0x1E69E9840];
  if (!CKIsRunningInMacCatalyst())
  {
    v3 = [(CKConversationListCollectionViewController *)self searchController];
    v4 = [v3 isActive];

    if (v4)
    {
      v5 = [(CKConversationListCollectionViewController *)self searchController];
      [v5 setActive:0];
    }

    v6 = [(CKConversationListCollectionViewController *)self searchResultsController];
    [v6 cancelCurrentQuery];

    v7 = +[CKPluginExtensionStateObserver sharedInstance];
    v8 = [v7 passKitUIPresented];

    if ((v8 & 1) == 0)
    {
      v26[0] = @"swipeToDelete";
      v26[1] = @"markAsRead";
      v26[2] = @"chatItemChangeSuppression";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v24 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            v15 = [(CKConversationListCollectionViewController *)self updater];
            [v15 endAllHoldsOnUpdatesForReason:v14 updateTriggeredIfNotHeldShouldBeDeferred:1];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }
    }

    v16 = +[CKAdaptivePresentationController sharedInstance];
    v17 = [v16 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v19 = +[CKAdaptivePresentationController sharedInstance];
      [v19 dismissViewControllerAnimated:1 completion:0];

      v20 = +[CKAdaptivePresentationController sharedInstance];
      [v20 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_conversationListPinnedConversationsDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKeyedSubscript:@"previousPinnedConversationIdentifiers"];

  [(CKConversationListCollectionViewController *)self _submitFeedbackIfNecessaryForPinsChangedWithPreviousPinnedConversationIdentifiers:v6];
  if ([(CKConversationListCollectionViewController *)self holdPinningUpdatesForConversationDeletion])
  {
    [(CKConversationListCollectionViewController *)self setHoldPinningUpdatesForConversationDeletion:0];
  }

  else
  {
    if ([(CKConversationListCollectionViewController *)self nextPinnedConversationListUpdateShouldTriggerUnanimatedSnapshotUpdate])
    {
      v5 = [(CKConversationListCollectionViewController *)self isShowingPinningOnboarding];
    }

    else
    {
      v5 = 1;
    }

    [(CKConversationListCollectionViewController *)self setNextPinnedConversationListUpdateShouldTriggerUnanimatedSnapshotUpdate:0];
    [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:v5];
    [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:v5];
    [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:v5];
    [(CKConversationListTipManager *)self->_tipManager userDidPinConversation];
  }
}

- (void)_setPinnedConversationViewLayoutStyle:(int64_t)a3 shouldInvalidateLayout:(BOOL)a4
{
  if (self->_pinnedConversationViewLayoutStyle != a3)
  {
    v4 = a4;
    self->_pinnedConversationViewLayoutStyle = a3;
    [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:0];
    if (v4)
    {
      v7 = [(CKConversationListCollectionViewController *)self collectionView];
      v6 = [v7 collectionViewLayout];
      [v6 invalidateLayout];
    }
  }
}

- (void)setHasActivePinnedConversationDropSession:(BOOL)a3
{
  if (self->_hasActivePinnedConversationDropSession != a3)
  {
    self->_hasActivePinnedConversationDropSession = a3;
    [(CKConversationListCollectionViewController *)self setEditButtonItem:0];
    [(CKConversationListCollectionViewController *)self setOptionsButtonItem:0];
    [(CKConversationListCollectionViewController *)self updateNavigationItems];

    [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:1];
  }
}

- (void)setIsShowingPinningOnboarding:(BOOL)a3
{
  if (self->_isShowingPinningOnboarding != a3)
  {
    self->_isShowingPinningOnboarding = a3;
  }

  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CKConversationListCollectionViewController *)self searchController];
  }

  v5 = [(CKConversationListCollectionViewController *)self navigationItem];
  [v5 setSearchController:v6];

  if (!a3)
  {
  }
}

- (void)_pendingSatelliteCountChanged
{
  v3 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
  [v3 endRefreshing];

  [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:1];
}

- (void)_didPullToRefresh:(id)a3
{
  [a3 beginRefreshing];

  [(CKConversationListCollectionViewController *)self _startRefreshControlTimer];
}

- (void)_startRefreshControlTimer
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __71__CKConversationListCollectionViewController__startRefreshControlTimer__block_invoke;
  v8 = &unk_1E72F4BA8;
  objc_copyWeak(&v9, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v5 block:30.0];
  [(CKConversationListCollectionViewController *)self setRefreshControlTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__CKConversationListCollectionViewController__startRefreshControlTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Timed out waiting on message summary / pending count change. Stopping refresh control.", v7, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained collectionViewRefreshControl];
  [v6 endRefreshing];
}

- (void)_updateAccountRegistrationFailureNotification
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Update Tip manager", v4, 2u);
    }
  }

  [(CKConversationListTipManager *)self->_tipManager updateKtTipRules];
}

- (id)leadingSwipeActionsConfigurationForIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section] == 5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(CKConversationListCollectionViewController *)self _markUnreadSwipeActionForIndexPath:v4];
    if (v6)
    {
      [v5 addObject:v6];
    }

    v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v8 = [v7 isPinActionEnabled];

    if (v8)
    {
      v9 = [(CKConversationListCollectionViewController *)self _pinConversationSwipeActionForIndexPath:v4];
      if (v9)
      {
        [v5 addObject:v9];
      }
    }

    if ([v5 count])
    {
      v10 = [MEMORY[0x1E69DCFC0] configurationWithActions:v5];
      [v10 setPerformsFirstActionWithFullSwipe:1];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)trailingSwipeActionsConfigurationForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if ([v4 section] == 4)
  {
    v6 = [(CKConversationListCollectionViewController *)self deleteSwipeActionForIndexPath:v4];
    if (v6)
    {
      [v5 addObject:v6];
    }
  }

  else
  {
    if ([v4 section] != 5)
    {
      goto LABEL_12;
    }

    v6 = [(CKConversationListCollectionViewController *)self deleteSwipeActionForIndexPath:v4];
    if (v6)
    {
      [v5 addObject:v6];
    }

    if ([(CKConversationListCollectionViewController *)self filterMode]!= 9)
    {
      v7 = [(CKConversationListCollectionViewController *)self _dndSwipeActionForIndexPath:v4];
      if (v7)
      {
        [v5 addObject:v7];
      }
    }
  }

LABEL_12:
  if ([v5 count])
  {
    v8 = [MEMORY[0x1E69DCFC0] configurationWithActions:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_markUnreadSwipeActionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];
  v8 = [v7 hasUnreadMessages];
  objc_initWeak(&location, self);
  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isConversationListRefreshEnabled];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = CKFrameworkBundle();
    if (v8)
    {
      [v12 localizedStringForKey:@"MARK_AS_READ" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      [v12 localizedStringForKey:@"MARK_AS_UNREAD" value:&stru_1F04268F8 table:@"ChatKit"];
    }
    v11 = ;
  }

  v13 = MEMORY[0x1E69DC8E8];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __81__CKConversationListCollectionViewController__markUnreadSwipeActionForIndexPath___block_invoke;
  v25 = &unk_1E72F54D0;
  objc_copyWeak(&v29, &location);
  v14 = v4;
  v26 = v14;
  v15 = v6;
  v27 = v15;
  v28 = self;
  v30 = v8;
  v16 = [v13 contextualActionWithStyle:0 title:v11 handler:&v22];
  if (v8)
  {
    [MEMORY[0x1E69DCAB8] systemImageNamed:{@"checkmark.message.fill", v22, v23, v24, v25, v26}];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] systemImageNamed:{@"message.badge.fill", v22, v23, v24, v25, v26}];
  }
  v17 = ;
  [v16 setImage:v17];

  v18 = +[CKUIBehavior sharedBehaviors];
  v19 = [v18 theme];
  v20 = [v19 unreadIndicatorColor];
  [v16 setBackgroundColor:v20];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  return v16;
}

void __81__CKConversationListCollectionViewController__markUnreadSwipeActionForIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = [WeakRetained collectionView];
  v8 = [v7 cellForItemAtIndexPath:*(a1 + 32)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_loadWeakRetained((a1 + 56));
    v10 = [v9 conversationForItemIdentifier:*(a1 + 40)];

    v11 = *(a1 + 48);
    v12 = v8;
    [v11 _ensureCellLayoutOnCell:v12];
    [v12 forceUnreadIndicatorVisibility:(*(a1 + 64) & 1) == 0 forConversation:v10 animated:1];

    v13 = *(a1 + 48);
    v15[0] = v10;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v13 updateConversations:v14 asRead:*(a1 + 64)];

    v5[2](v5, 1);
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (id)_pinConversationSwipeActionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DC8E8];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"PIN" value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __86__CKConversationListCollectionViewController__pinConversationSwipeActionForIndexPath___block_invoke;
  v19 = &unk_1E72F54F8;
  objc_copyWeak(&v22, &location);
  v10 = v4;
  v20 = v10;
  v11 = v6;
  v21 = v11;
  v12 = [v7 contextualActionWithStyle:0 title:v9 handler:&v16];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"pin.fill", v16, v17, v18, v19}];
  [v12 setImage:v13];

  v14 = [MEMORY[0x1E69DC888] systemYellowColor];
  [v12 setBackgroundColor:v14];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v12;
}

void __86__CKConversationListCollectionViewController__pinConversationSwipeActionForIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained collectionView];
  v7 = [v6 cellForItemAtIndexPath:*(a1 + 32)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 conversationForItemIdentifier:*(a1 + 40)];

    v10 = objc_loadWeakRetained((a1 + 48));
    [v10 setPinningInteractionMethod:3];

    v11 = objc_loadWeakRetained((a1 + 48));
    [v11 togglePinStateForConversation:v9 withReason:*MEMORY[0x1E69A5A38]];

    v12[2](v12, 1);
  }

  else
  {
    v12[2](v12, 0);
  }
}

- (id)_dndSwipeActionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];
  v8 = [v7 chat];
  v9 = [v8 isStewieChat];

  v10 = 0;
  if ((v9 & 1) == 0 && v6 && v7)
  {
    v11 = [v7 isMuted];
    v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v13 = [v12 isConversationListRefreshEnabled];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v15 = CKFrameworkBundle();
      v16 = v15;
      if (v11)
      {
        v17 = @"UNMUTE_ACTION";
      }

      else
      {
        v17 = @"MUTE_ACTION";
      }

      v14 = [v15 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit"];
    }

    objc_initWeak(&location, self);
    v18 = MEMORY[0x1E69DC8E8];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __74__CKConversationListCollectionViewController__dndSwipeActionForIndexPath___block_invoke;
    v25 = &unk_1E72F5520;
    objc_copyWeak(&v27, &location);
    v26 = v6;
    v28 = v11;
    v10 = [v18 contextualActionWithStyle:0 title:v14 handler:&v22];
    v19 = [MEMORY[0x1E69DC888] systemIndigoColor];
    [v10 setBackgroundColor:v19];

    if (v11)
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:@"bell.fill"];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:@"bell.slash.fill"];
    }
    v20 = ;
    [v10 setImage:v20];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __74__CKConversationListCollectionViewController__dndSwipeActionForIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained muteConversationButtonTappedForConversationWithItemIdentifier:*(a1 + 32) setMuted:(*(a1 + 48) & 1) == 0];

  v6[2](v6, 1);
}

- (void)reloadData
{
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0];

  [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:0];
}

- (void)updateConfigurationStateForSelectedCell
{
  v5 = [(CKConversationListCollectionViewController *)self indexPathOfFirstSelectedItem];
  if (v5)
  {
    v3 = [(CKConversationListCollectionViewController *)self collectionView];
    v4 = [v3 cellForItemAtIndexPath:v5];

    if (v4)
    {
      [v4 _setNeedsConfigurationStateUpdate];
    }
  }
}

- (void)_updateConversationFilteredFlagsAndReportSpam
{
  v2 = [(CKConversationListCollectionViewController *)self conversationList];
  [v2 updateConversationFilteredFlagsAndReportSpam];
}

- (void)updateConversationListForMessageSentToConversation:(id)a3
{
  v26 = a3;
  [(CKConversationListCollectionViewController *)self updateConversationList];
  if ([(CKConversationListCollectionViewController *)self _shouldKeepSelection])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained currentConversation];

    if (v5)
    {
      v6 = v5 == v26;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if ([v5 isPending])
      {
        v8 = [(CKConversationListCollectionViewController *)self dataSource];
        v9 = [v8 snapshot];
        v10 = [v9 itemIdentifiersInSectionWithIdentifier:&unk_1F04E8040];
        v7 = [v10 firstObject];
      }

      else
      {
        if ([v5 isPinned])
        {
          v11 = 2;
        }

        else
        {
          v11 = 5;
        }

        v7 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v5 inSection:v11];
      }
    }

    else
    {
      v7 = 0;
    }

    if ([v7 length])
    {
      v12 = [(CKConversationListCollectionViewController *)self dataSource];
      v13 = [v12 indexPathForItemIdentifier:v7];

      if (v13)
      {
        v14 = [(CKConversationListCollectionViewController *)self dataSource];
        v15 = [(CKConversationListCollectionViewController *)self collectionView];
        v16 = [v14 numberOfSectionsInCollectionView:v15];
        if (v16 <= [v13 section])
        {
        }

        else
        {
          v17 = [(CKConversationListCollectionViewController *)self dataSource];
          v18 = [(CKConversationListCollectionViewController *)self collectionView];
          v19 = [v17 collectionView:v18 numberOfItemsInSection:{objc_msgSend(v13, "section")}];
          v20 = [v13 row];

          if (v19 <= v20)
          {
            goto LABEL_23;
          }

          v21 = [(CKConversationListCollectionViewController *)self collectionView];
          v22 = [v21 indexPathsForVisibleItems];
          v23 = [v22 containsObject:v13];

          if (v23)
          {
            goto LABEL_23;
          }

          v24 = [v13 section];
          v25 = [(CKConversationListCollectionViewController *)self collectionView];
          v14 = v25;
          if (v24 == 2)
          {
            [v25 __ck_scrollToTop:1];
          }

          else
          {
            [v25 scrollToItemAtIndexPath:v13 atScrollPosition:1 animated:1];
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_23:
  }
}

- (void)userDeletedJunkConversationFromTranscript
{
  v3 = [(CKConversationListCollectionViewController *)self updater];
  [v3 endHoldingUpdatesForReason:@"viewVisiblity" updateTriggeredIfNotHeldShouldBeDeferred:0];

  [(CKConversationListCollectionViewController *)self leaveJunkFilterIfNeeded];
}

- (void)reasonTrackingUpdater:(id)a3 needsUpdateForReasons:(id)a4 followingHoldForReason:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Updating conversation list for reasons: %@ following hold for reason: %@", &v23, 0x16u);
    }
  }

  v12 = [(CKConversationListCollectionViewController *)self _shouldAnimatePinningChangesForUpdateFollowingHoldForReason:v10];
  v13 = [(CKConversationListCollectionViewController *)self conversationList];
  [v13 resort];

  [(CKConversationListCollectionViewController *)self _updateConversationListsAndSortIfEnabled];
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0];
  [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:v12];
  [(CKConversationListCollectionViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v13) = [v14 isModernFilteringEnabled];

  if (v13)
  {
    if ([(__CFString *)v9 containsObject:@"filterModeChanged"])
    {
      if ([(CKConversationListCollectionViewController *)self shouldShowPendingCell])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v16 = [WeakRetained isComposingMessage];

        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = @"YES";
            if (v16)
            {
              v18 = @"NO";
            }

            v23 = 138412290;
            v24 = v18;
            _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Filtering mode changed. Updating conversation selection to pending cell: %@", &v23, 0xCu);
          }
        }

        if ((v16 & 1) == 0)
        {
          v19 = objc_loadWeakRetained(&self->_delegate);
          [v19 showNewMessageCompositionPanelAppendingToExistingDraft:0 animated:0];
        }
      }

      else
      {
        v20 = [(CKConversationListCollectionViewController *)self delegate];
        v21 = [v20 isCollapsed];

        if ((v21 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              LOWORD(v23) = 0;
              _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Filtering mode changed. Split View is not collapsed. Updating conversation selection to default conversation, ignoring previous selection", &v23, 2u);
            }
          }

          [(CKConversationListCollectionViewController *)self selectDefaultConversationAnimated:0 shouldUsePreviousySelectedIndexPath:0];
        }
      }

      [(CKConversationListCollectionViewController *)self _updateToolbarItems];
    }

    else
    {
      [(CKConversationListCollectionViewController *)self updateConversationSelectionPreservingLastSelectedItemIdentifier];
    }
  }

  else
  {
    [(CKConversationListCollectionViewController *)self updateConversationSelectionPreservingLastSelectedItemIdentifier];
    [(CKConversationListCollectionViewController *)self _configureCatalystFiltersNavigation];
  }
}

- (void)reasonTrackingUpdater:(id)a3 didBeginHoldingUpdatesWithInitialReason:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Freezing conversations with initial reason for freeze: %@", &v9, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self _freezeConversations];
}

- (void)reasonTrackingUpdater:(id)a3 didEndHoldingUpdatesWithFinalReason:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Unfreezing conversations with final reason for unfreeze: %@", &v9, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self _unfreezeConversations];
}

- (void)updateConversationList
{
  v2 = [(CKConversationListCollectionViewController *)self updater];
  [v2 setNeedsDeferredUpdateWithReason:@"externalChange"];
}

- (void)beginHoldingConversationListUpdatesForPPTTests
{
  v2 = [(CKConversationListCollectionViewController *)self updater];
  [v2 beginHoldingUpdatesForReason:@"pptTest"];
}

- (void)endHoldingConversationListUpdatesForPPTTests
{
  v2 = [(CKConversationListCollectionViewController *)self updater];
  [v2 endHoldingUpdatesForReason:@"pptTest" updateTriggeredIfNotHeldShouldBeDeferred:1];
}

- (void)_reloadVisibleConversationList:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v4 = [v24 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"uid"];

  v6 = [(CKConversationListCollectionViewController *)self collectionView];
  v7 = [v6 indexPathsForVisibleItems];

  if ([v5 length])
  {
    v8 = [(CKConversationListCollectionViewController *)self _indexPaths:v7 containingHandleWithUID:v5];

    v7 = v8;
  }

  if ([v7 count])
  {
    v9 = [(CKConversationListCollectionViewController *)self updater];
    v10 = [v9 isHoldingUpdates];

    v11 = IMOSLoggingEnabled();
    if (v10)
    {
      if (v11)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(CKConversationListCollectionViewController *)self updater];
          *buf = 138412290;
          v31 = v13;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "***NOT*** Updating visible portion of conversation list, _updater is: %@", buf, 0xCu);
        }
      }

      v14 = [(CKConversationListCollectionViewController *)self updater];
      [v14 setNeedsDeferredUpdateWithReason:@"updateVisibleConversationsNotification"];
    }

    else
    {
      if (v11)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [(CKConversationListCollectionViewController *)self updater];
          *buf = 138412546;
          v31 = v16;
          v32 = 2112;
          v33 = v7;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Reloading visible portion of conversation list, _updater is: %@, indexPaths: %@", buf, 0x16u);
        }
      }

      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = v7;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v18)
      {
        v19 = *v26;
        do
        {
          v20 = 0;
          do
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v25 + 1) + 8 * v20);
            v22 = [(CKConversationListCollectionViewController *)self dataSource];
            v23 = [v22 itemIdentifierForIndexPath:v21];

            if (v23)
            {
              [v14 addObject:v23];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v18);
      }

      [(CKConversationListCollectionViewController *)self updateContentsOfCellsWithItemIdentifiers:v14 animated:0];
    }
  }
}

- (id)_indexPaths:(id)a3 containingHandleWithUID:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696AE18];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __82__CKConversationListCollectionViewController__indexPaths_containingHandleWithUID___block_invoke;
  v16 = &unk_1E72F5548;
  v17 = self;
  v18 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [v7 predicateWithBlock:&v13];
  v11 = [v9 filteredArrayUsingPredicate:{v10, v13, v14, v15, v16, v17}];

  return v11;
}

uint64_t __82__CKConversationListCollectionViewController__indexPaths_containingHandleWithUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) conversationAtIndexPath:a2];
  v4 = [v3 containsHandleWithUID:*(a1 + 40)];

  return v4;
}

- (void)updateNoMessagesDialog
{
  v3 = [(CKConversationListCollectionViewController *)self dataSource];
  v4 = [v3 snapshot];
  v5 = [v4 numberOfItems];

  if (v5 >= 1)
  {
    v6 = [(CKConversationListCollectionViewController *)self noMessagesDialogView];
    [v6 removeFromSuperview];

    [(CKConversationListCollectionViewController *)self setNoMessagesDialogView:0];
    v7 = [(CKConversationListCollectionViewController *)self collectionView];
    [v7 setScrollEnabled:1];
  }
}

- (void)_didReceiveSummaries:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([MEMORY[0x1E69A8090] messageSummarizationEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received new summary, updating conversation list.", buf, 2u);
      }
    }

    v6 = [v4 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69A58F0]];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [(CKConversationListCollectionViewController *)self conversationList];
          v13 = [v12 conversationForExistingChatWithGUID:v11];

          v14 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v13 inSection:5];
          [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v14 animated:1];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }
  }
}

- (void)updateConversationNamesForNicknames:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"handleIDs"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count])
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = +[CKConversationList sharedConversationList];
  v8 = [v7 conversations];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __82__CKConversationListCollectionViewController_updateConversationNamesForNicknames___block_invoke;
  v13 = &unk_1E72F5570;
  v15 = v6 == 0;
  v14 = v6;
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:&v10];

  [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:0, v10, v11, v12, v13];
}

void __82__CKConversationListCollectionViewController_updateConversationNamesForNicknames___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 resetNameCaches];
  }

  else
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = [v3 handles];
    v6 = [v5 __imArrayByApplyingBlock:&__block_literal_global_1027_0];
    v7 = [v4 setWithArray:v6];

    if ([*(a1 + 32) intersectsSet:v7])
    {
      [v8 resetNameCaches];
    }
  }
}

void __81__CKConversationListCollectionViewController__configureCloudTipViewModelIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__50;
  v6[4] = __Block_byref_object_dispose__50;
  v7 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__CKConversationListCollectionViewController__configureCloudTipViewModelIfNeeded__block_invoke_1030;
  v4[3] = &unk_1E72F5598;
  v4[4] = v6;
  v3 = v7;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  _Block_object_dispose(v6, 8);
}

void __81__CKConversationListCollectionViewController__configureCloudTipViewModelIfNeeded__block_invoke_1030(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(*(*(a1 + 32) + 8) + 40) tipType];
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Conversation list needs to update for tip %ld", &v6, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained tipManager];
  [v5 updateCloudTipRulesForDescriptor:*(*(*(a1 + 32) + 8) + 40)];
}

void __81__CKConversationListCollectionViewController__configureCloudTipViewModelIfNeeded__block_invoke_1032()
{
  v0 = +[_TtC7ChatKit19CKCloudTipViewModel sharedInstance];
  [v0 configureCloudTipManagerWithCompletionHandler:&__block_literal_global_1036_1];
}

- (void)pinningTipActionTapped
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CKConversationListCollectionViewController_pinningTipActionTapped__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__CKConversationListCollectionViewController_pinningTipActionTapped__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1576) miniTipUIView];

  if (v2)
  {
    v3 = *(a1 + 32);

    [v3 startSuggestedPinsAnimation];
  }
}

- (void)trackSIMFilterUpdateEventFromOldSIMFilterIndex:(int64_t)a3 toSelectedSIMFilterIndex:(int64_t)a4
{
  v6 = [MEMORY[0x1E69A8168] sharedInstance];
  v7 = v6;
  v8 = *MEMORY[0x1E69A7598];
  if (a3 == a4)
  {
    v9 = &unk_1F04E9280;
  }

  else
  {
    v9 = &unk_1F04E92A8;
  }

  [v6 trackEvent:*MEMORY[0x1E69A7598] withDictionary:v9];

  if (a3 == -1 && a4 != -1)
  {
    v13 = &unk_1F04E92D0;
LABEL_20:
    v14 = [MEMORY[0x1E69A8168] sharedInstance];
    [v14 trackEvent:v8 withDictionary:v13];

    return;
  }

  if (a3 != -1 && a4 == -1)
  {
    v13 = &unk_1F04E92F8;
    goto LABEL_20;
  }

  if (a3 != a4 && a3 != -1 && a4 != -1)
  {
    v13 = &unk_1F04E9320;
    goto LABEL_20;
  }
}

- (void)updateSIMFilterIndexAndReloadData:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CKConversationListCollectionViewController *)self conversationList];
      v10 = 134218240;
      v11 = [v6 simFilterIndex];
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Updating SIM Filter Index from %ld to : %ld", &v10, 0x16u);
    }
  }

  v7 = [(CKConversationListCollectionViewController *)self conversationList];
  -[CKConversationListCollectionViewController trackSIMFilterUpdateEventFromOldSIMFilterIndex:toSelectedSIMFilterIndex:](self, "trackSIMFilterUpdateEventFromOldSIMFilterIndex:toSelectedSIMFilterIndex:", [v7 simFilterIndex], a3);

  v8 = [(CKConversationListCollectionViewController *)self conversationList];
  [v8 setSimFilterIndex:a3];

  v9 = [(CKConversationListCollectionViewController *)self updater];
  [v9 setNeedsDeferredUpdateWithReason:@"simFilterChanged"];
}

- (void)_resetSimFilteringToDefaultState
{
  _IMSharedHelperResetMessageSIMFilteringEnabled();
  v3 = [(CKConversationListCollectionViewController *)self conversationList];
  [v3 setSimFilterIndex:-1];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:-1];
  IMSetDomainValueForKey();
}

- (void)showMeCardViewController
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__CKConversationListCollectionViewController_showMeCardViewController__block_invoke;
  aBlock[3] = &unk_1E72F55E8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v4 userInterfaceIdiom])
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom] == 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isNameAndPhotoC3Enabled];

  if (v8)
  {
    v9 = !v6;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = [(CKConversationListCollectionViewController *)self nicknameController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__CKConversationListCollectionViewController_showMeCardViewController__block_invoke_2;
    v12[3] = &unk_1E72F3488;
    v13 = v3;
    [v10 fetchPersonalNicknameWithCompletion:v12];

    v11 = v13;
  }

  else
  {
    v11 = [(CKConversationListCollectionViewController *)self onboardingController];
    [v11 presentNicknameOnboardingOrEditFlow];
  }
}

void __70__CKConversationListCollectionViewController_showMeCardViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [v3 showMeCardViewControllerWithNickname:a2];
  }

  else
  {
    v4 = [v3 onboardingController];
    [v4 presentNicknameSharingSetupFlowWithMemoji:1 forUserInitiatedEdit:1];
  }
}

void __70__CKConversationListCollectionViewController_showMeCardViewController__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__CKConversationListCollectionViewController_showMeCardViewController__block_invoke_3;
  v6[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)_avatarProviderFromNickname:(id)a3
{
  v3 = a3;
  v4 = [CKMeCardSharingNicknameAvatarProvider alloc];
  v5 = [v3 avatar];

  v6 = [v5 imageData];
  v7 = [(CKMeCardSharingNicknameAvatarProvider *)v4 initWithImageData:v6];

  return v7;
}

- (void)showMeCardViewControllerWithNickname:(id)a3
{
  v4 = a3;
  v16 = [(CKConversationListCollectionViewController *)self _meContact];
  v5 = [CKMeCardSharingNameProvider nameProviderForNickname:v4];
  v6 = [(CKConversationListCollectionViewController *)self _contactStore];
  v7 = [(CKConversationListCollectionViewController *)self _meCardSharingEnabled];
  v8 = [(CKConversationListCollectionViewController *)self _meCardSharingAudience];
  v9 = [(CKConversationListCollectionViewController *)self _avatarProviderFromNickname:v4];

  LOBYTE(v15) = 1;
  v10 = [objc_alloc(MEMORY[0x1E695D180]) initWithContactStore:v6 contact:v16 avatarProvider:v9 nameProvider:v5 sharingEnabled:v7 selectedSharingAudience:v8 showsWallpaperSuggestionsGalleryPicker:v15 headerMode:1];
  [v10 setDelegate:self];
  v11 = [[CKMeCardNavigationController alloc] initWithRootViewController:v10];
  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissPresentedNavController_];
  v13 = [v10 navigationItem];
  [v13 setRightBarButtonItem:v12];

  v14 = [(CKConversationListCollectionViewController *)self navigationController];
  [v14 presentViewController:v11 animated:1 completion:0];
}

- (id)_contactStore
{
  v2 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v3 = [v2 getContactStore];

  return v3;
}

- (id)_meContact
{
  v2 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v3 = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
  v4 = [v2 fetchMeContactWithKeys:v3];

  return v4;
}

- (id)_meCardSharingNameProviderWithContact:(id)a3
{
  v3 = [CKMeCardSharingNameProvider nameProviderForContact:a3];
  if (!v3)
  {
    v3 = +[CKMeCardSharingNameProvider nameProviderForPrimaryAccount];
  }

  return v3;
}

- (BOOL)_meCardSharingEnabled
{
  v2 = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  v3 = [v2 sharingEnabled];

  return v3;
}

- (unint64_t)_meCardSharingAudience
{
  v2 = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  v3 = [v2 sharingAudience];

  return v3;
}

- (BOOL)_imageForkedFromMeCard
{
  v2 = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  v3 = [v2 imageForkedFromMeCard];

  return v3;
}

- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4
{
  v4 = a4;
  v5 = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  [v5 setSharingEnabled:v4];
}

- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4
{
  v5 = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  [v5 setSharingAudience:a4];
}

- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4
{
  v4 = MEMORY[0x1E69A5C10];
  v5 = a4;
  v6 = [v4 sharedInstance];
  [v6 updatePersonalNicknameIfNecessaryWithMeCardSharingResult:v5];
}

- (CKOnboardingController)onboardingController
{
  onboardingController = self->_onboardingController;
  if (!onboardingController)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Creating onboarding in CKConversationListCollectionViewController", v8, 2u);
      }
    }

    v5 = objc_alloc_init(CKOnboardingController);
    v6 = self->_onboardingController;
    self->_onboardingController = v5;

    [(CKOnboardingController *)self->_onboardingController setDelegate:self];
    onboardingController = self->_onboardingController;
  }

  return onboardingController;
}

- (id)presentingViewControllerForOnboardingController:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKConversationListCollectionViewController *)self onboardingController];

  if (v5 == v4)
  {
    v7 = self;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Unexpected instance of onboardingController %@", &v9, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)onboardingControllerDidFinish:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Finishing onboarding in CKConversationListCollectionViewController", v6, 2u);
    }
  }

  [(CKConversationListCollectionViewController *)self setOnboardingController:0];
}

- (void)_chatAllowedByScreenTimeChanged:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled];
  v5 = v11;
  if (v4)
  {
    v6 = [v11 object];
    v7 = [(CKConversationListCollectionViewController *)self conversationList];
    v8 = [v7 conversationForExistingChat:v6];

    if (v8)
    {
      [v8 resetNameCaches];
      if ([v8 isPinned])
      {
        v9 = 2;
      }

      else
      {
        v9 = 5;
      }

      v10 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v8 inSection:v9];
      [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v10 animated:0];
    }

    v5 = v11;
  }
}

- (void)configureWithToolbarController:(id)a3
{
  v10 = a3;
  v4 = [(CKConversationListCollectionViewController *)self macToolbarController];

  if (v4 != v10)
  {
    [(CKConversationListCollectionViewController *)self setMacToolbarController:v10];
  }

  v5 = [(CKConversationListCollectionViewController *)self view];
  v6 = [v5 window];
  if (v6)
  {
    v7 = v6;
    v8 = [(CKConversationListCollectionViewController *)self conformsToProtocol:&unk_1F051C328];

    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [(CKConversationListCollectionViewController *)self macToolbarController];
    [v9 setPrimaryItemProvider:self];

    v5 = [(CKConversationListCollectionViewController *)self macToolbarController];
    [v5 setShouldDrawPrimaryBlur:0];
  }

LABEL_7:
}

- (id)virtualView
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isConversationListRefreshEnabled];

  if (v4)
  {
    macTransparentVirtualToolbarView = self->_macTransparentVirtualToolbarView;
    if (!macTransparentVirtualToolbarView)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v7 = self->_macTransparentVirtualToolbarView;
      self->_macTransparentVirtualToolbarView = v6;

      v8 = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)self->_macTransparentVirtualToolbarView setBackgroundColor:v8];

      macTransparentVirtualToolbarView = self->_macTransparentVirtualToolbarView;
    }

    v9 = macTransparentVirtualToolbarView;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)virtualToolbarPreferredHeight
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 macAppKitToolbarHeight];
  v4 = v3;

  return v4;
}

- (void)setIsBelowMacSnapToMinWidth:(BOOL)a3
{
  if (self->_isBelowMacSnapToMinWidth != a3)
  {
    self->_isBelowMacSnapToMinWidth = a3;
  }
}

- (CKMacToolbarItem)composeToolbarItem
{
  composeToolbarItem = self->_composeToolbarItem;
  if (!composeToolbarItem)
  {
    [(CKConversationListCollectionViewController *)self composeButtonItem];

    composeToolbarItem = self->_composeToolbarItem;
  }

  return composeToolbarItem;
}

- (id)toolbarItemForIdentifier:(id)a3
{
  v4 = a3;
  if ([(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth])
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isModernFilteringEnabled];

    if (v7 && [v4 isEqualToString:@"CKMacToolbarFilteringItemIdentifier"])
    {
      v8 = [(CKConversationListCollectionViewController *)self generateFilterMenu];
      v9 = [(CKConversationListCollectionViewController *)self filterToolbarItem];

      if (v9)
      {
        v10 = [(CKConversationListCollectionViewController *)self filterToolbarItem];
        [v10 setMenu:v8];
      }

      else
      {
        v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"line.3.horizontal.decrease"];
        v11 = [[CKMacMenuToolbarItem alloc] initWithItemIdentifier:@"CKMacToolbarFilteringItemIdentifier" image:v10 menu:v8 showsIndicator:0];
        [(CKConversationListCollectionViewController *)self setFilterToolbarItem:v11];
      }

      v5 = [(CKConversationListCollectionViewController *)self filterToolbarItem];
    }

    else
    {
      v5 = 0;
    }

    if ([v4 isEqualToString:@"CKMacToolbarNewComposeItemIdentifier"])
    {
      v12 = [(CKConversationListCollectionViewController *)self composeToolbarItem];

      v5 = v12;
    }
  }

  return v5;
}

- (void)fetchPinningSuggestions
{
  if ([(CKConversationListCollectionViewController *)self numberOfPinnedConversations]< 1)
  {
    v4 = [(CKConversationListCollectionViewController *)self numberOfConversations];
    v5 = [(CKConversationListCollectionViewController *)self pinnedConversationSuggester];
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__CKConversationListCollectionViewController_fetchPinningSuggestions__block_invoke;
    block[3] = &unk_1E72EBC38;
    v9 = self;
    v10 = v4;
    v8 = v5;
    v3 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Already have pinned conversations, not fetching conversations.", buf, 2u);
    }
  }
}

void __69__CKConversationListCollectionViewController_fetchPinningSuggestions__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [*(a1 + 32) chatGuidsForMessagesPinningWithMaxSuggestions:*(a1 + 48)];
  v4 = [v2 orderedSetWithArray:v3];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CKConversationListCollectionViewController_fetchPinningSuggestions__block_invoke_2;
  v7[3] = &unk_1E72EB8D0;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __69__CKConversationListCollectionViewController_fetchPinningSuggestions__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) array];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__CKConversationListCollectionViewController_fetchPinningSuggestions__block_invoke_3;
  v17[3] = &unk_1E72F5610;
  v17[4] = *(a1 + 40);
  v3 = [v2 __imArrayByApplyingBlock:v17];

  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![v4 isInternalInstall])
  {
LABEL_11:

    goto LABEL_12;
  }

  v5 = IMGetCachedDomainBoolForKeyWithDefaultValue();

  if (v5)
  {
    v6 = [v3 count];
    if (v6 != 3)
    {
      v7 = 3 - v6;
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v19 = v7;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Populating (%lu) remaining onboarding conversations.", buf, 0xCu);
        }
      }

      v9 = [*(a1 + 40) conversationList];
      v10 = [v9 conversations];

      if ([v10 count] >= v7)
      {
        v4 = [v10 subarrayWithRange:{0, v7}];

        v11 = [v3 arrayByAddingObjectsFromArray:v4];

        v3 = v11;
      }

      else
      {
        v4 = v10;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 32) count];
      v14 = [v3 count];
      *buf = 134218240;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "We were asked to show onboarding tip. Suggestions: (%lu) Conversations: (%lu)", buf, 0x16u);
    }
  }

  if ([v3 count] >= 3)
  {
    v16 = *(a1 + 40);
    v15 = (a1 + 40);
    [v16 setRecommendedPinningConversations:v3];
    [*v15 setCanShowSuggestedPinningOnboardingCell:1];
    [*v15 updateSnapshotAnimatingDifferences:1];
  }
}

id __69__CKConversationListCollectionViewController_fetchPinningSuggestions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 conversationList];
  v5 = [v4 conversationForExistingChatWithGUID:v3];

  return v5;
}

- (void)pinningTipUpdated
{
  if ([(CKConversationListTipManager *)self->_tipManager presentedTip]== 2)
  {

    [(CKConversationListCollectionViewController *)self fetchPinningSuggestions];
  }

  else
  {
    [(CKConversationListCollectionViewController *)self setCanShowSuggestedPinningOnboardingCell:0];

    [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
  }
}

- (void)ktFailureTipUpdated
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = MEMORY[0x1E696AD98];
      v5 = [(CKConversationListCollectionViewController *)self tipManager];
      v6 = [v4 numberWithInteger:{objc_msgSend(v5, "presentedTip")}];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Update KT Failure tip to present: %@", &v7, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
}

- (void)_submitFeedbackIfNecessaryForSuggestedPinnedConversationsFollowingOnboardingCompletedSuccessfully:(BOOL)a3
{
  v3 = a3;
  if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
  {
    v10 = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
    v5 = [(CKConversationListCollectionViewController *)self _pinningSuggestionsForConversations:?];
    if (v3)
    {
      v6 = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
      v7 = [(CKConversationListCollectionViewController *)self _pinningSuggestionsForConversations:v6];
      v8 = [MEMORY[0x1E69BDBD0] acceptedWithActualPinnings:v7 OnboardingSuggestions:v5];
    }

    else
    {
      v8 = [MEMORY[0x1E69BDBD0] skipOnboardingWithOnboardingSuggestions:v5];
    }

    v9 = [(CKConversationListCollectionViewController *)self pinnedConversationSuggester];
    [v9 provideMessagesPinningFeedback:v8];
  }
}

- (void)_submitFeedbackIfNecessaryForPinsChangedWithPreviousPinnedConversationIdentifiers:(id)a3
{
  v13 = a3;
  v4 = [(CKConversationListCollectionViewController *)self conversationList];
  v5 = [v4 loadedPinnedConversations];

  if (v5)
  {
    v6 = [(CKConversationListCollectionViewController *)self conversationList];
    v7 = [v6 pinnedConversations];

    v8 = [(CKConversationListCollectionViewController *)self _pinningSuggestionsForConversations:v7];
    v9 = [MEMORY[0x1E69BDBD0] pinsChangedWithNowCurrentPins:v8];
    v10 = [(CKConversationListCollectionViewController *)self _feedbackPinningInteractionMethod];
    [v9 setInteractionMethod:v10];
    if (!v10)
    {
      v11 = [v13 count];
      if (v11 == [v7 count])
      {
        [v9 setActionType:3];
      }
    }

    v12 = [(CKConversationListCollectionViewController *)self pinnedConversationSuggester];
    [v12 provideMessagesPinningFeedback:v9];

    [(CKConversationListCollectionViewController *)self setPinningInteractionMethod:0];
  }
}

- (id)_pinningSuggestionsForConversations:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) chat];
        v11 = [v10 guid];

        if ([v11 length])
        {
          v12 = [objc_alloc(MEMORY[0x1E69BDBE0]) initWithChatGuid:v11];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (int64_t)_feedbackPinningInteractionMethod
{
  v2 = [(CKConversationListCollectionViewController *)self pinningInteractionMethod];
  if ((v2 - 1) >= 4)
  {
    return 4;
  }

  else
  {
    return v2 - 1;
  }
}

- (BOOL)_wantsThreeColumnLayout
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 wantsUniversalThreeColumn];

  return v3;
}

- (void)_updateSelectAllButtonItemTitle
{
  v3 = [(CKConversationListCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [v4 count];

  v6 = [(CKConversationListCollectionViewController *)self numberOfConversations];
  v7 = CKFrameworkBundle();
  v10 = v7;
  if (v5 == v6)
  {
    v8 = @"DESELECT_ALL_BUTTON";
  }

  else
  {
    v8 = @"SELECT_ALL_BUTTON";
  }

  v9 = [v7 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];
  [(UIBarButtonItem *)self->_selectAllButtonItem setTitle:v9];
}

- (void)_performMultiSelectCleanUp
{
  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {

    [(CKConversationListCollectionViewController *)self _performRecentlyDeletedMultiSelectCleanUp];
  }

  else
  {
    v3 = [(CKConversationListCollectionViewController *)self delegate];
    v4 = [v3 isCollapsed];

    if ((v4 & 1) == 0)
    {
      v5 = [(CKConversationListCollectionViewController *)self collectionView];
      v6 = [v5 indexPathsForSelectedItems];
      v7 = [v6 count];

      if (v7 == 1)
      {
        v8 = [(CKConversationListCollectionViewController *)self dataSource];
        v9 = [(CKConversationListCollectionViewController *)self collectionView];
        v10 = [v9 indexPathsForSelectedItems];
        v11 = [v10 firstObject];
        v12 = [v8 itemIdentifierForIndexPath:v11];
        [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:v12];
      }

      v13 = [(CKConversationListCollectionViewController *)self dataSource];
      v14 = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
      v15 = [v13 indexPathForItemIdentifier:v14];

      [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v15 animated:CKIsRunningInMacCatalyst() == 0];
    }

    if ([(CKConversationListCollectionViewController *)self filterMode]!= 7)
    {

      [(CKConversationListCollectionViewController *)self setEditingMode:0];
    }
  }
}

- (void)_configureNavbarButtonsForNavigationItem:(id)a3
{
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setHidesBackButton:{-[CKConversationListCollectionViewController _hidesBackButton](self, "_hidesBackButton")}];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 supportsConversationListEditing];

  if (v6)
  {
    v7 = [(CKConversationListCollectionViewController *)self _isEditButtonPlacedOnLeft];
    v8 = [(CKConversationListCollectionViewController *)self editingMode];
    switch(v8)
    {
      case 2uLL:
        if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
        {
          v18 = [(CKConversationListCollectionViewController *)self cancelButtonItem];
          v35 = v18;
          v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];

          v11 = [(CKConversationListCollectionViewController *)self doneButtonItem];
          v34 = v11;
          v12 = MEMORY[0x1E695DEC8];
          v13 = &v34;
          goto LABEL_13;
        }

        v23 = [(CKConversationListCollectionViewController *)self doneButtonItem];
        v11 = v23;
        if (!v7)
        {
          v32 = v23;
          v21 = MEMORY[0x1E695DEC8];
          v22 = &v32;
          goto LABEL_36;
        }

        v33 = v23;
        v16 = MEMORY[0x1E695DEC8];
        v17 = &v33;
        break;
      case 1uLL:
        if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
        {
          v15 = [(CKConversationListCollectionViewController *)self doneButtonItem];
          v11 = v15;
          if (!v7)
          {
            v41 = v15;
            v21 = MEMORY[0x1E695DEC8];
            v22 = &v41;
            goto LABEL_36;
          }

          v42 = v15;
          v16 = MEMORY[0x1E695DEC8];
          v17 = &v42;
        }

        else
        {
          if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
          {
            v19 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
            v20 = [v19 isModernFilteringEnabled];

            if (v20 && ![(CKConversationListCollectionViewController *)self isRecentlyDeletedModal])
            {
              v11 = [(CKConversationListCollectionViewController *)self filteringButtonItem];
              v40 = v11;
              v21 = MEMORY[0x1E695DEC8];
              v22 = &v40;
              goto LABEL_36;
            }

            if ([(CKConversationListCollectionViewController *)self isRecentlyDeletedModal])
            {
              v11 = [(CKConversationListCollectionViewController *)self closeButtonItem];
              v39 = v11;
              v21 = MEMORY[0x1E695DEC8];
              v22 = &v39;
              goto LABEL_36;
            }

LABEL_19:
            v14 = 0;
            v10 = 0;
            goto LABEL_39;
          }

          v27 = [(CKConversationListCollectionViewController *)self isOscarModal];
          v28 = [(CKConversationListCollectionViewController *)self doneButtonItem];
          v11 = v28;
          if (!v27)
          {
            v37 = v28;
            v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];

            v11 = [(CKConversationListCollectionViewController *)self selectAllButtonItem];
            v36 = v11;
            v12 = MEMORY[0x1E695DEC8];
            v13 = &v36;
            goto LABEL_13;
          }

          v38 = v28;
          v16 = MEMORY[0x1E695DEC8];
          v17 = &v38;
        }

        break;
      case 0uLL:
        if ([(CKConversationListCollectionViewController *)self isOscarModal])
        {
          v9 = [(CKConversationListCollectionViewController *)self editOscarButtonItem];
          v48 = v9;
          v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];

          v11 = [(CKConversationListCollectionViewController *)self closeButtonItem];
          v47 = v11;
          v12 = MEMORY[0x1E695DEC8];
          v13 = &v47;
LABEL_13:
          v14 = [v12 arrayWithObjects:v13 count:1];
LABEL_38:

          goto LABEL_39;
        }

        if (v7)
        {
          v24 = [(CKConversationListCollectionViewController *)self editButtonItem];
          v46 = v24;
          v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];

          v25 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          v26 = [v25 isModernFilteringEnabled];

          if (v26)
          {
            v11 = [(CKConversationListCollectionViewController *)self filteringButtonItem];
            v45 = v11;
            v12 = MEMORY[0x1E695DEC8];
            v13 = &v45;
            goto LABEL_13;
          }

          v14 = MEMORY[0x1E695E0F0];
LABEL_39:
          [v4 setLeftBarButtonItems:v10 animated:1];
          goto LABEL_40;
        }

        v29 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v30 = [v29 isModernFilteringEnabled];

        if (v30)
        {
          v11 = [(CKConversationListCollectionViewController *)self editButtonItem];
          v44[0] = v11;
          v31 = [(CKConversationListCollectionViewController *)self filteringButtonItem];
          v44[1] = v31;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];

LABEL_37:
          v10 = 0;
          goto LABEL_38;
        }

        v11 = [(CKConversationListCollectionViewController *)self optionsButtonItem];
        v43 = v11;
        v21 = MEMORY[0x1E695DEC8];
        v22 = &v43;
LABEL_36:
        v14 = [v21 arrayWithObjects:v22 count:{1, v32}];
        goto LABEL_37;
      default:
        goto LABEL_19;
    }

    v10 = [v16 arrayWithObjects:v17 count:1];
    v14 = 0;
    goto LABEL_38;
  }

  [v4 setLeftBarButtonItems:0 animated:1];
  v10 = [(CKConversationListCollectionViewController *)self composeButtonItem];
  v49[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
LABEL_40:
  [v4 setRightBarButtonItems:v14 animated:1];
}

- (BOOL)_hasStewieConversationSelected
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5B00] sharedInstance];
  v4 = [v3 isStewieActive];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(CKConversationListCollectionViewController *)self dataSource];
        v14 = [v13 itemIdentifierForIndexPath:v12];

        v15 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v14];
        v16 = [v15 isStewieConversation];

        if (v16)
        {
          v17 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (id)toggleReadButtonItem
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"READ_ALL" value:&stru_1F04268F8 table:@"ChatKit"];

  if ([(CKConversationListCollectionViewController *)self _numberOfSelectedConversations])
  {
    v5 = [(CKConversationListCollectionViewController *)self _hasUnreadConversation];
    v6 = CKFrameworkBundle();
    v7 = v6;
    if (v5)
    {
      v8 = @"MARK_AS_READ_BUTTON";
    }

    else
    {
      v8 = @"MARK_AS_UNREAD_BUTTON";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];

    v4 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v4 style:0 target:self action:sel_toggleReadButtonTapped_];
  [v10 setEnabled:1];
  [v10 accessibilitySetIdentification:@"toggleReadButton"];

  return v10;
}

- (BOOL)_hasUnreadConversation
{
  v2 = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(CKConversationListCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CKConversationListCollectionViewController__hasUnreadConversation__block_invoke;
  v6[3] = &unk_1E72F5638;
  v6[4] = v2;
  v6[5] = &v7;
  [v4 enumerateObjectsUsingBlock:v6];
  LOBYTE(v2) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v2;
}

void __68__CKConversationListCollectionViewController__hasUnreadConversation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) conversationAtIndexPath:a2];
  if ([v6 hasUnreadMessages])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CKConversationListCollectionViewController *)self editingMode]== 1)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Not creating items for a new drag session as the collection view is frozen for bulk editing", &v15, 2u);
      }

LABEL_12:
    }
  }

  else
  {
    if (-[CKConversationListCollectionViewController sectionHasActionableConversations:](self, "sectionHasActionableConversations:", [v10 section]))
    {
      v12 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:v10];
      if (v12)
      {
        [v9 setLocalContext:@"CKConversationListDragContext"];
        v13 = [(CKConversationListCollectionViewController *)self _dragItemsForConversation:v12 indexPath:v10 inCollectionView:v8];
      }

      else
      {
        v13 = MEMORY[0x1E695E0F0];
      }

      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 134217984;
        v16 = [v10 section];
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Not creating items for a new drag session for a drag from a non-actionable section: %ld", &v15, 0xCu);
      }

      goto LABEL_12;
    }
  }

  v13 = MEMORY[0x1E695E0F0];
LABEL_16:

  return v13;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v10 hasItemsConformingToTypeIdentifiers:&unk_1F04E6FD8])
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Not creating additional drag items for a non-conversation pinning drag session", &v19, 2u);
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 conversationPinningMultiDragEnabled];

  if ((v13 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "User attempted to add drag items to an existing pinning drag session. This is not permitted.", &v19, 2u);
      }

      goto LABEL_17;
    }

LABEL_18:
    v15 = MEMORY[0x1E695E0F0];
    goto LABEL_19;
  }

  if (!-[CKConversationListCollectionViewController sectionHasActionableConversations:](self, "sectionHasActionableConversations:", [v11 section]))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = 134217984;
        v20 = [v11 section];
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Not creating items to addd to a drag session for a drag from a non-actionable section: %ld", &v19, 0xCu);
      }

LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v14 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:v11];
  if (v14)
  {
    v15 = [(CKConversationListCollectionViewController *)self _dragItemsForConversation:v14 indexPath:v11 inCollectionView:v9];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Could not find conversation to add drag items to drag session", &v19, 2u);
      }
    }

    v15 = MEMORY[0x1E695E0F0];
  }

LABEL_19:

  return v15;
}

- (id)_dragItemsForConversation:(id)a3 indexPath:(id)a4 inCollectionView:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  [v11 registerObject:v8 visibility:3];
  v12 = [v8 activityForNewSceneCreatedViaDrag:1];
  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 userInfo];
        *buf = 138412546;
        v27 = v12;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Creating conversation list drag item with user activity: %@, userInfo: %@", buf, 0x16u);
      }
    }

    [v11 registerObject:v12 visibility:1];
  }

  v15 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v11];
  [v15 setLocalObject:v8];
  if ([(CKConversationListCollectionViewController *)self _shouldUsePreviewProviderForDragItemAtIndexPath:v9])
  {
    objc_initWeak(buf, self);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __112__CKConversationListCollectionViewController_DragAndDrop___dragItemsForConversation_indexPath_inCollectionView___block_invoke;
    v21 = &unk_1E72F6548;
    objc_copyWeak(&v24, buf);
    v22 = v8;
    v23 = v10;
    [v15 setPreviewProvider:&v18];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v25 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:{1, v18, v19, v20, v21}];

  return v16;
}

id __112__CKConversationListCollectionViewController_DragAndDrop___dragItemsForConversation_indexPath_inCollectionView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained dragPreviewViewForPinnedConversation:*(a1 + 32) inCollectionView:*(a1 + 40)];

  v4 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [MEMORY[0x1E69DC728] bezierPath];
  [v4 setShadowPath:v6];

  v7 = [objc_alloc(MEMORY[0x1E69DC998]) initWithView:v3 parameters:v4];

  return v7;
}

- (BOOL)_shouldUsePreviewProviderForDragItemAtIndexPath:(id)a3
{
  v3 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 section] != 2;
  }

  return v4;
}

- (id)dragPreviewViewForPinnedConversation:(id)a3 inCollectionView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKConversationListCollectionViewController *)self _snapshotOfAvatarViewForConversation:v7];
  [v6 bounds];
  v10 = v9;
  v12 = v11;

  v13 = [(CKConversationListCollectionViewController *)self conversationLayout];
  v14 = +[CKUIBehavior sharedBehaviors];
  [v13 widthForPinnedConversationCellInCollectionViewOfSize:objc_msgSend(v14 numberOfItems:{"maximumNumberOfPinnedConversations"), v10, v12}];
  v16 = v15;

  v17 = [[CKPinnedConversationView alloc] initWithFrame:0.0, 0.0, v16, v16];
  [(CKPinnedConversationView *)v17 setShowsLiveActivity:0];
  [(CKPinnedConversationView *)v17 setConversation:v7];

  [(CKPinnedConversationView *)v17 setAvatarSnapshot:v8];
  v18 = [MEMORY[0x1E69DC888] clearColor];
  [(CKPinnedConversationView *)v17 setBackgroundColor:v18];

  [(CKPinnedConversationView *)v17 setLayoutStyle:[(CKConversationListCollectionViewController *)self pinnedConversationViewLayoutStyle]];
  [(CKPinnedConversationView *)v17 sizeToFit];

  return v17;
}

- (id)_snapshotOfAvatarViewForConversation:(id)a3
{
  v4 = a3;
  if ([v4 isPinned])
  {
    v5 = 2;
  }

  else
  {
    v5 = 5;
  }

  v6 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v4 inSection:v5];

  v7 = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [v7 indexPathForItemIdentifier:v6];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [(CKConversationListCollectionViewController *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 pinnedConversationView];
    v12 = [v11 avatarView];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 avatarView];
LABEL_9:

    if (v12)
    {
      v13 = [v12 contentImage];
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        [v12 bounds];
        v19.width = v15;
        v19.height = v16;
        UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
        [v12 bounds];
        [v12 drawViewHierarchyInRect:1 afterScreenUpdates:?];
        v14 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
      }

      v10 = v12;
      goto LABEL_16;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_17;
  }

  v14 = 0;
LABEL_16:

LABEL_17:

  return v14;
}

- (id)dragOrDropPreviewParametersForItemAtIndexPath:(id)a3 inCollectionView:(id)a4
{
  if ([a3 section] == 2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x1E69DC728] bezierPath];
    [v4 setShadowPath:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_destinationSectionForDropSession:(id)a3 destinationIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKConversationListCollectionViewController *)self dataSource];
  v9 = [v8 snapshot];
  v10 = [v9 numberOfItemsInSection:&unk_1F04E82E0];

  if (v7 && [v7 section] == 2 && objc_msgSend(v7, "item") <= v10)
  {
    v17 = 2;
  }

  else
  {
    v11 = [(CKConversationListCollectionViewController *)self _conversationsFromLocalDropSession:v6];
    [(CKConversationListCollectionViewController *)self yCoordinateForBorderBetweenPinnedAndActiveSectionExcludingConversations:v11];
    if (v12 == 0.0)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v20 = 0;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Could not determine destinationSectionForDropSession", v20, 2u);
        }
      }

      v17 = 5;
    }

    else
    {
      v13 = v12;
      v14 = [(CKConversationListCollectionViewController *)self collectionView];
      [v6 locationInView:v14];
      v16 = v15;

      if (v16 <= v13)
      {
        v17 = 2;
      }

      else
      {
        v17 = 5;
      }
    }
  }

  return v17;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 hasItemsConformingToTypeIdentifiers:&unk_1F04E6FF0])
  {
    v11 = [(CKConversationListCollectionViewController *)self _conversationDropProposalForCollectionView:v8 dropSession:v9 withDestinationIndexPath:v10];
  }

  else
  {
    v21[0] = *MEMORY[0x1E6963800];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v13 = [v9 hasItemsConformingToTypeIdentifiers:v12];

    if (v13)
    {
      v14 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:v10];
      v15 = [v14 unsentComposition];
      v16 = [v15 isAudioComposition];
      v17 = objc_alloc(MEMORY[0x1E69DC838]);
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = 2;
      }

      v19 = [v17 initWithDropOperation:v18 intent:2];

      goto LABEL_10;
    }

    v11 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:0];
  }

  v19 = v11;
LABEL_10:

  return v19;
}

- (id)_conversationDropProposalForCollectionView:(id)a3 dropSession:(id)a4 withDestinationIndexPath:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CKConversationListCollectionViewController *)self _conversationsFromLocalDropSession:v8];
  v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v13)
  {
    v14 = *v51;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v50 + 1) + 8 * i) pinningIdentifier];
        if ([v16 length])
        {
          [v11 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v13);
  }

  v17 = [(CKConversationListCollectionViewController *)self pinnedConversationIdentifiers];
  v18 = [(CKConversationListCollectionViewController *)self _destinationSectionForDropSession:v8 destinationIndexPath:v9];
  if (v18 == 5)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = v11;
    v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v27)
    {
      v28 = *v47;
      while (2)
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v26);
          }

          if ([v17 containsObject:*(*(&v46 + 1) + 8 * j)])
          {

            if (IMOSLoggingEnabled())
            {
              v33 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Dragging pinned conversation to the non pinned section, returning unspecific move drop proposal", buf, 2u);
              }
            }

            goto LABEL_36;
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Dragging unpinned conversations over the unpinned section, return unspecified move drop proposal to work around collection view issue, should be cancel", buf, 2u);
      }
    }

LABEL_36:
    v32 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:3 intent:0];
    goto LABEL_37;
  }

  if (v18 != 2)
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "Dragging conversations to a secion other than the pinned or list section, returning UIDropOperationCancel proposal", buf, 2u);
      }
    }

    v32 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:0 intent:0];
LABEL_37:
    v34 = v32;
    goto LABEL_68;
  }

  v19 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v17];
  v20 = [v11 array];
  [v19 removeObjectsInArray:v20];

  v21 = [v11 array];
  [v19 addObjectsFromArray:v21];

  v22 = [v19 count];
  v23 = +[CKUIBehavior sharedBehaviors];
  v24 = v22 > [v23 maximumNumberOfPinnedConversations];

  if (v24)
  {
    v25 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:1 intent:0];
  }

  else
  {
    if ([v12 count] < 2)
    {
      if ([(CKConversationListCollectionViewController *)self isShowingPinnedChatDropTarget])
      {
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "Dragging item to the drop target, returning unspecified move drop proposal", buf, 2u);
          }
        }
      }

      else if (v9)
      {
        v37 = [v9 section] == 2;
        v38 = IMOSLoggingEnabled();
        if (v37)
        {
          if (v38)
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = [v9 section];
              v41 = [v9 item];
              *buf = 134218240;
              v56 = v40;
              v57 = 2048;
              v58 = v41;
              _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Dragging item to a specific location in the pinned section (%ld,%ld), returning InsertAtDestinationIndexPath drop proposal", buf, 0x16u);
            }
          }

          v25 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:3 intent:1];
          goto LABEL_67;
        }

        if (v38)
        {
          v43 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "Dragging item to pinned section with an invalid destination index path, returning unspecified move drop proposal", buf, 2u);
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_INFO, "Dragging item to pinned section without a valid destination index path, returning unspecified move drop proposal", buf, 2u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "Dragging multiple items to the pinned section, returning unspecified move drop proposal", buf, 2u);
      }
    }

    v25 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:3 intent:0];
  }

LABEL_67:
  v34 = v25;

LABEL_68:
  [v34 setPrefersFullSizePreview:1];

  return v34;
}

- (BOOL)_isDropForSession:(id)a3 toLeadingEdgeOfView:(id)a4
{
  v5 = a4;
  [a3 locationInView:v5];
  v7 = v6;
  [v5 bounds];
  MidX = CGRectGetMidX(v10);
  LODWORD(a3) = [v5 _shouldReverseLayoutDirection];

  if (a3)
  {
    return v7 > MidX;
  }

  else
  {
    return v7 < MidX;
  }
}

- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4
{
  if ([a4 hasItemsConformingToTypeIdentifiers:&unk_1F04E7008])
  {
    [(CKConversationListCollectionViewController *)self setHasActivePinnedConversationDropSession:1];
    [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:1];
    if (![(CKConversationListCollectionViewController *)self numberOfPinnedConversations])
    {
      if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
      {
        [(CKConversationListCollectionViewController *)self setIsShowingPinnedChatDropTarget:1];

        [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
      }
    }
  }
}

- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4
{
  [(CKConversationListCollectionViewController *)self setIsShowingPinnedChatDropTarget:0, a4];

  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  if ([a4 hasItemsConformingToTypeIdentifiers:&unk_1F04E7020])
  {
    [(CKConversationListCollectionViewController *)self setHasActivePinnedConversationDropSession:0];
    if ([(CKConversationListCollectionViewController *)self isShowingPinnedChatDropTarget])
    {
      [(CKConversationListCollectionViewController *)self setIsShowingPinnedChatDropTarget:0];
      [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:1];

      [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0];
    }

    else
    {

      [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:1];
    }
  }
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [v4 hasItemsConformingToTypeIdentifiers:&unk_1F04E7038];
  v9[0] = *MEMORY[0x1E6963800];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v4 hasItemsConformingToTypeIdentifiers:v6];

  LOBYTE(v6) = [MEMORY[0x1E69A82C0] dropSessionIsRepositioningSticker:v4];
  return (v6 ^ 1) & (v5 | v7);
}

- (id)_conversationFromDragItem:(id)a3
{
  v3 = [a3 localObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_conversationsFromLocalDropSession:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a3 localDragSession];
  v5 = [v4 items];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(CKConversationListCollectionViewController *)self _conversationFromDragItem:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];

  return v13;
}

- (id)_conversationAfterDropDestination:(id)a3 fromDiffableDataSource:(id)a4 snapshot:(id)a5 excludingDraggedConversation:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v31 = [a5 numberOfItemsInSection:&unk_1F04E82E0];
  if ([v12 isPinned])
  {
    v13 = 2;
  }

  else
  {
    v13 = 5;
  }

  v30 = self;
  v14 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v12 inSection:v13];
  if (v14)
  {
    v15 = [v11 indexPathForItemIdentifier:v14];
    v16 = v15;
    if (v15)
    {
      if ([v15 section] == 2)
      {
        v17 = [v16 item];
        if (v17 < [v10 item])
        {
          v18 = [v10 item] + 1;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = [v10 item];
LABEL_11:
  if (v18 >= v31)
  {
    v23 = 0;
  }

  else
  {
    v28 = v16;
    v29 = v14;
    while (1)
    {
      v19 = v10;
      v20 = [MEMORY[0x1E696AC88] indexPathForItem:v18 inSection:{objc_msgSend(v10, "section", v28, v29)}];
      v21 = v11;
      v22 = [v11 itemIdentifierForIndexPath:v20];
      v23 = [(CKConversationListCollectionViewController *)v30 conversationForItemIdentifier:v22];
      v24 = [v12 pinningIdentifier];
      v25 = [v23 pinningIdentifier];
      v26 = [v24 isEqualToString:v25];

      if ((v26 & 1) == 0)
      {
        break;
      }

      ++v18;
      v10 = v19;
      v11 = v21;
      if (v31 == v18)
      {
        v23 = 0;
        goto LABEL_18;
      }
    }

    v10 = v19;
    v11 = v21;
LABEL_18:
    v16 = v28;
    v14 = v29;
  }

  return v23;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Performing drop using non-diffable reordering (performDropWithCoordinator:)", v14, 2u);
    }
  }

  v9 = [v7 session];
  v10 = [v9 hasItemsConformingToTypeIdentifiers:&unk_1F04E7050];

  if (v10)
  {
    [(CKConversationListCollectionViewController *)self _performConversationDropWithCollectionView:v6 dropCoordinator:v7];
  }

  else
  {
    v11 = [v7 session];
    v15[0] = *MEMORY[0x1E6963800];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13 = [v11 hasItemsConformingToTypeIdentifiers:v12];

    if (v13)
    {
      [(CKConversationListCollectionViewController *)self _performItemDropWithCollectionView:v6 dropCoordinator:v7];
    }
  }
}

- (void)_performConversationDropWithCollectionView:(id)a3 dropCoordinator:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 proposal];
  v9 = [v8 operation];

  if (v9 != 3)
  {
    goto LABEL_37;
  }

  v10 = [v7 session];
  v11 = [(CKConversationListCollectionViewController *)self _conversationsFromLocalDropSession:v10];
  v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v66;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v66 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v65 + 1) + 8 * i) pinningIdentifier];
        if ([v18 length])
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v15);
  }

  v52 = v6;

  [v7 destinationIndexPath];
  v20 = v19 = v10;
  v21 = [(CKConversationListCollectionViewController *)self _destinationSectionForDropSession:v10 destinationIndexPath:?];
  v55 = [(CKConversationListCollectionViewController *)self dataSource];
  v22 = [v55 snapshot];
  v23 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifier];
  v70 = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v53 = v22;
  [v22 deleteItemsWithIdentifiers:v24];

  v25 = [(CKConversationListCollectionViewController *)self isShowingPinnedChatDropTarget];
  [(CKConversationListCollectionViewController *)self setIsShowingPinnedChatDropTarget:0];
  v51 = v13;
  if (v21 == 5)
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __118__CKConversationListCollectionViewController_DragAndDrop___performConversationDropWithCollectionView_dropCoordinator___block_invoke_2;
    v60[3] = &unk_1E72ED3A0;
    v60[4] = self;
    v61 = v22;
    [v13 enumerateObjectsUsingBlock:v60];

    v26 = v19;
  }

  else
  {
    v26 = v19;
    if (v21 == 2)
    {
      if ([v13 count] != 1 || v25)
      {
LABEL_14:
        v27 = 0;
LABEL_26:
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __118__CKConversationListCollectionViewController_DragAndDrop___performConversationDropWithCollectionView_dropCoordinator___block_invoke;
        v62[3] = &unk_1E72F6570;
        v62[4] = self;
        v63 = v53;
        v64 = v27;
        v34 = v27;
        [v13 enumerateObjectsWithOptions:2 usingBlock:v62];

        goto LABEL_27;
      }

      if (v20 && [v20 section] == 2)
      {
        v28 = [v13 firstObject];
        v27 = [(CKConversationListCollectionViewController *)self _conversationAfterDropDestination:v20 fromDiffableDataSource:v55 snapshot:v53 excludingDraggedConversation:v28];
      }

      else
      {
        v29 = [v53 numberOfItemsInSection:&unk_1F04E82E0];
        v30 = [(CKConversationListCollectionViewController *)self conversationLayout];
        v31 = [v30 numberOfPinnedConversationColumnsForLayoutStyle:{-[CKConversationListCollectionViewController pinnedConversationViewLayoutStyle](self, "pinnedConversationViewLayoutStyle")}];

        v27 = 0;
        if (v29 < 1)
        {
          v13 = v51;
          goto LABEL_26;
        }

        v32 = v29 < v31;
        v13 = v51;
        if (!v32)
        {
          goto LABEL_26;
        }

        if (![(CKConversationListCollectionViewController *)self _isDropForSession:v19 toLeadingEdgeOfView:v52])
        {
          goto LABEL_14;
        }

        v28 = [v53 itemIdentifiersInSectionWithIdentifier:&unk_1F04E82E0];
        v33 = [v28 firstObject];
        v27 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v33];

        v13 = v51;
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  v49 = v12;
  v50 = v26;
  [(CKConversationListCollectionViewController *)self commitPinnedConversationsFromSnapshot:v53, v20];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = v7;
  v35 = [v7 session];
  v36 = [v35 items];

  v37 = [v36 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v57;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v57 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v56 + 1) + 8 * j);
        v42 = [(CKConversationListCollectionViewController *)self _conversationFromDragItem:v41];
        if (v42)
        {
          v43 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v42 inSection:v21];
          [v55 indexPathForItemIdentifier:v43];
          v44 = self;
          v46 = v45 = v21;
          v47 = [v54 dropItem:v41 toItemAtIndexPath:v46];

          v21 = v45;
          self = v44;
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v38);
  }

  v6 = v52;
  v7 = v54;
LABEL_37:
}

void __118__CKConversationListCollectionViewController_DragAndDrop___performConversationDropWithCollectionView_dropCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) itemIdentifierForConversation:v3 inSection:2];
  v5 = [*(a1 + 40) itemIdentifiers];
  v6 = [v5 containsObject:v4];

  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 setNextPinnedConversationListUpdateShouldTriggerUnanimatedSnapshotUpdate:1];
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [*(a1 + 32) itemIdentifierForConversation:v8 inSection:2];
      [*(a1 + 40) moveItemWithIdentifier:v4 beforeItemWithIdentifier:v9];
    }

    else
    {
      v16 = *(a1 + 40);
      v21[0] = v4;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v16 appendItemsWithIdentifiers:v9 intoSectionWithIdentifier:&unk_1F04E82E0];
    }
  }

  else
  {
    v9 = [v7 itemIdentifierForConversation:v3 inSection:5];
    v10 = *(a1 + 40);
    v20 = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v10 deleteItemsWithIdentifiers:v11];

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = [*(a1 + 32) itemIdentifierForConversation:v12 inSection:2];
      v14 = *(a1 + 40);
      v19 = v4;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
      [v14 insertItemsWithIdentifiers:v15 beforeItemWithIdentifier:v13];
    }

    else
    {
      v17 = *(a1 + 40);
      v18 = v4;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      [v17 appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:&unk_1F04E82E0];
    }
  }
}

void __118__CKConversationListCollectionViewController_DragAndDrop___performConversationDropWithCollectionView_dropCoordinator___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) itemIdentifierForConversation:a2 inSection:2];
  v4 = *(a1 + 40);
  v6[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v4 deleteItemsWithIdentifiers:v5];
}

- (void)didReorderConversationsWithTransaction:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Performing drop using diffable reordering", v7, 2u);
    }
  }

  [(CKConversationListCollectionViewController *)self setIsCommitingDiffableDataSourceTransaction:1];
  v6 = [v4 finalSnapshot];
  [(CKConversationListCollectionViewController *)self commitPinnedConversationsFromSnapshot:v6];
  [(CKConversationListCollectionViewController *)self setIsCommitingDiffableDataSourceTransaction:0];
}

- (void)commitPinnedConversationsFromSnapshot:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    v5 = [(CKConversationListCollectionViewController *)self pinnedConversationsFromSnapshot:v4];
    v6 = v5;
    v7 = MEMORY[0x1E695E0F0];
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = v8;

    v10 = [(CKConversationListCollectionViewController *)self pinnedConversations];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    v13 = v12;

    if ([v13 isEqualToArray:v9])
    {
      [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
    }

    else
    {
      v14 = [(CKConversationListCollectionViewController *)self _allFrozenConversations];
      if (v14)
      {
        [(CKConversationListCollectionViewController *)self setFrozenPinnedConversations:v9];
        [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:1];
        [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
      }

      else
      {
        [(CKConversationListCollectionViewController *)self setPinningInteractionMethod:1];
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v16 = v9;
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

              v21 = [*(*(&v24 + 1) + 8 * i) chat];
              [v15 addObject:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v18);
        }

        v22 = [MEMORY[0x1E69A5C38] sharedInstance];
        v23 = [v15 copy];
        [v22 setPinnedChats:v23 withUpdateReason:*MEMORY[0x1E69A5A20]];

        v14 = 0;
      }
    }

    [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:1];
  }
}

- (void)_performItemDropWithCollectionView:(id)a3 dropCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 destinationIndexPath];
  if (v8)
  {
    v9 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:v8];
    v10 = [v9 unsentComposition];
    if (([v10 isAudioComposition] & 1) == 0)
    {
      v11 = [MEMORY[0x1E695DF70] array];
      v12 = [v7 items];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __110__CKConversationListCollectionViewController_DragAndDrop___performItemDropWithCollectionView_dropCoordinator___block_invoke;
      v18[3] = &unk_1E72F6598;
      v13 = v11;
      v19 = v13;
      [v12 enumerateObjectsUsingBlock:v18];

      objc_initWeak(&location, self);
      if ([v13 count])
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __110__CKConversationListCollectionViewController_DragAndDrop___performItemDropWithCollectionView_dropCoordinator___block_invoke_2;
        v14[3] = &unk_1E72EE538;
        objc_copyWeak(&v16, &location);
        v15 = v8;
        [CKComposition requestCompositionFromItemProviders:v13 completion:v14];

        objc_destroyWeak(&v16);
      }

      objc_destroyWeak(&location);
    }
  }
}

void __110__CKConversationListCollectionViewController_DragAndDrop___performItemDropWithCollectionView_dropCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 dragItem];
  v3 = [v4 itemProvider];
  [v2 addObject:v3];
}

void __110__CKConversationListCollectionViewController_DragAndDrop___performItemDropWithCollectionView_dropCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__CKConversationListCollectionViewController_DragAndDrop___performItemDropWithCollectionView_dropCoordinator___block_invoke_3;
  block[3] = &unk_1E72ED950;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __110__CKConversationListCollectionViewController_DragAndDrop___performItemDropWithCollectionView_dropCoordinator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _showConversationWithComposition:*(a1 + 32) atIndexPath:*(a1 + 40)];
}

- (void)updateFocusFilterBannerWithAnimation:(BOOL)a3
{
  v3 = a3;
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:?];
  v5 = +[CKFocusFilterBannerCollectionViewCell itemIdentifier];
  [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v5 animated:v3];
}

- (void)configureFocusFilterCell:(id)a3
{
  v5 = a3;
  [v5 setFocusFilterBannerDelegate:self];
  v4 = [MEMORY[0x1E69A8088] sharedManager];
  [v5 setIsFocusFilterEnabled:{objc_msgSend(v4, "userSwitchForFocusFilteringIsEnabled")}];

  [v5 setUseFullWidthKeylines:{-[CKConversationListCollectionViewController _focusFilterBannerShouldUseFullWidthKeylines](self, "_focusFilterBannerShouldUseFullWidthKeylines")}];
}

- (void)configureFocusFilterCollapsedCell:(id)a3
{
  v4 = a3;
  [v4 setFocusFilterBannerDelegate:self];
  v5 = [MEMORY[0x1E69A8088] sharedManager];
  [v4 setIsFocusFilterEnabled:{objc_msgSend(v5, "userSwitchForFocusFilteringIsEnabled")}];
}

- (BOOL)_focusFilterBannerShouldUseFullWidthKeylines
{
  v2 = [(CKConversationListCollectionViewController *)self dataSource];
  v3 = [v2 snapshot];

  v4 = [v3 numberOfSections] && objc_msgSend(v3, "numberOfItems") && objc_msgSend(v3, "numberOfItemsInSection:", &unk_1F04E85F8) <= 0 && (objc_msgSend(v3, "numberOfItemsInSection:", &unk_1F04E8610) > 0 || objc_msgSend(v3, "numberOfItemsInSection:", &unk_1F04E8628) > 0 || objc_msgSend(v3, "numberOfItemsInSection:", &unk_1F04E8640) > 0);
  return v4;
}

- (void)focusFilterBannerEnabledStateDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69A8088] sharedManager];
  [v5 setUserSwitchForFocusFilteringIsEnabled:v3];

  v7 = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [v7 collectionViewLayout];
  [v6 invalidateLayout];
}

- (id)generateFilterMenu
{
  v2 = self;
  CKConversationListCollectionViewController.generateFilterMenu()(v3);
  v5 = v4;

  return v5;
}

- (void)beginHoldingConversationInConversationListIfNeeded:(id)a3
{
  v4 = a3;
  v5 = self;
  CKConversationListCollectionViewController.beginHoldingConversationInConversationListIfNeeded(conversation:)(v4);
}

- (void)addFilterModesIfValid:(id)a3 applyDefaultFallback:(BOOL)a4
{
  sub_1902188FC(0, &qword_1EAD46510);
  sub_190218944();
  sub_190D57410();
  v7 = self;
  v6 = sub_190D574B0();

  sub_1908A7E38(v6, a4);
}

- (void)removeFilterMode:(unint64_t)a3
{
  v3 = self;
  CKConversationListCollectionViewController.removeFilterMode(_:)();
}

- (void)filterModeChangedCommonActionsWithForcedUpdate:(BOOL)a3
{
  v4 = self;
  CKConversationListCollectionViewController.filterModeChangedCommonActions(forcedUpdate:)(a3);
}

- (void)updateFilteringElementsWithReason:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CKConversationListCollectionViewController.updateFilteringElements(reason:)(v8);
}

- (void)updateFiltersAfterNewComposeToConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  CKConversationListCollectionViewController.updateFiltersAfterNewCompose(sentConversation:)(v4);
}

- (void)filterCommandSelected:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1908A9950(v4);
}

- (void)messageFilteringSelected:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1908AF6CC(v4);
}

- (BOOL)shouldShowAlertForRemotelyManagedUser
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C9DD0]) init];
  v3 = [v2 shouldRequestMoreTime];

  return v3;
}

- (id)getScreenTimePasscodeControllerWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo42CKConversationListCollectionViewControllerC7ChatKitE021getScreenTimePasscodeE012conversationSo012UINavigationE0CSo0A0C_tF_0(v4);

  return v6;
}

- (id)getAddToContactsRemoteAlertWithConversation:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v8 = a3;
    v9 = self;
  }

  v10 = CKConversationListCollectionViewController.getAddToContactsRemoteAlert(conversation:sender:)(a3, v12);

  sub_19021E7D8(v12);

  return v10;
}

- (id)reportConcernForChat:(id)a3
{
  v4 = a3;
  v5 = self;
  CKConversationListCollectionViewController.reportConcern(for:)(v6, v4);
  v8 = v7;

  return v8;
}

- (id)generateInternalMenuIfAllowedForConversations:(id)a3
{
  sub_1902188FC(0, &qword_1EAD466B0);
  v4 = sub_190D57180();
  v5 = self;
  CKConversationListCollectionViewController.generateInternalMenuIfAllowed(conversations:)(v6, v4);
  v8 = v7;

  return v8;
}

- (id)spamContextMenuForCollectionView:(id)a3 indexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  sub_190D51C00();
  v9 = sub_190D57180();
  v10 = a3;
  v11 = self;
  CKConversationListCollectionViewController.spamContextMenu(collectionView:indexPaths:point:)(v12, v10, v9, __PAIR128__(*&y, *&x));
  v14 = v13;

  return v14;
}

- (void)toolbarPresentPermanentDeletionConfirmationsForSpamConversations:(id)a3 sender:(id)a4
{
  sub_1902188FC(0, &qword_1EAD466B0);
  v6 = sub_190D57180();
  swift_unknownObjectRetain();
  v7 = self;
  CKConversationListCollectionViewController.toolbarPresentPermanentDeletionConfirmations(spamConversations:sender:)(v6, a4);
  swift_unknownObjectRelease();
}

- (void)setupTranslationAvailabilityWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_190D572E0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_190DF92C0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_190DD75C0;
  v12[5] = v11;
  v13 = self;
  sub_190C798DC(0, 0, v7, &unk_190DD75C8, v12);
}

- (id)captureFilteringStateForDiagnosticsRequest
{
  v2 = self;
  CKConversationListCollectionViewController.captureFilteringStateForDiagnosticsRequest()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61910);
  v3 = sub_190D56D60();

  return v3;
}

- (void)deleteButtonTappedForItemIdentifier:(id)a3 completionHandler:(id)a4 cellToUpdate:(id)a5 alertsDisplayConfiguration:(id)a6
{
  v9 = _Block_copy(a4);
  v10 = sub_190D56F10();
  v12 = v11;
  if (v9)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v9 = sub_190CB6694;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  v15 = a6;
  v16 = self;
  CKConversationListCollectionViewController.deleteButtonTapped(itemIdentifier:completionHandler:cellToUpdate:alertsDisplayConfiguration:)(v10, v12, v9, v13, v14, v15);
  sub_19022123C(v9);
}

- (id)deleteSwipeActionForIndexPath:(id)a3
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v8 = self;
  v9 = CKConversationListCollectionViewController.deleteSwipeAction(indexPath:)(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)recentlyDeletedContextMenuForCollectionView:(id)a3 indexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  sub_190D51C00();
  v9 = sub_190D57180();
  v10 = a3;
  v11 = self;
  CKConversationListCollectionViewController.recentlyDeletedContextMenu(collectionView:indexPaths:point:)(v12, v10, v9, __PAIR128__(*&y, *&x));
  v14 = v13;

  return v14;
}

- (void)updateConversations:(id)a3 asRead:(BOOL)a4
{
  sub_1902188FC(0, &qword_1EAD466B0);
  v6 = sub_190D57180();
  v7 = self;
  CKConversationListCollectionViewController.updateConversations(_:asRead:)(v6, a4);
}

- (id)recoverableDeleteContextMenuActionWithConversations:(id)a3 collectionView:(id)a4 indexPaths:(id)a5 point:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  sub_1902188FC(0, &qword_1EAD466B0);
  v10 = sub_190D57180();
  sub_190D51C00();
  v11 = sub_190D57180();
  v12 = a4;
  v13 = self;
  CKConversationListCollectionViewController.recoverableDeleteContextMenuAction(conversations:collectionView:indexPaths:point:)(v14, v10, v12, v11, __PAIR128__(*&y, *&x));
  v16 = v15;

  return v16;
}

- (void)collectionView:didBeginMultipleSelectionInteractionAtIndexPath:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_19020E000, v0, OS_LOG_TYPE_ERROR, "Multiselection began for an out-of-bounds indexPath. Had %ld items in section.", v1, 0xCu);
}

void __117__CKConversationListCollectionViewController_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "itemIdentifier not found on configuration: %@", &v3, 0xCu);
}

- (void)_pinActionForItemIdentifier:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([a1 isPinned])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (a2)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [a1 chat];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "conversation.isPinned == %@, but isPinned (in UI) == %@ conversation.chat: %@", &v9, 0x20u);
}

- (void)_adaptiveImageGlyphWasGeneratedNotification:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_3();
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_19020E000, a3, OS_LOG_TYPE_DEBUG, "Updating %ld conversations previews for generated adaptive image glyph: %@", v5, 0x16u);
}

- (void)_adaptiveImageGlyphWasGeneratedNotification:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_19020E000, v0, OS_LOG_TYPE_DEBUG, "Adding deferred update of conversation list for generated adaptive image glyph: %@", v1, 0xCu);
}

- (void)viewWillAppear:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_19020E000, v1, OS_LOG_TYPE_ERROR, "expected cell of class CKPinnedConversationCollectionViewCell at selectedIndexPath: %@. Got cell: %@", v2, 0x16u);
}

@end