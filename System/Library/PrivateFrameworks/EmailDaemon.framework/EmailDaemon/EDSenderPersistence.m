@interface EDSenderPersistence
+ (EFSQLTableSchema)senderAddressesTableSchema;
+ (EFSQLTableSchema)sendersTableSchema;
+ (id)addJoinsForSenderBucketToSelectStatement:(id)a3 withSourceAddressColumn:(id)a4;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
- (BOOL)_addAddressesWithDatabaseIDs:(id)a3 toSenderWithDatabaseID:(id)a4 connection:(id)a5 error:(id *)a6;
- (BOOL)_addNewSender:(id)a3 toCategoryType:(unint64_t)a4 connection:(id)a5;
- (BOOL)_addNewSenderWithAddressIDs:(id)a3 contactIdentifier:(id)a4 toBucket:(int64_t)a5 categoryType:(unint64_t)a6 connection:(id)a7 senderDatabaseID:(int64_t *)a8;
- (BOOL)_addNewSenderWithAddressIDs:(id)a3 contactIdentifier:(id)a4 toBucket:(int64_t)a5 connection:(id)a6 senderDatabaseID:(int64_t *)a7;
- (BOOL)_addNewSendersForEmailAddresses:(id)a3 toBucket:(int64_t)a4 categoryType:(unint64_t)a5 connection:(id)a6 newSenders:(id *)a7;
- (BOOL)_addNewSendersForEmailAddresses:(id)a3 toBucket:(int64_t)a4 connection:(id)a5 newSenders:(id *)a6;
- (BOOL)_moveSenderWithDatabaseID:(int64_t)a3 toBucket:(int64_t)a4 connection:(id)a5;
- (BOOL)_moveSenderWithDatabaseID:(int64_t)a3 toCategoryType:(unint64_t)a4 connection:(id)a5;
- (BOOL)bucketForSenderAddress:(id)a3 bucket:(int64_t *)a4;
- (BOOL)bucketsForSenderAddresses:(id)a3 buckets:(id *)a4;
- (CNContactStore)contactStore;
- (EDSenderPersistence)initWithDatabase:(id)a3 blockedSenderManager:(id)a4 hookRegistry:(id)a5 contactStore:(id)a6;
- (id)_addressIDsForAddresses:(id)a3 connection:(id)a4;
- (id)_addressIDsGroupedByContactsForAddressesByContact:(id)a3 withConnection:(id)a4 addressesByID:(id *)a5;
- (id)_addressesGroupedByContactForAddresses:(id)a3 unmatchedAddresses:(id *)a4 otherAddressesByContact:(id *)a5;
- (id)_addressesGroupedBySimpleAddressForAddresses:(id)a3;
- (id)_addressesToDatabaseIDsForSelect:(id)a3 addressColumns:(id)a4 connection:(id)a5 error:(id *)a6;
- (id)_addressesToDatabaseIDsForSimpleAddresses:(id)a3 connection:(id)a4;
- (id)_bucketForSenderAddress:(id)a3;
- (id)_combineDictionary:(id)a3 withDictionary:(id)a4;
- (id)_contactIdentifierForSenderWithDatabaseID:(int64_t)a3 connection:(id)a4;
- (id)_emailAddressForDatabaseID:(id)a3 connection:(id)a4;
- (id)_moveSenderWithSimpleEmailAddresses:(id)a3 toBucket:(int64_t)a4 sync:(BOOL)a5 userInitiated:(BOOL)a6 transactionGeneration:(int64_t *)a7;
- (id)_moveSendersWithSimpleEmailAddresses:(id)a3 toCategoryType:(unint64_t)a4 sync:(BOOL)a5 userInitiated:(BOOL)a6 transactionGeneration:(int64_t *)a7;
- (id)_newlyBlockedAddressesForBlockedAddressDatabaseIDs:(id)a3 connection:(id)a4;
- (id)_newlyUnblockedAddressesForBlockedAddressDatabaseIDs:(id)a3 connection:(id)a4;
- (id)_simpleAddressesForAddresses:(id)a3;
- (id)_simpleAddressesInBucket:(int64_t)a3 connection:(id)a4;
- (id)_simpleAddressesNotInBucket:(int64_t)a3 withMessagesNewerThan:(id)a4 connection:(id)a5;
- (id)relevantSendersForSearch;
- (int64_t)_bucketForSenderWithDatabaseID:(int64_t)a3 connection:(id)a4;
- (unint64_t)handleReconciliationMergeErrorForTable:(id)a3 columnName:(id)a4 statement:(id)a5 journalRowID:(id)a6 protectedRowID:(id)a7 connection:(id)a8 rowsUpdated:(unint64_t *)a9 error:(id *)a10;
- (unint64_t)userHasSentToSenderAddress:(id)a3;
- (void)_invalidateCaches;
- (void)_invalidateCachesForAddresses:(id)a3;
- (void)_loadSentToFilterFromDisk;
- (void)_moveAddressesFromSentMessagesToPrimaryForMessages:(id)a3;
- (void)_persistenceDidAddMessages:(id)a3;
- (void)_reloadBlockedSendersWithAddresses:(id)a3;
- (void)_setIsBlocked:(BOOL)a3 forAddresses:(id)a4;
- (void)_updateBlockedSendersWithBlockedSenderAddresses:(id)a3 newlyBlockedAddresses:(id)a4 newlyUnblockedAddresses:(id)a5;
- (void)_updateSentToFilter;
- (void)addAddresses:(id)a3 toSender:(id)a4;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)moveSender:(id)a3 toCategory:(unint64_t)a4;
- (void)moveSendersWithEmailAddresses:(id)a3 toCategoryType:(unint64_t)a4;
- (void)removeAddresses:(id)a3 fromSender:(id)a4;
- (void)scheduleRecurringActivity;
- (void)test_tearDown;
@end

@implementation EDSenderPersistence

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 sendersTableSchema];
  v8 = [a1 senderAddressesTableSchema];
  v9 = [v8 columnForName:@"sender"];
  [v9 setAsForeignKeyForTable:v7 onDelete:2 onUpdate:0];

  v10 = [EDPersistenceAssociationPlaceholder alloc];
  v11 = [v8 columnForName:@"address"];
  v12 = +[EDMessagePersistence addressesTableName];
  v13 = [(EDPersistenceAssociationPlaceholder *)v10 initWithColumn:v11 tableName:v12];

  *a3 = MEMORY[0x1E695E0F0];
  v18[0] = v13;
  *a4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17[0] = v7;
  v17[1] = v8;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (EFSQLTableSchema)sendersTableSchema
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699B8D0] textColumnWithName:@"contact_identifier" collation:1 nullable:1];
  v17[0] = v2;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"bucket" nullable:0 defaultValue:&unk_1F45E6A18];
  v17[1] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"user_initiated" nullable:0 defaultValue:MEMORY[0x1E695E118]];
  v17[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];

  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"category" nullable:1];
  v7 = [v5 arrayByAddingObject:v6];

  v8 = [objc_alloc(MEMORY[0x1E699B958]) initWithName:@"senders" rowIDType:2 columns:v7];
  v16 = @"contact_identifier";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v8 addUniquenessConstraintForColumns:v9 conflictResolution:1];

  v15 = @"category";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [v8 addIndexForColumns:v10];

  v14 = @"bucket";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [v8 addIndexForColumns:v11];

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (EFSQLTableSchema)senderAddressesTableSchema
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sender" nullable:0];
  v10[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v5 = [v2 initWithName:@"sender_addresses" rowIDType:1 rowIDAlias:@"address" columns:v4];

  v9 = @"sender";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  [v5 addIndexForColumns:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)addJoinsForSenderBucketToSelectStatement:(id)a3 withSourceAddressColumn:(id)a4
{
  v5 = a3;
  v6 = [v5 leftOuterJoin:@"sender_addresses" sourceColumn:a4 targetColumn:@"address"];
  v7 = [v6 leftOuterJoin:@"senders" sourceColumn:@"sender" targetColumn:*MEMORY[0x1E699B768]];
  v8 = MEMORY[0x1E699B8F8];
  v9 = [MEMORY[0x1E699B8C8] table:@"senders" column:@"bucket"];
  v10 = [v8 ifNull:v9 second:&unk_1F45E6A18];
  [v5 addResult:v10 alias:@"bucket"];

  return @"bucket";
}

- (EDSenderPersistence)initWithDatabase:(id)a3 blockedSenderManager:(id)a4 hookRegistry:(id)a5 contactStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v35.receiver = self;
  v35.super_class = EDSenderPersistence;
  v15 = [(EDSenderPersistence *)&v35 init];
  p_isa = &v15->super.isa;
  v17 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_database, a3);
    objc_storeStrong(p_isa + 3, a4);
    objc_storeStrong(p_isa + 4, a5);
    objc_storeStrong(p_isa + 5, a6);
    v18 = [objc_alloc(MEMORY[0x1E699B7E0]) initWithCountLimit:1000];
    emailAddressToBucketCache = v17->_emailAddressToBucketCache;
    v17->_emailAddressToBucketCache = v18;

    v20 = objc_alloc_init(MEMORY[0x1E699B7E0]);
    databaseIDToEmailAddressCache = v17->_databaseIDToEmailAddressCache;
    v17->_databaseIDToEmailAddressCache = v20;

    v22 = [(EDPersistenceDatabase *)v17->_database protectedDatabasePersistence];
    [v22 registerMergeHandler:v17 forTable:@"sender_addresses"];

    v17->_contactStoreLock._os_unfair_lock_opaque = 0;
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_UTILITY, 0);
    v25 = dispatch_queue_create("com.apple.email.EDSenderPersistence", v24);
    processingQueue = v17->_processingQueue;
    v17->_processingQueue = v25;

    v27 = objc_alloc_init(_EDSentToFilter);
    sentToAddressesFilter = v17->_sentToAddressesFilter;
    v17->_sentToAddressesFilter = v27;

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_attr_make_with_qos_class(v29, QOS_CLASS_UTILITY, 0);
    v31 = dispatch_queue_create("com.apple.email.EDSenderPersistence.sentToAddressesQueue", v30);
    sentToAddressesQueue = v17->_sentToAddressesQueue;
    v17->_sentToAddressesQueue = v31;

    [(EDSenderPersistence *)v17 _loadSentToFilterFromDisk];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v33 = v17->_sentToAddressesQueue;
      EFRegisterContentProtectionObserver();
    }

    [v13 registerMessageChangeHookResponder:v17];
  }

  return v17;
}

- (CNContactStore)contactStore
{
  os_unfair_lock_lock(&self->_contactStoreLock);
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  v6 = contactStore;
  os_unfair_lock_unlock(&self->_contactStoreLock);

  return v6;
}

- (void)scheduleRecurringActivity
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__blockedSendersDidChange_ name:*MEMORY[0x1E699A6D8] object:0];

  v5 = [(EDSenderPersistence *)self blockedSenderManager];
  v3 = [v5 blockedSenderEmailAddresses];
  [(EDSenderPersistence *)self _reloadBlockedSendersWithAddresses:v3];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDSenderPersistence.m" lineNumber:245 description:{@"%s can only be called from unit tests", "-[EDSenderPersistence test_tearDown]"}];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  dispatch_barrier_sync(self->_processingQueue, &__block_literal_global_85);
  v6 = [(EDSenderPersistence *)self sentToAddressesQueue];
  dispatch_sync(v6, &__block_literal_global_69_0);
}

