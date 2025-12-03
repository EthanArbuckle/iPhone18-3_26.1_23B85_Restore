@interface CKRecordZoneID(IC)
- (id)ic_loggingDescription;
- (uint64_t)databaseScope;
- (uint64_t)ic_isOwnedByCurrentUser;
@end

@implementation CKRecordZoneID(IC)

- (id)ic_loggingDescription
{
  ownerName = [self ownerName];
  v3 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    zoneName = [self zoneName];
    v6 = [v4 stringWithFormat:@"<%@>", zoneName];
  }

  else
  {
    zoneName = [self ownerName];
    zoneName2 = [self zoneName];
    v6 = [v4 stringWithFormat:@"<%@ %@>", zoneName, zoneName2];
  }

  return v6;
}

- (uint64_t)databaseScope
{
  ownerName = [self ownerName];
  v2 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

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
  ownerName = [self ownerName];
  v2 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  return v2;
}

@end