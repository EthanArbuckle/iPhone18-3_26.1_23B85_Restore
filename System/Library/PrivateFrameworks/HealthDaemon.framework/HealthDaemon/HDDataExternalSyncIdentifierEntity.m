@interface HDDataExternalSyncIdentifierEntity
+ (BOOL)enumerateValuesWithProfile:(id)a3 error:(id *)a4 handler:(id)a5;
+ (BOOL)insertSyncIdentifierWithProfile:(id)a3 database:(id)a4 objectID:(int64_t)a5 localSourceID:(int64_t)a6 externalSyncObjectCode:(int64_t)a7 syncIdentifier:(id)a8 syncVersion:(id)a9 deleted:(BOOL)a10 errorOut:(id *)a11;
+ (BOOL)populateSyncInfoForLocalSourceID:(int64_t)a3 externalSyncObjectCode:(int64_t)a4 syncIdentifier:(id)a5 deleted:(BOOL)a6 database:(id)a7 objectIDOut:(id *)a8 errorOut:(id *)a9;
+ (BOOL)populateSyncInfoForObjectID:(int64_t)a3 database:(id)a4 localSourceIDOut:(int64_t *)a5 externalSyncObjectCodeOut:(int64_t *)a6 syncIdentifierOut:(id *)a7 syncVersionOut:(id *)a8 deletedOut:(BOOL *)a9 errorOut:(id *)a10;
+ (id)foreignKeys;
+ (id)indices;
@end

@implementation HDDataExternalSyncIdentifierEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"object_id";
  v2 = +[HDDataEntity defaultForeignKey];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)indices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v9[0] = @"source_id";
  v9[1] = @"object_code";
  v9[2] = @"sid";
  v9[3] = @"deleted";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v5 = [v2 initWithEntity:v3 name:@"source_object_code_sid_deleted" columns:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)populateSyncInfoForLocalSourceID:(int64_t)a3 externalSyncObjectCode:(int64_t)a4 syncIdentifier:(id)a5 deleted:(BOOL)a6 database:(id)a7 objectIDOut:(id *)a8 errorOut:(id *)a9
{
  v15 = a5;
  v16 = a7;
  if (!v16)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"HDDataExternalSyncIdentifierEntity.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__138;
  v30 = __Block_byref_object_dispose__138;
  v31 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __147__HDDataExternalSyncIdentifierEntity_populateSyncInfoForLocalSourceID_externalSyncObjectCode_syncIdentifier_deleted_database_objectIDOut_errorOut___block_invoke;
  v22[3] = &unk_278619A20;
  v24 = a3;
  v25 = a4;
  v17 = v15;
  v23 = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __147__HDDataExternalSyncIdentifierEntity_populateSyncInfoForLocalSourceID_externalSyncObjectCode_syncIdentifier_deleted_database_objectIDOut_errorOut___block_invoke_2;
  v21[3] = &unk_278614620;
  v21[4] = &v26;
  v18 = [v16 executeSQL:@"SELECT object_id FROM external_sync_ids WHERE source_id = ? AND object_code = ? AND sid = ? AND NOT deleted" error:a9 bindingHandler:v22 enumerationHandler:v21];
  *a8 = v27[5];

  _Block_object_dispose(&v26, 8);
  return v18;
}

uint64_t __147__HDDataExternalSyncIdentifierEntity_populateSyncInfoForLocalSourceID_externalSyncObjectCode_syncIdentifier_deleted_database_objectIDOut_errorOut___block_invoke(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[5]);
  sqlite3_bind_int64(a2, 2, a1[6]);
  v4 = a1[4];

  return HDSQLiteBindFoundationValueToStatement();
}