- (id)relevantSendersForSearch
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = EDSenderLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_INFO, "Gathering relevant senders for search", buf, 2u);
  }

  *buf = 0;
  v13 = buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__41;
  v16 = __Block_byref_object_dispose__41;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(EDSenderPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSenderPersistence relevantSendersForSearch]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__EDSenderPersistence_relevantSendersForSearch__block_invoke;
  v11[3] = &unk_1E8251DA0;
  v11[4] = buf;
  [v4 __performReadWithCaller:v5 usingBlock:v11];

  v6 = EDSenderLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(v13 + 5) count];
    *v18 = 134217984;
    v19 = v7;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "Found %lu relevant senders for search", v18, 0xCu);
  }

  v8 = *(v13 + 5);
  _Block_object_dispose(buf, 8);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __47__EDSenderPersistence_relevantSendersForSearch__block_invoke(uint64_t a1, void *a2)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v35 = a2;
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 dateByAddingTimeInterval:-1209600.0];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = objc_alloc(MEMORY[0x1E699B948]);
  v7 = +[EDMessagePersistence messagesTableName];
  v8 = [v6 initWithTable:v7];

  v9 = MEMORY[0x1E699B890];
  v10 = MEMORY[0x1E699B8C8];
  v11 = +[EDMessagePersistence messagesDisplayDateColumnName];
  v12 = [v10 column:v11];
  v36 = [v9 max:v12];

  [v8 addResultColumn:@"address" fromTable:@"addresses"];
  [v8 addResult:v36 alias:@"maxDate"];
  v13 = *MEMORY[0x1E699B768];
  v31 = [v8 leftOuterJoin:@"recipients" sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"message"];
  v32 = [v31 leftOuterJoin:@"addresses" sourceColumn:@"address" targetColumn:v13];
  v33 = [v32 leftOuterJoin:@"sender_addresses" sourceColumn:v13 targetColumn:@"address"];
  v14 = [v33 leftOuterJoin:@"senders" sourceColumn:@"sender" targetColumn:v13];
  v15 = MEMORY[0x1E699B898];
  v16 = [MEMORY[0x1E699B8C8] table:@"senders" column:@"bucket"];
  v17 = [v16 equalTo:&unk_1F45E6A30];
  v39[0] = v17;
  v18 = MEMORY[0x1E699B8C8];
  v19 = +[EDMessagePersistence messagesTableName];
  v20 = +[EDMessagePersistence messagesDisplayDateColumnName];
  v21 = [v18 table:v19 column:v20];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v23 = [v21 greaterThanEqualTo:v22];
  v39[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v25 = [v15 combined:v24];
  [v8 setWhere:v25];

  [v8 groupByColumn:@"address" fromTable:@"addresses"];
  [v8 orderBy:v36 ascending:0];
  [v8 setLimit:500];
  v37 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __47__EDSenderPersistence_relevantSendersForSearch__block_invoke_82;
  v38[3] = &unk_1E8250418;
  v38[4] = *(a1 + 32);
  v26 = [v35 executeSelectStatement:v8 withBlock:v38 error:&v37];
  v27 = v37;
  if (v27)
  {
    v28 = EDSenderLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [v27 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __47__EDSenderPersistence_relevantSendersForSearch__block_invoke_cold_1();
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

void __47__EDSenderPersistence_relevantSendersForSearch__block_invoke_82(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (void)_invalidateCachesForAddresses:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [(EDSenderPersistence *)self emailAddressToBucketCache];
        v10 = [v8 emailAddressValue];
        [v9 removeObjectForKey:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [(EDSenderPersistence *)self databaseIDToEmailAddressCache];
  [v11 removeAllObjects];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateCaches
{
  v3 = [(EDSenderPersistence *)self emailAddressToBucketCache];
  [v3 removeAllObjects];

  v4 = [(EDSenderPersistence *)self databaseIDToEmailAddressCache];
  [v4 removeAllObjects];
}

- (BOOL)bucketForSenderAddress:(id)a3 bucket:(int64_t *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 emailAddressValue];
  if (v7)
  {
    v8 = [(EDSenderPersistence *)self emailAddressToBucketCache];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __53__EDSenderPersistence_bucketForSenderAddress_bucket___block_invoke;
    v18 = &unk_1E8257598;
    v19 = self;
    v20 = v6;
    v9 = [v8 objectForKey:v7 generator:&v15];

    v10 = EDSenderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 ef_publicDescription];
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_INFO, "EmailAddress:%{public}@ bucket is %@", buf, 0x16u);
    }

    v12 = v9 != 0;
    if (a4 && v9)
    {
      *a4 = [v9 integerValue];
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v12 = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_bucketForSenderAddress:(id)a3
{
  v4 = a3;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__41;
  v21 = __Block_byref_object_dispose__41;
  v22 = 0;
  v5 = [v4 emailAddressValue];
  v6 = [(EDSenderPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSenderPersistence _bucketForSenderAddress:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__EDSenderPersistence__bucketForSenderAddress___block_invoke;
  v12[3] = &unk_1E82575C0;
  v8 = v4;
  v13 = v8;
  v9 = v5;
  v14 = v9;
  v15 = v23;
  v16 = &v17;
  [v6 __performReadWithCaller:v7 usingBlock:v12];

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(v23, 8);

  return v10;
}

uint64_t __47__EDSenderPersistence__bucketForSenderAddress___block_invoke(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 protectedDatabaseAttached])
  {
    v4 = [EDMessagePersistence databaseIDForEmailAddress:*(a1 + 32) connection:v3];
    v5 = *MEMORY[0x1E699A728];
    if (v4 == *MEMORY[0x1E699A728])
    {
      v6 = [*(a1 + 40) simpleAddress];
      v7 = v6;
      if (!v6)
      {
        v7 = [*(a1 + 32) stringValue];
      }

      v30[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v9 = [EDMessagePersistence allDatabaseIDsForSimpleAddresses:v8 connection:v3];
      v10 = [v9 firstObject];

      if (!v6)
      {
      }

      if (v10)
      {
        v4 = [v10 longLongValue];
      }
    }

    if (v4 == v5)
    {
      v11 = 0;
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"bucket" table:@"senders"];
      v14 = [v13 join:@"sender_addresses" sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"sender"];
      v15 = [MEMORY[0x1E699B8C8] table:@"sender_addresses" column:@"address"];
      v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
      v17 = [v15 equalTo:v16];
      [v13 setWhere:v17];

      v24 = 0;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __47__EDSenderPersistence__bucketForSenderAddress___block_invoke_2;
      v25[3] = &unk_1E8250418;
      v25[4] = *(a1 + 56);
      LOBYTE(v15) = [v3 executeSelectStatement:v13 withBlock:v25 error:&v24];
      v11 = v24;
      *(*(*(a1 + 48) + 8) + 24) = v15;
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v18 = *(*(a1 + 56) + 8);
      if (!*(v18 + 40))
      {
        *(v18 + 40) = &unk_1F45E6A18;
      }
    }

    v19 = EDSenderLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [*(a1 + 40) ef_publicDescription];
      v21 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_INFO, "DB result for senders.bucket for EmailAddress:%{public}@ is %@.", buf, 0x16u);
    }

    v12 = *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v12 = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

void __47__EDSenderPersistence__bucketForSenderAddress___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"bucket"];
  v4 = [v3 numberValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)bucketsForSenderAddresses:(id)a3 buckets:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v18;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:{16, v18}];
  if (v6)
  {
    v7 = *v23;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v21 = 0;
        if (![(EDSenderPersistence *)self bucketForSenderAddress:v9 bucket:&v21])
        {
          if (a4)
          {
            *a4 = 0;
          }

          v15 = 0;
          goto LABEL_17;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
        v11 = [v5 objectForKey:v10];

        if (!v11)
        {
          v12 = [MEMORY[0x1E695DFA8] set];
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
          [v5 setObject:v12 forKey:v13];

          v11 = v12;
        }

        [v11 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (a4)
  {
    v14 = v5;
    *a4 = v5;
  }

  v15 = 1;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)moveSender:(id)a3 toCategory:(unint64_t)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(EDSenderPersistence *)self hookRegistry];
  v26[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v7 persistenceWillChangeSenders:v8];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = [(EDSenderPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSenderPersistence moveSender:toCategory:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__EDSenderPersistence_moveSender_toCategory___block_invoke;
  v16[3] = &unk_1E8253058;
  v19 = &v21;
  v11 = v6;
  v17 = v11;
  v18 = self;
  v20 = a4;
  [v9 __performWriteWithCaller:v10 usingBlock:v16];

  v12 = [v11 addresses];
  [(EDSenderPersistence *)self _invalidateCachesForAddresses:v12];

  v13 = [(EDSenderPersistence *)self hookRegistry];
  v25 = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [v13 persistenceDidChangeSenders:v14 generation:v22[3]];

  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __45__EDSenderPersistence_moveSender_toCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [v3 transactionGeneration];
  v4 = [*(a1 + 32) databaseID];
  if (v4 == *MEMORY[0x1E699A728])
  {
    v5 = [*(a1 + 40) _addNewSender:*(a1 + 32) toCategoryType:*(a1 + 56) connection:v3];
  }

  else
  {
    v5 = [*(a1 + 40) _moveSenderWithDatabaseID:objc_msgSend(*(a1 + 32) toCategoryType:"databaseID") connection:{*(a1 + 56), v3}];
  }

  v6 = v5;

  return v6;
}

- (void)moveSendersWithEmailAddresses:(id)a3 toCategoryType:(unint64_t)a4
{
  v9[4] = a4;
  v10 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__EDSenderPersistence_moveSendersWithEmailAddresses_toCategoryType___block_invoke;
  v9[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v6 = [a3 ef_compactMap:v9];
  v7 = [(EDSenderPersistence *)self _moveSendersWithSimpleEmailAddresses:v6 toCategoryType:a4 sync:1 userInitiated:1 transactionGeneration:&v10];
  [(EDSenderPersistence *)self _invalidateCaches];
  v8 = [(EDSenderPersistence *)self hookRegistry];
  [v8 persistenceDidChangeSenders:v7 generation:v10];
}

id __68__EDSenderPersistence_moveSendersWithEmailAddresses_toCategoryType___block_invoke(uint64_t a1, void *a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 emailAddressValue];
  v5 = [v4 simpleAddress];

  if (!v5)
  {
    v6 = EDSenderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v3];
      __68__EDSenderPersistence_moveSendersWithEmailAddresses_toCategoryType___block_invoke_cold_1(v7, a1, v10, v6);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

id __81__EDSenderPersistence__moveSenderWithEmailAddresses_toBucket_sync_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 ef_publicDescription];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), v2];
  }
  v3 = ;

  return v3;
}

- (id)_moveSendersWithSimpleEmailAddresses:(id)a3 toCategoryType:(unint64_t)a4 sync:(BOOL)a5 userInitiated:(BOOL)a6 transactionGeneration:(int64_t *)a7
{
  v10 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(EDSenderPersistence *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSenderPersistence _moveSendersWithSimpleEmailAddresses:toCategoryType:sync:userInitiated:transactionGeneration:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke;
  v20[3] = &unk_1E8254B20;
  v24 = &v26;
  v14 = v10;
  v21 = v14;
  v22 = self;
  v25 = a4;
  v15 = v11;
  v23 = v15;
  v16 = [v12 __performWriteWithCaller:v13 usingBlock:v20];

  if (a7)
  {
    *a7 = v27[3];
  }

  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v26, 8);

  return v18;
}

uint64_t __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke(void *a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v35 = a2;
  *(*(a1[7] + 8) + 24) = [v35 transactionGeneration];
  v40 = [EDMessagePersistence allDatabaseIDsForSimpleAddresses:a1[4] connection:v35];
  v37 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v40];
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"sender" table:@"sender_addresses"];
  [v36 addResultColumn:@"address"];
  v3 = [MEMORY[0x1E699B8C8] column:@"address"];
  v4 = [v3 in:v40];
  [v36 setWhere:v4];

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke_2;
  v62[3] = &unk_1E8252EA0;
  v5 = a1;
  v62[4] = a1[5];
  v6 = v35;
  v63 = v6;
  v39 = v34;
  v64 = v39;
  v44 = v38;
  v65 = v44;
  v7 = v37;
  v66 = v7;
  [v6 executeSelectStatement:v36 withBlock:v62 error:0];
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v8)
  {
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        v12 = [v5[5] _emailAddressForDatabaseID:v11 connection:v6];
        v13 = [v12 emailAddressValue];
        v14 = [v13 simpleAddress];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [v12 stringValue];
        }

        v17 = v16;

        v18 = [v44 objectForKeyedSubscript:v17];
        if (v18)
        {
          v19 = [v43 objectForKeyedSubscript:v18];
          v20 = v19;
          if (v19)
          {
            [v19 addObject:v11];
          }

          else
          {
            v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
            [v43 setObject:v20 forKeyedSubscript:v18];
          }
        }

        else
        {
          v20 = [v12 stringValue];
          [v41 setObject:v11 forKeyedSubscript:v20];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v8);
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 1;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke_98;
  v51[3] = &unk_1E8257608;
  v21 = v5[5];
  v53 = &v54;
  v51[4] = v21;
  v22 = v6;
  v52 = v22;
  [v43 enumerateKeysAndObjectsUsingBlock:v51];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke_2_100;
  v46[3] = &unk_1E8257630;
  v46[4] = v5[5];
  v23 = v22;
  v47 = v23;
  v24 = v5[8];
  v49 = &v54;
  v50 = v24;
  v48 = v5[6];
  [v39 enumerateKeysAndObjectsUsingBlock:v46];
  if (*(v55 + 24) == 1)
  {
    v25 = [v5[5] hookRegistry];
    v26 = [v41 allKeys];
    [v25 persistenceWillChangeSendersForAddresses:v26];

    v27 = v5[5];
    v28 = v5[8];
    v45 = 0;
    v29 = [v27 _addNewSendersForEmailAddresses:v41 toBucket:0 categoryType:v28 connection:v23 newSenders:&v45];
    v30 = v45;
    *(v55 + 24) = v29;
    [v5[6] addObjectsFromArray:v30];

    v31 = *(v55 + 24);
  }

  else
  {
    v31 = 0;
  }

  _Block_object_dispose(&v54, 8);
  v32 = *MEMORY[0x1E69E9840];
  return v31 & 1;
}

void __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 numberValue];

  v6 = [v3 objectAtIndexedSubscript:1];
  v7 = [v6 numberValue];

  v8 = [*(a1 + 32) _emailAddressForDatabaseID:v7 connection:*(a1 + 40)];
  if (v8)
  {
    v9 = [*(a1 + 48) objectForKeyedSubscript:v5];
    v10 = v9;
    if (v9)
    {
      [v9 addObject:v8];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
      [*(a1 + 48) setObject:? forKeyedSubscript:?];
    }

    v11 = [v8 emailAddressValue];
    v12 = [v11 simpleAddress];
    if (v12)
    {
    }

    else
    {
      v12 = [v8 stringValue];

      if (!v12)
      {
        v14 = EDSenderLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          v16 = [v7 unsignedLongLongValue];
          v17 = 2048;
          v18 = [v5 unsignedLongLongValue];
          v19 = 2114;
          v20 = v8;
          _os_log_error_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_ERROR, "Address with ID %llu (sender ID %llu) has no string representation: %{public}@", buf, 0x20u);
        }

        v12 = 0;
        goto LABEL_11;
      }
    }

    [*(a1 + 56) setObject:v5 forKeyedSubscript:v12];
LABEL_11:

    goto LABEL_12;
  }

  v10 = EDSenderLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke_2_cold_1(buf, [v7 unsignedLongLongValue], objc_msgSend(v5, "unsignedLongLongValue"));
  }

LABEL_12:

  [*(a1 + 64) removeObject:v7];
  v13 = *MEMORY[0x1E69E9840];
}

