@interface ICRankingQueryDescriptor
- (ICRankingQueryDescriptor)initWithQueryFields:(id)a3 expandedTokens:(id)a4 rankingQueryType:(int64_t)a5 rankingQueryFlags:(id)a6 displayedMatchedFields:(unint64_t)a7 purpose:(unint64_t)a8;
- (NSArray)tokens;
- (NSString)rankingQuery;
- (double)rankingScoreForSearchResultType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)rankingQueryForQueryField:(id)a3 tokenString:(id)a4;
@end

@implementation ICRankingQueryDescriptor

- (ICRankingQueryDescriptor)initWithQueryFields:(id)a3 expandedTokens:(id)a4 rankingQueryType:(int64_t)a5 rankingQueryFlags:(id)a6 displayedMatchedFields:(unint64_t)a7 purpose:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = ICRankingQueryDescriptor;
  v18 = [(ICRankingQueryDescriptor *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queryFields, a3);
    objc_storeStrong(&v19->_expandedTokens, a4);
    v19->_rankingQueryType = a5;
    objc_storeStrong(&v19->_rankingQueryFlags, a6);
    v19->_displayedMatchedFields = a7;
    v19->_purpose = a8;
    if (!a7)
    {
      if ([(NSArray *)v19->_queryFields containsObject:@"_ICItemDisplayName"]|| [(NSArray *)v19->_queryFields containsObject:*MEMORY[0x277CC2760]])
      {
        v20 = 1;
      }

      else if ([(NSArray *)v19->_queryFields containsObject:*MEMORY[0x277CC24E0]]|| [(NSArray *)v19->_queryFields containsObject:*MEMORY[0x277CC24C8]])
      {
        v20 = 4;
      }

      else
      {
        if (![(NSArray *)v19->_queryFields containsObject:*MEMORY[0x277CC31A0]])
        {
          goto LABEL_7;
        }

        v20 = 2;
      }

      v19->_displayedMatchedFields |= v20;
    }
  }

LABEL_7:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ICRankingQueryDescriptor *)self queryFields];
  v6 = [(ICRankingQueryDescriptor *)self expandedTokens];
  v7 = [(ICRankingQueryDescriptor *)self rankingQueryType];
  v8 = [(ICRankingQueryDescriptor *)self rankingQueryFlags];
  v9 = [v4 initWithQueryFields:v5 expandedTokens:v6 rankingQueryType:v7 rankingQueryFlags:v8 displayedMatchedFields:-[ICRankingQueryDescriptor displayedMatchedFields](self purpose:{"displayedMatchedFields"), -[ICRankingQueryDescriptor purpose](self, "purpose")}];

  return v9;
}

- (NSString)rankingQuery
{
  v45 = *MEMORY[0x277D85DE8];
  rankingQuery = self->_rankingQuery;
  if (!rankingQuery)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(ICRankingQueryDescriptor *)self expandedTokens];
    v26 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v26)
    {
      v24 = *v39;
      do
      {
        v4 = 0;
        do
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = v4;
          v5 = *(*(&v38 + 1) + 8 * v4);
          v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v28 = v5;
          v7 = [v28 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v7)
          {
            v8 = v7;
            v29 = *v35;
            do
            {
              v9 = 0;
              do
              {
                if (*v35 != v29)
                {
                  objc_enumerationMutation(v28);
                }

                v10 = *(*(&v34 + 1) + 8 * v9);
                v30 = 0u;
                v31 = 0u;
                v32 = 0u;
                v33 = 0u;
                v11 = [(ICRankingQueryDescriptor *)self queryFields];
                v12 = [v11 countByEnumeratingWithState:&v30 objects:v42 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v31;
                  do
                  {
                    v15 = 0;
                    do
                    {
                      if (*v31 != v14)
                      {
                        objc_enumerationMutation(v11);
                      }

                      v16 = [(ICRankingQueryDescriptor *)self rankingQueryForQueryField:*(*(&v30 + 1) + 8 * v15) tokenString:v10];
                      [v6 addObject:v16];

                      ++v15;
                    }

                    while (v13 != v15);
                    v13 = [v11 countByEnumeratingWithState:&v30 objects:v42 count:16];
                  }

                  while (v13);
                }

                ++v9;
              }

              while (v9 != v8);
              v8 = [v28 countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v8);
          }

          v17 = MEMORY[0x277CCACA8];
          v18 = [v6 componentsJoinedByString:@" || "];
          v19 = [v17 stringWithFormat:@"(%@)", v18];

          [v25 addObject:v19];
          v4 = v27 + 1;
        }

        while (v27 + 1 != v26);
        v26 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v26);
    }

    v20 = [v25 componentsJoinedByString:@" || "];
    v21 = self->_rankingQuery;
    self->_rankingQuery = v20;

    rankingQuery = self->_rankingQuery;
  }

  return rankingQuery;
}

