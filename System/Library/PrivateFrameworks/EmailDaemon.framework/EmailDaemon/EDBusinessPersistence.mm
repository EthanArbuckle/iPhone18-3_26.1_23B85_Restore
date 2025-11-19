@interface EDBusinessPersistence
+ (BOOL)_hasCommonDomain:(id)a3;
+ (BOOL)_shouldUseGroupingSimpleAddressForEmailAddress:(id)a3 grouping:(int64_t)a4;
+ (BOOL)_shouldUseSimpleAddressForHighLevelDomain:(id)a3 displayName:(id)a4 grouping:(int64_t)a5;
+ (id)_brandIDFromInteger:(int64_t)a3;
+ (id)_commonDomains;
+ (id)brandIDForResultRow:(id)a3;
+ (id)businessAddressesTableSchema;
+ (id)businessCategoriesTableSchema;
+ (id)businessesTableSchema;
+ (id)log;
+ (id)protectedTablesAndForeignKeysToResolve:(id *)a3;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
- (BOOL)_combineBusinesses:(id)a3 connection:(id)a4 newBusinessID:(int64_t *)a5;
- (BOOL)_completedBCSSyncforAddressID:(id)a3 connection:(id)a4;
- (BOOL)_deleteBusinessAddressEntryForAddressID:(id)a3 connection:(id)a4;
- (BOOL)_deleteBusinessEntryForBusinessID:(id)a3 connection:(id)a4;
- (BOOL)_hasCompletedRecentBCSSyncForAddressID:(int64_t)a3 connection:(id)a4;
- (BOOL)_insertOrUpdateBusiness:(int64_t)a3 forAddress:(int64_t)a4 connection:(id)a5;
- (BOOL)_insertOrUpdateBusinessCategoriesCategoryColumnForBusinessID:(int64_t)a3 category:(unint64_t)a4 connection:(id)a5;
- (BOOL)_removeOldBusinessIDs:(id)a3 connection:(id)a4;
- (BOOL)_removeUserOverrideForAddressIDs:(id)a3 timestamp:(id)a4 originator:(unint64_t)a5 userInitiated:(BOOL)a6 connection:(id)a7;
- (BOOL)_setUserOverrideForBusinessID:(int64_t)a3 category:(unint64_t)a4 userInitiated:(BOOL)a5 connection:(id)a6 timestamp:(id)a7;
- (BOOL)_updateBrandNamesForBusinessID:(int64_t)a3 brandNames:(id)a4 connection:(id)a5;
- (BOOL)_updateBusinessAddressesCategoryColumnForAddressIDs:(id)a3 category:(unint64_t)a4 connection:(id)a5 timestamp:(id)a6;
- (BOOL)_updateBusinessAddressesTableforBusinessID:(id)a3 newBusinessID:(id)a4 connection:(id)a5;
- (BOOL)_updateBusinessIDForAddress:(id)a3 addressID:(int64_t)a4 businessMetadata:(id)a5 connection:(id)a6;
- (BOOL)_updateDisplayNameForBusinessID:(int64_t)a3 displayName:(id)a4 connection:(id)a5;
- (EDBusinessPersistence)initWithDatabase:(id)a3 hookRegistry:(id)a4;
- (EDBusinessPersistence)initWithDatabase:(id)a3 hookRegistry:(id)a4 businessServiceProvider:(id)a5;
- (id)_addressesNeedingUpdateStatementOnlyCounts:(BOOL)a3;
- (id)_bcsEmailIdentiferForAddress:(id)a3;
- (id)_brandIDForBusinessID:(int64_t)a3;
- (id)_businessAddressMapWithCategoryOverrideWithConnection:(id)a3;
- (id)_businessExternalIDForAddressID:(int64_t)a3 expectedGrouping:(int64_t)a4 connection:(id)a5 error:(id *)a6;
- (id)_businessExternalIDForEmailAddress:(id)a3 addressID:(int64_t)a4 brandID:(id)a5 grouping:(int64_t)a6 shouldForceUpdate:(BOOL)a7 businessIDsToCombine:(id *)a8;
- (id)_businessIDsForHighLevelDomain:(id)a3 connection:(id)a4;
- (id)_categoryOverridesForBusinessIDs:(id)a3 connection:(id)a4;
- (id)_existingExternalIDForAddressID:(int64_t)a3 error:(id *)a4;
- (id)_externalIDForDomain:(id)a3 displayName:(id)a4 brandID:(id)a5 simpleAddress:(id)a6 grouping:(int64_t)a7;
- (id)_externalIDForPersistedDomain:(id)a3 displayName:(id)a4 brandID:(id)a5 grouping:(int64_t)a6;
- (id)_externalIDWithCommonPrefixForHighLevelDomain:(id)a3 displayName:(id)a4 businessIDsToCombine:(id *)a5;
- (id)_findExistingBrandIDForBusinessID:(int64_t)a3 connection:(id)a4;
- (id)_groupingTrieForHighLevelDomain:(id)a3;
- (id)_highLevelDomainsForBusinessIDs:(id)a3;
- (id)_lastBCSSyncForAddressID:(int64_t)a3 connection:(id)a4;
- (id)_localizedStringFromJSONString:(id)a3;
- (id)_persistedBrandNamesForDictionary:(id)a3;
- (id)_persistedDisplayNameForExternalID:(id)a3;
- (id)_persistedDomainForExternalID:(id)a3;
- (id)addressIDsForBusinessID:(int64_t)a3 connection:(id)a4;
- (id)addressesForBusinessID:(int64_t)a3;
- (id)businessAddressMapWithCategoryOverride;
- (id)businessDisplayNameForBusinessID:(int64_t)a3;
- (id)businessExternalIDForBusinessID:(int64_t)a3;
- (id)businessExternalIDForEmailAddress:(id)a3 grouping:(int64_t)a4;
- (id)categoryTypeForAddressID:(int64_t)a3;
- (id)categoryTypeForBusinessID:(int64_t)a3;
- (id)lastModifiedDateForAddressID:(int64_t)a3;
- (id)updatedCategoryForAddressID:(int64_t)a3 fromCategorizationResult:(id)a4;
- (int64_t)_businessIDForDomain:(id)a3 displayName:(id)a4 connection:(id)a5;
- (int64_t)_findExistingBusinessForAddressID:(int64_t)a3 connection:(id)a4;
- (int64_t)_insertBusinessWithBrandID:(int64_t)a3 localizedBrandNames:(id)a4 connection:(id)a5;
- (int64_t)_insertBusinessWithDomain:(id)a3 displayName:(id)a4 connection:(id)a5;
- (int64_t)_persistedBrandIDForExternalID:(id)a3;
- (int64_t)_persistedBrandIDForString:(id)a3;
- (int64_t)businessIDForAddressID:(int64_t)a3;
- (int64_t)businessIDForBusinessExternalID:(id)a3;
- (int64_t)findOrCreateBusinessIDForAddress:(id)a3 addressID:(int64_t)a4 connection:(id)a5 businessMetadataNeedsRefreshing:(BOOL *)a6;
- (unint64_t)countOfAddressesNeedingUpdate;
- (void)_reportIncorrectBusinessForAddressID:(int64_t)a3 businessID:(int64_t)a4 isBusinessConnectGrouping:(BOOL)a5 fromClassName:(id)a6;
- (void)_verifyBusiness:(int64_t)a3 connection:(id)a4;
- (void)addressIDsWereDeleted:(id)a3 connection:(id)a4;
- (void)countOfUserOverridesWithCompletionHandler:(id)a3;
- (void)fetchBusinessMetadataForAddresses:(id)a3 completionHandler:(id)a4;
- (void)insertOrUpdateUserOverrideForAddressIDs:(id)a3 category:(unint64_t)a4 timestamp:(id)a5 originator:(unint64_t)a6;
- (void)insertOrUpdateUserOverrideForBusinessIDs:(id)a3 category:(unint64_t)a4 userInitiated:(BOOL)a5 timestamp:(id)a6;
- (void)iterateAddressesNeedingUpdateWithCancelationToken:(id)a3 handler:(id)a4;
- (void)persistenceDidReconcileProtectedData;
- (void)persistenceWillAddProtectedDatabaseIDsFromJournal:(id)a3 andReplaceJournalDatabaseIDsWithProtectedDatabaseIDs:(id)a4 forTable:(id)a5;
- (void)removeAllUserOverrides;
- (void)removeUserOverrideForAddressIDs:(id)a3 timestamp:(id)a4 originator:(unint64_t)a5 userInitiated:(BOOL)a6;
- (void)removeUserOverridesForBusinessIDs:(id)a3 timestamp:(id)a4 originator:(unint64_t)a5 userInitiated:(BOOL)a6;
- (void)reportIncorrectBusinessForAddress:(id)a3 isBusinessConnectGrouping:(BOOL)a4 fromClassName:(id)a5;
- (void)test_tearDown;
@end

@implementation EDBusinessPersistence

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EDBusinessPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_17 != -1)
  {
    dispatch_once(&log_onceToken_17, block);
  }

  v2 = log_log_17;

  return v2;
}

void __28__EDBusinessPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_17;
  log_log_17 = v1;
}

- (EDBusinessPersistence)initWithDatabase:(id)a3 hookRegistry:(id)a4 businessServiceProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = EDBusinessPersistence;
  v12 = [(EDBusinessPersistence *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_database, a3);
    v14 = [(EDPersistenceDatabase *)v13->_database protectedDatabasePersistence];
    v15 = +[EDProtectedDatabasePersistence deleteMergeHandler];
    [v14 registerMergeHandler:v15 forTable:@"business_addresses"];

    v16 = [(EDPersistenceDatabase *)v13->_database protectedDatabasePersistence];
    v17 = +[EDProtectedDatabasePersistence replaceMergeHandler];
    [v16 registerMergeHandler:v17 forTable:@"business_categories"];

    objc_storeStrong(&v13->_hookRegistry, a4);
    atomic_store(0, &v13->_didTearDown);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_UTILITY, 0);
    v20 = dispatch_queue_create("businessPersistence", v19);
    queue = v13->_queue;
    v13->_queue = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_UTILITY, 0);
    v24 = dispatch_queue_create("businessConnectResponse", v23);
    businessConnectResponseQueue = v13->_businessConnectResponseQueue;
    v13->_businessConnectResponseQueue = v24;

    [v10 registerProtectedDataReconciliationHookResponder:v13];
    objc_storeStrong(&v13->_businessServiceProvider, a5);
  }

  return v13;
}

- (EDBusinessPersistence)initWithDatabase:(id)a3 hookRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[EDBusinessConnectMetadataProvider sharedInstance];
  v9 = [(EDBusinessPersistence *)self initWithDatabase:v6 hookRegistry:v7 businessServiceProvider:v8];

  return v9;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDBusinessPersistence.m" lineNumber:102 description:{@"%s can only be called from unit tests", "-[EDBusinessPersistence test_tearDown]"}];
  }

  if ((atomic_exchange(&self->_didTearDown, 1u) & 1) == 0)
  {
    businessConnectResponseQueue = self->_businessConnectResponseQueue;

    dispatch_sync(businessConnectResponseQueue, &__block_literal_global_13);
  }
}

+ (id)businessCategoriesTableSchema
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"business" nullable:0];
  v11[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"category" nullable:0];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v6 = [v2 initWithName:@"business_categories" rowIDType:1 columns:v5];

  v10 = @"business";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v6 addUniquenessConstraintForColumns:v7 conflictResolution:1];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)businessesTableSchema
{
  v43[4] = *MEMORY[0x1E69E9840];
  v37 = [MEMORY[0x1E699B8D0] textColumnWithName:@"address_comment" collation:2 nullable:1];
  v36 = [MEMORY[0x1E699B8D0] textColumnWithName:@"domain" collation:2 nullable:1];
  v35 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"brand_id" nullable:1];
  v34 = [MEMORY[0x1E699B8D0] textColumnWithName:@"localized_brand_name" collation:0 nullable:1];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v43[0] = v37;
  v43[1] = v36;
  v43[2] = v35;
  v43[3] = v34;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  v33 = [v2 initWithName:@"businesses" rowIDType:2 columns:v3];

  v42[0] = @"address_comment";
  v42[1] = @"domain";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  [v33 addUniquenessConstraintForColumns:v4 conflictResolution:1];

  v41 = @"brand_id";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  [v33 addUniquenessConstraintForColumns:v5 conflictResolution:1];

  v6 = objc_alloc(MEMORY[0x1E699B898]);
  v7 = [v37 columnExpression];
  v8 = [v7 isNotNull];
  v40[0] = v8;
  v9 = [v36 columnExpression];
  v10 = [v9 isNotNull];
  v40[1] = v10;
  v11 = [v35 columnExpression];
  v12 = [v11 isNull];
  v40[2] = v12;
  v13 = [v34 columnExpression];
  v14 = [v13 isNull];
  v40[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v32 = [v6 initWithExpressions:v15];

  v16 = objc_alloc(MEMORY[0x1E699B898]);
  v17 = [v37 columnExpression];
  v18 = [v17 isNull];
  v39[0] = v18;
  v19 = [v36 columnExpression];
  v20 = [v19 isNull];
  v39[1] = v20;
  v21 = [v35 columnExpression];
  v22 = [v21 isNotNull];
  v39[2] = v22;
  v23 = [v34 columnExpression];
  v24 = [v23 isNotNull];
  v39[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  v26 = [v16 initWithExpressions:v25];

  v27 = objc_alloc(MEMORY[0x1E699B928]);
  v38[0] = v32;
  v38[1] = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v29 = [v27 initWithExpressions:v28];

  [v33 addCheckConstraintForExpression:v29];
  v30 = *MEMORY[0x1E69E9840];

  return v33;
}

+ (id)businessAddressesTableSchema
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"address" nullable:0];
  v14[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"business" nullable:0];
  v14[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"category" nullable:1];
  v14[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_modified" nullable:1];
  v14[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_bcs_sync" nullable:1];
  v14[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];
  v9 = [v2 initWithName:@"business_addresses" rowIDType:1 columns:v8];

  v13 = @"address";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v9 addUniquenessConstraintForColumns:v10 conflictResolution:1];

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  v22[3] = *MEMORY[0x1E69E9840];
  v6 = +[EDBusinessPersistence businessAddressesTableSchema];
  v7 = +[EDBusinessPersistence businessCategoriesTableSchema];
  v8 = [EDPersistenceAssociationPlaceholder alloc];
  v9 = [v6 columnForName:@"address"];
  v10 = +[EDMessagePersistence addressesTableName];
  v11 = [(EDPersistenceAssociationPlaceholder *)v8 initWithColumn:v9 tableName:v10];

  v12 = [EDPersistenceAssociationPlaceholder alloc];
  v13 = [v6 columnForName:@"business"];
  v14 = [(EDPersistenceAssociationPlaceholder *)v12 initWithColumn:v13 tableName:@"businesses"];

  v15 = [EDPersistenceAssociationPlaceholder alloc];
  v16 = [v7 columnForName:@"business"];
  v17 = [(EDPersistenceAssociationPlaceholder *)v15 initWithColumn:v16 tableName:@"businesses"];

  *a3 = MEMORY[0x1E695E0F0];
  v22[0] = v11;
  v22[1] = v14;
  v22[2] = v17;
  *a4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v21[0] = v6;
  v21[1] = v7;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)protectedTablesAndForeignKeysToResolve:(id *)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = MEMORY[0x1E695E0F0];
  }

  v3 = +[EDBusinessPersistence businessesTableSchema];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)lastModifiedDateForAddressID:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v4 = [(EDBusinessPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence lastModifiedDateForAddressID:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__EDBusinessPersistence_lastModifiedDateForAddressID___block_invoke;
  v8[3] = &unk_1E8250150;
  v8[4] = &v9;
  v8[5] = a3;
  [v4 __performReadWithCaller:v5 usingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __54__EDBusinessPersistence_lastModifiedDateForAddressID___block_invoke(uint64_t a1, void *a2)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"last_modified" table:@"business_addresses"];
  v5 = [MEMORY[0x1E699B8C8] column:@"address"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v7 = [v5 equalTo:v6];
  [v4 setWhere:v7];

  v13 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__EDBusinessPersistence_lastModifiedDateForAddressID___block_invoke_2;
  v14[3] = &unk_1E8250418;
  v14[4] = *(a1 + 32);
  LOBYTE(v6) = [v3 executeSelectStatement:v4 withBlock:v14 error:&v13];
  v8 = v13;
  if ((v6 & 1) == 0)
  {
    v9 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __54__EDBusinessPersistence_lastModifiedDateForAddressID___block_invoke_cold_1();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __54__EDBusinessPersistence_lastModifiedDateForAddressID___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 dateValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)insertOrUpdateUserOverrideForAddressIDs:(id)a3 category:(unint64_t)a4 timestamp:(id)a5 originator:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  if ([v10 count])
  {
    v12 = [(EDBusinessPersistence *)self hookRegistry];
    [v12 persistenceWillChangeCategoryForAddressIDs:v10];

    v13 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
    v14 = [(EDBusinessPersistence *)self database];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence insertOrUpdateUserOverrideForAddressIDs:category:timestamp:originator:]"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__EDBusinessPersistence_insertOrUpdateUserOverrideForAddressIDs_category_timestamp_originator___block_invoke;
    v17[3] = &unk_1E8250EA0;
    v16 = v13;
    v18 = v16;
    v19 = self;
    v20 = v10;
    v22 = a4;
    v21 = v11;
    v23 = a6;
    [v14 __performWriteWithCaller:v15 usingBlock:v17];
  }
}

uint64_t __95__EDBusinessPersistence_insertOrUpdateUserOverrideForAddressIDs_category_timestamp_originator___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [*(a1 + 40) _updateBusinessAddressesCategoryColumnForAddressIDs:*(a1 + 48) category:*(a1 + 64) connection:v3 timestamp:*(a1 + 56)];
  if (v4)
  {
    v5 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 64);
      v8 = EMStringFromCategoryType();
      *buf = 138543618;
      v26 = v6;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Persisted category change addressIDs %{public}@, to categoryType:%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v5 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      EMStringFromCategoryType();
      objc_claimAutoreleasedReturnValue();
      __95__EDBusinessPersistence_insertOrUpdateUserOverrideForAddressIDs_category_timestamp_originator___block_invoke_cold_1();
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95__EDBusinessPersistence_insertOrUpdateUserOverrideForAddressIDs_category_timestamp_originator___block_invoke_76;
  v20[3] = &unk_1E8250E78;
  v23 = *(a1 + 72);
  v19 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v24 = *(a1 + 64);
  v14 = v13;
  *&v15 = v12;
  *(&v15 + 1) = v14;
  *&v16 = v19;
  *(&v16 + 1) = v11;
  v21 = v16;
  v22 = v15;
  [v3 performBlockAfterTransaction:v20];

  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

void __95__EDBusinessPersistence_insertOrUpdateUserOverrideForAddressIDs_category_timestamp_originator___block_invoke_76(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 64) != 1;
    v6 = [*(a1 + 32) hookRegistry];
    [v6 persistenceDidChangeCategoryForAddressIDs:*(a1 + 40) userInitiated:v3 generationWindow:*(a1 + 48)];

    v7 = [*(a1 + 32) hookRegistry];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
    [v7 persistenceDidChangeCategoryOverrideForAddressIDs:v4 category:v5 timestamp:*(a1 + 56) originator:*(a1 + 64)];
  }

  else
  {
    v7 = [*(a1 + 32) hookRegistry];
    [v7 persistenceDidNotChangeCategoryForAddressIDs:*(a1 + 40)];
  }
}

