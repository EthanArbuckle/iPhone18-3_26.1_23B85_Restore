@interface EDSearchableIndexPersistence
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (id)searchableAttachmentsTableSchema;
+ (id)searchableDataDetectionResultsTableSchema;
+ (id)searchableMessageTombstonesTableSchema;
+ (id)searchableMessagesTableSchema;
+ (id)searchableRebuildTableSchema;
+ (id)searchableRichLinksTableSchema;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
- (BOOL)_canPerformIncrementalIndexForIdentifier:(id)a3 indexingType:(int64_t)a4;
- (EDPersistedAttachmentID)lastProcessedAttachmentID;
- (EDSearchableIndexHookResponder)hookResponder;
- (EDSearchableIndexPersistence)initWithDatabase:(id)a3 messagePersistence:(id)a4 richLinkPersistence:(id)a5 hookResponder:(id)a6;
- (id)_assignIndexedItems:(id)a3 connection:(id)a4 query:(id)a5 indexedBindingsGenerator:(id)a6;
- (id)_assignIndexedItems:(id)a3 transaction:(int64_t)a4 connection:(id)a5;
- (id)_attachmentItemsFromAttachmentData:(id)a3 limit:(unint64_t)a4 cancelationToken:(id)a5;
- (id)_messagesRequiringIndexingForType:(int64_t)a3 excludingIdentifiers:(id)a4 limit:(int64_t)a5;
- (id)_richLinkItemsFromRichLinkData:(id)a3 limit:(unint64_t)a4 cancelationToken:(id)a5;
- (id)_searchableIndexMessageIndexingTypes;
- (id)allMailboxIdentifiersForMessage:(id)a3;
- (id)childIdentifiersToRemoveFromSearchableIndex:(id)a3 whenRemovingParentIdentifiers:(id)a4;
- (id)distinctTransactionIDsForSearchableIndex:(id)a3;
- (id)domainsToRemoveForSearchableIndex:(id)a3;
- (id)getIndexSnapshot;
- (id)itemsToIndexForSearchableIndex:(id)a3 excludingIdentifiers:(id)a4 count:(unint64_t)a5 cancelationToken:(id)a6;
- (id)itemsToRemoveForSearchableIndex:(id)a3;
- (id)messagesNeedingReindex;
- (id)messagesWhere:(id)a3 useSearchableRebuildTable:(BOOL)a4 limit:(int64_t)a5;
- (id)searchableIndex:(id)a3 assignTransaction:(int64_t)a4 updates:(id)a5;
- (id)searchableIndex:(id)a3 attachmentItemsForMessageWithIdentifier:(id)a4;
- (id)searchableIndex:(id)a3 invalidateItemsInTransactions:(id)a4;
- (id)searchableIndexItemsFromMessages:(id)a3 type:(int64_t)a4;
- (id)selectMessageIDsFromBacklogWithBatchSize:(unint64_t)a3;
- (id)urlForMessageID:(id)a3;
- (id)verificationDataSamplesForSearchableIndex:(id)a3 count:(unint64_t)a4 lastVerifiedMessageID:(int64_t)a5;
- (id)verificationDataSamplesFromMessageIDTransactionIDDictionary:(id)a3;
- (int64_t)indexingTypeForSearchableIndex:(id)a3 item:(id)a4;
- (unint64_t)signpostID;
- (void)_addSearchableDataDetectionResults:(id)a3 withMessage:(id)a4 transaction:(int64_t)a5;
- (void)_assignIndexedDataDetectionItems:(id)a3 transaction:(int64_t)a4 connection:(id)a5;
- (void)_enumerateSearchableIndexMessageIndexingTypesUsingBlock:(id)a3;
- (void)assignIndexingType:(void *)a3 forIdentifiers:;
- (void)attachmentItemMetadataForAttachmentID:(id)a3 attachmentPersistentID:(id)a4 messagePersistentID:(id)a5 name:(id)a6 mailboxID:(int64_t)a7 result:(id)a8;
- (void)clearOrphanedSearchableMessagesFromDatabase;
- (void)queueRedonationForDownloadedMessagesWithUnindexedBodies;
- (void)searchableIndex:(id)a3 dataNeedsToBeDonatedForMessages:(id)a4;
- (void)searchableIndex:(id)a3 indexGeneratedSummaries:(id)a4;
- (void)searchableIndex:(id)a3 invalidateItemsGreaterThanTransaction:(int64_t)a4;
- (void)searchableIndex:(id)a3 messagesNeedToBeDonated:(id)a4 indexingType:(int64_t)a5;
- (void)searchableIndex:(id)a3 prepareToIndexAttachmentsForMessageWithIdentifier:(id)a4;
- (void)searchableIndex:(id)a3 willRemoveIdentifiers:(id)a4 type:(int64_t)a5;
- (void)searchableRichLinkItemMetadataForRichLinkID:(id)a3 messagePersistentID:(id)a4 mailboxID:(int64_t)a5 title:(id)a6 url:(id)a7 result:(id)a8;
- (void)setLastProcessedAttachmentID:(id)a3;
- (void)startReindexingWithConnection:(id)a3;
@end

@implementation EDSearchableIndexPersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EDSearchableIndexPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_90 != -1)
  {
    dispatch_once(&log_onceToken_90, block);
  }

  v2 = log_log_90;

  return v2;
}

void __35__EDSearchableIndexPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_90;
  log_log_90 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDSearchableIndexPersistence_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_9 != -1)
  {
    dispatch_once(&signpostLog_onceToken_9, block);
  }

  v2 = signpostLog_log_9;

  return v2;
}

void __43__EDSearchableIndexPersistence_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_9;
  signpostLog_log_9 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  v33[4] = *MEMORY[0x1E69E9840];
  v31 = [a1 searchableMessagesTableSchema];
  v30 = [a1 searchableAttachmentsTableSchema];
  v29 = [a1 searchableRichLinksTableSchema];
  v28 = [a1 searchableDataDetectionResultsTableSchema];
  v25 = [a1 searchableRebuildTableSchema];
  v5 = [EDPersistenceForeignKeyPlaceholder alloc];
  v27 = [v31 columnForName:@"message"];
  v21 = +[EDMessagePersistence messagesTableName];
  v22 = [EDPersistenceForeignKeyPlaceholder initWithColumn:v5 tableName:"initWithColumn:tableName:onDelete:onUpdate:" onDelete:v27 onUpdate:?];
  v33[0] = v22;
  v6 = [EDPersistenceForeignKeyPlaceholder alloc];
  v26 = [v30 columnForName:@"attachment"];
  v7 = +[EDAttachmentPersistence messageAttachmentsTableName];
  v8 = [(EDPersistenceForeignKeyPlaceholder *)v6 initWithColumn:v26 tableName:v7 onDelete:3 onUpdate:0];
  v33[1] = v8;
  v9 = [EDPersistenceForeignKeyPlaceholder alloc];
  v10 = [v29 columnForName:@"rich_link"];
  v11 = +[EDRichLinkPersistence richLinksTableName];
  v12 = [(EDPersistenceForeignKeyPlaceholder *)v9 initWithColumn:v10 tableName:v11 onDelete:3 onUpdate:0];
  v33[2] = v12;
  v13 = [EDPersistenceForeignKeyPlaceholder alloc];
  v14 = [v28 columnForName:@"message_id"];
  v15 = +[EDMessagePersistence messagesTableName];
  v16 = [(EDPersistenceForeignKeyPlaceholder *)v13 initWithColumn:v14 tableName:v15 onDelete:3 onUpdate:0];
  v33[3] = v16;
  *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];

  *a4 = MEMORY[0x1E695E0F0];
  v32[0] = v31;
  v17 = [a1 searchableMessageTombstonesTableSchema];
  v32[1] = v17;
  v32[2] = v30;
  v32[3] = v29;
  v32[4] = v28;
  v32[5] = v25;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:6];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)searchableRebuildTableSchema
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 initWithName:@"searchable_rebuild" rowIDType:2 columns:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)searchableMessagesTableSchema
{
  v24[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E699B958]);
  v4 = [a1 searchableMessagesTableName];
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:1];
  v24[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"transaction_id" nullable:0];
  v24[1] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_body_indexed" nullable:0];
  v24[2] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"reindex_type" nullable:0];
  v24[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v10 = [v3 initWithName:v4 rowIDType:1 rowIDAlias:@"message_id" columns:v9];

  v23[0] = @"message";
  v23[1] = @"reindex_type";
  v23[2] = @"transaction_id";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  [v10 addIndexForColumns:v11];

  v12 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"reindex_type"];
  v13 = [v12 notEqualTo:&unk_1F45E69B8];

  v14 = objc_alloc(MEMORY[0x1E699B900]);
  v15 = [v10 name];
  v22[0] = @"reindex_type";
  v22[1] = @"message_id";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v17 = [v14 initWithTableName:v15 columnNames:v16 where:v13 unique:0];
  [v10 addIndex:v17];

  v21[0] = @"transaction_id";
  v21[1] = @"message_id";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v10 addIndexForColumns:v18];

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)searchableMessageTombstonesTableSchema
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"type" nullable:0];
  v12[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"identifier" collation:1 nullable:0];
  v12[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"transaction_id" nullable:1];
  v12[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v7 = [v2 initWithName:@"searchable_message_tombstones" rowIDType:2 columns:v6];

  [v7 addUniquenessConstraintForColumns:&unk_1F45E6FA0 conflictResolution:1];
  v11[0] = @"transaction_id";
  v11[1] = @"type";
  v11[2] = @"identifier";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  [v7 addIndexForColumns:v8];

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)searchableAttachmentsTableSchema
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"attachment" nullable:1];
  v14[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:1];
  v14[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"transaction_id" nullable:0];
  v14[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v7 = [v2 initWithName:@"searchable_attachments" rowIDType:1 rowIDAlias:@"attachment_id" columns:v6];

  v13 = @"attachment";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v7 addIndexForColumns:v8];

  v12 = @"message_id";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v7 addIndexForColumns:v9];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)searchableRichLinksTableSchema
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"rich_link" nullable:1];
  v14[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:1];
  v14[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"transaction_id" nullable:0];
  v14[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v7 = [v2 initWithName:@"searchable_rich_links" rowIDType:1 rowIDAlias:@"rich_link_id" columns:v6];

  v13 = @"rich_link";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v7 addIndexForColumns:v8];

  v12 = @"message_id";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v7 addIndexForColumns:v9];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)searchableDataDetectionResultsTableSchema
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"data_detection_result" nullable:1];
  v14[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:1];
  v14[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"transaction_id" nullable:0];
  v14[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v7 = [v2 initWithName:@"searchable_data_detection_results" rowIDType:1 columns:v6];

  v13 = @"message";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v7 addIndexForColumns:v8];

  v12 = @"data_detection_result";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v7 addIndexForColumns:v9];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (EDSearchableIndexPersistence)initWithDatabase:(id)a3 messagePersistence:(id)a4 richLinkPersistence:(id)a5 hookResponder:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = EDSearchableIndexPersistence;
  v15 = [(EDSearchableIndexPersistence *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_database, a3);
    objc_storeWeak(&v16->_hookResponder, v14);
    objc_storeStrong(&v16->_messagePersistence, a4);
    objc_storeStrong(&v16->_richLinkPersistence, a5);
    v16->_lastProcessedAttachmentIDLock._os_unfair_lock_opaque = 0;
    lastProcessedAttachmentID = v16->_lastProcessedAttachmentID;
    v16->_lastProcessedAttachmentID = 0;

    v18 = [[EDDataDetectionPersistence alloc] initWithDatabase:v11 messagePersistence:0 hookResponder:0];
    dataDetectionPersistence = v16->_dataDetectionPersistence;
    v16->_dataDetectionPersistence = v18;
  }

  return v16;
}

