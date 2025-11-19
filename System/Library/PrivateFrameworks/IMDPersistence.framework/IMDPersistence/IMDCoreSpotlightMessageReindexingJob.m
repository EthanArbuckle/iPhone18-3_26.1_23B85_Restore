@interface IMDCoreSpotlightMessageReindexingJob
- (BOOL)_shouldIndexMore;
- (IMDCoreSpotlightMessageReindexingJob)initWithBatchSize:(int64_t)a3 index:(id)a4 delegate:(id)a5 reason:(int64_t)a6;
- (IMDCoreSpotlightMessageReindexingJobDelegate)delegate;
- (unint64_t)_generateSearchableItemsForMessageItemDictionary:(id)a3 chatDictionary:(id)a4;
- (unint64_t)_remainingToIndex;
- (unint64_t)_subBatchSize;
- (void)_generateSearchableItems;
- (void)_indexMoreWithCompletionBlock:(id)a3;
- (void)_indexSearchableItemsWithCompletionBlock:(id)a3;
- (void)_indexingFinished;
- (void)runWithCompletion:(id)a3;
@end

@implementation IMDCoreSpotlightMessageReindexingJob

- (IMDCoreSpotlightMessageReindexingJob)initWithBatchSize:(int64_t)a3 index:(id)a4 delegate:(id)a5 reason:(int64_t)a6
{
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = IMDCoreSpotlightMessageReindexingJob;
  v13 = [(IMDCoreSpotlightMessageReindexingJob *)&v24 init];
  v14 = v13;
  if (v13)
  {
    v13->_batchSize = a3;
    objc_storeStrong(&v13->_index, a4);
    objc_storeWeak(&v14->_delegate, v12);
    v15 = objc_alloc_init(MEMORY[0x1E69A6170]);
    timingCollection = v14->_timingCollection;
    v14->_timingCollection = v15;

    v14->_hasMoreToIndex = 1;
    v14->_reason = a6;
    v14->_indexedCount = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    searchableItems = v14->_searchableItems;
    v14->_searchableItems = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rejectedItems = v14->_rejectedItems;
    v14->_rejectedItems = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    guidsInBatch = v14->_guidsInBatch;
    v14->_guidsInBatch = v21;
  }

  return v14;
}

- (unint64_t)_remainingToIndex
{
  v4 = objc_msgSend_batchSize(self, a2, v2);
  if (v4 == objc_msgSend_indexedCount(self, v5, v6))
  {
    return 0;
  }

  v10 = objc_msgSend_batchSize(self, v7, v8);
  return v10 - objc_msgSend_indexedCount(self, v11, v12);
}

- (unint64_t)_subBatchSize
{
  v4 = objc_msgSend_messageSubBatchSize(MEMORY[0x1E69A7FF8], a2, v2);
  if (v4 >= objc_msgSend__remainingToIndex(self, v5, v6))
  {

    return objc_msgSend__remainingToIndex(self, v7, v8);
  }

  else
  {
    v9 = MEMORY[0x1E69A7FF8];

    return objc_msgSend_messageSubBatchSize(v9, v7, v8);
  }
}

