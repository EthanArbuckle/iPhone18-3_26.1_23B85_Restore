@interface ML3QueryResultSet
- (BOOL)_updateToLibraryCurrentRevision;
- (BOOL)updateToLibraryCurrentRevision;
- (ML3QueryResultSet)initWithQuery:(id)a3;
- (id)_initWithQuery:(id)a3 supportsIncrementalUpdate:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)persistentIDAtIndex:(unint64_t)a3;
- (void)_loadCurrentFullResults;
- (void)_mergeChangesWithFromNewPIDs:(const void *)a3 changedPIDs:(void *)a4;
- (void)_onQueueAddUpdateFinishedBlock:(id)a3;
- (void)_onQueueInvokeAndClearUpdateFinishedBlocksWithDidUpdateResult:(BOOL)a3;
- (void)enumeratePersistentIDsUsingBlock:(id)a3;
- (void)enumerateSectionsUsingBlock:(id)a3;
@end

@implementation ML3QueryResultSet

void __51__ML3QueryResultSet_updateToLibraryCurrentRevision__block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __51__ML3QueryResultSet_updateToLibraryCurrentRevision__block_invoke_4;
  v11 = &unk_278766080;
  v12 = *(a1 + 32);
  v2 = v12;
  v3 = v9;
  if (_executeTimeQueryOperation(NSString *,ML3QueryResultSet *,void({block_pointer})(void))::onceToken != -1)
  {
    dispatch_once(&_executeTimeQueryOperation(NSString *,ML3QueryResultSet *,void({block_pointer})(void))::onceToken, &__block_literal_global_17659);
  }

  Current = 0.0;
  if (_executeTimeQueryOperation(NSString *,ML3QueryResultSet *,void({block_pointer})(void))::timeQueryOps == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v10(v3);
  if (_executeTimeQueryOperation(NSString *,ML3QueryResultSet *,void({block_pointer})(void))::timeQueryOps == 1)
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CFAbsoluteTimeGetCurrent();
      v7 = [v2 query];
      *buf = 138543874;
      v14 = @"updated results";
      v15 = 2048;
      v16 = v6 - Current;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ in %.2f seconds for query with criteria: %{public}@", buf, 0x20u);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ML3QueryResultSet_updateToLibraryCurrentRevision__block_invoke_5;
  v8[3] = &unk_278766080;
  dispatch_async(*(*(a1 + 32) + 56), v8);
}

uint64_t __51__ML3QueryResultSet_updateToLibraryCurrentRevision__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) _updateToLibraryCurrentRevision];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_updateToLibraryCurrentRevision
{
  v3 = self->_query;
  v4 = [(ML3Query *)v3 library];
  if ([(ML3Query *)v3 filtersOnDynamicProperties])
  {
    v5 = [v4 currentRevision];
  }

  else
  {
    v5 = [v4 currentContentRevision];
  }

  if (!self->_backingStore)
  {
    goto LABEL_14;
  }

  revision = self->_revision;
  if (revision == v5)
  {
    LOBYTE(v7) = 0;
    goto LABEL_15;
  }

  if (!self->_supportsIncrementalUpdate || !revision || revision > v5 || revision + 100 < v5)
  {
LABEL_14:
    [(ML3QueryResultSet *)self _loadCurrentFullResults];
    ++self->_localRevision;
    LOBYTE(v7) = 1;
    goto LABEL_15;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ML3QueryResultSet__updateToLibraryCurrentRevision__block_invoke;
  v9[3] = &unk_278763CB0;
  v10 = v3;
  v11 = v4;
  v12 = self;
  v13 = &v14;
  [v11 performReadOnlyDatabaseTransactionWithBlock:v9];
  v7 = *(v15 + 24);
  if (v7 == 1)
  {
    ++self->_localRevision;
  }

  _Block_object_dispose(&v14, 8);
LABEL_15:

  return v7;
}

- (BOOL)updateToLibraryCurrentRevision
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ML3QueryResultSet_updateToLibraryCurrentRevision__block_invoke;
  block[3] = &unk_278765F28;
  v8 = v3;
  v9 = &v10;
  block[4] = self;
  v5 = v3;
  dispatch_sync(queue, block);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(queue) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return queue;
}

