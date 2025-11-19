@interface MessageListDataSource
+ (OS_os_log)log;
- (BOOL)anyExpandedThreadContainsItemID:(id)a3;
- (BOOL)isExpandedThread:(id)a3;
- (BOOL)isMessagesSection:(id)a3;
- (BOOL)isMessagesSectionAtIndex:(int64_t)a3;
- (BOOL)isSection:(id)a3 atIndex:(int64_t)a4;
- (BOOL)isUpdateQueueSuspended;
- (BOOL)messageListSectionIsVisible:(id)a3;
- (BOOL)shouldDisplaySupplementaryKind:(id)a3 forSectionAtIndex:(int64_t)a4;
- (BOOL)shouldReloadMessageListSectionDataSource:(id)a3;
- (MessageListDataSource)initWithCollectionView:(id)a3;
- (MessageListDataSourceDelegate)delegate;
- (MessageListDataSourceProvider)provider;
- (MessageListSectionUpdate)_removeMessageListSection:(uint64_t)a3 animated:;
- (UICollectionView)collectionView;
- (id)_allDataSources;
- (id)_configuredCellForCollectionView:(void *)a3 indexPath:(void *)a4 itemID:(void *)a5 cellIdentifier:;
- (id)_createSectionDataSourceForSection:(void *)a3 messageList:;
- (id)_dataSourceContainingItemID:(void *)a1;
- (id)_dataSourceForSection:(id)a1;
- (id)_dataSourceForSectionIndex:(id)a1;
- (id)_groupMessagesListItemIDsBySection:(void *)a3 snapshot:;
- (id)_indexPathsForPreparedItems;
- (id)_supplementaryViewForCollectionView:(void *)a3 elementKind:(void *)a4 indexPath:;
- (id)indexPathForItemIdentifier:(id)a3;
- (id)itemIDsInExpandedThread:(id)a3;
- (id)itemIdentifierForIndexPath:(id)a3;
- (id)itemIdentifiers;
- (id)itemIdentifiersForSection:(id)a3;
- (id)itemIdentifiersInMessagesSections;
- (id)messageListAtSectionIndex:(int64_t)a3;
- (id)messageListForMessageListItemWithIdentifier:(id)a3;
- (id)messageListForSection:(id)a3;
- (id)messageListItemAtIndexPath:(id)a3;
- (id)messageListItemForItemID:(id)a3;
- (id)messageListItemForItemID:(id)a3 section:(id)a4;
- (id)messageListItemsForItemIDs:(id)a3;
- (id)messageListItemsForItemIDs:(id)a3 section:(id)a4;
- (id)messageListItemsInSection:(id)a3 limit:(unint64_t)a4;
- (id)messageListSectionDataSource:(id)a3 indexPathForItemIdentifier:(id)a4;
- (id)messageListSectionDataSource:(id)a3 indexPathsForItemIdentifiers:(id)a4;
- (id)messageListSectionDataSource:(id)a3 itemIdentifierForIndexPath:(id)a4;
- (id)messageListSectionDataSource:(id)a3 itemIdentifiersForIndexPaths:(id)a4;
- (id)messagesInMessageListItem:(id)a3;
- (id)objectIDForItemID:(id)a3;
- (id)relatedItemIDsForSelectedItemID:(id)a3 atIndexPath:(id)a4;
- (id)sectionAfterIndex:(int64_t)a3;
- (id)sectionAtIndex:(int64_t)a3;
- (id)sectionBeforeIndex:(int64_t)a3;
- (id)snapshotForMessageListSectionDataSource:(id)a3;
- (id)threadItemIDForItemInExpandedThread:(id)a3;
- (id)viewModelForSupplementaryViewKind:(id)a3 sectionAtIndex:(int64_t)a4;
- (id)visibleMessageListSections;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsAtSectionIndex:(int64_t)a3;
- (int64_t)numberOfItemsInMessagesSections;
- (int64_t)numberOfItemsInSections:(id)a3;
- (int64_t)numberOfSections;
- (int64_t)sectionIndexForSection:(id)a3;
- (uint64_t)_isSectionVisible:(uint64_t)a1;
- (void)_insertDefaultSectionsIntoSnapshot:(uint64_t)a1;
- (void)_performDataSourceUpdateAnimated:(void *)a3 withSectionDataSource:(uint64_t)a4 cleanSnapshot:(char)a5 isLastUpdate:(void *)a6 prepare:(void *)a7 update:(uint64_t)a8 immediateCompletion:(void *)a9 completion:;
- (void)_performDataSourceUpdates:(uint64_t)a1;
- (void)_resumeUpdatesWithForce:(os_unfair_lock_s *)a1;
- (void)_setDataSource:(void *)a3 forSection:;
- (void)applyFilterPredicate:(id)a3 userFiltered:(BOOL)a4 ignoreMessagesPredicate:(id)a5 section:(id)a6;
- (void)applyMessageListDataSourceUpdate:(id)a3;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)dealloc;
- (void)deleteItemsWithIDs:(id)a3 animated:(BOOL)a4 immediateCompletion:(BOOL)a5 completion:(id)a6;
- (void)didScheduleReadInteractionForItemID:(id)a3;
- (void)didSelectDisclosureButtonForMessageListItem:(id)a3 disclosureEnabled:(BOOL)a4;
- (void)reconfigureVisibleCells;
- (void)refresh;
- (void)reloadItemsWithItemIDs:(id)a3;
- (void)reloadVisibleCellsInvalidatingCache:(BOOL)a3;
- (void)removeMessageListSection:(id)a3 animated:(BOOL)a4;
- (void)showMessageListSection:(id)a3 animated:(BOOL)a4;
- (void)suspendUpdates;
@end

@implementation MessageListDataSource

- (id)_indexPathsForPreparedItems
{
  if (a1)
  {
    v1 = [a1 collectionView];
    v2 = [v1 mui_indexPathsForPreparedItems];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MessageListDataSource_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __28__MessageListDataSource_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_3;
  log_log_3 = v2;
}

- (int64_t)numberOfItems
{
  v2 = [(MessageListDataSource *)self dataSource];
  v3 = [v2 snapshot];
  v4 = [v3 numberOfItems];

  return v4;
}

- (MessageListDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)numberOfItemsInMessagesSections
{
  v3 = [(MessageListDataSource *)self messagesSections];
  v4 = [v3 allObjects];
  v5 = [(MessageListDataSource *)self numberOfItemsInSections:v4];

  return v5;
}

- (MessageListDataSourceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (id)visibleMessageListSections
{
  v3 = [(MessageListDataSource *)self messagesSections];
  v4 = [v3 mutableCopy];

  v5 = [(MessageListDataSource *)self visibleSections];
  v6 = [v5 getObject];
  [v4 intersectSet:v6];

  return v4;
}

- (void)suspendUpdates
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_updateQueueLock);
  v3 = [(MessageListDataSource *)self updateQueueSuspensionCount];
  if (v3)
  {
    v4 = +[MessageListDataSource log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 2048;
      v9 = v3;
      _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "%p: Queue is already suspended (count=%ld)", &v6, 0x16u);
    }
  }

  else
  {
    v5 = +[MessageListDataSource log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 2048;
      v9 = 0;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Suspend update queue (count=%ld)", &v6, 0x16u);
    }

    v4 = [(MessageListDataSource *)self updateQueue];
    dispatch_suspend(v4);
  }

  [(MessageListDataSource *)self setUpdateQueueSuspensionCount:[(MessageListDataSource *)self updateQueueSuspensionCount]+ 1];
  os_unfair_lock_unlock(&self->_updateQueueLock);
}

- (MessageListDataSource)initWithCollectionView:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = MessageListDataSource;
  v5 = [(MessageListDataSource *)&v39 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("com.apple.mobilemail.messagelistdatasource.collectionViewUpdate", v8);
    updateQueue = v6->_updateQueue;
    v6->_updateQueue = v9;

    v6->_updateQueueLock._os_unfair_lock_opaque = 0;
    atomic_store(0, &v6->_queuedUpdatesCount);
    atomic_store(0, &v6->_updateIdentifier);
    v11 = objc_alloc(MEMORY[0x277D07168]);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = [v11 initWithObject:v12];
    dataSourceForSection = v6->_dataSourceForSection;
    v6->_dataSourceForSection = v13;

    v15 = objc_alloc(MEMORY[0x277D07168]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v17 = [v15 initWithObject:v16];
    visibleSections = v6->_visibleSections;
    v6->_visibleSections = v17;

    v19 = objc_alloc(MEMORY[0x277D07168]);
    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v21 = [v19 initWithObject:v20];
    pendingSectionsToClear = v6->_pendingSectionsToClear;
    v6->_pendingSectionsToClear = v21;

    v23 = objc_alloc(MEMORY[0x277D07168]);
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = [v23 initWithObject:v24];
    pendingSectionUpdates = v6->_pendingSectionUpdates;
    v6->_pendingSectionUpdates = v25;

    v27 = [MEMORY[0x277CBEB58] setWithObjects:{@"MessageListSectionRecent", @"MessageListSectionIndexedSearch", @"MessageListSectionServerSearch", 0}];
    [v27 addObject:@"MessageListSectionRecentUnseen"];
    [v27 addObject:@"MessageListSectionGroupedSender"];
    [v27 addObject:@"MessageListSectionGroupedSenderUnseen"];
    if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      [v27 addObject:@"MessageListSectionPriority"];
    }

    if (_os_feature_enabled_impl())
    {
      [v27 addObject:@"MessageListSectionTopHits"];
    }

    v28 = [v27 copy];
    messagesSections = v6->_messagesSections;
    v6->_messagesSections = v28;

    v6->_hasAdditionalSections = EMBlackPearlIsFeatureEnabled();
    objc_initWeak(&location, v6);
    [v4 setPrefetchDataSource:v6];
    v30 = objc_alloc(MEMORY[0x277D752D0]);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __48__MessageListDataSource_initWithCollectionView___block_invoke;
    v36[3] = &unk_278188D98;
    objc_copyWeak(&v37, &location);
    v31 = [v30 initWithCollectionView:v4 cellProvider:v36];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __48__MessageListDataSource_initWithCollectionView___block_invoke_2;
    v34[3] = &unk_278188DC0;
    objc_copyWeak(&v35, &location);
    [(UICollectionViewDiffableDataSource *)v31 setSupplementaryViewProvider:v34];
    dataSource = v6->_dataSource;
    v6->_dataSource = v31;

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v6;
}

