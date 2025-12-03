@interface CKContextRecentsCache
- (BOOL)_constellationResult:(id)result intersectsWithRecent:(id)recent;
- (BOOL)_recent:(id)_recent matchesKeywords:(id)keywords;
- (CKContextRecentsCache)initWithCacheConfiguration:(unint64_t)configuration;
- (CKContextRecentsCacheDelegate)delegate;
- (id)_associatedTopicIdsForRecent:(id)recent;
- (id)_associatedTopicTitlesForRecent:(id)recent;
- (id)_relativeDateStringForRecent:(id)recent;
- (unint64_t)_maximumNumberOfItemsToRetrieve;
- (void)_groupActivitiesByAppIntoSectionsWithRecents:(id)recents limit:(unint64_t)limit reply:(id)reply;
- (void)_groupActivitiesByConstellationIntoSectionsWithRecents:(id)recents limit:(unint64_t)limit reply:(id)reply;
- (void)_groupActivitiesByDateIntoSectionsWithRecents:(id)recents limit:(unint64_t)limit reply:(id)reply;
- (void)_groupActivitiesByModeIntoSectionsWithRecents:(id)recents limit:(unint64_t)limit reply:(id)reply;
- (void)_modeDidChangeToModeWithModeUUIDString:(id)string;
- (void)_performMaintenanceTasks;
- (void)_performMaintenanceTasksForRecents:(id)recents;
- (void)_pruneRecentsFromUnusedAppsForRecents:(id)recents;
- (void)_registerComputedModeStream;
- (void)_scheduleDeferredMaintenanceTasks;
- (void)_updateLatestFocusMode;
- (void)allRecentsWithReply:(id)reply;
- (void)dealloc;
- (void)insertUserActivityData:(id)data preferredTitle:(id)title bundleId:(id)id topics:(id)topics hasAssociatedImageRepresentation:(BOOL)representation uuid:(id)uuid;
- (void)pruneRecentsForBundleIdentifiers:(id)identifiers;
- (void)removeAllRecentsWithReply:(id)reply;
- (void)removeRecentWithUUID:(id)d;
- (void)removeRecentsMatchingRecent:(id)recent;
- (void)retrieveRecentMatchingUUID:(id)d withReply:(id)reply;
- (void)retrieveRecentsBetweenStartDate:(id)date endDate:(id)endDate withReply:(id)reply;
- (void)retrieveRecentsCatalogWithStyle:(unint64_t)style withReply:(id)reply;
- (void)retrieveRecentsForPredictionWithReply:(id)reply;
- (void)retrieveRecentsMatchingBundleIdentifier:(id)identifier withReply:(id)reply;
- (void)retrieveRecentsMatchingMode:(id)mode withReply:(id)reply;
- (void)retrieveRecentsMatchingStrings:(id)strings withReply:(id)reply;
- (void)retrieveRecentsMatchingTopicIds:(id)ids titles:(id)titles withReply:(id)reply;
@end

@implementation CKContextRecentsCache

- (CKContextRecentsCache)initWithCacheConfiguration:(unint64_t)configuration
{
  v15.receiver = self;
  v15.super_class = CKContextRecentsCache;
  v4 = [(CKContextRecentsCache *)&v15 init];
  if (v4)
  {
    v5 = dispatch_queue_create("CKContextRecentsCache Stream Modification Queue", 0);
    biomeQueue = v4->_biomeQueue;
    v4->_biomeQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CF1B78]);
    stream = v4->_stream;
    v4->_stream = v7;

    v4->_configuration = configuration;
    v9 = objc_alloc_init(MEMORY[0x277CF1B80]);
    computedModeStream = v4->_computedModeStream;
    v4->_computedModeStream = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("CKContextRecentsCache Focus Mode Queue", v11);
    computedFocusModeQueue = v4->_computedFocusModeQueue;
    v4->_computedFocusModeQueue = v12;

    [(CKContextRecentsCache *)v4 _registerComputedModeStream];
    [(CKContextRecentsCache *)v4 _updateLatestFocusMode];
    [(CKContextRecentsCache *)v4 _scheduleDeferredMaintenanceTasks];
  }

  return v4;
}

- (void)insertUserActivityData:(id)data preferredTitle:(id)title bundleId:(id)id topics:(id)topics hasAssociatedImageRepresentation:(BOOL)representation uuid:(id)uuid
{
  dataCopy = data;
  titleCopy = title;
  idCopy = id;
  topicsCopy = topics;
  uuidCopy = uuid;
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __117__CKContextRecentsCache_insertUserActivityData_preferredTitle_bundleId_topics_hasAssociatedImageRepresentation_uuid___block_invoke;
  v24[3] = &unk_278E06E70;
  objc_copyWeak(&v30, &location);
  v19 = titleCopy;
  v25 = v19;
  v20 = dataCopy;
  v26 = v20;
  v21 = idCopy;
  v27 = v21;
  v22 = topicsCopy;
  v28 = v22;
  representationCopy = representation;
  v23 = uuidCopy;
  v29 = v23;
  [v20 _createUserActivityDataWithOptions:0 completionHandler:v24];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __117__CKContextRecentsCache_insertUserActivityData_preferredTitle_bundleId_topics_hasAssociatedImageRepresentation_uuid___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (!v5 || a3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __117__CKContextRecentsCache_insertUserActivityData_preferredTitle_bundleId_topics_hasAssociatedImageRepresentation_uuid___block_invoke_cold_1();
      }
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      if ([*(a1 + 32) length])
      {
        v8 = *(a1 + 32);
      }

      else
      {
        v8 = [*(a1 + 40) title];
      }

      v9 = v8;
      v10 = [*(a1 + 40) activityType];
      v11 = [*(a1 + 40) webpageURL];
      v12 = *(a1 + 40);
      if (v11)
      {
        [v12 webpageURL];
      }

      else
      {
        [v12 referrerURL];
      }
      v13 = ;
      v28 = [v13 absoluteString];

      v14 = MEMORY[0x277CF1B70];
      v15 = *(WeakRetained + 5);
      v29 = v15;
      v16 = [v14 alloc];
      v17 = &stru_28578A2C8;
      if (v9)
      {
        v18 = v9;
      }

      else
      {
        v18 = &stru_28578A2C8;
      }

      if (v10)
      {
        v19 = v10;
      }

      else
      {
        v19 = &stru_28578A2C8;
      }

      v31 = v9;
      v20 = *(a1 + 48);
      if ([(__CFString *)v15 length])
      {
        v17 = v15;
      }

      v30 = v10;
      v21 = *(a1 + 80);
      v22 = *(a1 + 56);
      v23 = [*(a1 + 64) UUIDString];
      LOBYTE(v27) = v21;
      v24 = [v16 initWithAbsoluteTimestamp:v5 userActivityData:v18 title:v19 activityType:v20 associatedBundleId:v28 associatedURLString:v17 modeIdentifier:Current topics:v22 hasAssociatedImageRepresentation:v27 uuid:v23];

      v25 = *(WeakRetained + 2);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __117__CKContextRecentsCache_insertUserActivityData_preferredTitle_bundleId_topics_hasAssociatedImageRepresentation_uuid___block_invoke_26;
      block[3] = &unk_278E06E48;
      block[4] = WeakRetained;
      v33 = v24;
      v26 = v24;
      dispatch_async(v25, block);
    }
  }
}

