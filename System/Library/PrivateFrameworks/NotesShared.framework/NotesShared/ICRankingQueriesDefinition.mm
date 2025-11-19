@interface ICRankingQueriesDefinition
+ (unint64_t)bucketOfTimeInterval:(double)a3;
+ (unint64_t)maxCountOfVariantsForCountOfTokens:(unint64_t)a3;
+ (unint64_t)modificationDateBucketForSearchableItem:(id)a3;
+ (unint64_t)relevanceBitFieldForSearchableItem:(id)a3;
- (ICRankingQueriesDefinition)initWithExpandedTokens:(id)a3 rankingQueryType:(int64_t)a4 rankingQueryFlags:(id)a5;
- (ICRankingQueriesDefinition)initWithSearchString:(id)a3 rankingQueryType:(int64_t)a4 rankingQueryFlags:(id)a5;
- (NSArray)rankingQueries;
- (NSArray)rankingQueryDescriptors;
- (double)rankingScoreForSearchableItem:(id)a3;
- (id)highlightInfoForSearchableItem:(id)a3;
- (id)matchingDescriptorsForBitFields:(unint64_t)a3;
- (void)addDescriptor:(id)a3 intoSearchResultHighlightInfoFieldElement:(id)a4;
@end

@implementation ICRankingQueriesDefinition

- (ICRankingQueriesDefinition)initWithExpandedTokens:(id)a3 rankingQueryType:(int64_t)a4 rankingQueryFlags:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ICRankingQueriesDefinition;
  v11 = [(ICRankingQueriesDefinition *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_expandedTokens, a3);
    v12->_rankingQueryType = a4;
    objc_storeStrong(&v12->_rankingQueryFlags, a5);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    matchingDescriptorsCache = v12->_matchingDescriptorsCache;
    v12->_matchingDescriptorsCache = v13;
  }

  return v12;
}

- (ICRankingQueriesDefinition)initWithSearchString:(id)a3 rankingQueryType:(int64_t)a4 rankingQueryFlags:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v15 count:1];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v13 = [(ICRankingQueriesDefinition *)self initWithExpandedTokens:v12 rankingQueryType:a4 rankingQueryFlags:v9];
  return v13;
}

- (NSArray)rankingQueryDescriptors
{
  v2 = self;
  v110 = *MEMORY[0x277D85DE8];
  rankingQueryDescriptors = self->_rankingQueryDescriptors;
  if (!rankingQueryDescriptors)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v5 = [MEMORY[0x277D36268] rankingQueryFieldsForGenericHighlighting];
    v6 = [v5 countByEnumeratingWithState:&v95 objects:v109 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v95 + 1) + 8 * i);
          v12 = [ICRankingQueryDescriptor alloc];
          v13 = [(ICRankingQueriesDefinition *)v2 expandedTokens];
          v14 = [(ICRankingQueriesDefinition *)v2 rankingQueryType];
          v15 = [(ICRankingQueriesDefinition *)v2 rankingQueryFlags];
          v16 = [(ICRankingQueryDescriptor *)v12 initWithQueryFields:v11 expandedTokens:v13 rankingQueryType:v14 rankingQueryFlags:v15 purpose:0];

          v7 = 0x278192000uLL;
          v4 = v72;
          [v72 addObject:v16];
        }

        v8 = [v5 countByEnumeratingWithState:&v95 objects:v109 count:16];
      }

      while (v8);
    }

    v17 = objc_opt_class();
    v18 = [(ICRankingQueriesDefinition *)v2 expandedTokens];
    v19 = [v17 maxCountOfVariantsForCountOfTokens:{objc_msgSend(v18, "count")}];

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
        v71 = v2;
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
            v69 = [(ICRankingQueriesDefinition *)v71 expandedTokens];
            v73 = [v69 countByEnumeratingWithState:&v83 objects:v106 count:16];
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
                    objc_enumerationMutation(v69);
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
                      v32 = [(ICRankingQueriesDefinition *)v28 rankingQueryType];
                      [(ICRankingQueriesDefinition *)v28 rankingQueryFlags];
                      v33 = v27;
                      v34 = v28;
                      v35 = v25;
                      v37 = v36 = v20;
                      v38 = [v77 initWithQueryFields:v76 expandedTokens:v31 rankingQueryType:v32 rankingQueryFlags:v37 purpose:0];

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
                v73 = [v69 countByEnumeratingWithState:&v83 objects:v106 count:16];
              }

              while (v73);
            }

            v21 = v68 + 1;
          }

          while (v68 + 1 != v67);
          v67 = [obj countByEnumeratingWithState:&v87 objects:v107 count:16];
        }

        while (v67);
        v2 = v71;
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
            v46 = [(ICRankingQueriesDefinition *)v2 expandedTokens];
            v47 = [(ICRankingQueriesDefinition *)v2 rankingQueryType];
            v48 = [(ICRankingQueriesDefinition *)v2 rankingQueryFlags];
            v49 = v47;
            v7 = 0x278192000uLL;
            v50 = [(ICRankingQueryDescriptor *)v45 initWithQueryFields:v44 expandedTokens:v46 rankingQueryType:v49 rankingQueryFlags:v48 purpose:0];

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
    v51 = [MEMORY[0x277D36268] rankingQueryFieldsForSorting];
    v52 = [v51 countByEnumeratingWithState:&v79 objects:v99 count:16];
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
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v79 + 1) + 8 * m);
          v57 = objc_alloc(*(v7 + 3784));
          v58 = [(ICRankingQueriesDefinition *)v2 expandedTokens];
          v59 = [(ICRankingQueriesDefinition *)v2 rankingQueryType];
          v60 = [(ICRankingQueriesDefinition *)v2 rankingQueryFlags];
          v61 = [v57 initWithQueryFields:v56 expandedTokens:v58 rankingQueryType:v59 rankingQueryFlags:v60 purpose:1];

          v7 = 0x278192000;
          [v72 addObject:v61];
        }

        v53 = [v51 countByEnumeratingWithState:&v79 objects:v99 count:16];
      }

      while (v53);
    }

    v62 = [v72 copy];
    v63 = v2->_rankingQueryDescriptors;
    v2->_rankingQueryDescriptors = v62;

    rankingQueryDescriptors = v2->_rankingQueryDescriptors;
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
    v5 = [(ICRankingQueriesDefinition *)self rankingQueryDescriptors];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) rankingQuery];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (unint64_t)maxCountOfVariantsForCountOfTokens:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277D36268] rankingQueryLimit];
  v5 = [MEMORY[0x277D36268] rankingQueryFieldsForGenericHighlighting];
  v6 = [v5 count];

  v7 = [MEMORY[0x277D36268] rankingQueryFieldsForSorting];
  v8 = [v7 count];

  v9 = v4 - (v6 + v8);
  v10 = [MEMORY[0x277D36268] rankingQueryFieldsForWordSpecificHighlighting];
  v11 = [v10 count];

  return vcvtmd_u64_f64(v9 / v11 / a3);
}

