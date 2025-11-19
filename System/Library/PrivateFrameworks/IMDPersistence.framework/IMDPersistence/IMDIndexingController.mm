@interface IMDIndexingController
+ (id)queryProviderWithBlockingXPC:(BOOL)a3;
+ (id)sharedController;
- (BOOL)_itemDonationTriggersChatPostProcessingForContext:(id)a3;
- (BOOL)isIndexingDisabled;
- (IMDIndexingController)init;
- (NSArray)integrations;
- (id)_contextForDeletion:(id)a3;
- (id)_createAggregateMessageIndexingJobWithSize:(int64_t)a3 context:(id)a4;
- (id)_createBatchFetchingMessageIndexingJobWithSize:(int64_t)a3 context:(id)a4 batchFetcher:(id)a5;
- (int64_t)maxRowID;
- (int64_t)totalChats;
- (int64_t)totalMessages;
- (void)_beginThrottlingDueToIndexError:(id)a3;
- (void)_checkForIndexedGUIDsWithSelector:(SEL)a3 performBlock:(id)a4 completionBlock:(id)a5;
- (void)_deferGUIDs:(id)a3 forFlag:(unint64_t)a4 context:(id)a5;
- (void)_deleteBatchOfMessagesWithBatchAmount:(int64_t)a3 reason:(int64_t)a4 completionHandler:(id)a5;
- (void)_indexMessageGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)_indexNextBatchOfMessagesWithFetcher:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)_performDeferrableManagerOperationWithFlag:(unint64_t)a3 context:(id)a4 guids:(id)a5 selector:(SEL)a6 invokeBlock:(id)a7 completionBlock:(id)a8;
- (void)_performManagerOperationWithSelector:(SEL)a3 invokeBlock:(id)a4 completionBlock:(id)a5;
- (void)addChatGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)addMessageGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)beginThrottlingForIdentifier:(id)a3 untilDate:(id)a4;
- (void)checkForIndexedAttachmentGUIDs:(id)a3 completionBlock:(id)a4;
- (void)checkForIndexedChatGUIDs:(id)a3 completionBlock:(id)a4;
- (void)checkForIndexedMessageGUIDs:(id)a3 completionBlock:(id)a4;
- (void)copyIndexableMessageDictionariesWithLimit:(int64_t)a3 requireIndexableAttachments:(BOOL)a4 completionHandler:(id)a5;
- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)a3;
- (void)deleteAttachmentGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)deleteChatGUIDs:(id)a3 context:(id)a4 completionBlock:(id)a5;
- (void)deleteMessageGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)finishThrottlingForIdentifier:(id)a3;
- (void)indexNextMessageBatchIfNeeded:(unint64_t)a3 reason:(int64_t)a4 completion:(id)a5;
- (void)indexableMessageGUIDsFromGUIDs:(id)a3 ignoreRejections:(BOOL)a4 completionBlock:(id)a5;
- (void)markAttachmentWithFileURL:(id)a3 sender:(id)a4 recipients:(id)a5 isIncoming:(BOOL)a6 completionHandler:(id)a7;
- (void)postProcessIndexingForChatDictionary:(id)a3 context:(id)a4;
- (void)postProcessIndexingForItem:(id)a3 chatDictionary:(id)a4 context:(id)a5;
- (void)reindexRecentMessagesWithHandles:(id)a3 batchDeferralTime:(int64_t)a4 messageAge:(double)a5 reason:(int64_t)a6;
- (void)scheduleUpdateForDeletedMessagesWithReason:(int64_t)a3;
- (void)setIndexingDisabled:(BOOL)a3;
- (void)setNeedsMessageReindexingWithContext:(id)a3 completion:(id)a4;
@end

@implementation IMDIndexingController

+ (id)sharedController
{
  v2 = IMDIsRunningInDatabaseServerProcess();
  if ((v2 & 1) == 0)
  {
    sub_1B7CFB888(v2, v3, v4);
  }

  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v3, v4);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v5, v6, v7);

  if ((isSpotlightRefactorEnabled & 1) == 0)
  {
    sub_1B7CFB914(v9, v10, v11);
  }

  if (qword_1EBA53AC8 != -1)
  {
    sub_1B7CFB9A0();
  }

  v12 = qword_1EBA53AC0;

  return v12;
}