void __117__CKContextRecentsCache_insertUserActivityData_preferredTitle_bundleId_topics_hasAssociatedImageRepresentation_uuid___block_invoke_26(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) source];
  [v2 sendEvent:*(a1 + 40)];
}

- (void)allRecentsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    objc_initWeak(&location, self);
    biomeQueue = self->_biomeQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__CKContextRecentsCache_allRecentsWithReply___block_invoke;
    v6[3] = &unk_278E06EE8;
    objc_copyWeak(&v8, &location);
    v6[4] = self;
    v7 = replyCopy;
    dispatch_async(biomeQueue, v6);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __45__CKContextRecentsCache_allRecentsWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _maximumNumberOfItemsToRetrieve];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __45__CKContextRecentsCache_allRecentsWithReply___block_invoke_cold_1();
    }

    v5 = [*(*(a1 + 32) + 8) publisherFromStartTime:0.0];
    v6 = [v5 bufferWithSize:v4 prefetch:1 whenFull:1];

    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__0;
    v12[4] = __Block_byref_object_dispose__0;
    v13 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__CKContextRecentsCache_allRecentsWithReply___block_invoke_30;
    v9[3] = &unk_278E06E98;
    v11 = v12;
    v10 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__CKContextRecentsCache_allRecentsWithReply___block_invoke_32;
    v8[3] = &unk_278E06EC0;
    v8[4] = v12;
    v7 = [v6 sinkWithCompletion:v9 receiveInput:v8];

    _Block_object_dispose(v12, 8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __45__CKContextRecentsCache_allRecentsWithReply___block_invoke_30(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(*(*(a1 + 40) + 8) + 40);
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

        v8 = [*(*(&v12 + 1) + 8 * v7) event];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __45__CKContextRecentsCache_allRecentsWithReply___block_invoke_30_cold_1(v2);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

void __45__CKContextRecentsCache_allRecentsWithReply___block_invoke_32(uint64_t a1, void *a2)
{
  v4 = [a2 eventBody];
  v3 = objc_alloc_init(CKContextUserFacingUniversalRecent);
  [(CKContextUserFacingUniversalRecent *)v3 setEvent:v4];
  [*(*(*(a1 + 32) + 8) + 40) insertObject:v3 atIndex:0];
}

- (unint64_t)_maximumNumberOfItemsToRetrieve
{
  if (self->_configuration == 1)
  {
    return 10;
  }

  else
  {
    return 1000;
  }
}

- (void)retrieveRecentsBetweenStartDate:(id)date endDate:(id)endDate withReply:(id)reply
{
  dateCopy = date;
  endDateCopy = endDate;
  replyCopy = reply;
  v11 = replyCopy;
  if (replyCopy)
  {
    if (dateCopy && endDateCopy)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [dateCopy timeIntervalSinceReferenceDate];
      v14 = v13;
      objc_initWeak(&location, self);
      biomeQueue = self->_biomeQueue;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75__CKContextRecentsCache_retrieveRecentsBetweenStartDate_endDate_withReply___block_invoke;
      v18[3] = &unk_278E06F60;
      objc_copyWeak(v22, &location);
      v16 = v11;
      v22[1] = v14;
      v21 = v16;
      v19 = date;
      v20 = endDateCopy;
      v17 = date;
      dispatch_async(biomeQueue, v18);

      objc_destroyWeak(v22);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 0);
    }
  }
}

void __75__CKContextRecentsCache_retrieveRecentsBetweenStartDate_endDate_withReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _maximumNumberOfItemsToRetrieve];
    v5 = [v3[1] publisherFromStartTime:*(a1 + 64)];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__0;
    v15[4] = __Block_byref_object_dispose__0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__CKContextRecentsCache_retrieveRecentsBetweenStartDate_endDate_withReply___block_invoke_2;
    v11[3] = &unk_278E06F10;
    v14 = v15;
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__CKContextRecentsCache_retrieveRecentsBetweenStartDate_endDate_withReply___block_invoke_37;
    v7[3] = &unk_278E06F38;
    v8 = *(a1 + 40);
    v9 = v15;
    v10 = v4;
    v6 = [v5 sinkWithCompletion:v11 shouldContinue:v7];

    _Block_object_dispose(v15, 8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __75__CKContextRecentsCache_retrieveRecentsBetweenStartDate_endDate_withReply___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __75__CKContextRecentsCache_retrieveRecentsBetweenStartDate_endDate_withReply___block_invoke_2_cold_1(a1);
  }

  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:*(*(*(a1 + 48) + 8) + 40)];
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) event];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __75__CKContextRecentsCache_retrieveRecentsBetweenStartDate_endDate_withReply___block_invoke_37(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = MEMORY[0x277CBEAA8];
  [v5 absoluteTimestamp];
  v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = v7;
  if (!v5 || ([v7 earlierDate:a1[4]], v9 = objc_claimAutoreleasedReturnValue(), v10 = a1[4], v9, v9 == v10))
  {
    v12 = 0;
  }

  else
  {
    v11 = objc_alloc_init(CKContextUserFacingUniversalRecent);
    [(CKContextUserFacingUniversalRecent *)v11 setEvent:v5];
    [*(*(a1[5] + 8) + 40) insertObject:v11 atIndex:0];
    if ([*(*(a1[5] + 8) + 40) count] >= a1[6])
    {
      [*(*(a1[5] + 8) + 40) removeLastObject];
    }

    v12 = 1;
  }

  objc_autoreleasePoolPop(v4);
  return v12;
}