- (int64_t)businessIDForAddressID:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = *MEMORY[0x1E699A728];
  v5 = [(EDBusinessPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence businessIDForAddressID:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__EDBusinessPersistence_businessIDForAddressID___block_invoke;
  v9[3] = &unk_1E8250EC8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  [v5 __performWriteWithCaller:v6 usingBlock:v9];

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __48__EDBusinessPersistence_businessIDForAddressID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _findExistingBusinessForAddressID:*(a1 + 48) connection:v3];

  return 1;
}

- (int64_t)findOrCreateBusinessIDForAddress:(id)a3 addressID:(int64_t)a4 connection:(id)a5 businessMetadataNeedsRefreshing:(BOOL *)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v51 = v10;
  v12 = [(EDBusinessPersistence *)self _findExistingBusinessForAddressID:a4 connection:v11];
  v50 = a6;
  if (v12 == *MEMORY[0x1E699A728])
  {
    v13 = [(EDBusinessPersistence *)self _bcsEmailIdentiferForAddress:v10];
    v14 = v13 != 0;
    if (v13 && (-[EDBusinessPersistence businessServiceProvider](self, "businessServiceProvider"), v15 = objc_claimAutoreleasedReturnValue(), [v15 cachedBusinessMetadataForEmail:v13 error:0], v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
    {
      v17 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x1E699B858];
        v49 = [v16 businessId];
        v48 = [v18 fullyOrPartiallyRedactedStringForString:v49];
        v19 = v51;
        v20 = [v19 emailAddressValue];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 ef_publicDescription];
        }

        else
        {
          v41 = MEMORY[0x1E699B858];
          v42 = [v19 stringValue];
          v43 = v41;
          v44 = v42;
          v22 = [v43 fullyOrPartiallyRedactedStringForString:v42];
        }

        *buf = 134218498;
        v53 = a4;
        v54 = 2114;
        v55 = v48;
        v56 = 2114;
        v57 = v22;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Finding or creating businessID for address %lld (brandID %{public}@): %{public}@", buf, 0x20u);
      }

      v14 = 0;
    }

    else
    {
      v17 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v51;
        v28 = [v27 emailAddressValue];
        v29 = v28;
        if (v28)
        {
          v30 = [v28 ef_publicDescription];
        }

        else
        {
          v35 = MEMORY[0x1E699B858];
          v36 = [v27 stringValue];
          v30 = [v35 fullyOrPartiallyRedactedStringForString:v36];
        }

        *buf = 134218242;
        v53 = a4;
        v54 = 2114;
        v55 = v30;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Finding or creating businessID for address %lld: %{public}@", buf, 0x16u);
      }

      v16 = 0;
    }

    v12 = [(EDBusinessPersistence *)self _findOrCreateBusinessIDForAddress:v51 addressID:a4 businessMetadata:v16 shouldForceUpdate:0 connection:v11];
    v45 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v53 = v12;
      v54 = 2048;
      v55 = a4;
      _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "Verifying grouping for businessID %lld after mapping addressID %lld to it", buf, 0x16u);
    }

    [(EDBusinessPersistence *)self _verifyBusiness:v12 connection:v11];
  }

  else if ([(EDBusinessPersistence *)self _hasCompletedRecentBCSSyncForAddressID:a4 connection:v11])
  {
    v16 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v10;
      v24 = [v23 emailAddressValue];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 ef_publicDescription];
      }

      else
      {
        v37 = MEMORY[0x1E699B858];
        v38 = [v23 stringValue];
        v26 = [v37 fullyOrPartiallyRedactedStringForString:v38];
      }

      *buf = 134218498;
      v53 = v12;
      v54 = 2048;
      v55 = a4;
      v56 = 2114;
      v57 = v26;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Found existing businessID %lld for address %lld: %{public}@", buf, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v16 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v10;
      v32 = [v31 emailAddressValue];
      v33 = v32;
      if (v32)
      {
        v34 = [v32 ef_publicDescription];
      }

      else
      {
        v39 = MEMORY[0x1E699B858];
        v40 = [v31 stringValue];
        v34 = [v39 fullyOrPartiallyRedactedStringForString:v40];
      }

      *buf = 134218498;
      v53 = v12;
      v54 = 2048;
      v55 = a4;
      v56 = 2114;
      v57 = v34;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Checking for BCS update for existing businessID %lld for address %lld: %{public}@", buf, 0x20u);
    }

    v14 = 1;
  }

  if (v50)
  {
    *v50 = v14;
  }

  v46 = *MEMORY[0x1E69E9840];
  return v12;
}

id __115__EDBusinessPersistence__findOrCreateBusinessIDForAddress_addressID_businessMetadata_shouldForceUpdate_connection___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:a2];

  return v2;
}

- (int64_t)_findExistingBusinessForAddressID:(int64_t)a3 connection:(id)a4
{
  v5 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = *MEMORY[0x1E699A728];
  v6 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"business" table:@"business_addresses"];
  v7 = [MEMORY[0x1E699B8C8] column:@"address"];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9 = [v7 equalTo:v8];
  [v6 setWhere:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__EDBusinessPersistence__findExistingBusinessForAddressID_connection___block_invoke;
  v12[3] = &unk_1E8250418;
  v12[4] = &v13;
  [v5 executeSelectStatement:v6 withBlock:v12 error:0];
  v10 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v10;
}

void __70__EDBusinessPersistence__findExistingBusinessForAddressID_connection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (id)_brandIDForBusinessID:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v5 = [(EDBusinessPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence _brandIDForBusinessID:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__EDBusinessPersistence__brandIDForBusinessID___block_invoke;
  v9[3] = &unk_1E8250EC8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  [v5 __performReadWithCaller:v6 usingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __47__EDBusinessPersistence__brandIDForBusinessID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _findExistingBrandIDForBusinessID:*(a1 + 48) connection:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (id)_findExistingBrandIDForBusinessID:(int64_t)a3 connection:(id)a4
{
  v5 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v6 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"brand_id" table:@"businesses"];
  v7 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9 = [v7 equalTo:v8];
  [v6 setWhere:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__EDBusinessPersistence__findExistingBrandIDForBusinessID_connection___block_invoke;
  v12[3] = &unk_1E8250418;
  v12[4] = &v13;
  [v5 executeSelectStatement:v6 withBlock:v12 error:0];
  v10 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v10;
}

void __70__EDBusinessPersistence__findExistingBrandIDForBusinessID_connection___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [EDBusinessPersistence brandIDForResultRow:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (int64_t)_insertBusinessWithBrandID:(int64_t)a3 localizedBrandNames:(id)a4 connection:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"businesses"];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [v9 setObject:v10 forKeyedSubscript:@"brand_id"];
  [v9 setObject:v7 forKeyedSubscript:@"localized_brand_name"];
  v26 = 0;
  v11 = [v8 executeInsertStatement:v9 error:&v26];
  v12 = v26;
  if (v11)
  {
    v13 = [v8 lastInsertedDatabaseID];
    v14 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = MEMORY[0x1E699B858];
      v16 = [v10 stringValue];
      v17 = [v15 fullyOrPartiallyRedactedStringForString:v16];
      v18 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v7];
      *buf = 134218498;
      v28 = v13;
      v29 = 2114;
      v30 = v17;
      v31 = 2114;
      v32 = v18;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Successfully inserted business with ID %lld, brandID %{public}@ (as int64), and brand names %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v14 = +[EDBusinessPersistence log];
    v13 = *MEMORY[0x1E699A728];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = MEMORY[0x1E699B858];
      v25 = [v10 stringValue];
      v22 = [v21 fullyOrPartiallyRedactedStringForString:?];
      v23 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v7];
      v24 = [v12 ef_publicDescription];
      *buf = 138543874;
      v28 = v22;
      v29 = 2114;
      v30 = v23;
      v31 = 2114;
      v32 = v24;
      _os_log_error_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_ERROR, "Failed to insert business with brandID %{public}@ (as int64) and brand names %{public}@, due to error %{public}@", buf, 0x20u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

- (int64_t)_insertBusinessWithDomain:(id)a3 displayName:(id)a4 connection:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"businesses"];
  [v10 setObject:v7 forKeyedSubscript:@"domain"];
  [v10 setObject:v8 forKeyedSubscript:@"address_comment"];
  v19 = 0;
  v11 = [v9 executeInsertStatement:v10 error:&v19];
  v12 = v19;
  if (v11)
  {
    v13 = [v9 lastInsertedDatabaseID];
    v14 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v7 maximumUnredactedLength:1];
      v16 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v8];
      *buf = 134218498;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Successfully inserted business with ID %lld, domain %{public}@ and display name %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v14 = +[EDBusinessPersistence log];
    v13 = *MEMORY[0x1E699A728];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v7 maximumUnredactedLength:1];
      objc_claimAutoreleasedReturnValue();
      [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v8];
      objc_claimAutoreleasedReturnValue();
      [EDBusinessPersistence _insertBusinessWithDomain:displayName:connection:];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_updateDisplayNameForBusinessID:(int64_t)a3 displayName:(id)a4 connection:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"businesses"];
  [v9 setObject:v7 forKeyedSubscript:@"address_comment"];
  v10 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v12 = [v10 equalTo:v11];
  [v9 setWhereClause:v12];

  v18 = 0;
  v13 = [v8 executeUpdateStatement:v9 error:&v18];
  v14 = v18;
  if (v13)
  {
    v15 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = a3;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Successfully updated display name for business with ID %lld", buf, 0xCu);
    }
  }

  else
  {
    v15 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessPersistence _updateDisplayNameForBusinessID:displayName:connection:];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_updateBrandNamesForBusinessID:(int64_t)a3 brandNames:(id)a4 connection:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"businesses"];
  [v9 setObject:v7 forKeyedSubscript:@"localized_brand_name"];
  v10 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v12 = [v10 equalTo:v11];
  [v9 setWhereClause:v12];

  v18 = 0;
  v13 = [v8 executeUpdateStatement:v9 error:&v18];
  v14 = v18;
  if (v13)
  {
    v15 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = a3;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Successfully updated brand names for business with ID %lld", buf, 0xCu);
    }
  }

  else
  {
    v15 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessPersistence _updateBrandNamesForBusinessID:brandNames:connection:];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_updateBusinessAddressesTableforBusinessID:(id)a3 newBusinessID:(id)a4 connection:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"business_addresses"];
  [v10 setObject:v8 forKeyedSubscript:@"business"];
  v11 = [MEMORY[0x1E699B8C8] column:@"business"];
  v12 = [v11 equalTo:v7];
  [v10 setWhereClause:v12];

  v20 = 0;
  [v9 executeUpdateStatement:v10 error:&v20];
  v13 = v20;
  v19 = v13;
  v14 = [v9 executeUpdateStatement:v10 error:&v19];
  v15 = v19;

  if (v14)
  {
    v16 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Successfully updated business ID in business_addresses from %@ to %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessPersistence _updateBusinessAddressesTableforBusinessID:newBusinessID:connection:];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_completedBCSSyncforAddressID:(id)a3 connection:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"business_addresses"];
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = MEMORY[0x1E696AD98];
  [v8 timeIntervalSince1970];
  v10 = [v9 numberWithDouble:?];
  [v7 setObject:v10 forKeyedSubscript:@"last_bcs_sync"];

  v11 = [MEMORY[0x1E699B8C8] column:@"address"];
  v12 = [v11 equalTo:v5];
  [v7 setWhereClause:v12];

  v21 = 0;
  [v6 executeUpdateStatement:v7 error:&v21];
  v13 = v21;
  v20 = v13;
  v14 = [v6 executeUpdateStatement:v7 error:&v20];
  v15 = v20;

  if (v14)
  {
    v16 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v5;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Successfully updated last BCS sync date for address ID %@ in business_addresses to %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = [v15 ef_publicDescription];
      *buf = 138412802;
      v23 = v5;
      v24 = 2112;
      v25 = v8;
      v26 = 2114;
      v27 = v19;
      _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "Failed to update last BCS sync date for address ID %@ in business_addresses to %@, due to error %{public}@", buf, 0x20u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_deleteBusinessEntryForBusinessID:(id)a3 connection:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E699B8E8]);
  v8 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v9 = [v8 equalTo:v5];
  v10 = [v7 initWithTable:@"businesses" where:v9];

  v16 = 0;
  v11 = [v6 executeDeleteStatement:v10 error:&v16];
  v12 = v16;
  if (v11)
  {
    v13 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Successfully deleted old business ID: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessPersistence _deleteBusinessEntryForBusinessID:connection:];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_deleteBusinessAddressEntryForAddressID:(id)a3 connection:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E699B8E8]);
  v8 = [MEMORY[0x1E699B8C8] column:@"address"];
  v9 = [v8 equalTo:v5];
  v10 = [v7 initWithTable:@"business_addresses" where:v9];

  v16 = 0;
  v11 = [v6 executeDeleteStatement:v10 error:&v16];
  v12 = v16;
  if (v11)
  {
    v13 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Successfully deleted unused address ID: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessPersistence _deleteBusinessAddressEntryForAddressID:connection:];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int64_t)_businessIDForDomain:(id)a3 displayName:(id)a4 connection:(id)a5
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = *MEMORY[0x1E699A728];
  v10 = objc_alloc(MEMORY[0x1E699B948]);
  v11 = [MEMORY[0x1E699B8C8] allColumns];
  v12 = [v10 initWithResult:v11 table:@"businesses"];

  v13 = MEMORY[0x1E699B898];
  v14 = [MEMORY[0x1E699B8C8] column:@"domain"];
  v15 = [v14 equalTo:v7];
  v28[0] = v15;
  v16 = [MEMORY[0x1E699B8C8] column:@"address_comment"];
  v17 = [v16 equalTo:v8];
  v28[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v19 = [v13 combined:v18];
  [v12 setWhere:v19];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__EDBusinessPersistence__businessIDForDomain_displayName_connection___block_invoke;
  v23[3] = &unk_1E8250418;
  v23[4] = &v24;
  [v9 executeSelectStatement:v12 withBlock:v23 error:0];
  v20 = v25[3];

  _Block_object_dispose(&v24, 8);
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

void __69__EDBusinessPersistence__businessIDForDomain_displayName_connection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:*MEMORY[0x1E699B768]];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (id)_businessIDsForHighLevelDomain:(id)a3 connection:(id)a4
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc(MEMORY[0x1E699B948]);
  v9 = [MEMORY[0x1E699B8C8] allColumns];
  v10 = [v8 initWithResult:v9 table:@"businesses"];

  v11 = MEMORY[0x1E699B898];
  v12 = [MEMORY[0x1E699B8C8] column:@"domain"];
  v13 = [v12 equalTo:v5];
  v23[0] = v13;
  v14 = [MEMORY[0x1E699B8C8] column:@"address_comment"];
  v15 = [v14 notEqualTo:&stru_1F45B4608];
  v23[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v17 = [v11 combined:v16];
  [v10 setWhere:v17];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__EDBusinessPersistence__businessIDsForHighLevelDomain_connection___block_invoke;
  v21[3] = &unk_1E8250300;
  v18 = v7;
  v22 = v18;
  [v6 executeSelectStatement:v10 withBlock:v21 error:0];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __67__EDBusinessPersistence__businessIDsForHighLevelDomain_connection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699B848];
  v10 = v3;
  v5 = [v3 objectForKeyedSubscript:@"address_comment"];
  v6 = [v5 stringValue];
  v7 = [v10 objectForKeyedSubscript:*MEMORY[0x1E699B768]];
  v8 = [v7 numberValue];
  v9 = [v4 pairWithFirst:v6 second:v8];

  [*(a1 + 32) addObject:v9];
}

