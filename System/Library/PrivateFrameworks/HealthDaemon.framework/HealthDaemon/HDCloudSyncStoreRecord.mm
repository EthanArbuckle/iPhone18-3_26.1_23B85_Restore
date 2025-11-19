@interface HDCloudSyncStoreRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isStoreRecord:(id)a3;
+ (BOOL)isStoreRecordID:(id)a3;
+ (HDCloudSyncStoreRecord)recordWithCKRecord:(id)a3 error:(id *)a4;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDForOwnerIdentifier:(id)a3 storeIdentifier:(id)a4 zoneID:(id)a5;
+ (id)recordIDWithIndividualZoneID:(id)a3;
- (BOOL)hasActiveSequence;
- (BOOL)hasSequenceWithFutureSyncEntityVersions:(id)a3;
- (BOOL)isChild;
- (BOOL)isEqual:(id)a3;
- (HDCloudSyncSequenceRecord)sequenceRecord;
- (HDCloudSyncShardPredicate)shardPredicate;
- (HDCloudSyncStoreRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (HDSyncIdentity)pendingSyncIdentity;
- (HDSyncIdentity)syncIdentity;
- (NSArray)orderedSequenceRecords;
- (NSString)pendingOwner;
- (NSUUID)storeIdentifier;
- (id)_clearSequenceHeaderRecord:(void *)a1;
- (id)activeSequenceHeaderRecord;
- (id)addNewSequenceHeaderRecordWithSyncAnchorMap:(id)a3 includedIdentifiers:(id)a4 includedSyncIdentities:(id)a5 includedChildSyncIdentities:(id)a6;
- (id)addNewTombstoneSequenceHeaderRecordWithIncludedIdentifiers:(id)a3 includedSyncIdentities:(id)a4 includedChildSyncIdentities:(id)a5;
- (id)clearCurrentSequenceHeaderRecord;
- (id)clearOldSequenceHeaderRecord;
- (id)clearPendingSequenceHeaderRecord;
- (id)clearTombstoneSequenceHeaderRecord;
- (id)currentSequenceHeaderRecord;
- (id)initWithCKRecord:(uint64_t)a3 schemaVersion:(void *)a4 underlyingStore:;
- (id)oldSequenceHeaderRecord;
- (id)pendingSequenceHeaderRecord;
- (id)sequenceRecordWithRecordID:(id)a3;
- (id)shortDescription;
- (int64_t)compare:(id)a3;
- (void)addSequenceHeaderRecord:(id)a3;
- (void)removeSequenceHeaderRecord:(id)a3;
- (void)repairOwnerIdentifier:(id)a3;
- (void)setDeviceName:(id)a3;
- (void)setPendingOwner:(id)a3;
- (void)setPendingSyncIdentity:(id)a3;
- (void)setProductType:(id)a3;
- (void)setShardPredicate:(id)a3;
- (void)setSystemBuildVersion:(id)a3;
@end

@implementation HDCloudSyncStoreRecord

+ (id)recordIDForOwnerIdentifier:(id)a3 storeIdentifier:(id)a4 zoneID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBC5D0];
  v10 = a5;
  v11 = [v9 alloc];
  v12 = MEMORY[0x277CCACA8];
  v13 = v7;
  v14 = v8;
  v15 = [v12 alloc];
  v16 = [v14 UUIDString];

  v17 = [v15 initWithFormat:@"%@/%@/Store", v13, v16];
  v18 = [v11 initWithRecordName:v17 zoneID:v10];

  return v18;
}

+ (id)recordIDWithIndividualZoneID:(id)a3
{
  v3 = MEMORY[0x277CBC5D0];
  v4 = a3;
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncRoot" zoneID:v4];

  return v5;
}

+ (BOOL)isStoreRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncStoreRecord"];

  return v4;
}

