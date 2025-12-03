@interface IPFeatureKeyword
+ (id)featureKeywordWithType:(unint64_t)type string:(id)string matchRange:(_NSRange)range;
- (NSMutableDictionary)contextDictionary;
- (id)description;
- (id)humandReadableEventTypes;
- (id)typeDescription;
- (void)addEventType:(id)type;
@end

@implementation IPFeatureKeyword

+ (id)featureKeywordWithType:(unint64_t)type string:(id)string matchRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v9 = objc_alloc_init(IPFeatureKeyword);
  [(IPFeatureKeyword *)v9 setKeywordString:stringCopy];

  [(IPFeature *)v9 setMatchRange:location, length];
  [(IPFeatureKeyword *)v9 setEventTypes:MEMORY[0x277CBEBF8]];
  [(IPFeatureKeyword *)v9 setType:type];

  return v9;
}

- (NSMutableDictionary)contextDictionary
{
  contextDictionary = self->_contextDictionary;
  if (!contextDictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_contextDictionary;
    self->_contextDictionary = dictionary;

    contextDictionary = self->_contextDictionary;
  }

  return contextDictionary;
}

- (void)addEventType:(id)type
{
  typeCopy = type;
  eventTypes = [(IPFeatureKeyword *)self eventTypes];
  v5 = [eventTypes containsObject:typeCopy];

  if ((v5 & 1) == 0)
  {
    eventTypes2 = [(IPFeatureKeyword *)self eventTypes];
    v7 = [eventTypes2 arrayByAddingObject:typeCopy];
    [(IPFeatureKeyword *)self setEventTypes:v7];
  }
}

- (id)typeDescription
{
  type = [(IPFeatureKeyword *)self type];
  if (type > 3)
  {
    return @"None";
  }

  else
  {
    return off_278F233A8[type];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = IPFeatureKeyword;
  v4 = [(IPFeature *)&v9 description];
  humandReadableEventTypes = [(IPFeatureKeyword *)self humandReadableEventTypes];
  typeDescription = [(IPFeatureKeyword *)self typeDescription];
  v7 = [v3 stringWithFormat:@"%@ Type: %@ Event Types: <%@>", v4, humandReadableEventTypes, typeDescription];

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
  eventTypes = [(IPFeatureKeyword *)self eventTypes];
  v5 = [eventTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(eventTypes);
        }

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        [v3 addObject:identifier];
      }

      v6 = [eventTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 _pas_componentsJoinedByString:{@", "}];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end