@interface MFSearchableIndexPersistence_iOS
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (id)_verificationDataFromMessage:(id)a3 messageIDTransactionIDDictionary:(id)a4;
- (id)allMailboxIdentifiersForMessage:(id)a3;
- (id)messagesWhere:(id)a3 useSearchableRebuildTable:(BOOL)a4 limit:(int64_t)a5;
- (id)searchableIndexItemsFromMessages:(id)a3 type:(int64_t)a4;
- (id)statistics;
- (id)urlForMessageID:(id)a3;
- (id)verificationDataSamplesFromMessageIDTransactionIDDictionary:(id)a3;
- (unint64_t)signpostID;
- (void)attachmentItemMetadataForAttachmentID:(id)a3 attachmentPersistentID:(id)a4 messagePersistentID:(id)a5 name:(id)a6 mailboxID:(int64_t)a7 result:(id)a8;
@end

@implementation MFSearchableIndexPersistence_iOS

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MFSearchableIndexPersistence_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_32 != -1)
  {
    dispatch_once(&log_onceToken_32, block);
  }

  v2 = log_log_32;

  return v2;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MFSearchableIndexPersistence_iOS_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_2 != -1)
  {
    dispatch_once(&signpostLog_onceToken_2, block);
  }

  v2 = signpostLog_log_2;

  return v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (id)messagesWhere:(id)a3 useSearchableRebuildTable:(BOOL)a4 limit:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
  v8 = _os_feature_enabled_impl();
  v9 = +[MFMailMessageLibrary defaultInstance];
  v10 = v9;
  if (v8)
  {
    v11 = 1087559;
  }

  else
  {
    v11 = 1087495;
  }

  if (v6)
  {
    v12 = @"searchable_rebuild.ROWID";
  }

  else
  {
    v12 = 0;
  }

  if (v6)
  {
    v13 = v11 | 0x800000;
  }

  else
  {
    v13 = v11;
  }

  v14 = [v9 indexableMessagesWhere:v7 sortedBy:v12 limit:a5 options:v13];

  return v14;
}

- (id)searchableIndexItemsFromMessages:(id)a3 type:(int64_t)a4
{
  v4 = [MFSearchableIndexItem_iOS searchableIndexItemsFromMessages:a3 type:a4];

  return v4;
}

- (void)attachmentItemMetadataForAttachmentID:(id)a3 attachmentPersistentID:(id)a4 messagePersistentID:(id)a5 name:(id)a6 mailboxID:(int64_t)a7 result:(id)a8
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  if (v15)
  {
    v17 = +[MFMailMessageLibrary defaultInstance];
    v18 = [v14 stringValue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __139__MFSearchableIndexPersistence_iOS_attachmentItemMetadataForAttachmentID_attachmentPersistentID_messagePersistentID_name_mailboxID_result___block_invoke;
    v21[3] = &unk_1E7AA77E0;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    [v17 fileURLForAttachmentPersistentID:v23 messageID:v18 result:v21];
  }

  else
  {
    v19 = +[MFSearchableIndexPersistence_iOS log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      _os_log_fault_impl(&dword_1B0389000, v19, OS_LOG_TYPE_FAULT, "Encountered an attachment without a name for attachmentID:%@ attachmentPersistentID:%{public}@ messagePersistentID:%{public}@", buf, 0x20u);
    }

    (*(v16 + 2))(v16, 0, 1);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)_verificationDataFromMessage:(id)a3 messageIDTransactionIDDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E699B698]);
  v8 = [v5 persistentID];
  v9 = [v6 objectForKeyedSubscript:v8];
  [v7 setTransactionID:v9];

  v10 = [v5 subject];
  v11 = [v10 subjectWithoutPrefix];
  [v7 setSubject:v11];

  v12 = [v5 dateReceived];
  [v7 setDateReceived:v12];

  v13 = [v5 to];
  v14 = [v13 ef_compactMap:&__block_literal_global_57];
  [v7 setToEmailAddresses:v14];

  return v7;
}