- (void)_indexMoreWithCompletionBlock:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend__subBatchSize(self, v5, v6);
  v10 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v8, v9);
  v43 = 0;
  v12 = objc_msgSend_currentClientStateWithError_(v10, v11, &v43);
  v13 = v43;

  if (v13)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CF8F34(v13, v15);
    }

    objc_msgSend_setHasMoreToIndex_(self, v16, 0);
    v4[2](v4, v13);
  }

  else
  {
    objc_msgSend_setClientState_(self, v14, v12);
    objc_msgSend_setMessageRecordCount_(self, v17, 0);
    objc_msgSend_setMessagesWithItemsGeneratedCount_(self, v18, 0);
    objc_msgSend__generateSearchableItems(self, v19, v20);
    v23 = objc_msgSend_searchableItems(self, v21, v22);
    v26 = objc_msgSend_count(v23, v24, v25);

    if (objc_msgSend_messageRecordCount(self, v27, v28) < v7)
    {
      objc_msgSend_setHasMoreToIndex_(self, v29, 0);
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v34 = objc_msgSend_messageRecordCount(self, v32, v33);
          *buf = 134218240;
          v45 = v34;
          v46 = 2048;
          v47 = v7;
          _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "messageRecordCount (%lu) < current sub batch size (%lu). Reaching the end of indexing all message records.", buf, 0x16u);
        }
      }
    }

    v35 = objc_msgSend_timingCollection(self, v29, v30);
    objc_msgSend_startTimingForKey_(v35, v36, @"CSIngest");

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1B7B978BC;
    v39[3] = &unk_1E7CBB880;
    v39[4] = self;
    v41 = v7;
    v42 = v26;
    v40 = v4;
    objc_msgSend__indexSearchableItemsWithCompletionBlock_(self, v37, v39);
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_generateSearchableItemsForMessageItemDictionary:(id)a3 chatDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_delegate(self, v8, v9);
  v13 = objc_msgSend_searchableItemGenerator(v10, v11, v12);

  v14 = [IMDIndexingContext alloc];
  v17 = objc_msgSend_reason(self, v15, v16);
  v19 = objc_msgSend_initForReindexing_reason_(v14, v18, 1, v17);
  v22 = objc_msgSend_rejectedItems(self, v20, v21);
  v24 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_populatedChatItems_(v13, v23, v7, v6, v19, v22, 0);

  v27 = objc_msgSend_searchableItems(self, v25, v26);
  objc_msgSend_addObjectsFromArray_(v27, v28, v24);

  v30 = objc_msgSend_objectForKeyedSubscript_(v7, v29, @"guid");

  if (v30)
  {
    v33 = objc_msgSend_guidsInBatch(self, v31, v32);
    objc_msgSend_addObject_(v33, v34, v30);
  }

  v35 = objc_msgSend_count(v24, v31, v32);

  return v35;
}

- (void)_generateSearchableItems
{
  v3 = [IMDMessageRecordBatchFetcher alloc];
  v5 = objc_msgSend_initWithAssociatedChatGUID_sortAscending_(v3, v4, 0, 0);
  v6 = [IMDThreadSafeMessageDictionaryMapper alloc];
  v9 = objc_msgSend_timingCollection(self, v7, v8);
  v11 = objc_msgSend_initWithBatchFetcher_timingCollection_(v6, v10, v5, v9);

  v14 = objc_msgSend_clientState(self, v12, v13);
  IndexedRowID = objc_msgSend_lastIndexedRowID(v14, v15, v16);
  objc_msgSend_setLastIndexedRowID_(v11, v18, IndexedRowID);

  v21 = objc_msgSend__subBatchSize(self, v19, v20);
  objc_msgSend_setMaxMessagesToProcess_(v11, v22, v21);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1B7B97DD0;
  v35[3] = &unk_1E7CBB8A8;
  v35[4] = self;
  objc_msgSend_processWithBlock_(v11, v23, v35);
  v26 = objc_msgSend_lastIndexedRowID(v11, v24, v25);
  v29 = objc_msgSend_clientState(self, v27, v28);
  objc_msgSend_setLastIndexedRowID_(v29, v30, v26);

  v33 = objc_msgSend_processedMessageCount(v11, v31, v32);
  objc_msgSend_setMessageRecordCount_(self, v34, v33);
}

