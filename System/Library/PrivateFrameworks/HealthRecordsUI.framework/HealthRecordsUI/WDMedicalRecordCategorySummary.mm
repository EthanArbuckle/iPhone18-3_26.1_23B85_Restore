@interface WDMedicalRecordCategorySummary
- (NSArray)displayItems;
- (NSString)summarySortString;
- (WDMedicalRecordCategorySummary)initWithProfile:(id)profile categoryType:(int64_t)type showCategoryTitle:(BOOL)title delegate:(id)delegate;
- (WDMedicalRecordSummaryDelegate)delegate;
- (id)_appendixItemForCount:(int64_t)count;
- (id)_displayItemsForGenericRecord:(id)record previous:(id)previous next:(id)next signedClinicalDataRecord:(id)dataRecord;
- (int64_t)additionalDisplayItemCount;
- (int64_t)additionalRecordCount;
- (int64_t)categoryType;
- (void)_displayItemsForGenericRecord:(id)record previous:(id)previous next:(id)next completion:(id)completion;
- (void)_displayItemsForObservation:(id)observation previous:(id)previous next:(id)next completion:(id)completion;
- (void)_displayItemsForPanel:(id)panel completion:(id)completion;
- (void)_displayItemsForRecord:(id)record previous:(id)previous next:(id)next completion:(id)completion;
- (void)_displayItemsForUnknownRecord:(id)record completion:(id)completion;
- (void)_rqueue_determinStandaloneRecords;
- (void)_rqueue_recomputeIfNeeded;
- (void)_rqueue_setNeedsCompute;
- (void)addMedicalRecord:(id)record;
- (void)recomputeIfNeeded;
- (void)setNeedsRecompute;
- (void)showTruncatedRecords;
@end

@implementation WDMedicalRecordCategorySummary

- (WDMedicalRecordCategorySummary)initWithProfile:(id)profile categoryType:(int64_t)type showCategoryTitle:(BOOL)title delegate:(id)delegate
{
  profileCopy = profile;
  delegateCopy = delegate;
  v30.receiver = self;
  v30.super_class = WDMedicalRecordCategorySummary;
  v13 = [(WDMedicalRecordCategorySummary *)&v30 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_profile, profile);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v14->_categoryType = type;
    v15 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    allRecords = v14->_allRecords;
    v14->_allRecords = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    panels = v14->_panels;
    v14->_panels = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    panelsToRecords = v14->_panelsToRecords;
    v14->_panelsToRecords = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allDisplayItems = v14->_allDisplayItems;
    v14->_allDisplayItems = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    visibleDisplayItems = v14->_visibleDisplayItems;
    v14->_visibleDisplayItems = v23;

    v14->_truncationDisplayItemOffset = 0;
    v14->_truncatedMedicalRecordCount = 0;
    v14->_showCategoryTitle = title;
    *&v14->_displayingTruncatedRecords = 0;
    v25 = HKCreateSerialDispatchQueue();
    summaryQueue = v14->_summaryQueue;
    v14->_summaryQueue = v25;

    v27 = HKCreateSerialDispatchQueue();
    resourceQueue = v14->_resourceQueue;
    v14->_resourceQueue = v27;
  }

  return v14;
}

- (void)addMedicalRecord:(id)record
{
  recordCopy = record;
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WDMedicalRecordCategorySummary_addMedicalRecord___block_invoke;
  v7[3] = &unk_1E83DD1A8;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_async(resourceQueue, v7);
}

uint64_t __51__WDMedicalRecordCategorySummary_addMedicalRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allRecords];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 40) sampleType];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*MEMORY[0x1E696B788]];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = [v6 panels];
    [v8 addObject:v7];
  }

  v9 = *(a1 + 32);

  return [v9 _rqueue_setNeedsCompute];
}

- (void)showTruncatedRecords
{
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WDMedicalRecordCategorySummary_showTruncatedRecords__block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(resourceQueue, block);
}

