@interface WDMedicalRecordConceptSummary
- (NSArray)displayItems;
- (WDMedicalRecordConceptSummary)initWithProfile:(id)profile delegate:(id)delegate;
- (WDMedicalRecordSummaryDelegate)delegate;
- (void)_displayItemsForGenericMedicalRecord:(id)record completion:(id)completion;
- (void)_displayItemsForObservation:(id)observation completion:(id)completion;
- (void)_displayItemsForRecord:(id)record completion:(id)completion;
- (void)_rqueue_recomputeIfNeeded;
- (void)_rqueue_setNeedsCompute;
- (void)_updatePlacementForDisplayItems:(id)items ofRecord:(id)record;
- (void)addMedicalRecord:(id)record;
- (void)recomputeIfNeeded;
- (void)setNeedsRecompute;
@end

@implementation WDMedicalRecordConceptSummary

- (WDMedicalRecordConceptSummary)initWithProfile:(id)profile delegate:(id)delegate
{
  profileCopy = profile;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = WDMedicalRecordConceptSummary;
  v9 = [(WDMedicalRecordConceptSummary *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, profile);
    v10->_dirty = 0;
    v11 = HKCreateSerialDispatchQueue();
    summaryQueue = v10->_summaryQueue;
    v10->_summaryQueue = v11;

    v13 = HKCreateSerialDispatchQueue();
    resourceQueue = v10->_resourceQueue;
    v10->_resourceQueue = v13;

    objc_storeWeak(&v10->_delegate, delegateCopy);
    v15 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    allRecords = v10->_allRecords;
    v10->_allRecords = v15;
  }

  return v10;
}

- (void)addMedicalRecord:(id)record
{
  recordCopy = record;
  resourceQueue = [(WDMedicalRecordConceptSummary *)self resourceQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__WDMedicalRecordConceptSummary_addMedicalRecord___block_invoke;
  v7[3] = &unk_1E83DD1A8;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_async(resourceQueue, v7);
}

uint64_t __50__WDMedicalRecordConceptSummary_addMedicalRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allRecords];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _rqueue_setNeedsCompute];
}

- (void)setNeedsRecompute
{
  resourceQueue = [(WDMedicalRecordConceptSummary *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WDMedicalRecordConceptSummary_setNeedsRecompute__block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(resourceQueue, block);
}

- (void)recomputeIfNeeded
{
  resourceQueue = [(WDMedicalRecordConceptSummary *)self resourceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WDMedicalRecordConceptSummary_recomputeIfNeeded__block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(resourceQueue, block);
}

- (NSArray)displayItems
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  resourceQueue = [(WDMedicalRecordConceptSummary *)self resourceQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__WDMedicalRecordConceptSummary_displayItems__block_invoke;
  v6[3] = &unk_1E83DD1D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(resourceQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__WDMedicalRecordConceptSummary_displayItems__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _rqueue_recomputeIfNeeded];
  v2 = *(*(a1 + 32) + 40);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)_rqueue_setNeedsCompute
{
  resourceQueue = [(WDMedicalRecordConceptSummary *)self resourceQueue];
  dispatch_assert_queue_V2(resourceQueue);

  [(WDMedicalRecordConceptSummary *)self setDirty:1];
}

- (void)_rqueue_recomputeIfNeeded
{
  resourceQueue = [(WDMedicalRecordConceptSummary *)self resourceQueue];
  dispatch_assert_queue_V2(resourceQueue);

  if ([(WDMedicalRecordConceptSummary *)self dirty])
  {
    allRecords = [(WDMedicalRecordConceptSummary *)self allRecords];
    v5 = [allRecords count];

    if (v5)
    {
      [(WDMedicalRecordConceptSummary *)self setDirty:0];
      allRecords2 = [(WDMedicalRecordConceptSummary *)self allRecords];
      v7 = [allRecords2 copy];

      summaryQueue = [(WDMedicalRecordConceptSummary *)self summaryQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke;
      v10[3] = &unk_1E83DD1A8;
      v11 = v7;
      selfCopy = self;
      v9 = v7;
      dispatch_async(summaryQueue, v10);
    }
  }
}

void __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = dispatch_group_create();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_2;
  v18[3] = &unk_1E83DD590;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v19 = v4;
  v20 = v5;
  v7 = v2;
  v21 = v7;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v18];
  v9 = [*(a1 + 40) summaryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_4;
  block[3] = &unk_1E83DCA90;
  v14 = *(a1 + 32);
  v15 = v3;
  v10 = *(a1 + 40);
  v16 = v7;
  v17 = v10;
  v11 = v7;
  v12 = v3;
  dispatch_group_notify(v8, v9, block);
}

void __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_3;
  v6[3] = &unk_1E83DD518;
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  [v4 _displayItemsForRecord:v5 completion:v6];
}

void __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_4(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_5;
  v6[3] = &unk_1E83DD568;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v6];
  v3 = [*(a1 + 56) resourceQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_6;
  v4[3] = &unk_1E83DD1A8;
  v4[4] = *(a1 + 56);
  v5 = *(a1 + 40);
  dispatch_async(v3, v4);
}

void __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [v2 addObjectsFromArray:v3];
}

void __58__WDMedicalRecordConceptSummary__rqueue_recomputeIfNeeded__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setAllDisplayItems:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 summaryDidFinishRecompute:*(a1 + 32)];
}