- (EDPersistedAttachmentID)lastProcessedAttachmentID
{
  os_unfair_lock_lock(&self->_lastProcessedAttachmentIDLock);
  lastProcessedAttachmentID = self->_lastProcessedAttachmentID;
  if (!lastProcessedAttachmentID)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__39;
    v13 = __Block_byref_object_dispose__39;
    v14 = 0;
    v4 = [(EDSearchableIndexPersistence *)self database];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence lastProcessedAttachmentID]"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__EDSearchableIndexPersistence_lastProcessedAttachmentID__block_invoke;
    v8[3] = &unk_1E8251DA0;
    v8[4] = &v9;
    [v4 __performReadWithCaller:v5 usingBlock:v8];

    objc_storeStrong(&self->_lastProcessedAttachmentID, v10[5]);
    _Block_object_dispose(&v9, 8);

    lastProcessedAttachmentID = self->_lastProcessedAttachmentID;
  }

  v6 = lastProcessedAttachmentID;
  os_unfair_lock_unlock(&self->_lastProcessedAttachmentIDLock);

  return v6;
}

uint64_t __57__EDSearchableIndexPersistence_lastProcessedAttachmentID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 selectLastProcessedAttachmentID];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (void)setLastProcessedAttachmentID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lastProcessedAttachmentIDLock);
  if (self->_lastProcessedAttachmentID == v5)
  {
    os_unfair_lock_unlock(&self->_lastProcessedAttachmentIDLock);
  }

  else
  {
    objc_storeStrong(&self->_lastProcessedAttachmentID, a3);
    os_unfair_lock_unlock(&self->_lastProcessedAttachmentIDLock);
    v6 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = @"com.apple.mail.searchableIndex.lastProcessedAttachmentIDKey";
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Setting object:%@ for key: %@", buf, 0x16u);
    }

    v7 = [(EDSearchableIndexPersistence *)self database];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence setLastProcessedAttachmentID:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__EDSearchableIndexPersistence_setLastProcessedAttachmentID___block_invoke;
    v10[3] = &unk_1E8251CB8;
    v11 = v5;
    [v7 __performWriteWithCaller:v8 usingBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)getIndexSnapshot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__39;
  v11 = __Block_byref_object_dispose__39;
  v12 = 0;
  v2 = [(EDSearchableIndexPersistence *)self database];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence getIndexSnapshot]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__EDSearchableIndexPersistence_getIndexSnapshot__block_invoke;
  v6[3] = &unk_1E8251DA0;
  v6[4] = &v7;
  [v2 __performReadWithCaller:v3 usingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __48__EDSearchableIndexPersistence_getIndexSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 getIndexSnapshot];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (id)messagesNeedingReindex
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__39;
  v12 = __Block_byref_object_dispose__39;
  v13 = objc_opt_new();
  v3 = [(EDSearchableIndexPersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence messagesNeedingReindex]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EDSearchableIndexPersistence_messagesNeedingReindex__block_invoke;
  v7[3] = &unk_1E8251DA0;
  v7[4] = &v8;
  [v3 __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __54__EDSearchableIndexPersistence_messagesNeedingReindex__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 messagesNeedingReindex];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (id)messagesWhere:(id)a3 useSearchableRebuildTable:(BOOL)a4 limit:(int64_t)a5
{
  v7 = a3;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence messagesWhere:useSearchableRebuildTable:limit:]", "EDSearchableIndexPersistence.m", 1111, "0");
}

- (id)searchableIndexItemsFromMessages:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence searchableIndexItemsFromMessages:type:]", "EDSearchableIndexPersistence.m", 1115, "0");
}

- (void)attachmentItemMetadataForAttachmentID:(id)a3 attachmentPersistentID:(id)a4 messagePersistentID:(id)a5 name:(id)a6 mailboxID:(int64_t)a7 result:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence attachmentItemMetadataForAttachmentID:attachmentPersistentID:messagePersistentID:name:mailboxID:result:]", "EDSearchableIndexPersistence.m", 1119, "0");
}

- (id)searchableIndex:(id)a3 attachmentItemsForMessageWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__39;
  v22 = __Block_byref_object_dispose__39;
  v23 = 0;
  v7 = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:attachmentItemsForMessageWithIdentifier:]"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __88__EDSearchableIndexPersistence_searchableIndex_attachmentItemsForMessageWithIdentifier___block_invoke;
  v15 = &unk_1E8250FD8;
  v17 = &v18;
  v9 = v5;
  v16 = v9;
  [v7 __performReadWithCaller:v8 usingBlock:&v12];

  if ([v19[5] count])
  {
    v10 = [(EDSearchableIndexPersistence *)self _attachmentItemsFromAttachmentData:v19[5] limit:512 cancelationToken:v6];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v10;
}

uint64_t __88__EDSearchableIndexPersistence_searchableIndex_attachmentItemsForMessageWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 attachmentDataForMessageWithIdentifier:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (void)searchableIndex:(id)a3 indexGeneratedSummaries:(id)a4
{
  v6 = a4;
  v5 = [(EDSearchableIndexPersistence *)self messagePersistence];
  [v5 setGeneratedSummaries:v6];
}

- (id)verificationDataSamplesFromMessageIDTransactionIDDictionary:(id)a3
{
  v5 = a3;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence verificationDataSamplesFromMessageIDTransactionIDDictionary:]", "EDSearchableIndexPersistence.m", 1143, "0");
}

