@interface EDRemoteContentPersistence
+ (id)_remoteContentLinksTableSchemaWithName:(id)a3;
+ (id)protectedTablesAndForeignKeysToResolve:(id *)a3;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
- (BOOL)_addRemoteContentLinks:(id)a3 withDate:(id)a4 toTable:(id)a5 withConnection:(id)a6 newLinks:(id *)a7;
- (BOOL)addRemoteContentLinks:(id)a3 newLinks:(id *)a4;
- (BOOL)pruneAllRemoteContentLinksWithMinimumCount:(unint64_t)a3;
- (BOOL)updateRequestCountForRemoteContentLinks:(id)a3 updateLastSeen:(BOOL)a4;
- (EDRemoteContentPersistence)initWithDatabase:(id)a3 useAdditionalTable:(BOOL)a4;
- (id)_getRemoteContentURLInfoForTable:(id)a3 orderedBy:(int64_t)a4 inReverseOrder:(BOOL)a5 limit:(int64_t)a6 connection:(id)a7 error:(id *)a8;
- (id)getRemoteContentURLInfoOrderedBy:(int64_t)a3 inReverseOrder:(BOOL)a4 limit:(int64_t)a5 error:(id *)a6;
- (id)remoteContentLinksBelowCount:(unint64_t)a3 limit:(unint64_t)a4;
- (int64_t)_rowCountForTable:(id)a3;
- (unint64_t)_currentRowCount;
- (unint64_t)_protectedRowCount;
- (unint64_t)countOfLinksLastSeenSince:(id)a3;
- (unint64_t)countOfUnrequestedLinks;
- (void)_decrementCurrentRowCountBy:(unint64_t)a3;
- (void)_decrementProtectedRowCountBy:(unint64_t)a3;
- (void)_incrementCurrentRowCountBy:(unint64_t)a3;
- (void)_incrementProtectedRowCountBy:(unint64_t)a3;
- (void)_initializeProtectedRowCount;
- (void)_refillFromAdditionalTable;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)dealloc;
- (void)test_tearDown;
@end

@implementation EDRemoteContentPersistence

- (void)_refillFromAdditionalTable
{
  if ([(EDRemoteContentPersistence *)self useAdditionalTable])
  {
    v3 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.email.EDRemoteContentPersistence.refillFromAdditionalTable"];
    v4 = [(EDRemoteContentPersistence *)self database];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence _refillFromAdditionalTable]"];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__EDRemoteContentPersistence__refillFromAdditionalTable__block_invoke;
    v6[3] = &unk_1E8251CB8;
    v6[4] = self;
    [v4 __performWriteWithCaller:v5 usingBlock:v6];

    [v3 invalidate];
  }
}