- (void)_indexingFinished
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_searchableItems(self, a2, v2);
  objc_msgSend_removeAllObjects(v4, v5, v6);

  v9 = objc_msgSend_rejectedItems(self, v7, v8);
  objc_msgSend_removeAllObjects(v9, v10, v11);

  v14 = objc_msgSend_guidsInBatch(self, v12, v13);
  objc_msgSend_removeAllObjects(v14, v15, v16);

  LOBYTE(v14) = objc_msgSend_hasMoreToIndex(self, v17, v18);
  v19 = IMOSLoggingEnabled();
  if (v14)
  {
    if (v19)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = objc_msgSend_clientState(self, v23, v24);
        v42 = 134217984;
        IndexedRowID = objc_msgSend_lastIndexedRowID(v25, v26, v27);
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "New lastIndexedRowID is %lu", &v42, 0xCu);
      }
    }
  }

  else
  {
    if (v19)
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        LOWORD(v42) = 0;
        _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Indexing complete!", &v42, 2u);
      }
    }

    v29 = objc_msgSend_delegate(self, v20, v21);
    objc_msgSend_setNeedsIndexing_(v29, v30, 0);

    v33 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v31, v32);
    v36 = objc_msgSend_clientState(self, v34, v35);
    v39 = objc_msgSend_reason(self, v37, v38);
    objc_msgSend_reindexCompletedWithState_reason_(v33, v40, v36, v39);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)_indexSearchableItemsWithCompletionBlock:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  IMDIndexingAssertClientRequestQueue();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_searchableItems(self, v8, v9);
      v13 = objc_msgSend_count(v10, v11, v12);
      v16 = objc_msgSend_index(self, v14, v15);
      *buf = 136315650;
      v69 = "[IMDCoreSpotlightMessageReindexingJob _indexSearchableItemsWithCompletionBlock:]";
      v70 = 2048;
      v71 = v13;
      v72 = 2112;
      v73 = v16;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "%s Generated %lu items to index!. Using Index %@", buf, 0x20u);
    }
  }

  if ((objc_msgSend_hasMoreToIndex(self, v5, v6) & 1) == 0)
  {
    v19 = objc_msgSend_clientState(self, v17, v18);
    objc_msgSend_setLastIndexedRowID_(v19, v20, 1);
  }

  v21 = objc_msgSend_clientState(self, v17, v18);
  v24 = objc_msgSend_messagesWithItemsGeneratedCount(self, v22, v23);
  v27 = objc_msgSend_initialIndexedMessages(v21, v25, v26);
  objc_msgSend_setInitialIndexedMessages_(v21, v28, v27 + v24);

  v31 = objc_msgSend_clientState(self, v29, v30);
  v34 = objc_msgSend_messageRecordCount(self, v32, v33);
  v37 = objc_msgSend_processedMessageRecords(v31, v35, v36);
  objc_msgSend_setProcessedMessageRecords_(v31, v38, v37 + v34);

  v39 = [IMDCoreSpotlightIndexingJob alloc];
  v42 = objc_msgSend_index(self, v40, v41);
  v43 = [IMDIndexingContext alloc];
  v46 = objc_msgSend_reason(self, v44, v45);
  v48 = objc_msgSend_initForReindexing_reason_(v43, v47, 1, v46);
  v50 = objc_msgSend_initWithIndex_context_(v39, v49, v42, v48);

  v53 = objc_msgSend_clientState(self, v51, v52);
  objc_msgSend_setClientState_(v50, v54, v53);

  v57 = objc_msgSend_searchableItems(self, v55, v56);
  objc_msgSend_setSearchableItems_(v50, v58, v57);

  v61 = objc_msgSend_rejectedItems(self, v59, v60);
  objc_msgSend_setRejectedItems_(v50, v62, v61);

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_1B7B98374;
  v66[3] = &unk_1E7CBB398;
  v66[4] = self;
  v67 = v4;
  v63 = v4;
  objc_msgSend_runWithCompletion_(v50, v64, v66);

  v65 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldIndexMore
{
  hasMoreToIndex = objc_msgSend_hasMoreToIndex(self, a2, v2);
  if (hasMoreToIndex)
  {
    v7 = objc_msgSend_indexedCount(self, v5, v6);
    LOBYTE(hasMoreToIndex) = v7 < objc_msgSend_batchSize(self, v8, v9);
  }

  return hasMoreToIndex;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_timingCollection(self, v5, v6);
  objc_msgSend_startTimingForKey_(v7, v8, @"totalTime");

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1B7AE1A84;
  v19 = sub_1B7AE2558;
  v20 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B98648;
  aBlock[3] = &unk_1E7CBB8D0;
  aBlock[4] = self;
  v14 = &v15;
  v9 = v4;
  v13 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v16[5];
  v16[5] = v10;

  (*(v16[5] + 16))();
  _Block_object_dispose(&v15, 8);
}

- (IMDCoreSpotlightMessageReindexingJobDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end