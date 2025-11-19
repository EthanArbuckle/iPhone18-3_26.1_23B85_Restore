@interface WDMedicalRecordDisplayItemProvider
+ (id)allSupportedRecordCategories;
+ (id)allSupportedSampleTypes;
+ (id)filteredSampleTypes:(id)a3;
+ (id)supportedRecordCategoriesByCategoryType;
+ (id)unknownRecordCategory;
- (BOOL)loadingNextPage;
- (WDMedicalRecordDisplayItemProvider)initWithProfile:(id)a3 ontologyConcept:(id)a4 preloadedRemovedRecords:(id)a5 removedRecordsOnly:(BOOL)a6 displayItemOptions:(int64_t)a7 sampleTypes:(id)a8 filter:(id)a9 additionalPredicates:(id)a10 sortDescriptors:(id)a11;
- (WDMedicalRecordDisplayItemProvider)initWithProfile:(id)a3 userDomainConcept:(id)a4 preloadedRemovedRecords:(id)a5 removedRecordsOnly:(BOOL)a6 displayItemOptions:(int64_t)a7 sampleTypes:(id)a8 filter:(id)a9 additionalPredicates:(id)a10 sortDescriptors:(id)a11;
- (id)_displayItemGroupAtIndex:(int64_t)a3;
- (id)_queue_synthesizedPredicatesForMedicalType:(id)a3;
- (id)_sortedDisplayItemGroupWithDateDisplay:(id)a3 sourceDaySummaryMapping:(id)a4;
- (id)displayItemForIndexPath:(id)a3;
- (id)indexPathForRecordId:(id)a3;
- (id)removedRecords;
- (id)sourceForGroupAtIndex:(int64_t)a3;
- (id)subtitleForGroupAtIndex:(int64_t)a3;
- (id)titleForGroupAtIndex:(int64_t)a3;
- (int64_t)numberOfDisplayItemsForGroupAtIndex:(int64_t)a3;
- (int64_t)numberOfGroups;
- (void)_commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination:(BOOL)a3;
- (void)_displayItemGroupsForSummaryOfRecords:(id)a3 style:(int64_t)a4 completion:(id)a5;
- (void)_queue_processAccumulatedRecordsForPage:(id)a3;
- (void)_queue_queryForNextBatchOfData;
- (void)_queue_reload;
- (void)_queue_resetPagingCache;
- (void)_queue_resetPagingInformation;
- (void)_queue_setupIterator;
- (void)daySummaryHasDisplayItemUpdate:(id)a3;
- (void)reload;
- (void)requestDataOfNextPage;
- (void)setFilter:(id)a3;
- (void)setFilterPredicatesByType:(id)a3;
- (void)setLoadingNextPage:(BOOL)a3;
- (void)setSampleTypes:(id)a3 predicatesPerType:(id)a4 accountsPredicate:(id)a5;
- (void)startCollectingDataUntilRecordWithUUID:(id)a3 withUpdateHandler:(id)a4;
- (void)stopCollectingData;
@end

@implementation WDMedicalRecordDisplayItemProvider

- (WDMedicalRecordDisplayItemProvider)initWithProfile:(id)a3 ontologyConcept:(id)a4 preloadedRemovedRecords:(id)a5 removedRecordsOnly:(BOOL)a6 displayItemOptions:(int64_t)a7 sampleTypes:(id)a8 filter:(id)a9 additionalPredicates:(id)a10 sortDescriptors:(id)a11
{
  v41 = a3;
  v40 = a4;
  v18 = a5;
  v19 = a8;
  v39 = a9;
  v20 = a10;
  v38 = a11;
  v42.receiver = self;
  v42.super_class = WDMedicalRecordDisplayItemProvider;
  v21 = [(WDMedicalRecordDisplayItemProvider *)&v42 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_profile, a3);
    objc_storeStrong(&v22->_ontologyConcept, a4);
    v23 = [v18 copy];
    preloadedRemovedRecords = v22->_preloadedRemovedRecords;
    v22->_preloadedRemovedRecords = v23;

    v22->_removedRecordsOnly = a6;
    v22->_displayItemOptions = a7;
    v25 = [objc_opt_class() filteredSampleTypes:v19];
    sampleTypes = v22->_sampleTypes;
    v22->_sampleTypes = v25;

    objc_storeStrong(&v22->_filter, a9);
    v27 = [v20 copy];
    additionalPredicates = v22->_additionalPredicates;
    v22->_additionalPredicates = v27;

    objc_storeStrong(&v22->_sortDescriptors, a11);
    v29 = HKCreateSerialDispatchQueue();
    dataQueryQueue = v22->_dataQueryQueue;
    v22->_dataQueryQueue = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    medicalRecordGroups = v22->_medicalRecordGroups;
    v22->_medicalRecordGroups = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dateLessGroups = v22->_dateLessGroups;
    v22->_dateLessGroups = v33;

    v22->_loadingNextPage = 0;
    v35 = objc_alloc_init(WDMedicalRecordPagingContext);
    pagingContext = v22->_pagingContext;
    v22->_pagingContext = v35;

    v22->_lock._os_unfair_lock_opaque = 0;
  }

  return v22;
}