uint64_t __56__EDRemoteContentPersistence__refillFromAdditionalTable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 protectedDatabaseAttached] & 1) != 0 && (v4 = objc_msgSend(*(a1 + 32), "maximumRemoteContentLinks"), v5 = objc_msgSend(*(a1 + 32), "_currentRowCount"), v6 = v4 - v5, v4 > v5))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT OR IGNORE INTO %@ SELECT * FROM %@ ORDER BY ROWID ASC LIMIT %lu", @"remote_content_links", @"additional_remote_content_links", v6];
    v8 = [v3 executeStatementString:v7 errorMessage:@"Refilling remote_content_links from additional table"];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"additional_remote_content_links"];
      v10 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
      [v9 orderBy:v10 ascending:1];

      [v9 setLimit:v6];
      v12 = 0;
      if ([v3 executeDeleteStatement:v9 rowsChanged:&v12])
      {
        [*(a1 + 32) _decrementProtectedRowCountBy:v12];
      }

      [*(a1 + 32) _initializeCurrentRowCount];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void ___ef_log_EDRemoteContentPersistence_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDRemoteContentPersistence");
  v1 = _ef_log_EDRemoteContentPersistence_log;
  _ef_log_EDRemoteContentPersistence_log = v0;
}

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    *a3 = MEMORY[0x1E695E0F0];
  }

  if (a4)
  {
    *a4 = v4;
  }

  v5 = [a1 _remoteContentLinksTableSchemaWithName:@"remote_content_links"];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)protectedTablesAndForeignKeysToResolve:(id *)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = MEMORY[0x1E695E0F0];
  }

  v3 = [a1 _remoteContentLinksTableSchemaWithName:@"additional_remote_content_links"];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_remoteContentLinksTableSchemaWithName:(id)a3
{
  v19[4] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v3 = objc_alloc(MEMORY[0x1E699B958]);
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"url" collation:1 nullable:0];
  v19[0] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"requests" nullable:0 defaultValue:&unk_1F45E6940];
  v19[1] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_seen_date" nullable:0];
  v19[2] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_request_date" nullable:0 defaultValue:&unk_1F45E6940];
  v19[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v9 = [v3 initWithName:v15 rowIDType:1 columns:v8];

  v18 = @"url";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [v9 addUniquenessConstraintForColumns:v10 conflictResolution:1];

  v17[0] = @"requests";
  v17[1] = @"last_request_date";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  [v9 addIndexForColumns:v11];

  v16[0] = @"requests";
  v16[1] = @"last_seen_date";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v9 addIndexForColumns:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (EDRemoteContentPersistence)initWithDatabase:(id)a3 useAdditionalTable:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v28.receiver = self;
  v28.super_class = EDRemoteContentPersistence;
  v8 = [(EDRemoteContentPersistence *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_database, a3);
    v9->_useAdditionalTable = v4;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.email.EDRemoteContentPersistence.contentProtectionQueue", v10);
    contentProtectionQueue = v9->_contentProtectionQueue;
    v9->_contentProtectionQueue = v11;

    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *&v9->_currentRowCount = vnegq_f64(v13);
    *&v9->_maximumRemoteContentLinks = xmmword_1C6471F10;
    v14 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:@"com.apple.email.EDRemoteContentPersistence.analyticsScheduler"];
    analyticsScheduler = v9->_analyticsScheduler;
    v9->_analyticsScheduler = v14;

    [(NSBackgroundActivityScheduler *)v9->_analyticsScheduler setQualityOfService:9];
    [(NSBackgroundActivityScheduler *)v9->_analyticsScheduler setInterval:86400.0];
    [(NSBackgroundActivityScheduler *)v9->_analyticsScheduler setRepeats:1];
    if (v4)
    {
      v16 = xpc_dictionary_create(0, 0, 0);
      v17 = _os_feature_enabled_impl();
      v18 = v16;
      v19 = v18;
      v20 = MEMORY[0x1E69E9DA8];
      if (!v17)
      {
        v20 = MEMORY[0x1E69E9D98];
      }

      xpc_dictionary_set_BOOL(v18, *v20, 1);

      [(NSBackgroundActivityScheduler *)v9->_analyticsScheduler _setAdditionalXPCActivityProperties:v19];
    }

    objc_initWeak(&location, v9);
    v21 = v9->_analyticsScheduler;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__EDRemoteContentPersistence_initWithDatabase_useAdditionalTable___block_invoke;
    v24[3] = &unk_1E8256628;
    objc_copyWeak(&v25, &location);
    v26 = v4;
    [(NSBackgroundActivityScheduler *)v21 scheduleWithBlock:v24];
    v22 = [(EDRemoteContentPersistence *)v9 contentProtectionQueue];
    EFRegisterContentProtectionObserver();

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __66__EDRemoteContentPersistence_initWithDatabase_useAdditionalTable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained database];
  v6 = [v5 setupIsComplete];

  if (v6)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = [WeakRetained database];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence initWithDatabase:useAdditionalTable:]_block_invoke"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__EDRemoteContentPersistence_initWithDatabase_useAdditionalTable___block_invoke_2;
    v11[3] = &unk_1E82565D8;
    v11[4] = &v21;
    v11[5] = &v17;
    v12 = *(a1 + 40);
    v11[6] = &v13;
    [v7 __performReadWithCaller:v8 usingBlock:v11];

    v9 = v22[3] + v14[3] + v18[3];
    v10 = *(a1 + 40);
    AnalyticsSendEventLazy();
    v3[2](v3, 1);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v3[2](v3, 1);
  }
}

