@interface MessageListSectionDataSource
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrioritySection;
- (BOOL)messageListItemHelper:(id)a3 anyExpandedThreadContainsItemID:(id)a4;
- (BOOL)messageListItemHelper:(id)a3 isItemIDExpandedThread:(id)a4;
- (BOOL)messageListItemHelper:(id)a3 isItemIDSelected:(id)a4;
- (MessageListItemHelper)itemHelper;
- (MessageListSectionDataSource)initWithConfiguration:(id)a3;
- (MessageListSectionDataSource)initWithSection:(id)a3 collectionView:(id)a4 messageList:(id)a5 initialLoadCompletedPromise:(id)a6 layoutValuesHelper:(id)a7 state:(id)a8 headerType:(unint64_t)a9;
- (MessageListSectionDataSourceDelegate)delegate;
- (MessageListSectionDataSourceProvider)provider;
- (MessageListSectionDataSourceSelectionModelProvider)selectionModelProvider;
- (NSSet)expandedThreadItemIDs;
- (UICollectionView)collectionView;
- (id)_preparedMessageListItemIDs;
- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6;
- (id)configuredReusableSupplementaryViewForCollectionView:(id)a3 elementKind:(id)a4 indexPath:(id)a5;
- (id)itemIDsInExpandedThread:(id)a3;
- (id)messageListItemForItemID:(id)a3 indexPath:(id)a4 receiver:(id)a5 completion:(id)a6;
- (id)relatedItemIDsForSelectedItemID:(id)a3 snapshot:(id)a4;
- (id)threadItemIDForItemInExpandedThread:(id)a3;
- (int64_t)numberOfPreviewLines;
- (unint64_t)hash;
- (void)_addedItemIDs:(id)a3 before:(BOOL)a4 existingItemID:(id)a5 toThreadWithItemID:(id)a6 inCollection:(id)a7 isLastObserver:(BOOL)a8;
- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5;
- (void)_deleteItemsWithIDs:(id)a3 fromCollection:(id)a4 animated:(BOOL)a5 useImmediateCompletion:(BOOL)a6 completionHandler:(id)a7;
- (void)_enumerateItemIDs:(id)a3 block:(id)a4;
- (void)_maybeReloadForTimedOutItemIDs;
- (void)_performDataSourceUpdateAnimated:(BOOL)a3 cleanSnapshot:(BOOL)a4 isLastUpdate:(BOOL)a5 prepare:(id)a6 update:(id)a7 completion:(id)a8;
- (void)_recordTailspinForBlankCellWithError:(void *)a1;
- (void)_recoverFailedItemIDsIfNeededForCollection:(id)a3 excluding:(id)a4 completion:(id)a5;
- (void)_reloadDataSource;
- (void)_reloadItemsWithItemIDs:(id)a3;
- (void)_reloadPreparedItemIDsForCollection:(id)a3 completion:(id)a4;
- (void)_showBlankCellAlertWithItemID:(void *)a3 indexPath:(void *)a4 reason:;
- (void)_updateSelectionStateForItemsWithIDs:(id)a3 inThreadWithItemID:(id)a4 snapshot:(id)a5 shouldDeselectMessages:(BOOL)a6;
- (void)applyFilterPredicate:(id)a3 userFiltered:(BOOL)a4 ignoreMessagesPredicate:(id)a5;
- (void)beginObservingAnimated:(BOOL)a3 nextUpdateNeedsCleanSnapshot:(BOOL)a4;
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 after:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8;
- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 before:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8;
- (void)collection:(id)a3 changedItemIDs:(id)a4;
- (void)collection:(id)a3 changedItemIDs:(id)a4 itemIDsWithCountChanges:(id)a5 itemIDsWithBrandIndicatorLocationChanges:(id)a6;
- (void)collection:(id)a3 deletedItemIDs:(id)a4;
- (void)collection:(id)a3 didFinishInitialLoadForThreadWithItemID:(id)a4;
- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 oldestItemsUpdatedForMailboxes:(id)a4;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
- (void)collectionDidFailInitialLoad:(id)a3 searchInfo:(id)a4;
- (void)collectionDidFinishInitialLoad:(id)a3 searchInfo:(id)a4;
- (void)dealloc;
- (void)deleteItemsWithIDs:(id)a3 animated:(BOOL)a4 useImmediateCompletion:(BOOL)a5 completionHandler:(id)a6;
- (void)didFinishRecoveryForCollection:(id)a3;
- (void)didFinishRemoteSearchForCollection:(id)a3;
- (void)didScheduleReadInteractionForItemID:(id)a3;
- (void)didSelectDisclosureButtonForMessageListItem:(id)a3 disclosureEnabled:(BOOL)a4;
- (void)messageListThreadHelper:(id)a3 didCollapseMessageListItem:(id)a4;
- (void)messageListThreadHelper:(id)a3 didExpandMessageListItem:(id)a4;
- (void)reconfigureItemsAtIndexPaths:(id)a3;
- (void)refresh;
- (void)replaceMessageList:(id)a3 initialLoadCompletedPromise:(id)a4;
- (void)stopObserving;
@end

@implementation MessageListSectionDataSource

- (BOOL)isPrioritySection
{
  v2 = [(MessageListSectionDataSource *)self section];
  v3 = [v2 isEqualToString:@"MessageListSectionPriority"];

  return v3;
}

- (MessageListSectionDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)hash
{
  v2 = [(MessageListSectionDataSource *)self section];
  v3 = [v2 hash];

  return v3;
}

- (MessageListSectionDataSourceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (MessageListSectionDataSourceSelectionModelProvider)selectionModelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionModelProvider);

  return WeakRetained;
}

- (MessageListItemHelper)itemHelper
{
  itemHelper = self->_itemHelper;
  if (!itemHelper)
  {
    v4 = [(MessageListSectionDataSource *)self threadHelper];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [[MessageListItemHelper alloc] initWithDelegate:self];
    }

    v7 = self->_itemHelper;
    self->_itemHelper = v6;

    itemHelper = self->_itemHelper;
  }

  return itemHelper;
}

- (int64_t)numberOfPreviewLines
{
  if (!self->_numberOfPreviewLinesToken)
  {
    objc_initWeak(&location, self);
    self->_numberOfPreviewLines = [MEMORY[0x277CBEBD0] em_linesOfPreview];
    v3 = [MEMORY[0x277CBEBD0] em_userDefaults];
    v4 = *MEMORY[0x277D06CA0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__MessageListSectionDataSource_numberOfPreviewLines__block_invoke;
    v8[3] = &unk_2781893A0;
    objc_copyWeak(&v9, &location);
    v5 = [v3 ef_observeKeyPath:v4 options:1 autoCancelToken:1 usingBlock:v8];
    numberOfPreviewLinesToken = self->_numberOfPreviewLinesToken;
    self->_numberOfPreviewLinesToken = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return self->_numberOfPreviewLines;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (MessageListSectionDataSource)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 collectionView];
  v7 = [v4 messageList];
  v8 = [v4 initialLoadCompletedPromise];
  v9 = [v4 layoutValuesHelper];
  v10 = [v4 state];
  v11 = -[MessageListSectionDataSource initWithSection:collectionView:messageList:initialLoadCompletedPromise:layoutValuesHelper:state:headerType:](self, "initWithSection:collectionView:messageList:initialLoadCompletedPromise:layoutValuesHelper:state:headerType:", v5, v6, v7, v8, v9, v10, [v4 headerType]);

  if (v11)
  {
    v12 = [v4 delegate];
    objc_storeWeak(&v11->_delegate, v12);

    v13 = [v4 selectionModelProvider];
    objc_storeWeak(&v11->_selectionModelProvider, v13);

    v14 = [v4 contactStore];
    contactStore = v11->_contactStore;
    v11->_contactStore = v14;

    v16 = [v4 avatarGenerator];
    avatarGenerator = v11->_avatarGenerator;
    v11->_avatarGenerator = v16;
  }

  return v11;
}

- (MessageListSectionDataSource)initWithSection:(id)a3 collectionView:(id)a4 messageList:(id)a5 initialLoadCompletedPromise:(id)a6 layoutValuesHelper:(id)a7 state:(id)a8 headerType:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v55 = a7;
  v54 = a8;
  v64.receiver = self;
  v64.super_class = MessageListSectionDataSource;
  v20 = [(MessageListSectionDataSource *)&v64 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_section, a3);
    objc_storeWeak(&v21->_collectionView, v17);
    objc_storeStrong(&v21->_messageList, a5);
    objc_storeStrong(&v21->_initialLoadCompletedPromise, a6);
    objc_storeStrong(&v21->_layoutValuesHelper, a7);
    objc_storeStrong(&v21->_state, a8);
    v21->_headerType = a9;
    v22 = objc_alloc(MEMORY[0x277D07168]);
    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v24 = [v22 initWithObject:v23];
    failedItemIDs = v21->_failedItemIDs;
    v21->_failedItemIDs = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    timedOutItemIDs = v21->_timedOutItemIDs;
    v21->_timedOutItemIDs = v26;

    *&v21->_timedOutItemIDsLock._os_unfair_lock_opaque = 0;
    v21->_isRefreshingLock._os_unfair_lock_opaque = 0;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = os_log_create("com.apple.email", [v29 UTF8String]);
    log = v21->_log;
    v21->_log = v30;

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = os_log_create("com.apple.email.signposts", [v33 UTF8String]);
    signpostLog = v21->_signpostLog;
    v21->_signpostLog = v34;

    v36 = [[MessageListCollectionHelper alloc] initWithLog:v21->_log updateQueueName:@"remove.me" section:v16];
    collectionHelper = v21->_collectionHelper;
    v21->_collectionHelper = v36;

    if ([v18 isThreaded])
    {
      v38 = [[MessageListThreadHelper alloc] initWithDelegate:v21 isPrioritySection:[(MessageListSectionDataSource *)v21 isPrioritySection]];
      threadHelper = v21->_threadHelper;
      v21->_threadHelper = v38;
    }

    v40 = [MEMORY[0x277D07148] currentDevice];
    v41 = [v40 isInternal];

    if (v41)
    {
      v21->_shouldAlertOnBlankCell = [MEMORY[0x277D06DA0] preferenceEnabled:19];
      objc_initWeak(&location, v21);
      v42 = MEMORY[0x277D06DA0];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __139__MessageListSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke;
      v61[3] = &unk_2781892D8;
      objc_copyWeak(&v62, &location);
      v43 = [v42 observeChangesForPreference:19 usingBlock:v61];
      shouldAlertOnBlankCellToken = v21->_shouldAlertOnBlankCellToken;
      v21->_shouldAlertOnBlankCellToken = v43;

      objc_destroyWeak(&v62);
      objc_destroyWeak(&location);
    }

    IsFeatureEnabled = EMBlackPearlIsFeatureEnabled();
    if (a9 == 3)
    {
      v46 = IsFeatureEnabled;
    }

    else
    {
      v46 = 0;
    }

    v47 = [(MessageListSectionDataSource *)v21 headerRegistration];
    if (v47)
    {

LABEL_14:
      v19 = v53;
      goto LABEL_15;
    }

    v19 = v53;
    if (a9 == 1 || v46)
    {
      objc_initWeak(&location, v21);
      v48 = MEMORY[0x277D75320];
      v49 = objc_opt_class();
      v50 = *MEMORY[0x277D767D8];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __139__MessageListSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke_2;
      v56[3] = &unk_278189300;
      objc_copyWeak(&v58, &location);
      v59 = v46;
      v57 = v55;
      v60 = a9 == 1;
      v51 = [v48 registrationWithSupplementaryClass:v49 elementKind:v50 configurationHandler:v56];
      [(MessageListSectionDataSource *)v21 setHeaderRegistration:v51];

      objc_destroyWeak(&v58);
      objc_destroyWeak(&location);
      goto LABEL_14;
    }
  }

LABEL_15:

  return v21;
}

void __139__MessageListSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[23] = a3;
  }
}

void __139__MessageListSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 48))
    {
      v5 = [WeakRetained section];
      v6 = MUITitleFromSection(v5);
      [v13 setTitle:v6];
    }

    else
    {
      v5 = _EFLocalizedString();
      [v13 setTitle:v5];
    }

    [v13 setLayoutValuesHelper:*(a1 + 32)];
    if (*(a1 + 49) == 1)
    {
      v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"apple.intelligence"];
      v8 = [v7 imageWithRenderingMode:1];

      v9 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v9);

      v11 = [MEMORY[0x277CBEBD0] em_userDefaults];
      v12 = [v11 BOOLForKey:*MEMORY[0x277D06C88]] | IsAccessibilityCategory;

      [v13 applyImage:v8 hasAvatars:(v12 & 1) == 0];
    }
  }
}

