@interface ICRankingQueriesDefinition
+ (unint64_t)bucketOfTimeInterval:(double)interval;
+ (unint64_t)maxCountOfVariantsForCountOfTokens:(unint64_t)tokens;
+ (unint64_t)modificationDateBucketForSearchableItem:(id)item;
+ (unint64_t)relevanceBitFieldForSearchableItem:(id)item;
- (ICRankingQueriesDefinition)initWithExpandedTokens:(id)tokens rankingQueryType:(int64_t)type rankingQueryFlags:(id)flags;
- (ICRankingQueriesDefinition)initWithSearchString:(id)string rankingQueryType:(int64_t)type rankingQueryFlags:(id)flags;
- (NSArray)rankingQueries;
- (NSArray)rankingQueryDescriptors;
- (double)rankingScoreForSearchableItem:(id)item;
- (id)highlightInfoForSearchableItem:(id)item;
- (id)matchingDescriptorsForBitFields:(unint64_t)fields;
- (void)addDescriptor:(id)descriptor intoSearchResultHighlightInfoFieldElement:(id)element;
@end

@implementation ICRankingQueriesDefinition

- (ICRankingQueriesDefinition)initWithExpandedTokens:(id)tokens rankingQueryType:(int64_t)type rankingQueryFlags:(id)flags
{
  tokensCopy = tokens;
  flagsCopy = flags;
  v16.receiver = self;
  v16.super_class = ICRankingQueriesDefinition;
  v11 = [(ICRankingQueriesDefinition *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_expandedTokens, tokens);
    v12->_rankingQueryType = type;
    objc_storeStrong(&v12->_rankingQueryFlags, flags);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    matchingDescriptorsCache = v12->_matchingDescriptorsCache;
    v12->_matchingDescriptorsCache = v13;
  }

  return v12;
}

