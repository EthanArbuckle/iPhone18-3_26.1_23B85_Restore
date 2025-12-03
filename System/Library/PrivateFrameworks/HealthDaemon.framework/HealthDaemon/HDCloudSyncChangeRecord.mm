@interface HDCloudSyncChangeRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isChangeRecord:(id)record;
+ (BOOL)isChangeRecord:(id)record inSequence:(id)sequence;
+ (BOOL)isChangeRecordID:(id)d;
+ (HDSyncAnchorRangeMap)_decodedSyncAnchorRangeMapForAnchorRangeData:(uint64_t)data;
+ (id)_assetForCKRecord:(uint64_t)record error:;
+ (id)assetKeys;
+ (id)changesetArchiveContentDataForCKRecord:(id)record error:(id *)error;
+ (id)changesetArchiveFileHandleForCKRecord:(id)record error:(id *)error;
+ (id)changesetArchiveURLForCKRecord:(id)record error:(id *)error;
+ (id)fieldsForUnprotectedSerialization;
+ (id)nonAssetKeys;
+ (id)recordWithCKRecord:(id)record error:(id *)error;
- (CKRecordID)sequenceRecordID;
- (CKReference)parentRecordReference;
- (HDCloudSyncChangeRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (HDCloudSyncChangeRecord)initWithSyncAnchorRangeMap:(id)map finalForSequence:(BOOL)sequence changesetArchiveFileHandle:(id)handle sequenceRecord:(id)record protocolVersion:(int)version;
- (HDSyncAnchorRangeMap)decodedSyncAnchorRangeMap;
- (NSNumber)changeSize;
- (NSURL)changesetArchiveFileURL;
- (id)initWithCKRecord:(uint64_t)record schemaVersion:(void *)version underlyingChange:;
- (int64_t)compare:(id)compare;
@end

@implementation HDCloudSyncChangeRecord

- (HDCloudSyncChangeRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncChangeRecord)initWithSyncAnchorRangeMap:(id)map finalForSequence:(BOOL)sequence changesetArchiveFileHandle:(id)handle sequenceRecord:(id)record protocolVersion:(int)version
{
  sequenceCopy = sequence;
  mapCopy = map;
  handleCopy = handle;
  recordCopy = record;
  v12 = objc_alloc(MEMORY[0x277CBC5A0]);
  v13 = recordCopy;
  objc_opt_self();
  recordID = [v13 recordID];
  zoneID = [recordID zoneID];
  v44 = 0;
  v16 = [zoneID hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v44];

  v17 = objc_alloc(MEMORY[0x277CBC5D0]);
  if (v16)
  {
    v39 = a2;
    v18 = MEMORY[0x277CCACA8];
    recordID2 = [v13 recordID];
    recordName = [recordID2 recordName];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v22 = [v18 stringWithFormat:@"%@/Change/%@", recordName, uUIDString];
    [v13 recordID];
    v23 = handleCopy;
    v25 = v24 = v12;
    zoneID2 = [v25 zoneID];
    v27 = [v17 initWithRecordName:v22 zoneID:zoneID2];

    uUID2 = recordID2;
    v12 = v24;
    handleCopy = v23;

    a2 = v39;
  }

  else
  {
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    recordName = [uUID2 UUIDString];
    uUID = [v13 recordID];
    uUIDString = [uUID zoneID];
    v27 = [v17 initWithRecordName:recordName zoneID:uUIDString];
  }

  v29 = [v12 initWithRecordType:@"CloudSyncChangeRecord" recordID:v27];
  [v13 incrementChildRecordCount];
  [handleCopy seekToEndOfFile];
  offsetInFile = [handleCopy offsetInFile];
  if ((offsetInFile - 5242880) < 0xFFFFFFFFFFB00001)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncChangeRecord.m" lineNumber:85 description:{@"changeSize (%lld) is invalid for anchors %@", offsetInFile, mapCopy}];
  }

  v31 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileDescriptor:{objc_msgSend(handleCopy, "fileDescriptor")}];
  [v31 setItemTypeHint:@"fxd"];
  changeIndex = [v13 changeIndex];
  record = [v13 record];
  recordID3 = [record recordID];
  v35 = [(HDCloudSyncChangeRecord *)self initWithSyncAnchorRangeMap:mapCopy changeIndex:changeIndex changesetAsset:v31 changeSize:offsetInFile protocolVersion:version finalForSequence:sequenceCopy sequenceRecordID:recordID3 record:v29 schemaVersion:1];

  return v35;
}