void __51__ML3QueryResultSet_updateToLibraryCurrentRevision__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__ML3QueryResultSet_updateToLibraryCurrentRevision__block_invoke_2;
  v9[3] = &unk_278763C40;
  v7 = *(a1 + 40);
  v3 = v7;
  v10 = v7;
  [v2 _onQueueAddUpdateFinishedBlock:v9];
  if ([*(*(a1 + 32) + 48) count] <= 1)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__ML3QueryResultSet_updateToLibraryCurrentRevision__block_invoke_3;
    block[3] = &unk_278766080;
    v6 = *(a1 + 48);
    block[4] = v4;
    block[5] = v6;
    dispatch_barrier_async(v5, block);
  }
}

- (void)_loadCurrentFullResults
{
  v3 = self->_query;
  v4 = [(ML3Query *)v3 library];
  self->_revision = [v4 currentRevision];
  v5 = objc_alloc_init(ML3QueryResultSet_MutableBackingStore);
  v6 = [(ML3Query *)v3 sectionProperty];
  if (v6)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__ML3QueryResultSet__loadCurrentFullResults__block_invoke;
    v11[3] = &unk_278763BD0;
    v7 = &v12;
    v12 = v5;
    [(ML3Query *)v3 enumeratePersistentIDsAndSectionsWithProperty:v6 usingBlock:v11];
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__ML3QueryResultSet__loadCurrentFullResults__block_invoke_2;
    v9[3] = &unk_278765BD8;
    v7 = &v10;
    v10 = v5;
    [(ML3Query *)v3 enumeratePersistentIDsUsingBlock:v9];
  }

  backingStore = self->_backingStore;
  self->_backingStore = &v5->super;
}

void *__69__ML3QueryResultSet_BackingStore_reverseEnumerateSectionsUsingBlock___block_invoke(void *result)
{
  if (*(*(result[5] + 8) + 56))
  {
    v1 = result;
    if (*(*(result[6] + 8) + 24) != 255)
    {
      v3 = 0;
      result = (*(result[4] + 16))();
      if ((v3 & 1) == 0)
      {
        v2 = *(v1[5] + 8);
        *(v2 + 48) += *(v2 + 56);
        *(v2 + 56) = 0;
      }
    }
  }

  return result;
}

void *__62__ML3QueryResultSet_BackingStore_enumerateSectionsUsingBlock___block_invoke(void *result)
{
  if (*(*(result[5] + 8) + 56))
  {
    v1 = result;
    if (*(*(result[6] + 8) + 24) != 255)
    {
      v3 = 0;
      result = (*(result[4] + 16))();
      if ((v3 & 1) == 0)
      {
        v2 = *(v1[5] + 8);
        *(v2 + 48) += *(v2 + 56);
        *(v2 + 56) = 0;
      }
    }
  }

  return result;
}

- (void)enumerateSectionsUsingBlock:(id)a3
{
  v4 = a3;
  fixedPriorityQueue = self->_fixedPriorityQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ML3QueryResultSet_enumerateSectionsUsingBlock___block_invoke;
  v7[3] = &unk_278764A48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(fixedPriorityQueue, v7);
}

- (void)enumeratePersistentIDsUsingBlock:(id)a3
{
  v4 = a3;
  fixedPriorityQueue = self->_fixedPriorityQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ML3QueryResultSet_enumeratePersistentIDsUsingBlock___block_invoke;
  v7[3] = &unk_278764A48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(fixedPriorityQueue, v7);
}

