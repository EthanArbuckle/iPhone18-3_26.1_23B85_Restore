@interface HDCloudSyncStoreRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isStoreRecord:(id)record;
+ (BOOL)isStoreRecordID:(id)d;
+ (HDCloudSyncStoreRecord)recordWithCKRecord:(id)record error:(id *)error;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDForOwnerIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier zoneID:(id)d;
+ (id)recordIDWithIndividualZoneID:(id)d;
- (BOOL)hasActiveSequence;
- (BOOL)hasSequenceWithFutureSyncEntityVersions:(id)versions;
- (BOOL)isChild;
- (BOOL)isEqual:(id)equal;
- (HDCloudSyncSequenceRecord)sequenceRecord;
- (HDCloudSyncShardPredicate)shardPredicate;
- (HDCloudSyncStoreRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (HDSyncIdentity)pendingSyncIdentity;
- (HDSyncIdentity)syncIdentity;
- (NSArray)orderedSequenceRecords;
- (NSString)pendingOwner;
- (NSUUID)storeIdentifier;
- (id)_clearSequenceHeaderRecord:(void *)record;
- (id)activeSequenceHeaderRecord;
- (id)addNewSequenceHeaderRecordWithSyncAnchorMap:(id)map includedIdentifiers:(id)identifiers includedSyncIdentities:(id)identities includedChildSyncIdentities:(id)syncIdentities;
- (id)addNewTombstoneSequenceHeaderRecordWithIncludedIdentifiers:(id)identifiers includedSyncIdentities:(id)identities includedChildSyncIdentities:(id)syncIdentities;
- (id)clearCurrentSequenceHeaderRecord;
- (id)clearOldSequenceHeaderRecord;
- (id)clearPendingSequenceHeaderRecord;
- (id)clearTombstoneSequenceHeaderRecord;
- (id)currentSequenceHeaderRecord;
- (id)initWithCKRecord:(uint64_t)record schemaVersion:(void *)version underlyingStore:;
- (id)oldSequenceHeaderRecord;
- (id)pendingSequenceHeaderRecord;
- (id)sequenceRecordWithRecordID:(id)d;
- (id)shortDescription;
- (int64_t)compare:(id)compare;
- (void)addSequenceHeaderRecord:(id)record;
- (void)removeSequenceHeaderRecord:(id)record;
- (void)repairOwnerIdentifier:(id)identifier;
- (void)setDeviceName:(id)name;
- (void)setPendingOwner:(id)owner;
- (void)setPendingSyncIdentity:(id)identity;
- (void)setProductType:(id)type;
- (void)setShardPredicate:(id)predicate;
- (void)setSystemBuildVersion:(id)version;
@end

@implementation HDCloudSyncStoreRecord

+ (id)recordIDForOwnerIdentifier:(id)identifier storeIdentifier:(id)storeIdentifier zoneID:(id)d
{
  identifierCopy = identifier;
  storeIdentifierCopy = storeIdentifier;
  v9 = MEMORY[0x277CBC5D0];
  dCopy = d;
  v11 = [v9 alloc];
  v12 = MEMORY[0x277CCACA8];
  v13 = identifierCopy;
  v14 = storeIdentifierCopy;
  v15 = [v12 alloc];
  uUIDString = [v14 UUIDString];

  v17 = [v15 initWithFormat:@"%@/%@/Store", v13, uUIDString];
  v18 = [v11 initWithRecordName:v17 zoneID:dCopy];

  return v18;
}

+ (id)recordIDWithIndividualZoneID:(id)d
{
  v3 = MEMORY[0x277CBC5D0];
  dCopy = d;
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncRoot" zoneID:dCopy];

  return v5;
}

+ (BOOL)isStoreRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncStoreRecord"];

  return v4;
}

+ (BOOL)isStoreRecordID:(id)d
{
  dCopy = d;
  recordName = [dCopy recordName];
  v5 = [recordName isEqualToString:@"CloudSyncRoot"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    recordName2 = [dCopy recordName];
    v8 = [recordName2 componentsSeparatedByString:@"/"];

    if ([v8 count] == 3)
    {
      v9 = [v8 objectAtIndexedSubscript:2];
      v6 = [v9 isEqualToString:@"Store"];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (HDCloudSyncStoreRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (id)initWithCKRecord:(uint64_t)record schemaVersion:(void *)version underlyingStore:
{
  v7 = a2;
  versionCopy = version;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = HDCloudSyncStoreRecord;
    v9 = objc_msgSendSuper2(&v18, sel_initWithCKRecord_schemaVersion_, v7, record);
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 3, version);
      ownerIdentifier = [v10[3] ownerIdentifier];
      [v7 hd_setValue:ownerIdentifier ifChangedForKey:@"OwnerIdentifier"];

      pendingOwnerIdentifier = [v10[3] pendingOwnerIdentifier];
      v13 = pendingOwnerIdentifier;
      if (pendingOwnerIdentifier)
      {
        v14 = pendingOwnerIdentifier;
      }

      else
      {
        v14 = &stru_283BF39C8;
      }

      [v7 hd_setValue:v14 ifChangedForKey:@"PendingOwner"];

      v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10[3], "active")}];
      [v7 hd_setValue:v15 ifChangedForKey:@"Active"];

      storeIdentifier = [v10[3] storeIdentifier];
      [v7 hd_setValue:storeIdentifier ifChangedForKey:@"StoreIdentifier"];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HDCloudSyncSequenceRecord)sequenceRecord
{
  activeSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self activeSequenceHeaderRecord];
  v4 = activeSequenceHeaderRecord;
  if (activeSequenceHeaderRecord)
  {
    currentSequenceHeaderRecord = activeSequenceHeaderRecord;
  }

  else
  {
    currentSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  }

  v6 = currentSequenceHeaderRecord;

  return v6;
}

