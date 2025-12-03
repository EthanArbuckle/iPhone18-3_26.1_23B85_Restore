@interface EDSearchableIndexPersistence
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (id)searchableAttachmentsTableSchema;
+ (id)searchableDataDetectionResultsTableSchema;
+ (id)searchableMessageTombstonesTableSchema;
+ (id)searchableMessagesTableSchema;
+ (id)searchableRebuildTableSchema;
+ (id)searchableRichLinksTableSchema;
+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve;
- (BOOL)_canPerformIncrementalIndexForIdentifier:(id)identifier indexingType:(int64_t)type;
- (EDPersistedAttachmentID)lastProcessedAttachmentID;
- (EDSearchableIndexHookResponder)hookResponder;
- (EDSearchableIndexPersistence)initWithDatabase:(id)database messagePersistence:(id)persistence richLinkPersistence:(id)linkPersistence hookResponder:(id)responder;
- (id)_assignIndexedItems:(id)items connection:(id)connection query:(id)query indexedBindingsGenerator:(id)generator;
- (id)_assignIndexedItems:(id)items transaction:(int64_t)transaction connection:(id)connection;
- (id)_attachmentItemsFromAttachmentData:(id)data limit:(unint64_t)limit cancelationToken:(id)token;
- (id)_messagesRequiringIndexingForType:(int64_t)type excludingIdentifiers:(id)identifiers limit:(int64_t)limit;
- (id)_richLinkItemsFromRichLinkData:(id)data limit:(unint64_t)limit cancelationToken:(id)token;
- (id)_searchableIndexMessageIndexingTypes;
- (id)allMailboxIdentifiersForMessage:(id)message;
- (id)childIdentifiersToRemoveFromSearchableIndex:(id)index whenRemovingParentIdentifiers:(id)identifiers;
- (id)distinctTransactionIDsForSearchableIndex:(id)index;
- (id)domainsToRemoveForSearchableIndex:(id)index;
- (id)getIndexSnapshot;
- (id)itemsToIndexForSearchableIndex:(id)index excludingIdentifiers:(id)identifiers count:(unint64_t)count cancelationToken:(id)token;
- (id)itemsToRemoveForSearchableIndex:(id)index;
- (id)messagesNeedingReindex;
- (id)messagesWhere:(id)where useSearchableRebuildTable:(BOOL)table limit:(int64_t)limit;
- (id)searchableIndex:(id)index assignTransaction:(int64_t)transaction updates:(id)updates;
- (id)searchableIndex:(id)index attachmentItemsForMessageWithIdentifier:(id)identifier;
- (id)searchableIndex:(id)index invalidateItemsInTransactions:(id)transactions;
- (id)searchableIndexItemsFromMessages:(id)messages type:(int64_t)type;
- (id)selectMessageIDsFromBacklogWithBatchSize:(unint64_t)size;
- (id)urlForMessageID:(id)d;
- (id)verificationDataSamplesForSearchableIndex:(id)index count:(unint64_t)count lastVerifiedMessageID:(int64_t)d;
- (id)verificationDataSamplesFromMessageIDTransactionIDDictionary:(id)dictionary;
- (int64_t)indexingTypeForSearchableIndex:(id)index item:(id)item;
- (unint64_t)signpostID;
- (void)_addSearchableDataDetectionResults:(id)results withMessage:(id)message transaction:(int64_t)transaction;
- (void)_assignIndexedDataDetectionItems:(id)items transaction:(int64_t)transaction connection:(id)connection;
- (void)_enumerateSearchableIndexMessageIndexingTypesUsingBlock:(id)block;
- (void)assignIndexingType:(void *)type forIdentifiers:;
- (void)attachmentItemMetadataForAttachmentID:(id)d attachmentPersistentID:(id)iD messagePersistentID:(id)persistentID name:(id)name mailboxID:(int64_t)mailboxID result:(id)result;
- (void)clearOrphanedSearchableMessagesFromDatabase;
- (void)queueRedonationForDownloadedMessagesWithUnindexedBodies;
- (void)searchableIndex:(id)index dataNeedsToBeDonatedForMessages:(id)messages;
- (void)searchableIndex:(id)index indexGeneratedSummaries:(id)summaries;
- (void)searchableIndex:(id)index invalidateItemsGreaterThanTransaction:(int64_t)transaction;
- (void)searchableIndex:(id)index messagesNeedToBeDonated:(id)donated indexingType:(int64_t)type;
- (void)searchableIndex:(id)index prepareToIndexAttachmentsForMessageWithIdentifier:(id)identifier;
- (void)searchableIndex:(id)index willRemoveIdentifiers:(id)identifiers type:(int64_t)type;
- (void)searchableRichLinkItemMetadataForRichLinkID:(id)d messagePersistentID:(id)iD mailboxID:(int64_t)mailboxID title:(id)title url:(id)url result:(id)result;
- (void)setLastProcessedAttachmentID:(id)d;
- (void)startReindexingWithConnection:(id)connection;
@end

