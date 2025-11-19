@interface CalDAVPrincipalSearchPropertySet
+ (id)searchSetWithProperties:(id)a3;
- (BOOL)isEqualToPropertySet:(id)a3;
- (BOOL)supportsPropertySearch;
- (BOOL)supportsPropertyTypeWithNameSpace:(id)a3 andName:(id)a4;
- (CalDAVPrincipalSearchPropertySet)initWithSearchProperties:(id)a3;
- (CalDAVPrincipalSearchPropertySet)initWithStringProperties:(id)a3;
@end

@implementation CalDAVPrincipalSearchPropertySet

- (CalDAVPrincipalSearchPropertySet)initWithSearchProperties:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CalDAVPrincipalSearchPropertySet;
  v5 = [(CalDAVPrincipalSearchPropertySet *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v23 = v5;
    v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v24 + 1) + 8 * i) prop];
          v14 = [v13 extraChildItems];
          v15 = [v14 lastObject];

          if (v15)
          {
            v16 = MEMORY[0x277CCACA8];
            v17 = [v15 nameSpace];
            v18 = [v15 name];
            v19 = [v16 CDVStringWithNameSpace:v17 andName:v18];
            [v7 addObject:v19];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v20 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:v7];
    v6 = v23;
    [(CalDAVPrincipalSearchPropertySet *)v23 setStringProperties:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (CalDAVPrincipalSearchPropertySet)initWithStringProperties:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CalDAVPrincipalSearchPropertySet;
  v5 = [(CalDAVPrincipalSearchPropertySet *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CalDAVPrincipalSearchPropertySet *)v5 setStringProperties:v4];
  }

  return v6;
}

+ (id)searchSetWithProperties:(id)a3
{
  v3 = a3;
  v4 = [[CalDAVPrincipalSearchPropertySet alloc] initWithSearchProperties:v3];

  return v4;
}

- (BOOL)supportsPropertyTypeWithNameSpace:(id)a3 andName:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] CDVStringWithNameSpace:a3 andName:a4];
  v6 = [(CalDAVPrincipalSearchPropertySet *)self stringProperties];
  v7 = [v6 containsObject:v5];

  return v7;
}

- (BOOL)supportsPropertySearch
{
  v2 = [(CalDAVPrincipalSearchPropertySet *)self stringProperties];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isEqualToPropertySet:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVPrincipalSearchPropertySet *)self stringProperties];
  v6 = [v4 stringProperties];

  LOBYTE(v4) = [v5 isEqualToSet:v6];
  return v4;
}

@end