void __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke_98(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _addAddressesWithDatabaseIDs:v7 toSenderWithDatabaseID:v8 connection:*(a1 + 40) error:0];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke_2_100(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v7 longLongValue];
  v10 = [*(a1 + 32) _bucketForSenderWithDatabaseID:v9 connection:*(a1 + 40)];
  v11 = [*(a1 + 32) _contactIdentifierForSenderWithDatabaseID:v9 connection:*(a1 + 40)];
  v12 = [objc_alloc(MEMORY[0x1E699AEB8]) initWithDatabaseID:v9 addresses:v8 contactIdentifier:v11 bucket:v10];
  v13 = [*(a1 + 32) hookRegistry];
  v16[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v13 persistenceWillChangeSenders:v14];

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _moveSenderWithDatabaseID:v9 toCategoryType:*(a1 + 64) connection:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 48) addObject:v12];
  }

  else
  {
    *a4 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_moveSenderWithSimpleEmailAddresses:(id)a3 toBucket:(int64_t)a4 sync:(BOOL)a5 userInitiated:(BOOL)a6 transactionGeneration:(int64_t *)a7
{
  v10 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(EDSenderPersistence *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSenderPersistence _moveSenderWithSimpleEmailAddresses:toBucket:sync:userInitiated:transactionGeneration:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __109__EDSenderPersistence__moveSenderWithSimpleEmailAddresses_toBucket_sync_userInitiated_transactionGeneration___block_invoke;
  v20[3] = &unk_1E8254B20;
  v24 = &v26;
  v14 = v10;
  v21 = v14;
  v22 = self;
  v25 = a4;
  v15 = v11;
  v23 = v15;
  v16 = [v12 __performWriteWithCaller:v13 usingBlock:v20];

  if (a7)
  {
    *a7 = v27[3];
  }

  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v26, 8);

  return v18;
}

uint64_t __109__EDSenderPersistence__moveSenderWithSimpleEmailAddresses_toBucket_sync_userInitiated_transactionGeneration___block_invoke(void *a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v35 = a2;
  *(*(a1[7] + 8) + 24) = [v35 transactionGeneration];
  v40 = [EDMessagePersistence allDatabaseIDsForSimpleAddresses:a1[4] connection:v35];
  v37 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v40];
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"sender" table:@"sender_addresses"];
  [v36 addResultColumn:@"address"];
  v3 = [MEMORY[0x1E699B8C8] column:@"address"];
  v4 = [v3 in:v40];
  [v36 setWhere:v4];

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __109__EDSenderPersistence__moveSenderWithSimpleEmailAddresses_toBucket_sync_userInitiated_transactionGeneration___block_invoke_2;
  v62[3] = &unk_1E8252EA0;
  v5 = a1;
  v62[4] = a1[5];
  v6 = v35;
  v63 = v6;
  v39 = v34;
  v64 = v39;
  v44 = v38;
  v65 = v44;
  v7 = v37;
  v66 = v7;
  [v6 executeSelectStatement:v36 withBlock:v62 error:0];
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v8)
  {
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        v12 = [v5[5] _emailAddressForDatabaseID:v11 connection:v6];
        v13 = [v12 emailAddressValue];
        v14 = [v13 simpleAddress];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [v12 stringValue];
        }

        v17 = v16;

        v18 = [v44 objectForKeyedSubscript:v17];
        if (v18)
        {
          v19 = [v43 objectForKeyedSubscript:v18];
          v20 = v19;
          if (v19)
          {
            [v19 addObject:v11];
          }

          else
          {
            v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
            [v43 setObject:v20 forKeyedSubscript:v18];
          }
        }

        else
        {
          v20 = [v12 stringValue];
          [v41 setObject:v11 forKeyedSubscript:v20];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v8);
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 1;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __109__EDSenderPersistence__moveSenderWithSimpleEmailAddresses_toBucket_sync_userInitiated_transactionGeneration___block_invoke_102;
  v51[3] = &unk_1E8257608;
  v21 = v5[5];
  v53 = &v54;
  v51[4] = v21;
  v22 = v6;
  v52 = v22;
  [v43 enumerateKeysAndObjectsUsingBlock:v51];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __109__EDSenderPersistence__moveSenderWithSimpleEmailAddresses_toBucket_sync_userInitiated_transactionGeneration___block_invoke_2_103;
  v46[3] = &unk_1E8257630;
  v46[4] = v5[5];
  v23 = v22;
  v47 = v23;
  v24 = v5[8];
  v49 = &v54;
  v50 = v24;
  v48 = v5[6];
  [v39 enumerateKeysAndObjectsUsingBlock:v46];
  if (*(v55 + 24) == 1)
  {
    v25 = [v5[5] hookRegistry];
    v26 = [v41 allKeys];
    [v25 persistenceWillChangeSendersForAddresses:v26];

    v27 = v5[5];
    v28 = v5[8];
    v45 = 0;
    v29 = [v27 _addNewSendersForEmailAddresses:v41 toBucket:v28 connection:v23 newSenders:&v45];
    v30 = v45;
    *(v55 + 24) = v29;
    [v5[6] addObjectsFromArray:v30];

    v31 = *(v55 + 24);
  }

  else
  {
    v31 = 0;
  }

  _Block_object_dispose(&v54, 8);
  v32 = *MEMORY[0x1E69E9840];
  return v31 & 1;
}

void __109__EDSenderPersistence__moveSenderWithSimpleEmailAddresses_toBucket_sync_userInitiated_transactionGeneration___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 numberValue];

  v6 = [v3 objectAtIndexedSubscript:1];
  v7 = [v6 numberValue];

  v8 = [*(a1 + 32) _emailAddressForDatabaseID:v7 connection:*(a1 + 40)];
  if (v8)
  {
    v9 = [*(a1 + 48) objectForKeyedSubscript:v5];
    v10 = v9;
    if (v9)
    {
      [v9 addObject:v8];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
      [*(a1 + 48) setObject:? forKeyedSubscript:?];
    }

    v11 = [v8 emailAddressValue];
    v12 = [v11 simpleAddress];
    if (v12)
    {
    }

    else
    {
      v12 = [v8 stringValue];

      if (!v12)
      {
        v14 = EDSenderLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          v16 = [v7 unsignedLongLongValue];
          v17 = 2048;
          v18 = [v5 unsignedLongLongValue];
          v19 = 2114;
          v20 = v8;
          _os_log_error_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_ERROR, "Address with ID %llu (sender ID %llu) has no string representation: %{public}@", buf, 0x20u);
        }

        v12 = 0;
        goto LABEL_11;
      }
    }

    [*(a1 + 56) setObject:v5 forKeyedSubscript:v12];
LABEL_11:

    goto LABEL_12;
  }

  v10 = EDSenderLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __116__EDSenderPersistence__moveSendersWithSimpleEmailAddresses_toCategoryType_sync_userInitiated_transactionGeneration___block_invoke_2_cold_1(buf, [v7 unsignedLongLongValue], objc_msgSend(v5, "unsignedLongLongValue"));
  }

LABEL_12:

  [*(a1 + 64) removeObject:v7];
  v13 = *MEMORY[0x1E69E9840];
}

void __109__EDSenderPersistence__moveSenderWithSimpleEmailAddresses_toBucket_sync_userInitiated_transactionGeneration___block_invoke_102(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _addAddressesWithDatabaseIDs:v7 toSenderWithDatabaseID:v8 connection:*(a1 + 40) error:0];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __109__EDSenderPersistence__moveSenderWithSimpleEmailAddresses_toBucket_sync_userInitiated_transactionGeneration___block_invoke_2_103(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v7 longLongValue];
  v10 = [*(a1 + 32) _bucketForSenderWithDatabaseID:v9 connection:*(a1 + 40)];
  v11 = [*(a1 + 32) _contactIdentifierForSenderWithDatabaseID:v9 connection:*(a1 + 40)];
  v12 = [objc_alloc(MEMORY[0x1E699AEB8]) initWithDatabaseID:v9 addresses:v8 contactIdentifier:v11 bucket:v10];
  v13 = [*(a1 + 32) hookRegistry];
  v16[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v13 persistenceWillChangeSenders:v14];

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _moveSenderWithDatabaseID:v9 toBucket:*(a1 + 64) connection:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [v12 setBucket:*(a1 + 64)];
    [*(a1 + 48) addObject:v12];
  }

  else
  {
    *a4 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addAddresses:(id)a3 toSender:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 databaseID];
  if (v9 == *MEMORY[0x1E699A728])
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"EDSenderPersistence.m" lineNumber:693 description:@"Sender must have valid database ID"];
  }

  v10 = [(EDSenderPersistence *)self hookRegistry];
  [v10 persistenceWillAddAddresses:v7 toSender:v8];

  v11 = [v8 bucket];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v12 = [(EDSenderPersistence *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSenderPersistence addAddresses:toSender:]"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __45__EDSenderPersistence_addAddresses_toSender___block_invoke;
  v27[3] = &unk_1E8253058;
  v29 = &v31;
  v27[4] = self;
  v14 = v7;
  v28 = v14;
  v30 = v9;
  v15 = [v12 __performWriteWithCaller:v13 usingBlock:v27];

  if (v15)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v17)
    {
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [v8 addAddress:{*(*(&v23 + 1) + 8 * v19++), v23}];
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v17);
    }
  }

  [(EDSenderPersistence *)self _setIsBlocked:v11 == 50 forAddresses:v14];
  [(EDSenderPersistence *)self _invalidateCaches];
  v20 = [(EDSenderPersistence *)self hookRegistry];
  [v20 persistenceDidAddAddresses:v14 toSender:v8 generation:v32[3]];

  _Block_object_dispose(&v31, 8);
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __45__EDSenderPersistence_addAddresses_toSender___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [v13 transactionGeneration];
  v3 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"sender_addresses"];
  [*(a1 + 32) _addressIDsForAddresses:*(a1 + 40) connection:v13];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  obj = v16 = 0u;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [v3 addValue];
        [v8 setObject:v7 forKeyedSubscript:@"address"];
        v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
        [v8 setObject:v9 forKeyedSubscript:@"sender"];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v10 = [v13 executeInsertStatement:v3 error:0];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)removeAddresses:(id)a3 fromSender:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 databaseID];
  if (v9 == *MEMORY[0x1E699A728])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"EDSenderPersistence.m" lineNumber:728 description:@"Sender must have valid database ID"];
  }

  v10 = [(EDSenderPersistence *)self hookRegistry];
  [v10 persistenceWillRemoveAddresses:v7 fromSender:v8];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v11 = [(EDSenderPersistence *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSenderPersistence removeAddresses:fromSender:]"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__EDSenderPersistence_removeAddresses_fromSender___block_invoke;
  v26[3] = &unk_1E8251078;
  v28 = &v29;
  v26[4] = self;
  v13 = v8;
  v27 = v13;
  v14 = [v11 __performWriteWithCaller:v12 usingBlock:v26];

  if (v14)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v33 count:16];
    if (v16)
    {
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [v13 removeAddress:{*(*(&v22 + 1) + 8 * v18++), v22}];
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v22 objects:v33 count:16];
      }

      while (v16);
    }
  }

  [(EDSenderPersistence *)self _setIsBlocked:0 forAddresses:v7, v22];
  [(EDSenderPersistence *)self _invalidateCaches];
  v19 = [(EDSenderPersistence *)self hookRegistry];
  [v19 persistenceDidRemoveAddresses:v7 fromSender:v13 generation:v30[3]];

  _Block_object_dispose(&v29, 8);
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __50__EDSenderPersistence_removeAddresses_fromSender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [v3 transactionGeneration];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) addresses];
  v6 = [v4 _addressIDsForAddresses:v5 connection:v3];

  v7 = objc_alloc(MEMORY[0x1E699B8E8]);
  v8 = [MEMORY[0x1E699B8C8] column:@"address"];
  v9 = [v8 in:v6];
  v10 = [v7 initWithTable:@"sender_addresses" where:v9];

  v11 = [v3 executeDeleteStatement:v10 error:0];
  return v11;
}

- (unint64_t)userHasSentToSenderAddress:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*(*MEMORY[0x1E699B750] + 16))())
  {
    v5 = 1;
    goto LABEL_24;
  }

  v22 = 0;
  if (![(EDSenderPersistence *)self bucketForSenderAddress:v4 bucket:&v22])
  {
    *buf = 0;
    *&v24 = buf;
    *(&v24 + 1) = 0x2020000000;
    v25 = 0;
    v7 = [(EDSenderPersistence *)self sentToAddressesQueue];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __50__EDSenderPersistence_userHasSentToSenderAddress___block_invoke;
    v18 = &unk_1E8251C08;
    v21 = buf;
    v19 = self;
    v8 = v4;
    v20 = v8;
    dispatch_sync(v7, &v15);

    v9 = *(v24 + 24);
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = EDSenderLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [v8 emailAddressValue];
          [objc_claimAutoreleasedReturnValue() ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [EDSenderPersistence userHasSentToSenderAddress:];
        }

        v5 = 1;
        goto LABEL_21;
      }

      if (v9 != 2)
      {
        v5 = 0;
        goto LABEL_23;
      }

      v10 = EDSenderLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [v8 emailAddressValue];
        [objc_claimAutoreleasedReturnValue() ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDSenderPersistence userHasSentToSenderAddress:];
      }
    }

    else
    {
      v10 = EDSenderLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [v8 emailAddressValue];
        [objc_claimAutoreleasedReturnValue() ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDSenderPersistence userHasSentToSenderAddress:];
      }
    }

    v5 = 0;
LABEL_21:

LABEL_23:
    _Block_object_dispose(buf, 8);
    goto LABEL_24;
  }

  if (v22 == 200)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = EDSenderLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v4 emailAddressValue];
    v14 = [v13 ef_publicDescription];
    *buf = 67109378;
    *&buf[4] = v5;
    LOWORD(v24) = 2114;
    *(&v24 + 2) = v14;
    _os_log_debug_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEBUG, "Returning 'sentTo' result %u from protected database for address: %{public}@", buf, 0x12u);
  }

LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