@implementation EDSearchableIndexPersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EDSearchableIndexPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
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
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve
{
  v33[4] = *MEMORY[0x1E69E9840];
  searchableMessagesTableSchema = [self searchableMessagesTableSchema];
  searchableAttachmentsTableSchema = [self searchableAttachmentsTableSchema];
  searchableRichLinksTableSchema = [self searchableRichLinksTableSchema];
  searchableDataDetectionResultsTableSchema = [self searchableDataDetectionResultsTableSchema];
  searchableRebuildTableSchema = [self searchableRebuildTableSchema];
  v5 = [EDPersistenceForeignKeyPlaceholder alloc];
  v27 = [searchableMessagesTableSchema columnForName:@"message"];
  v21 = +[EDMessagePersistence messagesTableName];
  v22 = [EDPersistenceForeignKeyPlaceholder initWithColumn:v5 tableName:"initWithColumn:tableName:onDelete:onUpdate:" onDelete:v27 onUpdate:?];
  v33[0] = v22;
  v6 = [EDPersistenceForeignKeyPlaceholder alloc];
  v26 = [searchableAttachmentsTableSchema columnForName:@"attachment"];
  v7 = +[EDAttachmentPersistence messageAttachmentsTableName];
  v8 = [(EDPersistenceForeignKeyPlaceholder *)v6 initWithColumn:v26 tableName:v7 onDelete:3 onUpdate:0];
  v33[1] = v8;
  v9 = [EDPersistenceForeignKeyPlaceholder alloc];
  v10 = [searchableRichLinksTableSchema columnForName:@"rich_link"];
  v11 = +[EDRichLinkPersistence richLinksTableName];
  v12 = [(EDPersistenceForeignKeyPlaceholder *)v9 initWithColumn:v10 tableName:v11 onDelete:3 onUpdate:0];
  v33[2] = v12;
  v13 = [EDPersistenceForeignKeyPlaceholder alloc];
  v14 = [searchableDataDetectionResultsTableSchema columnForName:@"message_id"];
  v15 = +[EDMessagePersistence messagesTableName];
  v16 = [(EDPersistenceForeignKeyPlaceholder *)v13 initWithColumn:v14 tableName:v15 onDelete:3 onUpdate:0];
  v33[3] = v16;
  *resolve = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];

  *toResolve = MEMORY[0x1E695E0F0];
  v32[0] = searchableMessagesTableSchema;
  searchableMessageTombstonesTableSchema = [self searchableMessageTombstonesTableSchema];
  v32[1] = searchableMessageTombstonesTableSchema;
  v32[2] = searchableAttachmentsTableSchema;
  v32[3] = searchableRichLinksTableSchema;
  v32[4] = searchableDataDetectionResultsTableSchema;
  v32[5] = searchableRebuildTableSchema;
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
  searchableMessagesTableName = [self searchableMessagesTableName];
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:1];
  v24[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"transaction_id" nullable:0];
  v24[1] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_body_indexed" nullable:0];
  v24[2] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"reindex_type" nullable:0];
  v24[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v10 = [v3 initWithName:searchableMessagesTableName rowIDType:1 rowIDAlias:@"message_id" columns:v9];

  v23[0] = @"message";
  v23[1] = @"reindex_type";
  v23[2] = @"transaction_id";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  [v10 addIndexForColumns:v11];

  v12 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"reindex_type"];
  v13 = [v12 notEqualTo:&unk_1F45E69B8];

  v14 = objc_alloc(MEMORY[0x1E699B900]);
  name = [v10 name];
  v22[0] = @"reindex_type";
  v22[1] = @"message_id";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v17 = [v14 initWithTableName:name columnNames:v16 where:v13 unique:0];
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

- (EDSearchableIndexPersistence)initWithDatabase:(id)database messagePersistence:(id)persistence richLinkPersistence:(id)linkPersistence hookResponder:(id)responder
{
  databaseCopy = database;
  persistenceCopy = persistence;
  linkPersistenceCopy = linkPersistence;
  responderCopy = responder;
  v21.receiver = self;
  v21.super_class = EDSearchableIndexPersistence;
  v15 = [(EDSearchableIndexPersistence *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_database, database);
    objc_storeWeak(&v16->_hookResponder, responderCopy);
    objc_storeStrong(&v16->_messagePersistence, persistence);
    objc_storeStrong(&v16->_richLinkPersistence, linkPersistence);
    v16->_lastProcessedAttachmentIDLock._os_unfair_lock_opaque = 0;
    lastProcessedAttachmentID = v16->_lastProcessedAttachmentID;
    v16->_lastProcessedAttachmentID = 0;

    v18 = [[EDDataDetectionPersistence alloc] initWithDatabase:databaseCopy messagePersistence:0 hookResponder:0];
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
    database = [(EDSearchableIndexPersistence *)self database];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence lastProcessedAttachmentID]"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__EDSearchableIndexPersistence_lastProcessedAttachmentID__block_invoke;
    v8[3] = &unk_1E8251DA0;
    v8[4] = &v9;
    [database __performReadWithCaller:v5 usingBlock:v8];

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

- (void)setLastProcessedAttachmentID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  os_unfair_lock_lock(&self->_lastProcessedAttachmentIDLock);
  if (self->_lastProcessedAttachmentID == dCopy)
  {
    os_unfair_lock_unlock(&self->_lastProcessedAttachmentIDLock);
  }

  else
  {
    objc_storeStrong(&self->_lastProcessedAttachmentID, d);
    os_unfair_lock_unlock(&self->_lastProcessedAttachmentIDLock);
    v6 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = dCopy;
      v14 = 2112;
      v15 = @"com.apple.mail.searchableIndex.lastProcessedAttachmentIDKey";
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Setting object:%@ for key: %@", buf, 0x16u);
    }

    database = [(EDSearchableIndexPersistence *)self database];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence setLastProcessedAttachmentID:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__EDSearchableIndexPersistence_setLastProcessedAttachmentID___block_invoke;
    v10[3] = &unk_1E8251CB8;
    v11 = dCopy;
    [database __performWriteWithCaller:v8 usingBlock:v10];
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
  database = [(EDSearchableIndexPersistence *)self database];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence getIndexSnapshot]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__EDSearchableIndexPersistence_getIndexSnapshot__block_invoke;
  v6[3] = &unk_1E8251DA0;
  v6[4] = &v7;
  [database __performReadWithCaller:v3 usingBlock:v6];

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
  database = [(EDSearchableIndexPersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence messagesNeedingReindex]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EDSearchableIndexPersistence_messagesNeedingReindex__block_invoke;
  v7[3] = &unk_1E8251DA0;
  v7[4] = &v8;
  [database __performReadWithCaller:v4 usingBlock:v7];

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

- (id)messagesWhere:(id)where useSearchableRebuildTable:(BOOL)table limit:(int64_t)limit
{
  whereCopy = where;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence messagesWhere:useSearchableRebuildTable:limit:]", "EDSearchableIndexPersistence.m", 1111, "0");
}

- (id)searchableIndexItemsFromMessages:(id)messages type:(int64_t)type
{
  messagesCopy = messages;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence searchableIndexItemsFromMessages:type:]", "EDSearchableIndexPersistence.m", 1115, "0");
}

