@interface HDCloudSyncSubscriptionRecord
+ (BOOL)hasFutureSchema:(id)a3;
+ (id)recordForZoneID:(id)a3;
+ (id)recordIDWithZoneID:(id)a3;
+ (id)recordIDsWithZoneID:(id)a3;
+ (id)recordWithCKRecord:(id)a3 error:(id *)a4;
- (id)description;
@end

@implementation HDCloudSyncSubscriptionRecord

+ (id)recordIDsWithZoneID:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncDataUploadRequestRecord recordIDWithZoneID:a3];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)recordWithCKRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([HDCloudSyncDataUploadRequestRecord isDataUploadRequestRecord:v6])
  {
    v7 = [HDCloudSyncDataUploadRequestRecord recordWithCKRecord:v6 error:a4];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = objc_opt_class();
    v10 = [v6 recordType];
    v11 = [v8 hk_errorForInvalidArgument:@"@" class:v9 selector:a2 format:{@"Unexpected record of type (%@)", v10}];
    if (v11)
    {
      if (a4)
      {
        v12 = v11;
        *a4 = v11;
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

+ (BOOL)hasFutureSchema:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"Version"];
  v4 = v3;
  v5 = v3 && [v3 integerValue] > 1;

  return v5;
}

+ (id)recordIDWithZoneID:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)recordForZoneID:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
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
  v10 = [v3 stringWithFormat:@"Subscription %@\nLast Modified Date: %@\nSchema Version: %@\n", v5, v7, v9];

  return v10;
}

@end