- (void)_displayItemsForRecord:(id)record completion:(id)completion
{
  completionCopy = completion;
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WDMedicalRecordConceptSummary *)self _displayItemsForObservation:recordCopy completion:completionCopy];
  }

  else
  {
    [(WDMedicalRecordConceptSummary *)self _displayItemsForGenericMedicalRecord:recordCopy completion:completionCopy];
  }
}

- (void)_displayItemsForObservation:(id)observation completion:(id)completion
{
  observationCopy = observation;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  healthRecordsStore = [(HRProfile *)self->_profile healthRecordsStore];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__WDMedicalRecordConceptSummary__displayItemsForObservation_completion___block_invoke;
  v13[3] = &unk_1E83DD6A8;
  v13[4] = self;
  v14 = observationCopy;
  v15 = v8;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  v12 = observationCopy;
  [v12 fetchObservationDetailItemsWithHealthRecordsStore:healthRecordsStore style:2 completion:v13];
}

void __72__WDMedicalRecordConceptSummary__displayItemsForObservation_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] summaryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WDMedicalRecordConceptSummary__displayItemsForObservation_completion___block_invoke_2;
  block[3] = &unk_1E83DD938;
  v7 = a1[5];
  v8 = a1[6];
  v9 = v3;
  v10 = a1[4];
  v11 = a1[7];
  v5 = v3;
  dispatch_async(v4, block);
}

void __72__WDMedicalRecordConceptSummary__displayItemsForObservation_completion___block_invoke_2(uint64_t a1)
{
  v6 = +[WDMedicalRecordDisplayItem timelineSummaryContentWithSubtitleItem];
  v2 = [*(a1 + 32) preferredDisplayName];
  [v6 setTitle:v2];

  v3 = [*(a1 + 32) meaningfulDateTitle];
  [v6 setSubtitle:v3];

  [v6 setMedicalRecord:*(a1 + 32)];
  [v6 setPlacement:3];
  [v6 setSeparatorStyle:0];
  [v6 setSeparatorHidden:1];
  [v6 setExtraTopPadding:1];
  [v6 setShowDisclosureIndicator:1];
  [v6 setUseRegularFontForSubtitle:1];
  [*(a1 + 40) addObject:v6];
  [*(a1 + 40) addObjectsFromArray:*(a1 + 48)];
  v4 = [*(a1 + 40) lastObject];
  [v4 setPlacement:5];

  v5 = [*(a1 + 40) lastObject];
  [v5 setSeparatorHidden:1];

  [*(a1 + 56) _updatePlacementForDisplayItems:*(a1 + 40) ofRecord:*(a1 + 32)];
  (*(*(a1 + 64) + 16))();
}