- (void)retrieveRecentMatchingUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = replyCopy;
  if (replyCopy)
  {
    if (dCopy)
    {
      objc_initWeak(&location, self);
      biomeQueue = self->_biomeQueue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __62__CKContextRecentsCache_retrieveRecentMatchingUUID_withReply___block_invoke;
      v10[3] = &unk_278E06EE8;
      objc_copyWeak(&v13, &location);
      v12 = v8;
      v11 = dCopy;
      dispatch_async(biomeQueue, v10);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 0);
    }
  }
}

void __62__CKContextRecentsCache_retrieveRecentMatchingUUID_withReply___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[1] publisherFromStartTime:0.0];
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__0;
    v12[4] = __Block_byref_object_dispose__0;
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__CKContextRecentsCache_retrieveRecentMatchingUUID_withReply___block_invoke_2;
    v9[3] = &unk_278E06E98;
    v11 = v12;
    v10 = a1[5];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__CKContextRecentsCache_retrieveRecentMatchingUUID_withReply___block_invoke_3;
    v6[3] = &unk_278E06F88;
    v7 = a1[4];
    v8 = v12;
    v5 = [v4 sinkWithCompletion:v9 receiveInput:v6];

    _Block_object_dispose(v12, 8);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void __62__CKContextRecentsCache_retrieveRecentMatchingUUID_withReply___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) firstObject];
  (*(*(a1 + 32) + 16))();
}

void __62__CKContextRecentsCache_retrieveRecentMatchingUUID_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = [a2 eventBody];
  v3 = [v5 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

- (void)removeAllRecentsWithReply:(id)reply
{
  v4 = MEMORY[0x277CF1B30];
  replyCopy = reply;
  v6 = [v4 alloc];
  identifier = [(BMUserActivityMetadataStream *)self->_stream identifier];
  v8 = [v6 initWithRestrictedStreamIdentifier:identifier];

  [v8 pruneWithPredicateBlock:&__block_literal_global_0];
  replyCopy[2](replyCopy, 1);
}

- (void)removeRecentWithUUID:(id)d
{
  dCopy = d;
  v5 = objc_alloc(MEMORY[0x277CF1B30]);
  identifier = [(BMUserActivityMetadataStream *)self->_stream identifier];
  v7 = [v5 initWithRestrictedStreamIdentifier:identifier];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CKContextRecentsCache_removeRecentWithUUID___block_invoke;
  v9[3] = &unk_278E06FD0;
  v10 = dCopy;
  v8 = dCopy;
  [v7 pruneWithPredicateBlock:v9];
}

uint64_t __46__CKContextRecentsCache_removeRecentWithUUID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 eventBody];
  v6 = [v5 uuid];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a3 = 1;
  }

  return v7;
}

- (void)removeRecentsMatchingRecent:(id)recent
{
  recentCopy = recent;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = objc_alloc_init(CKContextUserFacingUniversalRecent);
  [v10[5] setEvent:recentCopy];
  v5 = objc_alloc(MEMORY[0x277CF1B30]);
  identifier = [(BMUserActivityMetadataStream *)self->_stream identifier];
  v7 = [v5 initWithRestrictedStreamIdentifier:identifier];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CKContextRecentsCache_removeRecentsMatchingRecent___block_invoke;
  v8[3] = &unk_278E06FF8;
  v8[4] = &v9;
  [v7 pruneWithPredicateBlock:v8];

  _Block_object_dispose(&v9, 8);
}

uint64_t __53__CKContextRecentsCache_removeRecentsMatchingRecent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(CKContextUserFacingUniversalRecent);
  v6 = [v3 eventBody];
  [(CKContextUserFacingUniversalRecent *)v5 setEvent:v6];

  v7 = [*(*(*(a1 + 32) + 8) + 40) isEqual:v5];
  objc_autoreleasePoolPop(v4);

  return v7;
}

- (void)pruneRecentsForBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_alloc(MEMORY[0x277CF1B30]);
  identifier = [(BMUserActivityMetadataStream *)self->_stream identifier];
  v7 = [v5 initWithRestrictedStreamIdentifier:identifier];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CKContextRecentsCache_pruneRecentsForBundleIdentifiers___block_invoke;
  v9[3] = &unk_278E06FD0;
  v10 = identifiersCopy;
  v8 = identifiersCopy;
  [v7 pruneWithPredicateBlock:v9];
}

uint64_t __58__CKContextRecentsCache_pruneRecentsForBundleIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(a1 + 32);
  v5 = [v3 associatedBundleId];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)retrieveRecentsCatalogWithStyle:(unint64_t)style withReply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (replyCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__CKContextRecentsCache_retrieveRecentsCatalogWithStyle_withReply___block_invoke;
    v8[3] = &unk_278E07020;
    v9 = replyCopy;
    styleCopy = style;
    v8[4] = self;
    [(CKContextRecentsCache *)self allRecentsWithReply:v8];
  }
}

void __67__CKContextRecentsCache_retrieveRecentsCatalogWithStyle_withReply___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = *(a1 + 48);
    if (v3 > 1)
    {
      v4 = v5;
      if (v3 == 2)
      {
        [*(a1 + 32) _groupActivitiesByConstellationIntoSectionsWithRecents:v5 limit:4 reply:*(a1 + 40)];
      }

      else
      {
        if (v3 != 3)
        {
          goto LABEL_13;
        }

        [*(a1 + 32) _groupActivitiesByModeIntoSectionsWithRecents:v5 limit:4 reply:*(a1 + 40)];
      }
    }

    else
    {
      v4 = v5;
      if (v3)
      {
        if (v3 != 1)
        {
          goto LABEL_13;
        }

        [*(a1 + 32) _groupActivitiesByAppIntoSectionsWithRecents:v5 limit:4 reply:*(a1 + 40)];
      }

      else
      {
        [*(a1 + 32) _groupActivitiesByDateIntoSectionsWithRecents:v5 limit:4 reply:*(a1 + 40)];
      }
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v4 = v5;
LABEL_13:
}

