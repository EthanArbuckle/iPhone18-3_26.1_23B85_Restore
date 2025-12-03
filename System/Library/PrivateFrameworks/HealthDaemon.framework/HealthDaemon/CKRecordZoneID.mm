@interface CKRecordZoneID
+ (id)_hd_zoneIDForSyncCircleIdentifier:(void *)identifier name:;
- (uint64_t)_hd_isZoneIDForSyncCircleIdentifier:(void *)identifier name:;
@end

@implementation CKRecordZoneID

+ (id)_hd_zoneIDForSyncCircleIdentifier:(void *)identifier name:
{
  v4 = a2;
  identifierCopy = identifier;
  v6 = objc_opt_self();
  if ([v4 containsString:@":"])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__hd_zoneIDForSyncCircleIdentifier_name_ object:v6 file:@"CKRecordZoneID+HDCloudSync.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"![syncCircleIdentifier containsString:RecordZoneIDComponentsSeparator]"}];
  }

  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v4, @":", identifierCopy];
  v8 = objc_alloc(MEMORY[0x277CBC5F8]);
  v9 = [v8 initWithZoneName:identifierCopy ownerName:*MEMORY[0x277CBBF28]];

  return v9;
}

- (uint64_t)_hd_isZoneIDForSyncCircleIdentifier:(void *)identifier name:
{
  identifierCopy = identifier;
  if (self)
  {
    zoneName = [self zoneName];
    v7 = [zoneName componentsSeparatedByString:@":"];

    if ([v7 count] == 2 && (objc_msgSend(v7, "objectAtIndexedSubscript:", 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", identifierCopy), v8, v9))
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