@interface ICNASearchResultExposureReporter
- (ICNAEventReporter)eventReporter;
- (ICNASearchResultExposureReporter)initWithWindow:(id)a3;
- (UIWindow)window;
- (id)_exposureDataThreadUnsafe;
- (void)analyticsSessionWillEnd:(id)a3;
- (void)dealloc;
- (void)eventReporterLostSession:(id)a3;
- (void)invalidateSearchSessionID;
- (void)startTrackingNewSearchString:(id)a3;
- (void)submitEventIfApplicable;
- (void)updateSearchResultWasSelected:(BOOL)a3;
- (void)updateSearchSessionID:(id)a3;
- (void)updateWithTopHitResultCount:(unint64_t)a3 nonTopHitResultCount:(unint64_t)a4 attachmentSectionCount:(unint64_t)a5;
@end

@implementation ICNASearchResultExposureReporter

- (ICNASearchResultExposureReporter)initWithWindow:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICNASearchResultExposureReporter;
  v5 = [(ICNASearchResultExposureReporter *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.notes.analytics.searchResultExposureReporter", v6);
    isolationQueue = v5->_isolationQueue;
    v5->_isolationQueue = v7;

    objc_storeWeak(&v5->_window, v4);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    searchResultExposureItems = v5->_searchResultExposureItems;
    v5->_searchResultExposureItems = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v5 selector:sel_analyticsSessionWillEnd_ name:@"ICNASessionWillEndNotification" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNASearchResultExposureReporter;
  [(ICNASearchResultExposureReporter *)&v4 dealloc];
}

- (void)updateSearchSessionID:(id)a3
{
  v4 = a3;
  v5 = [(ICNASearchResultExposureReporter *)self isolationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ICNASearchResultExposureReporter_updateSearchSessionID___block_invoke;
  v7[3] = &unk_2799AF050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, v7);
}

void __58__ICNASearchResultExposureReporter_updateSearchSessionID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSearchSessionID:*(a1 + 40)];
  v2 = [*(a1 + 32) searchResultExposureItems];
  [v2 removeAllObjects];
}

- (void)invalidateSearchSessionID
{
  v3 = [(ICNASearchResultExposureReporter *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ICNASearchResultExposureReporter_invalidateSearchSessionID__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_barrier_async(v3, block);
}

void __61__ICNASearchResultExposureReporter_invalidateSearchSessionID__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSearchSessionID:0];
  v2 = [*(a1 + 32) searchResultExposureItems];
  [v2 removeAllObjects];
}

- (void)startTrackingNewSearchString:(id)a3
{
  v4 = a3;
  v5 = [(ICNASearchResultExposureReporter *)self isolationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ICNASearchResultExposureReporter_startTrackingNewSearchString___block_invoke;
  v7[3] = &unk_2799AF050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, v7);
}

void __65__ICNASearchResultExposureReporter_startTrackingNewSearchString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchSessionID];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) searchResultExposureItems];
    v5 = [v4 lastObject];
    v6 = [v5 searchString];
    v7 = [v6 isEqualToString:*(a1 + 40)];

    if ((v7 & 1) == 0)
    {
      v9 = [*(a1 + 32) searchResultExposureItems];
      v8 = [[ICNASearchResultExposureItem alloc] initWithSearchString:*(a1 + 40)];
      [v9 addObject:v8];
    }
  }
}

- (void)updateWithTopHitResultCount:(unint64_t)a3 nonTopHitResultCount:(unint64_t)a4 attachmentSectionCount:(unint64_t)a5
{
  v9 = [(ICNASearchResultExposureReporter *)self isolationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __108__ICNASearchResultExposureReporter_updateWithTopHitResultCount_nonTopHitResultCount_attachmentSectionCount___block_invoke;
  v10[3] = &unk_2799AF430;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = a4;
  v10[7] = a5;
  dispatch_barrier_async(v9, v10);
}

void __108__ICNASearchResultExposureReporter_updateWithTopHitResultCount_nonTopHitResultCount_attachmentSectionCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchSessionID];

  if (v2)
  {
    v3 = [*(a1 + 32) searchResultExposureItems];
    v4 = [v3 lastObject];

    [v4 updateWithTopHitResultCount:*(a1 + 40) nonTopHitResultCount:*(a1 + 48) attachmentSectionCount:*(a1 + 56)];
  }
}

- (void)updateSearchResultWasSelected:(BOOL)a3
{
  v5 = [(ICNASearchResultExposureReporter *)self isolationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ICNASearchResultExposureReporter_updateSearchResultWasSelected___block_invoke;
  v6[3] = &unk_2799AF458;
  v6[4] = self;
  v7 = a3;
  dispatch_barrier_async(v5, v6);
}

void __66__ICNASearchResultExposureReporter_updateSearchResultWasSelected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchSessionID];

  if (v2)
  {
    v3 = [*(a1 + 32) searchResultExposureItems];
    v4 = [v3 lastObject];

    [v4 setSearchResultWasSelected:*(a1 + 40)];
  }
}