id __48__MessageListDataSource_initWithCollectionView___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [(MessageListDataSource *)WeakRetained _configuredCellForCollectionView:v9 indexPath:v8 itemID:v7 cellIdentifier:0];

  return v11;
}

id __48__MessageListDataSource_initWithCollectionView___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [(MessageListDataSource *)WeakRetained _supplementaryViewForCollectionView:v9 elementKind:v8 indexPath:v7];

  return v11;
}

- (void)dealloc
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(MessageListDataSource *)self dataSourceForSection];
  v4 = [v3 getObject];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * v9++) stopObserving];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = [(MessageListDataSource *)self dataSourceForSection];
  [v10 performWhileLocked:&__block_literal_global_4];

  [(MessageListDataSource *)self _resumeUpdatesWithForce:?];
  v11 = [(MessageListDataSource *)self visibleSections];
  [v11 performWhileLocked:&__block_literal_global_15];

  v12 = [(MessageListDataSource *)self pendingSectionsToClear];
  [v12 performWhileLocked:&__block_literal_global_17];

  v13 = [(MessageListDataSource *)self pendingSectionUpdates];
  [v13 performWhileLocked:&__block_literal_global_20];

  v14.receiver = self;
  v14.super_class = MessageListDataSource;
  [(MessageListDataSource *)&v14 dealloc];
}

- (void)_resumeUpdatesWithForce:(os_unfair_lock_s *)a1
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock(a1 + 3);
    v4 = [(os_unfair_lock_s *)a1 updateQueueSuspensionCount];
    if (v4)
    {
      if (a2)
      {
        v5 = 0;
      }

      else
      {
        v5 = v4 - 1;
      }

      if (v5)
      {
        v6 = +[MessageListDataSource log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 134218496;
          v10 = a1;
          v11 = 2048;
          v12 = v5;
          v13 = 1024;
          v14 = a2;
          _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "%p: Skip resume queue (count=%ld, force=%{BOOL}d)", &v9, 0x1Cu);
        }
      }

      else
      {
        v8 = +[MessageListDataSource log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 134218496;
          v10 = a1;
          v11 = 2048;
          v12 = 0;
          v13 = 1024;
          v14 = a2;
          _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "%p: Resume update queue (count=%ld, force=%{BOOL}d)", &v9, 0x1Cu);
        }

        v6 = [(os_unfair_lock_s *)a1 updateQueue];
        dispatch_resume(v6);
      }

      [(os_unfair_lock_s *)a1 setUpdateQueueSuspensionCount:v5];
    }

    else
    {
      v7 = +[MessageListDataSource log];
      [MessageListDataSource _resumeUpdatesWithForce:v7];
    }

    os_unfair_lock_unlock(a1 + 3);
  }
}

- (int64_t)numberOfSections
{
  v2 = [(MessageListDataSource *)self dataSource];
  v3 = [v2 snapshot];
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)numberOfItemsAtSectionIndex:(int64_t)a3
{
  v4 = [(MessageListDataSource *)self dataSource];
  v5 = [v4 snapshot];
  v6 = [v4 sectionIdentifierForIndex:a3];
  v7 = [v5 numberOfItemsInSection:v6];

  return v7;
}

- (int64_t)numberOfItemsInSections:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MessageListDataSource *)self dataSource];
  v6 = [v5 snapshot];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
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

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v6 indexOfSectionIdentifier:{v13, v15}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 += [v6 numberOfItemsInSection:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)itemIdentifiers
{
  v2 = [(MessageListDataSource *)self dataSource];
  v3 = [v2 snapshot];
  v4 = [v3 itemIdentifiers];

  return v4;
}

- (id)itemIdentifiersForSection:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self dataSource];
  v6 = [v5 snapshot];

  if ([v6 indexOfSectionIdentifier:v4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v7 = [v6 itemIdentifiersInSectionWithIdentifier:v4];
  }

  return v7;
}

- (id)itemIdentifiersInMessagesSections
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(MessageListDataSource *)self dataSource];
  v4 = [v3 snapshot];

  v5 = [v4 sectionIdentifiers];
  v6 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(MessageListDataSource *)self messagesSections];
        v14 = [v13 containsObject:v12];

        if (v14)
        {
          v15 = [v4 itemIdentifiersInSectionWithIdentifier:v12];
          [v6 addObjectsFromArray:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v6 copy];

  return v16;
}

- (void)applyMessageListDataSourceUpdate:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MessageListDataSource log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 ef_publicDescription];
    *buf = 134218242;
    v45 = self;
    v46 = 2114;
    v47 = v6;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: applyMessageListDataSourceUpdate: %{public}@", buf, 0x16u);
  }

  v7 = [(MessageListDataSource *)self pendingSectionsToClear];
  [v7 performWhileLocked:&__block_literal_global_25];

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [v4 sectionsToRemove];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __58__MessageListDataSource_applyMessageListDataSourceUpdate___block_invoke_2;
  v41[3] = &unk_278188E48;
  v41[4] = self;
  v11 = v4;
  v42 = v11;
  v12 = [v10 ef_map:v41];
  v13 = [v12 ef_filter:*MEMORY[0x277D07110]];

  if ([v11 startsWithEmptySnapshot])
  {
    [v8 addObjectsFromArray:v13];
  }

  else
  {
    v14 = [v11 sectionsToRemove];
    [v9 addObjectsFromArray:v14];
  }

  v15 = [v11 sectionsToUpdate];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __58__MessageListDataSource_applyMessageListDataSourceUpdate___block_invoke_3;
  v37[3] = &unk_278188E90;
  v37[4] = self;
  v16 = v11;
  v38 = v16;
  v17 = v8;
  v39 = v17;
  v18 = v9;
  v40 = v18;
  v19 = [v15 ef_map:v37];

  if ([v16 startsWithEmptySnapshot])
  {
    [(MessageListDataSource *)self _performDataSourceUpdates:v17];
  }

  v29 = v13;
  if (([v16 startsWithEmptySnapshot] & 1) == 0)
  {
    v20 = [(MessageListDataSource *)self pendingSectionsToClear];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __58__MessageListDataSource_applyMessageListDataSourceUpdate___block_invoke_5;
    v35[3] = &unk_278188CA8;
    v36 = v18;
    [v20 performWhileLocked:v35];
  }

  v28 = v18;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * i);
        [(MessageListDataSource *)self _resumeUpdatesWithForce:?];
        v27 = [(MessageListDataSource *)self visibleSections];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __58__MessageListDataSource_applyMessageListDataSourceUpdate___block_invoke_6;
        v30[3] = &unk_278188CA8;
        v30[4] = v26;
        [v27 performWhileLocked:v30];

        [v26 beginObservingAnimated:1 nextUpdateNeedsCleanSnapshot:{objc_msgSend(v16, "startsWithEmptySnapshot") ^ 1}];
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v23);
  }
}

id __58__MessageListDataSource_applyMessageListDataSourceUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = -[MessageListDataSource _removeMessageListSection:animated:](v2, v4, [v3 startsWithEmptySnapshot]);

  return v5;
}

