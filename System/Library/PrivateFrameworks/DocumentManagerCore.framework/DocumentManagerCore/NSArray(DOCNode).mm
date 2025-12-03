@interface NSArray(DOCNode)
- (id)fpfs_syncFPItemsFromNodes;
@end

@implementation NSArray(DOCNode)

- (id)fpfs_syncFPItemsFromNodes
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = dispatch_group_create();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        dispatch_group_enter(v3);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __45__NSArray_DOCNode__fpfs_syncFPItemsFromNodes__block_invoke;
        v13[3] = &unk_278F9B900;
        v16 = v21;
        v14 = v2;
        v15 = v3;
        [v7 fetchFPItem:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v4);
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [v2 count];
  if (v8 == [obj count])
  {
    v9 = v2;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(v21, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end