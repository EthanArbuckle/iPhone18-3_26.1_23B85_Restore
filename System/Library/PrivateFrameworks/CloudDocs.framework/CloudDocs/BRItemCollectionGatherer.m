@interface BRItemCollectionGatherer
- (BOOL)_buildCollectionOnItemIfPossible:(id)a3;
- (BOOL)_canWatchItem:(id)a3;
- (BOOL)_isItemOwnedByAnyCollection:(id)a3;
- (BOOL)_shouldFilterEvaluatedItem:(id)a3 collectionRootItem:(id)a4;
- (BOOL)_signalDelegateIfNeededOnFinishGathering;
- (BRItemCollectionGatherer)initWithDelegate:(id)a3 query:(id)a4;
- (id)_getAppLibraryURLFromConfig:(id)a3;
- (id)_getDeletedItems;
- (id)_getUpdatedItems;
- (unint64_t)_itemID:(id)a3 becameOwnedByCollection:(id)a4;
- (unint64_t)_itemID:(id)a3 wasDeletedByCollection:(id)a4;
- (void)_accountDidChangeNotificationBlock;
- (void)_addDeletedItems:(id)a3;
- (void)_addItemCollectionOnItem:(id)a3;
- (void)_addUpdatedItems:(id)a3;
- (void)_boostAppLibraryOfItemIfNeeded:(id)a3;
- (void)_invalidateAndNotifyDelegate:(BOOL)a3;
- (void)_itemCollectionGathererSendUpdates;
- (void)_queueSignalDelegateIfNeededOnFinishGathering;
- (void)_removeCollectionFromGatherSet:(id)a3;
- (void)_signalDelegateIfNeededOnFinishGathering;
- (void)_startObservingAccountTokenDidChangeNotification;
- (void)_startWatchingAppLibraries:(id)a3;
- (void)_startWatchingNewSubItem:(id)a3;
- (void)_startWatchingRootItemWithConfig:(id)a3;
- (void)_startWatchingURLs:(id)a3;
- (void)_stopObeservingCollections;
- (void)_stopObservingAccountTokenDidChangeNotification;
- (void)_stopWatchingItemIDRecusively:(id)a3 itemIDsInItem:(id)a4;
- (void)_unboostApplibrariesIfNeeded;
- (void)collection:(id)a3 didEncounterError:(id)a4;
- (void)collection:(id)a3 didUpdateItems:(id)a4 replaceItemsByFormerID:(id)a5 deleteItemsWithIDs:(id)a6;
- (void)collectionDidFinishGathering:(id)a3;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)dataForCollectionShouldBeReloaded:(id)a3 deleteItemsWithIDs:(id)a4;
- (void)disableUpdates;
- (void)enableUpdates;
- (void)pauseWatchingWithCompletionBlock:(id)a3;
- (void)resumeWatching;
- (void)startWatchingRootItemWithScopes:(id)a3;
@end

@implementation BRItemCollectionGatherer

- (BRItemCollectionGatherer)initWithDelegate:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v45.receiver = self;
  v45.super_class = BRItemCollectionGatherer;
  v8 = [(BRItemCollectionGatherer *)&v45 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(v8 + 2);
    *(v8 + 2) = v9;

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.br.item-collection-gatherer", v12);

    v14 = *(v8 + 1);
    *(v8 + 1) = v13;

    objc_storeWeak(v8 + 3, v6);
    objc_storeStrong(v8 + 4, a4);
    v15 = [*(v8 + 4) predicate];
    v16 = *(v8 + 5);
    *(v8 + 5) = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = *(v8 + 7);
    *(v8 + 7) = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20 = *(v8 + 8);
    *(v8 + 8) = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v22 = *(v8 + 9);
    *(v8 + 9) = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v24 = *(v8 + 10);
    *(v8 + 10) = v23;

    *(v8 + 88) = 0;
    v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v26 = *(v8 + 12);
    *(v8 + 12) = v25;

    v27 = *(v8 + 15);
    *(v8 + 15) = 0;

    v28 = +[BRRemoteUserDefaults sharedDefaults];
    [v28 collectionGathererPacerMinFireInterval];
    v30 = br_pacer_create("collection-gatherer", *(v8 + 1), v29);
    v31 = *(v8 + 18);
    *(v8 + 18) = v30;

    objc_initWeak(&location, v8);
    v32 = *(v8 + 18);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __51__BRItemCollectionGatherer_initWithDelegate_query___block_invoke;
    v42[3] = &unk_1E7A15630;
    objc_copyWeak(&v43, &location);
    br_pacer_set_event_handler(v32, v42);
    br_pacer_resume(*(v8 + 18));
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = *(v8 + 19);
    *(v8 + 19) = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v36 = *(v8 + 20);
    *(v8 + 20) = v35;

    v37 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v38 = dispatch_queue_attr_make_with_autorelease_frequency(v37, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create("com.apple.br.item-collection-gatherer.invalidate", v38);

    v40 = *(v8 + 21);
    *(v8 + 21) = v39;

    *(v8 + 176) = 0;
    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __51__BRItemCollectionGatherer_initWithDelegate_query___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _itemCollectionGathererSendUpdates];
}

- (void)_stopObservingAccountTokenDidChangeNotification
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_accountDidChangeNotificationBlock
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startObservingAccountTokenDidChangeNotification
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __76__BRItemCollectionGatherer__startObservingAccountTokenDidChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _accountDidChangeNotificationBlock];
    WeakRetained = v2;
  }
}