- (WDMedicalRecordDisplayItemProvider)initWithProfile:(id)a3 userDomainConcept:(id)a4 preloadedRemovedRecords:(id)a5 removedRecordsOnly:(BOOL)a6 displayItemOptions:(int64_t)a7 sampleTypes:(id)a8 filter:(id)a9 additionalPredicates:(id)a10 sortDescriptors:(id)a11
{
  v41 = a3;
  v40 = a4;
  v18 = a5;
  v19 = a8;
  v39 = a9;
  v20 = a10;
  v38 = a11;
  v42.receiver = self;
  v42.super_class = WDMedicalRecordDisplayItemProvider;
  v21 = [(WDMedicalRecordDisplayItemProvider *)&v42 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_profile, a3);
    objc_storeStrong(&v22->_userDomainConcept, a4);
    v23 = [v18 copy];
    preloadedRemovedRecords = v22->_preloadedRemovedRecords;
    v22->_preloadedRemovedRecords = v23;

    v22->_removedRecordsOnly = a6;
    v22->_displayItemOptions = a7;
    v25 = [objc_opt_class() filteredSampleTypes:v19];
    sampleTypes = v22->_sampleTypes;
    v22->_sampleTypes = v25;

    objc_storeStrong(&v22->_filter, a9);
    v27 = [v20 copy];
    additionalPredicates = v22->_additionalPredicates;
    v22->_additionalPredicates = v27;

    objc_storeStrong(&v22->_sortDescriptors, a11);
    v29 = HKCreateSerialDispatchQueue();
    dataQueryQueue = v22->_dataQueryQueue;
    v22->_dataQueryQueue = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    medicalRecordGroups = v22->_medicalRecordGroups;
    v22->_medicalRecordGroups = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dateLessGroups = v22->_dateLessGroups;
    v22->_dateLessGroups = v33;

    v35 = objc_alloc_init(WDMedicalRecordPagingContext);
    pagingContext = v22->_pagingContext;
    v22->_pagingContext = v35;

    v22->_lock._os_unfair_lock_opaque = 0;
  }

  return v22;
}

+ (id)filteredSampleTypes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [a1 allSupportedSampleTypes];
  }

  v7 = v6;

  return v7;
}

- (BOOL)loadingNextPage
{
  os_unfair_lock_lock(&self->_lock);
  loadingNextPage = self->_loadingNextPage;
  os_unfair_lock_unlock(&self->_lock);
  return loadingNextPage;
}

- (void)setLoadingNextPage:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_loadingNextPage = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)reload
{
  v3 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__WDMedicalRecordDisplayItemProvider_reload__block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setFilter:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__WDMedicalRecordDisplayItemProvider_setFilter___block_invoke;
  v7[3] = &unk_1E83DD1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __48__WDMedicalRecordDisplayItemProvider_setFilter___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) isEqual:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
    v3 = *(a1 + 32);

    return [v3 _queue_reload];
  }

  return result;
}

- (void)setFilterPredicatesByType:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__WDMedicalRecordDisplayItemProvider_setFilterPredicatesByType___block_invoke;
  v7[3] = &unk_1E83DD1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __64__WDMedicalRecordDisplayItemProvider_setFilterPredicatesByType___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _queue_reload];
}

- (void)setSampleTypes:(id)a3 predicatesPerType:(id)a4 accountsPredicate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__WDMedicalRecordDisplayItemProvider_setSampleTypes_predicatesPerType_accountsPredicate___block_invoke;
  v15[3] = &unk_1E83DCA90;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

uint64_t __89__WDMedicalRecordDisplayItemProvider_setSampleTypes_predicatesPerType_accountsPredicate___block_invoke(id *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (v3[1])
  {
    [v2 setSampleTypes:?];
  }

  else
  {
    v4 = [objc_opt_class() allSupportedSampleTypes];
    [a1[4] setSampleTypes:v4];
  }

  objc_storeStrong(a1[4] + 3, a1[6]);
  objc_storeStrong(a1[4] + 18, a1[7]);
  v5 = a1[4];

  return [v5 _queue_reload];
}

- (void)startCollectingDataUntilRecordWithUUID:(id)a3 withUpdateHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(WDMedicalRecordDisplayItemProvider *)self setUpdateHandler:v6];

  [(WDMedicalRecordDisplayItemProvider *)self setTargetUUID:v7];
  [(WDMedicalRecordDisplayItemProvider *)self setShouldCancelDataCollection:0];
  os_unfair_lock_unlock(&self->_lock);
  if ([(WDMedicalRecordDisplayItemProvider *)self numberOfGroups]>= 1)
  {
    [(WDMedicalRecordDisplayItemProvider *)self _commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination:0];
  }

  v8 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WDMedicalRecordDisplayItemProvider_startCollectingDataUntilRecordWithUUID_withUpdateHandler___block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)stopCollectingData
{
  [(WDMedicalRecordDisplayItemProvider *)self setUpdateHandler:0];
  [(WDMedicalRecordDisplayItemProvider *)self setTargetUUID:0];

  [(WDMedicalRecordDisplayItemProvider *)self setShouldCancelDataCollection:1];
}

- (void)requestDataOfNextPage
{
  v3 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WDMedicalRecordDisplayItemProvider_requestDataOfNextPage__block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (int64_t)numberOfGroups
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(WDMedicalRecordDisplayItemProvider *)self medicalRecordGroups];
  v4 = [v3 count];

  v5 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
  v6 = [v5 hasMoreData];

  if ((v6 & 1) == 0)
  {
    v7 = [(WDMedicalRecordDisplayItemProvider *)self dateLessGroups];
    v4 += [v7 count];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (int64_t)numberOfDisplayItemsForGroupAtIndex:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(WDMedicalRecordDisplayItemProvider *)self _displayItemGroupAtIndex:a3];
  v6 = [v5 numberOfDisplayItems];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)displayItemForIndexPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = -[WDMedicalRecordDisplayItemProvider _displayItemGroupAtIndex:](self, "_displayItemGroupAtIndex:", [v4 section]);
  v6 = [v4 row];

  v7 = [v5 displayItemAtIndex:v6];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)indexPathForRecordId:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(WDMedicalRecordDisplayItemProvider *)self medicalRecordGroups];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(WDMedicalRecordDisplayItemProvider *)self _displayItemGroupAtIndex:v7];
      if ([v8 numberOfDisplayItems] >= 1)
      {
        break;
      }

LABEL_7:

      ++v7;
      v14 = [(WDMedicalRecordDisplayItemProvider *)self medicalRecordGroups];
      v15 = [v14 count];

      if (v7 >= v15)
      {
        goto LABEL_8;
      }
    }

    v9 = 0;
    while (1)
    {
      v10 = [v8 displayItemAtIndex:v9];
      v11 = [v10 medicalRecord];
      v12 = [v11 UUID];
      v13 = [v4 isEqual:v12];

      if (v13)
      {
        break;
      }

      if (++v9 >= [v8 numberOfDisplayItems])
      {
        goto LABEL_7;
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    v16 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:v7];
  }

  else
  {
LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
    v16 = 0;
  }

  return v16;
}

