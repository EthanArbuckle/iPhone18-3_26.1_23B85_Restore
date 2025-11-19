@interface HDSourceSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)excludedSyncStoresForSession:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
@end

@implementation HDSourceSyncEntity

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
  v24[2] = __97__HDSourceSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v24[3] = &unk_278619A90;
  v18 = v14;
  v25 = v18;
  v19 = v13;
  v29 = start;
  v30 = end;
  v26 = v19;
  v28 = &v32;
  v20 = v15;
  v27 = v20;
  v31 = v16 / 256;
  LODWORD(start) = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v17 error:a7 block:v24];

  if (start)
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

BOOL __97__HDSourceSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [HDSourceEntity entityEncoderForProfile:*(a1 + 32) transaction:v4 purpose:0 encodingOptions:0 authorizationFilter:0];
  v6 = [v5 orderedProperties];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__HDSourceSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v19[3] = &unk_278619A68;
  v20 = v5;
  v21 = *(a1 + 32);
  v22 = v4;
  v10 = *(a1 + 48);
  v11 = *(a1 + 80);
  v23 = v10;
  v24 = v11;
  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  v14 = v4;
  v15 = v5;
  v16 = [(HDHealthEntity *)HDSourceEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v8 syncAnchorRange:v13 limit:v12 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v19];

  return v16;
}

BOOL __97__HDSourceSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v11 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(a2 row:"persistentID") error:{a4, a8}];
  if (v11)
  {
    v12 = HDSQLiteColumnWithNameAsInt64();
    v13 = [*(a1 + 40) syncIdentityManager];
    v14 = [v13 identityForEntityID:v12 transaction:*(a1 + 48) error:a8];

    v15 = v14 != 0;
    if (v14)
    {
      v16 = [v14 identity];
      v17 = [v16 codableSyncIdentity];
      [v11 setSyncIdentity:v17];

      [*(a1 + 56) addObject:v11];
      if (*(a1 + 64) >= 1 && [*(a1 + 56) count] >= *(a1 + 64))
      {
        *a7 = 1;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 database];
  v11 = [(HDHealthEntity *)HDSourceEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v9 healthDatabase:v10 error:a6];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableSource alloc] initWithData:v3];

  return v4;
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

@end