uint64_t __54__WDMedicalRecordCategorySummary_showTruncatedRecords__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) displayingTruncatedRecords];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setDisplayingTruncatedRecords:1];
    [*(a1 + 32) _rqueue_setNeedsCompute];
    v3 = *(a1 + 32);

    return [v3 _rqueue_recomputeIfNeeded];
  }

  return result;
}

- (void)recomputeIfNeeded
{
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WDMedicalRecordCategorySummary_recomputeIfNeeded__block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(resourceQueue, block);
}

- (void)setNeedsRecompute
{
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WDMedicalRecordCategorySummary_setNeedsRecompute__block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(resourceQueue, block);
}

- (int64_t)additionalDisplayItemCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__WDMedicalRecordCategorySummary_additionalDisplayItemCount__block_invoke;
  v6[3] = &unk_1E83DD1D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(resourceQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __60__WDMedicalRecordCategorySummary_additionalDisplayItemCount__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _rqueue_recomputeIfNeeded];
  result = [*(*(a1 + 32) + 88) count];
  if (result)
  {
    result = [*(*(a1 + 32) + 72) count];
    v3 = result - *(*(a1 + 32) + 96);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (int64_t)additionalRecordCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__WDMedicalRecordCategorySummary_additionalRecordCount__block_invoke;
  v6[3] = &unk_1E83DD1D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(resourceQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __55__WDMedicalRecordCategorySummary_additionalRecordCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _rqueue_recomputeIfNeeded];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 104);
  return result;
}

- (NSArray)displayItems
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__WDMedicalRecordCategorySummary_displayItems__block_invoke;
  v6[3] = &unk_1E83DD1D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(resourceQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __46__WDMedicalRecordCategorySummary_displayItems__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _rqueue_recomputeIfNeeded];
  v2 = *(a1 + 32);
  v3 = 80;
  if (*(v2 + 9))
  {
    v3 = 72;
  }

  v4 = [*(v2 + v3) copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (int64_t)categoryType
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__WDMedicalRecordCategorySummary_categoryType__block_invoke;
  v6[3] = &unk_1E83DD4C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(resourceQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSString)summarySortString
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__WDMedicalRecordCategorySummary_summarySortString__block_invoke;
  v6[3] = &unk_1E83DD4C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(resourceQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__WDMedicalRecordCategorySummary_summarySortString__block_invoke(uint64_t a1)
{
  v7 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 16)];
  v3 = [v7 objectForKeyedSubscript:v2];
  v4 = [v3 displayName];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_rqueue_setNeedsCompute
{
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  dispatch_assert_queue_V2(resourceQueue);

  [(WDMedicalRecordCategorySummary *)self setDirty:1];
}

- (void)_rqueue_recomputeIfNeeded
{
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  dispatch_assert_queue_V2(resourceQueue);

  if ([(WDMedicalRecordCategorySummary *)self dirty])
  {
    allRecords = [(WDMedicalRecordCategorySummary *)self allRecords];
    v5 = [allRecords count];

    if (v5)
    {
      [(WDMedicalRecordCategorySummary *)self setDirty:0];
      [(WDMedicalRecordCategorySummary *)self _rqueue_determinStandaloneRecords];
      showCategoryTitle = [(WDMedicalRecordCategorySummary *)self showCategoryTitle];
      allStandaloneRecords = [(WDMedicalRecordCategorySummary *)self allStandaloneRecords];
      v8 = [allStandaloneRecords copy];

      panelsToRecords = [(WDMedicalRecordCategorySummary *)self panelsToRecords];
      v10 = [panelsToRecords copy];

      summaryQueue = [(WDMedicalRecordCategorySummary *)self summaryQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke;
      v14[3] = &unk_1E83DD5E0;
      v15 = v8;
      selfCopy = self;
      v17 = v10;
      v18 = showCategoryTitle;
      v12 = v10;
      v13 = v8;
      dispatch_async(summaryQueue, v14);
    }
  }
}

void __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__1;
  v34[4] = __Block_byref_object_dispose__1;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__1;
  v32[4] = __Block_byref_object_dispose__1;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__1;
  v30[4] = __Block_byref_object_dispose__1;
  v31 = 0;
  v5 = dispatch_group_create();
  v6 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_2;
  v25[3] = &unk_1E83DD540;
  v7 = v5;
  v8 = *(a1 + 40);
  v26 = v7;
  v27 = v8;
  v9 = v4;
  v28 = v9;
  v29 = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v25];
  v10 = [*(a1 + 40) summaryQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_5;
  v14[3] = &unk_1E83DD5B8;
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = v9;
  v18 = v3;
  v19 = v2;
  v22 = v34;
  v23 = v30;
  v24 = *(a1 + 56);
  v20 = *(a1 + 40);
  v21 = v32;
  v11 = v2;
  v12 = v3;
  v13 = v9;
  dispatch_group_notify(v7, v10, v14);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(v34, 8);
}

void __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = [v5 sampleType];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*MEMORY[0x1E696B788]];

  if (v8)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_3;
    v17[3] = &unk_1E83DD4F0;
    v9 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 32);
    [v9 _displayItemsForPanel:v5 completion:v17];

    v10 = v18;
  }

  else
  {
    if (a3)
    {
      v10 = [*(a1 + 56) objectAtIndexedSubscript:a3 - 1];
    }

    else
    {
      v10 = 0;
    }

    if ([*(a1 + 56) count] - 1 == a3)
    {
      v11 = 0;
    }

    else
    {
      v11 = [*(a1 + 56) objectAtIndexedSubscript:a3 + 1];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_4;
    v13[3] = &unk_1E83DD518;
    v12 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = v5;
    v16 = *(a1 + 32);
    [v12 _displayItemsForRecord:v15 previous:v10 next:v11 completion:v13];
  }
}