- (void)dealloc
{
  v3 = [(MessageListSectionDataSource *)self shouldAlertOnBlankCellToken];
  [v3 cancel];

  [(MessageListSectionDataSource *)self setShouldAlertOnBlankCellToken:0];
  v4 = [(MessageListSectionDataSource *)self numberOfPreviewLinesToken];
  [v4 cancel];

  [(MessageListSectionDataSource *)self setNumberOfPreviewLinesToken:0];
  v5.receiver = self;
  v5.super_class = MessageListSectionDataSource;
  [(MessageListSectionDataSource *)&v5 dealloc];
}

- (void)replaceMessageList:(id)a3 initialLoadCompletedPromise:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListSectionDataSource *)self messageList];
  v9 = [(MessageListSectionDataSource *)self log];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == v6)
  {
    if (v10)
    {
      v14 = 134217984;
      v15 = self;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "%p: Message list is the same - no need to replace", &v14, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      v14 = 134218498;
      v15 = self;
      v16 = 2114;
      v17 = v6;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "%p: replace message list: %{public}@, old: %{public}@", &v14, 0x20u);
    }

    if (v8)
    {
      [v8 stopObserving:self];
    }

    v11 = [(MessageListSectionDataSource *)self failedItemIDs];
    [v11 performWhileLocked:&__block_literal_global_7];

    os_unfair_lock_lock(&self->_timedOutItemIDsLock);
    v12 = [(MessageListSectionDataSource *)self timedOutItemIDs];
    [v12 removeAllObjects];

    [(MessageListSectionDataSource *)self setHasReloadedForTimeOut:0];
    os_unfair_lock_unlock(&self->_timedOutItemIDsLock);
    [(MessageListSectionDataSource *)self setMessageList:v6];
    if ([v6 isThreaded])
    {
      v13 = [[MessageListThreadHelper alloc] initWithDelegate:self isPrioritySection:[(MessageListSectionDataSource *)self isPrioritySection]];
      [(MessageListSectionDataSource *)self setThreadHelper:v13];
    }

    else
    {
      [(MessageListSectionDataSource *)self setThreadHelper:0];
    }

    [(MessageListSectionDataSource *)self setInitialLoadCompletedPromise:v7];
  }
}

- (void)refresh
{
  os_unfair_lock_lock(&self->_isRefreshingLock);
  if (![(MessageListSectionDataSource *)self isRefreshing])
  {
    [(MessageListSectionDataSource *)self setIsRefreshing:1];
    v3 = [(MessageListSectionDataSource *)self messageList];
    [v3 refresh];
  }

  os_unfair_lock_unlock(&self->_isRefreshingLock);
}

- (void)beginObservingAnimated:(BOOL)a3 nextUpdateNeedsCleanSnapshot:(BOOL)a4
{
  if (a4)
  {
    os_unfair_lock_lock(&self->_nextUpdateNeedsCleanSnapshotLock);
    [(MessageListSectionDataSource *)self setNextUpdateNeedsCleanSnapshot:1];
    os_unfair_lock_unlock(&self->_nextUpdateNeedsCleanSnapshotLock);
  }

  os_unfair_lock_lock(&self->_isRefreshingLock);
  [(MessageListSectionDataSource *)self setIsRefreshing:0];
  os_unfair_lock_unlock(&self->_isRefreshingLock);
  v5 = [(MessageListSectionDataSource *)self messageList];
  [v5 beginObserving:self];
}

- (void)stopObserving
{
  v3 = [(MessageListSectionDataSource *)self messageList];
  [v3 stopObserving:self];
}

- (void)reconfigureItemsAtIndexPaths:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MessageListSectionDataSource *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v13 = self;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Reconfigure items at index paths: %{public}@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__MessageListSectionDataSource_reconfigureItemsAtIndexPaths___block_invoke;
  v10[3] = &unk_278188F78;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  v7 = MEMORY[0x277D071B8];
  v8 = v4;
  v9 = [v7 mainThreadScheduler];
  [v9 performBlock:v6];
}

void __61__MessageListSectionDataSource_reconfigureItemsAtIndexPaths___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) collectionView];
  v3 = MEMORY[0x277CBEB98];
  v4 = [v2 mui_indexPathsForPreparedItems];
  v44 = [v3 setWithArray:v4];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v46 objects:v68 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v47;
    *&v6 = 134220034;
    v38 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v11 = [v2 cellForItemAtIndexPath:{v10, v38}];
        v12 = v11;
        if (v11)
        {
          [v11 frame];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          [v2 bounds];
          v71.origin.x = v21;
          v71.origin.y = v22;
          v71.size.width = v23;
          v71.size.height = v24;
          v70.origin.x = v14;
          v70.origin.y = v16;
          v70.size.width = v18;
          v70.size.height = v20;
          if (CGRectIntersectsRect(v70, v71))
          {
            if ([v12 isHidden] & 1) != 0 || (objc_msgSend(v12, "isHiddenOrHasHiddenAncestor"))
            {
              goto LABEL_31;
            }

            [v12 alpha];
            if (v25 < 0.0)
            {
              v25 = -v25;
            }

            if (v25 < 2.22044605e-16)
            {
LABEL_31:
              if ([v12 conformsToProtocol:&unk_282732038])
              {
                v26 = [v12 messageListItem];
              }

              else
              {
                v26 = 0;
              }

              v33 = [*(a1 + 32) log];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
              {
                v43 = *(a1 + 32);
                v42 = [v10 section];
                v41 = [v10 item];
                v36 = [v12 _layoutAttributes];
                v40 = [v12 isHidden];
                v39 = [v12 isHiddenOrHasHiddenAncestor];
                [v12 alpha];
                *buf = v38;
                v51 = v43;
                v52 = 2048;
                v53 = v12;
                v54 = 2048;
                v55 = v42;
                v56 = 2048;
                v57 = v41;
                v58 = 1024;
                v59 = v26 != 0;
                v60 = 2114;
                v61 = v36;
                v62 = 1024;
                v63 = v40;
                v64 = 1024;
                v65 = v39;
                v66 = 2048;
                v67 = v37;
                _os_log_fault_impl(&dword_214A5E000, v33, OS_LOG_TYPE_FAULT, "%p: Cell (%p) is unexpectedly hidden:\n\tindexPath: (%ld, %ld)\n\thasItem: %{BOOL}d\n\tlayoutAttributes: %{public}@\n\tisHidden: %{BOOL}d\n\tisHiddenOrHasHiddenAncestor: %{BOOL}d\n\talpha: %f", buf, 0x50u);
              }
            }
          }

          v34 = *(a1 + 32);
          v29 = [v34 provider];
          v35 = [v29 messageListSectionDataSource:*(a1 + 32) itemIdentifierForIndexPath:v10];
          [v34 _configureCell:v12 atIndexPath:v10 itemID:v35];
        }

        else
        {
          v27 = [v44 containsObject:v10];
          v28 = [*(a1 + 32) log];
          v29 = v28;
          if (v27)
          {
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            v30 = *(a1 + 32);
            v31 = [v10 ef_publicDescription];
            *buf = 134218242;
            v51 = v30;
            v52 = 2114;
            v53 = v31;
            _os_log_error_impl(&dword_214A5E000, v29, OS_LOG_TYPE_ERROR, "%p: Unable to reconfigure cell at %{public}@ - cell is nil", buf, 0x16u);
          }

          else
          {
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              goto LABEL_26;
            }

            v32 = *(a1 + 32);
            v31 = [v10 ef_publicDescription];
            *buf = 134218242;
            v51 = v32;
            v52 = 2114;
            v53 = v31;
            _os_log_impl(&dword_214A5E000, v29, OS_LOG_TYPE_INFO, "%p: Index path not prepared at %{public}@ - cell is nil", buf, 0x16u);
          }
        }

LABEL_26:
      }

      v7 = [obj countByEnumeratingWithState:&v46 objects:v68 count:16];
    }

    while (v7);
  }
}

- (void)deleteItemsWithIDs:(id)a3 animated:(BOOL)a4 useImmediateCompletion:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [(MessageListSectionDataSource *)self messageList];
  [(MessageListSectionDataSource *)self _deleteItemsWithIDs:v11 fromCollection:v12 animated:v7 useImmediateCompletion:v6 completionHandler:v10];
}

- (id)relatedItemIDsForSelectedItemID:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(MessageListSectionDataSource *)self itemHelper];
  v10 = [v9 itemIDBeforeItemID:v6 snapshot:v7];
  [v8 ef_addOptionalObject:v10];

  v11 = [v9 itemIDAfterItemID:v6 snapshot:v7];
  [v8 ef_addOptionalObject:v11];

  v12 = [(MessageListSectionDataSource *)self messageList];
  v13 = [(MessageListSectionDataSource *)self threadHelper];
  if (v13)
  {
    v14 = [v12 expandedThreadItemIDs];
    v15 = [v14 containsObject:v6];

    if (v15)
    {
      v16 = [v13 itemIDsInExpandedThread:v6 snapshot:v7];
      v17 = [v16 lastObject];
      if (v17)
      {
        [v8 addObject:v17];
        v18 = [v13 itemIDAfterItemID:v17 snapshot:v7];
        [v8 ef_addOptionalObject:v18];
      }
    }

    else
    {
      if (![v12 anyExpandedThreadContainsItemID:v6])
      {
        goto LABEL_10;
      }

      v16 = [v13 threadItemIDForItemInExpandedThread:v6 snapshot:v7];
      if (!v16)
      {
        goto LABEL_9;
      }

      [v8 addObject:v16];
      v17 = [v13 itemIDBeforeItemID:v16 snapshot:v7];
      [v8 ef_addOptionalObject:v17];
    }

LABEL_9:
  }

LABEL_10:
  [v8 addObject:v6];

  return v8;
}

- (void)applyFilterPredicate:(id)a3 userFiltered:(BOOL)a4 ignoreMessagesPredicate:(id)a5
{
  v6 = a4;
  v16 = a3;
  v8 = a5;
  v9 = [(MessageListSectionDataSource *)self messageList];
  v10 = [v9 unfilteredMessageList];
  v11 = v10;
  if (v16)
  {
    v12 = [v10 filteredMessageListWithPredicate:v16 userFiltered:v6];

    v11 = v12;
  }

  v13 = [(MessageListSectionDataSource *)self messageList];

  if (v11 != v13)
  {
    v14 = [(MessageListSectionDataSource *)self delegate];
    v15 = [v14 initialLoadCompletedPromiseForMessageListSectionDataSource:self];

    [(MessageListSectionDataSource *)self replaceMessageList:v11 initialLoadCompletedPromise:v15];
    [(MessageListSectionDataSource *)self beginObservingAnimated:1 nextUpdateNeedsCleanSnapshot:1];
  }
}

- (void)didScheduleReadInteractionForItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSectionDataSource *)self collectionHelper];
  [v5 didScheduleReadInteractionForItemID:v4];
}

- (id)threadItemIDForItemInExpandedThread:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSectionDataSource *)self threadHelper];
  v6 = [(MessageListSectionDataSource *)self provider];
  v7 = [v6 snapshotForMessageListSectionDataSource:self];
  v8 = [v5 threadItemIDForItemInExpandedThread:v4 snapshot:v7];

  return v8;
}

- (id)itemIDsInExpandedThread:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSectionDataSource *)self threadHelper];
  v6 = [(MessageListSectionDataSource *)self provider];
  v7 = [v6 snapshotForMessageListSectionDataSource:self];
  v8 = [v5 itemIDsInExpandedThread:v4 snapshot:v7];

  return v8;
}

- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  [(MessageListSectionDataSource *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MessageListSectionDataSource configuredCollectionViewCellForCollectionView:indexPath:itemID:cellIdentifier:]", "MessageListSectionDataSource.m", 335, "0");
}

- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(MessageListSectionDataSource *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MessageListSectionDataSource _configureCell:atIndexPath:itemID:]", "MessageListSectionDataSource.m", 339, "0");
}

