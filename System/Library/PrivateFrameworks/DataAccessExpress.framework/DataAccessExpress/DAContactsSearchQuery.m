@interface DAContactsSearchQuery
+ (id)contactsSearchQueryWithSearchString:(id)a3 searchBase:(id)a4 searchScope:(id)a5 consumer:(id)a6;
- (DAContactsSearchQuery)initWithDictionaryRepresentation:(id)a3 consumer:(id)a4;
- (DAContactsSearchQuery)initWithSearchString:(id)a3 searchBase:(id)a4 searchScope:(id)a5 consumer:(id)a6;
- (id)dictionaryRepresentation;
@end

@implementation DAContactsSearchQuery

+ (id)contactsSearchQueryWithSearchString:(id)a3 searchBase:(id)a4 searchScope:(id)a5 consumer:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[DAContactsSearchQuery alloc] initWithSearchString:v12 searchBase:v11 searchScope:v10 consumer:v9];

  return v13;
}

- (DAContactsSearchQuery)initWithSearchString:(id)a3 searchBase:(id)a4 searchScope:(id)a5 consumer:(id)a6
{
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DAContactsSearchQuery;
  v12 = [(DASearchQuery *)&v15 initWithSearchString:a3 consumer:a6];
  v13 = v12;
  if (v12)
  {
    [(DASearchQuery *)v12 setRange:0, 100];
    [(DAContactsSearchQuery *)v13 setSearchBase:v10];
    [(DAContactsSearchQuery *)v13 setSearchScope:v11];
    [(DAContactsSearchQuery *)v13 setIncludePhotos:1];
  }

  return v13;
}

- (DAContactsSearchQuery)initWithDictionaryRepresentation:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = DAContactsSearchQuery;
  v7 = [(DASearchQuery *)&v12 initWithDictionaryRepresentation:v6 consumer:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"ContactSearchBase"];
    [(DAContactsSearchQuery *)v7 setSearchBase:v8];

    v9 = [v6 objectForKeyedSubscript:@"ContactSearchScope"];
    [(DAContactsSearchQuery *)v7 setSearchScope:v9];

    v10 = [v6 objectForKeyedSubscript:@"ContactSearchIncludePhotos"];
    -[DAContactsSearchQuery setIncludePhotos:](v7, "setIncludePhotos:", [v10 BOOLValue]);
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v10.receiver = self;
  v10.super_class = DAContactsSearchQuery;
  v3 = [(DASearchQuery *)&v10 dictionaryRepresentation];
  v4 = [(DAContactsSearchQuery *)self searchBase];

  if (v4)
  {
    v5 = [(DAContactsSearchQuery *)self searchBase];
    [v3 setObject:v5 forKeyedSubscript:@"ContactSearchBase"];
  }

  v6 = [(DAContactsSearchQuery *)self searchScope];

  if (v6)
  {
    v7 = [(DAContactsSearchQuery *)self searchScope];
    [v3 setObject:v7 forKeyedSubscript:@"ContactSearchScope"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAContactsSearchQuery includePhotos](self, "includePhotos")}];
  [v3 setObject:v8 forKeyedSubscript:@"ContactSearchIncludePhotos"];

  return v3;
}

@end