void __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addEntriesFromDictionary:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_5(uint64_t a1)
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_6;
  v18[3] = &unk_1E83DD590;
  v2 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  [v2 enumerateObjectsUsingBlock:v18];
  [*(a1 + 64) addObjectsFromArray:*(a1 + 56)];
  v3 = [*(a1 + 56) lastObject];
  v4 = *(*(a1 + 80) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  +[WDMedicalRecordGroupableCell defaultGap];
  [*(*(*(a1 + 80) + 8) + 40) setSeparatorInsets:{0.0, v6, 0.0, 0.0}];
  v7 = [*(a1 + 64) lastObject];
  v8 = *(*(a1 + 88) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(*(a1 + 88) + 8) + 40) setSeparatorHidden:1];
  v10 = [*(a1 + 56) firstObject];
  v11 = *(*(a1 + 96) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if ([*(*(*(a1 + 96) + 8) + 40) displayItemType] == 8)
  {
    [*(*(*(a1 + 96) + 8) + 40) setExtraTopPadding:0];
  }

  if ([*(a1 + 64) count] == 1)
  {
    [*(*(*(a1 + 88) + 8) + 40) setPlacement:2];
  }

  if (*(a1 + 104) == 1)
  {
    if ([*(*(*(a1 + 96) + 8) + 40) displayItemType] == 18)
    {
      [*(*(*(a1 + 96) + 8) + 40) setExtraTopPadding:0];
    }

    v13 = +[WDMedicalRecordDisplayItem timelineSummaryCategoryTitleItemWithCategoryType:](WDMedicalRecordDisplayItem, "timelineSummaryCategoryTitleItemWithCategoryType:", [*(a1 + 72) categoryType]);
    [v13 setExtraTopPadding:1];
    [*(a1 + 56) insertObject:v13 atIndex:0];
    [*(a1 + 64) insertObject:v13 atIndex:0];
  }

  v14 = [*(a1 + 72) resourceQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_8;
  v15[3] = &unk_1E83DC9D0;
  v15[4] = *(a1 + 72);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  dispatch_async(v14, v15);
}

void __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_6(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sampleType];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696B788]];

  if (v6)
  {
    v7 = [a1[4] objectForKeyedSubscript:v3];
    v8 = [v7 count];
    v9 = [a1[5] objectForKeyedSubscript:v3];
    v10 = v9;
    v11 = a1[6];
    if (v8)
    {
      v12 = [v9 firstObject];
      [v11 addObject:v12];

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_7;
      v18 = &unk_1E83DD568;
      v19 = a1[5];
      v20 = a1[6];
      [v7 enumerateObjectsUsingBlock:&v15];
      v13 = a1[6];
      v14 = [v10 lastObject];
      [v13 addObject:v14];
    }

    else
    {
      [a1[6] addObjectsFromArray:v9];
    }
  }

  else
  {
    v7 = [a1[5] objectForKeyedSubscript:v3];
    [a1[6] addObjectsFromArray:v7];
  }
}

