@interface SUUIStoreItemRelationshipCounsellor
- (BOOL)itemHasChildren:(id)children;
- (BOOL)itemHasParent:(id)parent;
- (SUUIStoreItemRelationshipCounsellor)init;
- (id)childItemsForItem:(id)item;
- (id)familyForItem:(id)item;
- (id)parentItemForItem:(id)item;
- (id)siblingItemsForItem:(id)item;
- (void)addChildren:(id)children forParent:(id)parent;
- (void)removeAllRelationshipsForItem:(id)item;
- (void)setChildren:(id)children forParent:(id)parent;
@end

@implementation SUUIStoreItemRelationshipCounsellor

- (SUUIStoreItemRelationshipCounsellor)init
{
  v8.receiver = self;
  v8.super_class = SUUIStoreItemRelationshipCounsellor;
  v2 = [(SUUIStoreItemRelationshipCounsellor *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    relationshipsDictionary = v2->_relationshipsDictionary;
    v2->_relationshipsDictionary = dictionary;

    v5 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v2->_lock;
    v2->_lock = v5;

    [(NSRecursiveLock *)v2->_lock setName:@"com.apple.iTunesStoreUI.SUUIStoreItemRelationshipCounsellor"];
  }

  return v2;
}

- (BOOL)itemHasParent:(id)parent
{
  parentCopy = parent;
  lock = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock lock];

  relationshipsDictionary = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [relationshipsDictionary objectForKeyedSubscript:parentCopy];

  chidItems = [v7 chidItems];
  v9 = [chidItems containsObject:parentCopy];

  lock2 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock2 unlock];

  return v9;
}

- (BOOL)itemHasChildren:(id)children
{
  childrenCopy = children;
  lock = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock lock];

  relationshipsDictionary = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [relationshipsDictionary objectForKeyedSubscript:childrenCopy];

  singleParent = [v7 singleParent];
  v9 = [singleParent isEqual:childrenCopy];

  lock2 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock2 unlock];

  return v9;
}

- (id)childItemsForItem:(id)item
{
  itemCopy = item;
  lock = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock lock];

  relationshipsDictionary = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [relationshipsDictionary objectForKeyedSubscript:itemCopy];

  singleParent = [v7 singleParent];
  v9 = [singleParent isEqual:itemCopy];

  if (v9)
  {
    chidItems = [v7 chidItems];
  }

  else
  {
    chidItems = 0;
  }

  lock2 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock2 unlock];

  return chidItems;
}

- (id)parentItemForItem:(id)item
{
  itemCopy = item;
  lock = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock lock];

  relationshipsDictionary = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [relationshipsDictionary objectForKeyedSubscript:itemCopy];

  chidItems = [v7 chidItems];
  v9 = [chidItems containsObject:itemCopy];

  if (v9)
  {
    singleParent = [v7 singleParent];
  }

  else
  {
    singleParent = 0;
  }

  lock2 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock2 unlock];

  return singleParent;
}

- (id)siblingItemsForItem:(id)item
{
  itemCopy = item;
  lock = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock lock];

  relationshipsDictionary = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [relationshipsDictionary objectForKeyedSubscript:itemCopy];

  chidItems = [v7 chidItems];
  v9 = [chidItems containsObject:itemCopy];

  if (v9)
  {
    chidItems2 = [v7 chidItems];
  }

  else
  {
    chidItems2 = 0;
  }

  lock2 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock2 unlock];

  return chidItems2;
}

- (id)familyForItem:(id)item
{
  v4 = MEMORY[0x277CBEB58];
  itemCopy = item;
  v6 = [v4 set];
  lock = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock lock];

  relationshipsDictionary = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v9 = [relationshipsDictionary objectForKeyedSubscript:itemCopy];

  if (v9)
  {
    chidItems = [v9 chidItems];
    [v6 unionSet:chidItems];

    singleParent = [v9 singleParent];
    [v6 addObject:singleParent];

    lock2 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [lock2 unlock];

    if ([v6 count])
    {
      v13 = [v6 copy];
      goto LABEL_6;
    }
  }

  else
  {
    lock3 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [lock3 unlock];
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (void)setChildren:(id)children forParent:(id)parent
{
  v39 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  parentCopy = parent;
  if ([childrenCopy count])
  {
    lock = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [lock lock];

    relationshipsDictionary = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
    v10 = [relationshipsDictionary objectForKeyedSubscript:parentCopy];

    if (v10)
    {
      [(SUUIStoreItemRelationshipCounsellor *)self removeAllRelationshipsForItem:parentCopy];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = childrenCopy;
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      do
      {
        v15 = 0;
        do
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v33 + 1) + 8 * v15);
          relationshipsDictionary2 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
          v18 = [relationshipsDictionary2 objectForKeyedSubscript:v16];

          if (v18)
          {
            [(SUUIStoreItemRelationshipCounsellor *)self removeAllRelationshipsForItem:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v13);
    }

    v19 = [[SUUIStoreItemRelationship alloc] initWithParent:parentCopy andChildren:v11];
    relationshipsDictionary3 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
    [relationshipsDictionary3 setObject:v19 forKeyedSubscript:parentCopy];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = v11;
    v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        v25 = 0;
        do
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v29 + 1) + 8 * v25);
          relationshipsDictionary4 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
          [relationshipsDictionary4 setObject:v19 forKeyedSubscript:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v23);
    }

    lock2 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [lock2 unlock];
  }
}

- (void)addChildren:(id)children forParent:(id)parent
{
  v28 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  parentCopy = parent;
  if ([childrenCopy count])
  {
    lock = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [lock lock];

    relationshipsDictionary = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
    v10 = [relationshipsDictionary objectForKeyedSubscript:parentCopy];

    if (v10)
    {
      chidItems = [v10 chidItems];
      v12 = [childrenCopy setByAddingObjectsFromSet:chidItems];

      v13 = [[SUUIStoreItemRelationship alloc] initWithParent:parentCopy andChildren:v12];
      relationshipsDictionary2 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
      [relationshipsDictionary2 setObject:v13 forKeyedSubscript:parentCopy];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          v19 = 0;
          do
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v23 + 1) + 8 * v19);
            relationshipsDictionary3 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
            [relationshipsDictionary3 setObject:v13 forKeyedSubscript:v20];

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }
    }

    else
    {
      [(SUUIStoreItemRelationshipCounsellor *)self setChildren:childrenCopy forParent:parentCopy];
    }

    lock2 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [lock2 unlock];
  }
}

- (void)removeAllRelationshipsForItem:(id)item
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  lock = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock lock];

  relationshipsDictionary = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [relationshipsDictionary objectForKeyedSubscript:itemCopy];

  if (v7)
  {
    relationshipsDictionary2 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
    singleParent = [v7 singleParent];
    [relationshipsDictionary2 removeObjectForKey:singleParent];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    chidItems = [v7 chidItems];
    v11 = [chidItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(chidItems);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          relationshipsDictionary3 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
          [relationshipsDictionary3 removeObjectForKey:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [chidItems countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  lock2 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [lock2 unlock];
}

@end