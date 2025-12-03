@interface MUIMessageListViewController
- (BOOL)_hasHighlightedMessages;
- (BOOL)_hasHighlightedMessagesVisible;
- (BOOL)_shouldAttachMailCleanupSection;
- (BOOL)_shouldDisplayHelpMailLearn;
- (BOOL)_shouldDisplayOnboardingTip;
- (BOOL)_shouldShimmer;
- (BOOL)canMoveDragItem:(id)item toBucket:(int64_t)bucket;
- (BOOL)canShowUnseenSection;
- (BOOL)focusAllowed;
- (BOOL)hasUpdatedAllVisibleSections;
- (BOOL)isBucketBarHidden;
- (BOOL)messageListDataSource:(id)source section:(id)section shouldSuspendUpdatesAfterChange:(id)change;
- (BOOL)messageListDataSource:(id)source shouldAnimateNextUpdateInSectionDataSource:(id)dataSource change:(id)change;
- (BOOL)messageSelectionStrategy:(id)strategy anyExpandedThreadContainsItemID:(id)d;
- (BOOL)messageSelectionStrategy:(id)strategy isExpandedThreadWithItemID:(id)d;
- (BOOL)selectRowOfItemID:(id)d scrollToVisible:(BOOL)visible scrollPosition:(int64_t)position animated:(BOOL)animated;
- (BOOL)shouldDisplayGroupedSenders;
- (BOOL)shouldIncludeMailCleanupFilter;
- (Class)sectionListCellClassForMessageListSectionDataSource:(id)source;
- (MUIMailboxFilterController)filterController;
- (MUIMailboxFilterViewModel)filterViewModel;
- (MUIMessageListViewController)initWithDaemonInterface:(id)interface focusController:(id)controller mailboxCategoryCloudStorage:(id)storage avatarGenerator:(id)generator bucketBarConfigurationController:(id)configurationController mailboxes:(id)mailboxes contactStore:(id)store diagnosticsHelper:(id)self0;
- (MUIPriorityMessageListBackgroundDecorationView)shimmerView;
- (MUIiCloudMailCleanupService)iCloudMailCleanupService;
- (MessageListDataSource)dataSource;
- (MessageListViewControllerState)state;
- (NSPredicate)priorityPredicate;
- (NSString)userQueryString;
- (id)_configuredBucketsViewControllerWithMailboxes:(id)mailboxes;
- (id)_currentDataForItemIDsInPriority;
- (id)_excludedMailboxesPredicate;
- (id)_indexPathsForSelectedItems;
- (id)_mailboxBucketBarConfigurationIdentifier;
- (id)_predicateForFiltersEnabled:(void *)enabled;
- (id)_topHitsPredicate;
- (id)_updatedPredicateForSelectedBucket:(id)bucket;
- (id)cellLayoutValuesForHighlightedMessages;
- (id)createMessageListForReload;
- (id)feedbackListViewModelForHelpMailLearnSectionDataSource:(id)source;
- (id)indexPathOfSelectedMessageForMessageSelectionStrategy:(id)strategy;
- (id)initialLoadCompletedPromiseForMessageListSectionDataSource:(id)source;
- (id)messageListDataSource:(id)source sectionDataSourceForSection:(id)section messageList:(id)list;
- (id)messageListItemsForDiagnosticsHelper:(id)helper;
- (id)messageSelectionStrategy:(id)strategy indexPathOfItemID:(id)d;
- (id)messageSelectionStrategy:(id)strategy itemIDForIndexPath:(id)path;
- (id)messageSelectionStrategy:(id)strategy messageListItemForItemID:(id)d;
- (id)searchPredicateForMailboxes:(id)mailboxes;
- (id)sectionDataSourceConfigurationWithSection:(id)section messageList:(id)list;
- (id)updatedPredicateForFocusedAccounts:(id)accounts;
- (int64_t)_prioritySectionIndex;
- (int64_t)numberOfItemsForMessageSelectionStrategy:(id)strategy;
- (int64_t)selectedBucketForMUIMessageListUnbundledSectionDataSource:(id)source;
- (uint64_t)_hasInitialLoadPromiseForSection:(uint64_t)section;
- (void)_bucketBarUserInteractionEnabled:(BOOL)enabled;
- (void)_disableFilters;
- (void)_enableFilters;
- (void)_highlightNextMessageAfterDeletingMessagesWithItemIdentifiers:(void *)identifiers;
- (void)_mailboxBucketBarConfigurationIdentifier;
- (void)_refreshBucketsSession;
- (void)_reportFilterButtonTapped;
- (void)_reportFilterChangeEvent:(void *)event filters:;
- (void)_resetMailboxRepositoryForMailboxes:(id)mailboxes;
- (void)_selectAllMail;
- (void)_selectBucket:(int64_t)bucket;
- (void)_selectPrimary;
- (void)_selectPromotions;
- (void)_selectTransactions;
- (void)_selectUpdates;
- (void)_shimmerViewIfNeededForPriorityCellWillDisplay:(BOOL)display;
- (void)_shouldApplyFilterPredicate:(void *)predicate;
- (void)_updateBucketBarIsHidden:(BOOL)hidden;
- (void)_updatePreviouslyHighlightedMessages;
- (void)_updateUnseenCountQueries;
- (void)_updateViewPrimaryWithNoOnboardingIfNeeded;
- (void)applyFilterPredicate:(id)predicate;
- (void)bucketBarConfigurationController:(id)controller isHidden:(BOOL)hidden forMailboxes:(id)mailboxes;
- (void)bucketBarConfigurationControllerRequiresReload:(id)reload;
- (void)cancelQueueSuspensionTimeout;
- (void)categoryGroupingPreferenceController:(id)controller shouldDisableGrouping:(BOOL)grouping forBucket:(int64_t)bucket;
- (void)changeCategoryOfDragItem:(id)item toBucket:(int64_t)bucket completion:(id)completion;
- (void)configureDelegatesForDataSource:(id)source;
- (void)createMessageListForReload;
- (void)currentFocusChanged:(id)changed;
- (void)dataSource;
- (void)dealloc;
- (void)deselectAllItemsInCollectionView:(id)view animated:(BOOL)animated;
- (void)deselectSelectedItemsInCollectionView;
- (void)dismissMailCleanupTipForMailCleanupTipId:(id)id;
- (void)filterController;
- (void)highlightedMessagesViewDidProvideFeedbackForMessage:(id)message feedbackType:(int64_t)type feedbackFeature:(int64_t)feature;
- (void)highlightedMessagesViewDidSelectMessage:(id)message;
- (void)messageListDataSource:(id)source willUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated cleanSnapshot:(BOOL)snapshot;
- (void)messageListDataSourcePrepareUpdate:(id)update section:(id)section cleanSnapshot:(BOOL)snapshot;
- (void)messageListDataSourceUpdateFailed:(id)failed section:(id)section;
- (void)messageListSectionDataSource:(id)source deletedMessagesWithItemIdentifiers:(id)identifiers;
- (void)messageListSectionDataSource:(id)source didAddMessagesWithItemIdentifiers:(id)identifiers;
- (void)messageListSectionDataSource:(id)source didConfigureCell:(id)cell atIndexPath:(id)path item:(id)item itemWasCached:(BOOL)cached duration:(double)duration;
- (void)messageListSectionDataSource:(id)source didFailToConfigureCellAtIndexPath:(id)path error:(id)error;
- (void)messageListSectionDataSource:(id)source handleRowSelectionAfterMovingMessagesWithItemIdentifiers:(id)identifiers;
- (void)messageListSectionDataSource:(id)source updatedOldestItemsForMailboxes:(id)mailboxes;
- (void)onAppearForMailCleanupTipId:(id)id;
- (void)presentMailCleanupViewForMailCleanupTipId:(id)id;
- (void)refreshHighlightedMessagesController;
- (void)reloadDataSourceApplyEmptySnapshot:(BOOL)snapshot;
- (void)reloadDataSourceWithMessageList:(id)list applyEmptySnapshot:(BOOL)snapshot;
- (void)reloadDataSourceWithMessageList:(id)list sections:(id)sections applyEmptySnapshot:(BOOL)snapshot;
- (void)reloadDataSourceWithSearchPredicate:(id)predicate;
- (void)reloadFromMailboxes;
- (void)selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)ds;
- (void)setCollectionView:(id)view;
- (void)setFiltersEnabled:(BOOL)enabled;
- (void)setFocusFilterEnabled:(BOOL)enabled;
- (void)setInitialCellConfigurationCompleted:(BOOL)completed;
- (void)setMessageRepository:(id)repository;
- (void)setPrimitiveMailboxes:(id)mailboxes;
- (void)setReferenceMessageListItem:(id)item referenceMessageList:(id)list showAsConversation:(BOOL)conversation animated:(BOOL)animated;
- (void)setSelectedBucket:(int64_t)bucket;
- (void)setSwipeActionVisible:(BOOL)visible;
- (void)showBlankCellAlertForMessageListSectionDataSource:(id)source itemID:(id)d indexPath:(id)path reason:(id)reason;
- (void)toggleFilters;
- (void)updateFilterContextForMailboxes:(id)mailboxes focus:(id)focus applyFilters:(BOOL)filters;
- (void)updateFilterControlWithFilterViewModel:(id)model;
- (void)updateFilters;
- (void)updateHighlightsVisibility;
- (void)updateSelectedBucket:(int64_t)bucket unseenPredicate:(id)predicate;
- (void)updateState:(id)state withMailboxes:(id)mailboxes;
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
    collectionView = [(MUIMessageListViewController *)self collectionView];
    v5 = _ef_log_MUIMessageListViewController();
    v6 = v5;
    if (collectionView)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v11 = 138412802;
        v12 = v8;
        v13 = 2048;
        selfCopy = self;
        v15 = 2114;
        v16 = collectionView;
        _os_log_impl(&dword_214A5E000, &v6->super, OS_LOG_TYPE_DEFAULT, "<%@: %p> Creating MessageListDataSource with collectionView: %{public}@", &v11, 0x20u);
      }

      v9 = [[MessageListDataSource alloc] initWithCollectionView:collectionView];
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
    em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
    v3 = MUIOnboardingTipKeyForBucket(1);
    if ([em_userDefaults integerForKey:v3] == 1 && !objc_msgSend(em_userDefaults, "integerForKey:", *MEMORY[0x277D06C68]))
    {
      v4 = *MEMORY[0x277D06D18];
      v5 = [em_userDefaults integerForKey:*MEMORY[0x277D06D18]];
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

      [em_userDefaults setInteger:v7 forKey:v4];
    }
  }
}

- (void)reloadFromMailboxes
{
  [(MUIMessageListViewController *)self setPrimitiveFocusFilterEnabled:1];
  mailboxes = [(MUIMessageListViewController *)self mailboxes];
  currentFocus = [(MUIMessageListViewController *)self currentFocus];
  [(MUIMessageListViewController *)self updateFilterContextForMailboxes:mailboxes focus:currentFocus applyFilters:0];

  [(MUIMessageListViewController *)self reloadDataSource];
}

