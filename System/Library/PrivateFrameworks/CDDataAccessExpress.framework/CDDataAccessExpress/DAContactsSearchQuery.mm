@interface DAContactsSearchQuery
+ (id)contactsSearchQueryWithSearchString:(id)string searchBase:(id)base searchScope:(id)scope consumer:(id)consumer;
- (DAContactsSearchQuery)initWithDictionaryRepresentation:(id)representation consumer:(id)consumer;
- (DAContactsSearchQuery)initWithSearchString:(id)string searchBase:(id)base searchScope:(id)scope consumer:(id)consumer;
- (id)dictionaryRepresentation;
@end

@implementation DAContactsSearchQuery

+ (id)contactsSearchQueryWithSearchString:(id)string searchBase:(id)base searchScope:(id)scope consumer:(id)consumer
{
  consumerCopy = consumer;
  scopeCopy = scope;
  baseCopy = base;
  stringCopy = string;
  v13 = [[DAContactsSearchQuery alloc] initWithSearchString:stringCopy searchBase:baseCopy searchScope:scopeCopy consumer:consumerCopy];

  return v13;
}

- (DAContactsSearchQuery)initWithSearchString:(id)string searchBase:(id)base searchScope:(id)scope consumer:(id)consumer
{
  baseCopy = base;
  scopeCopy = scope;
  v15.receiver = self;
  v15.super_class = DAContactsSearchQuery;
  v12 = [(DASearchQuery *)&v15 initWithSearchString:string consumer:consumer];
  v13 = v12;
  if (v12)
  {
    [(DASearchQuery *)v12 setRange:0, 100];
    [(DAContactsSearchQuery *)v13 setSearchBase:baseCopy];
    [(DAContactsSearchQuery *)v13 setSearchScope:scopeCopy];
    [(DAContactsSearchQuery *)v13 setIncludePhotos:1];
  }

  return v13;
}

- (DAContactsSearchQuery)initWithDictionaryRepresentation:(id)representation consumer:(id)consumer
{
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = DAContactsSearchQuery;
  v7 = [(DASearchQuery *)&v12 initWithDictionaryRepresentation:representationCopy consumer:consumer];
  if (v7)
  {
    v8 = [representationCopy objectForKeyedSubscript:@"ContactSearchBase"];
    [(DAContactsSearchQuery *)v7 setSearchBase:v8];

    v9 = [representationCopy objectForKeyedSubscript:@"ContactSearchScope"];
    [(DAContactsSearchQuery *)v7 setSearchScope:v9];

    v10 = [representationCopy objectForKeyedSubscript:@"ContactSearchIncludePhotos"];
    -[DAContactsSearchQuery setIncludePhotos:](v7, "setIncludePhotos:", [v10 BOOLValue]);
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v10.receiver = self;
  v10.super_class = DAContactsSearchQuery;
  dictionaryRepresentation = [(DASearchQuery *)&v10 dictionaryRepresentation];
  searchBase = [(DAContactsSearchQuery *)self searchBase];

  if (searchBase)
  {
    searchBase2 = [(DAContactsSearchQuery *)self searchBase];
    [dictionaryRepresentation setObject:searchBase2 forKeyedSubscript:@"ContactSearchBase"];
  }

  searchScope = [(DAContactsSearchQuery *)self searchScope];

  if (searchScope)
  {
    searchScope2 = [(DAContactsSearchQuery *)self searchScope];
    [dictionaryRepresentation setObject:searchScope2 forKeyedSubscript:@"ContactSearchScope"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAContactsSearchQuery includePhotos](self, "includePhotos")}];
  [dictionaryRepresentation setObject:v8 forKeyedSubscript:@"ContactSearchIncludePhotos"];

  return dictionaryRepresentation;
}

@end