- (MessageListSectionUpdate)_removeMessageListSection:(uint64_t)a3 animated:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v6 = [a1 visibleSections];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__MessageListDataSource__removeMessageListSection_animated___block_invoke;
    v16[3] = &unk_278188EB8;
    v7 = v5;
    v17 = v7;
    v18 = &v19;
    [v6 performWhileLocked:v16];

    if (v20[3])
    {
      v8 = [(MessageListDataSource *)a1 _dataSourceForSection:v7];
      if (v8)
      {
        v9 = +[MessageListDataSource log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v24 = a1;
          v25 = 2048;
          v26 = v8;
          v27 = 2114;
          v28 = v7;
          _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "%p: Remove data source (%p) from section: %{public}@", buf, 0x20u);
        }

        [v8 stopObserving];
        v10 = [MessageListSectionUpdate alloc];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __60__MessageListDataSource__removeMessageListSection_animated___block_invoke_41;
        v14[3] = &unk_278188EE0;
        v15 = v7;
        v11 = [(MessageListSectionUpdate *)v10 initWithMessageListSectionDataSource:v8 animated:a3 cleanSnapshot:1 updateHandler:v14];
        v12 = v15;
      }

      else
      {
        v12 = +[MessageListDataSource log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v24 = a1;
          v25 = 2114;
          v26 = v7;
          _os_log_impl(&dword_214A5E000, v12, OS_LOG_TYPE_DEFAULT, "%p: Section does not exist. Cannot remove data source from section: %{public}@", buf, 0x16u);
        }

        v11 = 0;
      }
    }

    else
    {
      v8 = +[MessageListDataSource log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v24 = a1;
        v25 = 2114;
        v26 = v7;
        _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "%p: Message list section (%{public}@) is not visible", buf, 0x16u);
      }

      v11 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __58__MessageListDataSource_applyMessageListDataSourceUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 section];
  v6 = [(MessageListDataSource *)v4 _dataSourceForSection:v5];

  [v6 stopObserving];
  v7 = *(a1 + 32);
  v8 = [v3 section];
  v9 = [v3 messageList];
  v10 = [(MessageListDataSource *)v7 _createSectionDataSourceForSection:v8 messageList:v9];

  if ([v3 shouldClearSnapshot])
  {
    if ([*(a1 + 40) startsWithEmptySnapshot])
    {
      v11 = [[MessageListSectionUpdate alloc] initWithMessageListSectionDataSource:v10 animated:0 cleanSnapshot:1 updateHandler:&__block_literal_global_30];
      v12 = *(a1 + 48);
    }

    else
    {
      v13 = *(a1 + 56);
      v11 = [v3 section];
      v12 = v13;
    }

    [v12 addObject:v11];
  }

  return v10;
}

- (id)_dataSourceForSection:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    v4 = [a1 dataSourceForSection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__MessageListDataSource__dataSourceForSection___block_invoke;
    v6[3] = &unk_278188FE8;
    v8 = &v9;
    v7 = v3;
    [v4 performWhileLocked:v6];

    a1 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

void __58__MessageListDataSource_applyMessageListDataSourceUpdate___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 section];
  [v3 addObject:v4];
}

- (void)showMessageListSection:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MessageListDataSource *)self visibleSections];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __57__MessageListDataSource_showMessageListSection_animated___block_invoke;
  v15 = &unk_278188CF8;
  v17 = &v18;
  v8 = v6;
  v16 = v8;
  [v7 performWhileLocked:&v12];
  v9 = [MessageListDataSource log:v12];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v19 + 24);
    *buf = 134218754;
    v23 = self;
    v24 = 2114;
    v25 = v8;
    v26 = 1024;
    v27 = v10;
    v28 = 1024;
    v29 = v4;
    _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "%p: showMessageListSection: %{public}@, requiresUpdate: %{BOOL}d, animated: %{BOOL}d", buf, 0x22u);
  }

  if (*(v19 + 24) == 1)
  {
    v11 = [(MessageListDataSource *)self _dataSourceForSection:v8];
    [v11 beginObservingAnimated:v4 nextUpdateNeedsCleanSnapshot:0];
  }

  _Block_object_dispose(&v18, 8);
}

void __57__MessageListDataSource_showMessageListSection_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 containsObject:*(a1 + 32)] ^ 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [v3 addObject:*(a1 + 32)];
  }
}

- (void)removeMessageListSection:(id)a3 animated:(BOOL)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = [(MessageListDataSource *)self _removeMessageListSection:a3 animated:a4];
  v6 = v5;
  if (v5)
  {
    [(MessageListDataSource *)v5 removeMessageListSection:v7 animated:self];
  }
}

void __60__MessageListDataSource__removeMessageListSection_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsObject:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [v3 removeObject:*(a1 + 32)];
  }
}

- (BOOL)shouldDisplaySupplementaryKind:(id)a3 forSectionAtIndex:(int64_t)a4
{
  v4 = [(MessageListDataSource *)self viewModelForSupplementaryViewKind:a3 sectionAtIndex:a4];
  v5 = [v4 shouldDisplaySupplementaryView];

  return v5;
}

- (id)viewModelForSupplementaryViewKind:(id)a3 sectionAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(MessageListDataSource *)self _dataSourceForSectionIndex:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 section];
    v10 = [(MessageListDataSource *)self messageListSectionIsVisible:v9];

    if (v10)
    {
      if ([v8 hasSupplementaryViewOfKind:v6])
      {
        v11 = [(MessageListDataSource *)self collectionView];
        v12 = [v11 numberOfItemsInSection:a4];

        if (v12)
        {
          v13 = 1;
          v14 = v6;
          v15 = a4;
          v16 = 3;
        }

        else
        {
          v13 = [v8 shouldShowSupplementaryViewOfKindIfEmpty:v6];
          v14 = v6;
          v15 = a4;
          v16 = 1;
        }
      }

      else
      {
        v13 = 0;
        v14 = v6;
        v15 = a4;
        v16 = 2;
      }
    }

    else
    {
      v13 = 0;
      v14 = v6;
      v15 = a4;
      v16 = 0;
    }
  }

  else
  {
    v17 = +[MessageListDataSource log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(MessageListDataSource *)self viewModelForSupplementaryViewKind:a4 sectionAtIndex:v17];
    }

    v13 = 0;
    v14 = v6;
    v15 = a4;
    v16 = 5;
  }

  v18 = [MUIMessageListSupplementaryViewModel supplementaryViewModelWithDisplay:v13 kind:v14 sectionIndex:v15 reason:v16];

  return v18;
}

- (BOOL)isUpdateQueueSuspended
{
  os_unfair_lock_lock(&self->_updateQueueLock);
  v3 = [(MessageListDataSource *)self updateQueueSuspensionCount]> 0;
  os_unfair_lock_unlock(&self->_updateQueueLock);
  return v3;
}

- (void)deleteItemsWithIDs:(id)a3 animated:(BOOL)a4 immediateCompletion:(BOOL)a5 completion:(id)a6
{
  v25 = a5;
  v7 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = +[MessageListDataSource log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v32 = self;
    v33 = 2114;
    v34 = v9;
    v35 = 1024;
    v36 = v7;
    v37 = 1024;
    v38 = v25;
    _os_log_impl(&dword_214A5E000, v11, OS_LOG_TYPE_DEFAULT, "%p: delete items with ids: %{public}@, animated: %{BOOL}d, immediateCompletion: %{BOOL}d", buf, 0x22u);
  }

  v12 = [(MessageListDataSource *)self dataSource];
  v13 = [v12 snapshot];

  v23 = v13;
  v24 = v9;
  v14 = [(MessageListDataSource *)self _groupMessagesListItemIDsBySection:v9 snapshot:v13];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [v14 allKeys];
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v14 objectForKeyedSubscript:v20];
        v22 = [(MessageListDataSource *)self _dataSourceForSection:v20];
        [v22 deleteItemsWithIDs:v21 animated:v7 useImmediateCompletion:v25 completionHandler:v10];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }
}

- (void)reloadItemsWithItemIDs:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__MessageListDataSource_reloadItemsWithItemIDs___block_invoke;
  v9[3] = &unk_278188F78;
  v10 = v4;
  v11 = self;
  v5 = v9;
  v6 = MEMORY[0x277D071B8];
  v7 = v4;
  v8 = [v6 mainThreadScheduler];
  [v8 performBlock:v5];
}

void __48__MessageListDataSource_reloadItemsWithItemIDs___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__MessageListDataSource_reloadItemsWithItemIDs___block_invoke_2;
  v13[3] = &unk_278188F08;
  v13[4] = *(a1 + 40);
  v3 = [v2 ef_compactMap:v13];
  v4 = [v3 count];
  v5 = +[MessageListDataSource log];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) count];
      v9 = *(a1 + 32);
      *buf = 134218754;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v3;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: reload %lu items with IDs: %{public}@ at index paths: %{public}@", buf, 0x2Au);
    }

    v5 = [v3 ef_groupBy:&__block_literal_global_47];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__MessageListDataSource_reloadItemsWithItemIDs___block_invoke_2_49;
    v12[3] = &unk_278188F50;
    v12[4] = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v12];
  }

  else if (v6)
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 134218242;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: skip reload items (%{public}@) - requested items are not visible", buf, 0x16u);
  }
}

id __48__MessageListDataSource_reloadItemsWithItemIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataSource];
  v5 = [v4 indexPathForItemIdentifier:v3];

  return v5;
}

uint64_t __48__MessageListDataSource_reloadItemsWithItemIDs___block_invoke_44(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 section];

  return [v2 numberWithInteger:v3];
}