- (id)createMessageListForReload
{
  v60 = *MEMORY[0x277D85DE8];
  mailboxes = [(MUIMessageListViewController *)self mailboxes];
  if (![mailboxes count])
  {
    v5 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MUIMessageListViewController createMessageListForReload];
    }

    goto LABEL_7;
  }

  messageRepository = [(MUIMessageListViewController *)self messageRepository];

  if (!messageRepository)
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
  shouldDisplayGroupedSenders = [(MUIMessageListViewController *)self shouldDisplayGroupedSenders];
  unseenPredicate = [(MUIMessageListViewController *)self unseenPredicate];
  if (unseenPredicate)
  {
    [(MUIMessageListViewController *)self createMessageListForReload:unseenPredicate];
  }

  priorityPredicate = [(MUIMessageListViewController *)self priorityPredicate];
  priorityPredicate2 = [(MUIMessageListViewController *)self priorityPredicate];

  if (priorityPredicate2)
  {
    [v8 setOrAddObject:priorityPredicate forKey:@"MessageListSectionPriority"];
  }

  if (shouldDisplayGroupedSenders)
  {
    em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
    preferredGroupedSenderGrouping = [em_userDefaults preferredGroupedSenderGrouping];

    v15 = MEMORY[0x277D06E00];
    messageRepository2 = [(MUIMessageListViewController *)self messageRepository];
    v17 = [v15 groupedCommerceSenderMessageListForMailboxes:mailboxes withRepository:messageRepository2 grouping:preferredGroupedSenderGrouping sectionPredicates:v8 countOfItemsToPrecache:16];

    state = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(state, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      query = [v17 query];
      *buf = 138412802;
      v55 = v20;
      v56 = 2048;
      selfCopy3 = self;
      v58 = 2112;
      v59 = query;
      _os_log_impl(&dword_214A5E000, state, OS_LOG_TYPE_DEFAULT, "<%@: %p> Created new grouped sender message list for mailboxes with query %@", buf, 0x20u);
    }

    goto LABEL_34;
  }

  v51 = v8;
  state = [(MUIMessageListViewController *)self state];
  containsInbox = [state containsInbox];
  v23 = 0;
  v48 = priorityPredicate2;
  if (([state containsSent]& 1) == 0 && containsInbox)
  {
    v23 = [(MUIMessageListViewController *)self shouldHideFollowUp]^ 1;
  }

  v49 = containsInbox;
  v50 = priorityPredicate;
  if ([mailboxes ef_any:&__block_literal_global_81_0])
  {
    v24 = 32;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 | [state isSearch]^ 1;
  if ([state containsInbox]&& [(MUIMessageListViewController *)self isThreaded])
  {
    v25 |= 0x1000uLL;
  }

  v26 = MEMORY[0x277D06E08];
  mailboxRepository = [(MUIMessageListViewController *)self mailboxRepository];
  senderSpecificMessageListItem = [(MUIMessageListViewController *)self senderSpecificMessageListItem];
  senderList = [senderSpecificMessageListItem senderList];
  firstObject = [senderList firstObject];
  v31 = [v26 transformPredicateWithMailboxes:mailboxes mailboxTypeResolver:mailboxRepository shouldIncludeFollowUps:v23 shouldIncludeReadLater:v49 limitToSender:firstObject];

  sortDescriptors = [state sortDescriptors];
  LODWORD(senderSpecificMessageListItem) = [(MUIMessageListViewController *)self isThreaded];
  v33 = MEMORY[0x277D06E00];
  messageRepository3 = [(MUIMessageListViewController *)self messageRepository];
  if (senderSpecificMessageListItem)
  {
    v17 = [v33 threadedMessageListForMailboxes:mailboxes withRepository:messageRepository3 additionalQueryOptions:v25 countOfItemsToPrecache:16 shouldUpdateDisplayDate:1 sortDescriptors:sortDescriptors sectionPredicates:v51 transformPredicate:v31];

    v35 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      query2 = [v17 query];
      *buf = 138412802;
      v55 = v37;
      v56 = 2048;
      selfCopy3 = self;
      v58 = 2112;
      v59 = query2;
      v39 = "<%@: %p> Created new threaded list for mailboxes with query %@";
LABEL_32:
      _os_log_impl(&dword_214A5E000, v35, OS_LOG_TYPE_DEFAULT, v39, buf, 0x20u);
    }
  }

  else
  {
    v17 = [v33 simpleMessageListForMailboxes:mailboxes withRepository:messageRepository3 additionalQueryOptions:v25 countOfItemsToPrecache:16 shouldUpdateDisplayDate:1 sortDescriptors:sortDescriptors sectionPredicates:v51 transformPredicate:v31];

    v35 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      v37 = NSStringFromClass(v40);
      query2 = [v17 query];
      *buf = 138412802;
      v55 = v37;
      v56 = 2048;
      selfCopy3 = self;
      v58 = 2112;
      v59 = query2;
      v39 = "<%@: %p> Created new non-threaded list for mailboxes with query %@";
      goto LABEL_32;
    }
  }

  priorityPredicate2 = v48;

  priorityPredicate = v50;
  v8 = v51;
LABEL_34:

  if (priorityPredicate2)
  {
    query3 = [v17 query];
    v52 = *MEMORY[0x277D06C10];
    v53 = MEMORY[0x277CBEC38];
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    [query3 addTargetClassOptions:v42];
  }

  filterViewModel = [(MUIMessageListViewController *)self filterViewModel];
  isFilterEnabled = [filterViewModel isFilterEnabled];

  if (isFilterEnabled)
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

  state = [(MUIMessageListViewController *)self state];
  if (([state containsInbox] & 1) == 0)
  {
    goto LABEL_8;
  }

  showHighlights = [(MUIMessageListViewController *)self showHighlights];
  if (([showHighlights isEnabled] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  if ([(MUIMessageListViewController *)self selectedBucket]!= 1)
  {
    selectedBucket = [(MUIMessageListViewController *)self selectedBucket];

    if (!selectedBucket)
    {
      goto LABEL_14;
    }

LABEL_9:
    predicateForUrgentMessages = 0;
    goto LABEL_10;
  }

LABEL_14:
  predicateForUrgentMessages = [MEMORY[0x277D06E08] predicateForUrgentMessages];
LABEL_10:

  return predicateForUrgentMessages;
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

- (void)_selectBucket:(int64_t)bucket
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.selectBucket(_:)(bucket);
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
      dataSource = [(MUIMessageListViewController *)self dataSource];
      v5 = [dataSource messageListSectionIsVisible:@"MessageListSectionPriority"];

      if (v5)
      {

        [(MUIMessageListViewController *)self reloadDataSource];
      }
    }
  }

  else if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    highlightedMessagesController = [(MUIMessageListViewController *)self highlightedMessagesController];
    if (v3)
    {
      mailboxes = [(MUIMessageListViewController *)self mailboxes];
      [highlightedMessagesController setMailboxes:mailboxes];

      currentFilterPredicate = [(MUIMessageListViewController *)self currentFilterPredicate];
      [highlightedMessagesController setFilterPredicate:currentFilterPredicate];

      [highlightedMessagesController reloadApplyingEmptyUpdate:0];
    }

    else
    {
      [highlightedMessagesController setMailboxes:MEMORY[0x277CBEBF8]];
      [highlightedMessagesController setFilterPredicate:0];
    }
  }
}

- (BOOL)isBucketBarHidden
{
  bucketBarConfigurationController = [(MUIMessageListViewController *)self bucketBarConfigurationController];

  if (!bucketBarConfigurationController)
  {
    return 1;
  }

  bucketBarConfigurationController2 = [(MUIMessageListViewController *)self bucketBarConfigurationController];
  mailboxes = [(MUIMessageListViewController *)self mailboxes];
  v6 = [bucketBarConfigurationController2 isBucketBarHiddenForMailboxes:mailboxes];

  return v6;
}

- (BOOL)focusAllowed
{
  currentFocus = [(MUIMessageListViewController *)self currentFocus];
  if (currentFocus)
  {
    state = [(MUIMessageListViewController *)self state];
    containsSmartMailbox = [state containsSmartMailbox];
  }

  else
  {
    containsSmartMailbox = 0;
  }

  senderSpecificMessageListItem = [(MUIMessageListViewController *)self senderSpecificMessageListItem];

  return (senderSpecificMessageListItem == 0) & containsSmartMailbox;
}

