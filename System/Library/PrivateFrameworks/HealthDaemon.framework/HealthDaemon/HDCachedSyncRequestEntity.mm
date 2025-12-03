@interface HDCachedSyncRequestEntity
+ (BOOL)clearInProgressSyncRequests:(id)requests error:(id *)error;
+ (BOOL)fetchCoalescedSyncRequest:(id *)request transaction:(id)transaction error:(id *)error;
+ (BOOL)insertSyncRequest:(id)request reason:(id)reason date:(id)date profile:(id)profile error:(id *)error;
+ (BOOL)markInProgressRequestsAsPending:(id)pending error:(id *)error;
+ (BOOL)markPendingRequestsAsInProgress:(id)progress error:(id *)error;
+ (id)_extractRequest:;
+ (id)fetchAllInProgressSyncRequests:(id)requests error:(id *)error;
+ (id)fetchAllSyncRequests:(id)requests error:(id *)error;
+ (uint64_t)_enumerateOverAllSyncRequests:(uint64_t)requests error:(void *)error enumerationHandler:;
@end

@implementation HDCachedSyncRequestEntity

+ (BOOL)insertSyncRequest:(id)request reason:(id)reason date:(id)date profile:(id)profile error:(id *)error
{
  requestCopy = request;
  reasonCopy = reason;
  dateCopy = date;
  database = [profile database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__HDCachedSyncRequestEntity_insertSyncRequest_reason_date_profile_error___block_invoke;
  v20[3] = &unk_278613550;
  v21 = requestCopy;
  v22 = reasonCopy;
  v23 = dateCopy;
  selfCopy = self;
  v16 = dateCopy;
  v17 = reasonCopy;
  v18 = requestCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedSyncRequestEntity performWriteTransactionWithHealthDatabase:database error:error block:v20];

  return error;
}

uint64_t __73__HDCachedSyncRequestEntity_insertSyncRequest_reason_date_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HDCachedSyncRequestEntity_insertSyncRequest_reason_date_profile_error___block_invoke_2;
  v12[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v12[4] = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HDCachedSyncRequestEntity_insertSyncRequest_reason_date_profile_error___block_invoke_3;
  v8[3] = &unk_278613528;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v6 = [v5 executeCachedStatementForKey:&HDCachedSyncRequestEntityCreationDate_block_invoke_lookupKey error:a3 SQLGenerator:v12 bindingHandler:v8 enumerationHandler:0];

  return v6;
}

id __73__HDCachedSyncRequestEntity_insertSyncRequest_reason_date_profile_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v2, @"context_sync_pull", @"context_sync_push", @"state_sync", @"changes_sync_pull", @"changes_sync_push", @"changes_sync_fast", @"medical_id", @"summary_sharing_pull", @"summary_sharing_push", @"allow_cellular", @"qos", @"request_state", @"identifier", @"reason", @"creation_date", 0];

  return v3;
}

