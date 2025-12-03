@interface WDMedicalRecordDaySummary
- (WDMedicalRecordDaySummary)initWithProfile:(id)profile style:(int64_t)style delegate:(id)delegate;
- (WDMedicalRecordDaySummaryDelegate)delegate;
- (id)_alphaSortedCategories:(id)categories;
- (id)displayItemAtIndex:(int64_t)index;
- (int64_t)numberOfDisplayItems;
- (void)addMedicalRecord:(id)record;
- (void)recomputeIfNeeded;
- (void)summaryDidFinishRecompute:(id)recompute;
@end

@implementation WDMedicalRecordDaySummary

- (WDMedicalRecordDaySummary)initWithProfile:(id)profile style:(int64_t)style delegate:(id)delegate
{
  profileCopy = profile;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = WDMedicalRecordDaySummary;
  v11 = [(WDMedicalRecordDaySummary *)&v21 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    categoriesBySourceAlphaOrdered = v11->_categoriesBySourceAlphaOrdered;
    v11->_categoriesBySourceAlphaOrdered = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    categoriesBySourceByType = v11->_categoriesBySourceByType;
    v11->_categoriesBySourceByType = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    inProgressCatogorySummaries = v11->_inProgressCatogorySummaries;
    v11->_inProgressCatogorySummaries = v16;

    objc_storeStrong(&v11->_profile, profile);
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v18 = HKCreateSerialDispatchQueue();
    resourceQueue = v11->_resourceQueue;
    v11->_resourceQueue = v18;

    v11->_style = style;
  }

  return v11;
}

- (void)addMedicalRecord:(id)record
{
  recordCopy = record;
  resourceQueue = [(WDMedicalRecordDaySummary *)self resourceQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__WDMedicalRecordDaySummary_addMedicalRecord___block_invoke;
  v7[3] = &unk_1E83DD1A8;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_async(resourceQueue, v7);
}

void __46__WDMedicalRecordDaySummary_addMedicalRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) categoriesBySourceByType];
  v3 = [*(a1 + 40) sourceRevision];
  v4 = [v3 source];
  v26 = [v2 objectForKeyedSubscript:v4];

  if (!v26)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [*(a1 + 32) categoriesBySourceByType];
    v6 = [*(a1 + 40) sourceRevision];
    v7 = [v6 source];
    [v5 setObject:v26 forKeyedSubscript:v7];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "recordCategoryType")}];
  v9 = [v26 objectForKeyedSubscript:v8];
  if (!v9)
  {
    v10 = [*(a1 + 32) style];
    if (v10 == 2)
    {
      v20 = [WDMedicalRecordConceptSummary alloc];
      v12 = [*(a1 + 32) profile];
      v19 = [(WDMedicalRecordConceptSummary *)v20 initWithProfile:v12 delegate:*(a1 + 32)];
    }

    else
    {
      if (v10 == 1)
      {
        v18 = [WDMedicalRecordCategorySummary alloc];
        v12 = [*(a1 + 32) profile];
        v13 = [*(a1 + 40) recordCategoryType];
        v14 = *(a1 + 32);
        v15 = v18;
        v16 = v12;
        v17 = 0;
      }

      else
      {
        if (v10)
        {
          v9 = 0;
          goto LABEL_13;
        }

        v11 = [WDMedicalRecordCategorySummary alloc];
        v12 = [*(a1 + 32) profile];
        v13 = [*(a1 + 40) recordCategoryType];
        v14 = *(a1 + 32);
        v15 = v11;
        v16 = v12;
        v17 = 1;
      }

      v19 = [(WDMedicalRecordCategorySummary *)v15 initWithProfile:v16 categoryType:v13 showCategoryTitle:v17 delegate:v14];
    }

    v9 = v19;

LABEL_13:
    [v26 setObject:v9 forKeyedSubscript:v8];
    v21 = [*(a1 + 32) _alphaSortedCategories:v26];
    v22 = [*(a1 + 32) categoriesBySourceAlphaOrdered];
    v23 = [*(a1 + 40) sourceRevision];
    v24 = [v23 source];
    [v22 setObject:v21 forKeyedSubscript:v24];

    v25 = [*(a1 + 32) inProgressCatogorySummaries];
    [v25 addObject:v9];
  }

  [v9 addMedicalRecord:*(a1 + 40)];
}

