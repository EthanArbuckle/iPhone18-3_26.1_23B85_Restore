@interface NSURLComponents(Encoding)
+ (id)mt_queryParameterStringForDictionary:()Encoding;
@end

@implementation NSURLComponents(Encoding)

+ (id)mt_queryParameterStringForDictionary:()Encoding
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = [[a1 alloc] initWithString:&stru_286A3A510];
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CCAD18]);
        v13 = MEMORY[0x277CCACA8];
        v14 = [v6 objectForKeyedSubscript:v11];
        v15 = [v13 stringWithFormat:@"%@", v14];
        v16 = [v12 initWithName:v11 value:v15];

        [v5 addObject:v16];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [v20 setQueryItems:v5];
  v17 = [v20 percentEncodedQuery];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end