- (NSArray)orderedSequenceRecords
{
  v3 = self->_tombstoneSequenceRecord;
  sequenceRecord = [(HDCloudSyncStoreRecord *)self sequenceRecord];
  slotASequenceHeaderRecord = self->_slotASequenceHeaderRecord;
  if (slotASequenceHeaderRecord == sequenceRecord)
  {
    slotASequenceHeaderRecord = self->_slotBSequenceHeaderRecord;
  }

  v6 = MEMORY[0x277CBEB18];
  v7 = slotASequenceHeaderRecord;
  v8 = objc_alloc_init(v6);
  [v8 hk_addNonNilObject:v3];
  [v8 hk_addNonNilObject:sequenceRecord];
  [v8 hk_addNonNilObject:v7];

  return v8;
}

- (id)currentSequenceHeaderRecord
{
  p_slotASequenceHeaderRecord = &self->_slotASequenceHeaderRecord;
  slotASequenceHeaderRecord = self->_slotASequenceHeaderRecord;
  p_slotBSequenceHeaderRecord = &self->_slotBSequenceHeaderRecord;
  slotBSequenceHeaderRecord = self->_slotBSequenceHeaderRecord;
  if (slotASequenceHeaderRecord)
  {
    if (slotBSequenceHeaderRecord)
    {
      baselineEpoch = [(HDCloudSyncSequenceRecord *)slotASequenceHeaderRecord baselineEpoch];
      if (baselineEpoch <= [(HDCloudSyncSequenceRecord *)*p_slotBSequenceHeaderRecord baselineEpoch])
      {
        v8 = p_slotBSequenceHeaderRecord;
      }

      else
      {
        v8 = p_slotASequenceHeaderRecord;
      }

      slotBSequenceHeaderRecord = *v8;
    }

    else
    {
      slotBSequenceHeaderRecord = slotASequenceHeaderRecord;
    }
  }

  else if (!slotBSequenceHeaderRecord)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v9 = slotBSequenceHeaderRecord;
LABEL_11:

  return v9;
}

- (id)clearCurrentSequenceHeaderRecord
{
  currentSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  v4 = [(HDCloudSyncStoreRecord *)self _clearSequenceHeaderRecord:currentSequenceHeaderRecord];

  return v4;
}

- (id)_clearSequenceHeaderRecord:(void *)record
{
  v3 = a2;
  v4 = v3;
  recordID = 0;
  if (record && v3)
  {
    v6 = record + 5;
    v7 = record[5];
    if (v7 == v3 || (v6 = record + 6, v7 = record[6], v7 == v3) || (v6 = record + 4, v7 = record[4], v7 == v3))
    {
      *v6 = 0;

      record = [v4 record];
      recordID = [record recordID];
    }

    else
    {
      recordID = 0;
    }
  }

  return recordID;
}

- (id)oldSequenceHeaderRecord
{
  currentSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  v4 = currentSequenceHeaderRecord;
  if (!currentSequenceHeaderRecord)
  {
    goto LABEL_4;
  }

  slotBSequenceHeaderRecord = self->_slotBSequenceHeaderRecord;
  if (currentSequenceHeaderRecord != self->_slotASequenceHeaderRecord)
  {
    if (currentSequenceHeaderRecord != slotBSequenceHeaderRecord)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_7;
    }

    slotBSequenceHeaderRecord = self->_slotASequenceHeaderRecord;
  }

  v6 = slotBSequenceHeaderRecord;
LABEL_7:

  return v6;
}

- (id)clearOldSequenceHeaderRecord
{
  oldSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self oldSequenceHeaderRecord];
  v4 = [(HDCloudSyncStoreRecord *)self _clearSequenceHeaderRecord:oldSequenceHeaderRecord];

  return v4;
}

- (id)activeSequenceHeaderRecord
{
  currentSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  isActive = [(HDCloudSyncSequenceRecord *)currentSequenceHeaderRecord isActive];
  v5 = currentSequenceHeaderRecord;
  if (isActive)
  {
    goto LABEL_7;
  }

  if (currentSequenceHeaderRecord == self->_slotASequenceHeaderRecord && (p_slotBSequenceHeaderRecord = &self->_slotBSequenceHeaderRecord, [(HDCloudSyncSequenceRecord *)self->_slotBSequenceHeaderRecord isActive]) || currentSequenceHeaderRecord == self->_slotBSequenceHeaderRecord && (p_slotBSequenceHeaderRecord = &self->_slotASequenceHeaderRecord, [(HDCloudSyncSequenceRecord *)self->_slotASequenceHeaderRecord isActive]))
  {
    v5 = *p_slotBSequenceHeaderRecord;
LABEL_7:
    v7 = v5;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)pendingSequenceHeaderRecord
{
  currentSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  v4 = currentSequenceHeaderRecord;
  if (!currentSequenceHeaderRecord)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  isActive = [(HDCloudSyncSequenceRecord *)currentSequenceHeaderRecord isActive];
  v6 = v4;
  if (isActive)
  {
    if (v4 != self->_slotASequenceHeaderRecord || (p_slotASequenceHeaderRecord = &self->_slotBSequenceHeaderRecord, [(HDCloudSyncSequenceRecord *)self->_slotBSequenceHeaderRecord isActive]))
    {
      if (v4 != self->_slotBSequenceHeaderRecord)
      {
        goto LABEL_7;
      }

      p_slotASequenceHeaderRecord = &self->_slotASequenceHeaderRecord;
      if ([(HDCloudSyncSequenceRecord *)self->_slotASequenceHeaderRecord isActive])
      {
        goto LABEL_7;
      }
    }

    v6 = *p_slotASequenceHeaderRecord;
  }

  v8 = v6;
LABEL_10:

  return v8;
}

- (id)clearPendingSequenceHeaderRecord
{
  pendingSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self pendingSequenceHeaderRecord];
  v4 = [(HDCloudSyncStoreRecord *)self _clearSequenceHeaderRecord:pendingSequenceHeaderRecord];

  return v4;
}

