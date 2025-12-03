@interface ICTableAccessibilityElementProvider
- (ICTableAccessibilityController)tableAXController;
- (ICTableAccessibilityElementProvider)initWithTableAccessibilityController:(id)controller;
- (id)cellElementForColumnID:(id)d rowID:(id)iD;
- (id)cellElementsForColumnID:(id)d;
- (id)cellElementsForRowID:(id)d;
- (void)removeElementsForColumnID:(id)d;
- (void)removeElementsForRowID:(id)d;
@end

@implementation ICTableAccessibilityElementProvider

- (ICTableAccessibilityElementProvider)initWithTableAccessibilityController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = ICTableAccessibilityElementProvider;
  v5 = [(ICTableAccessibilityElementProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableAXController, controllerCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cellCache = v6->_cellCache;
    v6->_cellCache = v7;
  }

  return v6;
}

- (id)cellElementForColumnID:(id)d rowID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  cellCache = [(ICTableAccessibilityElementProvider *)self cellCache];
  v9 = [cellCache objectForKeyedSubscript:dCopy];
  v10 = [v9 objectForKeyedSubscript:iDCopy];

  if (!v10)
  {
    v11 = [ICTableCellAccessibilityElement alloc];
    tableAXController = [(ICTableAccessibilityElementProvider *)self tableAXController];
    v10 = [(ICTableCellAccessibilityElement *)v11 initWithTableAccessibilityController:tableAXController columnID:dCopy rowID:iDCopy];

    cellCache2 = [(ICTableAccessibilityElementProvider *)self cellCache];
    v14 = [cellCache2 objectForKeyedSubscript:dCopy];

    if (!v14)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      cellCache3 = [(ICTableAccessibilityElementProvider *)self cellCache];
      [cellCache3 setObject:dictionary forKeyedSubscript:dCopy];
    }

    cellCache4 = [(ICTableAccessibilityElementProvider *)self cellCache];
    v18 = [cellCache4 objectForKeyedSubscript:dCopy];
    [v18 setObject:v10 forKeyedSubscript:iDCopy];
  }

  return v10;
}

- (id)cellElementsForColumnID:(id)d
{
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  tableAXController = [(ICTableAccessibilityElementProvider *)self tableAXController];
  rowCount = [tableAXController rowCount];

  if (rowCount)
  {
    v8 = 0;
    do
    {
      tableAXController2 = [(ICTableAccessibilityElementProvider *)self tableAXController];
      v10 = [tableAXController2 rowIDForRowIndex:v8];

      v11 = [(ICTableAccessibilityElementProvider *)self cellElementForColumnID:dCopy rowID:v10];
      [array addObject:v11];

      ++v8;
      tableAXController3 = [(ICTableAccessibilityElementProvider *)self tableAXController];
      rowCount2 = [tableAXController3 rowCount];
    }

    while (v8 < rowCount2);
  }

  v14 = [array copy];

  return v14;
}

- (id)cellElementsForRowID:(id)d
{
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  tableAXController = [(ICTableAccessibilityElementProvider *)self tableAXController];
  columnCount = [tableAXController columnCount];

  if (columnCount)
  {
    v8 = 0;
    do
    {
      tableAXController2 = [(ICTableAccessibilityElementProvider *)self tableAXController];
      v10 = [tableAXController2 columnIDForColumnIndex:v8];

      v11 = [(ICTableAccessibilityElementProvider *)self cellElementForColumnID:v10 rowID:dCopy];
      [array addObject:v11];

      ++v8;
      tableAXController3 = [(ICTableAccessibilityElementProvider *)self tableAXController];
      columnCount2 = [tableAXController3 columnCount];
    }

    while (v8 < columnCount2);
  }

  v14 = [array copy];

  return v14;
}

- (void)removeElementsForColumnID:(id)d
{
  dCopy = d;
  cellCache = [(ICTableAccessibilityElementProvider *)self cellCache];
  [cellCache removeObjectForKey:dCopy];
}

- (void)removeElementsForRowID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  cellCache = [(ICTableAccessibilityElementProvider *)self cellCache];
  allKeys = [cellCache allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        cellCache2 = [(ICTableAccessibilityElementProvider *)self cellCache];
        v13 = [cellCache2 objectForKeyedSubscript:v11];

        [v13 removeObjectForKey:dCopy];
        ++v10;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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