- (id)_categoryOverridesForBusinessIDs:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc(MEMORY[0x1E699B948]);
  v8 = [MEMORY[0x1E699B8C8] allColumns];
  v9 = [v7 initWithResult:v8 table:@"business_categories"];

  v10 = [MEMORY[0x1E699B8C8] column:@"business"];
  v11 = [v10 in:v5];
  [v9 setWhere:v11];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__EDBusinessPersistence__categoryOverridesForBusinessIDs_connection___block_invoke;
  v14[3] = &unk_1E8250418;
  v14[4] = &v15;
  [v6 executeSelectStatement:v9 withBlock:v14 error:0];
  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

void __69__EDBusinessPersistence__categoryOverridesForBusinessIDs_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 objectForKeyedSubscript:@"category"];
  v3 = [v4 numberValue];
  [v2 addObject:v3];
}

- (BOOL)_setUserOverrideForBusinessID:(int64_t)a3 category:(unint64_t)a4 userInitiated:(BOOL)a5 connection:(id)a6 timestamp:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  [(EDBusinessPersistence *)self _insertOrUpdateBusinessCategoriesCategoryColumnForBusinessID:a3 category:a4 connection:v12];
  v14 = [(EDBusinessPersistence *)self addressIDsForBusinessID:a3 connection:v12];
  v15 = [(EDBusinessPersistence *)self hookRegistry];
  [v15 persistenceWillChangeCategoryForAddressIDs:v14];

  v16 = [(EDBusinessPersistence *)self _updateBusinessAddressesCategoryColumnForAddressIDs:v14 category:a4 connection:v12 timestamp:v13];
  v17 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  -[EDPersistenceDatabaseGenerationWindow insertGeneration:](v17, "insertGeneration:", [v12 transactionGeneration]);
  if (v16)
  {
    v18 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = EMStringFromCategoryType();
      *buf = 138543618;
      v32 = v14;
      v33 = 2114;
      v34 = v19;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_INFO, "Persisted category change addressIDs %{public}@, to categoryType:%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v18 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      EMStringFromCategoryType();
      objc_claimAutoreleasedReturnValue();
      __95__EDBusinessPersistence_insertOrUpdateUserOverrideForAddressIDs_category_timestamp_originator___block_invoke_cold_1();
    }
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__EDBusinessPersistence__setUserOverrideForBusinessID_category_userInitiated_connection_timestamp___block_invoke;
  v25[3] = &unk_1E8250F10;
  v25[4] = self;
  v20 = v14;
  v26 = v20;
  v30 = a5;
  v21 = v17;
  v27 = v21;
  v29 = a4;
  v22 = v13;
  v28 = v22;
  [v12 performBlockAfterTransaction:v25];

  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

void __99__EDBusinessPersistence__setUserOverrideForBusinessID_category_userInitiated_connection_timestamp___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) hookRegistry];
  v5 = *(a1 + 40);
  v8 = v4;
  if (a2)
  {
    [v4 persistenceDidChangeCategoryForAddressIDs:v5 userInitiated:*(a1 + 72) generationWindow:*(a1 + 48)];

    v8 = [*(a1 + 32) hookRegistry];
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v8 persistenceDidChangeCategoryOverrideForAddressIDs:v6 category:v7 timestamp:*(a1 + 56) originator:0];
  }

  else
  {
    [v4 persistenceDidNotChangeCategoryForAddressIDs:v5];
  }
}

- (BOOL)_insertOrUpdateBusiness:(int64_t)a3 forAddress:(int64_t)a4 connection:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = objc_alloc(MEMORY[0x1E699B948]);
  v9 = [MEMORY[0x1E699B8C8] column:@"category"];
  v10 = [v8 initWithResult:v9 table:@"business_categories"];

  v11 = [MEMORY[0x1E699B8C8] column:@"business"];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v13 = [v11 equalTo:v12];
  [v10 setWhere:v13];

  [v10 setLimit:1];
  v14 = objc_alloc(MEMORY[0x1E699B968]);
  v25[0] = @"address";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v16 = [v14 initWithTable:@"business_addresses" conflictTarget:v15];

  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  [v16 setObject:v17 forKeyedSubscript:@"address"];

  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [v16 setObject:v18 forKeyedSubscript:@"business"];

  [v16 setObject:v10 forKeyedSubscript:@"category"];
  v24 = 0;
  v19 = [v7 executeUpsertStatement:v16 error:&v24];
  v20 = v24;
  if ((v19 & 1) == 0)
  {
    v21 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessPersistence _insertOrUpdateBusiness:forAddress:connection:];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)countOfUserOverridesWithCompletionHandler:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence countOfUserOverridesWithCompletionHandler:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__EDBusinessPersistence_countOfUserOverridesWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8250F38;
  v7 = v4;
  v9 = v7;
  [(EDPersistenceDatabase *)database __performReadWithCaller:v6 usingBlock:v8];
}

uint64_t __67__EDBusinessPersistence_countOfUserOverridesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B890] count:0];
  v6 = +[EDBusinessPersistence businessCategoriesTableName];
  v7 = [v4 initWithResult:v5 table:v6];

  [v3 countForSelectStatement:v7];
  (*(*(a1 + 32) + 16))();

  return 1;
}

- (void)removeAllUserOverrides
{
  v3 = [MEMORY[0x1E695DF00] date];
  database = self->_database;
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence removeAllUserOverrides]"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __47__EDBusinessPersistence_removeAllUserOverrides__block_invoke;
  v11 = &unk_1E8250328;
  v12 = self;
  v6 = v3;
  v13 = v6;
  [(EDPersistenceDatabase *)database __performWriteWithCaller:v5 usingBlock:&v8];

  v7 = [(EDBusinessPersistence *)self hookRegistry:v8];
  [v7 persistenceDidClearAllCategoryOverridesWithTimestamp:v6];
}

uint64_t __47__EDBusinessPersistence_removeAllUserOverrides__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _businessAddressMapWithCategoryOverrideWithConnection:v3];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__EDBusinessPersistence_removeAllUserOverrides__block_invoke_2;
  v12[3] = &unk_1E8250F60;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v16 = &v17;
  v12[4] = v6;
  v13 = v7;
  v8 = v3;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v12];
  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __47__EDBusinessPersistence_removeAllUserOverrides__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v19 = a3;
  v20 = v5;
  *(*(*(a1 + 64) + 8) + 24) &= [*(a1 + 32) _removeUserOverrideForBusinessID:objc_msgSend(v5 timestamp:"longLongValue") originator:*(a1 + 40) userInitiated:2 connection:{1, *(a1 + 48)}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v19;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {

LABEL_14:
    *(*(*(a1 + 64) + 8) + 24) &= [*(a1 + 32) _deleteBusinessEntryForBusinessID:v20 connection:*(a1 + 48)];
    goto LABEL_15;
  }

  v22 = 1;
  v7 = *v24;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v23 + 1) + 8 * i);
      v10 = objc_alloc(MEMORY[0x1E699B948]);
      v11 = [MEMORY[0x1E699B890] count:0];
      v12 = +[EDMessagePersistence messagesTableName];
      v13 = [v10 initWithResult:v11 table:v12];

      v14 = MEMORY[0x1E699B8C8];
      v15 = +[EDMessagePersistence messagesSenderColumnName];
      v16 = [v14 column:v15];
      v17 = [v16 equalTo:v9];
      [v13 setWhere:v17];

      if ([*(a1 + 48) countForSelectStatement:v13])
      {
        v22 = 0;
      }

      else
      {
        *(*(*(a1 + 64) + 8) + 24) &= [*(a1 + 32) _deleteBusinessAddressEntryForAddressID:v9 connection:*(a1 + 48)];
        [*(a1 + 56) addObject:v20];
      }
    }

    v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v6);

  if (v22)
  {
    goto LABEL_14;
  }

LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeUserOverridesForBusinessIDs:(id)a3 timestamp:(id)a4 originator:(unint64_t)a5 userInitiated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  if ([v10 count])
  {
    database = self->_database;
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence removeUserOverridesForBusinessIDs:timestamp:originator:userInitiated:]"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__EDBusinessPersistence_removeUserOverridesForBusinessIDs_timestamp_originator_userInitiated___block_invoke;
    v14[3] = &unk_1E8250F88;
    v15 = v10;
    v16 = self;
    v17 = v11;
    v18 = a5;
    v19 = a6;
    [(EDPersistenceDatabase *)database __performWriteWithCaller:v13 usingBlock:v14];
  }
}

uint64_t __94__EDBusinessPersistence_removeUserOverridesForBusinessIDs_timestamp_originator_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(a1 + 40) _removeUserOverrideForBusinessID:objc_msgSend(*(*(&v11 + 1) + 8 * v7) timestamp:"longLongValue" originator:v11) userInitiated:*(a1 + 48) connection:{*(a1 + 56), *(a1 + 64), v3}])
        {
          v8 = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __104__EDBusinessPersistence__removeUserOverrideForBusinessID_timestamp_originator_userInitiated_connection___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) hookRegistry];
    [v3 persistenceDidChangeCategoryForBusiness:*(a1 + 40)];
  }
}

- (void)removeUserOverrideForAddressIDs:(id)a3 timestamp:(id)a4 originator:(unint64_t)a5 userInitiated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(EDBusinessPersistence *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence removeUserOverrideForAddressIDs:timestamp:originator:userInitiated:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__EDBusinessPersistence_removeUserOverrideForAddressIDs_timestamp_originator_userInitiated___block_invoke;
  v16[3] = &unk_1E8250F88;
  v16[4] = self;
  v14 = v10;
  v17 = v14;
  v15 = v11;
  v18 = v15;
  v19 = a5;
  v20 = a6;
  [v12 __performWriteWithCaller:v13 usingBlock:v16];
}

- (BOOL)_removeUserOverrideForAddressIDs:(id)a3 timestamp:(id)a4 originator:(unint64_t)a5 userInitiated:(BOOL)a6 connection:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v29 = a4;
  v13 = a7;
  if ([v12 count])
  {
    v14 = [(EDBusinessPersistence *)self hookRegistry];
    [v14 persistenceWillChangeCategoryForAddressIDs:v12];

    v15 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"business_addresses"];
    v16 = [MEMORY[0x1E695DFB0] null];
    [v15 setObject:v16 forKeyedSubscript:@"category"];

    v17 = MEMORY[0x1E696AD98];
    [v29 timeIntervalSince1970];
    v18 = [v17 numberWithDouble:?];
    [v15 setObject:v18 forKeyedSubscript:@"last_modified"];

    v19 = [MEMORY[0x1E699B8C8] column:@"address"];
    v20 = [v19 in:v12];
    [v15 setWhereClause:v20];
    v21 = a5;

    v36 = 0;
    v22 = [v13 executeUpdateStatement:v15 error:&v36];
    v23 = v36;
    v24 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
    -[EDPersistenceDatabaseGenerationWindow insertGeneration:](v24, "insertGeneration:", [v13 transactionGeneration]);
    if ((v22 & 1) == 0)
    {
      v25 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        -[EDBusinessPersistence _removeUserOverrideForAddressIDs:timestamp:originator:userInitiated:connection:].cold.1(v23, v37, [v12 count]);
      }
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __104__EDBusinessPersistence__removeUserOverrideForAddressIDs_timestamp_originator_userInitiated_connection___block_invoke;
    v30[3] = &unk_1E8250F10;
    v30[4] = self;
    v31 = v12;
    v35 = a6;
    v26 = v24;
    v32 = v26;
    v33 = v29;
    v34 = v21;
    [v13 performBlockAfterTransaction:v30];
  }

  else
  {
    v22 = 1;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v22;
}

void __104__EDBusinessPersistence__removeUserOverrideForAddressIDs_timestamp_originator_userInitiated_connection___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) hookRegistry];
  v5 = *(a1 + 40);
  v6 = v4;
  if (a2)
  {
    [v4 persistenceDidChangeCategoryForAddressIDs:v5 userInitiated:*(a1 + 72) generationWindow:*(a1 + 48)];

    v6 = [*(a1 + 32) hookRegistry];
    [v6 persistenceDidChangeCategoryOverrideForAddressIDs:*(a1 + 40) category:0 timestamp:*(a1 + 56) originator:*(a1 + 64)];
  }

  else
  {
    [v4 persistenceDidNotChangeCategoryForAddressIDs:v5];
  }
}

- (void)insertOrUpdateUserOverrideForBusinessIDs:(id)a3 category:(unint64_t)a4 userInitiated:(BOOL)a5 timestamp:(id)a6
{
  v10 = a3;
  v11 = a6;
  if ([v10 count])
  {
    database = self->_database;
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence insertOrUpdateUserOverrideForBusinessIDs:category:userInitiated:timestamp:]"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__EDBusinessPersistence_insertOrUpdateUserOverrideForBusinessIDs_category_userInitiated_timestamp___block_invoke;
    v14[3] = &unk_1E8250F88;
    v15 = v10;
    v16 = self;
    v18 = a4;
    v19 = a5;
    v17 = v11;
    [(EDPersistenceDatabase *)database __performWriteWithCaller:v13 usingBlock:v14];
  }
}

