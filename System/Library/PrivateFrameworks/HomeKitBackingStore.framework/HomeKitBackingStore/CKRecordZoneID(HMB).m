@interface CKRecordZoneID(HMB)
- (id)hmbDescription;
@end

@implementation CKRecordZoneID(HMB)

- (id)hmbDescription
{
  v2 = [a1 ownerName];
  v3 = [v2 isEqual:*MEMORY[0x277CBBF28]];

  if (v3)
  {
    v4 = [a1 zoneName];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [a1 ownerName];
    v7 = [a1 zoneName];
    v4 = [v5 stringWithFormat:@"%@/%@", v6, v7];
  }

  return v4;
}

@end