- (BOOL)shouldDisplayGroupedSenders
{
  if ([(MUIMessageListViewController *)self isBlackPearlEnabled])
  {
    bucketBarConfigurationController = [(MUIMessageListViewController *)self bucketBarConfigurationController];
    mailboxes = [(MUIMessageListViewController *)self mailboxes];
    if ([bucketBarConfigurationController isBucketBarHiddenForMailboxes:mailboxes] & 1) != 0 || !MUIBucketIsBusinessBucket(-[MUIMessageListViewController selectedBucket](self, "selectedBucket")) || (objc_msgSend(MEMORY[0x277D06DA0], "preferenceEnabled:", 38))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      categoryGroupingPreferenceController = [(MUIMessageListViewController *)self categoryGroupingPreferenceController];
      v5 = [categoryGroupingPreferenceController shouldDisableGroupingForBucket:{-[MUIMessageListViewController selectedBucket](self, "selectedBucket")}] ^ 1;
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
    createMailboxFilterController = [(MUIMessageListViewController *)self createMailboxFilterController];
    v6 = self->_filterController;
    self->_filterController = createMailboxFilterController;

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
  filterController = [(MUIMessageListViewController *)self filterController];
  viewModel = [filterController viewModel];

  return viewModel;
}

- (BOOL)_shouldDisplayOnboardingTip
{
  v17 = *MEMORY[0x277D85DE8];
  if (!EMBlackPearlIsFeatureEnabled() || -[MUIMessageListViewController isBucketBarHidden](self, "isBucketBarHidden") || ([*MEMORY[0x277D76620] launchedToTest] & 1) != 0)
  {
    return 0;
  }

  selectedBucket = [(MUIMessageListViewController *)self selectedBucket];
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  v8 = MUIOnboardingTipKeyForBucket(selectedBucket);
  if (v8 && ![em_userDefaults integerForKey:v8])
  {
    v4 = 1;
  }

  else
  {
    v9 = [em_userDefaults integerForKey:*MEMORY[0x277D06C68]];
    v4 = 0;
    if (selectedBucket == 1 && !v9)
    {
      v10 = [em_userDefaults integerForKey:*MEMORY[0x277D06D18]];
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
  selectedBucket = [(MUIMessageListViewController *)self selectedBucket];

  return MUIBucketIsBusinessBucket(selectedBucket);
}

- (void)_bucketBarUserInteractionEnabled:(BOOL)enabled
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MUIMessageListViewController.bucketBarUserInteractionEnabled(_:)(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (id)_configuredBucketsViewControllerWithMailboxes:(id)mailboxes
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v7 = sub_214CCF7E4();
  MUIMessageListViewController.configuredBucketsViewController(withMailboxes:)(v4, v7);
  v10 = v5;

  MEMORY[0x277D82BD8](mailboxes);
  MEMORY[0x277D82BD8](self);

  return v10;
}

- (BOOL)hasUpdatedAllVisibleSections
{
  dataSource = [(MUIMessageListViewController *)self dataSource];
  visibleMessageListSections = [dataSource visibleMessageListSections];
  v5 = [visibleMessageListSections count];
  configuredSections = [(MUIMessageListViewController *)self configuredSections];
  LOBYTE(v5) = v5 == [configuredSections count];

  return v5;
}

- (MUIMessageListViewController)initWithDaemonInterface:(id)interface focusController:(id)controller mailboxCategoryCloudStorage:(id)storage avatarGenerator:(id)generator bucketBarConfigurationController:(id)configurationController mailboxes:(id)mailboxes contactStore:(id)store diagnosticsHelper:(id)self0
{
  interfaceCopy = interface;
  controllerCopy = controller;
  storageCopy = storage;
  generatorCopy = generator;
  configurationControllerCopy = configurationController;
  mailboxesCopy = mailboxes;
  storeCopy = store;
  helperCopy = helper;
  v92.receiver = self;
  v92.super_class = MUIMessageListViewController;
  v19 = [(MUIMessageListViewController *)&v92 initWithNibName:0 bundle:0];
  if (v19)
  {
    v20 = [mailboxesCopy copy];
    mailboxes = v19->_mailboxes;
    v19->_mailboxes = v20;

    objc_storeStrong(&v19->_contactStore, store);
    v22 = objc_alloc_init(MessageListViewControllerState);
    state = v19->_state;
    v19->_state = v22;

    v24 = [[MessageSelectionStrategy alloc] initWithDataSource:v19];
    messageSelectionStrategy = v19->_messageSelectionStrategy;
    v19->_messageSelectionStrategy = v24;

    [(MUIMessageListViewController *)v19 updateState:v19->_state withMailboxes:v19->_mailboxes];
    objc_storeStrong(&v19->_daemonInterface, interface);
    messageRepository = [interfaceCopy messageRepository];
    messageRepository = v19->_messageRepository;
    v19->_messageRepository = messageRepository;

    mailboxRepository = [interfaceCopy mailboxRepository];
    mailboxRepository = v19->_mailboxRepository;
    v19->_mailboxRepository = mailboxRepository;

    accountRepository = [interfaceCopy accountRepository];
    accountRepository = v19->_accountRepository;
    v19->_accountRepository = accountRepository;

    objc_storeStrong(&v19->_diagnosticsHelper, helper);
    v32 = [(EMDiagnosticsHelper *)v19->_diagnosticsHelper registerDiagnosticFileProvider:v19];
    diagnosticsHelperToken = v19->_diagnosticsHelperToken;
    v19->_diagnosticsHelperToken = v32;

    v34 = [MessageListFetchHelper alloc];
    fetchController = [interfaceCopy fetchController];
    v36 = [(MessageListFetchHelper *)v34 initWithFetchController:fetchController mailboxes:0];
    messageListFetchHelper = v19->_messageListFetchHelper;
    v19->_messageListFetchHelper = v36;

    v38 = objc_alloc_init(MessageListCellLayoutValuesHelper);
    layoutValuesHelper = v19->_layoutValuesHelper;
    v19->_layoutValuesHelper = v38;

    promise = [MEMORY[0x277D071A8] promise];
    initialLoadCompletedPromise = v19->_initialLoadCompletedPromise;
    v19->_initialLoadCompletedPromise = promise;

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

    objc_storeStrong(&v19->_avatarGenerator, generator);
    v19->_isBlackPearlEnabled = EMBlackPearlIsFeatureEnabled();
    objc_storeStrong(&v19->_bucketBarConfigurationController, configurationController);
    objc_storeStrong(&v19->_mailboxCategoryCloudStorage, storage);
    v50 = [[MUICategoryGroupingPreferenceController alloc] initWithDelegate:v19];
    categoryGroupingPreferenceController = v19->_categoryGroupingPreferenceController;
    v19->_categoryGroupingPreferenceController = v50;

    objc_storeWeak(&v19->_iCloudMailCleanupService, 0);
    em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
    v53 = *MEMORY[0x277D06C70];
    -[MUIMessageListViewController setHideFollowUp:](v19, "setHideFollowUp:", [em_userDefaults BOOLForKey:*MEMORY[0x277D06C70]]);
    objc_initWeak(&location, v19);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke;
    v88[3] = &unk_278188C80;
    objc_copyWeak(&v90, &location);
    v54 = em_userDefaults;
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

    [(MUIMessageListViewController *)v19 _resetMailboxRepositoryForMailboxes:mailboxesCopy];
    objc_storeStrong(&v19->_focusController, controller);
    v60 = [controllerCopy addObserver:v19 currentFocus:&v19->_currentFocus];
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

        [(MUIHighlightedMessagesController *)v19->_highlightedMessagesController setMailboxes:mailboxesCopy];
      }

      em_userDefaults2 = [MEMORY[0x277CBEBD0] em_userDefaults];
      v65 = objc_alloc(MEMORY[0x277D06E58]);
      v66 = *MEMORY[0x277D06CE0];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke_3;
      v83[3] = &unk_278188BD8;
      objc_copyWeak(&v84, &location);
      v67 = [v65 initWithUserDefaults:em_userDefaults2 keyPath:v66 keyRepresentsDisabled:1 handler:v83];
      showHighlights = v19->_showHighlights;
      v19->_showHighlights = v67;

      v69 = objc_alloc(MEMORY[0x277D06E58]);
      v70 = *MEMORY[0x277D06C80];
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __190__MUIMessageListViewController_initWithDaemonInterface_focusController_mailboxCategoryCloudStorage_avatarGenerator_bucketBarConfigurationController_mailboxes_contactStore_diagnosticsHelper___block_invoke_4;
      v81[3] = &unk_278188BD8;
      objc_copyWeak(&v82, &location);
      v71 = [v69 initWithUserDefaults:em_userDefaults2 keyPath:v70 keyRepresentsDisabled:0 handler:v81];
      hasCompletedAppleIntelligenceOnboarding = v19->_hasCompletedAppleIntelligenceOnboarding;
      v19->_hasCompletedAppleIntelligenceOnboarding = v71;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v19 selector:sel__generativeModelsAvailabilityDidChange_ name:*MEMORY[0x277D06BC8] object:0];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  diagnosticsHelperToken = [(MUIMessageListViewController *)self diagnosticsHelperToken];
  [diagnosticsHelperToken cancel];

  v5.receiver = self;
  v5.super_class = MUIMessageListViewController;
  [(MUIMessageListViewController *)&v5 dealloc];
}

- (void)setMessageRepository:(id)repository
{
  repositoryCopy = repository;
  if (self->_messageRepository != repositoryCopy)
  {
    v6 = repositoryCopy;
    objc_storeStrong(&self->_messageRepository, repository);
    [(MUIMessageListViewController *)self reloadDataSource];
    repositoryCopy = v6;
  }
}

- (void)setPrimitiveMailboxes:(id)mailboxes
{
  if (self->_mailboxes != mailboxes)
  {
    v4 = [mailboxes copy];
    mailboxes = self->_mailboxes;
    self->_mailboxes = v4;

    state = [(MUIMessageListViewController *)self state];
    [state setDidAlertOnBlankCell:0];
    [state setDidRecordTailspin:0];
    [(MUIMessageListViewController *)self _resetMailboxRepositoryForMailboxes:self->_mailboxes];
    [(MUIMessageListViewController *)self updateState:state withMailboxes:self->_mailboxes];
    [(MUIMessageListViewController *)self refreshHighlightedMessagesController];
  }
}

- (void)setSelectedBucket:(int64_t)bucket
{
  if (self->_selectedBucket != bucket)
  {
    self->_selectedBucket = bucket;
    [(MUIMessageListViewController *)self _updateViewPrimaryWithNoOnboardingIfNeeded];
    v6 = [MEMORY[0x277CCAB88] notificationWithName:@"SelectedBucketDidChangeNotification" object:self userInfo:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:v6];
  }
}

- (BOOL)_shouldDisplayHelpMailLearn
{
  _shouldDisplayOnboardingTip = [(MUIMessageListViewController *)self _shouldDisplayOnboardingTip];
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  v5 = *MEMORY[0x277D06CE8];
  v6 = [em_userDefaults objectForKey:*MEMORY[0x277D06CE8]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    [em_userDefaults removeObjectForKey:v5];
    v6 = 0;
  }

  if ((([v6 ef_isLaterThanNow] | _shouldDisplayOnboardingTip) & 1) != 0 || !EMBlackPearlIsFeatureEnabled())
  {
    v8 = 0;
  }

  else
  {
    mailboxes = [(MUIMessageListViewController *)self mailboxes];
    v8 = [mailboxes ef_any:&__block_literal_global_29_0];
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

  iCloudMailCleanupService = [(MUIMessageListViewController *)self iCloudMailCleanupService];

  if (!iCloudMailCleanupService)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  mailboxes = [(MUIMessageListViewController *)self mailboxes];
  v5 = [mailboxes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(mailboxes);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        account = [v9 account];
        if (![account supportsiCloudCleanup])
        {

LABEL_19:
          v12 = 0;
          goto LABEL_20;
        }

        type = [v9 type];

        if (type != 7)
        {
          goto LABEL_19;
        }
      }

      v6 = [mailboxes countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  iCloudMailCleanupService = [(MUIMessageListViewController *)self iCloudMailCleanupService];
  isConsentAccepted = [iCloudMailCleanupService isConsentAccepted];

  if ((isConsentAccepted & 1) == 0)
  {
    v9 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [MUIMessageListViewController shouldIncludeMailCleanupFilter];
    }

    return 0;
  }

  mailboxes = [(MUIMessageListViewController *)self mailboxes];
  firstObject = [mailboxes firstObject];

  if ([firstObject isTrashMailbox])
  {
    account = [firstObject account];
    supportsiCloudCleanup = [account supportsiCloudCleanup];
  }

  else
  {
    supportsiCloudCleanup = 0;
  }

  return supportsiCloudCleanup;
}

- (void)_resetMailboxRepositoryForMailboxes:(id)mailboxes
{
  v17 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [mailboxesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(mailboxesCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        repository = [v9 repository];

        if (!repository)
        {
          mailboxRepository = [(MUIMessageListViewController *)self mailboxRepository];
          [v9 setRepository:mailboxRepository];
        }
      }

      v6 = [mailboxesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)updateState:(id)state withMailboxes:(id)mailboxes
{
  v13 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  mailboxesCopy = mailboxes;
  senderSpecificMessageListItem = [(MUIMessageListViewController *)self senderSpecificMessageListItem];
  [stateCopy updateWithMailboxes:mailboxesCopy senderSpecificMessageListItem:senderSpecificMessageListItem];

  [stateCopy setCanShowReadLaterDate:{objc_msgSend(stateCopy, "containsOutbox") ^ 1}];
  v9 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [stateCopy ef_publicDescription];
    v11 = 138543362;
    v12 = ef_publicDescription;
    _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "Updated state to %{public}@", &v11, 0xCu);
  }
}

- (void)setInitialCellConfigurationCompleted:(BOOL)completed
{
  if (self->_initialCellConfigurationCompleted != completed)
  {
    self->_initialCellConfigurationCompleted = completed;
    [(MUIMessageListViewController *)self didFinishLoadViewController];
  }
}

- (void)setSwipeActionVisible:(BOOL)visible
{
  if (self->_swipeActionVisible != visible)
  {
    visibleCopy = visible;
    self->_swipeActionVisible = visible;
    dataSource = [(MUIMessageListViewController *)self dataSource];
    v6 = dataSource;
    if (visibleCopy)
    {
      [dataSource suspendUpdates];
    }

    else
    {
      [dataSource resumeUpdates];
    }
  }
}

- (id)searchPredicateForMailboxes:(id)mailboxes
{
  v26 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentSuggestion = [(MUIMessageListViewController *)self currentSuggestion];
  mui_messageListSearchPredicate = [currentSuggestion mui_messageListSearchPredicate];
  [v5 ef_addOptionalObject:mui_messageListSearchPredicate];
  userQueryString = [(MUIMessageListViewController *)self userQueryString];
  if ([userQueryString length])
  {
    v9 = [MEMORY[0x277D06E10] spotlightSearchPredicateForValue:userQueryString];
    [v5 addObject:v9];
  }

  v10 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [mui_messageListSearchPredicate ef_publicDescription];
    v12 = [MEMORY[0x277D06D48] publicDescriptionForSuggestion:currentSuggestion];
    v13 = [MEMORY[0x277D07198] partiallyRedactedStringForString:userQueryString];
    v20 = 138412802;
    v21 = ef_publicDescription;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Generated remote search predicate:%@ for suggestion:%@ (%@)", &v20, 0x20u);
  }

  if ([mailboxesCopy count])
  {
    _excludedMailboxesPredicate = [MEMORY[0x277D06E08] predicateForMessagesInMailboxes:mailboxesCopy];
    [v5 ef_addOptionalObject:_excludedMailboxesPredicate];
    v15 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      v21 = _excludedMailboxesPredicate;
      v22 = 2112;
      v23 = currentSuggestion;
      v24 = 2112;
      v25 = userQueryString;
      _os_log_impl(&dword_214A5E000, v15, OS_LOG_TYPE_DEFAULT, "Generated localMailboxPredicate:%@ for suggestion:%@ (%@)", &v20, 0x20u);
    }
  }

  else
  {
    _excludedMailboxesPredicate = [(MUIMessageListViewController *)self _excludedMailboxesPredicate];
    if (_excludedMailboxesPredicate)
    {
      [v5 addObject:_excludedMailboxesPredicate];
    }

    v15 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x277D06D48] publicDescriptionForSuggestion:currentSuggestion];
      v17 = [MEMORY[0x277D07198] partiallyRedactedStringForString:userQueryString];
      v20 = 138412802;
      v21 = _excludedMailboxesPredicate;
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
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  v3 = [em_userDefaults BOOLForKey:*MEMORY[0x277D06C90]];

  em_userDefaults2 = [MEMORY[0x277CBEBD0] em_userDefaults];
  v5 = [em_userDefaults2 BOOLForKey:*MEMORY[0x277D06C98]];

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
  currentSuggestion = [(MUIMessageListViewController *)self currentSuggestion];
  v3 = currentSuggestion;
  if (currentSuggestion)
  {
    userQueryString = [currentSuggestion userQueryString];
    ef_stringByTrimmingWhitespaceAndNewlineCharacters = [userQueryString ef_stringByTrimmingWhitespaceAndNewlineCharacters];
  }

  else
  {
    ef_stringByTrimmingWhitespaceAndNewlineCharacters = 0;
  }

  return ef_stringByTrimmingWhitespaceAndNewlineCharacters;
}

