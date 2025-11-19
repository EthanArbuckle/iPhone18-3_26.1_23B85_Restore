@interface MarrsSiriNLUTypesUtils
+ (BOOL)isRequestEmpty:(id)a3;
+ (BOOL)isResponseEmpty:(id)a3;
+ (id)QRTokenFromTokenValue:(id)a3;
+ (id)emptyResponse;
+ (id)firstRewriteHypothesisOfResponse:(id)a3;
+ (id)firstRewrittenUtteranceOfResponse:(id)a3;
+ (id)firstRewrittenUtteranceOfResponse:(id)a3 WithDefaultValue:(id)a4;
+ (id)firstUtteranceOfRequest:(id)a3;
+ (id)firstUtteranceOfRequest:(id)a3 WithDefaultValue:(id)a4;
+ (id)interactionFromTokenValues:(id)a3 responseTokenValues:(id)a4 utteranceString:(id)a5 locale:(id)a6;
+ (id)requestFromMdfDictionary:(id)a3 turnsKey:(id)a4 tokensKey:(id)a5 utteranceKey:(id)a6 valueKey:(id)a7 siriResponseKey:(id)a8 locale:(id)a9;
+ (id)utteranceFromTokenValues:(id)a3 utteranceString:(id)a4;
@end

@implementation MarrsSiriNLUTypesUtils

+ (id)interactionFromTokenValues:(id)a3 responseTokenValues:(id)a4 utteranceString:(id)a5 locale:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v9 = a4;
  v22 = a5;
  v23 = a6;
  v10 = objc_alloc_init(MEMORY[0x277D5DE60]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [MEMORY[0x277CBEB18] arrayWithObjects:{v15, 0}];
        v17 = [MarrsSiriNLUTypesUtils internalTokenFromTokenValue:v15 cleanValue:v15 normalizedValues:v16 isSignificant:1 isWhitespace:0];
        [v10 addSiriResponse:v17];
      }

      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v18 = [MarrsSiriNLUTypesUtils utteranceFromTokenValues:v21 utteranceString:v22];
  [v10 addOriginalUtterances:v18];

  [v10 setLocale:v23];
  [v10 setTap2edit:0];

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)utteranceFromTokenValues:(id)a3 utteranceString:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v5 = objc_alloc_init(MEMORY[0x277D5DE70]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v17;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [MEMORY[0x277CBEB18] arrayWithObjects:{v10, 0}];
        v12 = [MarrsSiriNLUTypesUtils internalTokenFromTokenValue:v10 cleanValue:v10 normalizedValues:v11 isSignificant:1 isWhitespace:0];
        [v5 addNluInternalTokens:v12];

        v13 = [MarrsSiriNLUTypesUtils QRTokenFromTokenValue:v10];
        [v5 addAsrUtteranceTokens:v13];
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [v5 setUtterance:v18];
  [v5 setConfidence:1.0];
  v14 = objc_alloc_init(MEMORY[0x277D5DDD0]);
  [v5 setAsrId:v14];

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)QRTokenFromTokenValue:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D5DE68]);
  [v4 setValue:v3];
  [v4 setAsrConfidence:1000.0];
  [v4 setStartIndex:0];
  [v4 setEndIndex:0];
  [v4 setPhoneSequence:&stru_2835DF758];
  [v4 setRemoveSpaceAfter:0];

  return v4;
}

+ (id)requestFromMdfDictionary:(id)a3 turnsKey:(id)a4 tokensKey:(id)a5 utteranceKey:(id)a6 valueKey:(id)a7 siriResponseKey:(id)a8 locale:(id)a9
{
  v64 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v46 = a5;
  v43 = a6;
  v16 = a7;
  v44 = a8;
  v42 = a9;
  v38 = v14;
  v39 = v15;
  v45 = objc_alloc_init(MEMORY[0x277D5DE48]);
  [v14 objectForKeyedSubscript:v15];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  obj = v58 = 0u;
  v17 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v17)
  {
    v41 = *v58;
    do
    {
      v47 = v17;
      for (i = 0; i != v47; ++i)
      {
        if (*v58 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v57 + 1) + 8 * i);
        v20 = [v19 objectForKeyedSubscript:v46];
        v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v20, "count")}];
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v23)
        {
          v24 = *v54;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v54 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = [*(*(&v53 + 1) + 8 * j) objectForKeyedSubscript:v16];
              [v21 addObject:v26];
            }

            v23 = [v22 countByEnumeratingWithState:&v53 objects:v62 count:16];
          }

          while (v23);
        }

        v48 = [v19 objectForKeyedSubscript:v43];
        v27 = [v19 objectForKeyedSubscript:v44];
        v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v27, "count")}];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v29 = v27;
        v30 = [v29 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v30)
        {
          v31 = *v50;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v50 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = [*(*(&v49 + 1) + 8 * k) objectForKeyedSubscript:v16];
              [v28 addObject:v33];
            }

            v30 = [v29 countByEnumeratingWithState:&v49 objects:v61 count:16];
          }

          while (v30);
        }

        v34 = [MarrsSiriNLUTypesUtils interactionFromTokenValues:v21 responseTokenValues:v28 utteranceString:v48 locale:v42];
        [v45 addOriginalInteractions:v34];
      }

      v17 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v17);
  }

  v35 = objc_alloc_init(MEMORY[0x277D5DDD0]);
  [v45 setRequestId:v35];

  v36 = *MEMORY[0x277D85DE8];

  return v45;
}

+ (id)firstRewriteHypothesisOfResponse:(id)a3
{
  v3 = a3;
  if ([MarrsSiriNLUTypesUtils isResponseEmpty:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 rewriteHypotheses];
    v4 = [v5 objectAtIndexedSubscript:0];
  }

  return v4;
}

+ (id)firstUtteranceOfRequest:(id)a3
{
  v3 = [a1 firstUtteranceOfRequest:a3 WithDefaultValue:&stru_2835DF758];

  return v3;
}

+ (id)firstUtteranceOfRequest:(id)a3 WithDefaultValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MarrsSiriNLUTypesUtils isRequestEmpty:v5])
  {
    v7 = v6;
  }

  else
  {
    v8 = [v5 originalInteractions];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 originalUtterances];
    v11 = [v10 objectAtIndexedSubscript:0];
    v7 = [v11 utterance];
  }

  return v7;
}

+ (BOOL)isRequestEmpty:(id)a3
{
  v3 = a3;
  v4 = [v3 originalInteractions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 originalInteractions];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 originalUtterances];
    v9 = [v8 count] == 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)emptyResponse
{
  v2 = objc_alloc_init(MEMORY[0x277D5DE50]);
  v3 = [MEMORY[0x277CBEBF8] copy];
  [v2 setRewriteHypotheses:v3];

  [v2 setRepetitionType:0];

  return v2;
}

+ (id)firstRewrittenUtteranceOfResponse:(id)a3
{
  v3 = [MarrsSiriNLUTypesUtils firstRewrittenUtteranceOfResponse:a3 WithDefaultValue:&stru_2835DF758];

  return v3;
}

+ (id)firstRewrittenUtteranceOfResponse:(id)a3 WithDefaultValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MarrsSiriNLUTypesUtils isResponseEmpty:v5])
  {
    v7 = v6;
  }

  else
  {
    v8 = [v5 rewriteHypotheses];
    v9 = [v8 objectAtIndexedSubscript:0];
    v7 = [v9 utterance];
  }

  return v7;
}

+ (BOOL)isResponseEmpty:(id)a3
{
  v3 = [a3 rewriteHypotheses];
  v4 = [v3 count] == 0;

  return v4;
}

@end