- (id)domainsToRemoveForSearchableIndex:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__39;
  v12 = __Block_byref_object_dispose__39;
  v13 = MEMORY[0x1E695E0F0];
  v3 = [(EDSearchableIndexPersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence domainsToRemoveForSearchableIndex:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__EDSearchableIndexPersistence_domainsToRemoveForSearchableIndex___block_invoke;
  v7[3] = &unk_1E8251DA0;
  v7[4] = &v8;
  [v3 __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __66__EDSearchableIndexPersistence_domainsToRemoveForSearchableIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 selectIdentifiersForTombstonesOfType:?];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (id)itemsToRemoveForSearchableIndex:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(EDSearchableIndexPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence itemsToRemoveForSearchableIndex:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__EDSearchableIndexPersistence_itemsToRemoveForSearchableIndex___block_invoke;
  v9[3] = &unk_1E8251CB8;
  v7 = v4;
  v10 = v7;
  [v5 __performReadWithCaller:v6 usingBlock:v9];

  return v7;
}

uint64_t __64__EDSearchableIndexPersistence_itemsToRemoveForSearchableIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [(EDPersistenceDatabaseConnection *)v3 selectIdentifiersForTombstonesOfType:?];
  [v4 addObjectsFromArray:v5];

  v6 = *(a1 + 32);
  v7 = [(EDPersistenceDatabaseConnection *)v3 selectIdentifiersForDeletedMessages];
  [v6 addObjectsFromArray:v7];

  v8 = *(a1 + 32);
  v9 = [(EDPersistenceDatabaseConnection *)v3 selectIdentifiersForDeletedAttachments];
  [v8 addObjectsFromArray:v9];

  return 1;
}

- (id)itemsToIndexForSearchableIndex:(id)a3 excludingIdentifiers:(id)a4 count:(unint64_t)a5 cancelationToken:(id)a6
{
  v120 = *MEMORY[0x1E69E9840];
  v73 = a4;
  v70 = a6;
  v78 = self;
  v9 = [(EDSearchableIndexPersistence *)self rebuildIndexState];
  v10 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = +[EDSearchableIndexScheduler isTurboModeIndexingEnabled];
    v12 = @"off";
    *buf = 134218498;
    *&buf[4] = a5;
    if (v11)
    {
      v12 = @"on";
    }

    *&buf[12] = 2048;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v117 = v12;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "SearchableIndex is requesting a batch of up to %lu items requiring indexing, rebuild state = %lu, turbo mode = %@", buf, 0x20u);
  }

  if (!v9)
  {
    v13 = [(EDSearchableIndexPersistence *)v78 database];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence itemsToIndexForSearchableIndex:excludingIdentifiers:count:cancelationToken:]"];
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke;
    v105[3] = &unk_1E8251CB8;
    v105[4] = v78;
    [v13 __performReadWithCaller:v14 usingBlock:v105];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_420;
  aBlock[3] = &unk_1E8256FF8;
  v71 = v15;
  v103 = v71;
  v104 = a5;
  v72 = _Block_copy(aBlock);
  v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v81 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v117 = __Block_byref_object_copy__39;
  v118 = __Block_byref_object_dispose__39;
  v119 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v73;
  v16 = [obj countByEnumeratingWithState:&v98 objects:v115 count:16];
  if (v16)
  {
    v17 = *v99;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v99 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v98 + 1) + 8 * i);
        v20 = [EDSearchableIndexAttachmentItem attachmentPersistentIDFromItemIdentifier:v19];
        v21 = [EDSearchableIndexRichLinkItem richLinkItemIdentifierFromSearchableItemIdentifier:v19];
        v22 = v21;
        if (v20)
        {
          [v81 addObject:v20];
        }

        else if (v21)
        {
          v23 = [EDSearchableIndexRichLinkItem messageIDandRichLinkIDFromRichLinkIdentifier:v19];
          v24 = v23;
          if (v23)
          {
            v25 = [v23 first];
            v26 = [*(*&buf[8] + 40) objectForKeyedSubscript:v25];
            v27 = v26 == 0;

            if (v27)
            {
              v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [*(*&buf[8] + 40) setObject:v28 forKeyedSubscript:v25];
            }

            v29 = [*(*&buf[8] + 40) objectForKeyedSubscript:v25];
            v30 = [v24 second];
            [v29 addObject:v30];
          }
        }

        else
        {
          [v79 addObject:v19];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v98 objects:v115 count:16];
    }

    while (v16);
  }

  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_2;
  v92[3] = &unk_1E8257020;
  v31 = v72;
  v97 = v31;
  v32 = v70;
  v93 = v32;
  v94 = v78;
  v69 = v79;
  v95 = v69;
  v76 = v71;
  v96 = v76;
  [(EDSearchableIndexPersistence *)v78 _enumerateSearchableIndexMessageIndexingTypesUsingBlock:v92];
  v74 = v31;
  v33 = v31[2](v31);
  if (v33 >= 0xC)
  {
    v34 = 12;
  }

  else
  {
    v34 = v33;
  }

  v35 = +[EDSearchableIndexPersistence signpostLog];
  v36 = [(EDSearchableIndexPersistence *)v78 signpostID];
  if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    LODWORD(v110) = 134217984;
    *(&v110 + 4) = v34;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v36, "EDSearchableIndexPersistenceWhileLoop", "limit=%ld", &v110, 0xCu);
  }

  v75 = [MEMORY[0x1E695DF00] now];
  do
  {
    if (!v34 || ([v32 isCanceled] & 1) != 0)
    {
      break;
    }

    *&v110 = 0;
    *(&v110 + 1) = &v110;
    v111 = 0x3032000000;
    v112 = __Block_byref_object_copy__39;
    v113 = __Block_byref_object_dispose__39;
    v114 = 0;
    v37 = [(EDSearchableIndexPersistence *)v78 database];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence itemsToIndexForSearchableIndex:excludingIdentifiers:count:cancelationToken:]"];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_425;
    v87[3] = &unk_1E8254100;
    v91 = &v110;
    v88 = v81;
    v89 = v78;
    v39 = v32;
    v90 = v39;
    [v37 __performReadWithCaller:v38 usingBlock:v87];

    v40 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [*(*(&v110 + 1) + 40) count];
      *v106 = 134217984;
      v107 = *&v41;
      _os_log_impl(&dword_1C61EF000, v40, OS_LOG_TYPE_DEFAULT, "Found item count:%lu for attachment indexing", v106, 0xCu);
    }

    if ([*(*(&v110 + 1) + 40) count] && (objc_msgSend(v39, "isCanceled") & 1) == 0)
    {
      v43 = [(EDSearchableIndexPersistence *)v78 _attachmentItemsFromAttachmentData:*(*(&v110 + 1) + 40) limit:v34 cancelationToken:v39];
      v44 = [v43 count];
      v45 = +[EDSearchableIndexPersistence log];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [*(*(&v110 + 1) + 40) count];
        *v106 = 134218240;
        v107 = *&v44;
        v108 = 2048;
        v109 = v46;
        _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "Generated %lu attachment items from %lu attachment data", v106, 0x16u);
      }

      if (v44)
      {
        [v76 addObjectsFromArray:v43];
        if (v34 >= v44)
        {
          v34 -= v44;
        }

        else
        {
          v34 = 0;
        }
      }

      v47 = [MEMORY[0x1E695DF00] now];
      [v47 timeIntervalSinceDate:v75];
      v49 = v48;

      v42 = v49 < 5.0;
      if (v49 >= 5.0)
      {
        [v39 cancel];
        v50 = +[EDSearchableIndexPersistence log];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *v106 = 134217984;
          v107 = v49;
          _os_log_error_impl(&dword_1C61EF000, v50, OS_LOG_TYPE_ERROR, "Taking too long to find attachmentItems after:%f", v106, 0xCu);
        }
      }
    }

    else
    {
      v42 = 0;
    }

    _Block_object_dispose(&v110, 8);
  }

  while (v42);
  v51 = +[EDSearchableIndexPersistence signpostLog];
  v52 = [(EDSearchableIndexPersistence *)v78 signpostID];
  if (v52 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    LOWORD(v110) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v51, OS_SIGNPOST_INTERVAL_END, v52, "EDSearchableIndexPersistenceWhileLoop", "", &v110, 2u);
  }

  v53 = v74[2]();
  v77 = [MEMORY[0x1E695DF00] now];
  if (v53 >= 0xC)
  {
    v53 = 12;
  }

  do
  {
    if (!v53 || ([v32 isCanceled] & 1) != 0)
    {
      break;
    }

    *&v110 = 0;
    *(&v110 + 1) = &v110;
    v111 = 0x3032000000;
    v112 = __Block_byref_object_copy__39;
    v113 = __Block_byref_object_dispose__39;
    v114 = 0;
    v54 = [(EDSearchableIndexPersistence *)v78 database];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence itemsToIndexForSearchableIndex:excludingIdentifiers:count:cancelationToken:]"];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_426;
    v83[3] = &unk_1E8257048;
    v85 = &v110;
    v86 = buf;
    v56 = v32;
    v84 = v56;
    [v54 __performReadWithCaller:v55 usingBlock:v83];

    if (![*(*(&v110 + 1) + 40) count])
    {
      goto LABEL_58;
    }

    if (([v56 isCanceled] & 1) == 0)
    {
      v58 = [(EDSearchableIndexPersistence *)v78 _richLinkItemsFromRichLinkData:*(*(&v110 + 1) + 40) limit:v53 cancelationToken:v56];
      v59 = [v58 count];
      v60 = +[EDSearchableIndexPersistence log];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = [v58 count];
        *v106 = 134218240;
        v107 = *&v59;
        v108 = 2048;
        v109 = v61;
        _os_log_impl(&dword_1C61EF000, v60, OS_LOG_TYPE_DEFAULT, "Generated %lu rich link items from %lu rich link data", v106, 0x16u);
      }

      if (v59)
      {
        [v76 addObjectsFromArray:v58];
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_427;
        v82[3] = &unk_1E8257070;
        v82[4] = buf;
        [v58 enumerateObjectsUsingBlock:v82];
        if (v53 >= v59)
        {
          v53 -= v59;
        }

        else
        {
          v53 = 0;
        }
      }

      v62 = [MEMORY[0x1E695DF00] now];
      [v62 timeIntervalSinceDate:v77];
      v64 = v63;

      v57 = v64 < 5.0;
      if (v64 >= 5.0)
      {
        [v56 cancel];
        v65 = +[EDSearchableIndexPersistence log];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *v106 = 134217984;
          v107 = v64;
          _os_log_error_impl(&dword_1C61EF000, v65, OS_LOG_TYPE_ERROR, "Taking too long to find rich link items after:%f", v106, 0xCu);
        }
      }
    }

    else
    {
LABEL_58:
      v57 = 0;
    }

    _Block_object_dispose(&v110, 8);
  }

  while (v57);
  v66 = v76;

  _Block_object_dispose(buf, 8);
  v67 = *MEMORY[0x1E69E9840];

  return v66;
}

uint64_t __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 selectIsReindexing];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 setRebuildIndexState:1];
    v6 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Reindex in-progress.  Switching to EDSearchableIndexRebuildTableStateUseRebuildTableQuery state", v8, 2u);
    }
  }

  else
  {
    [v5 setRebuildIndexState:2];
  }

  return 1;
}

unint64_t __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_420(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  result = (*(*(a1 + 64) + 16))();
  if (result)
  {
    v5 = result;
    if ([*(a1 + 32) isCanceled])
    {
      result = 0;
    }

    else
    {
      v6 = [*(a1 + 40) _messagesRequiringIndexingForType:a2 excludingIdentifiers:*(a1 + 48) limit:v5];
      v7 = [v6 count];
      if (v7 > v5)
      {
        v8 = [v6 subarrayWithRange:{0, v5}];

        v6 = v8;
      }

      v9 = +[EDSearchableIndexPersistence signpostLog];
      v10 = [*(a1 + 40) signpostID];
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        v15 = 134218496;
        v16 = a2;
        v17 = 2048;
        v18 = v5;
        v19 = 1024;
        v20 = [MEMORY[0x1E699B858] bucketMessageCount:v7];
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "EDSearchableIndexPersistenceMessagesToItems", "type=%ld limit=%lu messageCount=%u", &v15, 0x1Cu);
      }

      v11 = [*(a1 + 40) searchableIndexItemsFromMessages:v6 type:a2];
      v12 = +[EDSearchableIndexPersistence signpostLog];
      v13 = [*(a1 + 40) signpostID];
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        LOWORD(v15) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v12, OS_SIGNPOST_INTERVAL_END, v13, "EDSearchableIndexPersistenceMessagesToItems", "", &v15, 2u);
      }

      [*(a1 + 56) addObjectsFromArray:v11];
      result = 1;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_425(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) lastProcessedAttachmentID];
  v6 = [(EDPersistenceDatabaseConnection *)v3 attachmentDataForItemsRequiringIndexingExcludingIDs:v4 lastProcessedAttachmentID:v5 limit:512 cancelationToken:*(a1 + 48)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 1;
}