- (ICRankingQueriesDefinition)initWithSearchString:(id)string rankingQueryType:(int64_t)type rankingQueryFlags:(id)flags
{
  v16[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v8 = MEMORY[0x277CBEA60];
  flagsCopy = flags;
  stringCopy2 = string;
  v11 = [v8 arrayWithObjects:&stringCopy count:1];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v13 = [(ICRankingQueriesDefinition *)self initWithExpandedTokens:v12 rankingQueryType:type rankingQueryFlags:flagsCopy];
  return v13;
}

- (NSArray)rankingQueryDescriptors
{
  selfCopy = self;
  v110 = *MEMORY[0x277D85DE8];
  rankingQueryDescriptors = self->_rankingQueryDescriptors;
  if (!rankingQueryDescriptors)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    rankingQueryFieldsForGenericHighlighting = [MEMORY[0x277D36268] rankingQueryFieldsForGenericHighlighting];
    v6 = [rankingQueryFieldsForGenericHighlighting countByEnumeratingWithState:&v95 objects:v109 count:16];
    v7 = 0x278192000uLL;
    v72 = v4;
    if (v6)
    {
      v8 = v6;
      v9 = *v96;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v96 != v9)
          {
            objc_enumerationMutation(rankingQueryFieldsForGenericHighlighting);
          }

          v11 = *(*(&v95 + 1) + 8 * i);
          v12 = [ICRankingQueryDescriptor alloc];
          expandedTokens = [(ICRankingQueriesDefinition *)selfCopy expandedTokens];
          rankingQueryType = [(ICRankingQueriesDefinition *)selfCopy rankingQueryType];
          rankingQueryFlags = [(ICRankingQueriesDefinition *)selfCopy rankingQueryFlags];
          v16 = [(ICRankingQueryDescriptor *)v12 initWithQueryFields:v11 expandedTokens:expandedTokens rankingQueryType:rankingQueryType rankingQueryFlags:rankingQueryFlags purpose:0];

          v7 = 0x278192000uLL;
          v4 = v72;
          [v72 addObject:v16];
        }

        v8 = [rankingQueryFieldsForGenericHighlighting countByEnumeratingWithState:&v95 objects:v109 count:16];
      }

      while (v8);
    }

    v17 = objc_opt_class();
    expandedTokens2 = [(ICRankingQueriesDefinition *)selfCopy expandedTokens];
    v19 = [v17 maxCountOfVariantsForCountOfTokens:{objc_msgSend(expandedTokens2, "count")}];

    v74 = v19;
    if (v19)
    {
      v89 = 0uLL;
      v90 = 0uLL;
      v87 = 0uLL;
      v88 = 0uLL;
      obj = [MEMORY[0x277D36268] rankingQueryFieldsForWordSpecificHighlighting];
      v67 = [obj countByEnumeratingWithState:&v87 objects:v107 count:16];
      if (v67)
      {
        v71 = selfCopy;
        v66 = *v88;
        v20 = 0x277CBE000uLL;
        do
        {
          v21 = 0;
          do
          {
            if (*v88 != v66)
            {
              v22 = v21;
              objc_enumerationMutation(obj);
              v21 = v22;
            }

            v68 = v21;
            v76 = *(*(&v87 + 1) + 8 * v21);
            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            expandedTokens3 = [(ICRankingQueriesDefinition *)v71 expandedTokens];
            v73 = [expandedTokens3 countByEnumeratingWithState:&v83 objects:v106 count:16];
            if (v73)
            {
              v70 = *v84;
              do
              {
                v23 = 0;
                do
                {
                  if (*v84 != v70)
                  {
                    objc_enumerationMutation(expandedTokens3);
                  }

                  v24 = *(*(&v83 + 1) + 8 * v23);
                  v25 = [v24 count];
                  v75 = v23;
                  if ([v24 count] > v74)
                  {
                    v26 = os_log_create("com.apple.notes", "SearchIndexer");
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                    {
                      v39 = [v24 count];
                      *buf = 134218240;
                      v103 = v39;
                      v104 = 2048;
                      v105 = v74;
                      _os_log_debug_impl(&dword_214D51000, v26, OS_LOG_TYPE_DEBUG, "Observed %lu variants for token, but we only allow %lu.", buf, 0x16u);
                    }

                    v25 = v74;
                  }

                  v28 = v71;
                  v27 = v72;
                  if (v25)
                  {
                    for (j = 0; j != v25; ++j)
                    {
                      v77 = objc_alloc(*(v7 + 3784));
                      v78 = [v24 objectAtIndexedSubscript:j];
                      v100 = v78;
                      v30 = [*(v20 + 2656) arrayWithObjects:&v100 count:1];
                      v101 = v30;
                      v31 = [*(v20 + 2656) arrayWithObjects:&v101 count:1];
                      rankingQueryType2 = [(ICRankingQueriesDefinition *)v28 rankingQueryType];
                      [(ICRankingQueriesDefinition *)v28 rankingQueryFlags];
                      v33 = v27;
                      v34 = v28;
                      v35 = v25;
                      v37 = v36 = v20;
                      v38 = [v77 initWithQueryFields:v76 expandedTokens:v31 rankingQueryType:rankingQueryType2 rankingQueryFlags:v37 purpose:0];

                      v20 = v36;
                      v25 = v35;
                      v28 = v34;
                      v27 = v33;

                      v7 = 0x278192000;
                      [v27 addObject:v38];
                    }
                  }

                  v23 = v75 + 1;
                }

                while (v75 + 1 != v73);
                v73 = [expandedTokens3 countByEnumeratingWithState:&v83 objects:v106 count:16];
              }

              while (v73);
            }

            v21 = v68 + 1;
          }

          while (v68 + 1 != v67);
          v67 = [obj countByEnumeratingWithState:&v87 objects:v107 count:16];
        }

        while (v67);
        selfCopy = v71;
      }
    }

    else
    {
      v93 = 0uLL;
      v94 = 0uLL;
      v91 = 0uLL;
      v92 = 0uLL;
      obj = [MEMORY[0x277D36268] rankingQueryFieldsForWordSpecificHighlighting];
      v40 = [obj countByEnumeratingWithState:&v91 objects:v108 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v92;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v92 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v91 + 1) + 8 * k);
            v45 = [ICRankingQueryDescriptor alloc];
            expandedTokens4 = [(ICRankingQueriesDefinition *)selfCopy expandedTokens];
            rankingQueryType3 = [(ICRankingQueriesDefinition *)selfCopy rankingQueryType];
            rankingQueryFlags2 = [(ICRankingQueriesDefinition *)selfCopy rankingQueryFlags];
            v49 = rankingQueryType3;
            v7 = 0x278192000uLL;
            v50 = [(ICRankingQueryDescriptor *)v45 initWithQueryFields:v44 expandedTokens:expandedTokens4 rankingQueryType:v49 rankingQueryFlags:rankingQueryFlags2 purpose:0];

            [v4 addObject:v50];
          }

          v41 = [obj countByEnumeratingWithState:&v91 objects:v108 count:16];
        }

        while (v41);
      }
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    rankingQueryFieldsForSorting = [MEMORY[0x277D36268] rankingQueryFieldsForSorting];
    v52 = [rankingQueryFieldsForSorting countByEnumeratingWithState:&v79 objects:v99 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v80;
      do
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v80 != v54)
          {
            objc_enumerationMutation(rankingQueryFieldsForSorting);
          }

          v56 = *(*(&v79 + 1) + 8 * m);
          v57 = objc_alloc(*(v7 + 3784));
          expandedTokens5 = [(ICRankingQueriesDefinition *)selfCopy expandedTokens];
          rankingQueryType4 = [(ICRankingQueriesDefinition *)selfCopy rankingQueryType];
          rankingQueryFlags3 = [(ICRankingQueriesDefinition *)selfCopy rankingQueryFlags];
          v61 = [v57 initWithQueryFields:v56 expandedTokens:expandedTokens5 rankingQueryType:rankingQueryType4 rankingQueryFlags:rankingQueryFlags3 purpose:1];

          v7 = 0x278192000;
          [v72 addObject:v61];
        }

        v53 = [rankingQueryFieldsForSorting countByEnumeratingWithState:&v79 objects:v99 count:16];
      }

      while (v53);
    }

    v62 = [v72 copy];
    v63 = selfCopy->_rankingQueryDescriptors;
    selfCopy->_rankingQueryDescriptors = v62;

    rankingQueryDescriptors = selfCopy->_rankingQueryDescriptors;
  }

  return rankingQueryDescriptors;
}

