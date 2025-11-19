@interface MUIMessageListViewController
- (BOOL)_hasHighlightedMessages;
- (BOOL)_hasHighlightedMessagesVisible;
- (BOOL)_shouldAttachMailCleanupSection;
- (BOOL)_shouldDisplayHelpMailLearn;
- (BOOL)_shouldDisplayOnboardingTip;
- (BOOL)_shouldShimmer;
- (BOOL)canMoveDragItem:(id)a3 toBucket:(int64_t)a4;
- (BOOL)canShowUnseenSection;
- (BOOL)focusAllowed;
- (BOOL)hasUpdatedAllVisibleSections;
- (BOOL)isBucketBarHidden;
- (BOOL)messageListDataSource:(id)a3 section:(id)a4 shouldSuspendUpdatesAfterChange:(id)a5;
- (BOOL)messageListDataSource:(id)a3 shouldAnimateNextUpdateInSectionDataSource:(id)a4 change:(id)a5;
- (BOOL)messageSelectionStrategy:(id)a3 anyExpandedThreadContainsItemID:(id)a4;
- (BOOL)messageSelectionStrategy:(id)a3 isExpandedThreadWithItemID:(id)a4;
- (BOOL)selectRowOfItemID:(id)a3 scrollToVisible:(BOOL)a4 scrollPosition:(int64_t)a5 animated:(BOOL)a6;
- (BOOL)shouldDisplayGroupedSenders;
- (BOOL)shouldIncludeMailCleanupFilter;
- (Class)sectionListCellClassForMessageListSectionDataSource:(id)a3;
- (MUIMailboxFilterController)filterController;
- (MUIMailboxFilterViewModel)filterViewModel;
- (MUIMessageListViewController)initWithDaemonInterface:(id)a3 focusController:(id)a4 mailboxCategoryCloudStorage:(id)a5 avatarGenerator:(id)a6 bucketBarConfigurationController:(id)a7 mailboxes:(id)a8 contactStore:(id)a9 diagnosticsHelper:(id)a10;
- (MUIPriorityMessageListBackgroundDecorationView)shimmerView;
- (MUIiCloudMailCleanupService)iCloudMailCleanupService;
- (MessageListDataSource)dataSource;
- (MessageListViewControllerState)state;
- (NSPredicate)priorityPredicate;
- (NSString)userQueryString;
- (id)_configuredBucketsViewControllerWithMailboxes:(id)a3;
- (id)_currentDataForItemIDsInPriority;
- (id)_excludedMailboxesPredicate;
- (id)_indexPathsForSelectedItems;
- (id)_mailboxBucketBarConfigurationIdentifier;
- (id)_predicateForFiltersEnabled:(void *)a1;
- (id)_topHitsPredicate;
- (id)_updatedPredicateForSelectedBucket:(id)a3;
- (id)cellLayoutValuesForHighlightedMessages;
- (id)createMessageListForReload;
- (id)feedbackListViewModelForHelpMailLearnSectionDataSource:(id)a3;
- (id)indexPathOfSelectedMessageForMessageSelectionStrategy:(id)a3;
- (id)initialLoadCompletedPromiseForMessageListSectionDataSource:(id)a3;
- (id)messageListDataSource:(id)a3 sectionDataSourceForSection:(id)a4 messageList:(id)a5;
- (id)messageListItemsForDiagnosticsHelper:(id)a3;
- (id)messageSelectionStrategy:(id)a3 indexPathOfItemID:(id)a4;
- (id)messageSelectionStrategy:(id)a3 itemIDForIndexPath:(id)a4;
- (id)messageSelectionStrategy:(id)a3 messageListItemForItemID:(id)a4;
- (id)searchPredicateForMailboxes:(id)a3;
- (id)sectionDataSourceConfigurationWithSection:(id)a3 messageList:(id)a4;
- (id)updatedPredicateForFocusedAccounts:(id)a3;
- (int64_t)_prioritySectionIndex;
- (int64_t)numberOfItemsForMessageSelectionStrategy:(id)a3;
- (int64_t)selectedBucketForMUIMessageListUnbundledSectionDataSource:(id)a3;
- (uint64_t)_hasInitialLoadPromiseForSection:(uint64_t)a1;
- (void)_bucketBarUserInteractionEnabled:(BOOL)a3;
- (void)_disableFilters;
- (void)_enableFilters;
- (void)_highlightNextMessageAfterDeletingMessagesWithItemIdentifiers:(void *)a1;
- (void)_mailboxBucketBarConfigurationIdentifier;
- (void)_refreshBucketsSession;
- (void)_reportFilterButtonTapped;
- (void)_reportFilterChangeEvent:(void *)a3 filters:;
- (void)_resetMailboxRepositoryForMailboxes:(id)a3;
- (void)_selectAllMail;
- (void)_selectBucket:(int64_t)a3;
- (void)_selectPrimary;
- (void)_selectPromotions;
- (void)_selectTransactions;
- (void)_selectUpdates;
- (void)_shimmerViewIfNeededForPriorityCellWillDisplay:(BOOL)a3;
- (void)_shouldApplyFilterPredicate:(void *)a1;
- (void)_updateBucketBarIsHidden:(BOOL)a3;
- (void)_updatePreviouslyHighlightedMessages;
- (void)_updateUnseenCountQueries;
- (void)_updateViewPrimaryWithNoOnboardingIfNeeded;
- (void)applyFilterPredicate:(id)a3;
- (void)bucketBarConfigurationController:(id)a3 isHidden:(BOOL)a4 forMailboxes:(id)a5;
- (void)bucketBarConfigurationControllerRequiresReload:(id)a3;
- (void)cancelQueueSuspensionTimeout;
- (void)categoryGroupingPreferenceController:(id)a3 shouldDisableGrouping:(BOOL)a4 forBucket:(int64_t)a5;
- (void)changeCategoryOfDragItem:(id)a3 toBucket:(int64_t)a4 completion:(id)a5;
- (void)configureDelegatesForDataSource:(id)a3;
- (void)createMessageListForReload;
- (void)currentFocusChanged:(id)a3;
- (void)dataSource;
- (void)dealloc;
- (void)deselectAllItemsInCollectionView:(id)a3 animated:(BOOL)a4;
- (void)deselectSelectedItemsInCollectionView;
- (void)dismissMailCleanupTipForMailCleanupTipId:(id)a3;
- (void)filterController;
- (void)highlightedMessagesViewDidProvideFeedbackForMessage:(id)a3 feedbackType:(int64_t)a4 feedbackFeature:(int64_t)a5;
- (void)highlightedMessagesViewDidSelectMessage:(id)a3;
- (void)messageListDataSource:(id)a3 willUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6 cleanSnapshot:(BOOL)a7;
- (void)messageListDataSourcePrepareUpdate:(id)a3 section:(id)a4 cleanSnapshot:(BOOL)a5;
- (void)messageListDataSourceUpdateFailed:(id)a3 section:(id)a4;
- (void)messageListSectionDataSource:(id)a3 deletedMessagesWithItemIdentifiers:(id)a4;
- (void)messageListSectionDataSource:(id)a3 didAddMessagesWithItemIdentifiers:(id)a4;
- (void)messageListSectionDataSource:(id)a3 didConfigureCell:(id)a4 atIndexPath:(id)a5 item:(id)a6 itemWasCached:(BOOL)a7 duration:(double)a8;
- (void)messageListSectionDataSource:(id)a3 didFailToConfigureCellAtIndexPath:(id)a4 error:(id)a5;
- (void)messageListSectionDataSource:(id)a3 handleRowSelectionAfterMovingMessagesWithItemIdentifiers:(id)a4;
- (void)messageListSectionDataSource:(id)a3 updatedOldestItemsForMailboxes:(id)a4;
- (void)onAppearForMailCleanupTipId:(id)a3;
- (void)presentMailCleanupViewForMailCleanupTipId:(id)a3;
- (void)refreshHighlightedMessagesController;
- (void)reloadDataSourceApplyEmptySnapshot:(BOOL)a3;
- (void)reloadDataSourceWithMessageList:(id)a3 applyEmptySnapshot:(BOOL)a4;
- (void)reloadDataSourceWithMessageList:(id)a3 sections:(id)a4 applyEmptySnapshot:(BOOL)a5;
- (void)reloadDataSourceWithSearchPredicate:(id)a3;
- (void)reloadFromMailboxes;
- (void)selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)a3;
- (void)setCollectionView:(id)a3;
- (void)setFiltersEnabled:(BOOL)a3;
- (void)setFocusFilterEnabled:(BOOL)a3;
- (void)setInitialCellConfigurationCompleted:(BOOL)a3;
- (void)setMessageRepository:(id)a3;
- (void)setPrimitiveMailboxes:(id)a3;
- (void)setReferenceMessageListItem:(id)a3 referenceMessageList:(id)a4 showAsConversation:(BOOL)a5 animated:(BOOL)a6;
- (void)setSelectedBucket:(int64_t)a3;
- (void)setSwipeActionVisible:(BOOL)a3;
- (void)showBlankCellAlertForMessageListSectionDataSource:(id)a3 itemID:(id)a4 indexPath:(id)a5 reason:(id)a6;
- (void)toggleFilters;
- (void)updateFilterContextForMailboxes:(id)a3 focus:(id)a4 applyFilters:(BOOL)a5;
- (void)updateFilterControlWithFilterViewModel:(id)a3;
- (void)updateFilters;
- (void)updateHighlightsVisibility;
- (void)updateSelectedBucket:(int64_t)a3 unseenPredicate:(id)a4;
- (void)updateState:(id)a3 withMailboxes:(id)a4;
@end

@implementation MUIMessageListViewController

uint64_t ___ef_log_MUIMessageListViewController_block_invoke()
{
  _ef_log_MUIMessageListViewController_log = os_log_create("com.apple.email", "MUIMessageListViewController");

  return MEMORY[0x2821F96F8]();
}

- (MessageListDataSource)dataSource
{
  v17 = *MEMORY[0x277D85DE8];
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [(MUIMessageListViewController *)self collectionView];
    v5 = _ef_log_MUIMessageListViewController();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v11 = 138412802;
        v12 = v8;
        v13 = 2048;
        v14 = self;
        v15 = 2114;
        v16 = v4;
        _os_log_impl(&dword_214A5E000, &v6->super, OS_LOG_TYPE_DEFAULT, "<%@: %p> Creating MessageListDataSource with collectionView: %{public}@", &v11, 0x20u);
      }

      v9 = [[MessageListDataSource alloc] initWithCollectionView:v4];
      [(MUIMessageListViewController *)self configureDelegatesForDataSource:v9];
      v6 = self->_dataSource;
      self->_dataSource = v9;
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MUIMessageListViewController dataSource];
    }

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (MessageListViewControllerState)state
{
  state = self->_state;
  if (!state)
  {
    v4 = objc_alloc_init(MessageListViewControllerState);
    v5 = self->_state;
    self->_state = v4;

    state = self->_state;
  }

  return state;
}

- (void)_updateViewPrimaryWithNoOnboardingIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(MUIMessageListViewController *)self selectedBucket]== 1)
  {
    v2 = [MEMORY[0x277CBEBD0] em_userDefaults];
    v3 = MUIOnboardingTipKeyForBucket(1);
    if ([v2 integerForKey:v3] == 1 && !objc_msgSend(v2, "integerForKey:", *MEMORY[0x277D06C68]))
    {
      v4 = *MEMORY[0x277D06D18];
      v5 = [v2 integerForKey:*MEMORY[0x277D06D18]];
      v6 = 2;
      if (v5 < 2)
      {
        v6 = v5;
      }

      v7 = v6 + 1;
      v8 = _ef_log_MUIMessageListViewController();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 134217984;
        v10 = v7;
        _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_INFO, "Updated viewedPrimaryWithNoOnboarding:%ld", &v9, 0xCu);
      }

      [v2 setInteger:v7 forKey:v4];
    }
  }
}

