@interface SUUIStoreItemRelationshipCounsellor
- (BOOL)itemHasChildren:(id)a3;
- (BOOL)itemHasParent:(id)a3;
- (SUUIStoreItemRelationshipCounsellor)init;
- (id)childItemsForItem:(id)a3;
- (id)familyForItem:(id)a3;
- (id)parentItemForItem:(id)a3;
- (id)siblingItemsForItem:(id)a3;
- (void)addChildren:(id)a3 forParent:(id)a4;
- (void)removeAllRelationshipsForItem:(id)a3;
- (void)setChildren:(id)a3 forParent:(id)a4;
@end

@implementation SUUIStoreItemRelationshipCounsellor

- (SUUIStoreItemRelationshipCounsellor)init
{
  v8.receiver = self;
  v8.super_class = SUUIStoreItemRelationshipCounsellor;
  v2 = [(SUUIStoreItemRelationshipCounsellor *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    relationshipsDictionary = v2->_relationshipsDictionary;
    v2->_relationshipsDictionary = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v2->_lock;
    v2->_lock = v5;

    [(NSRecursiveLock *)v2->_lock setName:@"com.apple.iTunesStoreUI.SUUIStoreItemRelationshipCounsellor"];
  }

  return v2;
}

- (BOOL)itemHasParent:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v5 lock];

  v6 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 chidItems];
  v9 = [v8 containsObject:v4];

  v10 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v10 unlock];

  return v9;
}

- (BOOL)itemHasChildren:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v5 lock];

  v6 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 singleParent];
  v9 = [v8 isEqual:v4];

  v10 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v10 unlock];

  return v9;
}

- (id)childItemsForItem:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v5 lock];

  v6 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 singleParent];
  v9 = [v8 isEqual:v4];

  if (v9)
  {
    v10 = [v7 chidItems];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v11 unlock];

  return v10;
}

- (id)parentItemForItem:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v5 lock];

  v6 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 chidItems];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    v10 = [v7 singleParent];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v11 unlock];

  return v10;
}

- (id)siblingItemsForItem:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v5 lock];

  v6 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 chidItems];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    v10 = [v7 chidItems];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v11 unlock];

  return v10;
}

- (id)familyForItem:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v7 lock];

  v8 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v9 = [v8 objectForKeyedSubscript:v5];

  if (v9)
  {
    v10 = [v9 chidItems];
    [v6 unionSet:v10];

    v11 = [v9 singleParent];
    [v6 addObject:v11];

    v12 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [v12 unlock];

    if ([v6 count])
    {
      v13 = [v6 copy];
      goto LABEL_6;
    }
  }

  else
  {
    v14 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [v14 unlock];
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (void)setChildren:(id)a3 forParent:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [v8 lock];

    v9 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (v10)
    {
      [(SUUIStoreItemRelationshipCounsellor *)self removeAllRelationshipsForItem:v7];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v6;
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
          v17 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
          v18 = [v17 objectForKeyedSubscript:v16];

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

    v19 = [[SUUIStoreItemRelationship alloc] initWithParent:v7 andChildren:v11];
    v20 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
    [v20 setObject:v19 forKeyedSubscript:v7];

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
          v27 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
          [v27 setObject:v19 forKeyedSubscript:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v23);
    }

    v28 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [v28 unlock];
  }
}

- (void)addChildren:(id)a3 forParent:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [v8 lock];

    v9 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (v10)
    {
      v11 = [v10 chidItems];
      v12 = [v6 setByAddingObjectsFromSet:v11];

      v13 = [[SUUIStoreItemRelationship alloc] initWithParent:v7 andChildren:v12];
      v14 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
      [v14 setObject:v13 forKeyedSubscript:v7];

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
            v21 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
            [v21 setObject:v13 forKeyedSubscript:v20];

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
      [(SUUIStoreItemRelationshipCounsellor *)self setChildren:v6 forParent:v7];
    }

    v22 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
    [v22 unlock];
  }
}

- (void)removeAllRelationshipsForItem:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v5 lock];

  v6 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
    v9 = [v7 singleParent];
    [v8 removeObjectForKey:v9];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v7 chidItems];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          v16 = [(SUUIStoreItemRelationshipCounsellor *)self relationshipsDictionary];
          [v16 removeObjectForKey:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v17 = [(SUUIStoreItemRelationshipCounsellor *)self lock];
  [v17 unlock];
}

@end