- (NSArray)rankingQueries
{
  v19 = *MEMORY[0x277D85DE8];
  rankingQueries = self->_rankingQueries;
  if (!rankingQueries)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    rankingQueryDescriptors = [(ICRankingQueriesDefinition *)self rankingQueryDescriptors];
    v6 = [rankingQueryDescriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(rankingQueryDescriptors);
          }

          rankingQuery = [*(*(&v14 + 1) + 8 * v9) rankingQuery];
          [v4 addObject:rankingQuery];

          ++v9;
        }

        while (v7 != v9);
        v7 = [rankingQueryDescriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
    v12 = self->_rankingQueries;
    self->_rankingQueries = v11;

    rankingQueries = self->_rankingQueries;
  }

  return rankingQueries;
}

+ (unint64_t)maxCountOfVariantsForCountOfTokens:(unint64_t)tokens
{
  if (!tokens)
  {
    return 0;
  }

  rankingQueryLimit = [MEMORY[0x277D36268] rankingQueryLimit];
  rankingQueryFieldsForGenericHighlighting = [MEMORY[0x277D36268] rankingQueryFieldsForGenericHighlighting];
  v6 = [rankingQueryFieldsForGenericHighlighting count];

  rankingQueryFieldsForSorting = [MEMORY[0x277D36268] rankingQueryFieldsForSorting];
  v8 = [rankingQueryFieldsForSorting count];

  v9 = rankingQueryLimit - (v6 + v8);
  rankingQueryFieldsForWordSpecificHighlighting = [MEMORY[0x277D36268] rankingQueryFieldsForWordSpecificHighlighting];
  v11 = [rankingQueryFieldsForWordSpecificHighlighting count];

  return vcvtmd_u64_f64(v9 / v11 / tokens);
}

