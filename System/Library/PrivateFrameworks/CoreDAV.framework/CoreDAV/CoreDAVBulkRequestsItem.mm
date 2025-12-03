@interface CoreDAVBulkRequestsItem
+ (id)copyParseRules;
- (BOOL)supportsItemWithNameSpace:(id)space name:(id)name;
- (NSDictionary)dictRepresentation;
- (id)description;
- (int64_t)maxResources;
- (int64_t)maxSize;
- (void)addSupportedItem:(id)item;
@end

@implementation CoreDAVBulkRequestsItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVBulkRequestsItem;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  payloadAsString = [(CoreDAVItem *)self->_maxResourcesItem payloadAsString];
  payloadAsString2 = [(CoreDAVItem *)self->_maxSizeItem payloadAsString];
  [v3 appendFormat:@"\n  maxResources %@, maxSize %@", payloadAsString, payloadAsString2];

  return v3;
}

- (void)addSupportedItem:(id)item
{
  itemCopy = item;
  supportedItems = self->_supportedItems;
  v8 = itemCopy;
  if (!supportedItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_supportedItems;
    self->_supportedItems = v6;

    itemCopy = v8;
    supportedItems = self->_supportedItems;
  }

  [(NSMutableSet *)supportedItems addObject:itemCopy];
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
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
    v13 = NSStringFromClass(self);
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
  payloadAsString = [(CoreDAVItem *)self->_maxResourcesItem payloadAsString];
  integerValue = [payloadAsString integerValue];

  return integerValue;
}

- (int64_t)maxSize
{
  payloadAsString = [(CoreDAVItem *)self->_maxSizeItem payloadAsString];
  integerValue = [payloadAsString integerValue];

  return integerValue;
}

- (BOOL)supportsItemWithNameSpace:(id)space name:(id)name
{
  v48 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  nameCopy = name;
  if (![(NSMutableSet *)self->_supportedItems count])
  {
    if ([spaceCopy isEqualToString:@"http://me.com/_namespace/"])
    {
      v21 = nameCopy;
      v22 = [nameCopy isEqualToString:@"insert"];
      name = [(CoreDAVItem *)self name];
      v24 = [name isEqualToString:@"crud"];
      v25 = v24;
      if (v22)
      {
        if (v24)
        {
          v26 = 1;
        }

        else
        {
          name2 = [(CoreDAVItem *)self name];
          v26 = [name2 isEqualToString:@"simple"];
        }

        goto LABEL_30;
      }

      if (v25)
      {
        name3 = [(CoreDAVItem *)self name];
        v26 = [@"crud" isEqualToString:name3];

LABEL_30:
        nameCopy = v21;
        goto LABEL_34;
      }

      nameCopy = v21;
      if ([v21 isEqualToString:@"delete"])
      {
        name4 = [(CoreDAVItem *)self name];
        v26 = [name4 isEqualToString:@"crud"];

        goto LABEL_34;
      }
    }

    v26 = 0;
    goto LABEL_34;
  }

  v32 = nameCopy;
  v33 = spaceCopy;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:spaceCopy andName:nameCopy];
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
        extraChildItems = [v10 extraChildItems];
        v12 = [extraChildItems countByEnumeratingWithState:&v38 objects:v46 count:16];
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
                objc_enumerationMutation(extraChildItems);
              }

              v16 = *(*(&v38 + 1) + 8 * j);
              v17 = objc_alloc(MEMORY[0x277CCACA8]);
              nameSpace = [v16 nameSpace];
              name5 = [v16 name];
              v20 = [v17 initWithCDVNameSpace:nameSpace andName:name5];

              LOBYTE(nameSpace) = [v8 isEqualToString:v20];
              if (nameSpace)
              {
                v35 = 1;
                goto LABEL_17;
              }
            }

            v13 = [extraChildItems countByEnumeratingWithState:&v38 objects:v46 count:16];
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

  nameCopy = v32;
  spaceCopy = v33;
  v26 = v35;
LABEL_34:

  v30 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

@end