- (BOOL)_shouldFilterEvaluatedItem:(id)a3 collectionRootItem:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 itemID];
  if ((-[BRWatchingConfiguration watchTypes](self->_config, "watchTypes") & 0x40) != 0 && ![v6 isFolder])
  {
    goto LABEL_21;
  }

  if (([(BRWatchingConfiguration *)self->_config watchTypes]& 1) == 0)
  {
    v9 = [v6 parentItemID];

    if (!v9)
    {
      v31 = brc_bread_crumbs("[BRItemCollectionGatherer _shouldFilterEvaluatedItem:collectionRootItem:]", 387);
      v32 = brc_default_log(0, 0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v43 = self;
        v44 = 2112;
        v45 = v6;
        v46 = 2112;
        v47 = v31;
        _os_log_fault_impl(&dword_1AE2A9000, v32, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ - fp items should always have a parentItemID set on it - %@%@", buf, 0x20u);
      }

      goto LABEL_21;
    }

    v10 = [v6 parentItemID];
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = v10;
    watchedAppLibraryFPItemIDs = self->_watchedAppLibraryFPItemIDs;
    v13 = [v6 parentItemID];
    LODWORD(watchedAppLibraryFPItemIDs) = [(NSMutableSet *)watchedAppLibraryFPItemIDs containsObject:v13];

    if (!watchedAppLibraryFPItemIDs)
    {
      goto LABEL_27;
    }

    v14 = [v6 displayName];
    v15 = [v14 isEqual:@"Documents"];

    if (([(BRWatchingConfiguration *)self->_config watchTypes]& 6) != 0 || v15)
    {
      v16 = [v7 providerItemIdentifier];
      v17 = [v16 isEqualToString:*MEMORY[0x1E6967168]];

      if (!v17 || (v15 & 1) == 0 && ([v6 displayName], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", @"Desktop"), v18, (v19 & 1) == 0))
      {
LABEL_27:
        v20 = [(BRWatchingConfiguration *)self->_config gatherPrefix];

        if (!v20)
        {
          goto LABEL_24;
        }

        v21 = MEMORY[0x1E696AE70];
        v22 = MEMORY[0x1E696AEC0];
        v23 = [(BRWatchingConfiguration *)self->_config gatherPrefix];
        v24 = [v22 stringWithFormat:@"^%@", v23];
        v41 = 0;
        v25 = [v21 regularExpressionWithPattern:v24 options:0 error:&v41];
        v26 = v41;

        if (v26)
        {
          v27 = brc_bread_crumbs("[BRItemCollectionGatherer _shouldFilterEvaluatedItem:collectionRootItem:]", 428);
          v28 = brc_default_log(1, 0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [BRItemCollectionGatherer _shouldFilterEvaluatedItem:collectionRootItem:];
          }

          goto LABEL_21;
        }

        v35 = [v6 displayName];
        v36 = [v6 displayName];
        v37 = [v25 numberOfMatchesInString:v35 options:0 range:{0, objc_msgSend(v36, "length")}];

        if (v37)
        {
LABEL_24:
          v38 = [v6 fileURL];
          v39 = [v38 lastPathComponent];
          v40 = [v39 br_isExcludedWithMaximumDepth:1];

          v30 = v40 ^ 1;
          goto LABEL_22;
        }
      }
    }

LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  v29 = [v6 itemID];
  v30 = [v29 isEqualToItemID:v8];

LABEL_22:
  v33 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)_addItemCollectionOnItem:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 itemID];
  v6 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap objectForKey:v5];

  if (!v6)
  {
    v7 = brc_bread_crumbs("[BRItemCollectionGatherer _addItemCollectionOnItem:]", 460);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v4 providerItemIdentifier];
      *location = 138413058;
      *&location[4] = self;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v7;
      _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Adding Item Collection on itemID = %@, providerItemIdentifier = %@%@", location, 0x2Au);
    }

    v9 = [MEMORY[0x1E69673A8] defaultManager];
    v10 = [v9 newCollectionWithItemID:v5];

    objc_initWeak(location, self);
    v11 = MEMORY[0x1E696AE18];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __53__BRItemCollectionGatherer__addItemCollectionOnItem___block_invoke;
    v20 = &unk_1E7A16B70;
    objc_copyWeak(&v22, location);
    v21 = v4;
    v12 = [v11 predicateWithBlock:&v17];
    [v10 setItemFilteringPredicate:{v12, v17, v18, v19, v20}];

    [v10 setDelegate:self];
    [v10 setWorkingQueue:self->_queue];
    [v10 setShowHiddenFiles:1];
    v13 = [v10 settings];
    [v13 setRequireSandboxAccess:1];

    v14 = [v10 settings];
    [v14 setUnbounded:1];

    [(NSMutableDictionary *)self->_itemIDToItemCollectionMap setObject:v10 forKey:v5];
    [(NSMutableSet *)self->_waitingToBeGatheredCollections addObject:v10];
    [(NSMutableSet *)self->_collectionsSet addObject:v10];
    [v10 startObserving];

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __53__BRItemCollectionGatherer__addItemCollectionOnItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _shouldFilterEvaluatedItem:v3 collectionRootItem:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_canWatchItem:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 itemID];
  if (([(BRWatchingConfiguration *)self->_config watchTypes]& 2) != 0 || ([(BRWatchingConfiguration *)self->_config watchTypes]& 1) != 0)
  {
    v14 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap count]== 0;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap objectForKey:v5];

    if (v6 || ![v4 isFolder] || !-[BRWatchingConfiguration watchTypes](self->_config, "watchTypes"))
    {
      goto LABEL_12;
    }

    watchedAppLibraryFPItemIDs = self->_watchedAppLibraryFPItemIDs;
    v8 = [v4 parentItemID];
    LODWORD(watchedAppLibraryFPItemIDs) = [(NSMutableSet *)watchedAppLibraryFPItemIDs containsObject:v8];

    if (!watchedAppLibraryFPItemIDs || (([v4 displayName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", @"Documents"), v9, (-[BRWatchingConfiguration watchTypes](self->_config, "watchTypes") & 8) != 0) || (v10 & 1) == 0) && ((v10 | (-[BRWatchingConfiguration watchTypes](self->_config, "watchTypes") >> 2)) & 1) != 0)
    {
      v11 = [v4 fileURL];
      v12 = [v11 path];
      v13 = [v12 br_isExcludedWithMaximumDepth:1024];

      v14 = v13 ^ 1;
    }

    else
    {
LABEL_12:
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)_buildCollectionOnItemIfPossible:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = brc_bread_crumbs("[BRItemCollectionGatherer _buildCollectionOnItemIfPossible:]", 544);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v4 itemID];
    v11 = [v4 providerItemIdentifier];
    v12 = 138413058;
    v13 = self;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - _buildCollectionOnItemIfPossible itemID = %@, providerItemIdentifier = %@%@", &v12, 0x2Au);
  }

  dispatch_assert_queue_V2(self->_queue);
  v7 = [(BRItemCollectionGatherer *)self _canWatchItem:v4];
  if (v7)
  {
    [(BRItemCollectionGatherer *)self _addItemCollectionOnItem:v4];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_getAppLibraryURLFromConfig:(id)a3
{
  v4 = a3;
  v5 = [(BRWatchingConfiguration *)self->_config appLibraryIDToURLMapOfSuppliedAppIDs];
  v6 = [v5 valueForKey:v4];

  if (!v6)
  {
    v7 = [(BRWatchingConfiguration *)self->_config appLibraryIDToURLMapOfSuppliedURLs];
    v6 = [v7 valueForKey:v4];
  }

  return v6;
}

- (void)_boostAppLibraryOfItemIfNeeded:(id)a3
{
  v4 = [a3 fileURL];
  v5 = [v4 br_containerID];

  if (([(NSMutableSet *)self->_boostedAppLibraries containsObject:v5]& 1) == 0)
  {
    v6 = [(BRItemCollectionGatherer *)self _getAppLibraryURLFromConfig:v5];
    if (v6)
    {
      v7 = [BRFileProviderServicesFactory itemServiceSyncProxyForURL:v6];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __59__BRItemCollectionGatherer__boostAppLibraryOfItemIfNeeded___block_invoke;
      v8[3] = &unk_1E7A16B98;
      v9 = v5;
      v10 = self;
      [v7 boostFilePresenter:v8];
    }
  }
}

void __59__BRItemCollectionGatherer__boostAppLibraryOfItemIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = brc_bread_crumbs("[BRItemCollectionGatherer _boostAppLibraryOfItemIfNeeded:]_block_invoke", 578);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_debug_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] boosted %@ with %@%@", &v8, 0x20u);
  }

  if (!v3)
  {
    [*(*(a1 + 40) + 96) addObject:*(a1 + 32)];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startWatchingURLs:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]", 586);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRItemCollectionGatherer _startWatchingURLs:];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v26 = v7;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v29 + 1) + 8 * v11);
      v13 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]", 588);
      v14 = brc_default_log(1, 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v12 path];
        v19 = [v18 fp_obfuscatedPath];
        *buf = 138412802;
        v34 = self;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = v13;
        _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - -- _startWatchingURLsIfNeeded working on %@%@", buf, 0x20u);

        v7 = v26;
      }

      if (v12)
      {
        if (([v12 br_isInSyncedLocation] & 1) == 0)
        {
          v17 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]", 594);
          v21 = brc_default_log(0, 0);
          if (os_log_type_enabled(v21, 0x90u))
          {
            v22 = [v12 path];
            v23 = [v22 fp_obfuscatedPath];
            *buf = 138412802;
            v34 = self;
            v35 = 2112;
            v36 = v23;
            v37 = 2112;
            v38 = v17;
            _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] %@ - Can't Watch url %@ since its not in a synced location.%@", buf, 0x20u);
            goto LABEL_24;
          }