- (id)messageListItemForItemID:(id)a3 indexPath:(id)a4 receiver:(id)a5 completion:(id)a6
{
  v74 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v14 = [(MessageListSectionDataSource *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v42 = [v11 ef_publicDescription];
      *buf = 134218498;
      v69 = self;
      v70 = 2114;
      v71 = v10;
      v72 = 2114;
      v73 = v42;
      _os_log_error_impl(&dword_214A5E000, v14, OS_LOG_TYPE_ERROR, "%p: No receiver for (itemID: %{public}@, indexPath: %{public}@)", buf, 0x20u);
    }
  }

  v15 = [(MessageListSectionDataSource *)self signpostLog];
  v16 = os_signpost_id_generate(v15);

  v17 = [(MessageListSectionDataSource *)self signpostLog];
  v18 = v17;
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v19 = [v11 ef_publicDescription];
    *buf = 138543618;
    v69 = v10;
    v70 = 2114;
    v71 = v19;
    _os_signpost_emit_with_name_impl(&dword_214A5E000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "MessageListViewControllerItemFetch", "itemID=%{public}@, indexPath=%{public}@", buf, 0x16u);
  }

  val = [(MessageListSectionDataSource *)self messageList];
  v20 = [val messageListItemForItemID:v10];
  [v12 setItemID:v10];
  [v12 setMessageListItemFuture:v20];
  objc_initWeak(buf, self);
  objc_initWeak(&location, val);
  v43 = objc_alloc_init(MEMORY[0x277D07138]);
  v21 = [MEMORY[0x277D071B8] mainThreadScheduler];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke;
  v61[3] = &unk_278189328;
  objc_copyWeak(&v65, buf);
  objc_copyWeak(v66, &location);
  v22 = v13;
  v23 = v10;
  v62 = v23;
  v24 = v11;
  v63 = v24;
  v66[1] = v16;
  v25 = v22;
  v64 = v25;
  v26 = [v21 afterDelay:v61 performBlock:2.0];
  [v43 addCancelable:v26];

  [v12 setMessageListItemFetchTimeoutCancelable:v43];
  v27 = [MEMORY[0x277D071B8] mainThreadScheduler];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke_84;
  v53[3] = &unk_278189350;
  v28 = v12;
  v54 = v28;
  v29 = v20;
  v55 = v29;
  v56 = self;
  v60 = v16;
  v30 = v23;
  v57 = v30;
  v31 = v24;
  v58 = v31;
  v32 = v25;
  v59 = v32;
  [v29 onScheduler:v27 addSuccessBlock:v53];

  v33 = [MEMORY[0x277D071B8] mainThreadScheduler];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke_86;
  v45[3] = &unk_278189378;
  objc_copyWeak(&v51, buf);
  objc_copyWeak(v52, &location);
  v34 = v30;
  v46 = v34;
  v35 = v31;
  v47 = v35;
  v36 = v28;
  v48 = v36;
  v52[1] = v16;
  v37 = v29;
  v49 = v37;
  v38 = v32;
  v50 = v38;
  [v37 onScheduler:v33 addFailureBlock:v45];

  v39 = v50;
  v40 = v37;

  objc_destroyWeak(v52);
  objc_destroyWeak(&v51);

  objc_destroyWeak(v66);
  objc_destroyWeak(&v65);

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return v40;
}

void __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 64));
    if (v3)
    {
      if ((_os_feature_enabled_impl() & 1) != 0 || !EFContentProtectionGetObservedState())
      {
        v8 = [(os_unfair_lock_s *)WeakRetained messageList];

        if (v3 == v8)
        {
          v11 = [(os_unfair_lock_s *)WeakRetained signpostLog];
          v12 = v11;
          v13 = *(a1 + 72);
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
          {
            v14 = *(a1 + 32);
            v15 = [*(a1 + 40) ef_publicDescription];
            v18 = 138544130;
            v19 = v14;
            v20 = 2114;
            v21 = v15;
            v22 = 1026;
            LODWORD(v23[0]) = 1;
            WORD2(v23[0]) = 1026;
            *(v23 + 6) = 0;
            _os_signpost_emit_with_name_impl(&dword_214A5E000, v12, OS_SIGNPOST_INTERVAL_END, v13, "MessageListViewControllerItemFetch", "itemID=%{public}@, indexPath=%{public}@, TimedOut=%{public,signpost.telemetry:number1}u Error=%{public,signpost.telemetry:number2}u enableTelemetry=YES ", &v18, 0x22u);
          }

          v16 = [(os_unfair_lock_s *)WeakRetained log];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke_cold_1(WeakRetained, a1, v16);
          }

          v4 = [MEMORY[0x277CCA9B8] em_itemTimeoutError];
          [(MessageListSectionDataSource *)WeakRetained _recordTailspinForBlankCellWithError:v4];
          (*(*(a1 + 48) + 16))();
          os_unfair_lock_lock(WeakRetained + 2);
          v17 = [(os_unfair_lock_s *)WeakRetained timedOutItemIDs];
          [v17 addObject:*(a1 + 32)];

          os_unfair_lock_unlock(WeakRetained + 2);
          [(os_unfair_lock_s *)WeakRetained _maybeReloadForTimedOutItemIDs];
          if (HIBYTE(WeakRetained[5]._os_unfair_lock_opaque) == 1)
          {
            [(MessageListSectionDataSource *)WeakRetained _showBlankCellAlertWithItemID:*(a1 + 40) indexPath:@"Message list item fetch timeout." reason:?];
          }
        }

        else
        {
          v4 = [(os_unfair_lock_s *)WeakRetained log];
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(a1 + 32);
            v10 = [*(a1 + 40) ef_publicDescription];
            v18 = 138543618;
            v19 = v9;
            v20 = 2114;
            v21 = v10;
            _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "Stale message list item (%{public}@) - skip timeout for message at index path: %{public}@", &v18, 0x16u);
          }
        }
      }

      else
      {
        v4 = [(os_unfair_lock_s *)WeakRetained log];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 32);
          v6 = [*(a1 + 40) ef_publicDescription];
          v7 = EFContentProtectionStateDescription();
          v18 = 138543874;
          v19 = v5;
          v20 = 2114;
          v21 = v6;
          v22 = 2114;
          v23[0] = v7;
          _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "Skip timeout for item (id=%{public}@) at indexPath=%{public}@ - device is not unlocked (%{public}@)", &v18, 0x20u);
        }
      }
    }
  }
}

void __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke_84(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) messageListItemFuture];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v9 = [*(a1 + 32) messageListItemFetchTimeoutCancelable];
    [v9 cancel];

    [*(a1 + 32) setMessageListItemFetchTimeoutCancelable:0];
    v10 = [*(a1 + 48) signpostLog];
    v11 = v10;
    v12 = *(a1 + 80);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v13 = *(a1 + 56);
      v14 = [*(a1 + 64) ef_publicDescription];
      v15 = 138544130;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      v19 = 1026;
      v20 = 0;
      v21 = 1026;
      v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_214A5E000, v11, OS_SIGNPOST_INTERVAL_END, v12, "MessageListViewControllerItemFetch", "itemID=%{public}@, indexPath=%{public}@, TimedOut=%{public,signpost.telemetry:number1}u Error=%{public,signpost.telemetry:number2}u enableTelemetry=YES ", &v15, 0x22u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = [*(a1 + 48) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v8 = [*(a1 + 64) ef_publicDescription];
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "Skip updating cell for message with itemID=%{public}@ at indexPath=%{public}@ - cell has already been configured", &v15, 0x16u);
    }
  }
}

void __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke_86(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 80));
    if (v5)
    {
      v6 = [WeakRetained messageList];

      if (v5 == v6)
      {
        v11 = [*(a1 + 48) messageListItemFetchTimeoutCancelable];
        [v11 cancel];

        if (([v3 ef_isCancelledError] & 1) == 0 && (objc_msgSend(v3, "em_isItemNotFoundError") & 1) == 0)
        {
          v19 = [WeakRetained signpostLog];
          v20 = v19;
          v21 = *(a1 + 88);
          if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
          {
            v22 = *(a1 + 32);
            v23 = *(a1 + 40);
            *buf = 138413058;
            v36 = v22;
            v37 = 2112;
            v38 = v23;
            v39 = 1026;
            *v40 = 0;
            *&v40[4] = 2050;
            *&v40[6] = [v3 code];
            _os_signpost_emit_with_name_impl(&dword_214A5E000, v20, OS_SIGNPOST_INTERVAL_END, v21, "MessageListViewControllerItemFetch", "itemID=%@, indexPath=%@, TimedOut=%{public,signpost.telemetry:number1}u Error=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x26u);
          }

          v24 = [WeakRetained log];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = *(a1 + 32);
            v26 = [*(a1 + 40) ef_publicDescription];
            v27 = [v3 ef_publicDescription];
            *buf = 134218754;
            v36 = WeakRetained;
            v37 = 2114;
            v38 = v25;
            v39 = 2114;
            *v40 = v26;
            *&v40[8] = 2114;
            *&v40[10] = v27;
            _os_log_error_impl(&dword_214A5E000, v24, OS_LOG_TYPE_ERROR, "%p: [Blank cell] Message list item fetch failed (id:%{public}@, indexPath:%{public}@) with error: %{public}@", buf, 0x2Au);
          }

          [(MessageListSectionDataSource *)WeakRetained _recordTailspinForBlankCellWithError:v3];
          v28 = [WeakRetained failedItemIDs];
          v29 = MEMORY[0x277D85DD0];
          v30 = 3221225472;
          v31 = __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke_87;
          v32 = &unk_278188CA8;
          v33 = *(a1 + 32);
          [v28 performWhileLocked:&v29];

          if (WeakRetained[23] == 1)
          {
            __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke_86_cold_1((a1 + 32), a1, v3, WeakRetained);
          }
        }

        v12 = [*(a1 + 48) messageListItemFuture];
        v13 = *(a1 + 56);

        if (v12 == v13)
        {
          [*(a1 + 48) setMessageListItemFuture:0];
        }

        if ([v3 em_isItemNotFoundError])
        {
          v14 = [WeakRetained log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            v16 = [*(a1 + 40) ef_publicDescription];
            *buf = 134218498;
            v36 = WeakRetained;
            v37 = 2114;
            v38 = v15;
            v39 = 2114;
            *v40 = v16;
            _os_log_impl(&dword_214A5E000, v14, OS_LOG_TYPE_DEFAULT, "%p: Deleting itemID:%{public}@ at indexPath:%{public}@ from the data source because we could not find the item", buf, 0x20u);
          }

          if (*(a1 + 32))
          {
            v34 = *(a1 + 32);
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
            v18 = [WeakRetained messageList];
            [WeakRetained _deleteItemsWithIDs:v17 fromCollection:v18 animated:1 useImmediateCompletion:0 completionHandler:0];
          }
        }

        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v7 = [WeakRetained log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = *(a1 + 40);
          v10 = [v3 ef_publicDescription];
          *buf = 138543874;
          v36 = v8;
          v37 = 2114;
          v38 = v9;
          v39 = 2114;
          *v40 = v10;
          _os_log_impl(&dword_214A5E000, v7, OS_LOG_TYPE_DEFAULT, "Stale message list item (%{public}@) - skip message list item at index path: %{public}@, failure: %{public}@", buf, 0x20u);
        }
      }
    }
  }
}

void __52__MessageListSectionDataSource_numberOfPreviewLines__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained setNumberOfPreviewLines:{objc_msgSend(v4, "integerValue")}];
    }
  }
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 after:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v23 = MEMORY[0x277D85DD0];
  v24 = self;
  v25 = v14;
  v26 = v16;
  v27 = v15;
  v28 = v13;
  v29 = a8;
  v17 = MEMORY[0x277D071B8];
  v18 = v14;
  v19 = v16;
  v20 = v15;
  v21 = v13;
  v22 = [v17 mainThreadScheduler];
  [v22 performBlock:&v23];
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 before:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v23 = MEMORY[0x277D85DD0];
  v24 = self;
  v25 = v14;
  v26 = v16;
  v27 = v15;
  v28 = v13;
  v29 = a8;
  v17 = MEMORY[0x277D071B8];
  v18 = v14;
  v19 = v16;
  v20 = v15;
  v21 = v13;
  v22 = [v17 mainThreadScheduler];
  [v22 performBlock:&v23];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__MessageListSectionDataSource_collection_movedItemIDs_before___block_invoke;
  v17[3] = &unk_278188C50;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v11 = v17;
  v12 = MEMORY[0x277D071B8];
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = [v12 mainThreadScheduler];
  [v16 performBlock:v11];
}

void __63__MessageListSectionDataSource_collection_movedItemIDs_before___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] messageList];
  v3 = a1[5];

  v4 = a1[4];
  if (v2 == v3)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__MessageListSectionDataSource_collection_movedItemIDs_before___block_invoke_104;
    v14[3] = &unk_2781893F0;
    v10 = a1[6];
    v11 = a1[4];
    v15 = v10;
    v16 = v11;
    v17 = a1[7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__MessageListSectionDataSource_collection_movedItemIDs_before___block_invoke_2;
    v12[3] = &unk_278188F78;
    v12[4] = a1[4];
    v13 = a1[6];
    [v4 _performDataSourceUpdateAnimated:1 cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v14 completion:v12];

    v5 = v15;
  }

  else
  {
    v5 = [a1[4] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = [a1[5] ef_publicDescription];
      v8 = a1[6];
      v9 = a1[7];
      *buf = 134218754;
      v19 = v6;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore moved item ids: %{public}@, before: %{public}@", buf, 0x2Au);
    }
  }
}