- (void)attachmentItemMetadataForAttachmentID:(id)d attachmentPersistentID:(id)iD messagePersistentID:(id)persistentID name:(id)name mailboxID:(int64_t)mailboxID result:(id)result
{
  dCopy = d;
  iDCopy = iD;
  persistentIDCopy = persistentID;
  nameCopy = name;
  resultCopy = result;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence attachmentItemMetadataForAttachmentID:attachmentPersistentID:messagePersistentID:name:mailboxID:result:]", "EDSearchableIndexPersistence.m", 1119, "0");
}

- (id)searchableIndex:(id)index attachmentItemsForMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__39;
  v22 = __Block_byref_object_dispose__39;
  v23 = 0;
  database = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:attachmentItemsForMessageWithIdentifier:]"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __88__EDSearchableIndexPersistence_searchableIndex_attachmentItemsForMessageWithIdentifier___block_invoke;
  v15 = &unk_1E8250FD8;
  v17 = &v18;
  v9 = identifierCopy;
  v16 = v9;
  [database __performReadWithCaller:v8 usingBlock:&v12];

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

- (void)searchableIndex:(id)index indexGeneratedSummaries:(id)summaries
{
  summariesCopy = summaries;
  messagePersistence = [(EDSearchableIndexPersistence *)self messagePersistence];
  [messagePersistence setGeneratedSummaries:summariesCopy];
}

- (id)verificationDataSamplesFromMessageIDTransactionIDDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence verificationDataSamplesFromMessageIDTransactionIDDictionary:]", "EDSearchableIndexPersistence.m", 1143, "0");
}