void __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [*(a1 + 40) addObjectsFromArray:v3];
}

void __59__WDMedicalRecordCategorySummary__rqueue_recomputeIfNeeded__block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setVisibleDisplayItems:*(a1 + 40)];
  [*(a1 + 32) setAllDisplayItems:*(a1 + 48)];
  v2 = [*(a1 + 32) delegate];
  [v2 summaryDidFinishRecompute:*(a1 + 32)];
}

- (void)_rqueue_determinStandaloneRecords
{
  v26 = *MEMORY[0x1E69E9840];
  resourceQueue = [(WDMedicalRecordCategorySummary *)self resourceQueue];
  dispatch_assert_queue_V2(resourceQueue);

  allRecords = [(WDMedicalRecordCategorySummary *)self allRecords];
  v5 = [allRecords mutableCopy];
  [(WDMedicalRecordCategorySummary *)self setAllStandaloneRecords:v5];

  panels = [(WDMedicalRecordCategorySummary *)self panels];
  v7 = [panels count];

  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [(WDMedicalRecordCategorySummary *)self panels];
    v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          allRecords2 = [(WDMedicalRecordCategorySummary *)self allRecords];
          v14 = MEMORY[0x1E696AE18];
          results = [v12 results];
          v16 = [v14 predicateWithFormat:@"FHIRIdentifier IN %@", results];
          v17 = [allRecords2 filteredOrderedSetUsingPredicate:v16];

          panelsToRecords = [(WDMedicalRecordCategorySummary *)self panelsToRecords];
          [panelsToRecords setObject:v17 forKeyedSubscript:v12];

          allStandaloneRecords = [(WDMedicalRecordCategorySummary *)self allStandaloneRecords];
          [allStandaloneRecords minusOrderedSet:v17];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }
}

- (void)_displayItemsForRecord:(id)record previous:(id)previous next:(id)next completion:(id)completion
{
  recordCopy = record;
  previousCopy = previous;
  nextCopy = next;
  completionCopy = completion;
  summaryQueue = [(WDMedicalRecordCategorySummary *)self summaryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WDMedicalRecordCategorySummary__displayItemsForRecord_previous_next_completion___block_invoke;
  block[3] = &unk_1E83DCDB0;
  v23 = nextCopy;
  v24 = completionCopy;
  v20 = recordCopy;
  selfCopy = self;
  v22 = previousCopy;
  v15 = nextCopy;
  v16 = previousCopy;
  v17 = completionCopy;
  v18 = recordCopy;
  dispatch_async(summaryQueue, block);
}

uint64_t __82__WDMedicalRecordCategorySummary__displayItemsForRecord_previous_next_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sampleType];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E696B788]];

  if (v4)
  {
    v5 = *(*(a1 + 64) + 16);

    return v5();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);

      return [v7 _displayItemsForObservation:v8 previous:v9 next:v10 completion:v11];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v14 = *(a1 + 32);
      v13 = *(a1 + 40);
      if (isKindOfClass)
      {
        v15 = *(a1 + 64);

        return [v13 _displayItemsForUnknownRecord:v14 completion:v15];
      }

      else
      {
        v16 = *(a1 + 48);
        v17 = *(a1 + 56);
        v18 = *(a1 + 64);

        return [v13 _displayItemsForGenericRecord:v14 previous:v16 next:v17 completion:v18];
      }
    }
  }
}

