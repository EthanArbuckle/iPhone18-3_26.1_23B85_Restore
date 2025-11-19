@interface SUUIStoreItemRelationship
- (SUUIStoreItemRelationship)initWithParent:(id)a3 andChildren:(id)a4;
@end

@implementation SUUIStoreItemRelationship

- (SUUIStoreItemRelationship)initWithParent:(id)a3 andChildren:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = SUUIStoreItemRelationship;
  v8 = [(SUUIStoreItemRelationship *)&v25 init];
  if (v8)
  {
    v9 = [v6 copy];
    singleParent = v8->_singleParent;
    v8->_singleParent = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v21 + 1) + 8 * v16) copy];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    v18 = [v11 copy];
    chidItems = v8->_chidItems;
    v8->_chidItems = v18;
  }

  return v8;
}

@end