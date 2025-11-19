@interface ICSearchQueryParser
+ (id)_queryStringForSingleTokenString:(id)a3 queryFields:(id)a4 matchType:(unsigned __int8)a5 queryFlags:(id)a6;
+ (id)prefixMatchingQueryStringForSearchString:(id)a3 enableSpellCheckSPI:(BOOL)a4 languageForSpellchecking:(id)a5 expandedTokens:(id *)a6;
+ (id)queryStringForExpandedTokens:(id)a3 queryFields:(id)a4 matchType:(unsigned __int8)a5;
@end

@implementation ICSearchQueryParser

+ (id)_queryStringForSingleTokenString:(id)a3 queryFields:(id)a4 matchType:(unsigned __int8)a5 queryFlags:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x277D36268] stringByEscapingSearchString:v9];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__15;
  v29 = __Block_byref_object_dispose__15;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v10)
  {
    v10 = [MEMORY[0x277D36268] queryFields];
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __89__ICSearchQueryParser__queryStringForSingleTokenString_queryFields_matchType_queryFlags___block_invoke;
  v20 = &unk_278196538;
  v13 = v12;
  v21 = v13;
  v14 = v11;
  v24 = a5;
  v22 = v14;
  v23 = &v25;
  [v10 enumerateObjectsUsingBlock:&v17];
  v15 = [v26[5] componentsJoinedByString:{@" || ", v17, v18, v19, v20}];

  _Block_object_dispose(&v25, 8);

  return v15;
}

void __89__ICSearchQueryParser__queryStringForSingleTokenString_queryFields_matchType_queryFlags___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) length];
  if (v3)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = &stru_2827172C0;
  }

  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 <= 1)
  {
    if (*(a1 + 56))
    {
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*%@", v11, *(a1 + 32), v5];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@%@", v11, *(a1 + 32), v5];
    }

    goto LABEL_12;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      goto LABEL_14;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%@=*%@*%@", v11, *(a1 + 32), v5];
    v7 = LABEL_12:;
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v3)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%3.3d", 66];
    v10 = [v8 stringWithFormat:@"f%@", v9];
  }

  else
  {
    v10 = &stru_2827172C0;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*%@%@", v11, *(a1 + 32), v5, v10];

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_13:
  [*(*(*(a1 + 48) + 8) + 40) addObject:v7];

LABEL_14:
}

+ (id)queryStringForExpandedTokens:(id)a3 queryFields:(id)a4 matchType:(unsigned __int8)a5
{
  v5 = a5;
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v25)
  {
    v23 = *v27;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([v11 count])
        {
          v13 = 0;
          do
          {
            v14 = [v11 objectAtIndexedSubscript:v13];
            if (v13)
            {
              v15 = 0;
            }

            else
            {
              v15 = v5;
            }

            v16 = [a1 _queryStringForSingleTokenString:v14 queryFields:v9 matchType:v15 queryFlags:@"cwd"];
            [v12 addObject:v16];

            ++v13;
          }

          while (v13 < [v11 count]);
        }

        v17 = MEMORY[0x277CCACA8];
        v18 = [v12 componentsJoinedByString:@" || "];
        v19 = [v17 stringWithFormat:@"(%@)", v18];

        [v24 addObject:v19];
      }

      v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v25);
  }

  v20 = [v24 componentsJoinedByString:@" && "];

  return v20;
}

+ (id)prefixMatchingQueryStringForSearchString:(id)a3 enableSpellCheckSPI:(BOOL)a4 languageForSpellchecking:(id)a5 expandedTokens:(id *)a6
{
  v8 = a4;
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [v12 BOOLForKey:*MEMORY[0x277D36328]];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = !v8;
  }

  if (v14)
  {
    v21 = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v22[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

    v17 = [a1 queryStringForSearchString:v10 queryFields:0 matchType:1];
  }

  else
  {
    v16 = [ICSearchQueryTokenizer expandedTokensForSearchString:v10 language:v11];
    v17 = [a1 queryStringForExpandedTokens:v16 queryFields:0 matchType:1];
  }

  v18 = v17;
  if (a6)
  {
    v19 = v16;
    *a6 = v16;
  }

  return v18;
}

@end