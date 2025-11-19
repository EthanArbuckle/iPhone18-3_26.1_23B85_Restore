@interface HDSourceEntity
+ (BOOL)enumerateBundleIdentifiersForSourcesForUUIDData:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)enumerateBundleIdentifiersForSourcesWithPredicate:(id)a3 database:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (id)_firstSourceWithPredicate:(void *)a3 database:(uint64_t)a4 error:;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)firstSourceWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)foreignKeys;
+ (id)indices;
+ (id)insertSourceWithUUID:(id)a3 logicalSourceID:(int64_t)a4 name:(id)a5 options:(unint64_t)a6 isCurrentDevice:(BOOL)a7 productType:(id)a8 deleted:(BOOL)a9 modificationDate:(id)a10 provenance:(int64_t)a11 syncIdentity:(int64_t)a12 transaction:(id)a13 error:(id *)a14;
+ (id)joinClausesForProperty:(id)a3;
+ (id)sourceForLocalDeviceWithDatabase:(id)a3 error:(id *)a4;
+ (id)sourceForLogicalSourceID:(id)a3 localDeviceBundleIdentifier:(BOOL)a4 localOnly:(BOOL)a5 transaction:(id)a6 error:(id *)a7;
+ (id)sourcesWithPredicate:(id)a3 includeDeleted:(BOOL)a4 profile:(id)a5 error:(id *)a6;
+ (id)sourcesWithPredicate:(id)a3 orderingTerms:(id)a4 includeDeleted:(BOOL)a5 database:(id)a6 error:(id *)a7;
- (BOOL)adoptAsLocalSourceWithLogicalSourceID:(id)a3 UUID:(id)a4 name:(id)a5 productType:(id)a6 profile:(id)a7 error:(id *)a8;
- (BOOL)deleteSourceWithTombstoneLogicalSourceID:(int64_t)a3 syncIdentity:(int64_t)a4 database:(id)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)setName:(id)a3 profile:(id)a4 error:(id *)a5;
- (BOOL)setOptions:(unint64_t)a3 profile:(id)a4 didUpdate:(BOOL *)a5 error:(id *)a6;
- (id)codableSourceWithEncoder:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6;
- (id)codableSourceWithProfile:(id)a3 error:(id *)a4;
- (id)sourceBundleIdentifierInDatabase:(id)a3 error:(id *)a4;
- (id)sourceUUIDWithHealthDatabase:(id)a3 error:(id *)a4;
- (id)sourceUUIDWithProfile:(id)a3 error:(id *)a4;
- (id)sourceWithProfile:(id)a3 error:(id *)a4;
- (id)unitTest_logicalSourceEntityWithHealthDatabase:(id)a3 error:(id *)a4;
- (uint64_t)_updateValues:(void *)a3 forProperties:(void *)a4 profile:(uint64_t)a5 didUpdate:(uint64_t)a6 error:;
@end

