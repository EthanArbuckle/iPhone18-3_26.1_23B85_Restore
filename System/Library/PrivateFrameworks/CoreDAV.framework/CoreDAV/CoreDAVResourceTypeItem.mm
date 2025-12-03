@interface CoreDAVResourceTypeItem
+ (id)copyParseRules;
- (BOOL)isTypeWithNameSpace:(id)space andName:(id)name;
- (NSSet)stringSet;
- (id)description;
- (void)write:(id)write;
@end

@implementation CoreDAVResourceTypeItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12.receiver = self;
  v12.super_class = CoreDAVResourceTypeItem;
  v4 = [(CoreDAVItem *)&v12 description];
  [v3 appendFormat:@"[%@]", v4];

  addressBook = [(CoreDAVResourceTypeItem *)self addressBook];
  [v3 appendFormat:@"\n  Address book: [%@]", addressBook];

  searchAddressBook = [(CoreDAVResourceTypeItem *)self searchAddressBook];
  [v3 appendFormat:@"\n  Search address book: [%@]", searchAddressBook];

  shared = [(CoreDAVResourceTypeItem *)self shared];
  [v3 appendFormat:@"\n  Shared: [%@]", shared];

  principal = [(CoreDAVResourceTypeItem *)self principal];
  [v3 appendFormat:@"\n  Principal: [%@]", principal];

  collection = [(CoreDAVResourceTypeItem *)self collection];
  [v3 appendFormat:@"\n  Collection: [%@]", collection];

  unauthenticated = [(CoreDAVResourceTypeItem *)self unauthenticated];
  [v3 appendFormat:@"\n  Unauthenticated: [%@]", unauthenticated];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v19 = objc_alloc(MEMORY[0x277CBEAC0]);
    v21 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"urn:ietf:params:xml:ns:carddav" elementName:@"addressbook" objectClass:objc_opt_class() setterMethod:sel_setAddressBook_];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"urn:ietf:params:xml:ns:carddav", @"addressbook"];
    v18 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"urn:ietf:params:xml:ns:carddav" elementName:@"searchaddressbook" objectClass:objc_opt_class() setterMethod:sel_setSearchAddressBook_];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"urn:ietf:params:xml:ns:carddav", @"searchaddressbook"];
    v16 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"shared" objectClass:objc_opt_class() setterMethod:sel_setShared_];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"shared"];
    v14 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"principal" objectClass:objc_opt_class() setterMethod:sel_setPrincipal_];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"principal"];
    v13 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"collection" objectClass:objc_opt_class() setterMethod:sel_setCollection_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"collection"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"unauthenticated" objectClass:objc_opt_class() setterMethod:sel_setUnauthenticated_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"unauthenticated"];
    v5 = [v19 initWithObjectsAndKeys:{v21, v20, v18, v17, v16, v15, v14, v6, v13, v7, v8, v9, 0}];

    v10 = +[CoreDAVItem parseRuleCache];
    v11 = NSStringFromClass(self);
    [v10 setObject:v5 forKey:v11];
  }

  return v5;
}