- (void)reloadFromMailboxes
{
  [(MUIMessageListViewController *)self setPrimitiveFocusFilterEnabled:1];
  v3 = [(MUIMessageListViewController *)self mailboxes];
  v4 = [(MUIMessageListViewController *)self currentFocus];
  [(MUIMessageListViewController *)self updateFilterContextForMailboxes:v3 focus:v4 applyFilters:0];

  [(MUIMessageListViewController *)self reloadDataSource];
}

- (id)createMessageListForReload
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(MUIMessageListViewController *)self mailboxes];
  if (![v3 count])
  {
    v5 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MUIMessageListViewController createMessageListForReload];
    }

    goto LABEL_7;
  }

  v4 = [(MUIMessageListViewController *)self messageRepository];

  if (!v4)
  {
    v5 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MUIMessageListViewController createMessageListForReload];
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v8 = objc_alloc_init(MEMORY[0x277D07178]);
  v9 = [(MUIMessageListViewController *)self shouldDisplayGroupedSenders];
  v10 = [(MUIMessageListViewController *)self unseenPredicate];
  if (v10)
  {
    [(MUIMessageListViewController *)self createMessageListForReload:v10];
  }

  v11 = [(MUIMessageListViewController *)self priorityPredicate];
  v12 = [(MUIMessageListViewController *)self priorityPredicate];

  if (v12)
  {
    [v8 setOrAddObject:v11 forKey:@"MessageListSectionPriority"];
  }

  if (v9)
  {
    v13 = [MEMORY[0x277CBEBD0] em_userDefaults];
    v14 = [v13 preferredGroupedSenderGrouping];

    v15 = MEMORY[0x277D06E00];
    v16 = [(MUIMessageListViewController *)self messageRepository];
    v17 = [v15 groupedCommerceSenderMessageListForMailboxes:v3 withRepository:v16 grouping:v14 sectionPredicates:v8 countOfItemsToPrecache:16];

    v18 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v17 query];
      *buf = 138412802;
      v55 = v20;
      v56 = 2048;
      v57 = self;
      v58 = 2112;
      v59 = v21;
      _os_log_impl(&dword_214A5E000, v18, OS_LOG_TYPE_DEFAULT, "<%@: %p> Created new grouped sender message list for mailboxes with query %@", buf, 0x20u);
    }

    goto LABEL_34;
  }

  v51 = v8;
  v18 = [(MUIMessageListViewController *)self state];
  v22 = [v18 containsInbox];
  v23 = 0;
  v48 = v12;
  if (([v18 containsSent]& 1) == 0 && v22)
  {
    v23 = [(MUIMessageListViewController *)self shouldHideFollowUp]^ 1;
  }

  v49 = v22;
  v50 = v11;
  if ([v3 ef_any:&__block_literal_global_81_0])
  {
    v24 = 32;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 | [v18 isSearch]^ 1;
  if ([v18 containsInbox]&& [(MUIMessageListViewController *)self isThreaded])
  {
    v25 |= 0x1000uLL;
  }

  v26 = MEMORY[0x277D06E08];
  v27 = [(MUIMessageListViewController *)self mailboxRepository];
  v28 = [(MUIMessageListViewController *)self senderSpecificMessageListItem];
  v29 = [v28 senderList];
  v30 = [v29 firstObject];
  v31 = [v26 transformPredicateWithMailboxes:v3 mailboxTypeResolver:v27 shouldIncludeFollowUps:v23 shouldIncludeReadLater:v49 limitToSender:v30];

  v32 = [v18 sortDescriptors];
  LODWORD(v28) = [(MUIMessageListViewController *)self isThreaded];
  v33 = MEMORY[0x277D06E00];
  v34 = [(MUIMessageListViewController *)self messageRepository];
  if (v28)
  {
    v17 = [v33 threadedMessageListForMailboxes:v3 withRepository:v34 additionalQueryOptions:v25 countOfItemsToPrecache:16 shouldUpdateDisplayDate:1 sortDescriptors:v32 sectionPredicates:v51 transformPredicate:v31];

    v35 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v17 query];
      *buf = 138412802;
      v55 = v37;
      v56 = 2048;
      v57 = self;
      v58 = 2112;
      v59 = v38;
      v39 = "<%@: %p> Created new threaded list for mailboxes with query %@";
LABEL_32:
      _os_log_impl(&dword_214A5E000, v35, OS_LOG_TYPE_DEFAULT, v39, buf, 0x20u);
    }
  }

  else
  {
    v17 = [v33 simpleMessageListForMailboxes:v3 withRepository:v34 additionalQueryOptions:v25 countOfItemsToPrecache:16 shouldUpdateDisplayDate:1 sortDescriptors:v32 sectionPredicates:v51 transformPredicate:v31];

    v35 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      v37 = NSStringFromClass(v40);
      v38 = [v17 query];
      *buf = 138412802;
      v55 = v37;
      v56 = 2048;
      v57 = self;
      v58 = 2112;
      v59 = v38;
      v39 = "<%@: %p> Created new non-threaded list for mailboxes with query %@";
      goto LABEL_32;
    }
  }

  v12 = v48;

  v11 = v50;
  v8 = v51;
LABEL_34:

  if (v12)
  {
    v41 = [v17 query];
    v52 = *MEMORY[0x277D06C10];
    v53 = MEMORY[0x277CBEC38];
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    [v41 addTargetClassOptions:v42];
  }

  v43 = [(MUIMessageListViewController *)self filterViewModel];
  v44 = [v43 isFilterEnabled];

  if (v44)
  {
    v45 = [(MUIMessageListViewController *)self shouldDisplayGroupedSenders]^ 1;
  }

  else
  {
    v45 = 0;
  }

  v46 = [(MUIMessageListViewController *)self _predicateForFiltersEnabled:v45];
  if ([(MUIMessageListViewController *)self _shouldApplyFilterPredicate:v46])
  {
    [(MUIMessageListViewController *)self setCurrentFilterPredicate:v46];
    [(MUIMessageListViewController *)self refreshHighlightedMessagesController];
  }

  if (v46)
  {
    v47 = [v17 filteredMessageListWithPredicate:v46 userFiltered:v45];

    v17 = v47;
  }

  v5 = v17;

  v6 = v5;
LABEL_8:

  return v6;
}

- (NSPredicate)priorityPredicate
{
  if (!_os_feature_enabled_impl() || !EMIsGreymatterSupported())
  {
    goto LABEL_9;
  }

  v3 = [(MUIMessageListViewController *)self state];
  if (([v3 containsInbox] & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = [(MUIMessageListViewController *)self showHighlights];
  if (([v4 isEnabled] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  if ([(MUIMessageListViewController *)self selectedBucket]!= 1)
  {
    v7 = [(MUIMessageListViewController *)self selectedBucket];

    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

LABEL_14:
  v5 = [MEMORY[0x277D06E08] predicateForUrgentMessages];
LABEL_10:

  return v5;
}

- (void)cancelQueueSuspensionTimeout
{
  os_unfair_lock_lock(&self->_queueSuspensionTimeoutTokenLock);
  if (self->_queueSuspensionTimeoutToken)
  {
    v3 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_214A5E000, v3, OS_LOG_TYPE_DEFAULT, "[Launch] Cancel queue timeout", v5, 2u);
    }

    [(EFCancelable *)self->_queueSuspensionTimeoutToken cancel];
    queueSuspensionTimeoutToken = self->_queueSuspensionTimeoutToken;
    self->_queueSuspensionTimeoutToken = 0;
  }

  os_unfair_lock_unlock(&self->_queueSuspensionTimeoutTokenLock);
}

- (void)_selectBucket:(int64_t)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.selectBucket(_:)(a3);
  MEMORY[0x277D82BD8](self);
}

- (void)refreshHighlightedMessagesController
{
  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && ![(MUIMessageListViewController *)self isFilterButtonEnabled])
  {
    v3 = MUIBucketAllowsPriorityMessageDisplay([(MUIMessageListViewController *)self selectedBucket]);
  }

  else
  {
    v3 = 0;
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    if (v3)
    {
      v4 = [(MUIMessageListViewController *)self dataSource];
      v5 = [v4 messageListSectionIsVisible:@"MessageListSectionPriority"];

      if (v5)
      {

        [(MUIMessageListViewController *)self reloadDataSource];
      }
    }
  }

  else if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v8 = [(MUIMessageListViewController *)self highlightedMessagesController];
    if (v3)
    {
      v6 = [(MUIMessageListViewController *)self mailboxes];
      [v8 setMailboxes:v6];

      v7 = [(MUIMessageListViewController *)self currentFilterPredicate];
      [v8 setFilterPredicate:v7];

      [v8 reloadApplyingEmptyUpdate:0];
    }

    else
    {
      [v8 setMailboxes:MEMORY[0x277CBEBF8]];
      [v8 setFilterPredicate:0];
    }
  }
}

- (BOOL)isBucketBarHidden
{
  v3 = [(MUIMessageListViewController *)self bucketBarConfigurationController];

  if (!v3)
  {
    return 1;
  }

  v4 = [(MUIMessageListViewController *)self bucketBarConfigurationController];
  v5 = [(MUIMessageListViewController *)self mailboxes];
  v6 = [v4 isBucketBarHiddenForMailboxes:v5];

  return v6;
}

- (BOOL)focusAllowed
{
  v3 = [(MUIMessageListViewController *)self currentFocus];
  if (v3)
  {
    v4 = [(MUIMessageListViewController *)self state];
    v5 = [v4 containsSmartMailbox];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MUIMessageListViewController *)self senderSpecificMessageListItem];

  return (v6 == 0) & v5;
}

- (BOOL)shouldDisplayGroupedSenders
{
  if ([(MUIMessageListViewController *)self isBlackPearlEnabled])
  {
    v3 = [(MUIMessageListViewController *)self bucketBarConfigurationController];
    v4 = [(MUIMessageListViewController *)self mailboxes];
    if ([v3 isBucketBarHiddenForMailboxes:v4] & 1) != 0 || !MUIBucketIsBusinessBucket(-[MUIMessageListViewController selectedBucket](self, "selectedBucket")) || (objc_msgSend(MEMORY[0x277D06DA0], "preferenceEnabled:", 38))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v7 = [(MUIMessageListViewController *)self categoryGroupingPreferenceController];
      v5 = [v7 shouldDisableGroupingForBucket:{-[MUIMessageListViewController selectedBucket](self, "selectedBucket")}] ^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (MUIMailboxFilterController)filterController
{
  filterController = self->_filterController;
  if (!filterController)
  {
    v5 = [(MUIMessageListViewController *)self createMailboxFilterController];
    v6 = self->_filterController;
    self->_filterController = v5;

    filterController = self->_filterController;
    if (!filterController)
    {
      [(MUIMessageListViewController *)a2 filterController:&self->_filterController];
      filterController = v8;
    }
  }

  return filterController;
}

- (MUIMailboxFilterViewModel)filterViewModel
{
  v2 = [(MUIMessageListViewController *)self filterController];
  v3 = [v2 viewModel];

  return v3;
}

- (BOOL)_shouldDisplayOnboardingTip
{
  v17 = *MEMORY[0x277D85DE8];
  if (!EMBlackPearlIsFeatureEnabled() || -[MUIMessageListViewController isBucketBarHidden](self, "isBucketBarHidden") || ([*MEMORY[0x277D76620] launchedToTest] & 1) != 0)
  {
    return 0;
  }

  v6 = [(MUIMessageListViewController *)self selectedBucket];
  v7 = [MEMORY[0x277CBEBD0] em_userDefaults];
  v8 = MUIOnboardingTipKeyForBucket(v6);
  if (v8 && ![v7 integerForKey:v8])
  {
    v4 = 1;
  }

  else
  {
    v9 = [v7 integerForKey:*MEMORY[0x277D06C68]];
    v4 = 0;
    if (v6 == 1 && !v9)
    {
      v10 = [v7 integerForKey:*MEMORY[0x277D06D18]];
      v4 = v10 > 2;
      v11 = _ef_log_MUIMessageListViewController();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = NSStringFromSelector(a2);
        v13 = 138543618;
        v14 = v12;
        v15 = 1024;
        v16 = v10 > 2;
        _os_log_impl(&dword_214A5E000, v11, OS_LOG_TYPE_INFO, "%{public}@ diplaySecondTip:%{BOOL}d", &v13, 0x12u);
      }
    }
  }

  return v4;
}

- (BOOL)canShowUnseenSection
{
  v2 = [(MUIMessageListViewController *)self selectedBucket];

  return MUIBucketIsBusinessBucket(v2);
}

- (void)_bucketBarUserInteractionEnabled:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MUIMessageListViewController.bucketBarUserInteractionEnabled(_:)(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (id)_configuredBucketsViewControllerWithMailboxes:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v7 = sub_214CCF7E4();
  MUIMessageListViewController.configuredBucketsViewController(withMailboxes:)(v4, v7);
  v10 = v5;

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);

  return v10;
}