+ (BOOL)isStoreRecordID:(id)a3
{
  v3 = a3;
  v4 = [v3 recordName];
  v5 = [v4 isEqualToString:@"CloudSyncRoot"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 recordName];
    v8 = [v7 componentsSeparatedByString:@"/"];

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

- (HDCloudSyncStoreRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (id)initWithCKRecord:(uint64_t)a3 schemaVersion:(void *)a4 underlyingStore:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = HDCloudSyncStoreRecord;
    v9 = objc_msgSendSuper2(&v18, sel_initWithCKRecord_schemaVersion_, v7, a3);
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 3, a4);
      v11 = [v10[3] ownerIdentifier];
      [v7 hd_setValue:v11 ifChangedForKey:@"OwnerIdentifier"];

      v12 = [v10[3] pendingOwnerIdentifier];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = &stru_283BF39C8;
      }

      [v7 hd_setValue:v14 ifChangedForKey:@"PendingOwner"];

      v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10[3], "active")}];
      [v7 hd_setValue:v15 ifChangedForKey:@"Active"];

      v16 = [v10[3] storeIdentifier];
      [v7 hd_setValue:v16 ifChangedForKey:@"StoreIdentifier"];
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
  v3 = [(HDCloudSyncStoreRecord *)self activeSequenceHeaderRecord];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  }

  v6 = v5;

  return v6;
}

- (NSArray)orderedSequenceRecords
{
  v3 = self->_tombstoneSequenceRecord;
  v4 = [(HDCloudSyncStoreRecord *)self sequenceRecord];
  slotASequenceHeaderRecord = self->_slotASequenceHeaderRecord;
  if (slotASequenceHeaderRecord == v4)
  {
    slotASequenceHeaderRecord = self->_slotBSequenceHeaderRecord;
  }

  v6 = MEMORY[0x277CBEB18];
  v7 = slotASequenceHeaderRecord;
  v8 = objc_alloc_init(v6);
  [v8 hk_addNonNilObject:v3];
  [v8 hk_addNonNilObject:v4];
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
      v7 = [(HDCloudSyncSequenceRecord *)slotASequenceHeaderRecord baselineEpoch];
      if (v7 <= [(HDCloudSyncSequenceRecord *)*p_slotBSequenceHeaderRecord baselineEpoch])
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
  v3 = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  v4 = [(HDCloudSyncStoreRecord *)self _clearSequenceHeaderRecord:v3];

  return v4;
}

- (id)_clearSequenceHeaderRecord:(void *)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = a1 + 5;
    v7 = a1[5];
    if (v7 == v3 || (v6 = a1 + 6, v7 = a1[6], v7 == v3) || (v6 = a1 + 4, v7 = a1[4], v7 == v3))
    {
      *v6 = 0;

      v8 = [v4 record];
      v5 = [v8 recordID];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)oldSequenceHeaderRecord
{
  v3 = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  slotBSequenceHeaderRecord = self->_slotBSequenceHeaderRecord;
  if (v3 != self->_slotASequenceHeaderRecord)
  {
    if (v3 != slotBSequenceHeaderRecord)
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
  v3 = [(HDCloudSyncStoreRecord *)self oldSequenceHeaderRecord];
  v4 = [(HDCloudSyncStoreRecord *)self _clearSequenceHeaderRecord:v3];

  return v4;
}

- (id)activeSequenceHeaderRecord
{
  v3 = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  v4 = [(HDCloudSyncSequenceRecord *)v3 isActive];
  v5 = v3;
  if (v4)
  {
    goto LABEL_7;
  }

  if (v3 == self->_slotASequenceHeaderRecord && (p_slotBSequenceHeaderRecord = &self->_slotBSequenceHeaderRecord, [(HDCloudSyncSequenceRecord *)self->_slotBSequenceHeaderRecord isActive]) || v3 == self->_slotBSequenceHeaderRecord && (p_slotBSequenceHeaderRecord = &self->_slotASequenceHeaderRecord, [(HDCloudSyncSequenceRecord *)self->_slotASequenceHeaderRecord isActive]))
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
  v3 = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  v4 = v3;
  if (!v3)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  v5 = [(HDCloudSyncSequenceRecord *)v3 isActive];
  v6 = v4;
  if (v5)
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
  v3 = [(HDCloudSyncStoreRecord *)self pendingSequenceHeaderRecord];
  v4 = [(HDCloudSyncStoreRecord *)self _clearSequenceHeaderRecord:v3];

  return v4;
}

- (id)clearTombstoneSequenceHeaderRecord
{
  v3 = [(HDCloudSyncRecord *)self->_tombstoneSequenceRecord record];
  v4 = [v3 recordID];

  tombstoneSequenceRecord = self->_tombstoneSequenceRecord;
  self->_tombstoneSequenceRecord = 0;

  return v4;
}

- (id)addNewSequenceHeaderRecordWithSyncAnchorMap:(id)a3 includedIdentifiers:(id)a4 includedSyncIdentities:(id)a5 includedChildSyncIdentities:(id)a6
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  v16 = v15;
  if (v15)
  {
    if ([v15 slot] == 1)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    v18 = -[HDCloudSyncSequenceRecord initForSequenceSlot:syncAnchorMap:changeIndex:baselineEpoch:includedIdentifiers:includedSyncIdentities:includedChildSyncIdentities:storeRecord:]([HDCloudSyncSequenceRecord alloc], "initForSequenceSlot:syncAnchorMap:changeIndex:baselineEpoch:includedIdentifiers:includedSyncIdentities:includedChildSyncIdentities:storeRecord:", v17, v14, [v16 changeIndex], objc_msgSend(v16, "baselineEpoch") + 1, v13, v12, v11, self);

    v19 = [v18 slot];
    v20 = &OBJC_IVAR___HDCloudSyncStoreRecord__slotASequenceHeaderRecord;
    if (v19 != 1)
    {
      v20 = &OBJC_IVAR___HDCloudSyncStoreRecord__slotBSequenceHeaderRecord;
    }
  }

  else
  {
    v18 = [[HDCloudSyncSequenceRecord alloc] initForSequenceSlot:1 syncAnchorMap:v14 changeIndex:0 baselineEpoch:0 includedIdentifiers:v13 includedSyncIdentities:v12 includedChildSyncIdentities:v11 storeRecord:self];

    v20 = &OBJC_IVAR___HDCloudSyncStoreRecord__slotASequenceHeaderRecord;
  }

  objc_storeStrong((&self->super.super.isa + *v20), v18);
  v25 = 0;
  v21 = [v18 validateWithError:&v25];
  v22 = v25;
  if ((v21 & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:372 description:{@"Failed to validate sequence record after creation: %@", v22}];
  }

  return v18;
}