uint64_t __73__HDCachedSyncRequestEntity_insertSyncRequest_reason_date_profile_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) contextSyncRequest];
  if (v4)
  {
    v5 = [*(a1 + 32) contextSyncRequest];
    sqlite3_bind_int64(a2, 1, [v5 pull]);
  }

  else
  {
    sqlite3_bind_int64(a2, 1, 0);
  }

  v6 = [*(a1 + 32) contextSyncRequest];
  if (v6)
  {
    v7 = [*(a1 + 32) contextSyncRequest];
    sqlite3_bind_int64(a2, 2, [v7 push]);
  }

  else
  {
    sqlite3_bind_int64(a2, 2, 0);
  }

  v8 = [*(a1 + 32) stateSyncRequest];
  sqlite3_bind_int64(a2, 3, v8 != 0);

  v9 = [*(a1 + 32) changesSyncRequest];
  if (v9)
  {
    v10 = [*(a1 + 32) changesSyncRequest];
    sqlite3_bind_int64(a2, 4, [v10 pull]);
  }

  else
  {
    sqlite3_bind_int64(a2, 4, 0);
  }

  v11 = [*(a1 + 32) changesSyncRequest];
  if (v11)
  {
    v12 = [*(a1 + 32) changesSyncRequest];
    sqlite3_bind_int64(a2, 5, [v12 push]);
  }

  else
  {
    sqlite3_bind_int64(a2, 5, 0);
  }

  v13 = [*(a1 + 32) changesSyncRequest];
  if (v13)
  {
    v14 = [*(a1 + 32) changesSyncRequest];
    sqlite3_bind_int64(a2, 6, [v14 lite]);
  }

  else
  {
    sqlite3_bind_int64(a2, 6, 0);
  }

  v15 = [*(a1 + 32) medicalIDSyncRequest];
  sqlite3_bind_int64(a2, 7, v15 != 0);

  v16 = [*(a1 + 32) summarySharingSyncRequest];
  if (v16)
  {
    v17 = [*(a1 + 32) summarySharingSyncRequest];
    sqlite3_bind_int64(a2, 8, [v17 pull]);
  }

  else
  {
    sqlite3_bind_int64(a2, 8, 0);
  }

  v18 = [*(a1 + 32) summarySharingSyncRequest];
  if (v18)
  {
    v19 = [*(a1 + 32) summarySharingSyncRequest];
    sqlite3_bind_int64(a2, 9, [v19 push]);
  }

  else
  {
    sqlite3_bind_int64(a2, 9, 0);
  }

  sqlite3_bind_int64(a2, 10, [*(a1 + 32) allowCellular]);
  sqlite3_bind_int64(a2, 11, [*(a1 + 32) qualityOfService]);
  sqlite3_bind_int64(a2, 12, 0);
  v20 = [*(a1 + 32) identifier];
  v21 = [v20 UUIDString];
  HDSQLiteBindFoundationValueToStatement();

  v22 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v23 = *(a1 + 48);

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)markPendingRequestsAsInProgress:(id)progress error:(id *)error
{
  v6 = [progress databaseForEntityClass:self];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HDCachedSyncRequestEntity_markPendingRequestsAsInProgress_error___block_invoke;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v8[4] = self;
  LOBYTE(error) = [v6 executeCachedStatementForKey:&markPendingRequestsAsInProgress_error__lookupKey error:error SQLGenerator:v8 bindingHandler:&__block_literal_global_0 enumerationHandler:0];

  return error;
}

id __67__HDCachedSyncRequestEntity_markPendingRequestsAsInProgress_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ?", v2, @"request_state", @"request_state"];

  return v3;
}

uint64_t __67__HDCachedSyncRequestEntity_markPendingRequestsAsInProgress_error___block_invoke_2(int a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 1);

  return sqlite3_bind_int64(a2, 2, 0);
}

+ (BOOL)markInProgressRequestsAsPending:(id)pending error:(id *)error
{
  database = [pending database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HDCachedSyncRequestEntity_markInProgressRequestsAsPending_error___block_invoke;
  v8[3] = &__block_descriptor_40_e35_B24__0__HDDatabaseTransaction_8__16l;
  v8[4] = self;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedSyncRequestEntity performWriteTransactionWithHealthDatabase:database error:error block:v8];

  return error;
}

uint64_t __67__HDCachedSyncRequestEntity_markInProgressRequestsAsPending_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HDCachedSyncRequestEntity_markInProgressRequestsAsPending_error___block_invoke_2;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v8[4] = *(a1 + 32);
  v6 = [v5 executeCachedStatementForKey:&HDCachedSyncRequestEntityCreationDate_block_invoke_2_lookupKey error:a3 SQLGenerator:v8 bindingHandler:&__block_literal_global_366 enumerationHandler:0];

  return v6;
}

id __67__HDCachedSyncRequestEntity_markInProgressRequestsAsPending_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ?", v2, @"request_state", @"request_state"];

  return v3;
}

uint64_t __67__HDCachedSyncRequestEntity_markInProgressRequestsAsPending_error___block_invoke_3(int a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 0);

  return sqlite3_bind_int64(a2, 2, 1);
}