@implementation HDSourceEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"logical_source_id";
  v2 = +[(HDHealthEntity *)HDLogicalSourceEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)indices
{
  v21[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v20 = @"logical_source_id";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v5 = [v2 initWithEntity:v3 name:@"logical_source_id" columns:v4];
  v21[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D10B40]);
  v7 = objc_opt_class();
  v19 = @"provenance";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v9 = [v6 initWithEntity:v7 name:@"provenance" columns:v8];
  v21[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D10B40]);
  v11 = objc_opt_class();
  v18 = @"local_device";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = 1", @"local_device"];
  v14 = [v10 initWithEntity:v11 name:@"local_device" columns:v12 unique:0 predicateString:v13];
  v21[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"logical_sources.bundle_id"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"logical_sources.owner_bundle_id"))
  {
    v5 = MEMORY[0x277D10B50];
    v6 = [a1 disambiguatedDatabaseTable];
    v7 = [v5 innerJoinClauseFromTable:v6 toTargetEntity:objc_opt_class() as:0 localReference:@"logical_source_id" targetKey:*MEMORY[0x277D10A40]];

    v8 = [MEMORY[0x277CBEB98] setWithObjects:{v7, 0}];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___HDSourceEntity;
    v8 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, v4);
  }

  return v8;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDSourceEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)insertSourceWithUUID:(id)a3 logicalSourceID:(int64_t)a4 name:(id)a5 options:(unint64_t)a6 isCurrentDevice:(BOOL)a7 productType:(id)a8 deleted:(BOOL)a9 modificationDate:(id)a10 provenance:(int64_t)a11 syncIdentity:(int64_t)a12 transaction:(id)a13 error:(id *)a14
{
  v17 = a3;
  v18 = a5;
  v19 = a8;
  v32 = a10;
  v20 = a13;
  v21 = objc_opt_self();
  if (v17)
  {
    if (!a9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v31 = [MEMORY[0x277CCA890] currentHandler];
  [v31 handleFailureInMethod:sel__insertSourceWithUUID_logicalSourceID_name_options_isCurrentDevice_productType_deleted_modificationDate_provenance_syncIdentity_transaction_error_ object:v21 file:@"HDSourceEntity.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"UUID != nil", v32}];

  if (a9)
  {
LABEL_3:

    a6 = 0;
    v19 = &stru_283BF39C8;
    v18 = &stru_283BF39C8;
  }

LABEL_4:
  v22 = [v20 databaseForEntityClass:v21];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __164__HDSourceEntity__insertSourceWithUUID_logicalSourceID_name_options_isCurrentDevice_productType_deleted_modificationDate_provenance_syncIdentity_transaction_error___block_invoke;
  v46[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v46[4] = v21;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __164__HDSourceEntity__insertSourceWithUUID_logicalSourceID_name_options_isCurrentDevice_productType_deleted_modificationDate_provenance_syncIdentity_transaction_error___block_invoke_2;
  v35[3] = &unk_278619890;
  v23 = v17;
  v36 = v23;
  v40 = a4;
  v24 = v18;
  v37 = v24;
  v41 = a6;
  v44 = a7;
  v25 = v19;
  v38 = v25;
  v45 = a9;
  v26 = v32;
  v39 = v26;
  v42 = a11;
  v43 = a12;
  v27 = 0;
  if ([v22 executeCachedStatementForKey:&_insertSourceWithUUID_logicalSourceID_name_options_isCurrentDevice_productType_deleted_modificationDate_provenance_syncIdentity_transaction_error__insertKey error:a14 SQLGenerator:v46 bindingHandler:v35 enumerationHandler:0])
  {
    notify_post(*MEMORY[0x277CCE570]);
    v28 = [HDSourceEntity alloc];
    v29 = [v22 lastInsertRowID];
    v27 = -[HDSQLiteEntity initWithPersistentID:](v28, "initWithPersistentID:", [v29 longLongValue]);
  }

  return v27;
}

id __164__HDSourceEntity__insertSourceWithUUID_logicalSourceID_name_options_isCurrentDevice_productType_deleted_modificationDate_provenance_syncIdentity_transaction_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [*(a1 + 32) disambiguatedDatabaseTable];
  v5 = [v2 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, COALESCE((SELECT MAX(%@) + 1 FROM %@), 1), ?)", v3, @"uuid", @"logical_source_id", @"name", @"source_options", @"local_device", @"product_type", @"deleted", @"mod_date", @"provenance", @"sync_anchor", @"sync_identity", @"sync_anchor", v4, 0];

  return v5;
}

uint64_t __164__HDSourceEntity__insertSourceWithUUID_logicalSourceID_name_options_isCurrentDevice_productType_deleted_modificationDate_provenance_syncIdentity_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, *(a1 + 64));
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 4, *(a1 + 72));
  sqlite3_bind_int(a2, 5, *(a1 + 96));
  if (*(a1 + 48))
  {
    v6 = *(a1 + 48);
  }

  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int(a2, 7, *(a1 + 97));
  if (*(a1 + 56))
  {
    HDSQLiteBindFoundationValueToStatement();
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    HDSQLiteBindFoundationValueToStatement();
  }

  sqlite3_bind_int64(a2, 9, *(a1 + 80));
  v8 = *(a1 + 88);

  return sqlite3_bind_int64(a2, 10, v8);
}

+ (id)sourceForLocalDeviceWithDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = HDSourceEntityPredicateForLocalDeviceSource();
  v8 = [(HDSourceEntity *)a1 _firstSourceWithPredicate:v7 database:v6 error:a4];

  return v8;
}