- (int64_t)persistentIDAtIndex:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  fixedPriorityQueue = self->_fixedPriorityQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ML3QueryResultSet_persistentIDAtIndex___block_invoke;
  block[3] = &unk_2787656D0;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(fixedPriorityQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __41__ML3QueryResultSet_persistentIDAtIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) persistentIDAtIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t __52__ML3QueryResultSet__updateToLibraryCurrentRevision__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) predicate];
  v3 = [*(a1 + 32) entityClass];
  v4 = [*(a1 + 32) orderingTerms];
  v5 = [v3 revisionTrackingCode];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 48) + 24);
  if ([*(a1 + 32) filtersOnDynamicProperties])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__ML3QueryResultSet__updateToLibraryCurrentRevision__block_invoke_2;
  v15[3] = &unk_278763C88;
  v20 = v3;
  v16 = *(a1 + 40);
  v9 = v2;
  v17 = v9;
  v10 = v4;
  v11 = *(a1 + 48);
  v18 = v10;
  v19 = v11;
  v21 = &v25;
  v22 = v23;
  [v6 getChangedPersistentIDsAfterRevision:v7 revisionTrackingCode:v5 maximumRevisionType:v8 usingBlock:v15];
  v12 = [*(*(a1 + 48) + 8) containsPersistentIDs:v23];
  if (v25 == v26)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  *(*(*(a1 + 56) + 8) + 24) = v13;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 48) _mergeChangesWithFromNewPIDs:&v25 changedPIDs:v23];
  }

  *(*(a1 + 48) + 24) = [*(a1 + 40) currentRevision];

  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v23);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return 1;
}

void *__52__ML3QueryResultSet__updateToLibraryCurrentRevision__block_invoke_2(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [*(*(a1 + 56) + 16) options];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__ML3QueryResultSet__updateToLibraryCurrentRevision__block_invoke_3;
  v14[3] = &__block_descriptor_40_e12_v24__0q8_B16l;
  v14[4] = *(a1 + 72);
  result = [v6 enumeratePersistentIDsInLibrary:v7 matchingPredicate:v8 orderingTerms:v9 persistentIDs:a2 count:a3 options:v10 usingBlock:v14];
  if (a3)
  {
    v12 = a2;
    do
    {
      v13 = *v12++;
      result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(*(a1 + 80), v13);
      --a3;
    }

    while (a3);
  }

  return result;
}

- (void)_onQueueInvokeAndClearUpdateFinishedBlocksWithDidUpdateResult:(BOOL)a3
{
  v5 = [(NSMutableArray *)self->_updateToLibraryCurrentRevisionCompletionBlocks copy];
  [(NSMutableArray *)self->_updateToLibraryCurrentRevisionCompletionBlocks removeAllObjects];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__ML3QueryResultSet__onQueueInvokeAndClearUpdateFinishedBlocksWithDidUpdateResult___block_invoke;
  v6[3] = &__block_descriptor_33_e15_v32__0_8Q16_B24l;
  v7 = a3;
  [v5 enumerateObjectsUsingBlock:v6];
}

void __83__ML3QueryResultSet__onQueueInvokeAndClearUpdateFinishedBlocksWithDidUpdateResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x2318CDB10](a2);
  v3[2](v3, *(a1 + 32));
}

- (void)_onQueueAddUpdateFinishedBlock:(id)a3
{
  v5 = a3;
  v11 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"ML3QueryResultSet.mm" lineNumber:433 description:@"invalid parameter.  completion block must be specified."];

    v5 = 0;
  }

  updateToLibraryCurrentRevisionCompletionBlocks = self->_updateToLibraryCurrentRevisionCompletionBlocks;
  if (!updateToLibraryCurrentRevisionCompletionBlocks)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = self->_updateToLibraryCurrentRevisionCompletionBlocks;
    self->_updateToLibraryCurrentRevisionCompletionBlocks = v7;

    updateToLibraryCurrentRevisionCompletionBlocks = self->_updateToLibraryCurrentRevisionCompletionBlocks;
    v5 = v11;
  }

  v9 = [v5 copy];
  [(NSMutableArray *)updateToLibraryCurrentRevisionCompletionBlocks addObject:v9];
}