uint64_t __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_426(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 richLinkDataForItemsRequiringIndexingExcludingIdentifiers:512 limit:*(a1 + 32) cancelationToken:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

void __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_427(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 messagePersistentID];
  v4 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v3];
  }

  v6 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v3];
  v7 = [v9 metadatum];
  v8 = [v7 richLinkID];
  [v6 addObject:v8];
}

- (id)selectMessageIDsFromBacklogWithBatchSize:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__39;
  v13 = __Block_byref_object_dispose__39;
  v14 = MEMORY[0x1E695E0F0];
  v4 = [(EDSearchableIndexPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence selectMessageIDsFromBacklogWithBatchSize:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__EDSearchableIndexPersistence_selectMessageIDsFromBacklogWithBatchSize___block_invoke;
  v8[3] = &unk_1E8250150;
  v8[4] = &v9;
  v8[5] = a3;
  [v4 __performReadWithCaller:v5 usingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __73__EDSearchableIndexPersistence_selectMessageIDsFromBacklogWithBatchSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 selectMessageIDsFromBacklogWithBatchSize:?];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (id)urlForMessageID:(id)a3
{
  v5 = a3;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence urlForMessageID:]", "EDSearchableIndexPersistence.m", 1371, "0");
}

- (id)_messagesRequiringIndexingForType:(int64_t)a3 excludingIdentifiers:(id)a4 limit:(int64_t)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = [a4 componentsJoinedByString:{@", "}];
  v9 = 0;
  v10 = 0;
  if (a3 > 3)
  {
    if ((a3 - 4) < 2)
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = @"messages.global_message_id IN (SELECT data_detection_results.global_message_id FROM data_detection_results LEFT OUTER JOIN searchable_data_detection_results ON data_detection_results.ROWID = searchable_data_detection_results.data_detection_result WHERE searchable_data_detection_results.data_detection_result IS NULL) AND likely(messages.ROWID NOT IN (%@))";
LABEL_9:
      v9 = [v11 initWithFormat:v12, v8];
      v10 = 0;
      goto LABEL_10;
    }

    if (a3 != 7)
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = @"((messages.ROWID IN (SELECT message_id FROM searchable_messages WHERE (searchable_messages.reindex_type = 1 OR searchable_messages.reindex_type = 2 OR searchable_messages.reindex_type = 7))) AND likely(messages.ROWID NOT IN (%@)))";
    goto LABEL_9;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"((messages.searchable_message IS NULL OR messages.ROWID IN (SELECT message_id FROM searchable_messages WHERE searchable_messages.transaction_id = %ld)) AND likely(messages.ROWID NOT IN (%@)))", 0, v8];
    v10 = [(EDSearchableIndexPersistence *)self rebuildIndexState]== 1;
  }

LABEL_10:
  v13 = [(EDSearchableIndexPersistence *)self additionalFilterClause];
  if ([v13 length])
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ AND %@", v9, v13];

    v9 = v14;
  }

  if (v9)
  {
    v15 = +[EDSearchableIndexPersistence signpostLog];
    v16 = [(EDSearchableIndexPersistence *)self signpostID];
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 134218240;
      v25 = a3;
      v26 = 2048;
      v27 = a5;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "EDSearchableIndexPersistenceMessagesForIndexing", "type=%ld limit=%ld", buf, 0x16u);
    }

    v17 = [(EDSearchableIndexPersistence *)self messagesWhere:v9 useSearchableRebuildTable:v10 limit:a5];
    v18 = +[EDSearchableIndexPersistence signpostLog];
    v19 = [(EDSearchableIndexPersistence *)self signpostID];
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v18, OS_SIGNPOST_INTERVAL_END, v19, "EDSearchableIndexPersistenceMessagesForIndexing", "", buf, 2u);
    }

    v20 = v17;
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  if (-[EDSearchableIndexPersistence rebuildIndexState](self, "rebuildIndexState") == 1 && !([v20 count] | a3))
  {
    [(EDSearchableIndexPersistence *)self setRebuildIndexState:2];
    v21 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Reindex complete. Switching to EDSearchableIndexRebuildTableStateUseDefaultQuery state", buf, 2u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

- (int64_t)indexingTypeForSearchableIndex:(id)a3 item:(id)a4
{
  v5 = a4;
  v6 = [v5 indexingType];
  if ([EDSearchableIndex isIncrementalIndexingType:v6])
  {
    v7 = [v5 identifier];
    v8 = [(EDSearchableIndexPersistence *)self _canPerformIncrementalIndexForIdentifier:v7 indexingType:v6];

    v9 = 5;
    if (v6 != 4)
    {
      v9 = 0;
    }

    if (!v8)
    {
      v6 = v9;
    }
  }

  return v6;
}

- (BOOL)_canPerformIncrementalIndexForIdentifier:(id)a3 indexingType:(int64_t)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v7 = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence _canPerformIncrementalIndexForIdentifier:indexingType:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__EDSearchableIndexPersistence__canPerformIncrementalIndexForIdentifier_indexingType___block_invoke;
  v13[3] = &unk_1E8257098;
  v9 = v6;
  v14 = v9;
  v15 = &v21;
  v16 = &v17;
  [v7 __performReadWithCaller:v8 usingBlock:v13];

  if (![EDSearchableIndex isValidTransaction:v22[3]]|| (v10 = v18[3], v11 = 1, v10 != a4) && v10)
  {
    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

uint64_t __86__EDSearchableIndexPersistence__canPerformIncrementalIndexForIdentifier_indexingType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 selectTransactionAndIndexTypeForMessage:?];
  v5 = [v4 first];
  *(*(*(a1 + 40) + 8) + 24) = [v5 longLongValue];

  v6 = [v4 second];
  *(*(*(a1 + 48) + 8) + 24) = [v6 integerValue];

  return 1;
}

- (void)assignIndexingType:(void *)a3 forIdentifiers:
{
  v5 = a3;
  if (a1)
  {
    v6 = 0;
    if (a2 <= 3)
    {
      if ((a2 - 1) < 2)
      {
        goto LABEL_13;
      }

      if (!a2)
      {
LABEL_14:
        v10 = objc_alloc(MEMORY[0x1E696AEC0]);
        v7 = [v5 componentsJoinedByString:{@", "}];
        v9 = [v10 initWithFormat:@"UPDATE OR IGNORE searchable_messages SET transaction_id = %lld WHERE message_id IN (%@)", 0, v7];
        goto LABEL_15;
      }

      if (a2 == 3)
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:sel_assignIndexingType_forIdentifiers_ object:a1 file:@"EDSearchableIndexPersistence.m" lineNumber:1495 description:@"Does not support re-indexing of attachment types. Will need to be implemented if needed."];
        goto LABEL_11;
      }
    }

    else
    {
      if (a2 <= 6)
      {
        if (a2 != 4)
        {
          if (a2 != 5)
          {
            v7 = [MEMORY[0x1E696AAA8] currentHandler];
            [v7 handleFailureInMethod:sel_assignIndexingType_forIdentifiers_ object:a1 file:@"EDSearchableIndexPersistence.m" lineNumber:1499 description:@"Does not support re-indexing of rich link types. Will need to be implemented if needed."];
LABEL_11:
            v6 = 0;
LABEL_16:

            goto LABEL_17;
          }

          goto LABEL_14;
        }

LABEL_13:
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        v7 = [v5 componentsJoinedByString:{@", "}];
        v9 = [v8 initWithFormat:@"UPDATE OR IGNORE searchable_messages SET reindex_type = %lld WHERE transaction_id != %lld AND message_id IN (%@)", a2, 0, v7];
LABEL_15:
        v6 = v9;
        goto LABEL_16;
      }

      if ((a2 - 7) < 2)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    v11 = [a1 database];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence assignIndexingType:forIdentifiers:]"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__EDSearchableIndexPersistence_assignIndexingType_forIdentifiers___block_invoke;
    v14[3] = &unk_1E8251CB8;
    v13 = v6;
    v15 = v13;
    [v11 __performWriteWithCaller:v12 usingBlock:v14];
  }
}

- (void)searchableIndex:(id)a3 willRemoveIdentifiers:(id)a4 type:(int64_t)a5
{
  v7 = a4;
  if ([v7 count])
  {
    v8 = [(EDSearchableIndexPersistence *)self database];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:willRemoveIdentifiers:type:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__EDSearchableIndexPersistence_searchableIndex_willRemoveIdentifiers_type___block_invoke;
    v10[3] = &unk_1E82503F0;
    v11 = v7;
    v12 = a5;
    [v8 __performWriteWithCaller:v9 usingBlock:v10];
  }
}