LABEL_21:

          goto LABEL_22;
        }

        v15 = [MEMORY[0x1E69673A8] defaultManager];
        v28 = 0;
        v16 = [v15 itemForURL:v12 error:&v28];
        v17 = v28;

        if (!v16)
        {
          v21 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]", 601);
          v22 = brc_default_log(0, 0);
          if (!os_log_type_enabled(v22, 0x90u))
          {
            goto LABEL_20;
          }

          v23 = [v12 path];
          v25 = [v23 fp_obfuscatedPath];
          *buf = 138413058;
          v34 = self;
          v35 = 2112;
          v36 = v25;
          v37 = 2112;
          v38 = v17;
          v39 = 2112;
          v40 = v21;
          _os_log_error_impl(&dword_1AE2A9000, v22, 0x90u, "[ERROR] %@ - Can't build an fpItem for %@ - %@%@", buf, 0x2Au);

LABEL_24:
LABEL_20:

          goto LABEL_21;
        }

        [(BRItemCollectionGatherer *)self _boostAppLibraryOfItemIfNeeded:v16];
        [(BRItemCollectionGatherer *)self _startWatchingNewSubItem:v16];
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__BRItemCollectionGatherer__startWatchingURLs___block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_async(queue, block);
LABEL_22:

  v24 = *MEMORY[0x1E69E9840];
}

unint64_t __47__BRItemCollectionGatherer__startWatchingURLs___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(*(a1 + 32) + 72) count];
  if (!result)
  {
    result = [*(*v1 + 48) watchTypes];
    if (result <= 3)
    {
      v3 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]_block_invoke", 612);
      v4 = brc_default_log(1, 0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __47__BRItemCollectionGatherer__startWatchingURLs___block_invoke_cold_1(v1);
      }

      return [*v1 _queueSignalDelegateIfNeededOnFinishGathering];
    }
  }

  return result;
}