- (BOOL)hasUpdatedAllVisibleSections
{
  v3 = [(MUIMessageListViewController *)self dataSource];
  v4 = [v3 visibleMessageListSections];
  v5 = [v4 count];
  v6 = [(MUIMessageListViewController *)self configuredSections];
  LOBYTE(v5) = v5 == [v6 count];

  return v5;
}

- (MUIMessageListViewController)initWithDaemonInterface:(id)a3 focusController:(id)a4 mailboxCategoryCloudStorage:(id)a5 avatarGenerator:(id)a6 bucketBarConfigurationController:(id)a7 mailboxes:(id)a8 contactStore:(id)a9 diagnosticsHelper:(id)a10
{
  v17 = a3;
  v80 = a4;
  v79 = a5;
  v78 = a6;
  v77 = a7;
  v18 = a8;
  v76 = a9;
  v75 = a10;
  v92.receiver = self;
  v92.super_class = MUIMessageListViewController;
  v19 = [(MUIMessageListViewController *)&v92 initWithNibName:0 bundle:0];
  if (v19)
  {
    v20 = [v18 copy];
    mailboxes = v19->_mailboxes;
    v19->_mailboxes = v20;

    objc_storeStrong(&v19->_contactStore, a9);
    v22 = objc_alloc_init(MessageListViewControllerState);
    state = v19->_state;
    v19->_state = v22;

    v24 = [[MessageSelectionStrategy alloc] initWithDataSource:v19];
    messageSelectionStrategy = v19->_messageSelectionStrategy;
    v19->_messageSelectionStrategy = v24;

    [(MUIMessageListViewController *)v19 updateState:v19->_state withMailboxes:v19->_mailboxes];
    objc_storeStrong(&v19->_daemonInterface, a3);
    v26 = [v17 messageRepository];
    messageRepository = v19->_messageRepository;
    v19->_messageRepository = v26;

    v28 = [v17 mailboxRepository];
    mailboxRepository = v19->_mailboxRepository;
    v19->_mailboxRepository = v28;

    v30 = [v17 accountRepository];
    accountRepository = v19->_accountRepository;
    v19->_accountRepository = v30;

    objc_storeStrong(&v19->_diagnosticsHelper, a10);
    v32 = [(EMDiagnosticsHelper *)v19->_diagnosticsHelper registerDiagnosticFileProvider:v19];
    diagnosticsHelperToken = v19->_diagnosticsHelperToken;
    v19->_diagnosticsHelperToken = v32;

    v34 = [MessageListFetchHelper alloc];
    v35 = [v17 fetchController];
    v36 = [(MessageListFetchHelper *)v34 initWithFetchController:v35 mailboxes:0];
    messageListFetchHelper = v19->_messageListFetchHelper;
    v19->_messageListFetchHelper = v36;

    v38 = objc_alloc_init(MessageListCellLayoutValuesHelper);
    layoutValuesHelper = v19->_layoutValuesHelper;
    v19->_layoutValuesHelper = v38;

    v40 = [MEMORY[0x277D071A8] promise];
    initialLoadCompletedPromise = v19->_initialLoadCompletedPromise;
    v19->_initialLoadCompletedPromise = v40;

    v42 = [MEMORY[0x277CBEB58] set];
    mailboxesPendingOldestItemsUpdates = v19->_mailboxesPendingOldestItemsUpdates;
    v19->_mailboxesPendingOldestItemsUpdates = v42;

    v19->_queueSuspensionTimeoutTokenLock._os_unfair_lock_opaque = 0;
    v44 = objc_alloc_init(MessageListCellsController);
    cellsController = v19->_cellsController;
    v19->_cellsController = v44;

    v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
    configuredSections = v19->_configuredSections;
    v19->_configuredSections = v46;

    v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
    indexPathsForConfiguredCollectionViewCells = v19->_indexPathsForConfiguredCollectionViewCells;
    v19->_indexPathsForConfiguredCollectionViewCells = v48;

    objc_storeStrong(&v19->_avatarGenerator, a6);
    v19->_isBlackPearlEnabled = EMBlackPearlIsFeatureEnabled();
    objc_storeStrong(&v19->_bucketBarConfigurationController, a7);
    objc_storeStrong(&v19->_mailboxCategoryCloudStorage, a5);
    v50 = [[MUICategoryGroupingPreferenceController alloc] initWithDelegate:v19];
    categoryGroupingPreferenceController = v19->_categoryGroupingPreferenceController;
    v19->_categoryGroupingPreferenceController = v50;

    objc_storeWeak(&v19->_iCloudMailCleanupService, 0);
    v52 = [MEMORY[0x277CBEBD0] em_userDefaults];
    v53 = *MEMORY[0x277D06C70];
    -[MUIMessageListViewController setHideFollowUp:](v19, "setHideFollowUp:", [v52 BOOLForKey:*MEMORY[0x277D06C70]]);
    objc_initWeak(&location, v19);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke;
    v88[3] = &unk_278188C80;
    objc_copyWeak(&v90, &location);
    v54 = v52;
    v89 = v54;
    v55 = [v54 ef_observeKeyPath:v53 options:1 autoCancelToken:1 usingBlock:v88];
    userDefaultsObserver = v19->_userDefaultsObserver;
    v19->_userDefaultsObserver = v55;

    v57 = *MEMORY[0x277D06C58];
    -[MUIMessageListViewController setPreferredDeleteOrMoveMessageAction:](v19, "setPreferredDeleteOrMoveMessageAction:", [v54 integerForKey:*MEMORY[0x277D06C58]]);
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke_2;
    v85[3] = &unk_278188C80;
    objc_copyWeak(&v87, &location);
    v58 = v54;
    v86 = v58;
    v59 = [v58 ef_observeKeyPath:v57 options:1 autoCancelToken:1 usingBlock:v85];
    [(MUIMessageListViewController *)v19 setPreferredDeleteOrMoveMessageActionToken:v59];

    [(MUIMessageListViewController *)v19 _resetMailboxRepositoryForMailboxes:v18];
    objc_storeStrong(&v19->_focusController, a4);
    v60 = [v80 addObserver:v19 currentFocus:&v19->_currentFocus];
    focusObservationToken = v19->_focusObservationToken;
    v19->_focusObservationToken = v60;

    if ([(MUIMessageListViewController *)v19 isBlackPearlEnabled]&& ![(MUIMessageListViewController *)v19 isSearchViewController])
    {
      [(MSBucketBarConfigurationController *)v19->_bucketBarConfigurationController addConfigurationObserver:v19];
    }

    if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && ![(MUIMessageListViewController *)v19 isSearchViewController])
    {
      if (!_os_feature_enabled_impl() || (EMIsGreymatterSupported() & 1) == 0)
      {
        v62 = [[MUIHighlightedMessagesController alloc] initWithRepository:v19->_messageRepository delegate:v19];
        highlightedMessagesController = v19->_highlightedMessagesController;
        v19->_highlightedMessagesController = v62;

        [(MUIHighlightedMessagesController *)v19->_highlightedMessagesController setMailboxes:v18];
      }

      v64 = [MEMORY[0x277CBEBD0] em_userDefaults];
      v65 = objc_alloc(MEMORY[0x277D06E58]);
      v66 = *MEMORY[0x277D06CE0];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke_3;
      v83[3] = &unk_278188BD8;
      objc_copyWeak(&v84, &location);
      v67 = [v65 initWithUserDefaults:v64 keyPath:v66 keyRepresentsDisabled:1 handler:v83];
      showHighlights = v19->_showHighlights;
      v19->_showHighlights = v67;

      v69 = objc_alloc(MEMORY[0x277D06E58]);
      v70 = *MEMORY[0x277D06C80];
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke_4;
      v81[3] = &unk_278188BD8;
      objc_copyWeak(&v82, &location);
      v71 = [v69 initWithUserDefaults:v64 keyPath:v70 keyRepresentsDisabled:0 handler:v81];
      hasCompletedAppleIntelligenceOnboarding = v19->_hasCompletedAppleIntelligenceOnboarding;
      v19->_hasCompletedAppleIntelligenceOnboarding = v71;

      v73 = [MEMORY[0x277CCAB98] defaultCenter];
      [v73 addObserver:v19 selector:sel__generativeModelsAvailabilityDidChange_ name:*MEMORY[0x277D06BC8] object:0];

      objc_destroyWeak(&v82);
      objc_destroyWeak(&v84);
    }

    objc_destroyWeak(&v87);
    objc_destroyWeak(&v90);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setHideFollowUp:{objc_msgSend(*(a1 + 32), "BOOLForKey:", *MEMORY[0x277D06C70])}];
    [v3 reloadDataSource];
    WeakRetained = v3;
  }
}

void __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setPreferredDeleteOrMoveMessageAction:{objc_msgSend(*(a1 + 32), "integerForKey:", *MEMORY[0x277D06C58])}];
    WeakRetained = v3;
  }
}

void __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateHighlightsVisibility];
    WeakRetained = v2;
  }
}

void __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateHighlightsVisibility];
    [v2 updateHighlightsToggleVisibility];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  [(MSBucketBarConfigurationController *)self->_bucketBarConfigurationController removeConfigurationObserver:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(MUIMessageListViewController *)self diagnosticsHelperToken];
  [v4 cancel];

  v5.receiver = self;
  v5.super_class = MUIMessageListViewController;
  [(MUIMessageListViewController *)&v5 dealloc];
}

- (void)setMessageRepository:(id)a3
{
  v5 = a3;
  if (self->_messageRepository != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_messageRepository, a3);
    [(MUIMessageListViewController *)self reloadDataSource];
    v5 = v6;
  }
}

- (void)setPrimitiveMailboxes:(id)a3
{
  if (self->_mailboxes != a3)
  {
    v4 = [a3 copy];
    mailboxes = self->_mailboxes;
    self->_mailboxes = v4;

    v6 = [(MUIMessageListViewController *)self state];
    [v6 setDidAlertOnBlankCell:0];
    [v6 setDidRecordTailspin:0];
    [(MUIMessageListViewController *)self _resetMailboxRepositoryForMailboxes:self->_mailboxes];
    [(MUIMessageListViewController *)self updateState:v6 withMailboxes:self->_mailboxes];
    [(MUIMessageListViewController *)self refreshHighlightedMessagesController];
  }
}

- (void)setSelectedBucket:(int64_t)a3
{
  if (self->_selectedBucket != a3)
  {
    self->_selectedBucket = a3;
    [(MUIMessageListViewController *)self _updateViewPrimaryWithNoOnboardingIfNeeded];
    v6 = [MEMORY[0x277CCAB88] notificationWithName:@"SelectedBucketDidChangeNotification" object:self userInfo:0];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotification:v6];
  }
}

