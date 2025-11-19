@interface ML3ContainerQueryResultSet
- (BOOL)_updateToLibraryCurrentRevision;
- (ML3ContainerQueryResultSet)initWithQuery:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sortedBackingStoreForDisplayOrdering;
- (int64_t)persistentIDAtIndex:(unint64_t)a3;
- (void)_loadCurrentFullResults;
- (void)enumeratePersistentIDsUsingBlock:(id)a3;
- (void)enumerateSectionsUsingBlock:(id)a3;
@end

@implementation ML3ContainerQueryResultSet

- (BOOL)_updateToLibraryCurrentRevision
{
  v3 = self->super._query;
  v4 = [(ML3Query *)v3 library];
  if ([(ML3Query *)v3 filtersOnDynamicProperties])
  {
    v5 = [v4 currentRevision];
  }

  else
  {
    v5 = [v4 currentContentRevision];
  }

  revision = self->super._revision;
  if (self->super._backingStore && revision == v5)
  {
    v7 = 0;
  }

  else if (revision && revision <= v5 && revision + 100 >= v5 && ![v4 persistentID:self->_containerPID changedAfterRevision:revision revisionTrackingCode:{+[ML3Container revisionTrackingCode](ML3Container, "revisionTrackingCode")}])
  {
    v9.receiver = self;
    v9.super_class = ML3ContainerQueryResultSet;
    v7 = [(ML3QueryResultSet *)&v9 _updateToLibraryCurrentRevision];
  }

  else
  {
    [(ML3ContainerQueryResultSet *)self _loadCurrentFullResults];
    ++self->super._localRevision;
    v7 = 1;
  }

  return v7;
}

- (void)enumerateSectionsUsingBlock:(id)a3
{
  v4 = a3;
  fixedPriorityQueue = self->super._fixedPriorityQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ML3ContainerQueryResultSet_enumerateSectionsUsingBlock___block_invoke;
  v7[3] = &unk_278764A48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(fixedPriorityQueue, v7);
}