- (void)reloadVisibleCellsInvalidatingCache:(BOOL)a3
{
  v3 = a3;
  v41 = *MEMORY[0x277D85DE8];
  v5 = [(MessageListDataSource *)self _indexPathsForPreparedItems];
  if ([v5 count])
  {
    v6 = +[MessageListDataSource log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v34 = self;
      v35 = 2048;
      v36 = [v5 count];
      v37 = 2112;
      v38 = v5;
      v39 = 1024;
      v40 = v3;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "%p: updateListForChange - reloading visible cells at (%lu) indexPaths:%@ invalidateCache:%{BOOL}d", buf, 0x26u);
    }

    v22 = v3;

    v7 = [(MessageListDataSource *)self dataSource];
    v8 = [v7 snapshot];

    v20 = v5;
    v21 = [v8 mui_validItemIDsFromIndexPaths:v5];
    v19 = v8;
    v9 = [(MessageListDataSource *)self _groupMessagesListItemIDsBySection:v21 snapshot:v8];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = [v9 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [(MessageListDataSource *)self _dataSourceForSection:v15];
          v17 = [v9 objectForKeyedSubscript:v15];
          if ([v17 count])
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __61__MessageListDataSource_reloadVisibleCellsInvalidatingCache___block_invoke;
            v23[3] = &unk_278188FA0;
            v24 = v17;
            v25 = self;
            v27 = v22;
            v26 = v16;
            [(MessageListDataSource *)self _performDataSourceUpdateAnimated:v26 withSectionDataSource:0 cleanSnapshot:1 isLastUpdate:0 prepare:v23 update:0 immediateCompletion:0 completion:?];

            v18 = v24;
          }

          else
          {
            v18 = +[MessageListDataSource log];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v34 = self;
              v35 = 2114;
              v36 = v21;
              _os_log_impl(&dword_214A5E000, v18, OS_LOG_TYPE_DEFAULT, "%p: skip reloading visible items (%{public}@)", buf, 0x16u);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v5 = v20;
  }
}

id __61__MessageListDataSource_reloadVisibleCellsInvalidatingCache___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mui_validItemIDsFromExistingItemIDs:*(a1 + 32) updateReason:@"reloadVisibleCellsInvalidatingCache"];
  v5 = [v4 count];
  if (v5)
  {
    v6 = +[MessageListDataSource log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v11 = 134218498;
      v12 = v7;
      v13 = 2048;
      v14 = v5;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "%p: updateListForChange - reloading (%ld) itemIDs %@", &v11, 0x20u);
    }

    if (*(a1 + 56) == 1)
    {
      v8 = [*(a1 + 48) messageList];
      [v8 invalidateCacheForItemIDs:v4];
    }

    [v3 reloadItemsWithIdentifiers:v4];
  }

  v9 = [MUIMessageListSectionDataSourceChange updated:v5];

  return v9;
}

- (void)_performDataSourceUpdateAnimated:(void *)a3 withSectionDataSource:(uint64_t)a4 cleanSnapshot:(char)a5 isLastUpdate:(void *)a6 prepare:(void *)a7 update:(uint64_t)a8 immediateCompletion:(void *)a9 completion:
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  if (a1)
  {
    v20 = [[MessageListSectionUpdate alloc] initWithMessageListSectionDataSource:v16 animated:a2 cleanSnapshot:a4 prepareHandler:v17 updateHandler:v18 immediateCompletion:a8 completionHandler:v19];
    v21 = [a1 pendingSectionUpdates];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __153__MessageListDataSource__performDataSourceUpdateAnimated_withSectionDataSource_cleanSnapshot_isLastUpdate_prepare_update_immediateCompletion_completion___block_invoke;
    v33[3] = &unk_2781890B0;
    v22 = v20;
    v34 = v22;
    [v21 performWhileLocked:v33];

    v23 = [a1 delegate];
    v24 = [v23 shouldBatchSectionUpdates:a1];

    if ((a5 & 1) == 0 && v24)
    {
      [MessageListDataSource _performDataSourceUpdateAnimated:a1 withSectionDataSource:v22 cleanSnapshot:? isLastUpdate:? prepare:? update:? immediateCompletion:? completion:?];
    }

    else
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy_;
      v31 = __Block_byref_object_dispose_;
      v32 = 0;
      v25 = [a1 pendingSectionUpdates];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __153__MessageListDataSource__performDataSourceUpdateAnimated_withSectionDataSource_cleanSnapshot_isLastUpdate_prepare_update_immediateCompletion_completion___block_invoke_2;
      v26[3] = &unk_2781890D8;
      v26[4] = &v27;
      [v25 performWhileLocked:v26];

      [(MessageListDataSource *)a1 _performDataSourceUpdates:?];
      _Block_object_dispose(&v27, 8);
    }
  }
}

- (id)itemIdentifierForIndexPath:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MessageListDataSource *)self dataSource];
    v6 = [v5 itemIdentifierForIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathForItemIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MessageListDataSource *)self dataSource];
    v6 = [v5 indexPathForItemIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)messageListAtSectionIndex:(int64_t)a3
{
  v5 = [(MessageListDataSource *)self dataSource];
  v6 = [v5 sectionIdentifierForIndex:a3];

  v7 = [(MessageListDataSource *)self messageListForSection:v6];

  return v7;
}

- (id)messageListForSection:(id)a3
{
  v3 = [(MessageListDataSource *)self _dataSourceForSection:a3];
  v4 = [v3 messageList];

  return v4;
}

- (int64_t)sectionIndexForSection:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self dataSource];
  v6 = [v5 indexForSectionIdentifier:v4];

  return v6;
}

- (id)messageListForMessageListItemWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MessageListDataSource *)self dataSource];
    v6 = [v5 snapshot];
    v7 = [v6 sectionIdentifierForSectionContainingItemIdentifier:v4];

    v8 = [(MessageListDataSource *)self messageListForSection:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)refresh
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(MessageListDataSource *)self _allDataSources];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
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
        v9 = [(MessageListDataSource *)self messagesSections];
        v10 = [v8 section];
        v11 = [v9 containsObject:v10];

        if (v11)
        {
          [v8 refresh];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)_allDataSources
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy_;
    v9 = __Block_byref_object_dispose_;
    v10 = 0;
    v1 = [a1 dataSourceForSection];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __40__MessageListDataSource__allDataSources__block_invoke;
    v4[3] = &unk_278189038;
    v4[4] = &v5;
    [v1 performWhileLocked:v4];

    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)messageListItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MessageListDataSource *)self dataSource];
    v6 = [v5 itemIdentifierForIndexPath:v4];

    if (v6)
    {
      [(MessageListDataSource *)v4 messageListItemAtIndexPath:v6, &v10];
      v8 = v10;
    }

    else
    {
      v7 = +[MessageListDataSource log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(MessageListDataSource *)self messageListItemAtIndexPath:v4, v7];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)messageListItemForItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self _dataSourceContainingItemID:v4];
  v6 = [v5 messageList];
  v7 = [v6 messageListItemForItemID:v4];

  return v7;
}

- (id)_dataSourceContainingItemID:(void *)a1
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = a2;
    v5 = [a1 dataSource];
    v6 = [v5 snapshot];
    v7 = [v6 sectionIdentifierForSectionContainingItemIdentifier:v4];

    v2 = [(MessageListDataSource *)a1 _dataSourceForSection:v7];
  }

  return v2;
}

- (id)messageListItemForItemID:(id)a3 section:(id)a4
{
  v6 = a3;
  v7 = [(MessageListDataSource *)self _dataSourceForSection:a4];
  v8 = [v7 messageList];
  v9 = [v8 messageListItemForItemID:v6];

  return v9;
}

- (id)messageListItemsForItemIDs:(id)a3 section:(id)a4
{
  v6 = a3;
  v7 = [(MessageListDataSource *)self _dataSourceForSection:a4];
  v8 = [v7 messageList];
  v9 = [v8 messageListItemsForItemIDs:v6];

  return v9;
}

- (id)messageListItemsInSection:(id)a3 limit:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(MessageListDataSource *)self itemIdentifiersForSection:v7];
  if ([v8 count] > a4)
  {
    v9 = +[MessageListDataSource log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v16 = 134218754;
      v17 = self;
      v18 = 2114;
      v19 = v10;
      v20 = 2048;
      v21 = [v8 count];
      v22 = 2048;
      v23 = a4;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - limit the itemIDs.count:%lu to limit:%lu", &v16, 0x2Au);
    }

    v11 = [v8 subarrayWithRange:{0, a4}];

    v8 = v11;
  }

  v12 = [(MessageListDataSource *)self _dataSourceForSection:v7];
  v13 = [v12 messageList];
  v14 = [v13 messageListItemsForItemIDs:v8];

  return v14;
}

- (id)messagesInMessageListItem:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 itemID];
      v7 = [(MessageListDataSource *)self _dataSourceContainingItemID:v6];

      v8 = [v4 allItemIDs];
      v9 = [v8 result:0];

      v10 = [v7 messageList];
      v11 = [v10 messageListItemsForItemIDs:v9];
      v5 = [v11 ef_map:&__block_literal_global_58];
    }

    else
    {
      v5 = 0;
    }
  }

  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;

  return v12;
}