- (BOOL)_shouldDisplayHelpMailLearn
{
  v3 = [(MUIMessageListViewController *)self _shouldDisplayOnboardingTip];
  v4 = [MEMORY[0x277CBEBD0] em_userDefaults];
  v5 = *MEMORY[0x277D06CE8];
  v6 = [v4 objectForKey:*MEMORY[0x277D06CE8]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    [v4 removeObjectForKey:v5];
    v6 = 0;
  }

  if ((([v6 ef_isLaterThanNow] | v3) & 1) != 0 || !EMBlackPearlIsFeatureEnabled())
  {
    v8 = 0;
  }

  else
  {
    v7 = [(MUIMessageListViewController *)self mailboxes];
    v8 = [v7 ef_any:&__block_literal_global_29_0];
  }

  return v8;
}

- (BOOL)_shouldAttachMailCleanupSection
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*MEMORY[0x277D76620] launchedToTest])
  {
    return 0;
  }

  if (!+[MUIiCloudMailCleanupService isFeatureAvailable])
  {
    return 0;
  }

  if ([(MUIMessageListViewController *)self _shouldDisplayOnboardingTip])
  {
    return 0;
  }

  v3 = [(MUIMessageListViewController *)self iCloudMailCleanupService];

  if (!v3)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MUIMessageListViewController *)self mailboxes];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 account];
        if (![v10 supportsiCloudCleanup])
        {

LABEL_19:
          v12 = 0;
          goto LABEL_20;
        }

        v11 = [v9 type];

        if (v11 != 7)
        {
          goto LABEL_19;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (BOOL)shouldIncludeMailCleanupFilter
{
  if (!+[MUIiCloudMailCleanupService isFeatureAvailable])
  {
    return 0;
  }

  v3 = [(MUIMessageListViewController *)self iCloudMailCleanupService];
  v4 = [v3 isConsentAccepted];

  if ((v4 & 1) == 0)
  {
    v9 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [MUIMessageListViewController shouldIncludeMailCleanupFilter];
    }

    return 0;
  }

  v5 = [(MUIMessageListViewController *)self mailboxes];
  v6 = [v5 firstObject];

  if ([v6 isTrashMailbox])
  {
    v7 = [v6 account];
    v8 = [v7 supportsiCloudCleanup];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_resetMailboxRepositoryForMailboxes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 repository];

        if (!v10)
        {
          v11 = [(MUIMessageListViewController *)self mailboxRepository];
          [v9 setRepository:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)updateState:(id)a3 withMailboxes:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MUIMessageListViewController *)self senderSpecificMessageListItem];
  [v6 updateWithMailboxes:v7 senderSpecificMessageListItem:v8];

  [v6 setCanShowReadLaterDate:{objc_msgSend(v6, "containsOutbox") ^ 1}];
  v9 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 ef_publicDescription];
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "Updated state to %{public}@", &v11, 0xCu);
  }
}

- (void)setInitialCellConfigurationCompleted:(BOOL)a3
{
  if (self->_initialCellConfigurationCompleted != a3)
  {
    self->_initialCellConfigurationCompleted = a3;
    [(MUIMessageListViewController *)self didFinishLoadViewController];
  }
}

- (void)setSwipeActionVisible:(BOOL)a3
{
  if (self->_swipeActionVisible != a3)
  {
    v4 = a3;
    self->_swipeActionVisible = a3;
    v5 = [(MUIMessageListViewController *)self dataSource];
    v6 = v5;
    if (v4)
    {
      [v5 suspendUpdates];
    }

    else
    {
      [v5 resumeUpdates];
    }
  }
}

- (id)searchPredicateForMailboxes:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(MUIMessageListViewController *)self currentSuggestion];
  v7 = [v6 mui_messageListSearchPredicate];
  [v5 ef_addOptionalObject:v7];
  v8 = [(MUIMessageListViewController *)self userQueryString];
  if ([v8 length])
  {
    v9 = [MEMORY[0x277D06E10] spotlightSearchPredicateForValue:v8];
    [v5 addObject:v9];
  }

  v10 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 ef_publicDescription];
    v12 = [MEMORY[0x277D06D48] publicDescriptionForSuggestion:v6];
    v13 = [MEMORY[0x277D07198] partiallyRedactedStringForString:v8];
    v20 = 138412802;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Generated remote search predicate:%@ for suggestion:%@ (%@)", &v20, 0x20u);
  }

  if ([v4 count])
  {
    v14 = [MEMORY[0x277D06E08] predicateForMessagesInMailboxes:v4];
    [v5 ef_addOptionalObject:v14];
    v15 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_214A5E000, v15, OS_LOG_TYPE_DEFAULT, "Generated localMailboxPredicate:%@ for suggestion:%@ (%@)", &v20, 0x20u);
    }
  }

  else
  {
    v14 = [(MUIMessageListViewController *)self _excludedMailboxesPredicate];
    if (v14)
    {
      [v5 addObject:v14];
    }

    v15 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x277D06D48] publicDescriptionForSuggestion:v6];
      v17 = [MEMORY[0x277D07198] partiallyRedactedStringForString:v8];
      v20 = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_214A5E000, v15, OS_LOG_TYPE_DEFAULT, "Generated excludeJunkAndTrashPredicate:%@ for suggestion:%@ (%@)", &v20, 0x20u);
    }
  }

  if ([v5 count])
  {
    v18 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_excludedMailboxesPredicate
{
  v2 = [MEMORY[0x277CBEBD0] em_userDefaults];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D06C90]];

  v4 = [MEMORY[0x277CBEBD0] em_userDefaults];
  v5 = [v4 BOOLForKey:*MEMORY[0x277D06C98]];

  if ((v3 & 1) == 0 && (v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277D06E08] predicateForExcludingMessagesInMailboxesWithTypes:&unk_282705B00];
    goto LABEL_10;
  }

  if (v3)
  {
    if (v5)
    {
      v6 = 0;
      goto LABEL_10;
    }

    v7 = MEMORY[0x277D06E08];
    v8 = 3;
  }

  else
  {
    v7 = MEMORY[0x277D06E08];
    v8 = 1;
  }

  v6 = [v7 predicateForExcludingMessagesInMailboxWithType:v8];
LABEL_10:

  return v6;
}

- (NSString)userQueryString
{
  v2 = [(MUIMessageListViewController *)self currentSuggestion];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 userQueryString];
    v5 = [v4 ef_stringByTrimmingWhitespaceAndNewlineCharacters];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_topHitsPredicate
{
  if (_os_feature_enabled_impl())
  {
    v2 = [MEMORY[0x277D06E08] predicateForTopHitsMessages];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)updateFilterControlWithFilterViewModel:(id)a3
{
  v5 = a3;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController updateFilterControlWithFilterViewModel:]", "MUIMessageListViewController.m", 534, "0");
}

- (id)updatedPredicateForFocusedAccounts:(id)a3
{
  v4 = a3;
  if ([(MUIMessageListViewController *)self isFocusFilterEnabled]&& [(MUIMessageListViewController *)self focusAllowed])
  {
    v5 = MEMORY[0x277D06D88];
    v6 = [(MUIMessageListViewController *)self currentFocus];
    v7 = [(MUIMessageListViewController *)self accountRepository];
    v8 = [v5 updatedPredicateForFocus:v6 currentPredicate:v4 usingAccountRepository:v7];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (void)applyFilterPredicate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MUIMessageListViewController *)self setCurrentFilterPredicate:v4];
  v5 = [(MUIMessageListViewController *)self dataSource];
  v6 = [v5 visibleMessageListSections];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [(MUIMessageListViewController *)self dataSource];
        v14 = [(MUIMessageListViewController *)self filterViewModel];
        [v13 applyFilterPredicate:v4 userFiltered:objc_msgSend(v14 ignoreMessagesPredicate:"isFilterEnabled") section:{0, v12}];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(MUIMessageListViewController *)self refreshHighlightedMessagesController];
}

- (void)toggleFilters
{
  v3 = [(MUIMessageListViewController *)self isFilterButtonEnabled]^ 1;

  [(MUIMessageListViewController *)self setFiltersEnabled:v3];
}

- (void)setFiltersEnabled:(BOOL)a3
{
  v3 = a3;
  [(MUIMessageListViewController *)self setFilterButtonEnabled:?];
  [(MUIMessageListViewController *)self updateFilters];
  if (v3)
  {

    [(MUIMessageListViewController *)self _reportFilterButtonTapped];
  }
}

- (void)updateFilters
{
  if ([(MUIMessageListViewController *)self isFilterButtonEnabled])
  {

    [(MUIMessageListViewController *)self _enableFilters];
  }

  else
  {

    [(MUIMessageListViewController *)self _disableFilters];
  }
}

- (void)updateFilterContextForMailboxes:(id)a3 focus:(id)a4 applyFilters:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v12 = [MUIMailboxFilterContext contextWithMailboxes:v9 focus:v8 isFilteringAvailable:[(MUIMessageListViewController *)self shouldDisplayGroupedSenders]^ 1];

  v10 = [(MUIMessageListViewController *)self filterController];
  [v10 updateWithFilterContext:v12];

  v11 = [(MUIMessageListViewController *)self filterViewModel];
  -[MUIMessageListViewController setFilterButtonEnabled:](self, "setFilterButtonEnabled:", [v11 isFilterEnabled]);
  [(MUIMessageListViewController *)self updateFilterControlWithFilterViewModel:v11];
  if (v5)
  {
    [(MUIMessageListViewController *)self updateFilters];
  }
}

- (void)_reportFilterButtonTapped
{
  v2 = [MEMORY[0x277D071B8] globalAsyncScheduler];
  [v2 performBlock:&__block_literal_global_55];
}

id __57__MUIMessageListViewController__reportFilterButtonTapped__block_invoke_2()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CF0130] sharedInstance];
  v1 = [v0 primaryAuthKitAccount];
  v2 = [v0 userIsSeniorForAccount:v1];
  v6 = @"u65_flag";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

void __65__MUIMessageListViewController__reportFilterChangeEvent_filters___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  AnalyticsSendEventLazy();
}

id __65__MUIMessageListViewController__reportFilterChangeEvent_filters___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"isEnabled"];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
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

        v9 = NSStringFromMUIMailboxFilterType([*(*(&v11 + 1) + 8 * i) type]);
        [v2 setObject:&unk_282705AA0 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)reloadDataSourceApplyEmptySnapshot:(BOOL)a3
{
  v3 = a3;
  v5 = [(MUIMessageListViewController *)self createMessageListForReload];
  [(MUIMessageListViewController *)self reloadDataSourceWithMessageList:v5 applyEmptySnapshot:v3];
}