- (id)clearTombstoneSequenceHeaderRecord
{
  record = [(HDCloudSyncRecord *)self->_tombstoneSequenceRecord record];
  recordID = [record recordID];

  tombstoneSequenceRecord = self->_tombstoneSequenceRecord;
  self->_tombstoneSequenceRecord = 0;

  return recordID;
}

- (id)addNewSequenceHeaderRecordWithSyncAnchorMap:(id)map includedIdentifiers:(id)identifiers includedSyncIdentities:(id)identities includedChildSyncIdentities:(id)syncIdentities
{
  syncIdentitiesCopy = syncIdentities;
  identitiesCopy = identities;
  identifiersCopy = identifiers;
  mapCopy = map;
  currentSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  v16 = currentSequenceHeaderRecord;
  if (currentSequenceHeaderRecord)
  {
    if ([currentSequenceHeaderRecord slot] == 1)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    v18 = -[HDCloudSyncSequenceRecord initForSequenceSlot:syncAnchorMap:changeIndex:baselineEpoch:includedIdentifiers:includedSyncIdentities:includedChildSyncIdentities:storeRecord:]([HDCloudSyncSequenceRecord alloc], "initForSequenceSlot:syncAnchorMap:changeIndex:baselineEpoch:includedIdentifiers:includedSyncIdentities:includedChildSyncIdentities:storeRecord:", v17, mapCopy, [v16 changeIndex], objc_msgSend(v16, "baselineEpoch") + 1, identifiersCopy, identitiesCopy, syncIdentitiesCopy, self);

    slot = [v18 slot];
    v20 = &OBJC_IVAR___HDCloudSyncStoreRecord__slotASequenceHeaderRecord;
    if (slot != 1)
    {
      v20 = &OBJC_IVAR___HDCloudSyncStoreRecord__slotBSequenceHeaderRecord;
    }
  }

  else
  {
    v18 = [[HDCloudSyncSequenceRecord alloc] initForSequenceSlot:1 syncAnchorMap:mapCopy changeIndex:0 baselineEpoch:0 includedIdentifiers:identifiersCopy includedSyncIdentities:identitiesCopy includedChildSyncIdentities:syncIdentitiesCopy storeRecord:self];

    v20 = &OBJC_IVAR___HDCloudSyncStoreRecord__slotASequenceHeaderRecord;
  }

  objc_storeStrong((&self->super.super.isa + *v20), v18);
  v25 = 0;
  v21 = [v18 validateWithError:&v25];
  v22 = v25;
  if ((v21 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:372 description:{@"Failed to validate sequence record after creation: %@", v22}];
  }

  return v18;
}

- (id)addNewTombstoneSequenceHeaderRecordWithIncludedIdentifiers:(id)identifiers includedSyncIdentities:(id)identities includedChildSyncIdentities:(id)syncIdentities
{
  syncIdentitiesCopy = syncIdentities;
  identitiesCopy = identities;
  identifiersCopy = identifiers;
  v12 = [HDCloudSyncSequenceRecord alloc];
  v13 = objc_alloc_init(HDSyncAnchorMap);
  v14 = [(HDCloudSyncSequenceRecord *)v12 initForSequenceSlot:3 syncAnchorMap:v13 changeIndex:0 baselineEpoch:-100 includedIdentifiers:identifiersCopy includedSyncIdentities:identitiesCopy includedChildSyncIdentities:syncIdentitiesCopy storeRecord:self];

  tombstoneSequenceRecord = self->_tombstoneSequenceRecord;
  self->_tombstoneSequenceRecord = v14;

  [(HDCloudSyncSequenceRecord *)self->_tombstoneSequenceRecord setActive:1];
  v16 = self->_tombstoneSequenceRecord;
  v22 = 0;
  LOBYTE(identifiersCopy) = [(HDCloudSyncRecord *)v16 validateWithError:&v22];
  v17 = v22;
  if ((identifiersCopy & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:391 description:{@"Failed to validate sequence record after creation: %@", v17}];
  }

  v18 = self->_tombstoneSequenceRecord;
  v19 = v18;

  return v18;
}

- (void)addSequenceHeaderRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy slot] - 1;
  if (v5 <= 2)
  {
    objc_storeStrong((&self->super.super.isa + *off_27861D6E0[v5]), record);
  }
}

- (void)removeSequenceHeaderRecord:(id)record
{
  recordCopy = record;
  slot = [(HDCloudSyncSequenceRecord *)recordCopy slot];
  switch(slot)
  {
    case 3:
      p_tombstoneSequenceRecord = &self->_tombstoneSequenceRecord;
      tombstoneSequenceRecord = self->_tombstoneSequenceRecord;
      if (tombstoneSequenceRecord != recordCopy)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"_tombstoneSequenceRecord == record"}];
        goto LABEL_14;
      }

      break;
    case 2:
      p_tombstoneSequenceRecord = &self->_slotBSequenceHeaderRecord;
      tombstoneSequenceRecord = self->_slotBSequenceHeaderRecord;
      if (tombstoneSequenceRecord != recordCopy)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:418 description:{@"Invalid parameter not satisfying: %@", @"_slotBSequenceHeaderRecord == record"}];
        goto LABEL_14;
      }

      break;
    case 1:
      p_tombstoneSequenceRecord = &self->_slotASequenceHeaderRecord;
      tombstoneSequenceRecord = self->_slotASequenceHeaderRecord;
      if (tombstoneSequenceRecord != recordCopy)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:414 description:{@"Invalid parameter not satisfying: %@", @"_slotASequenceHeaderRecord == record"}];
LABEL_14:

        tombstoneSequenceRecord = *p_tombstoneSequenceRecord;
      }

      break;
    default:
      goto LABEL_10;
  }

  *p_tombstoneSequenceRecord = 0;

LABEL_10:
}