- (void)_startWatchingAppLibraries:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v5 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingAppLibraries:]", 620);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v27 = self;
    v28 = 2112;
    v29 = v4;
    v30 = 2112;
    v31 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ -  _startWatchingAppLibrariesIfNeeded(%@)%@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke;
  v19[3] = &unk_1E7A16BC0;
  v19[4] = self;
  v7 = MEMORY[0x1B26FEA90](v19);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_2;
  v16[3] = &unk_1E7A16BE8;
  v8 = v7;
  v16[4] = self;
  v17 = v8;
  v18 = &v20;
  [v4 enumerateKeysAndObjectsUsingBlock:v16];
  if ([v21[5] count])
  {
    v9 = self->_appLibrariesLookupAttempts + 1;
    self->_appLibrariesLookupAttempts = v9;
    self->_finishedLookingUpAppLibraries = 0;
    v10 = dispatch_time(0, 1000000000 * (1 << v9));
    queue = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_58;
    v15[3] = &unk_1E7A16580;
    v15[4] = self;
    v15[5] = &v20;
    dispatch_after(v10, queue, v15);
  }

  else
  {
    v12 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingAppLibraries:]", 648);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRItemCollectionGatherer _startWatchingAppLibraries:?];
    }

    self->_finishedLookingUpAppLibraries = 1;
    [(BRItemCollectionGatherer *)self _queueSignalDelegateIfNeededOnFinishGathering];
  }

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 _boostAppLibraryOfItemIfNeeded:v6];
  v4 = *(*(a1 + 32) + 56);
  v5 = [v6 itemID];
  [v4 addObject:v5];

  [*(a1 + 32) _startWatchingNewSubItem:v6];
}

void __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69673A8] defaultManager];
  v8 = [v7 itemForURL:v6 error:0];

  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (*(*(a1 + 32) + 128) < 7uLL)
  {
    [*(*(*(a1 + 48) + 8) + 40) setValue:v6 forKey:v5];
  }

  else
  {
    v9 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingAppLibraries:]_block_invoke_2", 632);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_2_cold_1(v9, v10);
    }

    *(*(a1 + 32) + 136) = 1;
    [*(a1 + 32) _queueSignalDelegateIfNeededOnFinishGathering];
  }
}

uint64_t __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_58(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingAppLibraries:]_block_invoke", 644);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_58_cold_1(a1);
  }

  return [*(a1 + 32) _startWatchingAppLibraries:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)startWatchingRootItemWithScopes:(id)a3
{
  v4 = a3;
  v5 = [[BRWatchingConfiguration alloc] initWithScopes:v4 predicate:self->_predicate];

  [(BRItemCollectionGatherer *)self _startWatchingRootItemWithConfig:v5];
  [(BRItemCollectionGatherer *)self _startObservingAccountTokenDidChangeNotification];
}

- (void)_startWatchingRootItemWithConfig:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke;
  v7[3] = &unk_1E7A14A08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingRootItemWithConfig:]_block_invoke", 678);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = (a1 + 32);
  objc_storeStrong((v5 + 48), v4);
  v7 = [*(*v6 + 48) urls];
  if ([v7 count] < 2)
  {
    v10 = *v6;
    v11 = [*(*v6 + 48) urls];
    [v10 _startWatchingURLs:v11];

    v12 = *v6;
    v8 = [v12[6] appLibraryIDToURLMapOfSuppliedAppIDs];
    [v12 _startWatchingAppLibraries:v8];
  }

  else
  {
    v8 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingRootItemWithConfig:]_block_invoke", 682);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, 0x90u))
    {
      __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke_cold_2(v6);
    }
  }
}

