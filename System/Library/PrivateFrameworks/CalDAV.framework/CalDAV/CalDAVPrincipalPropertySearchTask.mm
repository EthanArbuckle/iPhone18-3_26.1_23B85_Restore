@interface CalDAVPrincipalPropertySearchTask
- (CalDAVPrincipalPropertySearchTask)initWithSearchStrings:(id)strings searchTypes:(id)types serverSupportSet:(id)set atURL:(id)l;
- (id)extraAttributes;
- (id)searchItems;
@end

@implementation CalDAVPrincipalPropertySearchTask

- (CalDAVPrincipalPropertySearchTask)initWithSearchStrings:(id)strings searchTypes:(id)types serverSupportSet:(id)set atURL:(id)l
{
  stringsCopy = strings;
  typesCopy = types;
  setCopy = set;
  lCopy = l;
  v14 = [CalDAVPrincipalSearchSupport parserMappingsWithServerSupportSet:setCopy includeEmail:1];
  v18.receiver = self;
  v18.super_class = CalDAVPrincipalPropertySearchTask;
  v15 = [(CoreDAVPrincipalPropertySearchTask *)&v18 initWithPropertiesToFind:v14 atURL:lCopy];

  if (v15)
  {
    [(CalDAVPrincipalPropertySearchTask *)v15 setSearchStrings:stringsCopy];
    [(CalDAVPrincipalPropertySearchTask *)v15 setServerSupportSet:setCopy];
    if ([typesCopy count])
    {
      [(CalDAVPrincipalPropertySearchTask *)v15 setSearchTypes:typesCopy];
    }

    else
    {
      v16 = [MEMORY[0x277CBEB98] setWithObjects:{CalDAVPrincipalResultType_Person, CalDAVPrincipalResultType_Group, CalDAVPrincipalResultType_Resource, CalDAVPrincipalResultType_Room, CalDAVPrincipalResultType_Unknown, 0}];
      [(CalDAVPrincipalPropertySearchTask *)v15 setSearchTypes:v16];
    }
  }

  return v15;
}

- (id)extraAttributes
{
  searchTypes = [(CalDAVPrincipalPropertySearchTask *)self searchTypes];
  v4 = [searchTypes count];

  if (v4 < 2)
  {
    searchTypes2 = [(CalDAVPrincipalPropertySearchTask *)self searchTypes];
    anyObject = [searchTypes2 anyObject];

    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CFDEA0], *MEMORY[0x277CFDED0], anyObject, @"type", 0}];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CFDEA0] forKey:*MEMORY[0x277CFDED0]];
  }

  return v5;
}

- (id)searchItems
{
  v3 = [MEMORY[0x277CBEB58] set];
  searchTypes = [(CalDAVPrincipalPropertySearchTask *)self searchTypes];
  v5 = [searchTypes containsObject:CalDAVPrincipalResultType_Room];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__CalDAVPrincipalPropertySearchTask_searchItems__block_invoke;
  v12[3] = &unk_278D66C28;
  v12[4] = self;
  v14 = v5;
  v6 = v3;
  v13 = v6;
  v7 = MEMORY[0x245D182B0](v12);
  v7[2](v7, 3);
  v7[2](v7, 4);
  searchTypes2 = [(CalDAVPrincipalPropertySearchTask *)self searchTypes];
  v9 = [searchTypes2 containsObject:CalDAVPrincipalResultType_Person];

  if (v9)
  {
    v7[2](v7, 1);
    v7[2](v7, 2);
  }

  v10 = v6;

  return v6;
}

void __48__CalDAVPrincipalPropertySearchTask_searchItems__block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) serverSupportSet];
  v5 = [v4 supportsWellKnownType:a2];

  if (v5)
  {
    v6 = @"starts-with";
    if (a2 == 6)
    {
      v6 = @"equals";
    }

    if (((a2 == 3) & *(a1 + 48)) != 0)
    {
      v7 = @"contains";
    }

    else
    {
      v7 = v6;
    }

    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [*(a1 + 32) searchStrings];
    v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v18;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v17 + 1) + 8 * v12);
          v10 = [CalDAVPrincipalSearchSupport propertySearchItemForWellKnownType:a2];

          [v10 setMatchTypeAttribute:v7];
          [v10 setMatch:v14];
          [*(a1 + 40) addObject:v10];
          ++v12;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end