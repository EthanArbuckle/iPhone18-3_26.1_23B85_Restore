@interface HDCloudSyncSequenceRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isSequenceRecord:(id)a3;
+ (HDCloudSyncSequenceRecord)recordWithCKRecord:(id)a3 error:(id *)a4;
+ (id)_recordIDWithIndividualZoneID:(int)a3 sequenceSlot:;
+ (id)_recordIDWithOwnerIdentifier:(void *)a3 storeIdentifier:(void *)a4 zoneID:(int)a5 sequenceSlot:;
+ (id)fieldsForUnprotectedSerialization;
+ (id)recordIDsForOwnerIdentifier:(id)a3 storeIdentifier:(id)a4 zoneID:(id)a5;
+ (id)recordIDsWithIndividualZoneID:(id)a3;
+ (void)_recordNameForSequenceSlot:(uint64_t)a1;
- (BOOL)hasFutureSyncEntityVersions:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CKRecordID)firstUnfrozenChangeRecord;
- (CKReference)parentRecordReference;
- (HDCloudSyncSequenceRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (HDCodableSyncEntityVersionMap)syncEntityVersionMap;
- (HDSyncAnchorMap)frozenSyncAnchorMap;
- (HDSyncAnchorMap)syncAnchorMap;
- (NSSet)includedChildSyncIdentities;
- (NSSet)includedIdentifiers;
- (NSSet)includedSyncIdentities;
- (id)initWithCKRecord:(uint64_t)a3 schemaVersion:(void *)a4 underlyingSequence:;
- (void)_unitTest_setChildRecordCount:(unint64_t)a3;
- (void)decrementChildRecordCount:(unint64_t)a3;
- (void)incrementChangeIndex;
- (void)incrementChildRecordCount;
- (void)replaceSyncAnchorMapWithSyncAnchorMap:(id)a3;
- (void)resetChangeIndex:(unint64_t)a3;
- (void)setFirstUnfrozenChangeRecord:(id)a3;
- (void)setIncludedChildSyncIdentities:(id)a3;
- (void)updateFrozenSyncAnchorMapWithSyncAnchorMap:(id)a3;
- (void)updateSyncAnchorMapWithSyncAnchorMap:(id)a3;
@end

@implementation HDCloudSyncSequenceRecord

+ (id)_recordIDWithOwnerIdentifier:(void *)a3 storeIdentifier:(void *)a4 zoneID:(int)a5 sequenceSlot:
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = MEMORY[0x277CCACA8];
  v13 = [v9 UUIDString];

  v14 = [(HDCloudSyncSequenceRecord *)v11 _recordNameForSequenceSlot:a5];
  v15 = [v12 stringWithFormat:@"%@/%@/%@", v10, v13, v14];

  v16 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v15 zoneID:v8];

  return v16;
}

+ (id)_recordIDWithIndividualZoneID:(int)a3 sequenceSlot:
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = [(HDCloudSyncSequenceRecord *)v5 _recordNameForSequenceSlot:a3];
  v7 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v6 zoneID:v4];

  return v7;
}

- (HDCloudSyncSequenceRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (id)initWithCKRecord:(uint64_t)a3 schemaVersion:(void *)a4 underlyingSequence:
{
  v73[7] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_25;
  }

  v67.receiver = a1;
  v67.super_class = HDCloudSyncSequenceRecord;
  v9 = objc_msgSendSuper2(&v67, sel_initWithCKRecord_schemaVersion_, v7, a3);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 3, a4);
    v11 = [v7 recordID];
    v12 = [v11 zoneID];
    v66 = 0;
    v13 = [v12 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v66];
    v14 = v66;

    v15 = [v7 recordID];
    v16 = v15;
    if (v13)
    {
      v17 = [v15 recordName];
      v18 = [v17 componentsSeparatedByString:@"/"];

      if ([v18 count] != 3)
      {
        v54 = v10;
        v10 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v19 = objc_alloc(MEMORY[0x277CCAD78]);
      v20 = [v18 objectAtIndexedSubscript:1];
      v21 = [v19 initWithUUIDString:v20];
      v22 = v10[4];
      v10[4] = v21;

      v23 = 0;
      v59 = v14;
    }

    else
    {
      v24 = [v15 zoneID];
      v64 = v14;
      v65 = 0;
      v25 = [v24 hd_isIndividualSyncZoneIDForStoreIdentifier:&v65 syncCircleIdentifier:&v64];
      v23 = v65;
      v59 = v64;

      if (!v25)
      {
LABEL_9:
        v60 = v23;
        v61 = v8;
        v62 = v7;
        v27 = [v10[3] includedStoreIdentifiers];

        if (!v27)
        {
          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v10[3] setIncludedStoreIdentifiers:v28];
        }

        v72[0] = @"Slot";
        v57 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10[3], "slot")}];
        v73[0] = v57;
        v72[1] = @"Active";
        v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10[3], "active")}];
        v73[1] = v29;
        v72[2] = @"ChangeIndex";
        v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "changeIndex")}];
        v73[2] = v30;
        v72[3] = @"ChildRecordCount";
        v31 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "childRecordCount")}];
        v73[3] = v31;
        v72[4] = @"BaselineEpoch";
        v32 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "epoch")}];
        v73[4] = v32;
        v72[5] = @"ProtocolVersion";
        v33 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "protocolVersion")}];
        v73[5] = v33;
        v72[6] = @"IncludedIdentifiers";
        v34 = [v10[3] includedStoreIdentifiers];
        v35 = [v34 copy];
        v73[6] = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:7];
        v58 = [v7 hd_setValuesIfChanged:v36];

        v37 = [v7 encryptedValues];
        v18 = [v37 objectForKeyedSubscript:@"EntityAnchorMap"];

        if (v18)
        {
          v63 = 0;
          v38 = [MEMORY[0x277CCAAC8] hk_unarchivedObjectOfClass:objc_opt_class() forKey:@"EntityAnchorMap" data:v18 error:&v63];
        }

        else
        {
          v38 = 0;
        }

        v39 = [v10[3] anchorMap];
        v40 = [HDSyncAnchorMap syncAnchorMapWithCodableSyncAnchorRangeMap:v39];
        v41 = [v38 isEqual:v40];

        if (v41)
        {
          v14 = v60;
          v8 = v61;
          v42 = v58;
        }

        else
        {
          v43 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
          v44 = [v10 syncAnchorMap];
          [v43 encodeObject:v44 forKey:@"EntityAnchorMap"];

          v45 = [v43 encodedData];
          v42 = [v7 hd_setEncryptedValue:v45 ifChangedForKey:@"EntityAnchorMap"] | v58;

          v14 = v60;
          v8 = v61;
        }

        if ([v10 unsaved] & 1) == 0 && (v42)
        {
          _HKInitializeLogging();
          v46 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v47 = v46;
            v48 = [v10 recordID];
            v49 = [v7 changedKeys];
            v50 = [v7 encryptedValueStore];
            v51 = [v50 changedKeys];
            v52 = [v49 arrayByAddingObjectsFromArray:v51];
            v53 = [v52 componentsJoinedByString:{@", "}];
            *buf = 138543618;
            v69 = v48;
            v70 = 2114;
            v71 = v53;
            _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: Repaired during init (updated keys: %{public}@)", buf, 0x16u);

            v14 = v60;
            v8 = v61;

            v7 = v62;
          }

          [v10 setRepaired:1];
        }

        v54 = v59;
        goto LABEL_24;
      }

      v26 = [v23 copy];
      v18 = v10[4];
      v10[4] = v26;
    }

    goto LABEL_9;
  }

LABEL_25:

  v55 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)_recordNameForSequenceSlot:(uint64_t)a1
{
  v3 = objc_opt_self();
  if ((a2 - 1) >= 3)
  {
    v5 = v3;
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:sel__recordNameForSequenceSlot_ object:v5 file:@"HDCloudSyncSequenceRecord.m" lineNumber:249 description:{@"Invalid sequence record slot identifier %ld", a2}];
  }

  else
  {
    v4 = off_27861BA28[a2 - 1];
  }
}

