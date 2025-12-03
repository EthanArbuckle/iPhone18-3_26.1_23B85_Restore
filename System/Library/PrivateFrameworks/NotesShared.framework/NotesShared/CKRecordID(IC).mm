@interface CKRecordID(IC)
- (id)ic_loggingDescriptionIncludingBrackets:()IC;
- (uint64_t)databaseScope;
- (uint64_t)ic_hasEqualRecordNameWithRecordID:()IC;
- (uint64_t)ic_isOwnedByCurrentUser;
@end

@implementation CKRecordID(IC)

- (id)ic_loggingDescriptionIncludingBrackets:()IC
{
  string = [MEMORY[0x277CCAB68] string];
  v6 = string;
  if (a3)
  {
    [string appendString:@"<"];
  }

  recordName = [self recordName];
  [v6 appendString:recordName];

  zoneID = [self zoneID];
  ownerName = [zoneID ownerName];
  v10 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  if ((v10 & 1) == 0)
  {
    zoneID2 = [self zoneID];
    ownerName2 = [zoneID2 ownerName];
    [v6 appendFormat:@" %@", ownerName2];
  }

  if (a3)
  {
    [v6 appendString:@">"];
  }

  return v6;
}

- (uint64_t)databaseScope
{
  zoneID = [self zoneID];
  databaseScope = [zoneID databaseScope];

  return databaseScope;
}

- (uint64_t)ic_isOwnedByCurrentUser
{
  zoneID = [self zoneID];
  ic_isOwnedByCurrentUser = [zoneID ic_isOwnedByCurrentUser];

  return ic_isOwnedByCurrentUser;
}

- (uint64_t)ic_hasEqualRecordNameWithRecordID:()IC
{
  v4 = a3;
  recordName = [self recordName];
  recordName2 = [v4 recordName];

  v7 = [recordName ic_isCaseInsensitiveEqualToString:recordName2];
  return v7;
}

@end