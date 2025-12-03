@interface CKRecordID(HMB)
+ (id)recordIDFromExternalID:()HMB error:;
- (id)externalID:()HMB;
- (id)hmbDescription;
@end

@implementation CKRecordID(HMB)

- (id)externalID:()HMB
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"r";
  recordName = [self recordName];
  v15[0] = recordName;
  v14[1] = @"z";
  zoneID = [self zoneID];
  zoneName = [zoneID zoneName];
  v15[1] = zoneName;
  v14[2] = @"u";
  zoneID2 = [self zoneID];
  ownerName = [zoneID2 ownerName];
  v15[2] = ownerName;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v11 = [v10 hmbOPACKDataFromDictionaryWithError:a3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)hmbDescription
{
  recordName = [self recordName];
  v2 = [recordName substringToIndex:8];

  return v2;
}

+ (id)recordIDFromExternalID:()HMB error:
{
  v5 = [MEMORY[0x277CBEAC0] hmbDictionaryFromOPACKData:? error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"u"];
    v8 = [v6 objectForKey:@"z"];
    v9 = [v6 objectForKey:@"r"];
    v10 = v9;
    if (v7)
    {
      v11 = v8 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || v9 == 0)
    {
      if (a4)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        *a4 = v14 = 0;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v8 ownerName:v7];
      v14 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v10 zoneID:v13];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end