uint64_t __66__EDRemoteContentPersistence_initWithDatabase_useAdditionalTable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"requests" table:@"remote_content_links"];
  v5 = [MEMORY[0x1E699B890] count:0];
  [v4 addResult:v5 alias:@"count"];

  [v4 groupByColumn:@"requests"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__EDRemoteContentPersistence_initWithDatabase_useAdditionalTable___block_invoke_3;
  v11[3] = &unk_1E8250468;
  v12 = *(a1 + 32);
  [v3 executeSelectStatement:v4 withBlock:v11 error:0];
  if (*(a1 + 56) == 1)
  {
    v6 = objc_alloc(MEMORY[0x1E699B948]);
    v7 = [MEMORY[0x1E699B890] count:0];
    v8 = [v6 initWithResult:v7 table:@"additional_remote_content_links"];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__EDRemoteContentPersistence_initWithDatabase_useAdditionalTable___block_invoke_4;
    v10[3] = &unk_1E8250418;
    v10[4] = *(a1 + 48);
    [v3 executeSelectStatement:v8 withBlock:v10 error:0];
  }

  return 1;
}

void __66__EDRemoteContentPersistence_initWithDatabase_useAdditionalTable___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"requests"];
  v4 = [v3 numberValue];
  v5 = [v4 unsignedIntegerValue];

  v6 = [v10 objectForKeyedSubscript:@"count"];
  v7 = [v6 numberValue];
  v8 = [v7 unsignedIntegerValue];

  v9 = 32;
  if (!v5)
  {
    v9 = 40;
  }

  *(*(*(a1 + v9) + 8) + 24) += v8;
}

void __66__EDRemoteContentPersistence_initWithDatabase_useAdditionalTable___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v4 unsignedIntegerValue];
}

id __66__EDRemoteContentPersistence_initWithDatabase_useAdditionalTable___block_invoke_5(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v16[0] = @"totalCount";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v17 = v15;
  v16[1] = @"requestedCount";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 32) + 8) + 24)];
  v16[2] = @"percentRequested";
  v2 = *(a1 + 48);
  v14 = v18;
  if (v2)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * *(*(*(a1 + 32) + 8) + 24) / v2];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v13 = ;
  v19 = v13;
  v16[3] = @"unrequestedCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v20 = v3;
  v16[4] = @"percentUnrequested";
  v4 = *(a1 + 48);
  if (v4)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * *(a1 + 56) / v4];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v5 = ;
  v21 = v5;
  v16[5] = @"protectedCount";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
  v22 = v6;
  v16[6] = @"percentProtected";
  v7 = *(a1 + 48);
  if (v7)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * *(*(*(a1 + 40) + 8) + 24) / v7];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v8 = ;
  v23 = v8;
  v16[7] = @"hasProtectedLinks";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v24 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:v16 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)dealloc
{
  EFUnregisterContentProtectionObserver();
  v3.receiver = self;
  v3.super_class = EDRemoteContentPersistence;
  [(EDRemoteContentPersistence *)&v3 dealloc];
}

- (unint64_t)_currentRowCount
{
  currentRowCount = self->_currentRowCount;
  if (currentRowCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(EDRemoteContentPersistence *)self _initializeCurrentRowCount];
    currentRowCount = self->_currentRowCount;
  }

  if (currentRowCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return currentRowCount;
  }
}

- (unint64_t)_protectedRowCount
{
  protectedRowCount = self->_protectedRowCount;
  if (protectedRowCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(EDRemoteContentPersistence *)self _initializeProtectedRowCount];
    protectedRowCount = self->_protectedRowCount;
  }

  if (protectedRowCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return protectedRowCount;
  }
}

- (void)_incrementCurrentRowCountBy:(unint64_t)a3
{
  currentRowCount = self->_currentRowCount;
  if (currentRowCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(EDRemoteContentPersistence *)self _initializeCurrentRowCount];
  }

  else
  {
    self->_currentRowCount = currentRowCount + a3;
  }
}