void __50__EDSenderPersistence_userHasSentToSenderAddress___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) sentToAddressesFilter];
  v2 = *(a1 + 40);
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  *(*(*(a1 + 48) + 8) + 24) = [v8 mayHaveSentToSimpleAddress:v7];
}

- (void)_loadSentToFilterFromDisk
{
  objc_initWeak(&location, self);
  v3 = [(EDSenderPersistence *)self sentToAddressesQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__EDSenderPersistence__loadSentToFilterFromDisk__block_invoke;
  v4[3] = &unk_1E8250808;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__EDSenderPersistence__loadSentToFilterFromDisk__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained sentToAddressesFilter];
    [v2 loadFromDisk];

    WeakRetained = v3;
  }
}

- (void)_updateSentToFilter
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to request protected database background processing: %{public}@", v5);
}

uint64_t __42__EDSenderPersistence__updateSentToFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 protectedDatabaseAttached])
  {
    v4 = [*(a1 + 32) _simpleAddressesInBucket:200 connection:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:168];
    v9 = [v7 _simpleAddressesNotInBucket:200 withMessagesNewerThan:v8 connection:v3];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return 1;
}

void __42__EDSenderPersistence__updateSentToFilter__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = [WeakRetained sentToAddressesFilter];
    [v2 updateWithSentToSimpleAddresses:*(*(*(a1 + 40) + 8) + 40) recentNotSentToSimpleAddresses:*(*(*(a1 + 48) + 8) + 40)];

    [*(a1 + 32) invalidate];
  }
}

- (BOOL)_addNewSender:(id)a3 toCategoryType:(unint64_t)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 addresses];
  v11 = [(EDSenderPersistence *)self _addressIDsForAddresses:v10 connection:v9];

  v14 = *MEMORY[0x1E699A728];
  v12 = [v8 contactIdentifier];
  LOBYTE(a4) = [(EDSenderPersistence *)self _addNewSenderWithAddressIDs:v11 contactIdentifier:v12 toBucket:0 categoryType:a4 connection:v9 senderDatabaseID:&v14];

  [v8 setDatabaseID:v14];
  return a4;
}

- (id)_addressIDsForAddresses:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = [(EDSenderPersistence *)self _simpleAddressesForAddresses:a3];
  v8 = [EDMessagePersistence allDatabaseIDsForSimpleAddresses:v7 connection:v6];

  return v8;
}

- (BOOL)_addNewSenderWithAddressIDs:(id)a3 contactIdentifier:(id)a4 toBucket:(int64_t)a5 connection:(id)a6 senderDatabaseID:(int64_t *)a7
{
  v73 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"senders"];
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  [v13 setObject:v14 forKeyedSubscript:@"contact_identifier"];
  if (!v11)
  {
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v13 setObject:v15 forKeyedSubscript:@"bucket"];

  [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"user_initiated"];
  v62 = 0;
  LODWORD(v15) = [v12 executeInsertStatement:v13 error:&v62];
  v16 = v62;
  v17 = v16;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v18 = *MEMORY[0x1E699A728];
  v61 = *MEMORY[0x1E699A728];
  if (v15)
  {
    v51 = self;
    v19 = [v12 lastInsertedDatabaseID];
    v59[3] = v19;
    goto LABEL_7;
  }

  if (!v11)
  {
    goto LABEL_29;
  }

  v51 = self;
  v29 = [v16 domain];
  if (![v29 isEqualToString:*MEMORY[0x1E699B770]] || objc_msgSend(v17, "code") != 19)
  {
    v22 = v17;
    goto LABEL_26;
  }

  v30 = [v17 userInfo];
  v31 = [v30 objectForKeyedSubscript:*MEMORY[0x1E699B778]];
  v32 = [v31 integerValue] == 2067;

  if (!v32)
  {
    goto LABEL_29;
  }

  v33 = objc_alloc(MEMORY[0x1E699B948]);
  v34 = *MEMORY[0x1E699B768];
  v50 = [v33 initWithResultColumn:*MEMORY[0x1E699B768] table:@"senders"];
  v35 = [MEMORY[0x1E699B8C8] column:@"contact_identifier"];
  v36 = [v35 equalTo:v11];
  [v50 setWhere:v36];

  v56 = v17;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __106__EDSenderPersistence__addNewSenderWithAddressIDs_contactIdentifier_toBucket_connection_senderDatabaseID___block_invoke;
  v57[3] = &unk_1E8250418;
  v57[4] = &v58;
  LODWORD(v36) = [v12 executeSelectStatement:v50 withBlock:v57 error:&v56];
  v22 = v56;

  if (!v36)
  {
LABEL_24:
    v29 = v50;
LABEL_26:

    goto LABEL_30;
  }

  if (v59[3] == v18)
  {
    v37 = EDSenderLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [EDSenderPersistence _addNewSenderWithAddressIDs:v11 contactIdentifier:v37 toBucket:? connection:? senderDatabaseID:?];
    }

    goto LABEL_24;
  }

  v38 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"senders"];
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v38 setObject:v39 forKeyedSubscript:@"bucket"];

  [v38 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"user_initiated"];
  v40 = [MEMORY[0x1E699B8C8] column:v34];
  v41 = [MEMORY[0x1E696AD98] numberWithLongLong:v59[3]];
  v42 = [v40 equalTo:v41];
  [v38 setWhereClause:v42];

  v55 = v22;
  v43 = [v12 executeUpdateStatement:v38 error:&v55];
  v17 = v55;

  if (!v43)
  {
LABEL_29:
    v22 = v17;
    goto LABEL_30;
  }

  v19 = v59[3];
LABEL_7:
  v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
  v54 = v17;
  v21 = [(EDSenderPersistence *)v51 _addAddressesWithDatabaseIDs:v53 toSenderWithDatabaseID:v20 connection:v12 error:&v54];
  v22 = v54;

  if (v21)
  {
    v23 = EDSenderLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v59[3];
      v25 = @"default";
      if (a5 == 200)
      {
        v25 = @"sentTo";
      }

      if (a5 == 50)
      {
        v25 = @"blocked";
      }

      v26 = v25;
      v27 = [v53 count];
      *buf = 134219010;
      v64 = v24;
      v65 = 2114;
      v66 = v26;
      v67 = 2048;
      v68 = v27;
      v69 = 2114;
      v70 = v53;
      v71 = 2114;
      v72 = v11;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Added new sender (%lld) to bucket %{public}@ with %lu addresses: %{public}@, contact identifier: %{public}@", buf, 0x34u);
    }

    v28 = 1;
    goto LABEL_32;
  }

LABEL_30:
  v23 = EDSenderLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v46 = @"default";
    if (a5 == 200)
    {
      v46 = @"sentTo";
    }

    if (a5 == 50)
    {
      v46 = @"blocked";
    }

    v47 = v46;
    v48 = [v53 count];
    v49 = [v22 ef_publicDescription];
    *buf = 138544386;
    v64 = v47;
    v65 = 2048;
    v66 = v48;
    v67 = 2114;
    v68 = v53;
    v69 = 2114;
    v70 = v11;
    v71 = 2114;
    v72 = v49;
    _os_log_error_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_ERROR, "Failed to add new sender to bucket %{public}@ with %lu addresses: %{public}@, contact identifier: %{public}@, error: %{public}@", buf, 0x34u);
  }

  v28 = 0;
LABEL_32:

  if (a7)
  {
    *a7 = v59[3];
  }

  _Block_object_dispose(&v58, 8);

  v44 = *MEMORY[0x1E69E9840];
  return v28;
}

void __106__EDSenderPersistence__addNewSenderWithAddressIDs_contactIdentifier_toBucket_connection_senderDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (BOOL)_addNewSenderWithAddressIDs:(id)a3 contactIdentifier:(id)a4 toBucket:(int64_t)a5 categoryType:(unint64_t)a6 connection:(id)a7 senderDatabaseID:(int64_t *)a8
{
  v77 = *MEMORY[0x1E69E9840];
  v56 = a3;
  v13 = a4;
  v57 = a7;
  v14 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"senders"];
  v15 = v13;
  if (!v13)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  [v14 setObject:v15 forKeyedSubscript:@"contact_identifier"];
  if (!v13)
  {
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v14 setObject:v16 forKeyedSubscript:@"bucket"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v14 setObject:v17 forKeyedSubscript:@"category"];

  [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"user_initiated"];
  v54 = self;
  v66 = 0;
  LODWORD(v17) = [v57 executeInsertStatement:v14 error:&v66];
  v18 = v66;
  v19 = v18;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v20 = *MEMORY[0x1E699A728];
  v65 = *MEMORY[0x1E699A728];
  v21 = v56;
  if (v17)
  {
    v22 = [v57 lastInsertedDatabaseID];
    v63[3] = v22;
    goto LABEL_7;
  }

  if (!v13)
  {
    goto LABEL_29;
  }

  v32 = [v18 domain];
  if (![v32 isEqualToString:*MEMORY[0x1E699B770]] || objc_msgSend(v19, "code") != 19)
  {
    v25 = v19;
    goto LABEL_26;
  }

  v52 = [v19 userInfo];
  v33 = [v52 objectForKeyedSubscript:*MEMORY[0x1E699B778]];
  v34 = [v33 integerValue] == 2067;

  if (!v34)
  {
    goto LABEL_29;
  }

  v35 = objc_alloc(MEMORY[0x1E699B948]);
  v51 = *MEMORY[0x1E699B768];
  v53 = [v35 initWithResultColumn:? table:?];
  v36 = [MEMORY[0x1E699B8C8] column:@"contact_identifier"];
  v37 = [v36 equalTo:v13];
  [v53 setWhere:v37];

  v60 = v19;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __119__EDSenderPersistence__addNewSenderWithAddressIDs_contactIdentifier_toBucket_categoryType_connection_senderDatabaseID___block_invoke;
  v61[3] = &unk_1E8250418;
  v61[4] = &v62;
  LODWORD(v37) = [v57 executeSelectStatement:v53 withBlock:v61 error:&v60];
  v25 = v60;

  if (!v37)
  {
LABEL_24:
    v32 = v53;
LABEL_26:

    goto LABEL_30;
  }

  if (v63[3] == v20)
  {
    v38 = EDSenderLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [EDSenderPersistence _addNewSenderWithAddressIDs:v13 contactIdentifier:v38 toBucket:? connection:? senderDatabaseID:?];
    }

    goto LABEL_24;
  }

  v39 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"senders"];
  v40 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v39 setObject:v40 forKeyedSubscript:@"bucket"];

  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v39 setObject:v41 forKeyedSubscript:@"category"];

  [v39 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"user_initiated"];
  v42 = [MEMORY[0x1E699B8C8] column:v51];
  v43 = [MEMORY[0x1E696AD98] numberWithLongLong:v63[3]];
  v44 = [v42 equalTo:v43];
  [v39 setWhereClause:v44];

  v59 = v25;
  LODWORD(v42) = [v57 executeUpdateStatement:v39 error:&v59];
  v19 = v59;

  if (!v42)
  {
LABEL_29:
    v25 = v19;
    goto LABEL_30;
  }

  v22 = v63[3];
  v21 = v56;
LABEL_7:
  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:v22];
  v58 = v19;
  v24 = [(EDSenderPersistence *)v54 _addAddressesWithDatabaseIDs:v21 toSenderWithDatabaseID:v23 connection:v57 error:&v58];
  v25 = v58;

  if (v24)
  {
    v26 = EDSenderLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v63[3];
      v28 = @"default";
      if (a5 == 200)
      {
        v28 = @"sentTo";
      }

      if (a5 == 50)
      {
        v28 = @"blocked";
      }

      v29 = v28;
      v30 = [v56 count];
      *buf = 134219010;
      v68 = v27;
      v69 = 2114;
      v70 = v29;
      v71 = 2048;
      v72 = v30;
      v73 = 2114;
      v74 = v56;
      v75 = 2114;
      v76 = v13;
      _os_log_impl(&dword_1C61EF000, v26, OS_LOG_TYPE_DEFAULT, "Added new sender (%lld) to bucket %{public}@ with %lu addresses: %{public}@, contact identifier: %{public}@", buf, 0x34u);
    }

    v31 = 1;
    goto LABEL_32;
  }

LABEL_30:
  v26 = EDSenderLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v47 = @"default";
    if (a5 == 200)
    {
      v47 = @"sentTo";
    }

    if (a5 == 50)
    {
      v47 = @"blocked";
    }

    v48 = v47;
    v49 = [v56 count];
    v50 = [v25 ef_publicDescription];
    *buf = 138544386;
    v68 = v48;
    v69 = 2048;
    v70 = v49;
    v71 = 2114;
    v72 = v56;
    v73 = 2114;
    v74 = v13;
    v75 = 2114;
    v76 = v50;
    _os_log_error_impl(&dword_1C61EF000, v26, OS_LOG_TYPE_ERROR, "Failed to add new sender to bucket %{public}@ with %lu addresses: %{public}@, contact identifier: %{public}@, error: %{public}@", buf, 0x34u);
  }

  v31 = 0;
LABEL_32:

  if (a8)
  {
    *a8 = v63[3];
  }

  _Block_object_dispose(&v62, 8);

  v45 = *MEMORY[0x1E69E9840];
  return v31;
}