- (void)retrieveRecentsMatchingBundleIdentifier:(id)identifier withReply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if ([identifierCopy length])
  {
    objc_initWeak(&location, self);
    biomeQueue = self->_biomeQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__CKContextRecentsCache_retrieveRecentsMatchingBundleIdentifier_withReply___block_invoke;
    v9[3] = &unk_278E06EE8;
    objc_copyWeak(&v12, &location);
    v11 = replyCopy;
    v10 = identifierCopy;
    dispatch_async(biomeQueue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0);
  }
}

void __75__CKContextRecentsCache_retrieveRecentsMatchingBundleIdentifier_withReply___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _maximumNumberOfItemsToRetrieve];
    v5 = [v3[1] publisherFromStartTime:0.0];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__0;
    v15[4] = __Block_byref_object_dispose__0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__CKContextRecentsCache_retrieveRecentsMatchingBundleIdentifier_withReply___block_invoke_2;
    v13[3] = &unk_278E07048;
    v14 = a1[4];
    v6 = [v5 filterWithIsIncluded:v13];
    v7 = [v6 bufferWithSize:v4 prefetch:1 whenFull:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__CKContextRecentsCache_retrieveRecentsMatchingBundleIdentifier_withReply___block_invoke_3;
    v10[3] = &unk_278E06E98;
    v12 = v15;
    v11 = a1[5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__CKContextRecentsCache_retrieveRecentsMatchingBundleIdentifier_withReply___block_invoke_4;
    v9[3] = &unk_278E06EC0;
    v9[4] = v15;
    v8 = [v7 sinkWithCompletion:v10 receiveInput:v9];

    _Block_object_dispose(v15, 8);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

uint64_t __75__CKContextRecentsCache_retrieveRecentsMatchingBundleIdentifier_withReply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 associatedBundleId];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void __75__CKContextRecentsCache_retrieveRecentsMatchingBundleIdentifier_withReply___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * v7) event];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *(a1 + 32);
  v12 = [v2 array];
  (*(v11 + 16))(v11, v12);

  v13 = *MEMORY[0x277D85DE8];
}

void __75__CKContextRecentsCache_retrieveRecentsMatchingBundleIdentifier_withReply___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = [a2 eventBody];
  v3 = objc_alloc_init(CKContextUserFacingUniversalRecent);
  [(CKContextUserFacingUniversalRecent *)v3 setEvent:v4];
  [*(*(*(a1 + 32) + 8) + 40) insertObject:v3 atIndex:0];
}

- (void)retrieveRecentsMatchingMode:(id)mode withReply:(id)reply
{
  modeCopy = mode;
  replyCopy = reply;
  if ([modeCopy length])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__CKContextRecentsCache_retrieveRecentsMatchingMode_withReply___block_invoke;
    v8[3] = &unk_278E07070;
    v10 = replyCopy;
    v9 = modeCopy;
    [(CKContextRecentsCache *)self allRecentsWithReply:v8];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0);
  }
}

void __63__CKContextRecentsCache_retrieveRecentsMatchingMode_withReply___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 modeIdentifier];
          v12 = [v11 isEqualToString:*(a1 + 32)];

          if (v12)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)retrieveRecentsForPredictionWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    objc_initWeak(&location, self);
    biomeQueue = self->_biomeQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke;
    block[3] = &unk_278E07108;
    objc_copyWeak(&v8, &location);
    v7 = replyCopy;
    dispatch_async(biomeQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _maximumNumberOfItemsToRetrieve];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke_cold_1();
    }

    v5 = [v3[1] publisherFromStartTime:0.0];
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__0;
    v17[4] = __Block_byref_object_dispose__0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__0;
    v15[4] = __Block_byref_object_dispose__0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [v5 filterWithIsIncluded:&__block_literal_global_45];
    v7 = [v6 bufferWithSize:v4 prefetch:1 whenFull:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke_2;
    v10[3] = &unk_278E070B8;
    v12 = v19;
    v13 = v17;
    v14 = v15;
    v11 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke_46;
    v9[3] = &unk_278E070E0;
    v9[4] = v19;
    v9[5] = v17;
    v9[6] = v15;
    v8 = [v7 sinkWithCompletion:v10 receiveInput:v9];

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v17, 8);

    _Block_object_dispose(v19, 8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke_2(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke_2_cold_1(a1);
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(*(a1[6] + 8) + 40);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 event];
        v12 = [v11 uuid];

        if (v12)
        {
          [v3 addObject:v11];
          v13 = [*(*(a1[7] + 8) + 40) objectForKeyedSubscript:v10];
          v14 = [v11 uuid];
          [v4 setObject:v13 forKeyedSubscript:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  v17 = *(a1[7] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  (*(a1[4] + 16))();
  v19 = *MEMORY[0x277D85DE8];
}

void __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke_46(void *a1, void *a2)
{
  v7 = [a2 eventBody];
  v3 = objc_alloc_init(CKContextUserFacingUniversalRecent);
  [(CKContextUserFacingUniversalRecent *)v3 setEvent:v7];
  if (v3)
  {
    ++*(*(a1[4] + 8) + 24);
    [*(*(a1[5] + 8) + 40) insertObject:v3 atIndex:0];
    v4 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "intValue") + 1}];
    }

    else
    {
      v6 = &unk_28578A988;
    }

    [*(*(a1[6] + 8) + 40) setObject:v6 forKeyedSubscript:v3];
    if (v5)
    {
    }
  }
}

- (void)retrieveRecentsMatchingStrings:(id)strings withReply:(id)reply
{
  stringsCopy = strings;
  replyCopy = reply;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__CKContextRecentsCache_retrieveRecentsMatchingStrings_withReply___block_invoke;
  v10[3] = &unk_278E07130;
  v11 = stringsCopy;
  v12 = replyCopy;
  v10[4] = self;
  v8 = stringsCopy;
  v9 = replyCopy;
  [(CKContextRecentsCache *)self allRecentsWithReply:v10];
}