- (id)_topHitsPredicate
{
  if (_os_feature_enabled_impl())
  {
    predicateForTopHitsMessages = [MEMORY[0x277D06E08] predicateForTopHitsMessages];
  }

  else
  {
    predicateForTopHitsMessages = 0;
  }

  return predicateForTopHitsMessages;
}

- (void)updateFilterControlWithFilterViewModel:(id)model
{
  modelCopy = model;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController updateFilterControlWithFilterViewModel:]", "MUIMessageListViewController.m", 534, "0");
}

- (id)updatedPredicateForFocusedAccounts:(id)accounts
{
  accountsCopy = accounts;
  if ([(MUIMessageListViewController *)self isFocusFilterEnabled]&& [(MUIMessageListViewController *)self focusAllowed])
  {
    v5 = MEMORY[0x277D06D88];
    currentFocus = [(MUIMessageListViewController *)self currentFocus];
    accountRepository = [(MUIMessageListViewController *)self accountRepository];
    v8 = [v5 updatedPredicateForFocus:currentFocus currentPredicate:accountsCopy usingAccountRepository:accountRepository];
  }

  else
  {
    v8 = accountsCopy;
  }

  return v8;
}

- (void)applyFilterPredicate:(id)predicate
{
  v20 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  [(MUIMessageListViewController *)self setCurrentFilterPredicate:predicateCopy];
  dataSource = [(MUIMessageListViewController *)self dataSource];
  visibleMessageListSections = [dataSource visibleMessageListSections];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = visibleMessageListSections;
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
        dataSource2 = [(MUIMessageListViewController *)self dataSource];
        filterViewModel = [(MUIMessageListViewController *)self filterViewModel];
        [dataSource2 applyFilterPredicate:predicateCopy userFiltered:objc_msgSend(filterViewModel ignoreMessagesPredicate:"isFilterEnabled") section:{0, v12}];

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

- (void)setFiltersEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(MUIMessageListViewController *)self setFilterButtonEnabled:?];
  [(MUIMessageListViewController *)self updateFilters];
  if (enabledCopy)
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

- (void)updateFilterContextForMailboxes:(id)mailboxes focus:(id)focus applyFilters:(BOOL)filters
{
  filtersCopy = filters;
  focusCopy = focus;
  mailboxesCopy = mailboxes;
  v12 = [MUIMailboxFilterContext contextWithMailboxes:mailboxesCopy focus:focusCopy isFilteringAvailable:[(MUIMessageListViewController *)self shouldDisplayGroupedSenders]^ 1];

  filterController = [(MUIMessageListViewController *)self filterController];
  [filterController updateWithFilterContext:v12];

  filterViewModel = [(MUIMessageListViewController *)self filterViewModel];
  -[MUIMessageListViewController setFilterButtonEnabled:](self, "setFilterButtonEnabled:", [filterViewModel isFilterEnabled]);
  [(MUIMessageListViewController *)self updateFilterControlWithFilterViewModel:filterViewModel];
  if (filtersCopy)
  {
    [(MUIMessageListViewController *)self updateFilters];
  }
}

- (void)_reportFilterButtonTapped
{
  globalAsyncScheduler = [MEMORY[0x277D071B8] globalAsyncScheduler];
  [globalAsyncScheduler performBlock:&__block_literal_global_55];
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

- (void)reloadDataSourceApplyEmptySnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  createMessageListForReload = [(MUIMessageListViewController *)self createMessageListForReload];
  [(MUIMessageListViewController *)self reloadDataSourceWithMessageList:createMessageListForReload applyEmptySnapshot:snapshotCopy];
}