id __63__MessageListSectionDataSource_collection_movedItemIDs_before___block_invoke_104(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [*(a1 + 40) collectionHelper];
        v10 += [v14 moveItemID:v13 before:*(a1 + 48) snapshot:v5 section:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v15 = [*(a1 + 40) delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [*(a1 + 40) delegate];
    [v16 messageListSectionDataSource:*(a1 + 40) didMoveMessagesWithItemIdentifiers:*(a1 + 32) toSection:v6];
  }

  v17 = [MUIMessageListSectionDataSourceChange moved:v10, v19];

  return v17;
}

void __63__MessageListSectionDataSource_collection_movedItemIDs_before___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messageListSectionDataSource:*(a1 + 32) handleRowSelectionAfterMovingMessagesWithItemIdentifiers:*(a1 + 40)];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__MessageListSectionDataSource_collection_movedItemIDs_after___block_invoke;
  v17[3] = &unk_278188C50;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v11 = v17;
  v12 = MEMORY[0x277D071B8];
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = [v12 mainThreadScheduler];
  [v16 performBlock:v11];
}

void __62__MessageListSectionDataSource_collection_movedItemIDs_after___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] messageList];
  v3 = a1[5];

  v4 = a1[4];
  if (v2 == v3)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__MessageListSectionDataSource_collection_movedItemIDs_after___block_invoke_109;
    v14[3] = &unk_2781893F0;
    v10 = a1[6];
    v11 = a1[4];
    v15 = v10;
    v16 = v11;
    v17 = a1[7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__MessageListSectionDataSource_collection_movedItemIDs_after___block_invoke_3;
    v12[3] = &unk_278188F78;
    v12[4] = a1[4];
    v13 = a1[6];
    [v4 _performDataSourceUpdateAnimated:1 cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v14 completion:v12];

    v5 = v15;
  }

  else
  {
    v5 = [a1[4] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = [a1[5] ef_publicDescription];
      v8 = a1[6];
      v9 = a1[7];
      *buf = 134218754;
      v19 = v6;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore moved item ids: %{public}@, after: %{public}@", buf, 0x2Au);
    }
  }
}

id __62__MessageListSectionDataSource_collection_movedItemIDs_after___block_invoke_109(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__MessageListSectionDataSource_collection_movedItemIDs_after___block_invoke_2;
  v14[3] = &unk_278189418;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v18 = &v19;
  v14[4] = v7;
  v15 = v9;
  v10 = v5;
  v16 = v10;
  v11 = v6;
  v17 = v11;
  [v8 enumerateObjectsWithOptions:2 usingBlock:v14];
  v12 = [MUIMessageListSectionDataSourceChange moved:v20[3]];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __62__MessageListSectionDataSource_collection_movedItemIDs_after___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v6 = [v3 collectionHelper];
  v5 = [v6 moveItemID:v4 after:a1[5] snapshot:a1[6] section:a1[7]];

  *(*(a1[8] + 8) + 24) += v5;
}

void __62__MessageListSectionDataSource_collection_movedItemIDs_after___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messageListSectionDataSource:*(a1 + 32) handleRowSelectionAfterMovingMessagesWithItemIdentifiers:*(a1 + 40)];
}

- (void)collection:(id)a3 changedItemIDs:(id)a4 itemIDsWithCountChanges:(id)a5 itemIDsWithBrandIndicatorLocationChanges:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __123__MessageListSectionDataSource_collection_changedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke;
  v21[3] = &unk_278189468;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v14 = v21;
  v15 = MEMORY[0x277D071B8];
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v20 = [v15 mainThreadScheduler];
  [v20 performBlock:v14];
}

void __123__MessageListSectionDataSource_collection_changedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke(uint64_t a1)
{
  v1 = a1;
  v88 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messageList];
  v3 = *(v1 + 40);

  v4 = *(v1 + 32);
  if (v2 == v3)
  {
    v11 = [v4 provider];
    v5 = [v11 snapshotForMessageListSectionDataSource:*(v1 + 32)];

    v12 = [*(v1 + 32) collectionHelper];
    v13 = [v12 changeItemIDs:*(v1 + 48) snapshot:v5];

    v14 = [*(v1 + 32) log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v1 + 32);
      *buf = 134218498;
      v79 = v15;
      v80 = 2048;
      v81 = [v13 count];
      v82 = 2112;
      v83 = v13;
      _os_log_impl(&dword_214A5E000, v14, OS_LOG_TYPE_DEFAULT, "%p: Reloading itemIDs(%ld): %@", buf, 0x20u);
    }

    v16 = [*(v1 + 32) initialLoadCompletedPromise];
    v53 = v16;
    if (v16)
    {
      v17 = [v16 future];
      v18 = [v17 resultIfAvailable];
      v19 = [v18 BOOLValue];
    }

    else
    {
      v19 = 1;
    }

    v20 = [*(v1 + 32) selectionModelProvider];
    v21 = [v20 selectionModelForMessageListSectionDataSource:*(v1 + 32)];

    if ([v21 isSelectAll] && v19)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v22 = *(v1 + 56);
      v23 = [v22 countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v72;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v72 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [v21 deselectItemWithItemID:*(*(&v71 + 1) + 8 * i)];
          }

          v24 = [v22 countByEnumeratingWithState:&v71 objects:v77 count:16];
        }

        while (v24);
      }
    }

    if ([*(v1 + 64) count])
    {
      v52 = v5;
      v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = *(v1 + 64);
      v29 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v68;
        v32 = 0x277CBE000uLL;
        v56 = v13;
        v57 = v1;
        v54 = *v68;
        v55 = v21;
        do
        {
          v33 = 0;
          v58 = v30;
          do
          {
            if (*v68 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v67 + 1) + 8 * v33);
            if ([v13 containsObject:v34])
            {
              v60 = v33;
              v35 = [*(v1 + 32) messageList];
              v36 = [v35 messageListItemForItemID:v34];
              v37 = [v36 resultIfAvailable];

              if (v37)
              {
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                v38 = [v37 senderList];
                v39 = [v38 countByEnumeratingWithState:&v63 objects:v75 count:16];
                if (v39)
                {
                  v40 = v39;
                  v41 = *v64;
                  do
                  {
                    v42 = 0;
                    v61 = v40;
                    do
                    {
                      if (*v64 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v43 = *(*(&v63 + 1) + 8 * v42);
                      v44 = [v28 objectForKeyedSubscript:v43];
                      if (!v44 || ([*(v32 + 2920) null], v45 = objc_claimAutoreleasedReturnValue(), v45, v44 == v45))
                      {
                        v46 = [v37 businessLogoID];
                        if (v46)
                        {
                          [v28 setObject:v46 forKeyedSubscript:v43];
                        }

                        else
                        {
                          [*(v32 + 2920) null];
                          v47 = v41;
                          v48 = v38;
                          v49 = v37;
                          v51 = v50 = v32;
                          [v28 setObject:v51 forKeyedSubscript:v43];

                          v32 = v50;
                          v37 = v49;
                          v38 = v48;
                          v41 = v47;
                          v40 = v61;
                        }
                      }

                      ++v42;
                    }

                    while (v40 != v42);
                    v40 = [v38 countByEnumeratingWithState:&v63 objects:v75 count:16];
                  }

                  while (v40);
                }

                v13 = v56;
                v1 = v57;
                v31 = v54;
                v21 = v55;
                v30 = v58;
              }

              v33 = v60;
            }

            ++v33;
          }

          while (v33 != v30);
          v30 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
        }

        while (v30);
      }

      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __123__MessageListSectionDataSource_collection_changedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_113;
      v62[3] = &unk_278189440;
      v62[4] = *(v1 + 32);
      [v28 enumerateKeysAndObjectsUsingBlock:v62];

      v5 = v52;
    }

    [*(v1 + 32) _reloadItemsWithItemIDs:v13];
  }

  else
  {
    v5 = [v4 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v1 + 32);
      v7 = [*(v1 + 40) ef_publicDescription];
      v8 = *(v1 + 48);
      v9 = *(v1 + 56);
      v10 = *(v1 + 64);
      *buf = 134219010;
      v79 = v6;
      v80 = 2114;
      v81 = v7;
      v82 = 2114;
      v83 = v8;
      v84 = 2114;
      v85 = v9;
      v86 = 2114;
      v87 = v10;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore changed item ids: %{public}@, item ids with count changes: %{public}@, item ids with brand indicator changes: %{public}@", buf, 0x34u);
    }
  }
}

void __123__MessageListSectionDataSource_collection_changedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_113(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = MEMORY[0x277CBEB68];
  v6 = a2;
  v7 = [v5 null];

  if (v7 == v9)
  {

    v9 = 0;
  }

  v8 = [*(a1 + 32) avatarGenerator];
  [v8 removeCachedAvatarImagesForAuthenticatedMessagesWithEmailAddress:v6 businessLogoID:v9];
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__MessageListSectionDataSource_collection_replacedExistingItemID_withNewItemID___block_invoke;
  v17[3] = &unk_278188C50;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v11 = v17;
  v12 = MEMORY[0x277D071B8];
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = [v12 mainThreadScheduler];
  [v16 performBlock:v11];
}

void __80__MessageListSectionDataSource_collection_replacedExistingItemID_withNewItemID___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] messageList];
  v3 = a1[5];

  if (v2 == v3)
  {
    v9 = [a1[6] isEqual:a1[7]];
    v10 = a1[4];
    if (v9)
    {
      v11 = [a1[4] log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = a1[4];
        v13 = a1[6];
        v14 = a1[7];
        *buf = 134218498;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        *&buf[22] = 2112;
        *&buf[24] = v14;
        _os_log_error_impl(&dword_214A5E000, v11, OS_LOG_TYPE_ERROR, "%p: Replaced existingItemID: %@ same as newItemID %@", buf, 0x20u);
      }

      memset(buf, 170, sizeof(buf));
      *&buf[32] = 0;
      *v20 = 0xE00000001;
      v21 = 1;
      v22 = getpid();
      v18 = 648;
      if (!sysctl(v20, 4u, buf, &v18, 0, 0) && (*&buf[32] & 0x800) != 0)
      {
        __debugbreak();
        JUMPOUT(0x214ABEDBCLL);
      }
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __80__MessageListSectionDataSource_collection_replacedExistingItemID_withNewItemID___block_invoke_115;
      v15[3] = &unk_2781893F0;
      v15[4] = v10;
      v16 = a1[6];
      v17 = a1[7];
      [v10 _performDataSourceUpdateAnimated:0 cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v15 completion:0];
    }
  }

  else
  {
    v4 = [a1[4] log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = [a1[5] ef_publicDescription];
      v7 = a1[6];
      v8 = a1[7];
      *buf = 134218754;
      *&buf[4] = v5;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2114;
      *&buf[24] = v7;
      *&buf[32] = 2114;
      *&buf[34] = v8;
      _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore replaced item id: %{public}@, with new item id: %{public}@", buf, 0x2Au);
    }
  }
}

id __80__MessageListSectionDataSource_collection_replacedExistingItemID_withNewItemID___block_invoke_115(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__MessageListSectionDataSource_collection_replacedExistingItemID_withNewItemID___block_invoke_115_cold_1();
  }

  if ([v3 indexOfItemIdentifier:*(a1 + 40)] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v12[0] = *(a1 + 48);
    v5 = 1;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v3 insertItemsWithIdentifiers:v6 beforeItemWithIdentifier:*(a1 + 40)];

    v11 = *(a1 + 40);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v3 deleteItemsWithIdentifiers:v7];

    v8 = [*(a1 + 32) collectionHelper];
    [v8 removePendingReadCancelablesForItemID:*(a1 + 40)];
  }

  v9 = [MUIMessageListSectionDataSourceChange updated:v5];

  return v9;
}

- (void)collection:(id)a3 deletedItemIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__MessageListSectionDataSource_collection_deletedItemIDs___block_invoke;
  v13[3] = &unk_278189490;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v13;
  v9 = MEMORY[0x277D071B8];
  v10 = v7;
  v11 = v6;
  v12 = [v9 mainThreadScheduler];
  [v12 performBlock:v8];
}

void __58__MessageListSectionDataSource_collection_deletedItemIDs___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messageList];
  v3 = *(a1 + 40);

  v4 = *(a1 + 32);
  if (v2 == v3)
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);

    [v4 _deleteItemsWithIDs:v9 fromCollection:v10 animated:1 useImmediateCompletion:0 completionHandler:0];
  }

  else
  {
    v5 = [v4 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) ef_publicDescription];
      v8 = *(a1 + 48);
      v11 = 134218498;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore deleted item ids: %{public}@", &v11, 0x20u);
    }
  }
}