- (void)reloadDataSourceWithMessageList:(id)a3 applyEmptySnapshot:(BOOL)a4
{
  v4 = a4;
  v58 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (pthread_main_np() != 1)
  {
    [MUIMessageListViewController reloadDataSourceWithMessageList:a2 applyEmptySnapshot:self];
  }

  v8 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v7 ef_publicDescription];
    *buf = 138412802;
    v53 = v10;
    v54 = 2048;
    v55 = self;
    v56 = 2112;
    v57 = v11;
    _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> Reloading messageList:%@", buf, 0x20u);
  }

  v12 = [(MUIMessageListViewController *)self configuredSections];
  [v12 removeAllObjects];

  [(MUIMessageListViewController *)self setIndexPathsForToBeConfiguredCells:0];
  v13 = [(MUIMessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
  [v13 removeAllObjects];

  [(MUIMessageListViewController *)self setFirstBatchCellConfigurationCompleted:0];
  [(MUIMessageListViewController *)self setOldestItemsIDsByMailboxObjectID:0];
  v14 = [(MUIMessageListViewController *)self mailboxesPendingOldestItemsUpdates];
  [v14 removeAllObjects];

  v15 = MFMessageListLoadingSignpostLog();
  v16 = [v7 objectID];
  v17 = os_signpost_id_make_with_pointer(v15, v16);

  v18 = MFMessageListLoadingSignpostLog();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_214A5E000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "MessageListLoading", "Begin loading message list enableTelemetry=YES ", buf, 2u);
  }

  [(MUIMessageListViewController *)self cancelQueueSuspensionTimeout];
  v20 = [(MUIMessageListViewController *)self mailboxes];
  v21 = [v20 ef_all:&__block_literal_global_86];
  v22 = [(MUIMessageListViewController *)self state];
  [v22 setShouldDisplayUnreadAndVIP:v21];

  [(MUIMessageListViewController *)self setSwipeActionVisible:0];
  if (v7)
  {
    v23 = [(MUIMessageListViewController *)self initialLoadCompletedPromise];
    [v23 finishWithResult:MEMORY[0x277CBEC28]];

    v24 = [MEMORY[0x277D071A8] promise];
    [(MUIMessageListViewController *)self setInitialLoadCompletedPromise:v24];

    v25 = [MEMORY[0x277CBEB18] array];
    v26 = [MEMORY[0x277CBEB18] array];
    if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && MUIBucketAllowsPriorityMessageDisplay([(MUIMessageListViewController *)self selectedBucket]))
    {
      v27 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionPriority" messageList:v7];
      [v25 addObject:v27];
    }

    else
    {
      [v26 addObject:@"MessageListSectionPriority"];
    }

    v28 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionRecent" messageList:v7];
    [v25 addObject:v28];

    if ([(MUIMessageListViewController *)self shouldDisplayGroupedSenders])
    {
      v29 = MEMORY[0x277CBEB18];
      v30 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionGroupedSenderUnseen" messageList:v7];
      v31 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionGroupedSender" messageList:v7];
      v32 = [v29 arrayWithObjects:{v30, v31, 0}];

      v51[0] = @"MessageListSectionRecentUnseen";
      v51[1] = @"MessageListSectionRecent";
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      [v26 addObjectsFromArray:v33];

      v25 = v32;
    }

    else
    {
      v50[0] = @"MessageListSectionGroupedSenderUnseen";
      v50[1] = @"MessageListSectionGroupedSender";
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
      [v26 addObjectsFromArray:v34];

      if ([(MUIMessageListViewController *)self canShowUnseenSection])
      {
        v35 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionRecentUnseen" messageList:v7];
        [v25 insertObject:v35 atIndex:1];
      }

      else
      {
        [v26 addObject:@"MessageListSectionRecentUnseen"];
      }
    }

    v36 = [MEMORY[0x277D07148] currentDevice];
    v37 = [v36 isInternal];

    if (v37)
    {
      if ([(MUIMessageListViewController *)self _shouldDisplayHelpMailLearn])
      {
        v38 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionHelpMailLearn"];
        [v25 insertObject:v38 atIndex:0];
      }

      else
      {
        [v26 insertObject:@"MessageListSectionHelpMailLearn" atIndex:0];
      }
    }

    if ([(MUIMessageListViewController *)self _shouldDisplayOnboardingTip])
    {
      v39 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionOnboardingTip"];
      [v25 insertObject:v39 atIndex:0];
    }

    else
    {
      [v26 insertObject:@"MessageListSectionOnboardingTip" atIndex:0];
    }

    if (EMBlackPearlIsFeatureEnabled())
    {
      if ([(MUIMessageListViewController *)self isBucketBarHidden])
      {
        [v26 addObject:@"MessageListSectionBucketBar"];
      }

      else
      {
        v40 = [(MUIMessageListViewController *)self dataSource];
        v41 = [v40 messageListSectionIsVisible:@"MessageListSectionBucketBar"];

        if (v41)
        {
          v42 = 1;
LABEL_33:
          if (+[MUIiCloudMailCleanupService isFeatureAvailable])
          {
            if ([(MUIMessageListViewController *)self _shouldAttachMailCleanupSection])
            {
              v44 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionMailCleanupTip"];
              [v25 insertObject:v44 atIndex:0];
            }

            else
            {
              [v26 insertObject:@"MessageListSectionMailCleanupTip" atIndex:0];
            }
          }

          v45 = [[MessageListDataSourceUpdateRequest alloc] initWithSectionUpdates:v25 sectionsToRemove:v26 startsWithEmptySnapshot:v4];
          v46 = [(MUIMessageListViewController *)self dataSource];
          [v46 applyMessageListDataSourceUpdate:v45];

          if (v42)
          {
            v47 = [(MUIMessageListViewController *)self bucketsViewController];
            v48 = [(MUIMessageListViewController *)self mailboxes];
            [v47 updateWithMailboxes:v48];
          }

          v49 = [(MUIMessageListViewController *)self messageListFetchHelper];
          [v49 fetchMailboxesIsUserInitiated:0];

          goto LABEL_40;
        }

        v43 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionBucketBar" messageList:0 shouldClearSnapshot:0];
        [v25 insertObject:v43 atIndex:0];
      }
    }

    v42 = 0;
    goto LABEL_33;
  }

LABEL_40:
}

BOOL __83__MUIMessageListViewController_reloadDataSourceWithMessageList_applyEmptySnapshot___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] != 6 && objc_msgSend(v2, "type") != 5;

  return v3;
}

- (void)reloadDataSourceWithMessageList:(id)a3 sections:(id)a4 applyEmptySnapshot:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138412802;
    v30 = v12;
    v31 = 2048;
    v32 = self;
    v33 = 2114;
    v34 = v9;
    _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Reload message list in sections: %{public}@", buf, 0x20u);
  }

  [(MUIMessageListViewController *)self cancelQueueSuspensionTimeout];
  v13 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        v20 = [MessageListSectionDataSourceUpdateRequest alloc];
        v21 = [(MessageListSectionDataSourceUpdateRequest *)v20 initWithSection:v19 messageList:v8, v24];
        [v13 addObject:v21];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = [[MessageListDataSourceUpdateRequest alloc] initWithSectionUpdates:v13 sectionsToRemove:0 startsWithEmptySnapshot:v5];
  v23 = [(MUIMessageListViewController *)self dataSource];
  [v23 applyMessageListDataSourceUpdate:v22];
}

- (void)reloadDataSourceWithSearchPredicate:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 ef_publicDescription];
    *buf = 138412802;
    v36 = v7;
    v37 = 2048;
    v38 = self;
    v39 = 2114;
    v40 = v8;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> Reload data source with search predicate: %{public}@", buf, 0x20u);
  }

  [(MUIMessageListViewController *)self isThreaded];
  v33 = objc_opt_class();
  if ([MEMORY[0x277D06DA0] preferenceEnabled:48])
  {
    v9 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v4 ef_publicDescription];
      *buf = 138412802;
      v36 = v11;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = v12;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> Disabling maild generated results: %{public}@", buf, 0x20u);
    }

    v13 = 38;
  }

  else
  {
    v13 = 34;
  }

  v14 = objc_alloc_init(MEMORY[0x277D07178]);
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"MessageListSectionIndexedSearch", @"MessageListSectionServerSearch", 0}];
  if (_os_feature_enabled_impl())
  {
    v13 |= 0x2000uLL;
    [v15 addObject:@"MessageListSectionInstantAnswers"];
    [v15 addObject:@"MessageListSectionTopHits"];
    v16 = [(MUIMessageListViewController *)self _topHitsPredicate];
    [v14 setOrAddObject:v16 forKey:@"MessageListSectionTopHits"];
  }

  v17 = [(MUIMessageListViewController *)self _indexedMessagesPredicate];
  [v14 setOrAddObject:v17 forKey:@"MessageListSectionIndexedSearch"];

  v18 = v4;
  if ([v14 count])
  {
    v19 = objc_alloc(MEMORY[0x277CBEB38]);
    v20 = [v19 initWithObjectsAndKeys:{v14, *MEMORY[0x277D06C08], 0}];
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_alloc(MEMORY[0x277D06E80]);
  v22 = [MEMORY[0x277D06E08] sortDescriptorForDateAscending:0];
  v34 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v24 = [(MUIMessageListViewController *)self currentSuggestion];
  v25 = v21;
  v26 = v18;
  v27 = [v25 initWithTargetClass:v33 predicate:v18 sortDescriptors:v23 suggestion:v24 limit:0 queryOptions:v13 targetClassOptions:v20 label:@"message list search"];

  [(MUIMessageListViewController *)self setOldestItemsIDsByMailboxObjectID:0];
  v28 = [(MUIMessageListViewController *)self mailboxesPendingOldestItemsUpdates];
  [v28 removeAllObjects];

  v29 = objc_alloc(MEMORY[0x277D06E00]);
  v30 = [(MUIMessageListViewController *)self messageRepository];
  v31 = [v29 initWithQuery:v27 repository:v30];

  v32 = [(MUIMessageListViewController *)self state];
  [v32 setShouldDisplayUnreadAndVIP:1];

  [(MUIMessageListViewController *)self reloadDataSourceWithMessageList:v31 sections:v15 applyEmptySnapshot:_os_feature_enabled_impl() ^ 1];
}

- (void)configureDelegatesForDataSource:(id)a3
{
  v4 = a3;
  [v4 setProvider:self];
  [v4 setDelegate:self];
}

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  if (self->_collectionView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_collectionView, a3);
    dataSource = self->_dataSource;
    self->_dataSource = 0;

    v5 = v7;
  }
}

- (BOOL)messageListDataSource:(id)a3 section:(id)a4 shouldSuspendUpdatesAfterChange:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 section];
  if (![v8 isMessagesSection:v11])
  {

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v12 = [(MUIMessageListViewController *)self isInitialCellConfigurationCompleted];

  if (v12 || ![v10 isFirstChange] || objc_msgSend(v10, "numberOfChanges") < 1)
  {
    goto LABEL_9;
  }

  os_unfair_lock_lock(&self->_queueSuspensionTimeoutTokenLock);
  queueSuspensionTimeoutToken = self->_queueSuspensionTimeoutToken;
  if (queueSuspensionTimeoutToken)
  {
    [(EFCancelable *)queueSuspensionTimeoutToken cancel];
  }

  objc_initWeak(&location, self);
  v14 = [MEMORY[0x277D071B8] mainThreadScheduler];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__MUIMessageListViewController_messageListDataSource_section_shouldSuspendUpdatesAfterChange___block_invoke;
  v19[3] = &unk_278188CD0;
  objc_copyWeak(&v20, &location);
  v15 = [v14 afterDelay:v19 performBlock:2.0];
  v16 = self->_queueSuspensionTimeoutToken;
  self->_queueSuspensionTimeoutToken = v15;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  os_unfair_lock_unlock(&self->_queueSuspensionTimeoutTokenLock);
  v17 = 1;
LABEL_10:

  return v17;
}

void __94__MUIMessageListViewController_messageListDataSource_section_shouldSuspendUpdatesAfterChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_214A5E000, v2, OS_LOG_TYPE_DEFAULT, "[Launch] Timeout - Resume updates", v4, 2u);
  }

  v3 = [WeakRetained dataSource];
  [v3 resumeUpdates];
}

- (void)messageListDataSource:(id)a3 willUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6 cleanSnapshot:(BOOL)a7
{
  v10 = a5;
  if ([a4 hasChanges] && !a6)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = v10;
    v11 = [MEMORY[0x277D071B8] mainThreadScheduler];
    [v11 performBlock:&v12];
  }
}

void __106__MUIMessageListViewController_messageListDataSource_willUpdateWithChange_section_animated_cleanSnapshot___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sectionListCellClassForMessageListSectionDataSource:*(a1 + 40)];
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 visibleCells];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __106__MUIMessageListViewController_messageListDataSource_willUpdateWithChange_section_animated_cleanSnapshot___block_invoke_2;
  v9[3] = &unk_27818ADB0;
  v5 = v2;
  v10 = v5;
  v6 = [v4 ef_filter:v9];

  if ([v6 count])
  {
    v7 = [v6 ef_compactMap:&__block_literal_global_100];
    v8 = [*(a1 + 32) cellsController];
    [v8 markItemIDsAsVisibleBeforeUpdate:v7];
  }
}

