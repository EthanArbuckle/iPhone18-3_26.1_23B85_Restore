@interface EDBiomeBlackPearlLogger
+ (OS_os_log)log;
- (EDBiomeBlackPearlLogger)initWithStreamType:(unint64_t)a3;
- (id)_constructBiomeMessageGrainQuery:(id)a3 andStartTS:(id)a4 andEndTS:(id)a5 andBPEnabledAccounts:(id)a6;
- (id)_database;
- (id)_domainStringFrom:(int64_t)a3;
- (id)queryAllEventsForMessageID:(id)a3 andEventType:(id)a4;
- (id)queryMessageGrainEvents:(id)a3 startingAt:(id)a4 endingAt:(id)a5 andBPEnabledAccounts:(id)a6;
- (int)_biomeCategoryValueFrom:(int64_t)a3;
- (int)_biomeDomainValueFrom:(int64_t)a3;
- (int)_biomeFedStatsCategoryValueFrom:(unint64_t)a3;
- (int)_biomeMailboxValueFrom:(int64_t)a3;
- (int)_biomeRecategorizationScopeValueFrom:(int64_t)a3;
- (void)_donateToBiomeWithEvent:(id)a3;
- (void)deleteEventsForAccountIDs:(id)a3;
- (void)deleteEventsForMessages:(id)a3;
- (void)logRecategorizationEventForMessageID:(id)a3 messageDictionary:(id)a4;
- (void)logRecategorizationFedStatsForMessage:(id)a3;
- (void)logReceiveEventForMessageID:(id)a3 messageDictionary:(id)a4;
@end

@implementation EDBiomeBlackPearlLogger

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__EDBiomeBlackPearlLogger_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_13 != -1)
  {
    dispatch_once(&log_onceToken_13, block);
  }

  v2 = log_log_13;

  return v2;
}

void __30__EDBiomeBlackPearlLogger_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_13;
  log_log_13 = v1;
}

- (EDBiomeBlackPearlLogger)initWithStreamType:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = EDBiomeBlackPearlLogger;
  v4 = [(EDBiomeBlackPearlLogger *)&v13 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("em_biome_stream_blackpearl", v5);
    v7 = *(v4 + 1);
    *(v4 + 1) = v6;

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__EDBiomeBlackPearlLogger_initWithStreamType___block_invoke;
    v10[3] = &unk_1E8250A90;
    v12 = a3;
    v11 = v4;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v10);
    dispatch_async(*(v4 + 1), v8);
  }

  return v4;
}

void __46__EDBiomeBlackPearlLogger_initWithStreamType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_14;
      }

      v7 = BiomeLibrary();
      v3 = [v7 Mail];
      v4 = [v3 CategorizationAnalytics];
      v5 = [v4 Recategorize];
      [*(a1 + 32) setStream:v5];
    }

    else
    {
      v7 = BiomeLibrary();
      v3 = [v7 Mail];
      v4 = [v3 CategorizationAnalytics];
      v5 = [v4 Receive];
      [*(a1 + 32) setStream:v5];
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v7 = BiomeLibrary();
        v3 = [v7 Mail];
        v4 = [v3 Categorization];
        [*(a1 + 32) setStream:v4];
      }

      else
      {
        if (v2 != 4)
        {
          goto LABEL_14;
        }

        v7 = BiomeLibrary();
        v3 = [v7 Mail];
        v4 = [v3 Recategorization];
        [*(a1 + 32) setStream:v4];
      }

      goto LABEL_13;
    }

    v7 = BiomeLibrary();
    v3 = [v7 Mail];
    v4 = [v3 CategorizationAnalytics];
    v5 = [v4 Read];
    [*(a1 + 32) setStream:v5];
  }

LABEL_13:
LABEL_14:
  v8 = [*(a1 + 32) stream];
  v6 = [v8 source];
  [*(a1 + 32) setSource:v6];
}

- (id)_database
{
  if (_database_onceToken != -1)
  {
    [EDBiomeBlackPearlLogger _database];
  }

  v3 = _database_s_database;

  return v3;
}