+ (id)_firstSourceWithPredicate:(void *)a3 database:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDSourceEntity__firstSourceWithPredicate_database_error___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v8;
  if (qword_280D67B30 != -1)
  {
    dispatch_once(&qword_280D67B30, block);
  }

  v9 = [v8 firstInDatabase:v6 predicate:v7 orderingTerms:_MergedGlobals_197 error:a4];

  return v9;
}

+ (id)sourceForLogicalSourceID:(id)a3 localDeviceBundleIdentifier:(BOOL)a4 localOnly:(BOOL)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__42;
  v29 = __Block_byref_object_dispose__42;
  v30 = 0;
  v14 = [v13 databaseForEntityClass:a1];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__HDSourceEntity_sourceForLogicalSourceID_localDeviceBundleIdentifier_localOnly_transaction_error___block_invoke;
  v24[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v24[4] = a1;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__HDSourceEntity_sourceForLogicalSourceID_localDeviceBundleIdentifier_localOnly_transaction_error___block_invoke_2;
  v20[3] = &unk_2786198B8;
  v22 = a5;
  v23 = a4;
  v15 = v12;
  v21 = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__HDSourceEntity_sourceForLogicalSourceID_localDeviceBundleIdentifier_localOnly_transaction_error___block_invoke_3;
  v19[3] = &unk_278614620;
  v19[4] = &v25;
  if ([v14 executeCachedStatementForKey:&sourceForLogicalSourceID_localDeviceBundleIdentifier_localOnly_transaction_error__lookupKey error:a7 SQLGenerator:v24 bindingHandler:v20 enumerationHandler:v19])
  {
    v16 = v26[5];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  _Block_object_dispose(&v25, 8);

  return v17;
}

id __99__HDSourceEntity_sourceForLogicalSourceID_localDeviceBundleIdentifier_localOnly_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT ROWID FROM %@ WHERE ((%@ = ? AND ? = 0) OR (%@ = 1 AND ? = 1)) AND (%@ = ? OR 0 = ?) ORDER BY %@ ASC", v2, @"logical_source_id", @"local_device", @"provenance", @"provenance"];

  return v3;
}

uint64_t __99__HDSourceEntity_sourceForLogicalSourceID_localDeviceBundleIdentifier_localOnly_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, v4);
  sqlite3_bind_int64(a2, 3, v4);
  sqlite3_bind_int64(a2, 4, 0);

  return sqlite3_bind_int64(a2, 5, v3);
}

uint64_t __99__HDSourceEntity_sourceForLogicalSourceID_localDeviceBundleIdentifier_localOnly_transaction_error___block_invoke_3(uint64_t a1)
{
  v2 = [(HDSQLiteEntity *)[HDSourceEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

+ (id)firstSourceWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__42;
  v23 = __Block_byref_object_dispose__42;
  v24 = 0;
  v10 = [v8 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__HDSourceEntity__firstSourceWithPredicate_profile_error___block_invoke;
  v15[3] = &unk_2786169D8;
  v17 = &v19;
  v18 = v9;
  v11 = v7;
  v16 = v11;
  LODWORD(a5) = [v9 performReadTransactionWithHealthDatabase:v10 error:a5 block:v15];

  if (a5)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

+ (id)sourcesWithPredicate:(id)a3 includeDeleted:(BOOL)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = objc_opt_self();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__42;
  v26 = __Block_byref_object_dispose__42;
  v27 = 0;
  v12 = [v10 database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__HDSourceEntity__sourcesWithPredicate_includeDeleted_profile_error___block_invoke;
  v17[3] = &unk_278619930;
  v19 = &v22;
  v20 = v11;
  v13 = v9;
  v18 = v13;
  v21 = a4;
  LODWORD(a6) = [v11 performReadTransactionWithHealthDatabase:v12 error:a6 block:v17];

  if (a6)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);

  return v15;
}

+ (id)sourcesWithPredicate:(id)a3 orderingTerms:(id)a4 includeDeleted:(BOOL)a5 database:(id)a6 error:(id *)a7
{
  v28[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (!a5)
  {
    v15 = _HDSourceEntityPredicateForNotDeletedWithPredicate(v12);

    v12 = v15;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [a1 queryWithDatabase:v14 predicate:v12 limit:0 orderingTerms:v13 groupBy:0];
  v28[0] = @"logical_sources.bundle_id";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__HDSourceEntity_sourcesWithPredicate_orderingTerms_includeDeleted_database_error___block_invoke;
  v25[3] = &unk_2786169B0;
  v26 = v16;
  v27 = a1;
  v19 = v16;
  v20 = [v17 enumeratePersistentIDsAndProperties:v18 error:a7 enumerationHandler:v25];

  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __83__HDSourceEntity_sourcesWithPredicate_orderingTerms_includeDeleted_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 40)) initWithPersistentID:a2];
  [*(a1 + 32) addObject:v3];

  return 1;
}

+ (BOOL)enumerateBundleIdentifiersForSourcesWithPredicate:(id)a3 database:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a4;
  v12 = _HDSourceEntityPredicateForNotDeletedWithPredicate(a3);
  v13 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v13 setEntityClass:a1];
  [v13 setPredicate:v12];
  [v13 setReturnsDistinctEntities:1];
  v14 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v11 descriptor:v13];

  v21[0] = @"logical_sources.bundle_id";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __102__HDSourceEntity_enumerateBundleIdentifiersForSourcesWithPredicate_database_error_enumerationHandler___block_invoke;
  v19[3] = &unk_2786145A8;
  v20 = v10;
  v16 = v10;
  LOBYTE(a5) = [v14 enumerateProperties:v15 error:a5 enumerationHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return a5;
}