id __51__MessageListDataSource_messagesInMessageListItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 result];
  v3 = [v2 displayMessage];
  v4 = [v3 result];

  return v4;
}

- (id)objectIDForItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self _dataSourceContainingItemID:v4];
  v6 = [v5 messageList];
  v7 = [v6 objectIDForItemID:v4];

  return v7;
}

- (void)applyFilterPredicate:(id)a3 userFiltered:(BOOL)a4 ignoreMessagesPredicate:(id)a5 section:(id)a6
{
  v8 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MessageListDataSource *)self _dataSourceForSection:v12];
  v14 = [(MessageListDataSource *)self _isSectionVisible:v12];
  v15 = +[MessageListDataSource log];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = 134218754;
      v18 = self;
      v19 = 1024;
      v20 = v10 != 0;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_214A5E000, v15, OS_LOG_TYPE_DEFAULT, "%p: applyFilterPredicate: %{BOOL}d, section: %{public}@, dataSource: %{public}@", &v17, 0x26u);
    }

    [v13 applyFilterPredicate:v10 userFiltered:v8 ignoreMessagesPredicate:v11];
  }

  else
  {
    if (v16)
    {
      v17 = 134218754;
      v18 = self;
      v19 = 1024;
      v20 = v10 != 0;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_214A5E000, v15, OS_LOG_TYPE_DEFAULT, "%p: Cannot apply filter to hidden section: %{BOOL}d, section: %{public}@, dataSource: %{public}@", &v17, 0x26u);
    }
  }
}

- (uint64_t)_isSectionVisible:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    a1 = [a1 visibleSections];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__MessageListDataSource__isSectionVisible___block_invoke;
    v5[3] = &unk_278188CF8;
    v7 = &v8;
    v6 = v3;
    [a1 performWhileLocked:v5];

    LOBYTE(a1) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return a1 & 1;
}

- (BOOL)isExpandedThread:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self _dataSourceContainingItemID:v4];
  v6 = [v5 messageList];
  v7 = [v6 expandedThreadItemIDs];
  v8 = [v7 containsObject:v4];

  return v8;
}

- (BOOL)anyExpandedThreadContainsItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self _dataSourceContainingItemID:v4];
  v6 = [v5 messageList];
  v7 = [v6 anyExpandedThreadContainsItemID:v4];

  return v7;
}

- (id)threadItemIDForItemInExpandedThread:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self _dataSourceContainingItemID:v4];
  v6 = [v5 threadItemIDForItemInExpandedThread:v4];

  return v6;
}

- (id)itemIDsInExpandedThread:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self _dataSourceContainingItemID:v4];
  v6 = [v5 itemIDsInExpandedThread:v4];

  return v6;
}

- (void)didScheduleReadInteractionForItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self _dataSourceContainingItemID:v4];
  [v5 didScheduleReadInteractionForItemID:v4];
}

- (BOOL)isSection:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(MessageListDataSource *)self dataSource];
  v8 = [v7 sectionIdentifierForIndex:a4];

  LOBYTE(v7) = [v6 isEqual:v8];
  return v7;
}

- (BOOL)isMessagesSection:(id)a3
{
  v4 = a3;
  v5 = [(MessageListDataSource *)self messagesSections];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)isMessagesSectionAtIndex:(int64_t)a3
{
  v3 = self;
  v4 = [(MessageListDataSource *)self sectionAtIndex:a3];
  LOBYTE(v3) = [(MessageListDataSource *)v3 isMessagesSection:v4];

  return v3;
}

- (id)sectionAfterIndex:(int64_t)a3
{
  v5 = [(MessageListDataSource *)self collectionView];
  v6 = v5;
  for (i = a3 + 1; i < [v5 numberOfSections]; ++i)
  {
    if ([v6 numberOfItemsInSection:i])
    {
      v8 = [(MessageListDataSource *)self sectionAtIndex:i];
      if ([(MessageListDataSource *)self messageListSectionIsVisible:v8])
      {
        goto LABEL_8;
      }
    }

    v5 = v6;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)sectionBeforeIndex:(int64_t)a3
{
  v5 = [(MessageListDataSource *)self collectionView];
  if (a3 >= 1)
  {
    v6 = a3 + 1;
    do
    {
      if ([v5 numberOfItemsInSection:v6 - 2])
      {
        v7 = [(MessageListDataSource *)self sectionAtIndex:v6 - 2];
        if ([(MessageListDataSource *)self messageListSectionIsVisible:v7])
        {
          goto LABEL_8;
        }
      }

      --v6;
    }

    while (v6 > 1);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)messageListSectionIsVisible:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(MessageListDataSource *)self visibleSections];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__MessageListDataSource_messageListSectionIsVisible___block_invoke;
  v8[3] = &unk_278188CF8;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [v5 performWhileLocked:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

uint64_t __53__MessageListDataSource_messageListSectionIsVisible___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __47__MessageListDataSource__dataSourceForSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

uint64_t __40__MessageListDataSource__allDataSources__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allValues];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

uint64_t __43__MessageListDataSource__isSectionVisible___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)didSelectDisclosureButtonForMessageListItem:(id)a3 disclosureEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 itemID];
  v8 = [(MessageListDataSource *)self _dataSourceContainingItemID:v7];

  [v8 didSelectDisclosureButtonForMessageListItem:v6 disclosureEnabled:v4];
}

id __66__MessageListDataSource_collectionView_prefetchItemsAtIndexPaths___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataSource];
  v5 = [v4 itemIdentifierForIndexPath:v3];

  return v5;
}

void __153__MessageListDataSource__performDataSourceUpdateAnimated_withSectionDataSource_cleanSnapshot_isLastUpdate_prepare_update_immediateCompletion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [v6 removeAllObjects];
}