- (void)_mergeChangesWithFromNewPIDs:(const void *)a3 changedPIDs:(void *)a4
{
  v78[1] = *MEMORY[0x277D85DE8];
  v46 = self->_query;
  v40 = [(ML3Query *)v46 library];
  v52 = [v40 checkoutReaderConnection];
  v7 = [(ML3Query *)v46 entityClass];
  v45 = [(ML3Query *)v46 orderingTerms];
  if (![v45 count])
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"ML3QueryResultSet.mm" lineNumber:298 description:{@"Updateable query has no ordering! query: %@", v46}];
  }

  v8 = [(ML3Query *)v46 sectionProperty];
  v53 = v8;
  if (v8)
  {
    v9 = [(objc_class *)v7 joinClausesForProperty:v8];
    if ([v9 count])
    {
      v10 = [v9 componentsJoinedByString:@" "];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(objc_class *)v7 databaseTable];
    v12 = &stru_28408B690;
    if (v10)
    {
      v12 = v10;
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM %@ %@ WHERE %@.ROWID = ?", v53, v11, v12, v11];
  }

  else
  {
    v51 = 0;
  }

  v42 = [(objc_class *)v7 disambiguatedSQLForProperty:@"ROWID"];
  v41 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v42, 0}];
  v14 = *a3;
  v13 = *(a3 + 1);
  location = &self->_backingStore;
  v15 = [(ML3QueryResultSet_BackingStore *)self->_backingStore backingStoreByRemovingPersistentIDs:a4];
  v16 = [v15 count];
  v17 = objc_alloc_init(ML3QueryResultSet_MutableBackingStore);
  v47 = [(ML3QueryResultSet *)self entityLimit];
  v43 = [(ML3Query *)v46 selectSQLWithColumns:v41 groupBy:0 orderingTerms:v45 directionality:0 usingLowerBound:1];
  v18 = [(ML3Query *)v46 predicateIncludingSystemwidePredicates];
  v44 = [v18 databaseStatementParameters];

  if (v13 == v14)
  {
    v35 = 0;
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v54 = (v13 - v14) >> 3;
    do
    {
      v49 = [(ML3Query *)v46 lowerBoundParametersForOrderingTerms:v45 lowerBoundPersistentID:*(*a3 + 8 * v19)];
      v22 = [v44 arrayByAddingObjectsFromArray:v49];
      v50 = [v52 executeQuery:v43 withParameters:v22];

      v71 = 0;
      v72 = &v71;
      v73 = 0x2020000000;
      v74 = 0;
      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v70 = 0;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = v19 + 1;
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __62__ML3QueryResultSet__mergeChangesWithFromNewPIDs_changedPIDs___block_invoke;
      v56[3] = &unk_278763BF8;
      v58 = &v63;
      v61 = v54;
      v62 = a3;
      v57 = v15;
      v59 = &v67;
      v60 = &v71;
      [v50 enumerateRowsWithBlock:v56];
      if (v72[3])
      {
        if (v20 < v16)
        {
          while (*(v15[1] + 8 * v20) != v68[3])
          {
            v23 = *(v15[4] + v20);
            v76 = *(v15[1] + 8 * v20);
            v75 = v23;
            std::vector<unsigned long long>::push_back[abi:ne200100](&v17->super._persistentIDs, &v76);
            std::vector<unsigned char>::push_back[abi:ne200100](&v17->super._sections, &v75);
            if (v16 == ++v20)
            {
              v20 = v16;
              goto LABEL_33;
            }
          }

          while (v19 < v64[3])
          {
            v24 = *(*a3 + 8 * v19);
            if (v53)
            {
              v25 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*a3 + 8 * v19)];
              v78[0] = v25;
              v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
              v27 = [v52 executeQuery:v51 withParameters:v26];
              v28 = [v27 int64ValueForFirstRowAndColumn];
            }

            else
            {
              v28 = 0;
            }

            v76 = v24;
            v75 = v28;
            std::vector<unsigned long long>::push_back[abi:ne200100](&v17->super._persistentIDs, &v76);
            std::vector<unsigned char>::push_back[abi:ne200100](&v17->super._sections, &v75);
            ++v19;
          }

          --v19;
        }
      }

      else
      {
        if (v20 < v16)
        {
          do
          {
            v29 = *(v15[4] + v20);
            v76 = *(v15[1] + 8 * v20);
            v75 = v29;
            std::vector<unsigned long long>::push_back[abi:ne200100](&v17->super._persistentIDs, &v76);
            std::vector<unsigned char>::push_back[abi:ne200100](&v17->super._sections, &v75);
            ++v20;
          }

          while (v16 != v20);
          v20 = v16;
        }

        if (v19 < v54)
        {
          do
          {
            v30 = *(*a3 + 8 * v19);
            if (v53)
            {
              v31 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*a3 + 8 * v19)];
              v77 = v31;
              v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
              v33 = [v52 executeQuery:v51 withParameters:v32];
              v34 = [v33 int64ValueForFirstRowAndColumn];
            }

            else
            {
              v34 = 0;
            }

            v76 = v30;
            v75 = v34;
            std::vector<unsigned long long>::push_back[abi:ne200100](&v17->super._persistentIDs, &v76);
            std::vector<unsigned char>::push_back[abi:ne200100](&v17->super._sections, &v75);
            ++v19;
          }

          while (v54 != v19);
          v19 = v54;
        }
      }

