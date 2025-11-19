@interface CADMockSpotlightIndex
- (BOOL)_incrementAndCheckIfShouldFailCall;
- (CADMockSpotlightIndex)initWithProvider:(id)a3;
- (double)_artificialDelay;
- (void)beginIndexBatch;
- (void)deleteAllSearchableItemsForBundleID:(id)a3 completionHandler:(id)a4;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)endIndexBatchWithExpectedClientState:(id)a3 newClientState:(id)a4 completionHandler:(id)a5;
- (void)indexSearchableItems:(id)a3 completionHandler:(id)a4;
@end

@implementation CADMockSpotlightIndex

- (CADMockSpotlightIndex)initWithProvider:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CADMockSpotlightIndex;
  v5 = [(CADMockSpotlightIndex *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_provider, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("CADMockSpotlightIndex", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v6->needsReindex = 0;
    v6->_batchOpen = 0;
    v10 = objc_opt_new();
    batchJobs = v6->_batchJobs;
    v6->_batchJobs = v10;
  }

  return v6;
}

- (double)_artificialDelay
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  [WeakRetained minArtificialDelay];
  v5 = (v4 * 1000.0);

  v6 = objc_loadWeakRetained(&self->_provider);
  [v6 maxArtificialDelay];
  v8 = (v7 * 1000.0);

  v9 = v5 & ~(v5 >> 63);
  v10 = v8 & ~(v8 >> 63);
  if (v9 < v8)
  {
    v10 = v9 + arc4random_uniform(v10 - v9 + 1);
  }

  return v10 / 1000.0;
}

- (void)beginIndexBatch
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  if (self->_batchOpen)
  {
    v3 = [WeakRetained failureCallback];

    if (v3)
    {
      v4 = [WeakRetained failureCallback];
      (v4)[2](v4, @"beginIndexBatch called in middle of batch");
    }
  }

  self->_batchOpen = 1;
  v5 = objc_opt_new();
  batchJobs = self->_batchJobs;
  self->_batchJobs = v5;
}

- (void)endIndexBatchWithExpectedClientState:(id)a3 newClientState:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v12 = WeakRetained;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  if (self->_batchOpen)
  {
    self->_batchOpen = 0;
    [(CADMockSpotlightIndex *)self _artificialDelay];
    v14 = dispatch_time(0, (v13 * 1000000000.0));
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__CADMockSpotlightIndex_endIndexBatchWithExpectedClientState_newClientState_completionHandler___block_invoke;
    block[3] = &unk_27851AD58;
    block[4] = self;
    v22 = &v23;
    v21 = v10;
    dispatch_after(v14, queue, block);
  }

  else
  {
    v16 = [WeakRetained failureCallback];

    if (v16)
    {
      v17 = [v12 failureCallback];
      (v17)[2](v17, @"endIndexBatchWithExpectedClientState called outside batch request");
    }

    v18 = [(CADMockSpotlightIndex *)self _batchFailureError];
    v19 = v24[5];
    v24[5] = v18;
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __95__CADMockSpotlightIndex_endIndexBatchWithExpectedClientState_newClientState_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (((*(*(*(&v12 + 1) + 8 * i) + 16))(*(*(&v12 + 1) + 8 * i)) & 1) == 0)
        {
          v7 = [*(a1 + 32) _mockFailureError];
          v8 = *(*(a1 + 48) + 8);
          v9 = *(v8 + 40);
          *(v8 + 40) = v7;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, *(*(*(a1 + 48) + 8) + 40));
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__5;
  v20[4] = __Block_byref_object_dispose__5;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  [(CADMockSpotlightIndex *)self _artificialDelay];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CADMockSpotlightIndex_deleteSearchableItemsWithDomainIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_27851AD80;
  v18 = v7;
  v19 = v20;
  block[4] = self;
  v16 = WeakRetained;
  v17 = v6;
  v12 = v7;
  v13 = v6;
  v14 = WeakRetained;
  dispatch_after(v10, queue, block);

  _Block_object_dispose(v20, 8);
}