- (id)titleForGroupAtIndex:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(WDMedicalRecordDisplayItemProvider *)self _displayItemGroupAtIndex:a3];
  v6 = [v5 title];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)subtitleForGroupAtIndex:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(WDMedicalRecordDisplayItemProvider *)self _displayItemGroupAtIndex:a3];
  v6 = [v5 subtitle];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)sourceForGroupAtIndex:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(WDMedicalRecordDisplayItemProvider *)self _displayItemGroupAtIndex:a3];
  v6 = [v5 source];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)removedRecords
{
  dispatch_assert_queue_not_V2(self->_dataQueryQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  dataQueryQueue = self->_dataQueryQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__WDMedicalRecordDisplayItemProvider_removedRecords__block_invoke;
  v6[3] = &unk_1E83DD4C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dataQueryQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__WDMedicalRecordDisplayItemProvider_removedRecords__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) pagingContext];
  v2 = [v6 removedRecords];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_queue_reload
{
  v3 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_shouldClearPagingCacheOnNextReload)
  {
    [(WDMedicalRecordDisplayItemProvider *)self _queue_resetPagingCache];
    self->_shouldClearPagingCacheOnNextReload = 0;
  }

  [(WDMedicalRecordDisplayItemProvider *)self _queue_resetPagingInformation];

  [(WDMedicalRecordDisplayItemProvider *)self _queue_queryForNextBatchOfData];
}

- (void)_queue_setupIterator
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(WDMedicalRecordDisplayItemProvider *)self sampleTypes];
  v4 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    v36 = *MEMORY[0x1E696B718];
    v7 = 0x1E696C000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * v8);
        v10 = [(WDMedicalRecordDisplayItemProvider *)self ontologyConcept];

        if (v10)
        {
          v11 = *(v7 + 888);
          v12 = [(WDMedicalRecordDisplayItemProvider *)self ontologyConcept];
          v13 = [v12 identifier];
          v14 = [v11 predicateForSamplesWithConceptIdentifier:v13 keyPath:v36];
        }

        else
        {
          v15 = [(WDMedicalRecordDisplayItemProvider *)self userDomainConcept];

          if (v15)
          {
            v16 = [(WDMedicalRecordDisplayItemProvider *)self filterPredicatesByType];
            v12 = [v16 objectForKeyedSubscript:v9];

            v17 = *(v7 + 888);
            v18 = [(WDMedicalRecordDisplayItemProvider *)self userDomainConcept];
            v19 = [v17 predicateForMedicalRecordsAssociatedWithMedicalUserDomainConcept:v18];

            v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v21 = v20;
            if (v12)
            {
              [v20 addObject:v12];
            }

            if (v19)
            {
              [v21 addObject:v19];
            }

            if ([v21 count])
            {
              v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v21];
            }

            else
            {
              v14 = 0;
            }

            v7 = 0x1E696C000uLL;
          }

          else
          {
            v12 = [(WDMedicalRecordDisplayItemProvider *)self _queue_synthesizedPredicatesForMedicalType:v9];
            if ([v12 count])
            {
              v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v12];
            }

            else
            {
              v14 = 0;
            }
          }
        }

        if (self->_removedRecordsOnly)
        {
          v22 = [*(v7 + 888) predicateForMedicalRecordWithState:1];
          v23 = v22;
          if (v14)
          {
            v24 = MEMORY[0x1E696AB28];
            v42[0] = v22;
            v42[1] = v14;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
            v26 = [v24 andPredicateWithSubpredicates:v25];

            v7 = 0x1E696C000;
            v14 = v26;
          }

          else
          {
            v14 = v22;
          }
        }

        v27 = [MEMORY[0x1E696C388] queryDescriptorWithSampleType:v9 predicate:v14];
        [v3 addObject:v27];

        ++v8;
      }

      while (v5 != v8);
      v28 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      v5 = v28;
    }

    while (v28);
  }

  v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696B9B8] ascending:0];
  v30 = objc_alloc(MEMORY[0x1E696C2A8]);
  v41 = v29;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v32 = [(WDMedicalRecordDisplayItemProvider *)self profile];
  v33 = [v32 healthStore];
  v34 = [v30 initWithQueryDescriptors:v3 sortDescriptors:v31 bufferSize:16 healthStore:v33];
  [(WDMedicalRecordDisplayItemProvider *)self setIterator:v34];
}

- (void)_queue_resetPagingInformation
{
  v3 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
  [v4 resetPagingContext];

  [(WDMedicalRecordDisplayItemProvider *)self _queue_setupIterator];
  v5 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
  [v5 setPagingContextReady:1];
}

- (void)_queue_resetPagingCache
{
  v3 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(WDMedicalRecordDisplayItemProvider *)self setMedicalRecordGroups:v4];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(WDMedicalRecordDisplayItemProvider *)self setDateLessGroups:v5];
}

- (id)_queue_synthesizedPredicatesForMedicalType:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(WDMedicalRecordDisplayItemProvider *)self additionalPredicates];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    [v6 addObject:v8];
  }

  v9 = [(WDMedicalRecordDisplayItemProvider *)self filter];

  if (v9)
  {
    v10 = [(WDMedicalRecordDisplayItemProvider *)self filter];
    [v6 addObject:v10];
  }

  v11 = [(WDMedicalRecordDisplayItemProvider *)self accountsPredicate];

  if (v11)
  {
    v12 = [(WDMedicalRecordDisplayItemProvider *)self accountsPredicate];
    [v6 addObject:v12];
  }

  return v6;
}

- (id)_displayItemGroupAtIndex:(int64_t)a3
{
  v5 = [(WDMedicalRecordDisplayItemProvider *)self medicalRecordGroups];
  v6 = [v5 count];

  v7 = [(WDMedicalRecordDisplayItemProvider *)self medicalRecordGroups];
  v8 = v7;
  if (v6 <= a3)
  {
    a3 -= [v7 count];

    v7 = [(WDMedicalRecordDisplayItemProvider *)self dateLessGroups];
    v8 = v7;
  }

  v9 = [v7 objectAtIndexedSubscript:a3];

  return v9;
}

