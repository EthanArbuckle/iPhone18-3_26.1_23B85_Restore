@interface CKRecordID(HMDBackingStoreLocal)
+ (id)parseFromString:()HMDBackingStoreLocal;
- (id)encodeForKey;
@end

@implementation CKRecordID(HMDBackingStoreLocal)

- (id)encodeForKey
{
  v2 = MEMORY[0x277CCACA8];
  zoneID = [self zoneID];
  ownerName = [zoneID ownerName];
  zoneID2 = [self zoneID];
  zoneName = [zoneID2 zoneName];
  recordName = [self recordName];
  v8 = [v2 stringWithFormat:@"%@/%@/%@", ownerName, zoneName, recordName];

  return v8;
}

+ (id)parseFromString:()HMDBackingStoreLocal
{
  v3 = [a3 componentsSeparatedByString:@"/"];
  if ([v3 count] == 3)
  {
    v4 = objc_alloc(MEMORY[0x277CBC5F8]);
    v5 = [v3 objectAtIndex:1];
    v6 = [v3 objectAtIndex:0];
    v7 = [v4 initWithZoneName:v5 ownerName:v6];

    v8 = objc_alloc(MEMORY[0x277CBC5D0]);
    v9 = [v3 objectAtIndex:2];
    v10 = [v8 initWithRecordName:v9 zoneID:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end