- (void)reloadDataSourceWithMessageList:(id)list applyEmptySnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  v58 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (pthread_main_np() != 1)
  {
    [MUIMessageListViewController reloadDataSourceWithMessageList:a2 applyEmptySnapshot:self];
  }

  v8 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    ef_publicDescription = [listCopy ef_publicDescription];
    *buf = 138412802;
    v53 = v10;
    v54 = 2048;
    selfCopy = self;
    v56 = 2112;
    v57 = ef_publicDescription;
    _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> Reloading messageList:%@", buf, 0x20u);
  }

  configuredSections = [(MUIMessageListViewController *)self configuredSections];
  [configuredSections removeAllObjects];

  [(MUIMessageListViewController *)self setIndexPathsForToBeConfiguredCells:0];
  indexPathsForConfiguredCollectionViewCells = [(MUIMessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
  [indexPathsForConfiguredCollectionViewCells removeAllObjects];

  [(MUIMessageListViewController *)self setFirstBatchCellConfigurationCompleted:0];
  [(MUIMessageListViewController *)self setOldestItemsIDsByMailboxObjectID:0];
  mailboxesPendingOldestItemsUpdates = [(MUIMessageListViewController *)self mailboxesPendingOldestItemsUpdates];
  [mailboxesPendingOldestItemsUpdates removeAllObjects];

  v15 = MFMessageListLoadingSignpostLog();
  objectID = [listCopy objectID];
  v17 = os_signpost_id_make_with_pointer(v15, objectID);

  v18 = MFMessageListLoadingSignpostLog();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_214A5E000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "MessageListLoading", "Begin loading message list enableTelemetry=YES ", buf, 2u);
  }

  [(MUIMessageListViewController *)self cancelQueueSuspensionTimeout];
  mailboxes = [(MUIMessageListViewController *)self mailboxes];
  v21 = [mailboxes ef_all:&__block_literal_global_86];
  state = [(MUIMessageListViewController *)self state];
  [state setShouldDisplayUnreadAndVIP:v21];

  [(MUIMessageListViewController *)self setSwipeActionVisible:0];
  if (listCopy)
  {
    initialLoadCompletedPromise = [(MUIMessageListViewController *)self initialLoadCompletedPromise];
    [initialLoadCompletedPromise finishWithResult:MEMORY[0x277CBEC28]];

    promise = [MEMORY[0x277D071A8] promise];
    [(MUIMessageListViewController *)self setInitialLoadCompletedPromise:promise];

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && MUIBucketAllowsPriorityMessageDisplay([(MUIMessageListViewController *)self selectedBucket]))
    {
      v27 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionPriority" messageList:listCopy];
      [array addObject:v27];
    }

    else
    {
      [array2 addObject:@"MessageListSectionPriority"];
    }

    v28 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionRecent" messageList:listCopy];
    [array addObject:v28];

    if ([(MUIMessageListViewController *)self shouldDisplayGroupedSenders])
    {
      v29 = MEMORY[0x277CBEB18];
      v30 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionGroupedSenderUnseen" messageList:listCopy];
      v31 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionGroupedSender" messageList:listCopy];
      v32 = [v29 arrayWithObjects:{v30, v31, 0}];

      v51[0] = @"MessageListSectionRecentUnseen";
      v51[1] = @"MessageListSectionRecent";
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      [array2 addObjectsFromArray:v33];

      array = v32;
    }

    else
    {
      v50[0] = @"MessageListSectionGroupedSenderUnseen";
      v50[1] = @"MessageListSectionGroupedSender";
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
      [array2 addObjectsFromArray:v34];

      if ([(MUIMessageListViewController *)self canShowUnseenSection])
      {
        v35 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionRecentUnseen" messageList:listCopy];
        [array insertObject:v35 atIndex:1];
      }

      else
      {
        [array2 addObject:@"MessageListSectionRecentUnseen"];
      }
    }

    currentDevice = [MEMORY[0x277D07148] currentDevice];
    isInternal = [currentDevice isInternal];

    if (isInternal)
    {
      if ([(MUIMessageListViewController *)self _shouldDisplayHelpMailLearn])
      {
        v38 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionHelpMailLearn"];
        [array insertObject:v38 atIndex:0];
      }

      else
      {
        [array2 insertObject:@"MessageListSectionHelpMailLearn" atIndex:0];
      }
    }

    if ([(MUIMessageListViewController *)self _shouldDisplayOnboardingTip])
    {
      v39 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionOnboardingTip"];
      [array insertObject:v39 atIndex:0];
    }

    else
    {
      [array2 insertObject:@"MessageListSectionOnboardingTip" atIndex:0];
    }

    if (EMBlackPearlIsFeatureEnabled())
    {
      if ([(MUIMessageListViewController *)self isBucketBarHidden])
      {
        [array2 addObject:@"MessageListSectionBucketBar"];
      }

      else
      {
        dataSource = [(MUIMessageListViewController *)self dataSource];
        v41 = [dataSource messageListSectionIsVisible:@"MessageListSectionBucketBar"];

        if (v41)
        {
          v42 = 1;
LABEL_33:
          if (+[MUIiCloudMailCleanupService isFeatureAvailable])
          {
            if ([(MUIMessageListViewController *)self _shouldAttachMailCleanupSection])
            {
              v44 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionMailCleanupTip"];
              [array insertObject:v44 atIndex:0];
            }

            else
            {
              [array2 insertObject:@"MessageListSectionMailCleanupTip" atIndex:0];
            }
          }

          v45 = [[MessageListDataSourceUpdateRequest alloc] initWithSectionUpdates:array sectionsToRemove:array2 startsWithEmptySnapshot:snapshotCopy];
          dataSource2 = [(MUIMessageListViewController *)self dataSource];
          [dataSource2 applyMessageListDataSourceUpdate:v45];

          if (v42)
          {
            bucketsViewController = [(MUIMessageListViewController *)self bucketsViewController];
            mailboxes2 = [(MUIMessageListViewController *)self mailboxes];
            [bucketsViewController updateWithMailboxes:mailboxes2];
          }

          messageListFetchHelper = [(MUIMessageListViewController *)self messageListFetchHelper];
          [messageListFetchHelper fetchMailboxesIsUserInitiated:0];

          goto LABEL_40;
        }

        v43 = [[MessageListSectionDataSourceUpdateRequest alloc] initWithSection:@"MessageListSectionBucketBar" messageList:0 shouldClearSnapshot:0];
        [array insertObject:v43 atIndex:0];
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

- (void)reloadDataSourceWithMessageList:(id)list sections:(id)sections applyEmptySnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  v35 = *MEMORY[0x277D85DE8];
  listCopy = list;
  sectionsCopy = sections;
  v10 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138412802;
    v30 = v12;
    v31 = 2048;
    selfCopy = self;
    v33 = 2114;
    v34 = sectionsCopy;
    _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Reload message list in sections: %{public}@", buf, 0x20u);
  }

  [(MUIMessageListViewController *)self cancelQueueSuspensionTimeout];
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = sectionsCopy;
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
        v21 = [(MessageListSectionDataSourceUpdateRequest *)v20 initWithSection:v19 messageList:listCopy, v24];
        [array addObject:v21];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = [[MessageListDataSourceUpdateRequest alloc] initWithSectionUpdates:array sectionsToRemove:0 startsWithEmptySnapshot:snapshotCopy];
  dataSource = [(MUIMessageListViewController *)self dataSource];
  [dataSource applyMessageListDataSourceUpdate:v22];
}

- (void)reloadDataSourceWithSearchPredicate:(id)predicate
{
  v41 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v5 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    ef_publicDescription = [predicateCopy ef_publicDescription];
    *buf = 138412802;
    v36 = v7;
    v37 = 2048;
    selfCopy2 = self;
    v39 = 2114;
    v40 = ef_publicDescription;
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
      ef_publicDescription2 = [predicateCopy ef_publicDescription];
      *buf = 138412802;
      v36 = v11;
      v37 = 2048;
      selfCopy2 = self;
      v39 = 2114;
      v40 = ef_publicDescription2;
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
    _topHitsPredicate = [(MUIMessageListViewController *)self _topHitsPredicate];
    [v14 setOrAddObject:_topHitsPredicate forKey:@"MessageListSectionTopHits"];
  }

  _indexedMessagesPredicate = [(MUIMessageListViewController *)self _indexedMessagesPredicate];
  [v14 setOrAddObject:_indexedMessagesPredicate forKey:@"MessageListSectionIndexedSearch"];

  v18 = predicateCopy;
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
  currentSuggestion = [(MUIMessageListViewController *)self currentSuggestion];
  v25 = v21;
  v26 = v18;
  v27 = [v25 initWithTargetClass:v33 predicate:v18 sortDescriptors:v23 suggestion:currentSuggestion limit:0 queryOptions:v13 targetClassOptions:v20 label:@"message list search"];

  [(MUIMessageListViewController *)self setOldestItemsIDsByMailboxObjectID:0];
  mailboxesPendingOldestItemsUpdates = [(MUIMessageListViewController *)self mailboxesPendingOldestItemsUpdates];
  [mailboxesPendingOldestItemsUpdates removeAllObjects];

  v29 = objc_alloc(MEMORY[0x277D06E00]);
  messageRepository = [(MUIMessageListViewController *)self messageRepository];
  v31 = [v29 initWithQuery:v27 repository:messageRepository];

  state = [(MUIMessageListViewController *)self state];
  [state setShouldDisplayUnreadAndVIP:1];

  [(MUIMessageListViewController *)self reloadDataSourceWithMessageList:v31 sections:v15 applyEmptySnapshot:_os_feature_enabled_impl() ^ 1];
}

- (void)configureDelegatesForDataSource:(id)source
{
  sourceCopy = source;
  [sourceCopy setProvider:self];
  [sourceCopy setDelegate:self];
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  if (self->_collectionView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_collectionView, view);
    dataSource = self->_dataSource;
    self->_dataSource = 0;

    viewCopy = v7;
  }
}

- (BOOL)messageListDataSource:(id)source section:(id)section shouldSuspendUpdatesAfterChange:(id)change
{
  sourceCopy = source;
  sectionCopy = section;
  changeCopy = change;
  section = [sectionCopy section];
  if (![sourceCopy isMessagesSection:section])
  {

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  isInitialCellConfigurationCompleted = [(MUIMessageListViewController *)self isInitialCellConfigurationCompleted];

  if (isInitialCellConfigurationCompleted || ![changeCopy isFirstChange] || objc_msgSend(changeCopy, "numberOfChanges") < 1)
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
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__MUIMessageListViewController_messageListDataSource_section_shouldSuspendUpdatesAfterChange___block_invoke;
  v19[3] = &unk_278188CD0;
  objc_copyWeak(&v20, &location);
  v15 = [mainThreadScheduler afterDelay:v19 performBlock:2.0];
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

- (void)messageListDataSource:(id)source willUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated cleanSnapshot:(BOOL)snapshot
{
  sectionCopy = section;
  if ([change hasChanges] && !animated)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = sectionCopy;
    mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
    [mainThreadScheduler performBlock:&v12];
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

- (void)messageListDataSourcePrepareUpdate:(id)update section:(id)section cleanSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  v7 = [(MUIMessageListViewController *)self messageListSelectionModel:update];
  [v7 setPerformingDataSourceUpdates:1];

  if (snapshotCopy)
  {
    messageListPositionHelper = [(MUIMessageListViewController *)self messageListPositionHelper];
    [messageListPositionHelper reset];
  }
}

- (void)messageListDataSourceUpdateFailed:(id)failed section:(id)section
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__MUIMessageListViewController_messageListDataSourceUpdateFailed_section___block_invoke;
  v5[3] = &unk_278188BB0;
  v5[4] = self;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performBlock:v5];
}

uint64_t __74__MUIMessageListViewController_messageListDataSourceUpdateFailed_section___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messageListSelectionModel];
  [v2 setPerformingDataSourceUpdates:0];

  v3 = *(a1 + 32);

  return [v3 reloadDataSource];
}