void __36__EDBiomeBlackPearlLogger__database__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E698F2E0]);
  v1 = _database_s_database;
  _database_s_database = v0;
}

- (void)logReceiveEventForMessageID:(id)a3 messageDictionary:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v6 = a4;
  v7 = +[EDBiomeBlackPearlLogger log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v31;
    v34 = 2112;
    v35 = @"com.apple.mail.categorization.receive";
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "[Biome] Logging event for messageID: %@ and type: %@", buf, 0x16u);
  }

  v8 = [v6 objectForKeyedSubscript:@"predictedCategory"];
  v9 = -[EDBiomeBlackPearlLogger _biomeCategoryValueFrom:](self, "_biomeCategoryValueFrom:", [v8 integerValue]);

  v10 = [v6 objectForKeyedSubscript:@"currCategoryView"];
  v11 = -[EDBiomeBlackPearlLogger _biomeMailboxValueFrom:](self, "_biomeMailboxValueFrom:", [v10 integerValue]);

  v12 = [v6 objectForKeyedSubscript:@"receivingAccountDomain"];
  v13 = -[EDBiomeBlackPearlLogger _biomeDomainValueFrom:](self, "_biomeDomainValueFrom:", [v12 integerValue]);

  v14 = [v6 objectForKeyedSubscript:@"isMailAccountBlackPearlEnabled"];
  v15 = [v14 BOOLValue];

  v16 = [v6 objectForKeyedSubscript:@"isAllInboxesBlackPearlEnabled"];
  v17 = [v16 BOOLValue];

  v18 = objc_alloc(MEMORY[0x1E698ECD8]);
  v30 = [v6 objectForKeyedSubscript:@"accountId"];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:v13];
  v28 = [v6 objectForKeyedSubscript:@"metadataPrimaryKey"];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v20 = [v6 objectForKeyedSubscript:@"reasonCodes"];
  v21 = [v6 objectForKeyedSubscript:@"receivedTimestamp"];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:v17];
  v23 = [v6 objectForKeyedSubscript:@"isMailAccountPersonalAccount"];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:v15];
  v25 = [v18 initWithAccountId:v30 messageId:v31 senderId:0 receivingAccountDomain:v29 metadataPrimaryKey:v28 predictedCategory:v27 currCategoryView:v19 reasonCodes:v20 receiveTimestamp:v21 isAllInboxesCategoriesEnabled:v22 isMailAccountPersonalAccount:v23 isMailAccountCategoriesEnabled:v24];

  [(EDBiomeBlackPearlLogger *)self _donateToBiomeWithEvent:v25];
  v26 = *MEMORY[0x1E69E9840];
}

- (void)logRecategorizationEventForMessageID:(id)a3 messageDictionary:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDBiomeBlackPearlLogger log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = @"com.apple.mail.categorization.recategorize";
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "[Biome] Logging event for messageID: %@ and type: %@", &v21, 0x16u);
  }

  v9 = [v7 objectForKeyedSubscript:@"currCategoryView"];
  v10 = -[EDBiomeBlackPearlLogger _biomeMailboxValueFrom:](self, "_biomeMailboxValueFrom:", [v9 integerValue]);

  v11 = [MEMORY[0x1E695DF00] now];
  [v11 timeIntervalSince1970];
  v13 = v12;

  v14 = objc_alloc(MEMORY[0x1E698ECD0]);
  v15 = [v7 objectForKeyedSubscript:@"accountId"];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v17 = [v7 objectForKeyedSubscript:@"recategorizationBy"];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v19 = [v14 initWithAccountId:v15 messageId:v6 currCategoryView:v16 recategorizationBy:v17 recategorizeTimestamp:v18];

  [(EDBiomeBlackPearlLogger *)self _donateToBiomeWithEvent:v19];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)logRecategorizationFedStatsForMessage:(id)a3
{
  v15 = a3;
  v4 = [v15 objectForKeyedSubscript:@"currCategoryView"];
  v5 = -[EDBiomeBlackPearlLogger _biomeFedStatsCategoryValueFrom:](self, "_biomeFedStatsCategoryValueFrom:", [v4 unsignedIntValue]);

  v6 = [v15 objectForKeyedSubscript:@"prevCategoryView"];
  v7 = -[EDBiomeBlackPearlLogger _biomeFedStatsCategoryValueFrom:](self, "_biomeFedStatsCategoryValueFrom:", [v6 unsignedIntValue]);

  v8 = [v15 objectForKeyedSubscript:@"recategorizationBy"];
  v9 = -[EDBiomeBlackPearlLogger _biomeRecategorizationScopeValueFrom:](self, "_biomeRecategorizationScopeValueFrom:", [v8 integerValue]);

  v10 = objc_alloc(MEMORY[0x1E698ECE0]);
  v11 = [v15 objectForKeyedSubscript:@"senderId"];
  v12 = [v15 objectForKeyedSubscript:@"senderDomain"];
  v13 = [v15 objectForKeyedSubscript:@"language"];
  v14 = [v10 initWithCategory:v5 previous:v7 scope:v9 sender:v11 domain:v12 language:v13];

  [(EDBiomeBlackPearlLogger *)self _donateToBiomeWithEvent:v14];
}