- (void)_startWatchingNewSubItem:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__BRItemCollectionGatherer__startWatchingNewSubItem___block_invoke;
  v7[3] = &unk_1E7A14A08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_stopWatchingItemIDRecusively:(id)a3 itemIDsInItem:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = brc_bread_crumbs("[BRItemCollectionGatherer _stopWatchingItemIDRecusively:itemIDsInItem:]", 701);
  v8 = brc_default_log(1, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v36 = self;
    v37 = 2112;
    v38 = v6;
    v39 = 2112;
    v40 = v7;
    _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - stop watching itemID %@ recursively%@", buf, 0x20u);
  }

  if (v6)
  {
    [v29 addObject:v6];
    v9 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap objectForKey:v6];
    v10 = v9;
    if (v9)
    {
      [v9 stopObserving];
      [(NSMutableSet *)self->_collectionsSet removeObject:v10];
      v11 = brc_bread_crumbs("[BRItemCollectionGatherer _stopWatchingItemIDRecusively:itemIDsInItem:]", 715);
      v12 = brc_default_log(1, 0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v10 items];
        *buf = 138413058;
        v36 = self;
        v37 = 2112;
        v38 = v6;
        v39 = 2112;
        v40 = v27;
        v41 = 2112;
        v42 = v11;
        _os_log_debug_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item %@ collection childs %@%@", buf, 0x2Au);
      }

      v28 = v6;

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = [v10 items];
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            v19 = [v18 itemID];
            v20 = [(BRItemCollectionGatherer *)self _itemID:v19 wasDeletedByCollection:v10];

            if (v20)
            {
              v21 = brc_bread_crumbs("[BRItemCollectionGatherer _stopWatchingItemIDRecusively:itemIDsInItem:]", 722);
              v22 = brc_default_log(1, 0);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                v23 = [v18 itemID];
                *buf = 138413058;
                v36 = self;
                v37 = 2112;
                v38 = v23;
                v39 = 2048;
                v40 = v20;
                v41 = 2112;
                v42 = v21;
                _os_log_debug_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item ID %@ is owned by %lu other collections. Stopping the recursive traverse%@", buf, 0x2Au);
              }
            }

            else
            {
              v21 = [v18 itemID];
              [(BRItemCollectionGatherer *)self _stopWatchingItemIDRecusively:v21 itemIDsInItem:v29];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);
      }

      v6 = v28;
      [(NSMutableDictionary *)self->_itemIDToItemCollectionMap removeObjectForKey:v28];
      [(BRItemCollectionGatherer *)self _removeCollectionFromGatherSet:v10];
    }

    else
    {
      v24 = brc_bread_crumbs("[BRItemCollectionGatherer _stopWatchingItemIDRecusively:itemIDsInItem:]", 709);
      v25 = brc_default_log(1, 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v36 = self;
        v37 = 2112;
        v38 = v6;
        v39 = 2112;
        v40 = v24;
        _os_log_debug_impl(&dword_1AE2A9000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - No collection found for item %@%@", buf, 0x20u);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_unboostApplibrariesIfNeeded
{
  v4 = brc_bread_crumbs("[BRItemCollectionGatherer _unboostApplibrariesIfNeeded]", 737);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v4;
    _os_log_fault_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: appLibraryURL%@", a1, 0xCu);
  }
}

void __56__BRItemCollectionGatherer__unboostApplibrariesIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs("[BRItemCollectionGatherer _unboostApplibrariesIfNeeded]_block_invoke", 741);
    v4 = brc_default_log(1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __56__BRItemCollectionGatherer__unboostApplibrariesIfNeeded__block_invoke_cold_1(a1);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 96);

    [v6 removeObject:v5];
  }
}

- (void)_stopObeservingCollections
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_collectionsSet;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v7++) stopObserving];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateAndNotifyDelegate:(BOOL)a3
{
  invalidateQueue = self->_invalidateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke;
  v4[3] = &unk_1E7A15768;
  v4[4] = self;
  v5 = a3;
  dispatch_async(invalidateQueue, v4);
}

void __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[176] & 1) == 0)
  {
    [v2 disableUpdates];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke_2;
    v5[3] = &unk_1E7A15768;
    v5[4] = v3;
    v6 = *(a1 + 40);
    dispatch_sync(v4, v5);
    *(*(a1 + 32) + 176) = 1;
  }
}

void __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke_2(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer _invalidateAndNotifyDelegate:]_block_invoke_2", 764);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke_2_cold_1(a1);
  }

  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained itemCollectionGathererDidInvalidate];
  }

  objc_storeWeak((*(a1 + 32) + 24), 0);
  [*(a1 + 32) _stopObeservingCollections];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 80);
  *(v11 + 80) = 0;

  *(*(a1 + 32) + 88) = 0;
  v13 = *(a1 + 32);
  v14 = *(v13 + 96);
  *(v13 + 96) = 0;

  [*(a1 + 32) _stopObservingAccountTokenDidChangeNotification];
  v15 = *(a1 + 32);
  v16 = *(v15 + 16);
  *(v15 + 16) = 0;

  [*(*(a1 + 32) + 152) removeAllObjects];
  [*(*(a1 + 32) + 160) removeAllObjects];
  br_pacer_cancel(*(*(a1 + 32) + 144));
}

- (void)disableUpdates
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__BRItemCollectionGatherer_disableUpdates__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)enableUpdates
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__BRItemCollectionGatherer_enableUpdates__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)pauseWatchingWithCompletionBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__BRItemCollectionGatherer_pauseWatchingWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E7A16670;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __61__BRItemCollectionGatherer_pauseWatchingWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer pauseWatchingWithCompletionBlock:]_block_invoke", 821);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __61__BRItemCollectionGatherer_pauseWatchingWithCompletionBlock___block_invoke_cold_1(a1);
  }

  [*(a1 + 32) _stopObeservingCollections];
  return (*(*(a1 + 40) + 16))();
}

- (void)resumeWatching
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__BRItemCollectionGatherer_resumeWatching__block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__BRItemCollectionGatherer_resumeWatching__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer resumeWatching]_block_invoke", 829);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__BRItemCollectionGatherer_resumeWatching__block_invoke_cold_1(a1);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(*(a1 + 32) + 16) allValues];
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

        [*(*(&v10 + 1) + 8 * v8++) startObserving];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_queueSignalDelegateIfNeededOnFinishGathering
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__BRItemCollectionGatherer__queueSignalDelegateIfNeededOnFinishGathering__block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_signalDelegateIfNeededOnFinishGathering
{
  if (self->_finishedInitialGathering || [(NSMutableSet *)self->_waitingToBeGatheredCollections count]|| !self->_finishedLookingUpAppLibraries)
  {
    return 0;
  }

  v3 = brc_bread_crumbs("[BRItemCollectionGatherer _signalDelegateIfNeededOnFinishGathering]", 847);
  v4 = 1;
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRItemCollectionGatherer _signalDelegateIfNeededOnFinishGathering];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained itemCollectionGathererFinishedGathering];

  self->_finishedInitialGathering = 1;
  return v4;
}