- (id)messageListDataSource:(id)source sectionDataSourceForSection:(id)section messageList:(id)list
{
  sectionCopy = section;
  v8 = [(MUIMessageListViewController *)self sectionDataSourceConfigurationWithSection:sectionCopy messageList:list];
  if ([sectionCopy isEqualToString:@"MessageListSectionPriority"])
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

  if (([sectionCopy isEqualToString:@"MessageListSectionRecent"] & 1) != 0 || objc_msgSend(sectionCopy, "isEqualToString:", @"MessageListSectionRecentUnseen"))
  {
    goto LABEL_7;
  }

  if (([sectionCopy isEqualToString:@"MessageListSectionGroupedSenderUnseen"] & 1) != 0 || objc_msgSend(sectionCopy, "isEqualToString:", @"MessageListSectionGroupedSender"))
  {
    v9 = MUIMessageListGroupedSenderSectionDataSource;
    goto LABEL_8;
  }

  if ([sectionCopy isEqualToString:@"MessageListSectionHelpMailLearn"])
  {
    v9 = MUIMessageListHelpMailLearnSectionDataSource;
    goto LABEL_8;
  }

  if ([sectionCopy isEqualToString:@"MessageListSectionOnboardingTip"])
  {
    v12 = [MUIMessageListOnboardingTipDataSource alloc];
    selectedBucket = [(MUIMessageListViewController *)self selectedBucket];
    v14 = [MUICategoryMailboxCountHelper alloc];
    mailboxes = [(MUIMessageListViewController *)self mailboxes];
    messageRepository = [(MUIMessageListViewController *)self messageRepository];
    v17 = [(MUICategoryMailboxCountHelper *)v14 initWithMailboxes:mailboxes messageRepository:messageRepository];
    v10 = [(MUIMessageListOnboardingTipDataSource *)v12 initWithConfiguration:v8 bucket:selectedBucket countHelper:v17];
  }

  else if ([sectionCopy isEqualToString:@"MessageListSectionBucketBar"])
  {
    mailboxes2 = [(MUIMessageListViewController *)self mailboxes];
    v19 = [(MUIMessageListViewController *)self _configuredBucketsViewControllerWithMailboxes:mailboxes2];

    parentViewController = [v19 parentViewController];

    if (!parentViewController)
    {
      [(MUIMessageListViewController *)self addChildViewController:v19];
    }

    v10 = [[MUIMessageListBucketBarSectionDataSource alloc] initWithConfiguration:v8 bucketsViewController:v19];
  }

  else if ([sectionCopy isEqualToString:@"MessageListSectionMailCleanupTip"])
  {
    v21 = [MUIMessageListMailCleanupTipDataSource alloc];
    selectedBucket2 = [(MUIMessageListViewController *)self selectedBucket];
    iCloudMailCleanupService = [(MUIMessageListViewController *)self iCloudMailCleanupService];
    v10 = [(MUIMessageListMailCleanupTipDataSource *)v21 initWithConfiguration:v8 bucket:selectedBucket2 iCloudMailCleanupService:iCloudMailCleanupService];
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (BOOL)messageListDataSource:(id)source shouldAnimateNextUpdateInSectionDataSource:(id)dataSource change:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if ([(MUIMessageListViewController *)self didNotifyExtendedLaunchTracker])
  {
    messageToDisplayOnReload = [(MUIMessageListViewController *)self messageToDisplayOnReload];
    v8 = messageToDisplayOnReload == 0;
  }

  else
  {
    v9 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      ef_publicDescription = [changeCopy ef_publicDescription];
      v14 = 138412802;
      v15 = v11;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = ef_publicDescription;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Launch] Skip animation for message list change: %{public}@", &v14, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)sectionDataSourceConfigurationWithSection:(id)section messageList:(id)list
{
  sectionCopy = section;
  listCopy = list;
  if ([(MUIMessageListViewController *)self _hasInitialLoadPromiseForSection:sectionCopy])
  {
    initialLoadCompletedPromise = [(MUIMessageListViewController *)self initialLoadCompletedPromise];
  }

  else
  {
    initialLoadCompletedPromise = 0;
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && ([sectionCopy isEqualToString:@"MessageListSectionPriority"] & 1) != 0)
  {
    v8 = 1;
  }

  else if (MUIBucketAllowsNewAndOldSections([(MUIMessageListViewController *)self selectedBucket]))
  {
    dataSource = [(MUIMessageListViewController *)self dataSource];
    v10 = [dataSource isMessagesSection:sectionCopy];

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
  collectionView = [(MUIMessageListViewController *)self collectionView];
  layoutValuesHelper = [(MUIMessageListViewController *)self layoutValuesHelper];
  state = [(MUIMessageListViewController *)self state];
  avatarGenerator = [(MUIMessageListViewController *)self avatarGenerator];
  contactStore = [(MUIMessageListViewController *)self contactStore];
  v17 = [(MessageListSectionDataSourceConfiguration *)v11 initWithSection:sectionCopy collectionView:collectionView messageList:listCopy layoutValuesHelper:layoutValuesHelper state:state delegate:self selectionModelProvider:self initialLoadCompletedPromise:initialLoadCompletedPromise searchProgressView:0 headerType:v8 avatarGenerator:avatarGenerator contactStore:contactStore];

  return v17;
}

- (id)initialLoadCompletedPromiseForMessageListSectionDataSource:(id)source
{
  section = [source section];
  v5 = [section isEqualToString:@"MessageListSectionRecent"];

  if (v5)
  {
    initialLoadCompletedPromise = [(MUIMessageListViewController *)self initialLoadCompletedPromise];
    [initialLoadCompletedPromise finishWithResult:MEMORY[0x277CBEC28]];

    promise = [MEMORY[0x277D071A8] promise];
    [(MUIMessageListViewController *)self setInitialLoadCompletedPromise:promise];
  }

  else
  {
    promise = 0;
  }

  return promise;
}

- (void)messageListSectionDataSource:(id)source updatedOldestItemsForMailboxes:(id)mailboxes
{
  v24 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  mailboxesPendingOldestItemsUpdates = [(MUIMessageListViewController *)self mailboxesPendingOldestItemsUpdates];
  v8 = [mailboxesPendingOldestItemsUpdates countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(mailboxesPendingOldestItemsUpdates);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        oldestItemsIDsByMailboxObjectID = [(MUIMessageListViewController *)self oldestItemsIDsByMailboxObjectID];
        v14 = [oldestItemsIDsByMailboxObjectID objectForKeyedSubscript:v12];

        v15 = [mailboxesCopy objectForKeyedSubscript:v12];
        v16 = v15;
        if (v15 != v14 && ([v15 isEqual:v14] & 1) == 0)
        {
          [array addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [mailboxesPendingOldestItemsUpdates countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  mailboxesPendingOldestItemsUpdates2 = [(MUIMessageListViewController *)self mailboxesPendingOldestItemsUpdates];
  [mailboxesPendingOldestItemsUpdates2 ef_removeObjectsInArray:array];

  v18 = [mailboxesCopy copy];
  [(MUIMessageListViewController *)self setOldestItemsIDsByMailboxObjectID:v18];
}

- (void)messageListSectionDataSource:(id)source deletedMessagesWithItemIdentifiers:(id)identifiers
{
  v14[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  identifiersCopy = identifiers;
  referenceMessageListItem = [(MUIMessageListViewController *)self referenceMessageListItem];
  itemID = [referenceMessageListItem itemID];

  if (itemID)
  {
    v14[0] = itemID;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    if (![identifiersCopy containsObject:itemID])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = identifiersCopy;
  }

  messageList = [sourceCopy messageList];
  v12 = [messageList recentlyCollapsedThreadContainsItemID:itemID];

  if (v12)
  {
    messageList2 = [sourceCopy messageList];
    [messageList2 clearRecentlyCollapsedThread];
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

- (void)messageListSectionDataSource:(id)source didAddMessagesWithItemIdentifiers:(id)identifiers
{
  v30 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  identifiersCopy = identifiers;
  initialScrollItemID = [(MUIMessageListViewController *)self initialScrollItemID];
  if ([identifiersCopy containsObject:initialScrollItemID])
  {
    [(MUIMessageListViewController *)self setInitialScrollItemID:0];
    dataSource = [(MUIMessageListViewController *)self dataSource];
    v11 = [dataSource indexPathForItemIdentifier:initialScrollItemID];

    collectionView = [(MUIMessageListViewController *)self collectionView];
    [collectionView mui_scrollToItemAtIndexPath:v11 atScrollPosition:1 animated:0];
  }

  state = [(MUIMessageListViewController *)self state];
  if (([state containsDraftsOrOutbox] & 1) == 0)
  {
    goto LABEL_9;
  }

  referenceMessageListItem = [(MUIMessageListViewController *)self referenceMessageListItem];

  if (referenceMessageListItem && [identifiersCopy count] == 1)
  {
    state = [identifiersCopy firstObject];
    v15 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      v26 = 138543618;
      v27 = v16;
      v28 = 2114;
      v29 = state;
      _os_log_impl(&dword_214A5E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Set reference message list item for first item from drafts or outbox: %{public}@", &v26, 0x16u);
    }

    dataSource2 = [(MUIMessageListViewController *)self dataSource];
    v18 = [dataSource2 messageListItemForItemID:state];
    result = [v18 result];

    dataSource3 = [(MUIMessageListViewController *)self dataSource];
    itemID = [result itemID];
    v22 = [dataSource3 messageListForMessageListItemWithIdentifier:itemID];

    [(MUIMessageListViewController *)self setReferenceMessageListItem:result referenceMessageList:v22 showAsConversation:0 animated:1];
LABEL_9:
  }

  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      section = [sourceCopy section];
      v24 = [section isEqualToString:@"MessageListSectionPriority"];

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

- (void)messageListSectionDataSource:(id)source handleRowSelectionAfterMovingMessagesWithItemIdentifiers:(id)identifiers
{
  sourceCopy = source;
  identifiersCopy = identifiers;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController messageListSectionDataSource:handleRowSelectionAfterMovingMessagesWithItemIdentifiers:]", "MUIMessageListViewController.m", 1293, "0");
}

- (void)showBlankCellAlertForMessageListSectionDataSource:(id)source itemID:(id)d indexPath:(id)path reason:(id)reason
{
  sourceCopy = source;
  dCopy = d;
  pathCopy = path;
  reasonCopy = reason;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController showBlankCellAlertForMessageListSectionDataSource:itemID:indexPath:reason:]", "MUIMessageListViewController.m", 1298, "0");
}

- (void)messageListSectionDataSource:(id)source didConfigureCell:(id)cell atIndexPath:(id)path item:(id)item itemWasCached:(BOOL)cached duration:(double)duration
{
  sourceCopy = source;
  cellCopy = cell;
  pathCopy = path;
  itemCopy = item;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController messageListSectionDataSource:didConfigureCell:atIndexPath:item:itemWasCached:duration:]", "MUIMessageListViewController.m", 1303, "0");
}

- (void)messageListSectionDataSource:(id)source didFailToConfigureCellAtIndexPath:(id)path error:(id)error
{
  errorCopy = error;
  cellsController = [(MUIMessageListViewController *)self cellsController];
  [cellsController reportCellDidLoad:0 error:errorCopy];
}

- (Class)sectionListCellClassForMessageListSectionDataSource:(id)source
{
  sourceCopy = source;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController sectionListCellClassForMessageListSectionDataSource:]", "MUIMessageListViewController.m", 1316, "0");
}

- (int64_t)selectedBucketForMUIMessageListUnbundledSectionDataSource:(id)source
{
  sourceCopy = source;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController selectedBucketForMUIMessageListUnbundledSectionDataSource:]", "MUIMessageListViewController.m", 1345, "0");
}

- (id)feedbackListViewModelForHelpMailLearnSectionDataSource:(id)source
{
  sourceCopy = source;
  v5 = [_TtC6MailUI23FeedbackViewModelHelper alloc];
  selectedBucket = [(MUIMessageListViewController *)self selectedBucket];
  mailboxes = [(MUIMessageListViewController *)self mailboxes];
  v8 = [(FeedbackViewModelHelper *)v5 initWithSelectedBucket:selectedBucket selectedMailboxes:mailboxes];

  v9 = [_TtC6MailUI21FeedbackListViewModel alloc];
  daemonInterface = [(MUIMessageListViewController *)self daemonInterface];
  diagnosticsHelper = [(MUIMessageListViewController *)self diagnosticsHelper];
  v12 = [(FeedbackListViewModel *)v9 initWithDaemonInterface:daemonInterface diagnosticsHelper:diagnosticsHelper viewModelHelper:v8];

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

- (void)categoryGroupingPreferenceController:(id)controller shouldDisableGrouping:(BOOL)grouping forBucket:(int64_t)bucket
{
  groupingCopy = grouping;
  if ([(MUIMessageListViewController *)self selectedBucket]== bucket)
  {
    filterViewModel = [(MUIMessageListViewController *)self filterViewModel];
    [filterViewModel setFilterAvailable:groupingCopy];

    [(MUIMessageListViewController *)self reloadDataSource];
  }
}

- (id)messageSelectionStrategy:(id)strategy indexPathOfItemID:(id)d
{
  dCopy = d;
  dataSource = [(MUIMessageListViewController *)self dataSource];
  v7 = [dataSource indexPathForItemIdentifier:dCopy];

  return v7;
}

- (id)messageSelectionStrategy:(id)strategy itemIDForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MUIMessageListViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

  return v7;
}

- (int64_t)numberOfItemsForMessageSelectionStrategy:(id)strategy
{
  dataSource = [(MUIMessageListViewController *)self dataSource];
  numberOfItems = [dataSource numberOfItems];

  return numberOfItems;
}

- (id)indexPathOfSelectedMessageForMessageSelectionStrategy:(id)strategy
{
  _indexPathsForSelectedItems = [(MUIMessageListViewController *)self _indexPathsForSelectedItems];
  firstObject = [_indexPathsForSelectedItems firstObject];

  return firstObject;
}

- (id)messageSelectionStrategy:(id)strategy messageListItemForItemID:(id)d
{
  strategyCopy = strategy;
  dCopy = d;
  if (!dCopy)
  {
    [MUIMessageListViewController messageSelectionStrategy:a2 messageListItemForItemID:self];
  }

  dataSource = [(MUIMessageListViewController *)self dataSource];
  v10 = [dataSource messageListItemForItemID:dCopy];

  v16 = 0;
  v11 = [v10 resultWithTimeout:&v16 error:1.0];
  v12 = v16;
  if (!v11)
  {
    v13 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MUIMessageListViewController messageSelectionStrategy:dCopy messageListItemForItemID:v12];
    }

    v14 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [MUIMessageListViewController messageSelectionStrategy:messageListItemForItemID:];
    }
  }

  return v11;
}

- (BOOL)messageSelectionStrategy:(id)strategy anyExpandedThreadContainsItemID:(id)d
{
  dCopy = d;
  dataSource = [(MUIMessageListViewController *)self dataSource];
  v7 = [dataSource anyExpandedThreadContainsItemID:dCopy];

  return v7;
}

- (BOOL)messageSelectionStrategy:(id)strategy isExpandedThreadWithItemID:(id)d
{
  dCopy = d;
  dataSource = [(MUIMessageListViewController *)self dataSource];
  v7 = [dataSource isExpandedThread:dCopy];

  return v7;
}

- (id)_indexPathsForSelectedItems
{
  collectionView = [(MUIMessageListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  return indexPathsForSelectedItems;
}

- (void)setReferenceMessageListItem:(id)item referenceMessageList:(id)list showAsConversation:(BOOL)conversation animated:(BOOL)animated
{
  itemCopy = item;
  listCopy = list;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController setReferenceMessageListItem:referenceMessageList:showAsConversation:animated:]", "MUIMessageListViewController.m", 1451, "0");
}

- (BOOL)selectRowOfItemID:(id)d scrollToVisible:(BOOL)visible scrollPosition:(int64_t)position animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v12 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    v24 = 138413826;
    v25 = v14;
    v26 = 2048;
    selfCopy = self;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = dCopy;
    v32 = 1024;
    v33 = visibleCopy;
    v34 = 2048;
    positionCopy = position;
    v36 = 1024;
    v37 = animatedCopy;
    _os_log_impl(&dword_214A5E000, v12, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ - itemID:%@, scrollToVisible:%{BOOL}d, scrollPosition:%lu, animated:%{BOOL}d", &v24, 0x40u);
  }

  dataSource = [(MUIMessageListViewController *)self dataSource];
  v17 = [dataSource indexPathForItemIdentifier:dCopy];

  collectionView = [(MUIMessageListViewController *)self collectionView];
  if (v17)
  {
    [(MUIMessageListViewController *)self setLastSelectedItemID:dCopy];
    if ([(MUIMessageListViewController *)self isInExpandedEnvironment])
    {
      _indexPathsForSelectedItems = [(MUIMessageListViewController *)self _indexPathsForSelectedItems];
      v20 = [_indexPathsForSelectedItems containsObject:v17];

      if ((v20 & 1) == 0)
      {
        [(MUIMessageListViewController *)self deselectSelectedItemsInCollectionView];
        [collectionView mui_selectItemAtIndexPath:v17 animated:animatedCopy & ~visibleCopy scrollPosition:0];
      }
    }

    if (visibleCopy)
    {
      item = [v17 item];
      if (item < [collectionView numberOfItemsInSection:{objc_msgSend(v17, "section")}] && (objc_msgSend(collectionView, "mui_isIndexPathVisible:", v17) & 1) == 0)
      {
        [collectionView mui_scrollToItemAtIndexPath:v17 atScrollPosition:position animated:animatedCopy];
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
    [(MUIMessageListViewController *)self deselectAllItemsInCollectionView:collectionView animated:animatedCopy];
  }

  return v17 != 0;
}

- (void)deselectSelectedItemsInCollectionView
{
  v14 = *MEMORY[0x277D85DE8];
  collectionView = [(MUIMessageListViewController *)self collectionView];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _indexPathsForSelectedItems = [(MUIMessageListViewController *)self _indexPathsForSelectedItems];
  v5 = [_indexPathsForSelectedItems countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_indexPathsForSelectedItems);
        }

        [collectionView deselectItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++) animated:0];
      }

      while (v6 != v8);
      v6 = [_indexPathsForSelectedItems countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)deselectAllItemsInCollectionView:(id)view animated:(BOOL)animated
{
  viewCopy = view;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController deselectAllItemsInCollectionView:animated:]", "MUIMessageListViewController.m", 1501, "0");
}

- (void)selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)ds
{
  dsCopy = ds;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:]", "MUIMessageListViewController.m", 1512, "0");
}