- (void)_displayItemsForGenericRecord:(id)record previous:(id)previous next:(id)next completion:(id)completion
{
  recordCopy = record;
  previousCopy = previous;
  nextCopy = next;
  completionCopy = completion;
  healthRecordsStore = [(HRProfile *)self->_profile healthRecordsStore];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__WDMedicalRecordCategorySummary__displayItemsForGenericRecord_previous_next_completion___block_invoke;
  v19[3] = &unk_1E83DD608;
  v22 = nextCopy;
  v23 = completionCopy;
  v19[4] = self;
  v20 = recordCopy;
  v21 = previousCopy;
  v15 = nextCopy;
  v16 = previousCopy;
  v17 = recordCopy;
  v18 = completionCopy;
  [v17 fetchCorrespondingSignedClinicalDataRecordWithHealthRecordsStore:healthRecordsStore completion:v19];
}

void __89__WDMedicalRecordCategorySummary__displayItemsForGenericRecord_previous_next_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) _displayItemsForGenericRecord:*(a1 + 40) previous:*(a1 + 48) next:*(a1 + 56) signedClinicalDataRecord:a2];
  (*(v2 + 16))(v2, v3);
}

- (id)_displayItemsForGenericRecord:(id)record previous:(id)previous next:(id)next signedClinicalDataRecord:(id)dataRecord
{
  selfCopy = self;
  recordCopy = record;
  dataRecordCopy = dataRecord;
  v10 = MEMORY[0x1E695DF70];
  nextCopy = next;
  previousCopy = previous;
  v13 = objc_alloc_init(v10);
  v14 = _ConceptsOfRecordsAreDefinedAndEqual(recordCopy, previousCopy);

  v15 = _ConceptsOfRecordsAreDefinedAndEqual(recordCopy, nextCopy);
  displayNameForGroupByConcept = [recordCopy displayNameForGroupByConcept];
  preferredDisplayName = [recordCopy preferredDisplayName];
  v18 = [displayNameForGroupByConcept isEqualToString:preferredDisplayName];
  meaningfulDateTitle = [recordCopy meaningfulDateTitle];
  v20 = (v18 & 1) == 0 && [preferredDisplayName length] || objc_msgSend(meaningfulDateTitle, "length", selfCopy) != 0;
  if (v18 & 1 | ((v14 & 1) == 0))
  {
    v21 = +[WDMedicalRecordDisplayItem conceptHeaderItemWithCategoryType:title:](WDMedicalRecordDisplayItem, "conceptHeaderItemWithCategoryType:title:", [recordCopy recordCategoryType], displayNameForGroupByConcept);
    [v21 setSeparatorHidden:1];
    [v21 setMedicalRecord:recordCopy];
    [v21 setCategorySummary:selfCopy];
    [v21 setExtraTopPadding:1];
    if (((v20 | v15) & 1) == 0)
    {
      [v21 setPlacement:2];
    }

    [v13 addObject:{v21, selfCopy}];
  }

  if (v20)
  {
    v22 = +[WDMedicalRecordDisplayItem timelineSummaryContentWithSubtitleItem];
    v23 = v22;
    if (v18)
    {
      v24 = 0;
    }

    else
    {
      v24 = preferredDisplayName;
    }

    [v22 setTitle:{v24, selfCopy}];
    [v23 setSubtitle:meaningfulDateTitle];
    v25 = [dataRecordCopy attributedMeaningfulDateStringWithDateTitle:meaningfulDateTitle];
    [v23 setAttributedSubtitle:v25];

    [v23 setRecordCategoryType:{objc_msgSend(recordCopy, "recordCategoryType")}];
    [v23 setMedicalRecord:recordCopy];
    [v23 setCategorySummary:v28];
    if ((v15 ^ 1 | v18))
    {
      [v23 setPlacement:5];
    }

    else
    {
      [v23 setPlacement:4];
      [v23 setSeparatorStyle:0];
    }

    [v23 setSeparatorHidden:(v15 ^ 1 | v18) & 1];
    [v13 addObject:v23];
  }

  return v13;
}

