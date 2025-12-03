@interface ML3SpotlightMatchPredicate
+ (id)predicateWithProperties:(id)properties searchString:(id)string;
- (ML3SpotlightMatchPredicate)initWithSearchString:(id)string matchingProperties:(id)properties;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)dealloc;
@end

@implementation ML3SpotlightMatchPredicate

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  v19 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (self->_searchProperties)
  {
    v6 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"ML3SpotlightMatch(");
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_searchProperties;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      v10 = 1;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if ((v10 & 1) == 0)
          {
            [v6 appendString:{@", "}];
          }

          [v6 appendString:v12];
          v10 = 0;
          ++v11;
        }

        while (v8 != v11);
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v10 = 0;
      }

      while (v8);
    }

    [v6 appendString:@""]);
    [stringCopy appendString:v6];
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"ML3SpotlightMatch(%@, %@, %@, %@)", @"item_search.search_title", @"item_search.search_album", @"item_search.search_artist", @"item_search.search_composer"];
    [stringCopy appendString:v13];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ML3SpotlightMatchPredicate;
  [(ML3SpotlightMatchPredicate *)&v2 dealloc];
}

- (ML3SpotlightMatchPredicate)initWithSearchString:(id)string matchingProperties:(id)properties
{
  stringCopy = string;
  propertiesCopy = properties;
  v12.receiver = self;
  v12.super_class = ML3SpotlightMatchPredicate;
  v9 = [(ML3SpotlightMatchPredicate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchString, string);
    objc_storeStrong(&v10->_searchProperties, properties);
  }

  return v10;
}

+ (id)predicateWithProperties:(id)properties searchString:(id)string
{
  propertiesCopy = properties;
  stringCopy = string;
  v7 = [[ML3SpotlightMatchPredicate alloc] initWithSearchString:stringCopy matchingProperties:propertiesCopy];

  return v7;
}

@end