- (void)_decrementCurrentRowCountBy:(unint64_t)a3
{
  p_currentRowCount = &self->_currentRowCount;
  currentRowCount = self->_currentRowCount;
  if (currentRowCount == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(EDRemoteContentPersistence *)self _initializeCurrentRowCount];
  }

  else
  {
    v5 = currentRowCount - a3;
    *p_currentRowCount = v5;
    if (v5 < 0)
    {
      v6 = _ef_log_EDRemoteContentPersistence();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(EDRemoteContentPersistence *)p_currentRowCount _decrementCurrentRowCountBy:v6];
      }

      *p_currentRowCount = 0;
    }
  }
}

- (void)_incrementProtectedRowCountBy:(unint64_t)a3
{
  protectedRowCount = self->_protectedRowCount;
  if (protectedRowCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(EDRemoteContentPersistence *)self _initializeProtectedRowCount];
  }

  else
  {
    self->_protectedRowCount = protectedRowCount + a3;
  }
}

- (void)_decrementProtectedRowCountBy:(unint64_t)a3
{
  protectedRowCount = self->_protectedRowCount;
  if (protectedRowCount == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(EDRemoteContentPersistence *)self _initializeProtectedRowCount];
  }

  else
  {
    v5 = protectedRowCount - a3;
    self->_protectedRowCount = v5;
    if (v5 < 0)
    {
      v6 = _ef_log_EDRemoteContentPersistence();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(EDRemoteContentPersistence *)self _decrementProtectedRowCountBy:v6];
      }

      self->_protectedRowCount = 0;
    }
  }
}

- (void)_initializeProtectedRowCount
{
  if ([(EDRemoteContentPersistence *)self useAdditionalTable])
  {
    self->_protectedRowCount = [(EDRemoteContentPersistence *)self _rowCountForTable:@"additional_remote_content_links"];
  }
}

- (int64_t)_rowCountForTable:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(EDRemoteContentPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence _rowCountForTable:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__EDRemoteContentPersistence__rowCountForTable___block_invoke;
  v10[3] = &unk_1E8250350;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v5 __performReadWithCaller:v6 usingBlock:v10];

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __48__EDRemoteContentPersistence__rowCountForTable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B890] count:0];
  v6 = [v4 initWithResult:v5 table:*(a1 + 32)];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__EDRemoteContentPersistence__rowCountForTable___block_invoke_2;
  v8[3] = &unk_1E8250418;
  v8[4] = *(a1 + 40);
  [v3 executeSelectStatement:v6 withBlock:v8 error:0];

  return 1;
}

void __48__EDRemoteContentPersistence__rowCountForTable___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 integerValue];

  *a4 = 1;
}