- (id)queryAllEventsForMessageID:(id)a3 andEventType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [(EDBiomeBlackPearlLogger *)self queue];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __67__EDBiomeBlackPearlLogger_queryAllEventsForMessageID_andEventType___block_invoke;
  v18 = &unk_1E8250AB8;
  v10 = v7;
  v19 = v10;
  v11 = v6;
  v20 = v11;
  v21 = self;
  v12 = v8;
  v22 = v12;
  dispatch_sync(v9, &v15);

  v13 = [v12 copy];

  return v13;
}

void __67__EDBiomeBlackPearlLogger_queryAllEventsForMessageID_andEventType___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[EDBiomeBlackPearlLogger log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "[Biome] Start queryAllEventsForMessageID and eventType %@", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM Mail.Categorization where messageID = %@ and eventType = '%@'", *(a1 + 40), *(a1 + 32)];
  v5 = [*(a1 + 48) _database];
  v6 = [v5 executeQuery:{@"%@", v4}];

  while ([v6 next])
  {
    v7 = [v6 row];
    [*(a1 + 56) addObject:v7];
  }

  if (!v6 || ([v6 error], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, !v9))
  {
    v10 = +[EDBiomeBlackPearlLogger log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 error];
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "[Biome] Error for querying Biome db: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)queryMessageGrainEvents:(id)a3 startingAt:(id)a4 endingAt:(id)a5 andBPEnabledAccounts:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E695DF70] array];
  if ([v13 count])
  {
    v15 = [(EDBiomeBlackPearlLogger *)self queue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __92__EDBiomeBlackPearlLogger_queryMessageGrainEvents_startingAt_endingAt_andBPEnabledAccounts___block_invoke;
    v20[3] = &unk_1E8250AE0;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v25 = self;
    v16 = v14;
    v26 = v16;
    dispatch_sync(v15, v20);

    v17 = v16;
    v18 = v21;
  }

  else
  {
    v18 = +[EDBiomeBlackPearlLogger log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "[Biome] No accounts have BlackPearl enabled.", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

void __92__EDBiomeBlackPearlLogger_queryMessageGrainEvents_startingAt_endingAt_andBPEnabledAccounts___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = +[EDBiomeBlackPearlLogger log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) allObjects];
    v7 = [v6 componentsJoinedByString:{@", "}];
    *buf = 138413058;
    v18 = v4;
    v19 = 2112;
    v20 = v3;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "[Biome] Start queryMessageGrainEvents startTSL1 %@ startTS %@ endTS %@ BlackPearlEnabledAccount %@", buf, 0x2Au);
  }

  v8 = [*(a1 + 64) _constructBiomeMessageGrainQuery:*(a1 + 32) andStartTS:*(a1 + 40) andEndTS:*(a1 + 48) andBPEnabledAccounts:*(a1 + 56)];
  v9 = [*(a1 + 64) _database];
  v10 = [v9 executeQuery:{@"%@", v8}];

  while ([v10 next])
  {
    v11 = [v10 row];
    [*(a1 + 72) addObject:v11];
  }

  if (!v10 || ([v10 error], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, !v13))
  {
    v14 = +[EDBiomeBlackPearlLogger log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v10 error];
      *buf = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "[Biome] Error for querying Biome db: %@ query %@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)deleteEventsForMessages:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [v4 ef_map:&__block_literal_global_22];
  v7 = [v5 setWithArray:v6];

  v8 = +[EDBiomeBlackPearlLogger log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "[Biome] Move to Trash / Permanent delete: message ids %{public}@ ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_23;
  aBlock[3] = &unk_1E8250B08;
  v9 = v7;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_2;
  v15[3] = &unk_1E8250B58;
  v18 = v24;
  p_buf = &buf;
  v20 = v23;
  v16 = v9;
  v17 = v10;
  v12 = v9;
  v13 = v10;
  dispatch_async(queue, v15);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&buf, 8);

  v14 = *MEMORY[0x1E69E9840];
}

id __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "globalMessageID")}];
  v4 = [v3 stringValue];

  return v4;
}