void __66__CKContextRecentsCache_retrieveRecentsMatchingStrings_withReply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
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
          if ([*(a1 + 32) _recent:v10 matchesKeywords:{*(a1 + 40), v12}])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)retrieveRecentsMatchingTopicIds:(id)ids titles:(id)titles withReply:(id)reply
{
  idsCopy = ids;
  titlesCopy = titles;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([idsCopy count] || objc_msgSend(titlesCopy, "count"))
    {
      objc_initWeak(&location, self);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __74__CKContextRecentsCache_retrieveRecentsMatchingTopicIds_titles_withReply___block_invoke;
      v11[3] = &unk_278E07158;
      objc_copyWeak(&v15, &location);
      v14 = replyCopy;
      v12 = idsCopy;
      v13 = titlesCopy;
      [(CKContextRecentsCache *)self allRecentsWithReply:v11];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 0);
    }
  }
}

void __74__CKContextRecentsCache_retrieveRecentsMatchingTopicIds_titles_withReply___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [v3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      v25 = a1;
      v26 = WeakRetained;
      v23 = *v33;
      v24 = v6;
      do
      {
        v10 = 0;
        v27 = v8;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * v10);
          if (v11)
          {
            v12 = [WeakRetained _associatedTopicIdsForRecent:*(*(&v32 + 1) + 8 * v10)];
            v13 = [WeakRetained _associatedTopicTitlesForRecent:v11];
            if (([v12 intersectsOrderedSet:*(a1 + 32)] & 1) != 0 || objc_msgSend(v13, "intersectsOrderedSet:", *(a1 + 40)))
            {
              [v5 addObject:{v11, v22}];
            }

            else
            {
              v14 = [v11 title];
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v15 = *(a1 + 40);
              v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v29;
                while (2)
                {
                  v19 = v5;
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v29 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    if ([v14 localizedCaseInsensitiveContainsString:{*(*(&v28 + 1) + 8 * i), v22}])
                    {
                      v5 = v19;
                      [v19 addObject:v11];
                      goto LABEL_22;
                    }
                  }

                  v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
                  v5 = v19;
                  if (v17)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_22:

              a1 = v25;
              WeakRetained = v26;
              v9 = v23;
              v6 = v24;
              v8 = v27;
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 48) + 16))();
    v3 = v22;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_modeDidChangeToModeWithModeUUIDString:(id)string
{
  stringCopy = string;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [CKContextRecentsCache _modeDidChangeToModeWithModeUUIDString:];
  }

  v5 = [stringCopy copy];
  latestActivity = self->_latestActivity;
  self->_latestActivity = v5;

  delegate = [(CKContextRecentsCache *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CKContextRecentsCache *)self delegate];
    [delegate2 modeDidChangeToModeWithUUIDString:self->_latestActivity forCache:self];
  }
}

- (void)_updateLatestFocusMode
{
  objc_initWeak(&location, self);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__0;
  v8[4] = __Block_byref_object_dispose__0;
  v9 = 0;
  v3 = [(BMUserFocusComputedModeStream *)self->_computedModeStream publisherFromStartTime:0.0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__CKContextRecentsCache__updateLatestFocusMode__block_invoke;
  v6[3] = &unk_278E07180;
  objc_copyWeak(&v7, &location);
  v6[4] = v8;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__CKContextRecentsCache__updateLatestFocusMode__block_invoke_2;
  v5[3] = &unk_278E06EC0;
  v5[4] = v8;
  v4 = [v3 sinkWithCompletion:v6 receiveInput:v5];

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

void __47__CKContextRecentsCache__updateLatestFocusMode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([*(*(*(a1 + 32) + 8) + 40) isStarting])
    {
      v3 = [v4 _modeUUIDStringForComputedModeEvent:*(*(*(a1 + 32) + 8) + 40)];
      [v4 _modeDidChangeToModeWithModeUUIDString:v3];
    }

    else
    {
      [v4 _modeDidChangeToModeWithModeUUIDString:0];
    }

    WeakRetained = v4;
  }
}

uint64_t __47__CKContextRecentsCache__updateLatestFocusMode__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)_registerComputedModeStream
{
  v3 = MEMORY[0x277CCACA8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v6 = [v3 stringWithFormat:@"%@.%@", @"CKContextRecentsCache.Modes", processName];

  objc_initWeak(&location, self);
  publisher = [(BMUserFocusComputedModeStream *)self->_computedModeStream publisher];
  v8 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:v6 targetQueue:self->_computedFocusModeQueue];
  v9 = [publisher subscribeOn:v8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__CKContextRecentsCache__registerComputedModeStream__block_invoke_62;
  v12[3] = &unk_278E071C8;
  objc_copyWeak(&v13, &location);
  v10 = [v9 sinkWithCompletion:&__block_literal_global_61 receiveInput:v12];
  computedModeSink = self->_computedModeSink;
  self->_computedModeSink = v10;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __52__CKContextRecentsCache__registerComputedModeStream__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __52__CKContextRecentsCache__registerComputedModeStream__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __52__CKContextRecentsCache__registerComputedModeStream__block_invoke_cold_2();
  }
}

void __52__CKContextRecentsCache__registerComputedModeStream__block_invoke_62(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 eventBody];
    if ([v4 isStarting])
    {
      v5 = [WeakRetained _modeUUIDStringForComputedModeEvent:v4];
      [WeakRetained _modeDidChangeToModeWithModeUUIDString:v5];
    }

    else
    {
      [WeakRetained _modeDidChangeToModeWithModeUUIDString:0];
    }
  }
}

