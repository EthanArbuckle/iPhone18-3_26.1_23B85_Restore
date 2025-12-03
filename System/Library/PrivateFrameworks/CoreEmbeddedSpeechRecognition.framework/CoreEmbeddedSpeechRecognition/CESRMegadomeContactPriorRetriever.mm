@interface CESRMegadomeContactPriorRetriever
- (CESRMegadomeContactPriorRetriever)init;
- (id)_fetchTopNContactPriors:(int64_t)priors error:(id *)error;
- (id)allPriorInfoWithThreshold:(unsigned int)threshold;
- (id)priorInfoForItemIds:(id)ids;
@end

@implementation CESRMegadomeContactPriorRetriever

- (id)_fetchTopNContactPriors:(int64_t)priors error:(id *)error
{
  v4 = [(GDPersonRankingService *)self->_ranker rankedPersonsWithMaxCount:priors error:error];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)allPriorInfoWithThreshold:(unsigned int)threshold
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:threshold];
  v20 = 0;
  v6 = [(CESRMegadomeContactPriorRetriever *)self _fetchTopNContactPriors:threshold error:&v20];
  v7 = v20;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__CESRMegadomeContactPriorRetriever_allPriorInfoWithThreshold___block_invoke;
  v17[3] = &unk_27857FBE8;
  v8 = v5;
  v18 = v8;
  thresholdCopy = threshold;
  [v6 enumerateObjectsUsingBlock:v17];
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v6 count];
    v12 = [v8 count];
    *buf = 136315906;
    v22 = "[CESRMegadomeContactPriorRetriever allPriorInfoWithThreshold:]";
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 1024;
    thresholdCopy2 = threshold;
    _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_INFO, "%s Fetched %u persons from Megadome Ranker, populated %u contact priors with threshold: %u", buf, 0x1Eu);
  }

  v13 = v18;
  v14 = v8;

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void __63__CESRMegadomeContactPriorRetriever_allPriorInfoWithThreshold___block_invoke(uint64_t a1, void *a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [[CESRPriorInfo alloc] initWithOrdinality:(a3 + 1) score:0.0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 contactIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if ([*(a1 + 32) count] < *(a1 + 40))
        {
          [*(a1 + 32) setObject:v6 forKey:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)priorInfoForItemIds:(id)ids
{
  v45 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  if ([idsCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] setWithArray:idsCopy];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v35 = 0;
    v7 = [(CESRMegadomeContactPriorRetriever *)self _fetchTopNContactPriors:0x7FFFFFFFFFFFFFFFLL error:&v35];
    v27 = v35;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __57__CESRMegadomeContactPriorRetriever_priorInfoForItemIds___block_invoke;
    v32[3] = &unk_27857FBC0;
    v8 = v5;
    v33 = v8;
    v9 = v6;
    v34 = v9;
    [v7 enumerateObjectsUsingBlock:v32];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v9 objectForKey:v15];

          if (!v16)
          {
            v17 = [[CESRPriorInfo alloc] initWithOrdinality:0 score:0.0];
            [v9 setValue:v17 forKey:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v44 count:16];
      }

      while (v12);
    }

    v18 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      v20 = [v7 count];
      v21 = [v9 count];
      v22 = [idsCopy count];
      *buf = 136315906;
      v37 = "[CESRMegadomeContactPriorRetriever priorInfoForItemIds:]";
      v38 = 1024;
      v39 = v20;
      v40 = 1024;
      v41 = v21;
      v42 = 1024;
      v43 = v22;
      _os_log_impl(&dword_225EEB000, v19, OS_LOG_TYPE_INFO, "%s Fetched %u persons from Megadome Ranker, populated %u contact priors for %u requested contacts", buf, 0x1Eu);
    }

    v23 = v34;
    v24 = v9;
  }

  else
  {
    v24 = MEMORY[0x277CBEC10];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __57__CESRMegadomeContactPriorRetriever_priorInfoForItemIds___block_invoke(uint64_t a1, void *a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a2 contactIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([*(a1 + 32) containsObject:v10])
        {
          v11 = [[CESRPriorInfo alloc] initWithOrdinality:(a3 + 1) score:0.0];
          [*(a1 + 40) setValue:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (CESRMegadomeContactPriorRetriever)init
{
  v8.receiver = self;
  v8.super_class = CESRMegadomeContactPriorRetriever;
  v2 = [(CESRMegadomeContactPriorRetriever *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D1F460]);
    rankerConfig = v2->_rankerConfig;
    v2->_rankerConfig = v3;

    v5 = [objc_alloc(MEMORY[0x277D1F458]) initWithConfig:v2->_rankerConfig];
    ranker = v2->_ranker;
    v2->_ranker = v5;
  }

  return v2;
}

@end