- (id)messageListItemsForDiagnosticsHelper:(id)helper
{
  v12 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  if ([helperCopy source] == 1)
  {
    lastSelectedMessageListItems = [(MUIMessageListViewController *)self lastSelectedMessageListItems];
    [(MUIMessageListViewController *)self setLastSelectedMessageListItems:0];
    v6 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = [lastSelectedMessageListItems count];
      v10 = 2112;
      v11 = helperCopy;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "Providing %lu messages to %@", &v8, 0x16u);
    }
  }

  else
  {
    lastSelectedMessageListItems = 0;
  }

  return lastSelectedMessageListItems;
}

- (void)currentFocusChanged:(id)changed
{
  changedCopy = changed;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__MUIMessageListViewController_currentFocusChanged___block_invoke;
  v9[3] = &unk_278188F78;
  v9[4] = self;
  v10 = changedCopy;
  v5 = v9;
  v6 = MEMORY[0x277D071B8];
  v7 = changedCopy;
  mainThreadScheduler = [v6 mainThreadScheduler];
  [mainThreadScheduler performSyncBlock:v5];
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

- (void)setFocusFilterEnabled:(BOOL)enabled
{
  if (self->_focusFilterEnabled != enabled)
  {
    v9 = v4;
    v10 = v3;
    self->_focusFilterEnabled = enabled;
    if (enabled)
    {
      filterController = [(MUIMessageListViewController *)self filterController];
      [filterController reselectFocusedAccounts];
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

- (void)highlightedMessagesViewDidSelectMessage:(id)message
{
  messageCopy = message;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController highlightedMessagesViewDidSelectMessage:]", "MUIMessageListViewController.m", 1636, "0");
}

- (void)highlightedMessagesViewDidProvideFeedbackForMessage:(id)message feedbackType:(int64_t)type feedbackFeature:(int64_t)feature
{
  messageCopy = message;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController highlightedMessagesViewDidProvideFeedbackForMessage:feedbackType:feedbackFeature:]", "MUIMessageListViewController.m", 1640, "0");
}

- (id)cellLayoutValuesForHighlightedMessages
{
  layoutValuesHelper = [(MUIMessageListViewController *)self layoutValuesHelper];
  v3 = [layoutValuesHelper layoutValuesForStyle:0];

  return v3;
}

- (void)updateSelectedBucket:(int64_t)bucket unseenPredicate:(id)predicate
{
  predicateCopy = predicate;
  unseenPredicate = [(MUIMessageListViewController *)self unseenPredicate];

  if (unseenPredicate == predicateCopy)
  {
    if ([(MUIMessageListViewController *)self selectedBucket]== bucket)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [(MUIMessageListViewController *)self setUnseenPredicate:?];
    if ([(MUIMessageListViewController *)self selectedBucket]== bucket)
    {
      goto LABEL_6;
    }
  }

  [(MUIMessageListViewController *)self setSelectedBucket:bucket];
LABEL_6:
  shouldDisplayGroupedSenders = [(MUIMessageListViewController *)self shouldDisplayGroupedSenders];
  filterViewModel = [(MUIMessageListViewController *)self filterViewModel];
  [filterViewModel setFilterAvailable:!shouldDisplayGroupedSenders];

  [(MUIMessageListViewController *)self reloadDataSourceApplyEmptySnapshot:0];
LABEL_7:
}

- (void)changeCategoryOfDragItem:(id)item toBucket:(int64_t)bucket completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController changeCategoryOfDragItem:toBucket:completion:]", "MUIMessageListViewController.m", 1679, "0");
}