uint64_t __147__HDDataExternalSyncIdentifierEntity_populateSyncInfoForLocalSourceID_externalSyncObjectCode_syncIdentifier_deleted_database_objectIDOut_errorOut___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (BOOL)populateSyncInfoForObjectID:(int64_t)a3 database:(id)a4 localSourceIDOut:(int64_t *)a5 externalSyncObjectCodeOut:(int64_t *)a6 syncIdentifierOut:(id *)a7 syncVersionOut:(id *)a8 deletedOut:(BOOL *)a9 errorOut:(id *)a10
{
  v17 = a4;
  if (!v17)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"HDDataExternalSyncIdentifierEntity.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__138;
  v37 = __Block_byref_object_dispose__138;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__138;
  v31 = __Block_byref_object_dispose__138;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __171__HDDataExternalSyncIdentifierEntity_populateSyncInfoForObjectID_database_localSourceIDOut_externalSyncObjectCodeOut_syncIdentifierOut_syncVersionOut_deletedOut_errorOut___block_invoke;
  v22[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v22[4] = a3;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __171__HDDataExternalSyncIdentifierEntity_populateSyncInfoForObjectID_database_localSourceIDOut_externalSyncObjectCodeOut_syncIdentifierOut_syncVersionOut_deletedOut_errorOut___block_invoke_2;
  v21[3] = &unk_278626100;
  v21[4] = &v43;
  v21[5] = &v39;
  v21[6] = &v33;
  v21[7] = &v27;
  v21[8] = &v23;
  v18 = [v17 executeSQL:@"SELECT source_id error:object_code bindingHandler:sid enumerationHandler:{version, deleted FROM external_sync_ids WHERE object_id = ?", a10, v22, v21}];
  if (a5)
  {
    *a5 = v44[3];
  }

  if (a6)
  {
    *a6 = v40[3];
  }

  if (a9)
  {
    *a9 = *(v24 + 24);
  }

  *a7 = v34[5];
  *a8 = v28[5];
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  return v18;
}

uint64_t __171__HDDataExternalSyncIdentifierEntity_populateSyncInfoForObjectID_database_localSourceIDOut_externalSyncObjectCodeOut_syncIdentifierOut_syncVersionOut_deletedOut_errorOut___block_invoke_2(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[5] + 8) + 24) = HDSQLiteColumnAsInt64();
  v4 = MEMORY[0x22AAC6C90](a2, 2);
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = MEMORY[0x22AAC6C80](a2, 3);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *(*(a1[8] + 8) + 24) = MEMORY[0x22AAC6C10](a2, 4);
  return 0;
}

+ (BOOL)insertSyncIdentifierWithProfile:(id)a3 database:(id)a4 objectID:(int64_t)a5 localSourceID:(int64_t)a6 externalSyncObjectCode:(int64_t)a7 syncIdentifier:(id)a8 syncVersion:(id)a9 deleted:(BOOL)a10 errorOut:(id *)a11
{
  v27 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  if (!v19)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"HDDataExternalSyncIdentifierEntity.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"syncIdentifier != nil"}];
  }

  if (!v20)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"HDDataExternalSyncIdentifierEntity.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"syncVersion != nil"}];
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __169__HDDataExternalSyncIdentifierEntity_insertSyncIdentifierWithProfile_database_objectID_localSourceID_externalSyncObjectCode_syncIdentifier_syncVersion_deleted_errorOut___block_invoke;
  v28[3] = &unk_278626128;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v29 = v19;
  v30 = v20;
  v34 = a10;
  v21 = v20;
  v22 = v19;
  v23 = [v18 executeSQL:@"INSERT INTO external_sync_ids (object_id error:source_id bindingHandler:object_code enumerationHandler:{sid, version, deleted) VALUES (?, ?, ?, ?, ?, ?)", a11, v28, 0}];

  return v23;
}

uint64_t __169__HDDataExternalSyncIdentifierEntity_insertSyncIdentifierWithProfile_database_objectID_localSourceID_externalSyncObjectCode_syncIdentifier_syncVersion_deleted_errorOut___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 48));
  sqlite3_bind_int64(a2, 2, *(a1 + 56));
  sqlite3_bind_int64(a2, 3, *(a1 + 64));
  v4 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  v5 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v6 = *(a1 + 72);

  return sqlite3_bind_int(a2, 6, v6);
}

+ (BOOL)enumerateValuesWithProfile:(id)a3 error:(id *)a4 handler:(id)a5
{
  v17[6] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v17[0] = @"object_id";
  v17[1] = @"source_id";
  v17[2] = @"object_code";
  v17[3] = @"sid";
  v17[4] = @"version";
  v17[5] = @"deleted";
  v8 = MEMORY[0x277CBEA60];
  v9 = a3;
  v10 = [v8 arrayWithObjects:v17 count:6];
  v11 = [v9 database];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HDDataExternalSyncIdentifierEntity_enumerateValuesWithProfile_error_handler___block_invoke;
  v15[3] = &unk_278616A78;
  v16 = v7;
  v12 = v7;
  LOBYTE(a4) = [(HDHealthEntity *)HDDataExternalSyncIdentifierEntity enumerateProperties:v10 withPredicate:0 healthDatabase:v11 error:a4 enumerationHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return a4;
}

uint64_t __79__HDDataExternalSyncIdentifierEntity_enumerateValuesWithProfile_error_handler___block_invoke(uint64_t a1)
{
  HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsInt64();
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = HDSQLiteColumnWithNameAsNumber();
  HDSQLiteColumnWithNameAsBoolean();
  (*(*(a1 + 32) + 16))();

  return 1;
}

@end