- (void)write:(id)write
{
  v26 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  name = [(CoreDAVItem *)self name];
  nameSpace = [(CoreDAVItem *)self nameSpace];
  [writeCopy startElement:name inNamespace:nameSpace withAttributeNamesAndValues:0];

  addressBook = [(CoreDAVResourceTypeItem *)self addressBook];
  [addressBook write:writeCopy];

  searchAddressBook = [(CoreDAVResourceTypeItem *)self searchAddressBook];
  [searchAddressBook write:writeCopy];

  shared = [(CoreDAVResourceTypeItem *)self shared];
  [shared write:writeCopy];

  principal = [(CoreDAVResourceTypeItem *)self principal];
  [principal write:writeCopy];

  collection = [(CoreDAVResourceTypeItem *)self collection];
  [collection write:writeCopy];

  unauthenticated = [(CoreDAVResourceTypeItem *)self unauthenticated];
  [unauthenticated write:writeCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  extraChildItems = [(CoreDAVItem *)self extraChildItems];
  v14 = [extraChildItems countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(extraChildItems);
        }

        [*(*(&v21 + 1) + 8 * v17++) write:writeCopy];
      }

      while (v15 != v17);
      v15 = [extraChildItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  name2 = [(CoreDAVItem *)self name];
  nameSpace2 = [(CoreDAVItem *)self nameSpace];
  [writeCopy endElement:name2 inNamespace:nameSpace2];

  v20 = *MEMORY[0x277D85DE8];
}

- (NSSet)stringSet
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  addressBook = [(CoreDAVResourceTypeItem *)self addressBook];

  if (addressBook)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    addressBook2 = [(CoreDAVResourceTypeItem *)self addressBook];
    nameSpace = [addressBook2 nameSpace];
    addressBook3 = [(CoreDAVResourceTypeItem *)self addressBook];
    name = [addressBook3 name];
    v10 = [v5 initWithCDVNameSpace:nameSpace andName:name];

    [v3 addObject:v10];
  }

  searchAddressBook = [(CoreDAVResourceTypeItem *)self searchAddressBook];

  if (searchAddressBook)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    searchAddressBook2 = [(CoreDAVResourceTypeItem *)self searchAddressBook];
    nameSpace2 = [searchAddressBook2 nameSpace];
    searchAddressBook3 = [(CoreDAVResourceTypeItem *)self searchAddressBook];
    name2 = [searchAddressBook3 name];
    v17 = [v12 initWithCDVNameSpace:nameSpace2 andName:name2];

    [v3 addObject:v17];
  }

  shared = [(CoreDAVResourceTypeItem *)self shared];

  if (shared)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    shared2 = [(CoreDAVResourceTypeItem *)self shared];
    nameSpace3 = [shared2 nameSpace];
    shared3 = [(CoreDAVResourceTypeItem *)self shared];
    name3 = [shared3 name];
    v24 = [v19 initWithCDVNameSpace:nameSpace3 andName:name3];

    [v3 addObject:v24];
  }

  principal = [(CoreDAVResourceTypeItem *)self principal];

  if (principal)
  {
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    principal2 = [(CoreDAVResourceTypeItem *)self principal];
    nameSpace4 = [principal2 nameSpace];
    principal3 = [(CoreDAVResourceTypeItem *)self principal];
    name4 = [principal3 name];
    v31 = [v26 initWithCDVNameSpace:nameSpace4 andName:name4];

    [v3 addObject:v31];
  }

  collection = [(CoreDAVResourceTypeItem *)self collection];

  if (collection)
  {
    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    collection2 = [(CoreDAVResourceTypeItem *)self collection];
    nameSpace5 = [collection2 nameSpace];
    collection3 = [(CoreDAVResourceTypeItem *)self collection];
    name5 = [collection3 name];
    v38 = [v33 initWithCDVNameSpace:nameSpace5 andName:name5];

    [v3 addObject:v38];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  extraChildItems = [(CoreDAVItem *)self extraChildItems];
  v40 = [extraChildItems countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v52;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v52 != v42)
        {
          objc_enumerationMutation(extraChildItems);
        }

        v44 = *(*(&v51 + 1) + 8 * i);
        v45 = objc_alloc(MEMORY[0x277CCACA8]);
        nameSpace6 = [v44 nameSpace];
        name6 = [v44 name];
        v48 = [v45 initWithCDVNameSpace:nameSpace6 andName:name6];

        [v3 addObject:v48];
      }

      v41 = [extraChildItems countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v41);
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isTypeWithNameSpace:(id)space andName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  nameCopy = name;
  if ([spaceCopy isEqualToString:@"DAV:"])
  {
    if ([nameCopy isEqualToString:@"principal"])
    {
      principal = [(CoreDAVResourceTypeItem *)self principal];
LABEL_16:
      v9 = principal != 0;

      goto LABEL_29;
    }

    if ([nameCopy isEqualToString:@"collection"])
    {
      principal = [(CoreDAVResourceTypeItem *)self collection];
      goto LABEL_16;
    }

    if ([nameCopy isEqualToString:@"unauthenticated"])
    {
      principal = [(CoreDAVResourceTypeItem *)self unauthenticated];
      goto LABEL_16;
    }
  }

  else if ([spaceCopy isEqualToString:@"urn:ietf:params:xml:ns:carddav"])
  {
    if ([nameCopy isEqualToString:@"addressbook"])
    {
      principal = [(CoreDAVResourceTypeItem *)self addressBook];
      goto LABEL_16;
    }

    if ([nameCopy isEqualToString:@"searchaddressbook"])
    {
      principal = [(CoreDAVResourceTypeItem *)self searchAddressBook];
      goto LABEL_16;
    }
  }

  else if ([spaceCopy isEqualToString:@"http://calendarserver.org/ns/"] && objc_msgSend(nameCopy, "isEqualToString:", @"shared"))
  {
    principal = [(CoreDAVResourceTypeItem *)self shared];
    goto LABEL_16;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  extraChildItems = [(CoreDAVItem *)self extraChildItems];
  v11 = [extraChildItems countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(extraChildItems);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        nameSpace = [v15 nameSpace];
        if ([nameSpace isEqualToString:spaceCopy])
        {
          name = [v15 name];
          v18 = [name isEqualToString:nameCopy];

          if (v18)
          {

            v9 = 1;
            goto LABEL_29;
          }
        }

        else
        {
        }
      }

      v12 = [extraChildItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v9 = 0;
LABEL_29:

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

@end