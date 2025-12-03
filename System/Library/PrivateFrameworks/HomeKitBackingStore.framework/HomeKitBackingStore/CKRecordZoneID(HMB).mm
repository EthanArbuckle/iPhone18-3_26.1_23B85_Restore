@interface CKRecordZoneID(HMB)
- (id)hmbDescription;
@end

@implementation CKRecordZoneID(HMB)

- (id)hmbDescription
{
  ownerName = [self ownerName];
  v3 = [ownerName isEqual:*MEMORY[0x277CBBF28]];

  if (v3)
  {
    zoneName = [self zoneName];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    ownerName2 = [self ownerName];
    zoneName2 = [self zoneName];
    zoneName = [v5 stringWithFormat:@"%@/%@", ownerName2, zoneName2];
  }

  return zoneName;
}

@end