- (void)submitEventIfApplicable
{
  v3 = [(ICNASearchResultExposureReporter *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ICNASearchResultExposureReporter_submitEventIfApplicable__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_async(v3, block);
}

void __59__ICNASearchResultExposureReporter_submitEventIfApplicable__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchSessionID];

  if (v2)
  {
    v5 = [*(a1 + 32) _exposureDataThreadUnsafe];
    v3 = [*(a1 + 32) eventReporter];
    v4 = [*(a1 + 32) searchSessionID];
    [v3 submitSearchResultExposureSummaryEventWithSearchResultExposureData:v5 searchSessionID:v4];
  }
}

- (id)_exposureDataThreadUnsafe
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(ICNASearchResultExposureReporter *)self searchResultExposureItems];
  v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v35)
  {
    v32 = 0;
    v33 = 0;
    v3 = 0;
    v30 = *v38;
    v31 = 0;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v37 + 1) + 8 * i);
        v6 = [v5 searchString];
        v7 = [v6 length];
        v8 = [v6 length];
        v9 = v8;
        if (v7 <= v3)
        {
          v36 = v3;
          if (v8 == v3)
          {
            v10 = [v5 topHitResultCount];
            v11 = v31;
            if (v31 <= v10)
            {
              v11 = v10;
            }

            v31 = v11;
            v12 = [v5 attachmentSectionCount];
            v13 = v33;
            if (v33 <= v12)
            {
              v13 = v12;
            }

            v33 = v13;
            v32 |= [v5 nonTopHitResultCount] != 0;
          }
        }

        else
        {
          v31 = [v5 topHitResultCount];
          v33 = [v5 attachmentSectionCount];
          v32 = [v5 nonTopHitResultCount] != 0;
          v36 = v9;
        }

        v14 = [ICASSearchBufferArrayData alloc];
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v6, "length"))}];
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v5, "topHitResultCount"))}];
        v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "nonTopHitResultCount") != 0}];
        v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "searchResultWasSelected")}];
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v5, "nonTopHitResultCount"))}];
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "attachmentSectionCount")}];
        v21 = [(ICASSearchBufferArrayData *)v14 initWithSearchStringLength:v15 topHitCount:v16 nonTopHitCount:v17 isResultSelected:v18 nonTopHitRawCount:v19 attachmentHitCount:v20];

        [v34 ic_addNonNilObject:v21];
        v3 = v36;
      }

      v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v35);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
  }

  v22 = [ICASSearchResultExposureData alloc];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v31)];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v32 & 1];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
  v26 = [(ICASSearchResultExposureData *)v22 initWithTopHitCountForLongestSearchString:v23 hasNonTopHitResultsForLongestSearchString:v24 attachmentHitCountForLongestSearchString:v25 searchBufferArray:v34];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)analyticsSessionWillEnd:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v6 = ICDynamicCast();

  v7 = [v6 session];
  v8 = [v7 persistentIdentifier];
  v9 = [(ICNASearchResultExposureReporter *)self window];
  v10 = [v9 windowScene];
  v11 = [v10 session];
  v12 = [v11 persistentIdentifier];
  v13 = [v8 isEqual:v12];

  if (v13)
  {
    v14 = +[ICNAController sharedController];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__ICNASearchResultExposureReporter_analyticsSessionWillEnd___block_invoke;
    v15[3] = &unk_2799AF130;
    v15[4] = self;
    [v14 performOnInstrumentationQueueWaitUntilDone:0 block:v15];
  }
}

void __60__ICNASearchResultExposureReporter_analyticsSessionWillEnd___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v2 = [*(a1 + 32) isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ICNASearchResultExposureReporter_analyticsSessionWillEnd___block_invoke_62;
  block[3] = &unk_2799AF480;
  block[4] = *(a1 + 32);
  block[5] = &v13;
  dispatch_sync(v2, block);

  if (v14[5])
  {
    v3 = [ICASSearchData alloc];
    v4 = [*(a1 + 32) searchSessionID];
    v5 = [(ICASSearchData *)v3 initWithSearchSessionID:v4];

    v6 = +[ICNAController sharedController];
    v7 = objc_opt_class();
    v19[0] = v14[5];
    v19[1] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v9 = [*(a1 + 32) eventReporter];
    v10 = [v9 subTracker];
    [v6 _immediatelySubmitEventOfType:v7 pushThenPopDataObjects:v8 subTracker:v10];
  }

  _Block_object_dispose(&v13, 8);

  v11 = *MEMORY[0x277D85DE8];
}

void __60__ICNASearchResultExposureReporter_analyticsSessionWillEnd___block_invoke_62(uint64_t a1)
{
  v2 = [*(a1 + 32) searchSessionID];

  if (v2)
  {
    v3 = [*(a1 + 32) _exposureDataThreadUnsafe];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    MEMORY[0x2821F96F8]();
  }
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[(ICNAOptedInObject *)ICNAEventReporter])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ICNASearchResultExposureReporter *)self window];
    v7 = [(ICNAEventReporter *)v3 initWithSubTrackerName:v5 window:v6];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel_eventReporterLostSession_ name:@"ICNAEventReporterLostSessionNotification" object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [v5 object];

  [v7 removeObserver:self name:@"ICNAEventReporterLostSessionNotification" object:v6];
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end