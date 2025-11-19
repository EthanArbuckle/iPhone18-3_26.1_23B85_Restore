@interface IMDCoreSpotlightIndexingJob
+ (id)_timeoutError;
- (BOOL)_contextHasEffectsOnClientState;
- (BOOL)_shouldWithdrawRejectionsFromSpotlight;
- (IMDCoreSpotlightIndexingJob)initWithContext:(id)a3;
- (IMDCoreSpotlightIndexingJob)initWithIndex:(id)a3 context:(id)a4;
- (void)_applyContextToClientState;
- (void)_beginIndexing;
- (void)_donateToSuggestions;
- (void)_finishIndexingAndSaveClientState;
- (void)_indexToSpotlight;
- (void)_loadClientStateIfNeeded;
- (void)_startJob;
- (void)_withdrawRejectionsFromSpotlight;
- (void)runWithCompletion:(id)a3;
@end

@implementation IMDCoreSpotlightIndexingJob

- (void)_startJob
{
  v28 = *MEMORY[0x1E69E9840];
  IMDIndexingAssertClientRequestQueue();
  objc_msgSend__beginIndexing(self, v3, v4);
  objc_msgSend__indexToSpotlight(self, v5, v6);
  objc_msgSend__withdrawRejectionsFromSpotlight(self, v7, v8);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_searchableItems(self, v12, v13);
      v17 = objc_msgSend_count(v14, v15, v16);
      v20 = objc_msgSend_transactionID(self, v18, v19);
      v24 = 134218242;
      v25 = v17;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Indexing %ld items to Spotlight and Suggestions - transaction ID %@", &v24, 0x16u);
    }
  }

  objc_msgSend__donateToSuggestions(self, v9, v10);
  objc_msgSend__finishIndexingAndSaveClientState(self, v21, v22);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_beginIndexing
{
  v4 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, a2, v2);
  v7 = objc_msgSend_index(self, v5, v6);
  objc_msgSend_beginIndexBatch(v7, v8, v9);

  v12 = objc_msgSend_group(self, v10, v11);
  dispatch_group_enter(v12);
}

- (void)_indexToSpotlight
{
  v4 = objc_msgSend_index(self, a2, v2);
  v7 = objc_msgSend_searchableItems(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BBA888;
  v9[3] = &unk_1E7CB6C58;
  v9[4] = self;
  objc_msgSend_indexSearchableItems_completionHandler_(v4, v8, v7, v9);
}

- (IMDCoreSpotlightIndexingJob)initWithIndex:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v19.receiver = self;
    v19.super_class = IMDCoreSpotlightIndexingJob;
    v9 = [(IMDCoreSpotlightIndexingJob *)&v19 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_index, a3);
      objc_storeStrong(&v10->_context, a4);
      v13 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v11, v12);
      transactionID = v10->_transactionID;
      v10->_transactionID = v13;

      v15 = dispatch_group_create();
      group = v10->_group;
      v10->_group = v15;
    }

    self = v10;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (IMDCoreSpotlightIndexingJob)initWithContext:(id)a3
{
  v4 = a3;
  objc_msgSend_reason(v4, v5, v6);
  v7 = _IMDSpotlightIndexForIndexingReason();
  v9 = objc_msgSend_initWithIndex_context_(self, v8, v7, v4);

  return v9;
}

+ (id)_timeoutError
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = *MEMORY[0x1E69A7C30];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = @"Timed out talking to Spotlight.";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v11, &v10, 1);
  v7 = objc_msgSend_initWithDomain_code_userInfo_(v2, v6, v3, 2, v5);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  if (IMDCoreSpotlightDisabled(v4, v5, v6))
  {
    v4[2](v4, 0);
  }

  else if (objc_msgSend_forceSpotlightIndexingErrors(MEMORY[0x1E69A7FF8], v7, v8))
  {
    v11 = objc_msgSend__timeoutError(IMDCoreSpotlightIndexingJob, v9, v10);
    (v4)[2](v4, v11);
  }

  else
  {
    objc_msgSend__startJob(self, v9, v10);
    v14 = objc_msgSend_group(self, v12, v13);
    v15 = IMDIndexingClientRequestQueue();
    dispatch_time(0, 60000000000);
    v16 = v4;
    IMDispatchGroupNotifyWithTimeout();
  }
}