- (void)didFinishRecoveryForCollection:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__MessageListSectionDataSource_didFinishRecoveryForCollection___block_invoke;
  v9[3] = &unk_278188F78;
  v9[4] = self;
  v10 = v4;
  v5 = v9;
  v6 = MEMORY[0x277D071B8];
  v7 = v4;
  v8 = [v6 mainThreadScheduler];
  [v8 performBlock:v5];
}

void __63__MessageListSectionDataSource_didFinishRecoveryForCollection___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) messageList];
  v4 = *(a1 + 40);

  v5 = *v2;
  if (v3 == v4)
  {
    os_unfair_lock_lock(v5 + 4);
    v9 = [*(a1 + 32) isRefreshing];
    [*(a1 + 32) setIsRefreshing:0];
    os_unfair_lock_unlock(v5 + 4);
    v10 = [*(a1 + 32) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) ef_publicDescription];
      *buf = 134218498;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "%p: Did finish recovery for collection: %@ from refresh: %{BOOL}d", buf, 0x1Cu);
    }

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (v9)
    {
      [*(a1 + 32) _recoverFailedItemIDsIfNeededForCollection:v13 excluding:0 completion:0];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __63__MessageListSectionDataSource_didFinishRecoveryForCollection___block_invoke_116;
      v15[3] = &unk_2781894B8;
      v15[4] = v14;
      v16 = v13;
      [v14 _reloadPreparedItemIDsForCollection:v16 completion:v15];
    }
  }

  else
  {
    v6 = [(os_unfair_lock_s *)v5 log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) ef_publicDescription];
      *buf = 134218242;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore did finish recover for collection", buf, 0x16u);
    }
  }
}

- (void)didFinishRemoteSearchForCollection:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__MessageListSectionDataSource_didFinishRemoteSearchForCollection___block_invoke;
  v9[3] = &unk_278188F78;
  v9[4] = self;
  v10 = v4;
  v5 = v9;
  v6 = MEMORY[0x277D071B8];
  v7 = v4;
  v8 = [v6 mainThreadScheduler];
  [v8 performBlock:v5];
}

void __67__MessageListSectionDataSource_didFinishRemoteSearchForCollection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messageList];
  v3 = *(a1 + 40);

  v4 = *(a1 + 32);
  if (v2 == v3)
  {
    v8 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 messageListSectionDataSource:*(a1 + 32) collectionFinishedSearching:*(a1 + 40) remote:1 searchInfo:0];
    }
  }

  else
  {
    v5 = [v4 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) ef_publicDescription];
      *buf = 134218242;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore did finish remove search for collection", buf, 0x16u);
    }
  }
}

- (void)collection:(id)a3 didFinishInitialLoadForThreadWithItemID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__MessageListSectionDataSource_collection_didFinishInitialLoadForThreadWithItemID___block_invoke;
  v13[3] = &unk_278189490;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v13;
  v9 = MEMORY[0x277D071B8];
  v10 = v7;
  v11 = v6;
  v12 = [v9 mainThreadScheduler];
  [v12 performBlock:v8];
}

void __83__MessageListSectionDataSource_collection_didFinishInitialLoadForThreadWithItemID___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] messageList];
  v3 = a1[5];

  v4 = a1[4];
  if (v2 == v3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__MessageListSectionDataSource_collection_didFinishInitialLoadForThreadWithItemID___block_invoke_120;
    v10[3] = &unk_278188F78;
    v10[4] = v4;
    v9 = a1[5];
    v11 = a1[6];
    [v4 _recoverFailedItemIDsIfNeededForCollection:v9 completion:v10];
  }

  else
  {
    v5 = [a1[4] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = [a1[5] ef_publicDescription];
      v8 = a1[6];
      *buf = 134218498;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - did finish initial load for thread with item id: %{public}@", buf, 0x20u);
    }
  }
}

void __83__MessageListSectionDataSource_collection_didFinishInitialLoadForThreadWithItemID___block_invoke_120(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__MessageListSectionDataSource_collection_didFinishInitialLoadForThreadWithItemID___block_invoke_2;
  v3[3] = &unk_278188F78;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  v2 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v2 performBlock:v3];
}

void __83__MessageListSectionDataSource_collection_didFinishInitialLoadForThreadWithItemID___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_214A5E000, v2, OS_LOG_TYPE_DEFAULT, "%p: Finish initial load for thread: %@", &v6, 0x16u);
  }

  v5 = [*(a1 + 32) threadHelper];
  [v5 removeExpandingThreadWithItemID:*(a1 + 40)];
}

- (void)collectionDidFinishInitialLoad:(id)a3 searchInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__MessageListSectionDataSource_collectionDidFinishInitialLoad_searchInfo___block_invoke;
  v13[3] = &unk_278189490;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v13;
  v9 = MEMORY[0x277D071B8];
  v10 = v7;
  v11 = v6;
  v12 = [v9 mainThreadScheduler];
  [v12 performBlock:v8];
}

void __74__MessageListSectionDataSource_collectionDidFinishInitialLoad_searchInfo___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] messageList];
  v3 = a1[5];

  v4 = a1[4];
  if (v2 == v3)
  {
    v8 = a1[5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__MessageListSectionDataSource_collectionDidFinishInitialLoad_searchInfo___block_invoke_121;
    v9[3] = &unk_278189490;
    v9[4] = v4;
    v10 = v8;
    v11 = a1[6];
    [v4 _recoverFailedItemIDsIfNeededForCollection:v10 completion:v9];
  }

  else
  {
    v5 = [a1[4] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = [a1[5] ef_publicDescription];
      *buf = 134218242;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore did finish initial load", buf, 0x16u);
    }
  }
}

void __74__MessageListSectionDataSource_collectionDidFinishInitialLoad_searchInfo___block_invoke_121(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__MessageListSectionDataSource_collectionDidFinishInitialLoad_searchInfo___block_invoke_2;
  v4[3] = &unk_278189490;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v2;
  v6 = *(a1 + 48);
  v3 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v3 performBlock:v4];
}

void __74__MessageListSectionDataSource_collectionDidFinishInitialLoad_searchInfo___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 134218240;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_214A5E000, v2, OS_LOG_TYPE_DEFAULT, "%p: Finish initial load for collection: %p", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) initialLoadCompletedPromise];
  [v5 finishWithResult:MEMORY[0x277CBEC38]];

  v6 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 messageListSectionDataSource:*(a1 + 32) collectionFinishedSearching:*(a1 + 40) remote:0 searchInfo:*(a1 + 48)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 messageListSectionDataSourceDidFinishInitialLoad:*(a1 + 32)];
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"kMessageListItemsFinishedLoad" object:*(a1 + 40)];
}

- (void)collectionDidFailInitialLoad:(id)a3 searchInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__MessageListSectionDataSource_collectionDidFailInitialLoad_searchInfo___block_invoke;
  v13[3] = &unk_278189490;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v13;
  v9 = MEMORY[0x277D071B8];
  v10 = v7;
  v11 = v6;
  v12 = [v9 mainThreadScheduler];
  [v12 performBlock:v8];
}

void __72__MessageListSectionDataSource_collectionDidFailInitialLoad_searchInfo___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) messageList];
  v4 = *(a1 + 40);

  v5 = [*v2 log];
  v6 = v5;
  if (v3 == v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__MessageListSectionDataSource_collectionDidFailInitialLoad_searchInfo___block_invoke_cold_1();
    }

    v6 = [*v2 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 messageListSectionDataSource:*(a1 + 32) collectionFailedSearching:*(a1 + 40) remote:0 searchInfo:*(a1 + 48)];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v2;
    v8 = [*(a1 + 40) ef_publicDescription];
    v9 = 134218242;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore did fail initial load", &v9, 0x16u);
  }
}

- (void)collection:(id)a3 oldestItemsUpdatedForMailboxes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__MessageListSectionDataSource_collection_oldestItemsUpdatedForMailboxes___block_invoke;
  v13[3] = &unk_278189490;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v13;
  v9 = MEMORY[0x277D071B8];
  v10 = v7;
  v11 = v6;
  v12 = [v9 mainThreadScheduler];
  [v12 performBlock:v8];
}

void __74__MessageListSectionDataSource_collection_oldestItemsUpdatedForMailboxes___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messageList];
  v3 = *(a1 + 40);

  v4 = [*(a1 + 32) log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2 == v3)
  {
    if (v5)
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) ef_publicDescription];
      v11 = 134218498;
      v12 = v9;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "%p: Update oldest items for mailboxes: %{public}@, collection: %{public}@", &v11, 0x20u);
    }

    v4 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 messageListSectionDataSource:*(a1 + 32) updatedOldestItemsForMailboxes:*(a1 + 48)];
    }
  }

  else if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) ef_publicDescription];
    v11 = 134218242;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore updated oldest items", &v11, 0x16u);
  }
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(MessageListSectionDataSource *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MessageListSectionDataSource collection:addedItemIDs:after:]", "MessageListSectionDataSource.m", 762, "0");
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(MessageListSectionDataSource *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MessageListSectionDataSource collection:addedItemIDs:before:]", "MessageListSectionDataSource.m", 766, "0");
}

- (void)collection:(id)a3 changedItemIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(MessageListSectionDataSource *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MessageListSectionDataSource collection:changedItemIDs:]", "MessageListSectionDataSource.m", 770, "0");
}

- (BOOL)messageListItemHelper:(id)a3 anyExpandedThreadContainsItemID:(id)a4
{
  v5 = a4;
  v6 = [(MessageListSectionDataSource *)self messageList];
  v7 = [v6 anyExpandedThreadContainsItemID:v5];

  return v7;
}

- (BOOL)messageListItemHelper:(id)a3 isItemIDExpandedThread:(id)a4
{
  v5 = a4;
  v6 = [(MessageListSectionDataSource *)self messageList];
  v7 = [v6 expandedThreadItemIDs];
  v8 = [v7 containsObject:v5];

  return v8;
}

- (BOOL)messageListItemHelper:(id)a3 isItemIDSelected:(id)a4
{
  v5 = a4;
  v6 = [(MessageListSectionDataSource *)self selectionModelProvider];
  v7 = [v6 selectionModelForMessageListSectionDataSource:self];
  v8 = [v7 isSelectedItemID:v5];

  return v8;
}

- (NSSet)expandedThreadItemIDs
{
  v2 = [(MessageListSectionDataSource *)self messageList];
  v3 = [v2 expandedThreadItemIDs];

  return v3;
}

- (void)messageListThreadHelper:(id)a3 didCollapseMessageListItem:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MessageListSectionDataSource *)self messageList];
    [v5 collapseThread:v6];
  }
}

- (void)messageListThreadHelper:(id)a3 didExpandMessageListItem:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MessageListSectionDataSource *)self messageList];
    [v5 expandThread:v6];
  }
}

- (void)_maybeReloadForTimedOutItemIDs
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_timedOutItemIDsLock);
  v3 = [(MessageListSectionDataSource *)self provider];
  v4 = [v3 shouldReloadMessageListSectionDataSource:self];

  if ((v4 & 1) == 0)
  {
    v9 = [(MessageListSectionDataSource *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = self;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "%p: Skip reload for timed out item ids", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v5 = [(MessageListSectionDataSource *)self timedOutItemIDs];
  v6 = [v5 count];

  if (v6 >= 0xB)
  {
    EFSaveTailspin();
    if (![(MessageListSectionDataSource *)self hasReloadedForTimeOut])
    {
      v7 = [(MessageListSectionDataSource *)self log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(MessageListSectionDataSource *)self timedOutItemIDs];
        *buf = 134218240;
        v14 = self;
        v15 = 2048;
        v16 = [v8 count];
        _os_log_impl(&dword_214A5E000, v7, OS_LOG_TYPE_DEFAULT, "%p: Triggering a reload for %lu timed out itemIDs", buf, 0x16u);
      }

      [(MessageListSectionDataSource *)self setHasReloadedForTimeOut:1];
      v9 = [(MessageListSectionDataSource *)self timedOutItemIDs];
      v10 = [MEMORY[0x277CBEB58] set];
      [(MessageListSectionDataSource *)self setTimedOutItemIDs:v10];

      if ([v9 count])
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __62__MessageListSectionDataSource__maybeReloadForTimedOutItemIDs__block_invoke;
        v11[3] = &unk_2781894E0;
        v11[4] = self;
        v9 = v9;
        v12 = v9;
        [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:0 cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v11 completion:0];
      }

LABEL_10:
    }
  }

  os_unfair_lock_unlock(&self->_timedOutItemIDsLock);
}