- (void)_removeCollectionFromGatherSet:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_waitingToBeGatheredCollections removeObject:a3];
  if (![(BRItemCollectionGatherer *)self _signalDelegateIfNeededOnFinishGathering])
  {
    if (!self->_finishedLookingUpAppLibraries)
    {
      v4 = brc_bread_crumbs("[BRItemCollectionGatherer _removeCollectionFromGatherSet:]", 860);
      v5 = brc_default_log(1, 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [BRItemCollectionGatherer _removeCollectionFromGatherSet:?];
      }
    }

    if ([(NSMutableSet *)self->_waitingToBeGatheredCollections count])
    {
      v6 = brc_bread_crumbs("[BRItemCollectionGatherer _removeCollectionFromGatherSet:]", 863);
      v7 = brc_default_log(1, 0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = [(NSMutableSet *)self->_waitingToBeGatheredCollections anyObject];
        v10 = [(NSMutableSet *)self->_waitingToBeGatheredCollections count];
        v11 = 138413058;
        v12 = self;
        v13 = 2112;
        v14 = v9;
        v15 = 2048;
        v16 = v10 - 1;
        v17 = 2112;
        v18 = v6;
        _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - still waiting on %@ (and %lu more collections) to finish gathering%@", &v11, 0x2Au);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_itemID:(id)a3 becameOwnedByCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_itemOwnersMap objectForKey:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)self->_itemOwnersMap setObject:v8 forKey:v6];
  }

  [v8 addObject:v7];
  v9 = [v8 count];

  return v9;
}

- (unint64_t)_itemID:(id)a3 wasDeletedByCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_itemOwnersMap objectForKey:v6];
  if (!v8)
  {
    [BRItemCollectionGatherer _itemID:wasDeletedByCollection:];
  }

  [v8 removeObject:v7];
  if (![v8 count])
  {
    [(NSMutableDictionary *)self->_itemOwnersMap removeObjectForKey:v6];
  }

  v9 = [v8 count];

  return v9;
}

- (BOOL)_isItemOwnedByAnyCollection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_itemOwnersMap objectForKey:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(BRItemCollectionGatherer *)self dataForCollectionShouldBeReloaded:v5 deleteItemsWithIDs:MEMORY[0x1E695E0F0]];
}

- (void)dataForCollectionShouldBeReloaded:(id)a3 deleteItemsWithIDs:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (([(NSMutableSet *)self->_collectionsSet containsObject:v6]& 1) != 0)
  {
    v8 = brc_bread_crumbs("[BRItemCollectionGatherer dataForCollectionShouldBeReloaded:deleteItemsWithIDs:]", 907);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - dataForCollectionShouldBeReloaded on collection %@ - forwarding it to the didUpdate method%@", &v13, 0x20u);
    }

    v10 = [v6 items];
    [(BRItemCollectionGatherer *)self collection:v6 didUpdateItems:v10 replaceItemsByFormerID:MEMORY[0x1E695E0F8] deleteItemsWithIDs:v7];
  }

  else
  {
    v10 = brc_bread_crumbs("[BRItemCollectionGatherer dataForCollectionShouldBeReloaded:deleteItemsWithIDs:]", 904);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Ignoring events from item collection: %@%@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)collectionDidFinishGathering:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSMutableSet *)self->_collectionsSet containsObject:v4]& 1) == 0)
  {
    WeakRetained = brc_bread_crumbs("[BRItemCollectionGatherer collectionDidFinishGathering:]", 913);
    v18 = brc_default_log(1, 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = self;
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = WeakRetained;
      _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Ignoring events from item collection: %@%@", buf, 0x20u);
    }

    goto LABEL_17;
  }

  v5 = brc_bread_crumbs("[BRItemCollectionGatherer collectionDidFinishGathering:]", 920);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = self;
    v26 = 2112;
    v27 = v4;
    v28 = 2112;
    v29 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - collectionDidFinishGathering on %@%@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [v4 items];
  [WeakRetained itemCollectionGathererGatheredItems:v8];

  v9 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v4 items];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 itemID];
        [(BRItemCollectionGatherer *)self _itemID:v16 becameOwnedByCollection:v4];

        [(BRItemCollectionGatherer *)self _buildCollectionOnItemIfPossible:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  finishedInitialGathering = self->_finishedInitialGathering;
  [(BRItemCollectionGatherer *)self _removeCollectionFromGatherSet:v4];
  if (!finishedInitialGathering && self->_finishedInitialGathering && v9 != [(NSMutableDictionary *)self->_itemIDToItemCollectionMap count])
  {
    [BRItemCollectionGatherer collectionDidFinishGathering:buf];
    v18 = *buf;
LABEL_17:
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_addDeletedItems:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(NSMutableSet *)self->_deletedItems addObjectsFromArray:v5];
  [(NSMutableDictionary *)self->_addedItems removeObjectsForKeys:v5];
}

- (void)_addUpdatedItems:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        addedItems = self->_addedItems;
        v12 = [v10 itemID];
        [(NSMutableDictionary *)addedItems setObject:v10 forKeyedSubscript:v12];

        deletedItems = self->_deletedItems;
        v14 = [v10 itemID];
        [(NSMutableSet *)deletedItems removeObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_getUpdatedItems
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSMutableDictionary *)self->_addedItems allValues];
  [(NSMutableDictionary *)self->_addedItems removeAllObjects];

  return v3;
}

- (id)_getDeletedItems
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSMutableSet *)self->_deletedItems allObjects];
  [(NSMutableSet *)self->_deletedItems removeAllObjects];

  return v3;
}