- (BOOL)_shouldWithdrawRejectionsFromSpotlight
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_rejectedItems(self, a2, v2);
  if (!objc_msgSend_count(v4, v5, v6))
  {

    goto LABEL_6;
  }

  v9 = objc_msgSend_context(self, v7, v8);
  objc_msgSend_reason(v9, v10, v11);
  IsIncomingMessage = IMCoreSpotlightIndexReasonIsIncomingMessage();

  if (IsIncomingMessage)
  {
LABEL_6:
    LOBYTE(v15) = 0;
    goto LABEL_7;
  }

  if ((objc_msgSend_withdrawDonationsForFailedPreviewGenerations(MEMORY[0x1E69A7FF8], v13, v14) & 1) == 0)
  {
    v15 = IMOSLoggingEnabled();
    if (!v15)
    {
      goto LABEL_7;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = objc_msgSend_rejectedItems(self, v18, v19);
      v24 = 134217984;
      v25 = objc_msgSend_count(v20, v21, v22);
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "not deleting %ld items from Spotlight due to override", &v24, 0xCu);
    }

    goto LABEL_6;
  }

  LOBYTE(v15) = 1;
LABEL_7:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)_withdrawRejectionsFromSpotlight
{
  v36 = *MEMORY[0x1E69E9840];
  if (objc_msgSend__shouldWithdrawRejectionsFromSpotlight(self, a2, v2))
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = self;
    v7 = objc_msgSend_rejectedItems(self, v5, v6);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v31, v35, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = MEMORY[0x1E696AD98];
          v17 = objc_msgSend_reason(v15, v10, v11);
          v19 = objc_msgSend_numberWithInteger_(v16, v18, v17);
          v23 = objc_msgSend_objectForKeyedSubscript_(v4, v20, v19);
          if (!v23)
          {
            v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
            objc_msgSend_setObject_forKeyedSubscript_(v4, v24, v23, v19);
          }

          v25 = objc_msgSend_proposedIdentifier(v15, v21, v22);
          objc_msgSend_addObject_(v23, v26, v25);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v31, v35, 16);
      }

      while (v12);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1B7BBACF8;
    v30[3] = &unk_1E7CBC1B0;
    v30[4] = v29;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v27, v30);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_donateToSuggestions
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_searchableItems(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    if (qword_1EBA53B40 != -1)
    {
      sub_1B7CFA520();
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = objc_msgSend_searchableItems(self, v11, v12);
        v16 = objc_msgSend_count(v13, v14, v15);
        v19 = objc_msgSend_transactionID(self, v17, v18);
        *buf = 134218242;
        v51 = v16;
        v52 = 2112;
        v53 = v19;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Donating %ld items to Suggestions with transaction ID %@", buf, 0x16u);
      }
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = objc_msgSend_searchableItems(self, v8, v9);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v46, v56, 16);
    if (v23)
    {
      v25 = *v47;
      *&v24 = 138412802;
      v43 = v24;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v46 + 1) + 8 * i);
          if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v21, v22, v43) && IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v33 = objc_msgSend_uniqueIdentifier(v27, v31, v32);
              v36 = objc_msgSend_domainIdentifier(v27, v34, v35);
              v39 = objc_msgSend_transactionID(self, v37, v38);
              *buf = v43;
              v51 = v33;
              v52 = 2112;
              v53 = v36;
              v54 = 2112;
              v55 = v39;
              _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Donating item ID %@ domain %@ to Suggestions with transaction ID %@", buf, 0x20u);
            }
          }

          v40 = objc_msgSend_group(self, v28, v29);
          dispatch_group_enter(v40);

          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = sub_1B7BBB388;
          v45[3] = &unk_1E7CBC1D8;
          v45[4] = v27;
          v45[5] = self;
          objc_msgSend_suggestionsFromMessage_options_completionHandler_(qword_1EBA53B38, v41, v27, 3, v45);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v46, v56, 16);
      }

      while (v23);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (BOOL)_contextHasEffectsOnClientState
{
  v4 = objc_msgSend_context(self, a2, v2);
  v7 = objc_msgSend_messagesContributingToFullReindex(v4, v5, v6);

  if (v7 > 0)
  {
    return 1;
  }

  v10 = objc_msgSend_context(self, v8, v9);
  v13 = objc_msgSend_chatsContributingToFullReindex(v10, v11, v12);

  if (v13 > 0)
  {
    return 1;
  }

  v18 = objc_msgSend_context(self, v14, v15);
  v21 = objc_msgSend_oldestFullReindexMessageGUID(v18, v19, v20);
  v16 = v21 != 0;

  return v16;
}

