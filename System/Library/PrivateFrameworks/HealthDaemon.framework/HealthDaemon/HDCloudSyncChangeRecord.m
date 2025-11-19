@interface HDCloudSyncChangeRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isChangeRecord:(id)a3;
+ (BOOL)isChangeRecord:(id)a3 inSequence:(id)a4;
+ (BOOL)isChangeRecordID:(id)a3;
+ (HDSyncAnchorRangeMap)_decodedSyncAnchorRangeMapForAnchorRangeData:(uint64_t)a1;
+ (id)_assetForCKRecord:(uint64_t)a3 error:;
+ (id)assetKeys;
+ (id)changesetArchiveContentDataForCKRecord:(id)a3 error:(id *)a4;
+ (id)changesetArchiveFileHandleForCKRecord:(id)a3 error:(id *)a4;
+ (id)changesetArchiveURLForCKRecord:(id)a3 error:(id *)a4;
+ (id)fieldsForUnprotectedSerialization;
+ (id)nonAssetKeys;
+ (id)recordWithCKRecord:(id)a3 error:(id *)a4;
- (CKRecordID)sequenceRecordID;
- (CKReference)parentRecordReference;
- (HDCloudSyncChangeRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (HDCloudSyncChangeRecord)initWithSyncAnchorRangeMap:(id)a3 finalForSequence:(BOOL)a4 changesetArchiveFileHandle:(id)a5 sequenceRecord:(id)a6 protocolVersion:(int)a7;
- (HDSyncAnchorRangeMap)decodedSyncAnchorRangeMap;
- (NSNumber)changeSize;
- (NSURL)changesetArchiveFileURL;
- (id)initWithCKRecord:(uint64_t)a3 schemaVersion:(void *)a4 underlyingChange:;
- (int64_t)compare:(id)a3;
@end

@implementation HDCloudSyncChangeRecord

- (HDCloudSyncChangeRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncChangeRecord)initWithSyncAnchorRangeMap:(id)a3 finalForSequence:(BOOL)a4 changesetArchiveFileHandle:(id)a5 sequenceRecord:(id)a6 protocolVersion:(int)a7
{
  v41 = a4;
  v43 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc(MEMORY[0x277CBC5A0]);
  v13 = v11;
  objc_opt_self();
  v14 = [v13 recordID];
  v15 = [v14 zoneID];
  v44 = 0;
  v16 = [v15 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v44];

  v17 = objc_alloc(MEMORY[0x277CBC5D0]);
  if (v16)
  {
    v39 = a2;
    v18 = MEMORY[0x277CCACA8];
    v38 = [v13 recordID];
    v19 = [v38 recordName];
    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];
    v22 = [v18 stringWithFormat:@"%@/Change/%@", v19, v21];
    [v13 recordID];
    v23 = v10;
    v25 = v24 = v12;
    v26 = [v25 zoneID];
    v27 = [v17 initWithRecordName:v22 zoneID:v26];

    v28 = v38;
    v12 = v24;
    v10 = v23;

    a2 = v39;
  }

  else
  {
    v28 = [MEMORY[0x277CCAD78] UUID];
    v19 = [v28 UUIDString];
    v20 = [v13 recordID];
    v21 = [v20 zoneID];
    v27 = [v17 initWithRecordName:v19 zoneID:v21];
  }

  v29 = [v12 initWithRecordType:@"CloudSyncChangeRecord" recordID:v27];
  [v13 incrementChildRecordCount];
  [v10 seekToEndOfFile];
  v30 = [v10 offsetInFile];
  if ((v30 - 5242880) < 0xFFFFFFFFFFB00001)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"HDCloudSyncChangeRecord.m" lineNumber:85 description:{@"changeSize (%lld) is invalid for anchors %@", v30, v43}];
  }

  v31 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileDescriptor:{objc_msgSend(v10, "fileDescriptor")}];
  [v31 setItemTypeHint:@"fxd"];
  v32 = [v13 changeIndex];
  v33 = [v13 record];
  v34 = [v33 recordID];
  v35 = [(HDCloudSyncChangeRecord *)self initWithSyncAnchorRangeMap:v43 changeIndex:v32 changesetAsset:v31 changeSize:v30 protocolVersion:a7 finalForSequence:v41 sequenceRecordID:v34 record:v29 schemaVersion:1];

  return v35;
}

