@interface HDDatabasePruningShowSyncStore
- (HDDatabasePruningShowSyncStore)init;
- (HDDatabasePruningShowSyncStore)initWithPersistentID:(int64_t)a3 identifier:(id)a4 type:(id)a5 creationDate:(id)a6 latestFrozenAnchorDate:(id)a7 frozenAnchorMap:(id)a8 syncIdentity:(id)a9 isSupportedShardType:(id)a10 activeEpoch:(id)a11 pendingEpoch:(id)a12 tombstoneEpoch:(id)a13;
@end

@implementation HDDatabasePruningShowSyncStore

- (HDDatabasePruningShowSyncStore)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabasePruningShowSyncStore)initWithPersistentID:(int64_t)a3 identifier:(id)a4 type:(id)a5 creationDate:(id)a6 latestFrozenAnchorDate:(id)a7 frozenAnchorMap:(id)a8 syncIdentity:(id)a9 isSupportedShardType:(id)a10 activeEpoch:(id)a11 pendingEpoch:(id)a12 tombstoneEpoch:(id)a13
{
  v34 = a4;
  obj = a5;
  v33 = a5;
  v27 = a6;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v29 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v35.receiver = self;
  v35.super_class = HDDatabasePruningShowSyncStore;
  v22 = [(HDDatabasePruningShowSyncStore *)&v35 init];
  v23 = v22;
  if (v22)
  {
    v22->_persitentID = a3;
    objc_storeStrong(&v22->_identifier, a4);
    objc_storeStrong(&v23->_type, obj);
    objc_storeStrong(&v23->_creationDate, v27);
    objc_storeStrong(&v23->_latestFrozenAnchorDate, a7);
    objc_storeStrong(&v23->_frozenAnchorMap, a8);
    objc_storeStrong(&v23->_syncIdentity, a9);
    objc_storeStrong(&v23->_isSupportedShardType, a10);
    objc_storeStrong(&v23->_activeEpoch, a11);
    objc_storeStrong(&v23->_pendingEpoch, a12);
    objc_storeStrong(&v23->_tombstoneEpoch, a13);
  }

  return v23;
}

@end