+ (id)recordIDsWithIndividualZoneID:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDCloudSyncSequenceRecord *)a1 _recordIDWithIndividualZoneID:v4 sequenceSlot:1];
  v11[0] = v5;
  v6 = [(HDCloudSyncSequenceRecord *)a1 _recordIDWithIndividualZoneID:v4 sequenceSlot:2];
  v11[1] = v6;
  v7 = [(HDCloudSyncSequenceRecord *)a1 _recordIDWithIndividualZoneID:v4 sequenceSlot:3];

  v11[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)recordIDsForOwnerIdentifier:(id)a3 storeIdentifier:(id)a4 zoneID:(id)a5
{
  v17[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HDCloudSyncSequenceRecord *)a1 _recordIDWithOwnerIdentifier:v10 storeIdentifier:v9 zoneID:v8 sequenceSlot:1];
  v17[0] = v11;
  v12 = [(HDCloudSyncSequenceRecord *)a1 _recordIDWithOwnerIdentifier:v10 storeIdentifier:v9 zoneID:v8 sequenceSlot:2];
  v17[1] = v12;
  v13 = [(HDCloudSyncSequenceRecord *)a1 _recordIDWithOwnerIdentifier:v10 storeIdentifier:v9 zoneID:v8 sequenceSlot:3];

  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)isSequenceRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncSequenceRecord"];

  return v4;
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (HDCloudSyncSequenceRecord)recordWithCKRecord:(id)a3 error:(id *)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 recordType];
  v9 = [v8 isEqualToString:@"CloudSyncSequenceRecord"];

  if ((v9 & 1) == 0)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = objc_opt_class();
    v19 = [v7 recordType];
    v20 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:{@"record has type (%@), but expected (%@)", v19, @"CloudSyncSequenceRecord"}];
    if (v20)
    {
      if (a4)
      {
        v21 = v20;
        *a4 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
    goto LABEL_94;
  }

  v10 = [v7 hd_requiredValueForKey:@"Version" type:objc_opt_class() error:a4];
  if (!v10)
  {
    v16 = 0;
    goto LABEL_93;
  }

  v11 = [v7 hd_requiredValueForKey:@"StoreRecord" type:objc_opt_class() error:a4];
  if (!v11)
  {
    v16 = 0;
    goto LABEL_92;
  }

  v100 = 0;
  v12 = [v7 hd_optionalEncryptedValueForKey:@"UnderlyingMessage" type:objc_opt_class() error:&v100];
  v13 = v100;
  v14 = v13;
  if (!v12 && v13)
  {
    if (a4)
    {
      v15 = v13;
      v16 = 0;
      *a4 = v14;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }

    goto LABEL_91;
  }

  if (v12)
  {
    v22 = [[HDCloudSyncCodableSequence alloc] initWithData:v12];
    if (v22)
    {
      v23 = v14;
      v24 = [HDCloudSyncSequenceRecord alloc];
      v25 = [v10 integerValue];
      v26 = v24;
      v14 = v23;
      v16 = [(HDCloudSyncSequenceRecord *)v26 initWithCKRecord:v7 schemaVersion:v25 underlyingSequence:v22];
      goto LABEL_90;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Underlying message present but does not decode."];
    goto LABEL_49;
  }

  v27 = [v7 hd_requiredValueForKey:@"Slot" type:objc_opt_class() error:a4];
  v22 = v27;
  if (!v27)
  {
LABEL_49:
    v16 = 0;
    goto LABEL_90;
  }

  v94 = v14;
  if ([(HDCloudSyncCodableSequence *)v27 integerValue]!= 1 && [(HDCloudSyncCodableSequence *)v22 integerValue]!= 2 && [(HDCloudSyncCodableSequence *)v22 integerValue]!= 3)
  {
    v70 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"record identity (%ld) is not a valid HDCloudSyncSequenceRecordIdentity value", -[HDCloudSyncCodableSequence integerValue](v22, "integerValue")}];
    if (v70)
    {
      if (a4)
      {
        v71 = v70;
        v16 = 0;
        *a4 = v70;
      }

      else
      {
        _HKLogDroppedError();
        v16 = 0;
      }

      v67 = v70;
    }

    else
    {
      v67 = 0;
      v16 = 0;
    }

    goto LABEL_88;
  }

  v92 = v11;
  v89 = [v7 recordID];
  [v89 recordName];
  v29 = v28 = v22;
  v30 = [(HDCloudSyncSequenceRecord *)a1 _recordNameForSequenceSlot:?];
  v31 = [v29 hasSuffix:v30];

  v93 = v28;
  if ((v31 & 1) == 0)
  {
    v64 = MEMORY[0x277CCA9B8];
    v65 = objc_opt_class();
    v66 = [(HDCloudSyncCodableSequence *)v28 integerValue];
    v67 = [v7 recordID];
    v91 = [v67 recordName];
    v68 = [v64 hk_errorForInvalidArgument:@"@" class:v65 selector:a2 format:{@"sequence slot (%ld) does not match the record name (%@)", v66, v91}];
    v12 = 0;
    v11 = v92;
    v14 = v94;
    if (v68)
    {
      if (a4)
      {
        v69 = v68;
        *a4 = v68;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
    v22 = v93;
    v70 = v91;
    goto LABEL_88;
  }

  [v7 hd_requiredValueForKey:@"Active" type:objc_opt_class() error:a4];
  v11 = v92;
  v88 = v14 = v94;
  if (!v88)
  {
    v67 = 0;
    v16 = 0;
    v12 = 0;
    v22 = v93;
    goto LABEL_89;
  }

  [v7 hd_requiredValueForKey:@"ChangeIndex" type:objc_opt_class() error:a4];
  v90 = v22 = v93;
  if (!v90)
  {
    v70 = 0;
    v16 = 0;
    v12 = 0;
    v67 = v88;
    goto LABEL_88;
  }

  v32 = [v7 hd_requiredValueForKey:@"BaselineEpoch" type:objc_opt_class() error:a4];
  if (!v32)
  {
    v16 = 0;
    v70 = v90;
    v12 = 0;
    v67 = v88;
    goto LABEL_87;
  }

  v86 = v32;
  v33 = [v7 hd_requiredValueForKey:@"ChildRecordCount" type:objc_opt_class() error:a4];
  if (!v33)
  {
    v16 = 0;
    v70 = v90;
    v12 = 0;
    v67 = v88;
    goto LABEL_86;
  }

  v84 = v33;
  v34 = [v7 hd_requiredValueForKey:@"ProtocolVersion" type:objc_opt_class() error:a4];
  if (!v34)
  {
    v16 = 0;
    v70 = v90;
    v12 = 0;
    v67 = v88;
    goto LABEL_85;
  }

  v83 = v34;
  v35 = [v7 hd_requiredValueForKey:@"IncludedIdentifiers" type:objc_opt_class() error:a4];
  if (!v35)
  {
    v16 = 0;
    v70 = v90;
    v12 = 0;
    v67 = v88;
    goto LABEL_84;
  }

  v36 = v35;
  v87 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v35, "count")}];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v82 = v36;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v96 objects:v104 count:16];
  if (!v38)
  {
    goto LABEL_38;
  }

  v39 = v38;
  v40 = *v97;
  obj = v37;
  while (2)
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v97 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v42 = *(*(&v96 + 1) + 8 * i);
      objc_opt_class();
      v43 = HKSafeObject();
      if (!v43)
      {
        goto LABEL_67;
      }

      v44 = v43;
      v45 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v43];
      if (!v45)
      {
        v81 = v44;
        v60 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"record has invalid owner UUID data '%@'", v44}];
        if (v60)
        {
          if (a4)
          {
            v72 = v60;
            v16 = 0;
            *a4 = v60;
LABEL_74:
            v54 = v60;
            goto LABEL_81;
          }

          _HKLogDroppedError();
        }

        v16 = 0;
        goto LABEL_74;
      }

      v46 = v45;
      [v87 addObject:v45];

      v14 = v94;
    }

    v37 = obj;
    v39 = [obj countByEnumeratingWithState:&v96 objects:v104 count:16];
    if (v39)
    {
      continue;
    }

    break;
  }

