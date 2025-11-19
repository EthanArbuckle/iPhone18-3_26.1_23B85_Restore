@interface IMDCoreSpotlightChatReindexingJob
- (IMDCoreSpotlightChatReindexingJob)initWithIndex:(id)a3 reason:(int64_t)a4 delegate:(id)a5;
- (IMDCoreSpotlightChatReindexingJobDelegate)delegate;
- (id)_chatDictionaryForChatAtIndex:(unint64_t)a3 withChats:(id)a4;
- (id)_newSearchableChatItemsForChats:(id)a3;
- (id)_nextBatchOfSearchableItems;
- (void)_indexAllSearchableItemsWithCompletionBlock:(id)a3;
- (void)_indexNextBatchOfSearchableItemsWithCompletionBlock:(id)a3;
- (void)runWithCompletionBlock:(id)a3;
@end

@implementation IMDCoreSpotlightChatReindexingJob

- (IMDCoreSpotlightChatReindexingJob)initWithIndex:(id)a3 reason:(int64_t)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v33.receiver = self;
  v33.super_class = IMDCoreSpotlightChatReindexingJob;
  v11 = [(IMDCoreSpotlightChatReindexingJob *)&v33 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_index, a3);
    v12->_reason = a4;
    objc_storeWeak(&v12->_delegate, v10);
    v13 = objc_alloc_init(MEMORY[0x1E69A6170]);
    timingCollection = v12->_timingCollection;
    v12->_timingCollection = v13;

    v15 = objc_alloc_init(IMDChatRecordBatchFetcher);
    batchFetcher = v12->_batchFetcher;
    v12->_batchFetcher = v15;

    v19 = objc_msgSend_chatBatchSize(MEMORY[0x1E69A7FF8], v17, v18);
    objc_msgSend_setBatchSize_(v12->_batchFetcher, v20, v19);
    v23 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v21, v22);
    v32 = 0;
    v25 = objc_msgSend_currentClientStateWithError_(v23, v24, &v32);
    v26 = v32;
    clientState = v12->_clientState;
    v12->_clientState = v25;

    if (v26)
    {
      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF8DA4(v26, v28);
      }

      v29 = objc_alloc_init(MEMORY[0x1E69A82A8]);
      v30 = v12->_clientState;
      v12->_clientState = v29;
    }
  }

  return v12;
}

- (id)_nextBatchOfSearchableItems
{
  v4 = objc_msgSend_timingCollection(self, a2, v2);
  objc_msgSend_startTimingForKey_(v4, v5, @"loadChats");

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1B7AE1A64;
  v34 = sub_1B7AE2548;
  v35 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1B7B930AC;
  v29[3] = &unk_1E7CBB6F0;
  v29[4] = self;
  v29[5] = &v30;
  IMDPersistencePerformBlock(v29, 1, v6);
  v9 = objc_msgSend_count(v31[5], v7, v8);
  v12 = objc_msgSend_processedChats(self, v10, v11);
  objc_msgSend_setProcessedChats_(self, v13, v12 + v9);
  v16 = objc_msgSend_timingCollection(self, v14, v15);
  objc_msgSend_stopTimingForKey_(v16, v17, @"loadChats");

  v20 = objc_msgSend_timingCollection(self, v18, v19);
  objc_msgSend_startTimingForKey_(v20, v21, @"generateItems");

  v23 = objc_msgSend__newSearchableChatItemsForChats_(self, v22, v31[5]);
  v26 = objc_msgSend_timingCollection(self, v24, v25);
  objc_msgSend_stopTimingForKey_(v26, v27, @"generateItems");

  _Block_object_dispose(&v30, 8);

  return v23;
}

- (void)_indexNextBatchOfSearchableItemsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend__nextBatchOfSearchableItems(self, v6, v7);
  if (objc_msgSend_count(v8, v9, v10))
  {
    v13 = objc_msgSend_clientState(self, v11, v12);
    v16 = objc_msgSend_count(v8, v14, v15);
    v19 = objc_msgSend_initialIndexedChats(v13, v17, v18);
    objc_msgSend_setInitialIndexedChats_(v13, v20, v19 + v16);

    v21 = [IMDCoreSpotlightIndexingJob alloc];
    v24 = objc_msgSend_index(self, v22, v23);
    v25 = [IMDIndexingContext alloc];
    v28 = objc_msgSend_reason(self, v26, v27);
    v30 = objc_msgSend_initForReindexing_reason_(v25, v29, 1, v28);
    v32 = objc_msgSend_initWithIndex_context_(v21, v31, v24, v30);

    v35 = objc_msgSend_clientState(self, v33, v34);
    objc_msgSend_setClientState_(v32, v36, v35);

    objc_msgSend_setSearchableItems_(v32, v37, v8);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1B7B932D4;
    v39[3] = &unk_1E7CBB328;
    v40 = v4;
    objc_msgSend_runWithCompletion_(v32, v38, v39);
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_indexAllSearchableItemsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B93380;
  v7[3] = &unk_1E7CBB718;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  objc_msgSend__indexNextBatchOfSearchableItemsWithCompletionBlock_(self, v6, v7);
}

- (id)_chatDictionaryForChatAtIndex:(unint64_t)a3 withChats:(id)a4
{
  v5 = a4;
  v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, a3);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1B7AE1A64;
  v19 = sub_1B7AE2548;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B934E8;
  v12[3] = &unk_1E7CBB6F0;
  v14 = &v15;
  v8 = v7;
  v13 = v8;
  IMDPersistencePerformBlock(v12, 1, v9);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)_newSearchableChatItemsForChats:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v8 = objc_msgSend_count(v4, v6, v7);
  v47 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  if (objc_msgSend_count(v4, v10, v11))
  {
    v15 = 0;
    *&v14 = 138412290;
    v46 = v14;
    do
    {
      v16 = objc_msgSend__chatDictionaryForChatAtIndex_withChats_(self, v12, v15, v4, v46);
      v18 = _IMDCoreSpotlightChatUIDForChatDictionary(v16);
      if (v18)
      {
        v19 = objc_msgSend_objectForKey_(v47, v17, v18);
        v22 = objc_msgSend_attributeSet(v19, v20, v21);
        v25 = objc_msgSend_lastUsedDate(v22, v23, v24);

        v29 = objc_msgSend_objectForKey_(v16, v26, @"lastMessageDate");
        if (v29 && v25 && objc_msgSend_compare_(v25, v27, v29) == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = v46;
              v49 = v18;
              _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Not indexing UID %@, already indexed newer record", buf, 0xCu);
            }
          }
        }

        else
        {
          v31 = objc_msgSend_delegate(self, v27, v28);
          v34 = objc_msgSend_searchableItemGenerator(v31, v32, v33);
          MessageDate = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_(v34, v35, v16, 0);

          if (MessageDate)
          {
            objc_msgSend_setObject_forKey_(v47, v37, MessageDate, v18);
          }
        }
      }

      ++v15;
    }

    while (v15 < objc_msgSend_count(v4, v38, v39));
  }

  v40 = objc_msgSend_allValues(v47, v12, v13);
  v43 = objc_msgSend_copy(v40, v41, v42);

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

- (void)runWithCompletionBlock:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  IMDIndexingAssertClientRequestQueue();
  v7 = objc_msgSend_chatBatchSize(MEMORY[0x1E69A7FF8], v5, v6);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_clientState(self, v11, v12);
      *buf = 134218240;
      v24 = objc_msgSend_initialTotalChats(v13, v14, v15);
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "About to index %llu chats in batches of %lu", buf, 0x16u);
    }
  }

  v16 = objc_msgSend_timingCollection(self, v8, v9);
  objc_msgSend_startTimingForKey_(v16, v17, @"totalTime");

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1B7B93948;
  v21[3] = &unk_1E7CBB398;
  v21[4] = self;
  v22 = v4;
  v18 = v4;
  objc_msgSend__indexAllSearchableItemsWithCompletionBlock_(self, v19, v21);

  v20 = *MEMORY[0x1E69E9840];
}

- (IMDCoreSpotlightChatReindexingJobDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end