uint64_t __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_23(uint64_t a1, uint64_t a2, void *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    ++*a3;
  }

  return result;
}

void __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = BiomeLibrary();
  v3 = [v2 Mail];
  v4 = [v3 CategorizationAnalytics];
  v5 = [v4 Receive];
  v6 = [v5 pruner];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_3;
  v38[3] = &unk_1E8250B30;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v39 = v7;
  v40 = v8;
  [v6 deleteWithPolicy:@"message deletion" eventsPassingTest:v38];

  v9 = BiomeLibrary();
  v10 = [v9 Mail];
  v11 = [v10 CategorizationAnalytics];
  v12 = [v11 Read];
  v13 = [v12 pruner];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_4;
  v35[3] = &unk_1E8250B30;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v36 = v14;
  v37 = v15;
  [v13 deleteWithPolicy:@"message deletion" eventsPassingTest:v35];

  v16 = BiomeLibrary();
  v17 = [v16 Mail];
  v18 = [v17 CategorizationAnalytics];
  v19 = [v18 Recategorize];
  v20 = [v19 pruner];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_5;
  v32 = &unk_1E8250B30;
  v21 = *(a1 + 40);
  v22 = *(a1 + 64);
  v33 = v21;
  v34 = v22;
  [v20 deleteWithPolicy:@"message deletion" eventsPassingTest:&v29];

  v23 = [EDBiomeBlackPearlLogger log:v29];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(*(*(a1 + 48) + 8) + 24);
    v25 = *(*(*(a1 + 56) + 8) + 24);
    v26 = *(*(*(a1 + 64) + 8) + 24);
    v27 = *(a1 + 32);
    *buf = 134218754;
    v42 = v24;
    v43 = 2048;
    v44 = v25;
    v45 = 2048;
    v46 = v26;
    v47 = 2114;
    v48 = v27;
    _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "[Biome] Moved to Trash / Permanent delete: receive %lu read %lu recategorize %lu message ids %{public}@", buf, 0x2Au);
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v5 = [a2 eventBody];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "messageId")}];
  v7 = [v6 stringValue];
  v8 = (*(v3 + 16))(v3, v7, *(*(a1 + 40) + 8) + 24);

  return v8;
}

uint64_t __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v5 = [a2 eventBody];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "messageId")}];
  v7 = [v6 stringValue];
  v8 = (*(v3 + 16))(v3, v7, *(*(a1 + 40) + 8) + 24);

  return v8;
}

uint64_t __51__EDBiomeBlackPearlLogger_deleteEventsForMessages___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v5 = [a2 eventBody];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "messageId")}];
  v7 = [v6 stringValue];
  v8 = (*(v3 + 16))(v3, v7, *(*(a1 + 40) + 8) + 24);

  return v8;
}

- (void)deleteEventsForAccountIDs:(id)a3
{
  v4 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke;
  aBlock[3] = &unk_1E8250B08;
  v5 = v4;
  v17 = v5;
  v6 = _Block_copy(aBlock);
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke_2;
  v10[3] = &unk_1E8250B58;
  v13 = v19;
  v14 = v20;
  v15 = v18;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(queue, v10);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);
}

