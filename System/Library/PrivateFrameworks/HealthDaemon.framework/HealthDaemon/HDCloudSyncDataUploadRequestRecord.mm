@interface HDCloudSyncDataUploadRequestRecord
+ (BOOL)isDataUploadRequestRecord:(id)record;
+ (HDCloudSyncDataUploadRequestRecord)recordWithCKRecord:(id)record error:(id *)error;
+ (id)recordForZoneID:(id)d;
+ (id)recordIDWithZoneID:(id)d;
- (id)description;
@end

@implementation HDCloudSyncDataUploadRequestRecord

+ (id)recordIDWithZoneID:(id)d
{
  v3 = MEMORY[0x277CBC5D0];
  dCopy = d;
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncDataUploadRequest" zoneID:dCopy];

  return v5;
}

+ (BOOL)isDataUploadRequestRecord:(id)record
{
  recordType = [record recordType];
  v4 = [recordType isEqualToString:@"CloudSyncDataUploadRequestRecord"];

  return v4;
}

+ (id)recordForZoneID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() recordIDWithZoneID:dCopy];

  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncDataUploadRequestRecord" recordID:v5];
  v7 = [[self alloc] initWithCKRecord:v6 schemaVersion:1];

  return v7;
}

+ (HDCloudSyncDataUploadRequestRecord)recordWithCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v9 = [recordType isEqualToString:@"CloudSyncDataUploadRequestRecord"];

  if (v9)
  {
    recordType2 = [recordCopy hd_requiredValueForKey:@"Version" type:objc_opt_class() error:error];
    if (recordType2)
    {
      v11 = [[self alloc] initWithCKRecord:recordCopy schemaVersion:{objc_msgSend(recordType2, "integerValue")}];
      goto LABEL_10;
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = objc_opt_class();
    recordType2 = [recordCopy recordType];
    v14 = [v12 hk_errorForInvalidArgument:@"@" class:v13 selector:a2 format:{@"record has type (%@), but expected (%@)", recordType2, @"CloudSyncDataUploadRequestRecord"}];
    if (v14)
    {
      if (error)
      {
        v15 = v14;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  record = [(HDCloudSyncRecord *)self record];
  recordID = [record recordID];
  record2 = [(HDCloudSyncRecord *)self record];
  modificationDate = [record2 modificationDate];
  record3 = [(HDCloudSyncRecord *)self record];
  v9 = [record3 objectForKeyedSubscript:@"Version"];
  v10 = [v3 stringWithFormat:@"DataUploadRequest %@\nLast Modified Date: %@\nSchema Version: %@\n", recordID, modificationDate, v9];

  return v10;
}

@end