LABEL_38:

  v47 = [v7 hd_requiredEncryptedValueForKey:@"EntityAnchorMap" type:objc_opt_class() error:a4];
  obj = v47;
  if (v47)
  {
    v81 = [MEMORY[0x277CCAAC8] hk_unarchivedObjectOfClass:objc_opt_class() forKey:@"EntityAnchorMap" data:v47 error:a4];
    if (!v81)
    {
      goto LABEL_71;
    }

    v48 = [v7 encryptedValues];
    v49 = [v48 objectForKeyedSubscript:@"FrozenAnchorMap"];

    if (v49)
    {
      v50 = [v7 hd_requiredEncryptedValueForKey:@"FrozenAnchorMap" type:objc_opt_class() error:a4];
      v51 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v50 error:a4];

      if (!v51)
      {
        goto LABEL_71;
      }
    }

    v52 = [v7 objectForKeyedSubscript:@"FirstUnfrozenChange"];

    if (!v52 || ([v7 hd_requiredValueForKey:@"FirstUnfrozenChange" type:objc_opt_class() error:a4], v53 = objc_claimAutoreleasedReturnValue(), v53, v53))
    {
      v54 = objc_alloc_init(HDCloudSyncCodableSequence);
      [(HDCloudSyncCodableSequence *)v54 setSlot:[(HDCloudSyncCodableSequence *)v93 integerValue]];
      -[HDCloudSyncCodableSequence setActive:](v54, "setActive:", [v88 BOOLValue]);
      -[HDCloudSyncCodableSequence setChangeIndex:](v54, "setChangeIndex:", [v90 longLongValue]);
      -[HDCloudSyncCodableSequence setChildRecordCount:](v54, "setChildRecordCount:", [v84 longLongValue]);
      -[HDCloudSyncCodableSequence setEpoch:](v54, "setEpoch:", [v86 longLongValue]);
      -[HDCloudSyncCodableSequence setProtocolVersion:](v54, "setProtocolVersion:", [v83 integerValue]);
      v55 = [v81 codableSyncAnchorRangeMap];
      [(HDCloudSyncCodableSequence *)v54 setAnchorMap:v55];

      v56 = [v87 allObjects];
      v57 = [v56 hk_map:&__block_literal_global_417_0];
      v58 = [v57 mutableCopy];
      [(HDCloudSyncCodableSequence *)v54 setIncludedStoreIdentifiers:v58];

      v59 = [v7 encryptedValues];
      v60 = [v59 objectForKeyedSubscript:@"FrozenAnchorMap"];

      if (v60)
      {
        v95 = 0;
        v61 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v60 error:&v95];
        v62 = v95;
        if (v61)
        {
          v63 = [v61 codableSyncAnchorRangeMap];
          [(HDCloudSyncCodableSequence *)v54 setFrozenAnchorMap:v63];
        }

        else
        {
          _HKInitializeLogging();
          v73 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v103 = v62;
            _os_log_error_impl(&dword_228986000, v73, OS_LOG_TYPE_ERROR, "Failed to decode frozen anchor map: %{public}@", buf, 0xCu);
          }
        }
      }

      v74 = [v7 objectForKeyedSubscript:@"FirstUnfrozenChange"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = [v74 recordID];
        v76 = [v75 recordName];
        v101 = v76;
        v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
        v78 = [v77 mutableCopy];
        [(HDCloudSyncCodableSequence *)v54 setUnfrozenChangeRecordNames:v78];
      }

      v16 = -[HDCloudSyncSequenceRecord initWithCKRecord:schemaVersion:underlyingSequence:]([HDCloudSyncSequenceRecord alloc], v7, [v10 integerValue], v54);