void __58__ML3ContainerQueryResultSet_enumerateSectionsUsingBlock___block_invoke(uint64_t a1)
{
  v13 = *(*(a1 + 32) + 16);
  v2 = [v13 container];
  v3 = [v13 container];
  v4 = [v3 valueForProperty:@"is_reversed"];
  v5 = [v4 BOOLValue];

  if ([v13 requiresSmartLimiting] && (objc_msgSend(v2, "displayOrderingTerms"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "limitOrderingTerms"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToArray:", v7), v7, v6, v8))
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 8);
    if (v5)
    {
      [v10 reverseEnumerateSectionsUsingBlock:v9];
      goto LABEL_9;
    }
  }

  else
  {
    v11 = *(a1 + 32);
    if (*(v11 + 72) == 1)
    {
      v12 = [v11 sortedBackingStoreForDisplayOrdering];
      [v12 enumerateSectionsUsingBlock:*(a1 + 40)];

      goto LABEL_9;
    }

    v10 = *(v11 + 8);
    v9 = *(a1 + 40);
  }

  [v10 enumerateSectionsUsingBlock:v9];
LABEL_9:
}

- (void)enumeratePersistentIDsUsingBlock:(id)a3
{
  v4 = a3;
  fixedPriorityQueue = self->super._fixedPriorityQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ML3ContainerQueryResultSet_enumeratePersistentIDsUsingBlock___block_invoke;
  v7[3] = &unk_278764A48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(fixedPriorityQueue, v7);
}

void __63__ML3ContainerQueryResultSet_enumeratePersistentIDsUsingBlock___block_invoke(uint64_t a1)
{
  v11 = *(*(a1 + 32) + 16);
  v2 = [v11 container];
  if ([v11 requiresSmartLimiting] && (objc_msgSend(v2, "displayOrderingTerms"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "limitOrderingTerms"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isEqualToArray:", v4), v4, v3, v5))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 8);
    if (*(v7 + 73) == 1)
    {
      [v8 reverseEnumeratePersistentIDsUsingBlock:v6];
      goto LABEL_9;
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (*(v9 + 72) == 1)
    {
      v10 = [v9 sortedBackingStoreForDisplayOrdering];
      [v10 enumeratePersistentIDsUsingBlock:*(a1 + 40)];

      goto LABEL_9;
    }

    v8 = *(v9 + 8);
    v6 = *(a1 + 40);
  }

  [v8 enumeratePersistentIDsUsingBlock:v6];
LABEL_9:
}

- (int64_t)persistentIDAtIndex:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  fixedPriorityQueue = self->super._fixedPriorityQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ML3ContainerQueryResultSet_persistentIDAtIndex___block_invoke;
  block[3] = &unk_2787656D0;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(fixedPriorityQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __50__ML3ContainerQueryResultSet_persistentIDAtIndex___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 72) == 1)
  {
    v5 = [v2 sortedBackingStoreForDisplayOrdering];
    *(*(a1[5] + 8) + 24) = [v5 persistentIDAtIndex:a1[6]];
  }

  else
  {
    if (*(v2 + 73) == 1)
    {
      v3 = [*(v2 + 8) persistentIDAtIndex:{objc_msgSend(*(v2 + 8), "count") + ~a1[6]}];
    }

    else
    {
      v4 = a1[6];
      v6.receiver = v2;
      v6.super_class = ML3ContainerQueryResultSet;
      v3 = objc_msgSendSuper2(&v6, sel_persistentIDAtIndex_, v4);
    }

    *(*(a1[5] + 8) + 24) = v3;
  }
}

- (id)sortedBackingStoreForDisplayOrdering
{
  v36 = *MEMORY[0x277D85DE8];
  p_backingStore = &self->super._backingStore;
  if ([(ML3QueryResultSet_BackingStore *)self->super._backingStore count])
  {
    p_sortedBackingStore = &self->_sortedBackingStore;
    sortedBackingStore = self->_sortedBackingStore;
    if (sortedBackingStore)
    {
      goto LABEL_18;
    }

    v6 = [(ML3Query *)self->super._query container];
    v7 = [v6 displayOrderingTerms];

    v8 = objc_alloc_init(ML3QueryResultSet_MutableBackingStore);
    v9 = [MEMORY[0x277CBEB58] setWithCapacity:{-[ML3QueryResultSet_BackingStore count](*p_backingStore, "count")}];
    v10 = *p_backingStore;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __66__ML3ContainerQueryResultSet_sortedBackingStoreForDisplayOrdering__block_invoke;
    v31[3] = &unk_278765BD8;
    v11 = v9;
    v32 = v11;
    [(ML3QueryResultSet_BackingStore *)v10 enumeratePersistentIDsUsingBlock:v31];
    v12 = [(ML3Query *)self->super._query library];
    v13 = [ML3ContainmentPredicate predicateWithProperty:@"ROWID" values:v11];
    v14 = [(ML3Entity *)ML3Track queryWithLibrary:v12 predicate:v13 orderingTerms:v7 usingSections:[(ML3Query *)self->super._query usingSections] options:[(ML3Query *)self->super._query options]];

    v15 = [(ML3Query *)self->super._query sectionProperty];
    if (v15)
    {
      v16 = v30;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__ML3ContainerQueryResultSet_sortedBackingStoreForDisplayOrdering__block_invoke_2;
      v30[3] = &unk_278763CD8;
      v30[4] = v8;
      v30[5] = v11;
      [v14 enumeratePersistentIDsAndSectionsWithProperty:v15 usingBlock:v30];
    }

    else
    {
      v16 = v29;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __66__ML3ContainerQueryResultSet_sortedBackingStoreForDisplayOrdering__block_invoke_3;
      v29[3] = &unk_278763D00;
      v29[4] = v8;
      v29[5] = v11;
      [v14 enumeratePersistentIDsUsingBlock:v29];
    }

    v17 = [(ML3QueryResultSet_BackingStore *)v8 count];
    if (v17 < [(ML3QueryResultSet_BackingStore *)*p_backingStore count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v18 = v11;
      v19 = [v18 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v19)
      {
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v34 = [*(*(&v25 + 1) + 8 * i) longLongValue];
            v33 = 0;
            std::vector<unsigned long long>::push_back[abi:ne200100](&v8->super._persistentIDs, &v34);
            std::vector<unsigned char>::push_back[abi:ne200100](&v8->super._sections, &v33);
          }

          v19 = [v18 countByEnumeratingWithState:&v25 objects:v35 count:16];
        }

        while (v19);
      }
    }

    v22 = *p_sortedBackingStore;
    *p_sortedBackingStore = &v8->super;
    v23 = v8;
  }

  else
  {
    p_sortedBackingStore = p_backingStore;
  }

  sortedBackingStore = *p_sortedBackingStore;
LABEL_18:

  return sortedBackingStore;
}

void __66__ML3ContainerQueryResultSet_sortedBackingStoreForDisplayOrdering__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:?];
}