id __62__MessageListSectionDataSource__maybeReloadForTimedOutItemIDs__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __62__MessageListSectionDataSource__maybeReloadForTimedOutItemIDs__block_invoke_cold_1();
  }

  v6 = [*(a1 + 40) allObjects];
  v7 = [v3 mui_validItemIDsFromExistingItemIDs:v6 updateReason:@"Reload timedOutitemIDs"];

  v8 = [*(a1 + 32) log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *v4;
    *buf = 134218242;
    v20 = v9;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "%p: Reloading itemIDs: %@", buf, 0x16u);
  }

  v10 = [v7 count];
  v11 = [v7 count];
  if (v11 == [*(a1 + 40) count])
  {
    [v3 reloadItemsWithIdentifiers:v7];
  }

  else
  {
    v12 = [*v4 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 134218498;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v7;
      _os_log_error_impl(&dword_214A5E000, v12, OS_LOG_TYPE_ERROR, "%p: timedOutItemIDs: %@ has diverged from itemIDs: %@, reload data source", buf, 0x20u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__MessageListSectionDataSource__maybeReloadForTimedOutItemIDs__block_invoke_136;
    v18[3] = &unk_278188BB0;
    v18[4] = *v4;
    v13 = [MEMORY[0x277D071B8] mainThreadScheduler];
    [v13 performBlock:v18];

    v10 = 0;
  }

  v14 = [MUIMessageListSectionDataSourceChange updated:v10];

  return v14;
}

- (void)_addedItemIDs:(id)a3 before:(BOOL)a4 existingItemID:(id)a5 toThreadWithItemID:(id)a6 inCollection:(id)a7 isLastObserver:(BOOL)a8
{
  v8 = a8;
  v12 = a4;
  v64 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v26 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MessageListSectionDataSource *)self messageList];

  if (v17 == v16)
  {
    v18 = [(MessageListSectionDataSource *)self provider];
    if (v18)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v59 = __Block_byref_object_copy__0;
      v60 = __Block_byref_object_dispose__0;
      v61 = [v14 copy];
      v54[0] = 0;
      v54[1] = v54;
      v54[2] = 0x2020000000;
      v55 = -86;
      v52[0] = 0;
      v52[1] = v52;
      v52[2] = 0x2020000000;
      v53 = -86;
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x2020000000;
      v51 = -86;
      v20 = [(MessageListSectionDataSource *)self signpostLog];
      v21 = os_signpost_id_generate(v20);

      v22 = [(MessageListSectionDataSource *)self signpostLog];
      v23 = v22;
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        v24 = [*(*&buf[8] + 40) count];
        *v56 = 134217984;
        v57 = v24;
        _os_signpost_emit_with_name_impl(&dword_214A5E000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "MessageListViewControllerAddedItemsBatch", "itemIDsCount=%ld enableTelemetry=YES ", v56, 0xCu);
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke;
      v40[3] = &unk_278189530;
      v40[4] = self;
      v45 = v54;
      v41 = v15;
      v46 = v52;
      v47 = v50;
      v48 = buf;
      v42 = v14;
      v49 = v12;
      v43 = v26;
      v44 = v16;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke_146;
      v34[3] = &unk_278189558;
      v39 = v12;
      v34[4] = self;
      v37 = buf;
      v35 = v43;
      v36 = v41;
      v38 = v50;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke_2_147;
      v27[3] = &unk_278189580;
      v28 = v44;
      v29 = self;
      v30 = buf;
      v31 = v54;
      v32 = v52;
      v33 = v21;
      [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:1 cleanSnapshot:0 isLastUpdate:v8 prepare:v40 update:v34 completion:v27];

      _Block_object_dispose(v50, 8);
      _Block_object_dispose(v52, 8);
      _Block_object_dispose(v54, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v25 = objc_opt_self();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MessageListSectionDataSource _addedItemIDs:v25 before:? existingItemID:? toThreadWithItemID:? inCollection:? isLastObserver:?];
      }
    }
  }

  else
  {
    v18 = [(MessageListSectionDataSource *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 ef_publicDescription];
      *buf = 134219266;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v19;
      *&buf[22] = 2114;
      v59 = v14;
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v12;
      HIWORD(v60) = 2114;
      v61 = v26;
      v62 = 2114;
      v63 = v15;
      _os_log_impl(&dword_214A5E000, v18, OS_LOG_TYPE_DEFAULT, "%p: Collection (%{public}@) is stale - ignore added item ids: %{public}@, before: %{BOOL}d, existingItemID: %{public}@, threadItemID: %{public}@", buf, 0x3Au);
    }
  }
}

void __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) threadHelper];
  v4 = [*v2 selectionModelProvider];
  v5 = [v4 selectionModelForMessageListSectionDataSource:*v2];

  *(*(v2[5] + 8) + 24) = [v3 isThreadExpandingWithItemID:v2[1]];
  v6 = [v5 isSelectAll];
  *(*(v2[6] + 8) + 24) = [v5 isSelectedItemID:v2[1]];
  if ((*(*(v2[5] + 8) + 24) & 1) != 0 || !v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      LOBYTE(v7) = *(*(*(a1 + 80) + 8) + 24) ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  *(*(*(a1 + 88) + 8) + 24) = v7 & 1;
  v8 = a1 + 96;
  v9 = *(*(*(a1 + 96) + 8) + 40);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke_2;
  v26[3] = &unk_278189508;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v32 = *(a1 + 104);
  v12 = *(a1 + 56);
  v13 = *(a1 + 40);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v27 = v15;
  v28 = v14;
  v16 = *(a1 + 64);
  v17 = *(a1 + 88);
  v29 = v16;
  v30 = v17;
  v33 = v6;
  v34 = 1;
  v31 = *(a1 + 72);
  [v10 _enumerateItemIDs:v9 block:v26];
  v18 = [MEMORY[0x277D07148] currentDevice];
  v19 = [v18 isInternal];

  if ((v19 & 1) == 0)
  {
    v20 = [MEMORY[0x277CBEB40] orderedSetWithArray:*(*(*v8 + 8) + 40)];
    v21 = [v20 count];
    if (v21 != [*(*(*v8 + 8) + 40) count])
    {
      v22 = [*v2 log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke_cold_1();
      }

      v23 = [v20 array];
      v24 = *(*v8 + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }
  }
}

void __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a4 == 1)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) count];
      if (*(a1 + 96))
      {
        v11 = @"before";
      }

      else
      {
        v11 = @"after";
      }

      v12 = *(a1 + 48);
      v13 = [v7 ef_shortDescriptionString];
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v16 = *(*(*(a1 + 72) + 8) + 24);
      v17 = *(a1 + 97);
      v18 = *(a1 + 98);
      v19 = *(*(*(a1 + 80) + 8) + 24);
      v20 = *(*(*(a1 + 88) + 8) + 24);
      v45 = 134220802;
      v46 = v9;
      v47 = 2048;
      v48 = v10;
      v49 = 2114;
      v50 = v11;
      v51 = 2112;
      v52 = v12;
      v53 = 2112;
      v54 = v13;
      v55 = 2112;
      v56 = v14;
      v57 = 2048;
      v58 = v15;
      v59 = 1024;
      *v60 = v16;
      *&v60[4] = 1024;
      *&v60[6] = v17;
      LOWORD(v61) = 1024;
      *(&v61 + 2) = v18;
      HIWORD(v61) = 1024;
      *v62 = v19;
      *&v62[4] = 1024;
      *v63 = v20;
      _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "%p: Added %lu item IDs %{public}@ %@: %@. To Thread: %@ for Message List: %p. Should deselect expanding items: %d (Select All: %d, Initial Load Completed: %d, Is Expanding: %d, Parent is selected: %d)", &v45, 0x66u);
    }
  }

  else
  {
    if (a3 != 1)
    {
      v33 = [*(a1 + 32) log];
      v8 = v33;
      if (a3 == a4)
      {
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v34 = *(a1 + 32);
        v35 = [*(a1 + 40) count];
        if (*(a1 + 96))
        {
          v36 = @"before";
        }

        else
        {
          v36 = @"after";
        }

        v37 = *(a1 + 48);
        v38 = [v7 ef_shortDescriptionString];
        v45 = 134219522;
        v46 = v34;
        v47 = 2048;
        v48 = v35;
        v49 = 2114;
        v50 = v36;
        v51 = 2112;
        v52 = v37;
        v53 = 2048;
        v54 = a4;
        v55 = 2048;
        v56 = a4;
        v57 = 2112;
        v58 = v38;
        v39 = v8;
        v40 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          goto LABEL_25;
        }

        v41 = *(a1 + 32);
        v42 = [*(a1 + 40) count];
        if (*(a1 + 96))
        {
          v43 = @"before";
        }

        else
        {
          v43 = @"after";
        }

        v44 = *(a1 + 48);
        v38 = [v7 ef_shortDescriptionString];
        v45 = 134219522;
        v46 = v41;
        v47 = 2048;
        v48 = v42;
        v49 = 2114;
        v50 = v43;
        v51 = 2112;
        v52 = v44;
        v53 = 2048;
        v54 = a3;
        v55 = 2048;
        v56 = a4;
        v57 = 2112;
        v58 = v38;
        v39 = v8;
        v40 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_214A5E000, v39, v40, "%p: Added %lu item IDs %{public}@ %@ (log %lu/%lu): %@.", &v45, 0x48u);

      goto LABEL_25;
    }

    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = [*(a1 + 40) count];
      if (*(a1 + 96))
      {
        v23 = @"before";
      }

      else
      {
        v23 = @"after";
      }

      v24 = *(a1 + 48);
      v25 = [v7 ef_shortDescriptionString];
      v26 = *(a1 + 56);
      v27 = *(a1 + 64);
      v28 = *(*(*(a1 + 72) + 8) + 24);
      v29 = *(a1 + 97);
      v30 = *(a1 + 98);
      v31 = *(*(*(a1 + 80) + 8) + 24);
      v32 = *(*(*(a1 + 88) + 8) + 24);
      v45 = 134221314;
      v46 = v21;
      v47 = 2048;
      v48 = v22;
      v49 = 2114;
      v50 = v23;
      v51 = 2112;
      v52 = v24;
      v53 = 2048;
      v54 = 1;
      v55 = 2048;
      v56 = a4;
      v57 = 2112;
      v58 = v25;
      v59 = 2112;
      *v60 = v26;
      *&v60[8] = 2048;
      v61 = v27;
      *v62 = 1024;
      *&v62[2] = v28;
      *v63 = 1024;
      *&v63[2] = v29;
      v64 = 1024;
      v65 = v30;
      v66 = 1024;
      v67 = v31;
      v68 = 1024;
      v69 = v32;
      _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "%p: Added %lu item IDs %{public}@ %@ (log %lu/%lu): %@. To Thread: %@ for Message List: %p. Should deselect expanding items: %d (Select All: %d, Initial Load Completed: %d, Is Expanding: %d, Parent is selected: %d)", &v45, 0x7Au);
    }
  }

LABEL_25:
}

id __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 numberOfItemsInSection:v6];
  v8 = *(a1 + 72);
  v9 = [*(a1 + 32) collectionHelper];
  v10 = v9;
  v11 = *(*(*(a1 + 56) + 8) + 40);
  v12 = *(a1 + 40);
  if (v8 == 1)
  {
    v13 = [v9 addItemIDs:v11 before:v12 snapshot:v5 section:v6 validateOtherSections:1];
  }

  else
  {
    v13 = [v9 addItemIDs:v11 after:v12 snapshot:v5 section:v6 validateOtherSections:1];
  }

  v14 = v13;

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) _updateSelectionStateForItemsWithIDs:*(*(*(a1 + 56) + 8) + 40) inThreadWithItemID:*(a1 + 48) snapshot:v5 shouldDeselectMessages:*(*(*(a1 + 64) + 8) + 24)];
  }

  v15 = [MUIMessageListSectionDataSourceChange added:v14 isFirstChange:v7 == 0];

  return v15;
}

void __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke_2_147(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"kMessageListItemsFirstBatchRetrieved" object:*(a1 + 32)];

  v3 = [*(a1 + 40) delegate];
  [v3 messageListSectionDataSource:*(a1 + 40) didAddMessagesWithItemIdentifiers:*(*(*(a1 + 48) + 8) + 40)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [v3 messageListSectionDataSource:*(a1 + 40) addMessagesToStackWithItemIDs:*(*(*(a1 + 48) + 8) + 40)];
  }

  v4 = [*(a1 + 40) signpostLog];
  v5 = v4;
  v6 = *(a1 + 72);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_214A5E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "MessageListViewControllerAddedItemsBatch", "", v7, 2u);
  }
}

- (void)_enumerateItemIDs:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = vcvtpd_u64_f64([v5 count] / 200.0);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__MessageListSectionDataSource__enumerateItemIDs_block___block_invoke;
  v9[3] = &unk_2781895A8;
  v8 = v6;
  v10 = v8;
  v11 = v13;
  v12 = v7;
  [v5 ef_enumerateObjectsInBatchesOfSize:200 block:v9];

  _Block_object_dispose(v13, 8);
}

