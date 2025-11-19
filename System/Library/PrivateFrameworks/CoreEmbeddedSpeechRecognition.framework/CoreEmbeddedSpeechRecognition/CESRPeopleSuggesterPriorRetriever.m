@interface CESRPeopleSuggesterPriorRetriever
- (CESRPeopleSuggesterPriorRetriever)init;
- (id)_convertPeopleSuggesterPriorToPriorInfo:(id)a3;
- (id)allPriorInfoWithThreshold:(unsigned int)a3;
- (id)priorInfoForItemIds:(id)a3;
@end

@implementation CESRPeopleSuggesterPriorRetriever

- (id)_convertPeopleSuggesterPriorToPriorInfo:(id)a3
{
  v3 = a3;
  v4 = [CESRPriorInfo alloc];
  v5 = v4;
  if (v3)
  {
    v6 = [v3 rank];
    [v3 priorScore];
    v4 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0.0;
    v8 = 0;
  }

  v9 = [(CESRPriorInfo *)v4 initWithOrdinality:v8 score:v7];

  return v9;
}

- (id)allPriorInfoWithThreshold:(unsigned int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:a3];
  v6 = [(CESRPeopleSuggesterPriorRetriever *)self _fetchContactPriorsForContactIds:0];
  v7 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    *buf = 136315650;
    v25 = "[CESRPeopleSuggesterPriorRetriever allPriorInfoWithThreshold:]";
    v26 = 1024;
    v27 = [v6 count];
    v28 = 1024;
    v29 = a3;
    _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s Filtering %u contact priors from PeopleSuggester with threshold: %u", buf, 0x18u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 allValues];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([v14 rank] <= a3)
        {
          v15 = [(CESRPeopleSuggesterPriorRetriever *)self _convertPeopleSuggesterPriorToPriorInfo:v14];
          if (v15)
          {
            v16 = [v14 contactIdentifier];
            [v5 setObject:v15 forKey:v16];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)priorInfoForItemIds:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      *buf = 136315394;
      v26 = "[CESRPeopleSuggesterPriorRetriever priorInfoForItemIds:]";
      v27 = 2048;
      v28 = [v4 count];
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Fetching prior info for %lu contacts", buf, 0x16u);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [(CESRPeopleSuggesterPriorRetriever *)self _fetchContactPriorsForContactIds:v4];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v8 objectForKey:v14];
          v16 = [(CESRPeopleSuggesterPriorRetriever *)self _convertPeopleSuggesterPriorToPriorInfo:v15];
          [v7 setValue:v16 forKey:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v4 = v19;
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (CESRPeopleSuggesterPriorRetriever)init
{
  v6.receiver = self;
  v6.super_class = CESRPeopleSuggesterPriorRetriever;
  v2 = [(CESRPeopleSuggesterPriorRetriever *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3A090]);
    contactSuggester = v2->_contactSuggester;
    v2->_contactSuggester = v3;
  }

  return v2;
}

@end