- (void)_commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__WDMedicalRecordDisplayItemProvider__commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination___block_invoke;
  block[3] = &unk_1E83DD7F0;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __109__WDMedicalRecordDisplayItemProvider__commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(os_unfair_lock_s *)WeakRetained pendingMedicalRecordGroups];
    v5 = [v4 copy];

    v6 = [(os_unfair_lock_s *)v3 pendingDateLessGroups];
    v7 = [v6 copy];

    [(os_unfair_lock_s *)v3 setPendingMedicalRecordGroups:0];
    [(os_unfair_lock_s *)v3 setPendingDateLessGroups:0];
    v8 = [(os_unfair_lock_s *)v3 pagingContext];
    v9 = [v8 removedRecords];
    v10 = [v9 count];

    os_unfair_lock_lock(v3 + 2);
    v11 = (*(a1 + 40) & 1) != 0 || [v5 count] || objc_msgSend(v7, "count") != 0;
    v12 = [(os_unfair_lock_s *)v3 pagingContext];
    v13 = [v12 shouldClearDisplayItemGroups];

    if (v13)
    {
      v14 = [(os_unfair_lock_s *)v3 pagingContext];
      [v14 setShouldClearDisplayItemGroups:0];

      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(os_unfair_lock_s *)v3 setMedicalRecordGroups:v15];

      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(os_unfair_lock_s *)v3 setDateLessGroups:v16];

      v11 = 1;
    }

    v17 = [(os_unfair_lock_s *)v3 medicalRecordGroups];
    [v17 addObjectsFromArray:v5];

    v18 = [(os_unfair_lock_s *)v3 dateLessGroups];
    [v18 addObjectsFromArray:v7];

    [(os_unfair_lock_s *)v3 setNumOfRemovedRecords:v10];
    v19 = [(os_unfair_lock_s *)v3 pagingContext];
    if ([v19 hasMoreData])
    {
    }

    else
    {
      v20 = [(os_unfair_lock_s *)v3 numOfRemovedRecords]> 0;

      v11 |= v20;
    }

    os_unfair_lock_unlock(v3 + 2);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __109__WDMedicalRecordDisplayItemProvider__commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination___block_invoke_2;
    v21[3] = &unk_1E83DCF40;
    v21[4] = v3;
    v22 = v11 & 1;
    dispatch_async(MEMORY[0x1E69E96A0], v21);
  }
}

void __109__WDMedicalRecordDisplayItemProvider__commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) updateHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) updateHandler];
    v3[2](v3, *(a1 + 40));
  }
}

- (void)_queue_queryForNextBatchOfData
{
  v3 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  dispatch_assert_queue_V2(v3);

  if ([(WDMedicalRecordDisplayItemProvider *)self shouldCancelDataCollection])
  {
    return;
  }

  v4 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
  v5 = [v4 shouldQueryForNextBatch];

  if (!v5)
  {
    return;
  }

  v6 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
  [v6 setFetchingCurrentPage:1];

  v7 = [(WDMedicalRecordDisplayItemProvider *)self preloadedRemovedRecords];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
    [v9 setFetchingCurrentPage:0];

    v10 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
    [v10 setHasMoreData:0];

    v48 = [(WDMedicalRecordDisplayItemProvider *)self preloadedRemovedRecords];
    [(WDMedicalRecordDisplayItemProvider *)self _queue_processAccumulatedRecordsForPage:v48];

    return;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(WDMedicalRecordDisplayItemProvider *)self iterator];
  v13 = [v12 sample];

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = [(WDMedicalRecordDisplayItemProvider *)self iterator];
    v51 = 0;
    [v15 advanceWithError:&v51];
    v14 = v51;
  }

  v16 = [(WDMedicalRecordDisplayItemProvider *)self iterator];
  v17 = [v16 sample];

  if (v17)
  {
    v18 = [v17 meaningfulDateDisplayStringWithPreferredForm:1 showTime:0];
    [v11 addObject:v17];
  }

  else
  {
    v18 = 0;
  }

  v47 = 0;
  while (1)
  {
    v19 = v14;
    v20 = [(WDMedicalRecordDisplayItemProvider *)self iterator];
    v50 = v14;
    [v20 advanceWithError:&v50];
    v14 = v50;

    v21 = [(WDMedicalRecordDisplayItemProvider *)self iterator];
    v22 = [v21 sample];
    v23 = v22;
    if (v17 == v22)
    {

LABEL_28:
      v28 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
      [v28 setHasMoreData:0];
LABEL_30:

      v41 = [(WDMedicalRecordDisplayItemProvider *)self errorHandler];

      if (v41 && v14)
      {
        v42 = [(WDMedicalRecordDisplayItemProvider *)self errorHandler];
        (v42)[2](v42, v14);
      }

      v43 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
      [v43 setFetchingCurrentPage:0];

      [(WDMedicalRecordDisplayItemProvider *)self _queue_processAccumulatedRecordsForPage:v11];
      goto LABEL_34;
    }

    v24 = [(WDMedicalRecordDisplayItemProvider *)self iterator];
    v25 = [v24 sample];

    if (!v25)
    {
      goto LABEL_28;
    }

    v26 = [(WDMedicalRecordDisplayItemProvider *)self iterator];
    v27 = [v26 sample];

    v28 = [v27 meaningfulDateDisplayStringWithPreferredForm:1 showTime:0];
    v29 = 0;
    if ([v11 count] >= 9)
    {
      v29 = [v28 isEqual:v18] ^ 1;
    }

    v30 = [(WDMedicalRecordDisplayItemProvider *)self ontologyConcept];

    if (!v30)
    {
LABEL_25:
      if (v29)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    v49 = v14;
    v31 = v18;
    v32 = v11;
    v33 = [(WDMedicalRecordDisplayItemProvider *)self ontologyConcept];
    v34 = [v27 primaryConcept];
    v35 = [v34 groupByConcept];
    v36 = [v33 isEqual:v35];

    if ((v36 & 1) == 0)
    {
      break;
    }

    v37 = [(WDMedicalRecordDisplayItemProvider *)self targetUUID];

    v11 = v32;
    v18 = v31;
    v14 = v49;
    if (!v37)
    {
      goto LABEL_25;
    }

    v38 = [v27 UUID];
    v39 = [(WDMedicalRecordDisplayItemProvider *)self targetUUID];
    v40 = [v38 isEqual:v39];

    if (v40)
    {
      [(WDMedicalRecordDisplayItemProvider *)self setTargetUUID:0];
      v47 = 1;
    }

    if (v47 & v29)
    {
LABEL_29:
      v17 = v27;
      goto LABEL_30;
    }

LABEL_26:

    [v11 addObject:v27];
    v18 = v28;
    v17 = v27;
  }

  v44 = [(WDMedicalRecordDisplayItemProvider *)self errorHandler];

  v11 = v32;
  if (v44)
  {
    v45 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.health.HealthRecordsUI" code:100 userInfo:0];
    v46 = [(WDMedicalRecordDisplayItemProvider *)self errorHandler];
    (v46)[2](v46, v45);
  }

  v17 = v27;
  v18 = v31;
  v14 = v49;
LABEL_34:
}

