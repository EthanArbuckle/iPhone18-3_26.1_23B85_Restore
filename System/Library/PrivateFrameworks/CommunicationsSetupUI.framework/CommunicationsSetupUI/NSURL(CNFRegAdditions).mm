@interface NSURL(CNFRegAdditions)
- (id)CNFQueryDictionary;
- (id)URLByAppendingCNFQueryDictionary:()CNFRegAdditions;
@end

@implementation NSURL(CNFRegAdditions)

- (id)CNFQueryDictionary
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  query = [self query];
  v4 = query;
  if (query && [query length])
  {
    v5 = [v4 componentsSeparatedByString:@"&"];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v19 = 0;
          v20 = 0;
          v11 = _parseKeyValuePair(v10, &v20, &v19);
          v12 = v20;
          v13 = v19;
          v14 = v13;
          if (v11)
          {
            v15 = v13 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15 && v12 != 0)
          {
            [v2 setObject:v13 forKey:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)URLByAppendingCNFQueryDictionary:()CNFRegAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 count])
  {
    goto LABEL_7;
  }

  absoluteString = [self absoluteString];
  query = [self query];
  v8 = absoluteString;
  v9 = v8;
  v10 = v8;
  if (query)
  {
    v11 = [v8 rangeOfString:@"?"];
    v10 = v9;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v9 substringToIndex:v11];
    }
  }

  cNFQueryDictionary = [self CNFQueryDictionary];
  v13 = [cNFQueryDictionary mutableCopy];

  [v13 addEntriesFromDictionary:v5];
  v14 = _queryStringFromCNFQueryDictionary(v13);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@?%@", v10, v14];
  selfCopy = [MEMORY[0x277CBEBC0] URLWithString:v15];

  if (!selfCopy)
  {
LABEL_7:
    selfCopy = self;
  }

  return selfCopy;
}

@end