- (NSArray)tokens
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(ICRankingQueryDescriptor *)self expandedTokens];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];

  return v9;
}

- (double)rankingScoreForSearchResultType:(unint64_t)a3
{
  v5 = 0.0;
  if ([(ICRankingQueryDescriptor *)self purpose]!= 1)
  {
    return v5;
  }

  if (([(ICRankingQueryDescriptor *)self displayedMatchedFields]& 1) != 0)
  {
    v7 = [(ICRankingQueryDescriptor *)self rankingQueryType];
    v8 = 0.0;
    if (v7 != 2)
    {
      v9 = 0.0625;
      if (a3 != 1)
      {
        v9 = 0.0;
      }

      if (!a3)
      {
        v9 = 0.5;
      }

      v10 = 4.0;
      if (a3 != 1)
      {
        v10 = 0.0;
      }

      v11 = a3 == 0;
      v12 = 32.0;
      goto LABEL_23;
    }

    if (a3 == 1)
    {
      v8 = 0.001953125;
    }

    v13 = a3 == 0;
    v14 = 0x3F90000000000000;
LABEL_34:
    v9 = *&v14;
LABEL_35:
    if (v13)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  if (([(ICRankingQueryDescriptor *)self displayedMatchedFields]& 2) != 0)
  {
    v7 = [(ICRankingQueryDescriptor *)self rankingQueryType];
    v8 = 0.0;
    if (v7 != 2)
    {
      v9 = 0.03125;
      if (a3 != 1)
      {
        v9 = 0.0;
      }

      if (!a3)
      {
        v9 = 0.25;
      }

      v10 = 2.0;
      if (a3 != 1)
      {
        v10 = 0.0;
      }

      v11 = a3 == 0;
      v12 = 16.0;
LABEL_23:
      if (v11)
      {
        v10 = v12;
      }

      if (!v7)
      {
        v8 = v10;
      }

      v13 = v7 == 1;
      goto LABEL_35;
    }

    if (a3 == 1)
    {
      v8 = 0.0009765625;
    }

    v13 = a3 == 0;
    v14 = 0x3F80000000000000;
    goto LABEL_34;
  }

  if (([(ICRankingQueryDescriptor *)self displayedMatchedFields]& 4) != 0)
  {
    v6 = [(ICRankingQueryDescriptor *)self rankingQueryType];
    if (v6 <= 2)
    {
      return dbl_2150C0AF8[v6];
    }
  }

  return v5;
}

- (id)rankingQueryForQueryField:(id)a3 tokenString:(id)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277D36268] stringByEscapingSearchString:a4];
  if ([v7 length])
  {
    v8 = [(ICRankingQueryDescriptor *)self rankingQueryFlags];
  }

  else
  {
    v8 = &stru_2827172C0;
  }

  v9 = [(ICRankingQueryDescriptor *)self rankingQueryType];
  switch(v9)
  {
    case 2:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@=*%@*%@", v6, v7, v8];
      goto LABEL_10;
    case 1:
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%3.3d", 66];
      v12 = [v10 stringWithFormat:@"%@=%@*%@f%@", v6, v7, v8, v11];

      goto LABEL_12;
    case 0:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@*%@", v6, v7, v8];
      v12 = LABEL_10:;
      goto LABEL_12;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

@end