- (void)_displayItemsForObservation:(id)observation previous:(id)previous next:(id)next completion:(id)completion
{
  observationCopy = observation;
  previousCopy = previous;
  nextCopy = next;
  completionCopy = completion;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  profile = [(WDMedicalRecordCategorySummary *)self profile];
  healthRecordsStore = [profile healthRecordsStore];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__WDMedicalRecordCategorySummary__displayItemsForObservation_previous_next_completion___block_invoke;
  v22[3] = &unk_1E83DD658;
  v22[4] = self;
  v23 = observationCopy;
  v24 = previousCopy;
  v25 = nextCopy;
  v26 = v14;
  v27 = completionCopy;
  v17 = completionCopy;
  v18 = v14;
  v19 = nextCopy;
  v20 = previousCopy;
  v21 = observationCopy;
  [v21 fetchObservationDetailItemsWithHealthRecordsStore:healthRecordsStore style:1 completion:v22];
}

void __87__WDMedicalRecordCategorySummary__displayItemsForObservation_previous_next_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] summaryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__WDMedicalRecordCategorySummary__displayItemsForObservation_previous_next_completion___block_invoke_2;
  block[3] = &unk_1E83DD630;
  v5 = a1[5];
  v6 = a1[6];
  *&v7 = a1[7];
  *(&v7 + 1) = a1[4];
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v11 = v8;
  v12 = v7;
  v13 = a1[8];
  v14 = v3;
  v15 = a1[9];
  v9 = v3;
  dispatch_async(v4, block);
}

void __87__WDMedicalRecordCategorySummary__displayItemsForObservation_previous_next_completion___block_invoke_2(uint64_t a1)
{
  v9 = [*(a1 + 32) displayNameForGroupByConcept];
  v2 = _ConceptsOfRecordsAreDefinedAndEqual(*(a1 + 32), *(a1 + 40));
  v3 = _ConceptsOfRecordsAreDefinedAndEqual(*(a1 + 32), *(a1 + 48));
  if ((v2 & 1) == 0)
  {
    v4 = +[WDMedicalRecordDisplayItem conceptHeaderItemWithCategoryType:title:](WDMedicalRecordDisplayItem, "conceptHeaderItemWithCategoryType:title:", [*(a1 + 32) recordCategoryType], v9);
    [v4 setSeparatorHidden:1];
    [v4 setMedicalRecord:*(a1 + 32)];
    [v4 setCategorySummary:*(a1 + 56)];
    [v4 setExtraTopPadding:1];
    [*(a1 + 64) addObject:v4];
  }

  [*(a1 + 64) addObjectsFromArray:*(a1 + 72)];
  v5 = [*(a1 + 64) lastObject];
  v6 = v5;
  if (v3)
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  [v5 setPlacement:v7];

  v8 = [*(a1 + 64) lastObject];
  [v8 setSeparatorHidden:v3 ^ 1u];

  (*(*(a1 + 80) + 16))();
}