+ (id)queryProviderWithBlockingXPC:(BOOL)a3
{
  v3 = a3;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
    isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v7, v8, v9);

    if (isSpotlightRefactorEnabled)
    {
      objc_msgSend_sharedController(a1, v11, v12);
    }

    else
    {
      objc_msgSend_sharedProvider(IMDLegacyCoreSpotlightQueryProvider, v11, v12);
    }
  }

  else if (v3)
  {
    objc_msgSend_synchronousIndexingQueryProvider(IMDPersistenceService, v5, v6);
  }

  else
  {
    objc_msgSend_indexingQueryProvider(IMDPersistenceService, v5, v6);
  }
  v13 = ;

  return v13;
}

- (IMDIndexingController)init
{
  v21[4] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = IMDIndexingController;
  v2 = [(IMDIndexingController *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMDCoreSpotlightIndexingManager);
    v21[0] = v3;
    v6 = objc_msgSend_sharedController(IMDCoreRecentsController, v4, v5);
    v21[1] = v6;
    v9 = objc_msgSend_sharedManager(IMDSmartRepliesManager, v7, v8);
    v21[2] = v9;
    v12 = objc_msgSend_sharedController(IMDINInteractionDonationController, v10, v11);
    v21[3] = v12;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v21, 4);
    integrations = v2->_integrations;
    v2->_integrations = v14;

    v16 = objc_alloc_init(MEMORY[0x1E696AD10]);
    indexingDisabledLock = v2->_indexingDisabledLock;
    v2->_indexingDisabledLock = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_deferGUIDs:(id)a3 forFlag:(unint64_t)a4 context:(id)a5
{
  v31 = a3;
  v7 = a5;
  if ((objc_msgSend_runningViaBGST(v7, v8, v9) & 1) == 0)
  {
    v12 = objc_msgSend_laneOverride(v7, v10, v11);

    if (v12)
    {
      v15 = objc_msgSend_laneOverride(v7, v13, v14);
      v18 = objc_msgSend_unsignedIntegerValue(v15, v16, v17);
    }

    else
    {
      v19 = objc_msgSend_reason(v7, v13, v14);
      v18 = objc_msgSend_laneForFlag_reason_(IMDPersistentTaskUtilities, v20, a4, v19);
    }

    v21 = [IMDPersistentTaskQueryProvider alloc];
    v23 = objc_msgSend_initWithBlockingDatabaseCalls_(v21, v22, 1);
    v26 = objc_msgSend_reason(v7, v24, v25);
    v29 = objc_msgSend_dictionaryRepresentation(v7, v27, v28);
    objc_msgSend_scheduleGUIDs_flag_lane_reason_userInfo_completionBlock_(v23, v30, v31, a4, v18, v26, v29, &unk_1F2FA1330);
  }
}

- (void)_performDeferrableManagerOperationWithFlag:(unint64_t)a3 context:(id)a4 guids:(id)a5 selector:(SEL)a6 invokeBlock:(id)a7 completionBlock:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v20 = objc_msgSend_sharedController(IMDIndexThrottlingController, v18, v19);
  shouldDeferIndexingActionWithContext = objc_msgSend_shouldDeferIndexingActionWithContext_(v20, v21, v14);

  if (shouldDeferIndexingActionWithContext)
  {
    objc_msgSend__deferGUIDs_forFlag_context_(self, v23, v15, a3, v14);
    v26 = objc_msgSend_sharedController(IMDIndexThrottlingController, v24, v25);
    if (objc_msgSend_isThrottled(v26, v27, v28))
    {
      objc_msgSend__throttleError(self, v29, v30);
    }

    else
    {
      objc_msgSend__deferredError(self, v29, v30);
    }
    v32 = ;
    v17[2](v17, v32);
  }

  else
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1B7BCDA8C;
    v33[3] = &unk_1E7CBC488;
    v33[4] = self;
    v34 = v15;
    v37 = a3;
    v35 = v14;
    v36 = v17;
    objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v31, a6, v16, v33);
  }
}