- (BOOL)hasActiveSequence
{
  if ([(HDCloudSyncSequenceRecord *)self->_slotASequenceHeaderRecord isActive])
  {
    return 1;
  }

  slotBSequenceHeaderRecord = self->_slotBSequenceHeaderRecord;

  return [(HDCloudSyncSequenceRecord *)slotBSequenceHeaderRecord isActive];
}

- (BOOL)hasSequenceWithFutureSyncEntityVersions:(id)versions
{
  versionsCopy = versions;
  slotASequenceHeaderRecord = self->_slotASequenceHeaderRecord;
  v8 = 1;
  if (!slotASequenceHeaderRecord || ![(HDCloudSyncSequenceRecord *)slotASequenceHeaderRecord hasFutureSyncEntityVersions:versionsCopy])
  {
    slotBSequenceHeaderRecord = self->_slotBSequenceHeaderRecord;
    if (!slotBSequenceHeaderRecord || ![(HDCloudSyncSequenceRecord *)slotBSequenceHeaderRecord hasFutureSyncEntityVersions:versionsCopy])
    {
      tombstoneSequenceRecord = self->_tombstoneSequenceRecord;
      if (!tombstoneSequenceRecord || ![(HDCloudSyncSequenceRecord *)tombstoneSequenceRecord hasFutureSyncEntityVersions:versionsCopy])
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (id)sequenceRecordWithRecordID:(id)d
{
  dCopy = d;
  p_slotASequenceHeaderRecord = &self->_slotASequenceHeaderRecord;
  record = [(HDCloudSyncRecord *)self->_slotASequenceHeaderRecord record];
  recordID = [record recordID];
  v8 = [recordID isEqual:dCopy];

  if (v8)
  {
    goto LABEL_4;
  }

  p_slotASequenceHeaderRecord = &self->_slotBSequenceHeaderRecord;
  record2 = [(HDCloudSyncRecord *)self->_slotBSequenceHeaderRecord record];
  recordID2 = [record2 recordID];
  v11 = [recordID2 isEqual:dCopy];

  if (v11)
  {
    goto LABEL_4;
  }

  p_slotASequenceHeaderRecord = &self->_tombstoneSequenceRecord;
  record3 = [(HDCloudSyncRecord *)self->_tombstoneSequenceRecord record];
  recordID3 = [record3 recordID];
  v14 = [recordID3 isEqual:dCopy];

  if (v14)
  {
LABEL_4:
    v15 = *p_slotASequenceHeaderRecord;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSUUID)storeIdentifier
{
  v2 = MEMORY[0x277CCAD78];
  storeIdentifier = [(HDCloudSyncCodableStore *)self->_underlyingStore storeIdentifier];
  v4 = [v2 hk_UUIDWithData:storeIdentifier];

  return v4;
}

- (HDSyncIdentity)syncIdentity
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HDCloudSyncCodableStore *)self->_underlyingStore hasSyncIdentity])
  {
    syncIdentity = [(HDCloudSyncCodableStore *)self->_underlyingStore syncIdentity];
    v9 = 0;
    v4 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:&v9];
    v5 = v9;

    if (!v4)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_fault_impl(&dword_228986000, v6, OS_LOG_TYPE_FAULT, "Failed to decode underlying sync identity for record %@.", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)repairOwnerIdentifier:(id)identifier
{
  underlyingStore = self->_underlyingStore;
  identifierCopy = identifier;
  ownerIdentifier = [(HDCloudSyncCodableStore *)underlyingStore ownerIdentifier];

  if (ownerIdentifier)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"_underlyingStore.ownerIdentifier == nil"}];
  }

  [(HDCloudSyncCodableStore *)self->_underlyingStore setOwnerIdentifier:identifierCopy];
  record = [(HDCloudSyncRecord *)self record];
  [record setObject:identifierCopy forKeyedSubscript:@"OwnerIdentifier"];
}

- (NSString)pendingOwner
{
  pendingOwnerIdentifier = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingOwnerIdentifier];
  v4 = [pendingOwnerIdentifier isEqualToString:&stru_283BF39C8];

  if (v4)
  {
    pendingOwnerIdentifier2 = 0;
  }

  else
  {
    pendingOwnerIdentifier2 = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingOwnerIdentifier];
  }

  return pendingOwnerIdentifier2;
}