- (id)childIdentifiersToRemoveFromSearchableIndex:(id)a3 whenRemovingParentIdentifiers:(id)a4
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__39;
  v18 = __Block_byref_object_dispose__39;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(EDSearchableIndexPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence childIdentifiersToRemoveFromSearchableIndex:whenRemovingParentIdentifiers:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__EDSearchableIndexPersistence_childIdentifiersToRemoveFromSearchableIndex_whenRemovingParentIdentifiers___block_invoke;
  v11[3] = &unk_1E8250FD8;
  v13 = &v14;
  v8 = v5;
  v12 = v8;
  [v6 __performReadWithCaller:v7 usingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __106__EDSearchableIndexPersistence_childIdentifiersToRemoveFromSearchableIndex_whenRemovingParentIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 selectAttachmentIdentifiersForMessages:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (id)searchableIndex:(id)a3 assignTransaction:(int64_t)a4 updates:(id)a5
{
  v7 = a5;
  v8 = [(EDSearchableIndexPersistence *)self hookResponder];
  v9 = objc_opt_respondsToSelector();
  v10 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  if ([v7 hasUpdates])
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [(EDSearchableIndexPersistence *)self database];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:assignTransaction:updates:]"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__EDSearchableIndexPersistence_searchableIndex_assignTransaction_updates___block_invoke;
    v20[3] = &unk_1E82519E0;
    v13 = v10;
    v21 = v13;
    v14 = v7;
    v22 = v14;
    v23 = self;
    v25 = a4;
    v15 = v19;
    v24 = v15;
    [v11 __performWriteWithCaller:v12 usingBlock:v20];

    if (v9)
    {
      [v8 searchableIndexDidAssignTransaction:a4 toUpdates:v14 withMissingIdentifiers:v15 generationWindow:v13];
    }

    v16 = v24;
    v17 = v15;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
    if (v9)
    {
      [v8 searchableIndexDidAssignTransaction:a4 toUpdates:v7 withMissingIdentifiers:MEMORY[0x1E695E0F0] generationWindow:v10];
    }
  }

  return v17;
}

uint64_t __74__EDSearchableIndexPersistence_searchableIndex_assignTransaction_updates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [*(a1 + 40) indexedItems];

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) indexedItems];
    v7 = [v5 _assignIndexedItems:v6 transaction:*(a1 + 64) connection:v3];

    [*(a1 + 56) addObjectsFromArray:v7];
    if (!*(a1 + 64))
    {
      v8 = [*(a1 + 40) indexedItems];
      v9 = [v8 attachments];
      v10 = [v9 count];

      if (v10)
      {
        [*(a1 + 48) setLastProcessedAttachmentID:0];
      }
    }
  }

  v11 = [*(a1 + 40) removedIdentifiers];
  [(EDPersistenceDatabaseConnection *)v3 assignTombstonesForIdentifiers:v11 type:0 transaction:*(a1 + 64)];
  v12 = [*(a1 + 40) removedDomainIdentifiers];
  [(EDPersistenceDatabaseConnection *)v3 assignTombstonesForIdentifiers:v12 type:1 transaction:*(a1 + 64)];

  v13 = *(a1 + 64);
  if (v13 >= 11 && !(v13 % 0xAuLL))
  {
    [(EDPersistenceDatabaseConnection *)v3 deleteTombstonesBeforeTransaction:?];
    v13 = *(a1 + 64);
  }

  v14 = [EDSearchableIndex isValidTransaction:v13];
  if ([v11 count])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    [(EDPersistenceDatabaseConnection *)v3 removeIndexedIdentifiers:v11];
  }

  return 1;
}

- (void)searchableIndex:(id)a3 dataNeedsToBeDonatedForMessages:(id)a4
{
  v5 = a4;
  v6 = [v5 ef_map:&__block_literal_global_468];
  v7 = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:dataNeedsToBeDonatedForMessages:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__EDSearchableIndexPersistence_searchableIndex_dataNeedsToBeDonatedForMessages___block_invoke_2;
  v11[3] = &unk_1E8250440;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v5;
  v13 = v10;
  [v7 __performWriteWithCaller:v8 usingBlock:v11];
}

id __80__EDSearchableIndexPersistence_searchableIndex_dataNeedsToBeDonatedForMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 searchableMessageID];
  v3 = [v2 stringValue];

  return v3;
}

uint64_t __80__EDSearchableIndexPersistence_searchableIndex_dataNeedsToBeDonatedForMessages___block_invoke_2(uint64_t a1)
{
  [(EDSearchableIndexPersistence *)*(a1 + 32) assignIndexingType:*(a1 + 40) forIdentifiers:?];
  v2 = [*(a1 + 32) analytics];
  [v2 didUpdateDataForMessages:*(a1 + 48)];

  return 1;
}

- (void)searchableIndex:(id)a3 messagesNeedToBeDonated:(id)a4 indexingType:(int64_t)a5
{
  v7 = a4;
  v8 = [v7 ef_map:&__block_literal_global_470];
  v9 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v10 = [(EDSearchableIndexPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:messagesNeedToBeDonated:indexingType:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__EDSearchableIndexPersistence_searchableIndex_messagesNeedToBeDonated_indexingType___block_invoke_2;
  v16[3] = &unk_1E82519E0;
  v12 = v9;
  v17 = v12;
  v18 = self;
  v21 = a5;
  v13 = v8;
  v19 = v13;
  v14 = v7;
  v20 = v14;
  [v10 __performWriteWithCaller:v11 usingBlock:v16];

  v15 = [(EDSearchableIndexPersistence *)self hookResponder];
  if (objc_opt_respondsToSelector())
  {
    [v15 searchableIndexDidAssignIndexingType:a5 forIdentifiers:v13 generationWindow:v12];
  }
}

id __85__EDSearchableIndexPersistence_searchableIndex_messagesNeedToBeDonated_indexingType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 persistedMessageID];
  v3 = [v2 stringValue];

  return v3;
}

uint64_t __85__EDSearchableIndexPersistence_searchableIndex_messagesNeedToBeDonated_indexingType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [(EDSearchableIndexPersistence *)*(a1 + 40) assignIndexingType:*(a1 + 48) forIdentifiers:?];
  v4 = [*(a1 + 40) analytics];
  [v4 didUpdateMessagesAndRecordDonations:*(a1 + 56)];

  return 1;
}

- (void)startReindexingWithConnection:(id)a3
{
  v4 = a3;
  [(EDSearchableIndexPersistence *)self setLastProcessedAttachmentID:0];
  [(EDPersistenceDatabaseConnection *)v4 emptyAllSearchableIndexTables];
  [(EDPersistenceDatabaseConnection *)v4 clearReferencesToSearchableMessages];
  [(EDPersistenceDatabaseConnection *)v4 addAllMessagesToRebuildTable];
  [(EDSearchableIndexPersistence *)self setRebuildIndexState:1];
  v5 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Reindex requested.  Switching to EDSearchableIndexRebuildTableStateUseRebuildTableQuery state", v6, 2u);
  }
}

- (void)searchableIndex:(id)a3 invalidateItemsGreaterThanTransaction:(int64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = a4;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating items greater than transaction %lld", buf, 0xCu);
  }

  v7 = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:invalidateItemsGreaterThanTransaction:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__EDSearchableIndexPersistence_searchableIndex_invalidateItemsGreaterThanTransaction___block_invoke;
  v10[3] = &unk_1E82503F0;
  v10[4] = self;
  v10[5] = a4;
  [v7 __performWriteWithCaller:v8 usingBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __86__EDSearchableIndexPersistence_searchableIndex_invalidateItemsGreaterThanTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v4 setLastProcessedAttachmentID:0];
    [(EDPersistenceDatabaseConnection *)v3 deleteMessagesAfterTransaction:?];
    [(EDPersistenceDatabaseConnection *)v3 deleteAttachmentsAfterTransaction:?];
    [(EDPersistenceDatabaseConnection *)v3 clearTransactionsForTombstonesAfterTransaction:?];
  }

  else
  {
    [v4 startReindexingWithConnection:v3];
  }

  return 1;
}

- (id)searchableIndex:(id)a3 invalidateItemsInTransactions:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:invalidateItemsInTransactions:]"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __78__EDSearchableIndexPersistence_searchableIndex_invalidateItemsInTransactions___block_invoke;
  v16 = &unk_1E8250328;
  v9 = v6;
  v17 = v9;
  v10 = v5;
  v18 = v10;
  [v7 __performWriteWithCaller:v8 usingBlock:&v13];

  v11 = [v9 allObjects];

  return v11;
}

uint64_t __78__EDSearchableIndexPersistence_searchableIndex_invalidateItemsInTransactions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [(EDPersistenceDatabaseConnection *)v3 selectMessageIdentifiersForTransactions:?];
  [v4 addObjectsFromArray:v5];

  v6 = *(a1 + 32);
  v7 = [(EDPersistenceDatabaseConnection *)v3 selectTombstoneIdentifiersForTransactions:?];
  [v6 addObjectsFromArray:v7];

  v8 = *(a1 + 32);
  v9 = [(EDPersistenceDatabaseConnection *)v3 selectAttachmentIdentifiersForTransactions:?];
  [v8 addObjectsFromArray:v9];

  [(EDPersistenceDatabaseConnection *)v3 deleteMessagesInTransactions:?];
  [(EDPersistenceDatabaseConnection *)v3 deleteAttachmentsInTransactions:?];
  [(EDPersistenceDatabaseConnection *)v3 deleteRichLinksInTransactions:?];
  [(EDPersistenceDatabaseConnection *)v3 deleteTombstonesInTransactions:?];

  return 1;
}