- (BOOL)addRemoteContentLinks:(id)a3 newLinks:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__36;
  v21 = __Block_byref_object_dispose__36;
  v22 = 0;
  v7 = [(EDRemoteContentPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence addRemoteContentLinks:newLinks:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__EDRemoteContentPersistence_addRemoteContentLinks_newLinks___block_invoke;
  v12[3] = &unk_1E8256650;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v14 = &v23;
  v15 = &v17;
  v16 = a4 != 0;
  [v7 __performWriteWithCaller:v8 usingBlock:v12];

  if (a4)
  {
    *a4 = v18[5];
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

uint64_t __61__EDRemoteContentPersistence_addRemoteContentLinks_newLinks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
  if (![*(a1 + 32) useAdditionalTable])
  {
LABEL_5:
    v10 = *(a1 + 40);
    v11 = 0;
    goto LABEL_7;
  }

  v5 = [*(a1 + 32) _currentRowCount];
  v6 = [*(a1 + 32) maximumRemoteContentLinks];
  v7 = *(a1 + 40);
  if (v5 < v6)
  {
    v8 = [v7 count];
    if (v8 + v5 > [*(a1 + 32) maximumRemoteContentLinks])
    {
      v9 = [*(a1 + 32) maximumRemoteContentLinks] - v5;
      v10 = [*(a1 + 40) subarrayWithRange:{0, v9}];
      v11 = [*(a1 + 40) subarrayWithRange:{v9, objc_msgSend(*(a1 + 40), "count") - v9}];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v11 = v7;
  v10 = 0;
LABEL_7:
  if ([v10 count])
  {
    v12 = *(a1 + 32);
    v13 = *(*(a1 + 56) + 8);
    obj = *(v13 + 40);
    v14 = [v12 _addRemoteContentLinks:v10 withDate:v4 toTable:@"remote_content_links" withConnection:v3 newLinks:&obj];
    objc_storeStrong((v13 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v14;
    [*(a1 + 32) _incrementCurrentRowCountBy:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];
  }

  if ([v11 count])
  {
    v15 = *(a1 + 32);
    v26 = 0;
    v16 = [v15 _addRemoteContentLinks:v11 withDate:v4 toTable:@"additional_remote_content_links" withConnection:v3 newLinks:&v26];
    v17 = v26;
    *(*(*(a1 + 48) + 8) + 24) = v16;
    [*(a1 + 32) _incrementProtectedRowCountBy:{objc_msgSend(v17, "count")}];
    if (*(a1 + 64) == 1)
    {
      v18 = *(*(a1 + 56) + 8);
      v19 = *(v18 + 40);
      if (v19)
      {
        v20 = [v19 arrayByAddingObjectsFromArray:v17];
        v21 = *(*(a1 + 56) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;
      }

      else
      {
        v23 = v17;
        v22 = *(v18 + 40);
        *(v18 + 40) = v23;
      }
    }
  }

  v24 = *(*(*(a1 + 48) + 8) + 24);

  return v24;
}

- (BOOL)_addRemoteContentLinks:(id)a3 withDate:(id)a4 toTable:(id)a5 withConnection:(id)a6 newLinks:(id *)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v30 = a4;
  v12 = a5;
  v13 = a6;
  v27 = a7;
  if (a7)
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v29 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v14)
  {
    v15 = *v32;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = objc_alloc(MEMORY[0x1E699B968]);
        v35 = @"url";
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
        v20 = [v18 initWithTable:v12 conflictTarget:v19];

        v21 = [v17 absoluteString];
        [v20 setObject:v21 forKeyedSubscript:@"url"];

        [v20 setObject:v30 forKeyedSubscript:@"last_seen_date"];
        [v13 clearLastInsertedDatabaseID];
        if (([v13 executeUpsertStatement:v20 error:0] & 1) == 0)
        {

          v22 = 0;
          goto LABEL_16;
        }

        if ([v13 lastInsertedDatabaseID])
        {
          [v29 addObject:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v22 = 1;
LABEL_16:

  v23 = v29;
  if (v27)
  {
    v24 = v29;
    v23 = v29;
    *v27 = v29;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)updateRequestCountForRemoteContentLinks:(id)a3 updateLastSeen:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v7 = [(EDRemoteContentPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence updateRequestCountForRemoteContentLinks:updateLastSeen:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__EDRemoteContentPersistence_updateRequestCountForRemoteContentLinks_updateLastSeen___block_invoke;
  v11[3] = &unk_1E8256678;
  v9 = v6;
  v14 = a4;
  v12 = v9;
  v13 = &v15;
  [v7 __performWriteWithCaller:v8 usingBlock:v11];

  LOBYTE(v6) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v6;
}

uint64_t __85__EDRemoteContentPersistence_updateRequestCountForRemoteContentLinks_updateLastSeen___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = *v20;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v20 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v19 + 1) + 8 * v5);
      v7 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"remote_content_links"];
      [v7 setObject:v18 forKeyedSubscript:@"last_request_date"];
      v8 = [MEMORY[0x1E699B8C8] column:@"requests"];
      v9 = [v8 plus:&unk_1F45E6958];
      [v7 setObject:v9 forKeyedSubscript:@"requests"];

      if (*(a1 + 48) == 1)
      {
        [v7 setObject:v18 forKeyedSubscript:@"last_seen_date"];
      }

      v10 = [MEMORY[0x1E699B8C8] column:@"url"];
      v11 = [v6 absoluteString];
      v12 = [v10 equalTo:v11];
      [v7 setWhereClause:v12];

      *(*(*(a1 + 40) + 8) + 24) = [v17 executeUpdateStatement:v7 error:0];
      LOBYTE(v11) = *(*(*(a1 + 40) + 8) + 24);

      if ((v11 & 1) == 0)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *(*(*(a1 + 40) + 8) + 24);
  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (id)remoteContentLinksBelowCount:(unint64_t)a3 limit:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(EDRemoteContentPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence remoteContentLinksBelowCount:limit:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__EDRemoteContentPersistence_remoteContentLinksBelowCount_limit___block_invoke;
  v12[3] = &unk_1E8254A60;
  v14 = a3;
  v15 = a4;
  v10 = v7;
  v13 = v10;
  [v8 __performReadWithCaller:v9 usingBlock:v12];

  return v10;
}

uint64_t __65__EDRemoteContentPersistence_remoteContentLinksBelowCount_limit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"url" table:@"remote_content_links"];
  v5 = [MEMORY[0x1E699B8C8] column:@"requests"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v7 = [v5 lessThan:v6];
  [v4 setWhere:v7];

  if (*(a1 + 48))
  {
    [v4 setLimit:?];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__EDRemoteContentPersistence_remoteContentLinksBelowCount_limit___block_invoke_2;
  v10[3] = &unk_1E8250300;
  v11 = *(a1 + 32);
  v8 = [v3 executeSelectStatement:v4 withBlock:v10 error:0];

  return v8;
}

void __65__EDRemoteContentPersistence_remoteContentLinksBelowCount_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 stringValue];

  v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  else
  {
    v7 = _ef_log_EDRemoteContentPersistence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v9 = v8;
      }

      else
      {
        v9 = [MEMORY[0x1E699B858] fullyRedactedStringForString:v8];
      }

      __65__EDRemoteContentPersistence_remoteContentLinksBelowCount_limit___block_invoke_2_cold_1(v8, v9, v11, v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)countOfLinksLastSeenSince:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = [(EDRemoteContentPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence countOfLinksLastSeenSince:]"];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __56__EDRemoteContentPersistence_countOfLinksLastSeenSince___block_invoke;
  v14 = &unk_1E8250350;
  v7 = v4;
  v15 = v7;
  v16 = &v17;
  [v5 __performReadWithCaller:v6 usingBlock:&v11];

  v8 = [(EDRemoteContentPersistence *)self _protectedRowCount:v11];
  v9 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v9 + v8;
}

uint64_t __56__EDRemoteContentPersistence_countOfLinksLastSeenSince___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B890] count:0];
  v6 = [v4 initWithResult:v5 table:@"remote_content_links"];

  v7 = [MEMORY[0x1E699B8C8] column:@"last_seen_date"];
  v8 = [v7 greaterThan:*(a1 + 32)];
  [v6 setWhere:v8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__EDRemoteContentPersistence_countOfLinksLastSeenSince___block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  [v3 executeSelectStatement:v6 withBlock:v10 error:0];

  return 1;
}

void __56__EDRemoteContentPersistence_countOfLinksLastSeenSince___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 integerValue];

  *a4 = 1;
}

- (unint64_t)countOfUnrequestedLinks
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(EDRemoteContentPersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence countOfUnrequestedLinks]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__EDRemoteContentPersistence_countOfUnrequestedLinks__block_invoke;
  v8[3] = &unk_1E8251DA0;
  v8[4] = &v9;
  [v3 __performReadWithCaller:v4 usingBlock:v8];

  v5 = [(EDRemoteContentPersistence *)self _protectedRowCount];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6 + v5;
}

uint64_t __53__EDRemoteContentPersistence_countOfUnrequestedLinks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B890] count:0];
  v6 = [v4 initWithResult:v5 table:@"remote_content_links"];

  v7 = [MEMORY[0x1E699B8C8] column:@"requests"];
  v8 = [v7 equalTo:&unk_1F45E6940];
  [v6 setWhere:v8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__EDRemoteContentPersistence_countOfUnrequestedLinks__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 32);
  [v3 executeSelectStatement:v6 withBlock:v10 error:0];

  return 1;
}

