@interface MFSearchableIndexPersistence_iOS
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (id)_verificationDataFromMessage:(id)message messageIDTransactionIDDictionary:(id)dictionary;
- (id)allMailboxIdentifiersForMessage:(id)message;
- (id)messagesWhere:(id)where useSearchableRebuildTable:(BOOL)table limit:(int64_t)limit;
- (id)searchableIndexItemsFromMessages:(id)messages type:(int64_t)type;
- (id)statistics;
- (id)urlForMessageID:(id)d;
- (id)verificationDataSamplesFromMessageIDTransactionIDDictionary:(id)dictionary;
- (unint64_t)signpostID;
- (void)attachmentItemMetadataForAttachmentID:(id)d attachmentPersistentID:(id)iD messagePersistentID:(id)persistentID name:(id)name mailboxID:(int64_t)mailboxID result:(id)result;
@end

@implementation MFSearchableIndexPersistence_iOS

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MFSearchableIndexPersistence_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
  if (signpostLog_onceToken_2 != -1)
  {
    dispatch_once(&signpostLog_onceToken_2, block);
  }

  v2 = signpostLog_log_2;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (id)messagesWhere:(id)where useSearchableRebuildTable:(BOOL)table limit:(int64_t)limit
{
  tableCopy = table;
  whereCopy = where;
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

  if (tableCopy)
  {
    v12 = @"searchable_rebuild.ROWID";
  }

  else
  {
    v12 = 0;
  }

  if (tableCopy)
  {
    v13 = v11 | 0x800000;
  }

  else
  {
    v13 = v11;
  }

  v14 = [v9 indexableMessagesWhere:whereCopy sortedBy:v12 limit:limit options:v13];

  return v14;
}

- (id)searchableIndexItemsFromMessages:(id)messages type:(int64_t)type
{
  v4 = [MFSearchableIndexItem_iOS searchableIndexItemsFromMessages:messages type:type];

  return v4;
}

- (void)attachmentItemMetadataForAttachmentID:(id)d attachmentPersistentID:(id)iD messagePersistentID:(id)persistentID name:(id)name mailboxID:(int64_t)mailboxID result:(id)result
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  persistentIDCopy = persistentID;
  nameCopy = name;
  resultCopy = result;
  if (nameCopy)
  {
    v17 = +[MFMailMessageLibrary defaultInstance];
    stringValue = [persistentIDCopy stringValue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __139__MFSearchableIndexPersistence_iOS_attachmentItemMetadataForAttachmentID_attachmentPersistentID_messagePersistentID_name_mailboxID_result___block_invoke;
    v21[3] = &unk_1E7AA77E0;
    v22 = dCopy;
    v23 = iDCopy;
    v24 = persistentIDCopy;
    v25 = nameCopy;
    v26 = resultCopy;
    [v17 fileURLForAttachmentPersistentID:v23 messageID:stringValue result:v21];
  }

  else
  {
    v19 = +[MFSearchableIndexPersistence_iOS log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v28 = dCopy;
      v29 = 2114;
      v30 = iDCopy;
      v31 = 2114;
      v32 = persistentIDCopy;
      _os_log_fault_impl(&dword_1B0389000, v19, OS_LOG_TYPE_FAULT, "Encountered an attachment without a name for attachmentID:%@ attachmentPersistentID:%{public}@ messagePersistentID:%{public}@", buf, 0x20u);
    }

    (*(resultCopy + 2))(resultCopy, 0, 1);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)_verificationDataFromMessage:(id)message messageIDTransactionIDDictionary:(id)dictionary
{
  messageCopy = message;
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(MEMORY[0x1E699B698]);
  persistentID = [messageCopy persistentID];
  v9 = [dictionaryCopy objectForKeyedSubscript:persistentID];
  [v7 setTransactionID:v9];

  subject = [messageCopy subject];
  subjectWithoutPrefix = [subject subjectWithoutPrefix];
  [v7 setSubject:subjectWithoutPrefix];

  dateReceived = [messageCopy dateReceived];
  [v7 setDateReceived:dateReceived];

  v13 = [messageCopy to];
  v14 = [v13 ef_compactMap:&__block_literal_global_57];
  [v7 setToEmailAddresses:v14];

  return v7;
}

- (id)allMailboxIdentifiersForMessage:(id)message
{
  v3 = [MEMORY[0x1E699B6A8] mailboxIdentifiersForMessage:message];

  return v3;
}

- (id)verificationDataSamplesFromMessageIDTransactionIDDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  allKeys = [dictionaryCopy allKeys];
  v18 = [allKeys componentsJoinedByString:{@", "}];
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
        v13 = [(MFSearchableIndexPersistence_iOS *)self _verificationDataFromMessage:v12 messageIDTransactionIDDictionary:dictionaryCopy];
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "libraryID")}];
        [v20 setObject:v13 forKeyedSubscript:v14];

        dictionaryCopy = v5;
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
  signpostID = [(MFSearchableIndexPersistence_iOS *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v3, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "SEARCH INDEX STATISTICS", "Starting database queries for search index statistics", buf, 2u);
  }

  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__18;
  v33 = __Block_byref_object_dispose__18;
  v34 = objc_opt_new();
  database = [(EDSearchableIndexPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFSearchableIndexPersistence_iOS statistics]"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke;
  v28[3] = &unk_1E7AA3C48;
  v28[4] = self;
  v28[5] = buf;
  [database __performReadWithCaller:v6 usingBlock:v28];

  v7 = +[MFSearchableIndexPersistence_iOS signpostLog];
  signpostID2 = [(MFSearchableIndexPersistence_iOS *)self signpostID];
  if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v35 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v7, OS_SIGNPOST_INTERVAL_END, signpostID2, "SEARCH INDEX STATISTICS", "Finished database queries for search index statistics", v35, 2u);
  }

  v9 = +[MFMailMessageLibrary defaultInstance];
  persistence = [v9 persistence];
  searchableIndexManager = [persistence searchableIndexManager];
  scheduler = [searchableIndexManager scheduler];

  v13 = [scheduler isIndexingEnabledForTaskType:*MEMORY[0x1E699B3D8]];
  v14 = MEMORY[0x1E696AD98];
  v15 = *MEMORY[0x1E699B3D0];
  v16 = [scheduler isIndexingEnabledForActivityType:*MEMORY[0x1E699B3D0]];
  v17 = MEMORY[0x1E699B3C8];
  if (v16 & 1) != 0 || ([scheduler isIndexingEnabledForActivityType:*MEMORY[0x1E699B3C8]])
  {
    v18 = 0;
  }

  else
  {
    v18 = v13 ^ 1;
  }

  v19 = [v14 numberWithInt:v18];
  [*(v30 + 5) setObject:v19 forKeyedSubscript:*MEMORY[0x1E699AA10]];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(scheduler, "isIndexingEnabledForActivityType:", *v17)}];
  [*(v30 + 5) setObject:v20 forKeyedSubscript:*MEMORY[0x1E699AA38]];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(scheduler, "isIndexingEnabledForActivityType:", v15)}];
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

- (id)urlForMessageID:(id)d
{
  dCopy = d;
  v4 = +[MFMailMessageLibrary defaultInstance];
  v5 = [v4 messageWithMessageID:dCopy options:0 inMailbox:0];
  v6 = [v4 dataPathForMessage:v5];
  v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];

  return v7;
}

@end