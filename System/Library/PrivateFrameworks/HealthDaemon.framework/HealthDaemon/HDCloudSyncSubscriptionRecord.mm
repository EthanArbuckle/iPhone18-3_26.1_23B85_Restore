@interface HDCloudSyncSubscriptionRecord
+ (BOOL)hasFutureSchema:(id)schema;
+ (id)recordForZoneID:(id)d;
+ (id)recordIDWithZoneID:(id)d;
+ (id)recordIDsWithZoneID:(id)d;
+ (id)recordWithCKRecord:(id)record error:(id *)error;
- (id)description;
@end

@implementation HDCloudSyncSubscriptionRecord

+ (id)recordIDsWithZoneID:(id)d
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncDataUploadRequestRecord recordIDWithZoneID:d];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)recordWithCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  if ([HDCloudSyncDataUploadRequestRecord isDataUploadRequestRecord:recordCopy])
  {
    v7 = [HDCloudSyncDataUploadRequestRecord recordWithCKRecord:recordCopy error:error];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = objc_opt_class();
    recordType = [recordCopy recordType];
    v11 = [v8 hk_errorForInvalidArgument:@"@" class:v9 selector:a2 format:{@"Unexpected record of type (%@)", recordType}];
    if (v11)
    {
      if (error)
      {
        v12 = v11;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)hasFutureSchema:(id)schema
{
  v3 = [schema objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (id)recordIDWithZoneID:(id)d
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)recordForZoneID:(id)d
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
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
  v10 = [v3 stringWithFormat:@"Subscription %@\nLast Modified Date: %@\nSchema Version: %@\n", recordID, modificationDate, v9];

  return v10;
}

@end