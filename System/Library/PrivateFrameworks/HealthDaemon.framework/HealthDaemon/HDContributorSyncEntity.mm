@interface HDContributorSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)_orderedProperties;
+ (id)_syncCodableContributorFromRow:(HDSQLiteRow *)row profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)excludedSyncStoresForSession:(id)session;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
@end

@implementation HDContributorSyncEntity

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  sessionCopy = session;
  database = [profile database];
  v11 = [(HDHealthEntity *)HDContributorEntity nextSyncAnchorWithStartAnchor:anchor predicate:0 session:sessionCopy healthDatabase:database error:error];

  return v11;
}

+ (id)_syncCodableContributorFromRow:(HDSQLiteRow *)row profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  profileCopy = profile;
  v11 = objc_alloc_init(HDCodableContributor);
  v12 = MEMORY[0x22AAC6CA0](row, 0);
  hk_dataForUUIDBytes = [v12 hk_dataForUUIDBytes];
  [(HDCodableContributor *)v11 setUuid:hk_dataForUUIDBytes];

  v14 = MEMORY[0x22AAC6C90](row, 1);
  [(HDCodableContributor *)v11 setAppleID:v14];

  v15 = MEMORY[0x22AAC6C90](row, 2);
  [(HDCodableContributor *)v11 setCallerID:v15];

  [(HDCodableContributor *)v11 setDeleted:MEMORY[0x22AAC6C10](row, 3)];
  MEMORY[0x22AAC6C50](row, 4);
  [(HDCodableContributor *)v11 setModificationDate:?];
  v16 = HDSQLiteColumnAsInt64();
  syncIdentityManager = [profileCopy syncIdentityManager];

  v18 = [syncIdentityManager identityForEntityID:v16 transaction:transactionCopy error:error];

  if (v18)
  {
    identity = [v18 identity];
    codableSyncIdentity = [identity codableSyncIdentity];
    [(HDCodableContributor *)v11 setSyncIdentity:codableSyncIdentity];

    v21 = v11;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v16 = [sessionCopy maxEncodedBytesPerCodableChangeForSyncEntityClass:self];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = -1;
  database = [profileCopy database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __102__HDContributorSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v24[3] = &unk_27862B608;
  v18 = sessionCopy;
  v29 = start;
  v30 = end;
  v25 = v18;
  v28 = &v32;
  v19 = profileCopy;
  v26 = v19;
  v20 = array;
  v27 = v20;
  v31 = v16 / 300;
  LODWORD(profileCopy) = [(HDHealthEntity *)HDContributorEntity performReadTransactionWithHealthDatabase:database error:error block:v24];

  if (profileCopy)
  {
    v21 = [handlerCopy sendCodableChange:v20 resultAnchor:v33[3] sequence:0 done:1 error:error];
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

+ (id)excludedSyncStoresForSession:(id)session
{
  sessionCopy = session;
  syncStore = [sessionCopy syncStore];
  syncStoreType = [syncStore syncStoreType];

  if ((syncStoreType - 3) >= 3 && syncStoreType == 2)
  {
    excludedSyncStores = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    excludedSyncStores = [sessionCopy excludedSyncStores];
  }

  v7 = excludedSyncStores;

  return v7;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableContributor alloc] initWithData:dataCopy];

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