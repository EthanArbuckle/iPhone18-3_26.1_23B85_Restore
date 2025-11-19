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
  v5 = [a1 recordName];
  v15[0] = v5;
  v14[1] = @"z";
  v6 = [a1 zoneID];
  v7 = [v6 zoneName];
  v15[1] = v7;
  v14[2] = @"u";
  v8 = [a1 zoneID];
  v9 = [v8 ownerName];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v11 = [v10 hmbOPACKDataFromDictionaryWithError:a3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)hmbDescription
{
  v1 = [a1 recordName];
  v2 = [v1 substringToIndex:8];

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