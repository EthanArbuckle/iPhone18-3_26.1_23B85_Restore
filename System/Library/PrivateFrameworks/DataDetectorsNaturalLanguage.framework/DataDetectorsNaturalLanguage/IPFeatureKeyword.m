@interface IPFeatureKeyword
+ (id)featureKeywordWithType:(unint64_t)a3 string:(id)a4 matchRange:(_NSRange)a5;
- (NSMutableDictionary)contextDictionary;
- (id)description;
- (id)humandReadableEventTypes;
- (id)typeDescription;
- (void)addEventType:(id)a3;
@end

@implementation IPFeatureKeyword

+ (id)featureKeywordWithType:(unint64_t)a3 string:(id)a4 matchRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a4;
  v9 = objc_alloc_init(IPFeatureKeyword);
  [(IPFeatureKeyword *)v9 setKeywordString:v8];

  [(IPFeature *)v9 setMatchRange:location, length];
  [(IPFeatureKeyword *)v9 setEventTypes:MEMORY[0x277CBEBF8]];
  [(IPFeatureKeyword *)v9 setType:a3];

  return v9;
}

- (NSMutableDictionary)contextDictionary
{
  contextDictionary = self->_contextDictionary;
  if (!contextDictionary)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_contextDictionary;
    self->_contextDictionary = v4;

    contextDictionary = self->_contextDictionary;
  }

  return contextDictionary;
}

- (void)addEventType:(id)a3
{
  v8 = a3;
  v4 = [(IPFeatureKeyword *)self eventTypes];
  v5 = [v4 containsObject:v8];

  if ((v5 & 1) == 0)
  {
    v6 = [(IPFeatureKeyword *)self eventTypes];
    v7 = [v6 arrayByAddingObject:v8];
    [(IPFeatureKeyword *)self setEventTypes:v7];
  }
}

- (id)typeDescription
{
  v2 = [(IPFeatureKeyword *)self type];
  if (v2 > 3)
  {
    return @"None";
  }

  else
  {
    return off_278F233A8[v2];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = IPFeatureKeyword;
  v4 = [(IPFeature *)&v9 description];
  v5 = [(IPFeatureKeyword *)self humandReadableEventTypes];
  v6 = [(IPFeatureKeyword *)self typeDescription];
  v7 = [v3 stringWithFormat:@"%@ Type: %@ Event Types: <%@>", v4, v5, v6];

  return v7;
}

- (id)humandReadableEventTypes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(IPFeatureKeyword *)self eventTypes];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) identifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 _pas_componentsJoinedByString:{@", "}];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end