- (BOOL)canMoveDragItem:(id)item toBucket:(int64_t)bucket
{
  itemCopy = item;
  [(MUIMessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUIMessageListViewController canMoveDragItem:toBucket:]", "MUIMessageListViewController.m", 1683, "0");
}

- (id)_updatedPredicateForSelectedBucket:(id)bucket
{
  bucketCopy = bucket;
  v5 = NSPredicateFromBucket([(MUIMessageListViewController *)self selectedBucket]);
  v6 = [MEMORY[0x277CCA920] ef_andCompoundPredicateForOptionalPredicate:bucketCopy second:v5];

  return v6;
}

- (BOOL)_hasHighlightedMessages
{
  if (!_os_feature_enabled_impl() || !EMIsGreymatterAvailable())
  {
    return 0;
  }

  showHighlights = [(MUIMessageListViewController *)self showHighlights];
  if ([showHighlights isEnabled])
  {
    dataSource = [(MUIMessageListViewController *)self dataSource];
    v5 = [dataSource numberOfItemsAtSectionIndex:{-[MUIMessageListViewController _prioritySectionIndex](self, "_prioritySectionIndex")}] > 0;
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

  showHighlights = [(MUIMessageListViewController *)self showHighlights];
  isEnabled = [showHighlights isEnabled];

  if (!isEnabled)
  {
    return 0;
  }

  _prioritySectionIndex = [(MUIMessageListViewController *)self _prioritySectionIndex];
  collectionView = [(MUIMessageListViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__MUIMessageListViewController__hasHighlightedMessagesVisible__block_invoke;
  v11[3] = &__block_descriptor_40_e21_B16__0__NSIndexPath_8l;
  v11[4] = _prioritySectionIndex;
  v8 = [indexPathsForVisibleItems ef_firstObjectPassingTest:v11];
  v9 = v8 != 0;

  return v9;
}

- (void)_shimmerViewIfNeededForPriorityCellWillDisplay:(BOOL)display
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

  _prioritySectionVisibleAndActive = [(MUIMessageListViewController *)self _prioritySectionVisibleAndActive];
  v6 = _prioritySectionVisibleAndActive;
  if (!_prioritySectionVisibleAndActive || display)
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
    _hasHighlightedMessagesVisible = [(MUIMessageListViewController *)self _hasHighlightedMessagesVisible];
    v8 = _hasHighlightedMessagesVisible;
    [(MUIMessageListViewController *)self setHasPendingHighlightsShimmer:!_hasHighlightedMessagesVisible];
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
  dataSource = [(MUIMessageListViewController *)self dataSource];
  v3 = [dataSource sectionIndexForSection:@"MessageListSectionPriority"];

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

  showHighlights = [(MUIMessageListViewController *)self showHighlights];
  isEnabled = [showHighlights isEnabled];

  if (!isEnabled)
  {
    return 0;
  }

  _currentDataForItemIDsInPriority = [(MUIMessageListViewController *)self _currentDataForItemIDsInPriority];
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  v7 = [em_userDefaults valueForKey:*MEMORY[0x277D06CB0]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
  {
    _mailboxBucketBarConfigurationIdentifier = [(MUIMessageListViewController *)self _mailboxBucketBarConfigurationIdentifier];
    v9 = [v7 objectForKeyedSubscript:_mailboxBucketBarConfigurationIdentifier];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
    {
      v10 = [MEMORY[0x277CBEB58] setWithArray:_currentDataForItemIDsInPriority];
      v11 = [MEMORY[0x277CBEB98] setWithArray:v9];
      [v10 minusSet:v11];
      v12 = [v10 count];
    }

    else
    {
      v12 = [_currentDataForItemIDsInPriority count];
    }
  }

  else
  {
    v12 = [_currentDataForItemIDsInPriority count];
  }

  v13 = v12 != 0;

  return v13;
}

- (id)_mailboxBucketBarConfigurationIdentifier
{
  mailboxes = [(MUIMessageListViewController *)self mailboxes];
  firstObject = [mailboxes firstObject];

  bucketBarConfigurationIdentifier = [firstObject bucketBarConfigurationIdentifier];
  if (!bucketBarConfigurationIdentifier)
  {
    v5 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MUIMessageListViewController *)firstObject _mailboxBucketBarConfigurationIdentifier];
    }
  }

  return bucketBarConfigurationIdentifier;
}

- (void)_updatePreviouslyHighlightedMessages
{
  v19 = *MEMORY[0x277D85DE8];
  _mailboxBucketBarConfigurationIdentifier = [(MUIMessageListViewController *)self _mailboxBucketBarConfigurationIdentifier];
  dataSource = [(MUIMessageListViewController *)self dataSource];
  v5 = [dataSource itemIdentifiersForSection:@"MessageListSectionPriority"];

  v6 = _ef_log_MUIMessageListViewController();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ef_shortDescriptionString = [v5 ef_shortDescriptionString];
    v15 = 138543618;
    v16 = ef_shortDescriptionString;
    v17 = 2114;
    v18 = _mailboxBucketBarConfigurationIdentifier;
    _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "Updating shimmered message itemIDs:%{public}@ for mailbox:%{public}@", &v15, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  v10 = *MEMORY[0x277D06CB0];
  v11 = [em_userDefaults valueForKey:*MEMORY[0x277D06CB0]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
  {
    v12 = [v11 mutableCopy];

    v8 = v12;
  }

  v13 = [v5 ef_compactMap:&__block_literal_global_122];
  [v8 setObject:v13 forKeyedSubscript:_mailboxBucketBarConfigurationIdentifier];

  em_userDefaults2 = [MEMORY[0x277CBEBD0] em_userDefaults];
  [em_userDefaults2 setValue:v8 forKey:v10];
}

- (id)_currentDataForItemIDsInPriority
{
  dataSource = [(MUIMessageListViewController *)self dataSource];
  v3 = [dataSource itemIdentifiersForSection:@"MessageListSectionPriority"];

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

- (void)presentMailCleanupViewForMailCleanupTipId:(id)id
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](id);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIMessageListViewController.presentMailCleanupView(mailCleanupTipId:)(v4);

  MEMORY[0x277D82BD8](id);
  MEMORY[0x277D82BD8](self);
}

- (void)dismissMailCleanupTipForMailCleanupTipId:(id)id
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](id);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIMessageListViewController.dismissMailCleanupTip(mailCleanupTipId:)(v4);

  MEMORY[0x277D82BD8](id);
  MEMORY[0x277D82BD8](self);
}

- (void)onAppearForMailCleanupTipId:(id)id
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](id);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIMessageListViewController.onAppear(mailCleanupTipId:)(v4);

  MEMORY[0x277D82BD8](id);
  MEMORY[0x277D82BD8](self);
}

- (void)_refreshBucketsSession
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.refreshBucketsSession()();
  MEMORY[0x277D82BD8](self);
}

- (void)_updateBucketBarIsHidden:(BOOL)hidden
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

- (void)bucketBarConfigurationController:(id)controller isHidden:(BOOL)hidden forMailboxes:(id)mailboxes
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](controller);
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](self);
  v6 = sub_214CCD394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37B50);
  v7 = sub_214CCF7E4();
  MUIMessageListViewController.bucketBarConfigurationController(_:isHidden:forMailboxes:)(controller, v6 & 1, v7);

  MEMORY[0x277D82BD8](mailboxes);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](controller);
}

- (void)bucketBarConfigurationControllerRequiresReload:(id)reload
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](reload);
  MEMORY[0x277D82BE0](self);
  MUIMessageListViewController.bucketBarConfigurationControllerRequiresReload(_:)(reload);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](reload);
}

- (void)_enableFilters
{
  if (self)
  {
    filterViewModel = [self filterViewModel];
    [filterViewModel setFilterEnabled:1];
    v2 = [(MUIMessageListViewController *)self _predicateForFiltersEnabled:?];
    if ([(MUIMessageListViewController *)self _shouldApplyFilterPredicate:v2])
    {
      [self applyFilterPredicate:v2];
      [self updateFilterControlWithFilterViewModel:filterViewModel];
      selectedFilters = [filterViewModel selectedFilters];
      [(MUIMessageListViewController *)self _reportFilterChangeEvent:selectedFilters filters:?];
    }
  }
}

- (void)_disableFilters
{
  if (self)
  {
    filterViewModel = [self filterViewModel];
    [filterViewModel setFilterEnabled:0];

    v3 = [(MUIMessageListViewController *)self _predicateForFiltersEnabled:?];
    if ([(MUIMessageListViewController *)self _shouldApplyFilterPredicate:v3])
    {
      [self applyFilterPredicate:v3];
      [(MUIMessageListViewController *)self _reportFilterChangeEvent:0 filters:?];
    }
  }
}

- (id)_predicateForFiltersEnabled:(void *)enabled
{
  if (enabled)
  {
    if (a2)
    {
      filterViewModel = [enabled filterViewModel];
      predicateForSelectedFilters = [filterViewModel predicateForSelectedFilters];
    }

    else
    {
      predicateForSelectedFilters = 0;
    }

    v5 = [enabled updatedPredicateForFocusedAccounts:predicateForSelectedFilters];

    v6 = [enabled _updatedPredicateForReadLater:v5];

    if (([enabled isBucketBarHidden] & 1) == 0)
    {
      v7 = [enabled _updatedPredicateForSelectedBucket:v6];

      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_shouldApplyFilterPredicate:(void *)predicate
{
  predicateCopy = predicate;
  if (predicate)
  {
    v3 = a2;
    currentFilterPredicate = [predicateCopy currentFilterPredicate];
    v5 = EFObjectsAreEqual();

    predicateCopy = (v5 ^ 1u);
  }

  return predicateCopy;
}

- (void)_reportFilterChangeEvent:(void *)event filters:
{
  eventCopy = event;
  if (self)
  {
    globalAsyncScheduler = [MEMORY[0x277D071B8] globalAsyncScheduler];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__MUIMessageListViewController__reportFilterChangeEvent_filters___block_invoke;
    v7[3] = &unk_27818AD88;
    v9 = a2;
    v8 = eventCopy;
    [globalAsyncScheduler performBlock:v7];
  }
}

- (uint64_t)_hasInitialLoadPromiseForSection:(uint64_t)section
{
  v3 = a2;
  v4 = v3;
  if (section)
  {
    if ([v3 isEqualToString:@"MessageListSectionRecent"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MessageListSectionIndexedSearch") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MessageListSectionServerSearch") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MessageListSectionTopHits") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MessageListSectionInstantAnswers"))
    {
      section = 1;
    }

    else
    {
      section = [v4 isEqualToString:@"MessageListSectionGroupedSender"];
    }
  }

  return section;
}

- (void)_highlightNextMessageAfterDeletingMessagesWithItemIdentifiers:(void *)identifiers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (identifiers)
  {
    messageSelectionStrategy = [identifiers messageSelectionStrategy];
    v5 = [messageSelectionStrategy itemIDToSelectAfterDeletedMessageItemIDs:v3];

    v6 = _ef_log_MUIMessageListViewController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      OUTLINED_FUNCTION_0_9();
      identifiersCopy = identifiers;
      v11 = 2114;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> Highlight next message with item id: %{public}@, after deleting messages with ids: %{public}@", v9, 0x2Au);
    }

    [identifiers selectRowOfItemID:v5 scrollToVisible:0 animated:0];
  }
}

- (void)filterController
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"MUIMessageListViewController.m" lineNumber:544 description:@"createMailboxFilterController did not return a valid instance"];

  *a4 = *a3;
}

- (void)createMessageListForReload
{
  canShowUnseenSection = [self canShowUnseenSection];

  if (canShowUnseenSection)
  {
    unseenPredicate = [self unseenPredicate];
    v11 = unseenPredicate;
    v10 = MessageListSectionGroupedSenderUnseen;
    if ((a3 & 1) == 0)
    {
      v10 = MessageListSectionRecentUnseen;
    }

    [a4 setOrAddObject:unseenPredicate forKey:*v10];
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
  selfCopy = self;
  _os_log_error_impl(&dword_214A5E000, a2, OS_LOG_TYPE_ERROR, "Unable to update shimmered messages for mailbox:%{public}@", &v2, 0xCu);
}

@end