- (void)_displayItemsForPanel:(id)panel completion:(id)completion
{
  panelCopy = panel;
  completionCopy = completion;
  summaryQueue = [(WDMedicalRecordCategorySummary *)self summaryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke;
  block[3] = &unk_1E83DD720;
  v12 = panelCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = panelCopy;
  dispatch_async(summaryQueue, block);
}

void __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke(id *a1)
{
  v2 = [a1[4] preferredDisplayName];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__1;
  v16[4] = __Block_byref_object_dispose__1;
  v17 = 0;
  v4 = [a1[5] resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_2;
  block[3] = &unk_1E83DD6F8;
  v15 = v16;
  v9 = *(a1 + 2);
  v5 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v12 = v3;
  v6 = a1[6];
  v13 = v2;
  v14 = v6;
  v7 = v2;
  v8 = v3;
  dispatch_async(v4, block);

  _Block_object_dispose(v16, 8);
}

void __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) panelsToRecords];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 copy];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if ([*(*(*(a1 + 72) + 8) + 40) count])
  {
    v7 = dispatch_group_create();
    v8 = *(a1 + 72);
    v9 = *(*(v8 + 8) + 40);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_5;
    v24[3] = &unk_1E83DD6D0;
    v28 = v8;
    v10 = *(a1 + 32);
    v25 = v7;
    v26 = v10;
    v27 = *(a1 + 48);
    v11 = v7;
    [v9 enumerateObjectsUsingBlock:v24];
    v12 = [*(a1 + 32) summaryQueue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_7;
    v21[3] = &unk_1E83DD680;
    v13 = *(a1 + 56);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 64);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v22 = v18;
    v23 = v17;
    dispatch_group_notify(v11, v12, v21);
  }

  else
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_3;
    v29[3] = &unk_1E83DD6A8;
    v29[4] = v19;
    v30 = *(a1 + 48);
    v31 = *(a1 + 40);
    v32 = *(a1 + 64);
    [v19 _displayItemsForGenericRecord:v20 previous:0 next:0 completion:v29];
  }
}

void __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] summaryQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_4;
  v6[3] = &unk_1E83DD680;
  v7 = a1[5];
  v8 = a1[6];
  v9 = v3;
  v10 = a1[7];
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:a3 - 1];
  }

  else
  {
    v6 = 0;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count] - 1 == a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:a3 + 1];
  }

  dispatch_group_enter(*(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_6;
  v10[3] = &unk_1E83DD518;
  v8 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v5;
  v13 = *(a1 + 32);
  v9 = v5;
  [v8 _displayItemsForRecord:v9 previous:v6 next:v7 completion:v10];
}

void __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __67__WDMedicalRecordCategorySummary__displayItemsForPanel_completion___block_invoke_7(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = +[WDMedicalRecordDisplayItem timelineSummaryPanelTitleItem];
  v3 = HRLocalizedString(@"LAB_RESULTS_PANEL");
  [v2 setTitle:v3];

  [v2 setSubtitle:*(a1 + 32)];
  [v2 setExtraTopPadding:1];
  [v2 setMedicalRecord:*(a1 + 40)];
  v4 = +[WDMedicalRecordDisplayItem timelineSummaryAppendixItem];
  v5 = HRLocalizedString(@"ADDITIONAL_PANEL_INFORMATION");
  [v4 setTitle:v5];

  [v4 setPlacement:2];
  [v4 setExtraTopPadding:1];
  [v4 setMedicalRecord:*(a1 + 40)];
  v7[0] = v2;
  v7[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  [*(a1 + 48) setObject:v6 forKeyedSubscript:*(a1 + 40)];

  (*(*(a1 + 56) + 16))();
}

- (void)_displayItemsForUnknownRecord:(id)record completion:(id)completion
{
  v10[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  recordCopy = record;
  v7 = +[WDMedicalRecordDisplayItem standaloneItem];
  [v7 setPlacement:2];
  [v7 setExtraTopPadding:1];
  preferredDisplayName = [recordCopy preferredDisplayName];
  [v7 setTitle:preferredDisplayName];

  [v7 setMedicalRecord:recordCopy];
  v10[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  completionCopy[2](completionCopy, v9);
}

- (id)_appendixItemForCount:(int64_t)count
{
  v5 = +[WDMedicalRecordDisplayItem timelineSummaryAppendixItem];
  v6 = MEMORY[0x1E696AEC0];
  v7 = HRLocalizedString(@"SHOW %d MORE");
  v8 = [v6 localizedStringWithFormat:v7, count];
  [v5 setTitle:v8];

  [v5 setPlacement:2];
  [v5 setExtraTopPadding:1];
  [v5 setCategorySummary:self];

  return v5;
}

- (WDMedicalRecordSummaryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end