@interface CKRecordZoneID
+ (id)_hd_zoneIDForSyncCircleIdentifier:(void *)a3 name:;
- (uint64_t)_hd_isZoneIDForSyncCircleIdentifier:(void *)a3 name:;
@end

@implementation CKRecordZoneID

+ (id)_hd_zoneIDForSyncCircleIdentifier:(void *)a3 name:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if ([v4 containsString:@":"])
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:sel__hd_zoneIDForSyncCircleIdentifier_name_ object:v6 file:@"CKRecordZoneID+HDCloudSync.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"![syncCircleIdentifier containsString:RecordZoneIDComponentsSeparator]"}];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v4, @":", v5];
  v8 = objc_alloc(MEMORY[0x277CBC5F8]);
  v9 = [v8 initWithZoneName:v7 ownerName:*MEMORY[0x277CBBF28]];

  return v9;
}

- (uint64_t)_hd_isZoneIDForSyncCircleIdentifier:(void *)a3 name:
{
  v5 = a3;
  if (a1)
  {
    v6 = [a1 zoneName];
    v7 = [v6 componentsSeparatedByString:@":"];

    if ([v7 count] == 2 && (objc_msgSend(v7, "objectAtIndexedSubscript:", 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", v5), v8, v9))
    {
      *a2 = [v7 objectAtIndexedSubscript:0];
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end