- (id)domainsToRemoveForSearchableIndex:(id)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__39;
  v12 = __Block_byref_object_dispose__39;
  v13 = MEMORY[0x1E695E0F0];
  database = [(EDSearchableIndexPersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence domainsToRemoveForSearchableIndex:]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__EDSearchableIndexPersistence_domainsToRemoveForSearchableIndex___block_invoke;
  v7[3] = &unk_1E8251DA0;
  v7[4] = &v8;
  [database __performReadWithCaller:v4 usingBlock:v7];

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

- (id)itemsToRemoveForSearchableIndex:(id)index
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  database = [(EDSearchableIndexPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence itemsToRemoveForSearchableIndex:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__EDSearchableIndexPersistence_itemsToRemoveForSearchableIndex___block_invoke;
  v9[3] = &unk_1E8251CB8;
  v7 = v4;
  v10 = v7;
  [database __performReadWithCaller:v6 usingBlock:v9];

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

- (id)itemsToIndexForSearchableIndex:(id)index excludingIdentifiers:(id)identifiers count:(unint64_t)count cancelationToken:(id)token
{
  v120 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  tokenCopy = token;
  selfCopy = self;
  rebuildIndexState = [(EDSearchableIndexPersistence *)self rebuildIndexState];
  v10 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = +[EDSearchableIndexScheduler isTurboModeIndexingEnabled];
    v12 = @"off";
    *buf = 134218498;
    *&buf[4] = count;
    if (v11)
    {
      v12 = @"on";
    }

    *&buf[12] = 2048;
    *&buf[14] = rebuildIndexState;
    *&buf[22] = 2112;
    v117 = v12;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "SearchableIndex is requesting a batch of up to %lu items requiring indexing, rebuild state = %lu, turbo mode = %@", buf, 0x20u);
  }

  if (!rebuildIndexState)
  {
    database = [(EDSearchableIndexPersistence *)selfCopy database];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence itemsToIndexForSearchableIndex:excludingIdentifiers:count:cancelationToken:]"];
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke;
    v105[3] = &unk_1E8251CB8;
    v105[4] = selfCopy;
    [database __performReadWithCaller:v14 usingBlock:v105];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_420;
  aBlock[3] = &unk_1E8256FF8;
  v71 = v15;
  v103 = v71;
  countCopy = count;
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
  obj = identifiersCopy;
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
            first = [v23 first];
            v26 = [*(*&buf[8] + 40) objectForKeyedSubscript:first];
            v27 = v26 == 0;

            if (v27)
            {
              v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [*(*&buf[8] + 40) setObject:v28 forKeyedSubscript:first];
            }

            v29 = [*(*&buf[8] + 40) objectForKeyedSubscript:first];
            second = [v24 second];
            [v29 addObject:second];
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
  v32 = tokenCopy;
  v93 = v32;
  v94 = selfCopy;
  v69 = v79;
  v95 = v69;
  v76 = v71;
  v96 = v76;
  [(EDSearchableIndexPersistence *)selfCopy _enumerateSearchableIndexMessageIndexingTypesUsingBlock:v92];
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
  signpostID = [(EDSearchableIndexPersistence *)selfCopy signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    LODWORD(v110) = 134217984;
    *(&v110 + 4) = v34;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v35, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EDSearchableIndexPersistenceWhileLoop", "limit=%ld", &v110, 0xCu);
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
    database2 = [(EDSearchableIndexPersistence *)selfCopy database];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence itemsToIndexForSearchableIndex:excludingIdentifiers:count:cancelationToken:]"];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_425;
    v87[3] = &unk_1E8254100;
    v91 = &v110;
    v88 = v81;
    v89 = selfCopy;
    v39 = v32;
    v90 = v39;
    [database2 __performReadWithCaller:v38 usingBlock:v87];

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
      v43 = [(EDSearchableIndexPersistence *)selfCopy _attachmentItemsFromAttachmentData:*(*(&v110 + 1) + 40) limit:v34 cancelationToken:v39];
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
  signpostID2 = [(EDSearchableIndexPersistence *)selfCopy signpostID];
  if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    LOWORD(v110) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v51, OS_SIGNPOST_INTERVAL_END, signpostID2, "EDSearchableIndexPersistenceWhileLoop", "", &v110, 2u);
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
    database3 = [(EDSearchableIndexPersistence *)selfCopy database];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence itemsToIndexForSearchableIndex:excludingIdentifiers:count:cancelationToken:]"];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __107__EDSearchableIndexPersistence_itemsToIndexForSearchableIndex_excludingIdentifiers_count_cancelationToken___block_invoke_426;
    v83[3] = &unk_1E8257048;
    v85 = &v110;
    v86 = buf;
    v56 = v32;
    v84 = v56;
    [database3 __performReadWithCaller:v55 usingBlock:v83];

    if (![*(*(&v110 + 1) + 40) count])
    {
      goto LABEL_58;
    }

    if (([v56 isCanceled] & 1) == 0)
    {
      v58 = [(EDSearchableIndexPersistence *)selfCopy _richLinkItemsFromRichLinkData:*(*(&v110 + 1) + 40) limit:v53 cancelationToken:v56];
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

- (id)selectMessageIDsFromBacklogWithBatchSize:(unint64_t)size
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__39;
  v13 = __Block_byref_object_dispose__39;
  v14 = MEMORY[0x1E695E0F0];
  database = [(EDSearchableIndexPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence selectMessageIDsFromBacklogWithBatchSize:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__EDSearchableIndexPersistence_selectMessageIDsFromBacklogWithBatchSize___block_invoke;
  v8[3] = &unk_1E8250150;
  v8[4] = &v9;
  v8[5] = size;
  [database __performReadWithCaller:v5 usingBlock:v8];

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

- (id)urlForMessageID:(id)d
{
  dCopy = d;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence urlForMessageID:]", "EDSearchableIndexPersistence.m", 1371, "0");
}

- (id)_messagesRequiringIndexingForType:(int64_t)type excludingIdentifiers:(id)identifiers limit:(int64_t)limit
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = [identifiers componentsJoinedByString:{@", "}];
  v9 = 0;
  v10 = 0;
  if (type > 3)
  {
    if ((type - 4) < 2)
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = @"messages.global_message_id IN (SELECT data_detection_results.global_message_id FROM data_detection_results LEFT OUTER JOIN searchable_data_detection_results ON data_detection_results.ROWID = searchable_data_detection_results.data_detection_result WHERE searchable_data_detection_results.data_detection_result IS NULL) AND likely(messages.ROWID NOT IN (%@))";
LABEL_9:
      v9 = [v11 initWithFormat:v12, v8];
      v10 = 0;
      goto LABEL_10;
    }

    if (type != 7)
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = @"((messages.ROWID IN (SELECT message_id FROM searchable_messages WHERE (searchable_messages.reindex_type = 1 OR searchable_messages.reindex_type = 2 OR searchable_messages.reindex_type = 7))) AND likely(messages.ROWID NOT IN (%@)))";
    goto LABEL_9;
  }

  if (type)
  {
    if (type == 2)
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
  additionalFilterClause = [(EDSearchableIndexPersistence *)self additionalFilterClause];
  if ([additionalFilterClause length])
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ AND %@", v9, additionalFilterClause];

    v9 = v14;
  }

  if (v9)
  {
    v15 = +[EDSearchableIndexPersistence signpostLog];
    signpostID = [(EDSearchableIndexPersistence *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 134218240;
      typeCopy = type;
      v26 = 2048;
      limitCopy = limit;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EDSearchableIndexPersistenceMessagesForIndexing", "type=%ld limit=%ld", buf, 0x16u);
    }

    v17 = [(EDSearchableIndexPersistence *)self messagesWhere:v9 useSearchableRebuildTable:v10 limit:limit];
    v18 = +[EDSearchableIndexPersistence signpostLog];
    signpostID2 = [(EDSearchableIndexPersistence *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v18, OS_SIGNPOST_INTERVAL_END, signpostID2, "EDSearchableIndexPersistenceMessagesForIndexing", "", buf, 2u);
    }

    v20 = v17;
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  if (-[EDSearchableIndexPersistence rebuildIndexState](self, "rebuildIndexState") == 1 && !([v20 count] | type))
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

- (int64_t)indexingTypeForSearchableIndex:(id)index item:(id)item
{
  itemCopy = item;
  indexingType = [itemCopy indexingType];
  if ([EDSearchableIndex isIncrementalIndexingType:indexingType])
  {
    identifier = [itemCopy identifier];
    v8 = [(EDSearchableIndexPersistence *)self _canPerformIncrementalIndexForIdentifier:identifier indexingType:indexingType];

    v9 = 5;
    if (indexingType != 4)
    {
      v9 = 0;
    }

    if (!v8)
    {
      indexingType = v9;
    }
  }

  return indexingType;
}

- (BOOL)_canPerformIncrementalIndexForIdentifier:(id)identifier indexingType:(int64_t)type
{
  identifierCopy = identifier;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  database = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence _canPerformIncrementalIndexForIdentifier:indexingType:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__EDSearchableIndexPersistence__canPerformIncrementalIndexForIdentifier_indexingType___block_invoke;
  v13[3] = &unk_1E8257098;
  v9 = identifierCopy;
  v14 = v9;
  v15 = &v21;
  v16 = &v17;
  [database __performReadWithCaller:v8 usingBlock:v13];

  if (![EDSearchableIndex isValidTransaction:v22[3]]|| (v10 = v18[3], v11 = 1, v10 != type) && v10)
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

- (void)assignIndexingType:(void *)type forIdentifiers:
{
  typeCopy = type;
  if (self)
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
        currentHandler = [typeCopy componentsJoinedByString:{@", "}];
        v9 = [v10 initWithFormat:@"UPDATE OR IGNORE searchable_messages SET transaction_id = %lld WHERE message_id IN (%@)", 0, currentHandler];
        goto LABEL_15;
      }

      if (a2 == 3)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_assignIndexingType_forIdentifiers_ object:self file:@"EDSearchableIndexPersistence.m" lineNumber:1495 description:@"Does not support re-indexing of attachment types. Will need to be implemented if needed."];
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
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel_assignIndexingType_forIdentifiers_ object:self file:@"EDSearchableIndexPersistence.m" lineNumber:1499 description:@"Does not support re-indexing of rich link types. Will need to be implemented if needed."];
LABEL_11:
            v6 = 0;
LABEL_16:

            goto LABEL_17;
          }

          goto LABEL_14;
        }