uint64_t __99__EDBusinessPersistence_insertOrUpdateUserOverrideForBusinessIDs_category_userInitiated_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(a1 + 40) _setUserOverrideForBusinessID:objc_msgSend(*(*(&v11 + 1) + 8 * v7) category:"longLongValue" userInitiated:v11) connection:*(a1 + 56) timestamp:{*(a1 + 64), v3, *(a1 + 48)}])
        {
          v8 = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)categoryTypeForBusinessID:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v4 = [(EDBusinessPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence categoryTypeForBusinessID:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__EDBusinessPersistence_categoryTypeForBusinessID___block_invoke;
  v8[3] = &unk_1E8250150;
  v8[4] = &v9;
  v8[5] = a3;
  [v4 __performReadWithCaller:v5 usingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __51__EDBusinessPersistence_categoryTypeForBusinessID___block_invoke(uint64_t a1, void *a2)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"category" table:@"business_categories"];
  v5 = [MEMORY[0x1E699B8C8] column:@"business"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v7 = [v5 equalTo:v6];
  [v4 setWhere:v7];

  v13 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__EDBusinessPersistence_categoryTypeForBusinessID___block_invoke_2;
  v14[3] = &unk_1E8250418;
  v14[4] = *(a1 + 32);
  LOBYTE(v6) = [v3 executeSelectStatement:v4 withBlock:v14 error:&v13];
  v8 = v13;
  if ((v6 & 1) == 0)
  {
    v9 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __51__EDBusinessPersistence_categoryTypeForBusinessID___block_invoke_cold_1();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __51__EDBusinessPersistence_categoryTypeForBusinessID___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)categoryTypeForAddressID:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v4 = [(EDBusinessPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence categoryTypeForAddressID:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__EDBusinessPersistence_categoryTypeForAddressID___block_invoke;
  v8[3] = &unk_1E8250150;
  v8[4] = &v9;
  v8[5] = a3;
  [v4 __performReadWithCaller:v5 usingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __50__EDBusinessPersistence_categoryTypeForAddressID___block_invoke(uint64_t a1, void *a2)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"category" table:@"business_addresses"];
  v5 = [MEMORY[0x1E699B8C8] column:@"address"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v7 = [v5 equalTo:v6];
  [v4 setWhere:v7];

  v13 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__EDBusinessPersistence_categoryTypeForAddressID___block_invoke_2;
  v14[3] = &unk_1E8250418;
  v14[4] = *(a1 + 32);
  LOBYTE(v6) = [v3 executeSelectStatement:v4 withBlock:v14 error:&v13];
  v8 = v13;
  if ((v6 & 1) == 0)
  {
    v9 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __50__EDBusinessPersistence_categoryTypeForAddressID___block_invoke_cold_1();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __50__EDBusinessPersistence_categoryTypeForAddressID___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)updatedCategoryForAddressID:(int64_t)a3 fromCategorizationResult:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [a4 category];
  if (((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterSupported()) && ([(EDBusinessPersistence *)self categoryTypeForAddressID:a3], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = [objc_alloc(MEMORY[0x1E699AC48]) initWithType:objc_msgSend(v7 subtype:"unsignedIntegerValue") isHighImpact:objc_msgSend(v6 state:{"subtype"), objc_msgSend(v6, "isHighImpact"), 3}];
  }

  else
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v10 = EDLibraryLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        v14 = a3;
        _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_INFO, "Missing category for addressID %lld. Adding a placeholder category", &v13, 0xCu);
      }

      v9 = [objc_alloc(MEMORY[0x1E699AC48]) initWithType:0 state:0];
    }

    v8 = v9;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)_updateBusinessAddressesCategoryColumnForAddressIDs:(id)a3 category:(unint64_t)a4 connection:(id)a5 timestamp:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"business_addresses"];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v12 setObject:v13 forKeyedSubscript:@"category"];

  v14 = MEMORY[0x1E696AD98];
  [v11 timeIntervalSince1970];
  v15 = [v14 numberWithDouble:?];
  [v12 setObject:v15 forKeyedSubscript:@"last_modified"];

  v16 = [MEMORY[0x1E699B8C8] column:@"address"];
  v17 = [v16 in:v9];
  [v12 setWhereClause:v17];

  v24 = 0;
  v18 = [v10 executeUpdateStatement:v12 error:&v24];
  v19 = v24;
  if ((v18 & 1) == 0)
  {
    v20 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = [v9 count];
      *buf = 134218498;
      v26 = a4;
      v27 = 2048;
      v28 = v23;
      v29 = 2114;
      v30 = v19;
      _os_log_error_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_ERROR, "Failed to insert category %lu to business_addresses table for %lu address IDs due to error %{public}@", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)_insertOrUpdateBusinessCategoriesCategoryColumnForBusinessID:(int64_t)a3 category:(unint64_t)a4 connection:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (!a3 || *MEMORY[0x1E699A728] == a3)
  {
    v11 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessPersistence _removeUserOverrideForBusinessID:timestamp:originator:userInitiated:connection:];
    }

    LOBYTE(v14) = 0;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E699B968]);
    v28[0] = @"business";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v11 = [v9 initWithTable:@"business_categories" conflictTarget:v10];

    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [v11 setObject:v12 forKeyedSubscript:@"business"];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v11 setObject:v13 forKeyedSubscript:@"category"];

    v21 = 0;
    v14 = [v8 executeUpsertStatement:v11 error:&v21];
    v15 = v21;
    if (v14)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __106__EDBusinessPersistence__insertOrUpdateBusinessCategoriesCategoryColumnForBusinessID_category_connection___block_invoke;
      v20[3] = &unk_1E8250FB0;
      v20[4] = self;
      v20[5] = a3;
      [v8 performBlockAfterTransaction:v20];
    }

    else
    {
      v16 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = EMStringFromCategoryType();
        *buf = 134218498;
        v23 = a3;
        v24 = 2112;
        v25 = v19;
        v26 = 2114;
        v27 = v15;
        _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "Failed to insert business_categories entry for business ID: %lld, category: %@ due to error %{public}@", buf, 0x20u);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

void __106__EDBusinessPersistence__insertOrUpdateBusinessCategoriesCategoryColumnForBusinessID_category_connection___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) hookRegistry];
    [v3 persistenceDidChangeCategoryForBusiness:*(a1 + 40)];
  }
}

- (id)addressIDsForBusinessID:(int64_t)a3 connection:(id)a4
{
  v5 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc(MEMORY[0x1E699B948]);
  v7 = [MEMORY[0x1E699B8C8] allColumns];
  v8 = [v6 initWithResult:v7 table:@"business_addresses"];

  v9 = [MEMORY[0x1E699B8C8] column:@"business"];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v11 = [v9 equalTo:v10];
  [v8 setWhere:v11];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__EDBusinessPersistence_addressIDsForBusinessID_connection___block_invoke;
  v14[3] = &unk_1E8250418;
  v14[4] = &v15;
  [v5 executeSelectStatement:v8 withBlock:v14 error:0];
  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

void __60__EDBusinessPersistence_addressIDsForBusinessID_connection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"address"];
  v4 = [v3 numberValue];

  if (v4)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

- (id)addressesForBusinessID:(int64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(EDBusinessPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence addressesForBusinessID:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __48__EDBusinessPersistence_addressesForBusinessID___block_invoke;
  v20[3] = &unk_1E82502B0;
  v20[4] = self;
  v22 = a3;
  v8 = v5;
  v21 = v8;
  [v6 __performReadWithCaller:v7 usingBlock:v20];

  v9 = objc_opt_new();
  v10 = [(EDBusinessPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence addressesForBusinessID:]"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__EDBusinessPersistence_addressesForBusinessID___block_invoke_2;
  v17[3] = &unk_1E8250328;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  [v10 __performReadWithCaller:v11 usingBlock:v17];

  v14 = v19;
  v15 = v13;

  return v13;
}

uint64_t __48__EDBusinessPersistence_addressesForBusinessID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) addressIDsForBusinessID:*(a1 + 48) connection:a2];
  [*(a1 + 40) addObjectsFromArray:v3];

  return 1;
}

uint64_t __48__EDBusinessPersistence_addressesForBusinessID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B8C8] column:@"address"];
  v6 = +[EDMessagePersistence addressesTableName];
  v7 = [v4 initWithResult:v5 table:v6];

  v8 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v9 = (a1 + 32);
  v10 = [v8 in:*(a1 + 32)];
  [v7 setWhere:v10];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__EDBusinessPersistence_addressesForBusinessID___block_invoke_3;
  v16[3] = &unk_1E8250300;
  v17 = *(a1 + 40);
  v15 = 0;
  v11 = [v3 executeSelectStatement:v7 withBlock:v16 error:&v15];
  v12 = v15;
  if (v12)
  {
    v13 = +[EDMessageRepository log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __48__EDBusinessPersistence_addressesForBusinessID___block_invoke_2_cold_1(v9);
    }
  }

  return v11;
}

void __48__EDBusinessPersistence_addressesForBusinessID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"address"];
  v4 = [v3 stringValue];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (id)businessAddressMapWithCategoryOverride
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  database = self->_database;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence businessAddressMapWithCategoryOverride]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__EDBusinessPersistence_businessAddressMapWithCategoryOverride__block_invoke;
  v7[3] = &unk_1E8250FD8;
  v7[4] = self;
  v7[5] = &v8;
  [(EDPersistenceDatabase *)database __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

BOOL __63__EDBusinessPersistence_businessAddressMapWithCategoryOverride__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _businessAddressMapWithCategoryOverrideWithConnection:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v7;
}

- (id)_businessAddressMapWithCategoryOverrideWithConnection:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B8C8] allColumns];
  v6 = [v4 initWithResult:v5 table:@"business_addresses"];

  v7 = [MEMORY[0x1E699B8C8] column:@"category"];
  v8 = [v7 isNotNull];
  [v6 setWhere:v8];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__EDBusinessPersistence__businessAddressMapWithCategoryOverrideWithConnection___block_invoke;
  v11[3] = &unk_1E8250418;
  v11[4] = &v12;
  [v3 executeSelectStatement:v6 withBlock:v11 error:0];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __79__EDBusinessPersistence__businessAddressMapWithCategoryOverrideWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"address"];
  v5 = [v4 numberValue];

  v6 = [v3 objectForKeyedSubscript:@"business"];
  v7 = [v6 numberValue];

  if (v5 && v7)
  {
    v8 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v7];
    if (v8)
    {
      v12 = v5;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      v10 = [v8 arrayByAddingObjectsFromArray:v9];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:v7];
    }

    else
    {
      v13[0] = v5;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v9 forKeyedSubscript:v7];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_shouldUseGroupingSimpleAddressForEmailAddress:(id)a3 grouping:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 emailAddressValue];
  v7 = [v6 displayName];
  v8 = v7;
  v9 = &stru_1F45B4608;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v5 emailAddressValue];
  v12 = [v11 highLevelDomainStrippingTopLevelDomain];

  v13 = [EDBusinessPersistence _shouldUseSimpleAddressForHighLevelDomain:v12 displayName:v10 grouping:a4];
  return v13;
}

+ (BOOL)_hasCommonDomain:(id)a3
{
  v3 = [a3 emailAddressValue];
  v4 = [v3 highLevelDomainStrippingTopLevelDomain];

  v5 = +[EDBusinessPersistence _commonDomains];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)_shouldUseSimpleAddressForHighLevelDomain:(id)a3 displayName:(id)a4 grouping:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (a5 != 3 && [v7 length] && (objc_msgSend(v8, "ef_stringByTrimmingWhitespaceAndNewlineCharacters"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
  {
    v11 = +[EDBusinessPersistence _commonDomains];
    v12 = [v11 containsObject:v7];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (id)_commonDomains
{
  if (_commonDomains_onceToken_0 != -1)
  {
    +[EDBusinessPersistence _commonDomains];
  }

  v3 = _commonDomains_sCommonDomains_0;

  return v3;
}

void __39__EDBusinessPersistence__commonDomains__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F45E6E68];
  v1 = _commonDomains_sCommonDomains_0;
  _commonDomains_sCommonDomains_0 = v0;
}

- (BOOL)_combineBusinesses:(id)a3 connection:(id)a4 newBusinessID:(int64_t *)a5
{
  v8 = a3;
  v41 = a4;
  v9 = [v8 firstObject];
  v10 = [v9 longLongValue];
  v11 = *MEMORY[0x1E699A728];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *MEMORY[0x1E699A728];
  }

  if ([v8 count] > 1)
  {
    if (v12 == v11)
    {
      v14 = [v8 objectAtIndexedSubscript:1];
      v12 = [v14 longLongValue];

      if (v12 == v11)
      {
        v37 = [MEMORY[0x1E696AAA8] currentHandler];
        [v37 handleFailureInMethod:a2 object:self file:@"EDBusinessPersistence.m" lineNumber:1077 description:@"Unable to find valid business ID to combine businesses into"];

        v12 = v11;
      }
    }

    v15 = MEMORY[0x1E695DFD8];
    v16 = [(EDBusinessPersistence *)self _categoryOverridesForBusinessIDs:v8 connection:v41];
    v17 = [v15 setWithArray:v16];

    v39 = v17;
    v18 = [v17 count];
    if ([v17 count] == 1)
    {
      v19 = [v17 allObjects];
      v20 = [v19 firstObject];
      v21 = [v20 unsignedIntegerValue];
      v22 = [MEMORY[0x1E695DF00] date];
      [(EDBusinessPersistence *)self _setUserOverrideForBusinessID:v12 category:v21 userInitiated:0 connection:v41 timestamp:v22];
    }

    v38 = a5;
    for (i = 0; ; ++i)
    {
      v24 = [v8 count];
      v13 = i >= v24;
      if (i >= v24)
      {
        break;
      }

      v25 = [v8 objectAtIndexedSubscript:i];
      if ([v25 longLongValue] == v11)
      {
        if (i)
        {
          v26 = +[EDBusinessPersistence log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [EDBusinessPersistence _combineBusinesses:v43 connection:? newBusinessID:?];
          }
        }
      }

      else
      {
        if (v18 < 2)
        {
          v31 = 1;
        }

        else
        {
          v27 = objc_alloc(MEMORY[0x1E699B8E8]);
          v28 = [MEMORY[0x1E699B8C8] column:@"business"];
          v29 = [v28 equalTo:v25];
          v30 = [v27 initWithTable:@"business_categories" where:v29];

          v31 = [v41 executeDeleteStatement:v30 error:0];
        }

        if ([v25 longLongValue] != v12)
        {
          if (v31)
          {
            v32 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
            v33 = [(EDBusinessPersistence *)self _updateBusinessAddressesTableforBusinessID:v25 newBusinessID:v32 connection:v41];

            LOBYTE(v31) = v33 && [(EDBusinessPersistence *)self _deleteBusinessEntryForBusinessID:v25 connection:v41];
          }

          v34 = [(EDBusinessPersistence *)self hookRegistry];
          [v34 persistenceIsMergingBusinessID:objc_msgSend(v25 intoBusinessID:{"longLongValue"), v12}];
        }

        if ((v31 & 1) == 0)
        {
          v35 = +[EDBusinessPersistence log];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [EDBusinessPersistence _combineBusinesses:connection:newBusinessID:];
          }

          break;
        }
      }
    }

    if (v38)
    {
      *v38 = v12;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = v12;
    }

    v13 = 1;
  }

  return v13;
}

- (void)addressIDsWereDeleted:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"business" table:@"business_addresses"];
  v9 = [MEMORY[0x1E699B8C8] column:@"address"];
  v10 = [v9 in:v6];
  [v8 setWhere:v10];

  v11 = objc_opt_new();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__EDBusinessPersistence_addressIDsWereDeleted_connection___block_invoke;
  v18[3] = &unk_1E8250300;
  v12 = v11;
  v19 = v12;
  [v7 executeSelectStatement:v8 withBlock:v18 error:0];
  v13 = objc_alloc(MEMORY[0x1E699B8E8]);
  v14 = [MEMORY[0x1E699B8C8] column:@"address"];
  v15 = [v14 in:v6];
  v16 = [v13 initWithTable:@"business_addresses" where:v15];

  if (([v7 executeDeleteStatement:v16 error:0] & 1) == 0)
  {
    v17 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [EDBusinessPersistence addressIDsWereDeleted:connection:];
    }
  }

  [(EDBusinessPersistence *)self _removeOldBusinessIDs:v12 connection:v7];
}

void __58__EDBusinessPersistence_addressIDsWereDeleted_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 numberValue];
  [v2 ef_addOptionalObject:v3];
}

- (BOOL)_removeOldBusinessIDs:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"business" table:@"business_addresses"];
  [v7 setDistinct:1];
  v8 = [MEMORY[0x1E699B8C8] column:@"business"];
  v9 = [v8 in:v5];
  [v7 setWhere:v9];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __58__EDBusinessPersistence__removeOldBusinessIDs_connection___block_invoke;
  v27[3] = &unk_1E8250300;
  v10 = v5;
  v28 = v10;
  [v6 executeSelectStatement:v7 withBlock:v27 error:0];
  v11 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"business" table:@"business_categories"];

  v12 = [MEMORY[0x1E699B8C8] column:@"business"];
  v13 = [v12 in:v10];
  [v11 setWhere:v13];

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __58__EDBusinessPersistence__removeOldBusinessIDs_connection___block_invoke_2;
  v25 = &unk_1E8250300;
  v14 = v10;
  v26 = v14;
  [v6 executeSelectStatement:v11 withBlock:&v22 error:0];
  if ([v14 count])
  {
    v15 = objc_alloc(MEMORY[0x1E699B8E8]);
    v16 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
    v17 = [v16 in:v14];
    v18 = [v15 initWithTable:@"businesses" where:v17];

    v19 = [v6 executeDeleteStatement:v18 error:0];
    if ((v19 & 1) == 0)
    {
      v20 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [EDBusinessPersistence _removeOldBusinessIDs:connection:];
      }
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

void __58__EDBusinessPersistence__removeOldBusinessIDs_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 numberValue];
  [v2 removeObject:v3];
}

void __58__EDBusinessPersistence__removeOldBusinessIDs_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 numberValue];
  [v2 removeObject:v3];
}