- (id)addNewTombstoneSequenceHeaderRecordWithIncludedIdentifiers:(id)a3 includedSyncIdentities:(id)a4 includedChildSyncIdentities:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [HDCloudSyncSequenceRecord alloc];
  v13 = objc_alloc_init(HDSyncAnchorMap);
  v14 = [(HDCloudSyncSequenceRecord *)v12 initForSequenceSlot:3 syncAnchorMap:v13 changeIndex:0 baselineEpoch:-100 includedIdentifiers:v11 includedSyncIdentities:v10 includedChildSyncIdentities:v9 storeRecord:self];

  tombstoneSequenceRecord = self->_tombstoneSequenceRecord;
  self->_tombstoneSequenceRecord = v14;

  [(HDCloudSyncSequenceRecord *)self->_tombstoneSequenceRecord setActive:1];
  v16 = self->_tombstoneSequenceRecord;
  v22 = 0;
  LOBYTE(v11) = [(HDCloudSyncRecord *)v16 validateWithError:&v22];
  v17 = v22;
  if ((v11 & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:391 description:{@"Failed to validate sequence record after creation: %@", v17}];
  }

  v18 = self->_tombstoneSequenceRecord;
  v19 = v18;

  return v18;
}

- (void)addSequenceHeaderRecord:(id)a3
{
  v6 = a3;
  v5 = [v6 slot] - 1;
  if (v5 <= 2)
  {
    objc_storeStrong((&self->super.super.isa + *off_27861D6E0[v5]), a3);
  }
}

- (void)removeSequenceHeaderRecord:(id)a3
{
  v9 = a3;
  v5 = [(HDCloudSyncSequenceRecord *)v9 slot];
  switch(v5)
  {
    case 3:
      p_tombstoneSequenceRecord = &self->_tombstoneSequenceRecord;
      tombstoneSequenceRecord = self->_tombstoneSequenceRecord;
      if (tombstoneSequenceRecord != v9)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        [v8 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"_tombstoneSequenceRecord == record"}];
        goto LABEL_14;
      }

      break;
    case 2:
      p_tombstoneSequenceRecord = &self->_slotBSequenceHeaderRecord;
      tombstoneSequenceRecord = self->_slotBSequenceHeaderRecord;
      if (tombstoneSequenceRecord != v9)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        [v8 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:418 description:{@"Invalid parameter not satisfying: %@", @"_slotBSequenceHeaderRecord == record"}];
        goto LABEL_14;
      }

      break;
    case 1:
      p_tombstoneSequenceRecord = &self->_slotASequenceHeaderRecord;
      tombstoneSequenceRecord = self->_slotASequenceHeaderRecord;
      if (tombstoneSequenceRecord != v9)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        [v8 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:414 description:{@"Invalid parameter not satisfying: %@", @"_slotASequenceHeaderRecord == record"}];
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

