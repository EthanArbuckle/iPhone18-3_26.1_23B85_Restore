@interface IKStyleMediaQuery
+ (id)mediaQueryListWithCSSMediaQuery:(id)a3;
- (BOOL)isEqual:(id)a3;
- (IKStyleMediaQuery)initWithMediaType:(id)a3 featureValues:(id)a4 isNegated:(BOOL)a5;
- (NSString)identifier;
- (unint64_t)hash;
@end

@implementation IKStyleMediaQuery

+ (id)mediaQueryListWithCSSMediaQuery:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v25 = v3;
  v24 = [v3 queryList];
  [v24 subQueryList];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v29)
  {
    v27 = *v37;
    v28 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v36 + 1) + 8 * v5);
        v31 = v5;
        v6 = [v30 expressionList];
        v7 = [MEMORY[0x277CBEB38] dictionary];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v32 + 1) + 8 * i);
              v14 = [MEMORY[0x277CBEB68] null];
              v15 = [v13 valueAsString];
              if (([v15 isEqualToString:&stru_2866C1E60] & 1) == 0)
              {
                v16 = v15;

                v14 = v16;
              }

              v17 = [v13 key];
              [v7 setObject:v14 forKey:v17];
            }

            v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }

        v18 = [IKStyleMediaQuery alloc];
        v19 = [v30 type];
        v20 = -[IKStyleMediaQuery initWithMediaType:featureValues:isNegated:](v18, "initWithMediaType:featureValues:isNegated:", v19, v7, [v30 negated]);

        v4 = v28;
        [v28 addObject:v20];

        v5 = v31 + 1;
      }

      while (v31 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v29);
  }

  if ([v4 count])
  {
    v21 = v4;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (IKStyleMediaQuery)initWithMediaType:(id)a3 featureValues:(id)a4 isNegated:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = IKStyleMediaQuery;
  v11 = [(IKStyleMediaQuery *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_isNegated = a5;
    objc_storeStrong(&v11->_mediaType, a3);
    v13 = [v10 copy];
    featureValues = v12->_featureValues;
    v12->_featureValues = v13;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IKStyleMediaQuery *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(IKStyleMediaQuery *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = [MEMORY[0x277CCAB68] string];
    v5 = v4;
    if (self->_isNegated)
    {
      [v4 appendString:@"not "];
    }

    [v5 appendString:self->_mediaType];
    featureValues = self->_featureValues;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __31__IKStyleMediaQuery_identifier__block_invoke;
    v11[3] = &unk_27979A150;
    v12 = v5;
    v7 = v5;
    [(NSDictionary *)featureValues enumerateKeysAndObjectsUsingBlock:v11];
    v8 = [v7 copy];
    v9 = self->_identifier;
    self->_identifier = v8;

    identifier = self->_identifier;
  }

  return identifier;
}

void __31__IKStyleMediaQuery_identifier__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 appendString:@" and "];
  objc_msgSend(*(a1 + 32), "appendString:", @"(");
  [*(a1 + 32) appendString:v6];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) appendString:@": "];
      [*(a1 + 32) appendString:v7];
    }
  }

  [*(a1 + 32) appendString:@""]);
}

@end