- (id)highlightInfoForSearchableItem:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = v4;
  -[ICRankingQueriesDefinition matchingDescriptorsForBitFields:](self, "matchingDescriptorsForBitFields:", [objc_opt_class() relevanceBitFieldForSearchableItem:v4]);
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
          v8 = [v7 displayedMatchedFields];
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

                v13 = [*(*(&v25 + 1) + 8 * i) unsignedIntegerValue];
                if ((v13 & v8) != 0)
                {
                  v14 = v13;
                  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
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

- (double)rankingScoreForSearchableItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = -[ICRankingQueriesDefinition matchingDescriptorsForBitFields:](self, "matchingDescriptorsForBitFields:", [objc_opt_class() relevanceBitFieldForSearchableItem:v4]);
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
          v12 = [v4 attributeSet];
          [v11 rankingScoreForSearchResultType:{objc_msgSend(v12, "ic_searchResultType")}];
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

+ (unint64_t)modificationDateBucketForSearchableItem:(id)a3
{
  v4 = [a3 attributeSet];
  v5 = [v4 contentModificationDate];

  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;

  v9 = [a1 bucketOfTimeInterval:v8];
  return v9;
}

+ (unint64_t)relevanceBitFieldForSearchableItem:(id)a3
{
  v3 = [a3 attributeSet];
  v4 = [v3 ic_relevance];

  return v4;
}

- (void)addDescriptor:(id)a3 intoSearchResultHighlightInfoFieldElement:(id)a4
{
  v11 = a4;
  v5 = a3;
  v6 = 2 * (([v5 rankingQueryType] - 1) < 2);
  v7 = [v5 tokens];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [v11 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v11 setObject:v9 forKeyedSubscript:v10];
  }

  if (v7)
  {
    [v9 addObjectsFromArray:v7];
  }
}

- (id)matchingDescriptorsForBitFields:(unint64_t)a3
{
  v5 = [(ICRankingQueriesDefinition *)self matchingDescriptorsCache];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (a3)
    {
      v9 = [(ICRankingQueriesDefinition *)self rankingQueryDescriptors];
      v10 = [v9 count];

      if (v10)
      {
        v11 = 0;
        do
        {
          if (((1 << v11) & a3) >> v11)
          {
            v12 = [(ICRankingQueriesDefinition *)self rankingQueryDescriptors];
            v13 = [v12 objectAtIndexedSubscript:v11];
            [v8 addObject:v13];
          }

          ++v11;
          v14 = [(ICRankingQueriesDefinition *)self rankingQueryDescriptors];
          v15 = [v14 count];
        }

        while (v11 < v15);
      }
    }

    v7 = [v8 copy];
    v16 = [(ICRankingQueriesDefinition *)self matchingDescriptorsCache];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v16 setObject:v7 forKeyedSubscript:v17];
  }

  return v7;
}

+ (unint64_t)bucketOfTimeInterval:(double)a3
{
  if (a3 <= 0.0)
  {
    return 2;
  }

  v3 = ceil(log(a3) * 1.28617347 + -6.14189718);
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