void __53__EDRemoteContentPersistence_countOfUnrequestedLinks__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 integerValue];

  *a4 = 1;
}

- (BOOL)pruneAllRemoteContentLinksWithMinimumCount:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v5 = [(EDRemoteContentPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence pruneAllRemoteContentLinksWithMinimumCount:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__EDRemoteContentPersistence_pruneAllRemoteContentLinksWithMinimumCount___block_invoke;
  v8[3] = &unk_1E82549F0;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a3;
  [v5 __performWriteWithCaller:v6 usingBlock:v8];

  LOBYTE(v5) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __73__EDRemoteContentPersistence_pruneAllRemoteContentLinksWithMinimumCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _currentRowCount];
  if (v4 > [*(a1 + 32) pruneThreshold])
  {
    v5 = [MEMORY[0x1E699B8C8] column:@"requests"];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    v7 = [v5 greaterThanEqualTo:v6];

    v8 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"remote_content_links" where:v7];
    [v8 orderBy:@"last_seen_date" ascending:1];
    [v8 setLimit:{v4 - (objc_msgSend(*(a1 + 32), "pruneThreshold") >> 1)}];
    v14 = 0;
    *(*(*(a1 + 40) + 8) + 24) = [v3 executeDeleteStatement:v8 rowsChanged:&v14];
    if (*(*(*(a1 + 40) + 8) + 24) == 1 && v14)
    {
      [*(a1 + 32) _decrementCurrentRowCountBy:?];
      v9 = [*(a1 + 32) _currentRowCount];
      if ([v3 protectedDatabaseAttached])
      {
        [*(a1 + 32) _refillFromAdditionalTable];
        v10 = [*(a1 + 32) _currentRowCount] - v9;
      }

      v13 = *(a1 + 32);
      AnalyticsSendEventLazy();
    }
  }

  v11 = *(*(*(a1 + 40) + 8) + 24);

  return v11;
}