+ (BOOL)fetchCoalescedSyncRequest:(id *)request transaction:(id)transaction error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  emptySyncRequest = [MEMORY[0x277CCD140] emptySyncRequest];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__HDCachedSyncRequestEntity_fetchCoalescedSyncRequest_transaction_error___block_invoke;
  v18[3] = &unk_2786135B8;
  v20 = &v22;
  selfCopy = self;
  v10 = v9;
  v19 = v10;
  v11 = [(HDCachedSyncRequestEntity *)self _enumerateOverAllSyncRequests:transactionCopy error:error enumerationHandler:v18];
  _HKInitializeLogging();
  v12 = MEMORY[0x277CCC2B0];
  v13 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v23[5];
    *buf = 138543362;
    v29 = v14;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Coalesced sync request: \n%{public}@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v15 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v10;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "List of Requests: %{public}@", buf, 0xCu);
  }

  if (request)
  {
    *request = v23[5];
  }

  _Block_object_dispose(&v22, 8);
  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __73__HDCachedSyncRequestEntity_fetchCoalescedSyncRequest_transaction_error___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(*(v3 + 8) + 40);
  v5 = +[HDCachedSyncRequestEntity _extractRequest:];
  v6 = [v4 requestByMergingRequest:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = HDSQLiteColumnWithNameAsString();
  v10 = HDSQLiteColumnWithNameAsString();
  if (v10 && v9)
  {
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
  }

  return 1;
}