id __106__MUIMessageListViewController_messageListDataSource_willUpdateWithChange_section_animated_cleanSnapshot___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 messageListItem];
  v3 = [v2 itemID];

  return v3;
}

- (void)messageListDataSourcePrepareUpdate:(id)a3 section:(id)a4 cleanSnapshot:(BOOL)a5
{
  v5 = a5;
  v7 = [(MUIMessageListViewController *)self messageListSelectionModel:a3];
  [v7 setPerformingDataSourceUpdates:1];

  if (v5)
  {
    v8 = [(MUIMessageListViewController *)self messageListPositionHelper];
    [v8 reset];
  }
}

- (void)messageListDataSourceUpdateFailed:(id)a3 section:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__MUIMessageListViewController_messageListDataSourceUpdateFailed_section___block_invoke;
  v5[3] = &unk_278188BB0;
  v5[4] = self;
  v4 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v4 performBlock:v5];
}

uint64_t __74__MUIMessageListViewController_messageListDataSourceUpdateFailed_section___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messageListSelectionModel];
  [v2 setPerformingDataSourceUpdates:0];

  v3 = *(a1 + 32);

  return [v3 reloadDataSource];
}

- (id)messageListDataSource:(id)a3 sectionDataSourceForSection:(id)a4 messageList:(id)a5
{
  v7 = a4;
  v8 = [(MUIMessageListViewController *)self sectionDataSourceConfigurationWithSection:v7 messageList:a5];
  if ([v7 isEqualToString:@"MessageListSectionPriority"])
  {
    if (!_os_feature_enabled_impl() || !EMIsGreymatterSupported())
    {
      v9 = MUIMessageListPrioritySectionDataSource;
LABEL_8:
      v10 = [[v9 alloc] initWithConfiguration:v8];
      goto LABEL_9;
    }

LABEL_7:
    v9 = MUIMessageListUnbundledSectionDataSource;
    goto LABEL_8;
  }

  if (([v7 isEqualToString:@"MessageListSectionRecent"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"MessageListSectionRecentUnseen"))
  {
    goto LABEL_7;
  }

  if (([v7 isEqualToString:@"MessageListSectionGroupedSenderUnseen"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"MessageListSectionGroupedSender"))
  {
    v9 = MUIMessageListGroupedSenderSectionDataSource;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"MessageListSectionHelpMailLearn"])
  {
    v9 = MUIMessageListHelpMailLearnSectionDataSource;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"MessageListSectionOnboardingTip"])
  {
    v12 = [MUIMessageListOnboardingTipDataSource alloc];
    v13 = [(MUIMessageListViewController *)self selectedBucket];
    v14 = [MUICategoryMailboxCountHelper alloc];
    v15 = [(MUIMessageListViewController *)self mailboxes];
    v16 = [(MUIMessageListViewController *)self messageRepository];
    v17 = [(MUICategoryMailboxCountHelper *)v14 initWithMailboxes:v15 messageRepository:v16];
    v10 = [(MUIMessageListOnboardingTipDataSource *)v12 initWithConfiguration:v8 bucket:v13 countHelper:v17];
  }

  else if ([v7 isEqualToString:@"MessageListSectionBucketBar"])
  {
    v18 = [(MUIMessageListViewController *)self mailboxes];
    v19 = [(MUIMessageListViewController *)self _configuredBucketsViewControllerWithMailboxes:v18];

    v20 = [v19 parentViewController];

    if (!v20)
    {
      [(MUIMessageListViewController *)self addChildViewController:v19];
    }

    v10 = [[MUIMessageListBucketBarSectionDataSource alloc] initWithConfiguration:v8 bucketsViewController:v19];
  }

  else if ([v7 isEqualToString:@"MessageListSectionMailCleanupTip"])
  {
    v21 = [MUIMessageListMailCleanupTipDataSource alloc];
    v22 = [(MUIMessageListViewController *)self selectedBucket];
    v23 = [(MUIMessageListViewController *)self iCloudMailCleanupService];
    v10 = [(MUIMessageListMailCleanupTipDataSource *)v21 initWithConfiguration:v8 bucket:v22 iCloudMailCleanupService:v23];
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (BOOL)messageListDataSource:(id)a3 shouldAnimateNextUpdateInSectionDataSource:(id)a4 change:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([(MUIMessageListViewController *)self didNotifyExtendedLaunchTracker])
  {
    v7 = [(MUIMessageListViewController *)self messageToDisplayOnReload];
    v8 = v7 == 0;
  }

  else
  {
    v9 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v6 ef_publicDescription];
      v14 = 138412802;
      v15 = v11;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Launch] Skip animation for message list change: %{public}@", &v14, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)sectionDataSourceConfigurationWithSection:(id)a3 messageList:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MUIMessageListViewController *)self _hasInitialLoadPromiseForSection:v6])
  {
    v19 = [(MUIMessageListViewController *)self initialLoadCompletedPromise];
  }

  else
  {
    v19 = 0;
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && ([v6 isEqualToString:@"MessageListSectionPriority"] & 1) != 0)
  {
    v8 = 1;
  }

  else if (MUIBucketAllowsNewAndOldSections([(MUIMessageListViewController *)self selectedBucket]))
  {
    v9 = [(MUIMessageListViewController *)self dataSource];
    v10 = [v9 isMessagesSection:v6];

    if (v10)
    {
      v8 = 3;
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

  v11 = [MessageListSectionDataSourceConfiguration alloc];
  v12 = [(MUIMessageListViewController *)self collectionView];
  v13 = [(MUIMessageListViewController *)self layoutValuesHelper];
  v14 = [(MUIMessageListViewController *)self state];
  v15 = [(MUIMessageListViewController *)self avatarGenerator];
  v16 = [(MUIMessageListViewController *)self contactStore];
  v17 = [(MessageListSectionDataSourceConfiguration *)v11 initWithSection:v6 collectionView:v12 messageList:v7 layoutValuesHelper:v13 state:v14 delegate:self selectionModelProvider:self initialLoadCompletedPromise:v19 searchProgressView:0 headerType:v8 avatarGenerator:v15 contactStore:v16];

  return v17;
}

- (id)initialLoadCompletedPromiseForMessageListSectionDataSource:(id)a3
{
  v4 = [a3 section];
  v5 = [v4 isEqualToString:@"MessageListSectionRecent"];

  if (v5)
  {
    v6 = [(MUIMessageListViewController *)self initialLoadCompletedPromise];
    [v6 finishWithResult:MEMORY[0x277CBEC28]];

    v7 = [MEMORY[0x277D071A8] promise];
    [(MUIMessageListViewController *)self setInitialLoadCompletedPromise:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)messageListSectionDataSource:(id)a3 updatedOldestItemsForMailboxes:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(MUIMessageListViewController *)self mailboxesPendingOldestItemsUpdates];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [(MUIMessageListViewController *)self oldestItemsIDsByMailboxObjectID];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = [v5 objectForKeyedSubscript:v12];
        v16 = v15;
        if (v15 != v14 && ([v15 isEqual:v14] & 1) == 0)
        {
          [v6 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = [(MUIMessageListViewController *)self mailboxesPendingOldestItemsUpdates];
  [v17 ef_removeObjectsInArray:v6];

  v18 = [v5 copy];
  [(MUIMessageListViewController *)self setOldestItemsIDsByMailboxObjectID:v18];
}

- (void)messageListSectionDataSource:(id)a3 deletedMessagesWithItemIdentifiers:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MUIMessageListViewController *)self referenceMessageListItem];
  v9 = [v8 itemID];

  if (v9)
  {
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    if (![v7 containsObject:v9])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = v7;
  }

  v11 = [v6 messageList];
  v12 = [v11 recentlyCollapsedThreadContainsItemID:v9];

  if (v12)
  {
    v13 = [v6 messageList];
    [v13 clearRecentlyCollapsedThread];
  }

  else if ([(MUIMessageListViewController *)self isPresentingSearchViewController])
  {
    [(MUIMessageListViewController *)self _highlightNextMessageAfterDeletingMessagesWithItemIdentifiers:v10];
  }

  else
  {
    [(MUIMessageListViewController *)self selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:v10];
  }

LABEL_9:
}

- (void)messageListSectionDataSource:(id)a3 didAddMessagesWithItemIdentifiers:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(MUIMessageListViewController *)self initialScrollItemID];
  if ([v8 containsObject:v9])
  {
    [(MUIMessageListViewController *)self setInitialScrollItemID:0];
    v10 = [(MUIMessageListViewController *)self dataSource];
    v11 = [v10 indexPathForItemIdentifier:v9];

    v12 = [(MUIMessageListViewController *)self collectionView];
    [v12 mui_scrollToItemAtIndexPath:v11 atScrollPosition:1 animated:0];
  }

  v13 = [(MUIMessageListViewController *)self state];
  if (([v13 containsDraftsOrOutbox] & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = [(MUIMessageListViewController *)self referenceMessageListItem];

  if (v14 && [v8 count] == 1)
  {
    v13 = [v8 firstObject];
    v15 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      v26 = 138543618;
      v27 = v16;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_214A5E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Set reference message list item for first item from drafts or outbox: %{public}@", &v26, 0x16u);
    }

    v17 = [(MUIMessageListViewController *)self dataSource];
    v18 = [v17 messageListItemForItemID:v13];
    v19 = [v18 result];

    v20 = [(MUIMessageListViewController *)self dataSource];
    v21 = [v19 itemID];
    v22 = [v20 messageListForMessageListItemWithIdentifier:v21];

    [(MUIMessageListViewController *)self setReferenceMessageListItem:v19 referenceMessageList:v22 showAsConversation:0 animated:1];
LABEL_9:
  }

  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      v23 = [v7 section];
      v24 = [v23 isEqualToString:@"MessageListSectionPriority"];

      if (v24)
      {
        v25 = _ef_log_MUIMessageListViewController();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [MUIMessageListViewController messageListSectionDataSource:a2 didAddMessagesWithItemIdentifiers:v25];
        }

        [(MUIMessageListViewController *)self _shimmerViewIfNeeded];
      }
    }
  }
}

- (void)messageListSectionDataSource:(id)a3 handleRowSelectionAfterMovingMessagesWithItemIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController messageListSectionDataSource:handleRowSelectionAfterMovingMessagesWithItemIdentifiers:]", "MUIMessageListViewController.m", 1293, "0");
}

- (void)showBlankCellAlertForMessageListSectionDataSource:(id)a3 itemID:(id)a4 indexPath:(id)a5 reason:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController showBlankCellAlertForMessageListSectionDataSource:itemID:indexPath:reason:]", "MUIMessageListViewController.m", 1298, "0");
}

- (void)messageListSectionDataSource:(id)a3 didConfigureCell:(id)a4 atIndexPath:(id)a5 item:(id)a6 itemWasCached:(BOOL)a7 duration:(double)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController messageListSectionDataSource:didConfigureCell:atIndexPath:item:itemWasCached:duration:]", "MUIMessageListViewController.m", 1303, "0");
}

- (void)messageListSectionDataSource:(id)a3 didFailToConfigureCellAtIndexPath:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = [(MUIMessageListViewController *)self cellsController];
  [v7 reportCellDidLoad:0 error:v6];
}

- (Class)sectionListCellClassForMessageListSectionDataSource:(id)a3
{
  v5 = a3;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController sectionListCellClassForMessageListSectionDataSource:]", "MUIMessageListViewController.m", 1316, "0");
}

- (int64_t)selectedBucketForMUIMessageListUnbundledSectionDataSource:(id)a3
{
  v5 = a3;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController selectedBucketForMUIMessageListUnbundledSectionDataSource:]", "MUIMessageListViewController.m", 1345, "0");
}

