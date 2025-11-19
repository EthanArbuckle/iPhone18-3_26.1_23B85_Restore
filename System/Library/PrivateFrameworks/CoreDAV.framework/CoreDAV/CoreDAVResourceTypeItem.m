@interface CoreDAVResourceTypeItem
+ (id)copyParseRules;
- (BOOL)isTypeWithNameSpace:(id)a3 andName:(id)a4;
- (NSSet)stringSet;
- (id)description;
- (void)write:(id)a3;
@end

@implementation CoreDAVResourceTypeItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12.receiver = self;
  v12.super_class = CoreDAVResourceTypeItem;
  v4 = [(CoreDAVItem *)&v12 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVResourceTypeItem *)self addressBook];
  [v3 appendFormat:@"\n  Address book: [%@]", v5];

  v6 = [(CoreDAVResourceTypeItem *)self searchAddressBook];
  [v3 appendFormat:@"\n  Search address book: [%@]", v6];

  v7 = [(CoreDAVResourceTypeItem *)self shared];
  [v3 appendFormat:@"\n  Shared: [%@]", v7];

  v8 = [(CoreDAVResourceTypeItem *)self principal];
  [v3 appendFormat:@"\n  Principal: [%@]", v8];

  v9 = [(CoreDAVResourceTypeItem *)self collection];
  [v3 appendFormat:@"\n  Collection: [%@]", v9];

  v10 = [(CoreDAVResourceTypeItem *)self unauthenticated];
  [v3 appendFormat:@"\n  Unauthenticated: [%@]", v10];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(a1);
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
    v11 = NSStringFromClass(a1);
    [v10 setObject:v5 forKey:v11];
  }

  return v5;
}

- (void)write:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CoreDAVItem *)self name];
  v6 = [(CoreDAVItem *)self nameSpace];
  [v4 startElement:v5 inNamespace:v6 withAttributeNamesAndValues:0];

  v7 = [(CoreDAVResourceTypeItem *)self addressBook];
  [v7 write:v4];

  v8 = [(CoreDAVResourceTypeItem *)self searchAddressBook];
  [v8 write:v4];

  v9 = [(CoreDAVResourceTypeItem *)self shared];
  [v9 write:v4];

  v10 = [(CoreDAVResourceTypeItem *)self principal];
  [v10 write:v4];

  v11 = [(CoreDAVResourceTypeItem *)self collection];
  [v11 write:v4];

  v12 = [(CoreDAVResourceTypeItem *)self unauthenticated];
  [v12 write:v4];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [(CoreDAVItem *)self extraChildItems];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v13);
        }

        [*(*(&v21 + 1) + 8 * v17++) write:v4];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v18 = [(CoreDAVItem *)self name];
  v19 = [(CoreDAVItem *)self nameSpace];
  [v4 endElement:v18 inNamespace:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (NSSet)stringSet
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(CoreDAVResourceTypeItem *)self addressBook];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [(CoreDAVResourceTypeItem *)self addressBook];
    v7 = [v6 nameSpace];
    v8 = [(CoreDAVResourceTypeItem *)self addressBook];
    v9 = [v8 name];
    v10 = [v5 initWithCDVNameSpace:v7 andName:v9];

    [v3 addObject:v10];
  }

  v11 = [(CoreDAVResourceTypeItem *)self searchAddressBook];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [(CoreDAVResourceTypeItem *)self searchAddressBook];
    v14 = [v13 nameSpace];
    v15 = [(CoreDAVResourceTypeItem *)self searchAddressBook];
    v16 = [v15 name];
    v17 = [v12 initWithCDVNameSpace:v14 andName:v16];

    [v3 addObject:v17];
  }

  v18 = [(CoreDAVResourceTypeItem *)self shared];

  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [(CoreDAVResourceTypeItem *)self shared];
    v21 = [v20 nameSpace];
    v22 = [(CoreDAVResourceTypeItem *)self shared];
    v23 = [v22 name];
    v24 = [v19 initWithCDVNameSpace:v21 andName:v23];

    [v3 addObject:v24];
  }

  v25 = [(CoreDAVResourceTypeItem *)self principal];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v27 = [(CoreDAVResourceTypeItem *)self principal];
    v28 = [v27 nameSpace];
    v29 = [(CoreDAVResourceTypeItem *)self principal];
    v30 = [v29 name];
    v31 = [v26 initWithCDVNameSpace:v28 andName:v30];

    [v3 addObject:v31];
  }

  v32 = [(CoreDAVResourceTypeItem *)self collection];

  if (v32)
  {
    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    v34 = [(CoreDAVResourceTypeItem *)self collection];
    v35 = [v34 nameSpace];
    v36 = [(CoreDAVResourceTypeItem *)self collection];
    v37 = [v36 name];
    v38 = [v33 initWithCDVNameSpace:v35 andName:v37];

    [v3 addObject:v38];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v39 = [(CoreDAVItem *)self extraChildItems];
  v40 = [v39 countByEnumeratingWithState:&v51 objects:v55 count:16];
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
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v51 + 1) + 8 * i);
        v45 = objc_alloc(MEMORY[0x277CCACA8]);
        v46 = [v44 nameSpace];
        v47 = [v44 name];
        v48 = [v45 initWithCDVNameSpace:v46 andName:v47];

        [v3 addObject:v48];
      }

      v41 = [v39 countByEnumeratingWithState:&v51 objects:v55 count:16];
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

- (BOOL)isTypeWithNameSpace:(id)a3 andName:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"DAV:"])
  {
    if ([v7 isEqualToString:@"principal"])
    {
      v8 = [(CoreDAVResourceTypeItem *)self principal];
LABEL_16:
      v9 = v8 != 0;

      goto LABEL_29;
    }

    if ([v7 isEqualToString:@"collection"])
    {
      v8 = [(CoreDAVResourceTypeItem *)self collection];
      goto LABEL_16;
    }

    if ([v7 isEqualToString:@"unauthenticated"])
    {
      v8 = [(CoreDAVResourceTypeItem *)self unauthenticated];
      goto LABEL_16;
    }
  }

  else if ([v6 isEqualToString:@"urn:ietf:params:xml:ns:carddav"])
  {
    if ([v7 isEqualToString:@"addressbook"])
    {
      v8 = [(CoreDAVResourceTypeItem *)self addressBook];
      goto LABEL_16;
    }

    if ([v7 isEqualToString:@"searchaddressbook"])
    {
      v8 = [(CoreDAVResourceTypeItem *)self searchAddressBook];
      goto LABEL_16;
    }
  }

  else if ([v6 isEqualToString:@"http://calendarserver.org/ns/"] && objc_msgSend(v7, "isEqualToString:", @"shared"))
  {
    v8 = [(CoreDAVResourceTypeItem *)self shared];
    goto LABEL_16;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [(CoreDAVItem *)self extraChildItems];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 nameSpace];
        if ([v16 isEqualToString:v6])
        {
          v17 = [v15 name];
          v18 = [v17 isEqualToString:v7];

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

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v9 = 0;
LABEL_29:

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

@end