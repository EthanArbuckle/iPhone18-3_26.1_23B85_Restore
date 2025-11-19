@interface HDCloudSyncStateRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)isStateRecord:(id)a3;
+ (id)recordIDWithZoneID:(id)a3 recordIdentifier:(id)a4;
+ (id)recordWithStateData:(id)a3 zoneID:(id)a4 recordIdentifier:(id)a5 error:(id *)a6;
- (HDCloudSyncStateRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
- (NSString)key;
- (NSURL)stateDataAssetURL;
- (id)_createAssetWithStateData:(id)a3 error:(id *)a4;
- (id)_initWithStateData:(id)a3 zoneID:(id)a4 recordIdentifier:(id)a5 error:(id *)a6;
- (id)initInZone:(id)a3 recordIdentifier:(id)a4;
- (void)updateStateData:(id)a3;
@end

@implementation HDCloudSyncStateRecord

- (id)initInZone:(id)a3 recordIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() recordIDWithZoneID:v7 recordIdentifier:v6];

  v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncStateRecord" recordID:v8];
  v10 = [(HDCloudSyncStateRecord *)self initWithCKRecord:v9 schemaVersion:1];

  return v10;
}

- (HDCloudSyncStateRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncStateRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:a3 schemaVersion:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!v6)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableState);
    underlyingStateData = v5->_underlyingStateData;
    v5->_underlyingStateData = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableState alloc] initWithData:v6];
  v8 = v5->_underlyingStateData;
  v5->_underlyingStateData = v7;

  if (v5->_underlyingStateData)
  {
LABEL_8:

LABEL_9:
    v10 = v5;
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
  {
    v14[0] = 0;
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Failed to decode underlying state message.", v14, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (id)recordWithStateData:(id)a3 zoneID:(id)a4 recordIdentifier:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[HDCloudSyncStateRecord alloc] _initWithStateData:v11 zoneID:v10 recordIdentifier:v9 error:a6];

  return v12;
}

- (id)_initWithStateData:(id)a3 zoneID:(id)a4 recordIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [objc_opt_class() recordIDWithZoneID:v12 recordIdentifier:v11];

  v14 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncStateRecord" recordID:v13];
  v15 = [(HDCloudSyncStateRecord *)self initWithCKRecord:v14 schemaVersion:1];
  if (v15)
  {
    if ([v10 length] >> 20)
    {
      v16 = [(HDCloudSyncStateRecord *)v15 _createAssetWithStateData:v10 error:a6];
      if (v16)
      {
        [v14 setObject:v16 forKeyedSubscript:@"CloudSyncStateAsset"];
      }

      else
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          *v19 = 0;
          _os_log_fault_impl(&dword_228986000, v17, OS_LOG_TYPE_FAULT, "Unable to create CKAsset for State Sync record", v19, 2u);
        }
      }
    }

    else
    {
      [(HDCloudSyncCodableState *)v15->_underlyingStateData setStateData:v10];
    }
  }

  return v15;
}

- (id)_createAssetWithStateData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v7 = [v6 temporaryDirectory];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 URLByAppendingPathComponent:v9];

  v11 = HDAssetFileHandleForFileURL(v10, v6, a4);
  v12 = v11;
  if (v11 && [v11 writeData:v5 error:a4])
  {
    v13 = _HDIsUnitTesting;
    v14 = objc_alloc(MEMORY[0x277CBC190]);
    if (v13)
    {
      v15 = [v14 initWithFileURL:v10];
    }

    else
    {
      v15 = [v14 initWithFileDescriptor:{objc_msgSend(v12, "fileDescriptor")}];
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)isStateRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncStateRecord"];

  return v4;
}

+ (id)recordIDWithZoneID:(id)a3 recordIdentifier:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@%@%@", @"CloudSyncState", @"/", a4];
  v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v7 zoneID:v6];

  return v8;
}

- (NSString)key
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncRecord *)self record];
  v4 = [v3 recordID];
  v5 = [v4 recordName];
  v6 = [v5 componentsSeparatedByString:@"/"];

  if ([v6 count] == 2)
  {
    v7 = [v6 lastObject];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v11 = 138412290;
      v12 = self;
      _os_log_fault_impl(&dword_228986000, v8, OS_LOG_TYPE_FAULT, "Error fetching key from State Sync record %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSURL)stateDataAssetURL
{
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 objectForKeyedSubscript:@"CloudSyncStateAsset"];

  v4 = [v3 fileURL];

  return v4;
}

- (void)updateStateData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length] <= 0x100000)
  {
    [(HDCloudSyncCodableState *)self->_underlyingStateData setStateData:v4];

    v12 = [(HDCloudSyncRecord *)self record];
    [v12 setObject:0 forKeyedSubscript:@"CloudSyncStateAsset"];
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = 0;
    v5 = [(HDCloudSyncStateRecord *)self _createAssetWithStateData:v4 error:&v13];

    v6 = v13;
    v7 = v6;
    if (v5 || !v6)
    {
      v10 = [(HDCloudSyncRecord *)self record];
      [v10 setObject:v5 forKeyedSubscript:@"CloudSyncStateAsset"];

      [(HDCloudSyncCodableState *)self->_underlyingStateData setStateData:0];
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = self;
        v16 = 2114;
        v17 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update asset on HDCloudSyncStateRecord, %{public}@", buf, 0x16u);
      }
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 encryptedValues];
  v4 = [v3 objectForKeyedSubscript:@"Version"];

  v5 = v4 && [v4 integerValue] > 1;
  return v5;
}

@end