uint64_t __102__HDSourceEntity_enumerateBundleIdentifiersForSourcesWithPredicate_database_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v1 = HKWithAutoreleasePool();

  return v1;
}

uint64_t __102__HDSourceEntity_enumerateBundleIdentifiersForSourcesWithPredicate_database_error_enumerationHandler___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x22AAC6C90](*(a1 + 40), 0);
  if ([v2 length])
  {
    v3 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (BOOL)enumerateBundleIdentifiersForSourcesForUUIDData:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__42;
  v33 = __Block_byref_object_dispose__42;
  v34 = 0;
  v13 = [v11 databaseForEntityClass:a1];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __103__HDSourceEntity_enumerateBundleIdentifiersForSourcesForUUIDData_transaction_error_enumerationHandler___block_invoke;
  v21[3] = &unk_278619908;
  v24 = &v35;
  v14 = v13;
  v27 = a1;
  v22 = v14;
  v25 = &v29;
  v15 = v12;
  v23 = v15;
  v26 = v28;
  [v10 hk_enumerateUUIDBytesUsingBlock:v21];
  v16 = *(v36 + 24);
  if ((v16 & 1) == 0)
  {
    v17 = v30[5];
    v18 = v17;
    if (v17)
    {
      if (a5)
      {
        v19 = v17;
        *a5 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  return v16;
}

void __103__HDSourceEntity_enumerateBundleIdentifiersForSourcesForUUIDData_transaction_error_enumerationHandler___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__42;
  v24 = __Block_byref_object_dispose__42;
  v25 = 0;
  v6 = a1[4];
  v17[4] = a2;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __103__HDSourceEntity_enumerateBundleIdentifiersForSourcesForUUIDData_transaction_error_enumerationHandler___block_invoke_2;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = a1[9];
  v19 = 0;
  v16[4] = &v20;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__HDSourceEntity_enumerateBundleIdentifiersForSourcesForUUIDData_transaction_error_enumerationHandler___block_invoke_3;
  v17[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __103__HDSourceEntity_enumerateBundleIdentifiersForSourcesForUUIDData_transaction_error_enumerationHandler___block_invoke_4;
  v16[3] = &unk_278614620;
  v7 = [v6 executeCachedStatementForKey:&_SourceEntityLogicalSourceOwnerBundleIdentifier_block_invoke_lookupKey error:&v19 SQLGenerator:v18 bindingHandler:v17 enumerationHandler:v16];
  v8 = v19;
  v9 = v19;
  *(*(a1[6] + 8) + 24) = v7;
  if (*(*(a1[6] + 8) + 24))
  {
    if (v21[5])
    {
      v10 = *(*(a1[8] + 8) + 24);
      (*(a1[5] + 16))();
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = a1[9];
        v14 = objc_opt_class();
        *buf = 138543874;
        v27 = v14;
        v28 = 1042;
        v29 = 16;
        v30 = 2098;
        v31 = a2;
        v15 = v14;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: failed to find source for UUID %{public, uuid}.16P", buf, 0x1Cu);
      }
    }

    ++*(*(a1[8] + 8) + 24);
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v8);
    *a3 = 1;
  }

  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x277D85DE8];
}