- (void)_groupActivitiesByDateIntoSectionsWithRecents:(id)recents limit:(unint64_t)limit reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  recentsCopy = recents;
  replyCopy = reply;
  v10 = replyCopy;
  if (replyCopy)
  {
    v24 = replyCopy;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = recentsCopy;
    obj = recentsCopy;
    v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [(CKContextRecentsCache *)self _relativeDateStringForRecent:v17];
          v19 = [v12 objectForKeyedSubscript:v18];
          v20 = v19;
          if (!limit || [v19 count] < limit)
          {
            if (v20)
            {
              [v20 arrayByAddingObject:v17];
            }

            else
            {
              [MEMORY[0x277CBEA60] arrayWithObject:v17];
            }
            v21 = ;
            [v12 setObject:v21 forKeyedSubscript:v18];

            [v11 setObject:v18 forKeyedSubscript:v18];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    v22 = [v12 keysSortedByValueUsingComparator:&__block_literal_global_66];
    v10 = v24;
    v24[2](v24, v22, v11, v12);

    recentsCopy = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __83__CKContextRecentsCache__groupActivitiesByDateIntoSectionsWithRecents_limit_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [a2 firstObject];
  [v6 absoluteTimestamp];
  v7 = [v4 dateWithTimeIntervalSinceReferenceDate:?];

  v8 = MEMORY[0x277CBEAA8];
  v9 = [v5 firstObject];

  [v9 absoluteTimestamp];
  v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];

  v11 = [v10 compare:v7];
  return v11;
}

- (void)_groupActivitiesByAppIntoSectionsWithRecents:(id)recents limit:(unint64_t)limit reply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  recentsCopy = recents;
  replyCopy = reply;
  v9 = replyCopy;
  if (replyCopy)
  {
    v24 = replyCopy;
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = recentsCopy;
    v12 = recentsCopy;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          associatedBundleId = [v17 associatedBundleId];
          v19 = [v11 objectForKeyedSubscript:associatedBundleId];
          v20 = v19;
          if (!limit || [v19 count] < limit)
          {
            if (v20)
            {
              [v20 arrayByAddingObject:v17];
            }

            else
            {
              [MEMORY[0x277CBEA60] arrayWithObject:v17];
            }
            v21 = ;
            [v11 setObject:v21 forKeyedSubscript:associatedBundleId];

            [v10 setObject:associatedBundleId forKeyedSubscript:associatedBundleId];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    v22 = [v11 keysSortedByValueUsingComparator:&__block_literal_global_68];
    v9 = v24;
    v24[2](v24, v22, v10, v11);

    recentsCopy = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __82__CKContextRecentsCache__groupActivitiesByAppIntoSectionsWithRecents_limit_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [a2 firstObject];
  [v6 absoluteTimestamp];
  v7 = [v4 dateWithTimeIntervalSinceReferenceDate:?];

  v8 = MEMORY[0x277CBEAA8];
  v9 = [v5 firstObject];

  [v9 absoluteTimestamp];
  v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];

  v11 = [v10 compare:v7];
  return v11;
}

- (void)_groupActivitiesByConstellationIntoSectionsWithRecents:(id)recents limit:(unint64_t)limit reply:(id)reply
{
  v55 = *MEMORY[0x277D85DE8];
  recentsCopy = recents;
  replyCopy = reply;
  if (replyCopy)
  {
    limitCopy = limit;
    v34 = replyCopy;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = recentsCopy;
    v39 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v39)
    {
      v37 = *v46;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(obj);
          }

          limitCopy = [(CKContextRecentsCache *)self _associatedTopicIdsForRecent:*(*(&v45 + 1) + 8 * i), limitCopy];
          array = [limitCopy array];

          if ([array count])
          {
            v12 = 0;
            do
            {
              v13 = [array objectAtIndexedSubscript:v12];
              v14 = [v8 objectForKeyedSubscript:v13];
              v15 = v14;
              if (v14)
              {
                v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];
                [v8 setObject:v16 forKeyedSubscript:v13];
              }

              else
              {
                [v8 setObject:&unk_28578A988 forKeyedSubscript:v13];
              }

              v17 = [array count];
              ++v12;
              if (v17 >= 4)
              {
                v18 = 4;
              }

              else
              {
                v18 = v17;
              }
            }

            while (v12 < v18);
          }
        }

        v39 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v39);
    }

    allKeys = [v8 allKeys];
    v20 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v21 = [v20 count];
    v22 = v21;
    if (v21 >= 0x32)
    {
      v23 = 50;
    }

    else
    {
      v23 = v21;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v22)
    {
      v25 = 0;
      do
      {
        v26 = [v20 objectAtIndexedSubscript:{v25, limitCopy}];
        v27 = [v8 objectForKeyedSubscript:v26];
        [v24 setObject:v27 forKeyedSubscript:v26];

        ++v25;
      }

      while (v23 != v25);
    }

    v50 = 0;
    v51 = &v50;
    v52 = 0x2050000000;
    v28 = getCKContextClientClass_softClass;
    v53 = getCKContextClientClass_softClass;
    if (!getCKContextClientClass_softClass)
    {
      location[0] = MEMORY[0x277D85DD0];
      location[1] = 3221225472;
      location[2] = __getCKContextClientClass_block_invoke;
      location[3] = &unk_278E06DB8;
      location[4] = &v50;
      __getCKContextClientClass_block_invoke(location);
      v28 = v51[3];
    }

    v29 = v28;
    _Block_object_dispose(&v50, 8);
    v30 = [v28 clientWithDefaultRequestType:5];
    newRequest = [v30 newRequest];
    [newRequest setIncludeHigherLevelTopics:1];
    [newRequest setMaxConstellationTopics:15];
    [newRequest setItemIds:v24];
    objc_initWeak(location, self);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __92__CKContextRecentsCache__groupActivitiesByConstellationIntoSectionsWithRecents_limit_reply___block_invoke;
    v40[3] = &unk_278E07210;
    objc_copyWeak(v44, location);
    v43 = v34;
    v41 = obj;
    selfCopy = self;
    v44[1] = limitCopy;
    [newRequest executeWithReply:v40];

    objc_destroyWeak(v44);
    objc_destroyWeak(location);

    replyCopy = v34;
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __92__CKContextRecentsCache__groupActivitiesByConstellationIntoSectionsWithRecents_limit_reply___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_36;
  }

  v27 = WeakRetained;
  v28 = v3;
  v31 = [v3 level2Topics];
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 32);
  v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v32)
  {
    goto LABEL_32;
  }

  v30 = *v41;
  do
  {
    for (i = 0; i != v32; ++i)
    {
      if (*v41 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v40 + 1) + 8 * i);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v8 = v31;
      v9 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (!v9)
      {

LABEL_26:
        v20 = [v35 objectForKeyedSubscript:@"Other"];
        v21 = v20;
        if (v20)
        {
          [v20 arrayByAddingObject:v7];
        }

        else
        {
          [MEMORY[0x277CBEA60] arrayWithObject:v7];
        }
        v22 = ;
        [v35 setObject:v22 forKeyedSubscript:@"Other"];

        [v34 setObject:@"Other" forKeyedSubscript:@"Other"];
        continue;
      }

      v10 = v9;
      v33 = i;
      v11 = 0;
      v12 = *v37;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v36 + 1) + 8 * j);
          v15 = [v14 topicId];
          if ([v15 length] && objc_msgSend(*(a1 + 40), "_constellationResult:intersectsWithRecent:", v14, v7))
          {
            v16 = [v35 objectForKeyedSubscript:v15];
            v17 = v16;
            if (!*(a1 + 64) || [v16 count] < *(a1 + 64))
            {
              if (v17)
              {
                [v17 arrayByAddingObject:v7];
              }

              else
              {
                [MEMORY[0x277CBEA60] arrayWithObject:v7];
              }
              v18 = ;
              [v35 setObject:v18 forKeyedSubscript:v15];

              v19 = [v14 title];
              [v34 setObject:v19 forKeyedSubscript:v15];
            }

            v11 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v10);

      i = v33;
      if ((v11 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  }

  while (v32);
LABEL_32:

  v23 = [v35 keysSortedByValueUsingComparator:&__block_literal_global_75];
  v24 = [MEMORY[0x277CBEB18] arrayWithArray:v23];
  v25 = [v24 indexOfObject:@"Other"];
  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v24 removeObjectAtIndex:v25];
    [v24 addObject:@"Other"];
  }

  (*(*(a1 + 48) + 16))();

  v5 = v27;
  v3 = v28;