uint64_t __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    ++*a3;
  }

  return result;
}

void __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = BiomeLibrary();
  v3 = [v2 Mail];
  v4 = [v3 CategorizationAnalytics];
  v5 = [v4 Receive];
  v6 = [v5 pruner];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke_3;
  v38[3] = &unk_1E8250B30;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v39 = v7;
  v40 = v8;
  [v6 deleteWithPolicy:@"account deletion" eventsPassingTest:v38];

  v9 = BiomeLibrary();
  v10 = [v9 Mail];
  v11 = [v10 CategorizationAnalytics];
  v12 = [v11 Read];
  v13 = [v12 pruner];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke_4;
  v35[3] = &unk_1E8250B30;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v36 = v14;
  v37 = v15;
  [v13 deleteWithPolicy:@"account deletion" eventsPassingTest:v35];

  v16 = BiomeLibrary();
  v17 = [v16 Mail];
  v18 = [v17 CategorizationAnalytics];
  v19 = [v18 Recategorize];
  v20 = [v19 pruner];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke_5;
  v32 = &unk_1E8250B30;
  v21 = *(a1 + 40);
  v22 = *(a1 + 64);
  v33 = v21;
  v34 = v22;
  [v20 deleteWithPolicy:@"account deletion" eventsPassingTest:&v29];

  v23 = [EDBiomeBlackPearlLogger log:v29];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v25 = *(*(*(a1 + 48) + 8) + 24);
    v26 = *(*(*(a1 + 56) + 8) + 24);
    v27 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 138413058;
    v42 = v24;
    v43 = 2048;
    v44 = v25;
    v45 = 2048;
    v46 = v26;
    v47 = 2048;
    v48 = v27;
    _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "[Biome] delete Account %@ : receive %lu   read %lu recategorize %lu", buf, 0x2Au);
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 eventBody];
  v5 = [v4 accountId];
  v6 = (*(v3 + 16))(v3, v5, *(*(a1 + 40) + 8) + 24);

  return v6;
}

uint64_t __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 eventBody];
  v5 = [v4 accountId];
  v6 = (*(v3 + 16))(v3, v5, *(*(a1 + 40) + 8) + 24);

  return v6;
}

uint64_t __53__EDBiomeBlackPearlLogger_deleteEventsForAccountIDs___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 eventBody];
  v5 = [v4 accountId];
  v6 = (*(v3 + 16))(v3, v5, *(*(a1 + 40) + 8) + 24);

  return v6;
}

- (void)_donateToBiomeWithEvent:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__EDBiomeBlackPearlLogger__donateToBiomeWithEvent___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7);
  dispatch_async(self->_queue, v6);
}

- (int)_biomeCategoryValueFrom:(int64_t)a3
{
  if (a3 >= 0xF)
  {
    return 13;
  }

  else
  {
    return a3;
  }
}

- (int)_biomeMailboxValueFrom:(int64_t)a3
{
  if ((a3 - 1) < 6)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (int)_biomeDomainValueFrom:(int64_t)a3
{
  if (a3 >= 8)
  {
    return 7;
  }

  else
  {
    return a3;
  }
}

- (int)_biomeFedStatsCategoryValueFrom:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C6471D00[a3];
  }
}

- (int)_biomeRecategorizationScopeValueFrom:(int64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

- (id)_domainStringFrom:(int64_t)a3
{
  if (a3 > 6)
  {
    v3 = kUserEmailDomainOther;
  }

  else
  {
    v3 = off_1E8250B78[a3];
  }

  return *v3;
}

- (id)_constructBiomeMessageGrainQuery:(id)a3 andStartTS:(id)a4 andEndTS:(id)a5 andBPEnabledAccounts:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [v9 unsignedLongLongValue];
  v15 = [v10 unsignedLongLongValue];
  v16 = [v11 unsignedLongLongValue];
  v17 = [v12 allObjects];
  v18 = [v17 componentsJoinedByString:{@", "}];
  v19 = [v13 stringWithFormat:&cfstr_WithReceiveRow, v14, v15, v16, v18];

  return v19;
}

@end