@interface HDDatabasePruningShowSyncStore
- (HDDatabasePruningShowSyncStore)init;
- (HDDatabasePruningShowSyncStore)initWithPersistentID:(int64_t)d identifier:(id)identifier type:(id)type creationDate:(id)date latestFrozenAnchorDate:(id)anchorDate frozenAnchorMap:(id)map syncIdentity:(id)identity isSupportedShardType:(id)self0 activeEpoch:(id)self1 pendingEpoch:(id)self2 tombstoneEpoch:(id)self3;
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

- (HDDatabasePruningShowSyncStore)initWithPersistentID:(int64_t)d identifier:(id)identifier type:(id)type creationDate:(id)date latestFrozenAnchorDate:(id)anchorDate frozenAnchorMap:(id)map syncIdentity:(id)identity isSupportedShardType:(id)self0 activeEpoch:(id)self1 pendingEpoch:(id)self2 tombstoneEpoch:(id)self3
{
  identifierCopy = identifier;
  obj = type;
  typeCopy = type;
  dateCopy = date;
  dateCopy2 = date;
  anchorDateCopy = anchorDate;
  mapCopy = map;
  identityCopy = identity;
  shardTypeCopy = shardType;
  epochCopy = epoch;
  pendingEpochCopy = pendingEpoch;
  tombstoneEpochCopy = tombstoneEpoch;
  v35.receiver = self;
  v35.super_class = HDDatabasePruningShowSyncStore;
  v22 = [(HDDatabasePruningShowSyncStore *)&v35 init];
  v23 = v22;
  if (v22)
  {
    v22->_persitentID = d;
    objc_storeStrong(&v22->_identifier, identifier);
    objc_storeStrong(&v23->_type, obj);
    objc_storeStrong(&v23->_creationDate, dateCopy);
    objc_storeStrong(&v23->_latestFrozenAnchorDate, anchorDate);
    objc_storeStrong(&v23->_frozenAnchorMap, map);
    objc_storeStrong(&v23->_syncIdentity, identity);
    objc_storeStrong(&v23->_isSupportedShardType, shardType);
    objc_storeStrong(&v23->_activeEpoch, epoch);
    objc_storeStrong(&v23->_pendingEpoch, pendingEpoch);
    objc_storeStrong(&v23->_tombstoneEpoch, tombstoneEpoch);
  }

  return v23;
}

@end