LABEL_36:

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __92__CKContextRecentsCache__groupActivitiesByConstellationIntoSectionsWithRecents_limit_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [a2 firstObject];
  [v6 absoluteTimestamp];
  v7 = [v4 dateWithTimeIntervalSinceReferenceDate:?];

  v8 = MEMORY[0x277CBEAA8];
  v9 = [v5 firstObject];

  [v9 absoluteTimestamp];
  v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];

  v11 = [v10 compare:v7];
  return v11;
}

- (void)_groupActivitiesByModeIntoSectionsWithRecents:(id)recents limit:(unint64_t)limit reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  recentsCopy = recents;
  replyCopy = reply;
  v9 = replyCopy;
  if (replyCopy)
  {
    v25 = replyCopy;
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = recentsCopy;
    v12 = recentsCopy;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          modeIdentifier = [v17 modeIdentifier];
          if ([modeIdentifier length])
          {
            modeIdentifier2 = [v17 modeIdentifier];
          }

          else
          {
            modeIdentifier2 = @"Other";
          }

          v20 = [v11 objectForKeyedSubscript:modeIdentifier2];
          v21 = v20;
          if (!limit || [v20 count] < limit)
          {
            if (v21)
            {
              [v21 arrayByAddingObject:v17];
            }

            else
            {
              [MEMORY[0x277CBEA60] arrayWithObject:v17];
            }
            v22 = ;
            [v11 setObject:v22 forKeyedSubscript:modeIdentifier2];

            [v10 setObject:modeIdentifier2 forKeyedSubscript:modeIdentifier2];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    v23 = [v11 keysSortedByValueUsingComparator:&__block_literal_global_78];
    v9 = v25;
    v25[2](v25, v23, v10, v11);

    recentsCopy = v26;
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __83__CKContextRecentsCache__groupActivitiesByModeIntoSectionsWithRecents_limit_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [a2 firstObject];
  [v6 absoluteTimestamp];
  v7 = [v4 dateWithTimeIntervalSinceReferenceDate:?];

  v8 = MEMORY[0x277CBEAA8];
  v9 = [v5 firstObject];

  [v9 absoluteTimestamp];
  v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];

  v11 = [v10 compare:v7];
  return v11;
}