LABEL_13:
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        currentHandler = [typeCopy componentsJoinedByString:{@", "}];
        v9 = [v8 initWithFormat:@"UPDATE OR IGNORE searchable_messages SET reindex_type = %lld WHERE transaction_id != %lld AND message_id IN (%@)", a2, 0, currentHandler];
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
    database = [self database];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence assignIndexingType:forIdentifiers:]"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__EDSearchableIndexPersistence_assignIndexingType_forIdentifiers___block_invoke;
    v14[3] = &unk_1E8251CB8;
    v13 = v6;
    v15 = v13;
    [database __performWriteWithCaller:v12 usingBlock:v14];
  }
}

- (void)searchableIndex:(id)index willRemoveIdentifiers:(id)identifiers type:(int64_t)type
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    database = [(EDSearchableIndexPersistence *)self database];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:willRemoveIdentifiers:type:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__EDSearchableIndexPersistence_searchableIndex_willRemoveIdentifiers_type___block_invoke;
    v10[3] = &unk_1E82503F0;
    v11 = identifiersCopy;
    typeCopy = type;
    [database __performWriteWithCaller:v9 usingBlock:v10];
  }
}

- (id)childIdentifiersToRemoveFromSearchableIndex:(id)index whenRemovingParentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__39;
  v18 = __Block_byref_object_dispose__39;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  database = [(EDSearchableIndexPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence childIdentifiersToRemoveFromSearchableIndex:whenRemovingParentIdentifiers:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__EDSearchableIndexPersistence_childIdentifiersToRemoveFromSearchableIndex_whenRemovingParentIdentifiers___block_invoke;
  v11[3] = &unk_1E8250FD8;
  v13 = &v14;
  v8 = identifiersCopy;
  v12 = v8;
  [database __performReadWithCaller:v7 usingBlock:v11];

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

- (id)searchableIndex:(id)index assignTransaction:(int64_t)transaction updates:(id)updates
{
  updatesCopy = updates;
  hookResponder = [(EDSearchableIndexPersistence *)self hookResponder];
  v9 = objc_opt_respondsToSelector();
  v10 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  if ([updatesCopy hasUpdates])
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    database = [(EDSearchableIndexPersistence *)self database];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:assignTransaction:updates:]"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__EDSearchableIndexPersistence_searchableIndex_assignTransaction_updates___block_invoke;
    v20[3] = &unk_1E82519E0;
    v13 = v10;
    v21 = v13;
    v14 = updatesCopy;
    v22 = v14;
    selfCopy = self;
    transactionCopy = transaction;
    v15 = v19;
    v24 = v15;
    [database __performWriteWithCaller:v12 usingBlock:v20];

    if (v9)
    {
      [hookResponder searchableIndexDidAssignTransaction:transaction toUpdates:v14 withMissingIdentifiers:v15 generationWindow:v13];
    }

    v16 = v24;
    v17 = v15;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
    if (v9)
    {
      [hookResponder searchableIndexDidAssignTransaction:transaction toUpdates:updatesCopy withMissingIdentifiers:MEMORY[0x1E695E0F0] generationWindow:v10];
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

- (void)searchableIndex:(id)index dataNeedsToBeDonatedForMessages:(id)messages
{
  messagesCopy = messages;
  v6 = [messagesCopy ef_map:&__block_literal_global_468];
  database = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:dataNeedsToBeDonatedForMessages:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__EDSearchableIndexPersistence_searchableIndex_dataNeedsToBeDonatedForMessages___block_invoke_2;
  v11[3] = &unk_1E8250440;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = messagesCopy;
  v13 = v10;
  [database __performWriteWithCaller:v8 usingBlock:v11];
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

- (void)searchableIndex:(id)index messagesNeedToBeDonated:(id)donated indexingType:(int64_t)type
{
  donatedCopy = donated;
  v8 = [donatedCopy ef_map:&__block_literal_global_470];
  v9 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  database = [(EDSearchableIndexPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:messagesNeedToBeDonated:indexingType:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__EDSearchableIndexPersistence_searchableIndex_messagesNeedToBeDonated_indexingType___block_invoke_2;
  v16[3] = &unk_1E82519E0;
  v12 = v9;
  v17 = v12;
  selfCopy = self;
  typeCopy = type;
  v13 = v8;
  v19 = v13;
  v14 = donatedCopy;
  v20 = v14;
  [database __performWriteWithCaller:v11 usingBlock:v16];

  hookResponder = [(EDSearchableIndexPersistence *)self hookResponder];
  if (objc_opt_respondsToSelector())
  {
    [hookResponder searchableIndexDidAssignIndexingType:type forIdentifiers:v13 generationWindow:v12];
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

- (void)startReindexingWithConnection:(id)connection
{
  connectionCopy = connection;
  [(EDSearchableIndexPersistence *)self setLastProcessedAttachmentID:0];
  [(EDPersistenceDatabaseConnection *)connectionCopy emptyAllSearchableIndexTables];
  [(EDPersistenceDatabaseConnection *)connectionCopy clearReferencesToSearchableMessages];
  [(EDPersistenceDatabaseConnection *)connectionCopy addAllMessagesToRebuildTable];
  [(EDSearchableIndexPersistence *)self setRebuildIndexState:1];
  v5 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Reindex requested.  Switching to EDSearchableIndexRebuildTableStateUseRebuildTableQuery state", v6, 2u);
  }
}

- (void)searchableIndex:(id)index invalidateItemsGreaterThanTransaction:(int64_t)transaction
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    transactionCopy = transaction;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating items greater than transaction %lld", buf, 0xCu);
  }

  database = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:invalidateItemsGreaterThanTransaction:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__EDSearchableIndexPersistence_searchableIndex_invalidateItemsGreaterThanTransaction___block_invoke;
  v10[3] = &unk_1E82503F0;
  v10[4] = self;
  v10[5] = transaction;
  [database __performWriteWithCaller:v8 usingBlock:v10];

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

- (id)searchableIndex:(id)index invalidateItemsInTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  database = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:invalidateItemsInTransactions:]"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __78__EDSearchableIndexPersistence_searchableIndex_invalidateItemsInTransactions___block_invoke;
  v16 = &unk_1E8250328;
  v9 = v6;
  v17 = v9;
  v10 = transactionsCopy;
  v18 = v10;
  [database __performWriteWithCaller:v8 usingBlock:&v13];

  allObjects = [v9 allObjects];

  return allObjects;
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

- (void)searchableIndex:(id)index prepareToIndexAttachmentsForMessageWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = +[EDSearchableIndexPersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Clearing existing searchable_attachment entries for message_id %@", buf, 0xCu);
  }

  database = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence searchableIndex:prepareToIndexAttachmentsForMessageWithIdentifier:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__EDSearchableIndexPersistence_searchableIndex_prepareToIndexAttachmentsForMessageWithIdentifier___block_invoke;
  v12[3] = &unk_1E8251CB8;
  v9 = identifierCopy;
  v13 = v9;
  [database __performWriteWithCaller:v8 usingBlock:v12];

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

- (id)verificationDataSamplesForSearchableIndex:(id)index count:(unint64_t)count lastVerifiedMessageID:(int64_t)d
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__39;
  v17 = __Block_byref_object_dispose__39;
  v18 = 0;
  database = [(EDSearchableIndexPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence verificationDataSamplesForSearchableIndex:count:lastVerifiedMessageID:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__EDSearchableIndexPersistence_verificationDataSamplesForSearchableIndex_count_lastVerifiedMessageID___block_invoke;
  v12[3] = &unk_1E8251CE0;
  v12[4] = &v13;
  v12[5] = count;
  v12[6] = d;
  [database __performReadWithCaller:v9 usingBlock:v12];

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

- (id)distinctTransactionIDsForSearchableIndex:(id)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__39;
  v13 = __Block_byref_object_dispose__39;
  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  database = [(EDSearchableIndexPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence distinctTransactionIDsForSearchableIndex:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__EDSearchableIndexPersistence_distinctTransactionIDsForSearchableIndex___block_invoke;
  v8[3] = &unk_1E8251DA0;
  v8[4] = &v9;
  [database __performReadWithCaller:v5 usingBlock:v8];

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
  database = [(EDSearchableIndexPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence clearOrphanedSearchableMessagesFromDatabase]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__EDSearchableIndexPersistence_clearOrphanedSearchableMessagesFromDatabase__block_invoke;
  v13[3] = &unk_1E8251DA0;
  v13[4] = buf;
  [database __performWriteWithCaller:v8 usingBlock:v13];

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

  date = [MEMORY[0x1E695DF00] date];
  v33 = 0;
  v34 = 0;
  longLongValue = *MEMORY[0x1E699A728];
  do
  {
    v6 = objc_autoreleasePoolPush();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = __Block_byref_object_copy__39;
    v44 = __Block_byref_object_dispose__39;
    v45 = 0;
    database = [(EDSearchableIndexPersistence *)self database];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence queueRedonationForDownloadedMessagesWithUnindexedBodies]"];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __87__EDSearchableIndexPersistence_queueRedonationForDownloadedMessagesWithUnindexedBodies__block_invoke;
    v40[3] = &unk_1E8251CE0;
    v40[4] = buf;
    v40[5] = longLongValue;
    v40[6] = 200;
    [database __performReadWithCaller:v8 usingBlock:v40];

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
              persistedMessageID = [v16 persistedMessageID];
              stringValue = [persistedMessageID stringValue];
              [v10 addObject:stringValue];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v13);
      }

      [(EDSearchableIndexPersistence *)self assignIndexingType:v10 forIdentifiers:?];
      v19 = [*(*&buf[8] + 40) count];
      v20 = [v10 count];
      lastObject = [*(*&buf[8] + 40) lastObject];
      longLongValue = [lastObject longLongValue];

      v34 += v19;
      v33 = (v33 + v20);
    }

    _Block_object_dispose(buf, 8);

    objc_autoreleasePoolPop(v6);
  }

  while (v9);
  date2 = [MEMORY[0x1E695DF00] date];
  [date2 timeIntervalSinceDate:date];
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

- (void)_enumerateSearchableIndexMessageIndexingTypesUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  _searchableIndexMessageIndexingTypes = [(EDSearchableIndexPersistence *)self _searchableIndexMessageIndexingTypes];
  v6 = [_searchableIndexMessageIndexingTypes count];
  v15 = -86;
  v7 = atomic_load(&self->_currentIndexingTypeIndex);
  v15 = v7;
  v8 = atomic_load(&v15);
  while (1)
  {
    v9 = atomic_load(&v15);
    v10 = [_searchableIndexMessageIndexingTypes objectAtIndexedSubscript:v9];
    if ((blockCopy[2](blockCopy, [v10 integerValue]) & 1) == 0)
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

- (id)_assignIndexedItems:(id)items connection:(id)connection query:(id)query indexedBindingsGenerator:(id)generator
{
  v42 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  connectionCopy = connection;
  queryCopy = query;
  generatorCopy = generator;
  v28 = itemsCopy;
  if ([itemsCopy count])
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [connectionCopy preparedStatementForQueryString:queryCopy];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = itemsCopy;
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
        messageID = [v13 messageID];
        v16 = [v14 numberWithLongLong:{objc_msgSend(messageID, "databaseID")}];

        v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "hasBodyData")}];
        v18 = generatorCopy[2](generatorCopy, v16, v17);
        v36 = 0;
        v19 = [v10 executeWithIndexedBindings:v18 usingBlock:0 error:&v36];
        v20 = v36;
        v21 = v20;
        if ((v19 & 1) == 0)
        {
          domain = [v20 domain];
          if ([domain isEqualToString:v32])
          {
            v23 = [v21 code] == 19;

            if (v23)
            {
              messageID2 = [v13 messageID];
              stringValue = [messageID2 stringValue];
              [v30 addObject:stringValue];

              goto LABEL_13;
            }
          }

          else
          {
          }

          [connectionCopy handleError:v21 message:@"Adding to searchable_messages index"];
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

- (id)_assignIndexedItems:(id)items transaction:(int64_t)transaction connection:(id)connection
{
  v75 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  connectionCopy = connection;
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  messages = [itemsCopy messages];
  v8 = [messages count];

  if (v8)
  {
    v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT OR REPLACE INTO searchable_messages (message_id, message, transaction_id, reindex_type, message_body_indexed) VALUES (?, ?, %lld, %ld, ?)", transaction, 0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__EDSearchableIndexPersistence__assignIndexedItems_transaction_connection___block_invoke;
    aBlock[3] = &unk_1E82570C0;
    v71 = v61;
    v57 = _Block_copy(aBlock);
    messages2 = [itemsCopy messages];
    v10 = [(EDSearchableIndexPersistence *)self _assignIndexedItems:messages2 connection:connectionCopy query:v56 indexedBindingsGenerator:v57];

    [v60 addObjectsFromArray:v10];
    if ([(EDSearchableIndexPersistence *)self rebuildIndexState]== 1)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      messages3 = [itemsCopy messages];
      v13 = [messages3 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (v13)
      {
        v14 = *v67;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v67 != v14)
            {
              objc_enumerationMutation(messages3);
            }

            v16 = MEMORY[0x1E696AD98];
            messageID = [*(*(&v66 + 1) + 8 * i) messageID];
            v18 = [v16 numberWithLongLong:{objc_msgSend(messageID, "databaseID")}];

            [v11 addObject:v18];
          }

          v13 = [messages3 countByEnumeratingWithState:&v66 objects:v74 count:16];
        }

        while (v13);
      }

      v19 = [MEMORY[0x1E699B8C8] column:@"message_id"];
      v20 = [v19 in:v11];

      v21 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"searchable_rebuild" where:v20];
      v65 = 0;
      v22 = [connectionCopy executeDeleteStatement:v21 error:&v65];
      v23 = v65;
      if ((v22 & 1) == 0)
      {
        [connectionCopy handleError:v23 message:@"Deleting from searchable_rebuild table"];
      }
    }
  }

  updatedMessages = [itemsCopy updatedMessages];
  v25 = [updatedMessages count];

  if (v25)
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT OR REPLACE INTO searchable_messages (message_id, message, transaction_id, reindex_type, message_body_indexed) VALUES (?, ?, %lld, %ld, COALESCE((SELECT message_body_indexed FROM searchable_messages WHERE message_id = ?), ?))", transaction, 0];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __75__EDSearchableIndexPersistence__assignIndexedItems_transaction_connection___block_invoke_2;
    v63[3] = &unk_1E82570C0;
    v64 = v61;
    v27 = _Block_copy(v63);
    updatedMessages2 = [itemsCopy updatedMessages];
    v29 = [(EDSearchableIndexPersistence *)self _assignIndexedItems:updatedMessages2 connection:connectionCopy query:v26 indexedBindingsGenerator:v27];

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

    [connectionCopy executeUpdateStatement:v32 error:0];
  }

  attachments = [itemsCopy attachments];
  v36 = [attachments count];

  if (v36)
  {
    v37 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = MEMORY[0x1E696AD98];
      attachments2 = [itemsCopy attachments];
      v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(attachments2, "count")}];
      *buf = 138412290;
      v73 = v40;
      _os_log_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_DEFAULT, "Inserting %@ attachment items into the searchable_attachments table", buf, 0xCu);
    }

    attachments3 = [itemsCopy attachments];
    v42 = [(EDPersistenceDatabaseConnection *)connectionCopy assignIndexedAttachmentItems:attachments3 transaction:transaction];

    [v60 addObjectsFromArray:v42];
  }

  richLinks = [itemsCopy richLinks];
  v44 = [richLinks count];

  if (v44)
  {
    v45 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = MEMORY[0x1E696AD98];
      richLinks2 = [itemsCopy richLinks];
      v48 = [v46 numberWithUnsignedInteger:{objc_msgSend(richLinks2, "count")}];
      *buf = 138412290;
      v73 = v48;
      _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "Inserting %@ rich link items into the searchable_rich_links table", buf, 0xCu);
    }

    richLinks3 = [itemsCopy richLinks];
    v50 = [(EDPersistenceDatabaseConnection *)connectionCopy assignIndexedRichLinkItems:richLinks3 transaction:transaction];

    [v60 addObjectsFromArray:v50];
  }

  dataDetectionItems = [itemsCopy dataDetectionItems];
  v52 = [dataDetectionItems count];

  if (v52)
  {
    dataDetectionItems2 = [itemsCopy dataDetectionItems];
    [(EDSearchableIndexPersistence *)self _assignIndexedDataDetectionItems:dataDetectionItems2 transaction:transaction connection:connectionCopy];
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

- (id)_attachmentItemsFromAttachmentData:(id)data limit:(unint64_t)limit cancelationToken:(id)token
{
  v51 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  tokenCopy = token;
  v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:limit];
  v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = dataCopy;
  v8 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v8)
  {
    v9 = 0;
    v33 = *v47;
    limitCopy = limit;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        attachmentPersistentID = [v11 attachmentPersistentID];

        attachmentID = [v11 attachmentID];
        attachmentPersistentID2 = [v11 attachmentPersistentID];
        messagePersistentID = [v11 messagePersistentID];
        name = [v11 name];
        mailboxID = [v11 mailboxID];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __90__EDSearchableIndexPersistence__attachmentItemsFromAttachmentData_limit_cancelationToken___block_invoke;
        v41[3] = &unk_1E82570E8;
        v9 = attachmentPersistentID;
        v42 = v9;
        v43 = v11;
        v18 = v35;
        v44 = v18;
        v45 = v37;
        [(EDSearchableIndexPersistence *)self attachmentItemMetadataForAttachmentID:attachmentID attachmentPersistentID:attachmentPersistentID2 messagePersistentID:messagePersistentID name:name mailboxID:mailboxID result:v41];

        if ([v18 count] >= limitCopy)
        {

          goto LABEL_13;
        }

        isCanceled = [tokenCopy isCanceled];

        if (isCanceled)
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
    allObjects = [v37 allObjects];
    v21 = [allObjects componentsJoinedByString:{@", "}];

    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = +[EDAttachmentPersistence messageAttachmentsTableName];
    v24 = [v22 initWithFormat:@"SELECT attachment FROM %@ WHERE message IN (%@)", v23, v21];

    database = [(EDSearchableIndexPersistence *)self database];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence _attachmentItemsFromAttachmentData:limit:cancelationToken:]"];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __90__EDSearchableIndexPersistence__attachmentItemsFromAttachmentData_limit_cancelationToken___block_invoke_2;
    v38[3] = &unk_1E8250328;
    v27 = v24;
    v39 = v27;
    v28 = v21;
    v40 = v28;
    [database __performWriteWithCaller:v26 usingBlock:v38];
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