- (void)_displayItemsForGenericMedicalRecord:(id)record completion:(id)completion
{
  v46[1] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  completionCopy = completion;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__3;
  v44 = __Block_byref_object_dispose__3;
  v45 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__3;
  v38[4] = __Block_byref_object_dispose__3;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__3;
  v36[4] = __Block_byref_object_dispose__3;
  v37 = 0;
  v8 = dispatch_group_create();
  v9 = +[WDMedicalRecordDisplayItem timelineSummaryContentWithSubtitleItem];
  preferredDisplayName = [recordCopy preferredDisplayName];
  [v9 setTitle:preferredDisplayName];

  meaningfulDateTitle = [recordCopy meaningfulDateTitle];
  [v9 setSubtitle:meaningfulDateTitle];

  [v9 setMedicalRecord:recordCopy];
  [v9 setPlacement:3];
  [v9 setSeparatorStyle:0];
  [v9 setSeparatorHidden:0];
  [v9 setExtraTopPadding:1];
  [v9 setShowDisclosureIndicator:1];
  [v9 setUseRegularFontForSubtitle:1];
  v46[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v13 = v41[5];
  v41[5] = v12;

  originIdentifier = [recordCopy originIdentifier];
  signedClinicalDataRecordIdentifier = [originIdentifier signedClinicalDataRecordIdentifier];

  if (signedClinicalDataRecordIdentifier)
  {
    dispatch_group_enter(v8);
    clinicalSourcesDataProvider = [(HRProfile *)self->_profile clinicalSourcesDataProvider];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __81__WDMedicalRecordConceptSummary__displayItemsForGenericMedicalRecord_completion___block_invoke;
    v32[3] = &unk_1E83DD960;
    v33 = v9;
    v34 = recordCopy;
    v35 = v8;
    [clinicalSourcesDataProvider fetchSignedClinicalDataRecordWithIdentifier:signedClinicalDataRecordIdentifier completion:v32];
  }

  dispatch_group_enter(v8);
  healthRecordsStore = [(HRProfile *)self->_profile healthRecordsStore];
  conceptStore = [(HRProfile *)self->_profile conceptStore];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __81__WDMedicalRecordConceptSummary__displayItemsForGenericMedicalRecord_completion___block_invoke_2;
  v29[3] = &unk_1E83DD9B0;
  v29[4] = self;
  v31 = v36;
  v19 = v8;
  v30 = v19;
  [recordCopy fetchConceptRoomItemsWithHealthRecordsStore:healthRecordsStore conceptStore:conceptStore completion:v29];

  summaryQueue = [(WDMedicalRecordConceptSummary *)self summaryQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81__WDMedicalRecordConceptSummary__displayItemsForGenericMedicalRecord_completion___block_invoke_4;
  v23[3] = &unk_1E83DD9D8;
  v27 = v38;
  v28 = v36;
  v23[4] = self;
  v24 = recordCopy;
  v25 = completionCopy;
  v26 = &v40;
  v21 = completionCopy;
  v22 = recordCopy;
  dispatch_group_notify(v19, summaryQueue, v23);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(&v40, 8);
}

void __81__WDMedicalRecordConceptSummary__displayItemsForGenericMedicalRecord_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 meaningfulDateTitle];
  v6 = [v4 attributedMeaningfulDateStringWithDateTitle:v5];

  [*(a1 + 32) setAttributedSubtitle:v6];
  v7 = *(a1 + 48);

  dispatch_group_leave(v7);
}

void __81__WDMedicalRecordConceptSummary__displayItemsForGenericMedicalRecord_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) summaryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__WDMedicalRecordConceptSummary__displayItemsForGenericMedicalRecord_completion___block_invoke_3;
  block[3] = &unk_1E83DD988;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __81__WDMedicalRecordConceptSummary__displayItemsForGenericMedicalRecord_completion___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __81__WDMedicalRecordConceptSummary__displayItemsForGenericMedicalRecord_completion___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObjectsFromArray:{*(*(&v8 + 1) + 8 * v7++), v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [v2 addObjectsFromArray:*(*(*(a1 + 72) + 8) + 40)];
  [*(a1 + 32) _updatePlacementForDisplayItems:v2 ofRecord:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)_updatePlacementForDisplayItems:(id)items ofRecord:(id)record
{
  itemsCopy = items;
  recordCopy = record;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __74__WDMedicalRecordConceptSummary__updatePlacementForDisplayItems_ofRecord___block_invoke;
  v14 = &unk_1E83DDA00;
  v17 = &v25;
  v7 = itemsCopy;
  v15 = v7;
  v18 = &v19;
  v8 = recordCopy;
  v16 = v8;
  [v7 enumerateObjectsUsingBlock:&v11];
  v9 = v26[5];
  if (v9 == v20[5])
  {
    v10 = 2;
  }

  else
  {
    [v9 setPlacement:{3, v11, v12, v13, v14, v15}];
    v9 = v20[5];
    v10 = 5;
  }

  [v9 setPlacement:{v10, v11, v12, v13, v14}];
  [v20[5] setSeparatorHidden:1];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

void __74__WDMedicalRecordConceptSummary__updatePlacementForDisplayItems_ofRecord___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  if ([*(a1 + 32) count] - 1 == a3)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  [v6 setPlacement:4];
  [v6 setMedicalRecord:*(a1 + 40)];
}

- (WDMedicalRecordSummaryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end