void __119__EDSenderPersistence__addNewSenderWithAddressIDs_contactIdentifier_toBucket_categoryType_connection_senderDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (BOOL)_addAddressesWithDatabaseIDs:(id)a3 toSenderWithDatabaseID:(id)a4 connection:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v21 = a5;
  v10 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"sender_addresses" conflictResolution:4];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v16 = [v10 addValue];
        [v16 setObject:v15 forKeyedSubscript:@"address"];
        [v16 setObject:v9 forKeyedSubscript:@"sender"];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v17 = [v21 executeInsertStatement:v10 error:a6];
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_moveSenderWithDatabaseID:(int64_t)a3 toCategoryType:(unint64_t)a4 connection:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"senders"];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v8 setObject:v9 forKeyedSubscript:@"category"];

  v10 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v12 = [v10 equalTo:v11];
  [v8 setWhereClause:v12];

  v21 = 0;
  v13 = [v7 executeUpdateStatement:v8 error:&v21];
  v14 = v21;
  if (v13)
  {
    v15 = EDSenderLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (a4 - 1 > 2)
      {
        v16 = @"default";
      }

      else
      {
        v16 = off_1E8257968[a4 - 1];
      }

      *buf = 134218242;
      v23 = a3;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Moved sender (%lld) to category %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v15 = EDSenderLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (a4 - 1 > 2)
      {
        v17 = @"default";
      }

      else
      {
        v17 = off_1E8257968[a4 - 1];
      }

      v20 = [v14 ef_publicDescription];
      *buf = 134218498;
      v23 = a3;
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v20;
      _os_log_error_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_ERROR, "Failed to move sender (%lld) to category %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_moveSenderWithDatabaseID:(int64_t)a3 toBucket:(int64_t)a4 connection:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"senders"];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v8 setObject:v9 forKeyedSubscript:@"bucket"];

  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"user_initiated"];
  v10 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v12 = [v10 equalTo:v11];
  [v8 setWhereClause:v12];

  v23 = 0;
  v13 = [v7 executeUpdateStatement:v8 error:&v23];
  v14 = v23;
  if (v13)
  {
    v15 = EDSenderLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"default";
      if (a4 == 200)
      {
        v16 = @"sentTo";
      }

      if (a4 == 50)
      {
        v16 = @"blocked";
      }

      *buf = 134218242;
      v25 = a3;
      v26 = 2114;
      v27 = v16;
      v17 = v16;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Moved sender (%lld) to bucket %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v15 = EDSenderLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = @"default";
      if (a4 == 200)
      {
        v20 = @"sentTo";
      }

      if (a4 == 50)
      {
        v20 = @"blocked";
      }

      v21 = v20;
      v22 = [v14 ef_publicDescription];
      *buf = 134218498;
      v25 = a3;
      v26 = 2114;
      v27 = v21;
      v28 = 2114;
      v29 = v22;
      _os_log_error_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_ERROR, "Failed to move sender (%lld) to bucket %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_addNewSendersForEmailAddresses:(id)a3 toBucket:(int64_t)a4 connection:(id)a5 newSenders:(id *)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v39 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke;
  aBlock[3] = &unk_1E82576A8;
  v41 = v8;
  v74 = v41;
  v33 = _Block_copy(aBlock);
  v9 = [v41 allKeys];
  v71 = 0;
  v72 = 0;
  v10 = [(EDSenderPersistence *)self _addressesGroupedByContactForAddresses:v9 unmatchedAddresses:&v72 otherAddressesByContact:&v71];
  v35 = v72;
  v38 = v71;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke_2;
  v69[3] = &unk_1E82576D0;
  v34 = v33;
  v70 = v34;
  v11 = [v10 ef_mapValues:v69];

  v68 = 0;
  v12 = [(EDSenderPersistence *)self _addressIDsGroupedByContactsForAddressesByContact:v38 withConnection:v39 addressesByID:&v68];
  v40 = v68;
  v32 = v12;
  v37 = [(EDSenderPersistence *)self _combineDictionary:v11 withDictionary:v12];

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v40 count])
  {
    [v13 addEntriesFromDictionary:v40];
  }

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke_3;
  v66[3] = &unk_1E82576F8;
  v14 = v13;
  v67 = v14;
  [v41 enumerateKeysAndObjectsUsingBlock:v66];
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 1;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke_4;
  v55[3] = &unk_1E8257720;
  v60 = &v62;
  v61 = a4;
  v55[4] = self;
  v43 = v39;
  v56 = v43;
  v31 = v38;
  v57 = v31;
  v16 = v14;
  v58 = v16;
  v44 = v15;
  v59 = v44;
  [v37 enumerateKeysAndObjectsUsingBlock:v55];
  if (*(v63 + 24) == 1)
  {
    v17 = [(EDSenderPersistence *)self _addressesGroupedBySimpleAddressForAddresses:v35];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke_119;
    v53[3] = &unk_1E8257748;
    v54 = v34;
    v18 = [v17 ef_compactMap:v53];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v49 objects:v75 count:16];
    if (v19)
    {
      v20 = *v50;
      v21 = *MEMORY[0x1E699A728];
LABEL_6:
      v22 = 0;
      while (1)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v49 + 1) + 8 * v22);
        v48 = v21;
        v24 = [(EDSenderPersistence *)self _addNewSenderWithAddressIDs:v23 contactIdentifier:0 toBucket:a4 connection:v43 senderDatabaseID:&v48];
        *(v63 + 24) = v24;
        if (!v24)
        {
          break;
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke_2_121;
        v46[3] = &unk_1E8257770;
        v47 = v16;
        v25 = [v23 ef_compactMap:v46];
        v26 = objc_alloc(MEMORY[0x1E699AEB8]);
        v27 = [v26 initWithDatabaseID:v48 addresses:v25 contactIdentifier:0 bucket:a4];
        [v44 addObject:v27];

        if (v19 == ++v22)
        {
          v19 = [obj countByEnumeratingWithState:&v49 objects:v75 count:16];
          if (v19)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  if (a6)
  {
    *a6 = [v44 ef_notEmpty];
  }

  v28 = *(v63 + 24);

  _Block_object_dispose(&v62, 8);
  v29 = *MEMORY[0x1E69E9840];
  return v28 & 1;
}

id __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringValue];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

id __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_compactMap:*(a1 + 32)];

  return v2;
}

void __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v32 = *MEMORY[0x1E699A728];
  v9 = *(a1 + 32);
  v26 = v8;
  v27 = v7;
  v10 = [v7 identifier];
  *(*(*(a1 + 72) + 8) + 24) = [v9 _addNewSenderWithAddressIDs:v8 contactIdentifier:v10 toBucket:*(a1 + 80) connection:*(a1 + 40) senderDatabaseID:&v32];

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v11 = [*(a1 + 48) objectForKeyedSubscript:v7];
    v12 = [v11 mutableCopy];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v14)
    {
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [*(a1 + 56) objectForKeyedSubscript:v17];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = EDSenderLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [v17 unsignedLongLongValue];
              *buf = 134218240;
              v34 = v20;
              v35 = 2048;
              v36 = v32;
              _os_log_error_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_ERROR, "<nil> address for ID %llu (sender ID %llu)", buf, 0x16u);
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }

    if ([v12 count])
    {
      v21 = objc_alloc(MEMORY[0x1E699AEB8]);
      v22 = v32;
      v23 = [v27 identifier];
      v24 = [v21 initWithDatabaseID:v22 addresses:v12 contactIdentifier:v23 bucket:*(a1 + 80)];

      [*(a1 + 64) addObject:v24];
    }
  }

  else
  {
    *a4 = 1;
  }

  v25 = *MEMORY[0x1E69E9840];
}

id __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke_119(uint64_t a1, void *a2)
{
  v2 = [a2 ef_compactMap:*(a1 + 32)];
  v3 = [v2 ef_notEmpty];

  return v3;
}

id __86__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_connection_newSenders___block_invoke_2_121(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];

  return v2;
}

- (BOOL)_addNewSendersForEmailAddresses:(id)a3 toBucket:(int64_t)a4 categoryType:(unint64_t)a5 connection:(id)a6 newSenders:(id *)a7
{
  v79 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v40 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke;
  aBlock[3] = &unk_1E82576A8;
  v42 = v9;
  v77 = v42;
  v34 = _Block_copy(aBlock);
  v10 = [v42 allKeys];
  v75 = 0;
  v74 = 0;
  v11 = [(EDSenderPersistence *)self _addressesGroupedByContactForAddresses:v10 unmatchedAddresses:&v75 otherAddressesByContact:&v74];
  v36 = v75;
  v39 = v74;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke_2;
  v72[3] = &unk_1E82576D0;
  v35 = v34;
  v73 = v35;
  v12 = [v11 ef_mapValues:v72];

  v71 = 0;
  v13 = [(EDSenderPersistence *)self _addressIDsGroupedByContactsForAddressesByContact:v39 withConnection:v40 addressesByID:&v71];
  v41 = v71;
  v33 = v13;
  v38 = [(EDSenderPersistence *)self _combineDictionary:v12 withDictionary:v13];

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v41 count])
  {
    [v14 addEntriesFromDictionary:v41];
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke_3;
  v69[3] = &unk_1E82576F8;
  v15 = v14;
  v70 = v15;
  [v42 enumerateKeysAndObjectsUsingBlock:v69];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 1;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke_4;
  v57[3] = &unk_1E8257798;
  v62 = &v65;
  v63 = a4;
  v57[4] = self;
  v64 = a5;
  v44 = v40;
  v58 = v44;
  v32 = v39;
  v59 = v32;
  v17 = v15;
  v60 = v17;
  v46 = v16;
  v61 = v46;
  [v38 enumerateKeysAndObjectsUsingBlock:v57];
  if (*(v66 + 24) == 1)
  {
    v18 = [(EDSenderPersistence *)self _addressesGroupedBySimpleAddressForAddresses:v36];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke_123;
    v55[3] = &unk_1E8257748;
    v56 = v35;
    v19 = [v18 ef_compactMap:v55];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v19;
    v20 = [obj countByEnumeratingWithState:&v51 objects:v78 count:16];
    if (v20)
    {
      v21 = *v52;
      v22 = *MEMORY[0x1E699A728];
LABEL_6:
      v23 = 0;
      while (1)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v51 + 1) + 8 * v23);
        v50 = v22;
        v25 = [(EDSenderPersistence *)self _addNewSenderWithAddressIDs:v24 contactIdentifier:0 toBucket:a4 categoryType:a5 connection:v44 senderDatabaseID:&v50];
        *(v66 + 24) = v25;
        if (!v25)
        {
          break;
        }

        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke_2_124;
        v48[3] = &unk_1E8257770;
        v49 = v17;
        v26 = [v24 ef_compactMap:v48];
        v27 = objc_alloc(MEMORY[0x1E699AEB8]);
        v28 = [v27 initWithDatabaseID:v50 addresses:v26 contactIdentifier:0 bucket:a4];
        [v46 addObject:v28];

        if (v20 == ++v23)
        {
          v20 = [obj countByEnumeratingWithState:&v51 objects:v78 count:16];
          if (v20)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  if (a7)
  {
    *a7 = [v46 ef_notEmpty];
  }

  v29 = *(v66 + 24);

  _Block_object_dispose(&v65, 8);
  v30 = *MEMORY[0x1E69E9840];
  return v29 & 1;
}

id __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringValue];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

id __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_compactMap:*(a1 + 32)];

  return v2;
}

void __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v32 = *MEMORY[0x1E699A728];
  v9 = *(a1 + 32);
  v26 = v8;
  v27 = v7;
  v10 = [v7 identifier];
  *(*(*(a1 + 72) + 8) + 24) = [v9 _addNewSenderWithAddressIDs:v8 contactIdentifier:v10 toBucket:*(a1 + 80) categoryType:*(a1 + 88) connection:*(a1 + 40) senderDatabaseID:&v32];

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v11 = [*(a1 + 48) objectForKeyedSubscript:v7];
    v12 = [v11 mutableCopy];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v14)
    {
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [*(a1 + 56) objectForKeyedSubscript:v17];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = EDSenderLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [v17 unsignedLongLongValue];
              *buf = 134218240;
              v34 = v20;
              v35 = 2048;
              v36 = v32;
              _os_log_error_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_ERROR, "<nil> address for ID %llu (sender ID %llu)", buf, 0x16u);
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }

    if ([v12 count])
    {
      v21 = objc_alloc(MEMORY[0x1E699AEB8]);
      v22 = v32;
      v23 = [v27 identifier];
      v24 = [v21 initWithDatabaseID:v22 addresses:v12 contactIdentifier:v23 bucket:*(a1 + 80)];

      [*(a1 + 64) addObject:v24];
    }
  }

  else
  {
    *a4 = 1;
  }

  v25 = *MEMORY[0x1E69E9840];
}

id __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke_123(uint64_t a1, void *a2)
{
  v2 = [a2 ef_compactMap:*(a1 + 32)];
  v3 = [v2 ef_notEmpty];

  return v3;
}

id __99__EDSenderPersistence__addNewSendersForEmailAddresses_toBucket_categoryType_connection_newSenders___block_invoke_2_124(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];

  return v2;
}

- (id)_contactIdentifierForSenderWithDatabaseID:(int64_t)a3 connection:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"contact_identifier" table:@"senders"];
  v7 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9 = [v7 equalTo:v8];
  [v6 setWhere:v9];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__41;
  v17 = __Block_byref_object_dispose__41;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__EDSenderPersistence__contactIdentifierForSenderWithDatabaseID_connection___block_invoke;
  v12[3] = &unk_1E8250418;
  v12[4] = &v13;
  [v5 executeSelectStatement:v6 withBlock:v12 error:0];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __76__EDSenderPersistence__contactIdentifierForSenderWithDatabaseID_connection___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (int64_t)_bucketForSenderWithDatabaseID:(int64_t)a3 connection:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"bucket" table:@"senders"];
  v7 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9 = [v7 equalTo:v8];
  [v6 setWhere:v9];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__EDSenderPersistence__bucketForSenderWithDatabaseID_connection___block_invoke;
  v12[3] = &unk_1E8250418;
  v12[4] = &v13;
  [v5 executeSelectStatement:v6 withBlock:v12 error:0];
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __65__EDSenderPersistence__bucketForSenderWithDatabaseID_connection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