- (id)_richLinkItemsFromRichLinkData:(id)data limit:(unint64_t)limit cancelationToken:(id)token
{
  v45 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  tokenCopy = token;
  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:limit];
  v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  limitCopy = limit;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = dataCopy;
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
        richLinkID = [v11 richLinkID];
        messageID = [v11 messageID];
        mailboxID = [v11 mailboxID];
        title = [v11 title];
        v16 = [v11 url];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke;
        v37[3] = &unk_1E8257110;
        v37[4] = v11;
        v17 = v33;
        v38 = v17;
        v39 = v34;
        [(EDSearchableIndexPersistence *)self searchableRichLinkItemMetadataForRichLinkID:richLinkID messagePersistentID:messageID mailboxID:mailboxID title:title url:v16 result:v37];

        if ([v17 count] >= limitCopy)
        {

          goto LABEL_12;
        }

        isCanceled = [tokenCopy isCanceled];

        if (isCanceled)
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
    allObjects = [v34 allObjects];
    v20 = [allObjects componentsJoinedByString:{@", "}];

    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = +[EDRichLinkPersistence messageRichLinksTableName];
    v23 = [v21 initWithFormat:@"SELECT m.global_message_id, mr.rich_link FROM %@ AS mr  LEFT OUTER JOIN messages AS m ON (m.global_message_id = mr.global_message_id) WHERE m.ROWID IN (%@)", v22, v20];

    database = [(EDSearchableIndexPersistence *)self database];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence _richLinkItemsFromRichLinkData:limit:cancelationToken:]"];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __86__EDSearchableIndexPersistence__richLinkItemsFromRichLinkData_limit_cancelationToken___block_invoke_2;
    v35[3] = &unk_1E8251CB8;
    v26 = v23;
    v36 = v26;
    [database __performWriteWithCaller:v25 usingBlock:v35];
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