- (void)recomputeIfNeeded
{
  resourceQueue = [(WDMedicalRecordDaySummary *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__WDMedicalRecordDaySummary_recomputeIfNeeded__block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(resourceQueue, block);
}

void __46__WDMedicalRecordDaySummary_recomputeIfNeeded__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) categoriesBySourceByType];
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [*(a1 + 32) categoriesBySourceAlphaOrdered];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v15 + 1) + 8 * v14++) recomputeIfNeeded];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }
}

- (int64_t)numberOfDisplayItems
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  resourceQueue = [(WDMedicalRecordDaySummary *)self resourceQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__WDMedicalRecordDaySummary_numberOfDisplayItems__block_invoke;
  v6[3] = &unk_1E83DD1D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(resourceQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __49__WDMedicalRecordDaySummary_numberOfDisplayItems__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1 + 32) categoriesBySourceByType];
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [*(a1 + 32) categoriesBySourceAlphaOrdered];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v16 + 1) + 8 * v14) displayItems];
              *(*(*(a1 + 40) + 8) + 24) += [v15 count];

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }
}

- (id)displayItemAtIndex:(int64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  resourceQueue = [(WDMedicalRecordDaySummary *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WDMedicalRecordDaySummary_displayItemAtIndex___block_invoke;
  block[3] = &unk_1E83DD220;
  block[5] = &v9;
  block[6] = index;
  block[4] = self;
  dispatch_sync(resourceQueue, block);

  if (!index && [v10[5] displayItemType] == 2)
  {
    [v10[5] setExtraTopPadding:0];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __48__WDMedicalRecordDaySummary_displayItemAtIndex___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) categoriesBySourceByType];
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = [*(a1 + 32) categoriesBySourceAlphaOrdered];
      v9 = [v8 objectForKeyedSubscript:v7];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __48__WDMedicalRecordDaySummary_displayItemAtIndex___block_invoke_2;
      v11[3] = &unk_1E83DD1F8;
      v10 = *(a1 + 48);
      v11[5] = *(a1 + 40);
      v11[6] = v10;
      v11[4] = v16;
      [v9 enumerateObjectsUsingBlock:v11];

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(v16, 8);
}

void __48__WDMedicalRecordDaySummary_displayItemAtIndex___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a2 displayItems];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1[4] + 8);
        v12 = *(v11 + 24);
        if (v12 == a1[6])
        {
          objc_storeStrong((*(a1[5] + 8) + 40), *(*(&v13 + 1) + 8 * i));
          *a4 = 1;
          goto LABEL_11;
        }

        *(v11 + 24) = v12 + 1;
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)summaryDidFinishRecompute:(id)recompute
{
  recomputeCopy = recompute;
  resourceQueue = [(WDMedicalRecordDaySummary *)self resourceQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__WDMedicalRecordDaySummary_summaryDidFinishRecompute___block_invoke;
  v7[3] = &unk_1E83DD1A8;
  v7[4] = self;
  v8 = recomputeCopy;
  v6 = recomputeCopy;
  dispatch_async(resourceQueue, v7);
}

void __55__WDMedicalRecordDaySummary_summaryDidFinishRecompute___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inProgressCatogorySummaries];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) inProgressCatogorySummaries];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 daySummaryHasDisplayItemUpdate:*(a1 + 32)];
  }
}

uint64_t __59__WDMedicalRecordDaySummary__alphaSortedKeysForCategories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 summarySortString];
  v6 = [v4 summarySortString];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (id)_alphaSortedCategories:(id)categories
{
  v18 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(WDMedicalRecordDaySummary *)self _alphaSortedKeysForCategories:categoriesCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [categoriesCopy objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (WDMedicalRecordDaySummaryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end