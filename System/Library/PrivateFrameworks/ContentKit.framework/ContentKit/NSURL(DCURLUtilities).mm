@interface NSURL(DCURLUtilities)
+ (id)dc_dictionaryFromQueryString:()DCURLUtilities;
+ (id)dc_queryItemsFromQueryDictionary:()DCURLUtilities;
+ (id)dc_queryItemsFromQueryString:()DCURLUtilities;
+ (id)dc_queryStringWithQueryDictionary:()DCURLUtilities addingPercentEscapes:;
- (id)dc_fragmentQueryDictionary;
- (id)dc_queryDictionary;
- (uint64_t)dc_matchesHost:()DCURLUtilities;
@end

@implementation NSURL(DCURLUtilities)

- (uint64_t)dc_matchesHost:()DCURLUtilities
{
  v4 = a3;
  v5 = [a1 host];
  if ([v5 isEqualToString:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [@"www." stringByAppendingString:v4];
    v6 = [v5 isEqualToString:v7];
  }

  return v6;
}

- (id)dc_fragmentQueryDictionary
{
  v1 = [a1 fragment];
  if ([v1 length] && objc_msgSend(v1, "characterAtIndex:", 0) == 33)
  {
    v2 = MEMORY[0x277CBEBC0];
    v3 = [v1 substringFromIndex:1];
    v4 = [v2 dc_dictionaryFromQueryString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dc_queryDictionary
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = [a1 query];
  v3 = [v1 dc_dictionaryFromQueryString:v2];

  return v3;
}

+ (id)dc_queryStringWithQueryDictionary:()DCURLUtilities addingPercentEscapes:
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [v4 allKeys];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 appendFormat:@"&%@", v10];
          goto LABEL_24;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
          v13 = [v12 mutableCopy];

          [v13 removeCharactersInString:@"?=&"];
          if (a4)
          {
            v14 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v13];
            v15 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v13];
          }

          else
          {
            v14 = v10;
            v15 = v11;
          }

          v19 = v15;
          [v5 appendFormat:@"&%@=%@", v14, v15];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_24;
          }

          v16 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
          v13 = [v16 mutableCopy];

          [v13 removeCharactersInString:@"?=&"];
          v17 = v11;
          if (v17)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v17;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }

          v14 = v18;

          if (a4)
          {
            v20 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v13];
          }

          else
          {
            v20 = v10;
          }

          v19 = v20;
          v21 = [v14 stringValue];
          [v5 appendFormat:@"&%@=%@", v19, v21];
        }

LABEL_24:
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  if ([v5 length] && objc_msgSend(v5, "characterAtIndex:", 0) == 38)
  {
    [v5 deleteCharactersInRange:{0, 1}];
  }

  v22 = [v5 copy];

  return v22;
}

+ (id)dc_dictionaryFromQueryString:()DCURLUtilities
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a1 dc_queryItemsFromQueryString:{v4, 0}];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 value];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = &stru_282F53518;
        }

        v15 = [v11 name];
        [v5 setObject:v14 forKey:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)dc_queryItemsFromQueryDictionary:()DCURLUtilities
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = 0x277CCA000uLL;
    do
    {
      v10 = 0;
      v24 = v7;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [v3 objectForKey:v11];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [MEMORY[0x277CCAD18] queryItemWithName:v11 value:v12];
LABEL_11:
            [v4 addObject:v13];
            goto LABEL_13;
          }

          v14 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v8;
            v16 = v3;
            v17 = v5;
            v18 = v4;
            v19 = v9;
            v20 = MEMORY[0x277CCAD18];
            v21 = [v14 stringValue];
            v22 = v20;
            v9 = v19;
            v4 = v18;
            v5 = v17;
            v3 = v16;
            v8 = v15;
            v7 = v24;
            v13 = [v22 queryItemWithName:v11 value:v21];

            goto LABEL_11;
          }
        }

        v13 = 0;
LABEL_13:

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)dc_queryItemsFromQueryString:()DCURLUtilities
{
  v3 = [a3 componentsSeparatedByString:@"&"];
  v4 = [v3 if_compactMap:&__block_literal_global_15490];

  return v4;
}

@end