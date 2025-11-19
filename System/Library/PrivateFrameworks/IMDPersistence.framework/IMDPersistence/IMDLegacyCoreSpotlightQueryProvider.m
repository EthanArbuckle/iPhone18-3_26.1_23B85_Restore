@interface IMDLegacyCoreSpotlightQueryProvider
+ (id)sharedProvider;
- (id)_indexableMessageGUIDsInSpotlight:(id)a3 chatDictionary:(id)a4 context:(id)a5 requireIndexableAttachments:(BOOL)a6;
- (void)_checkForIndexedGUIDsWithPerformBlock:(id)a3 completionBlock:(id)a4;
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
- (void)reindexRecentMessagesWithHandles:(id)a3 batchDeferralTime:(int64_t)a4 messageAge:(double)a5 reason:(int64_t)a6;
- (void)scheduleUpdateForDeletedMessagesWithReason:(int64_t)a3;
- (void)setNeedsMessageReindexingWithContext:(id)a3 completion:(id)a4;
@end

@implementation IMDLegacyCoreSpotlightQueryProvider

+ (id)sharedProvider
{
  if (qword_1EBA53A50 != -1)
  {
    sub_1B7CF9E84();
  }

  v3 = qword_1EBA53A40;

  return v3;
}

- (void)addChatGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA8C44;
  block[3] = &unk_1E7CB71C0;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13);
}

- (void)addMessageGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA8DDC;
  block[3] = &unk_1E7CB71C0;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v10 = v9;
  v11 = v7;
  v12 = v8;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13);
}

- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA8FBC;
  block[3] = &unk_1E7CB67C0;
  v7 = v3;
  v4 = v3;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v5);
}

- (void)deleteAttachmentGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA90F0;
  block[3] = &unk_1E7CB71C0;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13);
}

- (void)deleteChatGUIDs:(id)a3 context:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA9210;
  block[3] = &unk_1E7CB71C0;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13);
}

- (void)deleteMessageGUIDs:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA9330;
  block[3] = &unk_1E7CB71C0;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13);
}

- (void)indexNextMessageBatchIfNeeded:(unint64_t)a3 reason:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA9410;
  block[3] = &unk_1E7CBBB20;
  v12 = a3;
  v13 = a4;
  v11 = v7;
  v8 = v7;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v9);
}

- (void)reindexRecentMessagesWithHandles:(id)a3 batchDeferralTime:(int64_t)a4 messageAge:(double)a5 reason:(int64_t)a6
{
  v9 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BA9564;
  v12[3] = &unk_1E7CBBD90;
  v13 = v9;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v10 = v9;
  IMDPersistencePerformBlock(v12, 0, v11);
}

- (void)scheduleUpdateForDeletedMessagesWithReason:(int64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA9634;
  block[3] = &unk_1E7CB6A70;
  block[4] = a3;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, a3);
}

- (void)setNeedsMessageReindexingWithContext:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BA96EC;
  v10[3] = &unk_1E7CB7260;
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  IMDPersistencePerformBlockWithHandoffIfNeeded(v10, 0, v9);
}

- (void)markAttachmentWithFileURL:(id)a3 sender:(id)a4 recipients:(id)a5 isIncoming:(BOOL)a6 completionHandler:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v13 = a3;
  v16 = objc_msgSend_url(v13, v14, v15);
  v19 = objc_msgSend_url(v13, v17, v18);

  v22 = objc_msgSend_path(v19, v20, v21);

  if (!objc_msgSend_length(v22, v23, v24) || (objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], v25, v26), v27 = objc_claimAutoreleasedReturnValue(), AccessToPath = IMNSXPCConnectionHasReadAccessToPath(), v27, (AccessToPath & 1) == 0))
  {
LABEL_8:
    v12[2](v12, 0);
    goto LABEL_9;
  }

  if ((objc_msgSend_startAccessingSecurityScopedResource(v16, v29, v30) & 1) == 0)
  {
    v34 = IMLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9E98(v16, v34);
    }

    goto LABEL_8;
  }

  v31 = sub_1B7AEDB80();
  objc_msgSend_stopAccessingSecurityScopedResource(v16, v32, v33);
  v12[2](v12, v31);