id __103__HDSourceEntity_enumerateBundleIdentifiersForSourcesForUUIDData_transaction_error_enumerationHandler___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = +[(HDSQLiteSchemaEntity *)HDLogicalSourceEntity];
  v5 = [*(a1 + 32) disambiguatedDatabaseTable];
  v6 = +[(HDSQLiteSchemaEntity *)HDLogicalSourceEntity];
  v7 = *MEMORY[0x277D10A40];
  v8 = [*(a1 + 32) disambiguatedDatabaseTable];
  v9 = [*(a1 + 32) disambiguatedDatabaseTable];
  v10 = [v2 stringWithFormat:@"SELECT %@ FROM %@ JOIN %@ ON %@.%@ = %@.%@ WHERE %@.%@ = ? AND %@.%@ = 0", @"logical_sources.bundle_id", v3, v4, v5, @"logical_source_id", v6, v7, v8, @"uuid", v9, @"deleted", 0];

  return v10;
}

uint64_t __103__HDSourceEntity_enumerateBundleIdentifiersForSourcesForUUIDData_transaction_error_enumerationHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C90](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

BOOL __69__HDSourceEntity__sourcesWithPredicate_includeDeleted_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = [a2 databaseForEntityClass:v5];
  v9 = [v5 sourcesWithPredicate:v6 orderingTerms:0 includeDeleted:v7 database:v8 error:a3];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

BOOL __58__HDSourceEntity__firstSourceWithPredicate_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:a1[6]];
  v6 = a1[6];
  v7 = a1[4];
  v16 = 0;
  v8 = [(HDSourceEntity *)v6 _firstSourceWithPredicate:v7 database:v5 error:&v16];
  v9 = v16;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  if (*(*(a1[5] + 8) + 40))
  {
    v12 = 1;
  }

  else
  {
    v13 = v9;
    v12 = v13 == 0;
    if (v13)
    {
      if (a3)
      {
        v14 = v13;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v12;
}

void __59__HDSourceEntity__firstSourceWithPredicate_database_error___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:*(a1 + 32) ascending:1];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = _MergedGlobals_197;
  _MergedGlobals_197 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)sourceWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__42;
  v21 = __Block_byref_object_dispose__42;
  v22 = 0;
  v7 = objc_opt_class();
  v8 = [v6 database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__HDSourceEntity_sourceWithProfile_error___block_invoke;
  v13[3] = &unk_278615F88;
  v9 = v6;
  v14 = v9;
  v15 = self;
  v16 = &v17;
  LODWORD(a4) = [v7 performReadTransactionWithHealthDatabase:v8 error:a4 block:v13];

  if (a4)
  {
    v10 = v18[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __42__HDSourceEntity_sourceWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [HDSourceEntity entityEncoderForProfile:v5 transaction:v6 purpose:1 encodingOptions:0 authorizationFilter:0];
  v8 = [v6 databaseForEntity:*(a1 + 40)];

  v9 = *(a1 + 40);
  v10 = [v7 orderedProperties];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__HDSourceEntity_sourceWithProfile_error___block_invoke_2;
  v14[3] = &unk_278619958;
  v15 = v7;
  v16 = *(a1 + 40);
  v11 = v7;
  v12 = [v9 getValuesForProperties:v10 database:v8 error:a3 handler:v14];

  return v12;
}

void __42__HDSourceEntity_sourceWithProfile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) persistentID];
  v17 = 0;
  v7 = [v5 objectForPersistentID:v6 row:a3 error:&v17];
  v8 = v17;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = v11;
      v15 = objc_opt_class();
      *buf = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v8;
      v16 = v15;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to instantiate source: %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)codableSourceWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__42;
  v19 = __Block_byref_object_dispose__42;
  v20 = 0;
  v7 = [v6 database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HDSourceEntity_codableSourceWithProfile_error___block_invoke;
  v11[3] = &unk_278619980;
  v8 = v6;
  v13 = self;
  v14 = &v15;
  v12 = v8;
  [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v7 error:a4 block:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __49__HDSourceEntity_codableSourceWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [HDSourceEntity entityEncoderForProfile:v5 transaction:v6 purpose:0 encodingOptions:0 authorizationFilter:0];
  v8 = [*(a1 + 40) codableSourceWithEncoder:v7 transaction:v6 profile:*(a1 + 32) error:a3];

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 1;
}

- (id)codableSourceWithEncoder:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([v11 purpose])
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"HDSourceEntity.m" lineNumber:550 description:{@"Invalid parameter not satisfying: %@", @"[entityEncoder purpose] == HDEntityEncodingPurposeCodableObjectCreation"}];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__42;
  v41 = __Block_byref_object_dispose__42;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v14 = [v11 orderedProperties];
  v15 = [v11 profile];
  v16 = [v15 database];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__HDSourceEntity_codableSourceWithEncoder_transaction_profile_error___block_invoke;
  v28[3] = &unk_2786199A8;
  v31 = &v33;
  v32 = &v37;
  v17 = v11;
  v29 = v17;
  v30 = self;
  v18 = [(HDHealthEntity *)self getValuesForProperties:v14 healthDatabase:v16 error:a6 handler:v28];

  v19 = [v13 syncIdentityManager];
  v20 = [v19 identityForEntityID:v34[3] transaction:v12 error:a6];

  if (v20)
  {
    v21 = v38[5];
    v22 = [v20 identity];
    v23 = [v22 codableSyncIdentity];
    [v21 setSyncIdentity:v23];

    if (v18)
    {
      v24 = v38[5];
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v25;
}

uint64_t __69__HDSourceEntity_codableSourceWithEncoder_transaction_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  v5 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(*(a1 + 40) row:"persistentID") error:{a3, 0}];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