- (void)_performManagerOperationWithSelector:(SEL)a3 invokeBlock:(id)a4 completionBlock:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v38 = a4;
  v37 = a5;
  v10 = objc_msgSend_integrations(self, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);

  if (!v13)
  {
    v21 = v37;
    (*(v37 + 2))(v37, 0);
    goto LABEL_27;
  }

  v16 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v14, v15);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v16, v17, v18);

  if (!isUnderFirstDataProtectionLock)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v52 = 0x3032000000;
    v53 = sub_1B7AE1B20;
    v54 = sub_1B7AE2598;
    v55 = 0;
    if (qword_1EBA542F8 != -1)
    {
      sub_1B7CFB9B4();
    }

    v22 = dispatch_group_create();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = objc_msgSend_integrations(self, v23, v24);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v46, v50, 16);
    if (v27)
    {
      v28 = 0;
      v29 = *v47;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v46 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            dispatch_group_enter(v22);
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = sub_1B7BCDF5C;
            v42[3] = &unk_1E7CBC4D8;
            v33 = v38;
            v42[4] = v31;
            v44 = v33;
            p_buf = &buf;
            v43 = v22;
            objc_msgSend__performSpotlightRequestWithBlock_(self, v34, v42);

            v28 = 1;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v32, &v46, v50, 16);
      }

      while (v27);

      if (v28)
      {
        v35 = dispatch_get_global_queue(-32768, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B7BCE140;
        block[3] = &unk_1E7CBC388;
        v41 = &buf;
        v40 = v37;
        dispatch_group_notify(v22, v35, block);

LABEL_25:
        _Block_object_dispose(&buf, 8);

        goto LABEL_26;
      }
    }

    else
    {
    }

    (*(v37 + 2))(v37, 0);
    goto LABEL_25;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = sel_getName(a3);
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, " => Before first unlock, skipping donation operation %s", &buf, 0xCu);
    }
  }

  v21 = v37;
  if (v37)
  {
    (*(v37 + 2))(v37, 0);
LABEL_26:
    v21 = v37;
  }

LABEL_27:

  v36 = *MEMORY[0x1E69E9840];
}

- (id)_contextForDeletion:(id)a3
{
  v3 = a3;
  if ((objc_msgSend_ignoreThrottle(v3, v4, v5) & 1) == 0)
  {
    v8 = objc_msgSend_copy(v3, v6, v7);

    objc_msgSend_setIgnoreThrottle_(v8, v9, 1);
    v3 = v8;
  }

  return v3;
}

- (void)deleteAttachmentGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = objc_msgSend__contextForDeletion_(self, v11, v9);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7BCE3BC;
  v16[3] = &unk_1E7CBC500;
  v17 = v8;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  objc_msgSend__performDeferrableManagerOperationWithFlag_context_guids_selector_invokeBlock_completionBlock_(self, v15, 5, v12, v14, sel_deleteAttachmentGUIDs_reason_completionHandler_, v16, v10);
}

- (void)deleteMessageGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_msgSend_count(v8, v11, v12))
  {
    v14 = objc_msgSend__contextForDeletion_(self, v13, v9);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7BCE5E0;
    v17[3] = &unk_1E7CBC500;
    v18 = v8;
    v19 = v9;
    objc_msgSend__performDeferrableManagerOperationWithFlag_context_guids_selector_invokeBlock_completionBlock_(self, v15, 4, v14, v18, sel_deleteMessageGUIDs_reason_completionHandler_, v17, v10);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Attempted to delete messages without providing guids. Bailing.", buf, 2u);
      }
    }

    if (v10)
    {
      v10[2](v10, 0);
    }
  }
}

- (void)deleteChatGUIDs:(id)a3 context:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = objc_msgSend__contextForDeletion_(self, v11, v9);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7BCE764;
  v16[3] = &unk_1E7CBC500;
  v17 = v8;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  objc_msgSend__performDeferrableManagerOperationWithFlag_context_guids_selector_invokeBlock_completionBlock_(self, v15, 6, v12, v14, sel_deleteChatGUIDs_reason_completionHandler_, v16, v10);
}

