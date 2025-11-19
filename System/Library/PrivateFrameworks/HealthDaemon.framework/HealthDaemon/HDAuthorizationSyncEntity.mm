@interface HDAuthorizationSyncEntity
+ (BOOL)companionDidChangeForProfile:(id)a3 error:(id *)a4;
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)createCodableSourceAuthorizationWithSource:(id)a3 syncSession:(id)a4;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
@end

@implementation HDAuthorizationSyncEntity

+ (BOOL)companionDidChangeForProfile:(id)a3 error:(id *)a4
{
  v5 = [a3 database];
  LOBYTE(a4) = [(HDHealthEntity *)HDAuthorizationEntity deleteEntitiesWithPredicate:0 healthDatabase:v5 error:a4];

  return a4;
}

+ (id)createCodableSourceAuthorizationWithSource:(id)a3 syncSession:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(HDCodableSourceAuthorization);
  v6 = [v4 uuid];

  [(HDCodableSourceAuthorization *)v5 setSourceUUID:v6];

  return v5;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v46 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v27 = a6;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_self();
  v38 = @"source_id";
  v39 = @"object_type";
  v40 = @"status";
  v41 = @"request";
  v42 = @"mode";
  v43 = @"date_modified";
  v44 = @"modification_epoch";
  v45 = @"sync_identity";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:8];
  v16 = [v13 database];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = -1;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __104__HDAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v28[3] = &unk_27862FFE0;
  v17 = v15;
  v29 = v17;
  v35 = a1;
  v18 = v12;
  v36 = start;
  v37 = end;
  v30 = v18;
  v34 = &v38;
  v19 = v16;
  v31 = v19;
  v20 = v14;
  v32 = v20;
  v21 = v13;
  v33 = v21;
  if ([(HDHealthEntity *)HDAuthorizationEntity performReadTransactionWithHealthDatabase:v19 error:a7 block:v28])
  {
    if ([v20 count])
    {
      [a1 didGenerateCodableSourceAuthorizationsForSyncSession:v18];
      v22 = [v20 allValues];
      v23 = [v27 sendCodableChange:v22 resultAnchor:v39[3] sequence:0 done:1 error:a7];
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v38, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

BOOL __104__HDAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 80);
  v8 = *(*(a1 + 72) + 8) + 24;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __104__HDAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v18[3] = &unk_27862FFB8;
  v9 = *(a1 + 48);
  v19 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v20 = v10;
  v23 = v11;
  v21 = *(a1 + 40);
  v22 = v4;
  v13 = *(a1 + 88);
  v12 = *(a1 + 96);
  v14 = v4;
  v15 = [(HDHealthEntity *)HDAuthorizationEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 syncEntityClass:v7 session:v5 syncAnchorRange:v13 orderingTerms:v12 limit:0 lastSyncAnchor:0 healthDatabase:v8 error:v9 block:a3, v18];

  return v15;
}

BOOL __104__HDAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = HDSQLiteColumnWithNameAsNumber();
  v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
  if (!v12)
  {
    v26 = [(HDSQLiteEntity *)HDSourceEntity entityWithPersistentID:v11];
    v27 = [v26 codableSourceWithProfile:*(a1 + 40) error:a8];
    if (v27)
    {
      v28 = v27;
      v13 = [*(a1 + 64) createCodableSourceAuthorizationWithSource:v27 syncSession:*(a1 + 48)];
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v11];

      if (v13)
      {
        goto LABEL_3;
      }
    }

    else
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 64);
        v33 = v29;
        v35 = 138543874;
        v36 = objc_opt_class();
        v37 = 2112;
        v38 = v11;
        v39 = 2114;
        v40 = 0;
        v34 = v36;
        _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create codable source for source %@: %{public}@", &v35, 0x20u);
      }
    }

    v23 = 1;
    goto LABEL_16;
  }

  v13 = v12;
LABEL_3:
  v14 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = v13;
  v17 = v14;
  v18 = v15;
  objc_opt_self();
  if (a4)
  {
    v19 = objc_alloc_init(HDCodableAuthorization);
    v20 = HDSQLiteColumnWithNameAsInt64();
    v21 = [v18 syncIdentityManager];
    v22 = [v21 identityForEntityID:v20 transaction:v17 error:a8];

    v23 = v22 != 0;
    if (v22)
    {
      [(HDCodableAuthorization *)v19 setObjectType:HDSQLiteColumnWithNameAsInt64()];
      [(HDCodableAuthorization *)v19 setAuthorizationStatus:HDSQLiteColumnWithNameAsInt64()];
      [(HDCodableAuthorization *)v19 setAuthorizationRequest:HDSQLiteColumnWithNameAsInt64()];
      [(HDCodableAuthorization *)v19 setAuthorizationMode:HDSQLiteColumnWithNameAsInt64()];
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableAuthorization *)v19 setModificationDate:?];
      [(HDCodableAuthorization *)v19 setModificationEpoch:HDSQLiteColumnWithNameAsInt64()];
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableAuthorization *)v19 setModificationDate:?];
      v24 = [v22 identity];
      v25 = [v24 codableSyncIdentity];
      [(HDCodableAuthorization *)v19 setSyncIdentity:v25];

      [v16 addAuthorizations:v19];
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_16:
  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [a5 database];
  v12 = [(HDHealthEntity *)HDAuthorizationEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 syncEntityClass:a1 session:v10 orderingTerms:0 limit:0 healthDatabase:v11 error:a6];

  return v12;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableSourceAuthorization alloc] initWithData:v3];

  return v4;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

@end