- (id)sourceUUIDWithHealthDatabase:(id)a3 error:(id *)a4
{
  v4 = [(HDHealthEntity *)self valueForProperty:@"uuid" healthDatabase:a3 error:a4];
  v5 = _HDUUIDForSQLiteValue();

  return v5;
}

- (id)sourceUUIDWithProfile:(id)a3 error:(id *)a4
{
  v6 = [a3 database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"uuid" healthDatabase:v6 error:a4];
  v8 = _HDUUIDForSQLiteValue();

  return v8;
}

- (BOOL)setName:(id)a3 profile:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a4;
  v10 = a3;
  v11 = [v8 arrayWithObjects:v16 count:1];
  v15 = @"name";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];

  LOBYTE(a5) = [(HDSourceEntity *)self _updateValues:v11 forProperties:v12 profile:v9 didUpdate:0 error:a5];
  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

- (uint64_t)_updateValues:(void *)a3 forProperties:(void *)a4 profile:(uint64_t)a5 didUpdate:(uint64_t)a6 error:
{
  v57 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (a1)
  {
    v14 = [v11 count];
    if (v14 != [v12 count])
    {
      v38 = [MEMORY[0x277CCA890] currentHandler];
      [v38 handleFailureInMethod:sel__updateValues_forProperties_profile_didUpdate_error_ object:a1 file:@"HDSourceEntity.m" lineNumber:633 description:{@"Invalid parameter not satisfying: %@", @"values.count == properties.count"}];
    }

    if ([v12 count])
    {
      v40 = a5;
      v41 = a6;
      v15 = [v13 syncIdentityManager];
      v16 = [v15 currentSyncIdentity];
      v17 = [v16 entity];
      v39 = [v17 persistentID];

      v18 = MEMORY[0x277CCAB68];
      v19 = [objc_opt_class() disambiguatedDatabaseTable];
      v20 = [objc_opt_class() disambiguatedDatabaseTable];
      v21 = [v18 stringWithFormat:@"UPDATE %@ SET %@ = COALESCE((SELECT MAX(%@) + 1 FROM %@), 1), %@ = ?, %@ = ?", v19, @"sync_anchor", @"sync_anchor", v20, @"mod_date", @"sync_identity", 0];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v22 = v12;
      v23 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v52;
        do
        {
          v26 = 0;
          do
          {
            if (*v52 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [v21 appendFormat:@", %@ = ?", *(*(&v51 + 1) + 8 * v26++)];
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v24);
      }

      objc_msgSend(v21, "appendFormat:", @" WHERE %@ = ? AND (0"), *MEMORY[0x277D10A40];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v27 = v22;
      v28 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v48;
        do
        {
          v31 = 0;
          do
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [v21 appendFormat:@" OR %@ != ?", *(*(&v47 + 1) + 8 * v31++)];
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v29);
      }

      [v21 appendString:@""]);
      v32 = objc_opt_class();
      v33 = [v13 database];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __70__HDSourceEntity__updateValues_forProperties_profile_didUpdate_error___block_invoke;
      v42[3] = &unk_2786145F8;
      v42[4] = a1;
      v43 = v21;
      v45 = v39;
      v44 = v11;
      v46 = v40;
      v34 = v21;
      v35 = [v32 performWriteTransactionWithHealthDatabase:v33 error:v41 block:v42];
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)setOptions:(unint64_t)a3 profile:(id)a4 didUpdate:(BOOL *)a5 error:(id *)a6
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCABB0];
  v11 = a4;
  v12 = [v10 numberWithUnsignedLongLong:a3];
  v18[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v17 = @"source_options";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  LOBYTE(a6) = [(HDSourceEntity *)self _updateValues:v13 forProperties:v14 profile:v11 didUpdate:a5 error:a6];

  v15 = *MEMORY[0x277D85DE8];
  return a6;
}