- (BOOL)_constellationResult:(id)result intersectsWithRecent:(id)recent
{
  resultCopy = result;
  recentCopy = recent;
  v8 = recentCopy;
  v9 = 0;
  if (resultCopy && recentCopy)
  {
    v10 = [(CKContextRecentsCache *)self _associatedTopicTitlesForRecent:recentCopy];
    title = [resultCopy title];
    v12 = [v10 containsObject:title];

    if (v12)
    {
      v9 = 1;
    }

    else
    {
      topicId = [resultCopy topicId];
      if ([topicId length])
      {
        v14 = [(CKContextRecentsCache *)self _associatedTopicIdsForRecent:v8];
        relatedItems = [resultCopy relatedItems];
        if ([relatedItems intersectsOrderedSet:v14])
        {
          v9 = 1;
        }

        else
        {
          v9 = [v14 containsObject:topicId];
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (BOOL)_recent:(id)_recent matchesKeywords:(id)keywords
{
  v26 = *MEMORY[0x277D85DE8];
  _recentCopy = _recent;
  keywordsCopy = keywords;
  v8 = keywordsCopy;
  if (_recentCopy && [keywordsCopy count])
  {
    v9 = [(CKContextRecentsCache *)self _associatedTopicTitlesForRecent:_recentCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          title = [_recentCopy title];
          v17 = [title localizedCaseInsensitiveContainsString:v15];

          if (v17 & 1) != 0 || ([v9 containsObject:v15])
          {
            v18 = 1;
            goto LABEL_16;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v18 = 0;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_16:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_relativeDateStringForRecent:(id)recent
{
  v3 = MEMORY[0x277CCA968];
  recentCopy = recent;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x277CBEAA8];
  [recentCopy absoluteTimestamp];
  v8 = v7;

  v9 = [v6 dateWithTimeIntervalSinceReferenceDate:v8];
  [v5 setTimeStyle:0];
  [v5 setDateStyle:3];
  [v5 setDoesRelativeDateFormatting:1];
  v10 = [v5 stringFromDate:v9];

  return v10;
}

- (id)_associatedTopicIdsForRecent:(id)recent
{
  v18 = *MEMORY[0x277D85DE8];
  recentCopy = recent;
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  topics = [recentCopy topics];
  v6 = [topics countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(topics);
        }

        topicIdentifier = [*(*(&v13 + 1) + 8 * i) topicIdentifier];
        if ([topicIdentifier length] && objc_msgSend(topicIdentifier, "hasPrefix:", @"Q"))
        {
          [v4 addObject:topicIdentifier];
        }
      }

      v7 = [topics countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_associatedTopicTitlesForRecent:(id)recent
{
  v18 = *MEMORY[0x277D85DE8];
  recentCopy = recent;
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  topics = [recentCopy topics];
  v6 = [topics countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(topics);
        }

        title = [*(*(&v13 + 1) + 8 * i) title];
        if ([title length])
        {
          [v4 addObject:title];
        }
      }

      v7 = [topics countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_scheduleDeferredMaintenanceTasks
{
  deferredMaintenanceTaskBlock = self->_deferredMaintenanceTaskBlock;
  if (deferredMaintenanceTaskBlock)
  {
    dispatch_block_cancel(deferredMaintenanceTaskBlock);
  }

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__CKContextRecentsCache__scheduleDeferredMaintenanceTasks__block_invoke;
  v8[3] = &unk_278E06D40;
  objc_copyWeak(&v9, &location);
  v4 = dispatch_block_create(0, v8);
  v5 = self->_deferredMaintenanceTaskBlock;
  self->_deferredMaintenanceTaskBlock = v4;

  v6 = dispatch_time(0, 5000000000);
  v7 = dispatch_get_global_queue(9, 0);
  dispatch_after(v6, v7, self->_deferredMaintenanceTaskBlock);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__CKContextRecentsCache__scheduleDeferredMaintenanceTasks__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _performMaintenanceTasks];
    v2 = v3[3];
    v3[3] = 0;

    WeakRetained = v3;
  }
}

- (void)_performMaintenanceTasks
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [CKContextRecentsCache _performMaintenanceTasks];
  }

  v3 = os_transaction_create();
  deferredMaintenanceTransaction = self->_deferredMaintenanceTransaction;
  self->_deferredMaintenanceTransaction = v3;

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CKContextRecentsCache__performMaintenanceTasks__block_invoke;
  v5[3] = &unk_278E07238;
  objc_copyWeak(&v6, &location);
  [(CKContextRecentsCache *)self allRecentsWithReply:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __49__CKContextRecentsCache__performMaintenanceTasks__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _performMaintenanceTasksForRecents:v5];
  }
}

- (void)_performMaintenanceTasksForRecents:(id)recents
{
  recentsCopy = recents;
  if ([recentsCopy count])
  {
    [(CKContextRecentsCache *)self _pruneRecentsFromUnusedAppsForRecents:recentsCopy];
    objc_initWeak(location, self);
    v5 = dispatch_time(0, 1000000000);
    v6 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CKContextRecentsCache__performMaintenanceTasksForRecents___block_invoke;
    block[3] = &unk_278E06D40;
    objc_copyWeak(&v9, location);
    dispatch_after(v5, v6, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "There was nothing new to prune", location, 2u);
    }

    deferredMaintenanceTransaction = self->_deferredMaintenanceTransaction;
    self->_deferredMaintenanceTransaction = 0;
  }
}

void __60__CKContextRecentsCache__performMaintenanceTasksForRecents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[4];
    WeakRetained[4] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  deferredMaintenanceTaskBlock = self->_deferredMaintenanceTaskBlock;
  if (deferredMaintenanceTaskBlock)
  {
    dispatch_block_cancel(deferredMaintenanceTaskBlock);
  }

  [(BPSSink *)self->_computedModeSink cancel];
  v4.receiver = self;
  v4.super_class = CKContextRecentsCache;
  [(CKContextRecentsCache *)&v4 dealloc];
}

- (void)_pruneRecentsFromUnusedAppsForRecents:(id)recents
{
  v27 = *MEMORY[0x277D85DE8];
  recentsCopy = recents;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [CKContextRecentsCache _pruneRecentsFromUnusedAppsForRecents:];
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = recentsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        associatedBundleId = [*(*(&v17 + 1) + 8 * v9) associatedBundleId];
        if ([associatedBundleId length] && (objc_msgSend(v5, "containsObject:", associatedBundleId) & 1) == 0)
        {
          [v5 addObject:associatedBundleId];
          v22 = 0;
          v23 = &v22;
          v24 = 0x2050000000;
          v11 = getLSApplicationRecordClass_softClass;
          v25 = getLSApplicationRecordClass_softClass;
          if (!getLSApplicationRecordClass_softClass)
          {
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __getLSApplicationRecordClass_block_invoke;
            v21[3] = &unk_278E06DB8;
            v21[4] = &v22;
            __getLSApplicationRecordClass_block_invoke(v21);
            v11 = v23[3];
          }

          v12 = v11;
          _Block_object_dispose(&v22, 8);
          v16 = 0;
          v13 = [v11 bundleRecordWithApplicationIdentifier:associatedBundleId error:&v16];
          if (!v13 || v16)
          {
            [v4 addObject:associatedBundleId];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v7);
  }

  [(CKContextRecentsCache *)self pruneRecentsForBundleIdentifiers:v4];
  v14 = *MEMORY[0x277D85DE8];
}

- (CKContextRecentsCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __117__CKContextRecentsCache_insertUserActivityData_preferredTitle_bundleId_topics_hasAssociatedImageRepresentation_uuid___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not create user activity data: %@", v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

void __45__CKContextRecentsCache_allRecentsWithReply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__CKContextRecentsCache_allRecentsWithReply___block_invoke_30_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__CKContextRecentsCache_retrieveRecentsBetweenStartDate_endDate_withReply___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(*(*(a1 + 48) + 8) + 40) count];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__CKContextRecentsCache_retrieveRecentsForPredictionWithReply___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*(*(a1 + 40) + 8) + 24);
  [*(*(*(a1 + 48) + 8) + 40) count];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_modeDidChangeToModeWithModeUUIDString:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__CKContextRecentsCache__registerComputedModeStream__block_invoke_cold_1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error listening to computed focus mode stream with error: %@", v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end