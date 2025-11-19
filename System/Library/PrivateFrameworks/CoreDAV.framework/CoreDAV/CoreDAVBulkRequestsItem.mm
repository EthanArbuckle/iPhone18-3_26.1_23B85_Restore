@interface CoreDAVBulkRequestsItem
+ (id)copyParseRules;
- (BOOL)supportsItemWithNameSpace:(id)a3 name:(id)a4;
- (NSDictionary)dictRepresentation;
- (id)description;
- (int64_t)maxResources;
- (int64_t)maxSize;
- (void)addSupportedItem:(id)a3;
@end

@implementation CoreDAVBulkRequestsItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVBulkRequestsItem;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVItem *)self->_maxResourcesItem payloadAsString];
  v6 = [(CoreDAVItem *)self->_maxSizeItem payloadAsString];
  [v3 appendFormat:@"\n  maxResources %@, maxSize %@", v5, v6];

  return v3;
}

- (void)addSupportedItem:(id)a3
{
  v4 = a3;
  supportedItems = self->_supportedItems;
  v8 = v4;
  if (!supportedItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_supportedItems;
    self->_supportedItems = v6;

    v4 = v8;
    supportedItems = self->_supportedItems;
  }

  [(NSMutableSet *)supportedItems addObject:v4];
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://me.com/_namespace/" elementName:@"max-resources" objectClass:objc_opt_class() setterMethod:sel_setMaxResourcesItem_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://me.com/_namespace/", @"max-resources"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://me.com/_namespace/" elementName:@"max-size" objectClass:objc_opt_class() setterMethod:sel_setMaxSizeItem_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://me.com/_namespace/", @"max-size"];
    v10 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"http://me.com/_namespace/" elementName:@"supported" objectClass:objc_opt_class() setterMethod:sel_addSupportedItem_];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://me.com/_namespace/", @"supported"];
    v5 = [v15 initWithObjectsAndKeys:{v6, v7, v8, v9, v10, v11, 0}];

    v12 = +[CoreDAVItem parseRuleCache];
    v13 = NSStringFromClass(a1);
    [v12 setObject:v5 forKey:v13];
  }

  return v5;
}

- (NSDictionary)dictRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:{-[CoreDAVBulkRequestsItem maxResources](self, "maxResources")}];
  [v3 setObject:v4 forKey:@"max-resources"];
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:{-[CoreDAVBulkRequestsItem maxSize](self, "maxSize")}];
  [v3 setObject:v5 forKey:@"max-size"];
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:1];
  if ([(CoreDAVBulkRequestsItem *)self supportsInsert])
  {
    [v3 setObject:v6 forKey:@"insert"];
  }

  if ([(CoreDAVBulkRequestsItem *)self supportsUpdate])
  {
    [v3 setObject:v6 forKey:@"update"];
  }

  if ([(CoreDAVBulkRequestsItem *)self supportsDelete])
  {
    [v3 setObject:v6 forKey:@"delete"];
  }

  return v3;
}

- (int64_t)maxResources
{
  v2 = [(CoreDAVItem *)self->_maxResourcesItem payloadAsString];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)maxSize
{
  v2 = [(CoreDAVItem *)self->_maxSizeItem payloadAsString];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)supportsItemWithNameSpace:(id)a3 name:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(NSMutableSet *)self->_supportedItems count])
  {
    if ([v6 isEqualToString:@"http://me.com/_namespace/"])
    {
      v21 = v7;
      v22 = [v7 isEqualToString:@"insert"];
      v23 = [(CoreDAVItem *)self name];
      v24 = [v23 isEqualToString:@"crud"];
      v25 = v24;
      if (v22)
      {
        if (v24)
        {
          v26 = 1;
        }

        else
        {
          v28 = [(CoreDAVItem *)self name];
          v26 = [v28 isEqualToString:@"simple"];
        }

        goto LABEL_30;
      }

      if (v25)
      {
        v27 = [(CoreDAVItem *)self name];
        v26 = [@"crud" isEqualToString:v27];

LABEL_30:
        v7 = v21;
        goto LABEL_34;
      }

      v7 = v21;
      if ([v21 isEqualToString:@"delete"])
      {
        v29 = [(CoreDAVItem *)self name];
        v26 = [v29 isEqualToString:@"crud"];

        goto LABEL_34;
      }
    }

    v26 = 0;
    goto LABEL_34;
  }

  v32 = v7;
  v33 = v6;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:v6 andName:v7];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_supportedItems;
  v37 = [(NSMutableSet *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v37)
  {
    v35 = 0;
    v36 = *v43;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v11 = [v10 extraChildItems];
        v12 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v39;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v38 + 1) + 8 * j);
              v17 = objc_alloc(MEMORY[0x277CCACA8]);
              v18 = [v16 nameSpace];
              v19 = [v16 name];
              v20 = [v17 initWithCDVNameSpace:v18 andName:v19];

              LOBYTE(v18) = [v8 isEqualToString:v20];
              if (v18)
              {
                v35 = 1;
                goto LABEL_17;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v37 = [(NSMutableSet *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v37);
  }

  else
  {
    v35 = 0;
  }

  v7 = v32;
  v6 = v33;
  v26 = v35;
LABEL_34:

  v30 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

@end