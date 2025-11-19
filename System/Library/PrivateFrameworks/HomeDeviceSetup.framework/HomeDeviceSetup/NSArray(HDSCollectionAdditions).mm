@interface NSArray(HDSCollectionAdditions)
- (id)hds_compactMap:()HDSCollectionAdditions;
- (id)hds_objectsPassingTest:()HDSCollectionAdditions;
@end

@implementation NSArray(HDSCollectionAdditions)

- (id)hds_compactMap:()HDSCollectionAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        [v5 hds_addNonNilObject:{v11, v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)hds_objectsPassingTest:()HDSCollectionAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__NSArray_HDSCollectionAdditions__hds_objectsPassingTest___block_invoke;
  v9[3] = &unk_279714C18;
  v10 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v9];
  v7 = [a1 objectsAtIndexes:v6];

  return v7;
}

@end