void __51__MessageListDataSource__performDataSourceUpdates___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  add = atomic_fetch_add((*(a1 + 32) + 8), 1u);
  v3 = +[MessageListDataSource log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 134218498;
    v31 = v4;
    v32 = 1024;
    v33 = add;
    v34 = 2114;
    v35 = v5;
    _os_log_impl(&dword_214A5E000, v3, OS_LOG_TYPE_DEFAULT, "%p: [%u] Enqueue updates: %{public}@ ", buf, 0x1Cu);
  }

  v6 = [*(a1 + 32) delegate];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = *(a1 + 32);
        v14 = [v12 sectionDataSource];
        [v6 messageListDataSourcePrepareUpdate:v13 section:v14 cleanSnapshot:{objc_msgSend(v12, "cleanSnapshot")}];

        v15 = [v12 prepareHandler];

        if (v15)
        {
          v16 = [v12 prepareHandler];
          v16[2]();
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  atomic_fetch_add((*(a1 + 32) + 16), 1u);
  v17 = [*(a1 + 32) updateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MessageListDataSource__performDataSourceUpdates___block_invoke_63;
  block[3] = &unk_2781891E8;
  v18 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v24 = add;
  v21 = v18;
  v22 = v6;
  v23 = *(a1 + 48);
  v19 = v6;
  dispatch_async(v17, block);
}

void __51__MessageListDataSource__performDataSourceUpdates___block_invoke_63(uint64_t a1)
{
  v114 = *MEMORY[0x277D85DE8];
  atomic_fetch_add((*(a1 + 32) + 16), 0xFFFFFFFF);
  v60 = [*(a1 + 32) dataSource];
  v1 = [v60 snapshot];
  LOBYTE(v66) = [*(a1 + 40) ef_all:&__block_literal_global_66];
  v62 = [MEMORY[0x277CBEB18] array];
  v65 = [MEMORY[0x277CBEB18] array];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = *(a1 + 40);
  v69 = [obj countByEnumeratingWithState:&v106 objects:v113 count:16];
  if (v69)
  {
    v64 = 0;
    v68 = *v107;
    v63 = v1;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v107 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v106 + 1) + 8 * i);
        v4 = [v3 sectionDataSource];
        v5 = *(a1 + 32);
        v6 = [v4 section];
        v7 = [(MessageListDataSource *)v5 _dataSourceForSection:v6];

        if (v7 == v4)
        {
          v11 = [v4 section];
          v12 = [v1 sectionIdentifiers];
          v13 = [v12 ef_isEmpty];

          if (v13)
          {
            [(MessageListDataSource *)*(a1 + 32) _insertDefaultSectionsIntoSnapshot:v1];
          }

          v102 = 0;
          v103 = &v102;
          v104 = 0x2020000000;
          v105 = 0;
          if ([v3 cleanSnapshot])
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            *&buf[24] = __Block_byref_object_copy_;
            *&buf[32] = __Block_byref_object_dispose_;
            v112 = [v1 itemIdentifiersInSectionWithIdentifier:v11];
            if ([*(*&buf[8] + 40) count])
            {
              *(v103 + 24) = 1;
            }

            [v1 deleteItemsWithIdentifiers:*(*&buf[8] + 40)];
            v14 = [*(a1 + 32) pendingSectionsToClear];
            v97[0] = MEMORY[0x277D85DD0];
            v97[1] = 3221225472;
            v97[2] = __51__MessageListDataSource__performDataSourceUpdates___block_invoke_67;
            v97[3] = &unk_278189120;
            v97[4] = *(a1 + 32);
            v15 = atomic_load((a1 + 64));
            v101 = v15;
            v99 = buf;
            v98 = v1;
            v100 = &v102;
            [v14 performWhileLocked:v97];

            _Block_object_dispose(buf, 8);
          }

          v16 = [v3 updateHandler];
          v17 = (v16)[2](v16, v1, v11);

          v18 = *(a1 + 32);
          v19 = [v7 section];
          LOBYTE(v18) = [v18 messageListSectionIsVisible:v19];

          if ((v18 & 1) == 0 && ([v17 isSectionRemoval] & 1) == 0)
          {
            v25 = +[MessageListDataSource log];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(a1 + 32);
              v27 = atomic_load((a1 + 64));
              v28 = [v17 ef_publicDescription];
              v29 = [v7 section];
              *buf = 134218754;
              *&buf[4] = v26;
              *&buf[12] = 1024;
              *&buf[14] = v27;
              *&buf[18] = 2114;
              *&buf[20] = v28;
              *&buf[28] = 2114;
              *&buf[30] = v29;
              _os_log_impl(&dword_214A5E000, v25, OS_LOG_TYPE_DEFAULT, "%p: [%u] Skip data source update (%{public}@) - %{public}@ is not visible", buf, 0x26u);

              v1 = v63;
            }

            [v7 stopObserving];
            goto LABEL_39;
          }

          if ([v17 failed])
          {
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = __51__MessageListDataSource__performDataSourceUpdates___block_invoke_68;
            aBlock[3] = &unk_278189148;
            v20 = a1;
            aBlock[4] = *(a1 + 32);
            v21 = atomic_load((a1 + 64));
            v96 = v21;
            v93 = v1;
            v94 = *(v20 + 48);
            v95 = v4;
            v22 = _Block_copy(aBlock);
            [v65 addObject:v22];

LABEL_39:
            _Block_object_dispose(&v102, 8);
            goto LABEL_40;
          }

          if ([v17 skipped] && *(v103 + 24) != 1 || objc_msgSend(v17, "isCleanSnapshot") && (v103[3] & 1) == 0)
          {
            v85[0] = MEMORY[0x277D85DD0];
            v85[1] = 3221225472;
            v85[2] = __51__MessageListDataSource__performDataSourceUpdates___block_invoke_69;
            v85[3] = &unk_278189170;
            v30 = a1;
            v85[4] = *(a1 + 32);
            v31 = atomic_load((a1 + 64));
            v91 = v31;
            v86 = v4;
            v87 = v3;
            v90 = &v102;
            v88 = v17;
            v89 = *(v30 + 48);
            v32 = _Block_copy(v85);
            [v65 addObject:v32];

            goto LABEL_39;
          }

          if (v64)
          {
LABEL_27:
            v64 = 1;
          }

          else
          {
            v23 = [*(a1 + 32) delegate];
            v24 = [v23 messageListDataSource:*(a1 + 32) section:v4 shouldSuspendUpdatesAfterChange:v17];

            if (v24)
            {
              [*(a1 + 32) suspendUpdates];
              goto LABEL_27;
            }

            v64 = 0;
          }

          if (v66)
          {
            v36 = [*(a1 + 32) provider];
            v66 = [v36 messageListDataSource:*(a1 + 32) shouldAnimateNextUpdateInSectionDataSource:v4 change:v17];
          }

          else
          {
            v66 = 0;
          }

          [*(a1 + 48) messageListDataSource:*(a1 + 32) willUpdateWithChange:v17 section:v4 animated:v66 cleanSnapshot:{objc_msgSend(v3, "cleanSnapshot")}];
          v37 = +[MessageListDataSource log];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = *(a1 + 32);
            v39 = atomic_load((a1 + 64));
            v61 = v39;
            v40 = [v3 sectionDataSource];
            v41 = [v40 section];
            v42 = [v17 ef_publicDescription];
            *buf = 134218754;
            *&buf[4] = v38;
            *&buf[12] = 1024;
            *&buf[14] = v61;
            *&buf[18] = 2114;
            *&buf[20] = v41;
            *&buf[28] = 2114;
            *&buf[30] = v42;
            _os_log_impl(&dword_214A5E000, v37, OS_LOG_TYPE_DEFAULT, "%p: [%u][%{public}@] Perform data source update: %{public}@", buf, 0x26u);

            v1 = v63;
          }

          v43 = [MEMORY[0x277D07190] pairWithFirst:v4 second:v17];
          [v62 addObject:v43];

          goto LABEL_39;
        }

        v8 = +[MessageListDataSource log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1 + 32);
          v34 = atomic_load((a1 + 64));
          v35 = [v7 section];
          *buf = 134218754;
          *&buf[4] = v33;
          *&buf[12] = 1024;
          *&buf[14] = v34;
          *&buf[18] = 2114;
          *&buf[20] = v35;
          *&buf[28] = 2048;
          *&buf[30] = v4;
          _os_log_error_impl(&dword_214A5E000, v8, OS_LOG_TYPE_ERROR, "%p: [%u] Skip data source update - %{public}@ is stale: %p", buf, 0x26u);
        }

        v9 = *(a1 + 48);
        v10 = *(a1 + 32);
        v11 = +[MUIMessageListSectionDataSourceChange skipped];
        [v9 messageListDataSourceDidSkipUpdate:v10 section:v4 change:v11];
LABEL_40:
      }

      v69 = [obj countByEnumeratingWithState:&v106 objects:v113 count:16];
    }

    while (v69);
  }

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __51__MessageListDataSource__performDataSourceUpdates___block_invoke_71;
  v77[3] = &unk_278189198;
  v44 = a1;
  v45 = *(a1 + 32);
  v82 = *(a1 + 56);
  v77[4] = v45;
  v46 = v62;
  v78 = v46;
  v47 = atomic_load((a1 + 64));
  v83 = v47;
  v84 = v66 & 1;
  v79 = *(v44 + 48);
  v48 = v65;
  v80 = v48;
  v81 = *(v44 + 40);
  v49 = _Block_copy(v77);
  if ([v46 count])
  {
    v50 = +[MessageListDataSource log];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 32);
      v52 = atomic_load((a1 + 64));
      v53 = [v46 count];
      *buf = 134218754;
      *&buf[4] = v51;
      *&buf[12] = 1024;
      *&buf[14] = v52;
      *&buf[18] = 2048;
      *&buf[20] = v53;
      *&buf[28] = 2114;
      *&buf[30] = v46;
      _os_log_impl(&dword_214A5E000, v50, OS_LOG_TYPE_DEFAULT, "%p: [%u] Applying changes (%lu): %{public}@", buf, 0x26u);
    }

    if ([*(a1 + 40) ef_any:&__block_literal_global_77])
    {
      v54 = 0;
    }

    else
    {
      v54 = v49;
    }

    v55 = _Block_copy(v54);
    if (v66)
    {
      [v60 applySnapshot:v1 animatingDifferences:1 completion:v55];
    }

    else
    {
      [v60 applySnapshotUsingReloadData:v1 completion:v55];
    }

    if (!v55)
    {
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __51__MessageListDataSource__performDataSourceUpdates___block_invoke_2_78;
      v75[3] = &unk_2781891C0;
      v76 = v49;
      v59 = [MEMORY[0x277D071B8] mainThreadScheduler];
      [v59 performBlock:v75];
    }

LABEL_62:

    goto LABEL_63;
  }

  if ([v48 count])
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v55 = v48;
    v56 = [v55 countByEnumeratingWithState:&v71 objects:v110 count:16];
    if (v56)
    {
      v57 = *v72;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v72 != v57)
          {
            objc_enumerationMutation(v55);
          }

          (*(*(*(&v71 + 1) + 8 * j) + 16))();
        }

        v56 = [v55 countByEnumeratingWithState:&v71 objects:v110 count:16];
      }

      while (v56);
    }

    goto LABEL_62;
  }

LABEL_63:
}

void __51__MessageListDataSource__performDataSourceUpdates___block_invoke_67(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = +[MessageListDataSource log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = atomic_load((a1 + 64));
      *buf = 134218754;
      v21 = v5;
      v22 = 1024;
      v23 = v6;
      v24 = 2048;
      v25 = [v3 count];
      v26 = 2114;
      v27 = v3;
      _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "%p: [%u] Clearing %lu other sections: %{public}@", buf, 0x26u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v3;
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

          v12 = [*(a1 + 40) itemIdentifiersInSectionWithIdentifier:{*(*(&v15 + 1) + 8 * v11), v15}];
          v13 = *(*(a1 + 48) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          if ([*(*(*(a1 + 48) + 8) + 40) count])
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
          }

          [*(a1 + 40) deleteItemsWithIdentifiers:*(*(*(a1 + 48) + 8) + 40)];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v7 removeAllObjects];
  }
}

uint64_t __51__MessageListDataSource__performDataSourceUpdates___block_invoke_68(uint64_t a1)
{
  v2 = +[MessageListDataSource log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__MessageListDataSource__performDataSourceUpdates___block_invoke_68_cold_1(a1, v2);
  }

  return [*(a1 + 48) messageListDataSourceUpdateFailed:*(a1 + 32) section:*(a1 + 56)];
}