id __73__EDRemoteContentPersistence_pruneAllRemoteContentLinksWithMinimumCount___block_invoke_2(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"beforeCount";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v11[0] = v2;
  v10[1] = @"prunedCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v11[1] = v3;
  v10[2] = @"refilledCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v11[2] = v4;
  v10[3] = @"hasProtectedLinks";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "useAdditionalTable")}];
  v11[3] = v5;
  v10[4] = @"didRefill";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v11[4] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  v6 = [(EDRemoteContentPersistence *)self contentProtectionQueue:a3];
  dispatch_assert_queue_V2(v6);

  v7 = [(EDRemoteContentPersistence *)self useAdditionalTable];
  if (!a3 && v7)
  {

    [(EDRemoteContentPersistence *)self _refillFromAdditionalTable];
  }
}

- (id)getRemoteContentURLInfoOrderedBy:(int64_t)a3 inReverseOrder:(BOOL)a4 limit:(int64_t)a5 error:(id *)a6
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__36;
  v38 = __Block_byref_object_dispose__36;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__36;
  v32 = __Block_byref_object_dispose__36;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__36;
  v26 = __Block_byref_object_dispose__36;
  v27 = 0;
  v11 = [(EDRemoteContentPersistence *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRemoteContentPersistence getRemoteContentURLInfoOrderedBy:inReverseOrder:limit:error:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__EDRemoteContentPersistence_getRemoteContentURLInfoOrderedBy_inReverseOrder_limit_error___block_invoke;
  v20[3] = &unk_1E82566C8;
  v20[4] = self;
  v20[5] = &v28;
  v21 = a4;
  v20[8] = a3;
  v20[9] = a5;
  v20[6] = &v34;
  v20[7] = &v22;
  [v11 __performReadWithCaller:v12 usingBlock:v20];

  if (v29[5])
  {
    if (a6)
    {
      *a6 = 0;
    }

    v13 = objc_alloc(MEMORY[0x1E699B848]);
    v14 = v29[5];
    v15 = v23[5];
  }

  else
  {
    if (a6)
    {
      v16 = v35[5];
      if (v16)
      {
        *a6 = v16;
      }

      else
      {
        v17 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to get remote content url info"];
        *a6 = v17;
      }
    }

    v13 = objc_alloc(MEMORY[0x1E699B848]);
    v14 = 0;
    v15 = 0;
  }

  v18 = [v13 initWithFirst:v14 second:v15];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

uint64_t __90__EDRemoteContentPersistence_getRemoteContentURLInfoOrderedBy_inReverseOrder_limit_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v4 _getRemoteContentURLInfoForTable:@"remote_content_links" orderedBy:v6 inReverseOrder:v5 limit:v7 connection:v3 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (*(*(*(a1 + 40) + 8) + 40) && [*(a1 + 32) useAdditionalTable])
  {
    v12 = [*(*(*(a1 + 40) + 8) + 40) count];
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = v12;
    }

    v14 = *(a1 + 72);
    if (v14 > v13)
    {
      v15 = [*(a1 + 32) _getRemoteContentURLInfoForTable:@"additional_remote_content_links" orderedBy:*(a1 + 64) inReverseOrder:*(a1 + 80) limit:v14 - v13 connection:v3 error:0];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }

  return 1;
}

- (id)_getRemoteContentURLInfoForTable:(id)a3 orderedBy:(int64_t)a4 inReverseOrder:(BOOL)a5 limit:(int64_t)a6 connection:(id)a7 error:(id *)a8
{
  v11 = a5;
  v13 = a3;
  v14 = a7;
  v15 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"url" table:v13];
  [v15 addResultColumn:@"requests"];
  [v15 addResultColumn:@"last_seen_date"];
  [v15 addResultColumn:@"last_request_date"];
  if (a4 >= 4)
  {
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v16 = off_1E82566E8[a4];
    v17 = dword_1C6471F20[a4];
  }

  [v15 orderByColumn:v16 ascending:v17 != v11];
  if (a6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v15 setLimit:a6 & ~(a6 >> 63)];
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __111__EDRemoteContentPersistence__getRemoteContentURLInfoForTable_orderedBy_inReverseOrder_limit_connection_error___block_invoke;
  v23[3] = &unk_1E8250300;
  v24 = v18;
  v19 = v18;
  if ([v14 executeSelectStatement:v15 withBlock:v23 error:a8])
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v20;
}