- (id)_createAggregateMessageIndexingJobWithSize:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [_IMDAggregateMessageIndexingJob alloc];
  v10 = objc_msgSend_integrations(self, v8, v9);
  v12 = objc_msgSend_initWithIntegrations_size_context_(v7, v11, v10, a3, v6);

  return v12;
}

- (id)_createBatchFetchingMessageIndexingJobWithSize:(int64_t)a3 context:(id)a4 batchFetcher:(id)a5
{
  v8 = a5;
  v10 = objc_msgSend__createAggregateMessageIndexingJobWithSize_context_(self, v9, a3, a4);
  if (v10)
  {
    v11 = [_IMDBatchFetchingMessageIndexingJob alloc];
    v13 = objc_msgSend_initWithAggregateIndexingJob_batchFetcher_(v11, v12, v10, v8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_indexNextBatchOfMessagesWithFetcher:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = objc_msgSend_batchSize(v10, v11, v12);
  v15 = objc_msgSend__createBatchFetchingMessageIndexingJobWithSize_context_batchFetcher_(self, v14, v13, v9, v10);

  if (v15)
  {
    objc_msgSend_setRunsOneBatch_(v15, v16, 1);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7BCEA30;
    v19[3] = &unk_1E7CBB328;
    v17 = v8;
    v20 = v17;
    if ((objc_msgSend_runWithCompletion_(v15, v18, v19) & 1) == 0)
    {
      (*(v17 + 2))(v17, 0, 0);
    }
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0);
  }
}

- (void)_indexMessageGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  IMDIndexingAssertClientRequestQueue();
  if (objc_msgSend_count(v8, v11, v12))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1B7BCEF00;
    aBlock[3] = &unk_1E7CB6798;
    aBlock[4] = self;
    v13 = v8;
    v54 = v13;
    v14 = v9;
    v55 = v14;
    v15 = _Block_copy(aBlock);
    v18 = objc_msgSend_sharedController(IMDIndexThrottlingController, v16, v17);
    shouldDeferIndexingActionWithContext = objc_msgSend_shouldDeferIndexingActionWithContext_(v18, v19, v14);

    if (shouldDeferIndexingActionWithContext)
    {
      v15[2](v15);
      v25 = objc_msgSend__throttleError(self, v23, v24);
      v10[2](v10, v25);
LABEL_30:

      goto LABEL_31;
    }

    isReindexing = objc_msgSend_isReindexing(v14, v21, v22);
    v28 = IMOSLoggingEnabled();
    if (isReindexing)
    {
      if (v28)
      {
        v29 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v32 = objc_msgSend_count(v13, v30, v31);
          *buf = 67109120;
          v57 = v32;
          _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Request to re-index messages with messages count: %d", buf, 8u);
        }

LABEL_18:
      }
    }

    else if (v28)
    {
      v29 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v35 = objc_msgSend_count(v13, v33, v34);
        *buf = 67109120;
        v57 = v35;
        _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Request to index messages with messages count: %d", buf, 8u);
      }

      goto LABEL_18;
    }

    v25 = objc_alloc_init(IMDMessageRecordBatchFetcher);
    v37 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v36, @"%K IN %@", *MEMORY[0x1E69A7168], v13);
    objc_msgSend_setPredicate_(v25, v38, v37);

    v41 = objc_msgSend_count(v13, v39, v40);
    v43 = objc_msgSend__createBatchFetchingMessageIndexingJobWithSize_context_batchFetcher_(self, v42, v41, v14, v25);
    if (v43)
    {
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_1B7BCEF5C;
      v48[3] = &unk_1E7CBC528;
      v49 = v13;
      v50 = self;
      v51 = v15;
      v44 = v10;
      v52 = v44;
      if ((objc_msgSend_runWithCompletion_(v43, v45, v48) & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "Didn't index anything", buf, 2u);
          }
        }

        v44[2](v44, 0);
      }
    }

    else if (v10)
    {
      v10[2](v10, 0);
    }

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Trying to reindex messages with an empty guids array", buf, 2u);
    }
  }

  if (v10)
  {
    v10[2](v10, 0);
  }

