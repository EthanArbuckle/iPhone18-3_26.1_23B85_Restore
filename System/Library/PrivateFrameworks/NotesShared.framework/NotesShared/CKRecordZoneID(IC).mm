@interface CKRecordZoneID(IC)
- (id)ic_loggingDescription;
- (uint64_t)databaseScope;
- (uint64_t)ic_isOwnedByCurrentUser;
@end

@implementation CKRecordZoneID(IC)

- (id)ic_loggingDescription
{
  v2 = [a1 ownerName];
  v3 = [v2 isEqualToString:*MEMORY[0x277CBBF28]];

  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v5 = [a1 zoneName];
    v6 = [v4 stringWithFormat:@"<%@>", v5];
  }

  else
  {
    v5 = [a1 ownerName];
    v7 = [a1 zoneName];
    v6 = [v4 stringWithFormat:@"<%@ %@>", v5, v7];
  }

  return v6;
}

- (uint64_t)databaseScope
{
  v1 = [a1 ownerName];
  v2 = [v1 isEqualToString:*MEMORY[0x277CBBF28]];

  if (v2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (uint64_t)ic_isOwnedByCurrentUser
{
  v1 = [a1 ownerName];
  v2 = [v1 isEqualToString:*MEMORY[0x277CBBF28]];

  return v2;
}

@end