- (id)initWithCKRecord:(uint64_t)a3 schemaVersion:(void *)a4 underlyingChange:
{
  v8 = a4;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = HDCloudSyncChangeRecord;
    v9 = objc_msgSendSuper2(&v20, sel_initWithCKRecord_schemaVersion_, a2, a3);
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 3, a4);
      v11 = [v10 record];
      v12 = [v10[3] anchorRangeMap];
      v13 = [v12 data];
      v14 = [v11 encryptedValues];
      [v14 setObject:v13 forKeyedSubscript:@"EntityAnchorRangeMap"];

      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "changeIndex")}];
      [v11 setObject:v15 forKeyedSubscript:@"CurrentChangeIndex"];

      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "changeSize")}];
      [v11 setObject:v16 forKeyedSubscript:@"ChangeSize"];

      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "protocolVersion")}];
      [v11 setObject:v17 forKeyedSubscript:@"ProtocolVersion"];

      v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10[3], "finalForSequence")}];
      [v11 setObject:v18 forKeyedSubscript:@"Options"];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)fieldsForUnprotectedSerialization
{
  v26[6] = *MEMORY[0x277D85DE8];
  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS___HDCloudSyncChangeRecord;
  v2 = objc_msgSendSuper2(&v19, sel_fieldsForUnprotectedSerialization);
  v25 = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v17 = [HDCloudSyncSerializedField fieldForKey:@"SequenceRecord" classes:v18 encrypted:0];
  v26[0] = v17;
  v24 = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v15 = [HDCloudSyncSerializedField fieldForKey:@"EntityAnchorRangeMap" classes:v16 encrypted:1];
  v26[1] = v15;
  v23 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v3 = [HDCloudSyncSerializedField fieldForKey:@"CurrentChangeIndex" classes:v14 encrypted:0];
  v26[2] = v3;
  v22 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v5 = [HDCloudSyncSerializedField fieldForKey:@"ProtocolVersion" classes:v4 encrypted:0];
  v26[3] = v5;
  v21 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v7 = [HDCloudSyncSerializedField fieldForKey:@"Options" classes:v6 encrypted:0];
  v26[4] = v7;
  v20 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v9 = [HDCloudSyncSerializedField fieldForKey:@"ChangeSize" classes:v8 encrypted:0];
  v26[5] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];
  v11 = [v2 arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)recordWithCKRecord:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 recordType];
  v9 = [v8 isEqualToString:@"CloudSyncChangeRecord"];

  if (v9)
  {
    v10 = [v7 hd_requiredValueForKey:@"Version" type:objc_opt_class() error:a4];
    if (!v10)
    {
      v16 = 0;
LABEL_53:

      goto LABEL_54;
    }

    v11 = [v7 hd_requiredValueForKey:@"SequenceRecord" type:objc_opt_class() error:a4];
    if (!v11)
    {
      v16 = 0;
LABEL_52:

      goto LABEL_53;
    }

    v48 = 0;
    v12 = [v7 hd_optionalEncryptedValueForKey:@"UnderlyingMessage" type:objc_opt_class() error:&v48];
    v13 = v48;
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

      goto LABEL_51;
    }

    if (v12)
    {
      v22 = [[HDCloudSyncCodableChange alloc] initWithData:v12];
      if (v22)
      {
        v16 = -[HDCloudSyncChangeRecord initWithCKRecord:schemaVersion:underlyingChange:]([HDCloudSyncChangeRecord alloc], v7, [v10 integerValue], v22);
LABEL_50:

LABEL_51:
        goto LABEL_52;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Underlying message present but does not decode."];
    }

    else
    {
      v22 = [v7 hd_requiredValueForKey:@"CurrentChangeIndex" type:objc_opt_class() error:a4];
      if (v22)
      {
        v23 = [v7 hd_requiredEncryptedValueForKey:@"EntityAnchorRangeMap" type:objc_opt_class() error:a4];
        if (v23)
        {
          v24 = [(HDCloudSyncChangeRecord *)a1 _decodedSyncAnchorRangeMapForAnchorRangeData:v23];
          if (v24)
          {
            v25 = [v7 hd_requiredValueForKey:@"ProtocolVersion" type:objc_opt_class() error:a4];
            if (v25)
            {
              v42 = v24;
              v44 = v25;
              v47 = 0;
              v26 = [v7 hd_optionalValueForKey:@"Options" type:objc_opt_class() error:&v47];
              v27 = v47;
              v43 = v26;
              if (v26 || !v27)
              {
                v41 = v27;
                v46 = 0;
                v29 = [v7 hd_optionalValueForKey:@"ChangeSize" type:objc_opt_class() error:&v46];
                v30 = v46;
                v40 = v29;
                if (v29 || !v30)
                {
                  v39 = v30;
                  v45 = 0;
                  v32 = [v7 hd_optionalValueForKey:@"ChangeSet" type:objc_opt_class() error:&v45];
                  v33 = v45;
                  v38 = v32;
                  if (v32 || !v33)
                  {
                    v34 = v33;
                    v35 = objc_alloc_init(HDCloudSyncCodableChange);
                    -[HDCloudSyncCodableChange setChangeSize:](v35, "setChangeSize:", [v29 longLongValue]);
                    [(HDCloudSyncCodableChange *)v35 setChangeIndex:[(HDCloudSyncCodableChange *)v22 longLongValue]];
                    -[HDCloudSyncCodableChange setProtocolVersion:](v35, "setProtocolVersion:", [v44 integerValue]);
                    -[HDCloudSyncCodableChange setFinalForSequence:](v35, "setFinalForSequence:", [v43 longLongValue] != 0);
                    v36 = [v42 codableSyncAnchorRangeMap];
                    [(HDCloudSyncCodableChange *)v35 setAnchorRangeMap:v36];

                    v16 = -[HDCloudSyncChangeRecord initWithCKRecord:schemaVersion:underlyingChange:]([HDCloudSyncChangeRecord alloc], v7, [v10 integerValue], v35);
                  }

                  else
                  {
                    v34 = v33;
                    if (a4)
                    {
                      v16 = 0;
                      *a4 = v33;
                    }

                    else
                    {
                      _HKLogDroppedError();
                      v16 = 0;
                    }
                  }

                  v31 = v39;
                }

                else
                {
                  v31 = v30;
                  if (a4)
                  {
                    v16 = 0;
                    *a4 = v30;
                  }

                  else
                  {
                    _HKLogDroppedError();
                    v16 = 0;
                  }
                }

                v28 = v41;
              }

              else
              {
                v28 = v27;
                if (a4)
                {
                  v16 = 0;
                  *a4 = v27;
                }

                else
                {
                  _HKLogDroppedError();
                  v16 = 0;
                }
              }

              v25 = v44;
              v24 = v42;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Unable to decode anchor range map."];
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_50;
      }
    }

    v16 = 0;
    goto LABEL_50;
  }

  v17 = MEMORY[0x277CCA9B8];
  v18 = objc_opt_class();
  v19 = [v7 recordType];
  v20 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:{@"record has type (%@), but expected (%@)", v19, @"CloudSyncChangeRecord"}];
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
LABEL_54:

  return v16;
}

+ (HDSyncAnchorRangeMap)_decodedSyncAnchorRangeMapForAnchorRangeData:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [[HDCodableSyncAnchorRangeMap alloc] initWithData:v2];
  if (v3)
  {
    v11 = 0;
    v4 = [[HDSyncAnchorRangeMap alloc] initWithCodableSyncAnchorRangeMap:v3 error:&v11];
    v5 = v11;
    if (v4)
    {
      goto LABEL_10;
    }

    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = v3;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to decode codable sync anchor range map %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v10 = 0;
  v4 = [MEMORY[0x277CCAAC8] hk_unarchivedObjectOfClass:objc_opt_class() forKey:@"EntityAnchorRangeMap" data:v2 error:&v10];
  v5 = v10;
  if (!v4)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Invalid archive attempting to decode sync anchor range map: %{public}@", buf, 0xCu);
    }

    v4 = 0;
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)isChangeRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncChangeRecord"];

  return v4;
}