+ (id)_extractRequest:
{
  objc_opt_self();
  v0 = HDSQLiteColumnWithNameAsInt64();
  v1 = HDSQLiteColumnWithNameAsInt64();
  v18 = HDSQLiteColumnWithNameAsInt64();
  v2 = HDSQLiteColumnWithNameAsInt64();
  v3 = HDSQLiteColumnWithNameAsInt64();
  v22 = HDSQLiteColumnWithNameAsInt64();
  v21 = HDSQLiteColumnWithNameAsInt64();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsInt64();
  v19 = HDSQLiteColumnWithNameAsInt64();
  v20 = HDSQLiteColumnWithNameAsInt64();
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = [v6 initWithUUIDString:v7];

  if (v0 | v1)
  {
    v9 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:v0 != 0 pull:v1 != 0 lite:v18 != 0];
  }

  else
  {
    v9 = 0;
  }

  if (v2 | v3)
  {
    v10 = [objc_alloc(MEMORY[0x277CCD220]) initWithPush:v2 != 0 pull:v3 != 0];
  }

  else
  {
    v10 = 0;
  }

  if (v5 | v4)
  {
    v11 = [objc_alloc(MEMORY[0x277CCDA80]) initWithPush:v5 != 0 pull:v4 != 0];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_alloc(MEMORY[0x277CCD140]);
  if (v22)
  {
    v13 = objc_alloc_init(MEMORY[0x277CCDA40]);
  }

  else
  {
    v13 = 0;
  }

  if (v21)
  {
    v14 = objc_alloc_init(MEMORY[0x277CCD5F0]);
    LOBYTE(v17) = v19 != 0;
    v15 = [v12 initWithIdentifier:v8 changesSyncRequest:v9 contextSyncRequest:v10 stateSyncRequest:v13 medicalIDSyncRequest:v14 summarySharingSyncRequest:v11 allowCellular:v17 qualityOfService:v20];

    if (!v22)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  LOBYTE(v17) = v19 != 0;
  v15 = [v12 initWithIdentifier:v8 changesSyncRequest:v9 contextSyncRequest:v10 stateSyncRequest:v13 medicalIDSyncRequest:0 summarySharingSyncRequest:v11 allowCellular:v17 qualityOfService:v20];
  if (v22)
  {
LABEL_15:
  }

LABEL_16:

  return v15;
}

+ (uint64_t)_enumerateOverAllSyncRequests:(uint64_t)requests error:(void *)error enumerationHandler:
{
  errorCopy = error;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = [v7 databaseForEntityClass:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HDCachedSyncRequestEntity__enumerateOverAllSyncRequests_error_enumerationHandler___block_invoke;
  v12[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v12[4] = v8;
  v10 = [v9 executeCachedStatementForKey:&_enumerateOverAllSyncRequests_error_enumerationHandler__lookupKey error:requests SQLGenerator:v12 bindingHandler:0 enumerationHandler:errorCopy];

  return v10;
}

+ (id)fetchAllSyncRequests:(id)requests error:(id *)error
{
  requestsCopy = requests;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDCachedSyncRequestEntity_fetchAllSyncRequests_error___block_invoke;
  v10[3] = &unk_2786135E0;
  v10[4] = &v11;
  v10[5] = self;
  if ([(HDCachedSyncRequestEntity *)self _enumerateOverAllSyncRequests:requestsCopy error:error enumerationHandler:v10])
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

uint64_t __56__HDCachedSyncRequestEntity_fetchAllSyncRequests_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(*(v2 + 8) + 40);
  v4 = +[HDCachedSyncRequestEntity _extractRequest:];
  [v3 addObject:v4];

  return 1;
}

+ (id)fetchAllInProgressSyncRequests:(id)requests error:(id *)error
{
  requestsCopy = requests;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x277CBEB18] array];
  v7 = [requestsCopy databaseForEntityClass:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HDCachedSyncRequestEntity_fetchAllInProgressSyncRequests_error___block_invoke;
  v12[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HDCachedSyncRequestEntity_fetchAllInProgressSyncRequests_error___block_invoke_3;
  v11[3] = &unk_2786135E0;
  v11[4] = &v13;
  v11[5] = self;
  if ([v7 executeCachedStatementForKey:&fetchAllInProgressSyncRequests_error__lookupKey error:error SQLGenerator:v12 bindingHandler:&__block_literal_global_376 enumerationHandler:v11])
  {
    v8 = v14[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  _Block_object_dispose(&v13, 8);

  return v9;
}

id __66__HDCachedSyncRequestEntity_fetchAllInProgressSyncRequests_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"context_sync_pull", @"context_sync_push", @"state_sync", @"changes_sync_pull", @"changes_sync_push", @"changes_sync_fast", @"medical_id", @"summary_sharing_pull", @"summary_sharing_push", @"allow_cellular", @"qos", @"identifier", @"reason", @"creation_date", v2, @"request_state"];

  return v3;
}

uint64_t __66__HDCachedSyncRequestEntity_fetchAllInProgressSyncRequests_error___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(*(v2 + 8) + 40);
  v4 = +[HDCachedSyncRequestEntity _extractRequest:];
  [v3 addObject:v4];

  return 1;
}

+ (BOOL)clearInProgressSyncRequests:(id)requests error:(id *)error
{
  database = [requests database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HDCachedSyncRequestEntity_clearInProgressSyncRequests_error___block_invoke;
  v8[3] = &__block_descriptor_40_e35_B24__0__HDDatabaseTransaction_8__16l;
  v8[4] = self;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedSyncRequestEntity performWriteTransactionWithHealthDatabase:database error:error block:v8];

  return error;
}

uint64_t __63__HDCachedSyncRequestEntity_clearInProgressSyncRequests_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HDCachedSyncRequestEntity_clearInProgressSyncRequests_error___block_invoke_2;
  v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v8[4] = *(a1 + 32);
  v6 = [v5 executeCachedStatementForKey:&HDCachedSyncRequestEntityCreationDate_block_invoke_3_lookupKey error:a3 SQLGenerator:v8 bindingHandler:&__block_literal_global_381 enumerationHandler:0];

  return v6;
}

id __63__HDCachedSyncRequestEntity_clearInProgressSyncRequests_error___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v2, @"request_state"];

  return v3;
}

id __84__HDCachedSyncRequestEntity__enumerateOverAllSyncRequests_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@", @"context_sync_pull", @"context_sync_push", @"state_sync", @"changes_sync_pull", @"changes_sync_push", @"changes_sync_fast", @"medical_id", @"summary_sharing_pull", @"summary_sharing_push", @"allow_cellular", @"qos", @"identifier", @"reason", @"creation_date", v2];

  return v3;
}

@end