- (BOOL)hasSequenceWithFutureSyncEntityVersions:(id)a3
{
  v4 = a3;
  slotASequenceHeaderRecord = self->_slotASequenceHeaderRecord;
  v8 = 1;
  if (!slotASequenceHeaderRecord || ![(HDCloudSyncSequenceRecord *)slotASequenceHeaderRecord hasFutureSyncEntityVersions:v4])
  {
    slotBSequenceHeaderRecord = self->_slotBSequenceHeaderRecord;
    if (!slotBSequenceHeaderRecord || ![(HDCloudSyncSequenceRecord *)slotBSequenceHeaderRecord hasFutureSyncEntityVersions:v4])
    {
      tombstoneSequenceRecord = self->_tombstoneSequenceRecord;
      if (!tombstoneSequenceRecord || ![(HDCloudSyncSequenceRecord *)tombstoneSequenceRecord hasFutureSyncEntityVersions:v4])
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (id)sequenceRecordWithRecordID:(id)a3
{
  v4 = a3;
  p_slotASequenceHeaderRecord = &self->_slotASequenceHeaderRecord;
  v6 = [(HDCloudSyncRecord *)self->_slotASequenceHeaderRecord record];
  v7 = [v6 recordID];
  v8 = [v7 isEqual:v4];

  if (v8)
  {
    goto LABEL_4;
  }

  p_slotASequenceHeaderRecord = &self->_slotBSequenceHeaderRecord;
  v9 = [(HDCloudSyncRecord *)self->_slotBSequenceHeaderRecord record];
  v10 = [v9 recordID];
  v11 = [v10 isEqual:v4];

  if (v11)
  {
    goto LABEL_4;
  }

  p_slotASequenceHeaderRecord = &self->_tombstoneSequenceRecord;
  v12 = [(HDCloudSyncRecord *)self->_tombstoneSequenceRecord record];
  v13 = [v12 recordID];
  v14 = [v13 isEqual:v4];

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
  v3 = [(HDCloudSyncCodableStore *)self->_underlyingStore storeIdentifier];
  v4 = [v2 hk_UUIDWithData:v3];

  return v4;
}

- (HDSyncIdentity)syncIdentity
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HDCloudSyncCodableStore *)self->_underlyingStore hasSyncIdentity])
  {
    v3 = [(HDCloudSyncCodableStore *)self->_underlyingStore syncIdentity];
    v9 = 0;
    v4 = [HDSyncIdentity syncIdentityWithCodable:v3 error:&v9];
    v5 = v9;

    if (!v4)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v11 = self;
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

- (void)repairOwnerIdentifier:(id)a3
{
  underlyingStore = self->_underlyingStore;
  v6 = a3;
  v7 = [(HDCloudSyncCodableStore *)underlyingStore ownerIdentifier];

  if (v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"_underlyingStore.ownerIdentifier == nil"}];
  }

  [(HDCloudSyncCodableStore *)self->_underlyingStore setOwnerIdentifier:v6];
  v9 = [(HDCloudSyncRecord *)self record];
  [v9 setObject:v6 forKeyedSubscript:@"OwnerIdentifier"];
}

- (NSString)pendingOwner
{
  v3 = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingOwnerIdentifier];
  v4 = [v3 isEqualToString:&stru_283BF39C8];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingOwnerIdentifier];
  }

  return v5;
}

- (void)setPendingOwner:(id)a3
{
  v4 = a3;
  v5 = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingOwnerIdentifier];
  v6 = v4;
  v12 = v6;
  if (v5 != v6 && (!v6 || ([v5 isEqual:v6] & 1) == 0))
  {
    [(HDCloudSyncCodableStore *)self->_underlyingStore setPendingOwnerIdentifier:v12];
  }

  v7 = [(HDCloudSyncRecord *)self record];
  v8 = [v7 objectForKeyedSubscript:@"PendingOwner"];

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
  v11 = [(HDCloudSyncRecord *)self record];
  [v11 setObject:v10 forKeyedSubscript:@"PendingOwner"];

LABEL_12:
}