void __66__ML3ContainerQueryResultSet_sortedBackingStoreForDisplayOrdering__block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 32);
  v9 = a2;
  v8 = a3;
  std::vector<unsigned long long>::push_back[abi:ne200100](v5 + 8, &v9);
  std::vector<unsigned char>::push_back[abi:ne200100](v5 + 32, &v8);
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v6 removeObject:?];
}

void __66__ML3ContainerQueryResultSet_sortedBackingStoreForDisplayOrdering__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v8 = a2;
  v7 = 0;
  std::vector<unsigned long long>::push_back[abi:ne200100](v4 + 8, &v8);
  std::vector<unsigned char>::push_back[abi:ne200100](v4 + 32, &v7);
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v5 removeObject:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = ML3ContainerQueryResultSet;
  v4 = [(ML3QueryResultSet *)&v6 copyWithZone:a3];
  *(v4 + 72) = self->_needsSorting;
  *(v4 + 73) = self->_needsReversing;
  objc_storeStrong(v4 + 10, self->_sortedBackingStore);
  *(v4 + 11) = self->_containerPID;
  *(v4 + 12) = self->_entityLimit;
  return v4;
}

- (void)_loadCurrentFullResults
{
  v3 = self->super._query;
  v4 = [(ML3Query *)v3 container];
  if (![(ML3Query *)v3 requiresSmartLimiting])
  {
    self->_needsSorting = 0;
LABEL_6:
    self->_needsReversing = 0;
    goto LABEL_7;
  }

  v5 = [v4 displayOrderingTerms];
  v6 = [v4 limitOrderingTerms];
  self->_needsSorting = [v5 isEqualToArray:v6] ^ 1;

  if (!self->_needsSorting || ![(ML3Query *)v3 requiresSmartLimiting])
  {
    goto LABEL_6;
  }

  v7 = [v4 valueForProperty:@"is_reversed"];
  self->_needsReversing = [v7 BOOLValue];

LABEL_7:
  sortedBackingStore = self->_sortedBackingStore;
  self->_sortedBackingStore = 0;

  v9.receiver = self;
  v9.super_class = ML3ContainerQueryResultSet;
  [(ML3QueryResultSet *)&v9 _loadCurrentFullResults];
}

- (ML3ContainerQueryResultSet)initWithQuery:(id)a3
{
  v4 = a3;
  v5 = [v4 container];
  v6 = [v5 valueForProperty:@"smart_is_limited"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v5 valueForProperty:@"smart_limit_kind"];
    v9 = [v8 intValue] == 2;
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = self;
  v13.super_class = ML3ContainerQueryResultSet;
  v10 = [(ML3QueryResultSet *)&v13 _initWithQuery:v4 supportsIncrementalUpdate:v9 | ((v7 & 1) == 0)];
  if (v10)
  {
    v10->_containerPID = [v5 persistentID];
    if (v9)
    {
      v11 = [v5 valueForProperty:@"smart_limit_value"];
      v10->_entityLimit = [v11 unsignedIntegerValue];
    }

    else
    {
      v10->_entityLimit = -1;
    }
  }

  return v10;
}

@end