- (void)collection:(id)a3 didEncounterError:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([(NSMutableSet *)self->_collectionsSet containsObject:v6]& 1) != 0)
  {
    v8 = [(NSMutableSet *)self->_waitingToBeGatheredCollections containsObject:v6];
    v9 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 985);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      v38 = &stru_1F23D4ED0;
      *v57 = 138413314;
      *&v57[4] = self;
      if (v8)
      {
        v38 = @" while gathering";
      }

      *&v57[12] = 2112;
      *&v57[14] = v6;
      *&v57[22] = 2112;
      v58 = v7;
      *v59 = 2112;
      *&v59[2] = v38;
      *&v59[10] = 2112;
      *&v59[12] = v9;
      _os_log_error_impl(&dword_1AE2A9000, v10, 0x90u, "[ERROR] %@ - collection %@ did encounter error %@%@%@", v57, 0x34u);
    }

    *v57 = 0;
    *&v57[8] = v57;
    *&v57[16] = 0x3032000000;
    v58 = __Block_byref_object_copy__12;
    *v59 = __Block_byref_object_dispose__12;
    *&v59[8] = 0;
    itemIDToItemCollectionMap = self->_itemIDToItemCollectionMap;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke;
    v46[3] = &unk_1E7A16C10;
    v12 = v6;
    v47 = v12;
    v48 = v57;
    [(NSMutableDictionary *)itemIDToItemCollectionMap enumerateKeysAndObjectsUsingBlock:v46];
    v13 = *(*&v57[8] + 40);
    if (!v13)
    {
      v27 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1037);
      v28 = brc_default_log(0, 0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v50 = self;
        v51 = 2112;
        v52 = v12;
        v53 = 2112;
        v54 = v27;
        _os_log_fault_impl(&dword_1AE2A9000, v28, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ - Couldn't locate itemID for collection %@%@", buf, 0x20u);
      }

      if (v8)
      {
        [(BRItemCollectionGatherer *)self _removeCollectionFromGatherSet:v12];
      }

      goto LABEL_27;
    }

    failureCountByItemID = self->_failureCountByItemID;
    if (!failureCountByItemID)
    {
      v15 = objc_opt_new();
      v16 = self->_failureCountByItemID;
      self->_failureCountByItemID = v15;

      failureCountByItemID = self->_failureCountByItemID;
      v13 = *(*&v57[8] + 40);
    }

    v17 = [(NSMutableDictionary *)failureCountByItemID objectForKeyedSubscript:v13];
    v18 = [v17 longLongValue];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18];
    [(NSMutableDictionary *)self->_failureCountByItemID setObject:v19 forKeyedSubscript:*(*&v57[8] + 40)];

    v20 = v18 + 1;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    if ((v18 + 1) < 6)
    {
      if ([v7 br_isFileProviderErrorCode:-1005])
      {
        v21 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1008);
        v22 = brc_default_log(1, 0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(*&v57[8] + 40);
          *buf = 138412802;
          v50 = self;
          v51 = 2112;
          v52 = v29;
          v53 = 2112;
          v54 = v21;
          _os_log_debug_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Looks like item %@ got deleted -> recursive delete.%@", buf, 0x20u);
        }

        goto LABEL_22;
      }

      if (![v7 br_isCocoaErrorCode:257])
      {
        v34 = [MEMORY[0x1E69673A8] defaultManager];
        v35 = *(*&v57[8] + 40);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke_68;
        v41[3] = &unk_1E7A16C38;
        v41[4] = self;
        v41[5] = v57;
        v41[6] = &v42;
        [v34 fetchItemForItemID:v35 completionHandler:v41];

        if ((v43[3] & 1) == 0)
        {
          v36 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1026);
          v37 = brc_default_log(1, 0);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v50 = self;
            v51 = 2048;
            v52 = v20;
            v53 = 2112;
            v54 = v36;
            _os_log_debug_impl(&dword_1AE2A9000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - restart observing the collection. Failure count [%llu]%@", buf, 0x20u);
          }

          [v12 startObserving];
          goto LABEL_26;
        }

LABEL_23:
        v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(BRItemCollectionGatherer *)self _stopWatchingItemIDRecusively:*(*&v57[8] + 40) itemIDsInItem:v30];
        v31 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1032);
        v32 = brc_default_log(1, 0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v39 = *(*&v57[8] + 40);
          *buf = 138413058;
          v50 = self;
          v51 = 2112;
          v52 = v30;
          v53 = 2112;
          v54 = v39;
          v55 = 2112;
          v56 = v31;
          _os_log_debug_impl(&dword_1AE2A9000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - All these items [%@] found under this item [%@] and should be deleted.%@", buf, 0x2Au);
        }

        [(BRItemCollectionGatherer *)self _addDeletedItems:v30];
        br_pacer_signal(self->_notificationPacer);

LABEL_26:
        _Block_object_dispose(&v42, 8);

LABEL_27:
        _Block_object_dispose(v57, 8);

        goto LABEL_28;
      }

      v21 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1011);
      v22 = brc_default_log(0, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v40 = *(*&v57[8] + 40);
        *buf = 138412802;
        v50 = self;
        v51 = 2112;
        v52 = v40;
        v53 = 2112;
        v54 = v21;
        v24 = "[CRIT] UNREACHABLE: %@ - Looks like we don't have permission to view %@%@";
        goto LABEL_9;
      }
    }

    else
    {
      v21 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1005);
      v22 = brc_default_log(0, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v23 = *(*&v57[8] + 40);
        *buf = 138412802;
        v50 = self;
        v51 = 2112;
        v52 = v23;
        v53 = 2112;
        v54 = v21;
        v24 = "[CRIT] UNREACHABLE: %@ - BRItemCollectionGatherer - Repeatedly can't watch item %@%@";
LABEL_9:
        _os_log_fault_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_FAULT, v24, buf, 0x20u);
      }
    }