- (void)_queue_processAccumulatedRecordsForPage:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_5];
  v7 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
  v8 = [v7 unprocessedRecords];
  [v8 addObjectsFromArray:v6];

  v9 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
  v10 = [v9 unprocessedRecords];
  v11 = [v10 hk_filter:&__block_literal_global_370];

  if ([v11 count] <= 8 && (-[WDMedicalRecordDisplayItemProvider pagingContext](self, "pagingContext"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasMoreData"), v12, (v13 & 1) != 0))
  {
    v14 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
    v15 = [v14 hasMoreData];

    if (v15)
    {
      [(WDMedicalRecordDisplayItemProvider *)self _queue_queryForNextBatchOfData];
    }

    else
    {
      [(WDMedicalRecordDisplayItemProvider *)self _commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination:0];
    }
  }

  else
  {
    v16 = self->_displayItemOptions & 1;
    v17 = [(WDMedicalRecordDisplayItemProvider *)self ontologyConcept];

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16;
    }

    objc_initWeak(&location, self);
    v19 = [(WDMedicalRecordDisplayItemProvider *)self pagingContext];
    v20 = [v19 unprocessedRecords];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__WDMedicalRecordDisplayItemProvider__queue_processAccumulatedRecordsForPage___block_invoke_3;
    v21[3] = &unk_1E83DD858;
    objc_copyWeak(&v22, &location);
    v21[4] = self;
    [(WDMedicalRecordDisplayItemProvider *)self _displayItemGroupsForSummaryOfRecords:v20 style:v18 completion:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

uint64_t __78__WDMedicalRecordDisplayItemProvider__queue_processAccumulatedRecordsForPage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v4;
    v7 = v5;
    v8 = [v7 sortDate];
    v9 = [v6 sortDate];
    v10 = [v8 compare:v9];

    if (!v10)
    {
      v11 = [v6 displayNameForGroupByConcept];
      v12 = [v7 displayNameForGroupByConcept];
      v10 = [v11 localizedStandardCompare:v12];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __78__WDMedicalRecordDisplayItemProvider__queue_processAccumulatedRecordsForPage___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDisplayable] && (objc_msgSend(v2, "isDateLess") & 1) == 0)
  {
    v3 = [v2 isRemovedFromRemote] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __78__WDMedicalRecordDisplayItemProvider__queue_processAccumulatedRecordsForPage___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained pagingContext];
    v10 = [v9 unprocessedRecords];
    [v10 removeAllObjects];

    [v8 setPendingMedicalRecordGroups:v5];
    [v8 setPendingDateLessGroups:v6];
    v11 = [v8 pagingContext];
    v12 = [v11 removedRecords];
    v13 = [v12 count];

    os_unfair_lock_lock((*(a1 + 32) + 8));
    v14 = [v8 medicalRecordGroups];
    if ([v14 count] || objc_msgSend(v5, "count"))
    {
      v15 = 0;
    }

    else
    {
      v21 = [v8 dateLessGroups];
      if ([v21 count])
      {
        v15 = 0;
      }

      else
      {
        v15 = [v6 count] == 0;
      }
    }

    v16 = [v8 pagingContext];
    v17 = [v16 hasMoreData];

    if (v17 || !v15)
    {
      v18 = [v8 dataQueryQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__WDMedicalRecordDisplayItemProvider__queue_processAccumulatedRecordsForPage___block_invoke_4;
      block[3] = &unk_1E83DCA20;
      block[4] = v8;
      dispatch_async(v18, block);
    }

    else
    {
      [v8 _commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination:0];
    }

    v19 = [v8 pagingContext];
    v20 = [v19 hasMoreData];

    if ((v20 & 1) == 0 && v13)
    {
      [v8 _commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination:0];
    }

    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }
}

void __78__WDMedicalRecordDisplayItemProvider__queue_processAccumulatedRecordsForPage___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) pagingContext];
  v2 = [v1 computingDaySummaries];

  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) recomputeIfNeeded];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_displayItemGroupsForSummaryOfRecords:(id)a3 style:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(WDMedicalRecordDisplayItemProvider *)self removedRecordsOnly];
  objc_initWeak(&location, self);
  v11 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__WDMedicalRecordDisplayItemProvider__displayItemGroupsForSummaryOfRecords_style_completion___block_invoke;
  v14[3] = &unk_1E83DD880;
  objc_copyWeak(v17, &location);
  v18 = v10;
  v17[1] = a4;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(v11, v14);

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __93__WDMedicalRecordDisplayItemProvider__displayItemGroupsForSummaryOfRecords_style_completion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v65 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_39;
  }

  v51 = WeakRetained;
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = *(v1 + 32);
  v6 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  v49 = v5;
  v50 = v4;
  v48 = v1;
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v60;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v60 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v59 + 1) + 8 * i);
      if (([v11 isDisplayable] & 1) == 0)
      {
        goto LABEL_11;
      }

      if ((*(v1 + 64) & 1) == 0 && [v11 isRemovedFromRemote])
      {
        v12 = [v51 pagingContext];
        v13 = [v12 removedRecords];
        [v13 addObject:v11];

LABEL_11:
        ++v8;
        continue;
      }

      if ([v11 isDateLess])
      {
        v14 = [v11 sourceRevision];
        v15 = [v14 source];

        v16 = [v5 objectForKeyedSubscript:v15];
        if (!v16)
        {
          v17 = [WDMedicalRecordDaySummary alloc];
          [v51 profile];
          v18 = v52 = v8;
          v16 = [(WDMedicalRecordDaySummary *)v17 initWithProfile:v18 style:*(v1 + 56) delegate:v51];

          [v49 setObject:v16 forKeyedSubscript:v15];
          v5 = v49;
          v19 = [v51 pagingContext];
          v20 = [v19 computingDaySummaries];
          [v20 addObject:v16];

          v4 = v50;
          v8 = v52;
        }

        [(WDMedicalRecordDaySummary *)v16 addMedicalRecord:v11];
      }

      else
      {
        v53 = v8;
        v21 = [v11 meaningfulDateDisplayStringWithPreferredForm:1 showTime:0];
        v22 = [v4 objectForKeyedSubscript:v21];
        if (!v22)
        {
          v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v4 setObject:v22 forKeyedSubscript:v21];
          [v47 addObject:v21];
        }

        v23 = [v11 sourceRevision];
        v24 = [v23 source];

        v25 = [v22 objectForKeyedSubscript:v24];
        if (!v25)
        {
          v26 = [WDMedicalRecordDaySummary alloc];
          v27 = [v51 profile];
          v25 = [(WDMedicalRecordDaySummary *)v26 initWithProfile:v27 style:*(v48 + 56) delegate:v51];

          [v22 setObject:v25 forKeyedSubscript:v24];
          v28 = [v51 pagingContext];
          v29 = [v28 computingDaySummaries];
          [v29 addObject:v25];

          v1 = v48;
          v5 = v49;
        }

        [(WDMedicalRecordDaySummary *)v25 addMedicalRecord:v11];

        v4 = v50;
        v8 = v53;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  }

  while (v7);