uint64_t __86__CADMockSpotlightIndex_deleteSearchableItemsWithDomainIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _incrementAndCheckIfShouldFailCall])
  {
    v2 = [*(a1 + 32) _mockFailureError];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if ([v5 failDeleteSearchableItemsWithDomainIdentifiers])
    {
      v6 = [*(a1 + 32) _mockFailureError];
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      [*(a1 + 40) deleteSearchableItemsWithDomainIdentifiers:*(a1 + 48)];
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    v10 = *(*(*(a1 + 64) + 8) + 40);
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

- (void)indexSearchableItems:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v9 = WeakRetained;
  if (self->_batchOpen)
  {
    v10 = 0;
  }

  else
  {
    v10 = [WeakRetained failureCallback];

    if (v10)
    {
      v11 = [v9 failureCallback];
      (v11)[2](v11, @"deleteSearchableItemsWithDomainIdentifiers called outside batch");

      v10 = [(CADMockSpotlightIndex *)self _batchFailureError];
    }
  }

  objc_initWeak(&location, self);
  batchJobs = self->_batchJobs;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__CADMockSpotlightIndex_indexSearchableItems_completionHandler___block_invoke;
  v19 = &unk_27851ADA8;
  objc_copyWeak(&v22, &location);
  v13 = v9;
  v20 = v13;
  v14 = v6;
  v21 = v14;
  v15 = MEMORY[0x22AA4DCD0](&v16);
  [(NSMutableArray *)batchJobs addObject:v15, v16, v17, v18, v19];

  if (v7)
  {
    v7[2](v7, v10);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

uint64_t __64__CADMockSpotlightIndex_indexSearchableItems_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _incrementAndCheckIfShouldFailCall];

  if (v3)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    if ([v4 failIndexSearchableItems])
    {
      return 0;
    }

    [*(a1 + 32) indexSearchableItems:*(a1 + 40)];
  }

  return 1;
}

- (void)deleteAllSearchableItemsForBundleID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__5;
  v20[4] = __Block_byref_object_dispose__5;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  [(CADMockSpotlightIndex *)self _artificialDelay];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CADMockSpotlightIndex_deleteAllSearchableItemsForBundleID_completionHandler___block_invoke;
  block[3] = &unk_27851AD80;
  v18 = v7;
  v19 = v20;
  block[4] = self;
  v16 = WeakRetained;
  v17 = v6;
  v12 = v7;
  v13 = v6;
  v14 = WeakRetained;
  dispatch_after(v10, queue, block);

  _Block_object_dispose(v20, 8);
}

uint64_t __79__CADMockSpotlightIndex_deleteAllSearchableItemsForBundleID_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _incrementAndCheckIfShouldFailCall])
  {
    v2 = [*(a1 + 32) _mockFailureError];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if ([v5 failDeleteAllSearchableItemsForBundleID])
    {
      v6 = [*(a1 + 32) _mockFailureError];
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      [*(a1 + 40) deleteAllSearchableItemsForBundleID:*(a1 + 48)];
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    v10 = *(*(*(a1 + 64) + 8) + 40);
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

- (BOOL)_incrementAndCheckIfShouldFailCall
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  [WeakRetained setNumCalls:{objc_msgSend(WeakRetained, "numCalls") + 1}];

  v4 = objc_loadWeakRetained(&self->_provider);
  v5 = [v4 failureMode];

  switch(v5)
  {
    case 3:
      return 1;
    case 2:
      v6 = objc_loadWeakRetained(&self->_provider);
      v7 = [v6 numCalls] == 2;
      break;
    case 1:
      v6 = objc_loadWeakRetained(&self->_provider);
      v7 = [v6 numCalls] == 1;
      break;
    default:
      return 0;
  }

  v8 = v7;

  return v8;
}

@end