- (BOOL)adoptAsLocalSourceWithLogicalSourceID:(id)a3 UUID:(id)a4 name:(id)a5 productType:(id)a6 profile:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = objc_opt_class();
  v20 = [v18 database];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__HDSourceEntity_adoptAsLocalSourceWithLogicalSourceID_UUID_name_productType_profile_error___block_invoke;
  v27[3] = &unk_2786199D0;
  v27[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  LOBYTE(a8) = [v19 performWriteTransactionWithHealthDatabase:v20 error:a8 block:v27];

  return a8;
}

uint64_t __92__HDSourceEntity_adoptAsLocalSourceWithLogicalSourceID_UUID_name_productType_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [objc_opt_class() disambiguatedDatabaseTable];
  v9 = [v5 stringWithFormat:@"UPDATE %@ SET %@=0", v8, @"local_device"];

  v10 = [v7 databaseForEntity:*(a1 + 32)];

  LODWORD(v7) = [v10 executeUncachedSQL:v9 error:a3];
  if (v7)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v20[0] = *(a1 + 40);
    v20[1] = v12;
    v20[2] = &unk_283CB0948;
    v20[3] = v13;
    v20[4] = *(a1 + 64);
    v20[5] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];
    v19[0] = @"logical_source_id";
    v19[1] = @"uuid";
    v19[2] = @"provenance";
    v19[3] = @"name";
    v19[4] = @"product_type";
    v19[5] = @"local_device";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:6];
    v16 = [(HDSourceEntity *)v11 _updateValues:v14 forProperties:v15 profile:*(a1 + 72) didUpdate:0 error:a3];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __70__HDSourceEntity__updateValues_forProperties_profile_didUpdate_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntity:*(a1 + 32)];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HDSourceEntity__updateValues_forProperties_profile_didUpdate_error___block_invoke_2;
  v12[3] = &unk_2786199F8;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = *(a1 + 32);
  v13 = v8;
  v14 = v9;
  v10 = [v5 executeSQL:v7 error:a3 bindingHandler:v12 enumerationHandler:0];
  if (v10 && *(a1 + 64))
  {
    **(a1 + 64) = [v5 getChangesCount] > 0;
  }

  return v10;
}

uint64_t __70__HDSourceEntity__updateValues_forProperties_profile_didUpdate_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_double(a2, 1, Current);
  sqlite3_bind_int64(a2, 2, *(a1 + 48));
  v5 = *(a1 + 32);
  v6 = HDSQLiteBindFoundationValuesToStatement();
  sqlite3_bind_int64(a2, v6, [*(a1 + 40) persistentID]);
  v7 = *(a1 + 32);

  return HDSQLiteBindFoundationValuesToStatement();
}