- (void)searchableIndex:(id)a3 prepareToIndexAttachmentsForMessageWithIdentifier:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Clearing existing searchable_attachment entries for message_id %@", buf, 0xCu);
  }

  v7 = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:prepareToIndexAttachmentsForMessageWithIdentifier:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__EDSearchableIndexPersistence_searchableIndex_prepareToIndexAttachmentsForMessageWithIdentifier___block_invoke;
  v12[3] = &unk_1E8251CB8;
  v9 = v5;
  v13 = v9;
  [v7 __performWriteWithCaller:v8 usingBlock:v12];

  [(EDSearchableIndexPersistence *)self setLastProcessedAttachmentID:0];
  v10 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "SearchableIndex is preparing to index attachments for message with identifier: %{public}@", buf, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)verificationDataSamplesForSearchableIndex:(id)a3 count:(unint64_t)a4 lastVerifiedMessageID:(int64_t)a5
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__39;
  v17 = __Block_byref_object_dispose__39;
  v18 = 0;
  v8 = [(EDSearchableIndexPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence verificationDataSamplesForSearchableIndex:count:lastVerifiedMessageID:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__EDSearchableIndexPersistence_verificationDataSamplesForSearchableIndex_count_lastVerifiedMessageID___block_invoke;
  v12[3] = &unk_1E8251CE0;
  v12[4] = &v13;
  v12[5] = a4;
  v12[6] = a5;
  [v8 __performReadWithCaller:v9 usingBlock:v12];

  v10 = [(EDSearchableIndexPersistence *)self verificationDataSamplesFromMessageIDTransactionIDDictionary:v14[5]];
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __102__EDSearchableIndexPersistence_verificationDataSamplesForSearchableIndex_count_lastVerifiedMessageID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 messageIDTransactionIDDictionaryToVerifyWithCount:a1[6] lastVerifiedMessageID:?];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (id)distinctTransactionIDsForSearchableIndex:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__39;
  v13 = __Block_byref_object_dispose__39;
  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(EDSearchableIndexPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence distinctTransactionIDsForSearchableIndex:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__EDSearchableIndexPersistence_distinctTransactionIDsForSearchableIndex___block_invoke;
  v8[3] = &unk_1E8251DA0;
  v8[4] = &v9;
  [v4 __performReadWithCaller:v5 usingBlock:v8];

  v6 = [v10[5] copy];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __73__EDSearchableIndexPersistence_distinctTransactionIDsForSearchableIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 selectDistinctTransactionIDs];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (void)clearOrphanedSearchableMessagesFromDatabase
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[EDSearchableIndexPersistence signpostLog];
  v4 = os_signpost_id_generate(v3);

  v5 = +[EDSearchableIndexPersistence signpostLog];
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "EDSearchableIndexPersistenceOrphanedValues", "", buf, 2u);
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence clearOrphanedSearchableMessagesFromDatabase]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__EDSearchableIndexPersistence_clearOrphanedSearchableMessagesFromDatabase__block_invoke;
  v13[3] = &unk_1E8251DA0;
  v13[4] = buf;
  [v7 __performWriteWithCaller:v8 usingBlock:v13];

  v9 = +[EDSearchableIndexPersistence signpostLog];
  v10 = v9;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = *(v15 + 3);
    *v18 = 134349056;
    v19 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v10, OS_SIGNPOST_INTERVAL_END, v4, "EDSearchableIndexPersistenceOrphanedValues", "SpotlightVerificationOrphanedValues=%{public,signpost.telemetry:number1}lu enableTelemetry=YES ", v18, 0xCu);
  }

  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __75__EDSearchableIndexPersistence_clearOrphanedSearchableMessagesFromDatabase__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [(EDPersistenceDatabaseConnection *)v3 clearReferencesToMissingSearchableMessages];
  v4 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Setting %lu orphaned searchable_message values to NULL", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)queueRedonationForDownloadedMessagesWithUnindexedBodies
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = +[EDSearchableIndexPersistence signpostLog];
  spid = os_signpost_id_generate(v2);

  v3 = +[EDSearchableIndexPersistence signpostLog];
  v4 = v3;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "EDSearchableIndexPersistenceUnindexedBodies", "", buf, 2u);
  }

  v32 = [MEMORY[0x1E695DF00] date];
  v33 = 0;
  v34 = 0;
  v5 = *MEMORY[0x1E699A728];
  do
  {
    v6 = objc_autoreleasePoolPush();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = __Block_byref_object_copy__39;
    v44 = __Block_byref_object_dispose__39;
    v45 = 0;
    v7 = [(EDSearchableIndexPersistence *)self database];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence queueRedonationForDownloadedMessagesWithUnindexedBodies]"];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __87__EDSearchableIndexPersistence_queueRedonationForDownloadedMessagesWithUnindexedBodies__block_invoke;
    v40[3] = &unk_1E8251CE0;
    v40[4] = buf;
    v40[5] = v5;
    v40[6] = 200;
    [v7 __performReadWithCaller:v8 usingBlock:v40];

    v9 = [*(*&buf[8] + 40) count];
    if (v9)
    {
      v10 = objc_opt_new();
      v11 = [(EDMessagePersistence *)self->_messagePersistence persistedMessagesForDatabaseIDs:*(*&buf[8] + 40) requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v13)
      {
        v14 = *v37;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v36 + 1) + 8 * i);
            if ([v16 isMessageContentLocallyAvailable])
            {
              v17 = [v16 persistedMessageID];
              v18 = [v17 stringValue];
              [v10 addObject:v18];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v13);
      }

      [(EDSearchableIndexPersistence *)self assignIndexingType:v10 forIdentifiers:?];
      v19 = [*(*&buf[8] + 40) count];
      v20 = [v10 count];
      v21 = [*(*&buf[8] + 40) lastObject];
      v5 = [v21 longLongValue];

      v34 += v19;
      v33 = (v33 + v20);
    }

    _Block_object_dispose(buf, 8);

    objc_autoreleasePoolPop(v6);
  }

  while (v9);
  v22 = [MEMORY[0x1E695DF00] date];
  [v22 timeIntervalSinceDate:v32];
  v24 = v23;

  v25 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
    *buf = 138412802;
    *&buf[4] = v26;
    *&buf[12] = 2048;
    *&buf[14] = v24;
    *&buf[22] = 2112;
    v43 = v27;
    _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "Found %@ messages with unindexed bodies in %0.2f seconds. %@ are available locally.", buf, 0x20u);
  }

  v28 = +[EDSearchableIndexPersistence signpostLog];
  v29 = v28;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 134218496;
    *&buf[4] = v24;
    *&buf[12] = 2048;
    *&buf[14] = v34;
    *&buf[22] = 2048;
    v43 = v33;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v29, OS_SIGNPOST_INTERVAL_END, spid, "EDSearchableIndexPersistenceUnindexedBodies", "duration: %g, unindexed: %llu , available: %llu", buf, 0x20u);
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __87__EDSearchableIndexPersistence_queueRedonationForDownloadedMessagesWithUnindexedBodies__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [(EDPersistenceDatabaseConnection *)v3 messagesWithUnindexedBodiesAfterID:a1[6] limit:?];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (id)_searchableIndexMessageIndexingTypes
{
  if (_searchableIndexMessageIndexingTypes_onceToken != -1)
  {
    [EDSearchableIndexPersistence _searchableIndexMessageIndexingTypes];
  }

  v3 = _searchableIndexMessageIndexingTypes_indexingTypes;

  return v3;
}

void __68__EDSearchableIndexPersistence__searchableIndexMessageIndexingTypes__block_invoke()
{
  v0 = _searchableIndexMessageIndexingTypes_indexingTypes;
  _searchableIndexMessageIndexingTypes_indexingTypes = &unk_1F45E6FB8;
}

- (void)_enumerateSearchableIndexMessageIndexingTypesUsingBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDSearchableIndexPersistence *)self _searchableIndexMessageIndexingTypes];
  v6 = [v5 count];
  v15 = -86;
  v7 = atomic_load(&self->_currentIndexingTypeIndex);
  v15 = v7;
  v8 = atomic_load(&v15);
  while (1)
  {
    v9 = atomic_load(&v15);
    v10 = [v5 objectAtIndexedSubscript:v9];
    if ((v4[2](v4, [v10 integerValue]) & 1) == 0)
    {
      break;
    }

    if (v6 <= (atomic_fetch_add(&v15, 1u) + 1))
    {
      atomic_store(0, &v15);
    }

    v11 = atomic_load(&v15);
    if (v11 == v8)
    {
      goto LABEL_10;
    }
  }

  v12 = atomic_load(&v15);
  atomic_store(v12, &self->_currentIndexingTypeIndex);
  v13 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v10;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Did not finish indexing all types. Starting with type %{public}@ next time.", buf, 0xCu);
  }

LABEL_10:
  v14 = *MEMORY[0x1E69E9840];
}

- (id)_assignIndexedItems:(id)a3 connection:(id)a4 query:(id)a5 indexedBindingsGenerator:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v31 = a4;
  v29 = a5;
  v35 = a6;
  v28 = v9;
  if ([v9 count])
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [v31 preparedStatementForQueryString:v29];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (!v11)
    {
      goto LABEL_15;
    }

    v34 = *v38;
    v32 = *MEMORY[0x1E699B770];
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = MEMORY[0x1E696AD98];
        v15 = [v13 messageID];
        v16 = [v14 numberWithLongLong:{objc_msgSend(v15, "databaseID")}];

        v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "hasBodyData")}];
        v18 = v35[2](v35, v16, v17);
        v36 = 0;
        v19 = [v10 executeWithIndexedBindings:v18 usingBlock:0 error:&v36];
        v20 = v36;
        v21 = v20;
        if ((v19 & 1) == 0)
        {
          v22 = [v20 domain];
          if ([v22 isEqualToString:v32])
          {
            v23 = [v21 code] == 19;

            if (v23)
            {
              v24 = [v13 messageID];
              v25 = [v24 stringValue];
              [v30 addObject:v25];

              goto LABEL_13;
            }
          }

          else
          {
          }

          [v31 handleError:v21 message:@"Adding to searchable_messages index"];
        }

LABEL_13:
        [v10 clearBindingsWithError:0];
        [v10 resetWithError:0];
      }

      v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v11)
      {
LABEL_15:

        goto LABEL_17;
      }
    }
  }

  v30 = MEMORY[0x1E695E0F0];