LABEL_23:

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v30 = v47;
  v31 = [v30 countByEnumeratingWithState:&v55 objects:v63 count:16];
  v3 = v51;
  v32 = v46;
  if (v31)
  {
    v33 = v31;
    v34 = *v56;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v55 + 1) + 8 * j);
        v37 = [v4 objectForKeyedSubscript:{v36, v46}];
        v38 = [v51 _sortedDisplayItemGroupWithDateDisplay:v36 sourceDaySummaryMapping:v37];

        [v32 addObjectsFromArray:v38];
      }

      v33 = [v30 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v33);
  }

  v39 = [MEMORY[0x1E696C528] unknownRecordType];
  v40 = [v51 sampleTypes];
  if ([v40 count] == 1)
  {
    v41 = [v51 sampleTypes];
    v42 = [v41 firstObject];

    if (v42 == v39)
    {
      v43 = 0;
      goto LABEL_35;
    }
  }

  else
  {
  }

  v44 = HKHealthKitFrameworkBundle();
  v43 = [v44 localizedStringForKey:@"MEDICAL_RECORD_SUMMARY_NO_DATE_SECTION_TITLE" value:&stru_1F4D16E38 table:@"Localizable-Clinical-Health-Records"];

LABEL_35:
  if ([v49 count])
  {
    v45 = [v51 _sortedDisplayItemGroupWithDateDisplay:v43 sourceDaySummaryMapping:v49];
  }

  else
  {
    v45 = 0;
  }

  (*(*(v48 + 40) + 16))();

LABEL_39:
}

- (id)_sortedDisplayItemGroupWithDateDisplay:(id)a3 sourceDaySummaryMapping:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [v6 allKeys];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_387];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:v14];
        v16 = [WDMedicalRecordDisplayItemGroup displayItemGroupWithDaySummary:v15];
        [v16 setSource:v14];
        if (v5)
        {
          [v16 setTitle:v5];
          v17 = [v14 name];
          [v16 setSubtitle:v17];
        }

        else
        {
          v18 = [v14 name];
          [v16 setTitle:v18];

          [v16 setSubtitle:0];
        }

        [v7 addObject:v16];
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  return v7;
}

uint64_t __101__WDMedicalRecordDisplayItemProvider__sortedDisplayItemGroupWithDateDisplay_sourceDaySummaryMapping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)daySummaryHasDisplayItemUpdate:(id)a3
{
  v4 = a3;
  v5 = [(WDMedicalRecordDisplayItemProvider *)self dataQueryQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__WDMedicalRecordDisplayItemProvider_daySummaryHasDisplayItemUpdate___block_invoke;
  v7[3] = &unk_1E83DD1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __69__WDMedicalRecordDisplayItemProvider_daySummaryHasDisplayItemUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pagingContext];
  v3 = [v2 computingDaySummaries];
  [v3 removeObject:*(a1 + 40)];

  v4 = [*(a1 + 32) pagingContext];
  v5 = [v4 computingDaySummaries];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = *(a1 + 32);

    [v7 _commitPendingGroupsAndCallUpdateHandlerBypassGroupChangeDetermination:1];
  }
}

+ (id)allSupportedRecordCategories
{
  if (allSupportedRecordCategories_onceToken != -1)
  {
    +[WDMedicalRecordDisplayItemProvider allSupportedRecordCategories];
  }

  v3 = allSupportedRecordCategories_categories;

  return v3;
}

