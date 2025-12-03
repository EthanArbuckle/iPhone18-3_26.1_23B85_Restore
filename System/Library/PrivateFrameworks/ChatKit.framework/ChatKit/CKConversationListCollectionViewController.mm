@interface CKConversationListCollectionViewController
+ (id)conversationListCollectionViewControllerLogHandle;
+ (id)updaterLogHandle;
- (BOOL)_canShowCatalystFiltersNavigation;
- (BOOL)_canShowSyncProgressFooter;
- (BOOL)_cellsShouldShowChevron;
- (BOOL)_conversationHasActivityItem:(id)item;
- (BOOL)_focusFilterBannerShouldUseFullWidthKeylines;
- (BOOL)_hasAlertsEnabledForAllConversations:(id)conversations;
- (BOOL)_hasReadAllConversations:(id)conversations;
- (BOOL)_hasStewieConversationSelected;
- (BOOL)_hasUnreadConversation;
- (BOOL)_hidesBackButton;
- (BOOL)_imageForkedFromMeCard;
- (BOOL)_isDropForSession:(id)session toLeadingEdgeOfView:(id)view;
- (BOOL)_isEditButtonPlacedOnLeft;
- (BOOL)_isNewComposeSelected;
- (BOOL)_isOnlyActivityItemInRowForConversation:(id)conversation itemIdentifier:(id)identifier;
- (BOOL)_meCardSharingEnabled;
- (BOOL)_shouldAllowLargeTitles;
- (BOOL)_shouldKeepSelection;
- (BOOL)_shouldResizeNavigationBar;
- (BOOL)_shouldSelectConversationAfterDeletingIndexPath:(id)path;
- (BOOL)_shouldUpdateConversationSelection;
- (BOOL)_shouldUsePreviewProviderForDragItemAtIndexPath:(id)path;
- (BOOL)_updateAddsTypingChatItem:(id)item;
- (BOOL)_updateRemovesTypingChatItem:(id)item;
- (BOOL)_wantsThreeColumnLayout;
- (BOOL)cellAtIndexPath:(id)path isVisibleInCollectionView:(id)view;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)contextMenuInteractionShouldBeginAtIndexPath:(id)path;
- (BOOL)hasDetailsNavigationController;
- (BOOL)hasTransparentSideBar;
- (BOOL)isDetailsNavigationControllerDetached;
- (BOOL)isSearchActive;
- (BOOL)isSearchActiveAndDisplayingResultsForSearchText;
- (BOOL)listCellIsBeingDisplayedAsGhostedCellInPinnedSection:(id)section;
- (BOOL)searchBarShouldClear:(id)clear;
- (BOOL)sectionHasActionableConversations:(unint64_t)conversations;
- (BOOL)shouldAnimatePositionForRecommendedItemIdentifiers:(id)identifiers pinnedItemIdentifiers:(id)itemIdentifiers;
- (BOOL)shouldInsetResultsForSearchController:(id)controller;
- (BOOL)shouldScrollCollectionViewForCellSelection:(id)selection;
- (BOOL)shouldShowAlertForRemotelyManagedUser;
- (BOOL)shouldShowInternalDebugMenu;
- (BOOL)shouldShowPendingCell;
- (BOOL)shouldShowPinnedConversations;
- (BOOL)shouldShowTipKitContent;
- (BOOL)shouldShowToolbar;
- (CGRect)collectionViewBoundsForPinnedConversationCollectionViewCell:(id)cell;
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
- (double)_activityItemTopInsetForIndexPath:(id)path;
- (double)animationDistanceForCompletingOnboarding;
- (double)virtualToolbarPreferredHeight;
- (double)widthForDeterminingAvatarVisibility;
- (double)yCoordinateForBorderBetweenPinnedAndActiveSectionExcludingConversations:(id)conversations;
- (id)_allFrozenConversations;
- (id)_avatarProviderFromNickname:(id)nickname;
- (id)_contactStore;
- (id)_conversationAfterDropDestination:(id)destination fromDiffableDataSource:(id)source snapshot:(id)snapshot excludingDraggedConversation:(id)conversation;
- (id)_conversationDetailsActionForItemIdentifier:(id)identifier withCell:(id)cell;
- (id)_conversationDropProposalForCollectionView:(id)view dropSession:(id)session withDestinationIndexPath:(id)path;
- (id)_conversationFromDragItem:(id)item;
- (id)_conversationsEligibleForMute:(id)mute;
- (id)_conversationsEligibleForReadStateToggle:(id)toggle;
- (id)_conversationsFromLocalDropSession:(id)session;
- (id)_conversationsInRowOfItemIdentifier:(id)identifier;
- (id)_deleteConversationActionForItemIdentifier:(id)identifier withCell:(id)cell;
- (id)_dndSwipeActionForIndexPath:(id)path;
- (id)_dragItemsForConversation:(id)conversation indexPath:(id)path inCollectionView:(id)view;
- (id)_editNicknameMenu:(id)menu;
- (id)_getTitleForCurrentFilterMode;
- (id)_indexPathOfDefaultConversation;
- (id)_indexPaths:(id)paths containingHandleWithUID:(id)d;
- (id)_itemIdentifierOfDefaultConversation;
- (id)_makeToolbarItemsForCurrentState;
- (id)_markAsActionForConversations:(id)conversations;
- (id)_markUnreadSwipeActionForIndexPath:(id)path;
- (id)_meCardSharingNameProviderWithContact:(id)contact;
- (id)_meContact;
- (id)_multipleSelectionMenuInCollectionView:(id)view indexPaths:(id)paths point:(CGPoint)point;
- (id)_multitaskingDragExclusionRects;
- (id)_muteActionConversations:(id)conversations;
- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)_openConversationInNewWindowActionForItemIdentifier:(id)identifier;
- (id)_permanentDeleteButtonToUseForSelectedJunkConversations:(BOOL)conversations;
- (id)_permanentDeletebuttonToUseForSelectedConversations:(BOOL)conversations;
- (id)_pinActionForItemIdentifier:(id)identifier;
- (id)_pinConversationSwipeActionForIndexPath:(id)path;
- (id)_pinnedConversationShortNames;
- (id)_pinningSuggestionsForConversations:(id)conversations;
- (id)_previewForHighlightingOrDismissingContextMenuWithConfiguration:(id)configuration indexPath:(id)path collectionView:(id)view;
- (id)_previewProviderForConversation:(id)conversation;
- (id)_recentMessagesInPinnedConversations;
- (id)_recentlyDeletedDisclosureLabelText;
- (id)_recoverButtonToUseForSelectedConversations:(BOOL)conversations;
- (id)_selectedConversationsInRecentlyDeletedSection;
- (id)_simFilterActionsForActiveSubscriptions;
- (id)_simFilterSubMenu;
- (id)_singleSelectionMenuInCollectionView:(id)view indexPaths:(id)paths point:(CGPoint)point;
- (id)_snapshotOfAvatarViewForConversation:(id)conversation;
- (id)captureFilteringStateForDiagnosticsRequest;
- (id)cellForCollapsedSidebarFocusFilterCellInCollectionView:(id)view atIndexPath:(id)path;
- (id)cellForFocusFilterInCollectionView:(id)view atIndexPath:(id)path;
- (id)cellForIndexPath:(id)path inCollectionView:(id)view withItemIdentifier:(id)identifier;
- (id)cellForPinnedConversationDropTargetInCollectionView:(id)view atIndexPath:(id)path;
- (id)cellForPinnedConversationWithItemIdentifier:(id)identifier inCollectionView:(id)view atIndexPath:(id)path;
- (id)cellForPinningOnboardingTitleViewCollectionView:(id)view atIndexPath:(id)path;
- (id)cellForRecoverableConversationWithItemIdentifier:(id)identifier inCollectionView:(id)view atIndexPath:(id)path;
- (id)cellForStandardConversationWithItemIdentifier:(id)identifier inCollectionView:(id)view atIndexPath:(id)path;
- (id)cellPinningOnboardingItemIdentifier:(id)identifier inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)complimentaryIndexPathForConversationAtIndexPath:(id)path;
- (id)conversationAtIndexPath:(id)path;
- (id)conversationForItemIdentifier:(id)identifier;
- (id)conversationsAtIndexPaths:(id)paths;
- (id)conversationsForItemIdentifiers:(id)identifiers;
- (id)dataSourceWithCollectionView:(id)view;
- (id)deleteSwipeActionForIndexPath:(id)path;
- (id)dragOrDropPreviewParametersForItemAtIndexPath:(id)path inCollectionView:(id)view;
- (id)dragPreviewViewForPinnedConversation:(id)conversation inCollectionView:(id)view;
- (id)editButtonDropdownMenu;
- (id)firstVisibleIndexPathInCollectionView;
- (id)generateFilterMenu;
- (id)generateInternalMenuIfAllowedForConversations:(id)conversations;
- (id)generateSnapshot;
- (id)getAddToContactsRemoteAlertWithConversation:(id)conversation sender:(id)sender;
- (id)getScreenTimePasscodeControllerWithConversation:(id)conversation;
- (id)indexPathOfFirstSelectedItem;
- (id)initForOscarModal;
- (id)initForRecentlyDeletedModal;
- (id)itemIdentifierForConversation:(id)conversation inSection:(unint64_t)section;
- (id)itemIdentifiersForConversations:(id)conversations inSection:(unint64_t)section;
- (id)lastVisibleIndexPathInCollectionView;
- (id)leadingSwipeActionsConfigurationForIndexPath:(id)path;
- (id)newMessageCellInCollectionView:(id)view atIndexPath:(id)path;
- (id)nextSequentialIndexPathForIndexPath:(id)path descending:(BOOL)descending;
- (id)pinnedConversationIdentifiers;
- (id)pinnedConversationsFromSnapshot:(id)snapshot;
- (id)preferredFocusEnvironments;
- (id)presentingViewControllerForOnboardingController:(id)controller;
- (id)previousPinnedConversationActivitySnapshotForConversation:(id)conversation;
- (id)recentlyDeletedContextMenuForCollectionView:(id)view indexPaths:(id)paths point:(CGPoint)point;
- (id)recoverableDeleteContextMenuActionWithConversations:(id)conversations collectionView:(id)view indexPaths:(id)paths point:(CGPoint)point;
- (id)reportConcernForChat:(id)chat;
- (id)searchBarForSearchViewController:(id)controller;
- (id)searchController:(id)controller conversationForChatGUID:(id)d;
- (id)searchController:(id)controller conversationsForExistingChatsWithGUIDs:(id)ds;
- (id)selectedConversations;
- (id)showOscarModalAction;
- (id)showRecentlyDeletedModalAction;
- (id)spamContextMenuForCollectionView:(id)view indexPaths:(id)paths point:(CGPoint)point;
- (id)supplementaryViewForIndexPath:(id)path inCollectionView:(id)view withKind:(id)kind;
- (id)tipCollectionViewCell:(id)cell atIndexPath:(id)path;
- (id)tipKitOnboardingCollectionView:(id)view atIndexPath:(id)path;
- (id)toggleReadButtonItem;
- (id)toolbarItemForIdentifier:(id)identifier;
- (id)toolbarItemsForJunkFilterHasConversations:(BOOL)conversations hasSelectedConversations:(BOOL)selectedConversations;
- (id)toolbarItemsForRecentlyDeletedFilterHasConversations:(BOOL)conversations hasSelectedConversations:(BOOL)selectedConversations;
- (id)trailingSwipeActionsConfigurationForIndexPath:(id)path;
- (id)transparentNavBarAppearance;
- (id)updaterLogHandle;
- (id)virtualView;
- (int64_t)_activityItemOriginationDirectionForItemIdentifier:(id)identifier conversation:(id)conversation;
- (int64_t)_alertControllerStyle;
- (int64_t)_feedbackPinningInteractionMethod;
- (int64_t)distanceBetweenConversationIndexPath:(id)path andIndexPath:(id)indexPath;
- (int64_t)numberOfConversations;
- (int64_t)numberOfPinnedConversations;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)_destinationSectionForDropSession:(id)session destinationIndexPath:(id)path;
- (unint64_t)_maxNumberOfDaysUntilDeletionInConversations:(id)conversations;
- (unint64_t)_meCardSharingAudience;
- (unint64_t)_minNumberOfDaysUntilDeletionInConversations:(id)conversations;
- (unint64_t)_numberOfRecoverableMessagesInConversations:(id)conversations;
- (unint64_t)_numberOfSelectedConversations;
- (unint64_t)_preferredEditingMode:(unint64_t)mode;
- (unint64_t)_sanitizedFilterMode:(unint64_t)mode;
- (unint64_t)_sanitizedFilterModeForFilterUnknownDisabled:(unint64_t)disabled;
- (unint64_t)_sanitizedFilterModeForFilterUnknownEnabled:(unint64_t)enabled;
- (unint64_t)activePrimaryFilterMode;
- (unint64_t)filterMode;
- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)notification;
- (void)_appendRecentlyDeletedIdentifersToSnapshot:(id)snapshot;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)_cancelDeletion:(id)deletion;
- (void)_chatAllowedByScreenTimeChanged:(id)changed;
- (void)_chatItemsDidChange:(id)change;
- (void)_chatParticipantsChangedNotification:(id)notification;
- (void)_chatUnreadCountDidChange:(id)change;
- (void)_chatWatermarkDidChange:(id)change;
- (void)_ck_setNeedsUpdateOfMultitaskingDragExclusionRects;
- (void)_configureAvatarViewInConversationCell:(id)cell forItemIdentifier:(id)identifier;
- (void)_configureCloudTipViewModelIfNeeded;
- (void)_configureForFilterMode:(unint64_t)mode;
- (void)_configureInteractiveAvatarInConversationCell:(id)cell forItemIdentifier:(id)identifier;
- (void)_configureNavbarButtonsForNavigationItem:(id)item;
- (void)_configurePinnedConversationCell:(id)cell forConversation:(id)conversation itemIdentifier:(id)identifier indexPath:(id)path animated:(BOOL)animated;
- (void)_configureSearchBarClearButton:(BOOL)button searchController:(id)controller;
- (void)_configureSecondarySubMenuInParentMenuItems:(id)items;
- (void)_consumeSummaryForConversationAtIndexPathIfNeeded:(id)needed;
- (void)_consumeSummaryOnUnreadCountChangeForChatIfNeeded:(id)needed;
- (void)_contactStoreDidFinishLoadingNotification:(id)notification;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_conversationContactPhotosEnabledChangedNotification:(id)notification;
- (void)_conversationDisplayNameChangedNotification:(id)notification;
- (void)_conversationFilteringStateChangedNotification:(id)notification;
- (void)_conversationIsFilteredChangedNotification:(id)notification;
- (void)_conversationListDidChange:(id)change;
- (void)_conversationListDidFinishLoadingConversations:(id)conversations;
- (void)_conversationListPinnedConversationsDidChange:(id)change;
- (void)_conversationMessageWasSent:(id)sent;
- (void)_conversationMuteDidChangeNotification:(id)notification;
- (void)_conversationSpamFilteringStateChangedNotification:(id)notification;
- (void)_deselectSelectedIndexPathsInCollectionView:(id)view animated:(BOOL)animated;
- (void)_didPullToRefresh:(id)refresh;
- (void)_didReceiveSummaries:(id)summaries;
- (void)_dismissPresentedDetailsController:(id)controller;
- (void)_dismissPresentedNavController:(id)controller;
- (void)_endHoldingUpdatesForBatchEditing:(BOOL)editing;
- (void)_endHoldingUpdatesOnViewWillAppear;
- (void)_ensureCellLayoutOnCell:(id)cell;
- (void)_freezeConversations;
- (void)_handingPendingConversationDidChange:(id)change;
- (void)_handleChatRegistryDidPermanentlyDeleteRecoverableMessages:(id)messages;
- (void)_handleDidRecoverMessagesInChatsNotification:(id)notification;
- (void)_handleFilterUnknownSendersSettingChange:(id)change;
- (void)_handleJunkFilteringSettingChange:(id)change;
- (void)_increaseContrastDidChange:(id)change;
- (void)_infiniteScrollReachedIndexPath:(id)path;
- (void)_iosUpdateNavbarLayoutIfNeeded;
- (void)_keyboardWillShow:(id)show;
- (void)_markAllConversationsAsRead;
- (void)_markPinnedAndActiveConversationsAsRead;
- (void)_moveToRecentlyDeletedButtonTapped:(id)tapped;
- (void)_multiWayCallStateChanged:(id)changed;
- (void)_pendingSatelliteCountChanged;
- (void)_performConversationDropWithCollectionView:(id)view dropCoordinator:(id)coordinator;
- (void)_performItemDropWithCollectionView:(id)view dropCoordinator:(id)coordinator;
- (void)_performMultiSelectCleanUp;
- (void)_performRecentlyDeletedMultiSelectCleanUp;
- (void)_performRecoverableDeletionForConversations:(id)conversations deleteDate:(id)date;
- (void)_performTranscriptPushForItemAtIndexPath:(id)path userInitiated:(BOOL)initiated;
- (void)_permanentDeleteAllButtonTapped:(id)tapped;
- (void)_permanentDeleteAllJunkButtonTapped:(id)tapped;
- (void)_permanentDeleteSelectedButtonTapped:(id)tapped;
- (void)_permanentDeleteSelectedJunkButtonTapped:(id)tapped;
- (void)_permanentDeletionConfirmedForConversations:(id)conversations;
- (void)_popToInbox;
- (void)_recoverAllButtonTapped:(id)tapped;
- (void)_recoverConfirmedForConversations:(id)conversations;
- (void)_recoverSelectedButtonTapped:(id)tapped;
- (void)_refreshConversationListCellForGroupPhotoUpdate:(id)update;
- (void)_refreshConversationListCellForHistoryClear:(id)clear;
- (void)_reloadRecoverableMetadataForNotification:(id)notification;
- (void)_reloadVisibleConversationList:(id)list;
- (void)_removalCompleted;
- (void)_removeConversationsFromFrozenConversations:(id)conversations;
- (void)_removeRefreshControl;
- (void)_resetMessageFiltering;
- (void)_resetSimFilteringToDefaultState;
- (void)_selectConversationAtIndexPath:(id)path animated:(BOOL)animated;
- (void)_setPinnedConversationViewLayoutStyle:(int64_t)style shouldInvalidateLayout:(BOOL)layout;
- (void)_showConversation:(id)conversation withComposition:(id)composition;
- (void)_showConversationWithComposition:(id)composition atIndexPath:(id)path;
- (void)_showOscarModalActionTapped;
- (void)_showRecentlyDeletedModalActionTapped;
- (void)_startRefreshControlTimer;
- (void)_submitFeedbackIfNecessaryForPinsChangedWithPreviousPinnedConversationIdentifiers:(id)identifiers;
- (void)_submitFeedbackIfNecessaryForSuggestedPinnedConversationsFollowingOnboardingCompletedSuccessfully:(BOOL)successfully;
- (void)_toggleUnreadStateForSelectedConversations:(id)conversations;
- (void)_unfreezeConversations;
- (void)_updateAccountRegistrationFailureNotification;
- (void)_updateBannerLayoutConstraints;
- (void)_updateCollectionViewImmediatelyIfNeeded;
- (void)_updateConversationFilteredFlagsAndReportSpam;
- (void)_updateConversationListsAndSortIfEnabled;
- (void)_updateConversations:(id)conversations alertsHidden:(BOOL)hidden;
- (void)_updateForCurrentEditingStateAnimated:(BOOL)animated shouldInvalidateCellLayout:(BOOL)layout;
- (void)_updateInsets;
- (void)_updateLargeTitleDisplayModeWithAnimation:(BOOL)animation;
- (void)_updateNavbarLayoutIfNeeded;
- (void)_updateScrollEdgeAppearanceProgress;
- (void)_updateSearchControllerForConversationListBelowMacSnapWidth:(BOOL)width;
- (void)_updateSelectAllButtonItemTitle;
- (void)_updateSyncStatusViewWithSyncState:(id)state;
- (void)_updateToolbarItems;
- (void)_updatedSelectedIndexPathCount;
- (void)acceptButtonTappedForCell:(id)cell;
- (void)addBanner:(id)banner animated:(BOOL)animated;
- (void)addFilterMode:(unint64_t)mode;
- (void)addFilterModesIfValid:(id)valid applyDefaultFallback:(BOOL)fallback;
- (void)addToContactsButtonTappedForCell:(id)cell;
- (void)animateInCollectionView:(id)view aboveBackgroundSnapshotView:(id)snapshotView enteringOnboarding:(BOOL)onboarding animationDistance:(double)distance;
- (void)animateInPinsToFinalPosition;
- (void)animateOutBackgroundSnapshotView:(id)view;
- (void)applicationWillSuspend;
- (void)applyConversationListSnapshot:(id)snapshot animatingDifferences:(BOOL)differences completion:(id)completion;
- (void)applyDefaultFilterMode;
- (void)avatarHeaderWasTappedForConversation:(id)conversation;
- (void)avatarViewTapped:(id)tapped;
- (void)backButtonPressed;
- (void)beginFindFromEditMenu;
- (void)beginHoldingConversationInConversationListIfNeeded:(id)needed;
- (void)beginHoldingConversationListUpdatesForPPTTests;
- (void)cancelButtonTapped:(id)tapped;
- (void)catalystFiltersNavigationBackButtonTapped:(id)tapped;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)collectionView:(id)view dropSessionDidExit:(id)exit;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)commitPinnedConversationsForEditingPins;
- (void)commitPinnedConversationsFromSnapshot:(id)snapshot;
- (void)completeAnimation;
- (void)composeButtonClicked:(id)clicked;
- (void)compositionSent;
- (void)configureAppEntityForConversationCell:(id)cell forItemIdentifier:(id)identifier;
- (void)configureConversationCell:(id)cell forItemIdentifier:(id)identifier;
- (void)configureDropTargetCell:(id)cell;
- (void)configureFiltersMenu;
- (void)configureFocusFilterCell:(id)cell;
- (void)configureFocusFilterCollapsedCell:(id)cell;
- (void)configureForOscarFilter;
- (void)configureForRecentlyDeletedFilter;
- (void)configureNewMessageCell:(id)cell;
- (void)configureOnboardingTitleCell:(id)cell;
- (void)configurePinnedConversationCell:(id)cell forItemIdentifier:(id)identifier indexPath:(id)path animated:(BOOL)animated;
- (void)configureRecoverableConversationCell:(id)cell forItemIdentifier:(id)identifier;
- (void)configureSearchBarEnabled:(BOOL)enabled;
- (void)configureSelectionBarButtonItem:(id)item usingStyle:(unint64_t)style;
- (void)configureTipCollectionViewCell:(id)cell;
- (void)configureTipKitOnboardingCell:(id)cell;
- (void)configureWithToolbarController:(id)controller;
- (void)dealloc;
- (void)deleteButtonTappedForCell:(id)cell;
- (void)deleteButtonTappedForItemIdentifier:(id)identifier completionHandler:(id)handler cellToUpdate:(id)update alertsDisplayConfiguration:(id)configuration;
- (void)deleteSelectedConversation;
- (void)detailsAdapter:(id)adapter wantsToStageComposition:(id)composition;
- (void)detailsAdapterDidDismiss:(id)dismiss;
- (void)detailsAdapterWantsToPresentKTContactVerificationUI:(id)i;
- (void)didDismissSearchController:(id)controller;
- (void)didReorderConversationsWithTransaction:(id)transaction;
- (void)dismissDetailsNavigationControllerWithCompletion:(id)completion;
- (void)dismissDetailsViewAndShowConversationList;
- (void)dismissSearchIfNeeded;
- (void)doneButtonTapped:(id)tapped;
- (void)editButtonMenuWillShow;
- (void)editNameAndPhotoMenuItemSelected;
- (void)endHoldingConversationListUpdatesForPPTTests;
- (void)fetchPinningSuggestions;
- (void)filterCommandSelected:(id)selected;
- (void)filterModeChangedCommonActionsWithForcedUpdate:(BOOL)update;
- (void)focusFilterBannerEnabledStateDidChange:(BOOL)change;
- (void)focusStateDidChange;
- (void)invalidateCellLayout;
- (void)ktFailureTipUpdated;
- (void)leaveJunkFilterIfNeeded;
- (void)loadView;
- (void)messageFilteringSelected:(id)selected;
- (void)muteConversationButtonTappedForConversationWithItemIdentifier:(id)identifier setMuted:(BOOL)muted;
- (void)onboardingControllerDidFinish:(id)finish;
- (void)oscarViewWillAppear:(BOOL)appear;
- (void)parentSplitViewControllerDidUpdateCollapsedState;
- (void)performDeletionForActiveConversation:(id)conversation itemIdentifier:(id)identifier completionHandler:(id)handler cellToUpdate:(id)update alertsDisplayConfiguration:(id)configuration;
- (void)performDeletionForPendingConversationCell:(id)cell completionHandler:(id)handler alertsDisplayConfiguration:(id)configuration;
- (void)performResumeDeferredSetup;
- (void)performSearch:(id)search completion:(id)completion;
- (void)permanentSpamDeletionConfirmed:(id)confirmed;
- (void)pinButtonTappedForCell:(id)cell;
- (void)pinConversation:(id)conversation withReason:(id)reason;
- (void)pinConversationsWithCompletion:(id)completion;
- (void)pinnedConversationView:(id)view didUpdateWithActivitySnapshot:(id)snapshot;
- (void)pinningTipActionTapped;
- (void)pinningTipUpdated;
- (void)prepareForSuspend;
- (void)presentDetailsForItemIdentifier:(id)identifier fromView:(id)view;
- (void)reasonTrackingUpdater:(id)updater didBeginHoldingUpdatesWithInitialReason:(id)reason;
- (void)reasonTrackingUpdater:(id)updater didEndHoldingUpdatesWithFinalReason:(id)reason;
- (void)reasonTrackingUpdater:(id)updater needsUpdateForReasons:(id)reasons followingHoldForReason:(id)reason;
- (void)recentlyDeletedViewWillAppear:(BOOL)appear;
- (void)recoverableDeletionConfirmedForConversations:(id)conversations deleteDate:(id)date;
- (void)registerForCloudKitEventsWithDelayedRegistration:(BOOL)registration;
- (void)registerForFocusStateChanges;
- (void)reloadData;
- (void)removeBanner:(id)banner animated:(BOOL)animated;
- (void)removeFilterMode:(unint64_t)mode;
- (void)removeNewlyPinnedSuggestionCells:(id)cells;
- (void)restoreFilterModesIfValid:(id)valid;
- (void)scrollToFirstSelectedItemIfNecessary;
- (void)scrollViewDidScroll:(id)scroll;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)searchController:(id)controller didSelectItem:(id)item inChat:(id)chat;
- (void)searchControllerDidBeginDragging:(id)dragging;
- (void)searchControllerFindNext;
- (void)searchControllerFindPrevious;
- (void)searchViewController:(id)controller requestsPushOfSearchController:(id)searchController;
- (void)selectAllButtonTapped:(id)tapped;
- (void)selectConversationClosestToDeletedIndex:(id)index;
- (void)selectDefaultConversationAnimated:(BOOL)animated removingPendingConversationCell:(BOOL)cell;
- (void)selectDefaultConversationAnimated:(BOOL)animated shouldUsePreviousySelectedIndexPath:(BOOL)path;
- (void)selectFirstActiveConversation;
- (void)selectNextSequentialConversation:(BOOL)conversation;
- (void)selectPinnedConversationForItem:(int64_t)item;
- (void)selectedDeleteButtonForConversation:(id)conversation inCell:(id)cell;
- (void)setAppIntentsDataSource;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated shouldInvalidateCellLayout:(BOOL)layout;
- (void)setEditingMode:(unint64_t)mode animated:(BOOL)animated shouldUpdate:(BOOL)update shouldInvalidateCellLayout:(BOOL)layout;
- (void)setFilterMode:(unint64_t)mode;
- (void)setHasActivePinnedConversationDropSession:(BOOL)session;
- (void)setIsBelowMacSnapToMinWidth:(BOOL)width;
- (void)setIsShowingPinningOnboarding:(BOOL)onboarding;
- (void)setLastSelectedConversationItemIdentifier:(id)identifier;
- (void)setNeedsConversationListUpdateForFocusStateChange;
- (void)setupTranslationAvailabilityWithCompletion:(id)completion;
- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience;
- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state;
- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result;
- (void)showCannotPinMoreConversationsAlert;
- (void)showMeCardViewController;
- (void)showMeCardViewControllerWithNickname:(id)nickname;
- (void)showMultiplePhoneNumbersAlertForNicknames;
- (void)showiCloudNotSignedInAlertForNicknames;
- (void)significantTimeChange;
- (void)startCompletePinningOnboardingAnimation;
- (void)startEndSuggestedPinsAnimation;
- (void)startSuggestedPinsAnimation;
- (void)startTipCellAnimatingIfNecessary;
- (void)stopTipCellAnimatingIfNecessary;
- (void)togglePinStateForConversation:(id)conversation withReason:(id)reason;
- (void)toggleReadButtonTapped:(id)tapped;
- (void)toolbarPresentPermanentDeletionConfirmationsForSpamConversations:(id)conversations sender:(id)sender;
- (void)trackSIMFilterUpdateEventFromOldSIMFilterIndex:(int64_t)index toSelectedSIMFilterIndex:(int64_t)filterIndex;
- (void)traitCollectionDidChange:(id)change;
- (void)unpinButtonTappedForCell:(id)cell withConversation:(id)conversation;
- (void)unpinConversation:(id)conversation withReason:(id)reason;
- (void)unregisterForCloudKitEvents;
- (void)updateBannerConstraintsForScrollViewDidScroll:(id)scroll;
- (void)updateBannerVisualEffectGroup;
- (void)updateConfigurationStateForSelectedCell;
- (void)updateContentsOfAllCellsAnimated:(BOOL)animated;
- (void)updateContentsOfCell:(id)cell withItemIdentifier:(id)identifier atIndexPath:(id)path animated:(BOOL)animated;
- (void)updateContentsOfCellForConversation:(id)conversation animated:(BOOL)animated;
- (void)updateContentsOfCellWithIndexPath:(id)path animated:(BOOL)animated;
- (void)updateContentsOfCellWithItemIdentifier:(id)identifier animated:(BOOL)animated;
- (void)updateContentsOfCellWithItemIdentifier:(id)identifier indexPath:(id)path animated:(BOOL)animated;
- (void)updateContentsOfCellsWithItemIdentifiers:(id)identifiers animated:(BOOL)animated;
- (void)updateConversationList;
- (void)updateConversationListFilterButton;
- (void)updateConversationListForFilterModeChanged;
- (void)updateConversationListForMessageSentToConversation:(id)conversation;
- (void)updateConversationListTitle;
- (void)updateConversationNamesForNicknames:(id)nicknames;
- (void)updateConversationSelection;
- (void)updateConversationSelectionPreservingLastSelectedItemIdentifier;
- (void)updateConversationSelectionToNewCompose;
- (void)updateConversations:(id)conversations asRead:(BOOL)read;
- (void)updateFilteringElementsWithReason:(id)reason;
- (void)updateFiltersAfterNewComposeToConversation:(id)conversation;
- (void)updateFocusFilterBannerWithAnimation:(BOOL)animation;
- (void)updateNavigationItems;
- (void)updateNoMessagesDialog;
- (void)updateRefreshControlVisibility;
- (void)updateSIMFilterIndexAndReloadData:(int64_t)data;
- (void)updateSMSSpamConversationsDisplayName;
- (void)updateSharedProfileNavigationBarPaletteVisibility;
- (void)updateSnapshotAnimatingDifferences:(BOOL)differences completion:(id)completion;
- (void)updateSyncProgressIfNeeded;
- (void)userDeletedJunkConversationFromTranscript;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidAppearDeferredSetup;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation CKConversationListCollectionViewController

- (CKConversationListCollectionViewController)init
{
  v3 = objc_alloc_init(CKConversationListCollectionViewLayout);
  conversationListLayout = [(CKConversationListCollectionViewLayout *)v3 conversationListLayout];
  v27.receiver = self;
  v27.super_class = CKConversationListCollectionViewController;
  v5 = [(CKConversationListCollectionViewController *)&v27 initWithCollectionViewLayout:conversationListLayout];
  v6 = v5;
  if (v5)
  {
    v5->_isInitialAppearance = 1;
    standardCellLayout = [(CKConversationListCollectionViewController *)v5 standardCellLayout];
    [(CKConversationListCollectionViewController *)v6 setCellLayout:standardCellLayout];

    [(CKConversationListCollectionViewLayout *)v3 setConversationListController:v6];
    [(CKConversationListCollectionViewController *)v6 setConversationLayout:v3];
    [(CKConversationListCollectionViewController *)v6 setNextPinnedConversationListUpdateShouldTriggerUnanimatedSnapshotUpdate:1];
    [(CKConversationListCollectionViewController *)v6 setInstallsStandardGestureForInteractiveMovement:0];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

    if (isModernFilteringEnabled)
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

    updater = [(CKConversationListCollectionViewController *)v6 updater];
    [updater beginHoldingUpdatesForReason:@"viewVisiblity"];

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernFilteringEnabled2 = [mEMORY[0x1E69A8070]2 isModernFilteringEnabled];

    if ((isModernFilteringEnabled2 & 1) == 0)
    {
      [(CKConversationListCollectionViewController *)v6 _updateConversationListsAndSortIfEnabled];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__chatItemsDidChange_ name:*MEMORY[0x1E69A5748] object:0];
    [defaultCenter addObserver:v6 selector:sel__chatWatermarkDidChange_ name:*MEMORY[0x1E69A5930] object:0];
    [defaultCenter addObserver:v6 selector:sel__conversationListDidFinishLoadingConversations_ name:@"CKConversationListFinishedLoadingNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__contactStoreDidFinishLoadingNotification_ name:*MEMORY[0x1E69A6E10] object:0];
    conversationList = [(CKConversationListCollectionViewController *)v6 conversationList];
    [defaultCenter addObserver:v6 selector:sel__conversationListDidChange_ name:@"CKConversationListChangedNotification" object:conversationList];

    [defaultCenter addObserver:v6 selector:sel__chatUnreadCountDidChange_ name:*MEMORY[0x1E69A5920] object:0];
    [defaultCenter addObserver:v6 selector:sel__chatUnreadCountDidChange_ name:*MEMORY[0x1E69A58D0] object:0];
    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(conversationList) = [mEMORY[0x1E69A8070]3 isUnreadCountRefactorEnabled];

    if (conversationList)
    {
      [defaultCenter addObserver:v6 selector:sel__chatUnreadCountDidChange_ name:*MEMORY[0x1E69A7DD0] object:0];
    }

    [defaultCenter addObserver:v6 selector:sel__chatParticipantsChangedNotification_ name:*MEMORY[0x1E69A5848] object:0];
    [defaultCenter addObserver:v6 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    [defaultCenter addObserver:v6 selector:sel__increaseContrastDidChange_ name:*MEMORY[0x1E69DD8B8] object:0];
    [defaultCenter addObserver:v6 selector:sel__adaptiveImageGlyphWasGeneratedNotification_ name:@"CKAdaptiveImageGlyphGeneratedNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__conversationIsFilteredChangedNotification_ name:*MEMORY[0x1E69A5740] object:0];
    [defaultCenter addObserver:v6 selector:sel__conversationDisplayNameChangedNotification_ name:*MEMORY[0x1E69A5700] object:0];
    [defaultCenter addObserver:v6 selector:sel__conversationMuteDidChangeNotification_ name:*MEMORY[0x1E69A77C8] object:0];
    [defaultCenter addObserver:v6 selector:sel__conversationFilteringStateChangedNotification_ name:CKMessageFilteringChangedNotification[0] object:0];
    [defaultCenter addObserver:v6 selector:sel__conversationSpamFilteringStateChangedNotification_ name:CKMessageSpamFilteringChangedNotification object:0];
    [defaultCenter addObserver:v6 selector:sel__conversationContactPhotosEnabledChangedNotification_ name:CKConversationListContactPhotosEnabledNotification object:0];
    [defaultCenter addObserver:v6 selector:sel__didReceiveSummaries_ name:@"CKConversationListDidReceiveSummaries" object:0];
    mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isPriorityMessagesEnabled = [mEMORY[0x1E69A8070]4 isPriorityMessagesEnabled];

    if (isPriorityMessagesEnabled)
    {
      [defaultCenter addObserver:v6 selector:sel_updateConversationList name:*MEMORY[0x1E69A58D8] object:0];
    }

    if (IMIsOscarEnabled())
    {
      [defaultCenter addObserver:v6 selector:sel_updateConversationList name:@"CKConversationListDidRecoverJunkConversationsNotification" object:0];
    }

    [defaultCenter addObserver:v6 selector:sel__multiWayCallStateChanged_ name:*MEMORY[0x1E69A5840] object:0];
    [defaultCenter addObserver:v6 selector:sel__reloadVisibleConversationList_ name:@"CKConversationListUpdateVisibleConversationsNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__downtimeStateChanged_ name:*MEMORY[0x1E69A5970] object:0];
    [defaultCenter addObserver:v6 selector:sel__chatAllowedByScreenTimeChanged_ name:*MEMORY[0x1E69A56E8] object:0];
    [defaultCenter addObserver:v6 selector:sel_updateConversationNamesForNicknames_ name:*MEMORY[0x1E69A59D8] object:0];
    [defaultCenter addObserver:v6 selector:sel_updateConversationNamesForNicknames_ name:*MEMORY[0x1E69A59E0] object:0];
    [defaultCenter addObserver:v6 selector:sel__conversationListPinnedConversationsDidChange_ name:@"CKConversationListPinnedConversationsChangedNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__refreshConversationListCellForGroupPhotoUpdate_ name:@"CKConversationListAvatarUpdateNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__refreshConversationListCellForHistoryClear_ name:*MEMORY[0x1E69A5728] object:0];
    [defaultCenter addObserver:v6 selector:sel__handleAccountRegistrationChange_ name:*MEMORY[0x1E69A5A68] object:0];
    v20 = *MEMORY[0x1E69A56B0];
    [defaultCenter addObserver:v6 selector:sel__handleAccountRegistrationChange_ name:*MEMORY[0x1E69A56B0] object:0];
    [defaultCenter addObserver:v6 selector:sel__handleAccountRegistrationChange_ name:*MEMORY[0x1E69A5678] object:0];
    [defaultCenter addObserver:v6 selector:sel__handleFilterUnknownSendersSettingChange_ name:@"SSFilterMessageRequestsSettingNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__handleJunkFilteringSettingChange_ name:@"SSEnableJunkFilteringSettingNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__handingPendingConversationDidChange_ name:@"CKConversationListPendingConversationChangedNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__reloadRecoverableMetadataForNotification_ name:*MEMORY[0x1E69A58A8] object:0];
    [defaultCenter addObserver:v6 selector:sel__handleDidRecoverMessagesInChatsNotification_ name:*MEMORY[0x1E69A58B8] object:0];
    [defaultCenter addObserver:v6 selector:sel__updateAccountRegistrationFailureNotification name:v20 object:0];
    [defaultCenter addObserver:v6 selector:sel_updateRefreshControlVisibility name:*MEMORY[0x1E69A5938] object:0];
    [defaultCenter addObserver:v6 selector:sel__pendingSatelliteCountChanged name:*MEMORY[0x1E69A5850] object:0];
    [defaultCenter addObserver:v6 selector:sel__isDownloadingPendingSatelliteMessagesChanged name:*MEMORY[0x1E69A5738] object:0];
    [(CKConversationListCollectionViewController *)v6 registerForFocusStateChanges];
    [(CKConversationListCollectionViewController *)v6 setUseLayoutToLayoutNavigationTransitions:0];
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    getContactStore = [mEMORY[0x1E69A7FD0] getContactStore];
    contactStore = v6->_contactStore;
    v6->_contactStore = getContactStore;

    mEMORY[0x1E69A8070]5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isAutomaticIncomingTranslationEnabled = [mEMORY[0x1E69A8070]5 isAutomaticIncomingTranslationEnabled];

    if (isAutomaticIncomingTranslationEnabled)
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (!isModernFilteringEnabled)
  {
    return self->_filterMode;
  }

  return [(CKConversationListCollectionViewController *)self activePrimaryFilterMode];
}

- (BOOL)shouldShowToolbar
{
  if (CKIsRunningInMacCatalyst())
  {
    LOBYTE(editingMode) = 0;
  }

  else if ([(CKConversationListCollectionViewController *)self editingMode])
  {
    editingMode = [(CKConversationListCollectionViewController *)self editingMode];
    if (editingMode != 1)
    {
      LOBYTE(editingMode) = [(CKConversationListCollectionViewController *)self filterMode]== 9;
    }
  }

  else
  {
    LOBYTE(editingMode) = 1;
  }

  return editingMode;
}

- (void)updateRefreshControlVisibility
{
  if (-[CKConversationListCollectionViewController filterMode](self, "filterMode") == 7 || ([MEMORY[0x1E69A5B00] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isSatelliteConnectionActive"), v3, (v4 & 1) == 0))
  {
LABEL_5:

    [(CKConversationListCollectionViewController *)self _removeRefreshControl];
    return;
  }

  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  if ([mEMORY[0x1E69A5B00] isStewieActive])
  {
    mEMORY[0x1E69A5B00]2 = [MEMORY[0x1E69A5B00] sharedInstance];
    isMessagingActiveOverSatellite = [mEMORY[0x1E69A5B00]2 isMessagingActiveOverSatellite];

    if ((isMessagingActiveOverSatellite & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  collectionViewRefreshControl = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];

  if (!collectionViewRefreshControl)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCE58]);
    [(CKConversationListCollectionViewController *)self setCollectionViewRefreshControl:v9];
  }

  collectionViewRefreshControl2 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
  [collectionViewRefreshControl2 addTarget:self action:sel__didPullToRefresh_ forControlEvents:4096];

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  collectionViewRefreshControl3 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
  [collectionView setRefreshControl:collectionViewRefreshControl3];

  collectionViewRefreshControl4 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
  [collectionViewRefreshControl4 beginRefreshing];

  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  [navigationController _scrollToRevealNavigationBarPart:8 animated:1];

  [(CKConversationListCollectionViewController *)self _startRefreshControlTimer];
}

- (void)_removeRefreshControl
{
  refreshControlTimer = [(CKConversationListCollectionViewController *)self refreshControlTimer];

  if (refreshControlTimer)
  {
    refreshControlTimer2 = [(CKConversationListCollectionViewController *)self refreshControlTimer];
    [refreshControlTimer2 invalidate];

    [(CKConversationListCollectionViewController *)self setRefreshControlTimer:0];
  }

  collectionViewRefreshControl = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];

  if (collectionViewRefreshControl)
  {
    collectionViewRefreshControl2 = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
    [collectionViewRefreshControl2 endRefreshing];

    [(CKConversationListCollectionViewController *)self setCollectionViewRefreshControl:0];
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView setRefreshControl:0];
  }
}

- (void)updateConversationListForFilterModeChanged
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"filterModeChanged"];
}

- (void)updateConversationListFilterButton
{
  selfCopy = self;
  CKConversationListCollectionViewController.updateConversationListFilterButton()();
}

- (void)updateConversationListTitle
{
  selfCopy = self;
  CKConversationListCollectionViewController.updateConversationListTitle()();
}

- (void)updateSharedProfileNavigationBarPaletteVisibility
{
  selfCopy = self;
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
  conversationListCollectionViewControllerLogHandle = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  spid = os_signpost_id_generate(conversationListCollectionViewControllerLogHandle);

  conversationListCollectionViewControllerLogHandle2 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v5 = conversationListCollectionViewControllerLogHandle2;
  v6 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(conversationListCollectionViewControllerLogHandle2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "generateSnapshot", "", buf, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v7 appendSectionsWithIdentifiers:&unk_1F04E6A38];
  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  shouldDisplayFocusFilterBanner = [mEMORY[0x1E69A8088] shouldDisplayFocusFilterBanner];

  filterMode = [(CKConversationListCollectionViewController *)self filterMode];
  if (filterMode == 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = shouldDisplayFocusFilterBanner;
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

  pinnedConversations = [(CKConversationListCollectionViewController *)self pinnedConversations];
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(pinnedConversations, "count")}];
  if (-[CKConversationListCollectionViewController shouldShowPinnedConversations](self, "shouldShowPinnedConversations") && [pinnedConversations count])
  {
    v18 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:pinnedConversations inSection:2];
    [v7 appendItemsWithIdentifiers:v18];
    [v17 addObjectsFromArray:pinnedConversations];
  }

  [v7 appendSectionsWithIdentifiers:&unk_1F04E6A98];
  if ([(CKConversationListCollectionViewController *)self shouldShowTipKitContent])
  {
    tipManager = [(CKConversationListCollectionViewController *)self tipManager];
    presentedTip = [tipManager presentedTip];

    if ((presentedTip - 1) <= 4)
    {
      reuseIdentifier = [(__objc2_class *)*(&off_1E72F2FF8)[presentedTip - 1] reuseIdentifier];
      v22 = reuseIdentifier;
      if (reuseIdentifier)
      {
        v44 = reuseIdentifier;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
        [v7 appendItemsWithIdentifiers:v23];
      }
    }
  }

  [v7 appendSectionsWithIdentifiers:&unk_1F04E6AB0];
  shouldShowPendingCell = [(CKConversationListCollectionViewController *)self shouldShowPendingCell];
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v43 = shouldShowPendingCell;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "snapshot contains new message identifier: %{BOOL}d", buf, 8u);
    }
  }

  if (shouldShowPendingCell)
  {
    v26 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
    v41 = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v7 appendItemsWithIdentifiers:v27];
  }

  [v7 appendSectionsWithIdentifiers:&unk_1F04E6AC8];
  if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
  {
    recommendedPinningConversations = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
    v29 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:recommendedPinningConversations inSection:5];
    if (![(CKConversationListCollectionViewController *)self isCurrentlyAnimatingPinningOnboardingSuggestions])
    {
      v30 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v17 inSection:5];
      v31 = [v29 arrayByExcludingObjectsInArray:v30];

      v29 = v31;
    }

    [v7 appendItemsWithIdentifiers:v29];
    [v17 addObjectsFromArray:recommendedPinningConversations];
  }

  if (filterMode == 7)
  {
    [v7 appendSectionsWithIdentifiers:&unk_1F04E6AE0];
    [(CKConversationListCollectionViewController *)self _appendRecentlyDeletedIdentifersToSnapshot:v7];
  }

  else
  {
    activeConversations = [(CKConversationListCollectionViewController *)self activeConversations];
    v33 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:activeConversations inSection:5];
    if ([v33 count])
    {
      v34 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v17 inSection:5];
      v35 = [v33 arrayByExcludingObjectsInArray:v34];
      [v7 appendItemsWithIdentifiers:v35];
    }

    [v7 appendSectionsWithIdentifiers:&unk_1F04E6AE0];
  }

  conversationListCollectionViewControllerLogHandle3 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v37 = conversationListCollectionViewControllerLogHandle3;
  if (v6 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(conversationListCollectionViewControllerLogHandle3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v37, OS_SIGNPOST_INTERVAL_END, spida, "generateSnapshot", "", buf, 2u);
  }

  return v7;
}

- (void)applyDefaultFilterMode
{
  selfCopy = self;
  CKConversationListCollectionViewController.applyDefaultFilterMode()();
}

- (CKConversationListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_freezeConversations
{
  pinnedConversations = [(CKConversationListCollectionViewController *)self pinnedConversations];
  if (!pinnedConversations)
  {
    pinnedConversations = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  v5 = pinnedConversations;
  [(CKConversationListCollectionViewController *)self setFrozenPinnedConversations:pinnedConversations];
  activeConversations = [(CKConversationListCollectionViewController *)self activeConversations];
  [(CKConversationListCollectionViewController *)self setFrozenConversations:activeConversations];
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

- (void)addFilterMode:(unint64_t)mode
{
  selfCopy = self;
  CKConversationListCollectionViewController.addFilterMode(_:)(mode);
}

- (unint64_t)activePrimaryFilterMode
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = CKConversationListCollectionViewController.shouldShowPinnedConversations()();

  return v3;
}

- (void)registerForFocusStateChanges
{
  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  [mEMORY[0x1E69A8088] addDelegate:self];
  [mEMORY[0x1E69A8088] updateFocusStateForCurrentFocusFilterActionAsync];
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
  presentedTip = [(CKConversationListTipManager *)self->_tipManager presentedTip];
  if (presentedTip)
  {
    if ([(CKConversationListCollectionViewController *)self editingMode])
    {
LABEL_3:
      LOBYTE(presentedTip) = 0;
      return presentedTip;
    }

    if ([(CKConversationListTipManager *)self->_tipManager presentedTip]!= 2)
    {
LABEL_9:
      LOBYTE(presentedTip) = 1;
      return presentedTip;
    }

    LODWORD(presentedTip) = [(CKConversationListCollectionViewController *)self shouldShowPinnedConversations];
    if (presentedTip)
    {
      LODWORD(presentedTip) = [(CKConversationListCollectionViewController *)self canShowSuggestedPinningOnboardingCell];
      if (presentedTip)
      {
        recommendedPinningConversations = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
        v5 = [recommendedPinningConversations count];

        if (v5 < 3 || [(CKConversationListCollectionViewController *)self numberOfPinnedConversations]> 0)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  return presentedTip;
}

- (BOOL)shouldShowPendingCell
{
  selfCopy = self;
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
    hasActivePinnedConversationDropSession = [(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession];
    editButtonItem = self->_editButtonItem;
    if (!hasActivePinnedConversationDropSession)
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
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView setAllowsSelectionDuringEditing:1];

    collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView2 setAllowsMultipleSelectionDuringEditing:1];
  }

  v5 = CKIsRunningInMacCatalyst() != 0;
  collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView3 setAllowsMultipleSelection:v5];

  [(CKConversationListCollectionViewController *)self setDefinesPresentationContext:1];
  mEMORY[0x1E69A5B18] = [MEMORY[0x1E69A5B18] sharedInstance];
  [mEMORY[0x1E69A5B18] setProgressPollingInterval:60.0];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      mEMORY[0x1E69A5B18]2 = [MEMORY[0x1E69A5B18] sharedInstance];
      [mEMORY[0x1E69A5B18]2 progressPollingInterval];
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMessagesInICloudNewUIEnabled = [mEMORY[0x1E69A8070] isMessagesInICloudNewUIEnabled];

  if (isMessagesInICloudNewUIEnabled)
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
    newComposeImage = [v4 newComposeImage];

    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:newComposeImage style:0 target:self action:sel_composeButtonClicked_];
    v7 = self->_composeButtonItem;
    self->_composeButtonItem = v6;

    [(UIBarButtonItem *)self->_composeButtonItem setAccessibilityIdentifier:@"composeButton"];
    if (CKIsRunningInMacCatalyst())
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UIBarButtonItem *)self->_composeButtonItem setTintColor:labelColor];
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

  mEMORY[0x1E69A5B18] = [MEMORY[0x1E69A5B18] sharedInstance];
  [mEMORY[0x1E69A5B18] fetchSyncState];
}

- (void)_updateToolbarItems
{
  if ([(CKConversationListCollectionViewController *)self shouldShowToolbar])
  {
    _makeToolbarItemsForCurrentState = [(CKConversationListCollectionViewController *)self _makeToolbarItemsForCurrentState];
    [(CKConversationListCollectionViewController *)self setToolbarItems:_makeToolbarItemsForCurrentState animated:1];
    v4 = [_makeToolbarItemsForCurrentState count];
    v5 = v4 != 0;
    v6 = v4 == 0;
    navigationController = [(CKConversationListCollectionViewController *)self navigationController];
    [navigationController setToolbarHidden:v6 animated:1];
  }

  else
  {
    [(CKConversationListCollectionViewController *)self setToolbarItems:MEMORY[0x1E695E0F0]];
    _makeToolbarItemsForCurrentState = [(CKConversationListCollectionViewController *)self navigationController];
    [_makeToolbarItemsForCurrentState setToolbarHidden:1 animated:1];
    v5 = 0;
  }

  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  [navigationItem setSearchBarPlacementAllowsToolbarIntegration:v5];

  [(CKConversationListCollectionViewController *)self updateSyncProgressIfNeeded];
}

- (unint64_t)_numberOfSelectedConversations
{
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v4 = [indexPathsForSelectedItems count];
  return v4;
}

- (BOOL)_hidesBackButton
{
  if ([(CKConversationListCollectionViewController *)self _shouldShowInboxView])
  {
    editingMode = [(CKConversationListCollectionViewController *)self editingMode];
    if (editingMode)
    {
      LOBYTE(editingMode) = [(CKConversationListCollectionViewController *)self filterMode]!= 7;
    }
  }

  else
  {
    LOBYTE(editingMode) = 1;
  }

  return editingMode;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = +[CKUIBehavior sharedBehaviors];
  theme = [v2 theme];
  statusBarStyle = [theme statusBarStyle];

  return statusBarStyle;
}

- (void)updateNavigationItems
{
  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  if (!CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests())
  {
    [(CKConversationListCollectionViewController *)self _configureNavbarButtonsForNavigationItem:navigationItem];
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
  selfCopy = self;
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
  conversationLayout = [(CKConversationListCollectionViewController *)self conversationLayout];
  [conversationLayout updatePinnedConversationViewLayoutStyle];

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v5 = [(CKConversationListCollectionViewController *)self dataSourceWithCollectionView:collectionView];
  [(CKConversationListCollectionViewController *)self setDataSource:v5];

  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView2 setDataSource:dataSource];

  collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView3 setAutoresizingMask:18];

  collectionView4 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView4 setDelegate:self];

  collectionView5 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView5 setDragInteractionEnabled:1];

  collectionView6 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView6 setDragDelegate:self];

  collectionView7 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView7 setDropDelegate:self];

  collectionView8 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView8 setAlwaysBounceVertical:1];

  collectionView9 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView9 setPreservesSuperviewLayoutMargins:1];

  collectionView10 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView10 setAllowsFocus:0];

  v16 = +[CKUIBehavior sharedBehaviors];
  theme = [v16 theme];
  scrollIndicatorStyle = [theme scrollIndicatorStyle];
  collectionView11 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView11 setIndicatorStyle:scrollIndicatorStyle];

  collectionView12 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView12 setShowsHorizontalScrollIndicator:0];

  v21 = +[CKUIBehavior sharedBehaviors];
  LODWORD(scrollIndicatorStyle) = [v21 darkUIEnabled];
  collectionView13 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView13 setShowsVerticalScrollIndicator:scrollIndicatorStyle ^ 1];

  collectionView14 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView14 setAccessibilityIdentifier:@"ConversationList"];

  collectionView15 = [(CKConversationListCollectionViewController *)self collectionView];
  LOBYTE(collectionView13) = objc_opt_respondsToSelector();

  if (collectionView13)
  {
    collectionView16 = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView16 _setDelaysUserInitiatedItemSelection:1];
  }

  v26 = objc_alloc_init(CKConversationListCollectionViewDragFeedbackGenerator);
  collectionView17 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView17 _setReorderFeedbackGenerator:v26];

  collectionView18 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView18 _setPreferredDragDestinationVisualStyle:1];

  collectionView19 = [(CKConversationListCollectionViewController *)self collectionView];
  v30 = objc_opt_class();
  v31 = +[CKFocusFilterBannerCollectionViewCell reuseIdentifier];
  [collectionView19 registerClass:v30 forCellWithReuseIdentifier:v31];

  collectionView20 = [(CKConversationListCollectionViewController *)self collectionView];
  v33 = objc_opt_class();
  v34 = +[CKFocusFilterBannerCollapsedCollectionViewCell reuseIdentifier];
  [collectionView20 registerClass:v33 forCellWithReuseIdentifier:v34];

  collectionView21 = [(CKConversationListCollectionViewController *)self collectionView];
  v36 = objc_opt_class();
  v37 = +[CKPinningOnboardingTitleCell reuseIdentifier];
  [collectionView21 registerClass:v36 forCellWithReuseIdentifier:v37];

  collectionView22 = [(CKConversationListCollectionViewController *)self collectionView];
  v39 = objc_opt_class();
  v40 = +[CKPinnedConversationCollectionViewCell reuseIdentifier];
  [collectionView22 registerClass:v39 forCellWithReuseIdentifier:v40];

  collectionView23 = [(CKConversationListCollectionViewController *)self collectionView];
  v42 = objc_opt_class();
  v43 = +[CKPinnedConversationDropTargetCollectionViewCell reuseIdentifier];
  [collectionView23 registerClass:v42 forCellWithReuseIdentifier:v43];

  collectionView24 = [(CKConversationListCollectionViewController *)self collectionView];
  v45 = objc_opt_class();
  v46 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
  [collectionView24 registerClass:v45 forCellWithReuseIdentifier:v46];

  collectionView25 = [(CKConversationListCollectionViewController *)self collectionView];
  v48 = objc_opt_class();
  v49 = +[CKConversationListEmbeddedStandardTableViewCell reuseIdentifier];
  [collectionView25 registerClass:v48 forCellWithReuseIdentifier:v49];

  collectionView26 = [(CKConversationListCollectionViewController *)self collectionView];
  v51 = objc_opt_class();
  v52 = +[CKConversationListEmbeddedLargeTextTableViewCell reuseIdentifier];
  [collectionView26 registerClass:v51 forCellWithReuseIdentifier:v52];

  collectionView27 = [(CKConversationListCollectionViewController *)self collectionView];
  v54 = objc_opt_class();
  v55 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
  [collectionView27 registerClass:v54 forCellWithReuseIdentifier:v55];

  collectionView28 = [(CKConversationListCollectionViewController *)self collectionView];
  v57 = objc_opt_class();
  v58 = +[_TtC7ChatKit23CKTipCollectionViewCell reuseIdentifier];
  [collectionView28 registerClass:v57 forCellWithReuseIdentifier:v58];

  collectionView29 = [(CKConversationListCollectionViewController *)self collectionView];
  v60 = objc_opt_class();
  v61 = +[CKPinnedSectionSeparatorView reuseIdentifier];
  v62 = +[CKPinnedSectionSeparatorView reuseIdentifier];
  [collectionView29 registerClass:v60 forSupplementaryViewOfKind:v61 withReuseIdentifier:v62];

  collectionView30 = [(CKConversationListCollectionViewController *)self collectionView];
  v64 = objc_opt_class();
  v65 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
  v66 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
  [collectionView30 registerClass:v64 forSupplementaryViewOfKind:v65 withReuseIdentifier:v66];

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
        collectionView31 = [(CKConversationListCollectionViewController *)self collectionView];
        [collectionView31 registerClass:objc_opt_class() forCellWithReuseIdentifier:v71];

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
        collectionView32 = [(CKConversationListCollectionViewController *)self collectionView];
        [collectionView32 registerClass:objc_opt_class() forCellWithReuseIdentifier:v77];

        ++v76;
      }

      while (v74 != v76);
      v74 = [v73 countByEnumeratingWithState:&v102 objects:v113 count:16];
    }

    while (v74);
  }

  v79 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v79 theme];

  conversationListBackgroundColor = [theme2 conversationListBackgroundColor];
  if (conversationListBackgroundColor)
  {
  }

  else if (!CKIsRunningInMacCatalyst() || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v84, "macApplicationMetricsGatheringEnabled"), v84, !v85))
  {
    collectionView33 = [(CKConversationListCollectionViewController *)self collectionView];
    conversationListCollectionViewBackgroundColor = [theme2 conversationListCollectionViewBackgroundColor];
    [collectionView33 setBackgroundColor:conversationListCollectionViewBackgroundColor];
    goto LABEL_23;
  }

  collectionView33 = [(CKConversationListCollectionViewController *)self collectionView];
  conversationListCollectionViewBackgroundColor = [theme2 conversationListBackgroundColor];
  [collectionView33 setBackgroundColor:conversationListCollectionViewBackgroundColor];
LABEL_23:

  if (!CKIsRunningInMacCatalyst() || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v86 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend(v86, "macApplicationMetricsGatheringEnabled"), v86, (v87 & 1) == 0))
  {
    collectionView34 = [(CKConversationListCollectionViewController *)self collectionView];
    v89 = objc_alloc(MEMORY[0x1E69DD250]);
    collectionView35 = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView35 bounds];
    v91 = [v89 initWithFrame:?];
    [collectionView34 setBackgroundView:v91];
  }

  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [navigationBar setBackgroundColor:clearColor];

  if (!self->_tipManager)
  {
    v95 = [[CKConversationListTipManager alloc] initWithConversationListController:self];
    tipManager = self->_tipManager;
    self->_tipManager = v95;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

  if (isConversationListRefreshEnabled)
  {
    [(CKConversationListCollectionViewController *)self updateConversationListTitle];
  }

  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"viewLoaded"];

  if (IMOSLoggingEnabled())
  {
    v100 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      collectionView36 = [(CKConversationListCollectionViewController *)self collectionView];
      *buf = 138412290;
      v112 = collectionView36;
      _os_log_impl(&dword_19020E000, v100, OS_LOG_TYPE_INFO, "loadView, collectionView initialized as:%@", buf, 0xCu);
    }
  }
}

- (void)parentSplitViewControllerDidUpdateCollapsedState
{
  v9 = *MEMORY[0x1E69E9840];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  isCollapsed = [delegate isCollapsed];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (isCollapsed)
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
  _numberOfSelectedConversations = [(CKConversationListCollectionViewController *)self _numberOfSelectedConversations];
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];
  numberOfItems = [snapshot numberOfItems];

  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    v7 = [(CKConversationListCollectionViewController *)self toolbarItemsForRecentlyDeletedFilterHasConversations:numberOfItems > 0 hasSelectedConversations:_numberOfSelectedConversations != 0];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    v7 = [(CKConversationListCollectionViewController *)self toolbarItemsForJunkFilterHasConversations:numberOfItems > 0 hasSelectedConversations:_numberOfSelectedConversations != 0];
    goto LABEL_5;
  }

  if ([(CKConversationListCollectionViewController *)self editingMode])
  {
    if ([(CKConversationListCollectionViewController *)self isEditing]&& [(CKConversationListCollectionViewController *)self filterMode]!= 9)
    {
      toggleReadButtonItem = [(CKConversationListCollectionViewController *)self toggleReadButtonItem];
      v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      if (_numberOfSelectedConversations)
      {
        _numberOfSelectedConversations = [(CKConversationListCollectionViewController *)self _hasStewieConversationSelected]^ 1;
      }

      moveSelectedToRecentlyDeletedButtonItem = [(CKConversationListCollectionViewController *)self moveSelectedToRecentlyDeletedButtonItem];
      [moveSelectedToRecentlyDeletedButtonItem setEnabled:_numberOfSelectedConversations];
      v23[0] = toggleReadButtonItem;
      v23[1] = v21;
      v23[2] = moveSelectedToRecentlyDeletedButtonItem;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    splitViewController = [(CKConversationListCollectionViewController *)self splitViewController];
    isCollapsed = [splitViewController isCollapsed];

    traitCollection = [(CKConversationListCollectionViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    array = [MEMORY[0x1E695DF70] array];
    if (!userInterfaceIdiom && isCollapsed)
    {
      searchController = [(CKConversationListCollectionViewController *)self searchController];
      _inlineToolbarSearchBarItem = [searchController _inlineToolbarSearchBarItem];
      [array addObject:_inlineToolbarSearchBarItem];
    }

    if (isCollapsed)
    {
      flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      composeButtonItem = [(CKConversationListCollectionViewController *)self composeButtonItem];
      v24[0] = flexibleSpaceItem;
      v24[1] = composeButtonItem;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      [array addObjectsFromArray:v19];
    }

    v8 = [array copy];
  }

LABEL_6:

  return v8;
}

- (BOOL)_isEditButtonPlacedOnLeft
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    conversationListPrefersEditButtonOnTrailingEdge = [v5 conversationListPrefersEditButtonOnTrailingEdge];
  }

  else
  {
    conversationListPrefersEditButtonOnTrailingEdge = [(CKConversationListCollectionViewController *)self _shouldShowInboxView];
  }

  return conversationListPrefersEditButtonOnTrailingEdge ^ 1;
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
      searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
      v6 = CKIsRunningInMacCatalyst();
      v7 = 0x1E69DCF10;
      if (v6)
      {
        v7 = off_1E72E52F8;
      }

      v8 = [objc_alloc(*v7) initWithSearchResultsController:searchResultsController];
      [(UISearchController *)v8 setSearchResultsUpdater:searchResultsController];
      [(UISearchController *)v8 _setClearAsCancelButtonVisibilityWhenEmpty:1];
      [(UISearchController *)v8 setDelegate:self];
      searchBar = [(UISearchController *)v8 searchBar];
      v10 = +[CKUIBehavior sharedBehaviors];
      theme = [v10 theme];
      [searchBar setBarStyle:{objc_msgSend(theme, "defaultBarStyle")}];

      searchBar2 = [(UISearchController *)v8 searchBar];
      v13 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v13 theme];
      [searchBar2 setKeyboardAppearance:{objc_msgSend(theme2, "keyboardAppearance")}];

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
  junkCellLayout = [(CKConversationListCollectionViewController *)self junkCellLayout];
  [junkCellLayout invalidate];

  _cellsShouldShowChevron = [(CKConversationListCollectionViewController *)self _cellsShouldShowChevron];
  junkCellLayout2 = [(CKConversationListCollectionViewController *)self junkCellLayout];
  [junkCellLayout2 setShouldShowChevron:_cellsShouldShowChevron];

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView bounds];
  Width = CGRectGetWidth(v19);
  junkCellLayout3 = [(CKConversationListCollectionViewController *)self junkCellLayout];
  [junkCellLayout3 setTableViewWidth:Width];

  standardCellLayout = [(CKConversationListCollectionViewController *)self standardCellLayout];
  [standardCellLayout invalidate];

  _cellsShouldShowChevron2 = [(CKConversationListCollectionViewController *)self _cellsShouldShowChevron];
  standardCellLayout2 = [(CKConversationListCollectionViewController *)self standardCellLayout];
  [standardCellLayout2 setShouldShowChevron:_cellsShouldShowChevron2];

  collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView2 bounds];
  v13 = CGRectGetWidth(v20);
  standardCellLayout3 = [(CKConversationListCollectionViewController *)self standardCellLayout];
  [standardCellLayout3 setTableViewWidth:v13];

  conversationLayout = [(CKConversationListCollectionViewController *)self conversationLayout];
  [conversationLayout updatePinnedConversationViewLayoutStyle];

  [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:0];
  collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView3 collectionViewLayout];
  [collectionViewLayout invalidateLayout];
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
  isCollapsed = [WeakRetained isCollapsed];

  return isCollapsed;
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
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"viewWillAppear"];

  updater2 = [(CKConversationListCollectionViewController *)self updater];
  [updater2 endAllHoldsOnUpdatesForReason:@"viewVisiblity" updateTriggeredIfNotHeldShouldBeDeferred:0];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      updater3 = [(CKConversationListCollectionViewController *)self updater];
      v7 = 138412290;
      v8 = updater3;
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
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  [conversationList updateConversationListsAndSortIfEnabled];
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
    delegate = [(CKConversationListCollectionViewController *)self delegate];
    isShowingComposeChatController = [delegate isShowingComposeChatController];

    if (isShowingComposeChatController)
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
      delegate2 = [(CKConversationListCollectionViewController *)self delegate];
      currentlyShownConversation = [delegate2 currentlyShownConversation];

      if (currentlyShownConversation)
      {
        if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
        {
          isPinned = [currentlyShownConversation isPinned];
          if (isPinned)
          {
            v9 = 2;
          }

          else
          {
            v9 = 5;
          }

          if (isPinned)
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

        delegate5 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:currentlyShownConversation inSection:v9];
        if (delegate5)
        {
          dataSource = [(CKConversationListCollectionViewController *)self dataSource];
          delegate4 = [dataSource indexPathForItemIdentifier:delegate5];

          if (delegate4)
          {
            collectionView = [(CKConversationListCollectionViewController *)self collectionView];
            indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

            LODWORD(collectionView) = [indexPathsForSelectedItems containsObject:delegate4];
            v19 = IMOSLoggingEnabled();
            if (collectionView)
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
                  v31 = delegate4;
                  _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "multi-select: selecting item at target indexPath: %@", &v30, 0xCu);
                }
              }

              collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
              [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:collectionView2 animated:0];

              collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
              [collectionView3 selectItemAtIndexPath:delegate4 animated:0 scrollPosition:0];

              [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:delegate5];
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
                v33 = currentlyShownConversation;
                v34 = 2112;
                v35 = delegate5;
                _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | multi-select: failed to find indexPath in section: %@ for currentConversation: %@, itemIdentifier: %@, trying opposing section lookup", &v30, 0x20u);
              }
            }

            indexPathsForSelectedItems = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:currentlyShownConversation inSection:v10];
            dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
            delegate4 = [dataSource2 indexPathForItemIdentifier:indexPathsForSelectedItems];

            if (!delegate4)
            {
              if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  v30 = 138412546;
                  v31 = currentlyShownConversation;
                  v32 = 2112;
                  v33 = delegate5;
                  _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | multi-select: failed to find indexPath for currentConversation: %@, itemIdentifier: %@, showing selection view controller to gracefully compensate.", &v30, 0x16u);
                }
              }

              delegate3 = [(CKConversationListCollectionViewController *)self delegate];
              [delegate3 conversationListFailedToSelectShownConversation];
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
              v31 = currentlyShownConversation;
              _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | multi-select: failed to find itemIdentifier for currentConversation: %@, showing selection view controller to gracefully compensate.", &v30, 0xCu);
            }
          }

          delegate4 = [(CKConversationListCollectionViewController *)self delegate];
          [delegate4 conversationListFailedToSelectShownConversation];
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            collectionView4 = [(CKConversationListCollectionViewController *)self collectionView];
            indexPathsForSelectedItems2 = [collectionView4 indexPathsForSelectedItems];
            v30 = 138412290;
            v31 = indexPathsForSelectedItems2;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "multi-select: No currently shown conversation. Updating selected index path delegate. SelectedIndexPaths: %@", &v30, 0xCu);
          }
        }

        [(CKConversationListCollectionViewController *)self _updatedSelectedIndexPathCount];
        delegate5 = [(CKConversationListCollectionViewController *)self delegate];
        [delegate5 conversationListFailedToSelectShownConversation];
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
        searchController = [(CKConversationListCollectionViewController *)self searchController];
        isActive = [searchController isActive];

        if (isActive)
        {
          collectionView = [(CKConversationListCollectionViewController *)self collectionView];
          [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:collectionView animated:0];

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
  alwaysShowSelectionInConversationList = [v3 alwaysShowSelectionInConversationList];

  if (alwaysShowSelectionInConversationList)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    splitViewController = [(CKConversationListCollectionViewController *)self splitViewController];
    if (splitViewController)
    {
      splitViewController2 = [(CKConversationListCollectionViewController *)self splitViewController];
      v5 = [splitViewController2 isCollapsed] ^ 1;
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
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v4 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
  v7 = [dataSource indexPathForItemIdentifier:v4];

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:v7];

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
    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    isUndocked = [mEMORY[0x1E69DCD68] isUndocked];
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView contentInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    delegate = [(CKConversationListCollectionViewController *)self delegate];
    isCollapsed = [delegate isCollapsed];

    v14 = 0.0;
    if ((isCollapsed & 1) == 0 && (isUndocked & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      chatController = [WeakRetained chatController];

      [chatController accessoryViewHeight];
      v14 = -v17;
    }

    v18 = +[CKUIBehavior sharedBehaviors];
    v19 = [v18 conversationListShouldManuallyApplyBottomSafeAreaInsetForIsRecentlyDeletedModal:{-[CKConversationListCollectionViewController isRecentlyDeletedModal](self, "isRecentlyDeletedModal")}];

    if (v19)
    {
      view = [(CKConversationListCollectionViewController *)self view];
      [view safeAreaInsets];
      v14 = v21;
    }

    [(CKConversationListCollectionViewController *)self bannerHeight];
    v23 = v22;
    syncStatusCoordinator = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    if ([syncStatusCoordinator viewNeedsContentInsetAccommodation])
    {
      syncStatusCoordinator2 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
      isSyncViewCurrentlyVisible = [syncStatusCoordinator2 isSyncViewCurrentlyVisible];

      v27 = v14;
      if (isSyncViewCurrentlyVisible)
      {
        view2 = [(CKConversationListCollectionViewController *)self view];
        [view2 bounds];
        v30 = v29;
        v31 = +[CKUIBehavior sharedBehaviors];
        [v31 syncBarFooterHeight];
        v33 = v32;

        syncStatusCoordinator3 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
        [syncStatusCoordinator3 heightForSyncViewForFittingSize:{v30, v33}];
        v36 = v35;

        v27 = v14 + v36;
      }
    }

    else
    {

      v27 = v14;
    }

    collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView2 setContentInset:{v23, v9, v27, v11}];

    collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView3 setScrollIndicatorInsets:{v7, v9, v14, v11}];
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
  view = [(CKConversationListCollectionViewController *)self view];
  _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

  v5 = +[CKUIBehavior sharedBehaviors];
  view2 = [(CKConversationListCollectionViewController *)self view];
  [view2 layoutMargins];
  [v5 contentInsetsForConversationListSearchBarForLayoutMargins:_shouldReverseLayoutDirection isRTL:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = [v15 contentRectEdgeForConversationListSearchBarInsetsWithRTL:_shouldReverseLayoutDirection];

  searchController = [(CKConversationListCollectionViewController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar _setOverrideContentInsets:v16 forRectEdges:{v8, v10, v12, v14}];
}

- (BOOL)_shouldAllowLargeTitles
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isModernFilteringEnabled])
  {
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConversationListRefreshEnabled = [mEMORY[0x1E69A8070]2 isConversationListRefreshEnabled];

    if (!isConversationListRefreshEnabled)
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
  converastionListAlwaysSupportsLargeTitles = [v6 converastionListAlwaysSupportsLargeTitles];

  if ((converastionListAlwaysSupportsLargeTitles & 1) == 0)
  {
    delegate = [(CKConversationListCollectionViewController *)self delegate];
    isCollapsed = [delegate isCollapsed];

    if ((isCollapsed & 1) == 0)
    {
      mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isConversationListRefreshEnabled2 = [mEMORY[0x1E69A8070]3 isConversationListRefreshEnabled];

      if (isConversationListRefreshEnabled2)
      {
        goto LABEL_13;
      }
    }

    if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
    {
      activeFilterModes = [(CKConversationListCollectionViewController *)self activeFilterModes];
      v14 = [activeFilterModes count];

      if (v14 <= 1 && ![(CKConversationListCollectionViewController *)self numberOfPinnedConversations]&& ![(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
      {
        v8 = ![(CKConversationListCollectionViewController *)self isShowingPinningOnboarding];
        return v8 & 1;
      }

      goto LABEL_13;
    }

    mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([mEMORY[0x1E69A8070]4 isModernFilteringEnabled])
    {
      mEMORY[0x1E69A8070]5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isConversationListRefreshEnabled3 = [mEMORY[0x1E69A8070]5 isConversationListRefreshEnabled];

      v8 = isConversationListRefreshEnabled3 ^ 1;
      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

- (int64_t)numberOfPinnedConversations
{
  pinnedConversations = [(CKConversationListCollectionViewController *)self pinnedConversations];
  v3 = [pinnedConversations count];

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
  bannerTopConstraint = [(CKConversationListCollectionViewController *)self bannerTopConstraint];
  if (bannerTopConstraint)
  {
    v15 = bannerTopConstraint;
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
    largeTitleDisplayMode = [navigationItem largeTitleDisplayMode];

    [collectionView contentOffset];
    v8 = v7;
    [collectionView adjustedContentInset];
    v10 = v8 + v9;
    v11 = v10 < 0.0 && largeTitleDisplayMode == 0;
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

    bannerTopConstraint = v15;
  }
}

- (void)_updateScrollEdgeAppearanceProgress
{
  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  [navigationItem _manualScrollEdgeAppearanceProgress];
  v4 = v3;
  presentedBanner = [(CKConversationListCollectionViewController *)self presentedBanner];
  [presentedBanner setScrollEdgeAppearanceProgress:v4];
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = sub_190D53470();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D53460();
  selfCopy = self;
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
    view = [(CKConversationListCollectionViewController *)self view];
    [view frame];
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
  cellLayout = [(CKConversationListCollectionViewController *)self cellLayout];
  [cellLayout tableViewWidth];
  v5 = v4;

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView bounds];
  v8 = v7;

  cellLayout2 = [(CKConversationListCollectionViewController *)self cellLayout];
  shouldShowChevron = [cellLayout2 shouldShowChevron];
  _cellsShouldShowChevron = [(CKConversationListCollectionViewController *)self _cellsShouldShowChevron];

  if (!self->_isInitialAppearance && (vabdd_f64(v5, v8) >= 0.1 || shouldShowChevron != _cellsShouldShowChevron))
  {
    [(CKConversationListCollectionViewController *)self invalidateCellLayout];
  }

  if (CKIsRunningInMacCatalyst())
  {
    view = [(CKConversationListCollectionViewController *)self view];
    [view frame];
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
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView bounds];
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
  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  isStewieActive = [mEMORY[0x1E69A5B00] isStewieActive];

  if ((isStewieActive & 1) == 0)
  {
    mEMORY[0x1E69A5B00]2 = [MEMORY[0x1E69A5B00] sharedInstance];
    [mEMORY[0x1E69A5B00]2 presentSatelliteConnectionBannerIfNecessaryWithChat:0 withReason:@"AppResume" ignoreTimerLimit:0];
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
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"focusStateChanged"];
}

- (void)updateBannerVisualEffectGroup
{
  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  _backdropViewLayerGroupName = [navigationBar _backdropViewLayerGroupName];

  presentedBanner = [(CKConversationListCollectionViewController *)self presentedBanner];
  [presentedBanner setScrollEdgeAppearanceBackdropGroupName:_backdropViewLayerGroupName];
}

- (void)setAppIntentsDataSource
{
  selfCopy = self;
  collectionView = [(CKConversationListCollectionViewController *)selfCopy collectionView];
  if (collectionView)
  {
    v3 = collectionView;
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
    traitCollection = [(CKConversationListCollectionViewController *)self traitCollection];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __72__CKConversationListCollectionViewController_viewDidAppearDeferredSetup__block_invoke;
    v26[3] = &unk_1E72EBA18;
    v26[4] = self;
    CKPrewarmPostLaunch(0.75, traitCollection, v26);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = mEMORY[0x1E69DC668];
  if (!__CurrentTestName)
  {
LABEL_6:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__CKConversationListCollectionViewController_viewDidAppearDeferredSetup__block_invoke_2;
    block[3] = &unk_1E72EBA18;
    v25 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    _launchTestName = v25;
    goto LABEL_7;
  }

  _launchTestName = [mEMORY[0x1E69DC668] _launchTestName];
  if ([v5 isRunningTest:_launchTestName])
  {
    shouldRecordExtendedLaunchTime = [v5 shouldRecordExtendedLaunchTime];

    if (!shouldRecordExtendedLaunchTime)
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
  conversationList = [v11 conversationList];
  conversations = [conversationList conversations];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __72__CKConversationListCollectionViewController_viewDidAppearDeferredSetup__block_invoke_3;
  v21 = &unk_1E72EC460;
  objc_copyWeak(&v22, &location);
  [v10 preloadAllDraftsInConversations:conversations completion:&v18];

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
  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  view = [navigationController view];
  v5 = [view snapshotViewAfterScreenUpdates:0];

  navigationController2 = [(CKConversationListCollectionViewController *)self navigationController];
  view2 = [navigationController2 view];
  [view2 addSubview:v5];

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
  view = [(CKConversationListCollectionViewController *)self view];
  v4 = [view snapshotViewAfterScreenUpdates:0];

  view2 = [(CKConversationListCollectionViewController *)self view];
  [view2 addSubview:v4];

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
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  isCollapsed = [delegate isCollapsed];

  if ((isCollapsed & 1) == 0)
  {
    delegate2 = [(CKConversationListCollectionViewController *)self delegate];
    [delegate2 showConversation:0 animate:0];
  }

  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:0];

  navigationController2 = [(CKConversationListCollectionViewController *)self navigationController];
  view2 = [navigationController2 view];
  v10 = [view2 snapshotViewAfterScreenUpdates:0];

  view3 = [(CKConversationListCollectionViewController *)self view];
  [view3 addSubview:v10];

  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  [navigationItem setSearchController:0];

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
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];
  v5 = [snapshot itemIdentifiersInSectionWithIdentifier:&unk_1F04E7AE8];
  firstObject = [v5 firstObject];

  dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [dataSource2 indexPathForItemIdentifier:firstObject];

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:v8];

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

- (void)animateInCollectionView:(id)view aboveBackgroundSnapshotView:(id)snapshotView enteringOnboarding:(BOOL)onboarding animationDistance:(double)distance
{
  onboardingCopy = onboarding;
  v96[1] = *MEMORY[0x1E69E9840];
  snapshotViewCopy = snapshotView;
  viewCopy = view;
  layer = [viewCopy layer];
  [layer position];
  v14 = v13;
  v88 = v13;
  v16 = v15;
  v90 = v15;

  v89 = v16 + distance;
  layer2 = [viewCopy layer];
  [layer2 setPosition:{v14, v16 + distance}];

  layer3 = [viewCopy layer];
  [layer3 setOpacity:0.0];

  view = [(CKConversationListCollectionViewController *)self view];
  [view bringSubviewToFront:viewCopy];

  v20 = objc_alloc(MEMORY[0x1E69DD250]);
  [viewCopy origin];
  v22 = v21;
  [viewCopy bounds];
  v24 = v23;
  [viewCopy origin];
  v26 = [v20 initWithFrame:{v22, 0.0, v24, v25}];
  backgroundColor = [viewCopy backgroundColor];
  [v26 setBackgroundColor:backgroundColor];

  layer4 = [v26 layer];
  [layer4 setOpacity:0.0];

  layer5 = [v26 layer];
  [layer5 position];
  v87 = v30;
  v32 = v31;

  v86 = v32 - distance;
  view2 = [(CKConversationListCollectionViewController *)self view];
  [view2 insertSubview:v26 belowSubview:viewCopy];

  v91 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v91 setValue:MEMORY[0x1E695E118] forKeyPath:*MEMORY[0x1E6979B78]];
  v34 = objc_alloc_init(MEMORY[0x1E6979310]);
  view3 = [(CKConversationListCollectionViewController *)self view];
  layer6 = [view3 layer];
  [layer6 bounds];
  [v34 setFrame:?];

  v96[0] = v91;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
  [v34 setFilters:v37];

  view4 = [(CKConversationListCollectionViewController *)self view];
  layer7 = [view4 layer];
  layer8 = [v26 layer];
  [layer7 insertSublayer:v34 below:layer8];

  v41 = CACurrentMediaTime();
  [MEMORY[0x1E6979518] begin];
  v42 = MEMORY[0x1E6979518];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __147__CKConversationListCollectionViewController_Onboarding__animateInCollectionView_aboveBackgroundSnapshotView_enteringOnboarding_animationDistance___block_invoke;
  v92[3] = &unk_1E72EB880;
  v93 = v26;
  v94 = v34;
  v95 = snapshotViewCopy;
  v85 = snapshotViewCopy;
  v43 = v34;
  v44 = v26;
  [v42 setCompletionBlock:v92];
  v45 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"backgroundColor"];
  [v45 setBeginTime:v41];
  backgroundColor2 = [viewCopy backgroundColor];
  v47 = [backgroundColor2 colorWithAlphaComponent:0.0];
  [v45 setFromValue:{objc_msgSend(v47, "CGColor")}];

  backgroundColor3 = [viewCopy backgroundColor];
  v49 = [backgroundColor3 colorWithAlphaComponent:1.0];
  [v45 setToValue:{objc_msgSend(v49, "CGColor")}];

  if (onboardingCopy)
  {
    v50 = 1.255;
  }

  else
  {
    v50 = 0.8;
  }

  if (onboardingCopy)
  {
    v51 = 14.7146;
  }

  else
  {
    v51 = 50.0;
  }

  if (onboardingCopy)
  {
    v52 = 54.1299;
  }

  else
  {
    v52 = 300.0;
  }

  if (onboardingCopy)
  {
    v53 = 0.02;
  }

  else
  {
    v53 = 0.0;
  }

  if (onboardingCopy)
  {
    v54 = 78.8239;
  }

  else
  {
    v54 = 309.319;
  }

  if (onboardingCopy)
  {
    v55 = 17.7566;
  }

  else
  {
    v55 = 35.1749;
  }

  if (onboardingCopy)
  {
    v56 = 1.04;
  }

  else
  {
    v56 = 0.525;
  }

  v57 = 16.788;
  if (onboardingCopy)
  {
    v57 = 15.3252;
  }

  v83 = v57;
  v58 = 70.4594;
  if (onboardingCopy)
  {
    v58 = 58.7152;
  }

  v82 = v58;
  v59 = 1.1;
  if (onboardingCopy)
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
  backgroundColor4 = [viewCopy backgroundColor];
  [v43 setBackgroundColor:{objc_msgSend(backgroundColor4, "CGColor")}];

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
  layer9 = [viewCopy layer];
  [layer9 addAnimation:v63 forKey:@"opacity"];

  layer10 = [v44 layer];
  [layer10 addAnimation:v63 forKey:@"opacity"];

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
  layer11 = [viewCopy layer];
  [layer11 addAnimation:v66 forKey:@"position"];

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
  layer12 = [v44 layer];
  [layer12 addAnimation:v70 forKey:@"position"];

  [MEMORY[0x1E6979518] commit];
  layer13 = [viewCopy layer];
  [layer13 setPosition:{v88, v90}];

  layer14 = [viewCopy layer];

  LODWORD(v77) = 1.0;
  [layer14 setOpacity:v77];

  layer15 = [v44 layer];
  LODWORD(v79) = 1.0;
  [layer15 setOpacity:v79];

  layer16 = [v44 layer];
  [layer16 setPosition:{v87, v86}];

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

- (void)animateOutBackgroundSnapshotView:(id)view
{
  v56[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  layer = [viewCopy layer];
  [layer position];
  v7 = v6;
  v9 = v8;

  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  [viewCopy origin];
  v12 = v11;
  [viewCopy bounds];
  v13 = [v10 initWithFrame:{v12, -150.0}];
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  backgroundColor = [collectionView backgroundColor];
  [v13 setBackgroundColor:backgroundColor];

  layer2 = [v13 layer];
  LODWORD(v17) = 1.0;
  [layer2 setOpacity:v17];

  layer3 = [v13 layer];
  [layer3 position];
  v20 = v19;
  v22 = v21;

  v23 = v22 + 150.0;
  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  view = [navigationController view];
  [view insertSubview:v13 belowSubview:viewCopy];

  v52 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v52 setValue:MEMORY[0x1E695E118] forKeyPath:*MEMORY[0x1E6979B78]];
  v26 = objc_alloc_init(MEMORY[0x1E6979310]);
  layer4 = [viewCopy layer];
  [layer4 bounds];
  [v26 setFrame:?];

  v56[0] = v52;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
  [v26 setFilters:v28];

  layer5 = [viewCopy layer];
  [layer5 addSublayer:v26];

  v30 = CACurrentMediaTime();
  [MEMORY[0x1E6979518] begin];
  v31 = MEMORY[0x1E6979518];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __91__CKConversationListCollectionViewController_Onboarding__animateOutBackgroundSnapshotView___block_invoke;
  v53[3] = &unk_1E72EB8D0;
  v54 = v26;
  v55 = viewCopy;
  v32 = viewCopy;
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
  layer6 = [v32 layer];
  [layer6 addAnimation:v36 forKey:@"opacity"];

  layer7 = [v13 layer];
  [layer7 addAnimation:v36 forKey:@"opacity"];

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
  layer8 = [v32 layer];
  [layer8 addAnimation:v39 forKey:@"position"];

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
  layer9 = [v13 layer];
  [layer9 addAnimation:v43 forKey:@"position"];

  [MEMORY[0x1E6979518] commit];
  layer10 = [v32 layer];
  [layer10 setPosition:{v7, v9 + 150.0}];

  layer11 = [v32 layer];
  [layer11 setOpacity:0.0];

  layer12 = [v13 layer];
  [layer12 setOpacity:0.0];

  layer13 = [v13 layer];
  [layer13 setPosition:{v20, v23}];
}

uint64_t __91__CKConversationListCollectionViewController_Onboarding__animateOutBackgroundSnapshotView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperlayer];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)pinConversationsWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  recommendedPinningConversations = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
  v6 = [recommendedPinningConversations count];

  if (v6 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  recommendedPinningConversations2 = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
  v9 = [recommendedPinningConversations2 subarrayWithRange:{0, v7}];

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
  v20 = completionCopy;
  v16 = v10;
  v17 = completionCopy;
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0 completion:v18];
}

- (BOOL)shouldAnimatePositionForRecommendedItemIdentifiers:(id)identifiers pinnedItemIdentifiers:(id)itemIdentifiers
{
  identifiersCopy = identifiers;
  itemIdentifiersCopy = itemIdentifiers;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __131__CKConversationListCollectionViewController_Onboarding__shouldAnimatePositionForRecommendedItemIdentifiers_pinnedItemIdentifiers___block_invoke;
  v10[3] = &unk_1E72EFE38;
  v8 = identifiersCopy;
  v11 = v8;
  selfCopy = self;
  v13 = &v14;
  [itemIdentifiersCopy enumerateObjectsUsingBlock:v10];
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
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];
  v5 = [snapshot itemIdentifiersInSectionWithIdentifier:&unk_1F04E7B30];

  dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot2 = [dataSource2 snapshot];
  v8 = [snapshot2 itemIdentifiersInSectionWithIdentifier:&unk_1F04E7B48];

  LOBYTE(snapshot2) = [(CKConversationListCollectionViewController *)self shouldAnimatePositionForRecommendedItemIdentifiers:v8 pinnedItemIdentifiers:v5];
  v9 = CACurrentMediaTime();
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CKConversationListCollectionViewController_Onboarding__animateInPinsToFinalPosition__block_invoke;
  v12[3] = &unk_1E72EFE88;
  v10 = v8;
  v13 = v10;
  selfCopy = self;
  v17 = snapshot2;
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

- (void)removeNewlyPinnedSuggestionCells:(id)cells
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
  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:1];
}

- (void)removeBanner:(id)banner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  [(CKConversationListCollectionViewController *)self bannerHeight];
  v8 = v7;
  bannerTopConstraint = [(CKConversationListCollectionViewController *)self bannerTopConstraint];
  if (animatedCopy)
  {
    view = [(CKConversationListCollectionViewController *)self view];
    [view layoutIfNeeded];
    v11 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__CKConversationListCollectionViewController_Banners__removeBanner_animated___block_invoke;
    v17[3] = &unk_1E72F0338;
    v18 = bannerCopy;
    v22 = v8;
    v19 = bannerTopConstraint;
    v20 = view;
    selfCopy = self;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__CKConversationListCollectionViewController_Banners__removeBanner_animated___block_invoke_2;
    v13[3] = &unk_1E72F0360;
    v14 = v18;
    v15 = v19;
    selfCopy2 = self;
    v12 = view;
    [v11 animateWithDuration:v17 animations:v13 completion:0.3];
  }

  else
  {
    [bannerCopy removeConstraint:bannerTopConstraint];
    [(CKConversationListCollectionViewController *)self setBannerTopConstraint:0];
    [(CKConversationListCollectionViewController *)self setBannerHeight:0.0];
    [(CKConversationListCollectionViewController *)self setPresentedBanner:0];
    [bannerCopy removeFromSuperview];
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

- (void)addBanner:(id)banner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  presentedBanner = [(CKConversationListCollectionViewController *)self presentedBanner];

  if (presentedBanner)
  {
    presentedBanner2 = [(CKConversationListCollectionViewController *)self presentedBanner];
    [(CKConversationListCollectionViewController *)self removeBanner:presentedBanner2 animated:0];
  }

  superview = [bannerCopy superview];

  if (superview)
  {
    [(CKConversationListCollectionViewController *)self removeBanner:bannerCopy animated:0];
  }

  view = [(CKConversationListCollectionViewController *)self view];
  if (view)
  {
    [(CKConversationListCollectionViewController *)self setPresentedBanner:bannerCopy];
    [bannerCopy setTranslatesAutoresizingMaskIntoConstraints:1];
    [view bounds];
    v12 = v11;
    LODWORD(v11) = 1148846080;
    LODWORD(v13) = 1112014848;
    [bannerCopy systemLayoutSizeFittingSize:v12 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v11, v13}];
    v15 = v14;
    [(CKConversationListCollectionViewController *)self setBannerHeight:v14];
    heightAnchor = [bannerCopy heightAnchor];
    [(CKConversationListCollectionViewController *)self bannerHeight];
    v17 = [heightAnchor constraintEqualToConstant:?];
    [v17 setActive:1];

    [bannerCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:bannerCopy];
    leadingAnchor = [bannerCopy leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v20 setActive:1];

    trailingAnchor = [bannerCopy trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v23 setActive:1];

    [(CKConversationListCollectionViewController *)self updateBannerVisualEffectGroup];
    [(CKConversationListCollectionViewController *)self _updateScrollEdgeAppearanceProgress];
    topAnchor = [bannerCopy topAnchor];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    if (animatedCopy)
    {
      v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v15];
      [(CKConversationListCollectionViewController *)self setBannerTopConstraint:v27];

      bannerTopConstraint = [(CKConversationListCollectionViewController *)self bannerTopConstraint];
      [bannerTopConstraint setActive:1];

      [bannerCopy setAlpha:0.0];
      [view layoutIfNeeded];
      v29 = MEMORY[0x1E69DD250];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __74__CKConversationListCollectionViewController_Banners__addBanner_animated___block_invoke;
      v33[3] = &unk_1E72F0388;
      v34 = bannerCopy;
      selfCopy = self;
      v36 = view;
      v37 = v15;
      [v29 animateWithDuration:v33 animations:0.3];
    }

    else
    {
      v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      [(CKConversationListCollectionViewController *)self setBannerTopConstraint:v31];

      bannerTopConstraint2 = [(CKConversationListCollectionViewController *)self bannerTopConstraint];
      [bannerTopConstraint2 setActive:1];

      [(CKConversationListCollectionViewController *)self _updateCollectionViewOffsetAddingBannerViewHeight:v15];
    }
  }

  else
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListCollectionViewController(Banners) addBanner:bannerCopy animated:v30];
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

- (void)updateBannerConstraintsForScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];

  if (collectionView == scrollCopy)
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

- (void)oscarViewWillAppear:(BOOL)appear
{
  if ([(CKConversationListCollectionViewController *)self isOscarModal])
  {
    navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
  }

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  [(CKConversationListCollectionViewController *)self configureForOscarFilter];
  mEMORY[0x1E69A82F0] = [MEMORY[0x1E69A82F0] sharedInstance];
  [mEMORY[0x1E69A82F0] sendJunkInboxOpenedEvent];

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackiMessageJunkEvent:3];
}

- (id)toolbarItemsForJunkFilterHasConversations:(BOOL)conversations hasSelectedConversations:(BOOL)selectedConversations
{
  selectedConversationsCopy = selectedConversations;
  conversationsCopy = conversations;
  v12[3] = *MEMORY[0x1E69E9840];
  toggleReadButtonItem = [(CKConversationListCollectionViewController *)self toggleReadButtonItem];
  [toggleReadButtonItem setEnabled:conversationsCopy];
  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v9 = [(CKConversationListCollectionViewController *)self _permanentDeleteButtonToUseForSelectedJunkConversations:selectedConversationsCopy];
  [v9 setEnabled:conversationsCopy];
  v12[0] = toggleReadButtonItem;
  v12[1] = v8;
  v12[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  return v10;
}

- (void)configureForOscarFilter
{
  if (!CKIsRunningInMacCatalyst())
  {
    navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
    [navigationItem setSearchController:0];
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
  initAsOscarModal = [[CKMessagesController alloc] initAsOscarModal];
  [initAsOscarModal setModalPresentationStyle:2];
  [initAsOscarModal setPreferredDisplayMode:1];
  [(CKConversationListCollectionViewController *)self presentViewController:initAsOscarModal animated:1 completion:&__block_literal_global_78];
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

- (id)_permanentDeleteButtonToUseForSelectedJunkConversations:(BOOL)conversations
{
  if (conversations)
  {
    permanentDeleteSelectedJunkButtonItem = [(CKConversationListCollectionViewController *)self permanentDeleteSelectedJunkButtonItem];

    if (!permanentDeleteSelectedJunkButtonItem)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__permanentDeleteSelectedJunkButtonTapped_];
      [v5 accessibilitySetIdentification:@"deleteSelectedJunkButton"];
      [(CKConversationListCollectionViewController *)self setPermanentDeleteSelectedJunkButtonItem:v5];
    }

    permanentDeleteSelectedJunkButtonItem2 = [(CKConversationListCollectionViewController *)self permanentDeleteSelectedJunkButtonItem];
  }

  else
  {
    permanentDeleteAllJunkButtonItem = [(CKConversationListCollectionViewController *)self permanentDeleteAllJunkButtonItem];

    if (!permanentDeleteAllJunkButtonItem)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__permanentDeleteAllJunkButtonTapped_];
      [v8 accessibilitySetIdentification:@"deleteAllJunkButton"];
      [(CKConversationListCollectionViewController *)self setPermanentDeleteAllJunkButtonItem:v8];
    }

    permanentDeleteSelectedJunkButtonItem2 = [(CKConversationListCollectionViewController *)self permanentDeleteAllJunkButtonItem];
  }

  return permanentDeleteSelectedJunkButtonItem2;
}

- (void)_permanentDeleteSelectedJunkButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selectedConversations = [(CKConversationListCollectionViewController *)self selectedConversations];
  [(CKConversationListCollectionViewController *)self toolbarPresentPermanentDeletionConfirmationsForSpamConversations:selectedConversations sender:tappedCopy];
}

- (void)_permanentDeleteAllJunkButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[CKConversationList sharedConversationList];
  v6 = [v5 conversationsForFilterMode:9];

  [(CKConversationListCollectionViewController *)self toolbarPresentPermanentDeletionConfirmationsForSpamConversations:v6 sender:tappedCopy];
}

- (void)permanentSpamDeletionConfirmed:(id)confirmed
{
  confirmedCopy = confirmed;
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  isCollapsed = [delegate isCollapsed];

  if ((isCollapsed & 1) == 0)
  {
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:collectionView animated:1];
  }

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
  v8 = +[CKConversationList sharedConversationList];
  [v8 deleteConversations:confirmedCopy];

  [(CKConversationListCollectionViewController *)self leaveJunkFilterIfNeeded];
}

- (void)leaveJunkFilterIfNeeded
{
  filterMode = [(CKConversationListCollectionViewController *)self filterMode];
  v4 = IMOSLoggingEnabled();
  if (filterMode == 9)
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
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    snapshot = [dataSource snapshot];

    if ([snapshot numberOfItemsInSection:&unk_1F04E7B78] <= 0)
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

      isOscarModal = [(CKConversationListCollectionViewController *)self isOscarModal];
      v10 = &selRef__dismissPresentedNavController_;
      if (!isOscarModal)
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

- (id)dataSourceWithCollectionView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__CKConversationListCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke;
  v14[3] = &unk_1E72F11A0;
  objc_copyWeak(&v15, &location);
  v6 = [v5 initWithCollectionView:viewCopy cellProvider:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__CKConversationListCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke_2;
  v12[3] = &unk_1E72F11C8;
  objc_copyWeak(&v13, &location);
  [v6 setSupplementaryViewProvider:v12];
  reorderingHandlers = [v6 reorderingHandlers];
  [reorderingHandlers setCanReorderItemHandler:&__block_literal_global_101];

  reorderingHandlers2 = [v6 reorderingHandlers];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__CKConversationListCollectionViewController_DataSource__dataSourceWithCollectionView___block_invoke_4;
  v10[3] = &unk_1E72F2F40;
  objc_copyWeak(&v11, &location);
  [reorderingHandlers2 setDidReorderHandler:v10];

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

- (id)supplementaryViewForIndexPath:(id)path inCollectionView:(id)view withKind:(id)kind
{
  pathCopy = path;
  viewCopy = view;
  kindCopy = kind;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (!isModernFilteringEnabled)
  {
    if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
    {
      v17 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
      v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v17 forIndexPath:pathCopy];

      [v16 configureForRecentlyDeleted];
      goto LABEL_10;
    }

    if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
    {
      v18 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
      v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v18 forIndexPath:pathCopy];

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
    v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v14 forIndexPath:pathCopy];
    goto LABEL_9;
  }

  v14 = v13;
  v15 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
  v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v15 forIndexPath:pathCopy];

  [v16 configureWithString:v14];
LABEL_9:

LABEL_10:

  return v16;
}

- (id)cellForIndexPath:(id)path inCollectionView:(id)view withItemIdentifier:(id)identifier
{
  pathCopy = path;
  viewCopy = view;
  identifierCopy = identifier;
  section = [pathCopy section];
  v12 = 0;
  if (section <= 2)
  {
    if (!section)
    {
      if ([(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth])
      {
        [(CKConversationListCollectionViewController *)self cellForCollapsedSidebarFocusFilterCellInCollectionView:viewCopy atIndexPath:pathCopy];
      }

      else
      {
        [(CKConversationListCollectionViewController *)self cellForFocusFilterInCollectionView:viewCopy atIndexPath:pathCopy];
      }
      v15 = ;
      goto LABEL_24;
    }

    if (section == 1)
    {
      v15 = [(CKConversationListCollectionViewController *)self cellForPinningOnboardingTitleViewCollectionView:viewCopy atIndexPath:pathCopy];
      goto LABEL_24;
    }

    if (section != 2)
    {
      goto LABEL_29;
    }

    v14 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifier];
    if ([identifierCopy isEqualToString:v14])
    {
    }

    else
    {
      v20 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifierForDropTargetAtItemIndex:](CKPinnedConversationDropTargetCollectionViewCell, "uniqueIdentifierForDropTargetAtItemIndex:", [pathCopy item]);
      v21 = [identifierCopy isEqualToString:v20];

      if (!v21)
      {
        if (![(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth])
        {
          v15 = [(CKConversationListCollectionViewController *)self cellForPinnedConversationWithItemIdentifier:identifierCopy inCollectionView:viewCopy atIndexPath:pathCopy];
          goto LABEL_24;
        }

LABEL_27:
        v13 = [(CKConversationListCollectionViewController *)self cellForStandardConversationWithItemIdentifier:identifierCopy inCollectionView:viewCopy atIndexPath:pathCopy];
        goto LABEL_28;
      }
    }

    v15 = [(CKConversationListCollectionViewController *)self cellForPinnedConversationDropTargetInCollectionView:viewCopy atIndexPath:pathCopy];
    goto LABEL_24;
  }

  if (section > 4)
  {
    if (section != 5)
    {
      if (section != 6)
      {
        goto LABEL_29;
      }

      v13 = [(CKConversationListCollectionViewController *)self cellForRecoverableConversationWithItemIdentifier:identifierCopy inCollectionView:viewCopy atIndexPath:pathCopy];
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (section == 3)
  {
    v16 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
    v17 = [identifierCopy isEqualToString:v16];

    if (v17)
    {
      v15 = [(CKConversationListCollectionViewController *)self tipKitOnboardingCollectionView:viewCopy atIndexPath:pathCopy];
    }

    else
    {
      v18 = +[_TtC7ChatKit23CKTipCollectionViewCell reuseIdentifier];
      v19 = [identifierCopy isEqualToString:v18];

      if (!v19)
      {
        v12 = 0;
        goto LABEL_29;
      }

      v15 = [(CKConversationListCollectionViewController *)self tipCollectionViewCell:viewCopy atIndexPath:pathCopy];
    }

LABEL_24:
    v12 = v15;
    goto LABEL_29;
  }

  v13 = [(CKConversationListCollectionViewController *)self newMessageCellInCollectionView:viewCopy atIndexPath:pathCopy];
LABEL_28:
  v12 = v13;
  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v13];
LABEL_29:

  return v12;
}

- (void)updateContentsOfCell:(id)cell withItemIdentifier:(id)identifier atIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  v19 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  identifierCopy = identifier;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKConversationListCollectionViewController *)self configurePinnedConversationCell:cellCopy forItemIdentifier:identifierCopy indexPath:pathCopy animated:animatedCopy];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKConversationListCollectionViewController *)self configureDropTargetCell:cellCopy];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = cellCopy;
    [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v13];
    [(CKConversationListCollectionViewController *)self configureNewMessageCell:v13];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = cellCopy;
    [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v13];
    [(CKConversationListCollectionViewController *)self configureRecoverableConversationCell:v13 forItemIdentifier:identifierCopy];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = cellCopy;
    [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v13];
    [(CKConversationListCollectionViewController *)self configureConversationCell:v13 forItemIdentifier:identifierCopy];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKConversationListCollectionViewController *)self configureTipKitOnboardingCell:cellCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CKConversationListCollectionViewController *)self configureTipCollectionViewCell:cellCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CKConversationListCollectionViewController *)self configureOnboardingTitleCell:cellCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CKConversationListCollectionViewController *)self configureFocusFilterCell:cellCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CKConversationListCollectionViewController *)self configureFocusFilterCollapsedCell:cellCopy];
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

- (id)cellForPinningOnboardingTitleViewCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CKPinningOnboardingTitleCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [(CKConversationListCollectionViewController *)self configureOnboardingTitleCell:v9];

  return v9;
}

- (void)configureOnboardingTitleCell:(id)cell
{
  cellCopy = cell;
  pinnedConversationViewLayoutStyle = [(CKConversationListCollectionViewController *)self pinnedConversationViewLayoutStyle];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [cellCopy setPinnedConversationViewLayoutStyle:pinnedConversationViewLayoutStyle collapsedState:{objc_msgSend(delegate, "isCollapsed")}];
}

- (id)cellForCollapsedSidebarFocusFilterCellInCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CKFocusFilterBannerCollapsedCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [(CKConversationListCollectionViewController *)self configureFocusFilterCollapsedCell:v9];

  return v9;
}

- (id)cellForFocusFilterInCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CKFocusFilterBannerCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [(CKConversationListCollectionViewController *)self configureFocusFilterCell:v9];

  return v9;
}

- (id)tipKitOnboardingCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [(CKConversationListCollectionViewController *)self configureTipKitOnboardingCell:v9];

  return v9;
}

- (id)tipCollectionViewCell:(id)cell atIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  v8 = +[_TtC7ChatKit23CKTipCollectionViewCell reuseIdentifier];
  v9 = [cellCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [(CKConversationListCollectionViewController *)self configureTipCollectionViewCell:v9];

  return v9;
}

- (void)configureTipKitOnboardingCell:(id)cell
{
  cellCopy = cell;
  tipManager = [(CKConversationListCollectionViewController *)self tipManager];
  miniTipUIView = [tipManager miniTipUIView];
  recommendedPinningConversations = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
  [cellCopy setTipUIView:miniTipUIView withRecommendedPinningConversations:recommendedPinningConversations];
}

- (void)configureTipCollectionViewCell:(id)cell
{
  cellCopy = cell;
  tipManager = [(CKConversationListCollectionViewController *)self tipManager];
  miniTipUIView = [tipManager miniTipUIView];
  [cellCopy setTipHostingView:miniTipUIView];
}

- (id)cellForPinnedConversationWithItemIdentifier:(id)identifier inCollectionView:(id)view atIndexPath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  viewCopy = view;
  v11 = +[CKPinnedConversationCollectionViewCell reuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  v13 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifierCopy];
  v14 = [(CKConversationListCollectionViewController *)self previousPinnedConversationActivitySnapshotForConversation:v13];
  if (v14)
  {
    pinnedConversationView = [v12 pinnedConversationView];
    [pinnedConversationView reapplyPreviouslyDisplayedActivitySnapshot:v14];
  }

  [(CKConversationListCollectionViewController *)self _configurePinnedConversationCell:v12 forConversation:v13 itemIdentifier:identifierCopy indexPath:pathCopy animated:v14 != 0];

  return v12;
}

- (void)configurePinnedConversationCell:(id)cell forItemIdentifier:(id)identifier indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  identifierCopy = identifier;
  cellCopy = cell;
  v13 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifierCopy];
  [(CKConversationListCollectionViewController *)self _configurePinnedConversationCell:cellCopy forConversation:v13 itemIdentifier:identifierCopy indexPath:pathCopy animated:animatedCopy];

  [cellCopy configureAppEntityForConversation:v13];
}

- (void)_configurePinnedConversationCell:(id)cell forConversation:(id)conversation itemIdentifier:(id)identifier indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  conversationCopy = conversation;
  identifierCopy = identifier;
  pathCopy = path;
  pinnedConversationView = [cellCopy pinnedConversationView];
  [pinnedConversationView setDelegate:self];
  [pinnedConversationView setShowsLiveActivity:1];
  [pinnedConversationView setActivityItemOriginationDirection:{-[CKConversationListCollectionViewController _activityItemOriginationDirectionForItemIdentifier:conversation:](self, "_activityItemOriginationDirectionForItemIdentifier:conversation:", identifierCopy, conversationCopy)}];
  [pinnedConversationView setLayoutStyle:{-[CKConversationListCollectionViewController pinnedConversationViewLayoutStyle](self, "pinnedConversationViewLayoutStyle")}];
  [(CKConversationListCollectionViewController *)self _activityItemTopInsetForIndexPath:pathCopy];
  v17 = v16;

  [pinnedConversationView setActivityItemTopInset:v17];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [cellCopy setShowsBackgroundViewWhenSelected:{objc_msgSend(delegate, "isCollapsed") ^ 1}];

  delegate2 = [(CKConversationListCollectionViewController *)self delegate];
  [cellCopy setAllowActivitySuppressionWhenSelected:{objc_msgSend(delegate2, "isCollapsed") ^ 1}];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  conversationPinningUsesLastNameForDuplicatesEnabled = [mEMORY[0x1E69A8070] conversationPinningUsesLastNameForDuplicatesEnabled];

  if (conversationPinningUsesLastNameForDuplicatesEnabled)
  {
    _pinnedConversationShortNames = [(CKConversationListCollectionViewController *)self _pinnedConversationShortNames];
    v23 = [conversationCopy pinnedConversationDisplayNamePreferringShortName:1];
    [pinnedConversationView setPreferShortConversationName:{objc_msgSend(_pinnedConversationShortNames, "countForObject:", v23) < 2}];
  }

  else
  {
    [pinnedConversationView setPreferShortConversationName:1];
  }

  v24 = +[CKUIBehavior sharedBehaviors];
  messageCountToLoadForPinnedConversationsIfNecessary = [v24 messageCountToLoadForPinnedConversationsIfNecessary];

  if (![conversationCopy hasUnreadMessages] || messageCountToLoadForPinnedConversationsIfNecessary <= objc_msgSend(conversationCopy, "limitToLoad"))
  {
    goto LABEL_12;
  }

  chat = [conversationCopy chat];
  lastIncomingFinishedMessage = [chat lastIncomingFinishedMessage];

  if ([conversationCopy isGroupConversation])
  {
    v28 = [conversationCopy isAdHocGroupConversation] ^ 1;
    if (!lastIncomingFinishedMessage)
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
  if (lastIncomingFinishedMessage)
  {
    goto LABEL_10;
  }

LABEL_11:
  [conversationCopy setLoadedMessageCount:messageCountToLoadForPinnedConversationsIfNecessary];
LABEL_12:
  _recentMessagesInPinnedConversations = [(CKConversationListCollectionViewController *)self _recentMessagesInPinnedConversations];
  [pinnedConversationView setConversation:conversationCopy];
  [pinnedConversationView setRecentMessagesInPinnedConversations:_recentMessagesInPinnedConversations];
  chat2 = [conversationCopy chat];
  allowedByScreenTime = [chat2 allowedByScreenTime];

  if (allowedByScreenTime)
  {
    [pinnedConversationView endSuppressingActivityWithReason:@"ScreenTime" animated:animatedCopy completion:0];
  }

  else
  {
    [pinnedConversationView beginSuppressingActivityWithReason:@"ScreenTime" animated:animatedCopy completion:0];
  }

  itemIdentifiersForVisibleContextMenuInteractions = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];
  v33 = [itemIdentifiersForVisibleContextMenuInteractions containsObject:identifierCopy];

  if (v33)
  {
    pinnedConversationView2 = [cellCopy pinnedConversationView];
    [pinnedConversationView2 setDimmed:0];

    [pinnedConversationView beginSuppressingActivityWithReason:@"ContextMenuInteraction" animated:animatedCopy completion:0];
  }

  else
  {
    [pinnedConversationView endSuppressingActivityWithReason:@"ContextMenuInteraction" animated:animatedCopy completion:0];
  }

  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  if ([mEMORY[0x1E69A8088] shouldFilterConversationsByFocus])
  {
    v36 = [conversationCopy allowedByPersonListInActiveFocus] ^ 1;
  }

  else
  {
    v36 = 0;
  }

  [pinnedConversationView setIsFilteredByFocus:v36 animated:animatedCopy];
  [cellCopy setDelegate:self];
  [cellCopy setEditingMode:-[CKConversationListCollectionViewController editingMode](self animated:{"editingMode"), animatedCopy}];
  if ([(CKConversationListCollectionViewController *)self hidePinsForAnimation])
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 1.0;
  }

  contentView = [cellCopy contentView];
  [contentView setAlpha:v37];

  [pinnedConversationView updateActivityViewAnimated:animatedCopy completion:0];
}

- (double)_activityItemTopInsetForIndexPath:(id)path
{
  pathCopy = path;
  if (CKIsRunningInMacCatalyst())
  {
    if (([pathCopy item] + 2) >= 5)
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

- (int64_t)_activityItemOriginationDirectionForItemIdentifier:(id)identifier conversation:(id)conversation
{
  identifierCopy = identifier;
  conversationCopy = conversation;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];
  v10 = [snapshot numberOfItemsInSection:&unk_1F04E7D58];

  dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
  v12 = [dataSource2 indexPathForItemIdentifier:identifierCopy];

  if (v10 < 2)
  {
    goto LABEL_2;
  }

  item = [v12 item];
  if (v10 == 2)
  {
    if (item == 1)
    {
      goto LABEL_7;
    }
  }

  else if (item % 3 == 1)
  {
LABEL_7:
    v13 = [(CKConversationListCollectionViewController *)self _isOnlyActivityItemInRowForConversation:conversationCopy itemIdentifier:identifierCopy]^ 1;
    goto LABEL_8;
  }

LABEL_2:
  v13 = 0;
LABEL_8:

  return v13;
}

- (BOOL)_conversationHasActivityItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasUnreadMessages])
  {
    isTypingMessage = 1;
  }

  else
  {
    chat = [itemCopy chat];
    lastIncomingMessage = [chat lastIncomingMessage];
    isTypingMessage = [lastIncomingMessage isTypingMessage];
  }

  return isTypingMessage;
}

- (BOOL)_isOnlyActivityItemInRowForConversation:(id)conversation itemIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(CKConversationListCollectionViewController *)self _conversationHasActivityItem:conversation])
  {
    v7 = [(CKConversationListCollectionViewController *)self _conversationsInRowOfItemIdentifier:identifierCopy];
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

- (id)_conversationsInRowOfItemIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [dataSource indexPathForItemIdentifier:identifierCopy];

  item = [v6 item];
  dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource2 snapshot];
  v10 = [snapshot itemIdentifiersInSectionWithIdentifier:&unk_1F04E7D58];

  v11 = [v10 count];
  v12 = +[CKUIBehavior sharedBehaviors];
  conversationListLayoutPinnedSectionNumberOfColumns = [v12 conversationListLayoutPinnedSectionNumberOfColumns];

  v14 = item / conversationListLayoutPinnedSectionNumberOfColumns * conversationListLayoutPinnedSectionNumberOfColumns;
  if (conversationListLayoutPinnedSectionNumberOfColumns >= (v11 - v14))
  {
    v15 = v11 - v14;
  }

  else
  {
    v15 = conversationListLayoutPinnedSectionNumberOfColumns;
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
  pinnedConversations = [(CKConversationListCollectionViewController *)self pinnedConversations];
  v5 = [pinnedConversations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(pinnedConversations);
        }

        chat = [*(*(&v13 + 1) + 8 * i) chat];
        lastIncomingFinishedMessage = [chat lastIncomingFinishedMessage];

        if (lastIncomingFinishedMessage && ([lastIncomingFinishedMessage isRead] & 1) == 0)
        {
          [v3 addObject:lastIncomingFinishedMessage];
        }
      }

      v6 = [pinnedConversations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  pinnedConversations = [(CKConversationListCollectionViewController *)self pinnedConversations];
  v5 = [pinnedConversations countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(pinnedConversations);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) pinnedConversationDisplayNamePreferringShortName:1];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [pinnedConversations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)cellForPinnedConversationDropTargetInCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CKPinnedConversationDropTargetCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [(CKConversationListCollectionViewController *)self configureDropTargetCell:v9];

  return v9;
}

- (void)configureDropTargetCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setLayoutStyle:{-[CKConversationListCollectionViewController pinnedConversationViewLayoutStyle](self, "pinnedConversationViewLayoutStyle")}];
  editingMode = [(CKConversationListCollectionViewController *)self editingMode];
  v5 = editingMode == 2;
  [cellCopy setShouldAnimateCircle:editingMode != 2];
  [cellCopy setShouldHideLabel:v5];
}

- (id)newMessageCellInCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [(CKConversationListCollectionViewController *)self configureNewMessageCell:v9];
  return v9;
}

- (void)configureNewMessageCell:(id)cell
{
  cellCopy = cell;
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [cellCopy setShouldUseSidebarBackgroundConfiguration:{objc_msgSend(delegate, "isCollapsed") ^ 1}];

  [cellCopy setDelegate:self];
  [cellCopy updateFontSize];
  if (cellCopy)
  {
    conversationList = [(CKConversationListCollectionViewController *)self conversationList];
    pendingConversation = [conversationList pendingConversation];
    [cellCopy updateContentsForConversation:pendingConversation];
  }
}

- (id)cellPinningOnboardingItemIdentifier:(id)identifier inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  identifierCopy = identifier;
  v11 = +[CKConversationListCollectionViewConversationCell reuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v12];
  [(CKConversationListCollectionViewController *)self configureConversationCell:v12 forItemIdentifier:identifierCopy];

  return v12;
}

- (id)cellForStandardConversationWithItemIdentifier:(id)identifier inCollectionView:(id)view atIndexPath:(id)path
{
  identifierCopy = identifier;
  viewCopy = view;
  pathCopy = path;
  if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    v11 = [(CKConversationListCollectionViewController *)self cellForRecoverableConversationWithItemIdentifier:identifierCopy inCollectionView:viewCopy atIndexPath:pathCopy];
  }

  else
  {
    v12 = +[CKConversationListCollectionViewConversationCell reuseIdentifier];
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];

    standardCellLayout = [(CKConversationListCollectionViewController *)self standardCellLayout];
    [(CKConversationListCollectionViewController *)self setCellLayout:standardCellLayout];

    [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v11];
    [(CKConversationListCollectionViewController *)self configureConversationCell:v11 forItemIdentifier:identifierCopy];
  }

  return v11;
}

- (id)cellForRecoverableConversationWithItemIdentifier:(id)identifier inCollectionView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    junkCellLayout = [(CKConversationListCollectionViewController *)self junkCellLayout];
    v12 = off_1E72E4B98;
LABEL_5:
    [(CKConversationListCollectionViewController *)self setCellLayout:junkCellLayout];

    reuseIdentifier = [(__objc2_class *)*v12 reuseIdentifier];
    v14 = [viewCopy dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];

    goto LABEL_7;
  }

  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    junkCellLayout = [(CKConversationListCollectionViewController *)self standardCellLayout];
    v12 = off_1E72E4BA8;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:
  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:v14];
  [(CKConversationListCollectionViewController *)self configureRecoverableConversationCell:v14 forItemIdentifier:identifierCopy];

  return v14;
}

- (void)configureAppEntityForConversationCell:(id)cell forItemIdentifier:(id)identifier
{
  cellCopy = cell;
  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifier];
  [cellCopy configureAppEntityForConversation:v7];
}

- (void)configureConversationCell:(id)cell forItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cellCopy = cell;
  v11 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifierCopy];
  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:cellCopy];
  [cellCopy updateContentsForConversation:v11 fastPreview:{-[CKConversationListCollectionViewController shouldUseFastPreviewText](self, "shouldUseFastPreviewText")}];
  v8 = [cellCopy leadingEditingAccessoryConfigurationsForEditingMode:{-[CKConversationListCollectionViewController editingMode](self, "editingMode")}];
  [cellCopy setLeadingEditingAccessoryConfigurations:v8];

  v9 = [cellCopy trailingEditingAccessoryConfigurationsForEditingMode:{-[CKConversationListCollectionViewController editingMode](self, "editingMode")}];
  [cellCopy setTrailingEditingAccessoryConfigurations:v9];

  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [cellCopy setShouldUseSidebarBackgroundConfiguration:{objc_msgSend(delegate, "isCollapsed") ^ 1}];

  [cellCopy setEditingMode:{-[CKConversationListCollectionViewController editingMode](self, "editingMode")}];
  [cellCopy setEmbeddedCellDelegate:self];
  [(CKConversationListCollectionViewController *)self _configureAvatarViewInConversationCell:cellCopy forItemIdentifier:identifierCopy];
  [(CKConversationListCollectionViewController *)self _configureInteractiveAvatarInConversationCell:cellCopy forItemIdentifier:identifierCopy];
}

- (void)_configureAvatarViewInConversationCell:(id)cell forItemIdentifier:(id)identifier
{
  cellCopy = cell;
  [cellCopy setDelegate:self];
  avatarView = [cellCopy avatarView];

  [avatarView setPresentingViewController:self];
}

- (void)_configureInteractiveAvatarInConversationCell:(id)cell forItemIdentifier:(id)identifier
{
  cellCopy = cell;
  identifierCopy = identifier;
  avatarView = [cellCopy avatarView];
  [avatarView setUserInteractionEnabled:1];
  [avatarView setForcePressView:avatarView];
  avatarViewTapGestureRecognizer = [cellCopy avatarViewTapGestureRecognizer];

  if (!avatarViewTapGestureRecognizer)
  {
    v9 = [[_CKCollectionViewTapGestureRecognizer alloc] initWithTarget:self action:sel_avatarViewTapped_];
    [cellCopy setAvatarViewTapGestureRecognizer:v9];

    avatarViewTapGestureRecognizer2 = [cellCopy avatarViewTapGestureRecognizer];
    [avatarView addGestureRecognizer:avatarViewTapGestureRecognizer2];
  }

  avatarViewTapGestureRecognizer3 = [cellCopy avatarViewTapGestureRecognizer];
  [avatarViewTapGestureRecognizer3 setOriginatingItemIdentifier:identifierCopy];
}

- (void)configureRecoverableConversationCell:(id)cell forItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cellCopy = cell;
  [(CKConversationListCollectionViewController *)self _ensureCellLayoutOnCell:cellCopy];
  v9 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifierCopy];

  [cellCopy setEmbeddedCellDelegate:self];
  [cellCopy updateContentsForConversation:v9 fastPreview:{-[CKConversationListCollectionViewController shouldUseFastPreviewText](self, "shouldUseFastPreviewText")}];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [cellCopy setShouldUseSidebarBackgroundConfiguration:{objc_msgSend(delegate, "isCollapsed") ^ 1}];

  [cellCopy setEditingMode:{-[CKConversationListCollectionViewController editingMode](self, "editingMode")}];
  [cellCopy setDelegate:self];
}

- (void)avatarViewTapped:(id)tapped
{
  tappedCopy = tapped;
  if (![(CKConversationListCollectionViewController *)self isAppearing])
  {
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    originatingItemIdentifier = [tappedCopy originatingItemIdentifier];
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v8 = [dataSource indexPathForItemIdentifier:originatingItemIdentifier];

    [collectionView selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
    delegate = [collectionView delegate];
    [delegate collectionView:collectionView didSelectItemAtIndexPath:v8];

LABEL_6:
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    collectionView = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(collectionView, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, collectionView, OS_LOG_TYPE_INFO, "ViewController is still appearing. Dropping conversation selection to prevent incorrect view configuration.", v10, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (id)pinnedConversationIdentifiers
{
  pinnedConversations = [(CKConversationListCollectionViewController *)self pinnedConversations];
  v3 = [pinnedConversations arrayByApplyingSelector:sel_pinningIdentifier];

  return v3;
}

- (id)_allFrozenConversations
{
  frozenPinnedConversations = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
  frozenConversations = [(CKConversationListCollectionViewController *)self frozenConversations];
  v5 = frozenConversations;
  if (frozenPinnedConversations && frozenConversations)
  {
    v6 = [frozenPinnedConversations arrayByAddingObjectsFromArray:frozenConversations];
LABEL_8:
    v7 = v6;
    goto LABEL_9;
  }

  if (frozenPinnedConversations)
  {
    v6 = frozenPinnedConversations;
    goto LABEL_8;
  }

  if (frozenConversations)
  {
    v6 = frozenConversations;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)_removeConversationsFromFrozenConversations:(id)conversations
{
  conversationsCopy = conversations;
  v5 = MEMORY[0x1E696AE18];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__CKConversationListCollectionViewController_DataSource___removeConversationsFromFrozenConversations___block_invoke;
  v12[3] = &unk_1E72F2F88;
  v13 = conversationsCopy;
  v6 = conversationsCopy;
  v7 = [v5 predicateWithBlock:v12];
  frozenPinnedConversations = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
  v9 = [frozenPinnedConversations filteredArrayUsingPredicate:v7];

  [(CKConversationListCollectionViewController *)self setFrozenPinnedConversations:v9];
  frozenConversations = [(CKConversationListCollectionViewController *)self frozenConversations];
  v11 = [frozenConversations filteredArrayUsingPredicate:v7];

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

- (id)conversationsAtIndexPaths:(id)paths
{
  v19 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = pathsCopy;
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

- (id)conversationAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];

  return v7;
}

- (void)_appendRecentlyDeletedIdentifersToSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v5 = [conversationList conversationsForFilterMode:7];

  v6 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:v5 inSection:6];
  if ([v6 count])
  {
    [snapshotCopy appendItemsWithIdentifiers:v6];
  }
}

- (void)updateSnapshotAnimatingDifferences:(BOOL)differences completion:(id)completion
{
  differencesCopy = differences;
  completionCopy = completion;
  generateSnapshot = [(CKConversationListCollectionViewController *)self generateSnapshot];
  [(CKConversationListCollectionViewController *)self applyConversationListSnapshot:generateSnapshot animatingDifferences:differencesCopy completion:completionCopy];
}

- (void)applyConversationListSnapshot:(id)snapshot animatingDifferences:(BOOL)differences completion:(id)completion
{
  differencesCopy = differences;
  snapshotCopy = snapshot;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (![(CKConversationListCollectionViewController *)self isCommitingDiffableDataSourceTransaction])
  {
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __120__CKConversationListCollectionViewController_DataSource__applyConversationListSnapshot_animatingDifferences_completion___block_invoke;
    aBlock[3] = &unk_1E72F2FB0;
    objc_copyWeak(&v43, buf);
    v11 = completionCopy;
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
      delegate = v14;
      if (snapshotCopy)
      {
        [v14 setObject:snapshotCopy forKey:@"CKBlockedSnapshotApplicationSnapshotKey"];
      }

      v16 = [MEMORY[0x1E696AD98] numberWithBool:differencesCopy];
      [delegate setObject:v16 forKey:@"CKBlockedSnapshotApplicationAnimateDifferencesKey"];

      if (v11)
      {
        v17 = _Block_copy(v11);
        [delegate setObject:v17 forKey:@"CKBlockedSnapshotApplicationCompletionKey"];
      }

      collectionView = [delegate copy];
      [(CKConversationListCollectionViewController *)self setBlockedSnapshotInfo:collectionView];
      goto LABEL_39;
    }

    [(CKConversationListCollectionViewController *)self setIsApplyingSnapshot:1];
    conversationListCollectionViewControllerLogHandle = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
    v20 = os_signpost_id_generate(conversationListCollectionViewControllerLogHandle);

    conversationListCollectionViewControllerLogHandle2 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
    v22 = conversationListCollectionViewControllerLogHandle2;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(conversationListCollectionViewControllerLogHandle2))
    {
      *v40 = 0;
      _os_signpost_emit_with_name_impl(&dword_19020E000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "applySnapshot", "", v40, 2u);
    }

    if ([(CKConversationListCollectionViewController *)self haveAppliedInitialSnapshot])
    {
      dataSource = [(CKConversationListCollectionViewController *)self dataSource];
      snapshot = [dataSource snapshot];
      v25 = [snapshot isEqual:snapshotCopy];

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

      dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
      [dataSource2 applySnapshot:snapshotCopy animatingDifferences:differencesCopy completion:v12];
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

      dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
      [dataSource2 applySnapshot:snapshotCopy animatingDifferences:0 completion:v12];
    }

LABEL_32:
    conversationListCollectionViewControllerLogHandle3 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
    v30 = conversationListCollectionViewControllerLogHandle3;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(conversationListCollectionViewControllerLogHandle3))
    {
      *v40 = 0;
      _os_signpost_emit_with_name_impl(&dword_19020E000, v30, OS_SIGNPOST_INTERVAL_END, v20, "applySnapshot", "", v40, 2u);
    }

    [(CKConversationListCollectionViewController *)self setIsApplyingSnapshot:0];
    blockedSnapshotInfo = [(CKConversationListCollectionViewController *)self blockedSnapshotInfo];

    if (blockedSnapshotInfo)
    {
      blockedSnapshotInfo2 = [(CKConversationListCollectionViewController *)self blockedSnapshotInfo];
      v33 = [blockedSnapshotInfo2 objectForKey:@"CKBlockedSnapshotApplicationSnapshotKey"];

      blockedSnapshotInfo3 = [(CKConversationListCollectionViewController *)self blockedSnapshotInfo];
      v35 = [blockedSnapshotInfo3 objectForKey:@"CKBlockedSnapshotApplicationAnimateDifferencesKey"];
      bOOLValue = [v35 BOOLValue];

      blockedSnapshotInfo4 = [(CKConversationListCollectionViewController *)self blockedSnapshotInfo];
      v38 = [blockedSnapshotInfo4 objectForKey:@"CKBlockedSnapshotApplicationCompletionKey"];

      [(CKConversationListCollectionViewController *)self setBlockedSnapshotInfo:0];
      [(CKConversationListCollectionViewController *)self applyConversationListSnapshot:v33 animatingDifferences:bOOLValue completion:v38];
    }

    if ([(CKConversationListCollectionViewController *)self filterMode]!= 7)
    {
      goto LABEL_40;
    }

    delegate = [(CKConversationListCollectionViewController *)self delegate];
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    [delegate conversationListUpdatedSelectedIndexPathCount:{objc_msgSend(indexPathsForSelectedItems, "count")}];

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

- (void)updateContentsOfAllCellsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v24 = *MEMORY[0x1E69E9840];
  conversationListCollectionViewControllerLogHandle = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v6 = os_signpost_id_generate(conversationListCollectionViewControllerLogHandle);

  conversationListCollectionViewControllerLogHandle2 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v8 = conversationListCollectionViewControllerLogHandle2;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(conversationListCollectionViewControllerLogHandle2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "updateContentsOfAllCells", "", buf, 2u);
  }

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = indexPathsForVisibleItems;
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

        [(CKConversationListCollectionViewController *)self updateContentsOfCellWithIndexPath:*(*(&v18 + 1) + 8 * i) animated:animatedCopy, v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }

  conversationListCollectionViewControllerLogHandle3 = [(CKConversationListCollectionViewController *)self conversationListCollectionViewControllerLogHandle];
  v17 = conversationListCollectionViewControllerLogHandle3;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(conversationListCollectionViewControllerLogHandle3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v17, OS_SIGNPOST_INTERVAL_END, v6, "updateContentsOfAllCells", "", buf, 2u);
  }
}

- (void)updateContentsOfCellsWithItemIdentifiers:(id)identifiers animated:(BOOL)animated
{
  animatedCopy = animated;
  v16 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(identifiersCopy);
        }

        [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:*(*(&v11 + 1) + 8 * v10++) animated:animatedCopy];
      }

      while (v8 != v10);
      v8 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)updateContentsOfCellWithItemIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v7 = [dataSource indexPathForItemIdentifier:identifierCopy];
  if (v7)
  {
    [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:identifierCopy indexPath:v7 animated:animatedCopy];
  }
}

- (void)updateContentsOfCellWithIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];
  if (v7)
  {
    [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v7 indexPath:pathCopy animated:animatedCopy];
  }
}

- (void)updateContentsOfCellWithItemIdentifier:(id)identifier indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  pathCopy = path;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (v10)
  {
    [(CKConversationListCollectionViewController *)self updateContentsOfCell:v10 withItemIdentifier:identifierCopy atIndexPath:pathCopy animated:animatedCopy];
  }
}

- (id)pinnedConversationsFromSnapshot:(id)snapshot
{
  v23 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = snapshotCopy;
  v6 = [snapshotCopy itemIdentifiersInSectionWithIdentifier:&unk_1F04E7D58];
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

- (id)itemIdentifierForConversation:(id)conversation inSection:(unint64_t)section
{
  conversationCopy = conversation;
  v7 = conversationCopy;
  v8 = 0;
  if (section > 3)
  {
    switch(section)
    {
      case 4uLL:
        conversationListCollectionViewRecentlyDeletedListItemIdentifier = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
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
        conversationListCollectionViewRecentlyDeletedListItemIdentifier = ;
        break;
      case 6uLL:
        conversationListCollectionViewRecentlyDeletedListItemIdentifier = [conversationCopy conversationListCollectionViewRecentlyDeletedListItemIdentifier];
        break;
      default:
        goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (section == 2)
  {
    conversationListCollectionViewRecentlyDeletedListItemIdentifier = [conversationCopy conversationListCollectionViewPinnedItemIdentifier];
LABEL_16:
    v8 = conversationListCollectionViewRecentlyDeletedListItemIdentifier;
    goto LABEL_17;
  }

  if (section < 2 || section == 3)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid section identifier" userInfo:0];
    objc_exception_throw(v10);
  }

LABEL_17:

  return v8;
}

- (id)itemIdentifiersForConversations:(id)conversations inSection:(unint64_t)section
{
  v29 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v7 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(conversationsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = conversationsCopy;
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
        v14 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v13 inSection:section, v19];
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
            sectionCopy = section;
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
            sectionCopy = v14;
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

  array = [v7 array];

  return array;
}

- (id)conversationForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
  v6 = [identifierCopy isEqualToString:v5];

  if (v6)
  {
    conversationList = [(CKConversationListCollectionViewController *)self conversationList];
    pendingConversation = [conversationList pendingConversation];
    goto LABEL_15;
  }

  v9 = @"pinned-";
  if ([identifierCopy hasPrefix:@"pinned-"] & 1) != 0 || (v9 = @"list-", (objc_msgSend(identifierCopy, "hasPrefix:", @"list-")) || (v9 = @"junk-", (objc_msgSend(identifierCopy, "hasPrefix:", @"junk-")) || (v9 = @"recoverable-", (objc_msgSend(identifierCopy, "hasPrefix:", @"recoverable-")))
  {
    conversationList = [identifierCopy substringFromIndex:{-[__CFString length](v9, "length")}];
    if ([conversationList length])
    {
      conversationList2 = [(CKConversationListCollectionViewController *)self conversationList];
      pendingConversation = [conversationList2 conversationForExistingChatWithGUID:conversationList];

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

    conversationList = 0;
  }

  pendingConversation = 0;
LABEL_15:

  return pendingConversation;
}

- (id)conversationsForItemIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
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

- (double)yCoordinateForBorderBetweenPinnedAndActiveSectionExcludingConversations:(id)conversations
{
  v43 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  MinY = 0.0;
  if ([snapshot indexOfSectionIdentifier:&unk_1F04E7DD0] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  v8 = [snapshot itemIdentifiersInSectionWithIdentifier:&unk_1F04E7DD0];
  v9 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:conversationsCopy inSection:5];
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
    dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
    v16 = [dataSource2 indexPathForItemIdentifier:v11];

    if (v16)
    {
      collectionView = [(CKConversationListCollectionViewController *)self collectionView];
      v18 = [collectionView layoutAttributesForItemAtIndexPath:v16];

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
    if ([snapshot indexOfSectionIdentifier:&unk_1F04E7D58] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [snapshot itemIdentifiersInSectionWithIdentifier:&unk_1F04E7D58];
      v20 = [(CKConversationListCollectionViewController *)self itemIdentifiersForConversations:conversationsCopy inSection:2];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      reverseObjectEnumerator = [v19 reverseObjectEnumerator];
      v22 = [reverseObjectEnumerator countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v22)
      {
        v23 = *v34;
        while (2)
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v25 = *(*(&v33 + 1) + 8 * j);
            if (([v20 containsObject:v25] & 1) == 0)
            {
              v22 = v25;
              goto LABEL_33;
            }
          }

          v22 = [reverseObjectEnumerator countByEnumeratingWithState:&v33 objects:v41 count:16];
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
        dataSource3 = [(CKConversationListCollectionViewController *)self dataSource];
        v27 = [dataSource3 indexPathForItemIdentifier:v22];

        if (v27)
        {
          collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
          v29 = [collectionView2 layoutAttributesForItemAtIndexPath:v27];

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
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView contentInset];
    v11 = v8 - v10;
    if (v11 > 0.0)
    {
      v12 = v10;
      [collectionView bounds];
      v14 = v13;
      [collectionView bounds];
      v16 = v15;
      view = [(CKConversationListCollectionViewController *)self view];
      collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
      [view convertRect:collectionView2 fromView:{v14, v12, v16, v11}];
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

- (id)nextSequentialIndexPathForIndexPath:(id)path descending:(BOOL)descending
{
  descendingCopy = descending;
  v52 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  if (!descendingCopy)
  {
    v44 = 0uLL;
    v45 = 0uLL;
    *(&v42 + 1) = 0;
    v43 = 0uLL;
    reverseObjectEnumerator = [&unk_1F04E6AF8 reverseObjectEnumerator];
    v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v50 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v23 = *(*(&v42 + 1) + 8 * i);
        v24 = [snapshot numberOfItemsInSection:v23];
        v25 = v24 - 1;
        if (v24 >= 1)
        {
          section = [pathCopy section];
          if (section >= [v23 integerValue])
          {
            section2 = [pathCopy section];
            if (section2 != [v23 integerValue])
            {
              v28 = MEMORY[0x1E696AC88];
              integerValue = [v23 integerValue];
              v30 = v28;
              v31 = v25;
LABEL_35:
              v17 = [v30 indexPathForItem:v31 inSection:integerValue];
              goto LABEL_36;
            }

            if ([pathCopy item] >= 1)
            {
              item = [pathCopy item];
              if (item - 1 >= v25)
              {
                v39 = v25;
              }

              else
              {
                v39 = item - 1;
              }

              v40 = MEMORY[0x1E696AC88];
              integerValue = [v23 integerValue];
              v30 = v40;
              v31 = v39;
              goto LABEL_35;
            }
          }
        }
      }

      v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v50 count:16];
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
      v14 = [snapshot numberOfItemsInSection:v13];
      section3 = [pathCopy section];
      if (section3 <= [v13 integerValue])
      {
        section4 = [pathCopy section];
        if (section4 == [v13 integerValue])
        {
          if ([pathCopy item] < v14 - 1)
          {
            v33 = MEMORY[0x1E696AC88];
            item2 = [pathCopy item];
            integerValue2 = [v13 integerValue];
            v36 = item2 + 1;
            v37 = v33;
LABEL_30:
            v17 = [v37 indexPathForItem:v36 inSection:integerValue2];
            goto LABEL_37;
          }
        }

        else if (v14 >= 1)
        {
          v32 = MEMORY[0x1E696AC88];
          integerValue2 = [v13 integerValue];
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

- (int64_t)distanceBetweenConversationIndexPath:(id)path andIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [pathCopy section];
  if (section == [indexPathCopy section])
  {
    item = [indexPathCopy item];
    item2 = [pathCopy item];
    if (item - item2 >= 0)
    {
      v11 = item - item2;
    }

    else
    {
      v11 = item2 - item;
    }
  }

  else
  {
    section2 = [pathCopy section];
    section3 = [indexPathCopy section];
    if (section2 >= section3)
    {
      v14 = indexPathCopy;
    }

    else
    {
      v14 = pathCopy;
    }

    if (section2 >= section3)
    {
      v15 = pathCopy;
    }

    else
    {
      v15 = indexPathCopy;
    }

    v16 = v14;
    v17 = v15;
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    snapshot = [dataSource snapshot];

    section4 = [v16 section];
    if (section4 <= [v17 section])
    {
      v11 = 0;
      do
      {
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:section4];
        item3 = [snapshot numberOfItemsInSection:v21];

        if (section4 == [v16 section])
        {
          v11 = item3 + v11 - [v16 item];
        }

        if (section4 == [v17 section])
        {
          item3 = [v17 item];
        }

        v11 += item3;
      }

      while (section4++ < [v17 section]);
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
  activeConversations = [(CKConversationListCollectionViewController *)self activeConversations];
  v3 = [activeConversations count];

  return v3;
}

- (id)selectedConversations
{
  v3 = MEMORY[0x1E695DF70];
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v6 = [v3 arrayWithCapacity:{objc_msgSend(indexPathsForSelectedItems, "count")}];

  collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__CKConversationListCollectionViewController_DataSource__selectedConversations__block_invoke;
  v13[3] = &unk_1E72F2FD8;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  [indexPathsForSelectedItems2 enumerateObjectsUsingBlock:v13];

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

- (void)_ensureCellLayoutOnCell:(id)cell
{
  cellCopy = cell;
  cellLayout = [(CKConversationListCollectionViewController *)self cellLayout];

  if (!cellLayout)
  {
    [(CKConversationListCollectionViewController(DataSource) *)self _ensureCellLayoutOnCell:a2];
  }

  cellLayout2 = [(CKConversationListCollectionViewController *)self cellLayout];
  [cellCopy setCellLayout:cellLayout2];
}

- (void)pinnedConversationView:(id)view didUpdateWithActivitySnapshot:(id)snapshot
{
  viewCopy = view;
  snapshotCopy = snapshot;
  cacheForLastDisplayedActivitySnapshotByConversation = [(CKConversationListCollectionViewController *)self cacheForLastDisplayedActivitySnapshotByConversation];

  if (!cacheForLastDisplayedActivitySnapshotByConversation)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(CKConversationListCollectionViewController *)self setCacheForLastDisplayedActivitySnapshotByConversation:v8];
  }

  conversation = [viewCopy conversation];
  v10 = [(CKConversationListCollectionViewController *)self _lastDisplayedActivitySnapshotCacheKeyForConversation:conversation];
  v11 = v10;
  if (snapshotCopy && [v10 length])
  {
    cacheForLastDisplayedActivitySnapshotByConversation2 = [(CKConversationListCollectionViewController *)self cacheForLastDisplayedActivitySnapshotByConversation];
    [cacheForLastDisplayedActivitySnapshotByConversation2 setObject:snapshotCopy forKey:v11];
  }
}

- (id)previousPinnedConversationActivitySnapshotForConversation:(id)conversation
{
  v4 = [(CKConversationListCollectionViewController *)self _lastDisplayedActivitySnapshotCacheKeyForConversation:conversation];
  if ([v4 length])
  {
    cacheForLastDisplayedActivitySnapshotByConversation = [(CKConversationListCollectionViewController *)self cacheForLastDisplayedActivitySnapshotByConversation];
    v6 = [cacheForLastDisplayedActivitySnapshotByConversation objectForKey:v4];
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

- (void)recentlyDeletedViewWillAppear:(BOOL)appear
{
  if ([(CKConversationListCollectionViewController *)self isRecentlyDeletedModal])
  {
    navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
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
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__CKConversationListCollectionViewController_RecentlyDeleted__configureForRecentlyDeletedFilter__block_invoke;
  v5[3] = &unk_1E72EBA18;
  v5[4] = self;
  [mEMORY[0x1E69A5AF8] updateRecoverableMessagesMetadataSynchronously:0 loadChats:1 completionHandler:v5];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__reloadRecoverableMetadataForNotification_ name:*MEMORY[0x1E69A58B0] object:0];
  [defaultCenter addObserver:self selector:sel__reloadRecoverableMetadataForNotification_ name:*MEMORY[0x1E69A58A0] object:0];
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

- (void)_performRecoverableDeletionForConversations:(id)conversations deleteDate:(id)date
{
  conversationsCopy = conversations;
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "[Recently Deleted] Recoverable deletion confirmed", buf, 2u);
    }
  }

  [(CKConversationListCollectionViewController *)self _removeConversationsFromFrozenConversations:conversationsCopy];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate conversationListIsDeletingConversations:conversationsCopy];

  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __118__CKConversationListCollectionViewController_RecentlyDeleted___performRecoverableDeletionForConversations_deleteDate___block_invoke;
  v11[3] = &unk_1E72EBA18;
  v11[4] = self;
  [conversationList recoverableDeleteForConversations:conversationsCopy deleteDate:dateCopy synchronousQuery:0 completionHandler:v11];

  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
}

void __118__CKConversationListCollectionViewController_RecentlyDeleted___performRecoverableDeletionForConversations_deleteDate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationList];
  [v1 updateConversationListsAndSortIfEnabled];
}

- (void)_permanentDeletionConfirmedForConversations:(id)conversations
{
  conversationsCopy = conversations;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Permanent deletion confirmed", buf, 2u);
    }
  }

  [(CKConversationListCollectionViewController *)self _removeConversationsFromFrozenConversations:conversationsCopy];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate conversationListIsDeletingConversations:conversationsCopy];

  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__CKConversationListCollectionViewController_RecentlyDeleted___permanentDeletionConfirmedForConversations___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [conversationList permanentlyDeleteRecoverableMessagesInConversations:conversationsCopy synchronousQuery:0 completionHandler:v8];
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

- (void)_recoverConfirmedForConversations:(id)conversations
{
  v30 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Recovery confirmed", buf, 2u);
    }
  }

  [(CKConversationListCollectionViewController *)self _removeConversationsFromFrozenConversations:conversationsCopy];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate conversationListIsDeletingConversations:conversationsCopy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = conversationsCopy;
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
        chat = [v11 chat];
        isDeletingIncomingMessages = [chat isDeletingIncomingMessages];

        if (isDeletingIncomingMessages)
        {
          chat2 = [v11 chat];
          [chat2 setDeletingIncomingMessages:0];
        }

        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

        if (isIntroductionsEnabled)
        {
          chat3 = [v11 chat];
          v18 = [chat3 isFiltered] == 2;

          if (v18)
          {
            chat4 = [v11 chat];
            hasKnownParticipants = [chat4 hasKnownParticipants];

            chat5 = [v11 chat];
            [chat5 setIsFiltered:hasKnownParticipants ^ 1u];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__CKConversationListCollectionViewController_RecentlyDeleted___recoverConfirmedForConversations___block_invoke;
  v23[3] = &unk_1E72EBA18;
  v23[4] = self;
  [conversationList recoverDeletedMessagesInConversations:v7 synchronousQuery:0 completionHandler:v23];
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

  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];
  v6 = [snapshot indexOfSectionIdentifier:&unk_1F04E7E60] == 0x7FFFFFFFFFFFFFFFLL;

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
    dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
    snapshot2 = [dataSource2 snapshot];
    v10 = [snapshot2 numberOfItemsInSection:&unk_1F04E7E60];

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
      isRecentlyDeletedModal = [(CKConversationListCollectionViewController *)self isRecentlyDeletedModal];
      v14 = &selRef__dismissPresentedNavController_;
      if (!isRecentlyDeletedModal)
      {
        v14 = &selRef__popToInbox;
      }

      [(CKConversationListCollectionViewController *)self performSelector:*v14 withObject:0 afterDelay:0.35];
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

    if (isModernFilteringEnabled)
    {
      [(CKConversationListCollectionViewController *)self setNeedsUpdateContentUnavailableConfiguration];
      [(CKConversationListCollectionViewController *)self _updateToolbarItems];
    }
  }
}

- (void)_popToInbox
{
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate dismissConversationListAnimated:1];
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
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  isCollapsed = [delegate isCollapsed];

  if ((isCollapsed & 1) == 0)
  {
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:collectionView animated:1];

    delegate2 = [(CKConversationListCollectionViewController *)self delegate];
    collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
    [delegate2 conversationListUpdatedSelectedIndexPathCount:{objc_msgSend(indexPathsForSelectedItems, "count")}];
  }
}

- (void)_moveToRecentlyDeletedButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Recoverable deletion requested", v11, 2u);
    }
  }

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_124];
  v9 = [indexPathsForSelectedItems filteredArrayUsingPredicate:v8];

  v10 = [(CKConversationListCollectionViewController *)self conversationsAtIndexPaths:v9];
  [(CKConversationListCollectionViewController *)self toolbarPresentRecoverableDeletionConfirmationsForConversations:v10 sender:tappedCopy];
}

BOOL __98__CKConversationListCollectionViewController_RecentlyDeleted___moveToRecentlyDeletedButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 section] == 5 || objc_msgSend(v2, "section") == 2;

  return v3;
}

- (void)_permanentDeleteSelectedButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Permanent deletion on selected requested", v7, 2u);
    }
  }

  _selectedConversationsInRecentlyDeletedSection = [(CKConversationListCollectionViewController *)self _selectedConversationsInRecentlyDeletedSection];
  [(CKConversationListCollectionViewController *)self toolbarPresentPermanentDeletionConfirmationsForConversations:_selectedConversationsInRecentlyDeletedSection sender:tappedCopy];
}

- (void)_permanentDeleteAllButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Permanent deletion on all requested", v8, 2u);
    }
  }

  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v7 = [conversationList conversationsForFilterMode:7];

  [(CKConversationListCollectionViewController *)self toolbarPresentPermanentDeletionConfirmationsForConversations:v7 sender:tappedCopy];
}

- (void)_recoverSelectedButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Recover selected requested", v7, 2u);
    }
  }

  _selectedConversationsInRecentlyDeletedSection = [(CKConversationListCollectionViewController *)self _selectedConversationsInRecentlyDeletedSection];
  [(CKConversationListCollectionViewController *)self toolbarPresentRecoverConfirmationsForConveresations:_selectedConversationsInRecentlyDeletedSection sender:tappedCopy];
}

- (void)_recoverAllButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Recently Deleted] Recover all requested", v8, 2u);
    }
  }

  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v7 = [conversationList conversationsForFilterMode:7];

  [(CKConversationListCollectionViewController *)self toolbarPresentRecoverConfirmationsForConveresations:v7 sender:tappedCopy];
}

- (void)_showRecentlyDeletedModalActionTapped
{
  initForRecentlyDeletedModal = [[CKConversationListCollectionViewController alloc] initForRecentlyDeletedModal];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [initForRecentlyDeletedModal setDelegate:delegate];

  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:initForRecentlyDeletedModal];
  navigationBar = [v5 navigationBar];
  [navigationBar setPrefersLargeTitles:1];

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

- (void)recoverableDeletionConfirmedForConversations:(id)conversations deleteDate:(id)date
{
  conversationsCopy = conversations;
  dateCopy = date;
  if ([(CKConversationListCollectionViewController *)self _isNewComposeSelected])
  {
    delegate = [(CKConversationListCollectionViewController *)self delegate];
    [delegate conversationListControllerTappedDeleteNewMessage:self];
  }

  [(CKConversationListCollectionViewController *)self _performRecoverableDeletionForConversations:conversationsCopy deleteDate:dateCopy];
  delegate2 = [(CKConversationListCollectionViewController *)self delegate];
  isCollapsed = [delegate2 isCollapsed];

  if ((isCollapsed & 1) == 0)
  {
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v12 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_233_1];
    v13 = [indexPathsForSelectedItems filteredArrayUsingPredicate:v12];

    collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
    [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:collectionView2 animated:1];

    lastObject = [v13 lastObject];
    [(CKConversationListCollectionViewController *)self selectConversationClosestToDeletedIndex:lastObject];
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
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__CKConversationListCollectionViewController_RecentlyDeleted___isNewComposeSelected__block_invoke;
  v5[3] = &unk_1E72F38F8;
  v5[4] = &v6;
  [indexPathsForSelectedItems enumerateObjectsUsingBlock:v5];

  LOBYTE(collectionView) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return collectionView;
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

- (id)toolbarItemsForRecentlyDeletedFilterHasConversations:(BOOL)conversations hasSelectedConversations:(BOOL)selectedConversations
{
  selectedConversationsCopy = selectedConversations;
  conversationsCopy = conversations;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(CKConversationListCollectionViewController *)self _permanentDeletebuttonToUseForSelectedConversations:selectedConversationsCopy];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v10 = [(CKConversationListCollectionViewController *)self _recoverButtonToUseForSelectedConversations:selectedConversationsCopy];
  [v8 setEnabled:conversationsCopy];
  [v10 setEnabled:conversationsCopy];
  [v7 addObject:v10];
  [v7 addObject:v9];
  [v7 addObject:v8];

  return v7;
}

- (id)_permanentDeletebuttonToUseForSelectedConversations:(BOOL)conversations
{
  if (conversations)
  {
    permanentDeleteSelectedButtonItem = [(CKConversationListCollectionViewController *)self permanentDeleteSelectedButtonItem];

    if (!permanentDeleteSelectedButtonItem)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__permanentDeleteSelectedButtonTapped_];
      [v5 accessibilitySetIdentification:@"deleteButton"];
      [(CKConversationListCollectionViewController *)self setPermanentDeleteSelectedButtonItem:v5];
    }

    permanentDeleteSelectedButtonItem2 = [(CKConversationListCollectionViewController *)self permanentDeleteSelectedButtonItem];
  }

  else
  {
    permanentDeleteAllButtonItem = [(CKConversationListCollectionViewController *)self permanentDeleteAllButtonItem];

    if (!permanentDeleteAllButtonItem)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__permanentDeleteAllButtonTapped_];
      [v8 accessibilitySetIdentification:@"deleteButton"];
      [(CKConversationListCollectionViewController *)self setPermanentDeleteAllButtonItem:v8];
    }

    permanentDeleteSelectedButtonItem2 = [(CKConversationListCollectionViewController *)self permanentDeleteAllButtonItem];
  }

  return permanentDeleteSelectedButtonItem2;
}

- (id)_recoverButtonToUseForSelectedConversations:(BOOL)conversations
{
  if (conversations)
  {
    recoverSelectedButtonItem = [(CKConversationListCollectionViewController *)self recoverSelectedButtonItem];

    if (!recoverSelectedButtonItem)
    {
      v5 = objc_alloc(MEMORY[0x1E69DC708]);
      v6 = CKFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"RECOVER" value:&stru_1F04268F8 table:@"ChatKit"];
      v8 = [v5 initWithTitle:v7 style:0 target:self action:sel__recoverSelectedButtonTapped_];

      [v8 accessibilitySetIdentification:@"recoverButton"];
      [(CKConversationListCollectionViewController *)self setRecoverSelectedButtonItem:v8];
    }

    recoverSelectedButtonItem2 = [(CKConversationListCollectionViewController *)self recoverSelectedButtonItem];
  }

  else
  {
    recoverAllButtonItem = [(CKConversationListCollectionViewController *)self recoverAllButtonItem];

    if (!recoverAllButtonItem)
    {
      v11 = objc_alloc(MEMORY[0x1E69DC708]);
      v12 = CKFrameworkBundle();
      v13 = [v12 localizedStringForKey:@"RECOVER_ALL" value:&stru_1F04268F8 table:@"ChatKit"];
      v14 = [v11 initWithTitle:v13 style:0 target:self action:sel__recoverAllButtonTapped_];

      [v14 accessibilitySetIdentification:@"recoverButton"];
      [(CKConversationListCollectionViewController *)self setRecoverAllButtonItem:v14];
    }

    recoverSelectedButtonItem2 = [(CKConversationListCollectionViewController *)self recoverAllButtonItem];
  }

  return recoverSelectedButtonItem2;
}

- (id)_selectedConversationsInRecentlyDeletedSection
{
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_263_1];
  v6 = [indexPathsForSelectedItems filteredArrayUsingPredicate:v5];

  v7 = [(CKConversationListCollectionViewController *)self conversationsAtIndexPaths:v6];

  return v7;
}

- (unint64_t)_numberOfRecoverableMessagesInConversations:(id)conversations
{
  v16 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [conversationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(conversationsCopy);
        }

        chat = [*(*(&v11 + 1) + 8 * i) chat];
        v6 += [chat recoverableMessagesCount];
      }

      v5 = [conversationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_reloadRecoverableMetadataForNotification:(id)notification
{
  v11 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      name = [notificationCopy name];
      *buf = 138412290;
      v10 = name;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | Reloading recoverable message metadata for notification %@", buf, 0xCu);
    }
  }

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__CKConversationListCollectionViewController_RecentlyDeleted___reloadRecoverableMetadataForNotification___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [mEMORY[0x1E69A5AF8] updateRecoverableMessagesMetadataSynchronously:0 loadChats:1 completionHandler:v8];
}

uint64_t __105__CKConversationListCollectionViewController_RecentlyDeleted___reloadRecoverableMetadataForNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationList];
  [v2 updateConversationListsAndSortIfEnabled];

  [*(a1 + 32) updateSnapshotAnimatingDifferences:1];
  v3 = *(a1 + 32);

  return [v3 updateContentsOfAllCellsAnimated:1];
}

- (void)_handleChatRegistryDidPermanentlyDeleteRecoverableMessages:(id)messages
{
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __122__CKConversationListCollectionViewController_RecentlyDeleted___handleChatRegistryDidPermanentlyDeleteRecoverableMessages___block_invoke;
  v5[3] = &unk_1E72EBA18;
  v5[4] = self;
  [mEMORY[0x1E69A5AF8] updateRecoverableMessagesMetadataSynchronously:0 loadChats:1 completionHandler:v5];
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

- (void)_handleDidRecoverMessagesInChatsNotification:(id)notification
{
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __108__CKConversationListCollectionViewController_RecentlyDeleted___handleDidRecoverMessagesInChatsNotification___block_invoke;
  v5[3] = &unk_1E72EBA18;
  v5[4] = self;
  [mEMORY[0x1E69A5AF8] updateRecoverableMessagesMetadataSynchronously:0 loadChats:1 completionHandler:v5];
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
  _selectedConversationsInRecentlyDeletedSection = [(CKConversationListCollectionViewController *)self _selectedConversationsInRecentlyDeletedSection];
  if ([_selectedConversationsInRecentlyDeletedSection count])
  {
    v4 = [(CKConversationListCollectionViewController *)self _numberOfRecoverableMessagesInConversations:_selectedConversationsInRecentlyDeletedSection];
    v5 = [(CKConversationListCollectionViewController *)self _minNumberOfDaysUntilDeletionInConversations:_selectedConversationsInRecentlyDeletedSection];
    if ([_selectedConversationsInRecentlyDeletedSection count] < 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(CKConversationListCollectionViewController *)self _maxNumberOfDaysUntilDeletionInConversations:_selectedConversationsInRecentlyDeletedSection];
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"RECENTLY_DELETED_MESSAGES_SELECTED" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = [v9 localizedStringWithFormat:v11, v4];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v15 = @"\u200F";
    }

    else
    {
      v15 = @"\u200E";
    }

    v7 = [(__CFString *)v15 stringByAppendingString:v12];

    if ([_selectedConversationsInRecentlyDeletedSection count] == 1 || v5 == v6)
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

    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection2 == 1)
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

    mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection3 = [mEMORY[0x1E69DC668]3 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection3 == 1)
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

- (unint64_t)_minNumberOfDaysUntilDeletionInConversations:(id)conversations
{
  conversationsCopy = conversations;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__CKConversationListCollectionViewController_RecentlyDeleted___minNumberOfDaysUntilDeletionInConversations___block_invoke;
  v6[3] = &unk_1E72F3920;
  v6[4] = &v7;
  [conversationsCopy enumerateObjectsUsingBlock:v6];
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

- (unint64_t)_maxNumberOfDaysUntilDeletionInConversations:(id)conversations
{
  conversationsCopy = conversations;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __108__CKConversationListCollectionViewController_RecentlyDeleted___maxNumberOfDaysUntilDeletionInConversations___block_invoke;
  v6[3] = &unk_1E72F3920;
  v6[4] = &v7;
  [conversationsCopy enumerateObjectsUsingBlock:v6];
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

- (void)_refreshConversationListCellForGroupPhotoUpdate:(id)update
{
  updateCopy = update;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Notification to refresh the cell for avatar view update.", v10, 2u);
    }
  }

  userInfo = [updateCopy userInfo];
  v7 = [userInfo valueForKey:@"conversation"];
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

- (void)_refreshConversationListCellForHistoryClear:(id)clear
{
  clearCopy = clear;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Notification to refresh the cell for avatar view update.", v11, 2u);
    }
  }

  object = [clearCopy object];
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v8 = [conversationList conversationForExistingChat:object];

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

- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  height = [[CKConversationListCollectionView alloc] initWithFrame:layoutCopy collectionViewLayout:x, y, width, height];

  return height;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v14 traitCollectionDidChange:changeCopy];
  [changeCopy displayScale];
  v6 = v5;
  traitCollection = [(CKConversationListCollectionViewController *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  if (v6 != v9)
  {
    [(CKConversationListCollectionViewController *)self invalidateCellLayout];
  }

  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection2 = [(CKConversationListCollectionViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    v13 = +[CKDualSIMUtilities sharedUtilities];
    [v13 updateConversationListSIMLabelImagesDictionary];
  }
}

- (void)dealloc
{
  stateCaptureAssistant = [(CKConversationListCollectionViewController *)self stateCaptureAssistant];
  [stateCaptureAssistant deregister];

  [(CKConversationListCollectionViewController *)self setStateCaptureAssistant:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UISearchController *)self->_searchController setDelegate:0];
  [(UISearchController *)self->_searchController setSearchResultsUpdater:0];
  [(CKSearchViewController *)self->_searchResultsController setDelegate:0];
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView setDataSource:0];

  collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView2 setDelegate:0];

  collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView3 setDragDelegate:0];

  collectionView4 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView4 setDropDelegate:0];

  refreshControlTimer = [(CKConversationListCollectionViewController *)self refreshControlTimer];

  if (refreshControlTimer)
  {
    refreshControlTimer2 = [(CKConversationListCollectionViewController *)self refreshControlTimer];
    [refreshControlTimer2 invalidate];

    [(CKConversationListCollectionViewController *)self setRefreshControlTimer:0];
  }

  v11.receiver = self;
  v11.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v11 dealloc];
}

- (void)_dismissPresentedNavController:(id)controller
{
  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_dismissPresentedDetailsController:(id)controller
{
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate conversationListControllerPresentViewControllerInInspector:0];
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
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  firstObject = [indexPathsForSelectedItems firstObject];

  return firstObject;
}

- (void)significantTimeChange
{
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0];

  [(CKConversationListCollectionViewController *)self updateConversationSelection];
}

- (void)_updateCollectionViewImmediatelyIfNeeded
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater updateImmediatelyIfNeeded];
}

- (void)compositionSent
{
  v23 = *MEMORY[0x1E69E9840];
  splitViewController = [(CKConversationListCollectionViewController *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  if (isCollapsed)
  {
    [(CKConversationListCollectionViewController *)self setCompositionWasSent:1];
    navigationController = [(CKConversationListCollectionViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = viewControllers;
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

      navigationController2 = [(CKConversationListCollectionViewController *)self navigationController];
      [navigationController2 setViewControllers:v15];
    }

LABEL_13:

LABEL_14:
  }
}

- (void)_showConversation:(id)conversation withComposition:(id)composition
{
  compositionCopy = composition;
  conversationCopy = conversation;
  if ([conversationCopy isPinned])
  {
    v8 = 2;
  }

  else
  {
    v8 = 5;
  }

  v11 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:conversationCopy inSection:v8];

  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v10 = [dataSource indexPathForItemIdentifier:v11];

  [(CKConversationListCollectionViewController *)self _showConversationWithComposition:compositionCopy atIndexPath:v10];
}

- (void)_showConversationWithComposition:(id)composition atIndexPath:(id)path
{
  compositionCopy = composition;
  pathCopy = path;
  if (([(CKConversationListCollectionViewController *)self isEditing]& 1) == 0)
  {
    v8 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:pathCopy];
    delegate = [(CKConversationListCollectionViewController *)self delegate];
    currentlyShownConversation = [delegate currentlyShownConversation];

    _shouldKeepSelection = [(CKConversationListCollectionViewController *)self _shouldKeepSelection];
    v12 = v8 == currentlyShownConversation && _shouldKeepSelection;
    unsentComposition = [v8 unsentComposition];

    if ([pathCopy section] == 4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      isComposingMessage = [WeakRetained isComposingMessage];

      v16 = objc_loadWeakRetained(&self->_delegate);
      v17 = v16;
      if ((isComposingMessage & 1) == 0)
      {
        [v16 showNewMessageCompositionPanelAppendingToExistingDraft:compositionCopy animated:1];
        goto LABEL_15;
      }
    }

    else
    {
      v18 = !v12;
      if (!compositionCopy)
      {
        v18 = 1;
      }

      if ((v18 & 1) != 0 || unsentComposition == compositionCopy)
      {
        if (v8 != 0 && !v12)
        {
          updater = [(CKConversationListCollectionViewController *)self updater];
          [updater beginHoldingUpdatesForReason:@"chatItemChangeSuppression"];

          [v8 updateUnsentCompositionByAppendingComposition:compositionCopy];
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

    [v16 updateCompositionInEntryViewWithComposition:compositionCopy];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];

  if (collectionView == viewCopy)
  {
    [(CKConversationListCollectionViewController *)self _updateToolbarItems];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__CKConversationListCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    aBlock[3] = &unk_1E72EB8D0;
    aBlock[4] = self;
    v15 = pathCopy;
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
      collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
      *buf = 138412546;
      v17 = viewCopy;
      v18 = 2112;
      v19 = collectionView2;
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

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = !-[CKConversationListCollectionViewController isAppearing](self, "isAppearing") && -[CKConversationListCollectionViewController sectionHasSelectableConversations:](self, "sectionHasSelectableConversations:", [pathCopy section]);

  return v6;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  section = [path section];

  return [(CKConversationListCollectionViewController *)self sectionHasSelectableConversations:section];
}

- (BOOL)cellAtIndexPath:(id)path isVisibleInCollectionView:(id)view
{
  viewCopy = view;
  v7 = [viewCopy cellForItemAtIndexPath:path];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  [v7 bounds];
  [viewCopy convertRect:v8 fromView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [viewCopy bounds];
  v36 = v18;
  v37 = v17;
  v35 = v19;
  v21 = v20;
  [viewCopy adjustedContentInset];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v21 - (v22 + v28);
  if (!self->_keyboardIsShowing)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    chatController = [WeakRetained chatController];

    [chatController accessoryViewHeight];
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

- (id)complimentaryIndexPathForConversationAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 5)
  {
    v5 = 2;
LABEL_5:
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

    v8 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v7];
    v9 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v8 inSection:v5];
    dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
    v11 = [dataSource2 indexPathForItemIdentifier:v9];

    goto LABEL_7;
  }

  if ([pathCopy section] == 2)
  {
    v5 = 5;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)_performTranscriptPushForItemAtIndexPath:(id)path userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v35 = *MEMORY[0x1E69E9840];
  pathCopy = path;
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

    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView deselectItemAtIndexPath:pathCopy animated:0];

    goto LABEL_38;
  }

  editingMode = [(CKConversationListCollectionViewController *)self editingMode];
  v10 = [pathCopy section] == 4 || objc_msgSend(pathCopy, "section") == 2 || objc_msgSend(pathCopy, "section") == 5;
  if (editingMode == 2)
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
    lastSelectedConversationItemIdentifier = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v15 = [dataSource indexPathForItemIdentifier:lastSelectedConversationItemIdentifier];

    if (([pathCopy isEqual:v15] & 1) == 0)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CKConversationListSelectionDidChangeNotification" object:self];

      if ([MEMORY[0x1E69A8090] messageSummarizationEnabled])
      {
        splitViewController = [(CKConversationListCollectionViewController *)self splitViewController];
        isCollapsed = [splitViewController isCollapsed];

        if (isCollapsed)
        {
          v19 = pathCopy;
        }

        else
        {
          v19 = v15;
        }

        [(CKConversationListCollectionViewController *)self _consumeSummaryForConversationAtIndexPathIfNeeded:v19];
      }
    }

    dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
    v21 = [dataSource2 itemIdentifierForIndexPath:pathCopy];

    if (CKIsRunningInMacCatalyst())
    {
      lastUserSelectedConversationTime = [(CKConversationListCollectionViewController *)self lastUserSelectedConversationTime];
      if (lastUserSelectedConversationTime)
      {
        lastUserSelectedConversationItemIdentifier = [(CKConversationListCollectionViewController *)self lastUserSelectedConversationItemIdentifier];
        v24 = [v21 isEqualToString:lastUserSelectedConversationItemIdentifier];

        if (v24)
        {
          lastUserSelectedConversationTime2 = [(CKConversationListCollectionViewController *)self lastUserSelectedConversationTime];
          [lastUserSelectedConversationTime2 timeIntervalSinceNow];
          v27 = v26;

          if (fabs(v27) < cellDoubleClickInterval())
          {
            v28 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:pathCopy];
            delegate = [(CKConversationListCollectionViewController *)self delegate];
            [delegate showConversationInNewWindow:v28];
          }
        }
      }

      if (!initiatedCopy)
      {
        [(CKConversationListCollectionViewController *)self _showConversationWithComposition:0 atIndexPath:pathCopy];
        [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:v21];
LABEL_37:

        goto LABEL_38;
      }

      date = [MEMORY[0x1E695DF00] date];
      [(CKConversationListCollectionViewController *)self setLastUserSelectedConversationTime:date];
    }

    [(CKConversationListCollectionViewController *)self _showConversationWithComposition:0 atIndexPath:pathCopy];
    [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:v21];
    if (initiatedCopy)
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
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
      v33 = 138412290;
      v34 = v32;
      _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "multi-select: not showing conversation - section is invalid: %@", &v33, 0xCu);
    }
  }

LABEL_38:
}

- (void)_consumeSummaryForConversationAtIndexPathIfNeeded:(id)needed
{
  v5 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:needed];
  chat = [v5 chat];
  chatSummary = [chat chatSummary];

  if (chatSummary)
  {
    [chat consumeSummaryIfNeeded];
  }
}

- (void)_consumeSummaryOnUnreadCountChangeForChatIfNeeded:(id)needed
{
  neededCopy = needed;
  if (![neededCopy unreadMessageCount])
  {
    splitViewController = [(CKConversationListCollectionViewController *)self splitViewController];
    isCollapsed = [splitViewController isCollapsed];

    if (isCollapsed)
    {
      chatSummary = [neededCopy chatSummary];

      if (chatSummary)
      {
        [neededCopy consumeSummaryIfNeeded];
      }
    }
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v13 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      collectionView = [(CKConversationListCollectionViewController *)self collectionView];
      indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
      v11 = 138412290;
      v12 = indexPathsForSelectedItems;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "multi-select: didDeselectItemAtIndexPath. SelectedIndexPaths: %@", &v11, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self _updateToolbarItems];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updatedSelectedIndexPathCount object:0];
  [(CKConversationListCollectionViewController *)self performSelector:sel__updatedSelectedIndexPathCount withObject:0 afterDelay:0.0];
}

- (void)_updatedSelectedIndexPathCount
{
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  [delegate conversationListUpdatedSelectedIndexPathCount:{objc_msgSend(indexPathsForSelectedItems, "count")}];
}

- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
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

  else if ([pathCopy section] == 5)
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

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = pathCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Call to -didBeginMultipleSelectionInteractionAtIndexPath for indexPath {%@}.", &v19, 0xCu);
    }
  }

  section = [pathCopy section];
  v10 = [(CKConversationListCollectionViewController *)self sectionHasSelectableConversations:section];
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v14 = [snapshot numberOfItemsInSection:v13];

  if ([pathCopy item] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(pathCopy, "item") >= v14)
  {
    delegate = IMLogHandleForCategory();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListCollectionViewController collectionView:didBeginMultipleSelectionInteractionAtIndexPath:];
    }

    goto LABEL_13;
  }

  if (v10 && ([(CKConversationListCollectionViewController *)self isEditing]& 1) == 0 && ![(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
  {
    [(CKConversationListCollectionViewController *)self setEditingMode:1 animated:CKIsRunningInMacCatalyst() == 0 shouldInvalidateCellLayout:0];
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];

    delegate = [(CKConversationListCollectionViewController *)self delegate];
    collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
    -[NSObject conversationListDidBeginMultipleSelectionWithInitialSelectedCount:](delegate, "conversationListDidBeginMultipleSelectionWithInitialSelectedCount:", [indexPathsForSelectedItems count]);

LABEL_13:
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy willDisplayCell];
  }

  [(CKConversationListCollectionViewController *)self _infiniteScrollReachedIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cellCopy;
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v10 = [dataSource itemIdentifierForIndexPath:pathCopy];
    [(CKConversationListCollectionViewController *)self configureAppEntityForConversationCell:v8 forItemIdentifier:v10];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pinnedConversationView = [cellCopy pinnedConversationView];
    [pinnedConversationView didEndDisplaying];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cellCopy didEndDisplaying];
    }
  }
}

- (void)_infiniteScrollReachedIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 5)
  {
    v4 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:pathCopy];
    if (v4)
    {
      dataSource = [(CKConversationListCollectionViewController *)self dataSource];
      collectionView = [(CKConversationListCollectionViewController *)self collectionView];
      v7 = [dataSource collectionView:collectionView numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];
      v8 = v7 - [pathCopy row];

      conversationList = [(CKConversationListCollectionViewController *)self conversationList];
      scrollingController = [conversationList scrollingController];
      chat = [v4 chat];
      lastFinishedMessageDate = [chat lastFinishedMessageDate];
      activeFilterModes = [(CKConversationListCollectionViewController *)self activeFilterModes];
      [scrollingController reachedConversationWithLastMessageDate:lastFinishedMessageDate filterModes:activeFilterModes remainingRows:v8];
    }
  }
}

- (BOOL)isSearchActive
{
  searchController = [(CKConversationListCollectionViewController *)self searchController];
  isActive = [searchController isActive];

  return isActive;
}

- (BOOL)isSearchActiveAndDisplayingResultsForSearchText
{
  if (![(CKConversationListCollectionViewController *)self isSearchActive])
  {
    return 0;
  }

  searchController = [(CKConversationListCollectionViewController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  v6 = [text length];

  if (!v6)
  {
    return 0;
  }

  searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
  conversationSearchHasResult = [searchResultsController conversationSearchHasResult];

  return conversationSearchHasResult;
}

- (void)searchControllerFindNext
{
  searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController findNext];
}

- (void)searchControllerFindPrevious
{
  searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController findPrevious];
}

- (void)beginFindFromEditMenu
{
  searchController = [(CKConversationListCollectionViewController *)self searchController];
  if (searchController)
  {
    v4 = searchController;
    searchController2 = [(CKConversationListCollectionViewController *)self searchController];
    searchBar = [searchController2 searchBar];

    if (searchBar)
    {
      [(CKConversationListCollectionViewController *)self setMacShouldShowZKWSearch:1];
      if (-[CKConversationListCollectionViewController isBelowMacSnapToMinWidth](self, "isBelowMacSnapToMinWidth") && (-[CKConversationListCollectionViewController navigationItem](self, "navigationItem"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[CKConversationListCollectionViewController navigationItem](self, "navigationItem"), v9 = objc_claimAutoreleasedReturnValue(), [v9 searchController], v10 = objc_claimAutoreleasedReturnValue(), -[CKConversationListCollectionViewController searchController](self, "searchController"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v8, v10 != v11))
      {
        searchController3 = [(CKConversationListCollectionViewController *)self searchController];
        navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
        [navigationItem setSearchController:searchController3];

        searchController4 = [(CKConversationListCollectionViewController *)self searchController];
        searchBar2 = [searchController4 searchBar];
        [searchBar2 performSelector:sel_becomeFirstResponder withObject:0 afterDelay:0.05];
      }

      else
      {
        searchController4 = [(CKConversationListCollectionViewController *)self searchController];
        searchBar2 = [searchController4 searchBar];
        [searchBar2 becomeFirstResponder];
      }
    }
  }
}

- (void)performSearch:(id)search completion:(id)completion
{
  searchCopy = search;
  completionCopy = completion;
  if (searchCopy)
  {
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView __ck_scrollToTop:1];

    searchController = [(CKConversationListCollectionViewController *)self searchController];
    [searchController setActive:1];

    searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
    [searchResultsController logActivationViaSpotlight];

    searchController2 = [(CKConversationListCollectionViewController *)self searchController];
    searchBar = [searchController2 searchBar];
    [searchBar setText:searchCopy];

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    searchController3 = [(CKConversationListCollectionViewController *)self searchController];
    searchBar2 = [searchController3 searchBar];
    [searchBar2 setText:0];

    searchController4 = [(CKConversationListCollectionViewController *)self searchController];
    [searchController4 setActive:0];

    ck_dispatch_main_after_seconds(completionCopy, 0.0);
  }
}

- (id)preferredFocusEnvironments
{
  array = [MEMORY[0x1E695DF70] array];
  _itemIdentifierOfDefaultConversation = [(CKConversationListCollectionViewController *)self _itemIdentifierOfDefaultConversation];
  lastSelectedConversationItemIdentifier = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
  if ([lastSelectedConversationItemIdentifier length])
  {
    v6 = lastSelectedConversationItemIdentifier;
  }

  else
  {
    v6 = _itemIdentifierOfDefaultConversation;
  }

  v7 = v6;
  if ([v7 length])
  {
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v9 = [dataSource indexPathForItemIdentifier:v7];

    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    v11 = [collectionView cellForItemAtIndexPath:v9];

    if (v11)
    {
      [array addObject:v11];
    }
  }

  return array;
}

- (BOOL)sectionHasActionableConversations:(unint64_t)conversations
{
  if (conversations - 5 < 2)
  {
    return 1;
  }

  if (conversations == 4)
  {
    return CKIsRunningInMacCatalyst() != 0;
  }

  return conversations == 2;
}

- (BOOL)contextMenuInteractionShouldBeginAtIndexPath:(id)path
{
  v14 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ((![MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled] || (-[CKConversationListCollectionViewController conversationAtIndexPath:](self, "conversationAtIndexPath:", pathCopy), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "chat"), v6 = objc_claimAutoreleasedReturnValue(), v5, LODWORD(v5) = objc_msgSend(v6, "allowedByScreenTime"), v6, v5)) && -[CKConversationListCollectionViewController sectionHasActionableConversations:](self, "sectionHasActionableConversations:", objc_msgSend(pathCopy, "section")))
  {
    v7 = +[CKAdaptivePresentationController sharedInstance];
    presentedViewController = [v7 presentedViewController];

    v9 = presentedViewController == 0;
    if (presentedViewController && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = presentedViewController;
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

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathsCopy = paths;
  firstObject = [pathsCopy firstObject];
  if ([(CKConversationListCollectionViewController *)self contextMenuInteractionShouldBeginAtIndexPath:firstObject])
  {
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v13 = [dataSource itemIdentifierForIndexPath:firstObject];

    v14 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v13];
    if (v14)
    {
      if ([pathsCopy count] < 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = [pathsCopy containsObject:firstObject];
      }

      if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
      {
        v18 = [(CKConversationListCollectionViewController *)self recentlyDeletedContextMenuForCollectionView:viewCopy indexPaths:pathsCopy point:x, y];
      }

      else if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
      {
        v18 = [(CKConversationListCollectionViewController *)self spamContextMenuForCollectionView:viewCopy indexPaths:pathsCopy point:x, y];
      }

      else
      {
        if (v15)
        {
          [(CKConversationListCollectionViewController *)self _multipleSelectionMenuInCollectionView:viewCopy indexPaths:pathsCopy point:x, y];
        }

        else
        {
          [(CKConversationListCollectionViewController *)self _singleSelectionMenuInCollectionView:viewCopy indexPaths:pathsCopy point:x, y];
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
          v26 = firstObject;
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

- (id)_previewProviderForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    v5 = 0;
  }

  else
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    supportsOrbPreviewsInConversationList = [v6 supportsOrbPreviewsInConversationList];

    if (supportsOrbPreviewsInConversationList)
    {
      limitToLoad = [conversationCopy limitToLoad];
      v9 = +[CKUIBehavior sharedBehaviors];
      defaultConversationViewingMessageCount = [v9 defaultConversationViewingMessageCount];

      if (defaultConversationViewingMessageCount >= limitToLoad)
      {
        defaultConversationViewingMessageCount = limitToLoad;
      }

      v11 = +[CKUIBehavior sharedBehaviors];
      initialConversationViewingMessageCount = [v11 initialConversationViewingMessageCount];

      if (defaultConversationViewingMessageCount <= initialConversationViewingMessageCount)
      {
        v13 = initialConversationViewingMessageCount;
      }

      else
      {
        v13 = defaultConversationViewingMessageCount;
      }

      [conversationCopy setLoadedMessageCount:v13];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78__CKConversationListCollectionViewController__previewProviderForConversation___block_invoke;
      v16[3] = &unk_1E72F5300;
      v16[4] = self;
      v17 = conversationCopy;
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

- (void)_deselectSelectedIndexPathsInCollectionView:(id)view animated:(BOOL)animated
{
  viewCopy = view;
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__CKConversationListCollectionViewController__deselectSelectedIndexPathsInCollectionView_animated___block_invoke;
  v8[3] = &unk_1E72F5328;
  v9 = viewCopy;
  animatedCopy = animated;
  v7 = viewCopy;
  [indexPathsForSelectedItems enumerateObjectsUsingBlock:v8];
}

- (id)_previewForHighlightingOrDismissingContextMenuWithConfiguration:(id)configuration indexPath:(id)path collectionView:(id)view
{
  configurationCopy = configuration;
  pathCopy = path;
  viewCopy = view;
  v10 = +[CKUIBehavior sharedBehaviors];
  if (([v10 supportsOrbPreviewsInConversationList] & 1) == 0)
  {

    goto LABEL_9;
  }

  identifier = [configurationCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_9:
    v21 = 0;
    goto LABEL_27;
  }

  v13 = [viewCopy cellForItemAtIndexPath:pathCopy];
  if (!v13)
  {
LABEL_25:
    v21 = 0;
    goto LABEL_26;
  }

  if ([pathCopy section] == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = v13;
    pinnedConversationView = [v14 pinnedConversationView];
    avatarView = [pinnedConversationView avatarView];

    _window = [avatarView _window];

    if (_window)
    {
      v18 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      bezierPath = [MEMORY[0x1E69DC728] bezierPath];
      [v18 setShadowPath:bezierPath];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [v18 setBackgroundColor:clearColor];

      v21 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:avatarView parameters:v18];
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

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

  if ((isConversationListRefreshEnabled & 1) != 0 || v21)
  {
    goto LABEL_26;
  }

  _window2 = [v13 _window];

  if (!_window2)
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
  theme = [v27 theme];
  conversationListCellPreviewBackgroundColor = [theme conversationListCellPreviewBackgroundColor];
  [v26 setBackgroundColor:conversationListCellPreviewBackgroundColor];

  v21 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v13 parameters:v26];
LABEL_26:

LABEL_27:

  return v21;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  configurationCopy = configuration;
  viewCopy = view;
  identifier = [configurationCopy identifier];
  itemIdentifiersForVisibleContextMenuInteractions = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];

  if (!itemIdentifiersForVisibleContextMenuInteractions)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(CKConversationListCollectionViewController *)self setItemIdentifiersForVisibleContextMenuInteractions:v13];
  }

  itemIdentifiersForVisibleContextMenuInteractions2 = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];
  [itemIdentifiersForVisibleContextMenuInteractions2 addObject:identifier];

  [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:identifier animated:1];
  v15 = [(CKConversationListCollectionViewController *)self _previewForHighlightingOrDismissingContextMenuWithConfiguration:configurationCopy indexPath:pathCopy collectionView:viewCopy];

  return v15;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  animatorCopy = animator;
  previewViewController = [animatorCopy previewViewController];
  objc_initWeak(&location, self);
  childViewControllers = [previewViewController childViewControllers];
  v13 = [childViewControllers count];

  if (v13)
  {
    editingMode = [(CKConversationListCollectionViewController *)self editingMode];
    editingMode2 = [(CKConversationListCollectionViewController *)self editingMode];
    v16 = editingMode == 1;
    LODWORD(v13) = editingMode2 == 0;
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
  v17 = configurationCopy;
  v22 = v17;
  selfCopy = self;
  v18 = viewCopy;
  v24 = v18;
  objc_copyWeak(&v26, &location);
  v28 = v13;
  v19 = previewViewController;
  v25 = v19;
  [animatorCopy addAnimations:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __119__CKConversationListCollectionViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke_2;
  v20[3] = &unk_1E72EBA18;
  v20[4] = self;
  [animatorCopy addCompletion:v20];
  [animatorCopy setPreferredCommitStyle:v13];

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

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  identifier = [configuration identifier];
  itemIdentifiersForVisibleContextMenuInteractions = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];

  if (!itemIdentifiersForVisibleContextMenuInteractions)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(CKConversationListCollectionViewController *)self setItemIdentifiersForVisibleContextMenuInteractions:v7];
  }

  itemIdentifiersForVisibleContextMenuInteractions2 = [(CKConversationListCollectionViewController *)self itemIdentifiersForVisibleContextMenuInteractions];
  [itemIdentifiersForVisibleContextMenuInteractions2 addObject:identifier];

  [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:identifier animated:1];
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  animatorCopy = animator;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__CKConversationListCollectionViewController_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke_2;
  aBlock[3] = &unk_1E72EE0D0;
  v11 = configurationCopy;
  v15 = v11;
  objc_copyWeak(&v16, &location);
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (animatorCopy)
  {
    [animatorCopy addAnimations:&__block_literal_global_434_0];
    [animatorCopy addCompletion:v13];
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

- (id)_multipleSelectionMenuInCollectionView:(id)view indexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v27[1] = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  viewCopy = view;
  v11 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __102__CKConversationListCollectionViewController__multipleSelectionMenuInCollectionView_indexPaths_point___block_invoke;
  v24[3] = &unk_1E72F5378;
  v24[4] = self;
  v12 = v11;
  v25 = v12;
  v13 = pathsCopy;
  v26 = v13;
  [v13 enumerateObjectsUsingBlock:v24];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v15 = [(CKConversationListCollectionViewController *)self _markAsActionForConversations:v12];
  v16 = [(CKConversationListCollectionViewController *)self _muteActionConversations:v12];
  v17 = [(CKConversationListCollectionViewController *)self recoverableDeleteContextMenuActionWithConversations:v12 collectionView:viewCopy indexPaths:v13 point:x, y];

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

- (id)_singleSelectionMenuInCollectionView:(id)view indexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v65 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathsCopy = paths;
  if ([pathsCopy count] == 1)
  {
    firstObject = [pathsCopy firstObject];
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v55 = [dataSource itemIdentifierForIndexPath:firstObject];

    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    v48 = [collectionView cellForItemAtIndexPath:firstObject];

    v53 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v55];
    v62 = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    v12 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
    v52 = [(CKConversationListCollectionViewController *)self recoverableDeleteContextMenuActionWithConversations:v54 collectionView:viewCopy indexPaths:pathsCopy point:x, y];
    if ([firstObject section] == 4 && -[CKConversationListCollectionViewController sectionHasActionableConversations:](self, "sectionHasActionableConversations:", 4))
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
      chatController = [WeakRetained chatController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v32 = objc_loadWeakRetained(&self->_delegate);
        chatController2 = [v32 chatController];

        entryView = [chatController2 entryView];
        contentView = [entryView contentView];
        textView = [contentView textView];

        v37 = objc_opt_new();
        [textView setPasteConfiguration:v37];
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
      chat = [(CKConversationListCollectionViewController *)self _conversationDetailsActionForItemIdentifier:v55 withCell:v48];
      if (v49)
      {
        [v22 addObject:v49];
      }

      if (chat)
      {
        [v22 addObject:chat];
      }

      chatSummary = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v22];
      [v12 addObject:chatSummary];
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
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isInboxSummaryEnabled = [mEMORY[0x1E69A8070] isInboxSummaryEnabled];

      if (!isInboxSummaryEnabled)
      {
        goto LABEL_26;
      }

      chat = [v53 chat];
      chatSummary = [chat chatSummary];
      if (!chatSummary)
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      chat2 = [v53 chat];
      v26 = [(CKConversationListCollectionViewController *)self reportConcernForChat:chat2];

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
      v64 = pathsCopy;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "CKConversationListCollectionViewController | Unexpected indexPaths count. Expecting 1. Got indexPaths: %@", buf, 0xCu);
    }
  }

  v17 = 0;
LABEL_35:

  return v17;
}

- (id)_markAsActionForConversations:(id)conversations
{
  conversationsCopy = conversations;
  if ([conversationsCopy count])
  {
    v5 = [(CKConversationListCollectionViewController *)self _conversationsEligibleForReadStateToggle:conversationsCopy];
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
      v17 = conversationsCopy;
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

- (BOOL)_hasReadAllConversations:(id)conversations
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  conversationsCopy = conversations;
  v4 = [conversationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(conversationsCopy);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasUnreadMessages])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [conversationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)_conversationsEligibleForReadStateToggle:(id)toggle
{
  v3 = MEMORY[0x1E695DF70];
  toggleCopy = toggle;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(toggleCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__CKConversationListCollectionViewController__conversationsEligibleForReadStateToggle___block_invoke;
  v8[3] = &unk_1E72ED4A0;
  v6 = v5;
  v9 = v6;
  [toggleCopy enumerateObjectsUsingBlock:v8];

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

- (id)_pinActionForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
  {
    v5 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifierCopy];
    if (v5)
    {
      dataSource = [(CKConversationListCollectionViewController *)self dataSource];
      v7 = [dataSource indexPathForItemIdentifier:identifierCopy];

      section = [v7 section];
      v9 = section == 2;
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
      if (section == 2)
      {
        v13 = @"UNPIN_ACTION";
      }

      else
      {
        v13 = @"PIN_ACTION";
      }

      if (section == 2)
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

- (id)_muteActionConversations:(id)conversations
{
  conversationsCopy = conversations;
  v5 = [(CKConversationListCollectionViewController *)self _conversationsEligibleForMute:conversationsCopy];
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

- (BOOL)_hasAlertsEnabledForAllConversations:(id)conversations
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  conversationsCopy = conversations;
  v4 = [conversationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(conversationsCopy);
        }

        if ([*(*(&v10 + 1) + 8 * i) isMuted])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [conversationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)_conversationsEligibleForMute:(id)mute
{
  v3 = MEMORY[0x1E695DF70];
  muteCopy = mute;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(muteCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__CKConversationListCollectionViewController__conversationsEligibleForMute___block_invoke;
  v8[3] = &unk_1E72ED4A0;
  v6 = v5;
  v9 = v6;
  [muteCopy enumerateObjectsUsingBlock:v8];

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

- (void)_updateConversations:(id)conversations alertsHidden:(BOOL)hidden
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__CKConversationListCollectionViewController__updateConversations_alertsHidden___block_invoke;
  v4[3] = &__block_descriptor_33_e31_v32__0__CKConversation_8Q16_B24l;
  hiddenCopy = hidden;
  [conversations enumerateObjectsUsingBlock:v4];
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

- (id)_deleteConversationActionForItemIdentifier:(id)identifier withCell:(id)cell
{
  identifierCopy = identifier;
  cellCopy = cell;
  v8 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifierCopy];
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
    v23 = cellCopy;
    objc_copyWeak(&v25, &location);
    v24 = identifierCopy;
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

- (void)deleteButtonTappedForCell:(id)cell
{
  v15 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [dataSource itemIdentifierForIndexPath:v6];

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
  [(CKConversationListCollectionViewController *)self deleteButtonTappedForItemIdentifier:v8 completionHandler:0 cellToUpdate:cellCopy alertsDisplayConfiguration:v10];
}

- (void)acceptButtonTappedForCell:(id)cell
{
  v16 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [dataSource itemIdentifierForIndexPath:v6];

  v9 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v8];
  chat = [v9 chat];
  [chat markAsKnownAndSaveInContacts:1 completion:0];

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
  [cellCopy invalidateIntrinsicContentSize];
}

- (id)_openConversationInNewWindowActionForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ((IMSharedHelperDeviceIsiPad() & 1) != 0 || CKIsRunningInMacCatalyst())
  {
    v5 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifierCopy];
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
        activityForNewScene = [v6 activityForNewScene];
        if (activityForNewScene)
        {
          v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.badge.plus"];
          v14 = MEMORY[0x1E69DC628];
          v15 = CKFrameworkBundle();
          v16 = [v15 localizedStringForKey:@"OPEN_IN_NEW_WINDOW" value:&stru_1F04268F8 table:@"ChatKit"];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __98__CKConversationListCollectionViewController__openConversationInNewWindowActionForItemIdentifier___block_invoke_2;
          v18[3] = &unk_1E72EC060;
          v19 = activityForNewScene;
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

- (id)_conversationDetailsActionForItemIdentifier:(id)identifier withCell:(id)cell
{
  identifierCopy = identifier;
  cellCopy = cell;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

  if (isRedesignedDetailsViewEnabled)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifierCopy];
    chat = [v11 chat];

    if (chat)
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
      v19 = identifierCopy;
      v20 = cellCopy;
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

- (void)presentDetailsForItemIdentifier:(id)identifier fromView:(id)view
{
  v39[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifier];
  v8 = [[CKDetailsControllerAdapter alloc] initWithConversation:v7];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernDetailsViewEnabled = [mEMORY[0x1E69A8070] isModernDetailsViewEnabled];

  if (isModernDetailsViewEnabled)
  {
    v11 = [v7 isBusinessConversation] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [[CKDetailsNavigationController alloc] initWithNavigationBarClass:objc_opt_class() toolbarClass:0 shouldHideNavigationBar:v11];
  [(CKDetailsNavigationController *)v12 setDetailsAdapter:v8];
  detailsController = [(CKDetailsControllerAdapter *)v8 detailsController];
  v14 = detailsController;
  if (detailsController)
  {
    v39[0] = detailsController;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [(CKDetailsNavigationController *)v12 setViewControllers:v15];
  }

  else
  {
    [(CKDetailsNavigationController *)v12 setViewControllers:MEMORY[0x1E695E0F0]];
  }

  [(CKDetailsNavigationController *)v12 setModalPresentationStyle:7];
  [(CKDetailsNavigationController *)v12 setDelegate:v14];
  popoverPresentationController = [(CKDetailsNavigationController *)v12 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [viewCopy bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [viewCopy layoutMargins];
  v26 = v18 + v25;
  v28 = v20 + v27;
  v30 = v22 - (v25 + v29);
  v32 = v24 - (v27 + v31);
  popoverPresentationController2 = [(CKDetailsNavigationController *)v12 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v26, v28, v30, v32}];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__CKConversationListCollectionViewController_presentDetailsForItemIdentifier_fromView___block_invoke;
  aBlock[3] = &unk_1E72EC410;
  v38 = viewCopy;
  v34 = viewCopy;
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

- (void)unpinButtonTappedForCell:(id)cell withConversation:(id)conversation
{
  conversationCopy = conversation;
  [(CKConversationListCollectionViewController *)self setPinningInteractionMethod:2];
  [(CKConversationListCollectionViewController *)self unpinConversation:conversationCopy withReason:*MEMORY[0x1E69A5A30]];
}

- (CGRect)collectionViewBoundsForPinnedConversationCollectionViewCell:(id)cell
{
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView bounds];
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
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  isDetailsNavigationControllerDetached = [delegate isDetailsNavigationControllerDetached];

  return isDetailsNavigationControllerDetached;
}

- (BOOL)hasDetailsNavigationController
{
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  hasDetailsNavigationController = [delegate hasDetailsNavigationController];

  return hasDetailsNavigationController;
}

- (void)dismissDetailsNavigationControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[CKAdaptivePresentationController sharedInstance];
  [v4 dismissViewControllerAnimated:1 completion:completionCopy];
}

- (void)dismissDetailsViewAndShowConversationList
{
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate dismissDetailsControllerAnimated:1];
}

- (void)detailsAdapter:(id)adapter wantsToStageComposition:(id)composition
{
  adapterCopy = adapter;
  compositionCopy = composition;
  if (CKIsRunningInMacCatalyst())
  {
    delegate = [(CKConversationListCollectionViewController *)self delegate];
    [delegate dismissDetailsControllerAnimated:1];

    conversation = [adapterCopy conversation];
    [(CKConversationListCollectionViewController *)self _showConversation:conversation withComposition:compositionCopy];
  }
}

- (void)detailsAdapterDidDismiss:(id)dismiss
{
  if ([(CKConversationListCollectionViewController *)self _shouldRestoreFirstResponderAfterDetailsViewDismiss])
  {

    [(CKConversationListCollectionViewController *)self becomeFirstResponder];
  }
}

- (void)detailsAdapterWantsToPresentKTContactVerificationUI:(id)i
{
  conversation = [i conversation];
  [CKKeyTransparencyErrorUtilities showKTContactVerificationUIForConversation:conversation fromViewController:self];
}

- (void)pinButtonTappedForCell:(id)cell
{
  v11 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

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

- (void)avatarHeaderWasTappedForConversation:(id)conversation
{
  v15[1] = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

  if ((isRedesignedDetailsViewEnabled & 1) == 0)
  {
    v7 = [[CKDetailsControllerAdapter alloc] initWithConversation:conversationCopy];
    v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    detailsController = [(CKDetailsControllerAdapter *)v7 detailsController];
    v10 = detailsController;
    if (detailsController)
    {
      v15[0] = detailsController;
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
    navigationItem = [v10 navigationItem];
    [navigationItem setRightBarButtonItem:v12];

    navigationController = [(CKConversationListCollectionViewController *)self navigationController];
    [navigationController presentViewController:v8 animated:1 completion:0];
  }
}

- (BOOL)listCellIsBeingDisplayedAsGhostedCellInPinnedSection:(id)section
{
  sectionCopy = section;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:sectionCopy];

  v9 = 0;
  if (v6)
  {
    v7 = [collectionView presentationIndexPathForDataSourceIndexPath:v6];
    section = [v7 section];

    if (section == 2)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)selectedDeleteButtonForConversation:(id)conversation inCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  if ([v6 section] == 4)
  {
    delegate = [(CKConversationListCollectionViewController *)self delegate];
    [delegate conversationListControllerTappedDeleteNewMessage:self];
  }

  else
  {
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    delegate = [dataSource itemIdentifierForIndexPath:v6];

    v9 = objc_opt_new();
    [(CKConversationListCollectionViewController *)self deleteButtonTappedForItemIdentifier:delegate completionHandler:0 cellToUpdate:cellCopy alertsDisplayConfiguration:v9];
  }
}

- (void)togglePinStateForConversation:(id)conversation withReason:(id)reason
{
  conversationCopy = conversation;
  reasonCopy = reason;
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    frozenPinnedConversations = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
    v9 = frozenPinnedConversations;
    if (frozenPinnedConversations)
    {
      if ([frozenPinnedConversations containsObject:conversationCopy])
      {
LABEL_4:
        [(CKConversationListCollectionViewController *)self unpinConversation:conversationCopy withReason:reasonCopy];
LABEL_10:

        goto LABEL_11;
      }
    }

    else if ([conversationCopy isPinned])
    {
      goto LABEL_4;
    }

    [(CKConversationListCollectionViewController *)self pinConversation:conversationCopy withReason:reasonCopy];
    goto LABEL_10;
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CKConversationListCollectionViewController togglePinStateForConversation:withReason:];
  }

LABEL_11:
}

- (void)unpinConversation:(id)conversation withReason:(id)reason
{
  v41 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  reasonCopy = reason;
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    if (conversationCopy)
    {
      frozenPinnedConversations = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
      v8 = IMOSLoggingEnabled();
      if (frozenPinnedConversations)
      {
        if (v8)
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = conversationCopy;
            _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "-[unpinConversation:] Pinned conversations are frozen. Removing conversation from frozenPinnedConversations: %@", buf, 0xCu);
          }
        }

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __75__CKConversationListCollectionViewController_unpinConversation_withReason___block_invoke;
        v34[3] = &unk_1E72ED3E8;
        v35 = conversationCopy;
        v10 = [frozenPinnedConversations __imArrayByFilteringWithBlock:v34];
        [(CKConversationListCollectionViewController *)self setFrozenPinnedConversations:v10];

        [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:1];
        [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
        snapshot = v35;
        goto LABEL_39;
      }

      if (v8)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v38 = reasonCopy;
          v39 = 2112;
          v40 = conversationCopy;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "-[unpinConversation:] reason: %@, conversation: %@", buf, 0x16u);
        }
      }

      dataSource = [(CKConversationListCollectionViewController *)self dataSource];
      snapshot = [dataSource snapshot];

      v16 = [(CKConversationListCollectionViewController *)self pinnedConversationsFromSnapshot:snapshot];
      v28 = [v16 mutableCopy];

      pinningIdentifier = [conversationCopy pinningIdentifier];
      if ([pinningIdentifier length])
      {
        v17 = [v28 count];
        [v28 removeObject:conversationCopy];
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

                chat = [*(*(&v30 + 1) + 8 * i) chat];
                [v19 addObject:chat];
              }

              v21 = [v20 countByEnumeratingWithState:&v30 objects:v36 count:16];
            }

            while (v21);
          }

          mEMORY[0x1E69A5C38] = [MEMORY[0x1E69A5C38] sharedInstance];
          v26 = [v19 copy];
          [mEMORY[0x1E69A5C38] setPinnedChats:v26 withUpdateReason:reasonCopy];

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
          v38 = conversationCopy;
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
          v38 = conversationCopy;
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

- (void)pinConversation:(id)conversation withReason:(id)reason
{
  v52 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  reasonCopy = reason;
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    if (conversationCopy)
    {
      v8 = +[CKUIBehavior sharedBehaviors];
      maximumNumberOfPinnedConversations = [v8 maximumNumberOfPinnedConversations];

      frozenPinnedConversations = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
      v11 = frozenPinnedConversations;
      if (frozenPinnedConversations)
      {
        if ([frozenPinnedConversations count] >= maximumNumberOfPinnedConversations)
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
              v49 = conversationCopy;
              _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "-[pinConversation:] Pinned conversations are frozen. Adding conversation to frozenPinnedConversations: %@", buf, 0xCu);
            }
          }

          v13 = [v11 arrayByAddingObject:conversationCopy];
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
        dataSource = [(CKConversationListCollectionViewController *)self dataSource];
        snapshot = [dataSource snapshot];

        v17 = [(CKConversationListCollectionViewController *)self pinnedConversationsFromSnapshot:snapshot];
        v18 = [v17 mutableCopy];
        v19 = v18;
        v20 = MEMORY[0x1E695E0F0];
        if (v18)
        {
          v20 = v18;
        }

        v21 = v20;

        v36 = v21;
        if ([v21 count] >= maximumNumberOfPinnedConversations)
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
              v49 = reasonCopy;
              v50 = 2112;
              v51 = conversationCopy;
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

                if (*(*(&v42 + 1) + 8 * i) == conversationCopy)
                {

                  if (IMOSLoggingEnabled())
                  {
                    v35 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v49 = conversationCopy;
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

          [v23 addObject:conversationCopy];
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

                chat = [*(*(&v38 + 1) + 8 * j) chat];
                [v27 addObject:chat];
              }

              v29 = [v28 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v29);
          }

          mEMORY[0x1E69A5C38] = [MEMORY[0x1E69A5C38] sharedInstance];
          v34 = [v27 copy];
          [mEMORY[0x1E69A5C38] setPinnedChats:v34 withUpdateReason:reasonCopy];
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

- (void)_toggleUnreadStateForSelectedConversations:(id)conversations
{
  v22 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__CKConversationListCollectionViewController__toggleUnreadStateForSelectedConversations___block_invoke;
  v15[3] = &unk_1E72F3920;
  v15[4] = &v16;
  [conversationsCopy enumerateObjectsUsingBlock:v15];
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater beginHoldingUpdatesForReason:@"markAsRead"];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = conversationsCopy;
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
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [snapshot itemIdentifiersInSectionWithIdentifier:&unk_1F04E8010];
  [v4 addObjectsFromArray:v5];
  v6 = [snapshot itemIdentifiersInSectionWithIdentifier:&unk_1F04E8028];
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

  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  if ([mEMORY[0x1E69A8088] shouldFilterConversationsByFocus])
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

  mEMORY[0x1E69A7EE8] = [MEMORY[0x1E69A7EE8] sharedManager];
  shouldFilterIncomingMessages = [mEMORY[0x1E69A7EE8] shouldFilterIncomingMessages];

  if (shouldFilterIncomingMessages)
  {
    goto LABEL_8;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      filterMode = [(CKConversationListCollectionViewController *)self filterMode];
      *buf = 134217984;
      v14 = filterMode;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Not in a focus mode, mark as read using the database queries with filter mode (%lu)", buf, 0xCu);
    }
  }

  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater beginHoldingUpdatesForReason:@"markAsRead"];

  [(CKConversationListCollectionViewController *)self _markPinnedAndActiveConversationsAsRead];
  v11 = [CKConversationListFilterModeUtilities filterModeChatPredicate:[(CKConversationListCollectionViewController *)self filterMode]];
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [mEMORY[0x1E69A5AF8] markChatsAsReadFilteredUsingPredicate:v11];

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
  im_dispatch_after();
}

void __73__CKConversationListCollectionViewController__markAllConversationsAsRead__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 endHoldingUpdatesForReason:@"markAsRead" updateTriggeredIfNotHeldShouldBeDeferred:1];
}

- (void)toggleReadButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  if ([indexPathsForSelectedItems count])
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

    v8 = [(CKConversationListCollectionViewController *)self conversationsAtIndexPaths:indexPathsForSelectedItems];
    [(CKConversationListCollectionViewController *)self _toggleUnreadStateForSelectedConversations:v8];
  }

  else
  {
    [(CKConversationListCollectionViewController *)self _markAllConversationsAsRead];
  }
}

- (void)muteConversationButtonTappedForConversationWithItemIdentifier:(id)identifier setMuted:(BOOL)muted
{
  mutedCopy = muted;
  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:identifier];
  if (mutedCopy)
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [v7 setMutedUntilDate:distantFuture];
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

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  macApplicationMetricsGatheringEnabled = [mEMORY[0x1E69A8070] macApplicationMetricsGatheringEnabled];

  return macApplicationMetricsGatheringEnabled;
}

- (void)_configureSearchBarClearButton:(BOOL)button searchController:(id)controller
{
  buttonCopy = button;
  controllerCopy = controller;
  v5 = CKIsRunningInMacCatalyst();
  v6 = controllerCopy;
  if (v5)
  {
    searchBar = [controllerCopy searchBar];
    searchTextField = [searchBar searchTextField];

    if (objc_opt_respondsToSelector())
    {
      [searchTextField _setAlwaysShowsClearButtonWhenEmpty:buttonCopy];
    }

    v6 = controllerCopy;
  }
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController setDismissingSearchController:0];

  if ([(CKConversationListCollectionViewController *)self hasTransparentSideBar])
  {
    view = [(CKConversationListCollectionViewController *)self view];
    [view setHidden:1];
  }

  [(CKConversationListCollectionViewController *)self _configureSearchBarClearButton:1 searchController:controllerCopy];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate conversationListControllerWillPresentSearchResultsController];

  [(CKConversationListCollectionViewController *)self _configureCatalystFiltersNavigation];
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController setDismissingSearchController:1];

  if ([(CKConversationListCollectionViewController *)self hasTransparentSideBar])
  {
    view = [(CKConversationListCollectionViewController *)self view];
    [view setHidden:0];
  }

  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate conversationListControllerWillDismissSearchResultsController];

  if ([controllerCopy isActive])
  {
    [(CKConversationListCollectionViewController *)self reloadInputViews];
  }

  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  [navigationItem setBackButtonTitle:0];

  if (CKIsRunningInMacCatalyst() && [controllerCopy isActive])
  {
    transitionCoordinator = [(CKConversationListCollectionViewController *)self transitionCoordinator];
    v10 = transitionCoordinator;
    if (transitionCoordinator)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __74__CKConversationListCollectionViewController_willDismissSearchController___block_invoke;
      v11[3] = &unk_1E72EC3E8;
      v11[4] = self;
      [transitionCoordinator animateAlongsideTransition:v11 completion:0];
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

- (void)didDismissSearchController:(id)controller
{
  controllerCopy = controller;
  searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController setDismissingSearchController:0];

  searchResultsController2 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController2 searchEnded];

  searchResultsController3 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController3 logDeactivation];

  [(CKConversationListCollectionViewController *)self _configureSearchBarClearButton:0 searchController:controllerCopy];
  if (CKIsRunningInMacCatalyst())
  {
    [(CKConversationListCollectionViewController *)self setMacShouldShowZKWSearch:0];
    [(CKConversationListCollectionViewController *)self _configureCatalystFiltersNavigation];
  }

  [(CKConversationListCollectionViewController *)self updateConversationSelection];

  [(CKConversationListCollectionViewController *)self updateNavigationItems];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  v26 = *MEMORY[0x1E69E9840];
  editingCopy = editing;
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

  searchController = [(CKConversationListCollectionViewController *)self searchController];
  isActive = [searchController isActive];

  if ((isActive & 1) == 0)
  {
    searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
    [searchResultsController logActivationViaSearchBar];
  }

  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"SEARCH" value:&stru_1F04268F8 table:@"ChatKit"];
  [navigationItem setBackButtonTitle:v11];

  searchController2 = [(CKConversationListCollectionViewController *)self searchController];
  LOBYTE(v10) = [searchController2 showsSearchResultsController];

  if ((v10 & 1) == 0)
  {
    if (!CKIsRunningInMacCatalyst())
    {
      searchController3 = [(CKConversationListCollectionViewController *)self searchController];
      [searchController3 setShowsSearchResultsController:1];
    }

    searchController4 = [(CKConversationListCollectionViewController *)self searchController];
    searchBar = [searchController4 searchBar];
    text = [searchBar text];
    v17 = [text length] == 0;

    if (v17)
    {
      searchResultsController2 = [(CKConversationListCollectionViewController *)self searchResultsController];
      [searchResultsController2 searchWithText:&stru_1F04268F8];
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSearchTokensEnabled = [mEMORY[0x1E69A8070] isSearchTokensEnabled];

  if (isSearchTokensEnabled)
  {
    searchResultsController3 = [(CKConversationListCollectionViewController *)self searchResultsController];
    [searchResultsController3 setCanShowTokenSuggestions:1];
  }

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathOfFirstSelectedItem = [(CKConversationListCollectionViewController *)self indexPathOfFirstSelectedItem];
  [collectionView deselectItemAtIndexPath:indexPathOfFirstSelectedItem animated:0];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  if ([change length])
  {
    if (!CKIsRunningInMacCatalyst())
    {
      return;
    }
  }

  else
  {
    searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
    [searchResultsController searchEnded];

    if (!CKIsRunningInMacCatalyst())
    {
      return;
    }

    if (![(CKConversationListCollectionViewController *)self macShouldShowZKWSearch])
    {
      isActive = 0;
      goto LABEL_7;
    }
  }

  searchController = [(CKConversationListCollectionViewController *)self searchController];
  isActive = [searchController isActive];

LABEL_7:
  view = [(CKConversationListCollectionViewController *)self view];
  [view setHidden:isActive];

  searchController2 = [(CKConversationListCollectionViewController *)self searchController];
  [searchController2 setShowsSearchResultsController:isActive];

  [(CKConversationListCollectionViewController *)self _configureCatalystFiltersNavigation];
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  if (CKIsRunningInMacCatalyst() && ![(CKConversationListCollectionViewController *)self macShouldShowZKWSearch])
  {
    text = [editingCopy text];
    if ([text length] || (-[CKConversationListCollectionViewController presentedViewController](self, "presentedViewController"), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
    }

    else
    {
      v9 = v8;
      presentedViewController = [(CKConversationListCollectionViewController *)self presentedViewController];
      searchController = [(CKConversationListCollectionViewController *)self searchController];

      if (presentedViewController == searchController)
      {
        searchController2 = [(CKConversationListCollectionViewController *)self searchController];
        [(CKConversationListCollectionViewController *)self willDismissSearchController:searchController2];

        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __73__CKConversationListCollectionViewController_searchBarTextDidEndEditing___block_invoke;
        v13[3] = &unk_1E72EBA18;
        v13[4] = self;
        [(CKConversationListCollectionViewController *)self dismissViewControllerAnimated:0 completion:v13];
      }
    }
  }

  delegate = [(CKConversationListCollectionViewController *)self delegate];
  chatController = [delegate chatController];

  [chatController becomeFirstResponder];
}

void __73__CKConversationListCollectionViewController_searchBarTextDidEndEditing___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 searchController];
  [v1 didDismissSearchController:v2];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSearchTokensEnabled = [mEMORY[0x1E69A8070] isSearchTokensEnabled];

  if (isSearchTokensEnabled)
  {
    searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
    [searchResultsController setCanShowTokenSuggestions:0];
  }

  searchResultsController2 = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController2 logSearchButtonTapped];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController logCancelButtonTapped];
}

- (BOOL)searchBarShouldClear:(id)clear
{
  searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
  [searchResultsController logClearButtonTapped];

  return 1;
}

- (id)searchController:(id)controller conversationForChatGUID:(id)d
{
  dCopy = d;
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v7 = [conversationList conversationForExistingChatWithGUID:dCopy];

  return v7;
}

- (id)searchController:(id)controller conversationsForExistingChatsWithGUIDs:(id)ds
{
  dsCopy = ds;
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v7 = [conversationList conversationsForExistingChatsWithGUIDs:dsCopy];

  return v7;
}

- (id)searchBarForSearchViewController:(id)controller
{
  searchController = [(CKConversationListCollectionViewController *)self searchController];
  searchBar = [searchController searchBar];

  return searchBar;
}

- (void)searchController:(id)controller didSelectItem:(id)item inChat:(id)chat
{
  chatCopy = chat;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained showConversationAndMessageForChatGUID:chatCopy messageGUID:itemCopy animate:1];

  delegate = [(CKConversationListCollectionViewController *)self delegate];
  chatController = [delegate chatController];
  [chatController becomeFirstResponder];

  delegate2 = [(CKConversationListCollectionViewController *)self delegate];
  chatController2 = [delegate2 chatController];
  [chatController2 reloadInputViews];
}

- (void)searchControllerDidBeginDragging:(id)dragging
{
  searchController = [(CKConversationListCollectionViewController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar resignFirstResponder];
}

- (void)searchViewController:(id)controller requestsPushOfSearchController:(id)searchController
{
  searchControllerCopy = searchController;
  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  [navigationController pushViewController:searchControllerCopy animated:1];
}

- (BOOL)shouldInsetResultsForSearchController:(id)controller
{
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  isCollapsed = [delegate isCollapsed];

  return isCollapsed;
}

- (void)_contentSizeCategoryDidChange:(id)change
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

- (void)_increaseContrastDidChange:(id)change
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

- (void)_handleJunkFilteringSettingChange:(id)change
{
  v4 = +[CKConversationList sharedConversationList];
  conversations = [v4 conversations];
  [conversations enumerateObjectsUsingBlock:&__block_literal_global_562_2];
}

void __80__CKConversationListCollectionViewController__handleJunkFilteringSettingChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 chat];
  [v2 setAllowsJunkConfiguration:{+[CKConversationList spamInboxEnabled](CKConversationList, "spamInboxEnabled")}];
  [v2 _reloadChatItemsForJunkFilteringSettingChange];
}

- (void)_handleFilterUnknownSendersSettingChange:(id)change
{
  v4 = +[CKConversationList sharedConversationList];
  conversations = [v4 conversations];
  [conversations enumerateObjectsUsingBlock:&__block_literal_global_564_2];
}

void __87__CKConversationListCollectionViewController__handleFilterUnknownSendersSettingChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 chat];
  [v2 _reloadChatItemsForUnknownSendersFilteringSettingChange];
}

- (void)_chatItemsDidChange:(id)change
{
  v29 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      name = [changeCopy name];
      v25 = 136315394;
      v26 = "[CKConversationListCollectionViewController _chatItemsDidChange:]";
      v27 = 2112;
      v28 = name;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "ConversationListController: %s, notification.name: %@", &v25, 0x16u);
    }
  }

  object = [changeCopy object];
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  guid = [object guid];
  v10 = [conversationList conversationForExistingChatWithGUID:guid];

  conversationList2 = [(CKConversationListCollectionViewController *)self conversationList];
  LOBYTE(guid) = [conversationList2 loadingConversations];

  if ((guid & 1) == 0)
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

    else if (-[CKConversationListCollectionViewController _updateAddsTypingChatItem:](self, "_updateAddsTypingChatItem:", changeCopy) || ([changeCopy userInfo], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[CKConversationListCollectionViewController _updateRemovesTypingChatItem:](self, "_updateRemovesTypingChatItem:", v13), v13, v14))
    {
      [(CKConversationListCollectionViewController *)self updateContentsOfCellForConversation:v10 animated:1];
    }

    else
    {
      updater = [(CKConversationListCollectionViewController *)self updater];
      [updater setNeedsDeferredUpdateWithReason:@"chatItemsChanged"];
    }
  }

  [v10 resetCaches];
  if ([v10 isAdHocGroupConversation])
  {
    userInfo = [changeCopy userInfo];
    v17 = userInfo;
    if (!userInfo)
    {
LABEL_28:

      goto LABEL_29;
    }

    v18 = [userInfo valueForKey:*MEMORY[0x1E69A5750]];
    if (![v18 count])
    {
LABEL_27:

      goto LABEL_28;
    }

    chat = [v10 chat];
    chatItems = [chat chatItems];
    lastObject = [chatItems lastObject];

    v22 = objc_opt_class();
    if ([v22 isSubclassOfClass:objc_opt_class()])
    {
      LOBYTE(v23) = 0;
      if (!lastObject)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24 = objc_opt_class();
      v23 = [v24 isSubclassOfClass:objc_opt_class()] ^ 1;
      if (!lastObject)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    if ((v23 & 1) == 0 && ([lastObject isFromMe] & 1) == 0)
    {
      [v10 setNeedsUpdatedContactOrderForVisualIdentity];
      [(CKConversationListCollectionViewController *)self updateContentsOfCellForConversation:v10 animated:1];
    }

    goto LABEL_26;
  }

LABEL_29:
}

- (BOOL)_updateAddsTypingChatItem:(id)item
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  userInfo = [itemCopy userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69A5750]];

  if ([v5 count] == 1)
  {
    object = [itemCopy object];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    chatItems = [object chatItems];
    v8 = [chatItems objectsAtIndexes:v5];

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

- (BOOL)_updateRemovesTypingChatItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy objectForKey:*MEMORY[0x1E69A5760]];
  v5 = [itemCopy objectForKey:*MEMORY[0x1E69A5778]];
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

- (void)_chatUnreadCountDidChange:(id)change
{
  changeCopy = change;
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"unreadCountChanged"];

  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changeCopy object];
    [(CKConversationListCollectionViewController *)self _consumeSummaryOnUnreadCountChangeForChatIfNeeded:object2];
  }

  [(CKConversationListCollectionViewController *)self updateFilteringElementsWithReason:@"unread count changed"];
}

- (void)_chatParticipantsChangedNotification:(id)notification
{
  object = [notification object];
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  guid = [object guid];
  v6 = [conversationList conversationForExistingChatWithGUID:guid];

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

- (void)updateContentsOfCellForConversation:(id)conversation animated:(BOOL)animated
{
  animatedCopy = animated;
  conversationCopy = conversation;
  updater = [(CKConversationListCollectionViewController *)self updater];
  isHoldingUpdates = [updater isHoldingUpdates];

  if ((isHoldingUpdates & 1) == 0)
  {
    if ([conversationCopy isPinned])
    {
      v8 = 2;
    }

    else
    {
      v8 = 5;
    }

    v9 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:conversationCopy inSection:v8];
    [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v9 animated:animatedCopy];
  }
}

- (void)_conversationIsFilteredChangedNotification:(id)notification
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"conversationIsFilteredChanged"];
}

- (void)_conversationDisplayNameChangedNotification:(id)notification
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"conversationDisplayNameChanged"];
}

- (void)_conversationMuteDidChangeNotification:(id)notification
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"conversationMuteDidChanged"];
}

- (void)_conversationFilteringStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Filter Mode] Conversation Filtering state changed", buf, 2u);
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {
    [(CKConversationListCollectionViewController *)self updateFilteringElementsWithReason:@"filtering state changed"];
  }

  if ([(CKConversationListCollectionViewController *)self isRecentlyDeletedModal]|| [(CKConversationListCollectionViewController *)self isOscarModal])
  {
    navigationController = [(CKConversationListCollectionViewController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if (notificationCopy || CKIsFilterCategory([(CKConversationListCollectionViewController *)self filterMode]) && ![(CKConversationListCollectionViewController *)self _messageSpamFilteringEnabled])
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

    updater = [(CKConversationListCollectionViewController *)self updater];
    [updater setNeedsDeferredUpdateWithReason:@"filteringStateChanged"];

    [(CKConversationListCollectionViewController *)self updateNavigationItems];
  }
}

- (void)_conversationSpamFilteringStateChangedNotification:(id)notification
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {
    [MEMORY[0x1E69A8210] updateSMSFilterExtensionParams];
  }

  [(CKConversationListCollectionViewController *)self updateSMSSpamConversationsDisplayName];

  [(CKConversationListCollectionViewController *)self _conversationFilteringStateChangedNotification:0];
}

- (void)_conversationContactPhotosEnabledChangedNotification:(id)notification
{
  [(CKConversationListCollectionViewController *)self invalidateCellLayout];
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"contactPhotosEnabled"];
}

- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)notification
{
  v30 = *MEMORY[0x1E69E9840];
  object = [notification object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferGUID = [object transferGUID];
    if ([transferGUID length])
    {
      v24 = object;
      conversationList = [(CKConversationListCollectionViewController *)self conversationList];
      conversations = [conversationList conversations];
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = conversations;
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
            if ([v13 shouldReloadPreviewTextForGeneratedAdaptiveImageGlyphWithFileTransferGUID:transferGUID])
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
      updater = [(CKConversationListCollectionViewController *)self updater];
      isHoldingUpdates = [updater isHoldingUpdates];

      v19 = IMLogHandleForCategory();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (isHoldingUpdates)
      {
        if (v20)
        {
          [CKConversationListCollectionViewController _adaptiveImageGlyphWasGeneratedNotification:];
        }

        updater2 = [(CKConversationListCollectionViewController *)self updater];
        [updater2 setNeedsDeferredUpdateWithReason:@"adaptiveImageGlyphGenerated"];

        v22 = conversationList;
        object = v24;
      }

      else
      {
        if (v20)
        {
          [(CKConversationListCollectionViewController *)v16 _adaptiveImageGlyphWasGeneratedNotification:transferGUID, v19];
        }

        v22 = conversationList;
        object = v24;
        if ([v16 count])
        {
          [(CKConversationListCollectionViewController *)self updateContentsOfCellsWithItemIdentifiers:v16 animated:0];
        }
      }
    }
  }
}

- (void)_multiWayCallStateChanged:(id)changed
{
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "ConversationListController: _multiWayCallStateChanged", buf, 2u);
    }
  }

  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  loadingConversations = [conversationList loadingConversations];

  if ((loadingConversations & 1) == 0)
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

    updater = [(CKConversationListCollectionViewController *)self updater];
    [updater setNeedsDeferredUpdateWithReason:@"multiWayCallStateChanged"];
  }
}

- (void)_chatWatermarkDidChange:(id)change
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"chatWatermarkDidChange"];
}

- (void)_conversationListDidFinishLoadingConversations:(id)conversations
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"didFinishLoadingConversations"];

  [(CKConversationListCollectionViewController *)self _updateConversationListsAndSortIfEnabled];
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  loadedConversations = [conversationList loadedConversations];

  if (loadedConversations)
  {

    [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0];
  }
}

- (void)_contactStoreDidFinishLoadingNotification:(id)notification
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"contactStoreDidFinishLoading"];
}

- (void)_conversationListDidChange:(id)change
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"conversationListDidChange"];
}

- (void)_conversationMessageWasSent:(id)sent
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"messageWasSent"];
}

- (unint64_t)_sanitizedFilterMode:(unint64_t)mode
{
  if ([(CKConversationListCollectionViewController *)self _messageUnknownFilteringEnabled])
  {

    return [(CKConversationListCollectionViewController *)self _sanitizedFilterModeForFilterUnknownEnabled:mode];
  }

  else
  {

    return [(CKConversationListCollectionViewController *)self _sanitizedFilterModeForFilterUnknownDisabled:mode];
  }
}

- (unint64_t)_sanitizedFilterModeForFilterUnknownDisabled:(unint64_t)disabled
{
  if (disabled == 9)
  {
    if ([(CKConversationListCollectionViewController *)self isOscarModal]|| CKIsRunningInMacCatalyst())
    {
      return 9;
    }
  }

  else if (disabled == 7 && ([(CKConversationListCollectionViewController *)self isRecentlyDeletedModal]|| CKIsRunningInMacCatalyst()))
  {
    return 7;
  }

  return 0;
}

- (unint64_t)_sanitizedFilterModeForFilterUnknownEnabled:(unint64_t)enabled
{
  result = 1;
  if (enabled - 10 < 0x12)
  {
    return result;
  }

  if (enabled - 4 < 3)
  {
    v6 = ![(CKConversationListCollectionViewController *)self _messageSpamFilteringEnabled];
LABEL_5:
    if (v6)
    {
      return 1;
    }

    else
    {
      return enabled;
    }
  }

  if (!enabled)
  {
    return result;
  }

  if (enabled != 7)
  {
    if (enabled < 0x10)
    {
      return enabled;
    }

    v7 = [MEMORY[0x1E69A8210] isValidActiveFilterAction:enabled & 0xF subAction:enabled >> 4];
    v6 = ([(CKConversationListCollectionViewController *)self _messageSpamFilteringEnabled]& v7) == 0;
    goto LABEL_5;
  }

  if (![(CKConversationListCollectionViewController *)self isRecentlyDeletedModal]&& !CKShouldShowInboxView())
  {
    CKIsRunningInMacCatalyst();
  }

  return 7;
}

- (void)restoreFilterModesIfValid:(id)valid
{
  v8 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = validCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Restoring filtering modes: %@", &v6, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self addFilterModesIfValid:validCopy applyDefaultFallback:1];
}

- (void)setFilterMode:(unint64_t)mode
{
  v24 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {

    [(CKConversationListCollectionViewController *)self addFilterMode:mode];
  }

  else
  {
    filterMode = self->_filterMode;
    self->_filterMode = [(CKConversationListCollectionViewController *)self _sanitizedFilterMode:mode];
    delegate = [(CKConversationListCollectionViewController *)self delegate];
    [delegate updatedFilterMode];

    [(CKConversationListCollectionViewController *)self _configureForFilterMode:self->_filterMode];
    if (filterMode == 7)
    {
      [(CKConversationListCollectionViewController *)self setEditingMode:0];
    }

    if (filterMode != mode)
    {
      [(CKConversationListCollectionViewController *)self updateRefreshControlVisibility];
    }

    _getTitleForCurrentFilterMode = [(CKConversationListCollectionViewController *)self _getTitleForCurrentFilterMode];
    [(CKConversationListCollectionViewController *)self setTitle:_getTitleForCurrentFilterMode];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = IMConversationListFilterModeStringValue(mode);
        v12 = IMConversationListFilterModeStringValue(filterMode);
        v13 = IMConversationListFilterModeStringValue(self->_filterMode);
        _messageUnknownFilteringEnabled = [(CKConversationListCollectionViewController *)self _messageUnknownFilteringEnabled];
        v15 = @"NO";
        v16 = 138413058;
        v17 = v11;
        v18 = 2112;
        if (_messageUnknownFilteringEnabled)
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

- (void)_configureForFilterMode:(unint64_t)mode
{
  if (mode == 9)
  {

    [(CKConversationListCollectionViewController *)self configureForOscarFilter];
  }

  else if (mode == 7)
  {

    [(CKConversationListCollectionViewController *)self configureForRecentlyDeletedFilter];
  }

  else
  {
    if (!self->_isInitialAppearance)
    {
      searchController = [(CKConversationListCollectionViewController *)self searchController];
      navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
      [navigationItem setSearchController:searchController];

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
    fetchSMSFilterExtensionParams = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
    v8 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v8)
    {
      v9 = *v32;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(fetchSMSFilterExtensionParams);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          filterMode = [(CKConversationListCollectionViewController *)self filterMode];
          if (filterMode == [v11 filterMode])
          {
            v18 = IMSharedUtilitiesFrameworkBundle();
            folderName = [v11 folderName];
            v3 = [v18 localizedStringForKey:folderName value:&stru_1F04268F8 table:@"IMSharedUtilities"];

            goto LABEL_56;
          }
        }

        v8 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  filterMode2 = [(CKConversationListCollectionViewController *)self filterMode];
  if (filterMode2 <= 4)
  {
    if (filterMode2 > 2)
    {
      if (filterMode2 != 3)
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
      if (filterMode2 == 1)
      {
LABEL_50:
        v14 = CKFrameworkBundle();
        v15 = [v14 localizedStringForKey:@"MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
        goto LABEL_55;
      }

      if (filterMode2 != 2)
      {
LABEL_46:
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            filterMode3 = [(CKConversationListCollectionViewController *)self filterMode];
            _messageUnknownFilteringEnabled = [(CKConversationListCollectionViewController *)self _messageUnknownFilteringEnabled];
            _shouldShowInboxView = [(CKConversationListCollectionViewController *)self _shouldShowInboxView];
            *buf = 134218496;
            v36 = filterMode3;
            v37 = 1024;
            v38 = _messageUnknownFilteringEnabled;
            v39 = 1024;
            v40 = _shouldShowInboxView;
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

  if (filterMode2 <= 6)
  {
    if (filterMode2 == 5)
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

  if (filterMode2 == 7)
  {
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"RECENTLY_DELETED" value:&stru_1F04268F8 table:@"ChatKit"];
    goto LABEL_55;
  }

  if (filterMode2 == 8)
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

  if (filterMode2 != 9)
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
  conversations = [v3 conversations];
  [conversations enumerateObjectsUsingBlock:&__block_literal_global_623_0];
}

- (void)_handingPendingConversationDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  if (object)
  {
    v5 = object;
    object2 = [changeCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      conversationList = [(CKConversationListCollectionViewController *)self conversationList];
      pendingConversation = [conversationList pendingConversation];
      v10 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:pendingConversation inSection:4];

      [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v10 animated:0];
    }
  }
}

- (void)_resetMessageFiltering
{
  CKResetBlackholeEnabledCache();
  CKResetFilteringSettings();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:CKMessageFilteringChangedNotification[0] object:0];
}

- (id)collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  pathCopy = path;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v9 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v8];
  activityForNewScene = [v9 activityForNewScene];
  if (activityForNewScene)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DD300]) initWithUserActivity:activityForNewScene];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
      if (appearCopy)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      numberOfConversations = [(CKConversationListCollectionViewController *)self numberOfConversations];
      v10 = IMConversationListFilterModeStringValue([(CKConversationListCollectionViewController *)self filterMode]);
      collectionView = [(CKConversationListCollectionViewController *)self collectionView];
      *buf = 138413058;
      v80 = v8;
      v81 = 2048;
      v82 = numberOfConversations;
      v83 = 2112;
      v84 = v10;
      v85 = 2112;
      v86 = collectionView;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "viewWillAppear, animated=%@, numberOfChats:%tu filterMode:%@, collectionView:%@", buf, 0x2Au);
    }
  }

  v77.receiver = self;
  v77.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v77 viewWillAppear:appearCopy];
  [(CKConversationListCollectionViewController *)self setIsAppearing:1];
  macToolbarController = [(CKConversationListCollectionViewController *)self macToolbarController];
  if (macToolbarController)
  {
    v13 = [(CKConversationListCollectionViewController *)self conformsToProtocol:&unk_1F051C328];

    if (v13)
    {
      macToolbarController2 = [(CKConversationListCollectionViewController *)self macToolbarController];
      [macToolbarController2 setPrimaryItemProvider:self];

      macToolbarController3 = [(CKConversationListCollectionViewController *)self macToolbarController];
      [macToolbarController3 setShouldDrawPrimaryBlur:0];
    }
  }

  v67 = 1039;
  if (self->_isInitialAppearance)
  {
    searchController = [(CKConversationListCollectionViewController *)self searchController];
    searchBar = [searchController searchBar];

    [searchBar setDelegate:self];
    v18 = CKFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"SEARCH" value:&stru_1F04268F8 table:@"ChatKit"];
    [searchBar setPlaceholder:v19];

    [searchBar sizeToFit];
    navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
    searchController2 = [(CKConversationListCollectionViewController *)self searchController];
    [navigationItem setSearchController:searchController2];

    [(CKConversationListCollectionViewController *)self invalidateCellLayout];
    v22 = +[CKUIBehavior sharedBehaviors];
    LODWORD(searchController2) = [v22 conversationListShowsSearchOnAppear];

    if (searchController2)
    {
      navigationItem2 = [(CKConversationListCollectionViewController *)self navigationItem];
      [navigationItem2 setHidesSearchBarWhenScrolling:0];
    }

    else
    {
      navigationItem2 = +[CKUIBehavior sharedBehaviors];
      conversationListHidesSearchBarWhenScrolling = [navigationItem2 conversationListHidesSearchBarWhenScrolling];
      navigationItem3 = [(CKConversationListCollectionViewController *)self navigationItem];
      [navigationItem3 setHidesSearchBarWhenScrolling:conversationListHidesSearchBarWhenScrolling];
    }

    if (!CKIsRunningInMacCatalyst())
    {
      navigationController = [(CKConversationListCollectionViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar setPrefersLargeTitles:1];

      navigationItem4 = [(CKConversationListCollectionViewController *)self navigationItem];
      transparentNavBarAppearance = [(CKConversationListCollectionViewController *)self transparentNavBarAppearance];
      [navigationItem4 setScrollEdgeAppearance:transparentNavBarAppearance];
    }

    [(CKConversationListCollectionViewController *)self updateNavigationItems];
    [(CKConversationListCollectionViewController *)self _updateToolbarItems];
  }

  splitViewController = [(CKConversationListCollectionViewController *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  if (isCollapsed)
  {
    if ([(CKConversationListCollectionViewController *)self compositionWasSent])
    {
      searchController3 = [(CKConversationListCollectionViewController *)self searchController];
      isActive = [searchController3 isActive];

      if (isActive)
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
    lastSelectedConversationItemIdentifier = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v37 = [dataSource indexPathForItemIdentifier:lastSelectedConversationItemIdentifier];

    [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:0];
    if (v37)
    {
      if ([v37 section] == 2)
      {
        collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
        v39 = [collectionView2 cellForItemAtIndexPath:v37];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
          v41 = [collectionView3 cellForItemAtIndexPath:v37];

          pinnedConversationView = [v41 pinnedConversationView];
          [pinnedConversationView setDimmed:0];
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

      collectionView4 = [(CKConversationListCollectionViewController *)self collectionView];
      [collectionView4 deselectItemAtIndexPath:v37 animated:0];
    }

    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v72 = 0u;
    collectionView5 = [(CKConversationListCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView5 indexPathsForSelectedItems];

    v46 = [indexPathsForSelectedItems countByEnumeratingWithState:&v72 objects:v78 count:16];
    if (v46)
    {
      v47 = *v73;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v73 != v47)
          {
            objc_enumerationMutation(indexPathsForSelectedItems);
          }

          v49 = *(*(&v72 + 1) + 8 * i);
          if (([v49 isEqual:v37] & 1) == 0)
          {
            collectionView6 = [(CKConversationListCollectionViewController *)self collectionView];
            [collectionView6 deselectItemAtIndexPath:v49 animated:appearCopy];

            if ([v49 section] == 2)
            {
              collectionView7 = [(CKConversationListCollectionViewController *)self collectionView];
              v52 = [collectionView7 cellForItemAtIndexPath:v49];

              pinnedConversationView2 = [v52 pinnedConversationView];
              [pinnedConversationView2 setDimmed:0];
            }
          }
        }

        v46 = [indexPathsForSelectedItems countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v46);
    }
  }

  if ((*(&self->super.super.super.super.isa + v68) & 1) == 0 && [(CKConversationListCollectionViewController *)self _shouldResizeNavigationBar])
  {
    navigationController2 = [(CKConversationListCollectionViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 sizeToFit];
  }

  tipKitQueue = [(CKConversationListCollectionViewController *)self tipKitQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CKConversationListCollectionViewController_viewWillAppear___block_invoke_723;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(tipKitQueue, block);

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isSuspended = [mEMORY[0x1E69DC668] isSuspended];

  if ((isSuspended & 1) == 0)
  {
    [(CKConversationListCollectionViewController *)self startTipCellAnimatingIfNecessary];
  }

  navigationController3 = [(CKConversationListCollectionViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  v61 = +[CKUIBehavior sharedBehaviors];
  theme = [v61 theme];
  [navigationBar3 setBarStyle:{objc_msgSend(theme, "navBarStyle")}];

  [(CKConversationListCollectionViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(CKConversationListCollectionViewController *)self _updateInsets];
  [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
  [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:0];
  if (self->_searchResultsController)
  {
    searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
    [searchResultsController viewWillAppear:appearCopy];
  }

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __61__CKConversationListCollectionViewController_viewWillAppear___block_invoke_2;
  v70[3] = &unk_1E72EBA18;
  v70[4] = self;
  [mEMORY[0x1E69A5AF8] updateRecoverableMessagesMetadataSynchronously:0 completionHandler:v70];

  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    [(CKConversationListCollectionViewController *)self recentlyDeletedViewWillAppear:appearCopy];
  }

  else if ([(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    [(CKConversationListCollectionViewController *)self oscarViewWillAppear:appearCopy];
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
  navigationController4 = [(CKConversationListCollectionViewController *)self navigationController];
  navigationBar4 = [navigationController4 navigationBar];
  [navigationBar4 setTintColor:0];
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v38 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(32);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (appearCopy)
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
    if (appearCopy)
    {
      v7 = @"YES";
    }

    v25 = v7;
    _CKLog();
  }

  self->_isVisible = 1;
  v29.receiver = self;
  v29.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v29 viewDidAppear:appearCopy, v25];
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView flashScrollIndicators];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  if (__CurrentTestName && ([__CurrentTestName rangeOfString:@"ShowMessages"] != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(__CurrentTestName, "isEqualToString:", @"ScrollTranscript") & 1) != 0 || (objc_msgSend(__CurrentTestName, "isEqualToString:", @"ScrollTranscriptWebView") & 1) != 0 || (objc_msgSend(__CurrentTestName, "isEqualToString:", @"ScrollTranscriptEmoji") & 1) != 0 || objc_msgSend(__CurrentTestName, "isEqualToString:", @"ScrollTranscriptFullScreen")))
  {
    v10 = MEMORY[0x1E69DDA98];
    if (objc_opt_respondsToSelector())
    {
      [*v10 didShowTranscriptList];
    }
  }

  v11 = +[CKUIBehavior sharedBehaviors];
  conversationListHidesSearchBarWhenScrolling = [v11 conversationListHidesSearchBarWhenScrolling];
  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  [navigationItem setHidesSearchBarWhenScrolling:conversationListHidesSearchBarWhenScrolling];

  [(CKConversationListCollectionViewController *)self setIsAppearing:0];
  [(CKConversationListCollectionViewController *)self updateSyncProgressIfNeeded];
  [(CKConversationListCollectionViewController *)self updateBannerVisualEffectGroup];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CKConversationListCollectionViewController_viewDidAppear___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  deferredSearchQuery = [(CKConversationListCollectionViewController *)self deferredSearchQuery];

  if (deferredSearchQuery)
  {
    deferredSearchQuery2 = [(CKConversationListCollectionViewController *)self deferredSearchQuery];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__CKConversationListCollectionViewController_viewDidAppear___block_invoke_2;
    v26[3] = &unk_1E72EBA18;
    v27 = deferredSearchQuery2;
    v16 = deferredSearchQuery2;
    [(CKConversationListCollectionViewController *)self performSearch:v16 completion:v26];
    [(CKConversationListCollectionViewController *)self setDeferredSearchQuery:0];
  }

  [(CKConversationListCollectionViewController *)self setAppIntentsDataSource];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
      keyWindow2 = [MEMORY[0x1E69DD2E8] keyWindow];
      firstResponder = [keyWindow2 firstResponder];
      keyWindow3 = [MEMORY[0x1E69DD2E8] keyWindow];
      firstResponder2 = [keyWindow3 firstResponder];
      _isPinningInputViews = [firstResponder2 _isPinningInputViews];
      v24 = @"NO";
      *buf = 136315906;
      v31 = "[CKConversationListCollectionViewController viewDidAppear:]";
      v32 = 2112;
      v33 = keyWindow;
      if (_isPinningInputViews)
      {
        v24 = @"YES";
      }

      v34 = 2112;
      v35 = firstResponder;
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(32);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (disappearCopy)
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
    if (disappearCopy)
    {
      v7 = @"YES";
    }

    v10 = v7;
    _CKLog();
  }

  if (self->_isVisible)
  {
    updater = [(CKConversationListCollectionViewController *)self updater];
    [updater beginHoldingUpdatesForReason:@"viewVisiblity"];
  }

  self->_isVisible = 0;
  tipKitQueue = [(CKConversationListCollectionViewController *)self tipKitQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CKConversationListCollectionViewController_viewWillDisappear___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(tipKitQueue, block);

  [(CKConversationListCollectionViewController *)self stopTipCellAnimatingIfNecessary];
  v11.receiver = self;
  v11.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v11 viewWillDisappear:disappearCopy];
}

- (void)applicationWillSuspend
{
  v7.receiver = self;
  v7.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v7 applicationWillSuspend];
  if (!CKIsRunningInMacCatalyst())
  {
    searchController = [(CKConversationListCollectionViewController *)self searchController];
    isActive = [searchController isActive];

    if (isActive)
    {
      searchController2 = [(CKConversationListCollectionViewController *)self searchController];
      [searchController2 setActive:0];
    }

    searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
    [searchResultsController cancelCurrentQuery];
  }
}

- (void)stopTipCellAnimatingIfNecessary
{
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v4 = +[CKTipKitOnboardingCollectionViewCell reuseIdentifier];
  v7 = [dataSource indexPathForItemIdentifier:v4];

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 didEndDisplaying];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = CKConversationListCollectionViewController;
  [(CKConversationListCollectionViewController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(CKConversationListCollectionViewController *)self view];
  [view frame];
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
    [coordinatorCopy animateAlongsideTransition:v13 completion:v12];
  }
}

- (void)_keyboardWillShow:(id)show
{
  showCopy = show;
  userInfo = [showCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69DDF98]];
  [v6 CGRectValue];
  v8 = v7;

  userInfo2 = [showCopy userInfo];

  v10 = [userInfo2 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v10 CGRectValue];
  v12 = v11;

  view = [(CKConversationListCollectionViewController *)self view];
  window = [view window];
  [window bounds];
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
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    if ([firstObject section] != 4)
    {
      collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
      v6 = [collectionView2 numberOfItemsInSection:{objc_msgSend(firstObject, "section")}];

      if (v6)
      {
        if ([(CKConversationListCollectionViewController *)self shouldScrollCollectionViewForCellSelection:firstObject])
        {
          collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
          [collectionView3 scrollToItemAtIndexPath:firstObject atScrollPosition:1 animated:1];
        }
      }
    }
  }
}

- (BOOL)shouldScrollCollectionViewForCellSelection:(id)selection
{
  selectionCopy = selection;
  lastVisibleIndexPathInCollectionView = [(CKConversationListCollectionViewController *)self lastVisibleIndexPathInCollectionView];
  firstVisibleIndexPathInCollectionView = [(CKConversationListCollectionViewController *)self firstVisibleIndexPathInCollectionView];
  v7 = [(CKConversationListCollectionViewController *)self distanceBetweenConversationIndexPath:selectionCopy andIndexPath:lastVisibleIndexPathInCollectionView];
  v8 = [(CKConversationListCollectionViewController *)self distanceBetweenConversationIndexPath:selectionCopy andIndexPath:firstVisibleIndexPathInCollectionView];
  if (v7 < 2 || v8 <= 1)
  {
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    v9 = [collectionView numberOfItemsInSection:{objc_msgSend(selectionCopy, "section")}] > 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)lastVisibleIndexPathInCollectionView
{
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v4 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

  lastObject = [v4 lastObject];

  return lastObject;
}

- (id)firstVisibleIndexPathInCollectionView
{
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v4 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

  firstObject = [v4 firstObject];

  return firstObject;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];

  v5 = scrollCopy;
  if (collectionView == scrollCopy)
  {
    [(CKConversationListCollectionViewController *)self updateBannerConstraintsForScrollViewDidScroll:scrollCopy];
    hasActivePinnedConversationDropSession = [(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession];
    v5 = scrollCopy;
    if (hasActivePinnedConversationDropSession)
    {
      [(CKConversationListCollectionViewController *)self _ck_setNeedsUpdateOfMultitaskingDragExclusionRects];
      v5 = scrollCopy;
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

- (void)_updateLargeTitleDisplayModeWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  _shouldAllowLargeTitles = [(CKConversationListCollectionViewController *)self _shouldAllowLargeTitles];
  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  largeTitleDisplayMode = [navigationItem largeTitleDisplayMode];

  if (_shouldAllowLargeTitles)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (largeTitleDisplayMode != v8)
  {
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView contentInset];
    v11 = v10;

    if (animationCopy)
    {
      navigationController = [(CKConversationListCollectionViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];

      _restingHeights = [navigationBar _restingHeights];
      v15 = [navigationBar snapshotViewAfterScreenUpdates:0];
      collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
      backgroundColor = [collectionView2 backgroundColor];
      [v15 setBackgroundColor:backgroundColor];

      [navigationBar frame];
      [v15 setFrame:?];
      navigationController2 = [(CKConversationListCollectionViewController *)self navigationController];
      view = [navigationController2 view];
      [view addSubview:v15];
    }

    else
    {
      _restingHeights = 0;
      v15 = 0;
    }

    navigationItem2 = [(CKConversationListCollectionViewController *)self navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:v8];

    navigationItem3 = [(CKConversationListCollectionViewController *)self navigationItem];
    searchController = [navigationItem3 searchController];
    isActive = [searchController isActive];

    if ((isActive & 1) == 0)
    {
      navigationItem4 = [(CKConversationListCollectionViewController *)self navigationItem];
      searchController2 = [navigationItem4 searchController];

      navigationItem5 = [(CKConversationListCollectionViewController *)self navigationItem];
      [navigationItem5 setSearchController:0];

      navigationController3 = [(CKConversationListCollectionViewController *)self navigationController];
      navigationBar2 = [navigationController3 navigationBar];
      [navigationBar2 setNeedsLayout];

      navigationController4 = [(CKConversationListCollectionViewController *)self navigationController];
      navigationBar3 = [navigationController4 navigationBar];
      [navigationBar3 sizeToFit];

      navigationItem6 = [(CKConversationListCollectionViewController *)self navigationItem];
      [navigationItem6 setSearchController:searchController2];
    }

    if (!animationCopy)
    {
      goto LABEL_17;
    }

    collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView3 contentInset];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    if (largeTitleDisplayMode != 0 || _shouldAllowLargeTitles)
    {
      if (largeTitleDisplayMode != 2 || !_shouldAllowLargeTitles)
      {
LABEL_16:
        collectionView4 = [(CKConversationListCollectionViewController *)self collectionView];
        [collectionView4 setContentInset:{v34, v36, v38, v40}];

        collectionView5 = [(CKConversationListCollectionViewController *)self collectionView];
        [collectionView5 contentInset];
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

      firstObject = [_restingHeights firstObject];
    }

    else
    {
      firstObject = [_restingHeights lastObject];
    }

    v42 = firstObject;
    [firstObject floatValue];
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
  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  [navigationBar bounds];
  [navigationBar sizeThatFits:{v4, v5}];
  v7 = v6;
  [navigationBar bounds];
  LOBYTE(navigationController) = v7 < v8;

  return navigationController;
}

- (void)_updateSearchControllerForConversationListBelowMacSnapWidth:(BOOL)width
{
  widthCopy = width;
  if (CKIsRunningInMacCatalyst())
  {
    searchController = [(CKConversationListCollectionViewController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar setHidden:{-[CKConversationListCollectionViewController isBelowMacSnapToMinWidth](self, "isBelowMacSnapToMinWidth")}];

    if (!widthCopy)
    {
      return;
    }

    navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
    [navigationItem setSearchController:0];
  }

  else
  {
    if (self->_isInitialAppearance)
    {
      return;
    }

    navigationItem2 = [(CKConversationListCollectionViewController *)self navigationItem];
    searchController2 = [navigationItem2 searchController];

    if (searchController2)
    {
      return;
    }

    navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
    searchController3 = [(CKConversationListCollectionViewController *)self searchController];
    [navigationItem setSearchController:searchController3];
  }
}

- (void)commitPinnedConversationsForEditingPins
{
  v21 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    mEMORY[0x1E69A5C38] = [MEMORY[0x1E69A5C38] sharedInstance];
    pinnedConversationIdentifiers = [mEMORY[0x1E69A5C38] pinnedConversationIdentifiers];

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    frozenPinnedConversations = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [frozenPinnedConversations countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(frozenPinnedConversations);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          pinningIdentifier = [v12 pinningIdentifier];
          [v5 addObject:pinningIdentifier];

          chat = [v12 chat];
          [v6 addObject:chat];
        }

        v9 = [frozenPinnedConversations countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if (pinnedConversationIdentifiers != v5 && ([pinnedConversationIdentifiers isEqualToArray:v5]& 1) == 0)
    {
      [(CKConversationListCollectionViewController *)self setPinningInteractionMethod:2];
      mEMORY[0x1E69A5C38]2 = [MEMORY[0x1E69A5C38] sharedInstance];
      [mEMORY[0x1E69A5C38]2 setPinnedChats:v6 withUpdateReason:*MEMORY[0x1E69A5A30]];
    }
  }

  else
  {
    pinnedConversationIdentifiers = IMLogHandleForCategory();
    if (os_log_type_enabled(pinnedConversationIdentifiers, OS_LOG_TYPE_ERROR))
    {
      [CKConversationListCollectionViewController commitPinnedConversationsForEditingPins];
    }
  }
}

- (BOOL)_canShowCatalystFiltersNavigation
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled & 1) != 0 || (-[CKConversationListCollectionViewController searchController](self, "searchController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 showsSearchResultsController], v5, (v6) || -[CKConversationListCollectionViewController isBelowMacSnapToMinWidth](self, "isBelowMacSnapToMinWidth"))
  {
    LOBYTE(filterMode) = 0;
  }

  else
  {
    filterMode = [(CKConversationListCollectionViewController *)self filterMode];
    if (filterMode)
    {
      LOBYTE(filterMode) = [(CKConversationListCollectionViewController *)self filterMode]!= 1;
    }
  }

  return filterMode;
}

- (void)catalystFiltersNavigationBackButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate catalystFiltersNavigationBackButtonTapped:tappedCopy];
}

- (void)doneButtonTapped:(id)tapped
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

- (void)cancelButtonTapped:(id)tapped
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

- (void)selectAllButtonTapped:(id)tapped
{
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v5 = [indexPathsForSelectedItems count];
  numberOfConversations = [(CKConversationListCollectionViewController *)self numberOfConversations];
  collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
  v8 = [collectionView2 numberOfItemsInSection:5];

  if (v5 == numberOfConversations)
  {
    if (v8 >= 1)
    {
      v14 = 0;
      do
      {
        collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
        v16 = [MEMORY[0x1E696AC88] indexPathForRow:v14 inSection:5];
        [collectionView3 deselectItemAtIndexPath:v16 animated:0];

        ++v14;
        collectionView4 = [(CKConversationListCollectionViewController *)self collectionView];
        v18 = [collectionView4 numberOfItemsInSection:5];
      }

      while (v14 < v18);
    }
  }

  else if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      collectionView5 = [(CKConversationListCollectionViewController *)self collectionView];
      v11 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:5];
      [collectionView5 selectItemAtIndexPath:v11 animated:0 scrollPosition:0];

      ++v9;
      collectionView6 = [(CKConversationListCollectionViewController *)self collectionView];
      v13 = [collectionView6 numberOfItemsInSection:5];
    }

    while (v9 < v13);
  }

  v19 = v5 != numberOfConversations;
  selectAllButtonItem = [(CKConversationListCollectionViewController *)self selectAllButtonItem];
  [(CKConversationListCollectionViewController *)self configureSelectionBarButtonItem:selectAllButtonItem usingStyle:v19];

  [(CKConversationListCollectionViewController *)self _updateToolbarItems];
}

- (void)configureSelectionBarButtonItem:(id)item usingStyle:(unint64_t)style
{
  itemCopy = item;
  if (style)
  {
    if (style != 1)
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
  [itemCopy setTitle:v7];

LABEL_6:
}

- (void)backButtonPressed
{
  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v5 = [viewControllers count];

  if (v5 >= 2)
  {
    navigationController2 = [(CKConversationListCollectionViewController *)self navigationController];
    v6 = [navigationController2 popViewControllerAnimated:1];
  }
}

- (UIButton)macVirtualComposeButton
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

  if (isConversationListRefreshEnabled)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DC738]);
  }

  else
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    useMacToolbar = [v6 useMacToolbar];

    if (useMacToolbar)
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
      useMacToolbar2 = [v13 useMacToolbar];

      if ((useMacToolbar2 & 1) == 0)
      {
        v15 = [MEMORY[0x1E69DC738] buttonWithType:0];
        v16 = self->_macVirtualComposeButton;
        self->_macVirtualComposeButton = v15;

        [(UIButton *)self->_macVirtualComposeButton setContentMode:4];
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        [(UIButton *)self->_macVirtualComposeButton setTintColor:labelColor];

        [(UIButton *)self->_macVirtualComposeButton setBackgroundColor:0];
        imageView = [(UIButton *)self->_macVirtualComposeButton imageView];
        [imageView setContentMode:1];

        layer = [(UIButton *)self->_macVirtualComposeButton layer];
        LODWORD(v20) = 1036831949;
        [layer setShadowOpacity:v20];

        layer2 = [(UIButton *)self->_macVirtualComposeButton layer];
        [layer2 setShadowRadius:1.0];

        if (useMacToolbar)
        {
          v22 = 5.0;
        }

        else
        {
          v22 = 3.0;
        }

        layer3 = [(UIButton *)self->_macVirtualComposeButton layer];
        [layer3 setCornerRadius:v22];

        layer4 = [(UIButton *)self->_macVirtualComposeButton layer];
        [layer4 setShadowOffset:{0.0, 1.0}];
      }

      [(UIButton *)self->_macVirtualComposeButton addTarget:self action:sel_composeButtonClicked_ forControlEvents:64];
      macVirtualComposeButton = self->_macVirtualComposeButton;
    }

    [(UIButton *)macVirtualComposeButton setImage:v11 forState:0];
    v5 = self->_macVirtualComposeButton;
  }

  return v5;
}

- (id)_editNicknameMenu:(id)menu
{
  menuCopy = menu;
  objc_initWeak(&location, self);
  v5 = [CKNameAndPhotoMenuElement menuElementWithNickname:menuCopy];
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isNameAndPhotoC3Enabled = [mEMORY[0x1E69A8070] isNameAndPhotoC3Enabled];

  if (isNameAndPhotoC3Enabled)
  {
    mEMORY[0x1E69A8108] = [MEMORY[0x1E69A8108] sharedInstance];
    sharingEnabled = [mEMORY[0x1E69A8108] sharingEnabled];

    if (sharingEnabled)
    {
      if (IMSharedHelperNickNameEnabled())
      {
        mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
        [mEMORY[0x1E69A5C10] fetchPersonalNicknameWithCompletion:&__block_literal_global_792_0];

        mEMORY[0x1E69A5C10]2 = [MEMORY[0x1E69A5C10] sharedInstance];
        personalNickname = [mEMORY[0x1E69A5C10]2 personalNickname];

        firstName = [personalNickname firstName];
        if ([firstName length])
        {
        }

        else
        {
          lastName = [personalNickname lastName];
          v78 = [lastName length];

          if (!v78)
          {
            v12 = 1;
            goto LABEL_33;
          }
        }

        v79 = [(CKConversationListCollectionViewController *)self _editNicknameMenu:personalNickname];
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

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v24 = v12 | [mEMORY[0x1E69A8070]2 isNameAndPhotoC3Enabled] ^ 1;

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

  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070]3 isModernFilteringEnabled];

  if ((isModernFilteringEnabled & 1) == 0 && ![(CKConversationListCollectionViewController *)self _shouldShowInboxView])
  {
    [(CKConversationListCollectionViewController *)self _configureSecondarySubMenuInParentMenuItems:v3];
  }

  if ([(CKConversationListCollectionViewController *)self _shouldShowInboxView]&& IMSharedHelperMessageSIMFilteringEnabled())
  {
    _simFilterSubMenu = [(CKConversationListCollectionViewController *)self _simFilterSubMenu];
    [v3 addObject:_simFilterSubMenu];
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

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v57 = [standardUserDefaults BOOLForKey:@"ShowCarrierPigeonNotificationHelpers"];

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
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"showDebugMenu"];

  return v5;
}

- (void)_configureSecondarySubMenuInParentMenuItems:(id)items
{
  itemsCopy = items;
  v4 = objc_opt_new();
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  v6 = [conversationList conversationsForFilterMode:9];
  v7 = [v6 count];

  if (v7)
  {
    showOscarModalAction = [(CKConversationListCollectionViewController *)self showOscarModalAction];
    [v4 addObject:showOscarModalAction];
  }

  conversationList2 = [(CKConversationListCollectionViewController *)self conversationList];
  v10 = [conversationList2 conversationsForFilterMode:7];
  v11 = [v10 count];

  if (v11)
  {
    showRecentlyDeletedModalAction = [(CKConversationListCollectionViewController *)self showRecentlyDeletedModalAction];
    [v4 addObject:showRecentlyDeletedModalAction];
  }

  if ([v4 count])
  {
    v13 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v4];
    [itemsCopy addObject:v13];
  }
}

- (void)editNameAndPhotoMenuItemSelected
{
  mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
  iCloudSignedInToUseNicknames = [mEMORY[0x1E69A5C10] iCloudSignedInToUseNicknames];

  if ((iCloudSignedInToUseNicknames & 1) == 0)
  {
    [(CKConversationListCollectionViewController *)self showiCloudNotSignedInAlertForNicknames];
    goto LABEL_5;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if (([mEMORY[0x1E69A8070] isAllowMultiplePhoneNumbersSNaPEnabled] & 1) == 0)
  {
    multiplePhoneNumbersTiedToAppleID = [MEMORY[0x1E69A5C10] multiplePhoneNumbersTiedToAppleID];

    if (!multiplePhoneNumbersTiedToAppleID)
    {
      goto LABEL_8;
    }

    [(CKConversationListCollectionViewController *)self showMultiplePhoneNumbersAlertForNicknames];
LABEL_5:
    _meCardSharingState = [(CKConversationListCollectionViewController *)self _meCardSharingState];
    [_meCardSharingState setSharingEnabled:0];

    goto LABEL_9;
  }

LABEL_8:
  [(CKConversationListCollectionViewController *)self showMeCardViewController];
LABEL_9:
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A73C8]];
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
  simFilterIndex = [v9 simFilterIndex];

  if (simFilterIndex == -1)
  {
    [v8 setState:1];
  }

  [v3 addObject:v8];
  _simFilterActionsForActiveSubscriptions = [(CKConversationListCollectionViewController *)self _simFilterActionsForActiveSubscriptions];
  [v3 addObjectsFromArray:_simFilterActionsForActiveSubscriptions];

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
  mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
  subscriptions = [ctSubscriptionInfo subscriptions];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = subscriptions;
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
          label = [v9 label];
          v12 = [v10 localizedStringForKey:label value:&stru_1F04268F8 table:@"ChatKit"];

          objc_initWeak(&location, self);
          v13 = MEMORY[0x1E69DC628];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __85__CKConversationListCollectionViewController__simFilterActionsForActiveSubscriptions__block_invoke;
          v22[3] = &unk_1E72EBF48;
          objc_copyWeak(&v23, &location);
          v22[4] = v9;
          v14 = [v13 actionWithTitle:v12 image:0 identifier:0 handler:v22];
          conversationList = [(CKConversationListCollectionViewController *)self conversationList];
          [v14 setState:{objc_msgSend(conversationList, "simFilterIndex") == objc_msgSend(v9, "slotID")}];

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
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate dismissKeyboardIfVisible];

  if ([(CKConversationListCollectionViewController *)self isShowingSwipeDeleteConfirmation])
  {
    [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:1];
  }

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A74F8]];
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
    conversationListOptionsButtonImageName = [v4 conversationListOptionsButtonImageName];

    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:conversationListOptionsButtonImageName];
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

- (unint64_t)_preferredEditingMode:(unint64_t)mode
{
  if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
  {
    return 1;
  }

  else
  {
    return mode;
  }
}

- (void)setEditingMode:(unint64_t)mode animated:(BOOL)animated shouldUpdate:(BOOL)update shouldInvalidateCellLayout:(BOOL)layout
{
  layoutCopy = layout;
  updateCopy = update;
  animatedCopy = animated;
  v10 = [(CKConversationListCollectionViewController *)self _preferredEditingMode:mode];
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
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  _copyForEnumerating = [visibleCells _copyForEnumerating];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __110__CKConversationListCollectionViewController_setEditingMode_animated_shouldUpdate_shouldInvalidateCellLayout___block_invoke;
  v34[3] = &unk_1E72F5480;
  v34[4] = self;
  v34[5] = v12;
  v35 = animatedCopy;
  [_copyForEnumerating enumerateObjectsUsingBlock:v34];
  if (updateCopy)
  {
    [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:animatedCopy];
  }

  collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView2 setAllowsSelectionDuringEditing:v12 != 2];

  collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
  [collectionView3 setAllowsMultipleSelectionDuringEditing:v12 != 2];

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
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

      if (isModernFilteringEnabled)
      {
        _getTitleForCurrentFilterMode = [(CKConversationListCollectionViewController *)self _getTitleForCurrentFilterMode];
        [(CKConversationListCollectionViewController *)self setTitle:_getTitleForCurrentFilterMode];

        [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
      }

      selfCopy2 = self;
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

      [(CKConversationListCollectionViewController *)self setEditing:1 animated:animatedCopy shouldInvalidateCellLayout:layoutCopy];
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
        collectionView4 = [(CKConversationListCollectionViewController *)self collectionView];
        [collectionView4 setAllowsMultipleSelection:0];
      }

      if (editingMode == 2)
      {
        [(CKConversationListCollectionViewController *)self _unfreezeConversations];
        if (updateCopy)
        {
          [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
        }

        mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isModernFilteringEnabled2 = [mEMORY[0x1E69A8070]2 isModernFilteringEnabled];

        if ((isModernFilteringEnabled2 & 1) == 0)
        {
          _getTitleForCurrentFilterMode2 = [(CKConversationListCollectionViewController *)self _getTitleForCurrentFilterMode];
          [(CKConversationListCollectionViewController *)self setTitle:_getTitleForCurrentFilterMode2];

          [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
        }
      }

      selfCopy2 = self;
      v24 = 0;
LABEL_35:
      [(CKConversationListCollectionViewController *)selfCopy2 setEditing:v24 animated:animatedCopy];
      break;
  }

  [(CKConversationListCollectionViewController *)self dismissSearchIfNeeded];
  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled3 = [mEMORY[0x1E69A8070]3 isModernFilteringEnabled];

  if (isModernFilteringEnabled3)
  {
    [(CKConversationListCollectionViewController *)self updateConversationListTitle];
    [(CKConversationListCollectionViewController *)self _updateNavbarLayoutIfNeeded];
  }

  [(CKConversationListCollectionViewController *)self updateSharedProfileNavigationBarPaletteVisibility];
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate conversationListWillBeginEditing:{-[CKConversationListCollectionViewController editingMode](self, "editingMode") != 0}];
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated shouldInvalidateCellLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  editingCopy = editing;
  if ([(CKConversationListCollectionViewController *)self isEditing]!= editing)
  {
    v13.receiver = self;
    v13.super_class = CKConversationListCollectionViewController;
    [(CKConversationListCollectionViewController *)&v13 setEditing:editingCopy animated:animatedCopy];
    if (!editingCopy && [(CKConversationListCollectionViewController *)self editingMode])
    {
      [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setEditing:editingCopy animated:animatedCopy];

    v10 = +[CKUIBehavior sharedBehaviors];
    selectNewConversationOnDeletion = [v10 selectNewConversationOnDeletion];

    if (selectNewConversationOnDeletion && !editingCopy)
    {
      [(CKConversationListCollectionViewController *)self updateConversationSelection];
    }

    if (editingCopy)
    {
      updater = [(CKConversationListCollectionViewController *)self updater];
      [updater beginHoldingUpdatesForReason:@"editMode"];
    }

    else
    {
      [(CKConversationListCollectionViewController *)self _endHoldingUpdatesForBatchEditing:animatedCopy];
      [(CKConversationListCollectionViewController *)self updateSyncProgressIfNeeded];
    }

    [(CKConversationListCollectionViewController *)self _updateForCurrentEditingStateAnimated:animatedCopy shouldInvalidateCellLayout:layoutCopy];
  }
}

- (void)_updateForCurrentEditingStateAnimated:(BOOL)animated shouldInvalidateCellLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  if ([(CKConversationListCollectionViewController *)self filterMode]== 7 || [(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    v7 = 0;
  }

  else
  {
    [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:animatedCopy];
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
  shouldShowToolbar = [(CKConversationListCollectionViewController *)self shouldShowToolbar];
  if (shouldShowToolbar)
  {
    [(CKConversationListCollectionViewController *)self _updateToolbarItems];
  }

  syncStatusCoordinator = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
  isSyncViewCurrentlyVisible = [syncStatusCoordinator isSyncViewCurrentlyVisible];

  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  [navigationController setToolbarHidden:!shouldShowToolbar animated:isSyncViewCurrentlyVisible ^ 1u];

  [(CKConversationListCollectionViewController *)self updateNavigationItems];
  if (layoutCopy)
  {

    [(CKConversationListCollectionViewController *)self invalidateCellLayout];
  }
}

- (void)configureSearchBarEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];

  searchTextField = [searchBar searchTextField];
  [searchTextField setEnabled:enabledCopy];
}

- (void)_endHoldingUpdatesForBatchEditing:(BOOL)editing
{
  if (editing)
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
    updater = [(CKConversationListCollectionViewController *)self updater];
    [updater endAllHoldsOnUpdatesForReason:@"editMode" updateTriggeredIfNotHeldShouldBeDeferred:1];
  }
}

void __80__CKConversationListCollectionViewController__endHoldingUpdatesForBatchEditing___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 endAllHoldsOnUpdatesForReason:@"editMode" updateTriggeredIfNotHeldShouldBeDeferred:1];
}

- (void)composeButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:0];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  filterMode = [(CKConversationListCollectionViewController *)self filterMode];
  if (isModernFilteringEnabled)
  {
    if (filterMode == [MEMORY[0x1E69A8080] defaultPrimaryFilterMode])
    {
      goto LABEL_8;
    }

    splitViewController = [(CKConversationListCollectionViewController *)self splitViewController];
    isCollapsed = [splitViewController isCollapsed];

    if (isCollapsed)
    {
      goto LABEL_8;
    }

LABEL_7:
    delegate = [(CKConversationListCollectionViewController *)self delegate];
    [delegate catalystFiltersNavigationBackButtonTapped:clickedCopy];

    goto LABEL_8;
  }

  if (filterMode == 7 || [(CKConversationListCollectionViewController *)self filterMode]== 9)
  {
    goto LABEL_7;
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isAnimatingMessageSend = [WeakRetained isAnimatingMessageSend];

  if (isAnimatingMessageSend)
  {
    if (IMOSLoggingEnabled())
    {
      collectionView = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(collectionView, OS_LOG_TYPE_INFO))
      {
        v23 = 0;
        v14 = "Compose button selected during an active message send animation, ignoring.";
        v15 = &v23;
LABEL_16:
        _os_log_impl(&dword_19020E000, collectionView, OS_LOG_TYPE_INFO, v14, v15, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }
  }

  else if ([(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
  {
    if (IMOSLoggingEnabled())
    {
      collectionView = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(collectionView, OS_LOG_TYPE_INFO))
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
      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070]2 isModernSplitViewControllerEnabled];

      if ((isModernSplitViewControllerEnabled & 1) == 0)
      {
        splitViewController2 = [(CKConversationListCollectionViewController *)self splitViewController];
        [splitViewController2 hideColumn:0];
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
      collectionView = [(CKConversationListCollectionViewController *)self collectionView];
      [collectionView __ck_scrollToTop:1];
      goto LABEL_22;
    }
  }
}

- (void)dismissSearchIfNeeded
{
  searchController = [(CKConversationListCollectionViewController *)self searchController];
  isActive = [searchController isActive];

  if (isActive)
  {
    searchController2 = [(CKConversationListCollectionViewController *)self searchController];
    [searchController2 setActive:0];

    searchController3 = [(CKConversationListCollectionViewController *)self searchController];
    [searchController3 setShowsSearchResultsController:0];
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

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v4) = [mEMORY[0x1E69A8070] isNameAndPhotoC3Enabled];

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

- (void)addToContactsButtonTappedForCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v5 = [collectionView indexPathForCell:cellCopy];

  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:v5];

  v8 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v7];
  chat = [v8 chat];
  allowedByScreenTime = [chat allowedByScreenTime];

  if ((allowedByScreenTime & 1) == 0)
  {
    if ([(CKConversationListCollectionViewController *)self shouldShowAlertForRemotelyManagedUser])
    {
      v11 = [(CKConversationListCollectionViewController *)self getAddToContactsRemoteAlertWithConversation:v8 sender:cellCopy];
      [(CKConversationListCollectionViewController *)self presentViewController:v11 animated:1 completion:0];
    }

    else
    {
      [CKScreenTimeHelper addToContactsAction:v8 shouldBypassScreenTimeShield:0 presentingViewController:self sender:cellCopy];
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

- (BOOL)_shouldSelectConversationAfterDeletingIndexPath:(id)path
{
  pathCopy = path;
  v5 = +[CKUIBehavior sharedBehaviors];
  selectNewConversationOnDeletion = [v5 selectNewConversationOnDeletion];

  if (selectNewConversationOnDeletion && (-[CKConversationListCollectionViewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isCollapsed], v7, (v8 & 1) == 0) && (-[CKConversationListCollectionViewController dataSource](self, "dataSource"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "snapshot"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "itemIdentifiers"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v9, v12))
  {
    v13 = MEMORY[0x1E695DFA8];
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v16 = [v13 setWithArray:indexPathsForSelectedItems];

    if (pathCopy)
    {
      [v16 removeObject:pathCopy];
    }

    v17 = [v16 count] == 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)performDeletionForActiveConversation:(id)conversation itemIdentifier:(id)identifier completionHandler:(id)handler cellToUpdate:(id)update alertsDisplayConfiguration:(id)configuration
{
  v45 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  identifierCopy = identifier;
  handlerCopy = handler;
  updateCopy = update;
  configurationCopy = configuration;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = conversationCopy;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "[Recently Deleted] Initiating deletion on conversation: %@", buf, 0xCu);
    }
  }

  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v18 = [dataSource indexPathForItemIdentifier:v32];

  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater beginHoldingUpdatesForReason:@"swipeToDelete"];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke;
  aBlock[3] = &unk_1E72F54A8;
  aBlock[4] = self;
  v20 = conversationCopy;
  v39 = v20;
  v21 = v18;
  v40 = v21;
  v22 = updateCopy;
  v41 = v22;
  v23 = _Block_copy(aBlock);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __156__CKConversationListCollectionViewController_performDeletionForActiveConversation_itemIdentifier_completionHandler_cellToUpdate_alertsDisplayConfiguration___block_invoke_4;
  v35[3] = &unk_1E72EF038;
  v24 = v23;
  v36 = v24;
  v25 = handlerCopy;
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
  [configurationCopy setPresentationViewController:self];
  v42 = v20;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  [configurationCopy setTargetConversations:v29];

  [configurationCopy setAlertsCompletedBlock:v26];
  [configurationCopy setCancelBlock:v28];
  v30 = [[CKConversationConfirmationAlertsController alloc] initWithConfiguration:configurationCopy];
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

- (void)performDeletionForPendingConversationCell:(id)cell completionHandler:(id)handler alertsDisplayConfiguration:(id)configuration
{
  handlerCopy = handler;
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater beginHoldingUpdatesForReason:@"swipeToDelete"];

  delegate = [(CKConversationListCollectionViewController *)self delegate];
  [delegate conversationListControllerTappedDeleteNewMessage:self];

  updater2 = [(CKConversationListCollectionViewController *)self updater];
  [updater2 endAllHoldsOnUpdatesForReason:@"swipeToDelete" updateTriggeredIfNotHeldShouldBeDeferred:1];

  v9 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
    v9 = handlerCopy;
  }
}

- (void)_cancelDeletion:(id)deletion
{
  deletionCopy = deletion;
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater endAllHoldsOnUpdatesForReason:@"swipeToDelete" updateTriggeredIfNotHeldShouldBeDeferred:1];

  v5 = deletionCopy;
  if (deletionCopy)
  {
    (*(deletionCopy + 2))(deletionCopy, 0);
    v5 = deletionCopy;
  }
}

- (BOOL)_canShowSyncProgressFooter
{
  v24 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8018] = [MEMORY[0x1E69A8018] sharedInstance];
  v4 = [mEMORY[0x1E69A8018] getBoolFromDomain:*MEMORY[0x1E69A6D10] forKey:@"cksync-always-show-progress" defaultValue:0];

  mEMORY[0x1E69A5B20] = [MEMORY[0x1E69A5B20] sharedInstance];
  v6 = [mEMORY[0x1E69A5B20] isEnabled] | v4;

  if (v6)
  {
    mEMORY[0x1E69A8018]2 = [MEMORY[0x1E69A8018] sharedInstance];
    v8 = [mEMORY[0x1E69A8018]2 getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"MiCShowProgressFooter" defaultValue:1];

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

            isBelowMacSnapToMinWidth = [(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth];
            isEditing = [(CKConversationListCollectionViewController *)self isEditing];
            if (isBelowMacSnapToMinWidth)
            {
              v15 = @"YES";
            }

            else
            {
              v15 = @"NO";
            }

            v18 = 138412802;
            if (isEditing)
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

- (void)_updateSyncStatusViewWithSyncState:(id)state
{
  v46 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!self->_syncStatusCoordinator)
  {
    v5 = objc_alloc_init(_TtC7ChatKit26CKCloudSyncViewCoordinator);
    syncStatusCoordinator = self->_syncStatusCoordinator;
    self->_syncStatusCoordinator = v5;
  }

  [stateCopy syncJobState];
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

    syncStatusCoordinator = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    isSyncViewCurrentlyVisible = [syncStatusCoordinator isSyncViewCurrentlyVisible];

    if (!isSyncViewCurrentlyVisible)
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
    syncStatusCoordinator2 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    [syncStatusCoordinator2 tearDownView];
LABEL_78:

    [(CKConversationListCollectionViewController *)self _updateInsets];
    goto LABEL_79;
  }

  syncStatusCoordinator3 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
  isSyncViewCurrentlyVisible2 = [syncStatusCoordinator3 isSyncViewCurrentlyVisible];

  if (stateCopy)
  {
    if ([stateCopy hasNotSyncedInLastSevenDays])
    {
      if ([stateCopy accountStatus] == 2)
      {
        accountNeedsRepair = 1;
      }

      else
      {
        accountNeedsRepair = [stateCopy accountNeedsRepair];
      }
    }

    else
    {
      accountNeedsRepair = 0;
    }

    if ([stateCopy syncType] && objc_msgSend(stateCopy, "syncType") != 1)
    {
      if ([stateCopy syncType] == 2)
      {
        hasNotSyncedInLastSevenDays = [stateCopy hasNotSyncedInLastSevenDays];
      }

      else
      {
        hasNotSyncedInLastSevenDays = 0;
      }
    }

    else
    {
      hasNotSyncedInLastSevenDays = 1;
    }

    v19 = [stateCopy syncJobState] == 2 || objc_msgSend(stateCopy, "syncJobState") == 3 || objc_msgSend(stateCopy, "syncJobState") == 4 || objc_msgSend(stateCopy, "syncJobState") == 5;
    isBetweenInitialAndFullSync = [stateCopy isBetweenInitialAndFullSync];
    mEMORY[0x1E69A8018] = [MEMORY[0x1E69A8018] sharedInstance];
    v22 = [mEMORY[0x1E69A8018] getBoolFromDomain:*MEMORY[0x1E69A6D10] forKey:@"cksync-always-show-progress" defaultValue:0];

    if (accountNeedsRepair)
    {
      LOBYTE(isSyncViewCurrentlyVisible2) = 1;
    }

    else
    {
      LOBYTE(isSyncViewCurrentlyVisible2) = hasNotSyncedInLastSevenDays & v19 | isBetweenInitialAndFullSync | v22;
    }

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = @"NO";
        if (isSyncViewCurrentlyVisible2)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        if (accountNeedsRepair)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        *v41 = 138413314;
        *&v41[4] = v25;
        if (hasNotSyncedInLastSevenDays)
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
        if (isBetweenInitialAndFullSync)
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
      if (isSyncViewCurrentlyVisible2)
      {
        v17 = @"YES";
      }

      *v41 = 138412290;
      *&v41[4] = v17;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "isSyncBarNeeded={%@}", v41, 0xCu);
    }
  }

  v29 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator:*v41];
  isSyncViewInitialized = [v29 isSyncViewInitialized];

  if (!(isSyncViewInitialized & 1 | ((isSyncViewCurrentlyVisible2 & 1) == 0)))
  {
    syncStatusCoordinator4 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    [syncStatusCoordinator4 createSyncStatusView];

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

  if (stateCopy)
  {
    syncStatusCoordinator5 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    [syncStatusCoordinator5 updateWithSyncState:stateCopy];
  }

  syncStatusCoordinator6 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
  isSyncViewCurrentlyVisible3 = [syncStatusCoordinator6 isSyncViewCurrentlyVisible];

  if ((isSyncViewCurrentlyVisible2 & 1) == 0)
  {
    if (!isSyncViewCurrentlyVisible3)
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

  if ((isSyncViewCurrentlyVisible3 & 1) == 0)
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

    syncStatusCoordinator2 = [(CKConversationListCollectionViewController *)self syncStatusCoordinator];
    view = [(CKConversationListCollectionViewController *)self view];
    navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
    [syncStatusCoordinator2 addSyncStatusViewToViewControllerWithView:view navigationItem:navigationItem];

    goto LABEL_78;
  }

LABEL_79:
}

- (void)registerForCloudKitEventsWithDelayedRegistration:(BOOL)registration
{
  registrationCopy = registration;
  v12 = *MEMORY[0x1E69E9840];
  if (registerForCloudKitEventsWithDelayedRegistration__onceToken != -1)
  {
    [CKConversationListCollectionViewController registerForCloudKitEventsWithDelayedRegistration:];
  }

  if (registrationCopy)
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMessagesIniCloudVersion2 = [mEMORY[0x1E69A8070] isMessagesIniCloudVersion2];

  if ((isMessagesIniCloudVersion2 & 1) == 0)
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

    mEMORY[0x1E69A5B18] = [MEMORY[0x1E69A5B18] sharedInstance];
    [mEMORY[0x1E69A5B18] removeEventHandler:self];
  }
}

- (void)setLastSelectedConversationItemIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (![(NSString *)self->_lastSelectedConversationItemIdentifier isEqualToString:identifierCopy])
  {
    objc_storeStrong(&self->_lastSelectedConversationItemIdentifier, identifier);
    if ([(NSString *)self->_lastSelectedConversationItemIdentifier length]&& ![(CKConversationListCollectionViewController *)self _isRunningPPT])
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults setObject:self->_lastSelectedConversationItemIdentifier forKey:@"CKLastSelectedItemIdentifier" inDomain:@"com.apple.MobileSMS"];
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = identifierCopy;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "multi-select: set last selected conversation item identifier: %@", &v8, 0xCu);
      }
    }
  }
}

- (id)_itemIdentifierOfDefaultConversation
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentConversation = [WeakRetained currentConversation];

  if (currentConversation && ([currentConversation isPending] & 1) == 0)
  {
    if ([currentConversation isPinned])
    {
      v10 = 2;
    }

    else
    {
      v10 = 5;
    }

    v5 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:currentConversation inSection:v10];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

    if (isModernFilteringEnabled)
    {
      dataSource = [(CKConversationListCollectionViewController *)self dataSource];
      v14 = [dataSource indexPathForItemIdentifier:v5];

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
    dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
    snapshot = [dataSource2 snapshot];
    v8 = [snapshot indexOfSectionIdentifier:&unk_1F04E8040];

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
      dataSource3 = [(CKConversationListCollectionViewController *)self dataSource];
      snapshot2 = [dataSource3 snapshot];
      v18 = [snapshot2 itemIdentifiersInSectionWithIdentifier:&unk_1F04E8040];
      firstObject = [v18 firstObject];

      v5 = firstObject;
    }
  }

  if (![(__CFString *)v5 length])
  {
    dataSource4 = [(CKConversationListCollectionViewController *)self dataSource];
    snapshot3 = [dataSource4 snapshot];
    v22 = [snapshot3 indexOfSectionIdentifier:&unk_1F04E8028];

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
      dataSource5 = [(CKConversationListCollectionViewController *)self dataSource];
      snapshot4 = [dataSource5 snapshot];
      v26 = [snapshot4 itemIdentifiersInSectionWithIdentifier:&unk_1F04E8028];

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
  _itemIdentifierOfDefaultConversation = [(CKConversationListCollectionViewController *)self _itemIdentifierOfDefaultConversation];
  if ([_itemIdentifierOfDefaultConversation length])
  {
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v5 = [dataSource indexPathForItemIdentifier:_itemIdentifierOfDefaultConversation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_selectConversationAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (animatedCopy)
      {
        v8 = @"YES";
      }

      v15 = 138412546;
      v16 = pathCopy;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Selecting conversation at indexPath: %@  animated:%@", &v15, 0x16u);
    }
  }

  [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:CKIsRunningInMacCatalyst() == 0];
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v10 = collectionView;
  if (pathCopy)
  {
    collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
    [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:collectionView2 animated:animatedCopy];

    [v10 selectItemAtIndexPath:pathCopy animated:animatedCopy scrollPosition:0];
    [v10 scrollToItemAtIndexPath:pathCopy atScrollPosition:0 animated:animatedCopy];
    [(CKConversationListCollectionViewController *)self _performTranscriptPushForItemAtIndexPath:pathCopy userInitiated:0];
  }

  else
  {
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems firstObject];
    [v10 deselectItemAtIndexPath:firstObject animated:animatedCopy];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained showConversation:0 animate:animatedCopy];
  }
}

- (void)deleteSelectedConversation
{
  v16 = *MEMORY[0x1E69E9840];
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  if (indexPathsForSelectedItems)
  {
    collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
    indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
    v7 = [indexPathsForSelectedItems2 objectAtIndex:0];
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
    collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
    v10 = [collectionView3 cellForItemAtIndexPath:v7];

    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v12 = [dataSource itemIdentifierForIndexPath:v7];

    v13 = objc_opt_new();
    [(CKConversationListCollectionViewController *)self deleteButtonTappedForItemIdentifier:v12 completionHandler:0 cellToUpdate:v10 alertsDisplayConfiguration:v13];
  }
}

- (void)selectDefaultConversationAnimated:(BOOL)animated removingPendingConversationCell:(BOOL)cell
{
  animatedCopy = animated;
  if (cell)
  {
    [(CKConversationListCollectionViewController *)self removePendingConversationCell];
  }

  [(CKConversationListCollectionViewController *)self selectDefaultConversationAnimated:animatedCopy shouldUsePreviousySelectedIndexPath:0];
}

- (void)selectDefaultConversationAnimated:(BOOL)animated shouldUsePreviousySelectedIndexPath:(BOOL)path
{
  pathCopy = path;
  animatedCopy = animated;
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (animatedCopy)
      {
        v8 = @"YES";
      }

      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Selecting default conversation, animated:%@", &v17, 0xCu);
    }
  }

  _indexPathOfDefaultConversation = [(CKConversationListCollectionViewController *)self _indexPathOfDefaultConversation];
  v10 = CKIsRunningInMacCatalyst();
  if (pathCopy && v10)
  {
    lastSelectedConversationItemIdentifier = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
    if (![lastSelectedConversationItemIdentifier length])
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v13 = [standardUserDefaults objectForKey:@"CKLastSelectedItemIdentifier" inDomain:@"com.apple.MobileSMS"];

      lastSelectedConversationItemIdentifier = v13;
    }

    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    v15 = [dataSource indexPathForItemIdentifier:lastSelectedConversationItemIdentifier];

    if (v15)
    {
      v16 = v15;

      _indexPathOfDefaultConversation = v16;
    }
  }

  [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:_indexPathOfDefaultConversation animated:animatedCopy];
}

- (void)selectNextSequentialConversation:(BOOL)conversation
{
  conversationCopy = conversation;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    v7 = [(CKConversationListCollectionViewController *)self nextSequentialIndexPathForIndexPath:firstObject descending:conversationCopy];
    if (v7)
    {
      [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v7 animated:0];
    }

    else if (!conversationCopy)
    {
      v8 = +[CKConversationList sharedConversationList];
      pendingConversation = [v8 pendingConversation];
      if (pendingConversation)
      {
        v10 = pendingConversation;
        shouldShowPendingCell = [(CKConversationListCollectionViewController *)self shouldShowPendingCell];

        if (shouldShowPendingCell)
        {
          [(CKConversationListCollectionViewController *)self setEditingMode:0 animated:0];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          isComposingMessage = [WeakRetained isComposingMessage];

          if ((isComposingMessage & 1) == 0)
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

- (void)selectPinnedConversationForItem:(int64_t)item
{
  if (![(CKConversationListCollectionViewController *)self hasActivePinnedConversationDropSession])
  {
    dataSource = [(CKConversationListCollectionViewController *)self dataSource];
    snapshot = [dataSource snapshot];
    v7 = [snapshot numberOfItemsInSection:&unk_1F04E8010];

    NSLog(&cfstr_NumerofchatsLd.isa, v7, item);
    if (v7 >= item)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:item - 1 inSection:2];
      [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v8 animated:1];
    }
  }
}

- (void)selectFirstActiveConversation
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:5];
  [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v3 animated:1];
}

- (void)selectConversationClosestToDeletedIndex:(id)index
{
  v9 = *MEMORY[0x1E69E9840];
  indexCopy = index;
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

  v6 = [(CKConversationListCollectionViewController *)self nextSequentialIndexPathForIndexPath:indexCopy descending:0];
  if (v6 || ([(CKConversationListCollectionViewController *)self nextSequentialIndexPathForIndexPath:indexCopy descending:1], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
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
      delegate = [(CKConversationListCollectionViewController *)self delegate];
      isShowingComposeChatController = [delegate isShowingComposeChatController];

      v5 = IMOSLoggingEnabled();
      if (isShowingComposeChatController)
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

        dataSource = [(CKConversationListCollectionViewController *)self dataSource];
        v8 = +[CKConversationListNewMessageCollectionViewCell reuseIdentifier];
        v9 = [dataSource indexPathForItemIdentifier:v8];

        if (v9)
        {
          collectionView = [(CKConversationListCollectionViewController *)self collectionView];
          indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

          if (([indexPathsForSelectedItems containsObject:v9] & 1) == 0)
          {
            collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
            [(CKConversationListCollectionViewController *)self _deselectSelectedIndexPathsInCollectionView:collectionView2 animated:0];

            collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
            [collectionView3 selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
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
          shouldShowPendingCell = [(CKConversationListCollectionViewController *)self shouldShowPendingCell];
          v17 = IMOSLoggingEnabled();
          if (shouldShowPendingCell)
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

            updater = [(CKConversationListCollectionViewController *)self updater];
            [updater setNeedsDeferredUpdateWithReason:@"showingNewCompose"];
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
  delegate = [(CKConversationListCollectionViewController *)self delegate];
  v4 = -[CKConversationListCollectionViewController _alertControllerStyleForCollapsedState:](self, "_alertControllerStyleForCollapsedState:", [delegate isCollapsed]);

  return v4;
}

- (void)prepareForSuspend
{
  v26[3] = *MEMORY[0x1E69E9840];
  if (!CKIsRunningInMacCatalyst())
  {
    searchController = [(CKConversationListCollectionViewController *)self searchController];
    isActive = [searchController isActive];

    if (isActive)
    {
      searchController2 = [(CKConversationListCollectionViewController *)self searchController];
      [searchController2 setActive:0];
    }

    searchResultsController = [(CKConversationListCollectionViewController *)self searchResultsController];
    [searchResultsController cancelCurrentQuery];

    v7 = +[CKPluginExtensionStateObserver sharedInstance];
    passKitUIPresented = [v7 passKitUIPresented];

    if ((passKitUIPresented & 1) == 0)
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
            updater = [(CKConversationListCollectionViewController *)self updater];
            [updater endAllHoldsOnUpdatesForReason:v14 updateTriggeredIfNotHeldShouldBeDeferred:1];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }
    }

    v16 = +[CKAdaptivePresentationController sharedInstance];
    presentedViewController = [v16 presentedViewController];
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

- (void)_conversationListPinnedConversationsDidChange:(id)change
{
  userInfo = [change userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"previousPinnedConversationIdentifiers"];

  [(CKConversationListCollectionViewController *)self _submitFeedbackIfNecessaryForPinsChangedWithPreviousPinnedConversationIdentifiers:v6];
  if ([(CKConversationListCollectionViewController *)self holdPinningUpdatesForConversationDeletion])
  {
    [(CKConversationListCollectionViewController *)self setHoldPinningUpdatesForConversationDeletion:0];
  }

  else
  {
    if ([(CKConversationListCollectionViewController *)self nextPinnedConversationListUpdateShouldTriggerUnanimatedSnapshotUpdate])
    {
      isShowingPinningOnboarding = [(CKConversationListCollectionViewController *)self isShowingPinningOnboarding];
    }

    else
    {
      isShowingPinningOnboarding = 1;
    }

    [(CKConversationListCollectionViewController *)self setNextPinnedConversationListUpdateShouldTriggerUnanimatedSnapshotUpdate:0];
    [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:isShowingPinningOnboarding];
    [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:isShowingPinningOnboarding];
    [(CKConversationListCollectionViewController *)self _updateLargeTitleDisplayModeWithAnimation:isShowingPinningOnboarding];
    [(CKConversationListTipManager *)self->_tipManager userDidPinConversation];
  }
}

- (void)_setPinnedConversationViewLayoutStyle:(int64_t)style shouldInvalidateLayout:(BOOL)layout
{
  if (self->_pinnedConversationViewLayoutStyle != style)
  {
    layoutCopy = layout;
    self->_pinnedConversationViewLayoutStyle = style;
    [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:0];
    if (layoutCopy)
    {
      collectionView = [(CKConversationListCollectionViewController *)self collectionView];
      collectionViewLayout = [collectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];
    }
  }
}

- (void)setHasActivePinnedConversationDropSession:(BOOL)session
{
  if (self->_hasActivePinnedConversationDropSession != session)
  {
    self->_hasActivePinnedConversationDropSession = session;
    [(CKConversationListCollectionViewController *)self setEditButtonItem:0];
    [(CKConversationListCollectionViewController *)self setOptionsButtonItem:0];
    [(CKConversationListCollectionViewController *)self updateNavigationItems];

    [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:1];
  }
}

- (void)setIsShowingPinningOnboarding:(BOOL)onboarding
{
  if (self->_isShowingPinningOnboarding != onboarding)
  {
    self->_isShowingPinningOnboarding = onboarding;
  }

  if (onboarding)
  {
    searchController = 0;
  }

  else
  {
    searchController = [(CKConversationListCollectionViewController *)self searchController];
  }

  navigationItem = [(CKConversationListCollectionViewController *)self navigationItem];
  [navigationItem setSearchController:searchController];

  if (!onboarding)
  {
  }
}

- (void)_pendingSatelliteCountChanged
{
  collectionViewRefreshControl = [(CKConversationListCollectionViewController *)self collectionViewRefreshControl];
  [collectionViewRefreshControl endRefreshing];

  [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:1];
}

- (void)_didPullToRefresh:(id)refresh
{
  [refresh beginRefreshing];

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

- (id)leadingSwipeActionsConfigurationForIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(CKConversationListCollectionViewController *)self _markUnreadSwipeActionForIndexPath:pathCopy];
    if (v6)
    {
      [v5 addObject:v6];
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isPinActionEnabled = [mEMORY[0x1E69A8070] isPinActionEnabled];

    if (isPinActionEnabled)
    {
      v9 = [(CKConversationListCollectionViewController *)self _pinConversationSwipeActionForIndexPath:pathCopy];
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

- (id)trailingSwipeActionsConfigurationForIndexPath:(id)path
{
  pathCopy = path;
  array = [MEMORY[0x1E695DF70] array];
  if ([pathCopy section] == 4)
  {
    v6 = [(CKConversationListCollectionViewController *)self deleteSwipeActionForIndexPath:pathCopy];
    if (v6)
    {
      [array addObject:v6];
    }
  }

  else
  {
    if ([pathCopy section] != 5)
    {
      goto LABEL_12;
    }

    v6 = [(CKConversationListCollectionViewController *)self deleteSwipeActionForIndexPath:pathCopy];
    if (v6)
    {
      [array addObject:v6];
    }

    if ([(CKConversationListCollectionViewController *)self filterMode]!= 9)
    {
      v7 = [(CKConversationListCollectionViewController *)self _dndSwipeActionForIndexPath:pathCopy];
      if (v7)
      {
        [array addObject:v7];
      }
    }
  }

LABEL_12:
  if ([array count])
  {
    v8 = [MEMORY[0x1E69DCFC0] configurationWithActions:array];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_markUnreadSwipeActionForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];
  hasUnreadMessages = [v7 hasUnreadMessages];
  objc_initWeak(&location, self);
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

  if (isConversationListRefreshEnabled)
  {
    v11 = 0;
  }

  else
  {
    v12 = CKFrameworkBundle();
    if (hasUnreadMessages)
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
  v14 = pathCopy;
  v26 = v14;
  v15 = v6;
  v27 = v15;
  selfCopy = self;
  v30 = hasUnreadMessages;
  v16 = [v13 contextualActionWithStyle:0 title:v11 handler:&v22];
  if (hasUnreadMessages)
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
  theme = [v18 theme];
  unreadIndicatorColor = [theme unreadIndicatorColor];
  [v16 setBackgroundColor:unreadIndicatorColor];

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

- (id)_pinConversationSwipeActionForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DC8E8];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"PIN" value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __86__CKConversationListCollectionViewController__pinConversationSwipeActionForIndexPath___block_invoke;
  v19 = &unk_1E72F54F8;
  objc_copyWeak(&v22, &location);
  v10 = pathCopy;
  v20 = v10;
  v11 = v6;
  v21 = v11;
  v12 = [v7 contextualActionWithStyle:0 title:v9 handler:&v16];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"pin.fill", v16, v17, v18, v19}];
  [v12 setImage:v13];

  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  [v12 setBackgroundColor:systemYellowColor];

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

- (id)_dndSwipeActionForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v7 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v6];
  chat = [v7 chat];
  isStewieChat = [chat isStewieChat];

  v10 = 0;
  if ((isStewieChat & 1) == 0 && v6 && v7)
  {
    isMuted = [v7 isMuted];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

    if (isConversationListRefreshEnabled)
    {
      v14 = 0;
    }

    else
    {
      v15 = CKFrameworkBundle();
      v16 = v15;
      if (isMuted)
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
    v28 = isMuted;
    v10 = [v18 contextualActionWithStyle:0 title:v14 handler:&v22];
    systemIndigoColor = [MEMORY[0x1E69DC888] systemIndigoColor];
    [v10 setBackgroundColor:systemIndigoColor];

    if (isMuted)
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
  indexPathOfFirstSelectedItem = [(CKConversationListCollectionViewController *)self indexPathOfFirstSelectedItem];
  if (indexPathOfFirstSelectedItem)
  {
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    v4 = [collectionView cellForItemAtIndexPath:indexPathOfFirstSelectedItem];

    if (v4)
    {
      [v4 _setNeedsConfigurationStateUpdate];
    }
  }
}

- (void)_updateConversationFilteredFlagsAndReportSpam
{
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  [conversationList updateConversationFilteredFlagsAndReportSpam];
}

- (void)updateConversationListForMessageSentToConversation:(id)conversation
{
  conversationCopy = conversation;
  [(CKConversationListCollectionViewController *)self updateConversationList];
  if ([(CKConversationListCollectionViewController *)self _shouldKeepSelection])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    currentConversation = [WeakRetained currentConversation];

    if (currentConversation)
    {
      v6 = currentConversation == conversationCopy;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if ([currentConversation isPending])
      {
        dataSource = [(CKConversationListCollectionViewController *)self dataSource];
        snapshot = [dataSource snapshot];
        v10 = [snapshot itemIdentifiersInSectionWithIdentifier:&unk_1F04E8040];
        firstObject = [v10 firstObject];
      }

      else
      {
        if ([currentConversation isPinned])
        {
          v11 = 2;
        }

        else
        {
          v11 = 5;
        }

        firstObject = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:currentConversation inSection:v11];
      }
    }

    else
    {
      firstObject = 0;
    }

    if ([firstObject length])
    {
      dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
      v13 = [dataSource2 indexPathForItemIdentifier:firstObject];

      if (v13)
      {
        dataSource3 = [(CKConversationListCollectionViewController *)self dataSource];
        collectionView = [(CKConversationListCollectionViewController *)self collectionView];
        v16 = [dataSource3 numberOfSectionsInCollectionView:collectionView];
        if (v16 <= [v13 section])
        {
        }

        else
        {
          dataSource4 = [(CKConversationListCollectionViewController *)self dataSource];
          collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
          v19 = [dataSource4 collectionView:collectionView2 numberOfItemsInSection:{objc_msgSend(v13, "section")}];
          v20 = [v13 row];

          if (v19 <= v20)
          {
            goto LABEL_23;
          }

          collectionView3 = [(CKConversationListCollectionViewController *)self collectionView];
          indexPathsForVisibleItems = [collectionView3 indexPathsForVisibleItems];
          v23 = [indexPathsForVisibleItems containsObject:v13];

          if (v23)
          {
            goto LABEL_23;
          }

          section = [v13 section];
          collectionView4 = [(CKConversationListCollectionViewController *)self collectionView];
          dataSource3 = collectionView4;
          if (section == 2)
          {
            [collectionView4 __ck_scrollToTop:1];
          }

          else
          {
            [collectionView4 scrollToItemAtIndexPath:v13 atScrollPosition:1 animated:1];
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
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater endHoldingUpdatesForReason:@"viewVisiblity" updateTriggeredIfNotHeldShouldBeDeferred:0];

  [(CKConversationListCollectionViewController *)self leaveJunkFilterIfNeeded];
}

- (void)reasonTrackingUpdater:(id)updater needsUpdateForReasons:(id)reasons followingHoldForReason:(id)reason
{
  v27 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  reasonsCopy = reasons;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = reasonsCopy;
      v25 = 2112;
      v26 = reasonCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Updating conversation list for reasons: %@ following hold for reason: %@", &v23, 0x16u);
    }
  }

  v12 = [(CKConversationListCollectionViewController *)self _shouldAnimatePinningChangesForUpdateFollowingHoldForReason:reasonCopy];
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  [conversationList resort];

  [(CKConversationListCollectionViewController *)self _updateConversationListsAndSortIfEnabled];
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:0];
  [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:v12];
  [(CKConversationListCollectionViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(conversationList) = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (conversationList)
  {
    if ([(__CFString *)reasonsCopy containsObject:@"filterModeChanged"])
    {
      if ([(CKConversationListCollectionViewController *)self shouldShowPendingCell])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        isComposingMessage = [WeakRetained isComposingMessage];

        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = @"YES";
            if (isComposingMessage)
            {
              v18 = @"NO";
            }

            v23 = 138412290;
            v24 = v18;
            _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Filtering mode changed. Updating conversation selection to pending cell: %@", &v23, 0xCu);
          }
        }

        if ((isComposingMessage & 1) == 0)
        {
          v19 = objc_loadWeakRetained(&self->_delegate);
          [v19 showNewMessageCompositionPanelAppendingToExistingDraft:0 animated:0];
        }
      }

      else
      {
        delegate = [(CKConversationListCollectionViewController *)self delegate];
        isCollapsed = [delegate isCollapsed];

        if ((isCollapsed & 1) == 0)
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

- (void)reasonTrackingUpdater:(id)updater didBeginHoldingUpdatesWithInitialReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = reasonCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Freezing conversations with initial reason for freeze: %@", &v9, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self _freezeConversations];
}

- (void)reasonTrackingUpdater:(id)updater didEndHoldingUpdatesWithFinalReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  reasonCopy = reason;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = reasonCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Unfreezing conversations with final reason for unfreeze: %@", &v9, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self _unfreezeConversations];
}

- (void)updateConversationList
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"externalChange"];
}

- (void)beginHoldingConversationListUpdatesForPPTTests
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater beginHoldingUpdatesForReason:@"pptTest"];
}

- (void)endHoldingConversationListUpdatesForPPTTests
{
  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater endHoldingUpdatesForReason:@"pptTest" updateTriggeredIfNotHeldShouldBeDeferred:1];
}

- (void)_reloadVisibleConversationList:(id)list
{
  v34 = *MEMORY[0x1E69E9840];
  listCopy = list;
  userInfo = [listCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"uid"];

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  if ([v5 length])
  {
    v8 = [(CKConversationListCollectionViewController *)self _indexPaths:indexPathsForVisibleItems containingHandleWithUID:v5];

    indexPathsForVisibleItems = v8;
  }

  if ([indexPathsForVisibleItems count])
  {
    updater = [(CKConversationListCollectionViewController *)self updater];
    isHoldingUpdates = [updater isHoldingUpdates];

    v11 = IMOSLoggingEnabled();
    if (isHoldingUpdates)
    {
      if (v11)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          updater2 = [(CKConversationListCollectionViewController *)self updater];
          *buf = 138412290;
          v31 = updater2;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "***NOT*** Updating visible portion of conversation list, _updater is: %@", buf, 0xCu);
        }
      }

      updater3 = [(CKConversationListCollectionViewController *)self updater];
      [updater3 setNeedsDeferredUpdateWithReason:@"updateVisibleConversationsNotification"];
    }

    else
    {
      if (v11)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          updater4 = [(CKConversationListCollectionViewController *)self updater];
          *buf = 138412546;
          v31 = updater4;
          v32 = 2112;
          v33 = indexPathsForVisibleItems;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Reloading visible portion of conversation list, _updater is: %@, indexPaths: %@", buf, 0x16u);
        }
      }

      updater3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = indexPathsForVisibleItems;
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
            dataSource = [(CKConversationListCollectionViewController *)self dataSource];
            v23 = [dataSource itemIdentifierForIndexPath:v21];

            if (v23)
            {
              [updater3 addObject:v23];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v18);
      }

      [(CKConversationListCollectionViewController *)self updateContentsOfCellsWithItemIdentifiers:updater3 animated:0];
    }
  }
}

- (id)_indexPaths:(id)paths containingHandleWithUID:(id)d
{
  dCopy = d;
  v7 = MEMORY[0x1E696AE18];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __82__CKConversationListCollectionViewController__indexPaths_containingHandleWithUID___block_invoke;
  v16 = &unk_1E72F5548;
  selfCopy = self;
  v18 = dCopy;
  v8 = dCopy;
  pathsCopy = paths;
  v10 = [v7 predicateWithBlock:&v13];
  v11 = [pathsCopy filteredArrayUsingPredicate:{v10, v13, v14, v15, v16, selfCopy}];

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
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];
  numberOfItems = [snapshot numberOfItems];

  if (numberOfItems >= 1)
  {
    noMessagesDialogView = [(CKConversationListCollectionViewController *)self noMessagesDialogView];
    [noMessagesDialogView removeFromSuperview];

    [(CKConversationListCollectionViewController *)self setNoMessagesDialogView:0];
    collectionView = [(CKConversationListCollectionViewController *)self collectionView];
    [collectionView setScrollEnabled:1];
  }
}

- (void)_didReceiveSummaries:(id)summaries
{
  v21 = *MEMORY[0x1E69E9840];
  summariesCopy = summaries;
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

    userInfo = [summariesCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69A58F0]];
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
          conversationList = [(CKConversationListCollectionViewController *)self conversationList];
          v13 = [conversationList conversationForExistingChatWithGUID:v11];

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

- (void)updateConversationNamesForNicknames:(id)nicknames
{
  userInfo = [nicknames userInfo];
  v5 = [userInfo objectForKey:@"handleIDs"];

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
  conversations = [v7 conversations];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __82__CKConversationListCollectionViewController_updateConversationNamesForNicknames___block_invoke;
  v13 = &unk_1E72F5570;
  v15 = v6 == 0;
  v14 = v6;
  v9 = v6;
  [conversations enumerateObjectsUsingBlock:&v10];

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

- (void)trackSIMFilterUpdateEventFromOldSIMFilterIndex:(int64_t)index toSelectedSIMFilterIndex:(int64_t)filterIndex
{
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  v7 = mEMORY[0x1E69A8168];
  v8 = *MEMORY[0x1E69A7598];
  if (index == filterIndex)
  {
    v9 = &unk_1F04E9280;
  }

  else
  {
    v9 = &unk_1F04E92A8;
  }

  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7598] withDictionary:v9];

  if (index == -1 && filterIndex != -1)
  {
    v13 = &unk_1F04E92D0;
LABEL_20:
    mEMORY[0x1E69A8168]2 = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168]2 trackEvent:v8 withDictionary:v13];

    return;
  }

  if (index != -1 && filterIndex == -1)
  {
    v13 = &unk_1F04E92F8;
    goto LABEL_20;
  }

  if (index != filterIndex && index != -1 && filterIndex != -1)
  {
    v13 = &unk_1F04E9320;
    goto LABEL_20;
  }
}

- (void)updateSIMFilterIndexAndReloadData:(int64_t)data
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      conversationList = [(CKConversationListCollectionViewController *)self conversationList];
      v10 = 134218240;
      simFilterIndex = [conversationList simFilterIndex];
      v12 = 2048;
      dataCopy = data;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Updating SIM Filter Index from %ld to : %ld", &v10, 0x16u);
    }
  }

  conversationList2 = [(CKConversationListCollectionViewController *)self conversationList];
  -[CKConversationListCollectionViewController trackSIMFilterUpdateEventFromOldSIMFilterIndex:toSelectedSIMFilterIndex:](self, "trackSIMFilterUpdateEventFromOldSIMFilterIndex:toSelectedSIMFilterIndex:", [conversationList2 simFilterIndex], data);

  conversationList3 = [(CKConversationListCollectionViewController *)self conversationList];
  [conversationList3 setSimFilterIndex:data];

  updater = [(CKConversationListCollectionViewController *)self updater];
  [updater setNeedsDeferredUpdateWithReason:@"simFilterChanged"];
}

- (void)_resetSimFilteringToDefaultState
{
  _IMSharedHelperResetMessageSIMFilteringEnabled();
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  [conversationList setSimFilterIndex:-1];

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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [currentDevice2 userInterfaceIdiom] == 1;
  }

  else
  {
    v6 = 1;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isNameAndPhotoC3Enabled = [mEMORY[0x1E69A8070] isNameAndPhotoC3Enabled];

  if (isNameAndPhotoC3Enabled)
  {
    v9 = !v6;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    nicknameController = [(CKConversationListCollectionViewController *)self nicknameController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__CKConversationListCollectionViewController_showMeCardViewController__block_invoke_2;
    v12[3] = &unk_1E72F3488;
    v13 = v3;
    [nicknameController fetchPersonalNicknameWithCompletion:v12];

    onboardingController = v13;
  }

  else
  {
    onboardingController = [(CKConversationListCollectionViewController *)self onboardingController];
    [onboardingController presentNicknameOnboardingOrEditFlow];
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

- (id)_avatarProviderFromNickname:(id)nickname
{
  nicknameCopy = nickname;
  v4 = [CKMeCardSharingNicknameAvatarProvider alloc];
  avatar = [nicknameCopy avatar];

  imageData = [avatar imageData];
  v7 = [(CKMeCardSharingNicknameAvatarProvider *)v4 initWithImageData:imageData];

  return v7;
}

- (void)showMeCardViewControllerWithNickname:(id)nickname
{
  nicknameCopy = nickname;
  _meContact = [(CKConversationListCollectionViewController *)self _meContact];
  v5 = [CKMeCardSharingNameProvider nameProviderForNickname:nicknameCopy];
  _contactStore = [(CKConversationListCollectionViewController *)self _contactStore];
  _meCardSharingEnabled = [(CKConversationListCollectionViewController *)self _meCardSharingEnabled];
  _meCardSharingAudience = [(CKConversationListCollectionViewController *)self _meCardSharingAudience];
  v9 = [(CKConversationListCollectionViewController *)self _avatarProviderFromNickname:nicknameCopy];

  LOBYTE(v15) = 1;
  v10 = [objc_alloc(MEMORY[0x1E695D180]) initWithContactStore:_contactStore contact:_meContact avatarProvider:v9 nameProvider:v5 sharingEnabled:_meCardSharingEnabled selectedSharingAudience:_meCardSharingAudience showsWallpaperSuggestionsGalleryPicker:v15 headerMode:1];
  [v10 setDelegate:self];
  v11 = [[CKMeCardNavigationController alloc] initWithRootViewController:v10];
  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissPresentedNavController_];
  navigationItem = [v10 navigationItem];
  [navigationItem setRightBarButtonItem:v12];

  navigationController = [(CKConversationListCollectionViewController *)self navigationController];
  [navigationController presentViewController:v11 animated:1 completion:0];
}

- (id)_contactStore
{
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  getContactStore = [mEMORY[0x1E69A7FD0] getContactStore];

  return getContactStore;
}

- (id)_meContact
{
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  keysForNicknameHandling = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
  v4 = [mEMORY[0x1E69A7FD0] fetchMeContactWithKeys:keysForNicknameHandling];

  return v4;
}

- (id)_meCardSharingNameProviderWithContact:(id)contact
{
  v3 = [CKMeCardSharingNameProvider nameProviderForContact:contact];
  if (!v3)
  {
    v3 = +[CKMeCardSharingNameProvider nameProviderForPrimaryAccount];
  }

  return v3;
}

- (BOOL)_meCardSharingEnabled
{
  _meCardSharingState = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  sharingEnabled = [_meCardSharingState sharingEnabled];

  return sharingEnabled;
}

- (unint64_t)_meCardSharingAudience
{
  _meCardSharingState = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  sharingAudience = [_meCardSharingState sharingAudience];

  return sharingAudience;
}

- (BOOL)_imageForkedFromMeCard
{
  _meCardSharingState = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  imageForkedFromMeCard = [_meCardSharingState imageForkedFromMeCard];

  return imageForkedFromMeCard;
}

- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state
{
  stateCopy = state;
  _meCardSharingState = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  [_meCardSharingState setSharingEnabled:stateCopy];
}

- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience
{
  _meCardSharingState = [(CKConversationListCollectionViewController *)self _meCardSharingState];
  [_meCardSharingState setSharingAudience:audience];
}

- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result
{
  v4 = MEMORY[0x1E69A5C10];
  resultCopy = result;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance updatePersonalNicknameIfNecessaryWithMeCardSharingResult:resultCopy];
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

- (id)presentingViewControllerForOnboardingController:(id)controller
{
  v11 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  onboardingController = [(CKConversationListCollectionViewController *)self onboardingController];

  if (onboardingController == controllerCopy)
  {
    selfCopy = self;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = controllerCopy;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Unexpected instance of onboardingController %@", &v9, 0xCu);
      }
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)onboardingControllerDidFinish:(id)finish
{
  finishCopy = finish;
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

- (void)_chatAllowedByScreenTimeChanged:(id)changed
{
  changedCopy = changed;
  isContactLimitsFeatureEnabled = [MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled];
  v5 = changedCopy;
  if (isContactLimitsFeatureEnabled)
  {
    object = [changedCopy object];
    conversationList = [(CKConversationListCollectionViewController *)self conversationList];
    v8 = [conversationList conversationForExistingChat:object];

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

    v5 = changedCopy;
  }
}

- (void)configureWithToolbarController:(id)controller
{
  controllerCopy = controller;
  macToolbarController = [(CKConversationListCollectionViewController *)self macToolbarController];

  if (macToolbarController != controllerCopy)
  {
    [(CKConversationListCollectionViewController *)self setMacToolbarController:controllerCopy];
  }

  view = [(CKConversationListCollectionViewController *)self view];
  window = [view window];
  if (window)
  {
    v7 = window;
    v8 = [(CKConversationListCollectionViewController *)self conformsToProtocol:&unk_1F051C328];

    if (!v8)
    {
      goto LABEL_7;
    }

    macToolbarController2 = [(CKConversationListCollectionViewController *)self macToolbarController];
    [macToolbarController2 setPrimaryItemProvider:self];

    view = [(CKConversationListCollectionViewController *)self macToolbarController];
    [view setShouldDrawPrimaryBlur:0];
  }

LABEL_7:
}

- (id)virtualView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

  if (isConversationListRefreshEnabled)
  {
    macTransparentVirtualToolbarView = self->_macTransparentVirtualToolbarView;
    if (!macTransparentVirtualToolbarView)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v7 = self->_macTransparentVirtualToolbarView;
      self->_macTransparentVirtualToolbarView = v6;

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)self->_macTransparentVirtualToolbarView setBackgroundColor:clearColor];

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

- (void)setIsBelowMacSnapToMinWidth:(BOOL)width
{
  if (self->_isBelowMacSnapToMinWidth != width)
  {
    self->_isBelowMacSnapToMinWidth = width;
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

- (id)toolbarItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CKConversationListCollectionViewController *)self isBelowMacSnapToMinWidth])
  {
    filterToolbarItem3 = 0;
  }

  else
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

    if (isModernFilteringEnabled && [identifierCopy isEqualToString:@"CKMacToolbarFilteringItemIdentifier"])
    {
      generateFilterMenu = [(CKConversationListCollectionViewController *)self generateFilterMenu];
      filterToolbarItem = [(CKConversationListCollectionViewController *)self filterToolbarItem];

      if (filterToolbarItem)
      {
        filterToolbarItem2 = [(CKConversationListCollectionViewController *)self filterToolbarItem];
        [filterToolbarItem2 setMenu:generateFilterMenu];
      }

      else
      {
        filterToolbarItem2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"line.3.horizontal.decrease"];
        v11 = [[CKMacMenuToolbarItem alloc] initWithItemIdentifier:@"CKMacToolbarFilteringItemIdentifier" image:filterToolbarItem2 menu:generateFilterMenu showsIndicator:0];
        [(CKConversationListCollectionViewController *)self setFilterToolbarItem:v11];
      }

      filterToolbarItem3 = [(CKConversationListCollectionViewController *)self filterToolbarItem];
    }

    else
    {
      filterToolbarItem3 = 0;
    }

    if ([identifierCopy isEqualToString:@"CKMacToolbarNewComposeItemIdentifier"])
    {
      composeToolbarItem = [(CKConversationListCollectionViewController *)self composeToolbarItem];

      filterToolbarItem3 = composeToolbarItem;
    }
  }

  return filterToolbarItem3;
}

- (void)fetchPinningSuggestions
{
  if ([(CKConversationListCollectionViewController *)self numberOfPinnedConversations]< 1)
  {
    numberOfConversations = [(CKConversationListCollectionViewController *)self numberOfConversations];
    pinnedConversationSuggester = [(CKConversationListCollectionViewController *)self pinnedConversationSuggester];
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__CKConversationListCollectionViewController_fetchPinningSuggestions__block_invoke;
    block[3] = &unk_1E72EBC38;
    selfCopy = self;
    v10 = numberOfConversations;
    v8 = pinnedConversationSuggester;
    v3 = pinnedConversationSuggester;
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
      tipManager = [(CKConversationListCollectionViewController *)self tipManager];
      v6 = [v4 numberWithInteger:{objc_msgSend(tipManager, "presentedTip")}];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Update KT Failure tip to present: %@", &v7, 0xCu);
    }
  }

  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
}

- (void)_submitFeedbackIfNecessaryForSuggestedPinnedConversationsFollowingOnboardingCompletedSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
  {
    recommendedPinningConversations = [(CKConversationListCollectionViewController *)self recommendedPinningConversations];
    v5 = [(CKConversationListCollectionViewController *)self _pinningSuggestionsForConversations:?];
    if (successfullyCopy)
    {
      frozenPinnedConversations = [(CKConversationListCollectionViewController *)self frozenPinnedConversations];
      v7 = [(CKConversationListCollectionViewController *)self _pinningSuggestionsForConversations:frozenPinnedConversations];
      v8 = [MEMORY[0x1E69BDBD0] acceptedWithActualPinnings:v7 OnboardingSuggestions:v5];
    }

    else
    {
      v8 = [MEMORY[0x1E69BDBD0] skipOnboardingWithOnboardingSuggestions:v5];
    }

    pinnedConversationSuggester = [(CKConversationListCollectionViewController *)self pinnedConversationSuggester];
    [pinnedConversationSuggester provideMessagesPinningFeedback:v8];
  }
}

- (void)_submitFeedbackIfNecessaryForPinsChangedWithPreviousPinnedConversationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  conversationList = [(CKConversationListCollectionViewController *)self conversationList];
  loadedPinnedConversations = [conversationList loadedPinnedConversations];

  if (loadedPinnedConversations)
  {
    conversationList2 = [(CKConversationListCollectionViewController *)self conversationList];
    pinnedConversations = [conversationList2 pinnedConversations];

    v8 = [(CKConversationListCollectionViewController *)self _pinningSuggestionsForConversations:pinnedConversations];
    v9 = [MEMORY[0x1E69BDBD0] pinsChangedWithNowCurrentPins:v8];
    _feedbackPinningInteractionMethod = [(CKConversationListCollectionViewController *)self _feedbackPinningInteractionMethod];
    [v9 setInteractionMethod:_feedbackPinningInteractionMethod];
    if (!_feedbackPinningInteractionMethod)
    {
      v11 = [identifiersCopy count];
      if (v11 == [pinnedConversations count])
      {
        [v9 setActionType:3];
      }
    }

    pinnedConversationSuggester = [(CKConversationListCollectionViewController *)self pinnedConversationSuggester];
    [pinnedConversationSuggester provideMessagesPinningFeedback:v9];

    [(CKConversationListCollectionViewController *)self setPinningInteractionMethod:0];
  }
}

- (id)_pinningSuggestionsForConversations:(id)conversations
{
  v20 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = conversationsCopy;
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

        chat = [*(*(&v15 + 1) + 8 * i) chat];
        guid = [chat guid];

        if ([guid length])
        {
          v12 = [objc_alloc(MEMORY[0x1E69BDBE0]) initWithChatGuid:guid];
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
  pinningInteractionMethod = [(CKConversationListCollectionViewController *)self pinningInteractionMethod];
  if ((pinningInteractionMethod - 1) >= 4)
  {
    return 4;
  }

  else
  {
    return pinningInteractionMethod - 1;
  }
}

- (BOOL)_wantsThreeColumnLayout
{
  v2 = +[CKUIBehavior sharedBehaviors];
  wantsUniversalThreeColumn = [v2 wantsUniversalThreeColumn];

  return wantsUniversalThreeColumn;
}

- (void)_updateSelectAllButtonItemTitle
{
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count];

  numberOfConversations = [(CKConversationListCollectionViewController *)self numberOfConversations];
  v7 = CKFrameworkBundle();
  v10 = v7;
  if (v5 == numberOfConversations)
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
    delegate = [(CKConversationListCollectionViewController *)self delegate];
    isCollapsed = [delegate isCollapsed];

    if ((isCollapsed & 1) == 0)
    {
      collectionView = [(CKConversationListCollectionViewController *)self collectionView];
      indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
      v7 = [indexPathsForSelectedItems count];

      if (v7 == 1)
      {
        dataSource = [(CKConversationListCollectionViewController *)self dataSource];
        collectionView2 = [(CKConversationListCollectionViewController *)self collectionView];
        indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
        firstObject = [indexPathsForSelectedItems2 firstObject];
        v12 = [dataSource itemIdentifierForIndexPath:firstObject];
        [(CKConversationListCollectionViewController *)self setLastSelectedConversationItemIdentifier:v12];
      }

      dataSource2 = [(CKConversationListCollectionViewController *)self dataSource];
      lastSelectedConversationItemIdentifier = [(CKConversationListCollectionViewController *)self lastSelectedConversationItemIdentifier];
      v15 = [dataSource2 indexPathForItemIdentifier:lastSelectedConversationItemIdentifier];

      [(CKConversationListCollectionViewController *)self _selectConversationAtIndexPath:v15 animated:CKIsRunningInMacCatalyst() == 0];
    }

    if ([(CKConversationListCollectionViewController *)self filterMode]!= 7)
    {

      [(CKConversationListCollectionViewController *)self setEditingMode:0];
    }
  }
}

- (void)_configureNavbarButtonsForNavigationItem:(id)item
{
  v49[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  [itemCopy setHidesBackButton:{-[CKConversationListCollectionViewController _hidesBackButton](self, "_hidesBackButton")}];
  v5 = +[CKUIBehavior sharedBehaviors];
  supportsConversationListEditing = [v5 supportsConversationListEditing];

  if (supportsConversationListEditing)
  {
    _isEditButtonPlacedOnLeft = [(CKConversationListCollectionViewController *)self _isEditButtonPlacedOnLeft];
    editingMode = [(CKConversationListCollectionViewController *)self editingMode];
    switch(editingMode)
    {
      case 2uLL:
        if ([(CKConversationListCollectionViewController *)self isShowingPinningOnboarding])
        {
          cancelButtonItem = [(CKConversationListCollectionViewController *)self cancelButtonItem];
          v35 = cancelButtonItem;
          composeButtonItem = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];

          doneButtonItem = [(CKConversationListCollectionViewController *)self doneButtonItem];
          v34 = doneButtonItem;
          v12 = MEMORY[0x1E695DEC8];
          v13 = &v34;
          goto LABEL_13;
        }

        doneButtonItem2 = [(CKConversationListCollectionViewController *)self doneButtonItem];
        doneButtonItem = doneButtonItem2;
        if (!_isEditButtonPlacedOnLeft)
        {
          v32 = doneButtonItem2;
          v21 = MEMORY[0x1E695DEC8];
          v22 = &v32;
          goto LABEL_36;
        }

        v33 = doneButtonItem2;
        v16 = MEMORY[0x1E695DEC8];
        v17 = &v33;
        break;
      case 1uLL:
        if ([(CKConversationListCollectionViewController *)self shouldShowPinnedConversations])
        {
          doneButtonItem3 = [(CKConversationListCollectionViewController *)self doneButtonItem];
          doneButtonItem = doneButtonItem3;
          if (!_isEditButtonPlacedOnLeft)
          {
            v41 = doneButtonItem3;
            v21 = MEMORY[0x1E695DEC8];
            v22 = &v41;
            goto LABEL_36;
          }

          v42 = doneButtonItem3;
          v16 = MEMORY[0x1E695DEC8];
          v17 = &v42;
        }

        else
        {
          if ([(CKConversationListCollectionViewController *)self filterMode]== 7)
          {
            mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
            isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

            if (isModernFilteringEnabled && ![(CKConversationListCollectionViewController *)self isRecentlyDeletedModal])
            {
              doneButtonItem = [(CKConversationListCollectionViewController *)self filteringButtonItem];
              v40 = doneButtonItem;
              v21 = MEMORY[0x1E695DEC8];
              v22 = &v40;
              goto LABEL_36;
            }

            if ([(CKConversationListCollectionViewController *)self isRecentlyDeletedModal])
            {
              doneButtonItem = [(CKConversationListCollectionViewController *)self closeButtonItem];
              v39 = doneButtonItem;
              v21 = MEMORY[0x1E695DEC8];
              v22 = &v39;
              goto LABEL_36;
            }

LABEL_19:
            v14 = 0;
            composeButtonItem = 0;
            goto LABEL_39;
          }

          isOscarModal = [(CKConversationListCollectionViewController *)self isOscarModal];
          doneButtonItem4 = [(CKConversationListCollectionViewController *)self doneButtonItem];
          doneButtonItem = doneButtonItem4;
          if (!isOscarModal)
          {
            v37 = doneButtonItem4;
            composeButtonItem = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];

            doneButtonItem = [(CKConversationListCollectionViewController *)self selectAllButtonItem];
            v36 = doneButtonItem;
            v12 = MEMORY[0x1E695DEC8];
            v13 = &v36;
            goto LABEL_13;
          }

          v38 = doneButtonItem4;
          v16 = MEMORY[0x1E695DEC8];
          v17 = &v38;
        }

        break;
      case 0uLL:
        if ([(CKConversationListCollectionViewController *)self isOscarModal])
        {
          editOscarButtonItem = [(CKConversationListCollectionViewController *)self editOscarButtonItem];
          v48 = editOscarButtonItem;
          composeButtonItem = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];

          doneButtonItem = [(CKConversationListCollectionViewController *)self closeButtonItem];
          v47 = doneButtonItem;
          v12 = MEMORY[0x1E695DEC8];
          v13 = &v47;
LABEL_13:
          v14 = [v12 arrayWithObjects:v13 count:1];
LABEL_38:

          goto LABEL_39;
        }

        if (_isEditButtonPlacedOnLeft)
        {
          editButtonItem = [(CKConversationListCollectionViewController *)self editButtonItem];
          v46 = editButtonItem;
          composeButtonItem = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];

          mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          isModernFilteringEnabled2 = [mEMORY[0x1E69A8070]2 isModernFilteringEnabled];

          if (isModernFilteringEnabled2)
          {
            doneButtonItem = [(CKConversationListCollectionViewController *)self filteringButtonItem];
            v45 = doneButtonItem;
            v12 = MEMORY[0x1E695DEC8];
            v13 = &v45;
            goto LABEL_13;
          }

          v14 = MEMORY[0x1E695E0F0];
LABEL_39:
          [itemCopy setLeftBarButtonItems:composeButtonItem animated:1];
          goto LABEL_40;
        }

        mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isModernFilteringEnabled3 = [mEMORY[0x1E69A8070]3 isModernFilteringEnabled];

        if (isModernFilteringEnabled3)
        {
          doneButtonItem = [(CKConversationListCollectionViewController *)self editButtonItem];
          v44[0] = doneButtonItem;
          filteringButtonItem = [(CKConversationListCollectionViewController *)self filteringButtonItem];
          v44[1] = filteringButtonItem;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];

LABEL_37:
          composeButtonItem = 0;
          goto LABEL_38;
        }

        doneButtonItem = [(CKConversationListCollectionViewController *)self optionsButtonItem];
        v43 = doneButtonItem;
        v21 = MEMORY[0x1E695DEC8];
        v22 = &v43;
LABEL_36:
        v14 = [v21 arrayWithObjects:v22 count:{1, v32}];
        goto LABEL_37;
      default:
        goto LABEL_19;
    }

    composeButtonItem = [v16 arrayWithObjects:v17 count:1];
    v14 = 0;
    goto LABEL_38;
  }

  [itemCopy setLeftBarButtonItems:0 animated:1];
  composeButtonItem = [(CKConversationListCollectionViewController *)self composeButtonItem];
  v49[0] = composeButtonItem;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
LABEL_40:
  [itemCopy setRightBarButtonItems:v14 animated:1];
}

- (BOOL)_hasStewieConversationSelected
{
  v24 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  isStewieActive = [mEMORY[0x1E69A5B00] isStewieActive];

  if (!isStewieActive)
  {
    return 0;
  }

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = indexPathsForSelectedItems;
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
        dataSource = [(CKConversationListCollectionViewController *)self dataSource];
        v14 = [dataSource itemIdentifierForIndexPath:v12];

        v15 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v14];
        isStewieConversation = [v15 isStewieConversation];

        if (isStewieConversation)
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
    _hasUnreadConversation = [(CKConversationListCollectionViewController *)self _hasUnreadConversation];
    v6 = CKFrameworkBundle();
    v7 = v6;
    if (_hasUnreadConversation)
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
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CKConversationListCollectionViewController__hasUnreadConversation__block_invoke;
  v6[3] = &unk_1E72F5638;
  v6[4] = selfCopy;
  v6[5] = &v7;
  [indexPathsForSelectedItems enumerateObjectsUsingBlock:v6];
  LOBYTE(selfCopy) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return selfCopy;
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

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sessionCopy = session;
  pathCopy = path;
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
    if (-[CKConversationListCollectionViewController sectionHasActionableConversations:](self, "sectionHasActionableConversations:", [pathCopy section]))
    {
      v12 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:pathCopy];
      if (v12)
      {
        [sessionCopy setLocalContext:@"CKConversationListDragContext"];
        v13 = [(CKConversationListCollectionViewController *)self _dragItemsForConversation:v12 indexPath:pathCopy inCollectionView:viewCopy];
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
        section = [pathCopy section];
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Not creating items for a new drag session for a drag from a non-actionable section: %ld", &v15, 0xCu);
      }

      goto LABEL_12;
    }
  }

  v13 = MEMORY[0x1E695E0F0];
LABEL_16:

  return v13;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sessionCopy = session;
  pathCopy = path;
  if (![sessionCopy hasItemsConformingToTypeIdentifiers:&unk_1F04E6FD8])
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

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  conversationPinningMultiDragEnabled = [mEMORY[0x1E69A8070] conversationPinningMultiDragEnabled];

  if ((conversationPinningMultiDragEnabled & 1) == 0)
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

  if (!-[CKConversationListCollectionViewController sectionHasActionableConversations:](self, "sectionHasActionableConversations:", [pathCopy section]))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = 134217984;
        section = [pathCopy section];
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Not creating items to addd to a drag session for a drag from a non-actionable section: %ld", &v19, 0xCu);
      }

LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v14 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:pathCopy];
  if (v14)
  {
    v15 = [(CKConversationListCollectionViewController *)self _dragItemsForConversation:v14 indexPath:pathCopy inCollectionView:viewCopy];
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

- (id)_dragItemsForConversation:(id)conversation indexPath:(id)path inCollectionView:(id)view
{
  v30 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  pathCopy = path;
  viewCopy = view;
  v11 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  [v11 registerObject:conversationCopy visibility:3];
  v12 = [conversationCopy activityForNewSceneCreatedViaDrag:1];
  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        userInfo = [v12 userInfo];
        *buf = 138412546;
        v27 = v12;
        v28 = 2112;
        v29 = userInfo;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Creating conversation list drag item with user activity: %@, userInfo: %@", buf, 0x16u);
      }
    }

    [v11 registerObject:v12 visibility:1];
  }

  v15 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v11];
  [v15 setLocalObject:conversationCopy];
  if ([(CKConversationListCollectionViewController *)self _shouldUsePreviewProviderForDragItemAtIndexPath:pathCopy])
  {
    objc_initWeak(buf, self);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __112__CKConversationListCollectionViewController_DragAndDrop___dragItemsForConversation_indexPath_inCollectionView___block_invoke;
    v21 = &unk_1E72F6548;
    objc_copyWeak(&v24, buf);
    v22 = conversationCopy;
    v23 = viewCopy;
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

- (BOOL)_shouldUsePreviewProviderForDragItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (CKIsRunningInMacCatalyst())
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy section] != 2;
  }

  return v4;
}

- (id)dragPreviewViewForPinnedConversation:(id)conversation inCollectionView:(id)view
{
  viewCopy = view;
  conversationCopy = conversation;
  v8 = [(CKConversationListCollectionViewController *)self _snapshotOfAvatarViewForConversation:conversationCopy];
  [viewCopy bounds];
  v10 = v9;
  v12 = v11;

  conversationLayout = [(CKConversationListCollectionViewController *)self conversationLayout];
  v14 = +[CKUIBehavior sharedBehaviors];
  [conversationLayout widthForPinnedConversationCellInCollectionViewOfSize:objc_msgSend(v14 numberOfItems:{"maximumNumberOfPinnedConversations"), v10, v12}];
  v16 = v15;

  v17 = [[CKPinnedConversationView alloc] initWithFrame:0.0, 0.0, v16, v16];
  [(CKPinnedConversationView *)v17 setShowsLiveActivity:0];
  [(CKPinnedConversationView *)v17 setConversation:conversationCopy];

  [(CKPinnedConversationView *)v17 setAvatarSnapshot:v8];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CKPinnedConversationView *)v17 setBackgroundColor:clearColor];

  [(CKPinnedConversationView *)v17 setLayoutStyle:[(CKConversationListCollectionViewController *)self pinnedConversationViewLayoutStyle]];
  [(CKPinnedConversationView *)v17 sizeToFit];

  return v17;
}

- (id)_snapshotOfAvatarViewForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([conversationCopy isPinned])
  {
    v5 = 2;
  }

  else
  {
    v5 = 5;
  }

  v6 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:conversationCopy inSection:v5];

  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  v8 = [dataSource indexPathForItemIdentifier:v6];

  if (!v8)
  {
    goto LABEL_12;
  }

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pinnedConversationView = [v10 pinnedConversationView];
    avatarView = [pinnedConversationView avatarView];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    avatarView = [v10 avatarView];
LABEL_9:

    if (avatarView)
    {
      contentImage = [avatarView contentImage];
      if (contentImage)
      {
        v14 = contentImage;
      }

      else
      {
        [avatarView bounds];
        v19.width = v15;
        v19.height = v16;
        UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
        [avatarView bounds];
        [avatarView drawViewHierarchyInRect:1 afterScreenUpdates:?];
        v14 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
      }

      v10 = avatarView;
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

- (id)dragOrDropPreviewParametersForItemAtIndexPath:(id)path inCollectionView:(id)view
{
  if ([path section] == 2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:clearColor];

    bezierPath = [MEMORY[0x1E69DC728] bezierPath];
    [v4 setShadowPath:bezierPath];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_destinationSectionForDropSession:(id)session destinationIndexPath:(id)path
{
  sessionCopy = session;
  pathCopy = path;
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];
  v10 = [snapshot numberOfItemsInSection:&unk_1F04E82E0];

  if (pathCopy && [pathCopy section] == 2 && objc_msgSend(pathCopy, "item") <= v10)
  {
    v17 = 2;
  }

  else
  {
    v11 = [(CKConversationListCollectionViewController *)self _conversationsFromLocalDropSession:sessionCopy];
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
      collectionView = [(CKConversationListCollectionViewController *)self collectionView];
      [sessionCopy locationInView:collectionView];
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

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v21[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  updateCopy = update;
  pathCopy = path;
  if ([updateCopy hasItemsConformingToTypeIdentifiers:&unk_1F04E6FF0])
  {
    v11 = [(CKConversationListCollectionViewController *)self _conversationDropProposalForCollectionView:viewCopy dropSession:updateCopy withDestinationIndexPath:pathCopy];
  }

  else
  {
    v21[0] = *MEMORY[0x1E6963800];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v13 = [updateCopy hasItemsConformingToTypeIdentifiers:v12];

    if (v13)
    {
      v14 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:pathCopy];
      unsentComposition = [v14 unsentComposition];
      isAudioComposition = [unsentComposition isAudioComposition];
      v17 = objc_alloc(MEMORY[0x1E69DC838]);
      if (isAudioComposition)
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

- (id)_conversationDropProposalForCollectionView:(id)view dropSession:(id)session withDestinationIndexPath:(id)path
{
  v60 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sessionCopy = session;
  pathCopy = path;
  v10 = [(CKConversationListCollectionViewController *)self _conversationsFromLocalDropSession:sessionCopy];
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

        pinningIdentifier = [*(*(&v50 + 1) + 8 * i) pinningIdentifier];
        if ([pinningIdentifier length])
        {
          [v11 addObject:pinningIdentifier];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v13);
  }

  pinnedConversationIdentifiers = [(CKConversationListCollectionViewController *)self pinnedConversationIdentifiers];
  v18 = [(CKConversationListCollectionViewController *)self _destinationSectionForDropSession:sessionCopy destinationIndexPath:pathCopy];
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

          if ([pinnedConversationIdentifiers containsObject:*(*(&v46 + 1) + 8 * j)])
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

  v19 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:pinnedConversationIdentifiers];
  array = [v11 array];
  [v19 removeObjectsInArray:array];

  array2 = [v11 array];
  [v19 addObjectsFromArray:array2];

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

      else if (pathCopy)
      {
        v37 = [pathCopy section] == 2;
        v38 = IMOSLoggingEnabled();
        if (v37)
        {
          if (v38)
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              section = [pathCopy section];
              item = [pathCopy item];
              *buf = 134218240;
              v56 = section;
              v57 = 2048;
              v58 = item;
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

- (BOOL)_isDropForSession:(id)session toLeadingEdgeOfView:(id)view
{
  viewCopy = view;
  [session locationInView:viewCopy];
  v7 = v6;
  [viewCopy bounds];
  MidX = CGRectGetMidX(v10);
  LODWORD(session) = [viewCopy _shouldReverseLayoutDirection];

  if (session)
  {
    return v7 > MidX;
  }

  else
  {
    return v7 < MidX;
  }
}

- (void)collectionView:(id)view dropSessionDidEnter:(id)enter
{
  if ([enter hasItemsConformingToTypeIdentifiers:&unk_1F04E7008])
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

- (void)collectionView:(id)view dropSessionDidExit:(id)exit
{
  [(CKConversationListCollectionViewController *)self setIsShowingPinnedChatDropTarget:0, exit];

  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:1];
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  if ([end hasItemsConformingToTypeIdentifiers:&unk_1F04E7020])
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

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  v9[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = [sessionCopy hasItemsConformingToTypeIdentifiers:&unk_1F04E7038];
  v9[0] = *MEMORY[0x1E6963800];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [sessionCopy hasItemsConformingToTypeIdentifiers:v6];

  LOBYTE(v6) = [MEMORY[0x1E69A82C0] dropSessionIsRepositioningSticker:sessionCopy];
  return (v6 ^ 1) & (v5 | v7);
}

- (id)_conversationFromDragItem:(id)item
{
  localObject = [item localObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = localObject;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_conversationsFromLocalDropSession:(id)session
{
  v20 = *MEMORY[0x1E69E9840];
  localDragSession = [session localDragSession];
  items = [localDragSession items];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = items;
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

- (id)_conversationAfterDropDestination:(id)destination fromDiffableDataSource:(id)source snapshot:(id)snapshot excludingDraggedConversation:(id)conversation
{
  destinationCopy = destination;
  sourceCopy = source;
  conversationCopy = conversation;
  v31 = [snapshot numberOfItemsInSection:&unk_1F04E82E0];
  if ([conversationCopy isPinned])
  {
    v13 = 2;
  }

  else
  {
    v13 = 5;
  }

  selfCopy = self;
  v14 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:conversationCopy inSection:v13];
  if (v14)
  {
    v15 = [sourceCopy indexPathForItemIdentifier:v14];
    v16 = v15;
    if (v15)
    {
      if ([v15 section] == 2)
      {
        item = [v16 item];
        if (item < [destinationCopy item])
        {
          item2 = [destinationCopy item] + 1;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  item2 = [destinationCopy item];
LABEL_11:
  if (item2 >= v31)
  {
    v23 = 0;
  }

  else
  {
    v28 = v16;
    v29 = v14;
    while (1)
    {
      v19 = destinationCopy;
      v20 = [MEMORY[0x1E696AC88] indexPathForItem:item2 inSection:{objc_msgSend(destinationCopy, "section", v28, v29)}];
      v21 = sourceCopy;
      v22 = [sourceCopy itemIdentifierForIndexPath:v20];
      v23 = [(CKConversationListCollectionViewController *)selfCopy conversationForItemIdentifier:v22];
      pinningIdentifier = [conversationCopy pinningIdentifier];
      pinningIdentifier2 = [v23 pinningIdentifier];
      v26 = [pinningIdentifier isEqualToString:pinningIdentifier2];

      if ((v26 & 1) == 0)
      {
        break;
      }

      ++item2;
      destinationCopy = v19;
      sourceCopy = v21;
      if (v31 == item2)
      {
        v23 = 0;
        goto LABEL_18;
      }
    }

    destinationCopy = v19;
    sourceCopy = v21;
LABEL_18:
    v16 = v28;
    v14 = v29;
  }

  return v23;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  v15[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  coordinatorCopy = coordinator;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Performing drop using non-diffable reordering (performDropWithCoordinator:)", v14, 2u);
    }
  }

  session = [coordinatorCopy session];
  v10 = [session hasItemsConformingToTypeIdentifiers:&unk_1F04E7050];

  if (v10)
  {
    [(CKConversationListCollectionViewController *)self _performConversationDropWithCollectionView:viewCopy dropCoordinator:coordinatorCopy];
  }

  else
  {
    session2 = [coordinatorCopy session];
    v15[0] = *MEMORY[0x1E6963800];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13 = [session2 hasItemsConformingToTypeIdentifiers:v12];

    if (v13)
    {
      [(CKConversationListCollectionViewController *)self _performItemDropWithCollectionView:viewCopy dropCoordinator:coordinatorCopy];
    }
  }
}

- (void)_performConversationDropWithCollectionView:(id)view dropCoordinator:(id)coordinator
{
  v72 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  coordinatorCopy = coordinator;
  proposal = [coordinatorCopy proposal];
  operation = [proposal operation];

  if (operation != 3)
  {
    goto LABEL_37;
  }

  session = [coordinatorCopy session];
  v11 = [(CKConversationListCollectionViewController *)self _conversationsFromLocalDropSession:session];
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

        pinningIdentifier = [*(*(&v65 + 1) + 8 * i) pinningIdentifier];
        if ([pinningIdentifier length])
        {
          [v12 addObject:pinningIdentifier];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v15);
  }

  v52 = viewCopy;

  [coordinatorCopy destinationIndexPath];
  v20 = v19 = session;
  v21 = [(CKConversationListCollectionViewController *)self _destinationSectionForDropSession:session destinationIndexPath:?];
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];
  v23 = +[CKPinnedConversationDropTargetCollectionViewCell uniqueIdentifier];
  v70 = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v53 = snapshot;
  [snapshot deleteItemsWithIdentifiers:v24];

  isShowingPinnedChatDropTarget = [(CKConversationListCollectionViewController *)self isShowingPinnedChatDropTarget];
  [(CKConversationListCollectionViewController *)self setIsShowingPinnedChatDropTarget:0];
  v51 = v13;
  if (v21 == 5)
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __118__CKConversationListCollectionViewController_DragAndDrop___performConversationDropWithCollectionView_dropCoordinator___block_invoke_2;
    v60[3] = &unk_1E72ED3A0;
    v60[4] = self;
    v61 = snapshot;
    [v13 enumerateObjectsUsingBlock:v60];

    v26 = v19;
  }

  else
  {
    v26 = v19;
    if (v21 == 2)
    {
      if ([v13 count] != 1 || isShowingPinnedChatDropTarget)
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
        firstObject = [v13 firstObject];
        v27 = [(CKConversationListCollectionViewController *)self _conversationAfterDropDestination:v20 fromDiffableDataSource:dataSource snapshot:v53 excludingDraggedConversation:firstObject];
      }

      else
      {
        v29 = [v53 numberOfItemsInSection:&unk_1F04E82E0];
        conversationLayout = [(CKConversationListCollectionViewController *)self conversationLayout];
        v31 = [conversationLayout numberOfPinnedConversationColumnsForLayoutStyle:{-[CKConversationListCollectionViewController pinnedConversationViewLayoutStyle](self, "pinnedConversationViewLayoutStyle")}];

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

        firstObject = [v53 itemIdentifiersInSectionWithIdentifier:&unk_1F04E82E0];
        v28FirstObject = [firstObject firstObject];
        v27 = [(CKConversationListCollectionViewController *)self conversationForItemIdentifier:v28FirstObject];

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
  v54 = coordinatorCopy;
  session2 = [coordinatorCopy session];
  items = [session2 items];

  v37 = [items countByEnumeratingWithState:&v56 objects:v69 count:16];
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
          objc_enumerationMutation(items);
        }

        v41 = *(*(&v56 + 1) + 8 * j);
        v42 = [(CKConversationListCollectionViewController *)self _conversationFromDragItem:v41];
        if (v42)
        {
          v43 = [(CKConversationListCollectionViewController *)self itemIdentifierForConversation:v42 inSection:v21];
          [dataSource indexPathForItemIdentifier:v43];
          selfCopy = self;
          v46 = v45 = v21;
          v47 = [v54 dropItem:v41 toItemAtIndexPath:v46];

          v21 = v45;
          self = selfCopy;
        }
      }

      v38 = [items countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v38);
  }

  viewCopy = v52;
  coordinatorCopy = v54;
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

- (void)didReorderConversationsWithTransaction:(id)transaction
{
  transactionCopy = transaction;
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
  finalSnapshot = [transactionCopy finalSnapshot];
  [(CKConversationListCollectionViewController *)self commitPinnedConversationsFromSnapshot:finalSnapshot];
  [(CKConversationListCollectionViewController *)self setIsCommitingDiffableDataSourceTransaction:0];
}

- (void)commitPinnedConversationsFromSnapshot:(id)snapshot
{
  v29 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    v5 = [(CKConversationListCollectionViewController *)self pinnedConversationsFromSnapshot:snapshotCopy];
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

    pinnedConversations = [(CKConversationListCollectionViewController *)self pinnedConversations];
    v11 = pinnedConversations;
    if (pinnedConversations)
    {
      v12 = pinnedConversations;
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
      _allFrozenConversations = [(CKConversationListCollectionViewController *)self _allFrozenConversations];
      if (_allFrozenConversations)
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

              chat = [*(*(&v24 + 1) + 8 * i) chat];
              [v15 addObject:chat];
            }

            v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v18);
        }

        mEMORY[0x1E69A5C38] = [MEMORY[0x1E69A5C38] sharedInstance];
        v23 = [v15 copy];
        [mEMORY[0x1E69A5C38] setPinnedChats:v23 withUpdateReason:*MEMORY[0x1E69A5A20]];

        _allFrozenConversations = 0;
      }
    }

    [(CKConversationListCollectionViewController *)self updateContentsOfAllCellsAnimated:1];
  }
}

- (void)_performItemDropWithCollectionView:(id)view dropCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  if (destinationIndexPath)
  {
    v9 = [(CKConversationListCollectionViewController *)self conversationAtIndexPath:destinationIndexPath];
    unsentComposition = [v9 unsentComposition];
    if (([unsentComposition isAudioComposition] & 1) == 0)
    {
      array = [MEMORY[0x1E695DF70] array];
      items = [coordinatorCopy items];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __110__CKConversationListCollectionViewController_DragAndDrop___performItemDropWithCollectionView_dropCoordinator___block_invoke;
      v18[3] = &unk_1E72F6598;
      v13 = array;
      v19 = v13;
      [items enumerateObjectsUsingBlock:v18];

      objc_initWeak(&location, self);
      if ([v13 count])
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __110__CKConversationListCollectionViewController_DragAndDrop___performItemDropWithCollectionView_dropCoordinator___block_invoke_2;
        v14[3] = &unk_1E72EE538;
        objc_copyWeak(&v16, &location);
        v15 = destinationIndexPath;
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

- (void)updateFocusFilterBannerWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  [(CKConversationListCollectionViewController *)self updateSnapshotAnimatingDifferences:?];
  v5 = +[CKFocusFilterBannerCollectionViewCell itemIdentifier];
  [(CKConversationListCollectionViewController *)self updateContentsOfCellWithItemIdentifier:v5 animated:animationCopy];
}

- (void)configureFocusFilterCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setFocusFilterBannerDelegate:self];
  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  [cellCopy setIsFocusFilterEnabled:{objc_msgSend(mEMORY[0x1E69A8088], "userSwitchForFocusFilteringIsEnabled")}];

  [cellCopy setUseFullWidthKeylines:{-[CKConversationListCollectionViewController _focusFilterBannerShouldUseFullWidthKeylines](self, "_focusFilterBannerShouldUseFullWidthKeylines")}];
}

- (void)configureFocusFilterCollapsedCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setFocusFilterBannerDelegate:self];
  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  [cellCopy setIsFocusFilterEnabled:{objc_msgSend(mEMORY[0x1E69A8088], "userSwitchForFocusFilteringIsEnabled")}];
}

- (BOOL)_focusFilterBannerShouldUseFullWidthKeylines
{
  dataSource = [(CKConversationListCollectionViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  v4 = [snapshot numberOfSections] && objc_msgSend(snapshot, "numberOfItems") && objc_msgSend(snapshot, "numberOfItemsInSection:", &unk_1F04E85F8) <= 0 && (objc_msgSend(snapshot, "numberOfItemsInSection:", &unk_1F04E8610) > 0 || objc_msgSend(snapshot, "numberOfItemsInSection:", &unk_1F04E8628) > 0 || objc_msgSend(snapshot, "numberOfItemsInSection:", &unk_1F04E8640) > 0);
  return v4;
}

- (void)focusFilterBannerEnabledStateDidChange:(BOOL)change
{
  changeCopy = change;
  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  [mEMORY[0x1E69A8088] setUserSwitchForFocusFilteringIsEnabled:changeCopy];

  collectionView = [(CKConversationListCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (id)generateFilterMenu
{
  selfCopy = self;
  CKConversationListCollectionViewController.generateFilterMenu()(v3);
  v5 = v4;

  return v5;
}

- (void)beginHoldingConversationInConversationListIfNeeded:(id)needed
{
  neededCopy = needed;
  selfCopy = self;
  CKConversationListCollectionViewController.beginHoldingConversationInConversationListIfNeeded(conversation:)(neededCopy);
}

- (void)addFilterModesIfValid:(id)valid applyDefaultFallback:(BOOL)fallback
{
  sub_1902188FC(0, &qword_1EAD46510);
  sub_190218944();
  sub_190D57410();
  selfCopy = self;
  v6 = sub_190D574B0();

  sub_1908A7E38(v6, fallback);
}

- (void)removeFilterMode:(unint64_t)mode
{
  selfCopy = self;
  CKConversationListCollectionViewController.removeFilterMode(_:)();
}

- (void)filterModeChangedCommonActionsWithForcedUpdate:(BOOL)update
{
  selfCopy = self;
  CKConversationListCollectionViewController.filterModeChangedCommonActions(forcedUpdate:)(update);
}

- (void)updateFilteringElementsWithReason:(id)reason
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CKConversationListCollectionViewController.updateFilteringElements(reason:)(v8);
}

- (void)updateFiltersAfterNewComposeToConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  CKConversationListCollectionViewController.updateFiltersAfterNewCompose(sentConversation:)(conversationCopy);
}

- (void)filterCommandSelected:(id)selected
{
  selectedCopy = selected;
  selfCopy = self;
  sub_1908A9950(selectedCopy);
}

- (void)messageFilteringSelected:(id)selected
{
  selectedCopy = selected;
  selfCopy = self;
  sub_1908AF6CC(selectedCopy);
}

- (BOOL)shouldShowAlertForRemotelyManagedUser
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C9DD0]) init];
  shouldRequestMoreTime = [v2 shouldRequestMoreTime];

  return shouldRequestMoreTime;
}

- (id)getScreenTimePasscodeControllerWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  v6 = _sSo42CKConversationListCollectionViewControllerC7ChatKitE021getScreenTimePasscodeE012conversationSo012UINavigationE0CSo0A0C_tF_0(conversationCopy);

  return v6;
}

- (id)getAddToContactsRemoteAlertWithConversation:(id)conversation sender:(id)sender
{
  if (sender)
  {
    conversationCopy = conversation;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    conversationCopy2 = conversation;
    selfCopy2 = self;
  }

  v10 = CKConversationListCollectionViewController.getAddToContactsRemoteAlert(conversation:sender:)(conversation, v12);

  sub_19021E7D8(v12);

  return v10;
}

- (id)reportConcernForChat:(id)chat
{
  chatCopy = chat;
  selfCopy = self;
  CKConversationListCollectionViewController.reportConcern(for:)(v6, chatCopy);
  v8 = v7;

  return v8;
}

- (id)generateInternalMenuIfAllowedForConversations:(id)conversations
{
  sub_1902188FC(0, &qword_1EAD466B0);
  v4 = sub_190D57180();
  selfCopy = self;
  CKConversationListCollectionViewController.generateInternalMenuIfAllowed(conversations:)(v6, v4);
  v8 = v7;

  return v8;
}

- (id)spamContextMenuForCollectionView:(id)view indexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sub_190D51C00();
  v9 = sub_190D57180();
  viewCopy = view;
  selfCopy = self;
  CKConversationListCollectionViewController.spamContextMenu(collectionView:indexPaths:point:)(v12, viewCopy, v9, __PAIR128__(*&y, *&x));
  v14 = v13;

  return v14;
}

- (void)toolbarPresentPermanentDeletionConfirmationsForSpamConversations:(id)conversations sender:(id)sender
{
  sub_1902188FC(0, &qword_1EAD466B0);
  v6 = sub_190D57180();
  swift_unknownObjectRetain();
  selfCopy = self;
  CKConversationListCollectionViewController.toolbarPresentPermanentDeletionConfirmations(spamConversations:sender:)(v6, sender);
  swift_unknownObjectRelease();
}

- (void)setupTranslationAvailabilityWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
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
  selfCopy = self;
  sub_190C798DC(0, 0, v7, &unk_190DD75C8, v12);
}

- (id)captureFilteringStateForDiagnosticsRequest
{
  selfCopy = self;
  CKConversationListCollectionViewController.captureFilteringStateForDiagnosticsRequest()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61910);
  v3 = sub_190D56D60();

  return v3;
}

- (void)deleteButtonTappedForItemIdentifier:(id)identifier completionHandler:(id)handler cellToUpdate:(id)update alertsDisplayConfiguration:(id)configuration
{
  v9 = _Block_copy(handler);
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

  updateCopy = update;
  configurationCopy = configuration;
  selfCopy = self;
  CKConversationListCollectionViewController.deleteButtonTapped(itemIdentifier:completionHandler:cellToUpdate:alertsDisplayConfiguration:)(v10, v12, v9, v13, updateCopy, configurationCopy);
  sub_19022123C(v9);
}

- (id)deleteSwipeActionForIndexPath:(id)path
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  selfCopy = self;
  v9 = CKConversationListCollectionViewController.deleteSwipeAction(indexPath:)(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)recentlyDeletedContextMenuForCollectionView:(id)view indexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sub_190D51C00();
  v9 = sub_190D57180();
  viewCopy = view;
  selfCopy = self;
  CKConversationListCollectionViewController.recentlyDeletedContextMenu(collectionView:indexPaths:point:)(v12, viewCopy, v9, __PAIR128__(*&y, *&x));
  v14 = v13;

  return v14;
}

- (void)updateConversations:(id)conversations asRead:(BOOL)read
{
  sub_1902188FC(0, &qword_1EAD466B0);
  v6 = sub_190D57180();
  selfCopy = self;
  CKConversationListCollectionViewController.updateConversations(_:asRead:)(v6, read);
}

- (id)recoverableDeleteContextMenuActionWithConversations:(id)conversations collectionView:(id)view indexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sub_1902188FC(0, &qword_1EAD466B0);
  v10 = sub_190D57180();
  sub_190D51C00();
  v11 = sub_190D57180();
  viewCopy = view;
  selfCopy = self;
  CKConversationListCollectionViewController.recoverableDeleteContextMenuAction(conversations:collectionView:indexPaths:point:)(v14, v10, viewCopy, v11, __PAIR128__(*&y, *&x));
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