LABEL_81:
      v12 = 0;
      v11 = v92;
      v22 = v93;
      v14 = v94;
      v67 = v88;
    }

    else
    {
LABEL_71:
      v16 = 0;
      v12 = 0;
      v11 = v92;
      v22 = v93;
      v14 = v94;
      v67 = v88;
    }
  }

  else
  {
LABEL_67:
    v16 = 0;
    v12 = 0;
    v11 = v92;
    v22 = v93;
    v67 = v88;
  }

  v70 = v90;

  v35 = v82;
LABEL_84:

  v34 = v83;
LABEL_85:

  v33 = v84;
LABEL_86:

  v32 = v86;
LABEL_87:

LABEL_88:
LABEL_89:

LABEL_90:
LABEL_91:

LABEL_92:
LABEL_93:

LABEL_94:
  v79 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)fieldsForUnprotectedSerialization
{
  v41[11] = *MEMORY[0x277D85DE8];
  v29.receiver = a1;
  v29.super_class = &OBJC_METACLASS___HDCloudSyncSequenceRecord;
  v24 = objc_msgSendSuper2(&v29, sel_fieldsForUnprotectedSerialization);
  v40 = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v27 = [HDCloudSyncSerializedField fieldForKey:@"StoreRecord" classes:v28 encrypted:0];
  v41[0] = v27;
  v39 = objc_opt_class();
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v25 = [HDCloudSyncSerializedField fieldForKey:@"Slot" classes:v26 encrypted:0];
  v41[1] = v25;
  v38 = objc_opt_class();
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v22 = [HDCloudSyncSerializedField fieldForKey:@"Active" classes:v23 encrypted:0];
  v41[2] = v22;
  v37 = objc_opt_class();
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v20 = [HDCloudSyncSerializedField fieldForKey:@"BaselineEpoch" classes:v21 encrypted:0];
  v41[3] = v20;
  v36 = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v18 = [HDCloudSyncSerializedField fieldForKey:@"EntityAnchorMap" classes:v19 encrypted:1];
  v41[4] = v18;
  v35 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v16 = [HDCloudSyncSerializedField fieldForKey:@"FrozenAnchorMap" classes:v17 encrypted:1];
  v41[5] = v16;
  v34 = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v14 = [HDCloudSyncSerializedField fieldForKey:@"ChangeIndex" classes:v15 encrypted:0];
  v41[6] = v14;
  v33 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v3 = [HDCloudSyncSerializedField fieldForKey:@"ChildRecordCount" classes:v2 encrypted:0];
  v41[7] = v3;
  v32 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v5 = [HDCloudSyncSerializedField fieldForKey:@"ProtocolVersion" classes:v4 encrypted:0];
  v41[8] = v5;
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v7 = [HDCloudSyncSerializedField fieldForKey:@"IncludedIdentifiers" classes:v6 encrypted:0];
  v41[9] = v7;
  v30 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v9 = [HDCloudSyncSerializedField fieldForKey:@"FirstUnfrozenChange" classes:v8 encrypted:0];
  v41[10] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:11];
  v13 = [v24 arrayByAddingObjectsFromArray:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)incrementChangeIndex
{
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChangeIndex:[(HDCloudSyncCodableSequence *)self->_underlyingSequence changeIndex]+ 1];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence changeIndex](self->_underlyingSequence, "changeIndex")}];
  v3 = [(HDCloudSyncRecord *)self record];
  [v3 setObject:v4 forKeyedSubscript:@"ChangeIndex"];
}

- (void)resetChangeIndex:(unint64_t)a3
{
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChangeIndex:a3];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence changeIndex](self->_underlyingSequence, "changeIndex")}];
  v4 = [(HDCloudSyncRecord *)self record];
  [v4 setObject:v5 forKeyedSubscript:@"ChangeIndex"];
}

void __74__HDCloudSyncSequenceRecord_updateSyncProtocolVersion_syncEntityVersions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) syncEntityVersionMap];
  v5 = [v4 entityVersionRanges];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HDCloudSyncSequenceRecord_updateSyncProtocolVersion_syncEntityVersions___block_invoke_2;
  v9[3] = &unk_27861B9A0;
  v6 = v3;
  v10 = v6;
  v7 = [v5 hk_firstObjectPassingTest:v9];

  if (v7)
  {
    v8 = [v6 versionRange];
    [v7 setVersionRange:v8];
  }

  else
  {
    v8 = [*(a1 + 32) syncEntityVersionMap];
    [v8 addEntityVersionRange:v6];
  }
}