void __66__WDMedicalRecordDisplayItemProvider_allSupportedRecordCategories__block_invoke()
{
  v122[10] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v121[0] = &unk_1F4D36F80;
  v120[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v120[1] = @"WDMedicalRecordCategoryMetricColors";
  v82 = [MEMORY[0x1E69A4518] medicationsClinicalColors];
  v121[1] = v82;
  v120[2] = @"WDMedicalRecordCategoryDisplayName";
  v81 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v80 = [v81 localizedStringForKey:@"MEDICATIONS_CATEGORY" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  v121[2] = v80;
  v121[3] = @"health_records_medications";
  v120[3] = @"WDMedicalRecordCategoryDisplayImageName";
  v120[4] = @"WDMedicalRecordCategorySampleTypes";
  v79 = [MEMORY[0x1E696C290] medicationOrderType];
  v119[0] = v79;
  v78 = [MEMORY[0x1E696C270] medicationDispenseRecordType];
  v119[1] = v78;
  v77 = [MEMORY[0x1E696C2A0] medicationRecordType];
  v119[2] = v77;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:3];
  v121[4] = v76;
  v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:5];
  v122[0] = v75;
  v118[0] = &unk_1F4D36F98;
  v117[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v117[1] = @"WDMedicalRecordCategoryMetricColors";
  v74 = [MEMORY[0x1E69A4518] labResultsClinicalColors];
  v118[1] = v74;
  v117[2] = @"WDMedicalRecordCategoryDisplayName";
  v73 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v72 = [v73 localizedStringForKey:@"LAB_CATEGORY" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  v118[2] = v72;
  v118[3] = @"health_records_lab_results";
  v117[3] = @"WDMedicalRecordCategoryDisplayImageName";
  v117[4] = @"WDMedicalRecordCategorySampleTypes";
  v71 = [MEMORY[0x1E696C0F0] diagnosticTestReportType];
  v116[0] = v71;
  v70 = [MEMORY[0x1E696C100] diagnosticTestResultType];
  v116[1] = v70;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
  v118[4] = v69;
  v117[5] = @"WDMedicalRecordCategoryAdditionalPredicates";
  v68 = [MEMORY[0x1E696C100] diagnosticTestResultType];
  v114 = v68;
  v67 = [MEMORY[0x1E696C378] predicateForDiagnosticTestResultCategory:*MEMORY[0x1E696B790]];
  v115 = v67;
  v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
  v118[5] = v66;
  v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:6];
  v122[1] = v65;
  v113[0] = &unk_1F4D36FB0;
  v112[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v112[1] = @"WDMedicalRecordCategoryMetricColors";
  v64 = [MEMORY[0x1E69A4518] vitalsClinicalColors];
  v113[1] = v64;
  v112[2] = @"WDMedicalRecordCategoryDisplayName";
  v63 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v62 = [v63 localizedStringForKey:@"CLINICAL_VITALS_CATEGORY" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  v113[2] = v62;
  v113[3] = @"health_records_vitals";
  v112[3] = @"WDMedicalRecordCategoryDisplayImageName";
  v112[4] = @"WDMedicalRecordCategorySampleTypes";
  v61 = [MEMORY[0x1E696C100] diagnosticTestResultType];
  v111 = v61;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
  v113[4] = v60;
  v112[5] = @"WDMedicalRecordCategoryAdditionalPredicates";
  v59 = [MEMORY[0x1E696C100] diagnosticTestResultType];
  v109 = v59;
  v58 = [MEMORY[0x1E696C378] predicateForDiagnosticTestResultCategory:*MEMORY[0x1E696B798]];
  v110 = v58;
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
  v113[5] = v57;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:6];
  v122[2] = v56;
  v108[0] = &unk_1F4D36FC8;
  v107[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v107[1] = @"WDMedicalRecordCategoryMetricColors";
  v55 = [MEMORY[0x1E69A4518] conditionsClinicalColors];
  v108[1] = v55;
  v107[2] = @"WDMedicalRecordCategoryDisplayName";
  v54 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v53 = [v54 localizedStringForKey:@"CONDITION_CATEGORY" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  v108[2] = v53;
  v108[3] = @"health_records_conditions";
  v107[3] = @"WDMedicalRecordCategoryDisplayImageName";
  v107[4] = @"WDMedicalRecordCategorySampleTypes";
  v52 = [MEMORY[0x1E696C048] conditionRecordType];
  v106 = v52;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  v108[4] = v51;
  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:5];
  v122[3] = v50;
  v105[0] = &unk_1F4D36FE0;
  v104[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v104[1] = @"WDMedicalRecordCategoryMetricColors";
  v49 = [MEMORY[0x1E69A4518] proceduresClinicalColors];
  v105[1] = v49;
  v104[2] = @"WDMedicalRecordCategoryDisplayName";
  v48 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v47 = [v48 localizedStringForKey:@"PROCEDURE_CATEGORY" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  v105[2] = v47;
  v105[3] = @"health_records_procedures";
  v104[3] = @"WDMedicalRecordCategoryDisplayImageName";
  v104[4] = @"WDMedicalRecordCategorySampleTypes";
  v46 = [MEMORY[0x1E696C330] procedureRecordType];
  v103 = v46;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  v105[4] = v45;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:5];
  v122[4] = v44;
  v102[0] = &unk_1F4D36FF8;
  v101[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v101[1] = @"WDMedicalRecordCategoryMetricColors";
  v43 = [MEMORY[0x1E69A4518] immunizationsClinicalColors];
  v102[1] = v43;
  v101[2] = @"WDMedicalRecordCategoryDisplayName";
  v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  v41 = [v42 localizedStringForKey:@"IMMUNIZATION_CATEGORY" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  v102[2] = v41;
  v102[3] = @"health_records_immunizations";
  v101[3] = @"WDMedicalRecordCategoryDisplayImageName";
  v101[4] = @"WDMedicalRecordCategorySampleTypes";
  v40 = [MEMORY[0x1E696C570] vaccinationRecordType];
  v100 = v40;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
  v102[4] = v39;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:5];
  v122[5] = v38;
  v99[0] = &unk_1F4D37010;
  v98[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v98[1] = @"WDMedicalRecordCategoryMetricColors";
  v37 = [MEMORY[0x1E69A4518] allergiesClinicalColors];
  v99[1] = v37;
  v98[2] = @"WDMedicalRecordCategoryDisplayName";
  v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v35 = [v36 localizedStringForKey:@"ALLERGY_CATEGORY" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  v99[2] = v35;
  v99[3] = @"health_records_allergies";
  v98[3] = @"WDMedicalRecordCategoryDisplayImageName";
  v98[4] = @"WDMedicalRecordCategorySampleTypes";
  v34 = [MEMORY[0x1E696BEE8] allergyRecordType];
  v97 = v34;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v99[4] = v33;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:5];
  v122[6] = v32;
  v96[0] = &unk_1F4D36F68;
  v95[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v95[1] = @"WDMedicalRecordCategoryMetricColors";
  v31 = [MEMORY[0x1E69A4518] unknownCategoryClinicalColors];
  v96[1] = v31;
  v95[2] = @"WDMedicalRecordCategoryDisplayName";
  v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v29 = [v30 localizedStringForKey:@"UNKNOWN_RECORDS" value:? table:?];
  v96[2] = v29;
  v95[3] = @"WDMedicalRecordCategorySampleTypes";
  v28 = [MEMORY[0x1E696C528] unknownRecordType];
  v94 = v28;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
  v96[3] = v27;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:4];
  v122[7] = v26;
  v93[0] = &unk_1F4D37028;
  v92[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v92[1] = @"WDMedicalRecordCategoryMetricColors";
  v25 = [MEMORY[0x1E69A4518] insuranceClinicalColors];
  v93[1] = v25;
  v92[2] = @"WDMedicalRecordCategoryDisplayName";
  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v23 = [v24 localizedStringForKey:@"INSURANCE_CATEGORY" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  v93[2] = v23;
  v93[3] = @"health_records_insurance";
  v92[3] = @"WDMedicalRecordCategoryDisplayImageName";
  v92[4] = @"WDMedicalRecordCategorySampleTypes";
  v22 = [MEMORY[0x1E696C080] coverageRecordType];
  v91 = v22;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  v93[4] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:5];
  v122[8] = v2;
  v90[0] = &unk_1F4D37040;
  v89[0] = @"HKMedicalRecordCategoryTypeIdentifer";
  v89[1] = @"WDMedicalRecordCategoryMetricColors";
  v3 = [MEMORY[0x1E69A4518] clinicalNotesClinicalColors];
  v90[1] = v3;
  v89[2] = @"WDMedicalRecordCategoryDisplayName";
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"CLINICAL_NOTES_CATEGORY" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Notes"];
  v90[2] = v5;
  v90[3] = @"health_records_clinical_notes";
  v89[3] = @"WDMedicalRecordCategoryDisplayImageName";
  v89[4] = @"WDMedicalRecordCategorySampleTypes";
  v6 = [MEMORY[0x1E696BFD0] clinicalNoteRecordType];
  v88 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v90[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:5];
  v122[9] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:10];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v83 objects:v87 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v84;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v84 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [[WDMedicalRecordCategory alloc] initWithDictionary:*(*(&v83 + 1) + 8 * i)];
        v16 = [(WDMedicalRecordCategory *)v15 categoryType];
        if (v16 > 4)
        {
          if (v16 > 7)
          {
            if (v16 != 8)
            {
              if (v16 == 9)
              {
                v17 = [MEMORY[0x1E69DC888] hrui_insurance];
              }

              else
              {
                if (v16 != 10)
                {
                  goto LABEL_30;
                }

                v17 = [MEMORY[0x1E69DC888] hrui_clinicalNotes];
              }

              goto LABEL_29;
            }

LABEL_23:
            v17 = [MEMORY[0x1E69DC888] hrui_unreadable];
            goto LABEL_29;
          }

          if (v16 == 5)
          {
            v17 = [MEMORY[0x1E69DC888] hrui_procedures];
            goto LABEL_29;
          }

          if (v16 == 6)
          {
            [MEMORY[0x1E69DC888] hrui_immunizations];
          }

          else
          {
            [MEMORY[0x1E69DC888] hrui_allergies];
          }

          goto LABEL_11;
        }

        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v17 = [MEMORY[0x1E69DC888] hrui_labResults];
            goto LABEL_29;
          }

          if (v16 == 3)
          {
            [MEMORY[0x1E69DC888] hrui_clinicalVitals];
          }

          else
          {
            [MEMORY[0x1E69DC888] hrui_conditions];
          }

          v17 = LABEL_11:;
          goto LABEL_29;
        }

        if (!v16)
        {
          goto LABEL_23;
        }

        if (v16 != 1)
        {
          goto LABEL_30;
        }

        v17 = [MEMORY[0x1E69DC888] hrui_medications];
LABEL_29:
        v18 = v17;
        v19 = [(WDMedicalRecordCategory *)v15 categoryMetricColors];
        [v19 setKeyColor:v18];

LABEL_30:
        [v0 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v83 objects:v87 count:16];
    }

    while (v12);
  }

  v20 = [v0 copy];
  v21 = allSupportedRecordCategories_categories;
  allSupportedRecordCategories_categories = v20;
}

+ (id)supportedRecordCategoriesByCategoryType
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WDMedicalRecordDisplayItemProvider_supportedRecordCategoriesByCategoryType__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (supportedRecordCategoriesByCategoryType_onceToken != -1)
  {
    dispatch_once(&supportedRecordCategoriesByCategoryType_onceToken, block);
  }

  v2 = supportedRecordCategoriesByCategoryType_categoryDictionary;

  return v2;
}

void __77__WDMedicalRecordDisplayItemProvider_supportedRecordCategoriesByCategoryType__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = [objc_opt_class() allSupportedRecordCategories];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "categoryType")}];
        [v0 setObject:v6 forKeyedSubscript:v7];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v8 = [v0 copy];
  v9 = supportedRecordCategoriesByCategoryType_categoryDictionary;
  supportedRecordCategoriesByCategoryType_categoryDictionary = v8;
}

+ (id)allSupportedSampleTypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WDMedicalRecordDisplayItemProvider_allSupportedSampleTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = 1;
  if (allSupportedSampleTypes_onceToken[0] != -1)
  {
    dispatch_once(allSupportedSampleTypes_onceToken, block);
  }

  v2 = allSupportedSampleTypes_sampleTypes;

  return v2;
}

void __61__WDMedicalRecordDisplayItemProvider_allSupportedSampleTypes__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696C3D0] medicalRecordTypesWithOptions:*(a1 + 32)];
  v2 = allSupportedSampleTypes_sampleTypes;
  allSupportedSampleTypes_sampleTypes = v1;
}

+ (id)unknownRecordCategory
{
  v2 = [objc_opt_class() supportedRecordCategoriesByCategoryType];
  v3 = [v2 objectForKeyedSubscript:&unk_1F4D36F68];

  return v3;
}

@end