- (id)businessExternalIDForBusinessID:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v5 = [(EDBusinessPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence businessExternalIDForBusinessID:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__EDBusinessPersistence_businessExternalIDForBusinessID___block_invoke;
  v9[3] = &unk_1E8250EC8;
  v9[5] = &v10;
  v9[6] = a3;
  v9[4] = self;
  [v5 __performReadWithCaller:v6 usingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __57__EDBusinessPersistence_businessExternalIDForBusinessID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"domain" table:@"businesses"];
  [v4 addResultColumn:@"address_comment"];
  [v4 addResultColumn:@"brand_id"];
  v5 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  v7 = [v5 equalTo:v6];
  [v4 setWhere:v7];

  v13 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__EDBusinessPersistence_businessExternalIDForBusinessID___block_invoke_2;
  v14[3] = &unk_1E8250178;
  v15 = *(a1 + 32);
  LOBYTE(v6) = [v3 executeSelectStatement:v4 withBlock:v14 error:&v13];
  v8 = v13;
  if ((v6 & 1) == 0)
  {
    v9 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __57__EDBusinessPersistence_businessExternalIDForBusinessID___block_invoke_cold_1();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __57__EDBusinessPersistence_businessExternalIDForBusinessID___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  v5 = [v13 objectAtIndexedSubscript:1];
  v6 = [v5 stringValue];

  v7 = [EDBusinessPersistence brandIDForResultRow:v13];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E695E000] em_userDefaults];
  v10 = [v8 _externalIDForPersistedDomain:v4 displayName:v6 brandID:v7 grouping:{objc_msgSend(v9, "preferredGroupedSenderGrouping")}];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (int64_t)businessIDForBusinessExternalID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = *MEMORY[0x1E699A728];
  v5 = [(EDBusinessPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence businessIDForBusinessExternalID:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__EDBusinessPersistence_businessIDForBusinessExternalID___block_invoke;
  v10[3] = &unk_1E8250288;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v5 __performReadWithCaller:v6 usingBlock:v10];

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __57__EDBusinessPersistence_businessIDForBusinessExternalID___block_invoke(uint64_t a1, void *a2)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v23 = a2;
  v3 = objc_alloc(MEMORY[0x1E699B948]);
  v4 = [v3 initWithResultColumn:*MEMORY[0x1E699B768] table:@"businesses"];
  v5 = [*(a1 + 32) _persistedBrandIDForExternalID:*(a1 + 40)];
  if (v5 == *MEMORY[0x1E699A728])
  {
    v6 = [*(a1 + 32) _persistedDomainForExternalID:*(a1 + 40)];
    v7 = [*(a1 + 32) _persistedDisplayNameForExternalID:*(a1 + 40)];
    v8 = MEMORY[0x1E699B898];
    v9 = [MEMORY[0x1E699B8C8] column:@"domain"];
    v10 = [v9 equalTo:v6];
    v26[0] = v10;
    v11 = [MEMORY[0x1E699B8C8] column:@"address_comment"];
    v12 = [v11 equalTo:v7];
    v26[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v14 = [v8 combined:v13];
    [v4 setWhere:v14];
  }

  else
  {
    v15 = [MEMORY[0x1E699B8C8] column:@"brand_id"];
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    v17 = [v15 equalTo:v16];
    [v4 setWhere:v17];
  }

  v24 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__EDBusinessPersistence_businessIDForBusinessExternalID___block_invoke_2;
  v25[3] = &unk_1E8250418;
  v25[4] = *(a1 + 48);
  v18 = [v23 executeSelectStatement:v4 withBlock:v25 error:&v24];
  v19 = v24;
  if ((v18 & 1) == 0)
  {
    v20 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [v19 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __57__EDBusinessPersistence_businessIDForBusinessExternalID___block_invoke_cold_1();
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return 1;
}

void __57__EDBusinessPersistence_businessIDForBusinessExternalID___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (id)businessExternalIDForEmailAddress:(id)a3 grouping:(int64_t)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = *MEMORY[0x1E699A728];
  v7 = [(EDBusinessPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence businessExternalIDForEmailAddress:grouping:]"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __68__EDBusinessPersistence_businessExternalIDForEmailAddress_grouping___block_invoke;
  v15 = &unk_1E8250FD8;
  v17 = &v18;
  v9 = v6;
  v16 = v9;
  [v7 __performReadWithCaller:v8 usingBlock:&v12];

  v10 = [(EDBusinessPersistence *)self _businessExternalIDForEmailAddress:v9 addressID:v19[3] brandID:0 grouping:a4 shouldForceUpdate:0 businessIDsToCombine:0, v12, v13, v14, v15];

  _Block_object_dispose(&v18, 8);

  return v10;
}

uint64_t __68__EDBusinessPersistence_businessExternalIDForEmailAddress_grouping___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [EDMessagePersistence databaseIDForEmailAddress:*(a1 + 32) connection:v3];
  if (*(*(*(a1 + 40) + 8) + 24) == *MEMORY[0x1E699A728])
  {
    v4 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E699B858] ec_partiallyRedactedStringForAddress:*(a1 + 32)];
      objc_claimAutoreleasedReturnValue();
      __68__EDBusinessPersistence_businessExternalIDForEmailAddress_grouping___block_invoke_cold_1();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)_businessExternalIDForEmailAddress:(id)a3 addressID:(int64_t)a4 brandID:(id)a5 grouping:(int64_t)a6 shouldForceUpdate:(BOOL)a7 businessIDsToCombine:(id *)a8
{
  v48[4] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  if (v15)
  {
    v16 = [(EDBusinessPersistence *)self _externalIDForDomain:0 displayName:0 brandID:v15 simpleAddress:0 grouping:0];
    goto LABEL_36;
  }

  v44 = a8;
  v17 = v14;
  v18 = [v17 emailAddressValue];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [v17 stringValue];
  }

  v21 = v20;

  v22 = [v21 emailAddressValue];
  v23 = [v22 displayName];
  v24 = v23;
  v25 = &stru_1F45B4608;
  if (v23)
  {
    v25 = v23;
  }

  v46 = v25;

  v14 = v21;
  v26 = [v14 emailAddressValue];
  v27 = [v26 simpleAddress];
  v28 = v27;
  if (v27)
  {
    v45 = v27;
  }

  else
  {
    v45 = [v14 stringValue];
  }

  v29 = [v14 emailAddressValue];
  v30 = [v29 highLevelDomainStrippingTopLevelDomain];

  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v32 = [v14 emailAddressValue];
    v33 = [v32 domainStrippingTopLevelDomain];
    v34 = v33;
    v35 = v46;
    if (v45)
    {
      v35 = v45;
    }

    if (v33)
    {
      v35 = v33;
    }

    v36 = v35;

    v31 = v36;
  }

  if ([EDBusinessPersistence _shouldUseGroupingSimpleAddressForEmailAddress:v14 grouping:a6])
  {
    v37 = 3;
  }

  else
  {
    v37 = a6;
  }

  if (v37 == 1)
  {
    if (*MEMORY[0x1E699A728] == a4 || a7)
    {
      goto LABEL_32;
    }

    v48[0] = 0;
    v16 = [(EDBusinessPersistence *)self _existingExternalIDForAddressID:a4 error:v48];
    v38 = v48[0];
    v39 = v38;
    if (!v16 && v38)
    {
      v40 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [MEMORY[0x1E699B858] ec_partiallyRedactedStringForAddress:v14];
        objc_claimAutoreleasedReturnValue();
        [v39 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDBusinessPersistence _businessExternalIDForEmailAddress:addressID:brandID:grouping:shouldForceUpdate:businessIDsToCombine:];
      }

      goto LABEL_32;
    }

    if (!v16)
    {
LABEL_32:
      v47 = 0;
      v16 = [(EDBusinessPersistence *)self _externalIDWithCommonPrefixForHighLevelDomain:v31 displayName:v46 businessIDsToCombine:&v47];
      v41 = v47;
      goto LABEL_33;
    }
  }

  else
  {
    v16 = [(EDBusinessPersistence *)self _externalIDForDomain:v31 displayName:v46 brandID:0 simpleAddress:v45 grouping:?];
  }

  v41 = 0;
LABEL_33:
  if (v44)
  {
    v41 = v41;
    *v44 = v41;
  }

LABEL_36:
  v42 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_existingExternalIDForAddressID:(int64_t)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v7 = [(EDBusinessPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence _existingExternalIDForAddressID:error:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__EDBusinessPersistence__existingExternalIDForAddressID_error___block_invoke;
  v11[3] = &unk_1E8251000;
  v11[4] = self;
  v11[5] = &v18;
  v11[6] = &v12;
  v11[7] = a3;
  [v7 __performReadWithCaller:v8 usingBlock:v11];

  if (a4)
  {
    *a4 = v13[5];
  }

  v9 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

BOOL __63__EDBusinessPersistence__existingExternalIDForAddressID_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[7];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [v4 _businessExternalIDForAddressID:v5 expectedGrouping:1 connection:v3 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[5] + 8) + 40) || !*(*(a1[6] + 8) + 40);
  return v10;
}

- (id)_businessExternalIDForAddressID:(int64_t)a3 expectedGrouping:(int64_t)a4 connection:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"domain" table:@"businesses"];
  [v11 addResultColumn:@"address_comment"];
  [v11 addResultColumn:@"brand_id"];
  v12 = [v11 join:@"business_addresses" sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"business"];
  v13 = [MEMORY[0x1E699B8C8] column:@"address"];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v15 = [v13 equalTo:v14];
  [v11 setWhere:v15];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__EDBusinessPersistence__businessExternalIDForAddressID_expectedGrouping_connection_error___block_invoke;
  v19[3] = &unk_1E8251028;
  v19[4] = self;
  v19[5] = &v20;
  v19[6] = a4;
  if ([v10 executeSelectStatement:v11 withBlock:v19 error:a6])
  {
    v16 = v21[5];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  _Block_object_dispose(&v20, 8);

  return v17;
}

void __91__EDBusinessPersistence__businessExternalIDForAddressID_expectedGrouping_connection_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  v5 = [v11 objectAtIndexedSubscript:1];
  v6 = [v5 stringValue];

  v7 = [EDBusinessPersistence brandIDForResultRow:v11];
  v8 = [*(a1 + 32) _externalIDForPersistedDomain:v4 displayName:v6 brandID:v7 grouping:*(a1 + 48)];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)_externalIDWithCommonPrefixForHighLevelDomain:(id)a3 displayName:(id)a4 businessIDsToCombine:(id *)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = [(EDBusinessPersistence *)self _groupingTrieForHighLevelDomain:v8];
  v11 = [v10 count];
  if (v11)
  {
    v12 = *MEMORY[0x1E699A728];
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:*MEMORY[0x1E699A728]];
    [v10 insertDisplayName:v9 addressID:v13];

    v14 = [v10 findGroups];
    if ([v14 count] <= v11)
    {
      v44[0] = 0;
      v44[1] = v44;
      v44[2] = 0x2020000000;
      v44[3] = v12;
      v21 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v46 = v14;
        _os_log_debug_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEBUG, "Grouping display name: %@, high level domain: %@, Created some groups: %@", buf, 0x20u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v46 = __Block_byref_object_copy__3;
      v47 = __Block_byref_object_dispose__3;
      v48 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__3;
      v42 = __Block_byref_object_dispose__3;
      v43 = 0;
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __104__EDBusinessPersistence__externalIDWithCommonPrefixForHighLevelDomain_displayName_businessIDsToCombine___block_invoke;
      v31 = &unk_1E8251050;
      v22 = v8;
      v32 = v22;
      v23 = v9;
      v35 = buf;
      v36 = &v38;
      v37 = v44;
      v33 = v23;
      v34 = self;
      [v14 enumerateKeysAndObjectsUsingBlock:&v28];
      if (a5)
      {
        *a5 = v39[5];
      }

      v24 = *(*&buf[8] + 40);
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = [MEMORY[0x1E699AC30] externalIDForHighLevelDomain:v22 displayNameCommonPrefix:{v23, v28, v29, v30, v31, v32}];
      }

      v18 = v25;

      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(v44, 8);
    }

    else
    {
      v15 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v9];
        v17 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v8 maximumUnredactedLength:1];
        *buf = 138543618;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "New display name (%{public}@) is not a part of an existing group for high level domain (%{public}@), creating a new external ID", buf, 0x16u);
      }

      v18 = [MEMORY[0x1E699AC30] externalIDForHighLevelDomain:v8 displayNameCommonPrefix:v9];
    }
  }

  else
  {
    v19 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v8 maximumUnredactedLength:1];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "No current businesses found with this high level domain (%{public}@), creating a new external ID", buf, 0xCu);
    }

    v18 = [MEMORY[0x1E699AC30] externalIDForHighLevelDomain:v8 displayNameCommonPrefix:v9];
  }

  v26 = *MEMORY[0x1E69E9840];

  return v18;
}

void __104__EDBusinessPersistence__externalIDWithCommonPrefixForHighLevelDomain_displayName_businessIDsToCombine___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v8 firstObject];
  v10 = *MEMORY[0x1E699A728];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*MEMORY[0x1E699A728]];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:*(a1 + 32) maximumUnredactedLength:1];
      v15 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:*(a1 + 40)];
      v31 = 138543618;
      v32 = v14;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Existing businesses for high level domain (%{public}@) will be merged under new display name (%{public}@)", &v31, 0x16u);
    }

    v16 = [MEMORY[0x1E699AC30] externalIDForHighLevelDomain:*(a1 + 32) displayNameCommonPrefix:*(a1 + 40)];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = *(*(a1 + 64) + 8);
    v20 = v8;
    v21 = *(v19 + 40);
    *(v19 + 40) = v20;
LABEL_9:

    *a4 = 1;
    goto LABEL_10;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
  v23 = [v8 containsObject:v22];

  if (v23)
  {
    *(*(*(a1 + 72) + 8) + 24) = [v7 intValue];
    v24 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:*(a1 + 40)];
      v26 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:*(a1 + 32) maximumUnredactedLength:1];
      v27 = *(*(*(a1 + 72) + 8) + 24);
      v31 = 138543874;
      v32 = v25;
      v33 = 2114;
      v34 = v26;
      v35 = 2048;
      v36 = v27;
      _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "New display name (%{public}@) for high level domain (%{public}@) is part of business: %lld", &v31, 0x20u);
    }

    v28 = [*(a1 + 48) businessExternalIDForBusinessID:*(*(*(a1 + 72) + 8) + 24)];
    v29 = *(*(a1 + 56) + 8);
    v21 = *(v29 + 40);
    *(v29 + 40) = v28;
    goto LABEL_9;
  }

LABEL_10:

  v30 = *MEMORY[0x1E69E9840];
}

- (id)_externalIDForPersistedDomain:(id)a3 displayName:(id)a4 brandID:(id)a5 grouping:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 emailAddressValue];
  v14 = [v13 simpleAddress];

  v15 = 3;
  if (!v14)
  {
    v15 = a6;
  }

  if (v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = [(EDBusinessPersistence *)self _externalIDForDomain:v10 displayName:v11 brandID:v12 simpleAddress:v14 grouping:v16];

  return v17;
}

- (id)_persistedDomainForExternalID:(id)a3
{
  v3 = a3;
  v4 = [v3 grouping];
  if ((v4 - 1) < 2)
  {
    goto LABEL_4;
  }

  if (v4 == 3)
  {
    v5 = [v3 simpleAddress];
    goto LABEL_6;
  }

  if (v4 == 4)
  {
LABEL_4:
    v5 = [v3 highLevelDomain];
LABEL_6:
    v6 = v5;
    goto LABEL_8;
  }

  v6 = &stru_1F45B4608;
LABEL_8:

  return v6;
}

- (id)_persistedDisplayNameForExternalID:(id)a3
{
  v3 = a3;
  if (([v3 grouping] - 1) >= 2)
  {
    v4 = &stru_1F45B4608;
  }

  else
  {
    v4 = [v3 displayName];
  }

  return v4;
}

- (int64_t)_persistedBrandIDForExternalID:(id)a3
{
  v5 = a3;
  v6 = [v5 grouping];
  if ((v6 - 1) >= 4)
  {
    if (!v6)
    {
      v7 = [v5 brandID];
      v3 = [(EDBusinessPersistence *)self _persistedBrandIDForString:v7];
    }
  }

  else
  {
    v3 = *MEMORY[0x1E699A728];
  }

  return v3;
}