uint64_t __51__MessageListDataSource__performDataSourceUpdates___block_invoke_69(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = +[MessageListDataSource log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = atomic_load((a1 + 80));
    v6 = [v3 section];
    v7 = [*(a1 + 48) cleanSnapshot];
    v8 = *(*(*(a1 + 72) + 8) + 24);
    v9 = [*(a1 + 56) ef_publicDescription];
    v11 = 134219266;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_214A5E000, v2, OS_LOG_TYPE_DEFAULT, "%p: [%u] Skip data source update for section: %{public}@, cleanSnapshot: %{BOOL}d, didCleanSnapshot: %{BOOL}d, change: %{public}@", &v11, 0x32u);
  }

  return [*(a1 + 64) messageListDataSourceDidSkipUpdate:*(a1 + 32) section:*(a1 + 40) change:*(a1 + 56)];
}

void __51__MessageListDataSource__performDataSourceUpdates___block_invoke_71(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  if (pthread_main_np() != 1)
  {
    __51__MessageListDataSource__performDataSourceUpdates___block_invoke_71_cold_1(a1);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v63 objects:v79 count:16];
  v54 = a1;
  if (v2)
  {
    v4 = v2;
    v5 = *v64;
    *&v3 = 134218754;
    v47 = v3;
    v51 = *v64;
    do
    {
      v6 = 0;
      v52 = v4;
      do
      {
        if (*v64 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v63 + 1) + 8 * v6);
        v8 = [v7 first];
        v9 = *(a1 + 32);
        v10 = [v8 section];
        v11 = [(MessageListDataSource *)v9 _dataSourceForSection:v10];

        v12 = +[MessageListDataSource log];
        v13 = v12;
        if (v11 == v8)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v49 = *(a1 + 32);
            v17 = atomic_load((a1 + 80));
            v48 = v17;
            v50 = [v7 second];
            v18 = [v50 ef_publicDescription];
            v19 = *(a1 + 84);
            v20 = [v7 first];
            v21 = [v7 first];
            v22 = [v21 messageList];
            *buf = 134219266;
            v70 = v49;
            v71 = 1024;
            v72 = v48;
            v73 = 2114;
            v74 = v18;
            v75 = 1024;
            *v76 = v19;
            *&v76[4] = 2114;
            *&v76[6] = v20;
            v77 = 2114;
            v78 = v22;
            _os_log_impl(&dword_214A5E000, v13, OS_LOG_TYPE_DEFAULT, "%p: [%u] dataSource update completion: %{public}@ (animated=%{BOOL}d) to section datasource: %{public}@ with message list: %{public}@", buf, 0x36u);

            a1 = v54;
          }

          v23 = *(a1 + 48);
          v24 = *(a1 + 32);
          v13 = [v7 second];
          v25 = [v7 first];
          [v23 messageListDataSource:v24 didUpdateWithChange:v13 section:v25 animated:*(v54 + 84)];

          a1 = v54;
          v5 = v51;
          v4 = v52;
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 32);
          v15 = atomic_load((a1 + 80));
          v16 = [v11 section];
          *buf = v47;
          v70 = v14;
          v71 = 1024;
          v72 = v15;
          v5 = v51;
          v4 = v52;
          v73 = 2114;
          v74 = v16;
          v75 = 2048;
          *v76 = v8;
          _os_log_error_impl(&dword_214A5E000, v13, OS_LOG_TYPE_ERROR, "%p: [%u] Skip data source completion - %{public}@ is stale: %p", buf, 0x26u);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v63 objects:v79 count:16];
    }

    while (v4);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v26 = *(a1 + 56);
  v27 = [v26 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v60;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v60 != v29)
        {
          objc_enumerationMutation(v26);
        }

        (*(*(*(&v59 + 1) + 8 * i) + 16))();
      }

      v28 = [v26 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v28);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v31 = v54;
  v32 = *(v54 + 64);
  v33 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v56;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v55 + 1) + 8 * j);
        v38 = [v37 sectionDataSource];
        v39 = *(v31 + 32);
        v40 = [v38 section];
        v41 = [(MessageListDataSource *)v39 _dataSourceForSection:v40];

        if (v41 == v38)
        {
          v46 = [v37 completionHandler];

          if (!v46)
          {
            goto LABEL_34;
          }

          v42 = [v37 completionHandler];
          (*(v42 + 16))();
        }

        else
        {
          v42 = +[MessageListDataSource log];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = *(v54 + 32);
            v44 = atomic_load((v54 + 80));
            v45 = [v41 section];
            *buf = 134218754;
            v70 = v43;
            v31 = v54;
            v71 = 1024;
            v72 = v44;
            v73 = 2114;
            v74 = v45;
            v75 = 2048;
            *v76 = v38;
            _os_log_error_impl(&dword_214A5E000, v42, OS_LOG_TYPE_ERROR, "%p: [%u] Skip update completion handler - %{public}@ is stale: %p", buf, 0x26u);
          }
        }

LABEL_34:
      }

      v34 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v34);
  }
}

uint64_t __60__MessageListDataSource__insertDefaultSectionsIntoSnapshot___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sectionIdentifiers];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (id)snapshotForMessageListSectionDataSource:(id)a3
{
  v3 = [(MessageListDataSource *)self dataSource];
  v4 = [v3 snapshot];

  return v4;
}

- (id)messageListSectionDataSource:(id)a3 itemIdentifiersForIndexPaths:(id)a4
{
  v5 = a4;
  v6 = [(MessageListDataSource *)self dataSource];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__MessageListDataSource_messageListSectionDataSource_itemIdentifiersForIndexPaths___block_invoke;
  v10[3] = &unk_278189088;
  v11 = v6;
  v7 = v6;
  v8 = [v5 ef_compactMap:v10];

  return v8;
}

- (id)messageListSectionDataSource:(id)a3 itemIdentifierForIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MessageListDataSource *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  return v7;
}

- (id)messageListSectionDataSource:(id)a3 indexPathForItemIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(MessageListDataSource *)self dataSource];
  v7 = [v6 indexPathForItemIdentifier:v5];

  return v7;
}

- (id)messageListSectionDataSource:(id)a3 indexPathsForItemIdentifiers:(id)a4
{
  v5 = a4;
  v6 = [(MessageListDataSource *)self dataSource];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__MessageListDataSource_messageListSectionDataSource_indexPathsForItemIdentifiers___block_invoke;
  v10[3] = &unk_278188F08;
  v11 = v6;
  v7 = v6;
  v8 = [v5 ef_compactMap:v10];

  return v8;
}

- (BOOL)shouldReloadMessageListSectionDataSource:(id)a3
{
  v4 = [a3 section];
  LOBYTE(self) = [(MessageListDataSource *)self messageListSectionIsVisible:v4];

  return self;
}

- (id)_configuredCellForCollectionView:(void *)a3 indexPath:(void *)a4 itemID:(void *)a5 cellIdentifier:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = -[MessageListDataSource _dataSourceForSectionIndex:](a1, [v10 section]);
    v14 = v13;
    if (v13)
    {
      a1 = [v13 configuredCollectionViewCellForCollectionView:v9 indexPath:v10 itemID:v11 cellIdentifier:v12];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_supplementaryViewForCollectionView:(void *)a3 elementKind:(void *)a4 indexPath:
{
  if (a1)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = -[MessageListDataSource _dataSourceForSectionIndex:](a1, [v7 section]);
    v11 = [v10 configuredReusableSupplementaryViewForCollectionView:v9 elementKind:v8 indexPath:v7];

    v12 = [a1 delegate];
    [v12 messageListDataSource:a1 didConfigureSupplementaryView:v11 elementKind:v8 section:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_createSectionDataSourceForSection:(void *)a3 messageList:
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = a3;
    v7 = [a1 provider];
    v8 = [v7 messageListDataSource:a1 sectionDataSourceForSection:v5 messageList:v6];

    if (!v8)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:sel__createSectionDataSourceForSection_messageList_ object:a1 file:@"MessageListDataSource.m" lineNumber:331 description:@"Cannot reload message list with empty data source"];
    }

    [v8 setProvider:a1];
    v9 = +[MessageListDataSource log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_0();
      v13 = 2048;
      v14 = v8;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "%p: creating new data source (%p) for section: %{public}@", v12, 0x20u);
    }

    [(MessageListDataSource *)a1 _setDataSource:v8 forSection:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_performDataSourceUpdates:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_0_3();
    v6 = 3221225472;
    v7 = __51__MessageListDataSource__performDataSourceUpdates___block_invoke;
    v8 = &unk_278188D70;
    v9 = a1;
    v10 = v3;
    v11 = sel__performDataSourceUpdates_;
    v4 = [MEMORY[0x277D071B8] mainThreadScheduler];
    [v4 performBlock:v5];
  }
}