- (id)feedbackListViewModelForHelpMailLearnSectionDataSource:(id)a3
{
  v4 = a3;
  v5 = [_TtC6MailUI23FeedbackViewModelHelper alloc];
  v6 = [(MUIMessageListViewController *)self selectedBucket];
  v7 = [(MUIMessageListViewController *)self mailboxes];
  v8 = [(FeedbackViewModelHelper *)v5 initWithSelectedBucket:v6 selectedMailboxes:v7];

  v9 = [_TtC6MailUI21FeedbackListViewModel alloc];
  v10 = [(MUIMessageListViewController *)self daemonInterface];
  v11 = [(MUIMessageListViewController *)self diagnosticsHelper];
  v12 = [(FeedbackListViewModel *)v9 initWithDaemonInterface:v10 diagnosticsHelper:v11 viewModelHelper:v8];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__MUIMessageListViewController_feedbackListViewModelForHelpMailLearnSectionDataSource___block_invoke;
  v14[3] = &unk_278188CD0;
  objc_copyWeak(&v15, &location);
  [(FeedbackListViewModel *)v12 setCancellationHandler:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v12;
}

void __87__MUIMessageListViewController_feedbackListViewModelForHelpMailLearnSectionDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v2;
  }
}

- (void)categoryGroupingPreferenceController:(id)a3 shouldDisableGrouping:(BOOL)a4 forBucket:(int64_t)a5
{
  v5 = a4;
  if ([(MUIMessageListViewController *)self selectedBucket]== a5)
  {
    v7 = [(MUIMessageListViewController *)self filterViewModel];
    [v7 setFilterAvailable:v5];

    [(MUIMessageListViewController *)self reloadDataSource];
  }
}

- (id)messageSelectionStrategy:(id)a3 indexPathOfItemID:(id)a4
{
  v5 = a4;
  v6 = [(MUIMessageListViewController *)self dataSource];
  v7 = [v6 indexPathForItemIdentifier:v5];

  return v7;
}

- (id)messageSelectionStrategy:(id)a3 itemIDForIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MUIMessageListViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  return v7;
}

- (int64_t)numberOfItemsForMessageSelectionStrategy:(id)a3
{
  v3 = [(MUIMessageListViewController *)self dataSource];
  v4 = [v3 numberOfItems];

  return v4;
}

- (id)indexPathOfSelectedMessageForMessageSelectionStrategy:(id)a3
{
  v3 = [(MUIMessageListViewController *)self _indexPathsForSelectedItems];
  v4 = [v3 firstObject];

  return v4;
}

- (id)messageSelectionStrategy:(id)a3 messageListItemForItemID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [MUIMessageListViewController messageSelectionStrategy:a2 messageListItemForItemID:self];
  }

  v9 = [(MUIMessageListViewController *)self dataSource];
  v10 = [v9 messageListItemForItemID:v8];

  v16 = 0;
  v11 = [v10 resultWithTimeout:&v16 error:1.0];
  v12 = v16;
  if (!v11)
  {
    v13 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MUIMessageListViewController messageSelectionStrategy:v8 messageListItemForItemID:v12];
    }

    v14 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [MUIMessageListViewController messageSelectionStrategy:messageListItemForItemID:];
    }
  }

  return v11;
}

- (BOOL)messageSelectionStrategy:(id)a3 anyExpandedThreadContainsItemID:(id)a4
{
  v5 = a4;
  v6 = [(MUIMessageListViewController *)self dataSource];
  v7 = [v6 anyExpandedThreadContainsItemID:v5];

  return v7;
}

- (BOOL)messageSelectionStrategy:(id)a3 isExpandedThreadWithItemID:(id)a4
{
  v5 = a4;
  v6 = [(MUIMessageListViewController *)self dataSource];
  v7 = [v6 isExpandedThread:v5];

  return v7;
}

- (id)_indexPathsForSelectedItems
{
  v2 = [(MUIMessageListViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];

  return v3;
}

- (void)setReferenceMessageListItem:(id)a3 referenceMessageList:(id)a4 showAsConversation:(BOOL)a5 animated:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController setReferenceMessageListItem:referenceMessageList:showAsConversation:animated:]", "MUIMessageListViewController.m", 1451, "0");
}

- (BOOL)selectRowOfItemID:(id)a3 scrollToVisible:(BOOL)a4 scrollPosition:(int64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    v24 = 138413826;
    v25 = v14;
    v26 = 2048;
    v27 = self;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v11;
    v32 = 1024;
    v33 = v8;
    v34 = 2048;
    v35 = a5;
    v36 = 1024;
    v37 = v6;
    _os_log_impl(&dword_214A5E000, v12, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ - itemID:%@, scrollToVisible:%{BOOL}d, scrollPosition:%lu, animated:%{BOOL}d", &v24, 0x40u);
  }

  v16 = [(MUIMessageListViewController *)self dataSource];
  v17 = [v16 indexPathForItemIdentifier:v11];

  v18 = [(MUIMessageListViewController *)self collectionView];
  if (v17)
  {
    [(MUIMessageListViewController *)self setLastSelectedItemID:v11];
    if ([(MUIMessageListViewController *)self isInExpandedEnvironment])
    {
      v19 = [(MUIMessageListViewController *)self _indexPathsForSelectedItems];
      v20 = [v19 containsObject:v17];

      if ((v20 & 1) == 0)
      {
        [(MUIMessageListViewController *)self deselectSelectedItemsInCollectionView];
        [v18 mui_selectItemAtIndexPath:v17 animated:v6 & ~v8 scrollPosition:0];
      }
    }

    if (v8)
    {
      v21 = [v17 item];
      if (v21 < [v18 numberOfItemsInSection:{objc_msgSend(v17, "section")}] && (objc_msgSend(v18, "mui_isIndexPathVisible:", v17) & 1) == 0)
      {
        [v18 mui_scrollToItemAtIndexPath:v17 atScrollPosition:a5 animated:v6];
      }
    }

    if (![(MUIMessageListViewController *)self isSearchControllerActive])
    {
      [(MUIMessageListViewController *)self setSplitViewControllerNeedsFocusUpdate];
    }
  }

  else
  {
    v22 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MUIMessageListViewController selectRowOfItemID:scrollToVisible:scrollPosition:animated:];
    }

    [(MUIMessageListViewController *)self setLastSelectedItemID:0];
    [(MUIMessageListViewController *)self deselectAllItemsInCollectionView:v18 animated:v6];
  }

  return v17 != 0;
}

- (void)deselectSelectedItemsInCollectionView
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(MUIMessageListViewController *)self collectionView];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MUIMessageListViewController *)self _indexPathsForSelectedItems];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 deselectItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++) animated:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)deselectAllItemsInCollectionView:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController deselectAllItemsInCollectionView:animated:]", "MUIMessageListViewController.m", 1501, "0");
}

- (void)selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)a3
{
  v5 = a3;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:]", "MUIMessageListViewController.m", 1512, "0");
}

- (id)messageListItemsForDiagnosticsHelper:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 source] == 1)
  {
    v5 = [(MUIMessageListViewController *)self lastSelectedMessageListItems];
    [(MUIMessageListViewController *)self setLastSelectedMessageListItems:0];
    v6 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = [v5 count];
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "Providing %lu messages to %@", &v8, 0x16u);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)currentFocusChanged:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__MUIMessageListViewController_currentFocusChanged___block_invoke;
  v9[3] = &unk_278188F78;
  v9[4] = self;
  v10 = v4;
  v5 = v9;
  v6 = MEMORY[0x277D071B8];
  v7 = v4;
  v8 = [v6 mainThreadScheduler];
  [v8 performSyncBlock:v5];
}

void __52__MUIMessageListViewController_currentFocusChanged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCurrentFocus:*(a1 + 40)];
  v2 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) ef_publicDescription];
    v4 = [*(a1 + 32) mailboxes];
    v5 = 138543618;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_214A5E000, v2, OS_LOG_TYPE_DEFAULT, "Current Focus changed: %{public}@, mailboxes: %@", &v5, 0x16u);
  }
}

- (void)setFocusFilterEnabled:(BOOL)a3
{
  if (self->_focusFilterEnabled != a3)
  {
    v9 = v4;
    v10 = v3;
    self->_focusFilterEnabled = a3;
    if (a3)
    {
      v8 = [(MUIMessageListViewController *)self filterController];
      [v8 reselectFocusedAccounts];
    }

    [(MUIMessageListViewController *)self updateFilters:v9];

    [(MUIMessageListViewController *)self _updateUnseenCountQueries];
  }
}

- (void)updateHighlightsVisibility
{
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {

    [(MUIMessageListViewController *)self reloadDataSource];
  }
}

- (void)highlightedMessagesViewDidSelectMessage:(id)a3
{
  v5 = a3;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController highlightedMessagesViewDidSelectMessage:]", "MUIMessageListViewController.m", 1636, "0");
}

- (void)highlightedMessagesViewDidProvideFeedbackForMessage:(id)a3 feedbackType:(int64_t)a4 feedbackFeature:(int64_t)a5
{
  v7 = a3;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController highlightedMessagesViewDidProvideFeedbackForMessage:feedbackType:feedbackFeature:]", "MUIMessageListViewController.m", 1640, "0");
}

- (id)cellLayoutValuesForHighlightedMessages
{
  v2 = [(MUIMessageListViewController *)self layoutValuesHelper];
  v3 = [v2 layoutValuesForStyle:0];

  return v3;
}

- (void)updateSelectedBucket:(int64_t)a3 unseenPredicate:(id)a4
{
  v9 = a4;
  v6 = [(MUIMessageListViewController *)self unseenPredicate];

  if (v6 == v9)
  {
    if ([(MUIMessageListViewController *)self selectedBucket]== a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [(MUIMessageListViewController *)self setUnseenPredicate:?];
    if ([(MUIMessageListViewController *)self selectedBucket]== a3)
    {
      goto LABEL_6;
    }
  }

  [(MUIMessageListViewController *)self setSelectedBucket:a3];
LABEL_6:
  v7 = [(MUIMessageListViewController *)self shouldDisplayGroupedSenders];
  v8 = [(MUIMessageListViewController *)self filterViewModel];
  [v8 setFilterAvailable:!v7];

  [(MUIMessageListViewController *)self reloadDataSourceApplyEmptySnapshot:0];
LABEL_7:
}

- (void)changeCategoryOfDragItem:(id)a3 toBucket:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController changeCategoryOfDragItem:toBucket:completion:]", "MUIMessageListViewController.m", 1679, "0");
}

- (BOOL)canMoveDragItem:(id)a3 toBucket:(int64_t)a4
{
  v6 = a3;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController canMoveDragItem:toBucket:]", "MUIMessageListViewController.m", 1683, "0");
}

- (id)_updatedPredicateForSelectedBucket:(id)a3
{
  v4 = a3;
  v5 = NSPredicateFromBucket([(MUIMessageListViewController *)self selectedBucket]);
  v6 = [MEMORY[0x277CCA920] ef_andCompoundPredicateForOptionalPredicate:v4 second:v5];

  return v6;
}

- (BOOL)_hasHighlightedMessages
{
  if (!_os_feature_enabled_impl() || !EMIsGreymatterAvailable())
  {
    return 0;
  }

  v3 = [(MUIMessageListViewController *)self showHighlights];
  if ([v3 isEnabled])
  {
    v4 = [(MUIMessageListViewController *)self dataSource];
    v5 = [v4 numberOfItemsAtSectionIndex:{-[MUIMessageListViewController _prioritySectionIndex](self, "_prioritySectionIndex")}] > 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_hasHighlightedMessagesVisible
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if (!EMIsGreymatterAvailable())
  {
    return 0;
  }

  v3 = [(MUIMessageListViewController *)self showHighlights];
  v4 = [v3 isEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MUIMessageListViewController *)self _prioritySectionIndex];
  v6 = [(MUIMessageListViewController *)self collectionView];
  v7 = [v6 indexPathsForVisibleItems];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__MUIMessageListViewController__hasHighlightedMessagesVisible__block_invoke;
  v11[3] = &__block_descriptor_40_e21_B16__0__NSIndexPath_8l;
  v11[4] = v5;
  v8 = [v7 ef_firstObjectPassingTest:v11];
  v9 = v8 != 0;

  return v9;
}