- (int64_t)_persistedBrandIDForString:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v3];
  v9 = 0;
  if (([v4 scanUnsignedLongLong:&v9] & 1) == 0)
  {
    v6 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [EDBusinessPersistence _persistedBrandIDForString:];
    }

    goto LABEL_11;
  }

  if (v9 == -1)
  {
    v6 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [EDBusinessPersistence _persistedBrandIDForString:];
    }

    goto LABEL_11;
  }

  if (([v4 isAtEnd] & 1) == 0)
  {
    v6 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [EDBusinessPersistence _persistedBrandIDForString:];
    }

LABEL_11:

    v5 = MEMORY[0x1E699A728];
    goto LABEL_12;
  }

  v5 = &v9;
LABEL_12:
  v7 = *v5;

  return v7;
}

- (id)_persistedBrandNamesForDictionary:(id)a3
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:0 error:v9];
  v4 = v9[0];
  if (v4)
  {
    v5 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDBusinessPersistence _persistedBrandNamesForDictionary:];
    }

    v6 = &stru_1F45B4608;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_brandIDFromInteger:(int64_t)a3
{
  if (*MEMORY[0x1E699A728] == a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = EFStringWithUInt64();
  }

  return v4;
}

+ (id)brandIDForResultRow:(id)a3
{
  v3 = a3;
  v4 = +[EDBusinessPersistence businessesBrandIDColumnName];
  v5 = [v3 columnExistsWithName:v4];

  if (v5)
  {
    v6 = +[EDBusinessPersistence businessesBrandIDColumnName];
    v7 = [v3 objectForKeyedSubscript:v6];
    v8 = [v7 numberValue];

    if (v8)
    {
      v9 = [v8 longLongValue];
    }

    else
    {
      v9 = *MEMORY[0x1E699A728];
    }

    v10 = [EDBusinessPersistence _brandIDFromInteger:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_externalIDForDomain:(id)a3 displayName:(id)a4 brandID:(id)a5 simpleAddress:(id)a6 grouping:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = 0;
  if (a7 <= 1)
  {
    if (a7)
    {
      if (a7 != 1)
      {
        goto LABEL_13;
      }

      v16 = [MEMORY[0x1E699AC30] externalIDForHighLevelDomain:v11 displayNameCommonPrefix:v12];
    }

    else
    {
      v16 = [MEMORY[0x1E699AC30] externalIDForBrandID:v13];
    }
  }

  else
  {
    switch(a7)
    {
      case 2:
        v16 = [MEMORY[0x1E699AC30] externalIDForHighLevelDomain:v11 displayName:v12];
        break;
      case 4:
        v16 = [MEMORY[0x1E699AC30] externalIDForHighLevelDomain:v11];
        break;
      case 3:
        v16 = [MEMORY[0x1E699AC30] externalIDForSimpleAddress:v14];
        break;
      default:
        goto LABEL_13;
    }
  }

  v15 = v16;
LABEL_13:

  return v15;
}

- (id)_groupingTrieForHighLevelDomain:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v5 = [(EDBusinessPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence _groupingTrieForHighLevelDomain:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__EDBusinessPersistence__groupingTrieForHighLevelDomain___block_invoke;
  v10[3] = &unk_1E8251078;
  v12 = &v13;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  [v5 __performReadWithCaller:v6 usingBlock:v10];

  if ([v14[5] ef_isEmpty])
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_alloc_init(EDDisplayNameGroupingTrie);
    [(EDDisplayNameGroupingTrie *)v8 insertDisplayNameAndIDPairs:v14[5]];
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __57__EDBusinessPersistence__groupingTrieForHighLevelDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _businessIDsForHighLevelDomain:*(a1 + 40) connection:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (void)fetchBusinessMetadataForAddresses:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = [MEMORY[0x1E695DF70] array];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke;
  v44[3] = &unk_1E82510A0;
  v44[4] = self;
  v9 = v22;
  v45 = v9;
  v10 = v23;
  v46 = v10;
  v11 = v8;
  v47 = v11;
  [v6 enumerateKeysAndObjectsUsingBlock:{v44, v22}];
  if ([v11 count])
  {
    v12 = [(EDBusinessPersistence *)self database];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence fetchBusinessMetadataForAddresses:completionHandler:]"];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_151;
    v41[3] = &unk_1E8250328;
    v14 = v11;
    v42 = v14;
    v43 = self;
    [v12 __performWriteWithCaller:v13 usingBlock:v41];

    v15 = [v14 count];
  }

  else
  {
    v15 = 0;
  }

  if ([v10 count])
  {
    v16 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [EDBusinessPersistence fetchBusinessMetadataForAddresses:completionHandler:];
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__3;
    v39 = __Block_byref_object_dispose__3;
    v40 = [MEMORY[0x1E695DF70] array];
    v17 = [MEMORY[0x1E699B868] promise];
    v18 = v36[5];
    v19 = [v17 future];
    [v18 addObject:v19];

    v20 = [(EDBusinessPersistence *)self businessServiceProvider];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_153;
    v32[3] = &unk_1E82510F0;
    v34 = &v35;
    v32[4] = self;
    v33 = v10;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_157;
    v24[3] = &unk_1E8251168;
    v21 = v17;
    v25 = v21;
    v31 = &v35;
    v26 = v9;
    v27 = self;
    v30 = v7;
    v28 = v6;
    v29 = v11;
    [v20 fetchBusinessMetadataForEmails:v26 perItemCallback:v32 completion:v24];

    _Block_object_dispose(&v35, 8);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, v15);
  }
}

void __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] _bcsEmailIdentiferForAddress:v6];
  v8 = v7;
  if (v7 && ([v7 email], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    [a1[5] addObject:v8];
    v10 = [v8 email];
    v11 = [a1[6] objectForKeyedSubscript:v10];

    if (!v11)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      [a1[6] setObject:v12 forKeyedSubscript:v10];
    }

    v13 = [a1[6] objectForKeyedSubscript:v10];
    v14 = [MEMORY[0x1E699B848] pairWithFirst:v6 second:v5];
    [v13 addObject:v14];
  }

  else
  {
    [a1[7] addObject:v5];
    v15 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = v6;
      v18 = [v17 emailAddressValue];
      v19 = v18;
      if (v18)
      {
        v22 = [v18 ef_publicDescription];
      }

      else
      {
        v20 = MEMORY[0x1E699B858];
        v21 = [v17 stringValue];
        v22 = [v20 fullyOrPartiallyRedactedStringForString:v21];
      }

      v23 = 138543618;
      v24 = v5;
      v25 = 2114;
      v26 = v22;
      _os_log_error_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_ERROR, "Couldn't convert a Business Connect Identifier for address %{public}@: %{public}@", &v23, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_151(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    LODWORD(v7) = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v7 = v7 & [*(a1 + 40) _completedBCSSyncforAddressID:*(*(&v11 + 1) + 8 * i) connection:{v3, v11}];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_153(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E699B868] promise];
  v11 = *(*(a1[6] + 8) + 40);
  v12 = [v10 future];
  [v11 addObject:v12];

  v14 = a1[4];
  v13 = a1[5];
  v15 = *(v14 + 16);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_2;
  v21[3] = &unk_1E8250AE0;
  v21[4] = v14;
  v22 = v13;
  v23 = v7;
  v24 = v10;
  v25 = v9;
  v26 = v8;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v7;
  dispatch_async(v15, v21);

  return 1;
}

void __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 24));
  if ((v1 & 1) == 0)
  {
    v3 = (a1 + 48);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) email];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E696ABC0] ed_isNoBusinessMetadataFoundError:*(a1 + 64)];
      v8 = [*(a1 + 32) database];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence fetchBusinessMetadataForAddresses:completionHandler:]_block_invoke"];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_2_155;
      v15[3] = &unk_1E82510C8;
      v16 = v6;
      v17 = *(a1 + 64);
      v21 = v7;
      v10 = *(a1 + 72);
      v11 = *(a1 + 32);
      v18 = v10;
      v19 = v11;
      v20 = *(a1 + 56);
      [v8 __performWriteWithCaller:v9 usingBlock:v15];

      v12 = v16;
    }

    else
    {
      v13 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_2_cold_1(v3);
      }

      v14 = *(a1 + 56);
      v12 = [MEMORY[0x1E695DFB0] null];
      [v14 finishWithResult:v12];
    }
  }
}

uint64_t __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_2_155(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v45 = a2;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (!v3)
  {
    v5 = 1;
    goto LABEL_39;
  }

  v46 = *v49;
  LOBYTE(v5) = 1;
  *&v4 = 138412802;
  v41 = v4;
  do
  {
    v47 = v3;
    for (i = 0; i != v47; ++i)
    {
      if (*v49 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v48 + 1) + 8 * i);
      v8 = [v7 first];
      v9 = [v7 second];
      v10 = *(a1 + 72);
      if (*(a1 + 40))
      {
        if ((*(a1 + 72) & 1) == 0)
        {
          v11 = +[EDBusinessPersistence log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = v8;
            v13 = [v12 emailAddressValue];
            v14 = v13;
            if (v13)
            {
              v17 = [v13 ef_publicDescription];
            }

            else
            {
              v15 = MEMORY[0x1E699B858];
              v16 = [v12 stringValue];
              v17 = [v15 fullyOrPartiallyRedactedStringForString:v16];
            }

            v35 = v17;
            v36 = [*(a1 + 40) ef_publicDescription];
            *buf = v41;
            v53 = v9;
            v54 = 2114;
            v55 = v35;
            v56 = 2114;
            v57 = v36;
            _os_log_error_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch Business Connect metadata for addressID: %@ (%{public}@). Error: %{public}@", buf, 0x20u);
          }

          goto LABEL_22;
        }

LABEL_12:
        v11 = +[EDBusinessPersistence log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v8;
          v19 = [v18 emailAddressValue];
          v20 = v19;
          if (v19)
          {
            v21 = [v19 ef_publicDescription];
          }

          else
          {
            v27 = MEMORY[0x1E699B858];
            v28 = [v18 stringValue];
            v21 = [v27 fullyOrPartiallyRedactedStringForString:v28];
          }

          *buf = 138412546;
          v53 = v9;
          v54 = 2114;
          v55 = v21;
          _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "No business metadata returned for addressID: %@ (%{public}@)", buf, 0x16u);
        }

        goto LABEL_22;
      }

      if (*(a1 + 72))
      {
        goto LABEL_12;
      }

      v11 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v22 = MEMORY[0x1E699B858];
        v42 = [*(a1 + 48) businessId];
        v43 = [v22 fullyOrPartiallyRedactedStringForString:?];
        v23 = v8;
        v24 = [v23 emailAddressValue];
        v25 = v24;
        if (v24)
        {
          v26 = [v24 ef_publicDescription];
        }

        else
        {
          v29 = MEMORY[0x1E699B858];
          v30 = [v23 stringValue];
          v26 = [v29 fullyOrPartiallyRedactedStringForString:v30];
        }

        *buf = 138543874;
        v53 = v43;
        v54 = 2112;
        v55 = v9;
        v56 = 2114;
        v57 = v26;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Fetched Business Connect metadata (brandID %{public}@) for addressID: %@ (%{public}@)", buf, 0x20u);
      }

LABEL_22:

      if (*(a1 + 48) || (*(a1 + 72) & 1) != 0)
      {
        v31 = [v8 emailAddressValue];
        v32 = [v31 domain];
        v33 = v32 == 0;

        if (!v33)
        {
          v34 = +[EDBusinessPersistence log];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v9;
            _os_log_impl(&dword_1C61EF000, v34, OS_LOG_TYPE_DEFAULT, "Try to update business ID for address %@", buf, 0xCu);
          }

          if ((v5 & 1) == 0)
          {
            goto LABEL_31;
          }

          LOBYTE(v5) = [*(a1 + 56) _updateBusinessIDForAddress:v8 addressID:objc_msgSend(v9 businessMetadata:"longLongValue") connection:{*(a1 + 48), v45}];
        }
      }

      if (v5)
      {
        v5 = [*(a1 + 56) _completedBCSSyncforAddressID:v9 connection:v45];
        goto LABEL_32;
      }

LABEL_31:
      v5 = 0;
LABEL_32:
    }

    v3 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  }

  while (v3);
LABEL_39:

  v37 = *(a1 + 64);
  v38 = [MEMORY[0x1E695DFB0] null];
  [v37 finishWithResult:v38];

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

void __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_157(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DFB0] null];
  [v4 finishWithResult:v5];

  v6 = +[EDBusinessPersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) count];
    *buf = 134217984;
    v19 = v7;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Completed call to fetchBusinessMetadataForEmails with %lld addresses", buf, 0xCu);
  }

  if (v3)
  {
    v8 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_157_cold_1();
    }
  }

  v9 = [MEMORY[0x1E699B7C8] join:*(*(*(a1 + 80) + 8) + 40)];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_159;
  v13[3] = &unk_1E8251140;
  v12 = *(a1 + 40);
  v10 = v12.i64[0];
  v14 = vextq_s8(v12, v12, 8uLL);
  v17 = *(a1 + 72);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  [v9 always:v13];

  v11 = *MEMORY[0x1E69E9840];
}

void __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_159(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_2_160;
  v8[3] = &unk_1E8251118;
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, v8);
}

void __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_2_160(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[EDBusinessPersistence log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Finished writing + fetching metadata for %lld addresses", &v6, 0xCu);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, [*(a1 + 40) count] - objc_msgSend(*(a1 + 48), "count"));
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateBusinessIDForAddress:(id)a3 addressID:(int64_t)a4 businessMetadata:(id)a5 connection:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v46 = v10;
  v47 = v11;
  v13 = [(EDBusinessPersistence *)self _findExistingBusinessForAddressID:a4 connection:v12];
  v14 = *MEMORY[0x1E699A728];
  if (v13 == *MEMORY[0x1E699A728])
  {
    v15 = 0;
  }

  else
  {
    v15 = [(EDBusinessPersistence *)self _findExistingBrandIDForBusinessID:v13 connection:v12];
  }

  v16 = [v11 businessId];
  v48 = v15;
  v17 = EFStringsAreEqual();

  if (v17)
  {
    v18 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v52 = a4;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Skipping update for address %lld, new brand ID matches existing one.", buf, 0xCu);
    }

    v19 = 1;
    goto LABEL_26;
  }

  v20 = [(EDBusinessPersistence *)self _findOrCreateBusinessIDForAddress:v10 addressID:a4 businessMetadata:v11 shouldForceUpdate:1 connection:v12];
  v19 = v20 != v14;
  if (v20 != v14 && v13 != v20)
  {
    v22 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v52 = a4;
      v53 = 2048;
      v54 = v13;
      v55 = 2048;
      v56 = v20;
      _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Updated businessID for addressID %lld from %lld to %lld", buf, 0x20u);
    }

    v24 = MEMORY[0x1E695DFA8];
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
    v43 = [v24 setWithObject:v25];

    [(EDBusinessPersistence *)self _removeOldBusinessIDs:v43 connection:v12];
    v26 = MEMORY[0x1E695DFD8];
    v27 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
    v50[0] = v27;
    v28 = [MEMORY[0x1E696AD98] numberWithLongLong:v20];
    v50[1] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v30 = [(EDBusinessPersistence *)self _categoryOverridesForBusinessIDs:v29 connection:v12];
    v45 = [v26 setWithArray:v30];

    v31 = [v45 count];
    if ([v45 count] == 1)
    {
      v32 = [v45 allObjects];
      v33 = [v32 firstObject];
      v34 = [v33 unsignedIntegerValue];
      v35 = [MEMORY[0x1E695DF00] date];
      v19 = [(EDBusinessPersistence *)self _setUserOverrideForBusinessID:v20 category:v34 userInitiated:0 connection:v12 timestamp:v35];
    }

    else
    {
      if (v31 < 2)
      {
        v19 = 1;
        goto LABEL_23;
      }

      v36 = objc_alloc(MEMORY[0x1E699B8E8]);
      v37 = [MEMORY[0x1E699B8C8] column:@"business"];
      v38 = [MEMORY[0x1E696AD98] numberWithLongLong:v20];
      v39 = [v37 equalTo:v38];
      v32 = [v36 initWithTable:@"business_categories" where:v39];

      v19 = [v12 executeDeleteStatement:v32 error:0];
    }

LABEL_23:
    v40 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v52 = v20;
      v53 = 2048;
      v54 = a4;
      _os_log_impl(&dword_1C61EF000, v40, OS_LOG_TYPE_DEFAULT, "Verifying grouping for businessID %lld after updating addressID %lld to be mapped to it", buf, 0x16u);
    }

    [(EDBusinessPersistence *)self _verifyBusiness:v20 connection:v12];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __91__EDBusinessPersistence__updateBusinessIDForAddress_addressID_businessMetadata_connection___block_invoke;
    v49[3] = &unk_1E8251190;
    v49[4] = self;
    v49[5] = a4;
    v49[6] = v13;
    [v12 performBlockAfterTransaction:v49];

    v18 = v44;
    goto LABEL_26;
  }

  v18 = +[EDBusinessPersistence log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [EDBusinessPersistence _updateBusinessIDForAddress:addressID:businessMetadata:connection:];
  }