- (id)highlightInfoForSearchableItem:(id)item
{
  v35 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = itemCopy;
  -[ICRankingQueriesDefinition matchingDescriptorsForBitFields:](self, "matchingDescriptorsForBitFields:", [objc_opt_class() relevanceBitFieldForSearchableItem:itemCopy]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v6;
        v7 = *(*(&v29 + 1) + 8 * v6);
        if (![v7 purpose])
        {
          displayedMatchedFields = [v7 displayedMatchedFields];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v9 = [&unk_282747EF8 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v26;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v26 != v11)
                {
                  objc_enumerationMutation(&unk_282747EF8);
                }

                unsignedIntegerValue = [*(*(&v25 + 1) + 8 * i) unsignedIntegerValue];
                if ((unsignedIntegerValue & displayedMatchedFields) != 0)
                {
                  v14 = unsignedIntegerValue;
                  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
                  v16 = [v5 objectForKeyedSubscript:v15];

                  if (!v16)
                  {
                    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
                    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
                    [v5 setObject:v16 forKeyedSubscript:v17];
                  }

                  [(ICRankingQueriesDefinition *)self addDescriptor:v7 intoSearchResultHighlightInfoFieldElement:v16];
                }
              }

              v10 = [&unk_282747EF8 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v10);
          }
        }

        v6 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  v18 = [v5 copy];

  return v18;
}

- (double)rankingScoreForSearchableItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = -[ICRankingQueriesDefinition matchingDescriptorsForBitFields:](self, "matchingDescriptorsForBitFields:", [objc_opt_class() relevanceBitFieldForSearchableItem:itemCopy]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 purpose] == 1)
        {
          attributeSet = [itemCopy attributeSet];
          [v11 rankingScoreForSearchResultType:{objc_msgSend(attributeSet, "ic_searchResultType")}];
          v9 = v9 + v13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

+ (unint64_t)modificationDateBucketForSearchableItem:(id)item
{
  attributeSet = [item attributeSet];
  contentModificationDate = [attributeSet contentModificationDate];

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:contentModificationDate];
  v8 = v7;

  v9 = [self bucketOfTimeInterval:v8];
  return v9;
}

+ (unint64_t)relevanceBitFieldForSearchableItem:(id)item
{
  attributeSet = [item attributeSet];
  ic_relevance = [attributeSet ic_relevance];

  return ic_relevance;
}

- (void)addDescriptor:(id)descriptor intoSearchResultHighlightInfoFieldElement:(id)element
{
  elementCopy = element;
  descriptorCopy = descriptor;
  v6 = 2 * (([descriptorCopy rankingQueryType] - 1) < 2);
  tokens = [descriptorCopy tokens];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [elementCopy objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [elementCopy setObject:v9 forKeyedSubscript:v10];
  }

  if (tokens)
  {
    [v9 addObjectsFromArray:tokens];
  }
}

- (id)matchingDescriptorsForBitFields:(unint64_t)fields
{
  matchingDescriptorsCache = [(ICRankingQueriesDefinition *)self matchingDescriptorsCache];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fields];
  v7 = [matchingDescriptorsCache objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (fields)
    {
      rankingQueryDescriptors = [(ICRankingQueriesDefinition *)self rankingQueryDescriptors];
      v10 = [rankingQueryDescriptors count];

      if (v10)
      {
        v11 = 0;
        do
        {
          if (((1 << v11) & fields) >> v11)
          {
            rankingQueryDescriptors2 = [(ICRankingQueriesDefinition *)self rankingQueryDescriptors];
            v13 = [rankingQueryDescriptors2 objectAtIndexedSubscript:v11];
            [v8 addObject:v13];
          }

          ++v11;
          rankingQueryDescriptors3 = [(ICRankingQueriesDefinition *)self rankingQueryDescriptors];
          v15 = [rankingQueryDescriptors3 count];
        }

        while (v11 < v15);
      }
    }

    v7 = [v8 copy];
    matchingDescriptorsCache2 = [(ICRankingQueriesDefinition *)self matchingDescriptorsCache];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fields];
    [matchingDescriptorsCache2 setObject:v7 forKeyedSubscript:v17];
  }

  return v7;
}

+ (unint64_t)bucketOfTimeInterval:(double)interval
{
  if (interval <= 0.0)
  {
    return 2;
  }

  v3 = ceil(log(interval) * 1.28617347 + -6.14189718);
  if (v3 <= 2.0)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

@end