LABEL_22:

    *(v43 + 24) = 1;
    goto LABEL_23;
  }

  v25 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 980);
  v26 = brc_default_log(1, 0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v57 = 138412802;
    *&v57[4] = self;
    *&v57[12] = 2112;
    *&v57[14] = v6;
    *&v57[22] = 2112;
    v58 = v25;
    _os_log_impl(&dword_1AE2A9000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Ignoring events from item collection: %@%@", v57, 0x20u);
  }

LABEL_28:
  v33 = *MEMORY[0x1E69E9840];
}

void __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

void __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke_68(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]_block_invoke", 1016);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v10 = a1[4];
      v11 = *(*(a1[5] + 8) + 40);
      v12 = 138413058;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %@ - Couldn't refresh itemID %@ error [%@]%@", &v12, 0x2Au);
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v7 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]_block_invoke", 1019);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke_68_cold_1(a1);
    }
  }

  *(*(a1[6] + 8) + 24) = 1;
LABEL_6:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_itemCollectionGathererSendUpdates
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)collection:(id)a3 didUpdateItems:(id)a4 replaceItemsByFormerID:(id)a5 deleteItemsWithIDs:(id)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (([(NSMutableSet *)self->_collectionsSet containsObject:v9]& 1) != 0)
  {
    v12 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1066);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v49;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v48 + 1) + 8 * i);
          v20 = [v19 itemID];
          [(BRItemCollectionGatherer *)self _itemID:v20 becameOwnedByCollection:v9];

          [(BRItemCollectionGatherer *)self _startWatchingNewSubItem:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v16);
    }

    v40 = v14;

    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v41 = v11;
    v21 = v11;
    v22 = [v21 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v45;
      do
      {
        v25 = 0;
        do
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v44 + 1) + 8 * v25);
          if (![(BRItemCollectionGatherer *)self _isItemOwnedByAnyCollection:v26])
          {
            v29 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1078);
            v31 = brc_default_log(1, 0);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v53 = self;
              v54 = 2112;
              v55 = v26;
              v56 = 2112;
              v57 = v29;
              _os_log_debug_impl(&dword_1AE2A9000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item ID %@ is not known by us, ignoring it%@", buf, 0x20u);
            }

            goto LABEL_24;
          }

          v27 = [(BRItemCollectionGatherer *)self _itemID:v26 wasDeletedByCollection:v9];
          if (v27)
          {
            v28 = v27;
            v29 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1086);
            v30 = brc_default_log(1, 0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138413058;
              v53 = self;
              v54 = 2112;
              v55 = v26;
              v56 = 2048;
              v57 = v28;
              v58 = 2112;
              v59 = v29;
              _os_log_debug_impl(&dword_1AE2A9000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item ID %@ is being owned by %lu other collections%@", buf, 0x2Au);
            }

LABEL_24:
            goto LABEL_25;
          }

          v32 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1083);
          v33 = brc_default_log(1, 0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v53 = self;
            v54 = 2112;
            v55 = v26;
            v56 = 2112;
            v57 = v32;
            _os_log_debug_impl(&dword_1AE2A9000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item ID %@ is not owned by any other collection, reporting a deletion for this item%@", buf, 0x20u);
          }

          [(BRItemCollectionGatherer *)self _stopWatchingItemIDRecusively:v26 itemIDsInItem:v43];
LABEL_25:
          ++v25;
        }

        while (v23 != v25);
        v34 = [v21 countByEnumeratingWithState:&v44 objects:v60 count:16];
        v23 = v34;
      }

      while (v34);
    }

    v35 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1092);
    v36 = brc_default_log(1, 0);
    v37 = v43;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v53 = self;
      v54 = 2112;
      v55 = v43;
      v56 = 2112;
      v57 = v21;
      v58 = 2112;
      v59 = v35;
      _os_log_debug_impl(&dword_1AE2A9000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - All these items [%@] found under these items [%@] and should be deleted.%@", buf, 0x2Au);
    }

    [(BRItemCollectionGatherer *)self _addUpdatedItems:v40];
    [(BRItemCollectionGatherer *)self _addDeletedItems:v43];
    br_pacer_signal(self->_notificationPacer);
    v11 = v41;
    v10 = v42;
  }

  else
  {
    v37 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1056);
    v38 = brc_default_log(1, 0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v53 = self;
      v54 = 2112;
      v55 = v9;
      v56 = 2112;
      v57 = v37;
      _os_log_impl(&dword_1AE2A9000, v38, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Ignoring events from item collection: %@%@", buf, 0x20u);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_shouldFilterEvaluatedItem:collectionRootItem:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startWatchingURLs:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __47__BRItemCollectionGatherer__startWatchingURLs___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_startWatchingAppLibraries:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 128);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AE2A9000, a2, 0x90u, "[ERROR] Reached maximum retry attempts, giving up on retrying...%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_58_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0(&dword_1AE2A9000, v2, v3, "[ERROR] %@ - Can't watch more than one url at the same time.%@");
  v4 = *MEMORY[0x1E69E9840];
}

void __56__BRItemCollectionGatherer__unboostApplibrariesIfNeeded__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  v3 = *(v2 + 32);
  v4 = *(v1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);
  v10 = *MEMORY[0x1E69E9840];
}

void __61__BRItemCollectionGatherer_pauseWatchingWithCompletionBlock___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__BRItemCollectionGatherer_resumeWatching__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_signalDelegateIfNeededOnFinishGathering
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_removeCollectionFromGatherSet:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 128);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_itemID:wasDeletedByCollection:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BRItemCollectionGatherer _itemID:wasDeletedByCollection:]", 880);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: itemOwners%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)collectionDidFinishGathering:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer collectionDidFinishGathering:]", 937);
  *a1 = v2;
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_fault_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: numberOfWatchedItemsBefore == numberOfWatchedItemsAfter%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke_68_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end