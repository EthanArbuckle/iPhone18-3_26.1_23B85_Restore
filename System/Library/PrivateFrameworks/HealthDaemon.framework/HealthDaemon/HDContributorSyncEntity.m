@interface HDContributorSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)_orderedProperties;
+ (id)_syncCodableContributorFromRow:(HDSQLiteRow *)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)excludedSyncStoresForSession:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
@end

@implementation HDContributorSyncEntity

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 database];
  v11 = [(HDHealthEntity *)HDContributorEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v9 healthDatabase:v10 error:a6];

  return v11;
}

+ (id)_syncCodableContributorFromRow:(HDSQLiteRow *)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(HDCodableContributor);
  v12 = MEMORY[0x22AAC6CA0](a3, 0);
  v13 = [v12 hk_dataForUUIDBytes];
  [(HDCodableContributor *)v11 setUuid:v13];

  v14 = MEMORY[0x22AAC6C90](a3, 1);
  [(HDCodableContributor *)v11 setAppleID:v14];

  v15 = MEMORY[0x22AAC6C90](a3, 2);
  [(HDCodableContributor *)v11 setCallerID:v15];

  [(HDCodableContributor *)v11 setDeleted:MEMORY[0x22AAC6C10](a3, 3)];
  MEMORY[0x22AAC6C50](a3, 4);
  [(HDCodableContributor *)v11 setModificationDate:?];
  v16 = HDSQLiteColumnAsInt64();
  v17 = [v10 syncIdentityManager];

  v18 = [v17 identityForEntityID:v16 transaction:v9 error:a6];

  if (v18)
  {
    v19 = [v18 identity];
    v20 = [v19 codableSyncIdentity];
    [(HDCodableContributor *)v11 setSyncIdentity:v20];

    v21 = v11;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v13 = a3;
  v14 = a5;
  v23 = a6;
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [v13 maxEncodedBytesPerCodableChangeForSyncEntityClass:a1];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = -1;
  v17 = [v14 database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __102__HDContributorSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v24[3] = &unk_27862B608;
  v18 = v13;
  v29 = start;
  v30 = end;
  v25 = v18;
  v28 = &v32;
  v19 = v14;
  v26 = v19;
  v20 = v15;
  v27 = v20;
  v31 = v16 / 300;
  LODWORD(v14) = [(HDHealthEntity *)HDContributorEntity performReadTransactionWithHealthDatabase:v17 error:a7 block:v24];

  if (v14)
  {
    v21 = [v23 sendCodableChange:v20 resultAnchor:v33[3] sequence:0 done:1 error:a7];
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v32, 8);
  return v21;
}

BOOL __102__HDContributorSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[HDContributorSyncEntity _orderedProperties];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __102__HDContributorSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v17[3] = &unk_27862B5E0;
  v18 = *(a1 + 40);
  v19 = v5;
  v10 = *(a1 + 48);
  v11 = *(a1 + 80);
  v20 = v10;
  v21 = v11;
  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  v14 = v5;
  v15 = [(HDHealthEntity *)HDContributorEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v8 syncAnchorRange:v13 limit:v12 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v17];

  return v15;
}

BOOL __102__HDContributorSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v10 = [HDContributorSyncEntity _syncCodableContributorFromRow:a4 profile:*(a1 + 32) transaction:*(a1 + 40) error:a8];
  if (v10)
  {
    [*(a1 + 48) addObject:v10];
    if (*(a1 + 56) >= 1 && [*(a1 + 48) count] >= *(a1 + 56))
    {
      *a7 = 1;
    }
  }

  return v10 != 0;
}

+ (id)excludedSyncStoresForSession:(id)a3
{
  v3 = a3;
  v4 = [v3 syncStore];
  v5 = [v4 syncStoreType];

  if ((v5 - 3) >= 3 && v5 == 2)
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v6 = [v3 excludedSyncStores];
  }

  v7 = v6;

  return v7;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableContributor alloc] initWithData:v3];

  return v4;
}

+ (id)_orderedProperties
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"uuid";
  v5[1] = @"apple_id";
  v5[2] = @"caller_id";
  v5[3] = @"deleted";
  v5[4] = @"mod_date";
  v5[5] = @"sync_identity";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end