uint64_t __74__HDCloudSyncSequenceRecord_updateSyncProtocolVersion_syncEntityVersions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 entityIdentifier];
  v5 = [v3 entityIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (BOOL)hasFutureSyncEntityVersions:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];

  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];
    v7 = [v6 entityVersionRanges];

    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v4 entityVersionRanges];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __57__HDCloudSyncSequenceRecord_hasFutureSyncEntityVersions___block_invoke;
          v23[3] = &unk_27861B9A0;
          v23[4] = v12;
          v14 = [v13 hk_firstObjectPassingTest:v23];

          if (!v14)
          {
            goto LABEL_12;
          }

          v15 = [v14 versionRange];
          v16 = [v15 current];
          v17 = [v12 versionRange];
          v18 = [v17 current];

          if (v16 < v18)
          {
LABEL_12:
            v19 = 1;
            goto LABEL_15;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        v19 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_15:
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __57__HDCloudSyncSequenceRecord_hasFutureSyncEntityVersions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 entityIdentifier];
  v5 = [v3 entityIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)incrementChildRecordCount
{
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChildRecordCount:[(HDCloudSyncCodableSequence *)self->_underlyingSequence childRecordCount]+ 1];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence childRecordCount](self->_underlyingSequence, "childRecordCount")}];
  v3 = [(HDCloudSyncRecord *)self record];
  [v3 setObject:v4 forKeyedSubscript:@"ChildRecordCount"];
}

- (void)decrementChildRecordCount:(unint64_t)a3
{
  v5 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence childRecordCount];
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChildRecordCount:(v5 - a3) & ~((v5 - a3) >> 63)];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence childRecordCount](self->_underlyingSequence, "childRecordCount")}];
  v6 = [(HDCloudSyncRecord *)self record];
  [v6 setObject:v7 forKeyedSubscript:@"ChildRecordCount"];
}

- (NSSet)includedIdentifiers
{
  v3 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedStoreIdentifiers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedStoreIdentifiers];
    v6 = [v5 hk_mapToSet:&__block_literal_global_427];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (NSSet)includedSyncIdentities
{
  v3 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedSyncIdentities];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedSyncIdentities];
    v6 = [v5 hk_mapToSet:&__block_literal_global_430];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

id __51__HDCloudSyncSequenceRecord_includedSyncIdentities__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [HDSyncIdentity syncIdentityWithCodable:a2 error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "Failed to decode codableIdentity with error: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDCodableSyncEntityVersionMap)syncEntityVersionMap
{
  if (![(HDCloudSyncCodableSequence *)self->_underlyingSequence hasSyncEntityVersionMap])
  {
    v3 = objc_alloc_init(HDCodableSyncEntityVersionMap);
    [(HDCloudSyncCodableSequence *)self->_underlyingSequence setSyncEntityVersionMap:v3];
  }

  underlyingSequence = self->_underlyingSequence;

  return [(HDCloudSyncCodableSequence *)underlyingSequence syncEntityVersionMap];
}

- (NSSet)includedChildSyncIdentities
{
  v3 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedChildSyncIdentities];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence includedChildSyncIdentities];
    v6 = [v5 hk_mapToSet:&__block_literal_global_433];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

id __56__HDCloudSyncSequenceRecord_includedChildSyncIdentities__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [HDSyncIdentity syncIdentityWithCodable:a2 error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "Failed to decode codable child sync Identity with error: %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)setIncludedChildSyncIdentities:(id)a3
{
  v6 = [a3 allObjects];
  v4 = [v6 hk_map:&__block_literal_global_435];
  v5 = [v4 mutableCopy];
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setIncludedChildSyncIdentities:v5];
}

- (HDSyncAnchorMap)syncAnchorMap
{
  v2 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence anchorMap];
  v3 = [HDSyncAnchorMap syncAnchorMapWithCodableSyncAnchorRangeMap:v2];

  return v3;
}

- (CKReference)parentRecordReference
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 objectForKeyedSubscript:@"StoreRecord"];

  return v3;
}

- (void)updateSyncAnchorMapWithSyncAnchorMap:(id)a3
{
  v10 = a3;
  if ([v10 anchorCount])
  {
    v4 = [(HDCloudSyncSequenceRecord *)self syncAnchorMap];
    [v4 setAnchorsFromMap:v10];
    v5 = [v4 codableSyncAnchorRangeMap];
    [(HDCloudSyncCodableSequence *)self->_underlyingSequence setAnchorMap:v5];

    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v6 encodeObject:v4 forKey:@"EntityAnchorMap"];
    v7 = [v6 encodedData];
    v8 = [(HDCloudSyncRecord *)self record];
    v9 = [v8 encryptedValues];
    [v9 setObject:v7 forKeyedSubscript:@"EntityAnchorMap"];
  }
}

