@interface CKRecord(HMB)
+ (id)recordFromExternalData:()HMB error:;
- (id)externalData:()HMB;
- (id)externalID:()HMB;
- (id)hmbDescription;
- (id)hmbObjectForKey:()HMB encrypted:;
- (void)hmbSetObject:()HMB forKey:encrypted:;
@end

@implementation CKRecord(HMB)

- (id)hmbObjectForKey:()HMB encrypted:
{
  v6 = a3;
  if (a4)
  {
    v7 = [a1 encryptedValuesByKey];
    v8 = [v7 objectForKey:v6];

    v6 = v7;
  }

  else
  {
    v8 = [a1 objectForKey:v6];
  }

  return v8;
}

- (void)hmbSetObject:()HMB forKey:encrypted:
{
  v8 = a4;
  v9 = a3;
  v11 = v9;
  if (a5)
  {
    v10 = [a1 encryptedValuesByKey];
    [v10 setObject:v11 forKey:v8];

    v8 = v11;
    v11 = v10;
  }

  else
  {
    [a1 setObject:v9 forKey:v8];
  }
}

- (id)externalID:()HMB
{
  v4 = [a1 recordID];
  v5 = [v4 externalID:a3];

  return v5;
}

- (id)externalData:()HMB
{
  v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v5];
  [v5 finishEncoding];
  if (a3)
  {
    *a3 = [v5 error];
  }

  v6 = [v5 encodedData];

  return v6;
}

- (id)hmbDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 recordID];
  v4 = [v3 hmbDescription];
  v5 = [a1 recordChangeTag];
  v6 = [a1 modifiedByDevice];
  v7 = [a1 modificationDate];
  v8 = [v2 stringWithFormat:@"%@/%@/%@/%@", v4, v5, v6, v7];

  return v8;
}

+ (id)recordFromExternalData:()HMB error:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a3;
  v16 = 0;
  v7 = [[v5 alloc] initForReadingFromData:v6 error:&v16];

  v8 = v16;
  v9 = v8;
  if (v7)
  {
    v10 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v7];
    [v7 finishDecoding];
    if (v10)
    {
      v11 = v10;
    }

    else if (a4)
    {
      v13 = [v7 error];

      if (v13)
      {
        [v7 error];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      }
      *a4 = ;
    }
  }

  else
  {
    if (a4)
    {
      if (v8)
      {
        v12 = v8;
        v10 = 0;
        *a4 = v9;
        goto LABEL_15;
      }

      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *a4 = v14;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

@end