LABEL_9:
}

- (id)_indexableMessageGUIDsInSpotlight:(id)a3 chatDictionary:(id)a4 context:(id)a5 requireIndexableAttachments:(BOOL)a6
{
  v6 = a6;
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v13, v14);
  v17 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_(v15, v16, v9, v10, v11, v12);

  if (objc_msgSend_count(v17, v18, v19))
  {
    v40 = v6;
    v41 = v12;
    v42 = v11;
    v43 = v10;
    v44 = v9;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v39 = v17;
    v21 = v17;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v45, v49, 16);
    if (v23)
    {
      v26 = v23;
      v27 = 0;
      v28 = *v46;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v21);
          }

          v30 = *(*(&v45 + 1) + 8 * i);
          v31 = objc_msgSend_domainIdentifier(v30, v24, v25, v39);
          isEqualToString = objc_msgSend_isEqualToString_(v31, v32, @"attachmentDomain");

          if (isEqualToString)
          {
            v27 = 1;
          }

          else
          {
            v34 = objc_msgSend_uniqueIdentifier(v30, v24, v25);
            objc_msgSend_addObject_(v20, v35, v34);
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v45, v49, 16);
      }

      while (v26);
    }

    else
    {
      v27 = 0;
    }

    if (!v40 || (v27 & 1) != 0)
    {
      v36 = v20;
    }

    else
    {
      v36 = 0;
    }

    v10 = v43;
    v9 = v44;
    v12 = v41;
    v17 = v39;

    v11 = v42;
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (void)copyIndexableMessageDictionariesWithLimit:(int64_t)a3 requireIndexableAttachments:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = IMDIndexingClientRequestQueue();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BA9C0C;
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
  v14[2] = sub_1B7BA9E28;
  v14[3] = &unk_1E7CBBE58;
  v18 = a4;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  IMDPersistenceDispatchAsyncWithHandoffIfNeeded(v10, v14, v13);
}

- (void)_checkForIndexedGUIDsWithPerformBlock:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_1B7AE1AC0;
  v19[4] = sub_1B7AE2568;
  v20 = 0;
  v8 = dispatch_group_create();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BAA294;
  v13[3] = &unk_1E7CBBEF8;
  v9 = v5;
  v16 = v9;
  v10 = v8;
  v14 = v10;
  v18 = v19;
  v11 = v7;
  v15 = v11;
  v12 = v6;
  v17 = v12;
  IMDIndexingClientRequest(v13);

  _Block_object_dispose(v19, 8);
}

- (void)checkForIndexedChatGUIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA698;
  v9[3] = &unk_1E7CBBF48;
  v10 = v6;
  v7 = v6;
  objc_msgSend__checkForIndexedGUIDsWithPerformBlock_completionBlock_(self, v8, v9, a4);
}

- (void)checkForIndexedMessageGUIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA818;
  v9[3] = &unk_1E7CBBF48;
  v10 = v6;
  v7 = v6;
  objc_msgSend__checkForIndexedGUIDsWithPerformBlock_completionBlock_(self, v8, v9, a4);
}

- (void)checkForIndexedAttachmentGUIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA998;
  v9[3] = &unk_1E7CBBF48;
  v10 = v6;
  v7 = v6;
  objc_msgSend__checkForIndexedGUIDsWithPerformBlock_completionBlock_(self, v8, v9, a4);
}

- (void)beginThrottlingForIdentifier:(id)a3 untilDate:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[IMDLegacyCoreSpotlightQueryProvider beginThrottlingForIdentifier:untilDate:]";
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "%s no-op in legacy system", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)finishThrottlingForIdentifier:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[IMDLegacyCoreSpotlightQueryProvider finishThrottlingForIdentifier:]";
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "%s no-op in legacy system", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end