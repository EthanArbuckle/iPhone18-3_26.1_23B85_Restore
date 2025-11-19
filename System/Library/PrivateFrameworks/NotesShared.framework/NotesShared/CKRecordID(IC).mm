@interface CKRecordID(IC)
- (id)ic_loggingDescriptionIncludingBrackets:()IC;
- (uint64_t)databaseScope;
- (uint64_t)ic_hasEqualRecordNameWithRecordID:()IC;
- (uint64_t)ic_isOwnedByCurrentUser;
@end

@implementation CKRecordID(IC)

- (id)ic_loggingDescriptionIncludingBrackets:()IC
{
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = v5;
  if (a3)
  {
    [v5 appendString:@"<"];
  }

  v7 = [a1 recordName];
  [v6 appendString:v7];

  v8 = [a1 zoneID];
  v9 = [v8 ownerName];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBBF28]];

  if ((v10 & 1) == 0)
  {
    v11 = [a1 zoneID];
    v12 = [v11 ownerName];
    [v6 appendFormat:@" %@", v12];
  }

  if (a3)
  {
    [v6 appendString:@">"];
  }

  return v6;
}

- (uint64_t)databaseScope
{
  v1 = [a1 zoneID];
  v2 = [v1 databaseScope];

  return v2;
}

- (uint64_t)ic_isOwnedByCurrentUser
{
  v1 = [a1 zoneID];
  v2 = [v1 ic_isOwnedByCurrentUser];

  return v2;
}

- (uint64_t)ic_hasEqualRecordNameWithRecordID:()IC
{
  v4 = a3;
  v5 = [a1 recordName];
  v6 = [v4 recordName];

  v7 = [v5 ic_isCaseInsensitiveEqualToString:v6];
  return v7;
}

@end