- (void)setPendingOwner:(id)owner
{
  ownerCopy = owner;
  pendingOwnerIdentifier = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingOwnerIdentifier];
  v6 = ownerCopy;
  v12 = v6;
  if (pendingOwnerIdentifier != v6 && (!v6 || ([pendingOwnerIdentifier isEqual:v6] & 1) == 0))
  {
    [(HDCloudSyncCodableStore *)self->_underlyingStore setPendingOwnerIdentifier:v12];
  }

  record = [(HDCloudSyncRecord *)self record];
  v8 = [record objectForKeyedSubscript:@"PendingOwner"];

  if (!v12)
  {
    v10 = &stru_283BF39C8;
    if (v8 == &stru_283BF39C8)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (([(__CFString *)v8 isEqual:v10]& 1) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = [v12 copy];
  v10 = v9;
  if (v8 == v9)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_11:
  record2 = [(HDCloudSyncRecord *)self record];
  [record2 setObject:v10 forKeyedSubscript:@"PendingOwner"];

LABEL_12:
}

- (HDSyncIdentity)pendingSyncIdentity
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HDCloudSyncCodableStore *)self->_underlyingStore hasPendingSyncIdentity])
  {
    pendingSyncIdentity = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingSyncIdentity];
    v9 = 0;
    v4 = [HDSyncIdentity syncIdentityWithCodable:pendingSyncIdentity error:&v9];
    v5 = v9;

    if (!v4)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_fault_impl(&dword_228986000, v6, OS_LOG_TYPE_FAULT, "Failed to decode underlying pending sync identity for record %@.", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setPendingSyncIdentity:(id)identity
{
  underlyingStore = self->_underlyingStore;
  identityCopy = identity;
  pendingSyncIdentity = [(HDCloudSyncCodableStore *)underlyingStore pendingSyncIdentity];
  codableSyncIdentity = [identityCopy codableSyncIdentity];

  if (pendingSyncIdentity != codableSyncIdentity && (!codableSyncIdentity || ([pendingSyncIdentity isEqual:codableSyncIdentity] & 1) == 0))
  {
    [(HDCloudSyncCodableStore *)self->_underlyingStore setPendingSyncIdentity:codableSyncIdentity];
  }
}

- (BOOL)isChild
{
  hasIsChild = [(HDCloudSyncCodableStore *)self->_underlyingStore hasIsChild];
  if (hasIsChild)
  {
    underlyingStore = self->_underlyingStore;

    LOBYTE(hasIsChild) = [(HDCloudSyncCodableStore *)underlyingStore isChild];
  }

  return hasIsChild;
}

- (void)setProductType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"productType != nil"}];
  }

  productType = [(HDCloudSyncCodableStore *)self->_underlyingStore productType];
  v7 = typeCopy;
  v8 = v7;
  if (typeCopy && productType != v7)
  {
    if ([productType isEqual:v7])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (productType != v7)
  {
LABEL_8:
    [(HDCloudSyncCodableStore *)self->_underlyingStore setProductType:v8];
  }

LABEL_9:

  record = [(HDCloudSyncRecord *)self record];
  v10 = [record objectForKeyedSubscript:@"ProductType"];

  v11 = v8;
  v14 = v11;
  if (!typeCopy || v10 == v11)
  {
    if (v10 == v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (([v10 isEqual:v11] & 1) == 0)
  {
LABEL_14:
    record2 = [(HDCloudSyncRecord *)self record];
    [record2 setObject:v14 forKeyedSubscript:@"ProductType"];
  }

LABEL_15:
}

- (void)setSystemBuildVersion:(id)version
{
  versionCopy = version;
  if (!versionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:605 description:{@"Invalid parameter not satisfying: %@", @"systemBuildVersion != nil"}];
  }

  systemBuildVersion = [(HDCloudSyncCodableStore *)self->_underlyingStore systemBuildVersion];
  v7 = versionCopy;
  v8 = v7;
  if (versionCopy && systemBuildVersion != v7)
  {
    if ([systemBuildVersion isEqual:v7])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (systemBuildVersion != v7)
  {
LABEL_8:
    [(HDCloudSyncCodableStore *)self->_underlyingStore setSystemBuildVersion:v8];
  }

LABEL_9:

  record = [(HDCloudSyncRecord *)self record];
  v10 = [record objectForKeyedSubscript:@"SystemBuildVersion"];

  v11 = v8;
  v14 = v11;
  if (!versionCopy || v10 == v11)
  {
    if (v10 == v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (([v10 isEqual:v11] & 1) == 0)
  {
LABEL_14:
    record2 = [(HDCloudSyncRecord *)self record];
    [record2 setObject:v14 forKeyedSubscript:@"SystemBuildVersion"];
  }

LABEL_15:
}

- (void)setDeviceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:618 description:{@"Invalid parameter not satisfying: %@", @"deviceName != nil"}];
  }

  deviceName = [(HDCloudSyncCodableStore *)self->_underlyingStore deviceName];
  v7 = nameCopy;
  v8 = v7;
  if (nameCopy && deviceName != v7)
  {
    if ([deviceName isEqual:v7])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (deviceName != v7)
  {
LABEL_8:
    [(HDCloudSyncCodableStore *)self->_underlyingStore setDeviceName:v8];
  }

LABEL_9:

  record = [(HDCloudSyncRecord *)self record];
  v10 = [record objectForKeyedSubscript:@"DeviceName"];

  v11 = v8;
  v14 = v11;
  if (!nameCopy || v10 == v11)
  {
    if (v10 == v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (([v10 isEqual:v11] & 1) == 0)
  {
LABEL_14:
    record2 = [(HDCloudSyncRecord *)self record];
    [record2 setObject:v14 forKeyedSubscript:@"DeviceName"];
  }

LABEL_15:
}

- (HDCloudSyncShardPredicate)shardPredicate
{
  if ([(HDCloudSyncCodableStore *)self->_underlyingStore hasShardPredicate])
  {
    v3 = [HDCloudSyncShardPredicate alloc];
    shardPredicate = [(HDCloudSyncCodableStore *)self->_underlyingStore shardPredicate];
    v5 = [(HDCloudSyncShardPredicate *)v3 initWithCodableShardPredicate:shardPredicate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setShardPredicate:(id)predicate
{
  codablePredicate = [predicate codablePredicate];
  shardPredicate = [(HDCloudSyncCodableStore *)self->_underlyingStore shardPredicate];
  if (codablePredicate == shardPredicate)
  {

LABEL_8:
    v9 = codablePredicate;
    goto LABEL_9;
  }

  shardPredicate2 = [(HDCloudSyncCodableStore *)self->_underlyingStore shardPredicate];
  if (!shardPredicate2)
  {

    goto LABEL_7;
  }

  v6 = shardPredicate2;
  shardPredicate3 = [(HDCloudSyncCodableStore *)self->_underlyingStore shardPredicate];
  v8 = [codablePredicate isEqual:shardPredicate3];

  v9 = codablePredicate;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    [(HDCloudSyncCodableStore *)self->_underlyingStore setShardPredicate:codablePredicate];
    goto LABEL_8;
  }

LABEL_9:
}

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (HDCloudSyncStoreRecord)recordWithCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v8 = [recordType isEqualToString:@"CloudSyncStoreRecord"];

  if (v8)
  {
    v9 = [recordCopy hd_requiredValueForKey:@"Version" type:objc_opt_class() error:error];
    if (!v9)
    {
      v15 = 0;
LABEL_78:

      goto LABEL_79;
    }

    v73 = 0;
    v10 = [recordCopy hd_optionalEncryptedValueForKey:@"UnderlyingMessage" type:objc_opt_class() error:&v73];
    v11 = v73;
    v12 = v11;
    if (v10)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (!v13)
    {
      if (error)
      {
        v21 = v11;
        v15 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError();
        v15 = 0;
      }

      goto LABEL_77;
    }

    if (v10)
    {
      v14 = [[HDCloudSyncCodableStore alloc] initWithData:v10];
      if (v14)
      {
        v15 = -[HDCloudSyncStoreRecord initWithCKRecord:schemaVersion:underlyingStore:]([HDCloudSyncStoreRecord alloc], recordCopy, [v9 integerValue], v14);
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Underlying message present but does not decode."];
        v15 = 0;
      }

      goto LABEL_77;
    }

    v22 = objc_alloc_init(HDCloudSyncCodableStore);
    v23 = [recordCopy hd_requiredValueForKey:@"OwnerIdentifier" type:objc_opt_class() error:error];
    [(HDCloudSyncCodableStore *)v22 setOwnerIdentifier:v23];

    v66 = v22;
    ownerIdentifier = [(HDCloudSyncCodableStore *)v22 ownerIdentifier];

    if (!ownerIdentifier)
    {
      v15 = 0;
      v27 = v22;
LABEL_76:

LABEL_77:
      goto LABEL_78;
    }

    v25 = [recordCopy hd_requiredValueForKey:@"StoreIdentifier" type:objc_opt_class() error:error];
    if (!v25)
    {
      v15 = 0;
      v27 = v22;
LABEL_75:

      goto LABEL_76;
    }

    v26 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v25];
    if (!v26)
    {
      v34 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"record has invalid owner UUID data '%@'", v25}];
      if (v34)
      {
        if (error)
        {
          v36 = v34;
          v15 = 0;
          *error = v34;
        }

        else
        {
          _HKLogDroppedError();
          v15 = 0;
        }

        v31 = v34;
      }

      else
      {
        v31 = 0;
        v15 = 0;
      }

      goto LABEL_72;
    }

    v27 = v66;
    [(HDCloudSyncCodableStore *)v66 setStoreIdentifier:v25];
    v28 = [recordCopy hd_requiredValueForKey:@"PendingOwner" type:objc_opt_class() error:error];
    [(HDCloudSyncCodableStore *)v66 setPendingOwnerIdentifier:v28];

    pendingOwnerIdentifier = [(HDCloudSyncCodableStore *)v66 pendingOwnerIdentifier];

    if (!pendingOwnerIdentifier)
    {
      v15 = 0;
LABEL_74:

      goto LABEL_75;
    }

    v30 = [recordCopy hd_requiredValueForKey:@"Active" type:objc_opt_class() error:error];
    v31 = v30;
    if (!v30)
    {
      v15 = 0;
LABEL_73:

      goto LABEL_74;
    }

    -[HDCloudSyncCodableStore setActive:](v66, "setActive:", [v30 BOOLValue]);
    v72 = 0;
    v32 = [recordCopy hd_optionalValueForKey:@"SupportedProtocolVersion" type:objc_opt_class() error:&v72];
    v33 = v72;
    v34 = v33;
    v65 = v32;
    if (!v32 && v33)
    {
      if (error)
      {
        v35 = v33;
        v15 = 0;
        *error = v34;
      }

      else
      {
        _HKLogDroppedError();
        v15 = 0;
      }

      goto LABEL_71;
    }

    if (v32)
    {
      integerValue = [v32 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    [(HDCloudSyncCodableStore *)v66 setSupportedProtocolVersion:integerValue];
    v71 = v34;
    v64 = [recordCopy hd_optionalValueForKey:@"RequiredProtocolVersion" type:objc_opt_class() error:&v71];
    v38 = v71;

    v39 = v64;
    if (!v64 && v38)
    {
      if (error)
      {
        v40 = v38;
        v41 = v38;
        v15 = 0;
        *error = v41;
        v42 = v41;
      }

      else
      {
        _HKLogDroppedError();
        v42 = v38;
        v15 = 0;
      }

      goto LABEL_70;
    }

    v62 = v31;
    v63 = v26;
    if (v64)
    {
      integerValue2 = [v64 integerValue];
    }

    else
    {
      integerValue2 = 0;
    }

    [(HDCloudSyncCodableStore *)v66 setRequiredProtocolVersion:integerValue2];
    v70 = v38;
    v44 = [recordCopy hd_optionalValueForKey:@"SystemBuildVersion" type:objc_opt_class() error:&v70];
    v45 = v70;

    [(HDCloudSyncCodableStore *)v66 setSystemBuildVersion:v44];
    systemBuildVersion = [(HDCloudSyncCodableStore *)v66 systemBuildVersion];

    if (systemBuildVersion || !v45)
    {
      v69 = v45;
      v48 = [recordCopy hd_optionalValueForKey:@"ProductType" type:objc_opt_class() error:&v69];
      v49 = v69;

      [(HDCloudSyncCodableStore *)v66 setProductType:v48];
      productType = [(HDCloudSyncCodableStore *)v66 productType];

      if (!productType && v49)
      {
        if (error)
        {
          v51 = v49;
          v52 = v49;
          v15 = 0;
          *error = v52;
          v42 = v52;
        }

        else
        {
          _HKLogDroppedError();
          v42 = v49;
          v15 = 0;
        }

LABEL_69:
        v31 = v62;
        v39 = v64;
LABEL_70:

        v34 = v42;
LABEL_71:

LABEL_72:
        v27 = v66;
        goto LABEL_73;
      }

      v68 = v49;
      v53 = [recordCopy hd_optionalValueForKey:@"DeviceName" type:objc_opt_class() error:&v68];
      v45 = v68;

      [(HDCloudSyncCodableStore *)v66 setDeviceName:v53];
      deviceName = [(HDCloudSyncCodableStore *)v66 deviceName];

      if (deviceName || !v45)
      {
        v67 = v45;
        v55 = [recordCopy hd_optionalValueForKey:@"DeviceMode" type:objc_opt_class() error:&v67];
        v56 = v67;

        v60 = v55;
        v61 = v56;
        if (v55 || !v56)
        {
          if (v55)
          {
            integerValue3 = [v55 integerValue];
          }

          else
          {
            integerValue3 = 1;
          }

          [(HDCloudSyncCodableStore *)v66 setDeviceMode:integerValue3];
          v15 = -[HDCloudSyncStoreRecord initWithCKRecord:schemaVersion:underlyingStore:]([HDCloudSyncStoreRecord alloc], recordCopy, [v9 integerValue], v66);
        }

        else if (error)
        {
          v57 = v56;
          v15 = 0;
          *error = v56;
        }

        else
        {
          _HKLogDroppedError();
          v15 = 0;
        }

        v31 = v62;
        v39 = v64;

        v26 = v63;
        v42 = v61;
        goto LABEL_70;
      }
    }

    if (error)
    {
      v47 = v45;
      v15 = 0;
      *error = v45;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }

    v42 = v45;
    goto LABEL_69;
  }

  v16 = MEMORY[0x277CCA9B8];
  v17 = objc_opt_class();
  recordType2 = [recordCopy recordType];
  v19 = [v16 hk_errorForInvalidArgument:@"@" class:v17 selector:a2 format:{@"record has type (%@), but expected (%@)", recordType2, @"CloudSyncStoreRecord"}];
  if (v19)
  {
    if (error)
    {
      v20 = v19;
      *error = v19;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v15 = 0;
LABEL_79:

  return v15;
}

+ (id)fieldsForUnprotectedSerialization
{
  v38[10] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = &OBJC_METACLASS___HDCloudSyncStoreRecord;
  v22 = objc_msgSendSuper2(&v27, sel_fieldsForUnprotectedSerialization);
  v37 = objc_opt_class();
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v25 = [HDCloudSyncSerializedField fieldForKey:@"OwnerIdentifier" classes:v26 encrypted:0];
  v38[0] = v25;
  v36 = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v23 = [HDCloudSyncSerializedField fieldForKey:@"StoreIdentifier" classes:v24 encrypted:0];
  v38[1] = v23;
  v35 = objc_opt_class();
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v20 = [HDCloudSyncSerializedField fieldForKey:@"PendingOwner" classes:v21 encrypted:0];
  v38[2] = v20;
  v34 = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v18 = [HDCloudSyncSerializedField fieldForKey:@"Active" classes:v19 encrypted:0];
  v38[3] = v18;
  v33 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v16 = [HDCloudSyncSerializedField fieldForKey:@"SupportedProtocolVersion" classes:v17 encrypted:0];
  v38[4] = v16;
  v32 = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v14 = [HDCloudSyncSerializedField fieldForKey:@"RequiredProtocolVersion" classes:v15 encrypted:0];
  v38[5] = v14;
  v31 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v2 = [HDCloudSyncSerializedField fieldForKey:@"SystemBuildVersion" classes:v13 encrypted:0];
  v38[6] = v2;
  v30 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v4 = [HDCloudSyncSerializedField fieldForKey:@"ProductType" classes:v3 encrypted:0];
  v38[7] = v4;
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v6 = [HDCloudSyncSerializedField fieldForKey:@"DeviceName" classes:v5 encrypted:0];
  v38[8] = v6;
  v28 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v8 = [HDCloudSyncSerializedField fieldForKey:@"DeviceMode" classes:v7 encrypted:0];
  v38[9] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:10];
  v10 = [v22 arrayByAddingObjectsFromArray:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  order = [(HDCloudSyncStoreRecord *)self order];
  if (order >= [compareCopy order])
  {
    order2 = [(HDCloudSyncStoreRecord *)self order];
    if (order2 > [compareCopy order])
    {
      v6 = 1;
      goto LABEL_14;
    }

    shardPredicate = [(HDCloudSyncStoreRecord *)self shardPredicate];
    shardPredicate2 = [compareCopy shardPredicate];
    v10 = shardPredicate2;
    if (shardPredicate)
    {
      if (!shardPredicate2)
      {
        goto LABEL_11;
      }

      v6 = [shardPredicate compare:shardPredicate2];
      if (v6)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    record = [(HDCloudSyncRecord *)self record];
    modificationDate = [record modificationDate];
    record2 = [compareCopy record];
    modificationDate2 = [record2 modificationDate];
    v15 = [modificationDate hk_isBeforeDate:modificationDate2];

    if (v15)
    {
      v6 = 1;
      goto LABEL_13;
    }

    record3 = [(HDCloudSyncRecord *)self record];
    modificationDate3 = [record3 modificationDate];
    record4 = [compareCopy record];
    modificationDate4 = [record4 modificationDate];
    v20 = [modificationDate3 hk_isAfterDate:modificationDate4];

    if ((v20 & 1) == 0)
    {
      storeIdentifier = [(HDCloudSyncStoreRecord *)self storeIdentifier];
      uUIDString = [storeIdentifier UUIDString];
      storeIdentifier2 = [(HDCloudSyncStoreRecord *)self storeIdentifier];
      uUIDString2 = [storeIdentifier2 UUIDString];
      v6 = [uUIDString compare:uUIDString2];

      goto LABEL_13;
    }

LABEL_11:
    v6 = -1;
    goto LABEL_13;
  }

  v6 = -1;
LABEL_14:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HDCloudSyncCodableStore *)self->_underlyingStore isEqual:equalCopy->_underlyingStore];
  }

  return v5;
}

- (id)shortDescription
{
  syncIdentity = [(HDCloudSyncCodableStore *)self->_underlyingStore syncIdentity];
  v60[0] = 0;
  v58 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:v60];
  v4 = v60[0];

  pendingSyncIdentity = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingSyncIdentity];
  v59 = v4;
  v6 = [HDSyncIdentity syncIdentityWithCodable:pendingSyncIdentity error:&v59];
  v7 = v59;

  v8 = MEMORY[0x277CCACA8];
  if ([(HDCloudSyncCodableStore *)self->_underlyingStore active])
  {
    v9 = @"ACTIVE";
  }

  else
  {
    v9 = @"Inactive";
  }

  record = [(HDCloudSyncRecord *)self record];
  modificationDate = [record modificationDate];
  systemBuildVersion = [(HDCloudSyncStoreRecord *)self systemBuildVersion];
  productType = [(HDCloudSyncStoreRecord *)self productType];
  deviceMode = [(HDCloudSyncStoreRecord *)self deviceMode];
  if (deviceMode == 1)
  {
    v12 = @"Basic";
    goto LABEL_8;
  }

  if (deviceMode == 2)
  {
    v12 = @"Satellite";
LABEL_8:
    v54 = v12;
    goto LABEL_10;
  }

  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", deviceMode];
LABEL_10:
  supportedProtocolVersion = [(HDCloudSyncStoreRecord *)self supportedProtocolVersion];
  if (!supportedProtocolVersion)
  {
    v14 = @"Tigris";
    goto LABEL_14;
  }

  if (supportedProtocolVersion == 1)
  {
    v14 = @"Yukon";
LABEL_14:
    v53 = v14;
    goto LABEL_16;
  }

  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", supportedProtocolVersion];
LABEL_16:
  requiredProtocolVersion = [(HDCloudSyncStoreRecord *)self requiredProtocolVersion];
  v49 = v7;
  v47 = record;
  v45 = v9;
  v46 = v8;
  if (!requiredProtocolVersion)
  {
    v16 = @"Tigris";
    goto LABEL_20;
  }

  if (requiredProtocolVersion == 1)
  {
    v16 = @"Yukon";
LABEL_20:
    v52 = v16;
    goto LABEL_22;
  }

  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", requiredProtocolVersion];
LABEL_22:
  storeIdentifier = [(HDCloudSyncStoreRecord *)self storeIdentifier];
  ownerIdentifier = [(HDCloudSyncCodableStore *)self->_underlyingStore ownerIdentifier];
  pendingOwnerIdentifier = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingOwnerIdentifier];
  v18 = pendingOwnerIdentifier;
  if (pendingOwnerIdentifier)
  {
    v19 = pendingOwnerIdentifier;
  }

  else
  {
    v19 = @"---";
  }

  v43 = v19;
  isChild = [(HDCloudSyncCodableStore *)self->_underlyingStore isChild];
  v21 = @"NO";
  if (isChild)
  {
    v21 = @"YES";
  }

  v42 = v21;
  v48 = v6;
  if (v6)
  {
    v22 = v6;
  }

  else
  {
    v22 = @"---";
  }

  v41 = v22;
  shardPredicate = [(HDCloudSyncStoreRecord *)self shardPredicate];
  v23 = [shardPredicate description];
  v24 = v23;
  v25 = @"--";
  if (v23)
  {
    v25 = v23;
  }

  v40 = v25;
  currentSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  if (currentSequenceHeaderRecord)
  {
    currentSequenceHeaderRecord2 = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
    slot = [currentSequenceHeaderRecord2 slot];
    if ((slot - 1) >= 3)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", slot];
    }

    else
    {
      v28 = off_27861D6F8[(slot - 1)];
    }
  }

  else
  {
    v28 = &stru_283BF39C8;
  }

  oldSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self oldSequenceHeaderRecord];
  if (oldSequenceHeaderRecord)
  {
    oldSequenceHeaderRecord2 = [(HDCloudSyncStoreRecord *)self oldSequenceHeaderRecord];
    slot2 = [oldSequenceHeaderRecord2 slot];
    if ((slot2 - 1) >= 3)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", slot2];
    }

    else
    {
      v31 = off_27861D6F8[(slot2 - 1)];
    }
  }

  else
  {
    v31 = &stru_283BF39C8;
  }

  activeSequenceHeaderRecord = [(HDCloudSyncStoreRecord *)self activeSequenceHeaderRecord];
  if (activeSequenceHeaderRecord)
  {
    activeSequenceHeaderRecord2 = [(HDCloudSyncStoreRecord *)self activeSequenceHeaderRecord];
    slot3 = [activeSequenceHeaderRecord2 slot];
    if ((slot3 - 1) >= 3)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", slot3];
    }

    else
    {
      v35 = off_27861D6F8[(slot3 - 1)];
    }

    v36 = [v46 stringWithFormat:@"+ (%@, %@) %@ on %@, Mode: %@, Version: %@ - %@\n| Store: %@ | Owner: %@ | Pending: %@\n| isChild: %@ | SyncIdentity: %@ | PendingSyncIdentity: %@\n| Shard: %@\n| Sequence Headers: Current(%@) Old(%@) Active(%@)\n+--------------------------------------------------", v45, modificationDate, systemBuildVersion, productType, v54, v53, v52, storeIdentifier, ownerIdentifier, v43, v42, v58, v41, v40, v28, v31, v35];
  }

  else
  {
    v36 = [v46 stringWithFormat:@"+ (%@, %@) %@ on %@, Mode: %@, Version: %@ - %@\n| Store: %@ | Owner: %@ | Pending: %@\n| isChild: %@ | SyncIdentity: %@ | PendingSyncIdentity: %@\n| Shard: %@\n| Sequence Headers: Current(%@) Old(%@) Active(%@)\n+--------------------------------------------------", v45, modificationDate, systemBuildVersion, productType, v54, v53, v52, storeIdentifier, ownerIdentifier, v43, v42, v58, v41, v40, v28, v31, &stru_283BF39C8];
  }

  if (oldSequenceHeaderRecord)
  {
  }

  if (currentSequenceHeaderRecord)
  {
  }

  return v36;
}

@end