@interface HDCloudSyncDataUploadRequestRecord
+ (BOOL)isDataUploadRequestRecord:(id)a3;
+ (HDCloudSyncDataUploadRequestRecord)recordWithCKRecord:(id)a3 error:(id *)a4;
+ (id)recordForZoneID:(id)a3;
+ (id)recordIDWithZoneID:(id)a3;
- (id)description;
@end

@implementation HDCloudSyncDataUploadRequestRecord

+ (id)recordIDWithZoneID:(id)a3
{
  v3 = MEMORY[0x277CBC5D0];
  v4 = a3;
  v5 = [[v3 alloc] initWithRecordName:@"CloudSyncDataUploadRequest" zoneID:v4];

  return v5;
}

+ (BOOL)isDataUploadRequestRecord:(id)a3
{
  v3 = [a3 recordType];
  v4 = [v3 isEqualToString:@"CloudSyncDataUploadRequestRecord"];

  return v4;
}

+ (id)recordForZoneID:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() recordIDWithZoneID:v4];

  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"CloudSyncDataUploadRequestRecord" recordID:v5];
  v7 = [[a1 alloc] initWithCKRecord:v6 schemaVersion:1];

  return v7;
}

+ (HDCloudSyncDataUploadRequestRecord)recordWithCKRecord:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 recordType];
  v9 = [v8 isEqualToString:@"CloudSyncDataUploadRequestRecord"];

  if (v9)
  {
    v10 = [v7 hd_requiredValueForKey:@"Version" type:objc_opt_class() error:a4];
    if (v10)
    {
      v11 = [[a1 alloc] initWithCKRecord:v7 schemaVersion:{objc_msgSend(v10, "integerValue")}];
      goto LABEL_10;
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = objc_opt_class();
    v10 = [v7 recordType];
    v14 = [v12 hk_errorForInvalidArgument:@"@" class:v13 selector:a2 format:{@"record has type (%@), but expected (%@)", v10, @"CloudSyncDataUploadRequestRecord"}];
    if (v14)
    {
      if (a4)
      {
        v15 = v14;
        *a4 = v14;
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
  v4 = [(HDCloudSyncRecord *)self record];
  v5 = [v4 recordID];
  v6 = [(HDCloudSyncRecord *)self record];
  v7 = [v6 modificationDate];
  v8 = [(HDCloudSyncRecord *)self record];
  v9 = [v8 objectForKeyedSubscript:@"Version"];
  v10 = [v3 stringWithFormat:@"DataUploadRequest %@\nLast Modified Date: %@\nSchema Version: %@\n", v5, v7, v9];

  return v10;
}

@end