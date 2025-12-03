@interface NSString(_DPBinaryBytes)
- (id)dp_binaryBytesData;
- (id)dp_floatVectorBytesData;
@end

@implementation NSString(_DPBinaryBytes)

- (id)dp_binaryBytesData
{
  data = [MEMORY[0x277CBEB28] data];
  if (![self length])
  {
LABEL_8:
    v6 = [data copy];
    goto LABEL_10;
  }

  v3 = 0;
  while (1)
  {
    v4 = [self characterAtIndex:v3];
    if (v4 == 49)
    {
      v8 = 1;
      v5 = &v8;
      goto LABEL_7;
    }

    if (v4 != 48)
    {
      break;
    }

    v9 = 0;
    v5 = &v9;
LABEL_7:
    [data appendBytes:v5 length:1];
    if (++v3 >= [self length])
    {
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)dp_floatVectorBytesData
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  data = [MEMORY[0x277CBEB28] data];
  v4 = objc_opt_new();
  [v4 setNumberStyle:1];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
  v6 = [self componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v4 numberFromString:*(*(&v18 + 1) + 8 * i)];
        if (!v11)
        {

          v14 = 0;
          goto LABEL_11;
        }

        v12 = v11;
        [v11 floatValue];
        v17 = v13;
        [data appendBytes:&v17 length:4];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [data copy];
LABEL_11:

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end