LABEL_33:

      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(&v67, 8);
      _Block_object_dispose(&v71, 8);

      ++v19;
      v35 = v50;
      v21 = v50;
    }

    while (v19 < v54);
  }

  v36 = v35;
  if (v20 < v16)
  {
    do
    {
      v37 = *(v15[4] + v20);
      v71 = *(v15[1] + 8 * v20);
      LOBYTE(v67) = v37;
      std::vector<unsigned long long>::push_back[abi:ne200100](&v17->super._persistentIDs, &v71);
      std::vector<unsigned char>::push_back[abi:ne200100](&v17->super._sections, &v67);
      ++v20;
    }

    while (v16 != v20);
  }

  objc_storeStrong(location, v17);
  v38 = location;
  while ([*v38 count] > v47)
  {
    v38 = location;
    *(*location + 2) -= 8;
  }

  [v40 checkInDatabaseConnection:v52];
}

void __62__ML3QueryResultSet__mergeChangesWithFromNewPIDs_changedPIDs___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = [v14 int64ForColumnIndex:0];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 24);
  if (v10 >= *(a1 + 64))
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    while (v12 != v13)
    {
      if (*v12 == v8)
      {
        goto LABEL_8;
      }

      ++v12;
    }
  }

  else
  {
    if (*(**(a1 + 72) + 8 * v10) == v8)
    {
      *(v9 + 24) = v10 + 1;
      goto LABEL_10;
    }

LABEL_8:
    *(*(*(a1 + 48) + 8) + 24) = v8;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  *a4 = 1;
LABEL_10:
}

void __44__ML3QueryResultSet__loadCurrentFullResults__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = a3;
  std::vector<unsigned long long>::push_back[abi:ne200100](v3 + 8, &v5);
  std::vector<unsigned char>::push_back[abi:ne200100](v3 + 32, &v4);
}

void __44__ML3QueryResultSet__loadCurrentFullResults__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = 0;
  std::vector<unsigned long long>::push_back[abi:ne200100](v2 + 8, &v4);
  std::vector<unsigned char>::push_back[abi:ne200100](v2 + 32, &v3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 2, self->_query);
  v4[3] = self->_revision;
  objc_storeStrong(v4 + 1, self->_backingStore);
  *(v4 + 40) = self->_supportsIncrementalUpdate;
  v5 = dispatch_queue_create("com.apple.ML3QueryResultSet.coalescing", 0);
  v6 = v4[7];
  v4[7] = v5;

  objc_storeStrong(v4 + 8, self->_fixedPriorityQueue);
  return v4;
}