LABEL_26:

  v41 = *MEMORY[0x1E69E9840];
  return v19;
}

void __91__EDBusinessPersistence__updateBusinessIDForAddress_addressID_businessMetadata_connection___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) hookRegistry];
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
    [v4 persistenceDidChangeBusinessIDForAddressID:v3 fromBusinessID:*(a1 + 48)];
  }
}

- (id)_bcsEmailIdentiferForAddress:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 emailAddressValue];
  if (v4)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v5 = getBCSBusinessEmailIdentifierClass_softClass;
    v26 = getBCSBusinessEmailIdentifierClass_softClass;
    if (!getBCSBusinessEmailIdentifierClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v28 = __getBCSBusinessEmailIdentifierClass_block_invoke;
      v29 = &unk_1E8250000;
      v30 = &v23;
      __getBCSBusinessEmailIdentifierClass_block_invoke(&buf);
      v5 = v24[3];
    }

    v6 = v5;
    _Block_object_dispose(&v23, 8);
    v7 = [v5 alloc];
    v8 = v4;
    v9 = [v8 emailAddressValue];
    v10 = [v9 simpleAddress];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v8 stringValue];
    }

    v13 = v12;

    v18 = [v7 initWithEmail:v13 fullDomain:0 topLevelDomain:0];
  }

  else
  {
    v13 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v3;
      v15 = [v14 emailAddressValue];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 ef_publicDescription];
      }

      else
      {
        v19 = MEMORY[0x1E699B858];
        v20 = [v14 stringValue];
        v17 = [v19 fullyOrPartiallyRedactedStringForString:v20];
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Unable to fetch a business identifier for an invalid email address %{public}@", &buf, 0xCu);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)_hasCompletedRecentBCSSyncForAddressID:(int64_t)a3 connection:(id)a4
{
  v4 = [(EDBusinessPersistence *)self _lastBCSSyncForAddressID:a3 connection:a4];
  v5 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:24];
  v6 = [v4 ef_isLaterThanDate:v5];

  return v6;
}

- (id)_lastBCSSyncForAddressID:(int64_t)a3 connection:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"last_bcs_sync" table:@"business_addresses"];
  v7 = [MEMORY[0x1E699B8C8] column:@"address"];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9 = [v7 equalTo:v8];
  [v6 setWhere:v9];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v17 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__EDBusinessPersistence__lastBCSSyncForAddressID_connection___block_invoke;
  v18[3] = &unk_1E8250418;
  v18[4] = &v19;
  LOBYTE(v8) = [v5 executeSelectStatement:v6 withBlock:v18 error:&v17];
  v10 = v17;
  if ((v8 & 1) == 0)
  {
    v11 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDBusinessPersistence _lastBCSSyncForAddressID:connection:];
    }
  }

  v12 = v20[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [MEMORY[0x1E695DF00] distantPast];
  }

  v14 = v13;

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __61__EDBusinessPersistence__lastBCSSyncForAddressID_connection___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 dateValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_addressesNeedingUpdateStatementOnlyCounts:(BOOL)a3
{
  v3 = a3;
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = +[EDMessagePersistence addressesTableName];
  v32 = [v4 initWithTable:v5];

  if (v3)
  {
    v6 = [MEMORY[0x1E699B890] count:0];
    [v32 addResult:v6 alias:0];

    v7 = *MEMORY[0x1E699B768];
  }

  else
  {
    v8 = +[EDMessagePersistence addressesTableAddressColumnName];
    [v32 addResultColumn:v8];

    v9 = +[EDMessagePersistence addressesTableCommentColumnName];
    [v32 addResultColumn:v9];

    v7 = *MEMORY[0x1E699B768];
    [v32 addResultColumn:*MEMORY[0x1E699B768]];
  }

  v10 = [v32 join:@"business_addresses" sourceColumn:v7 targetColumn:@"address"];
  v31 = [MEMORY[0x1E699B8C8] table:@"business_addresses" column:@"business"];
  v29 = [MEMORY[0x1E699B8C8] table:@"businesses" column:v7];
  v11 = [v31 equalTo:?];
  v12 = [v32 join:@"businesses" on:v11];

  v13 = [MEMORY[0x1E699B8C8] column:@"last_bcs_sync"];
  v30 = [v13 isNull];

  v14 = MEMORY[0x1E699B898];
  v15 = [MEMORY[0x1E699B8C8] column:@"brand_id"];
  v16 = [v15 isNotNull];
  v34[0] = v16;
  v17 = [MEMORY[0x1E699B8C8] column:@"last_bcs_sync"];
  v18 = MEMORY[0x1E696AD98];
  v19 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:24];
  [v19 timeIntervalSince1970];
  v20 = [v18 numberWithDouble:?];
  v21 = [v17 lessThanEqualTo:v20];
  v34[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v23 = [v14 combined:v22];

  v24 = MEMORY[0x1E699B928];
  v33[0] = v30;
  v33[1] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v26 = [v24 combined:v25];
  [v32 setWhere:v26];

  v27 = *MEMORY[0x1E69E9840];

  return v32;
}

- (unint64_t)countOfAddressesNeedingUpdate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(EDBusinessPersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence countOfAddressesNeedingUpdate]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EDBusinessPersistence_countOfAddressesNeedingUpdate__block_invoke;
  v7[3] = &unk_1E8250350;
  v7[4] = self;
  v7[5] = &v8;
  [v3 __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __54__EDBusinessPersistence_countOfAddressesNeedingUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _addressesNeedingUpdateStatementOnlyCounts:1];
  *(*(*(a1 + 40) + 8) + 24) = [v3 countForSelectStatement:v4];

  return 1;
}

- (void)iterateAddressesNeedingUpdateWithCancelationToken:(id)a3 handler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v10 = [(EDBusinessPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence iterateAddressesNeedingUpdateWithCancelationToken:handler:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__EDBusinessPersistence_iterateAddressesNeedingUpdateWithCancelationToken_handler___block_invoke;
  v20[3] = &unk_1E82511E0;
  v25 = a2;
  v12 = v7;
  v21 = v12;
  v22 = self;
  v13 = v9;
  v23 = v13;
  v24 = &v26;
  [v10 __performReadWithCaller:v11 usingBlock:v20];

  if (v27[5])
  {
    (*(v8 + 2))(v8, 0, 0);
  }

  else
  {
    v14 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 count];
      *buf = 134217984;
      v33 = v15;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "%lu addresses need an updated brand ID.", buf, 0xCu);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__EDBusinessPersistence_iterateAddressesNeedingUpdateWithCancelationToken_handler___block_invoke_163;
    v17[3] = &unk_1E8251208;
    v18 = v12;
    v19 = v8;
    [v13 enumerateObjectsUsingBlock:v17];
  }

  _Block_object_dispose(&v26, 8);
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __83__EDBusinessPersistence_iterateAddressesNeedingUpdateWithCancelationToken_handler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 protectedDatabaseAttached])
  {
    if ([*(a1 + 32) isCanceled])
    {
      v4 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Addresses enumeration canceled before first run", buf, 2u);
      }
    }

    else
    {
      v5 = [*(a1 + 40) _addressesNeedingUpdateStatementOnlyCounts:0];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __83__EDBusinessPersistence_iterateAddressesNeedingUpdateWithCancelationToken_handler___block_invoke_162;
      v10[3] = &unk_1E82511B8;
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v6 = *(*(a1 + 56) + 8);
      obj = *(v6 + 40);
      [v3 executeSelectStatement:v5 withBlock:v10 error:&obj];
      objc_storeStrong((v6 + 40), obj);

      v4 = v11;
    }
  }

  else
  {
    v4 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 64));
      objc_claimAutoreleasedReturnValue();
      __83__EDBusinessPersistence_iterateAddressesNeedingUpdateWithCancelationToken_handler___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

void __83__EDBusinessPersistence_iterateAddressesNeedingUpdateWithCancelationToken_handler___block_invoke_162(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = +[EDMessagePersistence addressesTableCommentColumnName];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 stringValue];

  v10 = +[EDMessagePersistence addressesTableAddressColumnName];
  v11 = [v6 objectForKeyedSubscript:v10];
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

  v22 = [v6 objectForKeyedSubscript:*MEMORY[0x1E699B768]];
  v23 = [v22 numberValue];

  if ([*(a1 + 32) isCanceled])
  {
    v24 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Addresses enumeration canceled", v26, 2u);
    }

    *a4 = 1;
  }

  v25 = [MEMORY[0x1E699B848] pairWithFirst:v23 second:v18];
  [*(a1 + 40) addObject:v25];
}

void __83__EDBusinessPersistence_iterateAddressesNeedingUpdateWithCancelationToken_handler___block_invoke_163(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) isCanceled])
  {
    v7 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Addresses enumeration canceled", v11, 2u);
    }

    *a4 = 1;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v6 first];
    v10 = [v6 second];
    (*(v8 + 16))(v8, v9, v10, 0);
  }
}

- (void)_verifyBusiness:(int64_t)a3 connection:(id)a4
{
  v56[5] = *MEMORY[0x1E69E9840];
  v27 = a4;
  v28 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"address" table:@"business_addresses"];
  v6 = [MEMORY[0x1E699B8C8] column:@"business"];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v8 = [v6 equalTo:v7];
  [v28 setWhere:v8];

  v56[0] = 0;
  v9 = [EDMessagePersistence selectAddressesStatementWithResultColumns:v56];
  v25 = v56[0];
  v10 = *MEMORY[0x1E699B768];
  [v9 addResultColumn:*MEMORY[0x1E699B768]];
  v11 = [MEMORY[0x1E699B8C8] column:v10];
  v12 = [v11 in:v28];
  [v9 setWhere:v12];

  v24 = [(EDBusinessPersistence *)self businessDisplayNameForBusinessID:a3];
  v26 = [(EDBusinessPersistence *)self _findExistingBrandIDForBusinessID:a3 connection:v27];
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__3;
  v54[4] = __Block_byref_object_dispose__3;
  v55 = objc_opt_new();
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__3;
  v52 = __Block_byref_object_dispose__3;
  v53 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke;
  aBlock[3] = &unk_1E8251230;
  aBlock[5] = v54;
  aBlock[6] = a3;
  aBlock[4] = self;
  v47 = v26 != 0;
  v13 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_166;
  v36[3] = &unk_1E8251258;
  v14 = v25;
  v45 = v26 != 0;
  v37 = v14;
  v38 = self;
  v42 = v54;
  v43 = &v48;
  v15 = v23;
  v39 = v15;
  v16 = v24;
  v40 = v16;
  v44 = a3;
  v17 = v13;
  v41 = v17;
  v35 = 0;
  LOBYTE(v13) = [v27 executeSelectStatement:v9 withBlock:v36 error:&v35];
  v18 = v35;
  if (v13)
  {
    if ([v49[5] count])
    {
      v19 = [(EDBusinessPersistence *)self businessServiceProvider];
      v20 = v49[5];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_170;
      v30[3] = &unk_1E82512A8;
      v30[4] = self;
      v31 = v26;
      v32 = v15;
      v34 = a3;
      v33 = v17;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_171;
      v29[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v29[4] = a3;
      [v19 fetchBusinessMetadataForEmails:v20 perItemCallback:v30 completion:v29];
    }
  }

  else
  {
    v21 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [v18 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDBusinessPersistence _verifyBusiness:connection:];
    }
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v54, 8);

  v22 = *MEMORY[0x1E69E9840];
}

void __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = +[EDBusinessPersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 48);
    v12 = [*(*(*(a1 + 40) + 8) + 40) count];
    v13 = [*(*(*(a1 + 40) + 8) + 40) description];
    v14 = 134218498;
    v15 = v11;
    v16 = 2048;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_error_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_ERROR, "Found incorrect business grouping: businessID %lld with %lu addresses mapped to it: {%{public}@}", &v14, 0x20u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v5 _reportIncorrectBusinessForAddressID:a2 businessID:v6 isBusinessConnectGrouping:v7 & 1 fromClassName:v9];

  v10 = *MEMORY[0x1E69E9840];
}

void __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_166(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v53 = a2;
  v3 = [*(a1 + 32) second];
  v4 = [v53 objectForKeyedSubscript:v3];
  v5 = [v4 stringValue];
  v6 = [*(a1 + 32) first];
  v7 = [v53 objectForKeyedSubscript:v6];
  v52 = a1;
  v8 = [v7 stringValue];
  v9 = v5;
  v10 = v8;
  v11 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v9];
  [v11 setDisplayName:v10];
  v12 = [v11 emailAddressValue];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v11 stringValue];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v9;
    }

    v14 = v17;
  }

  v18 = [v53 objectForKeyedSubscript:*MEMORY[0x1E699B768]];
  [v18 numberValue];
  v20 = v19 = v52;

  if (v14)
  {
    v21 = v14;
    v22 = [v21 emailAddressValue];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 ef_publicDescription];
    }

    else
    {
      v25 = MEMORY[0x1E699B858];
      v26 = [v21 stringValue];
      v24 = [v25 fullyOrPartiallyRedactedStringForString:v26];
    }

    if (v24)
    {
      [*(*(*(v52 + 72) + 8) + 40) setObject:v24 forKey:v20];
    }

    else
    {
      v27 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_166_cold_1(v65, [v20 longLongValue]);
      }
    }

    if (*(v52 + 96) == 1)
    {
      v28 = [*(v52 + 40) _bcsEmailIdentiferForAddress:v21];
      v29 = v28;
      if (!v28)
      {
        goto LABEL_38;
      }

      v30 = [v28 email];
      v31 = v30 == 0;

      if (v31)
      {
        goto LABEL_38;
      }

      [*(*(*(v52 + 80) + 8) + 40) addObject:v29];
      v32 = [v29 email];
      v33 = [*(v52 + 48) objectForKeyedSubscript:v32];
      v34 = v33 == 0;

      if (v34)
      {
        v35 = [MEMORY[0x1E695DF70] array];
        [*(v52 + 48) setObject:v35 forKeyedSubscript:v32];
      }

      v36 = [*(v52 + 48) objectForKeyedSubscript:v32];
      [v36 addObject:v20];
    }

    else
    {
      v37 = v21;
      v38 = [v37 emailAddressValue];
      v39 = [v38 displayName];
      v40 = v39;
      if (v39)
      {
        v41 = v39;
      }

      else
      {
        v41 = [v37 stringValue];
      }

      v29 = v41;

      if ([v29 length])
      {
        v42 = *(v52 + 56);
        if (v42)
        {
          v54 = 0;
          v43 = [EDDisplayNameGroupingTrie displayName:v42 isTokenizedPrefixOfName:v29 outError:&v54];
          v32 = v54;
          if (!v43)
          {
            v44 = +[EDBusinessPersistence log];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v46 = [v20 longLongValue];
              v47 = *(v52 + 88);
              v48 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:*(v52 + 56)];
              v49 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v29];
              v50 = v49;
              v51 = @"nil";
              *buf = 134219010;
              if (v48)
              {
                v51 = v48;
              }

              v56 = v46;
              v57 = 2048;
              v58 = v47;
              v59 = 2114;
              v60 = v51;
              v61 = 2114;
              v62 = v49;
              v63 = 2114;
              v64 = v32;
              _os_log_error_impl(&dword_1C61EF000, v44, OS_LOG_TYPE_ERROR, "Found addressID %lld is mapped to businessID %lld but display names do not match: businessName: %{public}@, messageName: %{public}@ (%{public}@)", buf, 0x34u);

              v19 = v52;
            }

            (*(*(v19 + 64) + 16))(*(v19 + 64), [v20 longLongValue]);
          }
        }

        else
        {
          v32 = 0;
        }

        goto LABEL_37;
      }

      v36 = +[EDBusinessPersistence log];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v56 = [v20 longLongValue];
        _os_log_impl(&dword_1C61EF000, v36, OS_LOG_TYPE_DEFAULT, "Cannot verify business display name for address with addressID %lld, due to empty address display name", buf, 0xCu);
      }

      v32 = 0;
    }

LABEL_37:
LABEL_38:

    goto LABEL_39;
  }

  v24 = +[EDBusinessPersistence log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_166_cold_2(buf, [v20 longLongValue]);
  }

