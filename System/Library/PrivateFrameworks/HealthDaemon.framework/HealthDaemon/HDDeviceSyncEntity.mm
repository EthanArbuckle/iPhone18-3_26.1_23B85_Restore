@interface HDDeviceSyncEntity
+ (BOOL)_syncCodableDevice:(id *)a3 fromRow:(HDSQLiteRow *)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)excludedSyncStoresForSession:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDDeviceSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v12 = a3;
  v13 = a5;
  v24 = a6;
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = +[HDDeviceEntity _propertiesForDevice];
  v16 = [v13 database];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -1;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __97__HDDeviceSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v25[3] = &unk_278625FA0;
  v17 = v15;
  v26 = v17;
  v18 = v12;
  v32 = start;
  v33 = end;
  v27 = v18;
  v31 = &v34;
  v19 = v16;
  v28 = v19;
  v20 = v13;
  v29 = v20;
  v21 = v14;
  v30 = v21;
  if ([(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:v19 error:a7 block:v25])
  {
    v22 = [v24 sendCodableChange:v21 resultAnchor:v35[3] sequence:0 done:1 error:a7];
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v34, 8);
  return v22;
}

BOOL __97__HDDeviceSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 72) + 8) + 24;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__HDDeviceSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v15[3] = &unk_2786172E8;
  v9 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = v5;
  v18 = *(a1 + 64);
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  v12 = v5;
  v13 = [(HDHealthEntity *)HDDeviceEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v7 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v8 error:v9 block:a3, v15];

  return v13;
}

BOOL __97__HDDeviceSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v9 = [HDDeviceSyncEntity _syncCodableDevice:&v14 fromRow:a4 profile:*(a1 + 32) transaction:*(a1 + 40) error:a8];
  v10 = v14;
  v11 = v10;
  if (v9 && v10 != 0)
  {
    [*(a1 + 48) addObject:v10];
  }

  return v9;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 database];
  v11 = [(HDHealthEntity *)HDDeviceEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v9 healthDatabase:v10 error:a6];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableDevice alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a3;
  LODWORD(a7) = +[HDDeviceEntity insertCodableDevices:syncProvenance:profile:error:](HDDeviceEntity, "insertCodableDevices:syncProvenance:profile:error:", v11, [a5 syncProvenance], v10, a7);

  return a7 ^ 1;
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

+ (BOOL)_syncCodableDevice:(id *)a3 fromRow:(HDSQLiteRow *)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v11 = a6;
  v12 = a5;
  v13 = [HDDeviceEntity _codableDeviceWithRow:a4];
  v14 = HDSQLiteColumnWithNameAsInt64();
  v15 = [v12 syncIdentityManager];

  v24 = 0;
  v16 = [v15 identityForEntityID:v14 transaction:v11 error:&v24];

  v17 = v24;
  if (v16)
  {
    v18 = [v16 identity];
    v19 = [v18 codableSyncIdentity];
    [v13 setSyncIdentity:v19];

    if (a3)
    {
      v20 = v13;
      *a3 = v13;
    }
  }

  else
  {
    v21 = v17;
    if (v21)
    {
      if (a7)
      {
        v22 = v21;
        *a7 = v21;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v16 != 0;
}

@end