- (void)_shimmerViewIfNeededForPriorityCellWillDisplay:(BOOL)a3
{
  if (![(MUIMessageListViewController *)self _shouldShimmer])
  {
    v9 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [MUIMessageListViewController _shimmerViewIfNeededForPriorityCellWillDisplay:];
    }

    goto LABEL_9;
  }

  v5 = [(MUIMessageListViewController *)self _prioritySectionVisibleAndActive];
  v6 = v5;
  if (!v5 || a3)
  {
    [(MUIMessageListViewController *)self setHasPendingHighlightsShimmer:?];
    if (!v6)
    {
LABEL_5:
      v9 = _ef_log_MUIMessageListViewController();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "Need to play Priority shimmer but the scene is not active, will wait until the scene becomes active.", buf, 2u);
      }

LABEL_9:

      return;
    }
  }

  else
  {
    v7 = [(MUIMessageListViewController *)self _hasHighlightedMessagesVisible];
    v8 = v7;
    [(MUIMessageListViewController *)self setHasPendingHighlightsShimmer:!v7];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v10 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Did add new items to Priority, playing shimmer.", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__MUIMessageListViewController__shimmerViewIfNeededForPriorityCellWillDisplay___block_invoke;
  block[3] = &unk_278188CD0;
  objc_copyWeak(&v12, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __79__MUIMessageListViewController__shimmerViewIfNeededForPriorityCellWillDisplay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained shimmerView];
    [v2 shimmer];

    [v3 _updatePreviouslyHighlightedMessages];
    WeakRetained = v3;
  }
}

- (int64_t)_prioritySectionIndex
{
  v2 = [(MUIMessageListViewController *)self dataSource];
  v3 = [v2 sectionIndexForSection:@"MessageListSectionPriority"];

  return v3;
}

- (BOOL)_shouldShimmer
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if (!EMIsGreymatterAvailable())
  {
    return 0;
  }

  v3 = [(MUIMessageListViewController *)self showHighlights];
  v4 = [v3 isEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MUIMessageListViewController *)self _currentDataForItemIDsInPriority];
  v6 = [MEMORY[0x277CBEBD0] em_userDefaults];
  v7 = [v6 valueForKey:*MEMORY[0x277D06CB0]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
  {
    v8 = [(MUIMessageListViewController *)self _mailboxBucketBarConfigurationIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
    {
      v10 = [MEMORY[0x277CBEB58] setWithArray:v5];
      v11 = [MEMORY[0x277CBEB98] setWithArray:v9];
      [v10 minusSet:v11];
      v12 = [v10 count];
    }

    else
    {
      v12 = [v5 count];
    }
  }

  else
  {
    v12 = [v5 count];
  }

  v13 = v12 != 0;

  return v13;
}

- (id)_mailboxBucketBarConfigurationIdentifier
{
  v2 = [(MUIMessageListViewController *)self mailboxes];
  v3 = [v2 firstObject];

  v4 = [v3 bucketBarConfigurationIdentifier];
  if (!v4)
  {
    v5 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MUIMessageListViewController *)v3 _mailboxBucketBarConfigurationIdentifier];
    }
  }

  return v4;
}

- (void)_updatePreviouslyHighlightedMessages
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(MUIMessageListViewController *)self _mailboxBucketBarConfigurationIdentifier];
  v4 = [(MUIMessageListViewController *)self dataSource];
  v5 = [v4 itemIdentifiersForSection:@"MessageListSectionPriority"];

  v6 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 ef_shortDescriptionString];
    v15 = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "Updating shimmered message itemIDs:%{public}@ for mailbox:%{public}@", &v15, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CBEBD0] em_userDefaults];
  v10 = *MEMORY[0x277D06CB0];
  v11 = [v9 valueForKey:*MEMORY[0x277D06CB0]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
  {
    v12 = [v11 mutableCopy];

    v8 = v12;
  }

  v13 = [v5 ef_compactMap:&__block_literal_global_122];
  [v8 setObject:v13 forKeyedSubscript:v3];

  v14 = [MEMORY[0x277CBEBD0] em_userDefaults];
  [v14 setValue:v8 forKey:v10];
}

- (id)_currentDataForItemIDsInPriority
{
  v2 = [(MUIMessageListViewController *)self dataSource];
  v3 = [v2 itemIdentifiersForSection:@"MessageListSectionPriority"];

  v4 = [v3 ef_compactMap:&__block_literal_global_125];

  return v4;
}

- (MUIiCloudMailCleanupService)iCloudMailCleanupService
{
  WeakRetained = objc_loadWeakRetained(&self->_iCloudMailCleanupService);

  return WeakRetained;
}

- (MUIPriorityMessageListBackgroundDecorationView)shimmerView
{
  WeakRetained = objc_loadWeakRetained(&self->_shimmerView);

  return WeakRetained;
}

- (void)presentMailCleanupViewForMailCleanupTipId:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIMessageListViewController.presentMailCleanupView(mailCleanupTipId:)(v4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)dismissMailCleanupTipForMailCleanupTipId:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIMessageListViewController.dismissMailCleanupTip(mailCleanupTipId:)(v4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)onAppearForMailCleanupTipId:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIMessageListViewController.onAppear(mailCleanupTipId:)(v4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)_refreshBucketsSession
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.refreshBucketsSession()();
  MEMORY[0x277D82BD8](self);
}

- (void)_updateBucketBarIsHidden:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MUIMessageListViewController.updateBucketBar(isHidden:)(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)_updateUnseenCountQueries
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.updateUnseenCountQueries()();
  MEMORY[0x277D82BD8](self);
}

- (void)_selectPrimary
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.selectPrimary()();
  MEMORY[0x277D82BD8](self);
}

- (void)_selectTransactions
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.selectTransactions()();
  MEMORY[0x277D82BD8](self);
}

- (void)_selectUpdates
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.selectUpdates()();
  MEMORY[0x277D82BD8](self);
}

- (void)_selectPromotions
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.selectPromotions()();
  MEMORY[0x277D82BD8](self);
}

- (void)_selectAllMail
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.selectAllMail()();
  MEMORY[0x277D82BD8](self);
}

- (void)bucketBarConfigurationController:(id)a3 isHidden:(BOOL)a4 forMailboxes:(id)a5
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](self);
  v6 = sub_214CCD394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37B50);
  v7 = sub_214CCF7E4();
  MUIMessageListViewController.bucketBarConfigurationController(_:isHidden:forMailboxes:)(a3, v6 & 1, v7);

  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)bucketBarConfigurationControllerRequiresReload:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.bucketBarConfigurationControllerRequiresReload(_:)(a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)_enableFilters
{
  if (a1)
  {
    v4 = [a1 filterViewModel];
    [v4 setFilterEnabled:1];
    v2 = [(MUIMessageListViewController *)a1 _predicateForFiltersEnabled:?];
    if ([(MUIMessageListViewController *)a1 _shouldApplyFilterPredicate:v2])
    {
      [a1 applyFilterPredicate:v2];
      [a1 updateFilterControlWithFilterViewModel:v4];
      v3 = [v4 selectedFilters];
      [(MUIMessageListViewController *)a1 _reportFilterChangeEvent:v3 filters:?];
    }
  }
}

- (void)_disableFilters
{
  if (a1)
  {
    v2 = [a1 filterViewModel];
    [v2 setFilterEnabled:0];

    v3 = [(MUIMessageListViewController *)a1 _predicateForFiltersEnabled:?];
    if ([(MUIMessageListViewController *)a1 _shouldApplyFilterPredicate:v3])
    {
      [a1 applyFilterPredicate:v3];
      [(MUIMessageListViewController *)a1 _reportFilterChangeEvent:0 filters:?];
    }
  }
}

- (id)_predicateForFiltersEnabled:(void *)a1
{
  if (a1)
  {
    if (a2)
    {
      v3 = [a1 filterViewModel];
      v4 = [v3 predicateForSelectedFilters];
    }

    else
    {
      v4 = 0;
    }

    v5 = [a1 updatedPredicateForFocusedAccounts:v4];

    v6 = [a1 _updatedPredicateForReadLater:v5];

    if (([a1 isBucketBarHidden] & 1) == 0)
    {
      v7 = [a1 _updatedPredicateForSelectedBucket:v6];

      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_shouldApplyFilterPredicate:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 currentFilterPredicate];
    v5 = EFObjectsAreEqual();

    v2 = (v5 ^ 1u);
  }

  return v2;
}

- (void)_reportFilterChangeEvent:(void *)a3 filters:
{
  v5 = a3;
  if (a1)
  {
    v6 = [MEMORY[0x277D071B8] globalAsyncScheduler];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__MUIMessageListViewController__reportFilterChangeEvent_filters___block_invoke;
    v7[3] = &unk_27818AD88;
    v9 = a2;
    v8 = v5;
    [v6 performBlock:v7];
  }
}

- (uint64_t)_hasInitialLoadPromiseForSection:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isEqualToString:@"MessageListSectionRecent"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MessageListSectionIndexedSearch") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MessageListSectionServerSearch") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MessageListSectionTopHits") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MessageListSectionInstantAnswers"))
    {
      a1 = 1;
    }

    else
    {
      a1 = [v4 isEqualToString:@"MessageListSectionGroupedSender"];
    }
  }

  return a1;
}

- (void)_highlightNextMessageAfterDeletingMessagesWithItemIdentifiers:(void *)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 messageSelectionStrategy];
    v5 = [v4 itemIDToSelectAfterDeletedMessageItemIDs:v3];

    v6 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      OUTLINED_FUNCTION_0_9();
      v10 = a1;
      v11 = 2114;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> Highlight next message with item id: %{public}@, after deleting messages with ids: %{public}@", v9, 0x2Au);
    }

    [a1 selectRowOfItemID:v5 scrollToVisible:0 animated:0];
  }
}

- (void)filterController
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"MUIMessageListViewController.m" lineNumber:544 description:@"createMailboxFilterController did not return a valid instance"];

  *a4 = *a3;
}

- (void)createMessageListForReload
{
  v8 = [a1 canShowUnseenSection];

  if (v8)
  {
    v9 = [a1 unseenPredicate];
    v11 = v9;
    v10 = MessageListSectionGroupedSenderUnseen;
    if ((a3 & 1) == 0)
    {
      v10 = MessageListSectionRecentUnseen;
    }

    [a4 setOrAddObject:v9 forKey:*v10];
  }
}

- (void)reloadDataSourceWithMessageList:(uint64_t)a1 applyEmptySnapshot:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMessageListViewController.m" lineNumber:818 description:@"Current thread must be main"];
}

- (void)dataSource
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)messageListSectionDataSource:(const char *)a1 didAddMessagesWithItemIdentifiers:(NSObject *)a2 .cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_214A5E000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ Calling shimmerViewIfNeeded", &v4, 0xCu);
}

- (void)messageSelectionStrategy:(uint64_t)a1 messageListItemForItemID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMessageListViewController.m" lineNumber:1414 description:{@"Invalid parameter not satisfying: %@", @"itemID"}];
}

- (void)messageSelectionStrategy:(uint64_t)a1 messageListItemForItemID:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v7 = [a2 ef_publicDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)selectRowOfItemID:scrollToVisible:scrollPosition:animated:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_mailboxBucketBarConfigurationIdentifier
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_214A5E000, a2, OS_LOG_TYPE_ERROR, "Unable to update shimmered messages for mailbox:%{public}@", &v2, 0xCu);
}

@end