- (void)searchableRichLinkItemMetadataForRichLinkID:(id)d messagePersistentID:(id)iD mailboxID:(int64_t)mailboxID title:(id)title url:(id)url result:(id)result
{
  v38[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  titleCopy = title;
  urlCopy = url;
  resultCopy = result;
  messagePersistence = [(EDSearchableIndexPersistence *)self messagePersistence];
  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(iDCopy, "databaseID")}];
  v38[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v19 = [messagePersistence persistedMessagesForDatabaseIDs:v18 requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];
  firstObject = [v19 firstObject];

  if (firstObject)
  {
    v21 = [(EDSearchableIndexPersistence *)self allMailboxIdentifiersForMessage:firstObject];
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = [firstObject to];
    v24 = [v23 count];

    if (v24)
    {
      v25 = [firstObject to];
      [v22 addObjectsFromArray:v25];
    }

    v26 = [firstObject cc];
    v27 = [v26 count];

    if (v27)
    {
      v28 = [firstObject cc];
      [v22 addObjectsFromArray:v28];
    }

    v29 = [EDSearchableIndexItem domainIdentifierForMessage:firstObject];
    v30 = [EDSearchableIndexRichLinkItemMetadatum alloc];
    dateReceived = [firstObject dateReceived];
    dateSent = [firstObject dateSent];
    v33 = [(EDSearchableIndexRichLinkItemMetadatum *)v30 initWithDomainIdentifier:v29 accountIdentifier:0 mailboxIdentifiers:v21 senderAddress:0 recipientAddresses:v22 dateReceived:dateReceived dateSent:dateSent url:urlCopy richLinkID:dCopy title:titleCopy];

    resultCopy[2](resultCopy, v33, 0);
  }

  else
  {
    v34 = +[EDSearchableIndexPersistence log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      [EDSearchableIndexPersistence searchableRichLinkItemMetadataForRichLinkID:dCopy messagePersistentID:iDCopy mailboxID:v34 title:? url:? result:?];
    }

    resultCopy[2](resultCopy, 0, 1);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (id)allMailboxIdentifiersForMessage:(id)message
{
  messageCopy = message;
  [(EDSearchableIndexPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndexPersistence allMailboxIdentifiersForMessage:]", "EDSearchableIndexPersistence.m", 2113, "0");
}

- (void)_assignIndexedDataDetectionItems:(id)items transaction:(int64_t)transaction connection:(id)connection
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = items;
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
        messagePersistence = [(EDSearchableIndexPersistence *)self messagePersistence];
        messageID = [v11 messageID];
        v14 = [messagePersistence globalIDForMessageWithDatabaseID:objc_msgSend(messageID mailboxScope:{"databaseID"), 0}];

        if (v14 != v9)
        {
          v15 = [(EDDataDetectionPersistence *)self->_dataDetectionPersistence getDataDetectionResultRowIDsForGlobalMessageID:v14];
          messageID2 = [v11 messageID];
          [(EDSearchableIndexPersistence *)self _addSearchableDataDetectionResults:v15 withMessage:messageID2 transaction:transaction];
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

- (void)_addSearchableDataDetectionResults:(id)results withMessage:(id)message transaction:(int64_t)transaction
{
  resultsCopy = results;
  messageCopy = message;
  if ([resultsCopy count])
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
    database = [(EDSearchableIndexPersistence *)self database];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSearchableIndexPersistence _addSearchableDataDetectionResults:withMessage:transaction:]"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__EDSearchableIndexPersistence__addSearchableDataDetectionResults_withMessage_transaction___block_invoke;
    v12[3] = &unk_1E8257138;
    v13 = resultsCopy;
    v14 = messageCopy;
    v15 = v20;
    v16 = v18;
    transactionCopy = transaction;
    [database __performWriteWithCaller:v11 usingBlock:v12];

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