- (id)_emailAddressForDatabaseID:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDSenderPersistence *)self databaseIDToEmailAddressCache];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__EDSenderPersistence__emailAddressForDatabaseID_connection___block_invoke;
  v13[3] = &unk_1E82577E8;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [v8 objectForKey:v9 generator:v13];

  return v11;
}

id __61__EDSenderPersistence__emailAddressForDatabaseID_connection___block_invoke(uint64_t a1)
{
  v39 = 0;
  v2 = [EDMessagePersistence selectAddressesStatementWithResultColumns:&v39];
  v3 = v39;
  v4 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v5 = [v4 equalTo:*(a1 + 32)];
  [v2 setWhere:v5];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__41;
  v37 = __Block_byref_object_dispose__41;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__41;
  v31 = __Block_byref_object_dispose__41;
  v32 = 0;
  v6 = *(a1 + 40);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __61__EDSenderPersistence__emailAddressForDatabaseID_connection___block_invoke_2;
  v23 = &unk_1E82577C0;
  v25 = &v33;
  v7 = v3;
  v24 = v7;
  v26 = &v27;
  [v6 executeSelectStatement:v2 withBlock:&v20 error:0];
  v8 = v34[5];
  v9 = v28[5];
  v10 = v8;
  v11 = objc_alloc(MEMORY[0x1E699B248]);
  v12 = [v11 initWithString:{v9, v20, v21, v22, v23}];
  [v12 setDisplayName:v10];
  v13 = [v12 emailAddressValue];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [v12 stringValue];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v9;
    }

    v15 = v18;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v15;
}

void __61__EDSenderPersistence__emailAddressForDatabaseID_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) first];
  v4 = [v13 objectForKeyedSubscript:v3];
  v5 = [v4 stringValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) second];
  v9 = [v13 objectForKeyedSubscript:v8];
  v10 = [v9 stringValue];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)_simpleAddressesInBucket:(int64_t)a3 connection:(id)a4
{
  v5 = a4;
  v23 = 0;
  v6 = [EDMessagePersistence selectAddressesStatementWithResultColumns:&v23];
  v7 = v23;
  v8 = *MEMORY[0x1E699B768];
  v9 = [v6 join:@"sender_addresses" sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"address"];
  v10 = [v9 join:@"senders" sourceColumn:@"sender" targetColumn:v8];
  v11 = [MEMORY[0x1E699B8C8] table:@"senders" column:@"bucket"];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v13 = [v11 equalTo:v12];
  [v6 setWhere:v13];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__EDSenderPersistence__simpleAddressesInBucket_connection___block_invoke;
  v20[3] = &unk_1E82511B8;
  v15 = v7;
  v21 = v15;
  v22 = v14;
  v16 = v14;
  if ([v5 executeSelectStatement:v6 withBlock:v20 error:0])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

void __59__EDSenderPersistence__simpleAddressesInBucket_connection___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) second];
  v4 = [v6 objectForKeyedSubscript:v3];
  v5 = [v4 stringValue];

  [*(a1 + 40) addObject:v5];
}

- (id)_simpleAddressesNotInBucket:(int64_t)a3 withMessagesNewerThan:(id)a4 connection:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = objc_alloc(MEMORY[0x1E699B948]);
  v9 = +[EDMessagePersistence messagesSenderColumnName];
  v10 = +[EDMessagePersistence messagesTableName];
  v11 = [v8 initWithResultColumn:v9 table:v10];

  v12 = MEMORY[0x1E699B8C8];
  v13 = +[EDMessagePersistence messagesDateReceivedColumnName];
  v14 = [v12 column:v13];
  v15 = [v14 greaterThan:v6];
  [v11 setWhere:v15];

  v29 = 0;
  v16 = [EDMessagePersistence selectAddressesStatementWithResultColumns:&v29];
  v17 = v29;
  v18 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v19 = [v18 in:v11];
  [v16 setWhere:v19];

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __84__EDSenderPersistence__simpleAddressesNotInBucket_withMessagesNewerThan_connection___block_invoke;
  v26[3] = &unk_1E82511B8;
  v21 = v17;
  v27 = v21;
  v28 = v20;
  v22 = v20;
  if ([v7 executeSelectStatement:v16 withBlock:v26 error:0])
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  return v23;
}

void __84__EDSenderPersistence__simpleAddressesNotInBucket_withMessagesNewerThan_connection___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) second];
  v4 = [v6 objectForKeyedSubscript:v3];
  v5 = [v4 stringValue];

  [*(a1 + 40) addObject:v5];
}

- (void)_setIsBlocked:(BOOL)a3 forAddresses:(id)a4
{
  v4 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = EDSenderLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    v9 = @"Unblocking";
    if (v4)
    {
      v9 = @"Blocking";
    }

    *buf = 138543618;
    v24 = v9;
    v25 = 2048;
    v26 = v8;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %lu addresses", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) emailAddressValue];
        if (v14)
        {
          v15 = [(EDSenderPersistence *)self blockedSenderManager];
          v16 = [v14 simpleAddress];
          if (v4)
          {
            [v15 blockEmailAddress:v16];
          }

          else
          {
            [v15 unblockEmailAddress:v16];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

id __48__EDSenderPersistence__blockedSendersDidChange___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E699A6D0]];
  v7 = [v5 _addressesToDatabaseIDsForSimpleAddresses:v6 connection:v4];

  return v7;
}

id __48__EDSenderPersistence__blockedSendersDidChange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E699A6E8]];
  v7 = [v5 _addressesToDatabaseIDsForSimpleAddresses:v6 connection:v4];

  return v7;
}

- (id)_addressesToDatabaseIDsForSimpleAddresses:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = [EDMessagePersistence allDatabaseIDsForSimpleAddresses:a3 connection:v6];
  v15 = 0;
  v8 = [EDMessagePersistence selectAddressesStatementWithResultColumns:&v15];
  v9 = v15;
  v10 = *MEMORY[0x1E699B768];
  [v8 addResultColumn:*MEMORY[0x1E699B768] alias:@"address_id"];
  v11 = [MEMORY[0x1E699B8C8] column:v10];
  v12 = [v11 in:v7];
  [v8 setWhere:v12];

  v13 = [(EDSenderPersistence *)self _addressesToDatabaseIDsForSelect:v8 addressColumns:v9 connection:v6 error:0];

  return v13;
}

- (void)_reloadBlockedSendersWithAddresses:(id)a3
{
  v3[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__EDSenderPersistence__reloadBlockedSendersWithAddresses___block_invoke;
  v4[3] = &unk_1E8257838;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__EDSenderPersistence__reloadBlockedSendersWithAddresses___block_invoke_2;
  v3[3] = &unk_1E8257838;
  [(EDSenderPersistence *)self _updateBlockedSendersWithBlockedSenderAddresses:a3 newlyBlockedAddresses:v4 newlyUnblockedAddresses:v3];
}

id __58__EDSenderPersistence__reloadBlockedSendersWithAddresses___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) _newlyBlockedAddressesForBlockedAddressDatabaseIDs:a2 connection:a3];

  return v3;
}

id __58__EDSenderPersistence__reloadBlockedSendersWithAddresses___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) _newlyUnblockedAddressesForBlockedAddressDatabaseIDs:a2 connection:a3];

  return v3;
}

- (void)_updateBlockedSendersWithBlockedSenderAddresses:(id)a3 newlyBlockedAddresses:(id)a4 newlyUnblockedAddresses:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__41;
  v36 = __Block_byref_object_dispose__41;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__41;
  v30 = __Block_byref_object_dispose__41;
  v31 = 0;
  v11 = [(EDSenderPersistence *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDSenderPersistence _updateBlockedSendersWithBlockedSenderAddresses:newlyBlockedAddresses:newlyUnblockedAddresses:]"];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __117__EDSenderPersistence__updateBlockedSendersWithBlockedSenderAddresses_newlyBlockedAddresses_newlyUnblockedAddresses___block_invoke;
  v19 = &unk_1E8257860;
  v13 = v8;
  v20 = v13;
  v14 = v9;
  v22 = v14;
  v15 = v10;
  v21 = self;
  v23 = v15;
  v24 = &v32;
  v25 = &v26;
  [v11 __performWriteWithCaller:v12 usingBlock:&v16];

  if ([v33[5] count])
  {
    [(EDSenderPersistence *)self _setIsBlocked:1 forAddresses:v33[5]];
  }

  if ([v27[5] count])
  {
    [(EDSenderPersistence *)self _setIsBlocked:0 forAddresses:v27[5]];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

uint64_t __117__EDSenderPersistence__updateBlockedSendersWithBlockedSenderAddresses_newlyBlockedAddresses_newlyUnblockedAddresses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v5 = [EDMessagePersistence allDatabaseIDsForSimpleAddresses:v4 connection:v3];

  v6 = (*(*(a1 + 48) + 16))();
  v7 = (*(*(a1 + 56) + 16))();
  if ([v6 count] && (v8 = *(a1 + 40), v9 = *(*(a1 + 64) + 8), obj = *(v9 + 40), v10 = objc_msgSend(v8, "_blockOrUnblockSendersForAddresses:block:blockedAddressDatabaseIDs:connection:addressesToUpdate:", v6, 1, v5, v3, &obj), objc_storeStrong((v9 + 40), obj), !v10))
  {
    v13 = 0;
  }

  else if ([v7 count])
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 72) + 8);
    v15 = *(v12 + 40);
    v13 = [v11 _blockOrUnblockSendersForAddresses:v7 block:0 blockedAddressDatabaseIDs:v5 connection:v3 addressesToUpdate:&v15];
    objc_storeStrong((v12 + 40), v15);
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (id)_newlyBlockedAddressesForBlockedAddressDatabaseIDs:(id)a3 connection:(id)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v8 = [EDMessagePersistence selectAddressesStatementWithResultColumns:&v26];
  v9 = v26;
  v10 = *MEMORY[0x1E699B768];
  [v8 addResultColumn:*MEMORY[0x1E699B768] alias:@"address_id"];
  v11 = [v8 leftOuterJoin:@"sender_addresses" sourceColumn:v10 targetColumn:@"address"];
  v12 = [v11 leftOuterJoin:@"senders" sourceColumn:@"sender" targetColumn:v10];
  v13 = [MEMORY[0x1E699B8C8] column:@"address_id"];
  v14 = [v13 in:v6];

  v15 = [MEMORY[0x1E699B8C8] table:@"senders" column:@"bucket"];
  v16 = [v15 isNot:&unk_1F45E6A48];

  v17 = MEMORY[0x1E699B898];
  v27[0] = v14;
  v27[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v19 = [v17 combined:v18];
  [v8 setWhere:v19];

  v25 = 0;
  v20 = [(EDSenderPersistence *)self _addressesToDatabaseIDsForSelect:v8 addressColumns:v9 connection:v7 error:&v25];
  v21 = v25;
  if (!v20)
  {
    v22 = EDSenderLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v21 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDSenderPersistence _newlyBlockedAddressesForBlockedAddressDatabaseIDs:connection:];
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_newlyUnblockedAddressesForBlockedAddressDatabaseIDs:(id)a3 connection:(id)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v8 = [EDMessagePersistence selectAddressesStatementWithResultColumns:&v26];
  v9 = v26;
  v10 = *MEMORY[0x1E699B768];
  [v8 addResultColumn:*MEMORY[0x1E699B768] alias:@"address_id"];
  v11 = [v8 join:@"sender_addresses" sourceColumn:v10 targetColumn:@"address"];
  v12 = [v11 join:@"senders" sourceColumn:@"sender" targetColumn:v10];
  v13 = [MEMORY[0x1E699B8C8] table:@"senders" column:@"bucket"];
  v14 = [v13 is:&unk_1F45E6A48];

  v15 = [MEMORY[0x1E699B8C8] column:@"address_id"];
  v16 = [v15 notIn:v6];

  v17 = MEMORY[0x1E699B898];
  v27[0] = v14;
  v27[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v19 = [v17 combined:v18];
  [v8 setWhere:v19];

  v25 = 0;
  v20 = [(EDSenderPersistence *)self _addressesToDatabaseIDsForSelect:v8 addressColumns:v9 connection:v7 error:&v25];
  v21 = v25;
  if (!v20)
  {
    v22 = EDSenderLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v21 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDSenderPersistence _newlyUnblockedAddressesForBlockedAddressDatabaseIDs:connection:];
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_addressesToDatabaseIDsForSelect:(id)a3 addressColumns:(id)a4 connection:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__EDSenderPersistence__addressesToDatabaseIDsForSelect_addressColumns_connection_error___block_invoke;
  v18[3] = &unk_1E82511B8;
  v13 = v10;
  v19 = v13;
  v20 = v12;
  v14 = v12;
  if ([v11 executeSelectStatement:v9 withBlock:v18 error:a6])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

void __88__EDSenderPersistence__addressesToDatabaseIDsForSelect_addressColumns_connection_error___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [v22 objectForKeyedSubscript:@"address_id"];
  v4 = [v3 numberValue];

  v5 = [*(a1 + 32) first];
  v6 = [v22 objectForKeyedSubscript:v5];
  v7 = [v6 stringValue];

  v8 = [*(a1 + 32) second];
  v9 = [v22 objectForKeyedSubscript:v8];
  v10 = [v9 stringValue];

  v11 = v10;
  v12 = v7;
  v13 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v11];
  [v13 setDisplayName:v12];
  v14 = [v13 emailAddressValue];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [v13 stringValue];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v11;
    }

    v16 = v19;
  }

  v20 = *(a1 + 40);
  v21 = [v16 stringValue];
  [v20 setObject:v4 forKeyedSubscript:v21];
}