LABEL_39:

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_170(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 16);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_2;
  v18[3] = &unk_1E8251280;
  v18[4] = v11;
  v19 = v9;
  v20 = v8;
  v21 = v10;
  v22 = *(a1 + 48);
  v23 = v7;
  v13 = *(a1 + 56);
  v25 = *(a1 + 64);
  v24 = v13;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  dispatch_async(v12, v18);

  return 1;
}

void __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(a1 + 32) + 24));
  if (v1)
  {
    goto LABEL_21;
  }

  v3 = [MEMORY[0x1E696ABC0] ed_isNoBusinessMetadataFoundError:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (!v4)
  {
    if (!v3 || !*(a1 + 56))
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  v5 = *(a1 + 56);
  v25 = [v4 businessId];
  if ((EFStringsAreEqual() & 1) == 0)
  {

    goto LABEL_11;
  }

  if (v3)
  {
    v6 = *(a1 + 56);

    if (!v6)
    {
LABEL_21:
      v22 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_11:
    v7 = *(a1 + 64);
    v8 = [*(a1 + 72) email];
    v9 = [v7 objectForKeyedSubscript:v8];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v11)
    {
      v13 = *v28;
      v14 = 0x1E824E000uLL;
      *&v12 = 134218754;
      v24 = v12;
      v26 = v10;
      do
      {
        v15 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v27 + 1) + 8 * v15);
          v17 = [*(v14 + 1224) log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v16 longLongValue];
            v19 = *(a1 + 88);
            v20 = *(a1 + 56);
            v21 = [*(a1 + 48) businessId];
            *buf = v24;
            v32 = v18;
            v33 = 2048;
            v34 = v19;
            v35 = 2114;
            v36 = v20;
            v37 = 2114;
            v38 = v21;
            _os_log_error_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_ERROR, "Found addressID %lld is mapped to businessID %lld but brandIDs do not match: existingBrandID: %{public}@, businessConnectBrandID: %{public}@", buf, 0x2Au);

            v10 = v26;
            v14 = 0x1E824E000;
          }

          (*(*(a1 + 80) + 16))(*(a1 + 80), [v16 longLongValue]);
          ++v15;
        }

        while (v11 != v15);
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v11);
    }

    goto LABEL_21;
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_171(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_171_cold_1();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportIncorrectBusinessForAddress:(id)a3 isBusinessConnectGrouping:(BOOL)a4 fromClassName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(EDBusinessPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence reportIncorrectBusinessForAddress:isBusinessConnectGrouping:fromClassName:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__EDBusinessPersistence_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke;
  v14[3] = &unk_1E82512F0;
  v12 = v8;
  v15 = v12;
  v16 = self;
  v18 = a4;
  v13 = v9;
  v17 = v13;
  [v10 __performReadWithCaller:v11 usingBlock:v14];
}

uint64_t __99__EDBusinessPersistence_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [EDMessagePersistence databaseIDForEmailAddress:*(a1 + 32) connection:v3];
  v5 = *MEMORY[0x1E699A728];
  if (v4 == *MEMORY[0x1E699A728])
  {
    v6 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E699B858] ec_partiallyRedactedStringForAddress:*(a1 + 32)];
      objc_claimAutoreleasedReturnValue();
      __99__EDBusinessPersistence_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke_cold_2();
    }
  }

  else
  {
    v7 = [*(a1 + 40) _findExistingBusinessForAddressID:v4 connection:v3];
    if (v7 != v5)
    {
      [*(a1 + 40) _reportIncorrectBusinessForAddressID:v4 businessID:v7 isBusinessConnectGrouping:*(a1 + 56) fromClassName:*(a1 + 48)];
      goto LABEL_9;
    }

    v6 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__EDBusinessPersistence_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke_cold_1();
    }
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_reportIncorrectBusinessForAddressID:(int64_t)a3 businessID:(int64_t)a4 isBusinessConnectGrouping:(BOOL)a5 fromClassName:(id)a6
{
  v6 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld-%lld", a4, a3];
  v11 = [MEMORY[0x1E695E000] em_userDefaults];
  v12 = *MEMORY[0x1E699AB78];
  v13 = MEMORY[0x1E695DFA8];
  v14 = [v11 valueForKey:v12];
  v15 = [v13 setWithArray:v14];

  if ([v15 containsObject:v10])
  {
    v16 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v22 = a3;
      v23 = 2048;
      v24 = a4;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Skipping reporting auto bug capture for incorrect business grouping of addressID %lld to businessID %lld detected in %{public}@ since it was already reported", buf, 0x20u);
    }
  }

  else
  {
    v17 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = @"display name";
      *buf = 138544130;
      if (v6)
      {
        v20 = @"business connect";
      }

      v22 = v20;
      v23 = 2114;
      v24 = v9;
      v25 = 2048;
      v26 = a4;
      v27 = 2048;
      v28 = a3;
      _os_log_error_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_ERROR, "Reporting auto bug capture for incorrect %{public}@ grouping detected in %{public}@: businessID %lld has addressID %lld mapped to it", buf, 0x2Au);
    }

    v18 = [MEMORY[0x1E699B780] sharedReporter];
    if (v6)
    {
      [v18 reportIssueType:v9 description:@"Incorrect business connect grouping"];
    }

    else
    {
      [v18 reportIssueType:v9 description:@"Incorrect display name grouping"];
    }

    [v15 addObject:v10];
    v16 = [v15 allObjects];
    [v11 setObject:v16 forKey:v12];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)businessDisplayNameForBusinessID:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v5 = [(EDBusinessPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence businessDisplayNameForBusinessID:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__EDBusinessPersistence_businessDisplayNameForBusinessID___block_invoke;
  v9[3] = &unk_1E8250EC8;
  v9[5] = &v10;
  v9[6] = a3;
  v9[4] = self;
  [v5 __performReadWithCaller:v6 usingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __58__EDBusinessPersistence_businessDisplayNameForBusinessID___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E699B8C8] table:@"businesses" column:@"localized_brand_name"];
  v5 = MEMORY[0x1E699B8F8];
  v6 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"address_comment" table:@"businesses"];
  v7 = [v5 jsonObject:v6 key:@"en"];

  v8 = [MEMORY[0x1E699B8F8] ifNull:v4 second:v7];
  v9 = [objc_alloc(MEMORY[0x1E699B948]) initWithResult:v8 table:@"businesses"];
  v10 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  v12 = [v10 equalTo:v11];
  [v9 setWhere:v12];

  v18 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__EDBusinessPersistence_businessDisplayNameForBusinessID___block_invoke_2;
  v19[3] = &unk_1E8250178;
  v20 = *(a1 + 32);
  LOBYTE(v11) = [v3 executeSelectStatement:v9 withBlock:v19 error:&v18];
  v13 = v18;
  if ((v11 & 1) == 0)
  {
    v14 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      [v13 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __58__EDBusinessPersistence_businessDisplayNameForBusinessID___block_invoke_cold_1();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return 1;
}

void __58__EDBusinessPersistence_businessDisplayNameForBusinessID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v5 stringValue];
  v7 = [v4 _localizedStringFromJSONString:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)_localizedStringFromJSONString:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = [a3 dataUsingEncoding:4];
  v12[0] = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:v12];
  v5 = v12[0];
  if (v5)
  {
    v6 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v5 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDBusinessPersistence _localizedStringFromJSONString:];
    }

    v7 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E6964E28]) initWithLocalizedStrings:v4];
    v6 = [v8 localizedString];

    if ([v6 length])
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v7 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)persistenceWillAddProtectedDatabaseIDsFromJournal:(id)a3 andReplaceJournalDatabaseIDsWithProtectedDatabaseIDs:(id)a4 forTable:(id)a5
{
  v13 = a3;
  v6 = a5;
  if ((_os_feature_enabled_impl() & 1) != 0 && [v6 isEqualToString:@"businesses"])
  {
    v7 = [MEMORY[0x1E696AF00] currentThread];
    v8 = [v7 threadDictionary];
    v9 = [v8 objectForKeyedSubscript:@"EDBusinessPersistence.reconciledBusinessIDs"];

    if (v9)
    {
      [v9 addIndexes:v13];
    }

    else
    {
      v10 = [v13 mutableCopy];
      v11 = [MEMORY[0x1E696AF00] currentThread];
      v12 = [v11 threadDictionary];
      [v12 setObject:v10 forKeyedSubscript:@"EDBusinessPersistence.reconciledBusinessIDs"];
    }
  }
}

- (void)persistenceDidReconcileProtectedData
{
  v24 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v3 = [MEMORY[0x1E696AF00] currentThread];
    v4 = [v3 threadDictionary];
    v15 = [v4 objectForKeyedSubscript:@"EDBusinessPersistence.reconciledBusinessIDs"];

    v5 = [MEMORY[0x1E696AF00] currentThread];
    v6 = [v5 threadDictionary];
    [v6 setObject:0 forKeyedSubscript:@"EDBusinessPersistence.reconciledBusinessIDs"];

    if ([v15 count])
    {
      [(EDBusinessPersistence *)self _highLevelDomainsForBusinessIDs:v15];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      obj = v20 = 0u;
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = *v20;
        do
        {
          v9 = 0;
          do
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v19 + 1) + 8 * v9);
            v11 = [(EDBusinessPersistence *)self database];
            v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence persistenceDidReconcileProtectedData]"];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __61__EDBusinessPersistence_persistenceDidReconcileProtectedData__block_invoke;
            v18[3] = &unk_1E82502B0;
            v18[4] = self;
            v18[5] = v10;
            v18[6] = a2;
            [v11 __performWriteWithCaller:v12 usingBlock:v18];

            ++v9;
          }

          while (v7 != v9);
          v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }

      v13 = [(EDBusinessPersistence *)self hookRegistry];
      [v13 persistenceDidFinishMergingBusinessesAfterJournalReconciliation];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __61__EDBusinessPersistence_persistenceDidReconcileProtectedData__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _businessIDsForHighLevelDomain:*(a1 + 40) connection:v3];
  v5 = objc_alloc_init(EDDisplayNameGroupingTrie);
  [(EDDisplayNameGroupingTrie *)v5 insertDisplayNameAndIDPairs:v4];
  v6 = [(EDDisplayNameGroupingTrie *)v5 findGroups];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v7 = [v4 count];
  v8 = [v6 count];
  v9 = v7 - v8;
  if (v7 != v8)
  {
    if (v7 <= v8)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"EDBusinessPersistence.m" lineNumber:2073 description:@"We ended up with more groups than we started with when combining groups"];
    }

    v10 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:*(a1 + 40) maximumUnredactedLength:1];
      *buf = 134218242;
      v25 = v9;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Merging %lu businesses for domain %{public}@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__EDBusinessPersistence_persistenceDidReconcileProtectedData__block_invoke_195;
    v17[3] = &unk_1E8251318;
    v12 = *(a1 + 32);
    v19 = &v20;
    v17[4] = v12;
    v18 = v3;
    [v6 enumerateKeysAndObjectsUsingBlock:v17];
  }

  v13 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void __61__EDBusinessPersistence_persistenceDidReconcileProtectedData__block_invoke_195(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count] >= 2)
  {
    v7 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Merging businessIDs %@", buf, 0xCu);
    }

    v10 = *MEMORY[0x1E699A728];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _combineBusinesses:v6 connection:*(a1 + 40) newBusinessID:&v10];
    v8 = +[EDBusinessPersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v10;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Verifying grouping for businessID %lld after merging reconciled businesses", buf, 0xCu);
    }

    [*(a1 + 32) _verifyBusiness:v10 connection:*(a1 + 40)];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_highLevelDomainsForBusinessIDs:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(EDBusinessPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDBusinessPersistence _highLevelDomainsForBusinessIDs:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__EDBusinessPersistence__highLevelDomainsForBusinessIDs___block_invoke;
  v13[3] = &unk_1E8250328;
  v8 = v4;
  v14 = v8;
  v9 = v5;
  v15 = v9;
  [v6 __performReadWithCaller:v7 usingBlock:v13];

  v10 = v15;
  v11 = v9;

  return v9;
}

uint64_t __57__EDBusinessPersistence__highLevelDomainsForBusinessIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"domain" table:@"businesses"];
  [v4 setDistinct:1];
  v5 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v6 = [v5 in:*(a1 + 32)];
  [v4 setWhere:v6];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__EDBusinessPersistence__highLevelDomainsForBusinessIDs___block_invoke_2;
  v8[3] = &unk_1E8250300;
  v9 = *(a1 + 40);
  [v3 executeSelectStatement:v4 withBlock:v8 error:0];

  return 1;
}

void __57__EDBusinessPersistence__highLevelDomainsForBusinessIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __54__EDBusinessPersistence_lastModifiedDateForAddressID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to get lastModifiedDateForAddressID for address ID %lld, due to error: %{public}@", v4, v5);
}

void __95__EDBusinessPersistence_insertOrUpdateUserOverrideForAddressIDs_category_timestamp_originator___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to persist category change addressIDs %{public}@, to categoryType:%{public}@", v4, v5);
}

- (void)_insertBusinessWithDomain:displayName:connection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_0_0(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to insert business with domain %{public}@ and display name %{public}@", v5, v6);
}

- (void)_updateDisplayNameForBusinessID:displayName:connection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_updateBrandNamesForBusinessID:brandNames:connection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_updateBusinessAddressesTableforBusinessID:newBusinessID:connection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_deleteBusinessEntryForBusinessID:connection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_deleteBusinessAddressEntryForAddressID:connection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_insertOrUpdateBusiness:forAddress:connection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_removeUserOverrideForBusinessID:timestamp:originator:userInitiated:connection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_removeUserOverrideForBusinessID:timestamp:originator:userInitiated:connection:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__EDBusinessPersistence_categoryTypeForBusinessID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to get category type for businessID %lld, due to error: %{public}@", v4, v5);
}

void __50__EDBusinessPersistence_categoryTypeForAddressID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to get category type for address ID %lld, due to error: %{public}@", v4, v5);
}

void __48__EDBusinessPersistence_addressesForBusinessID___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_combineBusinesses:connection:newBusinessID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_combineBusinesses:(_BYTE *)a1 connection:(_BYTE *)a2 newBusinessID:.cold.2(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)addressIDsWereDeleted:connection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeOldBusinessIDs:connection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__EDBusinessPersistence_businessExternalIDForBusinessID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to get external ID for business ID %lld, due to error: %{public}@", v4, v5);
}

void __57__EDBusinessPersistence_businessIDForBusinessExternalID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_0_0(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to get business ID for external ID %{public}@, due to error: %{public}@", v5, v6);
}

void __68__EDBusinessPersistence_businessExternalIDForEmailAddress_grouping___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_businessExternalIDForEmailAddress:addressID:brandID:grouping:shouldForceUpdate:businessIDsToCombine:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_0_0(v1, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to determine existing external ID for address: %@, due to error: %{public}@", v5, v6);
}

- (void)_persistedBrandIDForString:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_11_0(&dword_1C61EF000, v0, v1, "Failed to find a valid decimal integer representation in the brandID string %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_persistedBrandIDForString:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_11_0(&dword_1C61EF000, v0, v1, "Multiple values found in the brandID string %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_persistedBrandIDForString:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_11_0(&dword_1C61EF000, v0, v1, "Value from brandID string %@ overflowed UINT64_MAX", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_persistedBrandNamesForDictionary:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)fetchBusinessMetadataForAddresses:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_DEBUG, "Fetching Business Connect metadata for emailIdentifiers: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __77__EDBusinessPersistence_fetchBusinessMetadataForAddresses_completionHandler___block_invoke_157_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_updateBusinessIDForAddress:addressID:businessMetadata:connection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_lastBCSSyncForAddressID:connection:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to get last BCS sync for address ID %lld, due to error: %{public}@", v4, v5);
}

void __83__EDBusinessPersistence_iterateAddressesNeedingUpdateWithCancelationToken_handler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_verifyBusiness:connection:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to get addresses for businessID %lld, due to error: %{public}@", v4, v5);
}

void __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_166_cold_1(uint64_t a1, uint64_t a2)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_166_cold_2(uint64_t a1, uint64_t a2)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__EDBusinessPersistence__verifyBusiness_connection___block_invoke_171_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Call to fetchBusinessMetadataForEmails when verifying grouping for businessID %lld completed with error: %{public}@", v4, v5);
}

void __99__EDBusinessPersistence_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __99__EDBusinessPersistence_reportIncorrectBusinessForAddress_isBusinessConnectGrouping_fromClassName___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __58__EDBusinessPersistence_businessDisplayNameForBusinessID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to get business display name for business ID %lld, due to error: %{public}@", v4, v5);
}

- (void)_localizedStringFromJSONString:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end