uint64_t __56__MessageListSectionDataSource__enumerateItemIDs_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++*(*(*(a1 + 40) + 8) + 24);
  return (*(v1 + 16))(v1);
}

- (void)_deleteItemsWithIDs:(id)a3 fromCollection:(id)a4 animated:(BOOL)a5 useImmediateCompletion:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__0;
  v23[4] = __Block_byref_object_dispose__0;
  v24 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __117__MessageListSectionDataSource__deleteItemsWithIDs_fromCollection_animated_useImmediateCompletion_completionHandler___block_invoke;
  v22[3] = &unk_2781895D0;
  v22[4] = self;
  v22[5] = v23;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __117__MessageListSectionDataSource__deleteItemsWithIDs_fromCollection_animated_useImmediateCompletion_completionHandler___block_invoke_2;
  v20[3] = &unk_2781894E0;
  v20[4] = self;
  v21 = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __117__MessageListSectionDataSource__deleteItemsWithIDs_fromCollection_animated_useImmediateCompletion_completionHandler___block_invoke_152;
  v16[3] = &unk_2781895F8;
  v14 = v13;
  v18 = v14;
  v16[4] = self;
  v15 = v21;
  v17 = v15;
  v19 = v23;
  [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:v8 cleanSnapshot:0 isLastUpdate:1 prepare:v22 update:v20 completion:v16];

  _Block_object_dispose(v23, 8);
}

uint64_t __117__MessageListSectionDataSource__deleteItemsWithIDs_fromCollection_animated_useImmediateCompletion_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) threadHelper];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

id __117__MessageListSectionDataSource__deleteItemsWithIDs_fromCollection_animated_useImmediateCompletion_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) count];
    v11 = *(a1 + 40);
    v16 = 134218498;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "%p: deletedItemIDs(%ld): %@", &v16, 0x20u);
  }

  v12 = [v5 mui_validItemIDsFromExistingItemIDs:*(a1 + 40) section:v7 updateReason:@"Deleting itemIDs"];

  v13 = [v12 count];
  if (v13)
  {
    [v5 deleteItemsWithIdentifiers:v12];
  }

  v14 = [MUIMessageListSectionDataSourceChange removed:v13];

  return v14;
}

void __117__MessageListSectionDataSource__deleteItemsWithIDs_fromCollection_animated_useImmediateCompletion_completionHandler___block_invoke_152(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) provider];
  v4 = [v3 snapshotForMessageListSectionDataSource:*(a1 + 32)];

  v5 = [v4 mui_validItemIDsFromExistingItemIDs:*(a1 + 40) updateReason:@"Reloading itemIDs after Delete"];
  v6 = [*(*(*(a1 + 56) + 8) + 40) itemIDsForReloadAfterDeletingItemIDs:v5 snapshot:v4];
  if ([v6 count])
  {
    [*(a1 + 32) _reloadItemsWithItemIDs:v6];
  }

  v7 = [*(a1 + 32) failedItemIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __117__MessageListSectionDataSource__deleteItemsWithIDs_fromCollection_animated_useImmediateCompletion_completionHandler___block_invoke_2_156;
  v11[3] = &unk_278188CA8;
  v12 = *(a1 + 40);
  [v7 performWhileLocked:v11];

  v8 = *(a1 + 32);
  os_unfair_lock_lock(v8 + 2);
  v9 = [*(a1 + 32) timedOutItemIDs];
  [v9 ef_removeObjectsInArray:*(a1 + 40)];

  os_unfair_lock_unlock(v8 + 2);
  v10 = [*(a1 + 32) delegate];
  [v10 messageListSectionDataSource:*(a1 + 32) deletedMessagesWithItemIdentifiers:*(a1 + 40)];
}

- (void)_reloadPreparedItemIDsForCollection:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(MessageListSectionDataSource *)self _preparedMessageListItemIDs];
  if ([v6 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__MessageListSectionDataSource__reloadPreparedItemIDsForCollection_completion___block_invoke;
    v7[3] = &unk_278189620;
    v8 = v6;
    v9 = self;
    v10 = v5;
    [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:0 cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v7 completion:0];
  }

  else
  {
    (*(v5 + 2))(v5, v6);
  }
}

id __79__MessageListSectionDataSource__reloadPreparedItemIDsForCollection_completion___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 mui_validItemIDsFromExistingItemIDs:v3 updateReason:@"Reloading visible itemIDs"];
  v6 = [v5 count];
  v7 = [*(a1 + 32) count];
  v8 = [*(a1 + 40) log];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6 == v7)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 40);
    v23 = 134218498;
    v24 = v10;
    v25 = 2048;
    v26 = [v5 count];
    v27 = 2112;
    v28 = v5;
    v11 = "%p: Reloading prepared itemIDs (%ld): %@";
    v12 = v8;
    v13 = 32;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 40);
    v15 = [v5 count];
    v16 = [*(a1 + 32) count];
    v23 = 134218754;
    v24 = v14;
    v25 = 2048;
    v26 = v15;
    v27 = 2048;
    v28 = v16;
    v29 = 2112;
    v30 = v5;
    v11 = "%p: Reloading prepared itemIDs (%ld valid out of %ld total): %@";
    v12 = v8;
    v13 = 42;
  }

  _os_log_impl(&dword_214A5E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v23, v13);
LABEL_7:

  [v4 reloadItemsWithIdentifiers:v5];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v17, v18, v19, v20);
  v21 = +[MUIMessageListSectionDataSourceChange updated:](MUIMessageListSectionDataSourceChange, "updated:", [v5 count]);

  return v21;
}

- (void)_performDataSourceUpdateAnimated:(BOOL)a3 cleanSnapshot:(BOOL)a4 isLastUpdate:(BOOL)a5 prepare:(id)a6 update:(id)a7 completion:(id)a8
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  os_unfair_lock_lock(&self->_nextUpdateNeedsCleanSnapshotLock);
  if ([(MessageListSectionDataSource *)self nextUpdateNeedsCleanSnapshot])
  {
    [(MessageListSectionDataSource *)self setNextUpdateNeedsCleanSnapshot:0];
    v11 = 1;
  }

  os_unfair_lock_unlock(&self->_nextUpdateNeedsCleanSnapshotLock);
  v17 = [(MessageListSectionDataSource *)self provider];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __118__MessageListSectionDataSource__performDataSourceUpdateAnimated_cleanSnapshot_isLastUpdate_prepare_update_completion___block_invoke;
  v19[3] = &unk_278189648;
  v19[4] = self;
  v20 = v15;
  v18 = v15;
  [v17 messageListSectionDataSource:self performUpdateAnimated:v12 cleanSnapshot:v11 isLastUpdate:v10 prepare:v14 update:v19 completion:v16];
}

id __118__MessageListSectionDataSource__performDataSourceUpdateAnimated_cleanSnapshot_isLastUpdate_prepare_update_completion___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [*(a1 + 32) threadHelper];
  v4 = [v3 popItemIDsNeedingReloadPostUpdate];

  if ([v4 count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __118__MessageListSectionDataSource__performDataSourceUpdateAnimated_cleanSnapshot_isLastUpdate_prepare_update_completion___block_invoke_2;
    v14[3] = &unk_278188D48;
    v14[4] = *(a1 + 32);
    v5 = [v4 ef_filter:v14];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __118__MessageListSectionDataSource__performDataSourceUpdateAnimated_cleanSnapshot_isLastUpdate_prepare_update_completion___block_invoke_3;
    v11[3] = &unk_278188F78;
    v6 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    v7 = MEMORY[0x277D071B8];
    v8 = v5;
    v9 = [v7 mainThreadScheduler];
    [v9 performBlock:v11];
  }

  return v2;
}

BOOL __118__MessageListSectionDataSource__performDataSourceUpdateAnimated_cleanSnapshot_isLastUpdate_prepare_update_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 provider];
  v6 = [v5 messageListSectionDataSource:*(a1 + 32) indexPathForItemIdentifier:v4];

  return v6 != 0;
}

uint64_t __118__MessageListSectionDataSource__performDataSourceUpdateAnimated_cleanSnapshot_isLastUpdate_prepare_update_completion___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _reloadItemsWithItemIDs:v4];
  }

  return result;
}

- (id)_preparedMessageListItemIDs
{
  v3 = [(MessageListSectionDataSource *)self collectionView];
  v4 = [v3 mui_indexPathsForPreparedItems];

  v5 = [(MessageListSectionDataSource *)self provider];
  v6 = [v5 snapshotForMessageListSectionDataSource:self];
  v7 = [v6 mui_validItemIDsFromIndexPaths:v4];

  return v7;
}

- (void)_reloadItemsWithItemIDs:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__MessageListSectionDataSource__reloadItemsWithItemIDs___block_invoke;
  v9[3] = &unk_278188F78;
  v9[4] = self;
  v10 = v4;
  v5 = v9;
  v6 = MEMORY[0x277D071B8];
  v7 = v4;
  v8 = [v6 mainThreadScheduler];
  [v8 performBlock:v5];
}

void __56__MessageListSectionDataSource__reloadItemsWithItemIDs___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) provider];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v3 messageListSectionDataSource:*v2 indexPathsForItemIdentifiers:v5];

  v7 = [v6 count];
  v8 = [*v2 log];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v2;
      v11 = *v4;
      v12 = 134218498;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "%p: Reload items with IDs: %{public}@, at index paths: %{public}@", &v12, 0x20u);
    }

    [*v2 reconfigureItemsAtIndexPaths:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__MessageListSectionDataSource__reloadItemsWithItemIDs___block_invoke_cold_1();
    }
  }
}

- (void)_recoverFailedItemIDsIfNeededForCollection:(id)a3 excluding:(id)a4 completion:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v28 = a4;
  v8 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__MessageListSectionDataSource__recoverFailedItemIDsIfNeededForCollection_excluding_completion___block_invoke;
  aBlock[3] = &unk_2781891C0;
  v26 = v8;
  v45 = v26;
  v27 = _Block_copy(aBlock);
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v9 = [(MessageListSectionDataSource *)self failedItemIDs];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __96__MessageListSectionDataSource__recoverFailedItemIDsIfNeededForCollection_excluding_completion___block_invoke_2;
  v37[3] = &unk_278189670;
  v37[4] = &v38;
  [v9 performWhileLocked:v37];

  if (![v39[5] count] || (-[MessageListSectionDataSource messageList](self, "messageList", v26), v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == v29, v10, v11))
  {
    v12 = [(MessageListSectionDataSource *)self messageList];
    v14 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v39[5];
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v46 count:16];
    if (v16)
    {
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          if (([v12 containsItemID:v19]& 1) == 0)
          {
            v20 = [(MessageListSectionDataSource *)self log];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v48 = self;
              v49 = 2114;
              v50 = v19;
              _os_log_impl(&dword_214A5E000, v20, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ is not part of collection - do not attempt recovery", buf, 0x16u);
            }

            [v14 addObject:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v33 objects:v46 count:16];
      }

      while (v16);
    }

    [v39[5] ef_removeObjectsInArray:v14];
    if ([v39[5] count])
    {
      if ([v28 count])
      {
        v21 = [v39[5] count];
        [v39[5] ef_removeObjectsInArray:v28];
        if ([v39[5] count] != v21)
        {
          v22 = [(MessageListSectionDataSource *)self log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v39[5] count];
            *buf = 134218240;
            v48 = self;
            v49 = 2048;
            v50 = v21 - v23;
            _os_log_impl(&dword_214A5E000, v22, OS_LOG_TYPE_DEFAULT, "%p: Skipping reloading of %ld failedItemIDs", buf, 0x16u);
          }
        }
      }

      if ([v39[5] count])
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __96__MessageListSectionDataSource__recoverFailedItemIDsIfNeededForCollection_excluding_completion___block_invoke_161;
        v30[3] = &unk_278189698;
        v30[4] = self;
        v32 = &v38;
        v31 = v27;
        [(MessageListSectionDataSource *)self _performDataSourceUpdateAnimated:0 cleanSnapshot:0 isLastUpdate:1 prepare:0 update:v30 completion:0];

LABEL_28:
        goto LABEL_29;
      }
    }

    else
    {
      v24 = [(MessageListSectionDataSource *)self log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v29 ef_publicDescription];
        *buf = 134218242;
        v48 = self;
        v49 = 2114;
        v50 = v25;
        _os_log_impl(&dword_214A5E000, v24, OS_LOG_TYPE_DEFAULT, "%p: Skip recovery of collection:%{public}@, no failed item ids", buf, 0x16u);
      }
    }

    v27[2]();
    goto LABEL_28;
  }

  v12 = [(MessageListSectionDataSource *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v29 ef_publicDescription];
    *buf = 134218242;
    v48 = self;
    v49 = 2112;
    v50 = v13;
    _os_log_impl(&dword_214A5E000, v12, OS_LOG_TYPE_DEFAULT, "%p: Skip recovery, collection stale:%@", buf, 0x16u);
  }

