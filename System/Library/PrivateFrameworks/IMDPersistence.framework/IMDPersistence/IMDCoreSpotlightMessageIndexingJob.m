@interface IMDCoreSpotlightMessageIndexingJob
- (IMDCoreSpotlightMessageIndexingJob)initWithContext:(id)a3 timing:(id)a4;
- (void)finishWithCompletion:(id)a3;
- (void)processMessageDictionary:(id)a3 chatDictionary:(id)a4;
@end

@implementation IMDCoreSpotlightMessageIndexingJob

- (IMDCoreSpotlightMessageIndexingJob)initWithContext:(id)a3 timing:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = IMDCoreSpotlightMessageIndexingJob;
  v9 = [(IMDCoreSpotlightMessageIndexingJob *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    populatedChatItems = v9->_populatedChatItems;
    v9->_populatedChatItems = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    indexableItems = v9->_indexableItems;
    v9->_indexableItems = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rejectedItems = v9->_rejectedItems;
    v9->_rejectedItems = v14;

    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v9->_timing, a4);
  }

  return v9;
}

- (void)processMessageDictionary:(id)a3 chatDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_timing(self, v8, v9);
  objc_msgSend_startTimingForKey_(v10, v11, @"generate indexable item");

  v14 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v12, v13);
  v17 = objc_msgSend_searchableItemGenerator(v14, v15, v16);
  v20 = objc_msgSend_context(self, v18, v19);
  v23 = objc_msgSend_rejectedItems(self, v21, v22);
  v26 = objc_msgSend_populatedChatItems(self, v24, v25);
  v36 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_populatedChatItems_(v17, v27, v7, v6, v20, v23, v26);

  v30 = objc_msgSend_indexableItems(self, v28, v29);
  objc_msgSend_addObjectsFromArray_(v30, v31, v36);

  v34 = objc_msgSend_timing(self, v32, v33);
  objc_msgSend_stopTimingForKey_(v34, v35, @"generate indexable item");
}

- (void)finishWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [IMDCoreSpotlightIndexingJob alloc];
  v8 = objc_msgSend_context(self, v6, v7);
  v19 = objc_msgSend_initWithContext_(v5, v9, v8);

  v12 = objc_msgSend_indexableItems(self, v10, v11);
  objc_msgSend_setSearchableItems_(v19, v13, v12);

  v16 = objc_msgSend_rejectedItems(self, v14, v15);
  objc_msgSend_setRejectedItems_(v19, v17, v16);

  objc_msgSend_runWithCompletion_(v19, v18, v4);
}

@end