- (id)initWithCKRecord:(uint64_t)record schemaVersion:(void *)version underlyingChange:
{
  versionCopy = version;
  if (self)
  {
    v20.receiver = self;
    v20.super_class = HDCloudSyncChangeRecord;
    v9 = objc_msgSendSuper2(&v20, sel_initWithCKRecord_schemaVersion_, a2, record);
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 3, version);
      record = [v10 record];
      anchorRangeMap = [v10[3] anchorRangeMap];
      data = [anchorRangeMap data];
      encryptedValues = [record encryptedValues];
      [encryptedValues setObject:data forKeyedSubscript:@"EntityAnchorRangeMap"];

      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "changeIndex")}];
      [record setObject:v15 forKeyedSubscript:@"CurrentChangeIndex"];

      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "changeSize")}];
      [record setObject:v16 forKeyedSubscript:@"ChangeSize"];

      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10[3], "protocolVersion")}];
      [record setObject:v17 forKeyedSubscript:@"ProtocolVersion"];

      v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10[3], "finalForSequence")}];
      [record setObject:v18 forKeyedSubscript:@"Options"];
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
  v19.receiver = self;
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

+ (id)recordWithCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v9 = [recordType isEqualToString:@"CloudSyncChangeRecord"];

  if (v9)
  {
    v10 = [recordCopy hd_requiredValueForKey:@"Version" type:objc_opt_class() error:error];
    if (!v10)
    {
      v16 = 0;
LABEL_53:

      goto LABEL_54;
    }

    v11 = [recordCopy hd_requiredValueForKey:@"SequenceRecord" type:objc_opt_class() error:error];
    if (!v11)
    {
      v16 = 0;
LABEL_52:

      goto LABEL_53;
    }

    v48 = 0;
    v12 = [recordCopy hd_optionalEncryptedValueForKey:@"UnderlyingMessage" type:objc_opt_class() error:&v48];
    v13 = v48;
    v14 = v13;
    if (!v12 && v13)
    {
      if (error)
      {
        v15 = v13;
        v16 = 0;
        *error = v14;
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
        v16 = -[HDCloudSyncChangeRecord initWithCKRecord:schemaVersion:underlyingChange:]([HDCloudSyncChangeRecord alloc], recordCopy, [v10 integerValue], v22);
LABEL_50:

LABEL_51:
        goto LABEL_52;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Underlying message present but does not decode."];
    }

    else
    {
      v22 = [recordCopy hd_requiredValueForKey:@"CurrentChangeIndex" type:objc_opt_class() error:error];
      if (v22)
      {
        v23 = [recordCopy hd_requiredEncryptedValueForKey:@"EntityAnchorRangeMap" type:objc_opt_class() error:error];
        if (v23)
        {
          v24 = [(HDCloudSyncChangeRecord *)self _decodedSyncAnchorRangeMapForAnchorRangeData:v23];
          if (v24)
          {
            v25 = [recordCopy hd_requiredValueForKey:@"ProtocolVersion" type:objc_opt_class() error:error];
            if (v25)
            {
              v42 = v24;
              v44 = v25;
              v47 = 0;
              v26 = [recordCopy hd_optionalValueForKey:@"Options" type:objc_opt_class() error:&v47];
              v27 = v47;
              v43 = v26;
              if (v26 || !v27)
              {
                v41 = v27;
                v46 = 0;
                v29 = [recordCopy hd_optionalValueForKey:@"ChangeSize" type:objc_opt_class() error:&v46];
                v30 = v46;
                v40 = v29;
                if (v29 || !v30)
                {
                  v39 = v30;
                  v45 = 0;
                  v32 = [recordCopy hd_optionalValueForKey:@"ChangeSet" type:objc_opt_class() error:&v45];
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
                    codableSyncAnchorRangeMap = [v42 codableSyncAnchorRangeMap];
                    [(HDCloudSyncCodableChange *)v35 setAnchorRangeMap:codableSyncAnchorRangeMap];

                    v16 = -[HDCloudSyncChangeRecord initWithCKRecord:schemaVersion:underlyingChange:]([HDCloudSyncChangeRecord alloc], recordCopy, [v10 integerValue], v35);
                  }

                  else
                  {
                    v34 = v33;
                    if (error)
                    {
                      v16 = 0;
                      *error = v33;
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
                  if (error)
                  {
                    v16 = 0;
                    *error = v30;
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
                if (error)
                {
                  v16 = 0;
                  *error = v27;
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
            [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Unable to decode anchor range map."];
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
  recordType2 = [recordCopy recordType];
  v20 = [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:{@"record has type (%@), but expected (%@)", recordType2, @"CloudSyncChangeRecord"}];
  if (v20)
  {
    if (error)
    {
      v21 = v20;
      *error = v20;
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

+ (HDSyncAnchorRangeMap)_decodedSyncAnchorRangeMapForAnchorRangeData:(uint64_t)data
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

+ (BOOL)isChangeRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncChangeRecord"];

  return v4;
}

+ (BOOL)isChangeRecordID:(id)d
{
  dCopy = d;
  recordName = [dCopy recordName];
  if ([recordName rangeOfString:@"/Change/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    recordName2 = [dCopy recordName];
    v7 = [v5 initWithUUIDString:recordName2];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)isChangeRecord:(id)record inSequence:(id)sequence
{
  sequenceCopy = sequence;
  recordCopy = record;
  v13 = 0;
  v7 = [recordCopy hd_requiredValueForKey:@"SequenceRecord" type:objc_opt_class() error:&v13];

  if (v7)
  {
    recordID = [v7 recordID];
    record = [sequenceCopy record];
    recordID2 = [record recordID];
    v11 = [recordID isEqual:recordID2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
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

+ (id)changesetArchiveContentDataForCKRecord:(id)record error:(id *)error
{
  v6 = [(HDCloudSyncChangeRecord *)self _assetForCKRecord:record error:error];
  v7 = v6;
  if (v6)
  {
    assetContent = [v6 assetContent];
    if (assetContent)
    {
      goto LABEL_9;
    }

    v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"record has nil assetContent"];
    if (v9)
    {
      if (error)
      {
        v10 = v9;
        *error = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  assetContent = 0;
LABEL_9:

  return assetContent;
}

+ (id)_assetForCKRecord:(uint64_t)record error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 hd_requiredValueForKey:@"ChangeSet" type:objc_opt_class() error:record];

  return v5;
}

+ (id)changesetArchiveFileHandleForCKRecord:(id)record error:(id *)error
{
  v4 = [(HDCloudSyncChangeRecord *)self _assetForCKRecord:record error:error];
  v5 = v4;
  if (v4)
  {
    fileHandle = [v4 fileHandle];
  }

  else
  {
    fileHandle = 0;
  }

  return fileHandle;
}

+ (id)changesetArchiveURLForCKRecord:(id)record error:(id *)error
{
  v4 = [(HDCloudSyncChangeRecord *)self _assetForCKRecord:record error:error];
  v5 = v4;
  if (v4)
  {
    fileURL = [v4 fileURL];
  }

  else
  {
    fileURL = 0;
  }

  return fileURL;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  changeIndex = [(HDCloudSyncChangeRecord *)self changeIndex];
  if (changeIndex >= [compareCopy changeIndex])
  {
    changeIndex2 = [(HDCloudSyncChangeRecord *)self changeIndex];
    v6 = changeIndex2 > [compareCopy changeIndex];
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
  changeSize = [(HDCloudSyncCodableChange *)self->_underlyingChange changeSize];

  return [v2 numberWithLongLong:changeSize];
}

- (NSURL)changesetArchiveFileURL
{
  record = [(HDCloudSyncRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"ChangeSet"];
  fileURL = [v3 fileURL];

  return fileURL;
}

- (HDSyncAnchorRangeMap)decodedSyncAnchorRangeMap
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [HDSyncAnchorRangeMap alloc];
  anchorRangeMap = [(HDCloudSyncCodableChange *)self->_underlyingChange anchorRangeMap];
  v13 = 0;
  v5 = [(HDSyncAnchorRangeMap *)v3 initWithCodableSyncAnchorRangeMap:anchorRangeMap error:&v13];
  v6 = v13;

  if (!v5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      underlyingChange = self->_underlyingChange;
      v9 = v7;
      anchorRangeMap2 = [(HDCloudSyncCodableChange *)underlyingChange anchorRangeMap];
      *buf = 138412290;
      v15 = anchorRangeMap2;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Failed to decode sync anchor range map: %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (CKRecordID)sequenceRecordID
{
  record = [(HDCloudSyncRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"SequenceRecord"];

  recordID = [v3 recordID];

  return recordID;
}

- (CKReference)parentRecordReference
{
  record = [(HDCloudSyncRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"SequenceRecord"];

  return v3;
}

@end