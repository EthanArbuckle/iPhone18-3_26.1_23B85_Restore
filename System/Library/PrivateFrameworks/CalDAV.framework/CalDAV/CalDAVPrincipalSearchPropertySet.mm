@interface CalDAVPrincipalSearchPropertySet
+ (id)searchSetWithProperties:(id)properties;
- (BOOL)isEqualToPropertySet:(id)set;
- (BOOL)supportsPropertySearch;
- (BOOL)supportsPropertyTypeWithNameSpace:(id)space andName:(id)name;
- (CalDAVPrincipalSearchPropertySet)initWithSearchProperties:(id)properties;
- (CalDAVPrincipalSearchPropertySet)initWithStringProperties:(id)properties;
@end

@implementation CalDAVPrincipalSearchPropertySet

- (CalDAVPrincipalSearchPropertySet)initWithSearchProperties:(id)properties
{
  v30 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v28.receiver = self;
  v28.super_class = CalDAVPrincipalSearchPropertySet;
  v5 = [(CalDAVPrincipalSearchPropertySet *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v23 = v5;
    v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = propertiesCopy;
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

          prop = [*(*(&v24 + 1) + 8 * i) prop];
          extraChildItems = [prop extraChildItems];
          lastObject = [extraChildItems lastObject];

          if (lastObject)
          {
            v16 = MEMORY[0x277CCACA8];
            nameSpace = [lastObject nameSpace];
            name = [lastObject name];
            v19 = [v16 CDVStringWithNameSpace:nameSpace andName:name];
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

- (CalDAVPrincipalSearchPropertySet)initWithStringProperties:(id)properties
{
  propertiesCopy = properties;
  v8.receiver = self;
  v8.super_class = CalDAVPrincipalSearchPropertySet;
  v5 = [(CalDAVPrincipalSearchPropertySet *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CalDAVPrincipalSearchPropertySet *)v5 setStringProperties:propertiesCopy];
  }

  return v6;
}

+ (id)searchSetWithProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [[CalDAVPrincipalSearchPropertySet alloc] initWithSearchProperties:propertiesCopy];

  return v4;
}

- (BOOL)supportsPropertyTypeWithNameSpace:(id)space andName:(id)name
{
  v5 = [MEMORY[0x277CCACA8] CDVStringWithNameSpace:space andName:name];
  stringProperties = [(CalDAVPrincipalSearchPropertySet *)self stringProperties];
  v7 = [stringProperties containsObject:v5];

  return v7;
}

- (BOOL)supportsPropertySearch
{
  stringProperties = [(CalDAVPrincipalSearchPropertySet *)self stringProperties];
  v3 = [stringProperties count] != 0;

  return v3;
}

- (BOOL)isEqualToPropertySet:(id)set
{
  setCopy = set;
  stringProperties = [(CalDAVPrincipalSearchPropertySet *)self stringProperties];
  stringProperties2 = [setCopy stringProperties];

  LOBYTE(setCopy) = [stringProperties isEqualToSet:stringProperties2];
  return setCopy;
}

@end