@interface ICTableAccessibilityElementProvider
- (ICTableAccessibilityController)tableAXController;
- (ICTableAccessibilityElementProvider)initWithTableAccessibilityController:(id)a3;
- (id)cellElementForColumnID:(id)a3 rowID:(id)a4;
- (id)cellElementsForColumnID:(id)a3;
- (id)cellElementsForRowID:(id)a3;
- (void)removeElementsForColumnID:(id)a3;
- (void)removeElementsForRowID:(id)a3;
@end

@implementation ICTableAccessibilityElementProvider

- (ICTableAccessibilityElementProvider)initWithTableAccessibilityController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICTableAccessibilityElementProvider;
  v5 = [(ICTableAccessibilityElementProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableAXController, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cellCache = v6->_cellCache;
    v6->_cellCache = v7;
  }

  return v6;
}

- (id)cellElementForColumnID:(id)a3 rowID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICTableAccessibilityElementProvider *)self cellCache];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (!v10)
  {
    v11 = [ICTableCellAccessibilityElement alloc];
    v12 = [(ICTableAccessibilityElementProvider *)self tableAXController];
    v10 = [(ICTableCellAccessibilityElement *)v11 initWithTableAccessibilityController:v12 columnID:v6 rowID:v7];

    v13 = [(ICTableAccessibilityElementProvider *)self cellCache];
    v14 = [v13 objectForKeyedSubscript:v6];

    if (!v14)
    {
      v15 = [MEMORY[0x277CBEB38] dictionary];
      v16 = [(ICTableAccessibilityElementProvider *)self cellCache];
      [v16 setObject:v15 forKeyedSubscript:v6];
    }

    v17 = [(ICTableAccessibilityElementProvider *)self cellCache];
    v18 = [v17 objectForKeyedSubscript:v6];
    [v18 setObject:v10 forKeyedSubscript:v7];
  }

  return v10;
}

- (id)cellElementsForColumnID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(ICTableAccessibilityElementProvider *)self tableAXController];
  v7 = [v6 rowCount];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [(ICTableAccessibilityElementProvider *)self tableAXController];
      v10 = [v9 rowIDForRowIndex:v8];

      v11 = [(ICTableAccessibilityElementProvider *)self cellElementForColumnID:v4 rowID:v10];
      [v5 addObject:v11];

      ++v8;
      v12 = [(ICTableAccessibilityElementProvider *)self tableAXController];
      v13 = [v12 rowCount];
    }

    while (v8 < v13);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)cellElementsForRowID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(ICTableAccessibilityElementProvider *)self tableAXController];
  v7 = [v6 columnCount];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [(ICTableAccessibilityElementProvider *)self tableAXController];
      v10 = [v9 columnIDForColumnIndex:v8];

      v11 = [(ICTableAccessibilityElementProvider *)self cellElementForColumnID:v10 rowID:v4];
      [v5 addObject:v11];

      ++v8;
      v12 = [(ICTableAccessibilityElementProvider *)self tableAXController];
      v13 = [v12 columnCount];
    }

    while (v8 < v13);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)removeElementsForColumnID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityElementProvider *)self cellCache];
  [v5 removeObjectForKey:v4];
}

- (void)removeElementsForRowID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ICTableAccessibilityElementProvider *)self cellCache];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(ICTableAccessibilityElementProvider *)self cellCache];
        v13 = [v12 objectForKeyedSubscript:v11];

        [v13 removeObjectForKey:v4];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (ICTableAccessibilityController)tableAXController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableAXController);

  return WeakRetained;
}

@end