- (HDSyncIdentity)pendingSyncIdentity
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HDCloudSyncCodableStore *)self->_underlyingStore hasPendingSyncIdentity])
  {
    v3 = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingSyncIdentity];
    v9 = 0;
    v4 = [HDSyncIdentity syncIdentityWithCodable:v3 error:&v9];
    v5 = v9;

    if (!v4)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v11 = self;
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

- (void)setPendingSyncIdentity:(id)a3
{
  underlyingStore = self->_underlyingStore;
  v5 = a3;
  v7 = [(HDCloudSyncCodableStore *)underlyingStore pendingSyncIdentity];
  v6 = [v5 codableSyncIdentity];

  if (v7 != v6 && (!v6 || ([v7 isEqual:v6] & 1) == 0))
  {
    [(HDCloudSyncCodableStore *)self->_underlyingStore setPendingSyncIdentity:v6];
  }
}

- (BOOL)isChild
{
  v3 = [(HDCloudSyncCodableStore *)self->_underlyingStore hasIsChild];
  if (v3)
  {
    underlyingStore = self->_underlyingStore;

    LOBYTE(v3) = [(HDCloudSyncCodableStore *)underlyingStore isChild];
  }

  return v3;
}

- (void)setProductType:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"productType != nil"}];
  }

  v6 = [(HDCloudSyncCodableStore *)self->_underlyingStore productType];
  v7 = v5;
  v8 = v7;
  if (v5 && v6 != v7)
  {
    if ([v6 isEqual:v7])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v6 != v7)
  {
LABEL_8:
    [(HDCloudSyncCodableStore *)self->_underlyingStore setProductType:v8];
  }

LABEL_9:

  v9 = [(HDCloudSyncRecord *)self record];
  v10 = [v9 objectForKeyedSubscript:@"ProductType"];

  v11 = v8;
  v14 = v11;
  if (!v5 || v10 == v11)
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
    v12 = [(HDCloudSyncRecord *)self record];
    [v12 setObject:v14 forKeyedSubscript:@"ProductType"];
  }

LABEL_15:
}

- (void)setSystemBuildVersion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:605 description:{@"Invalid parameter not satisfying: %@", @"systemBuildVersion != nil"}];
  }

  v6 = [(HDCloudSyncCodableStore *)self->_underlyingStore systemBuildVersion];
  v7 = v5;
  v8 = v7;
  if (v5 && v6 != v7)
  {
    if ([v6 isEqual:v7])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v6 != v7)
  {
LABEL_8:
    [(HDCloudSyncCodableStore *)self->_underlyingStore setSystemBuildVersion:v8];
  }

LABEL_9:

  v9 = [(HDCloudSyncRecord *)self record];
  v10 = [v9 objectForKeyedSubscript:@"SystemBuildVersion"];

  v11 = v8;
  v14 = v11;
  if (!v5 || v10 == v11)
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
    v12 = [(HDCloudSyncRecord *)self record];
    [v12 setObject:v14 forKeyedSubscript:@"SystemBuildVersion"];
  }

LABEL_15:
}

- (void)setDeviceName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HDCloudSyncStoreRecord.m" lineNumber:618 description:{@"Invalid parameter not satisfying: %@", @"deviceName != nil"}];
  }

  v6 = [(HDCloudSyncCodableStore *)self->_underlyingStore deviceName];
  v7 = v5;
  v8 = v7;
  if (v5 && v6 != v7)
  {
    if ([v6 isEqual:v7])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v6 != v7)
  {
LABEL_8:
    [(HDCloudSyncCodableStore *)self->_underlyingStore setDeviceName:v8];
  }

LABEL_9:

  v9 = [(HDCloudSyncRecord *)self record];
  v10 = [v9 objectForKeyedSubscript:@"DeviceName"];

  v11 = v8;
  v14 = v11;
  if (!v5 || v10 == v11)
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
    v12 = [(HDCloudSyncRecord *)self record];
    [v12 setObject:v14 forKeyedSubscript:@"DeviceName"];
  }

LABEL_15:
}

