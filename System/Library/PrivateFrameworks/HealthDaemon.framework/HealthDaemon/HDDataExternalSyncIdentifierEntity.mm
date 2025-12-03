@interface HDDataExternalSyncIdentifierEntity
+ (BOOL)enumerateValuesWithProfile:(id)profile error:(id *)error handler:(id)handler;
+ (BOOL)insertSyncIdentifierWithProfile:(id)profile database:(id)database objectID:(int64_t)d localSourceID:(int64_t)iD externalSyncObjectCode:(int64_t)code syncIdentifier:(id)identifier syncVersion:(id)version deleted:(BOOL)self0 errorOut:(id *)self1;
+ (BOOL)populateSyncInfoForLocalSourceID:(int64_t)d externalSyncObjectCode:(int64_t)code syncIdentifier:(id)identifier deleted:(BOOL)deleted database:(id)database objectIDOut:(id *)out errorOut:(id *)errorOut;
+ (BOOL)populateSyncInfoForObjectID:(int64_t)d database:(id)database localSourceIDOut:(int64_t *)out externalSyncObjectCodeOut:(int64_t *)codeOut syncIdentifierOut:(id *)identifierOut syncVersionOut:(id *)versionOut deletedOut:(BOOL *)deletedOut errorOut:(id *)self0;
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

+ (BOOL)populateSyncInfoForLocalSourceID:(int64_t)d externalSyncObjectCode:(int64_t)code syncIdentifier:(id)identifier deleted:(BOOL)deleted database:(id)database objectIDOut:(id *)out errorOut:(id *)errorOut
{
  identifierCopy = identifier;
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataExternalSyncIdentifierEntity.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
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
  dCopy = d;
  codeCopy = code;
  v17 = identifierCopy;
  v23 = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __147__HDDataExternalSyncIdentifierEntity_populateSyncInfoForLocalSourceID_externalSyncObjectCode_syncIdentifier_deleted_database_objectIDOut_errorOut___block_invoke_2;
  v21[3] = &unk_278614620;
  v21[4] = &v26;
  v18 = [databaseCopy executeSQL:@"SELECT object_id FROM external_sync_ids WHERE source_id = ? AND object_code = ? AND sid = ? AND NOT deleted" error:errorOut bindingHandler:v22 enumerationHandler:v21];
  *out = v27[5];

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

+ (BOOL)populateSyncInfoForObjectID:(int64_t)d database:(id)database localSourceIDOut:(int64_t *)out externalSyncObjectCodeOut:(int64_t *)codeOut syncIdentifierOut:(id *)identifierOut syncVersionOut:(id *)versionOut deletedOut:(BOOL *)deletedOut errorOut:(id *)self0
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataExternalSyncIdentifierEntity.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
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
  v22[4] = d;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __171__HDDataExternalSyncIdentifierEntity_populateSyncInfoForObjectID_database_localSourceIDOut_externalSyncObjectCodeOut_syncIdentifierOut_syncVersionOut_deletedOut_errorOut___block_invoke_2;
  v21[3] = &unk_278626100;
  v21[4] = &v43;
  v21[5] = &v39;
  v21[6] = &v33;
  v21[7] = &v27;
  v21[8] = &v23;
  v18 = [databaseCopy executeSQL:@"SELECT source_id error:object_code bindingHandler:sid enumerationHandler:{version, deleted FROM external_sync_ids WHERE object_id = ?", errorOut, v22, v21}];
  if (out)
  {
    *out = v44[3];
  }

  if (codeOut)
  {
    *codeOut = v40[3];
  }

  if (deletedOut)
  {
    *deletedOut = *(v24 + 24);
  }

  *identifierOut = v34[5];
  *versionOut = v28[5];
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

+ (BOOL)insertSyncIdentifierWithProfile:(id)profile database:(id)database objectID:(int64_t)d localSourceID:(int64_t)iD externalSyncObjectCode:(int64_t)code syncIdentifier:(id)identifier syncVersion:(id)version deleted:(BOOL)self0 errorOut:(id *)self1
{
  profileCopy = profile;
  databaseCopy = database;
  identifierCopy = identifier;
  versionCopy = version;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataExternalSyncIdentifierEntity.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"syncIdentifier != nil"}];
  }

  if (!versionCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDataExternalSyncIdentifierEntity.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"syncVersion != nil"}];
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __169__HDDataExternalSyncIdentifierEntity_insertSyncIdentifierWithProfile_database_objectID_localSourceID_externalSyncObjectCode_syncIdentifier_syncVersion_deleted_errorOut___block_invoke;
  v28[3] = &unk_278626128;
  dCopy = d;
  iDCopy = iD;
  codeCopy = code;
  v29 = identifierCopy;
  v30 = versionCopy;
  deletedCopy = deleted;
  v21 = versionCopy;
  v22 = identifierCopy;
  v23 = [databaseCopy executeSQL:@"INSERT INTO external_sync_ids (object_id error:source_id bindingHandler:object_code enumerationHandler:{sid, version, deleted) VALUES (?, ?, ?, ?, ?, ?)", out, v28, 0}];

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

+ (BOOL)enumerateValuesWithProfile:(id)profile error:(id *)error handler:(id)handler
{
  v17[6] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v17[0] = @"object_id";
  v17[1] = @"source_id";
  v17[2] = @"object_code";
  v17[3] = @"sid";
  v17[4] = @"version";
  v17[5] = @"deleted";
  v8 = MEMORY[0x277CBEA60];
  profileCopy = profile;
  v10 = [v8 arrayWithObjects:v17 count:6];
  database = [profileCopy database];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HDDataExternalSyncIdentifierEntity_enumerateValuesWithProfile_error_handler___block_invoke;
  v15[3] = &unk_278616A78;
  v16 = handlerCopy;
  v12 = handlerCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDDataExternalSyncIdentifierEntity enumerateProperties:v10 withPredicate:0 healthDatabase:database error:error enumerationHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
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