LABEL_31:

  v47 = *MEMORY[0x1E69E9840];
}

- (void)_beginThrottlingDueToIndexError:(id)a3
{
  v4 = objc_msgSend_sharedController(IMDIndexThrottlingController, a2, a3);
  objc_msgSend_beginThrottlingForIdentifier_untilDate_(v4, v3, @"com.apple.messages.indexing", 0);
}

- (void)addMessageGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BCF134;
  v15[3] = &unk_1E7CB70F8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v14, v15);
}

- (void)addChatGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7BCF284;
  v17[3] = &unk_1E7CBC500;
  v18 = v8;
  v19 = v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BCF340;
  v15[3] = &unk_1E7CBB328;
  v16 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  objc_msgSend__performDeferrableManagerOperationWithFlag_context_guids_selector_invokeBlock_completionBlock_(self, v14, 3, v12, v13, sel_addChatGUIDs_context_completionHandler_, v17, v15);
}

- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)a3
{
  v11 = a3;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  isMessagesAppDeletionEnabled = objc_msgSend_isMessagesAppDeletionEnabled(v6, v7, v8);

  if (isMessagesAppDeletionEnabled)
  {
    objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v10, sel_deleteAllDonationsForAppDeletionWithCompletion_, &unk_1F2FA1350, v11);
  }

  else if (v11)
  {
    v11[2](v11, 0);
  }
}

- (void)setNeedsMessageReindexingWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_totalMessages(self, v8, v9);
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v11, v12);

    if (v14)
    {
      v17 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v15, v16);
      v20 = objc_msgSend_reason(v6, v18, v19);
      objc_msgSend_reindexInitiatedWithTotalMessages_reason_(v17, v21, v13, v20);
    }

    v22 = objc_msgSend_copy(v6, v15, v16);

    objc_msgSend_setReindexing_(v22, v23, 1);
    objc_msgSend_setRunningViaBGST_(v22, v24, 1);
    objc_msgSend_setFullReindex_(v22, v25, 1);
    v28 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v26, v27);
    isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v28, v29, v30);

    if (isSpotlightReindexRefactorEnabled)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = sub_1B7BCF728;
      v44[3] = &unk_1E7CBC570;
      v45 = v22;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_1B7BCF79C;
      v41[3] = &unk_1E7CBB398;
      v6 = v45;
      v42 = v6;
      v43 = v7;
      objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v32, sel_prepareForReindexingWithReason_completion_, v44, v41);

      v33 = v45;
    }

    else
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_1B7BCF8A8;
      v39[3] = &unk_1E7CBC570;
      v40 = v22;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1B7BCF91C;
      v36[3] = &unk_1E7CBC598;
      v36[4] = self;
      v6 = v40;
      v37 = v6;
      v38 = v7;
      objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v35, sel_setNeedsMessageReindexingWithReason_completion_, v39, v36);

      v33 = v40;
    }
  }

  else
  {
    v34 = IMLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Not scheduling reindex as we have no messages", buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)indexNextMessageBatchIfNeeded:(unint64_t)a3 reason:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v11, v12, v13);

  if (isSpotlightReindexRefactorEnabled)
  {
    v8[2](v8, 0);
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7BCFB04;
    v19[3] = &unk_1E7CBC5B8;
    v19[4] = a3;
    v19[5] = a4;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1B7BCFB14;
    v16[3] = &unk_1E7CBC5E0;
    v16[4] = self;
    v18 = a4;
    v17 = v8;
    objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v15, sel_indexNextMessageBatchIfNeeded_reason_completion_, v19, v16);
  }
}

- (void)reindexRecentMessagesWithHandles:(id)a3 batchDeferralTime:(int64_t)a4 messageAge:(double)a5 reason:(int64_t)a6
{
  v9 = a3;
  v10 = [IMDHandleReindexer alloc];
  v14 = objc_msgSend_initWithHandles_batchDeferralTime_messageAge_reason_(v10, v11, v9, a4, a6, a5);

  objc_msgSend_reindex(v14, v12, v13);
}

