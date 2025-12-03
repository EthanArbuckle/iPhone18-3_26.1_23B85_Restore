@interface MarrsSiriNLUTypesUtils
+ (BOOL)isRequestEmpty:(id)empty;
+ (BOOL)isResponseEmpty:(id)empty;
+ (id)QRTokenFromTokenValue:(id)value;
+ (id)emptyResponse;
+ (id)firstRewriteHypothesisOfResponse:(id)response;
+ (id)firstRewrittenUtteranceOfResponse:(id)response;
+ (id)firstRewrittenUtteranceOfResponse:(id)response WithDefaultValue:(id)value;
+ (id)firstUtteranceOfRequest:(id)request;
+ (id)firstUtteranceOfRequest:(id)request WithDefaultValue:(id)value;
+ (id)interactionFromTokenValues:(id)values responseTokenValues:(id)tokenValues utteranceString:(id)string locale:(id)locale;
+ (id)requestFromMdfDictionary:(id)dictionary turnsKey:(id)key tokensKey:(id)tokensKey utteranceKey:(id)utteranceKey valueKey:(id)valueKey siriResponseKey:(id)responseKey locale:(id)locale;
+ (id)utteranceFromTokenValues:(id)values utteranceString:(id)string;
@end

@implementation MarrsSiriNLUTypesUtils

+ (id)interactionFromTokenValues:(id)values responseTokenValues:(id)tokenValues utteranceString:(id)string locale:(id)locale
{
  v29 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  tokenValuesCopy = tokenValues;
  stringCopy = string;
  localeCopy = locale;
  v10 = objc_alloc_init(MEMORY[0x277D5DE60]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = tokenValuesCopy;
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

  v18 = [MarrsSiriNLUTypesUtils utteranceFromTokenValues:valuesCopy utteranceString:stringCopy];
  [v10 addOriginalUtterances:v18];

  [v10 setLocale:localeCopy];
  [v10 setTap2edit:0];

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)utteranceFromTokenValues:(id)values utteranceString:(id)string
{
  v24 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  stringCopy = string;
  v5 = objc_alloc_init(MEMORY[0x277D5DE70]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = valuesCopy;
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

  [v5 setUtterance:stringCopy];
  [v5 setConfidence:1.0];
  v14 = objc_alloc_init(MEMORY[0x277D5DDD0]);
  [v5 setAsrId:v14];

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)QRTokenFromTokenValue:(id)value
{
  valueCopy = value;
  v4 = objc_alloc_init(MEMORY[0x277D5DE68]);
  [v4 setValue:valueCopy];
  [v4 setAsrConfidence:1000.0];
  [v4 setStartIndex:0];
  [v4 setEndIndex:0];
  [v4 setPhoneSequence:&stru_2835DF758];
  [v4 setRemoveSpaceAfter:0];

  return v4;
}

+ (id)requestFromMdfDictionary:(id)dictionary turnsKey:(id)key tokensKey:(id)tokensKey utteranceKey:(id)utteranceKey valueKey:(id)valueKey siriResponseKey:(id)responseKey locale:(id)locale
{
  v64 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  keyCopy = key;
  tokensKeyCopy = tokensKey;
  utteranceKeyCopy = utteranceKey;
  valueKeyCopy = valueKey;
  responseKeyCopy = responseKey;
  localeCopy = locale;
  v38 = dictionaryCopy;
  v39 = keyCopy;
  v45 = objc_alloc_init(MEMORY[0x277D5DE48]);
  [dictionaryCopy objectForKeyedSubscript:keyCopy];
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
        v20 = [v19 objectForKeyedSubscript:tokensKeyCopy];
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

              v26 = [*(*(&v53 + 1) + 8 * j) objectForKeyedSubscript:valueKeyCopy];
              [v21 addObject:v26];
            }

            v23 = [v22 countByEnumeratingWithState:&v53 objects:v62 count:16];
          }

          while (v23);
        }

        v48 = [v19 objectForKeyedSubscript:utteranceKeyCopy];
        v27 = [v19 objectForKeyedSubscript:responseKeyCopy];
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

              v33 = [*(*(&v49 + 1) + 8 * k) objectForKeyedSubscript:valueKeyCopy];
              [v28 addObject:v33];
            }

            v30 = [v29 countByEnumeratingWithState:&v49 objects:v61 count:16];
          }

          while (v30);
        }

        v34 = [MarrsSiriNLUTypesUtils interactionFromTokenValues:v21 responseTokenValues:v28 utteranceString:v48 locale:localeCopy];
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

+ (id)firstRewriteHypothesisOfResponse:(id)response
{
  responseCopy = response;
  if ([MarrsSiriNLUTypesUtils isResponseEmpty:responseCopy])
  {
    v4 = 0;
  }

  else
  {
    rewriteHypotheses = [responseCopy rewriteHypotheses];
    v4 = [rewriteHypotheses objectAtIndexedSubscript:0];
  }

  return v4;
}

+ (id)firstUtteranceOfRequest:(id)request
{
  v3 = [self firstUtteranceOfRequest:request WithDefaultValue:&stru_2835DF758];

  return v3;
}

+ (id)firstUtteranceOfRequest:(id)request WithDefaultValue:(id)value
{
  requestCopy = request;
  valueCopy = value;
  if ([MarrsSiriNLUTypesUtils isRequestEmpty:requestCopy])
  {
    utterance = valueCopy;
  }

  else
  {
    originalInteractions = [requestCopy originalInteractions];
    v9 = [originalInteractions objectAtIndexedSubscript:0];
    originalUtterances = [v9 originalUtterances];
    v11 = [originalUtterances objectAtIndexedSubscript:0];
    utterance = [v11 utterance];
  }

  return utterance;
}

+ (BOOL)isRequestEmpty:(id)empty
{
  emptyCopy = empty;
  originalInteractions = [emptyCopy originalInteractions];
  v5 = [originalInteractions count];

  if (v5)
  {
    originalInteractions2 = [emptyCopy originalInteractions];
    v7 = [originalInteractions2 objectAtIndexedSubscript:0];
    originalUtterances = [v7 originalUtterances];
    v9 = [originalUtterances count] == 0;
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

+ (id)firstRewrittenUtteranceOfResponse:(id)response
{
  v3 = [MarrsSiriNLUTypesUtils firstRewrittenUtteranceOfResponse:response WithDefaultValue:&stru_2835DF758];

  return v3;
}

+ (id)firstRewrittenUtteranceOfResponse:(id)response WithDefaultValue:(id)value
{
  responseCopy = response;
  valueCopy = value;
  if ([MarrsSiriNLUTypesUtils isResponseEmpty:responseCopy])
  {
    utterance = valueCopy;
  }

  else
  {
    rewriteHypotheses = [responseCopy rewriteHypotheses];
    v9 = [rewriteHypotheses objectAtIndexedSubscript:0];
    utterance = [v9 utterance];
  }

  return utterance;
}

+ (BOOL)isResponseEmpty:(id)empty
{
  rewriteHypotheses = [empty rewriteHypotheses];
  v4 = [rewriteHypotheses count] == 0;

  return v4;
}

@end