void __119__EDSenderPersistence__blockOrUnblockSendersForAddresses_block_blockedAddressDatabaseIDs_connection_addressesToUpdate___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24 objectForKeyedSubscript:@"sender"];
  v4 = [v3 numberValue];

  v5 = [v24 objectForKeyedSubscript:@"address_id"];
  v6 = [v5 numberValue];

  v7 = [*(a1 + 32) first];
  v8 = [v24 objectForKeyedSubscript:v7];
  v9 = [v8 stringValue];

  v10 = [*(a1 + 32) second];
  v11 = [v24 objectForKeyedSubscript:v10];
  v12 = [v11 stringValue];

  v13 = v12;
  v14 = v9;
  v15 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v13];
  [v15 setDisplayName:v14];
  v16 = [v15 emailAddressValue];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = [v15 stringValue];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v13;
    }

    v18 = v21;
  }

  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v22 = *(a1 + 48);
    v23 = [v18 stringValue];
    [v22 setObject:v6 forKeyedSubscript:v23];
  }
}

void __119__EDSenderPersistence__blockOrUnblockSendersForAddresses_block_blockedAddressDatabaseIDs_connection_addressesToUpdate___block_invoke_144(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [v22 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];

  LODWORD(v3) = *(a1 + 56);
  if (v3 != [*(a1 + 32) containsObject:v4])
  {
    v5 = [*(a1 + 40) first];
    v6 = [v22 objectForKeyedSubscript:v5];
    v7 = [v6 stringValue];

    v8 = [*(a1 + 40) second];
    v9 = [v22 objectForKeyedSubscript:v8];
    v10 = [v9 stringValue];

    v11 = v10;
    v12 = v7;
    v13 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v11];
    [v13 setDisplayName:v12];
    v14 = [v13 emailAddressValue];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v17 = [v13 stringValue];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v11;
      }

      v16 = v19;
    }

    if (v16)
    {
      v20 = *(a1 + 48);
      v21 = [v16 stringValue];
      [v20 addObject:v21];
    }
  }
}

- (id)_simpleAddressesForAddresses:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 emailAddressValue];
        v11 = [v10 simpleAddress];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v9 stringValue];
        }

        v14 = v13;

        [v4 ef_addOptionalObject:v14];
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = [v4 allObjects];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_addressesGroupedBySimpleAddressForAddresses:(id)a3
{
  v3 = [a3 ef_groupBy:&__block_literal_global_146];
  v4 = [v3 allValues];

  return v4;
}

id __68__EDSenderPersistence__addressesGroupedBySimpleAddressForAddresses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

- (id)_combineDictionary:(id)a3 withDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    if ([v6 count])
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57__EDSenderPersistence__combineDictionary_withDictionary___block_invoke;
      v18[3] = &unk_1E8255ED0;
      v8 = v6;
      v19 = v8;
      v9 = v7;
      v20 = v9;
      [v5 enumerateKeysAndObjectsUsingBlock:v18];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__EDSenderPersistence__combineDictionary_withDictionary___block_invoke_2;
      v15[3] = &unk_1E8255ED0;
      v16 = v5;
      v10 = v9;
      v17 = v10;
      [v8 enumerateKeysAndObjectsUsingBlock:v15];
      v11 = v17;
      v12 = v10;

      goto LABEL_7;
    }

    v13 = v5;
  }

  else
  {
    v13 = v6;
  }

  v12 = v13;
LABEL_7:

  return v12;
}

void __57__EDSenderPersistence__combineDictionary_withDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v12[0] = v6;
    v12[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v10 = [v9 ef_flatten];
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v5];
  }

  else
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __57__EDSenderPersistence__combineDictionary_withDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v7];
  }
}

- (id)_addressesGroupedByContactForAddresses:(id)a3 unmatchedAddresses:(id *)a4 otherAddressesByContact:(id *)a5
{
  v114[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *MEMORY[0x1E695C230];
  v114[0] = *MEMORY[0x1E695C240];
  v114[1] = v7;
  v114[2] = *MEMORY[0x1E695C208];
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
  v84 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v83 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
  if (v8)
  {
    v9 = *v103;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v103 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v102 + 1) + 8 * i);
        v12 = [v11 emailAddressValue];
        if (v12)
        {
          [v84 addObject:v12];
          v13 = [v12 simpleAddress];
          [v83 ef_addOptionalObject:v13];
        }

        else
        {
          v13 = [v11 stringValue];
          [v83 addObject:v13];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
    }

    while (v8);
  }

  v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v75 = [(EDSenderPersistence *)self contactStore];
  if ([obj count] < 0x3E9)
  {
    goto LABEL_38;
  }

  v101 = 0;
  v15 = [v75 unifiedContactCountWithError:&v101];
  v16 = v101;
  v79 = v15;
  if (!v15)
  {
    v36 = EDSenderLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [v16 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDSenderPersistence _addressesGroupedByContactForAddresses:unmatchedAddresses:otherAddressesByContact:];
    }

    goto LABEL_37;
  }

  v17 = EDSenderLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [obj count];
    *buf = 138412546;
    v110 = v15;
    v111 = 2048;
    v112 = v18;
    _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Contacts count: %@, addresses count: %lu", buf, 0x16u);
  }

  v19 = [obj count];
  if (v19 <= 5 * [v15 unsignedIntegerValue])
  {
LABEL_37:

LABEL_38:
    v81 = [obj sortedArrayUsingComparator:&__block_literal_global_150];
    goto LABEL_39;
  }

  v100 = v16;
  v76 = [v75 allContactEmailAddressesWithError:&v100];
  v72 = v100;

  if (v76)
  {
    v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v76];
    v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v21 = obj;
    v22 = [v21 countByEnumeratingWithState:&v96 objects:v108 count:16];
    if (v22)
    {
      v23 = *v97;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v97 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v96 + 1) + 8 * j);
          v26 = [v25 emailAddressValue];
          v27 = [v26 simpleAddress];
          v28 = v27;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = [v25 stringValue];
          }

          v30 = v29;

          if ([v20 containsObject:v30])
          {
            [v81 addObject:v25];
          }

          else
          {
            v31 = v25;
            v32 = [v31 emailAddressValue];
            v33 = v32;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = [v31 stringValue];
            }

            v35 = v34;

            [v70 addObject:v35];
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v96 objects:v108 count:16];
      }

      while (v22);
    }

    [v81 sortUsingComparator:&__block_literal_global_150];
  }

  else
  {
    v20 = EDSenderLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [v72 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDSenderPersistence _addressesGroupedByContactForAddresses:unmatchedAddresses:otherAddressesByContact:];
    }

    v81 = 0;
  }

  if (!v81)
  {
    goto LABEL_38;
  }

LABEL_39:
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v69 = v81;
  v77 = [v69 countByEnumeratingWithState:&v92 objects:v107 count:16];
  if (v77)
  {
    v73 = *v93;
    do
    {
      for (k = 0; k != v77; ++k)
      {
        if (*v93 != v73)
        {
          objc_enumerationMutation(v69);
        }

        v37 = *(*(&v92 + 1) + 8 * k);
        v38 = [v75 em_fetchContactForEmailAddress:v37 keysToFetch:v74 createIfNeeded:0];
        if (v38)
        {
          v39 = [v71 objectForKeyedSubscript:v38];
          if (v39)
          {
            v80 = v39;
            [v39 addObject:v37];
          }

          else
          {
            v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v37, 0}];
            [v71 setObject:v80 forKeyedSubscript:v38];
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v43 = [v38 emailAddresses];
          v44 = [v43 ef_compactMapSelector:sel_value];

          v45 = [v44 countByEnumeratingWithState:&v88 objects:v106 count:16];
          if (v45)
          {
            v46 = *v89;
            do
            {
              for (m = 0; m != v45; ++m)
              {
                if (*v89 != v46)
                {
                  objc_enumerationMutation(v44);
                }

                v48 = *(*(&v88 + 1) + 8 * m);
                v49 = [v48 emailAddressValue];
                v50 = [v49 displayName];

                if (v50)
                {
                  if ([v84 containsObject:v49])
                  {
                    goto LABEL_69;
                  }

LABEL_62:
                  if (v49)
                  {
                    v56 = v49;
                  }

                  else
                  {
                    v56 = v48;
                  }

                  v57 = v56;
                  v58 = [v14 objectForKeyedSubscript:v57];
                  v59 = v58;
                  if (v58)
                  {
                    [v58 ef_addObjectIfAbsent:v38];
                  }

                  else
                  {
                    v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v38, 0}];
                    [v14 setObject:v59 forKeyedSubscript:v57];
                  }

                  goto LABEL_69;
                }

                v51 = [v49 simpleAddress];
                v52 = v51;
                if (v51)
                {
                  v53 = v51;
                }

                else
                {
                  v53 = v48;
                }

                v54 = v53;

                v55 = [v83 containsObject:v54];
                if ((v55 & 1) == 0)
                {
                  goto LABEL_62;
                }

LABEL_69:
              }

              v45 = [v44 countByEnumeratingWithState:&v88 objects:v106 count:16];
            }

            while (v45);
          }
        }

        else
        {
          v40 = v37;
          v41 = [v40 emailAddressValue];
          v42 = v41;
          if (v41)
          {
            v80 = v41;
          }

          else
          {
            v80 = [v40 stringValue];
          }

          [v70 addObject:v80];
        }
      }

      v77 = [v69 countByEnumeratingWithState:&v92 objects:v107 count:16];
    }

    while (v77);
  }

  v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __105__EDSenderPersistence__addressesGroupedByContactForAddresses_unmatchedAddresses_otherAddressesByContact___block_invoke_154;
  v85[3] = &unk_1E82578D0;
  v61 = v74;
  v86 = v61;
  v62 = v60;
  v87 = v62;
  [v14 enumerateKeysAndObjectsUsingBlock:v85];
  if (a4)
  {
    v63 = v70;
    *a4 = v70;
  }

  if (a5)
  {
    v64 = v62;
    *a5 = v62;
  }

  v65 = *MEMORY[0x1E69E9840];

  return v71;
}

uint64_t __105__EDSenderPersistence__addressesGroupedByContactForAddresses_unmatchedAddresses_otherAddressesByContact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 emailAddressValue];
  v7 = [v6 simpleAddress];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v4 stringValue];
  }

  v10 = v9;

  v11 = [v5 emailAddressValue];
  v12 = [v11 simpleAddress];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v5 stringValue];
  }

  v15 = v14;

  v16 = [v10 compare:v15];
  return v16;
}

void __105__EDSenderPersistence__addressesGroupedByContactForAddresses_unmatchedAddresses_otherAddressesByContact___block_invoke_154(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 emailAddressValue];
  v7 = [v6 displayName];

  if (v7)
  {
    [MEMORY[0x1E695CD58] em_bestMatchForName:v7 fromContacts:v5 keysToCheck:*(a1 + 32)];
  }

  else
  {
    [v5 firstObject];
  }
  v8 = ;
  if (v8)
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      [v9 ef_addObjectIfAbsent:v11];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
      [*(a1 + 40) setObject:? forKeyedSubscript:?];
    }
  }
}

- (id)_addressIDsGroupedByContactsForAddressesByContact:(id)a3 withConnection:(id)a4 addressesByID:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = objc_alloc(MEMORY[0x1E699B948]);
  v11 = [MEMORY[0x1E699B8C8] allColumns];
  v12 = [v10 initWithResult:v11 table:@"addresses"];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __102__EDSenderPersistence__addressIDsGroupedByContactsForAddressesByContact_withConnection_addressesByID___block_invoke;
  v19[3] = &unk_1E82578F8;
  v20 = v12;
  v13 = v8;
  v21 = v13;
  v14 = v9;
  v22 = v14;
  v15 = v12;
  v16 = [v7 ef_mapValues:v19];
  if (a5)
  {
    v17 = v14;
    *a5 = v14;
  }

  return v16;
}

id __102__EDSenderPersistence__addressIDsGroupedByContactsForAddressesByContact_withConnection_addressesByID___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v23;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:{16, v23}];
  if (v4)
  {
    v25 = *v31;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = [MEMORY[0x1E699B8C8] column:@"address"];
        v8 = [v6 emailAddressValue];
        v9 = [v8 simpleAddress];
        v10 = v9;
        if (!v9)
        {
          v2 = [v6 stringValue];
          v10 = v2;
        }

        v11 = [v7 equalTo:v10];
        if (!v9)
        {
        }

        v12 = [v6 emailAddressValue];
        v13 = [v12 displayName];

        if (v13)
        {
          v14 = [MEMORY[0x1E699B8C8] column:@"comment"];
          v15 = [v14 equalTo:v13];

          v16 = objc_alloc(MEMORY[0x1E699B898]);
          v34[0] = v11;
          v34[1] = v15;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
          v18 = [v16 initWithExpressions:v17];
          [*(a1 + 32) setWhere:v18];
        }

        else
        {
          [*(a1 + 32) setWhere:v11];
        }

        v20 = *(a1 + 32);
        v19 = *(a1 + 40);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __102__EDSenderPersistence__addressIDsGroupedByContactsForAddressesByContact_withConnection_addressesByID___block_invoke_2;
        v27[3] = &unk_1E8252FE0;
        v27[4] = v6;
        v28 = v26;
        v29 = *(a1 + 48);
        [v19 executeSelectStatement:v20 withBlock:v27 error:0];
      }

      v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v4);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v26;
}

void __102__EDSenderPersistence__addressIDsGroupedByContactsForAddressesByContact_withConnection_addressesByID___block_invoke_2(id *a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];

  v5 = [v13 objectAtIndexedSubscript:2];
  v6 = [v5 stringValue];

  v7 = objc_alloc(MEMORY[0x1E699B248]);
  v8 = [a1[4] stringValue];
  v9 = [v7 initWithString:v8];

  [v9 setDisplayName:v6];
  [a1[5] addObject:v4];
  v10 = objc_alloc(MEMORY[0x1E699B240]);
  v11 = [v9 stringValue];
  v12 = [v10 initWithString:v11];

  [a1[6] setObject:v12 forKeyedSubscript:v4];
}