+ (BOOL)isChangeRecordID:(id)a3
{
  v3 = a3;
  v4 = [v3 recordName];
  if ([v4 rangeOfString:@"/Change/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = [v3 recordName];
    v7 = [v5 initWithUUIDString:v6];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)isChangeRecord:(id)a3 inSequence:(id)a4
{
  v5 = a4;
  v6 = a3;
  v13 = 0;
  v7 = [v6 hd_requiredValueForKey:@"SequenceRecord" type:objc_opt_class() error:&v13];

  if (v7)
  {
    v8 = [v7 recordID];
    v9 = [v5 record];
    v10 = [v9 recordID];
    v11 = [v8 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (id)nonAssetKeys
{
  if (qword_280D67AB8 != -1)
  {
    dispatch_once(&qword_280D67AB8, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_195;

  return v3;
}

void __39__HDCloudSyncChangeRecord_nonAssetKeys__block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"Version";
  v3[1] = @"SequenceRecord";
  v3[2] = @"EntityAnchorRangeMap";
  v3[3] = @"CurrentChangeIndex";
  v3[4] = @"ProtocolVersion";
  v3[5] = @"Options";
  v3[6] = @"ChangeSize";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = _MergedGlobals_195;
  _MergedGlobals_195 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)assetKeys
{
  if (qword_280D67AC8 != -1)
  {
    dispatch_once(&qword_280D67AC8, &__block_literal_global_367);
  }

  v3 = qword_280D67AC0;

  return v3;
}

void __36__HDCloudSyncChangeRecord_assetKeys__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"ChangeSet";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280D67AC0;
  qword_280D67AC0 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)changesetArchiveContentDataForCKRecord:(id)a3 error:(id *)a4
{
  v6 = [(HDCloudSyncChangeRecord *)a1 _assetForCKRecord:a3 error:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 assetContent];
    if (v8)
    {
      goto LABEL_9;
    }

    v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"record has nil assetContent"];
    if (v9)
    {
      if (a4)
      {
        v10 = v9;
        *a4 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (id)_assetForCKRecord:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 hd_requiredValueForKey:@"ChangeSet" type:objc_opt_class() error:a3];

  return v5;
}

+ (id)changesetArchiveFileHandleForCKRecord:(id)a3 error:(id *)a4
{
  v4 = [(HDCloudSyncChangeRecord *)a1 _assetForCKRecord:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fileHandle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)changesetArchiveURLForCKRecord:(id)a3 error:(id *)a4
{
  v4 = [(HDCloudSyncChangeRecord *)a1 _assetForCKRecord:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fileURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(HDCloudSyncChangeRecord *)self changeIndex];
  if (v5 >= [v4 changeIndex])
  {
    v7 = [(HDCloudSyncChangeRecord *)self changeIndex];
    v6 = v7 > [v4 changeIndex];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (NSNumber)changeSize
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HDCloudSyncCodableChange *)self->_underlyingChange changeSize];

  return [v2 numberWithLongLong:v3];
}

- (NSURL)changesetArchiveFileURL
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 objectForKeyedSubscript:@"ChangeSet"];
  v4 = [v3 fileURL];

  return v4;
}

- (HDSyncAnchorRangeMap)decodedSyncAnchorRangeMap
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [HDSyncAnchorRangeMap alloc];
  v4 = [(HDCloudSyncCodableChange *)self->_underlyingChange anchorRangeMap];
  v13 = 0;
  v5 = [(HDSyncAnchorRangeMap *)v3 initWithCodableSyncAnchorRangeMap:v4 error:&v13];
  v6 = v13;

  if (!v5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      underlyingChange = self->_underlyingChange;
      v9 = v7;
      v10 = [(HDCloudSyncCodableChange *)underlyingChange anchorRangeMap];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Failed to decode sync anchor range map: %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (CKRecordID)sequenceRecordID
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 objectForKeyedSubscript:@"SequenceRecord"];

  v4 = [v3 recordID];

  return v4;
}

- (CKReference)parentRecordReference
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 objectForKeyedSubscript:@"SequenceRecord"];

  return v3;
}

@end