- (void)markAttachmentWithFileURL:(id)a3 sender:(id)a4 recipients:(id)a5 isIncoming:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a3;
  v18 = objc_msgSend_url(v15, v16, v17);
  v21 = objc_msgSend_url(v15, v19, v20);

  v24 = objc_msgSend_path(v21, v22, v23);

  if (!objc_msgSend_length(v24, v25, v26) || (objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], v27, v28), v29 = objc_claimAutoreleasedReturnValue(), AccessToPath = IMNSXPCConnectionHasReadAccessToPath(), v29, (AccessToPath & 1) == 0))
  {
LABEL_8:
    v14[2](v14, 0);
    goto LABEL_9;
  }

  if ((objc_msgSend_startAccessingSecurityScopedResource(v18, v31, v32) & 1) == 0)
  {
    v34 = IMLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9E98(v18, v34);
    }

    goto LABEL_8;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1B7BCFEB8;
  v38[3] = &unk_1E7CBC630;
  v39 = v24;
  v40 = v12;
  v41 = v13;
  v42 = a6;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1B7BD002C;
  v35[3] = &unk_1E7CBB398;
  v36 = v18;
  v37 = v14;
  objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v33, sel_markAttachmentWithFilePath_sender_recipients_isIncoming_completionHandler_, v38, v35);

LABEL_9:
}

- (void)_deleteBatchOfMessagesWithBatchAmount:(int64_t)a3 reason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BD0124;
  v11[3] = &unk_1E7CBC680;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v9 = v8;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v10, v11);
}

- (void)scheduleUpdateForDeletedMessagesWithReason:(int64_t)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BD05F8;
  v4[3] = &unk_1E7CB8680;
  v4[4] = self;
  v4[5] = a3;
  v3 = _Block_copy(v4);
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    _IMDPerformBlockWithDelay(v3);
  }
}

- (void)_checkForIndexedGUIDsWithSelector:(SEL)a3 performBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B7BD07D0;
  v18[3] = &unk_1E7CBC6F8;
  v20 = v8;
  v19 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BD0A4C;
  v15[3] = &unk_1E7CBB7E0;
  v16 = v19;
  v17 = v9;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  objc_msgSend__performManagerOperationWithSelector_invokeBlock_completionBlock_(self, v14, a3, v18, v15);
}

- (void)checkForIndexedMessageGUIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BD0B70;
  v9[3] = &unk_1E7CBC720;
  v10 = v6;
  v7 = v6;
  objc_msgSend__checkForIndexedGUIDsWithSelector_performBlock_completionBlock_(self, v8, sel_checkForIndexedMessageGUIDs_completionBlock_, v9, a4);
}

- (void)checkForIndexedChatGUIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BD0C30;
  v9[3] = &unk_1E7CBC720;
  v10 = v6;
  v7 = v6;
  objc_msgSend__checkForIndexedGUIDsWithSelector_performBlock_completionBlock_(self, v8, sel_checkForIndexedChatGUIDs_completionBlock_, v9, a4);
}

- (void)checkForIndexedAttachmentGUIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BD0CF0;
  v9[3] = &unk_1E7CBC720;
  v10 = v6;
  v7 = v6;
  objc_msgSend__checkForIndexedGUIDsWithSelector_performBlock_completionBlock_(self, v8, sel_checkForIndexedAttachmentGUIDs_completionBlock_, v9, a4);
}

- (int64_t)maxRowID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BD0DC0;
  block[3] = &unk_1E7CB6EA8;
  block[4] = &v6;
  IMDPersistencePerformBlock(block, 1, v2);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)totalMessages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BD0EB0;
  block[3] = &unk_1E7CB6EA8;
  block[4] = &v6;
  IMDPersistencePerformBlock(block, 1, v2);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)totalChats
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BD1018;
  block[3] = &unk_1E7CB6EA8;
  block[4] = &v6;
  IMDPersistencePerformBlock(block, 1, v2);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_itemDonationTriggersChatPostProcessingForContext:(id)a3
{
  v3 = a3;
  v8 = (objc_msgSend_isReindexing(v3, v4, v5) & 1) == 0 && objc_msgSend_reason(v3, v6, v7) != 1005;

  return v8;
}

