@interface NSDictionary(ICSearchResultHighlightInfo)
+ (id)decomposedHighlightInfo:()ICSearchResultHighlightInfo;
+ (id)highlightInfoForSearchStringWithPrefixMatchInAllFields:()ICSearchResultHighlightInfo language:;
+ (id)mergeFieldElement:()ICSearchResultHighlightInfo withElement:;
+ (id)mergeHighlightInfo:()ICSearchResultHighlightInfo withHighlighInfo:;
+ (uint64_t)highlightInfoContainsPrefixMatch:()ICSearchResultHighlightInfo;
@end

@implementation NSDictionary(ICSearchResultHighlightInfo)

+ (id)highlightInfoForSearchStringWithPrefixMatchInAllFields:()ICSearchResultHighlightInfo language:
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v5)
  {
    v8 = [ICSearchQueryTokenizer tokensFromString:v5 language:v6];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v7 setObject:v9 forKeyedSubscript:&unk_282747C70];
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v9 setObject:v10 forKeyedSubscript:&unk_282747C88];
    [v10 addObjectsFromArray:v8];
  }

  v11 = [v7 copy];

  return v11;
}

+ (id)mergeHighlightInfo:()ICSearchResultHighlightInfo withHighlighInfo:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
    v8 = 0;
    goto LABEL_16;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  if (!v6)
  {
    v6 = v5;
LABEL_15:
    v8 = [v6 copy];
    goto LABEL_16;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = MEMORY[0x277CBEB98];
  v12 = [v5 allKeys];
  v13 = [v11 setWithArray:v12];
  [v10 unionSet:v13];

  v14 = MEMORY[0x277CBEB98];
  v15 = [v7 allKeys];
  v16 = [v14 setWithArray:v15];
  [v10 unionSet:v16];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v10;
  v17 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        [v5 objectForKeyedSubscript:v21];
        v23 = v22 = v5;
        [v7 objectForKeyedSubscript:v21];
        v25 = v24 = v7;
        v26 = [a1 mergeFieldElement:v23 withElement:v25];
        [v9 setObject:v26 forKeyedSubscript:v21];

        v7 = v24;
        v5 = v22;
      }

      v18 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  v8 = [v9 copy];
LABEL_16:

  return v8;
}

+ (id)mergeFieldElement:()ICSearchResultHighlightInfo withElement:
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  if (!v6)
  {
    v6 = v5;
LABEL_17:
    v9 = [v6 mutableCopy];
    goto LABEL_18;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = MEMORY[0x277CBEB98];
  v12 = [v8 allKeys];
  v13 = [v11 setWithArray:v12];
  [v10 unionSet:v13];

  v14 = MEMORY[0x277CBEB98];
  v15 = [v7 allKeys];
  v16 = [v14 setWithArray:v15];
  [v10 unionSet:v16];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v10;
  v17 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v23 = [v8 objectForKeyedSubscript:v21];
        v24 = [v7 objectForKeyedSubscript:v21];
        if (v23)
        {
          [v22 unionSet:v23];
        }

        if (v24)
        {
          [v22 unionSet:v24];
        }

        [v9 setObject:v22 forKeyedSubscript:v21];
      }

      v18 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }

LABEL_18:

  return v9;
}

+ (uint64_t)highlightInfoContainsPrefixMatch:()ICSearchResultHighlightInfo
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 allKeys];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v4 objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
          v11 = [v10 objectForKeyedSubscript:&unk_282747C88];

          if (v11)
          {
            v12 = 1;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)decomposedHighlightInfo:()ICSearchResultHighlightInfo
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = v3;
  obj = [v3 allKeys];
  v23 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v23)
  {
    v21 = *v39;
    do
    {
      v4 = 0;
      do
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v4;
        v5 = *(*(&v38 + 1) + 8 * v4);
        v27 = [v5 unsignedIntegerValue];
        v6 = [v22 objectForKeyedSubscript:v5];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v28 = [&unk_282748060 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v28)
        {
          v26 = *v35;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v35 != v26)
              {
                objc_enumerationMutation(&unk_282748060);
              }

              v8 = *(*(&v34 + 1) + 8 * i);
              if (([v8 unsignedIntegerValue] & v27) != 0)
              {
                v29 = i;
                v9 = [v25 objectForKeyedSubscript:v8];
                if (!v9)
                {
                  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v25 setObject:v9 forKeyedSubscript:v8];
                }

                v32 = 0u;
                v33 = 0u;
                v30 = 0u;
                v31 = 0u;
                v10 = [&unk_282748078 countByEnumeratingWithState:&v30 objects:v42 count:16];
                if (v10)
                {
                  v11 = v10;
                  v12 = *v31;
                  do
                  {
                    for (j = 0; j != v11; ++j)
                    {
                      if (*v31 != v12)
                      {
                        objc_enumerationMutation(&unk_282748078);
                      }

                      v14 = *(*(&v30 + 1) + 8 * j);
                      v15 = [v6 objectForKeyedSubscript:v14];
                      if (v15)
                      {
                        v16 = [v9 objectForKeyedSubscript:v14];
                        if (!v16)
                        {
                          v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
                          [v9 setObject:v16 forKeyedSubscript:v14];
                        }

                        v17 = [v15 allObjects];
                        [v16 addObjectsFromArray:v17];
                      }
                    }

                    v11 = [&unk_282748078 countByEnumeratingWithState:&v30 objects:v42 count:16];
                  }

                  while (v11);
                }

                i = v29;
              }
            }

            v28 = [&unk_282748060 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v28);
        }

        v4 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v23);
  }

  v18 = [v25 copy];

  return v18;
}

@end