- (id)sourceBundleIdentifierInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__42;
  v17 = __Block_byref_object_dispose__42;
  v18 = 0;
  v11[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__HDSourceEntity_sourceBundleIdentifierInDatabase_error___block_invoke;
  v12[3] = &unk_278615C80;
  v12[4] = self;
  v10[4] = &v13;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HDSourceEntity_sourceBundleIdentifierInDatabase_error___block_invoke_2;
  v11[3] = &unk_278614860;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HDSourceEntity_sourceBundleIdentifierInDatabase_error___block_invoke_3;
  v10[3] = &unk_278614620;
  if ([v6 executeCachedStatementForKey:&sourceBundleIdentifierInDatabase_error__lookupKey error:a4 SQLGenerator:v12 bindingHandler:v11 enumerationHandler:v10])
  {
    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

id __57__HDSourceEntity_sourceBundleIdentifierInDatabase_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() disambiguatedDatabaseTable];
  v5 = +[(HDSQLiteSchemaEntity *)HDLogicalSourceEntity];
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() disambiguatedDatabaseTable];
  v8 = +[(HDSQLiteSchemaEntity *)HDLogicalSourceEntity];
  v9 = *MEMORY[0x277D10A40];
  v10 = *(a1 + 32);
  v11 = [objc_opt_class() disambiguatedDatabaseTable];
  v12 = [v2 stringWithFormat:@"SELECT %@ FROM %@ JOIN %@ ON %@.%@ = %@.%@ WHERE %@.%@ = ?", @"logical_sources.bundle_id", v4, v5, v7, @"logical_source_id", v8, v9, v11, v9, 0];

  return v12;
}

uint64_t __57__HDSourceEntity_sourceBundleIdentifierInDatabase_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __57__HDSourceEntity_sourceBundleIdentifierInDatabase_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C90](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (BOOL)deleteSourceWithTombstoneLogicalSourceID:(int64_t)a3 syncIdentity:(int64_t)a4 database:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__HDSourceEntity_deleteSourceWithTombstoneLogicalSourceID_syncIdentity_database_transaction_error___block_invoke;
  v10[3] = &unk_278615C80;
  v10[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__HDSourceEntity_deleteSourceWithTombstoneLogicalSourceID_syncIdentity_database_transaction_error___block_invoke_2;
  v9[3] = &unk_278619A20;
  v9[5] = a3;
  v9[6] = a4;
  v9[4] = self;
  v7 = [a5 executeCachedStatementForKey:&deleteSourceWithTombstoneLogicalSourceID_syncIdentity_database_transaction_error__updateKey error:a7 SQLGenerator:v10 bindingHandler:v9 enumerationHandler:&__block_literal_global_47];
  if (v7)
  {
    notify_post(*MEMORY[0x277CCE570]);
  }

  return v7;
}

id __99__HDSourceEntity_deleteSourceWithTombstoneLogicalSourceID_syncIdentity_database_transaction_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() disambiguatedDatabaseTable];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() disambiguatedDatabaseTable];
  v7 = [v2 stringWithFormat:@"UPDATE %@ SET %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = '', %@ = 0, %@ = 0, %@ = '', %@ = 1, %@ = (SELECT MAX(%@) + 1 FROM %@) WHERE %@ = ? AND %@ == 0", v4, @"mod_date", @"provenance", @"logical_source_id", @"sync_identity", @"name", @"source_options", @"local_device", @"product_type", @"deleted", @"sync_anchor", @"sync_anchor", v6, *MEMORY[0x277D10A40], @"deleted", 0];

  return v7;
}

uint64_t __99__HDSourceEntity_deleteSourceWithTombstoneLogicalSourceID_syncIdentity_database_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_double(a2, 1, Current);
  sqlite3_bind_int64(a2, 2, 0);
  sqlite3_bind_int64(a2, 3, *(a1 + 40));
  sqlite3_bind_int64(a2, 4, *(a1 + 48));
  v5 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 5, v5);
}

- (id)unitTest_logicalSourceEntityWithHealthDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__42;
  v15 = __Block_byref_object_dispose__42;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HDSourceEntity_unitTest_logicalSourceEntityWithHealthDatabase_error___block_invoke;
  v10[3] = &unk_278619398;
  v10[4] = self;
  v10[5] = &v11;
  if ([(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v6 error:a4 block:v10])
  {
    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

BOOL __71__HDSourceEntity_unitTest_logicalSourceEntityWithHealthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 foreignKeyEntity:objc_opt_class() forProperty:@"logical_source_id" transaction:v6 error:a3];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

@end