- (void)_loadClientStateIfNeeded
{
  v4 = objc_msgSend_clientState(self, a2, v2);

  if (!v4)
  {
    v7 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v5, v6);
    v13 = 0;
    v9 = objc_msgSend_currentClientStateWithError_(v7, v8, &v13);
    v10 = v13;

    if (v10)
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFA534(v10, self, v12);
      }
    }

    else
    {
      objc_msgSend_setClientState_(self, v11, v9);
    }
  }
}

- (void)_applyContextToClientState
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (objc_msgSend__contextHasEffectsOnClientState(self, a2, v2))
  {
    objc_msgSend__loadClientStateIfNeeded(self, v4, v5);
    v8 = objc_msgSend_clientState(self, v6, v7);

    if (v8)
    {
      v11 = objc_msgSend_clientState(self, v9, v10);
      v14 = objc_msgSend_context(self, v12, v13);
      v17 = objc_msgSend_messagesContributingToFullReindex(v14, v15, v16);
      v20 = objc_msgSend_initialIndexedMessages(v11, v18, v19);
      objc_msgSend_setInitialIndexedMessages_(v11, v21, v20 + v17);

      v24 = objc_msgSend_clientState(self, v22, v23);
      v27 = objc_msgSend_context(self, v25, v26);
      v30 = objc_msgSend_chatsContributingToFullReindex(v27, v28, v29);
      v33 = objc_msgSend_initialIndexedChats(v24, v31, v32);
      objc_msgSend_setInitialIndexedChats_(v24, v34, v33 + v30);

      v37 = objc_msgSend_context(self, v35, v36);
      v40 = objc_msgSend_oldestFullReindexMessageGUID(v37, v38, v39);

      if (v40)
      {
        v43 = objc_msgSend_synchronousDatabase(IMDDatabase, v41, v42);
        v46 = objc_msgSend_context(self, v44, v45);
        v49 = objc_msgSend_oldestFullReindexMessageGUID(v46, v47, v48);
        v55[0] = v49;
        v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v50, v55, 1);
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = sub_1B7BBB8C4;
        v54[3] = &unk_1E7CBC200;
        v54[4] = self;
        objc_msgSend_fetchMessageRowIDsForGUIDs_completionHandler_(v43, v52, v51, v54);
      }
    }
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (void)_finishIndexingAndSaveClientState
{
  v46 = *MEMORY[0x1E69E9840];
  objc_msgSend__applyContextToClientState(self, a2, v2);
  v6 = objc_msgSend_clientState(self, v4, v5);
  v39 = 0;
  v8 = objc_msgSend_dataWithError_(v6, v7, &v39);
  v9 = v39;

  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA684(v9, self, v10);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_searchableItems(self, v14, v15);
      v19 = objc_msgSend_count(v16, v17, v18);
      v22 = objc_msgSend_context(self, v20, v21);
      objc_msgSend_reason(v22, v23, v24);
      v25 = NSStringFromIMCoreSpotlightIndexReason();
      v28 = objc_msgSend_transactionID(self, v26, v27);
      *buf = 134218498;
      v41 = v19;
      v42 = 2112;
      v43 = v25;
      v44 = 2112;
      v45 = v28;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Indexing %ld searchable items due to %@ - transaction %@", buf, 0x20u);
    }
  }

  v29 = objc_msgSend_index(self, v11, v12);
  v32 = objc_msgSend_context(self, v30, v31);
  objc_msgSend_reason(v32, v33, v34);
  v35 = IMCSIndexReasonFromIMIndexReason();
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1B7BBBC24;
  v38[3] = &unk_1E7CB6C58;
  v38[4] = self;
  objc_msgSend_endIndexBatchWithExpectedClientState_newClientState_reason_completionHandler_(v29, v36, 0, v8, v35, v38);

  v37 = *MEMORY[0x1E69E9840];
}

@end