- (HDCloudSyncShardPredicate)shardPredicate
{
  if ([(HDCloudSyncCodableStore *)self->_underlyingStore hasShardPredicate])
  {
    v3 = [HDCloudSyncShardPredicate alloc];
    v4 = [(HDCloudSyncCodableStore *)self->_underlyingStore shardPredicate];
    v5 = [(HDCloudSyncShardPredicate *)v3 initWithCodableShardPredicate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setShardPredicate:(id)a3
{
  v10 = [a3 codablePredicate];
  v4 = [(HDCloudSyncCodableStore *)self->_underlyingStore shardPredicate];
  if (v10 == v4)
  {

LABEL_8:
    v9 = v10;
    goto LABEL_9;
  }

  v5 = [(HDCloudSyncCodableStore *)self->_underlyingStore shardPredicate];
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = [(HDCloudSyncCodableStore *)self->_underlyingStore shardPredicate];
  v8 = [v10 isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    [(HDCloudSyncCodableStore *)self->_underlyingStore setShardPredicate:v10];
    goto LABEL_8;
  }

LABEL_9:
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (HDCloudSyncStoreRecord)recordWithCKRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 recordType];
  v8 = [v7 isEqualToString:@"CloudSyncStoreRecord"];

  if (v8)
  {
    v9 = [v6 hd_requiredValueForKey:@"Version" type:objc_opt_class() error:a4];
    if (!v9)
    {
      v15 = 0;
LABEL_78:

      goto LABEL_79;
    }

    v73 = 0;
    v10 = [v6 hd_optionalEncryptedValueForKey:@"UnderlyingMessage" type:objc_opt_class() error:&v73];
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
      if (a4)
      {
        v21 = v11;
        v15 = 0;
        *a4 = v12;
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
        v15 = -[HDCloudSyncStoreRecord initWithCKRecord:schemaVersion:underlyingStore:]([HDCloudSyncStoreRecord alloc], v6, [v9 integerValue], v14);
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Underlying message present but does not decode."];
        v15 = 0;
      }

      goto LABEL_77;
    }

    v22 = objc_alloc_init(HDCloudSyncCodableStore);
    v23 = [v6 hd_requiredValueForKey:@"OwnerIdentifier" type:objc_opt_class() error:a4];
    [(HDCloudSyncCodableStore *)v22 setOwnerIdentifier:v23];

    v66 = v22;
    v24 = [(HDCloudSyncCodableStore *)v22 ownerIdentifier];

    if (!v24)
    {
      v15 = 0;
      v27 = v22;
LABEL_76:

LABEL_77:
      goto LABEL_78;
    }

    v25 = [v6 hd_requiredValueForKey:@"StoreIdentifier" type:objc_opt_class() error:a4];
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
        if (a4)
        {
          v36 = v34;
          v15 = 0;
          *a4 = v34;
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
    v28 = [v6 hd_requiredValueForKey:@"PendingOwner" type:objc_opt_class() error:a4];
    [(HDCloudSyncCodableStore *)v66 setPendingOwnerIdentifier:v28];

    v29 = [(HDCloudSyncCodableStore *)v66 pendingOwnerIdentifier];

    if (!v29)
    {
      v15 = 0;
LABEL_74:

      goto LABEL_75;
    }

    v30 = [v6 hd_requiredValueForKey:@"Active" type:objc_opt_class() error:a4];
    v31 = v30;
    if (!v30)
    {
      v15 = 0;
LABEL_73:

      goto LABEL_74;
    }

    -[HDCloudSyncCodableStore setActive:](v66, "setActive:", [v30 BOOLValue]);
    v72 = 0;
    v32 = [v6 hd_optionalValueForKey:@"SupportedProtocolVersion" type:objc_opt_class() error:&v72];
    v33 = v72;
    v34 = v33;
    v65 = v32;
    if (!v32 && v33)
    {
      if (a4)
      {
        v35 = v33;
        v15 = 0;
        *a4 = v34;
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
      v37 = [v32 integerValue];
    }

    else
    {
      v37 = 0;
    }

    [(HDCloudSyncCodableStore *)v66 setSupportedProtocolVersion:v37];
    v71 = v34;
    v64 = [v6 hd_optionalValueForKey:@"RequiredProtocolVersion" type:objc_opt_class() error:&v71];
    v38 = v71;

    v39 = v64;
    if (!v64 && v38)
    {
      if (a4)
      {
        v40 = v38;
        v41 = v38;
        v15 = 0;
        *a4 = v41;
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
      v43 = [v64 integerValue];
    }

    else
    {
      v43 = 0;
    }

    [(HDCloudSyncCodableStore *)v66 setRequiredProtocolVersion:v43];
    v70 = v38;
    v44 = [v6 hd_optionalValueForKey:@"SystemBuildVersion" type:objc_opt_class() error:&v70];
    v45 = v70;

    [(HDCloudSyncCodableStore *)v66 setSystemBuildVersion:v44];
    v46 = [(HDCloudSyncCodableStore *)v66 systemBuildVersion];

    if (v46 || !v45)
    {
      v69 = v45;
      v48 = [v6 hd_optionalValueForKey:@"ProductType" type:objc_opt_class() error:&v69];
      v49 = v69;

      [(HDCloudSyncCodableStore *)v66 setProductType:v48];
      v50 = [(HDCloudSyncCodableStore *)v66 productType];

      if (!v50 && v49)
      {
        if (a4)
        {
          v51 = v49;
          v52 = v49;
          v15 = 0;
          *a4 = v52;
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
      v53 = [v6 hd_optionalValueForKey:@"DeviceName" type:objc_opt_class() error:&v68];
      v45 = v68;

      [(HDCloudSyncCodableStore *)v66 setDeviceName:v53];
      v54 = [(HDCloudSyncCodableStore *)v66 deviceName];

      if (v54 || !v45)
      {
        v67 = v45;
        v55 = [v6 hd_optionalValueForKey:@"DeviceMode" type:objc_opt_class() error:&v67];
        v56 = v67;

        v60 = v55;
        v61 = v56;
        if (v55 || !v56)
        {
          if (v55)
          {
            v59 = [v55 integerValue];
          }

          else
          {
            v59 = 1;
          }

          [(HDCloudSyncCodableStore *)v66 setDeviceMode:v59];
          v15 = -[HDCloudSyncStoreRecord initWithCKRecord:schemaVersion:underlyingStore:]([HDCloudSyncStoreRecord alloc], v6, [v9 integerValue], v66);
        }

        else if (a4)
        {
          v57 = v56;
          v15 = 0;
          *a4 = v56;
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

    if (a4)
    {
      v47 = v45;
      v15 = 0;
      *a4 = v45;
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
  v18 = [v6 recordType];
  v19 = [v16 hk_errorForInvalidArgument:@"@" class:v17 selector:a2 format:{@"record has type (%@), but expected (%@)", v18, @"CloudSyncStoreRecord"}];
  if (v19)
  {
    if (a4)
    {
      v20 = v19;
      *a4 = v19;
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
  v27.receiver = a1;
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(HDCloudSyncStoreRecord *)self order];
  if (v5 >= [v4 order])
  {
    v7 = [(HDCloudSyncStoreRecord *)self order];
    if (v7 > [v4 order])
    {
      v6 = 1;
      goto LABEL_14;
    }

    v8 = [(HDCloudSyncStoreRecord *)self shardPredicate];
    v9 = [v4 shardPredicate];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      v6 = [v8 compare:v9];
      if (v6)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    v11 = [(HDCloudSyncRecord *)self record];
    v12 = [v11 modificationDate];
    v13 = [v4 record];
    v14 = [v13 modificationDate];
    v15 = [v12 hk_isBeforeDate:v14];

    if (v15)
    {
      v6 = 1;
      goto LABEL_13;
    }

    v16 = [(HDCloudSyncRecord *)self record];
    v17 = [v16 modificationDate];
    v18 = [v4 record];
    v19 = [v18 modificationDate];
    v20 = [v17 hk_isAfterDate:v19];

    if ((v20 & 1) == 0)
    {
      v21 = [(HDCloudSyncStoreRecord *)self storeIdentifier];
      v22 = [v21 UUIDString];
      v23 = [(HDCloudSyncStoreRecord *)self storeIdentifier];
      v24 = [v23 UUIDString];
      v6 = [v22 compare:v24];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HDCloudSyncCodableStore *)self->_underlyingStore isEqual:v4->_underlyingStore];
  }

  return v5;
}

- (id)shortDescription
{
  v3 = [(HDCloudSyncCodableStore *)self->_underlyingStore syncIdentity];
  v60[0] = 0;
  v58 = [HDSyncIdentity syncIdentityWithCodable:v3 error:v60];
  v4 = v60[0];

  v5 = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingSyncIdentity];
  v59 = v4;
  v6 = [HDSyncIdentity syncIdentityWithCodable:v5 error:&v59];
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

  v10 = [(HDCloudSyncRecord *)self record];
  v57 = [v10 modificationDate];
  v56 = [(HDCloudSyncStoreRecord *)self systemBuildVersion];
  v55 = [(HDCloudSyncStoreRecord *)self productType];
  v11 = [(HDCloudSyncStoreRecord *)self deviceMode];
  if (v11 == 1)
  {
    v12 = @"Basic";
    goto LABEL_8;
  }

  if (v11 == 2)
  {
    v12 = @"Satellite";
LABEL_8:
    v54 = v12;
    goto LABEL_10;
  }

  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v11];
LABEL_10:
  v13 = [(HDCloudSyncStoreRecord *)self supportedProtocolVersion];
  if (!v13)
  {
    v14 = @"Tigris";
    goto LABEL_14;
  }

  if (v13 == 1)
  {
    v14 = @"Yukon";
LABEL_14:
    v53 = v14;
    goto LABEL_16;
  }

  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v13];
LABEL_16:
  v15 = [(HDCloudSyncStoreRecord *)self requiredProtocolVersion];
  v49 = v7;
  v47 = v10;
  v45 = v9;
  v46 = v8;
  if (!v15)
  {
    v16 = @"Tigris";
    goto LABEL_20;
  }

  if (v15 == 1)
  {
    v16 = @"Yukon";
LABEL_20:
    v52 = v16;
    goto LABEL_22;
  }

  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v15];
LABEL_22:
  v51 = [(HDCloudSyncStoreRecord *)self storeIdentifier];
  v50 = [(HDCloudSyncCodableStore *)self->_underlyingStore ownerIdentifier];
  v17 = [(HDCloudSyncCodableStore *)self->_underlyingStore pendingOwnerIdentifier];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"---";
  }

  v43 = v19;
  v20 = [(HDCloudSyncCodableStore *)self->_underlyingStore isChild];
  v21 = @"NO";
  if (v20)
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
  v44 = [(HDCloudSyncStoreRecord *)self shardPredicate];
  v23 = [v44 description];
  v24 = v23;
  v25 = @"--";
  if (v23)
  {
    v25 = v23;
  }

  v40 = v25;
  v26 = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
  if (v26)
  {
    v39 = [(HDCloudSyncStoreRecord *)self currentSequenceHeaderRecord];
    v27 = [v39 slot];
    if ((v27 - 1) >= 3)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v27];
    }

    else
    {
      v28 = off_27861D6F8[(v27 - 1)];
    }
  }

  else
  {
    v28 = &stru_283BF39C8;
  }

  v29 = [(HDCloudSyncStoreRecord *)self oldSequenceHeaderRecord];
  if (v29)
  {
    v38 = [(HDCloudSyncStoreRecord *)self oldSequenceHeaderRecord];
    v30 = [v38 slot];
    if ((v30 - 1) >= 3)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v30];
    }

    else
    {
      v31 = off_27861D6F8[(v30 - 1)];
    }
  }

  else
  {
    v31 = &stru_283BF39C8;
  }

  v32 = [(HDCloudSyncStoreRecord *)self activeSequenceHeaderRecord];
  if (v32)
  {
    v33 = [(HDCloudSyncStoreRecord *)self activeSequenceHeaderRecord];
    v34 = [v33 slot];
    if ((v34 - 1) >= 3)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v34];
    }

    else
    {
      v35 = off_27861D6F8[(v34 - 1)];
    }

    v36 = [v46 stringWithFormat:@"+ (%@, %@) %@ on %@, Mode: %@, Version: %@ - %@\n| Store: %@ | Owner: %@ | Pending: %@\n| isChild: %@ | SyncIdentity: %@ | PendingSyncIdentity: %@\n| Shard: %@\n| Sequence Headers: Current(%@) Old(%@) Active(%@)\n+--------------------------------------------------", v45, v57, v56, v55, v54, v53, v52, v51, v50, v43, v42, v58, v41, v40, v28, v31, v35];
  }

  else
  {
    v36 = [v46 stringWithFormat:@"+ (%@, %@) %@ on %@, Mode: %@, Version: %@ - %@\n| Store: %@ | Owner: %@ | Pending: %@\n| isChild: %@ | SyncIdentity: %@ | PendingSyncIdentity: %@\n| Shard: %@\n| Sequence Headers: Current(%@) Old(%@) Active(%@)\n+--------------------------------------------------", v45, v57, v56, v55, v54, v53, v52, v51, v50, v43, v42, v58, v41, v40, v28, v31, &stru_283BF39C8];
  }

  if (v29)
  {
  }

  if (v26)
  {
  }

  return v36;
}

@end