- (void)postProcessIndexingForItem:(id)a3 chatDictionary:(id)a4 context:(id)a5
{
  v10 = a4;
  v7 = a5;
  if (objc_msgSend__itemDonationTriggersChatPostProcessingForContext_(self, v8, v7))
  {
    objc_msgSend_postProcessIndexingForChatDictionary_context_(self, v9, v10, v7);
  }
}

- (void)postProcessIndexingForChatDictionary:(id)a3 context:(id)a4
{
  v22 = a3;
  v7 = objc_msgSend_preflight(a4, v5, v6);
  v8 = v22;
  if ((v7 & 1) == 0)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(v22, v22, @"guid");
    v11 = objc_msgSend_objectForKeyedSubscript_(v22, v10, @"groupPhotoGUID");
    v13 = objc_msgSend_objectForKeyedSubscript_(v22, v12, @"groupPhotoPath");
    if (objc_msgSend_length(v11, v14, v15) && objc_msgSend_length(v13, v16, v17))
    {
      v20 = objc_msgSend_sharedInstance(IMDGroupPhotoDonationManager, v18, v19);
      objc_msgSend_copyGroupPhotoToExternalPathIfNecessary_chatGUID_attachmentFilepath_(v20, v21, v11, v9, v13);
    }

    v8 = v22;
  }
}

- (void)copyIndexableMessageDictionariesWithLimit:(int64_t)a3 requireIndexableAttachments:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = IMDIndexingClientRequestQueue();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BD1338;
  v12[3] = &unk_1E7CBBDE0;
  v13 = v8;
  v14 = a3;
  v15 = a4;
  v12[4] = self;
  v10 = v8;
  IMDPersistenceDispatchAsyncWithHandoffIfNeeded(v9, v12, v11);
}

- (void)indexableMessageGUIDsFromGUIDs:(id)a3 ignoreRejections:(BOOL)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = IMDIndexingClientRequestQueue();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BD167C;
  v14[3] = &unk_1E7CBBE58;
  v18 = a4;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  IMDPersistenceDispatchAsyncWithHandoffIfNeeded(v10, v14, v13);
}

- (void)beginThrottlingForIdentifier:(id)a3 untilDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = objc_msgSend_sharedController(IMDIndexThrottlingController, v7, v8);
  objc_msgSend_beginThrottlingForIdentifier_untilDate_(v10, v9, v6, v5);
}

- (void)finishThrottlingForIdentifier:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_sharedController(IMDIndexThrottlingController, v4, v5);
  objc_msgSend_finishThrottlingForIdentifier_(v7, v6, v3);
}

- (NSArray)integrations
{
  if (objc_msgSend_isIndexingDisabled(self, a2, v2))
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = self->_integrations;
  }

  return v4;
}

- (BOOL)isIndexingDisabled
{
  if (IMIsRunningInUnitTesting())
  {
    v5 = objc_msgSend_indexingDisabledLock(self, v3, v4);
    objc_msgSend_lock(v5, v6, v7);

    indexingDisabled = self->_indexingDisabled;
    v11 = objc_msgSend_indexingDisabledLock(self, v9, v10);
    objc_msgSend_unlock(v11, v12, v13);
  }

  else
  {
    return 0;
  }

  return indexingDisabled;
}

- (void)setIndexingDisabled:(BOOL)a3
{
  if (IMIsRunningInUnitTesting())
  {
    v7 = objc_msgSend_indexingDisabledLock(self, v5, v6);
    objc_msgSend_lock(v7, v8, v9);

    self->_indexingDisabled = a3;
    v14 = objc_msgSend_indexingDisabledLock(self, v10, v11);
    objc_msgSend_unlock(v14, v12, v13);
  }
}

@end