- (void)replaceSyncAnchorMapWithSyncAnchorMap:(id)a3
{
  v4 = a3;
  v5 = [v4 codableSyncAnchorRangeMap];
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setAnchorMap:v5];

  v9 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v9 encodeObject:v4 forKey:@"EntityAnchorMap"];

  v6 = [v9 encodedData];
  v7 = [(HDCloudSyncRecord *)self record];
  v8 = [v7 encryptedValues];
  [v8 setObject:v6 forKeyedSubscript:@"EntityAnchorMap"];
}

- (HDSyncAnchorMap)frozenSyncAnchorMap
{
  if ([(HDCloudSyncCodableSequence *)self->_underlyingSequence hasFrozenAnchorMap])
  {
    v3 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence frozenAnchorMap];
    v4 = [HDSyncAnchorMap syncAnchorMapWithCodableSyncAnchorRangeMap:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateFrozenSyncAnchorMapWithSyncAnchorMap:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDCloudSyncSequenceRecord *)self frozenSyncAnchorMap];
  if (!v5)
  {
    v5 = objc_alloc_init(HDSyncAnchorMap);
  }

  [(HDSyncAnchorMap *)v5 setAnchorsFromMap:v4];
  v6 = [(HDSyncAnchorMap *)v5 codableSyncAnchorRangeMap];
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setFrozenAnchorMap:v6];

  v13 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [(HDCloudSyncRecord *)self record];
    v10 = [v9 encryptedValues];
    [v10 setObject:v7 forKeyedSubscript:@"FrozenAnchorMap"];
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to encode updated frozen anchor map: %{public}@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (CKRecordID)firstUnfrozenChangeRecord
{
  v3 = [(HDCloudSyncCodableSequence *)self->_underlyingSequence unfrozenChangeRecordNames];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBC5D0]);
    v6 = [(HDCloudSyncRecord *)self recordID];
    v7 = [v6 zoneID];
    v8 = [v5 initWithRecordName:v4 zoneID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setFirstUnfrozenChangeRecord:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 recordName];
    v14[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v8 = [v7 mutableCopy];
    [(HDCloudSyncCodableSequence *)self->_underlyingSequence setUnfrozenChangeRecordNames:v8];

    v9 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v5 action:0];
    v10 = [(HDCloudSyncRecord *)self record];
    [v10 setObject:v9 forKeyedSubscript:@"FirstUnfrozenChange"];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(HDCloudSyncCodableSequence *)self->_underlyingSequence setUnfrozenChangeRecordNames:v11];

    v12 = [(HDCloudSyncRecord *)self record];
    [v12 setObject:0 forKey:@"FirstUnfrozenChange"];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(HDCloudSyncSequenceRecord *)v7 slot];
      if (v8 == [(HDCloudSyncCodableSequence *)self->_underlyingSequence slot])
      {
        v9 = [(HDCloudSyncSequenceRecord *)v7 storeIdentifier];
        storeIdentifier = self->_storeIdentifier;
        if (v9 != storeIdentifier)
        {
          if (!storeIdentifier)
          {
            v11 = 0;
            goto LABEL_32;
          }

          v3 = [(HDCloudSyncSequenceRecord *)v7 storeIdentifier];
          if (![v3 isEqual:self->_storeIdentifier])
          {
            v11 = 0;
LABEL_31:

            goto LABEL_32;
          }
        }

        v12 = [(HDCloudSyncSequenceRecord *)v7 syncAnchorMap];
        v13 = [(HDCloudSyncSequenceRecord *)self syncAnchorMap];
        if (v12 != v13)
        {
          v14 = [(HDCloudSyncSequenceRecord *)self syncAnchorMap];
          if (!v14)
          {
LABEL_29:

            v11 = 0;
            goto LABEL_30;
          }

          v4 = v14;
          v15 = [(HDCloudSyncSequenceRecord *)v7 syncAnchorMap];
          v5 = [(HDCloudSyncSequenceRecord *)self syncAnchorMap];
          if (([v15 isEqual:v5] & 1) == 0)
          {

LABEL_28:
            goto LABEL_29;
          }

          v60 = v15;
        }

        v16 = [(HDCloudSyncSequenceRecord *)v7 isActive];
        if (v16 != [(HDCloudSyncSequenceRecord *)self isActive]|| (v17 = [(HDCloudSyncSequenceRecord *)v7 changeIndex], v17 != [(HDCloudSyncSequenceRecord *)self changeIndex]) || (v18 = [(HDCloudSyncSequenceRecord *)v7 baselineEpoch], v18 != [(HDCloudSyncSequenceRecord *)self baselineEpoch]) || (v19 = [(HDCloudSyncSequenceRecord *)v7 childRecordCount], v19 != [(HDCloudSyncSequenceRecord *)self childRecordCount]))
        {
          v11 = 0;
LABEL_24:
          if (v12 != v13)
          {
          }

LABEL_30:
          if (v9 != storeIdentifier)
          {
            goto LABEL_31;
          }

LABEL_32:

          goto LABEL_33;
        }

        v20 = [(HDCloudSyncSequenceRecord *)v7 includedIdentifiers];
        v59 = [(HDCloudSyncSequenceRecord *)self includedIdentifiers];
        if (v20 == v59)
        {
          v58 = v20;
        }

        else
        {
          v21 = [(HDCloudSyncSequenceRecord *)self includedIdentifiers];
          if (!v21)
          {

            if (v12 == v13)
            {
              goto LABEL_29;
            }

            goto LABEL_40;
          }

          v55 = v21;
          v58 = v20;
          v22 = [(HDCloudSyncSequenceRecord *)v7 includedIdentifiers];
          v23 = [(HDCloudSyncSequenceRecord *)self includedIdentifiers];
          v54 = v22;
          v24 = v22;
          v25 = v23;
          if (([v24 isEqual:v23] & 1) == 0)
          {

            goto LABEL_61;
          }

          v51 = v25;
        }

        v27 = [(HDCloudSyncSequenceRecord *)v7 includedSyncIdentities];
        v57 = [(HDCloudSyncSequenceRecord *)self includedSyncIdentities];
        if (v27 == v57)
        {
          v56 = v27;
LABEL_42:
          v33 = [(HDCloudSyncSequenceRecord *)v7 includedChildSyncIdentities];
          v52 = [(HDCloudSyncSequenceRecord *)self includedChildSyncIdentities];
          v53 = v33;
          if (v33 != v52)
          {
            v34 = [(HDCloudSyncSequenceRecord *)self includedChildSyncIdentities];
            v27 = v56;
            if (!v34)
            {
              v11 = 0;
              v39 = v58;
LABEL_68:

              if (v56 != v57)
              {
              }

              goto LABEL_71;
            }

            v46 = v34;
            v48 = [(HDCloudSyncSequenceRecord *)v7 includedChildSyncIdentities];
            v45 = [(HDCloudSyncSequenceRecord *)self includedChildSyncIdentities];
            if (([v48 isEqual:?] & 1) == 0)
            {

              v11 = 0;
LABEL_54:
              if (v27 != v57)
              {
              }

              goto LABEL_56;
            }
          }

          v35 = [(HDCloudSyncSequenceRecord *)v7 protocolVersion];
          if (v35 == [(HDCloudSyncSequenceRecord *)self protocolVersion])
          {
            v36 = [(HDCloudSyncSequenceRecord *)v7 syncEntityVersionMap];
            v37 = [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];
            if (v36 == v37)
            {

              v11 = 1;
              goto LABEL_66;
            }

            v44 = v37;
            v42 = [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];
            if (v42)
            {
              v43 = [(HDCloudSyncSequenceRecord *)v7 syncEntityVersionMap];
              [(HDCloudSyncSequenceRecord *)self syncEntityVersionMap];
              v38 = v41 = v36;
              v11 = [v43 isEqual:v38];

              if (v53 != v52)
              {
              }

              v27 = v56;
              goto LABEL_54;
            }
          }

          v11 = 0;
LABEL_66:
          v39 = v58;
          if (v53 != v52)
          {
          }

          goto LABEL_68;
        }

        v28 = [(HDCloudSyncSequenceRecord *)self includedSyncIdentities];
        if (!v28)
        {
          v11 = 0;
LABEL_56:

          v39 = v58;
LABEL_71:
          v40 = v59;
          if (v39 != v59)
          {

            v40 = v59;
          }

          goto LABEL_24;
        }

        v56 = v27;
        v50 = v28;
        v29 = [(HDCloudSyncSequenceRecord *)v7 includedSyncIdentities];
        v30 = [(HDCloudSyncSequenceRecord *)self includedSyncIdentities];
        v49 = v29;
        v31 = v29;
        v32 = v30;
        if ([v31 isEqual:v30])
        {
          v47 = v32;
          goto LABEL_42;
        }

        if (v58 != v59)
        {
        }

LABEL_61:
        if (v12 == v13)
        {
          goto LABEL_29;
        }

LABEL_40:

        goto LABEL_28;
      }
    }

    v11 = 0;
  }

LABEL_33:

  return v11;
}

- (void)_unitTest_setChildRecordCount:(unint64_t)a3
{
  [(HDCloudSyncCodableSequence *)self->_underlyingSequence setChildRecordCount:a3];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCloudSyncCodableSequence childRecordCount](self->_underlyingSequence, "childRecordCount")}];
  v4 = [(HDCloudSyncRecord *)self record];
  [v4 setObject:v5 forKeyedSubscript:@"ChildRecordCount"];
}

@end