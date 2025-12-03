@interface HDDeviceSyncEntity
+ (BOOL)_syncCodableDevice:(id *)device fromRow:(HDSQLiteRow *)row profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)excludedSyncStoresForSession:(id)session;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDDeviceSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v15 = +[HDDeviceEntity _propertiesForDevice];
  database = [profileCopy database];
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
  v18 = sessionCopy;
  v32 = start;
  v33 = end;
  v27 = v18;
  v31 = &v34;
  v19 = database;
  v28 = v19;
  v20 = profileCopy;
  v29 = v20;
  v21 = array;
  v30 = v21;
  if ([(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:v19 error:error block:v25])
  {
    v22 = [handlerCopy sendCodableChange:v21 resultAnchor:v35[3] sequence:0 done:1 error:error];
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

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  sessionCopy = session;
  database = [profile database];
  v11 = [(HDHealthEntity *)HDDeviceEntity nextSyncAnchorWithStartAnchor:anchor predicate:0 session:sessionCopy healthDatabase:database error:error];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableDevice alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  objectsCopy = objects;
  LODWORD(error) = +[HDDeviceEntity insertCodableDevices:syncProvenance:profile:error:](HDDeviceEntity, "insertCodableDevices:syncProvenance:profile:error:", objectsCopy, [store syncProvenance], profileCopy, error);

  return error ^ 1;
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

+ (BOOL)_syncCodableDevice:(id *)device fromRow:(HDSQLiteRow *)row profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  profileCopy = profile;
  v13 = [HDDeviceEntity _codableDeviceWithRow:row];
  v14 = HDSQLiteColumnWithNameAsInt64();
  syncIdentityManager = [profileCopy syncIdentityManager];

  v24 = 0;
  v16 = [syncIdentityManager identityForEntityID:v14 transaction:transactionCopy error:&v24];

  v17 = v24;
  if (v16)
  {
    identity = [v16 identity];
    codableSyncIdentity = [identity codableSyncIdentity];
    [v13 setSyncIdentity:codableSyncIdentity];

    if (device)
    {
      v20 = v13;
      *device = v13;
    }
  }

  else
  {
    v21 = v17;
    if (v21)
    {
      if (error)
      {
        v22 = v21;
        *error = v21;
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