void __111__EDRemoteContentPersistence__getRemoteContentURLInfoForTable_orderedBy_inReverseOrder_limit_connection_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = objc_alloc(MEMORY[0x1E695DFF8]);
  v4 = [v15 objectAtIndexedSubscript:0];
  v5 = [v4 stringValue];
  v6 = [v3 initWithString:v5];

  v7 = [v15 objectAtIndexedSubscript:1];
  v8 = [v7 integerValue];

  v9 = [v15 objectAtIndexedSubscript:2];
  v10 = [v9 dateValue];

  v11 = [v15 objectAtIndexedSubscript:3];
  if ([v11 integerValue])
  {
    v12 = [v15 objectAtIndexedSubscript:3];
    v13 = [v12 dateValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_alloc(MEMORY[0x1E699ADC0]) initWithURL:v6 requestCount:v8 & ~(v8 >> 63) lastSeen:v10 lastRequested:v13];
  [*(a1 + 32) addObject:v14];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"EDRemoteContentPersistence.m" lineNumber:605 description:{@"%s can only be called from unit tests", "-[EDRemoteContentPersistence test_tearDown]"}];
  }

  v4 = [(EDRemoteContentPersistence *)self contentProtectionQueue];

  if (v4)
  {
    EFUnregisterContentProtectionObserver();
    objc_initWeak(&location, self);
    v5 = [(EDRemoteContentPersistence *)self contentProtectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__EDRemoteContentPersistence_test_tearDown__block_invoke;
    block[3] = &unk_1E8250808;
    objc_copyWeak(&v8, &location);
    dispatch_sync(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __43__EDRemoteContentPersistence_test_tearDown__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[5];
  WeakRetained[5] = 0;
}

- (void)_decrementCurrentRowCountBy:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Decremented row count past zero to %ld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_decrementProtectedRowCountBy:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Decremented protected row count past zero to %ld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __65__EDRemoteContentPersistence_remoteContentLinksBelowCount_limit___block_invoke_2_cold_1(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412290;
  *(a3 + 4) = a2;
  _os_log_error_impl(&dword_1C61EF000, a4, OS_LOG_TYPE_ERROR, "Invalid url string %@", a3, 0xCu);
}

@end