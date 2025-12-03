@interface HDCloudSyncStateRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)isStateRecord:(id)record;
+ (id)recordIDWithZoneID:(id)d recordIdentifier:(id)identifier;
+ (id)recordWithStateData:(id)data zoneID:(id)d recordIdentifier:(id)identifier error:(id *)error;
- (HDCloudSyncStateRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (NSString)key;
- (NSURL)stateDataAssetURL;
- (id)_createAssetWithStateData:(id)data error:(id *)error;
- (id)_initWithStateData:(id)data zoneID:(id)d recordIdentifier:(id)identifier error:(id *)error;
- (id)initInZone:(id)zone recordIdentifier:(id)identifier;
- (void)updateStateData:(id)data;
@end

@implementation HDCloudSyncStateRecord

- (id)initInZone:(id)zone recordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  zoneCopy = zone;
  v8 = [objc_opt_class() recordIDWithZoneID:zoneCopy recordIdentifier:identifierCopy];

  v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncStateRecord" recordID:v8];
  v10 = [(HDCloudSyncStateRecord *)self initWithCKRecord:v9 schemaVersion:1];

  return v10;
}

- (HDCloudSyncStateRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncStateRecord;
  v4 = [(HDCloudSyncRecord *)&v15 initWithCKRecord:record schemaVersion:version];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  underlyingMessage = [(HDCloudSyncRecord *)v4 underlyingMessage];
  if (!underlyingMessage)
  {
    v11 = objc_alloc_init(HDCloudSyncCodableState);
    underlyingStateData = v5->_underlyingStateData;
    v5->_underlyingStateData = v11;

    goto LABEL_8;
  }

  v7 = [[HDCloudSyncCodableState alloc] initWithData:underlyingMessage];
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

+ (id)recordWithStateData:(id)data zoneID:(id)d recordIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  dCopy = d;
  dataCopy = data;
  v12 = [[HDCloudSyncStateRecord alloc] _initWithStateData:dataCopy zoneID:dCopy recordIdentifier:identifierCopy error:error];

  return v12;
}

- (id)_initWithStateData:(id)data zoneID:(id)d recordIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  dCopy = d;
  v13 = [objc_opt_class() recordIDWithZoneID:dCopy recordIdentifier:identifierCopy];

  v14 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncStateRecord" recordID:v13];
  v15 = [(HDCloudSyncStateRecord *)self initWithCKRecord:v14 schemaVersion:1];
  if (v15)
  {
    if ([dataCopy length] >> 20)
    {
      v16 = [(HDCloudSyncStateRecord *)v15 _createAssetWithStateData:dataCopy error:error];
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
      [(HDCloudSyncCodableState *)v15->_underlyingStateData setStateData:dataCopy];
    }
  }

  return v15;
}

- (id)_createAssetWithStateData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  temporaryDirectory = [v6 temporaryDirectory];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v10 = [temporaryDirectory URLByAppendingPathComponent:uUIDString];

  v11 = HDAssetFileHandleForFileURL(v10, v6, error);
  v12 = v11;
  if (v11 && [v11 writeData:dataCopy error:error])
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

+ (BOOL)isStateRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncStateRecord"];

  return v4;
}

+ (id)recordIDWithZoneID:(id)d recordIdentifier:(id)identifier
{
  v5 = MEMORY[0x277CCACA8];
  dCopy = d;
  identifier = [v5 stringWithFormat:@"%@%@%@", @"CloudSyncState", @"/", identifier];
  v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:identifier zoneID:dCopy];

  return v8;
}

- (NSString)key
{
  v13 = *MEMORY[0x277D85DE8];
  record = [(HDCloudSyncRecord *)self record];
  recordID = [record recordID];
  recordName = [recordID recordName];
  v6 = [recordName componentsSeparatedByString:@"/"];

  if ([v6 count] == 2)
  {
    lastObject = [v6 lastObject];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v11 = 138412290;
      selfCopy = self;
      _os_log_fault_impl(&dword_228986000, v8, OS_LOG_TYPE_FAULT, "Error fetching key from State Sync record %@", &v11, 0xCu);
    }

    lastObject = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return lastObject;
}

- (NSURL)stateDataAssetURL
{
  record = [(HDCloudSyncRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"CloudSyncStateAsset"];

  fileURL = [v3 fileURL];

  return fileURL;
}

- (void)updateStateData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length] <= 0x100000)
  {
    [(HDCloudSyncCodableState *)self->_underlyingStateData setStateData:dataCopy];

    record = [(HDCloudSyncRecord *)self record];
    [record setObject:0 forKeyedSubscript:@"CloudSyncStateAsset"];
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = 0;
    v5 = [(HDCloudSyncStateRecord *)self _createAssetWithStateData:dataCopy error:&v13];

    v6 = v13;
    v7 = v6;
    if (v5 || !v6)
    {
      record2 = [(HDCloudSyncRecord *)self record];
      [record2 setObject:v5 forKeyedSubscript:@"CloudSyncStateAsset"];

      [(HDCloudSyncCodableState *)self->_underlyingStateData setStateData:0];
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v16 = 2114;
        v17 = v7;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update asset on HDCloudSyncStateRecord, %{public}@", buf, 0x16u);
      }
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

+ (BOOL)hasFutureSchema:(id)schema
{
  encryptedValues = [schema encryptedValues];
  v4 = [encryptedValues objectForKeyedSubscript:@"Version"];

  v5 = v4 && [v4 integerValue] > 1;
  return v5;
}

@end