- (ML3QueryResultSet)initWithQuery:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(ML3QueryResultSet *)self _initWithQuery:v4 supportsIncrementalUpdate:0];
LABEL_7:
    self = v7;
    p_super = self;
    goto LABEL_10;
  }

  v8 = objc_opt_self();
  v9 = objc_opt_isKindOfClass();

  if ((v9 & 1) == 0)
  {
    v7 = [(ML3QueryResultSet *)self _initWithQuery:v4 supportsIncrementalUpdate:1];
    goto LABEL_7;
  }

  v10 = v4;
  v11 = [v10 container];
  v12 = [v11 valueForProperty:@"smart_is_dynamic"];
  v13 = [v12 intValue];

  if (v13)
  {
    v14 = [[ML3ContainerQueryResultSet alloc] initWithQuery:v10];
  }

  else
  {
    v14 = [(ML3QueryResultSet *)self _initWithQuery:v10 supportsIncrementalUpdate:0];
    self = &v14->super;
  }

  p_super = &v14->super;

LABEL_10:
  return p_super;
}

- (id)_initWithQuery:(id)a3 supportsIncrementalUpdate:(BOOL)a4
{
  v4 = a4;
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v34.receiver = self;
  v34.super_class = ML3QueryResultSet;
  v7 = [(ML3QueryResultSet *)&v34 init];
  v8 = v7;
  if (v7)
  {
    v9 = [v6 orderingTerms];
    if ([(ML3OrderingTerm *)v9 count])
    {

      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (![v6 usingSections])
      {
        v15 = 0;
        goto LABEL_14;
      }

      v10 = [v6 sectionProperty];
      v11 = v10 != 0;

      if (!v11 || !v4)
      {
LABEL_8:
        v15 = 0;
LABEL_15:
        objc_storeStrong(&v7->_query, v6);
        v7->_supportsIncrementalUpdate = v15;
        v27 = dispatch_queue_create("com.apple.ML3QueryResultSet.coalescing", 0);
        queue = v7->_queue;
        v7->_queue = v27;

        v29 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INTERACTIVE, 0);
        v30 = dispatch_queue_create("com.apple.ML3QueryResultSet", v29);
        fixedPriorityQueue = v8->_fixedPriorityQueue;
        v8->_fixedPriorityQueue = v30;

        goto LABEL_16;
      }
    }

    v12 = [v6 predicate];
    v13 = [v12 spotlightPredicate];
    v14 = v13 == 0;

    if (!v14)
    {
      goto LABEL_8;
    }

    v9 = [v6 orderingTerms];
    if ([(ML3OrderingTerm *)v9 count])
    {
      v15 = 1;
    }

    else
    {
      v16 = [v6 sectionProperty];
      v17 = v16 == 0;

      if (v17)
      {
        v15 = 1;
        goto LABEL_15;
      }

      v18 = [ML3OrderingTerm alloc];
      v19 = [v6 sectionProperty];
      v9 = [(ML3OrderingTerm *)v18 initWithProperty:v19];

      v20 = [ML3Query alloc];
      v33 = [v6 library];
      v21 = [v6 entityClass];
      v22 = [v6 predicate];
      v35[0] = v9;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
      v24 = [v6 usingSections];
      v25 = [v6 nonDirectAggregateQuery];
      v26 = -[ML3Query initWithLibrary:entityClass:predicate:orderingTerms:usingSections:nonDirectAggregateQuery:propertyToCount:options:](v20, "initWithLibrary:entityClass:predicate:orderingTerms:usingSections:nonDirectAggregateQuery:propertyToCount:options:", v33, v21, v22, v23, v24, v25, 0, [v6 options]);

      v15 = 1;
      v6 = v26;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_16:

  return v8;
}

@end