LABEL_29:

  _Block_object_dispose(&v38, 8);
}

uint64_t __96__MessageListSectionDataSource__recoverFailedItemIDsIfNeededForCollection_excluding_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __96__MessageListSectionDataSource__recoverFailedItemIDsIfNeededForCollection_excluding_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [v6 removeAllObjects];
}

id __96__MessageListSectionDataSource__recoverFailedItemIDsIfNeededForCollection_excluding_completion___block_invoke_161(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __96__MessageListSectionDataSource__recoverFailedItemIDsIfNeededForCollection_excluding_completion___block_invoke_161_cold_1();
  }

  v6 = [*(*(*(a1 + 48) + 8) + 40) allObjects];
  v7 = [v3 mui_validItemIDsFromExistingItemIDs:v6 updateReason:@"Recovery itemIDs"];

  v8 = [*(a1 + 32) log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *v4;
    *buf = 134218498;
    v22 = v9;
    v23 = 2048;
    v24 = [v7 count];
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "%p: Reloading itemIDs(%ld): %@", buf, 0x20u);
  }

  v10 = [v7 count];
  v11 = [v7 count];
  if (v11 == [*(*(*(a1 + 48) + 8) + 40) count])
  {
    [v3 reloadItemsWithIdentifiers:v7];
  }

  else
  {
    v12 = [*v4 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = [*(*(*(a1 + 48) + 8) + 40) count];
      v18 = *(*(*(a1 + 48) + 8) + 40);
      v19 = [v7 count];
      *buf = 134219010;
      v22 = v16;
      v23 = 2048;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      v27 = 2048;
      v28 = v19;
      v29 = 2112;
      v30 = v7;
      _os_log_error_impl(&dword_214A5E000, v12, OS_LOG_TYPE_ERROR, "%p: failedItemIDs(%ld): %@ has diverged from itemIDs(%ld): %@, reload data source", buf, 0x34u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __96__MessageListSectionDataSource__recoverFailedItemIDsIfNeededForCollection_excluding_completion___block_invoke_165;
    v20[3] = &unk_278188BB0;
    v20[4] = *v4;
    v13 = [MEMORY[0x277D071B8] mainThreadScheduler];
    [v13 performBlock:v20];

    v10 = 0;
  }

  (*(*(a1 + 40) + 16))();
  v14 = [MUIMessageListSectionDataSourceChange updated:v10];

  return v14;
}

- (void)_updateSelectionStateForItemsWithIDs:(id)a3 inThreadWithItemID:(id)a4 snapshot:(id)a5 shouldDeselectMessages:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __120__MessageListSectionDataSource__updateSelectionStateForItemsWithIDs_inThreadWithItemID_snapshot_shouldDeselectMessages___block_invoke;
  v19[3] = &unk_2781896C0;
  v23 = a6;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v13 = v19;
  v14 = MEMORY[0x277D071B8];
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = [v14 mainThreadScheduler];
  [v18 performBlock:v13];
}

void __120__MessageListSectionDataSource__updateSelectionStateForItemsWithIDs_inThreadWithItemID_snapshot_shouldDeselectMessages___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) selectionModelProvider];
  v3 = [v2 selectionModelForMessageListSectionDataSource:*(a1 + 32)];

  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 64);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 134218754;
      v32 = v6;
      v33 = 1024;
      v34 = v5;
      v35 = 2112;
      v36 = v7;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "%p: Update selection (should deselect: %d) for %@ in thread %@", buf, 0x26u);
    }

    v9 = [*(a1 + 56) mui_validItemIDFromExistingItemID:*(a1 + 48) updateReason:@"Adding items"];
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:*(a1 + 40)];
    if (*(a1 + 64) == 1)
    {
      v11 = [v3 deselectItemWithItemID:*(a1 + 48)];
      [v10 addObjectsFromArray:v11];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = *(a1 + 40);
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          v16 = 0;
          do
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [v3 deselectItemWithItemID:{*(*(&v25 + 1) + 8 * v16), v25}];
            [v10 addObjectsFromArray:v17];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v14);
      }
    }

    if (v9)
    {
      v18 = [*(a1 + 32) threadHelper];
      v19 = [v18 itemIDsForReloadAfterInsertingItemsAfterItemID:v9 snapshot:*(a1 + 56)];
      if (v19)
      {
        v20 = *(a1 + 32);
        v21 = [v10 allObjects];
        v22 = [v19 arrayByAddingObjectsFromArray:v21];
        [v20 _reloadItemsWithItemIDs:v22];

        [v3 didExpandThreadItemID:v9 addedItemIDs:*(a1 + 40)];
        v23 = [*(a1 + 40) lastObject];
        v29 = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
        [v18 addItemIDsNeedingReloadPostUpdate:v24];
      }
    }
  }
}

- (void)didSelectDisclosureButtonForMessageListItem:(id)a3 disclosureEnabled:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 itemID];
  if (v7)
  {
    v8 = [(MessageListSectionDataSource *)self messageList];
    v9 = [v8 expandedThreadItemIDs];
    v10 = [v9 containsObject:v7];

    if (v10 == v4)
    {
      v11 = [(MessageListSectionDataSource *)self provider];
      v12 = [v11 messageListSectionDataSource:self indexPathForItemIdentifier:v7];
      v13 = [(MessageListSectionDataSource *)self collectionView];
      v29 = v12;
      v14 = [v13 cellForItemAtIndexPath:v12];

      if ([v14 conformsToProtocol:&unk_2827100B8])
      {
        [v14 setDisclosureEnabled:v4 ^ 1u animated:1];
      }

      v15 = [(MessageListSectionDataSource *)self threadHelper];
      v16 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
      v17 = [v6 itemID];
      v18 = [v11 snapshotForMessageListSectionDataSource:self];
      v19 = [v15 itemIDBeforeItemID:v17 snapshot:v18];

      if (v19)
      {
        [v16 addObject:v19];
      }

      [v15 addItemIDsNeedingReloadPostUpdate:v16];
      v20 = [(MessageListSectionDataSource *)self log];
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        if (v21)
        {
          v22 = [v6 itemID];
          *buf = 134218242;
          v31 = self;
          v32 = 2112;
          v33 = v22;
          _os_log_impl(&dword_214A5E000, v20, OS_LOG_TYPE_DEFAULT, "%p: Collapse thread: %@", buf, 0x16u);
        }

        v23 = [(MessageListSectionDataSource *)self selectionModelProvider];
        v24 = [v23 selectionModelForMessageListSectionDataSource:self];
        v25 = [v6 itemID];
        [v24 willCollapseThreadItemID:v25];

        [v15 collapseMessageListItem:v6];
      }

      else
      {
        if (v21)
        {
          v26 = [v6 itemID];
          *buf = 134218242;
          v31 = self;
          v32 = 2112;
          v33 = v26;
          _os_log_impl(&dword_214A5E000, v20, OS_LOG_TYPE_DEFAULT, "%p: Expand thread: %@", buf, 0x16u);
        }

        v27 = [v6 itemID];
        [v15 addExpandingThreadWithItemID:v27];

        [v15 expandMessageListItem:v6];
      }
    }

    else
    {
      v11 = [(MessageListSectionDataSource *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v31 = self;
        _os_log_impl(&dword_214A5E000, v11, OS_LOG_TYPE_DEFAULT, "%p: Skipping attempting to expand or collapse thread that is already expanded or collapsed", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = [(MessageListSectionDataSource *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MessageListSectionDataSource didSelectDisclosureButtonForMessageListItem:v11 disclosureEnabled:?];
    }
  }
}

- (id)configuredReusableSupplementaryViewForCollectionView:(id)a3 elementKind:(id)a4 indexPath:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:*MEMORY[0x277D767D8]] && -[MessageListSectionDataSource _isSectionHeaderAllowed](self, "_isSectionHeaderAllowed"))
  {
    v11 = [(MessageListSectionDataSource *)self headerRegistration];
    v12 = [v8 dequeueConfiguredReusableSupplementaryViewWithRegistration:v11 forIndexPath:v10];
  }

  else
  {
    v13 = [(MessageListSectionDataSource *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 134219010;
      v16 = self;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2048;
      v24 = [(MessageListSectionDataSource *)self headerType];
      _os_log_error_impl(&dword_214A5E000, v13, OS_LOG_TYPE_ERROR, "%p: unable to configure supplementary view for collectionView:%{public}@ of elementKind:%{public}@ at indexPath:%{public}@, headerType:%lu", &v15, 0x34u);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MessageListSectionDataSource *)self section];
      v7 = [(MessageListSectionDataSource *)v5 section];

      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_recordTailspinForBlankCellWithError:(void *)a1
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 state];
    if ([v4 didRecordTailspin])
    {
      v5 = [a1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v10 = a1;
        _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Tailspin has already been generated in this session", buf, 0xCu);
      }
    }

    else
    {
      [v4 setDidRecordTailspin:1];
      v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"Blank Cell - Error %ld", objc_msgSend(v3, "code")];
      v7 = [v3 ef_underlyingError];

      if (v7)
      {
        v8 = [v3 ef_underlyingError];
        [v6 appendFormat:@" (%ld)", objc_msgSend(v8, "code")];
      }

      EFSaveTailspin();
    }
  }
}

- (void)_showBlankCellAlertWithItemID:(void *)a3 indexPath:(void *)a4 reason:
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [a1 state];
    if ([v10 didAlertOnBlankCell])
    {
      v11 = [a1 log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218498;
        v13 = a1;
        v14 = 2114;
        v15 = v7;
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_214A5E000, v11, OS_LOG_TYPE_DEFAULT, "%p: Blank cell alert controller was already visible. Don't show for itemID: %{public}@, indexPath: %{public}@", &v12, 0x20u);
      }
    }

    else
    {
      [v10 setDidAlertOnBlankCell:1];
      v11 = [a1 delegate];
      [v11 showBlankCellAlertForMessageListSectionDataSource:a1 itemID:v7 indexPath:v8 reason:v9];
    }
  }
}

- (void)_reloadDataSource
{
  if (a1)
  {
    [a1 stopObserving];
    v2 = [a1 messageList];
    v5 = [v2 copy];

    v3 = [a1 delegate];
    v4 = [v3 initialLoadCompletedPromiseForMessageListSectionDataSource:a1];
    [a1 replaceMessageList:v5 initialLoadCompletedPromise:v4];

    [a1 beginObservingAnimated:1 nextUpdateNeedsCleanSnapshot:1];
  }
}

void __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  v6 = [*(a2 + 40) ef_publicDescription];
  v7 = 134218754;
  v8 = a1;
  v9 = 2048;
  v10 = 0x4000000000000000;
  v11 = 2114;
  v12 = v5;
  v13 = 2114;
  v14 = v6;
  _os_log_error_impl(&dword_214A5E000, a3, OS_LOG_TYPE_ERROR, "%p: [Blank cell] Message list item fetch timeout after %.2fs (itemID: %{public}@, indexPath: %{public}@)", &v7, 0x2Au);
}

void __87__MessageListSectionDataSource_messageListItemForItemID_indexPath_receiver_completion___block_invoke_86_cold_1(void **a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *a1;
  v6 = *(a2 + 40);
  v7 = MEMORY[0x277CCACA8];
  v8 = [a3 ef_publicDescription];
  v9 = [v7 stringWithFormat:@"Message list item fetch failed with error: %@.", v8];
  [(MessageListSectionDataSource *)a4 _showBlankCellAlertWithItemID:v5 indexPath:v6 reason:v9];
}

void __80__MessageListSectionDataSource_collection_replacedExistingItemID_withNewItemID___block_invoke_115_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
}

void __72__MessageListSectionDataSource_collectionDidFailInitialLoad_searchInfo___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void __62__MessageListSectionDataSource__maybeReloadForTimedOutItemIDs__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)_addedItemIDs:(uint64_t)a1 before:(NSObject *)a2 existingItemID:toThreadWithItemID:inCollection:isLastObserver:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_214A5E000, a2, OS_LOG_TYPE_ERROR, "%p: Unable to process update - provider is nil", &v2, 0xCu);
}

void __115__MessageListSectionDataSource__addedItemIDs_before_existingItemID_toThreadWithItemID_inCollection_isLastObserver___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void __56__MessageListSectionDataSource__reloadItemsWithItemIDs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void __96__MessageListSectionDataSource__recoverFailedItemIDsIfNeededForCollection_excluding_completion___block_invoke_161_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)didSelectDisclosureButtonForMessageListItem:(uint64_t)a1 disclosureEnabled:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_214A5E000, a2, OS_LOG_TYPE_ERROR, "%p: Message list item id is nil, ignore disclosure button tap", &v2, 0xCu);
}

@end