LABEL_17:

  v26 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)_assignIndexedItems:(id)a3 transaction:(int64_t)a4 connection:(id)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v62 = a5;
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = [v6 messages];
  v8 = [v7 count];

  if (v8)
  {
    v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT OR REPLACE INTO searchable_messages (message_id, message, transaction_id, reindex_type, message_body_indexed) VALUES (?, ?, %lld, %ld, ?)", a4, 0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__EDSearchableIndexPersistence__assignIndexedItems_transaction_connection___block_invoke;
    aBlock[3] = &unk_1E82570C0;
    v71 = v61;
    v57 = _Block_copy(aBlock);
    v9 = [v6 messages];
    v10 = [(EDSearchableIndexPersistence *)self _assignIndexedItems:v9 connection:v62 query:v56 indexedBindingsGenerator:v57];

    [v60 addObjectsFromArray:v10];
    if ([(EDSearchableIndexPersistence *)self rebuildIndexState]== 1)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v12 = [v6 messages];
      v13 = [v12 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (v13)
      {
        v14 = *v67;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v67 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = MEMORY[0x1E696AD98];
            v17 = [*(*(&v66 + 1) + 8 * i) messageID];
            v18 = [v16 numberWithLongLong:{objc_msgSend(v17, "databaseID")}];

            [v11 addObject:v18];
          }

          v13 = [v12 countByEnumeratingWithState:&v66 objects:v74 count:16];
        }

        while (v13);
      }

      v19 = [MEMORY[0x1E699B8C8] column:@"message_id"];
      v20 = [v19 in:v11];

      v21 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"searchable_rebuild" where:v20];
      v65 = 0;
      v22 = [v62 executeDeleteStatement:v21 error:&v65];
      v23 = v65;
      if ((v22 & 1) == 0)
      {
        [v62 handleError:v23 message:@"Deleting from searchable_rebuild table"];
      }
    }
  }

  v24 = [v6 updatedMessages];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT OR REPLACE INTO searchable_messages (message_id, message, transaction_id, reindex_type, message_body_indexed) VALUES (?, ?, %lld, %ld, COALESCE((SELECT message_body_indexed FROM searchable_messages WHERE message_id = ?), ?))", a4, 0];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __75__EDSearchableIndexPersistence__assignIndexedItems_transaction_connection___block_invoke_2;
    v63[3] = &unk_1E82570C0;
    v64 = v61;
    v27 = _Block_copy(v63);
    v28 = [v6 updatedMessages];
    v29 = [(EDSearchableIndexPersistence *)self _assignIndexedItems:v28 connection:v62 query:v26 indexedBindingsGenerator:v27];

    [v60 addObjectsFromArray:v29];
  }

  if ([v61 count])
  {
    v30 = objc_alloc(MEMORY[0x1E699B960]);
    v31 = +[EDMessagePersistence messagesTableName];
    v32 = [v30 initWithTable:v31 conflictResolution:4];

    v33 = [MEMORY[0x1E699B8C8] column:@"ROWID"];
    [v32 setObject:v33 forKeyedSubscript:@"searchable_message"];
    v34 = [v33 in:v61];
    [v32 setWhereClause:v34];

    [v62 executeUpdateStatement:v32 error:0];
  }

  v35 = [v6 attachments];
  v36 = [v35 count];

  if (v36)
  {
    v37 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = MEMORY[0x1E696AD98];
      v39 = [v6 attachments];
      v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(v39, "count")}];
      *buf = 138412290;
      v73 = v40;
      _os_log_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_DEFAULT, "Inserting %@ attachment items into the searchable_attachments table", buf, 0xCu);
    }

    v41 = [v6 attachments];
    v42 = [(EDPersistenceDatabaseConnection *)v62 assignIndexedAttachmentItems:v41 transaction:a4];

    [v60 addObjectsFromArray:v42];
  }

  v43 = [v6 richLinks];
  v44 = [v43 count];

  if (v44)
  {
    v45 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = MEMORY[0x1E696AD98];
      v47 = [v6 richLinks];
      v48 = [v46 numberWithUnsignedInteger:{objc_msgSend(v47, "count")}];
      *buf = 138412290;
      v73 = v48;
      _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "Inserting %@ rich link items into the searchable_rich_links table", buf, 0xCu);
    }

    v49 = [v6 richLinks];
    v50 = [(EDPersistenceDatabaseConnection *)v62 assignIndexedRichLinkItems:v49 transaction:a4];

    [v60 addObjectsFromArray:v50];
  }

  v51 = [v6 dataDetectionItems];
  v52 = [v51 count];

  if (v52)
  {
    v53 = [v6 dataDetectionItems];
    [(EDSearchableIndexPersistence *)self _assignIndexedDataDetectionItems:v53 transaction:a4 connection:v62];
  }

  v54 = *MEMORY[0x1E69E9840];

  return v60;
}

id __75__EDSearchableIndexPersistence__assignIndexedItems_transaction_connection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) addObject:v5];
  v10[0] = v5;
  v10[1] = v5;
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __75__EDSearchableIndexPersistence__assignIndexedItems_transaction_connection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) addObject:v5];
  v10[0] = v5;
  v10[1] = v5;
  v10[2] = v5;
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_attachmentItemsFromAttachmentData:(id)a3 limit:(unint64_t)a4 cancelationToken:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v34 = a5;
  v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
  v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v8)
  {
    v9 = 0;
    v33 = *v47;
    v32 = a4;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        v12 = [v11 attachmentPersistentID];

        v13 = [v11 attachmentID];
        v14 = [v11 attachmentPersistentID];
        v15 = [v11 messagePersistentID];
        v16 = [v11 name];
        v17 = [v11 mailboxID];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __90__EDSearchableIndexPersistence__attachmentItemsFromAttachmentData_limit_cancelationToken___block_invoke;
        v41[3] = &unk_1E82570E8;
        v9 = v12;
        v42 = v9;
        v43 = v11;
        v18 = v35;
        v44 = v18;
        v45 = v37;
        [(EDSearchableIndexPersistence *)self attachmentItemMetadataForAttachmentID:v13 attachmentPersistentID:v14 messagePersistentID:v15 name:v16 mailboxID:v17 result:v41];

        if ([v18 count] >= v32)
        {

          goto LABEL_13;
        }

        v19 = [v34 isCanceled];

        if (v19)
        {
          goto LABEL_13;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  if ([v37 count])
  {
    v20 = [v37 allObjects];
    v21 = [v20 componentsJoinedByString:{@", "}];

    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = +[EDAttachmentPersistence messageAttachmentsTableName];
    v24 = [v22 initWithFormat:@"SELECT attachment FROM %@ WHERE message IN (%@)", v23, v21];

    v25 = [(EDSearchableIndexPersistence *)self database];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence _attachmentItemsFromAttachmentData:limit:cancelationToken:]"];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __90__EDSearchableIndexPersistence__attachmentItemsFromAttachmentData_limit_cancelationToken___block_invoke_2;
    v38[3] = &unk_1E8250328;
    v27 = v24;
    v39 = v27;
    v28 = v21;
    v40 = v28;
    [v25 __performWriteWithCaller:v26 usingBlock:v38];
  }

  if (v9)
  {
    [(EDSearchableIndexPersistence *)self setLastProcessedAttachmentID:v9];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v35;
}

void __90__EDSearchableIndexPersistence__attachmentItemsFromAttachmentData_limit_cancelationToken___block_invoke(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  if (v10)
  {
    v5 = [EDSearchableIndexAttachmentItem alloc];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) messagePersistentID];
    v8 = [(EDSearchableIndexAttachmentItem *)v5 initWithAttachmentPersistentID:v6 messagePersistentID:v7 metadatum:v10];

    [*(a1 + 48) addObject:v8];
  }

  else
  {
    if (!a3)
    {
      goto LABEL_6;
    }

    v9 = *(a1 + 56);
    v8 = [*(a1 + 40) messagePersistentID];
    [v9 addObject:v8];
  }

LABEL_6:
}

uint64_t __90__EDSearchableIndexPersistence__attachmentItemsFromAttachmentData_limit_cancelationToken___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__39;
  v27 = __Block_byref_object_dispose__39;
  v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v21 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__EDSearchableIndexPersistence__attachmentItemsFromAttachmentData_limit_cancelationToken___block_invoke_3;
  v22[3] = &unk_1E8250418;
  v22[4] = &v23;
  v5 = [v4 executeUsingBlock:v22 error:&v21];
  v6 = v21;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = +[EDAttachmentPersistence messageAttachmentsTableName];
    v9 = [v7 initWithFormat:@"DELETE FROM %@ WHERE message IN (%@)", v8, *(a1 + 40)];

    [v3 executeStatementString:v9 errorMessage:@"Removing unexpected messages from attachments table"];
    v10 = MEMORY[0x1E696AEC0];
    v11 = +[EDAttachmentPersistence messageAttachmentsTableName];
    v12 = [v10 stringWithFormat:@"SELECT attachment FROM %@ WHERE attachment IN (%@)", v11, v24[5]];

    v13 = [v3 preparedStatementForQueryString:v12];
    v19 = v6;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__EDSearchableIndexPersistence__attachmentItemsFromAttachmentData_limit_cancelationToken___block_invoke_4;
    v20[3] = &unk_1E8250418;
    v20[4] = &v23;
    [v13 executeUsingBlock:v20 error:&v19];
    v14 = v19;

    v15 = MEMORY[0x1E696AEC0];
    v16 = +[EDAttachmentPersistence attachmentsTableName];
    v17 = [v15 stringWithFormat:@"DELETE FROM %@ WHERE ROWID IN (%@)", v16, v24[5]];

    [v3 executeStatementString:v17 errorMessage:@"Removing unexpected messages from attachments table"];
    v6 = v14;
  }

  else
  {
    [v3 handleError:v6 message:@"get attachment for messageid"];
  }

  _Block_object_dispose(&v23, 8);
  return v5;
}