- (id)allMailboxIdentifiersForMessage:(id)a3
{
  v3 = [MEMORY[0x1E699B6A8] mailboxIdentifiersForMessage:a3];

  return v3;
}

- (id)verificationDataSamplesFromMessageIDTransactionIDDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = [v4 allKeys];
  v18 = [v17 componentsJoinedByString:{@", "}];
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"deleted = '0' AND messages.ROWID IN (%@)", v18];
  v6 = +[MFMailMessageLibrary defaultInstance];
  v7 = [v6 indexableMessagesWhere:v19 sortedBy:0 limit:0 options:38917];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(MFSearchableIndexPersistence_iOS *)self _verificationDataFromMessage:v12 messageIDTransactionIDDictionary:v4];
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "libraryID")}];
        [v20 setObject:v13 forKeyedSubscript:v14];

        v4 = v5;
      }

      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)statistics
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = +[MFSearchableIndexPersistence_iOS signpostLog];
  v4 = [(MFSearchableIndexPersistence_iOS *)self signpostID];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SEARCH INDEX STATISTICS", "Starting database queries for search index statistics", buf, 2u);
  }

  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__18;
  v33 = __Block_byref_object_dispose__18;
  v34 = objc_opt_new();
  v5 = [(EDSearchableIndexPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFSearchableIndexPersistence_iOS statistics]"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke;
  v28[3] = &unk_1E7AA3C48;
  v28[4] = self;
  v28[5] = buf;
  [v5 __performReadWithCaller:v6 usingBlock:v28];

  v7 = +[MFSearchableIndexPersistence_iOS signpostLog];
  v8 = [(MFSearchableIndexPersistence_iOS *)self signpostID];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v35 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SEARCH INDEX STATISTICS", "Finished database queries for search index statistics", v35, 2u);
  }

  v9 = +[MFMailMessageLibrary defaultInstance];
  v10 = [v9 persistence];
  v11 = [v10 searchableIndexManager];
  v12 = [v11 scheduler];

  v13 = [v12 isIndexingEnabledForTaskType:*MEMORY[0x1E699B3D8]];
  v14 = MEMORY[0x1E696AD98];
  v15 = *MEMORY[0x1E699B3D0];
  v16 = [v12 isIndexingEnabledForActivityType:*MEMORY[0x1E699B3D0]];
  v17 = MEMORY[0x1E699B3C8];
  if (v16 & 1) != 0 || ([v12 isIndexingEnabledForActivityType:*MEMORY[0x1E699B3C8]])
  {
    v18 = 0;
  }

  else
  {
    v18 = v13 ^ 1;
  }

  v19 = [v14 numberWithInt:v18];
  [*(v30 + 5) setObject:v19 forKeyedSubscript:*MEMORY[0x1E699AA10]];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isIndexingEnabledForActivityType:", *v17)}];
  [*(v30 + 5) setObject:v20 forKeyedSubscript:*MEMORY[0x1E699AA38]];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isIndexingEnabledForActivityType:", v15)}];
  [*(v30 + 5) setObject:v21 forKeyedSubscript:*MEMORY[0x1E699AA48]];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:v13];
  [*(v30 + 5) setObject:v22 forKeyedSubscript:*MEMORY[0x1E699AA40]];

  v23 = +[MFSearchableIndexPersistence_iOS log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v30 + 5);
    *v35 = 138412290;
    v36 = v24;
    _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "Generated search indexing statistics: %@", v35, 0xCu);
  }

  v25 = [*(v30 + 5) copy];
  _Block_object_dispose(buf, 8);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)urlForMessageID:(id)a3
{
  v3 = a3;
  v4 = +[MFMailMessageLibrary defaultInstance];
  v5 = [v4 messageWithMessageID:v3 options:0 inMailbox:0];
  v6 = [v4 dataPathForMessage:v5];
  v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];

  return v7;
}

@end