- (void)_setDataSource:(void *)a3 forSection:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 dataSourceForSection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__MessageListDataSource__setDataSource_forSection___block_invoke;
    v8[3] = &unk_278189010;
    v9 = v6;
    v10 = v5;
    [v7 performWhileLocked:v8];
  }
}

- (id)_dataSourceForSectionIndex:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = [a1 dataSource];
    v5 = [v4 sectionIdentifierForIndex:a2];

    v2 = [(MessageListDataSource *)v2 _dataSourceForSection:v5];
  }

  return v2;
}

- (id)_groupMessagesListItemIDsBySection:(void *)a3 snapshot:
{
  v5 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_0_3();
    v9 = 3221225472;
    v10 = __69__MessageListDataSource__groupMessagesListItemIDsBySection_snapshot___block_invoke;
    v11 = &unk_278189060;
    v12 = v5;
    v6 = [a2 ef_groupBy:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __48__MessageListDataSource_reloadItemsWithItemIDs___block_invoke_2_49(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = -[MessageListDataSource _dataSourceForSectionIndex:](v4, [a2 integerValue]);
  [v6 reconfigureItemsAtIndexPaths:v5];
}

- (void)reconfigureVisibleCells
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(MessageListDataSource *)self _indexPathsForPreparedItems];
  if ([v3 count])
  {
    v4 = [(MessageListDataSource *)self dataSource];
    v5 = [v4 snapshot];

    v6 = [v5 mui_validItemIDsFromIndexPaths:v3];
    v7 = +[MessageListDataSource log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 count];
      [v6 count];
      OUTLINED_FUNCTION_2_0();
      v11 = 2048;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&dword_214A5E000, v7, OS_LOG_TYPE_DEFAULT, "%p: updateListForChange - reconfigureVisibleCells visible cells at (%lu) indexPaths:%@ itemIDs (%lu)", v10, 0x2Au);
    }

    [(MessageListDataSource *)self reloadItemsWithItemIDs:v6];
  }
}

- (id)messageListItemsForItemIDs:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MessageListDataSource *)self dataSource];
  v6 = [v5 snapshot];

  v19 = v6;
  v20 = v4;
  v7 = [(MessageListDataSource *)self _groupMessagesListItemIDsBySection:v4 snapshot:v6];
  v8 = MEMORY[0x277CBEB18];
  [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  objc_claimAutoreleasedReturnValue();
  obj = [v7 allKeys];
  v9 = [obj countByEnumeratingWithState:v22 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(v23 + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        v15 = [(MessageListDataSource *)self _dataSourceForSection:v13];
        v16 = [v15 messageList];
        v17 = [v16 messageListItemsForItemIDs:v14];
        [v8 addObjectsFromArray:v17];
      }

      v10 = [obj countByEnumeratingWithState:v22 objects:v25 count:16];
    }

    while (v10);
  }

  return v8;
}

- (id)relatedItemIDsForSelectedItemID:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = -[MessageListDataSource _dataSourceForSectionIndex:](self, [a4 section]);
  v8 = [(MessageListDataSource *)self dataSource];
  v9 = [v8 snapshot];
  v10 = [v7 relatedItemIDsForSelectedItemID:v6 snapshot:v9];

  return v10;
}

- (id)sectionAtIndex:(int64_t)a3
{
  v3 = [(MessageListDataSource *)self _dataSourceForSectionIndex:a3];
  v4 = [v3 section];

  return v4;
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __66__MessageListDataSource_collectionView_prefetchItemsAtIndexPaths___block_invoke;
  v27[3] = &unk_278189088;
  v27[4] = self;
  v5 = [a4 ef_compactMap:v27];
  v6 = [(MessageListDataSource *)self dataSource];
  v7 = [v6 snapshot];

  v22 = v7;
  v23 = v5;
  [(MessageListDataSource *)self _groupMessagesListItemIDsBySection:v5 snapshot:v7];
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_1_2();
  v10 = [v9 allKeys];
  v11 = [v10 countByEnumeratingWithState:v24 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(v25 + 8 * i);
        v16 = [(MessageListDataSource *)self _dataSourceForSection:v15];
        v17 = [v7 objectForKeyedSubscript:{v15, v22, v23}];
        v18 = +[MessageListDataSource log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v17 count];
          *buf = 134218498;
          v29 = self;
          v30 = 2048;
          v31 = v19;
          v32 = 2112;
          v33 = v17;
          _os_log_impl(&dword_214A5E000, v18, OS_LOG_TYPE_DEFAULT, "%p: Prefetch %lu itemIDs: %@", buf, 0x20u);
        }

        v20 = [v16 messageList];
        v21 = [v20 messageListItemsForItemIDs:v17];
      }

      v12 = [v10 countByEnumeratingWithState:v24 objects:v34 count:16];
    }

    while (v12);
  }
}

- (void)_insertDefaultSectionsIntoSnapshot:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"MessageListSectionPriority", @"MessageListSectionRecent", 0}];
    if (EMBlackPearlIsFeatureEnabled())
    {
      [v4 insertObject:@"MessageListSectionRecentUnseen" atIndex:{objc_msgSend(v4, "indexOfObject:", @"MessageListSectionRecent"}];
      v5 = +[MUIiCloudMailCleanupService isFeatureAvailable];
      if (v5)
      {
        OUTLINED_FUNCTION_4_0(v5, v6, @"MessageListSectionMailCleanupTip");
      }

      v7 = [MEMORY[0x277D07148] currentDevice];
      v8 = [v7 isInternal];

      if (v8)
      {
        v9 = OUTLINED_FUNCTION_4_0(v9, v10, @"MessageListSectionHelpMailLearn");
      }

      v11 = OUTLINED_FUNCTION_4_0(v9, v10, @"MessageListSectionOnboardingTip");
      OUTLINED_FUNCTION_4_0(v11, v12, @"MessageListSectionBucketBar");
      [v4 addObject:@"MessageListSectionGroupedSenderUnseen"];
      [v4 addObject:@"MessageListSectionGroupedSender"];
    }

    if (_os_feature_enabled_impl())
    {
      [v4 addObject:@"MessageListSectionInstantAnswers"];
      [v4 addObject:@"MessageListSectionTopHits"];
    }

    [v4 addObject:@"MessageListSectionIndexedSearch"];
    [v4 addObject:@"MessageListSectionServerSearch"];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__MessageListDataSource__insertDefaultSectionsIntoSnapshot___block_invoke;
    v15[3] = &unk_278189210;
    v13 = v3;
    v16 = v13;
    v14 = [v4 ef_filter:v15];
    [v13 appendSectionsWithIdentifiers:v14];
  }
}

- (void)_resumeUpdatesWithForce:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    v4 = 2048;
    v5 = 0;
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&dword_214A5E000, a1, OS_LOG_TYPE_DEFAULT, "%p: Queue is already resumed (count=%ld, force=%{BOOL}d)", v3, 0x1Cu);
  }
}

- (void)removeMessageListSection:(uint64_t)a3 animated:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = a1;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:a2 count:1];
  [(MessageListDataSource *)a3 _performDataSourceUpdates:v4];
}

- (void)viewModelForSupplementaryViewKind:(NSObject *)a3 sectionAtIndex:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 134218240;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2048;
  HIWORD(v3) = a2;
  OUTLINED_FUNCTION_3_0(&dword_214A5E000, a2, a3, "%p: No section data source found for section %ld, suppressing supplementary view", v3, *(&v3 + 1));
}

- (void)_performDataSourceUpdateAnimated:(uint64_t)a1 withSectionDataSource:(void *)a2 cleanSnapshot:isLastUpdate:prepare:update:immediateCompletion:completion:.cold.1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[MessageListDataSource log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a2 ef_publicDescription];
    OUTLINED_FUNCTION_2_0();
    v7 = 1024;
    v8 = 0;
    v9 = 1024;
    v10 = 1;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_214A5E000, v3, OS_LOG_TYPE_DEFAULT, "%p: Add update to pending updates, isLastUpdate: %{BOOL}d, shouldBatchSectionUpdates: %{BOOL}d, update: %{public}@", v6, 0x22u);
  }
}

- (void)messageListItemAtIndexPath:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = -[MessageListDataSource _dataSourceForSectionIndex:](a2, [a1 section]);
  v6 = [v7 messageList];
  *a4 = [v6 messageListItemForItemID:a3];
}

- (void)messageListItemAtIndexPath:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_3_0(&dword_214A5E000, a2, a3, "%p: No EMCollectionItemID found at index path: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __51__MessageListDataSource__performDataSourceUpdates___block_invoke_68_cold_1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = atomic_load((a1 + 64));
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) itemIdentifiers];
  v6 = 134218498;
  v7 = v4;
  v8 = 1024;
  v9 = v3;
  v10 = 2114;
  v11 = v5;
  _os_log_error_impl(&dword_214A5E000, a2, OS_LOG_TYPE_ERROR, "%p: [%u] Reloading datasource as we failed to update snapshot with stale snapshot identifiers:%{public}@", &v6, 0x1Cu);
}

void __51__MessageListDataSource__performDataSourceUpdates___block_invoke_71_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"MessageListDataSource.m" lineNumber:1080 description:@"Current thread must be main"];
}

@end