- (void)_persistenceDidAddMessages:(id)a3
{
  v4 = [a3 ef_filter:&__block_literal_global_164];
  if ([v4 count])
  {
    [(EDSenderPersistence *)self _moveAddressesFromSentMessagesToPrimaryForMessages:v4];
  }
}

BOOL __50__EDSenderPersistence__persistenceDidAddMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 type] == 4;

  return v3;
}

- (void)_moveAddressesFromSentMessagesToPrimaryForMessages:(id)a3
{
  v4 = a3;
  processingQueue = self->_processingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__EDSenderPersistence__moveAddressesFromSentMessagesToPrimaryForMessages___block_invoke;
  v7[3] = &unk_1E8250128;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(processingQueue, v7);
}

void __74__EDSenderPersistence__moveAddressesFromSentMessagesToPrimaryForMessages___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 to];
        [v2 addObjectsFromArray:v8];

        v9 = [v7 cc];
        [v2 addObjectsFromArray:v9];
      }

      v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v4);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__EDSenderPersistence__moveAddressesFromSentMessagesToPrimaryForMessages___block_invoke_2;
  v16[3] = &unk_1E8257920;
  v16[4] = *(a1 + 40);
  v10 = [v2 ef_filter:v16];
  if ([v10 count])
  {
    v11 = EDSenderLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 count];
      *buf = 134217984;
      v22 = v12;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Updating %ld addresses based on sent messages .", buf, 0xCu);
    }

    v13 = *(a1 + 40);
    v14 = [v10 allObjects];
    [v13 moveSenderWithEmailAddresses:v14 toBucket:200];
  }

  v15 = *MEMORY[0x1E69E9840];
}

BOOL __74__EDSenderPersistence__moveAddressesFromSentMessagesToPrimaryForMessages___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  [*(a1 + 32) bucketForSenderAddress:a2 bucket:&v3];
  return v3 == 0;
}

- (unint64_t)handleReconciliationMergeErrorForTable:(id)a3 columnName:(id)a4 statement:(id)a5 journalRowID:(id)a6 protectedRowID:(id)a7 connection:(id)a8 rowsUpdated:(unint64_t *)a9 error:(id *)a10
{
  v104 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v73 = a6;
  v72 = a7;
  v74 = a8;
  v70 = v14;
  v71 = v15;
  if (v14 == @"sender_addresses" && v15 == @"address")
  {
    v16 = EDSenderLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = @"sender_addresses";
      *&buf[12] = 2114;
      *&buf[14] = @"address";
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Merge Conflict: Handling merge conflict for %{public}@.%{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = *MEMORY[0x1E699A728];
    v103 = *MEMORY[0x1E699A728];
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x2020000000;
    v90 = 0;
    v18 = objc_alloc(MEMORY[0x1E699B948]);
    v19 = *MEMORY[0x1E699B768];
    v20 = [v18 initWithResultColumn:*MEMORY[0x1E699B768] table:@"senders"];
    [v20 addResultColumn:@"bucket"];
    [v20 addResultColumn:@"user_initiated"];
    v21 = [v20 join:@"sender_addresses" sourceColumn:v19 targetColumn:@"sender"];
    v22 = [MEMORY[0x1E699B8C8] table:@"sender_addresses" column:@"address"];
    v23 = [v22 equalTo:v73];
    [v20 setWhere:v23];

    v85 = 0;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __140__EDSenderPersistence_handleReconciliationMergeErrorForTable_columnName_statement_journalRowID_protectedRowID_connection_rowsUpdated_error___block_invoke;
    v86[3] = &unk_1E8257948;
    v86[4] = buf;
    v86[5] = &v91;
    v86[6] = &v87;
    [v74 executeSelectStatement:v20 withBlock:v86 error:&v85];
    v24 = v85;
    v25 = EDSenderLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(*&buf[8] + 24);
      v27 = v92[3];
      *v100 = 134218240;
      *&v100[4] = v26;
      *&v100[12] = 2048;
      *&v100[14] = v27;
      _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "Merge Conflict:Duplicate Sender: %ld : bucket %ld", v100, 0x16u);
    }

    *v100 = 0;
    *&v100[8] = v100;
    *&v100[16] = 0x2020000000;
    v101 = v17;
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v28 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:v19 table:@"senders"];
    [v28 addResultColumn:@"bucket"];
    [v28 addResultColumn:@"user_initiated"];
    v29 = [v28 join:@"sender_addresses" sourceColumn:v19 targetColumn:@"sender"];
    v30 = [MEMORY[0x1E699B8C8] table:@"sender_addresses" column:@"address"];
    v31 = [v30 equalTo:v72];
    [v28 setWhere:v31];

    v79 = v24;
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __140__EDSenderPersistence_handleReconciliationMergeErrorForTable_columnName_statement_journalRowID_protectedRowID_connection_rowsUpdated_error___block_invoke_166;
    v80[3] = &unk_1E8250468;
    v80[4] = v100;
    v80[5] = &v81;
    [v74 executeSelectStatement:v28 withBlock:v80 error:&v79];
    v32 = v79;

    v33 = EDSenderLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(*&v100[8] + 24);
      v35 = v82[3];
      *v97 = 134218240;
      *&v97[4] = v34;
      *&v97[12] = 2048;
      *&v97[14] = v35;
      _os_log_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_DEFAULT, "Merge Conflict: Existing Sender Sender %ld : Bucket %ld", v97, 0x16u);
    }

    if (*(*&buf[8] + 24) != v17 && *(*&v100[8] + 24) != v17)
    {
      v36 = v92[3];
      if (v36 && v36 != v82[3])
      {
        v40 = EDSenderLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v92[3];
          *v97 = 134217984;
          *&v97[4] = v41;
          _os_log_impl(&dword_1C61EF000, v40, OS_LOG_TYPE_DEFAULT, "Merge Conflict: Updating sender bucket to %ld", v97, 0xCu);
        }

        v42 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"senders"];
        v43 = [MEMORY[0x1E696AD98] numberWithInteger:v92[3]];
        [v42 setObject:v43 forKeyedSubscript:@"bucket"];

        v44 = [MEMORY[0x1E696AD98] numberWithBool:*(v88 + 24)];
        [v42 setObject:v44 forKeyedSubscript:@"user_initiated"];

        v45 = [MEMORY[0x1E699B8C8] column:v19];
        v46 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*&v100[8] + 24)];
        v47 = [v45 equalTo:v46];
        [v42 setWhereClause:v47];

        v78 = v32;
        [v74 executeUpdateStatement:v42 error:&v78];
        v37 = v78;
      }

      else
      {
        v37 = v32;
      }

      v48 = objc_alloc(MEMORY[0x1E699B898]);
      v67 = [MEMORY[0x1E699B8C8] column:@"address"];
      v49 = [v67 equalTo:v73];
      v99[0] = v49;
      v50 = [MEMORY[0x1E699B8C8] column:@"sender"];
      v51 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*&buf[8] + 24)];
      v52 = [v50 equalTo:v51];
      v99[1] = v52;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
      v69 = [v48 initWithExpressions:v53];

      v54 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"sender_addresses" where:v69];
      [v74 executeDeleteStatement:v54 error:0];
      if (a9)
      {
        *a9 = sqlite3_changes([v74 sqlDB]);
      }

      *v97 = 0;
      *&v97[8] = v97;
      *&v97[16] = 0x2020000000;
      v98 = 0;
      v68 = [v74 preparedStatementForQueryString:@"SELECT count(*) AS associations FROM sender_addresses WHERE sender = :duplicate_sender"];
      v95 = @":duplicate_sender";
      v55 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*&buf[8] + 24)];
      v96 = v55;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v76 = v37;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __140__EDSenderPersistence_handleReconciliationMergeErrorForTable_columnName_statement_journalRowID_protectedRowID_connection_rowsUpdated_error___block_invoke_174;
      v77[3] = &unk_1E8250418;
      v77[4] = v97;
      [v68 executeWithNamedBindings:v56 usingBlock:v77 error:&v76];
      v32 = v76;

      if (!*(*&v97[8] + 24))
      {
        v57 = EDSenderLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *v75 = 0;
          _os_log_impl(&dword_1C61EF000, v57, OS_LOG_TYPE_DEFAULT, "Merge Conflict: Deleting duplicate sender", v75, 2u);
        }

        v58 = objc_alloc(MEMORY[0x1E699B8E8]);
        v59 = [MEMORY[0x1E699B8C8] column:v19];
        v60 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*&buf[8] + 24)];
        v61 = [v59 equalTo:v60];
        v62 = [v58 initWithTable:@"sender_addresses" where:v61];

        [v74 executeDeleteStatement:v62 error:0];
      }

      _Block_object_dispose(v97, 8);
    }

    if (v32)
    {
      v63 = EDSenderLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [v32 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDSenderPersistence handleReconciliationMergeErrorForTable:columnName:statement:journalRowID:protectedRowID:connection:rowsUpdated:error:];
      }

      v39 = 2;
    }

    else
    {
      v63 = EDSenderLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *v97 = 0;
        _os_log_impl(&dword_1C61EF000, v63, OS_LOG_TYPE_DEFAULT, "Merge Conflict: Successfully resolved conflict", v97, 2u);
      }

      v39 = 0;
    }

    _Block_object_dispose(&v81, 8);
    _Block_object_dispose(v100, 8);

    _Block_object_dispose(&v87, 8);
    _Block_object_dispose(&v91, 8);
    _Block_object_dispose(buf, 8);
    if (a10 && v32)
    {
      v64 = v32;
      *a10 = v32;
    }
  }

  else
  {
    v38 = EDSenderLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [EDSenderPersistence handleReconciliationMergeErrorForTable:v14 columnName:v15 statement:v38 journalRowID:? protectedRowID:? connection:? rowsUpdated:? error:?];
    }

    v32 = 0;
    v39 = 2;
  }

  v65 = *MEMORY[0x1E69E9840];
  return v39;
}

void __140__EDSenderPersistence_handleReconciliationMergeErrorForTable_columnName_statement_journalRowID_protectedRowID_connection_rowsUpdated_error___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699B768]];
  *(*(a1[4] + 8) + 24) = [v3 integerValue];

  v4 = [v6 objectForKeyedSubscript:@"bucket"];
  *(*(a1[5] + 8) + 24) = [v4 integerValue];

  v5 = [v6 objectForKeyedSubscript:@"user_initiated"];
  *(*(a1[6] + 8) + 24) = [v5 BOOLValue];
}

void __140__EDSenderPersistence_handleReconciliationMergeErrorForTable_columnName_statement_journalRowID_protectedRowID_connection_rowsUpdated_error___block_invoke_166(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:*MEMORY[0x1E699B768]];
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];

  v4 = [v5 objectForKeyedSubscript:@"bucket"];
  *(*(*(a1 + 40) + 8) + 24) = [v4 integerValue];
}

void __140__EDSenderPersistence_handleReconciliationMergeErrorForTable_columnName_statement_journalRowID_protectedRowID_connection_rowsUpdated_error___block_invoke_174(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:@"associations"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  if (a3 == 2)
  {
    [(EDSenderPersistence *)self _updateSentToFilter:2];
  }
}

void __47__EDSenderPersistence_relevantSendersForSearch__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Error occurred when searching for relavant senders: %{public}@", v5);
}

void __68__EDSenderPersistence_moveSendersWithEmailAddresses_toCategoryType___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v5 = *(a2 + 32);
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2048;
  *(a3 + 14) = v5;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Attempting to move sender with invalid email address %@ to category %lu", a3, a4);
}

- (void)_moveSenderWithEmailAddresses:toBucket:sync:userInitiated:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to move addresses: %{public}@", v5);
}

- (void)userHasSentToSenderAddress:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  *v2 = 67109378;
  OUTLINED_FUNCTION_7_1(v3, v2);
  OUTLINED_FUNCTION_10_1(&dword_1C61EF000, v4, v5, "Returning default 'sentTo' result %u for address: %{public}@", v6);
}

- (void)userHasSentToSenderAddress:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  *v2 = 67109378;
  v2[1] = 1;
  OUTLINED_FUNCTION_7_1(v3, v2);
  OUTLINED_FUNCTION_10_1(&dword_1C61EF000, v4, v5, "Returning 'sentTo' result %u from bloom filter for address: %{public}@", v6);
}

- (void)userHasSentToSenderAddress:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  *v2 = 67109378;
  OUTLINED_FUNCTION_7_1(v3, v2);
  OUTLINED_FUNCTION_10_1(&dword_1C61EF000, v4, v5, "Returning 'sentTo' result %u from bloom filter for address: %{public}@", v6);
}

- (void)_addNewSenderWithAddressIDs:(uint64_t)a1 contactIdentifier:(NSObject *)a2 toBucket:connection:senderDatabaseID:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Unable to find sender for contact identifier: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_newlyBlockedAddressesForBlockedAddressDatabaseIDs:connection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to determine newly blocked addresses, error: %{public}@", v5);
}

- (void)_newlyUnblockedAddressesForBlockedAddressDatabaseIDs:connection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to determine newly unblocked addresses, error: %{public}@", v5);
}

- (void)_addressesGroupedByContactForAddresses:unmatchedAddresses:otherAddressesByContact:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to get contact email addresses: %{public}@", v5);
}

- (void)_addressesGroupedByContactForAddresses:unmatchedAddresses:otherAddressesByContact:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to get contacts count: %{public}@", v5);
}

- (void)handleReconciliationMergeErrorForTable:(os_log_t)log columnName:statement:journalRowID:protectedRowID:connection:rowsUpdated:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Merge Conflict: Unsupported merge conflict for %{public}@.%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)handleReconciliationMergeErrorForTable:columnName:statement:journalRowID:protectedRowID:connection:rowsUpdated:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Merge Conflict: Error occured during merge: %{public}@", v5);
}

@end