@interface IKStyleMediaQuery
+ (id)mediaQueryListWithCSSMediaQuery:(id)query;
- (BOOL)isEqual:(id)equal;
- (IKStyleMediaQuery)initWithMediaType:(id)type featureValues:(id)values isNegated:(BOOL)negated;
- (NSString)identifier;
- (unint64_t)hash;
@end

@implementation IKStyleMediaQuery

+ (id)mediaQueryListWithCSSMediaQuery:(id)query
{
  v42 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  array = [MEMORY[0x277CBEB18] array];
  v25 = queryCopy;
  queryList = [queryCopy queryList];
  [queryList subQueryList];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v29)
  {
    v27 = *v37;
    v28 = array;
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
        expressionList = [v30 expressionList];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v8 = expressionList;
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
              null = [MEMORY[0x277CBEB68] null];
              valueAsString = [v13 valueAsString];
              if (([valueAsString isEqualToString:&stru_2866C1E60] & 1) == 0)
              {
                v16 = valueAsString;

                null = v16;
              }

              v17 = [v13 key];
              [dictionary setObject:null forKey:v17];
            }

            v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }

        v18 = [IKStyleMediaQuery alloc];
        type = [v30 type];
        v20 = -[IKStyleMediaQuery initWithMediaType:featureValues:isNegated:](v18, "initWithMediaType:featureValues:isNegated:", type, dictionary, [v30 negated]);

        array = v28;
        [v28 addObject:v20];

        v5 = v31 + 1;
      }

      while (v31 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v29);
  }

  if ([array count])
  {
    v21 = array;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (IKStyleMediaQuery)initWithMediaType:(id)type featureValues:(id)values isNegated:(BOOL)negated
{
  typeCopy = type;
  valuesCopy = values;
  v16.receiver = self;
  v16.super_class = IKStyleMediaQuery;
  v11 = [(IKStyleMediaQuery *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_isNegated = negated;
    objc_storeStrong(&v11->_mediaType, type);
    v13 = [valuesCopy copy];
    featureValues = v12->_featureValues;
    v12->_featureValues = v13;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(IKStyleMediaQuery *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(IKStyleMediaQuery *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    string = [MEMORY[0x277CCAB68] string];
    v5 = string;
    if (self->_isNegated)
    {
      [string appendString:@"not "];
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