- (id)_richLinkItemsFromRichLinkData:(id)a3 limit:(unint64_t)a4 cancelationToken:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v32 = a5;
  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
  v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v30 = a4;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v8)
  {
    v9 = *v41;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = [v11 richLinkID];
        v13 = [v11 messageID];
        v14 = [v11 mailboxID];
        v15 = [v11 title];
        v16 = [v11 url];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke;
        v37[3] = &unk_1E8257110;
        v37[4] = v11;
        v17 = v33;
        v38 = v17;
        v39 = v34;
        [(EDSearchableIndexPersistence *)self searchableRichLinkItemMetadataForRichLinkID:v12 messagePersistentID:v13 mailboxID:v14 title:v15 url:v16 result:v37];

        if ([v17 count] >= v30)
        {

          goto LABEL_12;
        }

        v18 = [v32 isCanceled];

        if (v18)
        {
          goto LABEL_12;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if ([v34 count])
  {
    v19 = [v34 allObjects];
    v20 = [v19 componentsJoinedByString:{@", "}];

    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = +[EDRichLinkPersistence messageRichLinksTableName];
    v23 = [v21 initWithFormat:@"SELECT m.global_message_id, mr.rich_link FROM %@ AS mr  LEFT OUTER JOIN messages AS m ON (m.global_message_id = mr.global_message_id) WHERE m.ROWID IN (%@)", v22, v20];

    v24 = [(EDSearchableIndexPersistence *)self database];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence _richLinkItemsFromRichLinkData:limit:cancelationToken:]"];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke_2;
    v35[3] = &unk_1E8251CB8;
    v26 = v23;
    v36 = v26;
    [v24 __performWriteWithCaller:v25 usingBlock:v35];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v33;
}

void __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke(uint64_t a1, void *a2, int a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = [EDSearchableIndexRichLinkItem alloc];
    v6 = [*(a1 + 32) messageID];
    v7 = [(EDSearchableIndexRichLinkItem *)v5 initWithMessageID:v6 metadatum:v9];

    [*(a1 + 40) addObject:v7];
  }

  else
  {
    if (!a3)
    {
      goto LABEL_6;
    }

    v8 = *(a1 + 48);
    v7 = [*(a1 + 32) messageID];
    [v8 addObject:v7];
  }

LABEL_6:
}

uint64_t __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__39;
  v45 = __Block_byref_object_dispose__39;
  v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__39;
  v39 = __Block_byref_object_dispose__39;
  v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v33 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke_3;
  v34[3] = &unk_1E8250468;
  v34[4] = &v35;
  v34[5] = &v41;
  v5 = [v4 executeUsingBlock:v34 error:&v33];
  v6 = v33;
  if (v5)
  {
    v29 = v4;
    v7 = [v36[5] allObjects];
    v8 = [v7 componentsJoinedByString:{@", "}];

    v28 = v8;
    v9 = [v42[5] allObjects];
    v30 = [v9 componentsJoinedByString:{@", "}];

    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = +[EDRichLinkPersistence messageRichLinksTableName];
    v12 = [v10 initWithFormat:@"DELETE FROM %@ WHERE global_message_id IN (%@)", v11, v8];

    v13 = [v3 executeStatementString:v12 errorMessage:@"Removing unexpected rich links from message_rich_links table"];
    v14 = MEMORY[0x1E696AEC0];
    v15 = +[EDRichLinkPersistence messageRichLinksTableName];
    v16 = [v14 stringWithFormat:@"SELECT rich_link FROM %@ WHERE rich_link IN (%@)", v15, v30];

    v17 = [v3 preparedStatementForQueryString:v16];
    v18 = v17;
    if (v13)
    {
      v31 = v6;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke_4;
      v32[3] = &unk_1E8250418;
      v32[4] = &v41;
      v19 = [v17 executeUsingBlock:v32 error:&v31];
      v20 = v31;

      v6 = v20;
    }

    else
    {
      v19 = 0;
    }

    v22 = [v42[5] allObjects];
    v23 = [v22 componentsJoinedByString:{@", "}];

    v24 = MEMORY[0x1E696AEC0];
    v25 = +[EDRichLinkPersistence richLinksTableName];
    v26 = [v24 stringWithFormat:@"DELETE FROM %@ WHERE ROWID IN (%@)", v25, v23];

    if (v19)
    {
      v21 = [v3 executeStatementString:v26 errorMessage:@"Removing unexpected rich links from rich_links table"];
    }

    else
    {
      v21 = 0;
    }

    v4 = v29;
  }

  else
  {
    [v3 handleError:v6 message:@"Could not find rich links to remove for messageIDs"];
    v21 = 0;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v21;
}

void __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v10 = v3;
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v5 stringValue];
  [v4 addObject:v6];

  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [v10 objectAtIndexedSubscript:1];
  v9 = [v8 stringValue];
  [v7 addObject:v9];
}

void __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 removeObject:v3];
}

- (void)searchableRichLinkItemMetadataForRichLinkID:(id)a3 messagePersistentID:(id)a4 mailboxID:(int64_t)a5 title:(id)a6 url:(id)a7 result:(id)a8
{
  v38[1] = *MEMORY[0x1E69E9840];
  v37 = a3;
  v13 = a4;
  v36 = a6;
  v14 = a7;
  v15 = a8;
  v16 = [(EDSearchableIndexPersistence *)self messagePersistence];
  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "databaseID")}];
  v38[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v19 = [v16 persistedMessagesForDatabaseIDs:v18 requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];
  v20 = [v19 firstObject];

  if (v20)
  {
    v21 = [(EDSearchableIndexPersistence *)self allMailboxIdentifiersForMessage:v20];
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = [v20 to];
    v24 = [v23 count];

    if (v24)
    {
      v25 = [v20 to];
      [v22 addObjectsFromArray:v25];
    }

    v26 = [v20 cc];
    v27 = [v26 count];

    if (v27)
    {
      v28 = [v20 cc];
      [v22 addObjectsFromArray:v28];
    }

    v29 = [EDSearchableIndexItem domainIdentifierForMessage:v20];
    v30 = [EDSearchableIndexRichLinkItemMetadatum alloc];
    v31 = [v20 dateReceived];
    v32 = [v20 dateSent];
    v33 = [(EDSearchableIndexRichLinkItemMetadatum *)v30 initWithDomainIdentifier:v29 accountIdentifier:0 mailboxIdentifiers:v21 senderAddress:0 recipientAddresses:v22 dateReceived:v31 dateSent:v32 url:v14 richLinkID:v37 title:v36];

    v15[2](v15, v33, 0);
  }

  else
  {
    v34 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      [EDSearchableIndexPersistence searchableRichLinkItemMetadataForRichLinkID:v37 messagePersistentID:v13 mailboxID:v34 title:? url:? result:?];
    }

    v15[2](v15, 0, 1);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (id)allMailboxIdentifiersForMessage:(id)a3
{
  v5 = a3;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence allMailboxIdentifiersForMessage:]", "EDSearchableIndexPersistence.m", 2113, "0");
}

- (void)_assignIndexedDataDetectionItems:(id)a3 transaction:(int64_t)a4 connection:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    v9 = *MEMORY[0x1E699A728];
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [(EDSearchableIndexPersistence *)self messagePersistence];
        v13 = [v11 messageID];
        v14 = [v12 globalIDForMessageWithDatabaseID:objc_msgSend(v13 mailboxScope:{"databaseID"), 0}];

        if (v14 != v9)
        {
          v15 = [(EDDataDetectionPersistence *)self->_dataDetectionPersistence getDataDetectionResultRowIDsForGlobalMessageID:v14];
          v16 = [v11 messageID];
          [(EDSearchableIndexPersistence *)self _addSearchableDataDetectionResults:v15 withMessage:v16 transaction:a4];
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_addSearchableDataDetectionResults:(id)a3 withMessage:(id)a4 transaction:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 1;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__39;
    v18[4] = __Block_byref_object_dispose__39;
    v19 = 0;
    v10 = [(EDSearchableIndexPersistence *)self database];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence _addSearchableDataDetectionResults:withMessage:transaction:]"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__EDSearchableIndexPersistence__addSearchableDataDetectionResults_withMessage_transaction___block_invoke;
    v12[3] = &unk_1E8257138;
    v13 = v8;
    v14 = v9;
    v15 = v20;
    v16 = v18;
    v17 = a5;
    [v10 __performWriteWithCaller:v11 usingBlock:v12];

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v20, 8);
  }
}

uint64_t __91__EDSearchableIndexPersistence__addSearchableDataDetectionResults_withMessage_transaction___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"searchable_data_detection_results"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v5)
  {
    v7 = *v25;
    *&v6 = 138412546;
    v21 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "databaseID", v21)}];
        [v4 setObject:v10 forKeyedSubscript:@"message"];

        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "longLongValue")}];
        [v4 setObject:v11 forKeyedSubscript:@"data_detection_result"];

        v12 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 64)];
        [v4 setObject:v12 forKeyedSubscript:@"transaction_id"];

        v13 = *(*(a1 + 56) + 8);
        v23 = *(v13 + 40);
        v14 = [v3 executeInsertStatement:v4 error:&v23];
        objc_storeStrong((v13 + 40), v23);
        *(*(*(a1 + 48) + 8) + 24) = v14;
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          v15 = +[EDSearchableIndexPersistence log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a1 + 40);
            *buf = v21;
            v29 = v9;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Data detection result %@ with message %@ was successfully added to the searchable_data_detection_results table", buf, 0x16u);
          }
        }

        else
        {
          v17 = +[EDSearchableIndexPersistence log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __91__EDSearchableIndexPersistence__addSearchableDataDetectionResults_withMessage_transaction___block_invoke_cold_1(v32, a1 + 56, &v33, v17);
          }

          [v3 handleError:*(*(*(a1 + 56) + 8) + 40) message:@"Storing searchable data detection results"];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v5);
  }

  v18 = *(*(*(a1 + 48) + 8) + 24);
  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (EDSearchableIndexHookResponder)hookResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_hookResponder);

  return WeakRetained;
}

- (void)searchableRichLinkItemMetadataForRichLinkID:(os_log_t)log messagePersistentID:mailboxID:title:url:result:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Encountered a reference to a non-existent message in the rich_links table for richLinkPersistentID:%{public}@, messagePersistentID:%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __91__EDSearchableIndexPersistence__addSearchableDataDetectionResults_withMessage_transaction___block_invoke_cold_1(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*(*a2 + 8) + 40);
  *buf = 138412290;
  *a3 = v4;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Error storing searchable data detection results: %@", buf, 0xCu);
}

@end